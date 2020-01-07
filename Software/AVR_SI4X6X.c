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
*/
void SI4X6X_init(uint32_t ref_freq, uint8_t tcxo)
{
	/* Assumes SPI interface already initialized */
	
	/* Assumes Timepulse to Xin pin already enabled */
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
	
	uint8_t rx_buffer[16];
	
	SPI_assert_SS();
	SPI_write(0x02);													// POWER_UP - 15ms
	SPI_write(0x01);
	SPI_write(0x01);													// 0x00 - XTAL, 0x01 - TCXO
	SPI_write(ref_freq / 16777216);
	SPI_write(ref_freq % 16777216 / 65536);
	SPI_write(ref_freq % 16777216 % 65536 / 256);
	SPI_write(ref_freq % 16777216 % 65536 % 256);
	SPI_deassert_SS();
	SI4X6X_rx_CTS(rx_buffer, 1);
	
	SPI_assert_SS();
	SPI_write(0x20);													// GET_INT_STATUS (clear interrupts)
	SPI_deassert_SS();
	SI4X6X_rx_CTS(rx_buffer, 9);
	
	/* Si4x6x Pins Setup */
	SI4X6X_setup_pins(8, 16, 4, 1, 0, 0);
}


/*
	Reset via SDN pin required to bring the transmitter to its original state (least consumption).
*/
void SI4X6X_deinit(uint8_t tcxo)
{
	SI4X6X_change_state(1);												// Sleep/Standby
	
	/* ATmega328P Pins Deinit */
	PORTB &= ~(1 << PORTB0);											// set PB0 (GPIO2 - TXDATA) LOW
	DDRB &= ~(1 << PORTB0);												// set PB0 to INPUT
	
	/* Deinit SDN */
	PORTB |= (1 << PORTB1);												// set PB1 (SDN) HIGH
	_delay_ms(1);
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
		
		SPI_write(0x44);												// READ_CMD_BUFF
		_cts = SPI_write(0x00);

		if(_cts == 0xFF) break;
		SPI_deassert_SS();
	}
	
	rx_buffer[0] = _cts;
	
	for(uint8_t i = 1; i < len; i++)
	{
		rx_buffer[i] = SPI_write(0x00);
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
	STATE
		NOCHANGE	0x00	No change, remain in current state.
		SLEEP		0x01 	SLEEP or STANDBY state.
		SPI_ACTIVE	0x02	SPI_ACTIVE state.
		READY		0x03	READY state.
		TX_TUNE		0x05	TX_TUNE state.
		RX_TUNE		0x06	RX_TUNE state. (Si4463)
		TX			0x07	TX state.
		RX			0x08	RX state. (Si4463)
*/
void SI4X6X_change_state(uint8_t state)
{
	uint8_t rx_buffer[16];
	
	SPI_assert_SS();
	SPI_write(0x34);													// CHANGE_STATE
	SPI_write(state);
	SPI_deassert_SS();
	SI4X6X_rx_CTS(rx_buffer, 1);
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
	SPI_write(0x13);													// GPIO_PIN_CFG
	SPI_write(gpio0);													// GPIO0
	SPI_write(gpio1);													// GPIO1
	SPI_write(gpio2);													// GPIO2
	SPI_write(gpio3);													// GPIO3
	SPI_write(nirq);													// NIRQ
	SPI_write(sdo);														// SDO
	SPI_write(0x00);													// Drive Strength
	SPI_deassert_SS();
	SI4X6X_rx_CTS(rx_buffer, 8);
}