/* Drier for DS1820- and similar temperatur sensors */

#include <stdlib.h>
#include <string.h>

#include "ds18x20.h"

/* return values */
#define DS18X20_OK 0x00
#define DS18X20_ERROR 0x01
#define DS18X20_START_FAIL 0x02
#define DS18X20_ERROR_CRC 0x03

#define DS18X20_INVALID_DECICELSIUS 2000

#define DS18X20_POWER_PARASITE 0x00
#define DS18X20_POWER_EXTERN 0x01

#define DS18X20_CONVERSION_DONE 0x00
#define DS18X20_CONVERTING 0x01

/* DS18X20 specific values (see datasheet) */
#define DS18S20_FAMILY_CODE 0x10
#define DS18B20_FAMILY_CODE 0x28
#define DS1822_FAMILY_CODE 0x22

#define DS18X20_CONVERT_T 0x44
#define DS18X20_READ 0xBE
#define DS18X20_WRITE 0x4E
#define DS18X20_EE_WRITE 0x48
#define DS18X20_EE_RECALL 0xB8
#define DS18X20_READ_POWER_SUPPLY 0xB4

#define DS18B20_CONF_REG 4
#define DS18B20_9_BIT 0
#define DS18B20_10_BIT (1<<5)
#define DS18B20_11_BIT (1<<6)
#define DS18B20_12_BIT ((1<<6)|(1<<5))
#define DS18B20_RES_MASK ((1<<6)|(1<<5))

/* undefined bits in LSB if 18B20 != 12bit */
#define DS18B20_9_BIT_UNDF ((1<<0)|(1<<1)|(1<<2))
#define DS18B20_10_BIT_UNDF ((1<<0)|(1<<1))
#define DS18B20_11_BIT_UNDF ((1<<0))
#define DS18B20_12_BIT_UNDF 0

/* conversion times in milliseconds */
#define DS18B20_TCONV_12BIT 750
#define DS18B20_TCONV_11BIT DS18B20_TCONV_12_BIT/2
#define DS18B20_TCONV_10BIT DS18B20_TCONV_12_BIT/4
#define DS18B20_TCONV_9BIT DS18B20_TCONV_12_BIT/8
#define DS18S20_TCONV DS18B20_TCONV_12_BIT

/* constant to convert the fraction bits to cel * (10 ^ -4) */
#define DS18X20_FRACCONV 625

/* scratchpad size in bytes */
#define DS18X20_SP_SIZE 9

/* DS18X20 EEPROM-Support */
#define DS18X20_WRITE_SCRATCHPAD 0x4E
#define DS18X20_COPY_SCRATCHPAD 0x48
#define DS18X20_RECALL_E2 0xB8
#define DS18X20_COPYSP_DELAY 10 /* ms */
#define DS18X20_TH_REG 2
#define DS18X20_TL_REG 3



bool DS18TempSensor::probe(int index) {

  uint8_t go, id [8];
  bool ret;
  uint8_t diff = OW_SEARCH_FIRST;

  ret = true;
  go = 1;
  int loop = 0;
  do {
  	diff = m_ow->rom_search(diff, id);

    if(diff == OW_PRESENCE_ERR || diff == OW_DATA_ERR) {
      go = 0;
      ret = false;
    }
    else if(id[0] == DS18B20_FAMILY_CODE || id[0] == DS18S20_FAMILY_CODE || id[0] == DS1822_FAMILY_CODE)
    {
        if ( loop == index )
            go = 0;
        loop++;
    }
  } while(go);

  memcpy(m_rom_id, id, 8);

//  write_scratchpad(0,0,0x7f);

  return ret;
}


void DS18TempSensor::start()
{
  m_ow->reset();
  m_ow->command(DS18X20_CONVERT_T, m_rom_id);
}

bool DS18TempSensor::poll()
{
   return m_ow->bit_io(1);
}

bool DS18TempSensor::readTempFromSensor( float *temp )
{
	if (! read_scratchpad() )
    return false;
   

	int measure = (unsigned int)sp[0] | ((unsigned int)sp[1] << 8);

    if(measure & 0x8000)
    {
  	 	measure ^= 0xffff; /* convert to positive => (twos complement)++ */
  	  	measure++;
  	  	*temp = -(float)measure / 16.0;
  	} else {
  		*temp =  (float)measure / 16.0;
  	}

    return true;
}

void DS18TempSensor::write_scratchpad(uint8_t th, uint8_t tl, uint8_t conf)
{
	uint8_t ret;

 	m_ow->reset();
    m_ow->command(DS18X20_WRITE_SCRATCHPAD, m_rom_id);
    m_ow->byte_wr(th);
    m_ow->byte_wr(tl);
    if(m_rom_id[0] == DS18B20_FAMILY_CODE || m_rom_id[0] == DS1822_FAMILY_CODE)
 	   m_ow->byte_wr(conf);
}

bool DS18TempSensor::read_scratchpad()
{
	 int i;

  	 m_ow->reset();
  	 m_ow->command( DS18X20_READ, m_rom_id );
  	 for(i = 0; i < 8; i++) sp[i] = m_ow->byte_rd();

  	 for(i = 0; i < 8; i++) 
      if( sp[i]  != 0xff )
        return true;
    
    return false;
}
