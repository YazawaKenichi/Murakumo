#ifndef __FLASH_H__
#define __FLASH_H__

typedef struct
{
    uint16_t course_state_time_max;
    uint16_t analogmin[CALIBRATIONSIZE];
    uint16_t analogmax[CALIBRATIONSIZE];
    double radius[COURSE_STATE_SIZE];
    double igz[COURSE_STATE_SIZE];
    double len[COURSE_STATE_SIZE];
} FlashBuffer;

#endif
