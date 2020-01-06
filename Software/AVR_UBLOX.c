/*
	
*/


#include "AVR_UBLOX.h"


/*
	
*/
void UBLOX_send_msg(const uint8_t * buff, uint8_t len)
{
  for(uint8_t i = 0; i < len; i++)
  {
    UART_transmit(pgm_read_byte(&buff[i]));
  }
}