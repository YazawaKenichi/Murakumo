#include "tim10.h"

#include "encoder.h"
#include "sidesensor.h"
#include "LED.h"

void tim10_init()
{
	HAL_TIM_Base_Stop_IT(&htim10);
}

void tim10_fin()
{
	HAL_TIM_Base_Stop_IT(&htim10);
}

void tim10_main()
{
    double velocity;
    velocity = encoder_read_velocity();

    if(mm_length >= SAMPLING_LENGTH)
    {
      course_state_function();
    }

    sidesens_function();
    led_brink();
}
