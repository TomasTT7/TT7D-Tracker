/*
	Timer/Counter0 - 8-bit
		-
	Timer/Counter1 - 16-bit
		APRS, RTTY, CW
	Timer/Counter2 - 8-bit
		Active Time
*/


#include "AVR_TC.h"


volatile uint32_t TC2_intr_counter = 0;


/*
	Initializes TC1 in CTC Mode.
	
	OCR1A
		302		8MHz		26402.6Hz		interrupt		APRS
		9999	1MHz		100Hz			no interrupt	RTTY
		3905	7.8kHz		2Hz				no interrupt	CW
	
	PRESCALER
		1		1		8MHz
		2		8		1MHz
		3		64		125kHz
		4		256		31.25kHz
		5		1024	7.8125kHz
*/
void TC1_init(uint16_t ocr1a, uint8_t prescaler, uint8_t interrupt)
{
	TCCR1B = (1 << WGM12) | prescaler;									// CTC mode (OCR1A top), 8MHz/prescaler
	TCCR1A = 0;															// CTC mode (OCR1A top)
	OCR1A = ocr1a;														// output compare match
	TCNT1 = 0;															// initialize counter to 0
	if(interrupt) TIMSK1 |= (1 << OCIE1A);								// enable output compare A match interrupt
	sei();																// set global interrupt flag
}


/*
	
*/
void TC1_deinit(void)
{
	TCCR1B = 0;
	TIMSK1 &= ~(1 << OCIE1A);											// disable output compare A match interrupt	
}


/*
	
*/
uint8_t TC1_compare_match(void)
{
	if(TIFR1 & (1 << OCF1A))
	{
		TIFR1 |= (1 << OCF1A);											// clear flag
		return 1;
	}
	else return 0;
}


/*
	pin toggling here
	interrupt counting
	overseeing current bit
	signaling spi commands in a while loop
	
	8MHz TC1, counter to 302 -> 26402.6Hz interrupt
*/
ISR(TIMER1_COMPA_vect)
{
	TCNT1 = 0;															// reset counter
	
	
}


/*
	Initializes TC2 in CTC Mode.
	
	OCR2A
		124		125kHz		1kHz		interrupt		Active Time
	
	PRESCALER
		1		1		8MHz
		2		8		1MHz
		3		32		250kHz
		4		64		125kHz
		5		128		62.5kHz
		6		256		31.25kHz
		7		1024	7.8125kHz
*/
void TC2_init(uint8_t ocr2a, uint8_t prescaler, uint8_t interrupt)
{
	TCCR2B = prescaler;													// CTC mode (OCR2A - top), 8MHz/prescaler
	TCCR2A = (1 << WGM21);												// CTC mode (OCR2A - top)
	OCR2A = ocr2a;														// output compare match
	TCNT2 = 0;															// initialize counter to 0
	TC2_intr_counter = 0;
	if(interrupt) TIMSK2 |= (1 << OCIE2A);								// enable output compare A match interrupt
	sei();																// set global interrupt flag
}


/*
	
*/
void TC2_deinit(void)
{
	TCCR2B = 0;
	TIMSK2 &= ~(1 << OCIE2A);											// disable output compare A match interrupt	
}


/*
	Returns time [ms] elapsed since initialization of TC2 or the last reset of the counter.
	Assumes TC2 running at 125kHz and output compare A match interrupt firing every 1ms (OCR2A = 124).
*/
uint32_t TC2_elapsed_time(uint8_t reset)
{
	uint32_t _counter = TC2_intr_counter;
	
	if(reset) TC2_intr_counter = 0;
	
	return _counter;
}


/*
	
*/
ISR(TIMER2_COMPA_vect)
{
	TCNT2 = 0;															// reset counter
	
	TC2_intr_counter++;
}