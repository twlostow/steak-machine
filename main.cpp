#include <stdint.h>

#include "config.h"
#include "LPC11xx.h"

#include "gpio.h"

#include "cern_trash_lcd.h"
#include "pp-printf.h"

#include "ds18x20.h"
extern struct Surface::Font font_helv17b;


int main(void)
{
	volatile uint32_t count, count_max = 1000000;	// with core frequency ~50MHz this gives ~1.5Hz blinking frequency

	system_init();							// initialize other necessary elements

	LPCPin led (3, 1, GPIOPin::OUTPUT);
	LPCPin lcd_a0 (3, 3, GPIOPin::OUTPUT);
	LPCPin lcd_e1 (2, 6, GPIOPin::OUTPUT);
	LPCPin lcd_e2 (2, 0, GPIOPin::OUTPUT);

	LPCPin lcd_d0 (0, 9, GPIOPin::OUTPUT); // pin 28
	LPCPin lcd_d1 (0, 8, GPIOPin::OUTPUT); // pin 27
	LPCPin lcd_d2 (2, 10, GPIOPin::OUTPUT); // pin 25
	LPCPin lcd_d3 (2, 2, GPIOPin::OUTPUT); // pin 26

	LPCPin lcd_d4 (2, 7, GPIOPin::OUTPUT);
	LPCPin lcd_d5 (2, 8, GPIOPin::OUTPUT);
	LPCPin lcd_d6 (2, 1, GPIOPin::OUTPUT);
	LPCPin lcd_d7 (0, 3, GPIOPin::OUTPUT);

	LPCPin pin_onewire(2, 3, GPIOPin::OUTPUT);
	pin_onewire.Output(true);

	LPCPin sw_up(2, 5, GPIOPin::INPUT);

	GPIOPin *lcd_data [] = {&lcd_d0, &lcd_d1, &lcd_d2, &lcd_d3, &lcd_d4, &lcd_d5, &lcd_d6, &lcd_d7};

	CERNTrashLCD lcd(&lcd_a0, &lcd_e1, &lcd_e2, lcd_data);
	
	uint8_t lcd_buf[122 * 32 / 8];
	
	Surface surf(122, 32, lcd_buf);

	surf.box(0, 0, 122, 32, 0);
	surf.line(0, 0, 121, 0, 1);
	surf.line(0, 31, 121, 31, 1);
	surf.line(0, 0, 0, 31, 1);
	surf.line(121, 0, 121, 31, 1);
	
	surf.text(&font_helv17b, 1, 1, "Hello, World!");

	
	led.SetMode(GPIOPin::OUTPUT);

	OnewireMaster onewire(&pin_onewire, true);
	DS18TempSensor temp_sensor(&onewire);

	uint8_t id[8], diff = OW_SEARCH_FIRST;
	diff = onewire.rom_search(diff, id);
	
	char buf[80];
	
	//for(;;)
	{
		pp_sprintf(buf, "%x %x %x %x %x %x %x %x %x", diff, id[0], id[1], id[2], id[3], id[4], id[5], id[6], id[7] );
		surf.box(0,16,120,32,0);
		surf.text(&font_helv17b, 1, 16, buf);
		lcd.update(&surf);
	}


	for(;;)
	{
		
	}

	while(1)
	{
		led.Output(true);
		delayMicroseconds(480);
		led.Output(false);
		delayMicroseconds(100);
	}

	
	
}

