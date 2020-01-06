/*
	
*/


#ifndef AVR_SPI_H
#define AVR_SPI_H


#include <avr/io.h>


// Functions
void SPI_init_master(void);
void SPI_deinit(void);
uint8_t SPI_master_transmit(uint8_t data);
void SPI_assert_SS(void);
void SPI_deassert_SS(void);


#endif // AVR_SPI_H_