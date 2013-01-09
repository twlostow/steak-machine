#ifndef __ONEWIRE_H
#define __ONEWIRE_H

#include <stdint.h>

#include "gpio.h"
#include "delay.h"

#define OW_CONF_DELAYOFFSET 4

#define OW_SEARCH_FIRST 0xFF /* start new search */
#define OW_PRESENCE_ERR 0xFF
#define OW_DATA_ERR 0xFE
#define OW_LAST_DEVICE 0x00 /* last device found */


class OnewireMaster {

public:
	OnewireMaster(GPIOPin *_pin, bool _parasite_enable = false)
	{
		m_pin = _pin;
		m_parasite_enable = _parasite_enable;
		init();
	}

	void init();

	uint8_t reset();
	uint8_t bit_io(uint8_t b);
	uint8_t byte_wr(uint8_t b);
	uint8_t byte_rd();
	uint8_t rom_search(uint8_t diff, uint8_t *id);
	void command(uint8_t command, uint8_t *id);


private:
	uint8_t bit_io_intern(uint8_t b, uint8_t parasite);
	void dir_out() { m_pin->SetMode(GPIOPin::OUTPUT); }
	void dir_in() {  m_pin->SetMode(GPIOPin::INPUT); }
	void out_high() { m_pin->Output(true); }
	void out_low() {  m_pin->Output(false); }
	bool get_in() {  return m_pin->Input(); }
	
	void parasite_enable()
	{
 		out_high();
  		dir_out();
	}

	void ow_parasite_disable(void) {
  		dir_in();
	}

	GPIOPin *m_pin;
	bool m_parasite_enable;
};

#endif
