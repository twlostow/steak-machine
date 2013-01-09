#include "onewire.h"

/*******************************************
* Recovery time (T_Rec) minimum 1usec - increase for long lines
* 5 usecs is a value give in some Maxim AppNotes
* 30u secs seem to be reliable for longer lines
*******************************************/
#ifndef OW_RECOVERY_TIME
#define OW_RECOVERY_TIME 20 /* usec */
#endif /* OW_RECOVERY_TIME */

#define OW_MATCH_ROM 0x55
#define OW_SKIP_ROM 0xCC
#define OW_SEARCH_ROM 0xF0

#define OW_ROMCODE_SIZE 8

void OnewireMaster::init()
{
	m_pin->SetMode(GPIOPin::OUTPUT);
	m_pin->Output(true);
}


uint8_t OnewireMaster::reset(void) {
  uint8_t err;

  out_low();
  dir_out(); /* pull OW-Pin low for 480us */
  delayMicroseconds(480);

  dir_in(); /* input */
  out_high();

  delayMicroseconds(64); /* was 66 */
  err = get_in(); /* no presence detect */
    
  /* after a delay the clients should release the line and input-pin gets back to high by pull-up-resistor */
  delayMicroseconds(480 - 64); /* was 480-66 */
  if(get_in() == 0) err = 1; /* short circuit, expected low but got high */

  return err;
}

/*******************************************
* Timing issue when using runtime-bus-selection (!OW_ONE_BUS):
* The master should sample at the end of the 15-slot after initiating
* the read-time-slot. The variable bus-settings need more
* cycles than the constant ones so the delays had to be shortened
* to achive a 15uS overall delay
* Setting/clearing a bit in I/O Register needs 1 cyle in OW_ONE_BUS
* but around 14 cyles in configureable bus (us-Delay is 4 cyles per uS)
*******************************************/
uint8_t OnewireMaster::bit_io_intern(uint8_t b, uint8_t parasite) {
    out_low();
    dir_out(); // drive bus low
    delayMicroseconds(2); // T_INT > 1usec accoding to timing-diagramm
    if(b) {
      dir_in(); // to write "1" release bus, resistor pulls high
      out_high();
    }

    /*******************************************
* "Output data from the DS18B20 is valid for 15usec after the falling
* edge that initiated the read time slot. Therefore, the master must
* release the bus and then sample the bus state within 15ussec from
* the start of the slot."
*******************************************/
    delayMicroseconds(15 - 2 - OW_CONF_DELAYOFFSET);

    if(get_in() == 0) b = 0; /* sample at end of read-timeslot */

    delayMicroseconds(60 - 15 - 2 + OW_CONF_DELAYOFFSET);
    out_high();
    dir_in();

    if(parasite) parasite_enable();
  
  delayMicroseconds(OW_RECOVERY_TIME); /* may be increased for longer wires */

  return b;
}

uint8_t OnewireMaster::bit_io(uint8_t b) {
  return bit_io_intern(b & 1, 0);
}

uint8_t OnewireMaster::byte_wr(uint8_t b) {
  uint8_t i = 8, j;

  if(m_parasite_enable)
  {
  do {
    if (i != 1) j = bit_io_intern(b & 1, 0);
    else j = bit_io_intern(b & 1, 1);
    b >>= 1;
    if(j) b |= 0x80;
  } while(--i);

  } else {

  do {
    j = bit_io(b & 1);
    b >>= 1;
    if(j) b |= 0x80;
  } while(--i);
}
  return b;
}


uint8_t OnewireMaster::byte_rd(void) {
  /* read by sending only "1"s, so bus gets released after the init low-pulse in every slot */
  return byte_wr(0xFF);
}

uint8_t OnewireMaster::rom_search(uint8_t diff, uint8_t *id) {
  uint8_t i, j, next_diff;
  uint8_t b;

  if(reset()) return OW_PRESENCE_ERR; /* error, no device found <--- early exit! */

  byte_wr(OW_SEARCH_ROM); /* ROM search command */
  next_diff = OW_LAST_DEVICE; /* unchanged on last device */

  i = OW_ROMCODE_SIZE * 8; /* 8 bytes */

  do {
    j = 8; /* 8 bits */
    do {
      b = bit_io(1); /* read bit */
      if(bit_io(1)) { /* use brackets to tell the compiler the following else is mine */
        if(b) return OW_DATA_ERR; /* read complement bit, 0b11: data error <--- early exit! */
      }
      else if(!b) if(diff > i || ((*id & 1) && diff != i)) { /* 0b00 = 2 devices */
        b = 1; /* now 1 */
        next_diff = i; /* next pass 0 */
      }

      bit_io(b); /* write bit */
      *id >>= 1;
      if(b) *id |= 0x80; /* store bit */

      i--;
    } while(--j);
    id++; /* next byte */
  } while(i);

  return next_diff; /* to continue search */
}

void OnewireMaster::command(uint8_t command, uint8_t *id) {
  uint8_t i;

  reset();

  if(id) {
    byte_wr(OW_MATCH_ROM); /* to a single device */
    i = OW_ROMCODE_SIZE;
    do {
      byte_wr(*id);
      id++;
    } while(--i);
  }
  else byte_wr(OW_SKIP_ROM); /* to all devices */

  
	byte_wr(command);
}
