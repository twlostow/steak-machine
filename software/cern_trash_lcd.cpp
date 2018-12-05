#include <stdio.h>
#include <stdint.h>

#include "cern_trash_lcd.h"

CERNTrashLCD::CERNTrashLCD(
			GPIOPin *_a0,
			GPIOPin *_e1,
			GPIOPin *_e2,
			GPIOPin *_d[])
{
	a0 = _a0;
	e1 = _e1;
	e2 = _e2;
	for(int i=0; i<8; i++)
		dpins[i] = _d[i];

	a0->Output(false);
	e1->Output(false);
	e2->Output(false);

	m_column = 0;
	
	init();
}			

void CERNTrashLCD::control(uint8_t data, uint8_t ctrl)
{
	a0->Output(false);

	for(int i = 0; i< 8;i++) 
		if (data & (1<<i))
			dpins[i] -> Output(true);
		else
			dpins[i] -> Output(false);

	e1->Output(ctrl == 0);
	e2->Output(ctrl == 1);

	delayMicroseconds(10);
	e1->Output(false);
	e2->Output(false);
	delayMicroseconds(10);
}

void CERNTrashLCD::data(uint8_t data)
{
	a0->Output(true);

	for(int i = 0; i< 8;i++) 
		if (data & (1<<i))
			dpins[i] -> Output(true);
		else
			dpins[i] -> Output(false);

	delayMicroseconds(10);
   
  if (m_column < c_width / 2)
   	e2->Output(true);
  else
   	e1->Output(true);

	delayMicroseconds(10);
	e1->Output(false);
	e2->Output(false);
	m_column++;
	if(m_column >= c_width)
		m_column = 0;
	delayMicroseconds(10);
} 			

void CERNTrashLCD::init()
{

	control(0xae, 0);
	control(0xae, 1);
	delayMicroseconds(100000);
	control(0xe2, 0);
	control(0xe2, 1);
	delayMicroseconds(100000);
	control(0xa0, 0);
	control(0xa0, 1);
	control(0xaf, 0);
	control(0xaf, 1);
	control(0xc0, 0);
	control(0xc0, 1);
	clear();  
}


void CERNTrashLCD::clear (void)
{
	for(int j = 0; j < 4; j++)
  {
		go_to(0, j);
	  for(int i = 0; i < c_width; i++)
			data(0x0);
	}
	go_to(0, 0);
}

void CERNTrashLCD::update (Surface *s)
{
	uint8_t *buf = s->get_buffer();
    for(int j = 0; j < 4; j++)
    {
		go_to(0, j);
	    for(int i = 0; i < c_width; i++)
	    {
	 		data(buf[c_width - 1 - i]);
	 	}
	 	buf += c_width;
	}	
	go_to(0, 0);
}


void CERNTrashLCD::go_to(int cx, int cy)
{
	m_column = cx;

	if(cx < c_width / 2)
  {
		control(0x00 | cx, 0);
		control(0xb8 | cy, 0);
		control(0x00 | 0,  1);
		control(0xb8 | cy, 1);
  } else {
  	control(0x00 | (cx - c_width / 2), 1);
  	control(0xb8 | cy, 1);
	}
}


