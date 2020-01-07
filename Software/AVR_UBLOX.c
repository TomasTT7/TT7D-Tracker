/*
	GNSS Modules
		u-blox MAX-M8Q		Protocol 18.00 (Firmware 3.01)		concurrent GNSS reception (GPS, Galileo, GLONASS, BeiDou)
		u-blox MAX-7Q		Protocol 14.00 (Firmware 1.00)		single GNSS reception (GPS, GLONASS)
		Bwin GM10			Protocol 14.00 (Firmware 1.00)		single GNSS reception (GPS, GLONASS)
*/


#include "AVR_UBLOX.h"


/*
	Byte by byte sends a UBX or NMEA message stored in PROGMEM.
*/
void UBLOX_send_msg(const uint8_t * buff, uint8_t len)
{
  for(uint8_t i = 0; i < len; i++)
  {
    UART_transmit(pgm_read_byte(&buff[i]));
  }
}


/*
	Verifies the checksum of received UBX messages.
*/
uint8_t UBLOX_verify_checksum(uint8_t *buff, uint8_t len)
{
	uint8_t CRC;
	uint8_t CK_A_real = buff[len-2];
	uint8_t CK_B_real = buff[len-1];
	uint8_t CK_A_comp = 0;
	uint8_t CK_B_comp = 0;
	
	for(uint8_t i = 2; i < len-2; i++)
	{
		CK_A_comp = CK_A_comp + buff[i];
		CK_B_comp = CK_A_comp + CK_B_comp;
	}
	
	if(CK_A_real == CK_A_comp && CK_B_real == CK_B_comp) CRC = 1;
	else CRC = 0;

	return CRC;
}


/*
	UBX-NAV-PVT (0x01 0x07)
	
		YEAR		Year (UTC)
		MONTH		Month, range 1..12 (UTC)
		DAY			Day of month, range 1..31 (UTC)
		HOUR		Hour of day, range 0..23 (UTC)
		MIN			Minute of hour, range 0..59 (UTC)
		SEC			Seconds of minute, range 0..60 (UTC)
		VALID		Bit[0] validDate		1 = valid UTC Day
					Bit[1] validTime		1 = valid UTC Time of Day
					Bit[2] fullyResolved	1 = UTC Time of Day has been fully resolved (no seconds uncertainty)
					Bit[3] validMag			1 = valid Magnetic declination
		FIXTYPE		0: no fix
					1: dead reckoning only
					2: 2D-fix
					3: 3D-fix
					4: GNSS + dead reckoning combined
					5: time only fix
		GNSSFIXOK	1 = valid fix (i.e within DOP & accuracy masks)
		PSMSTATE	0: PSM is not active
					1: Enabled (an intermediate state before Acquisition state
					2: Acquisition
					3: Tracking
					4: Power Optimized Tracking
					5: Inactive
		NUMSV		Number of satellites used in Navigation Solution
		LON			Longitude [°]
		LAT			Latitude [°]
		HMSL		Height above mean sea level [mm]
		HACC		Horizontal accuracy estimate [mm]
		VACC		Vertical accuracy estimate [mm]
		PDOP		Position DOP [0.01]
*/
void UBLOX_parse_0107(uint8_t * buffer, uint16_t * year, uint8_t * month, uint8_t * day, uint8_t * hour,
					  uint8_t * min, uint8_t * sec, uint8_t * valid, uint8_t * fixType, uint8_t * gnssFixOK,
					  uint8_t * psmState, uint8_t * numSV, float * lon, float * lat, int32_t * hMSL,
					  uint32_t * hAcc, uint32_t * vAcc, uint16_t * pDOP)
{
	*year = ((uint16_t)buffer[11] << 8) | (uint16_t)buffer[10];
	*month = buffer[12];
	*day = buffer[13];
	*hour = buffer[14];
	*min = buffer[15];
	*sec = buffer[16];
	*valid = buffer[17];
	*fixType = buffer[26];
	*gnssFixOK = buffer[27] & 0x01;
	*psmState = (buffer[27] >> 2) & 0x07;
	*numSV = buffer[29];
	int32_t _lon = ((int32_t)buffer[33] << 24) | ((int32_t)buffer[32] << 16) | ((int32_t)buffer[31] << 8) | (int32_t)buffer[30];
	*lon = (float)_lon / 10000000.0;
	int32_t _lat = ((int32_t)buffer[37] << 24) | ((int32_t)buffer[36] << 16) | ((int32_t)buffer[35] << 8) | (int32_t)buffer[34];
	*lat = (float)_lat / 10000000.0;
	*hMSL = (((int32_t)buffer[45] << 24) | ((int32_t)buffer[44] << 16) | ((int32_t)buffer[43] << 8) | (int32_t)buffer[42]) / 1000;
	*hAcc = ((uint32_t)buffer[49] << 24) | ((uint32_t)buffer[48] << 16) | ((uint32_t)buffer[47] << 8) | (uint32_t)buffer[46];
	*vAcc = ((uint32_t)buffer[53] << 24) | ((uint32_t)buffer[52] << 16) | ((uint32_t)buffer[51] << 8) | (uint32_t)buffer[50];
	*pDOP = ((uint16_t)buffer[83] << 8) | (uint16_t)buffer[82];
}


/*
	UBX-CFG-NAV5 (0x06 0x24)
	
	MODEL
		0	portable
		2	stationary
		3	pedestrian
		4	automotive
		5	sea
		6	airborne with <1g acceleration
		7	airborne with <2g acceleration
		8	airborne with <4g acceleration
		9	wrist worn watch
*/
void UBLOX_parse_0624(uint8_t * buffer, uint8_t * model)
{
	*model = buffer[8];
}


/*
	$GPGGA,131036.00,4928.12451,N,01809.05417,E,1,05,1.66,394.8,M,41.2,M,,*5C
		
		TIME		hhmmss.ss		092725.00		UTC time
		LAT			ddmm.mmmmm		4717.11399		Latitude (degrees & minutes)
		NS			character		N				North/South indicator
		LONG		dddmm.mmmmm		00833.91590		Longitude (degrees & minutes)
		EW			character		E				East/West indicator
		QUALITY		digit			0				No Fix / Invalid
									1				Standard GPS (2D/3D)
									2				Differential GPS
									4				RTK fixed solution
									5				RTK float solution
									6				Estimated (DR) Fix
		NUMSV		numeric			08				Number of satellites used (range: 0-12)
		HDOP		numeric			1.01			Horizontal Dilution of Precision
		ALT			numeric			499.6			Altitude above mean sea level [m]
		UALT		character		M				Altitude units: meters (fixed field)
		SEP			numeric			48.0			Geoid separation: difference between ellipsoid and mean sea level
		USEP		character		M				Separation units: meters (fixed field)
		DIFFAGE		numeric			-				Age of differential corrections (blank when DGPS is not used) [s]
		DIFFSTATION	numeric			-				ID of station providing differential corrections (blank when DGPS is not used)
		CS			hexadecimal		*5B				Checksum
		<CR><LF>	character		-				Carriage return and line feed
*/
void UBLOX_parse_GPGGA(uint8_t * buffer, uint8_t * hour, uint8_t * min, uint8_t * sec, float * lat, float * lon,
					   int32_t * alt, uint8_t * numSV, uint8_t * quality, uint16_t * hdop)
{
	uint8_t j;
	uint8_t k = 1;
	uint8_t l = 0;
	uint8_t c = 0;
	uint8_t _temp[11];
	
	for(j = 0; j < 80; j++)
	{
		if(buffer[j] == ',')
		{
			k++;
			
			/* HDOP */
			if(k == 10)
			{
				uint16_t _hdop = 0;
				
				for(uint8_t i = 0; i < l; i++)
				{
					c = _temp[i];
					if(c == '.') continue;
					_hdop *= 10;
					_hdop += c - '0';
				}
				
				*hdop = _hdop;
			}
			
			/* ALT */
			if(k == 11)
			{
				uint8_t _neg = 0;
				int32_t _alt = 0;
				
				for(uint8_t i = 0; i < l; i++)
				{
					c = _temp[i];
					
					if(c == '.') break;
					if(c == '-') {_neg = 1; continue;}
					_alt *= 10;
					_alt += c - '0';
				}
				
				*alt = _alt;
				if(_neg) *alt *= -1;
			}
			
			l = 0;
			continue;
		}
		
		switch(k)
		{
			/* TIME */
			case 2:
				_temp[l] = buffer[j];
				
				if(l == 5)
				{
					*hour = (_temp[0] - '0') * 10 + (_temp[1] - '0');
					*min = (_temp[2] - '0') * 10 + (_temp[3] - '0');
					*sec = (_temp[4] - '0') * 10 + (_temp[5] - '0');
				}
				l++;
				break;
			
			/* LAT */
			case 3:
				_temp[l] = buffer[j];
				
				if(l == 9)
				{
					uint8_t n = 0;
					uint32_t _lat = 0;
					
					while(n < 10)
					{
						c = _temp[n++];
						if(c == '.') continue;
						_lat *= 10;
						_lat += c - '0';
					}
					
					*lat = (float)(_lat / 10000000) + (float)(_lat % 10000000 / 60 * 100) / 10000000.0;
				}
				
				l++;
				break;
			
			/* NS */
			case 4:
				_temp[l] = buffer[j];
				
				if(l == 0 && _temp[0] == 'S') *lat *= -1.0;
				
				l++;
				break;
			
			/* LONG */
			case 5:
				_temp[l] = buffer[j];
				
				if(l == 10)
				{
					uint8_t n = 0;
					uint32_t _lon = 0;
					
					while(n < 11)
					{
						c = _temp[n++];
						if(c == '.') continue;
						_lon *= 10;
						_lon += c - '0';
					}
					
					*lon = (float)(_lon / 10000000) + (float)(_lon % 10000000 / 60 *100) / 10000000.0;;
				}
				
				l++;
				break;
			
			/* EW */
			case 6:
				_temp[l] = buffer[j];
				
				if(l == 0 && _temp[0] == 'W') *lon *= -1.0;
				
				l++;
				break;
			
			/* QUALITY */
			case 7:
				_temp[l] = buffer[j];
				
				if(l == 0) *quality = _temp[0] - '0';
				
				l++;
				break;
			
			/* NUMSV */
			case 8:
				_temp[l] = buffer[j];
				
				if(l == 1) *numSV = (_temp[0] - '0') * 10 + (_temp[1] - '0');
				
				l++;
				break;
			
			/* HDOP */
			case 9:
				_temp[l] = buffer[j];
				l++;
				break;
			
			/* ALT */
			case 10:
				_temp[l] = buffer[j];
				l++;
				break;
			
			default:
				break;
		}
	}
}