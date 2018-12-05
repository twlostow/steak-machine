/* _end is set in the linker command file */

#include <unistd.h>
#include <errno.h>

extern caddr_t __heap_start;
extern caddr_t __ram_end;

/*
 * sbrk -- changes heap size size. Get nbytes more
 *         RAM. We just increment a pointer in what's
 *         left of memory on the board.
 */
caddr_t _sbrk(nbytes)
     int nbytes;
{
  static caddr_t heap_ptr = NULL;
  static caddr_t ram_end_ptr = NULL;
  caddr_t        base;


  if (heap_ptr == NULL) {
    heap_ptr = (caddr_t)&__heap_start;
  }

  if (ram_end_ptr == NULL) {
    ram_end_ptr = (caddr_t)&__ram_end;
  }

  pp_printf("sbrk heap %p req %d %p\n\r", heap_ptr, nbytes, ram_end_ptr);

  if ((ram_end_ptr - heap_ptr) >= 0) {
    base = heap_ptr;
    heap_ptr += nbytes;
    return (base);
  } else {
    errno = ENOMEM;
    return ((caddr_t)-1);
  }
}


void atexit(void *ptr)
{

}