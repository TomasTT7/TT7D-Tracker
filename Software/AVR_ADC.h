/*
	
*/


#ifndef AVR_ADC_H
#define AVR_ADC_H


#include <avr/io.h>
#include <util/delay.h>


// Functions
void ADC_init_AVCC(uint8_t channel);
void ADC_init_temperature(void);
void ADC_deinit(void);
uint16_t ADC_sample_channel(uint8_t samples);
uint16_t ADC_calculate_voltage(uint16_t rawADC, uint16_t ref_mV);
uint16_t ADC_calculate_temperature(uint16_t rawADC, uint16_t offset, uint16_t coefficient);


#endif // AVR_ADC_H_