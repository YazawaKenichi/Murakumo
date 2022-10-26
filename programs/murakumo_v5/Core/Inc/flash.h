#ifndef __FLASH_H__
#define __FLASH_H__

#include "analog.h"

#define BACKUP_FLASH_SECTORNUM FLASH_SECTOR_11
#define BACKUP_FLASH_SECTOR_SIZE (1024*16)
#if D_COURSE_STATE_SAVING
#define COURSE_STATE_SIZE 600/2
#else
#define COURSE_STATE_SIZE 10000
#endif

typedef struct
{
    uint16_t course_state_time_max;
    uint16_t analogmin[CALIBRATIONSIZE];
    uint16_t analogmax[CALIBRATIONSIZE];
    double radius[COURSE_STATE_SIZE];
    double igz[COURSE_STATE_SIZE];
    double len[COURSE_STATE_SIZE];
} FlashBuffer;

void eraseFlash(void);
void writeFlash(uint32_t, uint8_t*, uint32_t);
void loadFlash(uint32_t, uint8_t*, uint32_t);

extern FlashBuffer flashbuffer;

/* usuage */
/*
    run_fin()
    {
        ...
        writeFlash(start_address, (uint8_t*) &flashbuffer, sizeof(FlashBuffer));
        ...
    }
*/

#endif
