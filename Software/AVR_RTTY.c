/*
	
*/


#include "AVR_RTTY.h"


/*
	Example Output
		<0x00><0x00><0x00>$$TT7D,1,14:33:47,200112,49.49200,18.22200,1131,9,1600,25.5,122*5E73\n
		lock_bytes$$callsign,id,time,date,latitude,longitude,altitude,satellites,battery[mV],temperature[°C],active_time[0.1s]*CRC\n
*/
uint8_t RTTY_packet(uint8_t * packet, uint8_t * callsign, uint16_t id,  uint8_t hour, uint8_t minute, uint8_t second,
					uint16_t year, uint8_t month, uint8_t day, float lat, float lon, int32_t alt, uint8_t sats,
					uint16_t battery, uint16_t temperature, uint16_t active_time)
{
	uint8_t n = 0;
	uint8_t i = 0;
	
	/* Lock Bytes */
	for(i = 0; i < 3; i++)
	{
		packet[n++] = 0x00;
	}
	
	/* Start of Data */
	for(i = 0; i < 2; i++)
	{
		packet[n++] = '$';
	}
	
	/* Callsign */
	i = 0;
	
	while(callsign[i] != '\0')
	{
		packet[n++] = callsign[i];
		i++;
	}
	
	packet[n++] = ',';
	
	/* ID */
	n = n_to_chars(packet, n, id);
	
	packet[n++] = ',';
	
	/* Time */
	packet[n++] = hour / 10 + '0';
	packet[n++] = hour % 10 + '0';
	packet[n++] = ':';
	packet[n++] = minute / 10 + '0';
	packet[n++] = minute % 10 + '0';	
	packet[n++] = ':';
	packet[n++] = second / 10 + '0';
	packet[n++] = second % 10 + '0';	
	packet[n++] = ',';
	
	/* Date */
	packet[n++] = year / 10 % 10 + '0';
	packet[n++] = year % 10 + '0';
	packet[n++] = month / 10 + '0';
	packet[n++] = month % 10 + '0';	
	packet[n++] = day / 10 + '0';
	packet[n++] = day % 10 + '0';	
	packet[n++] = ',';
	
	/* Latitude */
	uint32_t _lat = 0;
	
	if(lat < 0.0)
	{
		_lat = (uint32_t)(lat * -100000.0);
		packet[n++] = '-';
	}else{
		_lat = (uint32_t)(lat * 100000.0);
	}
	
	if(_lat >= 1000000) packet[n++] = _lat / 1000000 % 10 + '0';
	packet[n++] = _lat / 100000 % 10 + '0';
	packet[n++] = '.';
	packet[n++] = _lat / 10000 % 10 + '0';
	packet[n++] = _lat / 1000 % 10 + '0';
	packet[n++] = _lat / 100 % 10 + '0';
	packet[n++] = _lat / 10 % 10 + '0';
	packet[n++] = _lat % 10 + '0';
	
	packet[n++] = ',';
	
	/* Longitude */
	uint32_t _lon = 0;
	
	if(lon < 0.0)
	{
		_lon = (uint32_t)(lon * -100000.0);
		packet[n++] = '-';
	}else{
		_lon = (uint32_t)(lon * 100000.0);
	}
	
	if(_lon >= 10000000) packet[n++] = _lon / 10000000 % 10 + '0';
	if(_lon >= 1000000) packet[n++] = _lon / 1000000 % 10 + '0';
	packet[n++] = _lon / 100000 % 10 + '0';
	packet[n++] = '.';
	packet[n++] = _lon / 10000 % 10 + '0';
	packet[n++] = _lon / 1000 % 10 + '0';
	packet[n++] = _lon / 100 % 10 + '0';
	packet[n++] = _lon / 10 % 10 + '0';
	packet[n++] = _lon % 10 + '0';
	
	packet[n++] = ',';
	
	/* Altitude */
	uint32_t _alt = 0;
	
	if(alt < 0)
	{
		_alt = (uint32_t)(alt * -1);
		packet[n++] = '-';
	}else{
		_alt = (uint32_t)alt;
	}
	
	n = n_to_chars(packet, n, (uint16_t)_alt);
		
	packet[n++] = ',';
	
	/* Satellites */
	if(sats >= 10) packet[n++] = sats / 10 % 10 + '0';
	packet[n++] = sats % 10 + '0';	
	packet[n++] = ',';
	
	/* Battery Voltage */
	n = n_to_chars(packet, n, battery);
	
	packet[n++] = ',';
	
	/* Temperature */
	int16_t _temperature = (int16_t)temperature - 2730;
	
	if(_temperature > 1250) _temperature = 1250;
	if(_temperature < -2730) _temperature = -2730;
	
	if(_temperature < 0)
	{
		packet[n++] = '-';
		_temperature *= -1;
	}
	
	if(_temperature >= 1000) packet[n++] = _temperature / 1000 % 10 + '0';
	if(_temperature >= 100) packet[n++] = _temperature / 100 % 10 + '0';
	packet[n++] = _temperature / 10 % 10 + '0';
	packet[n++] = '.';
	packet[n++] = _temperature % 10 + '0';
	
	packet[n++] = ',';
	
	/* Active Time */
	n = n_to_chars(packet, n, active_time);
	
	/* CRC */
	uint16_t crc = CRC16_checksum(packet, n, 5);
	
	packet[n++] = '*';
	packet[n++] = n_to_hex(crc / 4096 % 16);
	packet[n++] = n_to_hex(crc / 256 % 16);
	packet[n++] = n_to_hex(crc / 16 % 16);
	packet[n++] = n_to_hex(crc % 16);
	
	/* End of Data */
	packet[n++] = '\n';
	
	return n;
}


/*
	Cyclic Redundancy Check function used in CRC16_checksum().
	
	CRC-16/CCITT-FALSE
*/
uint16_t crc_xmodem_update(uint16_t crc, uint8_t data)
{
	crc = crc ^ ((uint16_t)data << 8);
	
	for(uint32_t i = 0; i < 8; i++)
	{
		if (crc & 0x8000) crc = (crc << 1) ^ 0x1021;
		else crc <<= 1;
	}
	
	return crc;
}


/*
	RTTY telemetry CRC calculation. Calculation starts on the data after the initial '$' dollar sings.
*/
uint16_t CRC16_checksum(uint8_t *string, uint32_t len, uint32_t start)
{
	uint8_t c;
	uint16_t crc;
	uint32_t i;
	
	crc = 0xFFFF;
	
	for(i=start; i < len; i++)
	{
		c = string[i];
		crc = crc_xmodem_update(crc, c);
	}
	
	return crc;
}


/*
	For input 0-15 returns '0'-'F'. 
*/
uint8_t n_to_hex(uint8_t number)
{
	if(number > 9) return (number % 10) + 'A';
	else return number + '0';
}


/*
	For a specific number outputs respective chars into a buffer. 
*/
uint8_t n_to_chars(uint8_t * buffer, uint8_t n, uint16_t number)
{
	uint16_t d = 10000;
	
	if(number == 0)
	{
	    buffer[n++] = '0';
	    return n;
	}
	
	for(uint8_t i = 0; i < 5; i++)
	{
		if((number / d) > 0) break;
		d /= 10;
	}
	
	while(d >= 1)
	{
		buffer[n++] = number / d % 10 + '0';
		d /= 10;
	}
	
	return n;
}