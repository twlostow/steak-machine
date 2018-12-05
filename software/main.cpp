#include <stdint.h>
#include <math.h>

#include "config.h"
#include <sys/LPC11xx.h>
#include <sys/core_cm0.h>

#include "gpio.h"

#include "cern_trash_lcd.h"
#include "pp-printf.h"

#include "ds18x20.h"

static uint32_t freq_tag_prev = 0, freq_cur = 0;

static volatile int n = 0, power = 0;

extern "C" void PIOINT0_IRQHandler(void)
{
	n++;
	volatile uint32_t freq_tag;
	
	freq_tag = LPC_TMR32B0->TC;
	freq_cur = freq_tag - freq_tag_prev;
	freq_tag_prev = freq_tag;
	
	int width = ((freq_cur * (1024-power)) >> 10) ;
	
  LPC_TMR32B1->MR1 = width; 
  LPC_TMR32B1->MR3 = freq_cur;
	LPC_TMR32B1->MCR = (1<<10);
	LPC_TMR32B1->TC = 0;
	LPC_TMR32B1->PWMC = (1<<1);
	
	LPC_GPIO0->IC = (1<<6);

	asm volatile("nop");
	asm volatile("nop");
	asm volatile("nop");
	asm volatile("nop");	
}

extern struct Surface::Font font_helv17b;
extern struct Surface::Font font_helv17;


extern "C" void test_uart();

void driveHeater(float value)
{
	power = (int) 1024 * ((1 - cos(value * M_PI)) / 2.0);
}


uint32_t last_readout = 0;

void main_loop(LPCPin *up, LPCPin *down, DS18TempSensor *sensor)
{

}

class PIDController {
	public:
		PIDController(float p, float i, float d, float dt) : m_p(p), m_i(i), m_d(d), m_dt(dt)
		{
			first = true;
			last = 0.0;
			integral = 0.0;
		}

		float update(float sensor, float goal)
		{
			float error =goal - sensor;
			float derivative;

      integral = (0.9 * integral) + error;
      if(first)  
         derivative = 0.0;
      else
         derivative = (sensor - last)/m_dt;
                
       last = sensor;
       first = false;

       float drive = m_p * error + (m_i * integral) + (m_d * derivative);
       
       if(drive > 1.0)
       	drive = 1.0;
       else if (drive < 0.0)
       	drive = 0.0;
       	
       	return drive;
      }

	private:
		float last ,m_p, m_i, m_d, integral, m_dt;
		bool first;
};


int main(void)
{
	system_init(); // PLL, timer and SYSCON initialization 


// LED pin 
	LPCPin zero_detect(0,6,GPIOPin::INPUT);
	LPCPin triac(1,2,GPIOPin::OUTPUT);

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

// Buttons
	LPCPin sw_up(2, 5, GPIOPin::INPUT);
	LPCPin sw_down(1, 9, GPIOPin::INPUT);
	LPCPin sw_enter(2, 5, GPIOPin::INPUT);
	LPCPin sw_esc(2, 5, GPIOPin::INPUT);

	

	zero_detect.EnableInterrupt(true, 1); // rising edge

	LPC_GPIO0->IC = (1<<6);
	LPC_IOCON->PIO0_6 = (1<<5); // enable hysteresis
	LPC_IOCON->R_PIO1_2 = (3<<0); // PIO1_2 = CT32b1 MAT1
	
	NVIC_EnableIRQ(EINT0_IRQn);


  LPC_TMR32B1->TCR = 0;
  LPC_TMR32B1->PR = 0;
  LPC_TMR32B1->MCR = 0;
  LPC_TMR32B1->CCR = 0;
  LPC_TMR32B1->TC = 0;
  LPC_TMR32B1->TCR = 2;
  LPC_TMR32B1->TCR = 1;


	pin_onewire.Output(true);


// LCD driver and offscreen surface
	GPIOPin *lcd_data [] = {&lcd_d0, &lcd_d1, &lcd_d2, &lcd_d3, &lcd_d4, &lcd_d5, &lcd_d6, &lcd_d7};
	CERNTrashLCD lcd(&lcd_a0, &lcd_e1, &lcd_e2, lcd_data);
	uint8_t lcd_buf[122 * 32 / 4];
	Surface surf(122, 32, lcd_buf);

// DS18x20 thermometer connected via software OneWire master
	OnewireMaster onewire(&pin_onewire, true);
	DS18TempSensor temp_sensor(&onewire);

	temp_sensor.probe(0);

	driveHeater(0);

	uint32_t last_update = 0;
	temp_sensor.start();
	
	float t_set = 57.0;
	float t_cur = -1.0;
	float drive = 0.0;

	delayMicroseconds(1000000);

	PIDController pid(0.1, 0.02, -0.4, 1.0);
	
	int iter = 0;
	
	for(;;)
	{
		char str[16];

		if(timer_get_tics() - last_update >= 1000000 * 37)
		{
			t_cur = temp_sensor.read();
			drive = pid.update(t_cur, t_set);
			temp_sensor.start();
			last_update = timer_get_tics();
			iter++;
			driveHeater(drive);
		}

//		if(t_cur < 0.0)
//			continue;
		surf.box(0, 0, 122, 32, 0);
		surf.text(&font_helv17, 1, -3, "Temp:    ");
		surf.text(&font_helv17, 1, 14, "Drive:   ");
		pp_sprintf(str,"%d.%d / %d.%d  ", (int)floor(t_cur), (int) ((t_cur - floor(t_cur)) * 10.0), (int)floor(t_set), (int) ((t_set - floor(t_set)) * 10.0));
		surf.text(&font_helv17b, 45, -3, str);
		pp_sprintf(str,"%d%%  ", (int)(drive * 100.0));
		surf.text(&font_helv17b, 45, 14, str);

		lcd.update(&surf);

		if(sw_up.Edge(false))
			t_set+=0.5;
		else if (sw_down.Edge(false))
			t_set-=0.5;
			

		delayMicroseconds(10000);
	}

	
}

