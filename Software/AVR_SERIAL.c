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


#include "AVR_SERIAL.h"


/*
	
*/
void SERIAL_send_number(uint32_t n)
{
	DDRC |= (1 << PORTC3);														// set PC3 to OUTPUT
	PORTC |= (1 << PORTC3);														// set PC3 to HIGH (idle)
	
	/* Data Stream */
	uint8_t _len = 0;
	uint8_t _buffer[10];
	
	if(n == 0)
	{
		_buffer[0] = '0';
		_len = 1;
	}
	else
	{
		for(uint32_t d = 1000000000; d >= 1; d=d/10)
		{
			if(n >= d)
			{
				_buffer[_len++] = n / d % 10 + '0';
			}
		}
	}
	
	/* Transmission */
	cli();
	
	for(uint8_t i = 0; i < _len; i++)
	{
		/* Start Bit */
		PORTC &= ~(1 << PORTC3);												// set PC3 to LOW
		_delay_us(26);
		
		/* Data Bits */
		uint8_t c = _buffer[i];
		
		for(uint8_t x = 0; x < 8; x++)
		{
			if(c & 0x01) PORTC |= (1 << PORTC3);								// set PC3 to HIGH
			else PORTC &= ~(1 << PORTC3);										// set PC3 to LOW
			
			c = c >> 1;
			_delay_us(26);
		}
		
		/* Stop Bit */
		PORTC |= (1 << PORTC3);													// set PC3 to HIGH (idle)
		_delay_us(26);
	}
	sei();
}


/*
	
*/
void SERIAL_send_character(uint8_t chr)
{
	DDRC |= (1 << PORTC3);														// set PC3 to OUTPUT
	PORTC |= (1 << PORTC3);														// set PC3 to HIGH (idle)
	
	/* Transmission */
	
	/* Start Bit */
	cli();
	PORTC &= ~(1 << PORTC3);													// set PC3 to LOW
	_delay_us(26);
		
	/* Data Bits */
	uint8_t c = chr;
	
	for(uint8_t x = 0; x < 8; x++)
	{
		if(c & 0x01) PORTC |= (1 << PORTC3);									// set PC3 to HIGH
		else PORTC &= ~(1 << PORTC3);											// set PC3 to LOW
		
		c = c >> 1;
		_delay_us(26);
	}
	
	/* Stop Bit */
	PORTC |= (1 << PORTC3);														// set PC3 to HIGH (idle)
	_delay_us(26);
	sei();
}