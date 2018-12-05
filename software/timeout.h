#ifndef __TIMEOUT_H
#define __TIMEOUT_H

class Timeout
{
    public:
        Timeout( int valueMs = 0)
        {
            m_valueMs = valueMs;
            if( m_valueMs )
                restart();
        }

        void restart()
        {
            m_startTics = timer_get_tics_ms();
        }

        bool expired()
        {
            uint32_t tics = timer_get_tics_ms();

            if ( (tics - m_startTics) > m_valueMs )
            {
                restart();
                return true;
            }

            return false;
        }

    private:
        int m_valueMs;
        uint32_t m_startTics;

};

#endif