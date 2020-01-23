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
	
	PRESCALER				WDP3	WDP2	WDP1	WDP0
		0		16ms		0		0		0		0
		1		32ms		0		0		0		1
		2		64ms		0		0		1		0
		3		0.125s		0		0		1		1
		4		0.25s		0		1		0		0
		5		0.5s		0		1		0		1
		6		1.0s		0		1		1		0
		7		2.0s		0		1		1		1
		8		4.0s		1		0		0		0
		9		8.0s		1		0		0		1
	
	Enables 8 second watchdog in System Reset mode.
	
	*Enabling/disabling/modifying Watchdog requires a 4 clock cycle timed sequence. Because of that
	different settings are carried out by calling different functions. Attempts to write a more
	general function lead to violating this condition.
	*Used compiler optimization: -Os.
*/
void WDT_enable_system_reset(void)
{
	cli();
	MCUSR &= ~(1 << WDRF);										// clear Watchdog System Reset Flag
	wdt_reset();
	/* Start timed sequence */
	WDTCSR |= (1 << WDCE) | (1 << WDE);							// Watchdog Change Enable, Watchdog System Reset Enable
	WDTCSR = (1 << WDE) | (1 << WDP3) | (1 << WDP0);
	sei();
}


/*
	Enables 8 second watchdog in Interrupt mode.
	
	*Enabling/disabling/modifying Watchdog requires a 4 clock cycle timed sequence. Because of that
	different settings are carried out by calling different functions. Attempts to write a more
	general function lead to violating this condition.
	*Used compiler optimization: -Os.
*/
void WDT_enable_interrupt(void)
{
	cli();
	MCUSR &= ~(1 << WDRF);										// clear Watchdog System Reset Flag
	wdt_reset();
	/* Start timed sequence */
	WDTCSR |= (1 << WDCE) | (1 << WDE);							// Watchdog Change Enable, Watchdog System Reset Enable
	WDTCSR = (1 << WDIE) | (1 << WDP3) | (1 << WDP0);
	sei();
}


/*
	Enables 4 second watchdog in Interrupt and System Reset mode.
	
	*Enabling/disabling/modifying Watchdog requires a 4 clock cycle timed sequence. Because of that
	different settings are carried out by calling different functions. Attempts to write a more
	general function lead to violating this condition.
	*Used compiler optimization: -Os.
*/
void WDT_enable_system_reset_interrupt(void)
{
	cli();
	MCUSR &= ~(1 << WDRF);										// clear Watchdog System Reset Flag
	wdt_reset();
	/* Start timed sequence */
	WDTCSR |= (1 << WDCE) | (1 << WDE);							// Watchdog Change Enable, Watchdog System Reset Enable
	WDTCSR = (1 << WDIE) | (1 << WDE) | (1 << WDP3);
	sei();
}


/*
	The application software should always clear the watchdog system reset flag (WDRF) and the WDE control bit
	in the initialization routine, even if the watchdog is not in use.
	
	*Enabling/disabling/modifying Watchdog requires a 4 clock cycle timed sequence.
	*Used compiler optimization: -Os.
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
	Enables watchdog with a short period (16ms) in System Reset mode to force system reset.
*/
void WDT_force_system_reset(void)
{
	cli();
	MCUSR &= ~(1 << WDRF);										// clear Watchdog System Reset Flag
	wdt_reset();
	/* Start timed sequence */
	WDTCSR |= (1 << WDCE) | (1 << WDE);							// Watchdog Change Enable, Watchdog System Reset Enable
	WDTCSR = (1 << WDE);
	sei();
}


/*
	Interrupt handler for WDT in interrupt mode.
*/
ISR(WDT_vect)
{
	
}