#include <stdlib.h>

#include "surface.h"

Surface::Surface(int w, int h, void *buffer)
{
	m_w = w;
	m_h = h;
	m_buffer = (uint8_t *)buffer;
}

void Surface::pixel(int x, int y, int value)
{
	if(x < 0 || x >= m_w || y < 0 || y >= m_h)
		return;

	if(value)
		m_buffer[m_w * (y >> 3) + x] |= 1 << (y & 0x7);
	else
		m_buffer[m_w * (y >> 3) + x] &= ~(1 << (y & 0x7));
}

void Surface::line(int x0, int y0, int x1, int y1, int value)
{
	 int dx = abs(x1-x0), sx = x0<x1 ? 1 : -1;
  int dy = abs(y1-y0), sy = y0<y1 ? 1 : -1; 
  int err = (dx>dy ? dx : -dy)/2, e2;
 
  for(;;){
   	pixel(x0,y0,value);
    if (x0==x1 && y0==y1) break;
    e2 = err;
    if (e2 >-dx) { err -= dy; x0 += sx; }
    if (e2 < dy) { err += dx; y0 += sy; }
  }
}

void Surface::box(int x1, int y1, int x2, int y2, int value)
{
	for(int x = x1; x <= x2; x ++)
		for(int y = y1; y <= y2; y++)
			pixel(x, y, value);	
}

int Surface::draw_glyph(const Font *font, int x0, int y0, char c)
{
	if(c < font->min_char || c > font->max_char)
		return 0;

	const uint8_t *buf = font->glyph_data + font->offset_table[c - font->min_char];
	int w = font->width_table[c - font->min_char];

	for(int y=0;y<font->height;y++)
		for(int x=0;x<w;x++)
			if(buf[((w + 7) >> 3) * y + (x>>3)] & (1<< (7-(x & 7))))
				pixel(x+x0, y+y0, c);
	return w;
}

void Surface::text(const Font *font, int x, int y, const char *str)
{
	char c;
	while(c = *str++)
		x += draw_glyph(font, x, y, c);
}