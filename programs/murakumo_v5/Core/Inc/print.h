#ifndef __PRINT_H__
#define __PRINT_H__

#include "stdio.h"
#include "main.h"
#include "analog.h"

#define ESC_MAG	"\x1b[35m"
#define ESC_RED "\x1b[31m"
#define ESC_YEL	"\x1b[33m"
#define ESC_GRE	"\x1b[32m"
#define ESC_CYA	"\x1b[36m"
#define ESC_BLU	"\x1b[34m"
#define ESC_DEF "\x1b[39m"

#ifdef __GNUC__
#define PUTCHAR_PROTOTYPE int __io_putchar(int ch)
#else
#define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#endif

PUTCHAR_PROTOTYPE;

void d_print();
void print_playmode();
void print_rotary_value();
void print_while();
void print_tracer_values();
void print_velotrace_values();
void print_analog_rate();

#endif
