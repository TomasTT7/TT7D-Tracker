/*
	Programmable watchdog timer with separate on-chip 128kHz oscillator.
	Selectable time-out period from 16ms to 8s.
	WDT when enabled can be in interrupt mode, system reset mode or interrupt followed by system reset mode.
	
	Possible hardware fuse watchdog always on (WDTON) for fail-safe mode.
		The watchdog always on (WDTON) fuse, if programmed, will force the watchdog timer to system reset mode.
*/


#ifndef AVR_WDT_H
#define AVR_WDT_H


#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>


// Functions
void WDT_enable_system_reset(void);
void WDT_enable_interrupt(void);
void WDT_enable_system_reset_interrupt(void);
void WDT_disable(void);
void WDT_timer_reset(void);
void WDT_clear_WDRF(void);
void WDT_force_system_reset(void);


#endif // AVR_WDT_H_