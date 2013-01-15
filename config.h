/** \file config.h
 * \brief Basic configuration of the project
 * \author Freddie Chopin, http://www.freddiechopin.info/
 * \date 2012-01-08
 */

/******************************************************************************
* project: lpc1114_blink_led
* chip: LPC1114
* compiler: arm-none-eabi-gcc (Sourcery CodeBench Lite 2011.09-69) 4.6.1
******************************************************************************/

#ifndef CONFIG_H_
#define CONFIG_H_

/*
+=============================================================================+
| global definitions
+=============================================================================+
*/

#define CRYSTAL								18432000	///< quartz crystal resonator which is connected to the chip
#define FREQUENCY							50000000	///< desired target frequency of the core

#ifdef __cplusplus 
extern "C" {
#endif

void system_init();
uint32_t timer_get_tics();

#ifdef __cplusplus 
};
#endif

#endif /* CONFIG_H_ */
