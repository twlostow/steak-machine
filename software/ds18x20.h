#ifndef __DS18x20_H
#define __DS18x20_H

#include "pp-printf.h"
#include "onewire.h"
#include "timeout.h"


class DS18TempSensor {

public:
	enum SensorState {
		ST_NOT_FOUND = 0,
		ST_BUSY,
		ST_TEMP_READY
	};
	
	DS18TempSensor(OnewireMaster *_ow)
	{
		m_ow = _ow;
		m_state = ST_NOT_FOUND;
		m_updateTimer = Timeout(1500); // ms
		m_tempValid = false;
	}

	int setUpdateTimer( int milliseconds )
	{
		m_updateTimer = Timeout(milliseconds);
	}

	bool probe(int index);
	uint8_t *get_rom_id() { return m_rom_id; }
	void start();
	bool poll();
	bool isPresent() const
	{
		return m_state != ST_NOT_FOUND;
	}

	bool isTemperatureValid() const
	{
		return m_tempValid;
	}

	float getTemperature() const 
	{
		return m_temp;
	}

	bool readTempFromSensor( float *temp );

	void update()
	{
		switch(m_state)
		{
			case ST_NOT_FOUND:
			{
				m_tempValid = false;
				if(probe(0))
				{
					m_state = ST_BUSY;
					m_updateTimer.restart();
					start();
					pp_printf("PRobe OK\n");
				}
				break;
			}

			case ST_BUSY:
			{
				if( m_updateTimer.expired() )
				{
					float t;
					if( ! readTempFromSensor( &t ) )
					{
						m_tempValid = false;
						m_state = ST_NOT_FOUND;
					}
					
					if (t != 85.0)
					{
						m_temp = t;
					}

					m_tempValid = true;
					start();

				}
				break;
			}

			default: 
				break;
		}
	}

private:
	void write_scratchpad(uint8_t th, uint8_t tl, uint8_t conf);
	bool read_scratchpad();

	uint8_t m_rom_id[8], sp[8];
	uint32_t m_lastUpdate;
	Timeout m_updateTimer;
	OnewireMaster *m_ow;
	SensorState m_state;
	bool m_tempValid;
	float m_temp;
	
};

#endif
