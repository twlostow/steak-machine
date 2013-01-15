/* A trivial driver for an LCD display (132 x 32 pixels) found in CERN trash bin. SED1520-based. */

#ifndef __CERN_TRASH_LCD_H
#define __CERN_TRASH_LCD_H

#include <stdio.h>
#include <stdint.h>

#include "config.h"
#include "delay.h"
#include "gpio.h"
#include "surface.h"

class CERNTrashLCD {
	public:
		CERNTrashLCD(
			GPIOPin *_a0,
			GPIOPin *_e1,
			GPIOPin *_e2,
			GPIOPin *_d[]);
			
		void clear();
		void update(Surface *s);
		
	private:

		static const int c_width = 122;
		
		void control(uint8_t data, uint8_t ctrl);
		void data(uint8_t data);
		void init();
		void go_to(int cx, int cy);
		
		int m_column;
		GPIOPin *a0, *e1, *e2, *dpins[8];
};

#endif
