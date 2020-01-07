/*
	Si4x6x <-> ATmega328P
		NSEL	PB2 (SS)
		SDI		PB3 (MOSI)
		SDO		PB4 (MISO)
		SCLK	PB5 (SCK)
		
		GPIO0	PD2 (INT0 - external interrupt)
		GPIO1	PD3 (INT1 - external interrupt)
		GPIO2	PB0
		GPIO3	PD7
		
		SDN		PB1 (LOW - IC active, HIGH - IC shutdown)
		VTCXO	PD6 (if used)
	
	Si4x6x Reference (Xin pin)
		Timepulse	needs setting up via the GNSS module
		TCXO		needs power via PD6
*/


#ifndef AVR_SI4X6X_H
#define AVR_SI4X6X_H


#include <avr/io.h>
#include <util/delay.h>
#include "AVR_SPI.h"


// Functions
void SI4X6X_init(uint32_t ref_freq, uint8_t tcxo);
void SI4X6X_deinit(uint8_t tcxo);
void SI4X6X_rx_CTS(uint8_t * rx_buffer, uint8_t len);
void SI4X6X_check_CTS(void);
void SI4X6X_change_state(uint8_t state);
void SI4X6X_setup_pins(uint8_t gpio0, uint8_t gpio1, uint8_t gpio2, uint8_t gpio3, uint8_t nirq, uint8_t sdo);


#endif // AVR_SI4X6X_H_