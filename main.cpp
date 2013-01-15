#include <stdint.h>
#include <math.h>

#include "config.h"
#include <sys/LPC11xx.h>

#include "gpio.h"

#include "cern_trash_lcd.h"
#include "pp-printf.h"

#include "ds18x20.h"

extern struct Surface::Font font_helv17b;
extern struct Surface::Font font_helv11;
extern struct Surface::Font font_xm4x6;


int main(void)
{
	system_init(); // PLL, timer and SYSCON initialization 

// LED pin 

	LPCPin led (3, 1, GPIOPin::OUTPUT);

// LCD bus pins 
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

// 1-wire master pin (to temperature sensor) 
	LPCPin pin_onewire(2, 3, GPIOPin::OUTPUT);
	pin_onewire.Output(true);

// Buttons
	LPCPin sw_up(2, 5, GPIOPin::INPUT);
	LPCPin sw_down(2, 5, GPIOPin::INPUT);
	LPCPin sw_enter(2, 5, GPIOPin::INPUT);
	LPCPin sw_esc(2, 5, GPIOPin::INPUT);

// LCD driver and offscreen surface
	GPIOPin *lcd_data [] = {&lcd_d0, &lcd_d1, &lcd_d2, &lcd_d3, &lcd_d4, &lcd_d5, &lcd_d6, &lcd_d7};
	CERNTrashLCD lcd(&lcd_a0, &lcd_e1, &lcd_e2, lcd_data);
	uint8_t lcd_buf[122 * 32 / 8];
	Surface surf(122, 32, lcd_buf);

// DS18x20 thermometer connected via software OneWire master
	OnewireMaster onewire(&pin_onewire, true);
	DS18TempSensor temp_sensor(&onewire);

	temp_sensor.probe(0);

	surf.box(0, 0, 122, 32, 0);
	surf.text(&font_helv17b, 1, 1, "Temperature");
	surf.text(&font_xm4x6, 101, 1, "Test");
	

	int c= 0;
	for(;;)
	{

		temp_sensor.start();
		delayMicroseconds(1000000); // there is no polling when the sensor is powered in parasite mode. Just wait for a second.
		float t = temp_sensor.read();
		char buf[80];
		pp_sprintf(buf, "%d.%02d", (int)t, (int)((t - floorf(t)) * 100.0));
		surf.box(0,16,120,32,0);
		surf.text(&font_helv17b, 1, 16, buf);
		lcd.update(&surf);
	}

	
}

