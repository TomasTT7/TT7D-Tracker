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


#include "AVR_SLEEP.h"


/*
	SLEEP MODES						SMCR - Sleep Mode Control Register
		SLEEP_MODE_IDLE					(0 << 1)
		SLEEP_MODE_ADC					(1 << 1)
		SLEEP_MODE_PWR_DOWN				(2 << 1)
		SLEEP_MODE_PWR_SAVE				(3 << 1)
		SLEEP_MODE_STANDBY				(6 << 1)
		SLEEP_MODE_EXT_STANDBY			(7 << 1)
*/
void SLEEP_enable(uint8_t mode)
{
	set_sleep_mode(mode << 1);									// select the sleep mode
	sleep_enable();												// set SE (sleep enable) bit
	sei();
	sleep_cpu ();												// put device into sleep mode, SE bit must be set beforehand
	/* ...time passes ... */
	sleep_disable();											// clear SE (sleep enable) bit
}