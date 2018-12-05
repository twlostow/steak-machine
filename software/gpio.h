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
		virtual bool IsInputGlitchFree() = 0;
		
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

		void EnableInterrupt(bool edge, int pos_neg, bool both = false)
		{
			if(edge)
				m_regs->IS &= ~(1<<m_pin);
			else
				m_regs->IS |= (1<<m_pin);

			if(both)
				m_regs->IBE &= ~(1<<m_pin);
			else
				m_regs->IBE |= (1<<m_pin);

			if(pos_neg)
				m_regs->IEV |= (1<<m_pin);
			else
				m_regs->IEV &= ~(1<<m_pin);

			m_regs->IE |= (1<<m_pin);
		}

		void ClearInterrupt()
		{
			m_regs->IC = (1<<m_pin);
		}

		void Output(bool value)
		{
			*m_gma = (value ? 0xffffffff : 0);
			m_cur_state = value;
		};

		bool Input()
		{
			return *m_gma != 0;
		};

		bool IsInputGlitchFree()
		{
			m_deglitchState <<= 1;
			if( Input() )
				m_deglitchState |= 1;

			return m_deglitchState == 0xffffffff || !m_deglitchState;
		}


		uint32_t InputWide()
		{
			return m_regs->DATA;                 /*!< Offset: 0x3FFC Port data Register (R/W) */
		}

		bool Edge(bool rising)
		{
			bool cur = Input();
			bool prevState = m_in_state;

			m_in_state = cur;

			if(rising && cur && !prevState)
				return true;
			else if (!rising && !cur && prevState)
				return true;

			return false;
		}

	private:
		int m_pin;
		bool m_cur_state;
		bool m_in_state;
		volatile uint32_t *m_gma;
		volatile LPC_GPIO_TypeDef *m_regs;
		uint32_t m_deglitchState;
};

#endif
