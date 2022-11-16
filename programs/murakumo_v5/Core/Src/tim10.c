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
	encoder_init();
	HAL_TIM_Base_Stop_IT(&htim10);
}

void tim10_start()
{
  /* encoder_set_middle, HAL_TIM_Encoder_Start */
  encoder_start();
  /* marker = subsensbuf = sidedeltacount = markerstate = rightmarkercount = 0 */
  sidesensor_start();
  HAL_TIM_Base_Start_IT(&htim10);
}

void tim10_stop()
{
	HAL_TIM_Base_Stop_IT(&htim10);
  sidesensor_stop();
  encoder_stop();
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

double tim10_read_velocity_left()
{
  return velocity_left;
}

double tim10_read_velocity_right()
{
  return velocity_right;
}

double tim10_read_velocity()
{
  return velocity;
}

void tim10_main()
{
  /* set encoder middle and update velocities */
  encoder_set();

  /* update velocity */
  velocity_left = encoder_read_left() * (double) LENGTHPERPULSE * (double) TIM10_Hz;
  velocity_right = encoder_read_right() * (double) LENGTHPERPULSE * (double) TIM10_Hz;
  velocity = encoder_read() * (double) LENGTHPERPULSE * (double) TIM10_Hz;

  /* update lengths */
  length_left += (double) encoder_read_left() * (double) LENGTHPERPULSE;
  length_right += (double) encoder_read_right() * (double) LENGTHPERPULSE;
  length += (double) encoder_read() * (double) LENGTHPERPULSE;

  /*
  if(length >= SAMPLING_LENGTH)
  {
    course_state_function();
  }
  */

  sidesensor_function();
}
