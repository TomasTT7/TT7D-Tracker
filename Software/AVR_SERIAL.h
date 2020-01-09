/*
	PC Default: 9600 baud, 8-bit,  NO parity, 1 stop bit, least significant bit first, idle HIGH
	
		baud		delay [us]
		2400		416.67
		4800		208.33
		9600		104.17
		14400		69.444
		19200		52.083
		28800		34.722
		38400		26.041
		57600		17.361
		76800		13.021
		115200		8.6805
*/


#ifndef AVR_SERIAL_H
#define AVR_SERIAL_H


#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>


// Functions
void SERIAL_send_number(uint32_t n);
void SERIAL_send_character(uint8_t chr);


#endif // AVR_SERIAL_H_