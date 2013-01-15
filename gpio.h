#ifndef __GPIO_H
#define __GPIO_H

#include <stdint.h>

#include "config.h"

#include <sys/LPC11xx.h>

class GPIOPin {
	public:
		GPIOPin() {};
		virtual	~GPIOPin() {};
	
		enum GPIOPinMode {
			INPUT = 0,
			OUTPUT = 1,
			PULLUP = 4,
			AUX_1 = 8,
			AUX_2 = 16,
			DIRECTION_MASK = 1 
		};
	
		virtual void SetMode(int mode) = 0;
		virtual void Output(bool value) = 0;
		virtual bool Input() = 0;
};

class LPCPin : public GPIOPin {
	public:
		LPCPin(uint8_t controller_id, int pin_id, int mode = GPIOPin::INPUT)
		{
			switch(controller_id)
			{
				case 0:
					m_regs = LPC_GPIO0;
					break;
				case 1:
					m_regs = LPC_GPIO1;
					break;
				case 2:
					m_regs = LPC_GPIO2;
					break;
				case 3:
					m_regs = LPC_GPIO3;
					break;
			}
			m_pin = pin_id;
			m_gma = (volatile uint32_t *) m_regs->MASKED_ACCESS + (1 << pin_id);
			m_cur_state = false;
			SetMode(mode);
		};
		
		~LPCPin() {};
		
		void SetMode(int mode)
		{
			if ((mode & DIRECTION_MASK) == INPUT)
				m_regs->DIR &= ~(1 << m_pin);
			else {
				m_regs->DIR |= (1 << m_pin);
				Output(m_cur_state);
			}
		};
		
		void Output(bool value)
		{
			*m_gma = (value ? 0xffffffff : 0);
			m_cur_state = value;
		};
		
		bool Input()
		{
			return *m_gma != 0;
		};
		
	private:
		int m_pin;
		bool m_cur_state;
		volatile uint32_t *m_gma;
		volatile LPC_GPIO_TypeDef *m_regs;
};

#endif
