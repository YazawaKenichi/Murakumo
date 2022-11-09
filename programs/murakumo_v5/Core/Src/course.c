#include "course.h"

uint16 course_state_time;

void course_init()
{
    course_set_state_time(0)
}

void course_read_state_time()
{
    return course_state_time;
}

void course_increment_state_time()
{
    course_state_time++;
}

double course_calclate_radius()
{
    short int left_length, right_length;
    encoder_read_pulse(&left_length, &right_length);
    return (double) TREAD * (double) ((left_length) + (right_length)) / (double) ((left_length) - (right_length)) / (double) 2;
}

void course_state_function()
{
	if(playmode == search)
	{
		if(course_read_state_time() + 1 >= COURSE_STATE_SIZE)	// sizeof(flash_buffer.radius) / sizeof(flash_buffer.radius[0]))
		{
            motor_enable(0);
		}
		else
		{
#if USE_COURSE_STATE_TIME
			course_state_time++;
#endif
			flash_buffer.course_state_time_max = course_read_state_time();
			my_gyro.z = theta * RADPERDEG;
	//		my_gyro.z *= RADPERDEG;
			flash_buffer.radius[course_state_time] = course_calclate_radius();
            tim10_length_init();
			my_gyro.z = 0;
		}
	}
	if(playmode == accel)
	{
		velocity_control_switch_function();
		if(course_state_time + 1 >= COURSE_STATE_SIZE)	// sizeof(flash_buffer.radius) / sizeof(flash_buffer.radius[0]))
		{
			led_rgb(1, 1, 0);	// Yellow
			motorenable = 0;
		}
		else
		{
#if USE_COURSE_STATE_TIME
			course_state_time++;
#endif
		}
	}
}

