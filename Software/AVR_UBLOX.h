/*
	
*/


#ifndef AVR_UBLOX_H
#define AVR_UBLOX_H


#include <avr/io.h>
#include <avr/pgmspace.h>
#include "AVR_UART.h"


PROGMEM static const uint8_t requestPVT[8] = {0xB5, 0x62, 0x01, 0x07, 0x00, 0x00, 0x08, 0x19};
PROGMEM static const uint8_t dummyByte[1] = {0xFF};
/* Backup mode for infinite duration. */
PROGMEM static const uint8_t setBackupMode[16] = {0xB5, 0x62, 0x02, 0x41, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x4D, 0x3B};
/* Software backup mode. - probably won't work */
PROGMEM static const uint8_t setSwBackupMode[16] = {0xB5, 0x62, 0x06, 0x57, 0x08, 0x00, 0x01, 0x00, 0x00, 0x00, 0x50, 0x4B, 0x43, 0x42, 0x86, 0x46};
/* NAV-PVT from protocol 15 - probbly won't work (protocol 14) */


// Functions
void UBLOX_send_msg(const uint8_t * buff, uint8_t len);


#endif // AVR_UBLOX_H_