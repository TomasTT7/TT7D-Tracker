/*
	
*/


#ifndef AVR_RTTY_H
#define AVR_RTTY_H


#include <avr/io.h>


// Functions
uint8_t RTTY_packet(uint8_t * packet, uint8_t * callsign, uint16_t id,  uint8_t hour, uint8_t minute, uint8_t second,
					uint16_t year, uint8_t month, uint8_t day, float lat, float lon, int32_t alt, uint8_t sats,
					uint16_t battery, uint16_t temperature, uint16_t active_time);

uint16_t crc_xmodem_update(uint16_t crc, uint8_t data);
uint16_t CRC16_checksum(uint8_t *string, uint32_t len, uint32_t start);
uint8_t n_to_hex(uint8_t number);
uint8_t n_to_chars(uint8_t * buffer, uint8_t n, uint16_t number);


#endif // AVR_RTTY_H_