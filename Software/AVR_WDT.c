/*
	Programmable watchdog timer with separate on-chip 128kHz oscillator.
	Selectable time-out period from 16ms to 8s.
	WDT when enabled can be in interrupt mode, system reset mode or interrupt followed by system reset mode.
	
	Possible hardware fuse watchdog always on (WDTON) for fail-safe mode.
		The watchdog always on (WDTON) fuse, if programmed, will force the watchdog timer to system reset mode.
*/


#include "AVR_WDT.h"


/*
	INTERRUPT
		WDTON	WDE		WDIE	Mode								Action on Time-out
		1		0		0		Stopped								None
		1		0		1		Interrupt Mode						Interrupt
		1		1		0		System Reset Mode					Reset
		1		1		1		Interrupt and System Reset Mode		Interrupt, then go to System Reset Mode
		0		x		x		System Reset Mode					Reset
		
		WDTON fuse set to '0' means programmed and '1' means unprogrammed.
	
	Executing the corresponding interrupt vector will clear WDIE and WDIF automatically by hardware
	(the watchdog goes to system reset mode). This is useful for keeping the watchdog timer security
	while using the interrupt. To stay in interrupt and system reset mode, WDIE must be set after
	each interrupt. This should however not be done within the interrupt service routine itself,
	as this might compromise the safety-function of the watchdog system reset mode. If the interrupt
	is not executed before the next time-out, a system reset will be applied.
	
	PRESCALER
		0		16ms
		1		32ms
		2		64ms
		3		0.125s
		4		0.25s
		5		0.5s
		6		1.0s
		7		2.0s
		8		4.0s
		9		8.0s
*/
void WDT_enable(uint8_t prescaler, uint8_t wde, uint8_t wdie)
{
	uint8_t _presc = ((prescaler & 0x08) << 2) | (prescaler & 0x07);
	
	cli();
	MCUSR &= ~(1 << WDRF);										// clear Watchdog System Reset Flag
	wdt_reset();
	/* Start timed sequence */
	WDTCSR = (1 << WDCE) | (1 << WDE);							// Watchdog Change Enable, Watchdog System Reset Enable
	WDTCSR = _presc;											// Watchdog Timer Prescaler
	WDTCSR |= (wdie << WDIE) | (wde << WDE);
	sei();
}


/*
	The application software should always clear the watchdog system reset flag (WDRF) and the WDE control bit
	in the initialization routine, even if the watchdog is not in use.
*/
void WDT_disable(void)
{
	cli();
	wdt_reset();
	MCUSR &= ~(1 << WDRF);										// clear Watchdog System Reset Flag
	/* Start timed sequence */
	WDTCSR |= (1 << WDCE) | (1 << WDE);							// Watchdog Change Enable, Watchdog System Reset Enable
	WDTCSR = 0x00;												// turn off watchdog
	sei();
}


/*
	Resets the timer.
*/
void WDT_timer_reset(void)
{
	wdt_reset();
}


/*
	The application software should always clear the watchdog system reset flag (WDRF) and the WDE
	control bit in the initialization routine, even if the watchdog is not in use.
	
	WDRF - Watchdog System Reset Flag
		This bit is set if a watchdog system reset occurs. The bit is reset by a power-on reset,
		or by writing a logic zero to the flag.
*/
void WDT_clear_WDRF(void)
{
	MCUSR &= ~(1 << WDRF);										// clear Watchdog System Reset Flag
}


/*
	Interrupt handler for WDT in interrupt mode.
*/
ISR(WDT_vect)
{
	
}