/*
	Timer/Counter0 - 8-bit
		-
	Timer/Counter1 - 16-bit
		APRS, RTTY, CW
	Timer/Counter2 - 8-bit
		Active Time
*/


#ifndef AVR_TC_H
#define AVR_TC_H


#include <avr/io.h>
#include <avr/interrupt.h>


// Functions
void TC1_init(uint16_t ocr1a, uint8_t prescaler, uint8_t interrupt);
void TC1_deinit(void);
uint8_t TC1_compare_match(void);
uint8_t TC1_check_bit(void);

void TC2_init(uint8_t ocr2a, uint8_t prescaler, uint8_t interrupt);
void TC2_deinit(void);
uint32_t TC2_elapsed_time(uint8_t reset);


#endif // AVR_TC_H_