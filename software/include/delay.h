#ifndef __delay_h
#define __delay_h

extern "C" uint32_t timer_get_tics_ms();

static inline void delayMicroseconds(uint32_t howmuch)
{
	uint32_t n, stics = timer_get_tics();

	n = howmuch * (FREQUENCY / 1000) / 1000; 
	
	while(timer_get_tics() < stics + n);
}


#endif
