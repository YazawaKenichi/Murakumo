#ifndef __LED_H__
#define __LED_H__

typedef struct
{
    uint8_t r;
    uint8_t g;
    uint8_t b;
} Rgb;

void write_rgb(Rgb);
void write_led(uint8_t);

#endif
