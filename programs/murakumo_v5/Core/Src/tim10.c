#include "tim10.h"

/* lengths is updated only in tim10 file. */
double length, length_left, length_right;
double velocity_left, velocity_right, velocity;

void tim10_length_init()
{
  length_left = 0;
  length_right = 0;
  length = 0;
}

void tim10_init()
{
  tim10_length_init();
	HAL_TIM_Base_Stop_IT(&htim10);
}

void tim10_fin()
{
	HAL_TIM_Base_Stop_IT(&htim10);
}

double tim10_read_length_left()
{
  return length_left;
}

double tim10_read_length_right()
{
  return length_right;
}
double tim10_read_length()
{
  return length;
}

void tim10_main()
{
  /* set encoder middle and update velocities */
  encoder_set();

  /* update velocity */
  velocity_left = encoder_read_left() * (double) LENGTHPERPULSE * (double) TIM10_Hz;
  velocity_right = encoder_read_right() * (double) LENGTHPERPULSE * (double) TIM10_Hz;
  velocity = encoder_read() * (double) LENGTHPERPUSE * (double) TIM10_Hz;

  /* update lengths */
  length_left += (double) encoder_read_left();
  length_right += (double) encoder_read_right();
  length += (double) encoder_read();

  if(length >= SAMPLING_LENGTH)
  {
    course_state_function();
  }

  sidesens_function();
  led_brink();
}
