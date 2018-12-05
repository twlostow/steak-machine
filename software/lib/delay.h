#ifndef __delay_h
#define __delay_h

static inline void delayMicroseconds(uint32_t howmuch)
{
	uint32_t n, stics = timer_get_tics();

	n = howmuch * 37; 
	
	while(timer_get_tics() < stics + n);
}


#endif
