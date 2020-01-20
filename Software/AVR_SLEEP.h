/*
	To enter any of the six sleep modes, the SE bit in SMCR must be written to logic one and a SLEEP
	instruction must be executed. The SM2, SM1, and SM0 bits in the SMCR register select which sleep
	mode will be activated by the SLEEP instruction.
	
	SLEEP MODES
		SLEEP_MODE_IDLE
		SLEEP_MODE_ADC
		SLEEP_MODE_PWR_SAVE
		SLEEP_MODE_EXT_STANDBY
		SLEEP_MODE_STANDBY
		SLEEP_MODE_PWR_DOWN
	
	If an enabled interrupt occurs while the MCU is in a sleep mode, the MCU wakes up. The MCU is then
	halted for four cycles in addition to the start-up time, executes the interrupt routine, and resumes
	execution from the instruction following SLEEP. The contents of the register file and SRAM are
	unaltered when the device wakes up from sleep. If a reset occurs during sleep mode, the MCU wakes up
	and executes from the reset vector. 
*/	


#ifndef AVR_SLEEP_H
#define AVR_SLEEP_H


#include <avr/interrupt.h>
#include <avr/sleep.h>


// Functions
void SLEEP_enable(uint8_t mode);


#endif // AVR_SLEEP_H_