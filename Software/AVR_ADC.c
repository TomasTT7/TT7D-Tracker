/*
	
*/


#include "AVR_ADC.h"


/*

*/
void ADC_init_AVCC(uint8_t channel)
{
	channel &= 0b00011111;
	ADCSRA = (1 << ADEN) | (1 << ADPS2) | (1 << ADPS1) | (1 << ADPS0);  // enable ADC, ADC requires clock signal between 50kHz and 200kHz, prescaler 128 (16000000 / 128 = 125kHz)
	ADMUX = (1 << REFS0) | channel;                                     // voltage reference AVCC with external capacitor at AREF pin, MUX3:0 - 0 -> ADC0 input
	_delay_us(20000);                                                   // delay for the voltage to settle
	// one conversion after REF change should be discarded
	ADCSRA |= (1 << ADSC);                                              // start single conversion for selected Analog Input
	while(ADCSRA & (1 << ADSC));                                        // wait for the end of conversion (ADSC = 0)
}


/*
	
*/
void ADC_init_temperature(void)
{
	ADCSRA = (1 << ADEN) | (1 << ADPS2) | (1 << ADPS1) | (1 << ADPS0);  // enable ADC, ADC requires clock signal between 50kHz and 200kHz, prescaler 128 (16000000 / 128 = 125kHz)
	ADMUX = (1 << REFS1) | (1 << REFS0) | (1 << MUX3);                  // voltage reference internal 1.1V with external cap at AREF pin, MUX3:0 - 8 -> ADC8 input (temperature sensor)
	_delay_us(20000);                                                   // delay for the voltage to settle
	// one conversion after REF change should be discarded
	ADCSRA |= (1 << ADSC);                                              // start single conversion for selected Analog Input
	while(ADCSRA & (1 << ADSC));                                        // wait for the end of conversion (ADSC = 0)
}


/*

*/
void ADC_deinit(void)
{
	ADCSRA = 0;
}


/*

*/
uint16_t ADC_sample_channel(uint8_t samples)
{
	uint32_t _temp = 0;
	
	for(uint16_t i = 0; i < samples; i++)
	{
		ADCSRA |= (1 << ADSC);                                          // start single conversion for selected Analog Input
		while(ADCSRA & (1 << ADSC));                                    // wait for the end of conversion (ADSC = 0)
		_temp += ADC;
	}
	
	return (_temp / samples);
}


/*
	Returns voltage in millivolts [mV].
*/
uint16_t ADC_calculate_voltage(uint16_t rawADC, uint16_t ref_mV)
{
	uint16_t result = (uint32_t)rawADC * (uint32_t)ref_mV / 1024;
	
	return result;
}


/*
	Returns temperature in Kelvin [K].
	
	Input COEFFICIENT multiplied by 1000 to avoid floating-point arithmetic.
	
	T = (ADC x (coeff * 1000)) / 1000 - offset
	
	Typical Values: (ATmega328P)
		-40°C		0x010D		269
		25°C		0x0160		352
		125°C		0x01E0		480
	
	Typical Values: (ATmega328PB)
		-40°C		0x00CD		205
		25°C		0x010E		270
		125°C		0x015E		350
*/
uint16_t ADC_calculate_temperature(uint16_t rawADC, uint16_t offset, uint16_t coefficient)
{
	uint16_t result = (uint32_t)rawADC * (uint32_t)coefficient / 1000 - offset;
	
	return result;
}