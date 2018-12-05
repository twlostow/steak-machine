#ifndef __ROTARY_ENCODER_H
#define __ROTARY_ENCODER_H

#include "gpio.h"

class RotaryEncoder
{
    GPIOPin *m_pinA, *m_pinB;
    std::function<void (int)> m_handler;
    bool m_prevPinA, m_prevPinB;
    bool m_prevValid;

public:
    RotaryEncoder( GPIOPin *a, GPIOPin *b )
    {
        m_pinA = a;
        m_pinB = b;
        m_prevPinA = false;
        m_prevPinB = false;
        m_prevValid = false;

    }

    void HandleInterrupt()
    {
        volatile bool a = m_pinA->Input();
        volatile bool b = m_pinB->Input();

        if( m_prevValid && m_handler)
        {
            pp_printf("a %d b %d ap %d bp %d\n\r", !!a, !!b, !!m_prevPinA, !!m_prevPinB );

            if ( a && !m_prevPinA )
            {

                if( !b )
				    m_handler(1);
				else
					m_handler(0);
            }
            else if ( !a && m_prevPinA )
            {

                if( b )
				    m_handler(1);
				else
					m_handler(0);
            }



        }

        m_prevValid = true;
        m_prevPinA = a;
        m_prevPinB = b;
    }

    void SetHandler( std::function<void (int)> handler )
    {
        m_handler = handler;
    }
};

#endif
