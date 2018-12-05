#ifndef __SURFACE_H
#define __SURFACE_H

#include <stdint.h>

class Surface {
	public: 

		struct Font {
  		uint8_t min_char, max_char, height;
			const uint8_t *width_table;
			const uint16_t *offset_table;
			const uint8_t *glyph_data;
		};

		Surface(int w, int h, void *buffer);
		~Surface();

		void pixel(int x, int y, int value);
		void line(int x0, int y0, int x1, int y1, int value);
		void box(int x1, int y1, int x2, int y2, int value);			
		void text(const Font *font, int x, int y, const char *str);
		void pixmap(uint8_t *data, int x, int y, int w, int h);
		int text_width(const Font *font, const char *str);

		uint8_t *get_buffer()
		{
			return m_buffer;
		}

	private:
		int draw_glyph(const Font *font, int x0, int y0, char c);

		int m_w;
		int m_h;
		
		uint8_t *m_buffer;
};


#endif
