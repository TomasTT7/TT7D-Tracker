/*
	
*/


#include "AVR_UART.h"


/*
	
*/
void UART_init(uint32_t baud)
{
	uint32_t br = F_CPU / 16 / baud - 1;
	
	UBRR0H = (br >> 8);													// load upper 8-bits of baud rate
	UBRR0L = br;														// load lower 8-bits of baud rate
	UCSR0B = (1 << RXEN0) | (1 << TXEN0);								// enable UART transmitter and receiver
	UCSR0C = (1 << UCSZ00) | (1 << UCSZ01);								// frame format:  8-bit data, 1 stop bit, no parity
}


/*
	
*/
void UART_deinit(void)
{
	UCSR0B = 0;															// disable UART
}


/*

*/
void UART_flush(void)
{
	uint8_t dummy = 0;
	while(UCSR0A & (1 << RXC0)) dummy = UDR0;							// read data register until receive flag is cleared
}


/*
	
*/
void UART_transmit(uint8_t data)
{
	uint16_t timeout = 10000;
	
	while(!(UCSR0A & (1 << UDRE0)) && timeout) timeout--;				// wait until data register is ready for new data or timeout
	
	if(timeout) UDR0 = data;											// write data to data register
}


/*
	
*/
uint8_t UART_receive(void)
{
	uint32_t timeout = 250000;
	
	while(!(UCSR0A & (1 << RXC0)) && timeout) timeout--;				// wait for receive flag or timeout
	
	if(timeout) return UDR0;											// return byte read from data register
	else return 0;
}