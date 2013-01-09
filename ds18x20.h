#ifndef __DS18x20_H
#define __DS18x20_H

#include "onewire.h"

class DS18TempSensor {

public:
	DS18TempSensor(OnewireMaster *_ow)
	{
		m_ow = _ow;
	}

	bool probe(int index);
	uint8_t *get_rom_id() { return m_rom_id; }
	void start();
	bool poll();
	int read();

private:
	uint8_t m_rom_id[8];
	OnewireMaster *m_ow;
};

#endif
