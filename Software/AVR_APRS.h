/*
	
*/


#ifndef AVR_APRS_H
#define AVR_APRS_H


#include <avr/io.h>
#include "math.h"


#define lo8(x) ((x)&0xff)
#define hi8(x) ((x)>>8)


// Functions
uint8_t APRS_packet(void);
uint8_t APRS_altitude_offset(uint16_t alt);
uint16_t APRS_bitstream(uint8_t * data, uint8_t len, uint8_t * output);

uint8_t Base91_encode_u16(uint16_t number, uint8_t *buffer, uint8_t n);
uint8_t Base91_encode_u32(uint32_t number, uint8_t *buffer, uint8_t n);
uint16_t crc_ccitt_update(uint16_t crc, uint8_t data);


#endif // AVR_APRS_H_