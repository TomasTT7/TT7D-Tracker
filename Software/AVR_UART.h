/*
	
*/


#ifndef AVR_UART_H
#define AVR_UART_H


#include <avr/io.h>
#include <util/delay.h>


// Functions
void UART_init(uint32_t baud);
void UART_deinit(void);
void UART_flush(void);
void UART_transmit(uint8_t data);
uint8_t UART_receive(uint32_t * timeout);


#endif // AVR_UART_H_