#include "flash.h"

#define USE_WRITE_FLASH 0

FlashBuffer flash_buffer;
uint16_t course_state_time;

void eraseFlash(void)
{
	FLASH_EraseInitTypeDef erase;
	erase.TypeErase = FLASH_TYPEERASE_SECTORS;
	erase.Sector = FLASH_SECTOR_11;
	erase.NbSectors = 1;
	erase.VoltageRange = FLASH_VOLTAGE_RANGE_3;
	uint32_t pageError = 0;

	HAL_FLASHEx_Erase(&erase, &pageError);
}

void writeFlash(uint32_t address, uint8_t *data, uint32_t size)
{
#if USE_WRITE_FLASH
	HAL_FLASH_Unlock();
	eraseFlash();

	for (uint32_t add = address; add < (address + size); add++)
	{
		HAL_FLASH_Program(FLASH_TYPEPROGRAM_BYTE, add, *data);
		data++;
	}

	HAL_FLASH_Lock();
#endif
}

void loadFlash(uint32_t address, uint8_t *data, uint32_t size)
{
	memcpy(data, (uint64_t*) address, size);
}
