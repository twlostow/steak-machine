#ifndef __SPI_MASTER_H
#define __SPI_MASTER_H

#include "gpio.h"

class SPIMaster {
private:
    GPIOPin *m_sck, *m_data, *m_cs[4];
    int m_cs_count;
public:
    SPIMaster(  GPIOPin* sck_, GPIOPin* data_, int cs_count, GPIOPin *cs_[] )
    {
            m_sck = sck_;
            m_data = data_;
            m_cs_count = cs_count;
            for(int i = 0; i < cs_count; i++)
                m_cs[i] = cs_[i];
            init();
    }

    void init()
    {
        m_sck->Output(false);
        m_data->Output(false);
        for(int i = 0; i < m_cs_count; i++)
            m_cs[i]->Output(true);
    }

    void delay()
    {
        delayMicroseconds(1);
    }

    uint32_t transfer( int cs, uint32_t tx, int bit_count )
    {
        uint32_t rx =  0;
        m_cs[cs]->Output( false );
        delay();
        for( int i = 0; i < bit_count; i++ )
        {
            m_data->Output( tx & (1<<i) ? true : false );
            delay();
            m_sck->Output(true);
            delay();
            m_sck->Output(false);
            delay();
            m_data->SetMode (GPIOPin::INPUT);
            delay();
            rx<<=1;
            if( m_data->Input() )
                rx |= 1;
            m_data->SetMode (GPIOPin::OUTPUT);
            delay();

        }

        delay();
        m_cs[cs]->Output( true );
        return rx;
    }

};

#endif
