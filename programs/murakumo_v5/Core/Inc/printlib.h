#ifndef __PRINTLIB_H__
#define __PRINTLIB_H__

#include "stdio.h"

#ifdef __GNUC__
#define PUTCHAR_PROTOTYPE int __io_putchar(int ch)
#else
#define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#endif

void playmode_print()
void d_print()
PUTCHAR_PROTOTYPE;

#endif
