#include <stdint.h>
#include <math.h>

#include <functional>

#include "config.h"
#include <sys/LPC11xx.h>
#include <sys/core_cm0.h>

#include "gpio.h"
#include "uart.h"

#include "cern_trash_lcd.h"
#include "pp-printf.h"
#include "pid_controller.h"
#include "ds18x20.h"
#include "rotary_encoder.h"
#include "spi_master.h"

LPCPin enc_a(2, 11, GPIOPin::INPUT);
LPCPin enc_b(0, 11, GPIOPin::INPUT);
LPCPin lcd_a0(2, 8, GPIOPin::OUTPUT);
LPCPin lcd_e1(2, 1, GPIOPin::OUTPUT);
LPCPin lcd_e2(2, 7, GPIOPin::OUTPUT);
LPCPin lcd_d0(0, 6, GPIOPin::OUTPUT); // pin 28
LPCPin lcd_d1(0, 3, GPIOPin::OUTPUT); // pin 27
LPCPin lcd_d2(0, 7, GPIOPin::OUTPUT); // pin 25
LPCPin lcd_d3(1, 9, GPIOPin::OUTPUT); // pin 26
LPCPin lcd_d4(3, 4, GPIOPin::OUTPUT);
LPCPin lcd_d5(2, 4, GPIOPin::OUTPUT);
LPCPin lcd_d6(2, 5, GPIOPin::OUTPUT);
LPCPin lcd_d7(3, 5, GPIOPin::OUTPUT);
LPCPin spi_sck(0, 8, GPIOPin::OUTPUT);
LPCPin spi_data(1, 10, GPIOPin::OUTPUT);
LPCPin spi_cs1(0, 9, GPIOPin::OUTPUT);
LPCPin spi_cs2(0, 10, GPIOPin::OUTPUT);
RotaryEncoder enc(&enc_a, &enc_b);
GPIOPin *lcd_data[] = {&lcd_d0, &lcd_d1, &lcd_d2, &lcd_d3, &lcd_d4, &lcd_d5, &lcd_d6, &lcd_d7};
LPCPin sw_enter(1, 1, GPIOPin::INPUT);
LPCPin sw_back(1, 0, GPIOPin::INPUT);
LPCPin pin_onewire1(2, 3, GPIOPin::OUTPUT);
LPCPin pin_onewire2(3, 1, GPIOPin::OUTPUT);
LPCPin pin_triac1(3, 0, GPIOPin::OUTPUT);
LPCPin pin_triac2(1, 2, GPIOPin::OUTPUT);

CERNTrashLCD *lcd;
Surface *screen;

PIDController *pidController;

OnewireMaster onewire1(&pin_onewire1, true);
OnewireMaster onewire2(&pin_onewire2, true);

DS18TempSensor temp_sensor1(&onewire1);
DS18TempSensor temp_sensor2(&onewire2);

#if 1
//    GPIOPin* cs_pins[2] = { &spi_cs1, &spi_cs2 };
//   SPIMaster spi( &spi_sck, &spi_data, 2, cs_pins );
//    RotaryEncoder enc ( &enc_a, &enc_b );

// LCD driver and offscreen surface

#endif

#define PRESCALER (5000 - 1) //5000 cycles @ 50 MHz = 100 us

// zero-crossing detect IRQ
extern "C" void PIOINT2_IRQHandler(void)
{
	LPC_TMR32B1->CTCR = 0x0;
	LPC_TMR32B1->PR = PRESCALER;			 //Increment LPC_TMR32B0->TC at every 47999+1 clock cycles
	LPC_TMR32B1->MR0 = 1;					 // 1x100us
	LPC_TMR32B1->MCR |= (1 << 0) | (1 << 2); // Interrupt & Stop on MR0 match
	LPC_TMR32B1->TCR |= (1 << 1);			 //Reset Timer0
	LPC_TMR32B1->TCR = 0x01;				 //Enable timer

	enc_a.ClearInterrupt();
}

extern struct Surface::Font font_helv17b;
extern struct Surface::Font font_helv17;

extern "C" void _exit(int code) { pp_printf("EXIT called\n"); };
extern "C" void _kill(int pid){};
extern "C" pid_t _getpid() { return 0; };

extern "C" void TIMER32_1_IRQHandler(void) //Use extern "C" so C++ can link it properly, for C it is not required
{
	enc.HandleInterrupt();
	LPC_TMR32B1->IR |= (1 << 0); //Clear MR0 Interrupt flag
}

volatile int cnt = 0;

float t_setpoint = 56.5;
bool t_setpoint_updated = false;

float t_measured;
bool t_measured_ready = false;
bool t_sensors_ok = false;

bool heater_on = false;
float drive = 0.0;

static bool updateSensors()
{
	DS18TempSensor *sensors[2] = {&temp_sensor1, &temp_sensor2};

	bool found = false;

	for (auto s : sensors)
	{
		s->update();
		if (s->isPresent())
			found = true;
	}

	if (!found)
	{
		t_sensors_ok = false;
		return false;
	}

	t_measured = 0.0;

	for (auto s : sensors)
	{
		if (s->isTemperatureValid())
		{
			t_measured_ready = true;
			t_measured = std::max(t_measured, s->getTemperature());
		}
	}

	t_sensors_ok = true;

	return true;
}

static int updateDisplay()
{
	char str[32];

	float t_cur1 = t_measured;

	//pp_printf("%d\n", (int)t_cur1);

	screen->box(0, 0, 122, 32, 0);

	screen->text(&font_helv17, 1, -3, "T1         T2");
	pp_sprintf(str, "%d.%d", (int)floor(t_cur1), (int)((t_cur1 - floor(t_cur1)) * 10.0));
	screen->text(&font_helv17b, 20, -3, str);
	//pp_sprintf(str, "%d.%d", (int)floor(t_cur2), (int)((t_cur2 - floor(t_cur2)) * 10.0));
	//screen->text(&font_helv17b, 80, -3, str);

	screen->text(&font_helv17, 1, 14, "Set         Drv");
	pp_sprintf(str, "%d.%d", (int)floor(t_setpoint), (int)((t_setpoint - floor(t_setpoint)) * 10.0));

	screen->text(&font_helv17b, 27, 14, str);

	if (heater_on)
		pp_sprintf(str, "%d%%  ", (int)(drive * 100.0));
	else
		pp_sprintf(str, "OFF");

	screen->text(&font_helv17b, 83, 14, str);

	lcd->update(screen);

	return 0;
}

#define MHZ_PRESCALE (FREQUENCY / 1000000)
#define TIME_INTERVALmS 1000

void setupPWM()
{
	LPC_TMR16B0->TCR = 0x02;				 /* reset timer */
	LPC_TMR16B0->PR = MHZ_PRESCALE;			 /* set prescaler to get 1 M counts/sec */
	LPC_TMR16B0->MR0 = 10 * TIME_INTERVALmS; // 10ms PWM period
	LPC_TMR16B0->IR = 0xff;					 /* reset all interrrupts */
	LPC_TMR16B0->MCR = 0x03;				 /* stop timer on match */
	LPC_TMR16B0->TCR = 0x01;				 /* start timer */

	NVIC_EnableIRQ(TIMER_16_0_IRQn); //Enable timer interrupt
}

volatile int pwm_cnt = 0, pwm_setpoint = 0;
volatile int pwm_period = 100;

void pwm_set_drive(float d)
{
	pwm_setpoint = (int)(d * (float)pwm_period);
	pp_printf("setp %d\n", pwm_setpoint);
}


static int handleInput()
{
	if (sw_enter.Edge(false))
		heater_on = !heater_on;

	return 0;
}

Timeout pwmTimeout( 1000 );

static void updatePWM()
{
	if(!heater_on)
	{
		pwm_set_drive(0);
		return;
	}

	if (pwmTimeout.expired() )
	{
		drive = pidController->update(t_measured, t_setpoint);
		
		pwm_set_drive( drive );
		printf("Drive!\n");
	}
}

static int initialize()
{
	UARTInit(115200);
	pp_printf("SteakMaker 2018 starting up\n");

	enc_a.EnableInterrupt(true, 0); // rising edge

	enc.SetHandler([&](int x) {
		if (x)
			t_setpoint = std::min((t_setpoint + 0.5), 80.0);
		else
			t_setpoint = std::max((t_setpoint - 0.5), 0.0);

		t_setpoint_updated = true;
	});

	NVIC_EnableIRQ(EINT0_IRQn);
	NVIC_EnableIRQ(EINT2_IRQn);
	NVIC_EnableIRQ(TIMER_32_1_IRQn); //Enable timer interrupt

	lcd = new CERNTrashLCD(&lcd_a0, &lcd_e1, &lcd_e2, lcd_data);

	uint8_t *lcd_buf = new uint8_t[122 * 32 / 4];
	screen = new Surface(122, 32, lcd_buf);

	pidController = new PIDController(0.1, 0.01, -0.4, 1.0);

	return 0;
}


extern "C" void TIMER16_0_IRQHandler()
{
	if (LPC_TMR16B0->IR & 0x1)
	{
		LPC_TMR16B0->IR = 1; /* clear interrupt flag */

		if (pwm_cnt == pwm_period)
			pwm_cnt = 0;
		else
			pwm_cnt++;

		if (pwm_cnt <= pwm_setpoint)
			pin_triac1.Output(true);
		else
			pin_triac1.Output(false);

		cnt++;
	}
}

int main(void)
{
	float t_set = 56.5;
	bool skipDelay = false;

	system_init(); // PLL, timer and SYSCON initialization

	initialize();
	setupPWM();

	for (;;)
	{
		updateSensors();
		handleInput();
		updatePWM();
		updateDisplay();
		pp_printf("C %d\n", cnt);
	}

#if 0
	CERNTrashLCD lcd(&lcd_a0, &lcd_e1, &lcd_e2, lcd_data);
	uint8_t lcd_buf[122 * 32 / 4];
	Surface surf(122, 32, lcd_buf);

	uint32_t last_update = 0;

	temp_sensor1.probe(0);
	temp_sensor2.probe(0);

	temp_sensor1.start();
	temp_sensor2.start();

	float t_cur1 = -1.0, t_cur2 = -1.0;
	float drive = 0.0;


	int iter = 0;

	int current_sensor = 0;
	int heater_on = 0;

#if 0
    for(;;)
    {
      int t1 = temp_sensor1.read();
      int t2 = temp_sensor2.read();
      temp_sensor1.start();
	  temp_sensor2.start();
  
      pp_printf("t %d %d\n", t1, t2);
      delayMicroseconds(1000000);

    }
#endif

	for (;;)
	{
		char str[16];

		if (timer_get_tics() - last_update >= 1000000 * 37)
		{
			pp_printf("Update!\n");
			if (current_sensor == 1)
			{
				t_cur2 = temp_sensor2.read();
				temp_sensor1.start();
				current_sensor = 0;
				drive = pid.update(std::max(t_cur1, t_cur2), t_set);
			}
			else
			{
				t_cur1 = temp_sensor1.read();
				temp_sensor2.start();
				current_sensor = 1;
				drive = pid.update(std::max(t_cur1, t_cur2), t_set);
			}

			temp_sensor1.start();
			temp_sensor2.start();
			last_update = timer_get_tics();
			iter++;
			//if(heater_on)
			//driveHeater(drive);
			//else
			//	driveHeater(0);
		}

		//		if(t_cur < 0.0)
		//			continue;
		screen->box(0, 0, 122, 32, 0);
		//		pp_sprintf(str,"%x %x %x", temp_sensor1.m_rom_id[0], temp_sensor1.m_rom_id[1], temp_sensor1.m_rom_id[2]);

		//		surf.text(&font_helv17, 1, -3, str);
		//		pp_sprintf(str,"%x %x %x", temp_sensor2.m_rom_id[0], temp_sensor2.m_rom_id[1], temp_sensor2.m_rom_id[2]);

		//pp_sprintf(str,"%x", sw_up.InputWide());
		//		pp_sprintf(str,"%x", sw_up.InputWide());

		surf.text(&font_helv17, 115, -3, current_sensor == 1 ? "o" : "");

		surf.text(&font_helv17, 1, -3, "T1         T2");
		pp_sprintf(str, "%d.%d", (int)floor(t_cur1), (int)((t_cur1 - floor(t_cur1)) * 10.0));
		surf.text(&font_helv17b, 20, -3, str);
		pp_sprintf(str, "%d.%d", (int)floor(t_cur2), (int)((t_cur2 - floor(t_cur2)) * 10.0));
		surf.text(&font_helv17b, 80, -3, str);

		surf.text(&font_helv17, 1, 14, "Set         Drv");
		pp_sprintf(str, "%d.%d", (int)floor(t_set), (int)((t_set - floor(t_set)) * 10.0));

		//pp_printf("Hello!\n");
		surf.text(&font_helv17b, 27, 14, str);

		if (heater_on)
			pp_sprintf(str, "%d%%  ", (int)(drive * 100.0));
		else
			pp_sprintf(str, "OFF");

		surf.text(&font_helv17b, 83, 14, str);

		lcd.update(&surf);

		if (sw_enter.Edge(false))
			heater_on = !heater_on;

		//delayMicroseconds(100000);
	}
#endif
	return 0;
}
