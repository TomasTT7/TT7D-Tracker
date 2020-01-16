/*
	
*/


#include "AVR_APRS.h"


/*
	NORMAL PACKET STRUCTURE:
		
		!/5LD\S*,yON3W|"/!*1fA8![!#|
		
		!									Data Type Identifier
		/									Symbol Table Identifier
		5LD\		49.49148°				Latitude
		S*,y		18.22311°				Longitude
		O									Symbol Code (Balloon)
		N3			1129m					Altitude (coarse)
		W									Compression Type Identifier
		|									Compressed Telemetry Delimiter
		"/			105						Telemetry Sequence Counter
		!*			9						Satellites
		1f			1525					Battery Voltage [mV]
		A8			2935					Temperature [0.1K]
		![			58						Active Time [0.1s]
		!#			2						Altitude Offset [m]
		|									Compressed Telemetry Delimiter
	
	NO POSITION PACKET STRUCTURE:
	
		!0000.00N\00000.00W.|"/!*1fA8![!:|
*/
uint8_t APRS_packet(uint8_t * packet, uint8_t * callsign, uint8_t ssid, float lat, float lon, uint16_t alt, uint16_t sequence,
					uint8_t sats, uint16_t battery, uint16_t temperature, uint16_t active_time, uint8_t noposition)
{
	uint8_t n = 0;
	
	/* Flags */
	for(uint8_t i = 0 ; i < 12; i++) packet[n++] = 0x7E;		// 12 0x7E flags precedes data bytes 
	
	/* Destination Address */
	uint8_t destination[6] = "APRS  ";
	for(uint8_t i = 0; i < 6; i++) packet[n++] = destination[i];
	
	/* Destination SSID */
	uint8_t dssid = 0;											// SSID: 0-15
	packet[n++] = 0b01110000 | (dssid & 0x0F);
	
	/* Source Address */
	for(uint8_t i = 0; i < 6; i++) packet[n++] = callsign[i];
	
	/* Source SSID */
	packet[n++] = 0b00110000 | (ssid & 0x0F);					// SSID: 0-15
	
	/* Path */
	uint8_t path[6] = "WIDE2 ";
	for(uint8_t i = 0; i < 6; i++) packet[n++] = path[i];
	
	/* Path SSID */
	packet[n++] = 0b00110001;									// WIDE2-1
	
	/* Left Shift Address Bytes */
	for(uint8_t i = 12; i < n; i++) packet[i] <<= 1;
	packet[n-1] |= 1;											// indicate end of address fields				
	
	/* Control Field */
	packet[n++] = 0x03;
	
	/* Protocol ID */
	packet[n++] = 0xF0;
	
	if(!noposition)
	{
		/* Information Field */
		packet[n++] = '!';										// Data Type Identifier
		packet[n++] = '/';										// Symbol Table Identifier
	
		uint32_t latitude = (90.0 - lat) * 380926.0;
		uint32_t longitude = (180.0 + lon) * 190463.0;
		uint16_t altitude = log10((float)alt * 3.28084) / log10(1.002);
	
		n = Base91_encode_u32(latitude, packet, n);				// Latitude
		n = Base91_encode_u32(longitude, packet, n);			// Longitude
		packet[n++] = 'O';										// Symbol Code (Balloon)
		n = Base91_encode_u16(altitude, packet, n);				// Altitude (coarse)
		packet[n++] = 'W';										// Compression Type Identifier (0b00110110)
	}
	else
	{
		/* Information Field */
		packet[n++] = '!';										// Data Type Identifier
		
		uint8_t empty_coords[] = "0000.00N\\00000.00W.";
		for(uint8_t i = 0; i < 19; i++) packet[n++] = empty_coords[i];
	}
	
	/* Telemetry */
	uint8_t alt_offset = APRS_altitude_offset(alt);
	
	packet[n++] = '|';											// Compressed Telemetry Delimiter
	n = Base91_encode_u16(sequence, packet, n);					// Sequence
	n = Base91_encode_u16((uint16_t)sats, packet, n);			// Satellites
	n = Base91_encode_u16(battery, packet, n);					// Battery Voltage
	n = Base91_encode_u16(temperature, packet, n);				// Temperature
	n = Base91_encode_u16(active_time, packet, n);				// Active Time
	n = Base91_encode_u16((uint16_t)alt_offset, packet, n);		// Altitude Offset
	packet[n++] = '|';											// Compressed Telemetry Delimiter
	
	/* Frame Check Sequence */
	uint16_t crc = 0xFFFF;
	
	for(uint8_t i = 0; i < (n - 12); i++) crc = crc_ccitt_update(crc, packet[i+12]);
	
	crc = ~crc;													// FCS is sent with bits flipped low-byte first
	packet[n++] = crc & 0xFF;
	packet[n++] = (crc >> 8) & 0xFF;
	
	/* End Flags */
	packet[n++] = 0x7E;
	packet[n++] = 0x7E;
	
	return n;
}


/*
	BASE91 ENCODING RESOLUTION
		CHAR_1	ALT. [m]	RES. [m]
		35		176.9		0.35
		36		212.2		0.42
		37		254.5		0.51
		38		305.2		0.61
		39		366.1		0.73
		40		439.1		0.88
		41		526.6		1.05
		42		631.6		1.26
		43		757.5		1.52
		44		908.6		1.82
		45		1089.8		2.18
		46		1307.1		2.61
		47		1567.7		3.14
		48		1880.3		3.76
		49		2255.2		4.51
		50		2704.9		5.41
		51		3244.2		6.49
		52		3891.1		7.78
		53		4667.0		9.33
		54		5597.6		11.20
		55		6713.7		13.43
		56		8052.4		16.10
		57		9658.0		19.32
		58		11583.8		23.17
		59		13893.5		27.79
		60		16663.8		33.33
		61		19986.5		39.97
		62		23971.8		47.94
		63		28751.6		57.50
		64		34484.6		68.97
		65		41360.7		82.72
		66		49607.9		99.22
		
	For input ALT between 0 and 50,000, the return value is an integer offset between 1 and 99m.
*/
uint8_t APRS_altitude_offset(uint16_t alt)
{
	uint16_t altitude = log10((float)alt * 3.28084) / log10(1.002);
	
	altitude = (uint16_t)(powf(10.0, (float)altitude * log10(1.002)) * 0.3048);
	
	return alt - altitude;
}


/*
	APRS PACKET
		Individual bytes transmitted least significant bit (LSB) first.
		After every series of five '1' bits there is one extra '0' bit stuffed into the bit stream.
		Bit stuffing is not applied when transmitting the 0x7E FLAGS (0b01111110).
	
	DATA
		Pointer to a buffer containing an APRS packet.
	
	LEN
		Number of data bytes in the buffer.
	
	OUTPUT
		Pointer to an output buffer.
		Initialize the target array to zero: 'uint8_t bitstream[90] = {0};'
*/
uint16_t APRS_bitstream(uint8_t * data, uint8_t len, uint8_t * output)
{
	uint8_t _byte, _bit;
	uint8_t series = 0;											// keeps track of successive '1's
	uint16_t out_bits = 0;
	
	for(uint16_t i = 0; i < len; i++)
	{
		for(int8_t b = 0; b < 8; b++)
		{
			if(data[i] & (1 << b))								// bit '1'
			{
				if(data[i] == 0x7E)								// bit '1' in Flag
				{
					_byte = out_bits / 8;
					_bit = out_bits % 8;
					
					output[_byte] |= (1 << _bit);
					
					series = 0;
					out_bits++;
				}else{											// bit '1' in normal byte
					_byte = out_bits / 8;
					_bit = out_bits % 8;
					
					output[_byte] |= (1 << _bit);
					
					series++;
					out_bits++;
					
					if(series == 5)								// bit '0' stuffed in
					{
						series = 0;
						out_bits++;
					}
				}
			}else{												// bit '0'
				series = 0;
				out_bits++;
			}
		}
	}
	
	return out_bits;
}


/*
	Encodes values (max 8280) to Base91 format for APRS telemetry.
	
	Output TWO chars.
*/
uint8_t Base91_encode_u16(uint16_t number, uint8_t *buffer, uint8_t n)
{
	if(number > 8280)											// maximum acceptable value
	{
		for(uint8_t i = 0; i < 2; i++) buffer[n++] = '!';		// decoded as 0
	}
	else
	{
		buffer[n++] = (number / 91) + '!';
		buffer[n++] = (number % 91) + '!';
	}
	
	return n;
}


/*
	Encodes values (max 68574960) to Base91 format for APRS telemetry.
	
	Output FOUR chars.
*/
uint8_t Base91_encode_u32(uint32_t number, uint8_t *buffer, uint8_t n)
{
	if(number > 68574960)										// maximum acceptable value
	{
		for(uint8_t i = 0; i < 4; i++) buffer[n++] = '!';		// decoded as 0
	}
	else
	{
		buffer[n++] = (number / 753571) + '!';
		buffer[n++] = (number % 753571 / 8281) + '!';
		buffer[n++] = (number % 753571 % 8281 / 91) + '!';
		buffer[n++] = (number % 753571 % 8281 % 91) + '!';
	}
	
	return n;
}


/*
	Calculates the Frame Check Sequence (FCS) of the APRS packet. 
*/
uint16_t crc_ccitt_update(uint16_t crc, uint8_t data)
{
	data ^= lo8 (crc);
	data ^= data << 4;
	
	return ((((uint16_t)data << 8) | hi8 (crc)) ^ (uint8_t)(data >> 4) ^ ((uint16_t)data << 3));
}