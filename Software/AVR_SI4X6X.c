/*
	Si4x6x <-> ATmega328P
		NSEL	PB2 (SS)
		SDI		PB3 (MOSI)
		SDO		PB4 (MISO)
		SCLK	PB5 (SCK)
		
		GPIO0	PD2 (INT0 - external interrupt)		CTS (output) - HIGH when able to receive
		GPIO1	PD3 (INT1 - external interrupt)		TX_DATA_CLK (output) - for use in TX Direct Synchronous Mode
		GPIO2	PB0									INPUT (input) - TXDATA for TX Direct Mode
		GPIO3	PD7									TRISTATE - input and output drivers disabled
		
		SDN		PB1 (LOW - IC active, HIGH - IC shutdown)
		VTCXO	PD6 (if used)
	
	Si4x6x Reference (Xin pin)
		Timepulse	needs setting up via the GNSS module
		TCXO		needs power via PD6
	
	A single high precision local oscillator (LO) is used for transmit mode. The LO is generated by an integrated VCO
	and ΔΣ Fractional-N PLL synthesizer. The synthesizer is designed to support configurable data rates from 100 bps
	to 1 Mbps.
	
	Frequency Bands		Resolution		Modulation Range
	142-175MHz			4.7Hz			250kHz
	283–350MHz			9.5Hz			500kHz
	420–525MHz			14.3Hz			750kHz
	850–1050MHz			28.6Hz			1.5MHz
	
	The transmit FSK data is modulated directly into the ΔΣ	data stream and can be shaped by a Gaussian low-pass filter
	to reduce unwanted spectral content.
*/


#include "AVR_SI4X6X.h"


/*
	Si4x6x Initialization
		-drive SDN HIGH for a minimum of 10us
		-drive SDN LOW again
		-Power on Reset (POR) requires 10ms to settle the circuit
		-POWER_UP command is required to initialize the radio
	
	TCXO
		0	Timepulse reference signal to Si4x6x
		1	TCXO reference signal to Si4x6x
		
	XO_FREQ
		Setting XO_FREQ in POWER_UP command to the TCXO's frequency of 16,369,000Hz (out of specs) fails the initialization.
		Leaving it at default 30,000,000Hz or setting it to the minimum of 25,000,000Hz proceeds the initialization fine.
*/
void SI4X6X_init(uint32_t ref_freq, uint8_t tcxo)
{
	/* Assumes SPI interface already initialized */
	
	/* The XO capacitor bank should be set to 0 whenever an external drive is used on the XIN pin. */
	uint8_t rx_buffer[16];
	
	SPI_assert_SS();
	SPI_master_transmit(0x11);											// SET_PROPERTY (CMD)
	SPI_master_transmit(0x00);											// GLOBAL (group)
	SPI_master_transmit(0x01);											// 1 (num_props)
	SPI_master_transmit(0x00);											// GLOBAL_XO_TUNE (start_prop)
	SPI_master_transmit(0x00);											// FASTEST_FREQUENCY (Lowest capacitance)
	SPI_deassert_SS();
	SI4X6X_rx_CTS(rx_buffer, 1);
	
	/* Assumes Timepulse to Xin pin already enabled. */
	if(tcxo)
	{
		DDRD |= (1 << PORTD6);											// set PD6 to OUTPUT
		PORTD |= (1 << PORTD6);											// set PD6 HIGH
	}
	
	/* ATmega328P Pins Setup */
	DDRD &= ~((1 << PORTD2) | (1 << PORTD3) | (1 << PORTD7));			// set PD2, PD3 and PD7 to INPUT
	DDRB |= (1 << PORTB1) | (1 << PORTB0);								// set PB0 and PB1 to OUTPUT
	PORTB &= ~(1 << PORTB0);											// set PB0 (GPIO2 - TXDATA) LOW
	
	/* POWER_UP Sequence */
	PORTB |= (1 << PORTB1);												// set PB1 (SDN) HIGH
	_delay_ms(1);
	PORTB &= ~(1 << PORTB1);											// set PB1 (SDN) LOW
	_delay_ms(10);														// wait for POR to finish
	
	SPI_assert_SS();
	SPI_master_transmit(0x02);											// POWER_UP - 15ms
	SPI_master_transmit(0x01);
	SPI_master_transmit(0x01);											// 0x00 - XTAL, 0x01 - TCXO
	SPI_master_transmit(ref_freq / 16777216);
	SPI_master_transmit(ref_freq % 16777216 / 65536);
	SPI_master_transmit(ref_freq % 16777216 % 65536 / 256);
	SPI_master_transmit(ref_freq % 16777216 % 65536 % 256);
	SPI_deassert_SS();
	SI4X6X_rx_CTS(rx_buffer, 1);
	
	SPI_assert_SS();
	SPI_master_transmit(0x20);											// GET_INT_STATUS (clear interrupts)
	SPI_deassert_SS();
	SI4X6X_rx_CTS(rx_buffer, 9);
	
	/* Si4x6x Pins Setup */
	SI4X6X_setup_pins(8, 16, 4, 1, 0, 0);
}


/*
	Leaves the IC in Standby or Sleep state (low consumption).
*/
void SI4X6X_deinit(uint8_t tcxo)
{
	SI4X6X_change_state(1);												// SLEEP/STANDBY
	
	/* ATmega328P Pins Deinit */
	PORTB &= ~(1 << PORTB0);											// set PB0 (GPIO2 - TXDATA) LOW
	DDRB &= ~(1 << PORTB0);												// set PB0 to INPUT
	
	/* Deinit SDN */
	PORTB &= ~(1 << PORTB1);											// set PB1 (SDN) LOW
	DDRB &= ~(1 << PORTB1);												// set PB1 to INPUT
	
	/* TCXO Reference */
	if(tcxo)
	{
		PORTD &= ~(1 << PORTD6);										// set PD6 LOW
		DDRD &= ~(1 << PORTD6);											// set PD6 to INPUT
	}
}


/*
	CLEAR TO SEND (CTS)
		Checking CTS is used to make sure the internal MCU has executed the command and prepared the data to be output over the SDO pin.
		
	Function checks CTS by issuing READ_CMD_BUFF then receives the data response.
*/
void SI4X6X_rx_CTS(uint8_t * rx_buffer, uint8_t len)
{
	uint8_t _cts;
	uint32_t timeout = 15000;
	
	while(timeout--)
	{
		SPI_assert_SS();
		
		SPI_master_transmit(0x44);										// READ_CMD_BUFF
		_cts = SPI_master_transmit(0x00);

		if(_cts == 0xFF) break;
		SPI_deassert_SS();
	}
	
	rx_buffer[0] = _cts;
	
	for(uint8_t i = 1; i < len; i++)
	{
		rx_buffer[i] = SPI_master_transmit(0x00);
	}
	
	SPI_deassert_SS();
}


/*
	CLEAR TO SEND (CTS)
		Checking CTS is used to make sure the internal MCU has executed the command and prepared the data to be output over the SDO pin.
	
	Function waits for the CTS signal on a GPIO0 pin.
*/
void SI4X6X_check_CTS(void)
{
	/* Assumes GPIO0 already configured to output CTS signal */
	
	uint32_t timeout = 15000;
	
	while(timeout--)
	{
		if(PIND & (1 << PORTD2)) break;
	}
}


/*
	TYPICAL SETTINGS
		GPIO0			8		disable pull-up, Clear To Send signal output
		GPIO1			16		disable pull-up, TX Data Clock signal output
		GPIO2			4		disable pull-up, TXDATA input for TX Direct Mode
		GPIO3			1		disable pull-up, Input and output drivers disabled
		NIRQ			0		disable pull-up, behavior of this pin is not modified
		SDO				0		disable pull-up, behavior of this pin is not modified
		GEN_CONFIG		0		GPIOs configured as outputs will have the highest drive strength
*/
void SI4X6X_setup_pins(uint8_t gpio0, uint8_t gpio1, uint8_t gpio2, uint8_t gpio3, uint8_t nirq, uint8_t sdo)
{
	uint8_t rx_buffer[16];
	
	SPI_assert_SS();
	SPI_master_transmit(0x13);											// GPIO_PIN_CFG
	SPI_master_transmit(gpio0);											// GPIO0
	SPI_master_transmit(gpio1);											// GPIO1
	SPI_master_transmit(gpio2);											// GPIO2
	SPI_master_transmit(gpio3);											// GPIO3
	SPI_master_transmit(nirq);											// NIRQ
	SPI_master_transmit(sdo);											// SDO
	SPI_master_transmit(0x00);											// Drive Strength
	SPI_deassert_SS();
	SI4X6X_rx_CTS(rx_buffer, 8);
}


/*
	STATE
		SHUTDOWN	SDN		30nA
		
		NOCHANGE	0x00				No change, remain in current state.
		SLEEP		0x01 	50-900nA	STANDBY or SLEEP state.
		SPI_ACTIVE	0x02	1.35mA		SPI_ACTIVE state.
		READY		0x03	1.8mA		READY state.
		TX_TUNE		0x05	8.0mA		TX_TUNE state.
		RX_TUNE		0x06	7.2mA		RX_TUNE state. (Si4463)
		TX			0x07	18-85mA		TX state.
		RX			0x08	10-13mA		RX state. (Si4463)
*/
void SI4X6X_change_state(uint8_t state)
{
	uint8_t rx_buffer[16];
	
	SPI_assert_SS();
	SPI_master_transmit(0x34);											// CHANGE_STATE
	SPI_master_transmit(state);
	SPI_deassert_SS();
	SI4X6X_rx_CTS(rx_buffer, 1);
}


/*
	This command switches the chip to TX state and begins transmission of a packet.
*/
void SI4X6X_start_TX(uint8_t channel)
{
	SPI_assert_SS();
	SPI_master_transmit(0x31);											// START_TX
	SPI_master_transmit(channel);										// CHANNEL
	SPI_master_transmit((1 << 4) | 0x00);								// CONDITION - SLEEP after end of transmission
	SPI_master_transmit(0x00);											// TX_LEN
	SPI_master_transmit(0x00);											// TX_LEN
	SPI_deassert_SS();
	
	SI4X6X_check_CTS();
}


/*
	byte 0		CTS			0xFF
	byte 1		CHIPREV		0x11
	byte 2		PART		0x40
	byte 3		PART		0x60
	byte 4		PBUILD		0x00
	byte 5		ID			0x00
	byte 6		ID			0x0F
	byte 7		CUSTOMER	0x00
	byte 8		ROMID		0x00
*/
void SI4X6X_get_part_info(uint8_t * buffer)
{
	SPI_assert_SS();
	SPI_master_transmit(0x01);											// PART_INFO
	SPI_deassert_SS();
	SI4X6X_rx_CTS(buffer, 9);
}


/*
	byte 0		CTS			0xFF
	byte 1		REVEXT		External revision number.
	byte 2		REVBRANCH	Branch revision number.
	byte 3		REVINT		Internal revision number.
	byte 4		PATCH		ID of applied patch.
	byte 5		PATCH		0x0000 = No patch applied.
	byte 6		FUNC		Current functional mode.
*/
void SI4X6X_get_func_info(uint8_t * buffer)
{
	SPI_assert_SS();
	SPI_master_transmit(0x10);											// FUNC_INFO
	SPI_deassert_SS();
	SI4X6X_rx_CTS(buffer, 7);
}


/*
	Returns an 11-bit, temperature measurement of the Si4x6x's internal temperature sensor.
	
	Temperature [°C] = (899 / 4096) * TEMP_ADC[10:0] - 293
*/
uint16_t SI4X6X_get_temperature(void)
{
	uint8_t rx_buffer[16];
	
	SPI_assert_SS();
	SPI_master_transmit(0x14);											// GET_ADC_READING
	SPI_master_transmit(0b00010000);									// TEMPERATURE_EN
	SPI_master_transmit(0xC0);											// ADC rate of conversion 325Hz
	SPI_deassert_SS();
	SI4X6X_rx_CTS(rx_buffer, 7);
	
	return ((uint16_t)rx_buffer[5] << 8) | rx_buffer[6];
}


/*
	The frequency is set by changing the integer and fractional settings to the synthesizer.
	The total divide ratio for the Fractional-N PLL Synthesizer consists of an integer portion
	and a fractional portion.
	
		RF_channel [Hz] = (fc_inte + (fc_frac / 2^19)) * (Npresc * freq_xo / outdiv)
	
		The fc_frac/2^19 value in the above formula has to be a number between 1 and 2.
		The prescaler divider value NPRESC is configured as a function of the selected
		synthesizer performance mode and may take on the values NPRESC=2 or NPRESC=4,
		as specified in property MODEM_CLKGEN_BAND:SY_SEL.
	
	The VCO in the PLL Synthesizer operates at approximately 3.6 GHz; operation across a wide
	range of frequency bands is obtained by switching in a configurable divider (OUTDIV) at
	the output of the PLL Synthesizer.
	
	Output divider		Frequency Range
		24					142-175MHz
		12					284-350MHz
		8					420-525MHz
		4					850-1050MHz
	
	REF_FREQ
		Frequency of the external signal at Xin pin - Timepulse / TCXO.
*/
void SI4X6X_set_frequency(uint32_t frequency, uint32_t ref_freq)
{
	/* Output Divider */
	uint8_t outdiv = 24;												// 142-175MHz
	uint8_t band = 5;
	
	if(frequency > 200000000UL) {outdiv = 16; band = 4;};				// 284-350MHz
	if(frequency > 400000000UL) {outdiv = 8;  band = 2;};				// 420-525MHz
	if(frequency > 700000000UL) {outdiv = 4;  band = 0;};				// 850-1050MHz
	
	/* Divide Ratio */
	uint32_t f_pfd = 2 * ref_freq / outdiv;								// 1,364,083 = 2 * 16,369,000 / 24
	uint32_t n = (frequency / f_pfd) - 1;								// 105 = 145,000,000 / 1,364,083 - 1
	
	float ratio = (float)frequency / (float)f_pfd;						// 106.299 = 145,000,000 / 1,364,083
	float rest = ratio - (float)n;										// 1.299 = 106.299 - 105.0
	
	uint32_t m = (uint32_t)(rest * 524288UL);							// 680,796 = 1.299 * 524,288
	uint32_t m2 = m / 65536;											// 10 = 680,796 / 65,536
	uint32_t m1 = (m - m2 * 65536) / 256;								// 99 = (680,796 - 10 * 65536) / 256
	uint32_t m0 = (m - m2 * 65536 - m1 * 256);							// 92 = (680,796 - 10 * 65536 - 99 * 256)
	
	/* Configuration */
	uint8_t rx_buffer[16];
	
	SPI_assert_SS();
	SPI_master_transmit(0x11);											// SET_PROPERTY (CMD)
	SPI_master_transmit(0x20);											// MODEM (group)
	SPI_master_transmit(0x01);											// 1 (num_props)
	SPI_master_transmit(0x51);											// MODEM_CLKGEN_BAND (start_prop)
	SPI_master_transmit(0b1000 + band);									// data (SY_SEL = Div-by-2, band)
	SPI_deassert_SS();
	SI4X6X_rx_CTS(rx_buffer, 1);
	
	SPI_assert_SS();
	SPI_master_transmit(0x11);											// SET_PROPERTY (CMD)
	SPI_master_transmit(0x40);											// FREQ_CONTROL (group)
	SPI_master_transmit(0x04);											// 4 (num_props)
	SPI_master_transmit(0x00);											// FREQ_CONTROL_INTE (start_prop)
	SPI_master_transmit(n);												// data (FREQ_CONTROL_INTE)
	SPI_master_transmit(m2);											// data (FREQ_CONTROL_FRAC)
	SPI_master_transmit(m1);											// data (FREQ_CONTROL_FRAC)
	SPI_master_transmit(m0);											// data (FREQ_CONTROL_FRAC)
	SPI_deassert_SS();
	SI4X6X_rx_CTS(rx_buffer, 1);
}


/*
	This property defines the frequency deviation value of FSK and GFSK modulations.
	
		MODEM_FREQ_DEV = (2^19 * outdiv * DEVIATION_Hz) / (Npresc * freq_xo)
	
	Example:
		MODEM_FREQ_DEV (145MHz): (2^19 * 24 * 3,000) / (2 * 16,369,000) = 1153
		MODEM_FREQ_DEV (434MHz): (2^19 * 8 * 225) / (2 * 16,369,000) = 29
	
	The property sets PEAK DEVIATION (deviation of the peak from the carrier).
*/
void SI4X6X_set_frequency_deviation(uint32_t deviation)
{	
	uint8_t rx_buffer[16];
	
	SPI_assert_SS();
	SPI_master_transmit(0x11);											// SET_PROPERTY (CMD)
	SPI_master_transmit(0x20);											// MODEM (group)
	SPI_master_transmit(0x03);											// 3 (num_props)
	SPI_master_transmit(0x0A);											// MODEM_FREQ_DEV (start_prop)
	SPI_master_transmit((deviation >> 16) & 0xFF);						// data (MODEM_FREQ_DEV)
	SPI_master_transmit((deviation >> 8) & 0xFF);						// data (MODEM_FREQ_DEV)
	SPI_master_transmit(deviation & 0xFF);								// data (MODEM_FREQ_DEV)
	SPI_deassert_SS();
	SI4X6X_rx_CTS(rx_buffer, 1);
}


/*
	The MODEM_FREQ_OFFSET value is used to provide an offset to the programmed
	TX frequency. This allows fine tuning of the TX frequency to account for
	the variability of the TX reference frequency
	
		MODEM_FREQ_OFFSET = (2^19 * outdiv * OFFSET_Hz) / (Npresc * freq_xo)
	
	Minimum Offset
		145MHz		1.91Hz
		434MHz		5.72Hz
*/
void SI4X6X_set_frequency_offset(uint32_t offset)
{
	uint8_t rx_buffer[16];
	
	SPI_assert_SS();
	SPI_master_transmit(0x11);											// SET_PROPERTY (CMD)
	SPI_master_transmit(0x20);											// MODEM (group)
	SPI_master_transmit(0x02);											// 2 (num_props)
	SPI_master_transmit(0x0D);											// MODEM_FREQ_OFFSET (start_prop)
	SPI_master_transmit((offset >> 8) & 0xFF);							// data (MODEM_FREQ_OFFSET)
	SPI_master_transmit(offset & 0xFF);									// data (MODEM_FREQ_OFFSET)
	SPI_deassert_SS();
	SI4X6X_rx_CTS(rx_buffer, 1);
}


/*
	This property configures the Modem in the chip for transmission/reception
	of the following modulation types: OOK, 2(G)FSK, and 4(G)FSK modulation.
	
	MODULATION
		CW 		0
		OOK 	1
		2FSK 	2
		2GFSK 	3
		4FSK 	4
		4GFSK 	5
	
	In TX mode, this property is additionally used to select the source of
	the TX data stream, and whether that TX data stream is from a synchronous
	or asynchronous source (in Direct mode only).
	
	ASYNC
		synchronous mode	0
		asynchronous mode	1
*/
void SI4X6X_set_modulation(uint8_t mod, uint8_t async)
{
	uint8_t rx_buffer[16];
	
	SPI_assert_SS();
	SPI_master_transmit(0x11);											// SET_PROPERTY (CMD)
	SPI_master_transmit(0x20);											// MODEM (group)
	SPI_master_transmit(0x01);											// 1 (num_props)
	SPI_master_transmit(0x00);											// MODEM_MOD_TYPE (start_prop)
	SPI_master_transmit(((async << 7) | (1 << 6) | (1 << 3) | mod));	// data (GPIO2 as the source of data, TX Direct Mode)
	SPI_deassert_SS();
	SI4X6X_rx_CTS(rx_buffer, 1);
}


/*
	The chip contains a TX Numerically Controlled Oscillator (NCO) for the purpose
	of creating an internal clock signal at a configurable multiple of the desired
	data rate. The oversampled NCO clock signal is used to synthesize the individual
	deviation steps of the Gaussian filtered modulation waveform.
	
	In 2GFSK or 4GFSK mode, the TXOSR value may be increased to 20x or 40x (from its
	nominal value of 10x). This increase in oversampling rate results in a Gaussian
	filtered modulation waveform with finer deviation steps.
		
	TXOSR
		0	10x
		1	40x
		2	20x
	
	Equations:
		NCO_CLK_FREQ = (MODEM_DATA_RATE * freq_xo) / MODEM_TX_NCO_MODE
		
		TX_DATA_RATE = NCO_CLK_FREQ / TXOSR
	
	Example:
		24,000 = (24,000 * 16,369,000) / 16,369,000
		
		2,400 = 24,000 / 10
*/
void SI4X6X_set_data_rate(uint32_t data_rate, uint8_t txosr)
{
	uint8_t rx_buffer[16];
	
	SPI_assert_SS();
	SPI_master_transmit(0x11);											// SET_PROPERTY (CMD)
	SPI_master_transmit(0x20);											// MODEM (group)
	SPI_master_transmit(0x04);											// 4 (num_props)
	SPI_master_transmit(0x06);											// MODEM_TX_NCO_MODE (start_prop)
	SPI_master_transmit((txosr << 2) | 0x00);							// data (MODEM_TX_NCO_MODE) - TXOSR, hard-coded 16,369,000 Bit[25:0]
	SPI_master_transmit(0xF9);											// data (MODEM_TX_NCO_MODE) 
	SPI_master_transmit(0xC5);											// data (MODEM_TX_NCO_MODE)
	SPI_master_transmit(0x68);											// data (MODEM_TX_NCO_MODE)
	SPI_deassert_SS();
	SI4X6X_rx_CTS(rx_buffer, 1);
	
	SPI_assert_SS();
	SPI_master_transmit(0x11);											// SET_PROPERTY (CMD)
	SPI_master_transmit(0x20);											// MODEM (group)
	SPI_master_transmit(0x03);											// 3 (num_props)
	SPI_master_transmit(0x03);											// MODEM_DATA_RATE (start_prop)
	SPI_master_transmit(data_rate >> 16);								// data (MODEM_DATA_RATE)
	SPI_master_transmit(data_rate >> 8);								// data (MODEM_DATA_RATE)
	SPI_master_transmit(data_rate);										// data (MODEM_DATA_RATE)
	SPI_deassert_SS();
	SI4X6X_rx_CTS(rx_buffer, 1);
}


/*
	This property selects the operating mode of the PA. A switching-type amplifier
	(matched for Class-E or Square Wave operation) will typically provide higher
	output power and better current efficiency, while a switched current amplifier
	will typically provide more linear control of output power and better power
	flatness over variations in VDD supply voltage.
	
	This configuration is automatically handled inside the chip according to chip
	type. The PA_SEL field does not need to be configured to obtain proper
	operation of the PA.
	
		PA_SEL		HP_FINE		1 	Si4463/64: lower maximum power but with finer step size (~2x).
					HP_COARSE 	2 	Si4463/64: higher maximum power but with larger step size.
					LP		 	6 	Si4460: lower-power applications.
					MP		 	8 	Si4461: medium-power applications.
		
		PA_MODE		CLE 		0 	Switching-Amplifier Mode (for Class-E or Square Wave match).
					SWC 		1 	Switched Current Mode.
*/
void SI4X6X_set_PA_mode(uint8_t pa_sel, uint8_t pa_mode)
{
	uint8_t rx_buffer[16];
	
	SPI_assert_SS();
	SPI_master_transmit(0x11);											// SET_PROPERTY (CMD)
	SPI_master_transmit(0x22);											// PA (group)
	SPI_master_transmit(0x01);											// 1 (num_props)
	SPI_master_transmit(0x00);											// PA_MODE (start_prop)
	SPI_master_transmit((pa_sel << 2) | (pa_mode << 0));				// data (PA_MODE)
	SPI_deassert_SS();
	SI4X6X_rx_CTS(rx_buffer, 1);
}


/*
				Max Output Power	TX Current
	Si4060		+13dBm				+10dBm: 18mA (at 868MHz)
									+13dBm: 25mA (at 434MHz)
	Si4063		+20dBm				+20dBm: 70mA (at 169MHz)
									+20dBm: 75mA (at 460MHz)
									+20dBm: 85mA (at 915MHz)
	
	LEVEL
		DDAC: Selects the number of enabled output device fingers, with a larger
		value resulting in increased output power.
		
		0x00 - 0x7E		(0 - 126)
*/
void SI4X6X_set_power_level(uint8_t level)
{
	uint8_t rx_buffer[16];
	
	SPI_assert_SS();
	SPI_master_transmit(0x11);											// SET_PROPERTY (CMD)
	SPI_master_transmit(0x22);											// PA (group)
	SPI_master_transmit(0x01);											// 1 (num_props)
	SPI_master_transmit(0x01);											// PA_PWR_LVL (start_prop)
	SPI_master_transmit(level);											// data (DDAC)
	SPI_deassert_SS();
	SI4X6X_rx_CTS(rx_buffer, 1);
}


/*
	The chip can apply a spectral shaping filter function (e.g., Gaussian filtering)
	to the TX data stream. The filter is implemented as a 17-tap digital FIR filter.
	The values of the tap coefficients are symmetrical, only 9 are required.
	The spectral shaping filter function is used only in TX mode, and is not
	available when using TX Direct Asynchronous mode.
	
	FIR filter design tool: http://t-filter.engineerjs.com/
	
	Default Filter
		uint8_t filter[9] = {0x01,0x03,0x08,0x11,0x21,0x36,0x4D,0x60,0x67};
		
	UBSEDS Filter
		uint8_t filter[9] = {0x19,0x21,0x07,0xC8,0x8E,0x9A,0xFB,0x75,0xAD};
*/
void SI4X6X_set_filter_coefficients(void)
{
	/* UBSEDS Filter */
	uint8_t filter[9] = {0x19,0x21,0x07,0xC8,0x8E,0x9A,0xFB,0x75,0xAD};
	
	uint8_t rx_buffer[16];
	
	SPI_assert_SS();
	SPI_master_transmit(0x11);											// SET_PROPERTY (CMD)
	SPI_master_transmit(0x20);											// MODEM (group)
	SPI_master_transmit(0x09);											// 9 (num_props)
	SPI_master_transmit(0x0F);											// MODEM_TX_FILTER_COEFF (start_prop)
	SPI_master_transmit(filter[8]);										// data (MODEM_TX_FILTER_COEFF_8)
	SPI_master_transmit(filter[7]);										// data (MODEM_TX_FILTER_COEFF_7)
	SPI_master_transmit(filter[6]);										// data (MODEM_TX_FILTER_COEFF_6)
	SPI_master_transmit(filter[5]);										// data (MODEM_TX_FILTER_COEFF_5)
	SPI_master_transmit(filter[4]);										// data (MODEM_TX_FILTER_COEFF_4)
	SPI_master_transmit(filter[3]);										// data (MODEM_TX_FILTER_COEFF_3)
	SPI_master_transmit(filter[2]);										// data (MODEM_TX_FILTER_COEFF_2)
	SPI_master_transmit(filter[1]);										// data (MODEM_TX_FILTER_COEFF_1)
	SPI_master_transmit(filter[0]);										// data (MODEM_TX_FILTER_COEFF_0)
	SPI_deassert_SS();
	SI4X6X_rx_CTS(rx_buffer, 1);
}


/*
	Transmits selected number of CW blips with set duration and delay.
	Intended to signal upcoming RTTY transmission and warm up the transmitter to stabilize output frequency.
	
	Blip Length:		1ms - 8350ms
*/
void SI4X6X_tx_CW_blips(uint32_t count, uint16_t length_ms, uint32_t frequency, uint32_t ref_freq, uint16_t modem_freq_offset)
{
	SI4X6X_set_modulation(0, 1);										// CW, Asynchronous
	SI4X6X_set_frequency(frequency, ref_freq);
	SI4X6X_set_frequency_offset(modem_freq_offset);
	
	uint16_t ocr1a = (uint16_t)((uint32_t)length_ms * 1000 / 128);
	
	TC1_init(ocr1a, 5, 0);												// 8MHz / 1024 = 7812.5Hz timer frequency
	
	for(uint32_t i = 0; i < count; i++)
	{
		SI4X6X_change_state(7);											// TX
		while(!TC1_compare_match());
		SI4X6X_change_state(1);											// SLEEP/STANDBY
		while(!TC1_compare_match());
	}
	
	TC1_deinit();
}


/*
	RTTY: 8-bit, 2 stop bits, no parity
	
	BAUD
		50		20ms		11s (50 bytes)
		100		10ms		5.5s (50 bytes)
		300		3.3ms		1.8s (50 bytes)
		600		1.7ms		0.9s (50 bytes)
	
	BAUD RATE		FREQUENCY SHIFT		MODEM_FREQ_DEV
	100 baud		450Hz shift			29 (434MHz)
	300 baud		850Hz shift			54 (434MHz)
*/
void SI4X6X_tx_FSK_rtty(uint8_t * packet, uint8_t length, uint16_t baud, uint32_t frequency,
						uint32_t ref_freq, uint16_t modem_freq_dev, uint16_t modem_freq_offset)
{
	SI4X6X_set_modulation(2, 1);										// 2FSK, Asynchronous
	SI4X6X_set_frequency(frequency, ref_freq);
	SI4X6X_set_frequency_deviation(modem_freq_dev);
	SI4X6X_set_frequency_offset(modem_freq_offset);
	
	uint16_t ocr1a = (uint16_t)(1000000 / (uint32_t)baud) - 1;
	
	TC1_init(ocr1a, 2, 0);												// 8MHz / 8 = 1MHz timer frequency
	SI4X6X_change_state(7);												// TX
	
	for(uint8_t i = 0; i < length; i++)
	{
		uint8_t c = packet[i];
		
		/* Start Bit */
		PORTB &= ~(1 << PORTB0);										// set PB0 (GPIO2 - TXDATA) LOW
		while(!TC1_compare_match());
		
		/* Data Bits */
		for(uint8_t b = 0; b < 8; b++)
		{
			if(c & 0x01) PORTB |= (1 << PORTB0);						// set PB0 (GPIO2 - TXDATA) HIGH
			else PORTB &= ~(1 << PORTB0);								// set PB0 (GPIO2 - TXDATA) LOW
		
			c >>= 1;
			
			while(!TC1_compare_match());
		}
		
		/* Stop Bits */
		PORTB |= (1 << PORTB0);											// set PB0 (GPIO2 - TXDATA) HIGH
		while(!TC1_compare_match());
		PORTB |= (1 << PORTB0);											// set PB0 (GPIO2 - TXDATA) HIGH
		while(!TC1_compare_match());
	}
	
	SI4X6X_change_state(1);												// SLEEP/STANDBY
	TC1_deinit();
}


/*
	
*/
void SI4X6X_tx_GFSK_aprs(uint8_t * bitstream, uint16_t length, uint32_t frequency, uint32_t ref_freq)
{
	uint16_t modem_freq_dev = 39;
	
	SI4X6X_set_modulation(3, 0);										// 2GFSK, Synchronous
	SI4X6X_set_frequency(frequency, ref_freq);
	SI4X6X_set_frequency_deviation(modem_freq_dev);
	SI4X6X_set_frequency_offset(0);
	SI4X6X_set_data_rate(24000, 0);
	SI4X6X_set_filter_coefficients();
	
	
}