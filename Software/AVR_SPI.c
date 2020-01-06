/*
	
*/


#include "AVR_SPI.h"


/*
	SPI Pins
		SS		PB2
		MOSI	PB3
		MISO	PB4
		SCK		PB5
*/
void SPI_init_master(void)
{
	DDRB |= (1 << PORTB3) | (1 << PORTB5) | (1 << PORTB2);				// set MOSI, SCK, SS as OUTPUT
	SPCR = (1 << SPE) | (1 << MSTR);									// enable SPI, set as master
	SPSR |= (1 << SPI2X);												// prescaler: Fosc/2 (4MHz)
	PORTB |= (1 << PORTB2);												// set SS HIGH
}


/*
	
*/
void SPI_deinit(void)
{
	PORTB &= ~(1 << PORTB2);											// set SS LOW
	SPCR = 0;															// disable SPI
	DDRB &= ~((1 << PORTB3) | (1 << PORTB5) | (1 << PORTB2));			// MOSI, SCK, SS as INPUT
}


/*
	
*/
uint8_t SPI_master_transmit(uint8_t data)
{
	uint16_t timeout = 1000;
	
	SPDR = data;														// write data and initiate transmission
	while(!(SPSR & (1 << SPIF)) && timeout) timeout--;					// wait for transmission to complete or timeout
	
	uint8_t received = SPDR;
	
	if(!timeout) return 0;
	else return received;												// read and return received data
}


/*
	Assert slave select (SS) on pin PB2.
*/
void SPI_assert_SS(void)
{
	PORTB &= ~(1 << PORTB2);											// set SS LOW
}


/*
	Deassert slave select (SS) on pin PB2.
*/
void SPI_deassert_SS(void)
{
	PORTB |= (1 << PORTB2);												// set SS HIGH
}