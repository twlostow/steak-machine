/* _end is set in the linker command file */

#include <unistd.h>
#include <errno.h>

extern caddr_t __heap_start;

/* just in case, most boards have at least some memory */
#ifndef RAMSIZE
#  define RAMSIZE             (caddr_t)0x100000
#endif

/*
 * sbrk -- changes heap size size. Get nbytes more
 *         RAM. We just increment a pointer in what's
 *         left of memory on the board.
 */
caddr_t _sbrk(nbytes)
     int nbytes;
{
  static caddr_t heap_ptr = NULL;
  caddr_t        base;

  if (heap_ptr == NULL) {
    heap_ptr = (caddr_t)&__heap_start;
  }

  if ((RAMSIZE - heap_ptr) >= 0) {
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