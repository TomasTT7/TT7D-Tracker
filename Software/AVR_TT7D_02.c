/*
	Firmware for TT7D balloon tracker. Power saving low duty cycle version.
*/ 


// F_CPU defined in AVR/GNU C Compiler / Symbols


#include <avr/io.h>
#include <util/delay.h>
#include "AVR_ADC.h"
#include "AVR_APRS.h"
#include "AVR_GEOFENCE.h"
#include "AVR_RTTY.h"
#include "AVR_SERIAL.h"
#include "AVR_SI4X6X.h"
#include "AVR_SLEEP.h"
#include "AVR_SPI.h"
#include "AVR_TC.h"
#include "AVR_UART.h"
#include "AVR_UBLOX.h"
#include "AVR_WDT.h"


#define APRS																	// comment out to disable APRS
#define RTTY																	// comment out to disable RTTY

#define RTTY_FREQ		434300000												// [Hz] RTTY frequency

#define RTTY_CALL		"TT7D"
#define APRS_CALL		"OK7DMT"
#define APRS_SSID		15

#define RTTY_PWR		20
#define APRS_PWR		20

#define CYCLE_LENGTH	60000													// [ms] GNSS acquisition + RF transmissions + sleep cycle


// Main Function ---------------------------------------------------------------------------------
int main(void)
{
	/* WDT Initialization */
	WDT_enable_system_reset();													// 8 seconds, System Reset mode
	
	/* LED - Tracker Start */
    DDRD |= (1 << PORTD4);														// set PD4 to OUTPUT
	
	for(uint8_t i = 0; i < 3; i++)
	{
		PORTD |= (1 << PORTD4);													// set PD4 HIGH
        _delay_ms(20);
        PORTD &= ~(1 << PORTD4);												// set PD4 LOW
		_delay_ms(100);
	}
	
	/* GNSS Initialization */
	UART_init(9600);
	UBLOX_send_msg(dummyByte, 1);
	_delay_ms(500);																// GNSS module wake-up delay
	UBLOX_send_msg(timepulseOFF, 40);											// turn off timepulse
	UBLOX_send_msg(setNMEAoff, 28);												// turn off NMEA output
	UBLOX_send_msg(setDynamicModelAirborne, 44);								// Dynamic Model: Airborne (<1g)
	UBLOX_send_msg(saveConfiguration, 21);										// UBX-CFG-CFG: save current configuration
	UART_deinit();
	
	/* Si4063 Initialization */
	SPI_init_master();															// 4MHz SPI frequency
	SI4X6X_init(25000000, 1);													// TCXO (16369000 fails initialization)
	SI4X6X_deinit(1);
	SPI_deinit();
	
	WDT_timer_reset();															// Watchdog reset
	
	/* Telemetry Initialization */
	uint32_t APRS_sequence	= 0;
	uint32_t RTTY_sequence	= 0;
	
	uint16_t year			= 0;
	uint8_t month			= 0;
	uint8_t day				= 0;
	uint8_t hour			= 0;
	uint8_t min				= 0;
	uint8_t sec				= 0;
	uint8_t	valid			= 0;
	uint8_t fixType			= 0;
	uint8_t gnssFixOK		= 0;
	uint8_t psmState		= 0;
	uint8_t numSV			= 0;
	float lon				= 0.0;
	float lat				= 0.0;
	int32_t hMSL			= 0;
	uint32_t hAcc			= 0;
	uint32_t vAcc			= 0;
	uint16_t pDOP			= 0;
	
	uint16_t V_mV			= 0;
	uint16_t T_K			= 0;
	uint16_t T_Si_K			= 0;
	
	uint8_t reinit			= 0;
	uint32_t active_time	= 0;
	uint32_t timer			= 0;
	
	uint8_t GNSS_buffer[100];
	uint8_t packet[90];
	
	// Main Loop ---------------------------------------------------------------------------------
	while(1)
    {
		/* WatchDog Reset */
		WDT_timer_reset();														// Watchdog reset
		
		/* Elapsed Time Measurement */
		TC2_init(124, 4, 1);													// 1ms interrupt based counter
		
		/* GNSS Data Acquisition */
		uint8_t noposition = 0;
		uint8_t check = 0;
		
		UART_init(9600);
		UBLOX_send_msg(dummyByte, 1);
		_delay_ms(500);															// GNSS module wake-up delay
		
		UART_flush();
		UBLOX_send_msg(requestNAV5, 8);											// poll UBX-CFG-NAV5
		
		check = UBLOX_receive_msg(GNSS_buffer, 44, 0);							// UBX-CFG-NAV5: 44 bytes
		
		if(check)
		{
			uint8_t model = GNSS_buffer[8];										// check Dynamic Model
			
			if(model != 6) UBLOX_send_msg(setDynamicModelAirborne, 44);			// Dynamic Model: Airborne (<1g)
		}else{
			UBLOX_send_msg(setDynamicModelAirborne, 44);						// Dynamic Model: Airborne (<1g)
		}
		
		_delay_ms(100);															// in case UBX-ACK-ACK is sent
		
		uint8_t valid_time = 0;
		uint8_t attempts = 0;
		
		while(1)
		{
			/* WatchDog Reset */
			WDT_timer_reset();													// Watchdog reset
			
			attempts++;
		
			UART_flush();
			UBLOX_send_msg(requestPVT, 8);										// poll UBX-NAV-PVT
		
			check = UBLOX_receive_msg(GNSS_buffer, 92, 0);						// UBX-NAV-PVT: MAX-M8 100 bytes, Biwin GM10: 92 bytes
		
			if(check)
			{
				UBLOX_parse_0107(GNSS_buffer, &year, &month, &day, &hour, &min, &sec, &valid, &fixType,
								&gnssFixOK, &psmState, &numSV, &lon, &lat, &hMSL, &hAcc, &vAcc, &pDOP);
			
				if((valid & 0x04) == 0x04 || (valid & 0x03) == 0x03) valid_time = 1;
				else valid_time = 0;
			
				if(gnssFixOK && valid_time && numSV >= 5)						// valid fix, time and date and minimum number of satellites condition
				{
					noposition = 0;
					break;
				}
			}
			
			if(attempts > 37)													// limit acquisition to 37s - ephemeris cycle 18-36s
			{
				noposition = 1;
				break;
			}
		}
		
		if(noposition)
		{
			if(!valid_time)
			{
				year = 0;
				month = 0;
				day = 0;
				hour = 0;
				min = 0;
				sec = 0;
				
				reinit++;														// increase counter of failed fix acquisitions in row
			}
			
			valid = 0;
			fixType = 0;
			gnssFixOK = 0;
			psmState = 0;
			numSV = 0;
			lon = 0.0;
			lat = 0.0;
			hMSL = 0;
			hAcc = 0;
			vAcc = 0;
			pDOP = 0;
		}
		else
		{
			reinit = 0;															// reset counter of failed fix acquisitions in row
		}
		
		UBLOX_send_msg(saveConfiguration, 21);									// UBX-CFG-CFG: save current configuration
		UBLOX_send_msg(setBackupMode, 16);										// command GNSS module to software backup mode 
		UART_deinit();
		
		/* ADC */
		ADC_init_AVCC(2);
		uint16_t V_raw = ADC_sample_channel(10);
		ADC_deinit();
		
		ADC_init_temperature();
		uint16_t T_raw = ADC_sample_channel(10);
		ADC_deinit();
        
		V_mV = ADC_calculate_voltage(V_raw, 3380);								// [mV]
		T_K = ADC_calculate_temperature(T_raw, 0, 1);							// [?]
		
		/* Si4063 Temperature */
		SPI_init_master();														// 4MHz SPI frequency
		SI4X6X_init(25000000, 1);												// TCXO (16369000 fails initialization)
		
		uint16_t T_Si_raw = SI4X6X_get_temperature();
		T_Si_K = (uint32_t)T_Si_raw * 8990 / 4096 - 200;						// [0.1K]
		
		SI4X6X_deinit(1);
		SPI_deinit();
		
		/* WatchDog Reset */
		WDT_timer_reset();														// Watchdog reset
		
		/* Elapsed Time Measurement */
		timer = TC2_elapsed_time(0);
		active_time = timer;
		
	#ifdef APRS
		/* Sequence Counter */
		APRS_sequence++;
		
		/* APRS Packet */
		uint8_t aprs_bitstream[90] = {0};
		
		uint8_t B = APRS_packet(packet, (uint8_t *)APRS_CALL, APRS_SSID, lat, lon, (uint16_t)hMSL,
								APRS_sequence, numSV, V_mV, T_Si_K, active_time / 100, noposition);
		uint16_t b = APRS_bitstream(packet, B, aprs_bitstream);
		
		/* GeoFenced Frequency - APRS */
		uint32_t tx_frequency = GEOFENCE_frequency(lat, lon);					// decide on frequency based on GPS position
		
		/* APRS Transmission */
		if(tx_frequency > 144000000 && tx_frequency < 146000000)				// no transmission if tx_frequency equals 0
		{
			/* Si4063 Setup */
			SPI_init_master();													// 4MHz SPI frequency
			SI4X6X_init(25000000, 1);											// TCXO (16369000 fails initialization)
			SI4X6X_set_PA_mode(2, 0);											// Si4463/64: higher maximum power, Switching-Amplifier Mode
			SI4X6X_set_power_level(APRS_PWR);									// 
			
			/* LED - APRS Transmission */
			PORTD |= (1 << PORTD4);												// set PD4 HIGH
			
			SI4X6X_tx_GFSK_aprs(aprs_bitstream, b, tx_frequency, 16369000, 0);
			
			PORTD &= ~(1 << PORTD4);											// set PD4 LOW
			
			SI4X6X_deinit(1);
			SPI_deinit();
		}
	#endif
		
		/* WatchDog Reset */
		WDT_timer_reset();														// Watchdog reset
		
	#ifdef RTTY
		/* Sequence Counter */
		RTTY_sequence++;
		
		/* RTTY Packet */
		uint8_t n = RTTY_packet(packet, (uint8_t *)RTTY_CALL, RTTY_sequence, hour, min, sec, year, month, day,
								lat, lon, hMSL, numSV, V_mV, T_Si_K, active_time / 100);
		
		/* Si4063 Setup */
		SPI_init_master();														// 4MHz SPI frequency
		SI4X6X_init(25000000, 1);												// TCXO (16369000 fails initialization)
		SI4X6X_set_PA_mode(2, 0);												// Si4463/64: higher maximum power, Switching-Amplifier Mode
		SI4X6X_set_power_level(RTTY_PWR);										// 
		
		/* CW Blips */
		SI4X6X_tx_CW_blips(5, 500, RTTY_FREQ, 16369000, 0);
		
		/* RTTY Transmission */
		SI4X6X_tx_FSK_rtty(packet, n, 100, RTTY_FREQ, 16369000, 29, 29);		// 100 baud (~8s transmission)
		
		SI4X6X_deinit(1);
		SPI_deinit();
		
		/* LED - RTTY Transmission */
		PORTD |= (1 << PORTD4);													// set PD4 HIGH
        _delay_ms(20);
        PORTD &= ~(1 << PORTD4);												// set PD4 LOW
	#endif
		
		/* Elapsed Time Measurement */
		timer = TC2_elapsed_time(1);
		TC2_deinit();
		
		/* Forced Reset Check */
		if(reinit >= 5)
		{
			WDT_force_system_reset();											// enables 16ms WatchDog
			_delay_ms(100);
		}
		
		/* Sleep */
		uint32_t sleep = (CYCLE_LENGTH - timer) / 4000;
		
		for(uint8_t i = 0; i < sleep; i++)
		{
			WDT_enable_system_reset_interrupt();								// 4 seconds
			SLEEP_enable(2);													// sleep for 4 seconds
		}
		
		/* WDT - Restore */
		WDT_enable_system_reset();												// 8 seconds, System Reset mode
	}
}