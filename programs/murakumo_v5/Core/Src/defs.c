#include "../Inc/defs.h"

double low_pass_filter(double val, double pre_val, double gamma) {
	return (double) (gamma * (double) pre_val
			+ (double) (1 - gamma) * (double) val);
}

#ifndef __OBSOLETE_MATH
double pow(double a, double b) {
	double r;
	r = 1;
	// printf("pow(%5.3f, %5.3f)\r\n", a, b);
	if(b < 0)
	{
		for(int i = -b; i > 0; i--) // xx b != int xx
		{
			r = (double) r / a;
		}
	}
	else
	{
		for(int i = b; i > 0; i--)
		{
			r = (double) r * a;
		}
	}

	return r;
}

double exp(double a)
{
	// printf("exponential(%5.3f)\r\n", a);
	return pow(E, a);
}
#endif

double sigmoid(double x, double a, double x0) {
	// printf("pow(%5.3f, %5.3f, %5.3f)\r\n", x, a, x0);
	return 1 / (double) (1 + exp(-a * (x - x0)));
}

#if USE_FLASH
void eraseFlash(void) {
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
#endif

void sidesens_function()
{
#if USE_SIDESENSOR
	unsigned char subsens, first, second;

	subsens = read_sidesens();

	if (subsens != subsensbuf)
	{
		subsensbuf = subsens;
		marker += subsens << (2 * sidedeltacount);
		if (subsens == 0b00 && sidedeltacount != 0)
		{
			first = (marker & 0b0011);
			second = (marker & 0b1100) >> 2;
			if (second == 0b00)
			{
				if (first == 0b01)
				{
					// right -> stop
					markerstate = 0b01;
					if(rightmarkercount == 1 - 1)
					{
						rightmarkercount++;
						set_led(0b01, 0b01);
					}
					else if (rightmarkercount == 2 - 1)
					{
						// stop_motion
						rightmarkercount++;
						course_state_function();
						slow = 1;
					}
				}
				else if (first == 0b10)
				{
					// left -> curve
					markerstate = 0b10;
#if LEFTMARKER_SAMPLING
					course_state_function();
#endif
				markerstate = 0;
#if USE_ANALOG
					sdirection = 0;
#endif
#if USE_FLASH && USE_VELOCITY_CONTROL
#if USE_VELOCITY_CONTROL
					s_velocity = 0;
#endif
#endif	// USE_FLASH && USE_VELOCITY_CONTROL
				}
				else
				{
					// cross
					markerstate = 0b11;
				}
			}
			else
			{
				// cross
				markerstate = 0b11;
			}
			sidedeltacount = 0;
			marker = 0;
#if !LEFTMARKER_SAMPLING
			markerstate = 0;
#endif
		}
		else
		{
			sidedeltacount++;
		}
	}
#endif	// USE_SIDESENSOR
}

void encoder_set_function() {
#if USE_ENCODER
	// 1ms
	encoder_l = TIM1->CNT - ENCODER_MIDDLE;
	encoder_r = -(TIM3->CNT - ENCODER_MIDDLE);

	TIM1->CNT = ENCODER_MIDDLE;
	TIM3->CNT = ENCODER_MIDDLE;

	encoder = (double) (encoder_l + encoder_r) / 2;
	velocity = (double) encoder * LENGTHPERPULSE;
#endif	// USE_ENCODER
}

void slow_start_function() {
#if USE_SLOWSTART
	if (slow) {
		starting_length += velocity;
		if (starting_length < THRESHOLD_STARTING_LENGTH) {
			velocity_target = 100;
			kp = 10;
			kd = 15;
			ki = 0;
		} else {
			velocity_target = base_velocity_target;
			kp = base_p;
			ki = base_i;
			kd = base_d;
			slow = 0;
		}
	}
#endif	// USE_MOTOR && USE_SLOWSTART
}

void velocity_control_function() {
#if USE_VELOCITY_CONTROL
	if (playmode != zero_trace) {
		velocity_error = velocity_target - velocity;
		s_velocity_error = s_velocity_error + velocity_error;

		velocity_next = (double) VKP * velocity_error
				+ (double) VKI * s_velocity_error;
		commonspeed = (double) velocity_next * (double) PWMMAX
				/ (double) VELOCITY_MAX;
	} else {
		commonspeed = 0;
	}
#endif	// USE_VELOCITY_CONTROL
}

void velocity_control_switch_function()
{
#if USE_FLASH
#if !D_COURSE_SAVING
    if(flash_buffer.radius[course_state_time] < THRESHOLDRADIUS)
    {
        // deceleration
        velocity_target = low_velo.velocity_target[rv];
        kp = low_velo.kp[rv];
        kd = low_velo.kd[rv];
        ki = low_velo.ki[rv];
    }
    else
    {
        // acceleration
        velocity_target = high_velo.velocity_target[rv];
        kp = high_velo.kp[rv];
        kd = high_velo.kd[rv];
        ki = high_velo.ki[rv];
    }
#endif
#endif
}

void course_state_function()
{
	if(playmode == search)
	{
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
			flash_buffer.course_state_time_max = course_state_time;
			my_gyro.z = theta * RADPERDEG;
	//		my_gyro.z *= RADPERDEG;
	#if !D_COURSE_SAVING
	#if !USE_LR_DIFFERENCE
			flash_buffer.radius[course_state_time] = (double) my_gyro.z / (double) mm_length;
	#else	// USE_LR_DIFFERENCE
			flash_buffer.radius[course_state_time] = (double) TREAD * (double) ((left_length) + (right_length)) / (double) ((left_length) - (right_length)) / (double) 2;
	#endif	// USE_LR_DIFFERENCE
	#else	// D_COURSE_SAVING
	#if !USE_LR_DIFFERENCE
			flash_buffer.igz[course_state_time] = my_gyro.z;
			flash_buffer.len[course_state_time] = mm_length;
	#endif	// !USE_LR_DIFFERENCE
	#endif	// D_COURSE_SAVING
	#if USE_LR_DIFFERENCE
			left_length = 0;
			right_length = 0;
	#endif
			mm_length = 0;
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

void radius_calc()
{
#if USE_IMU
	/*
	if (!slow && rightmarkercount && rv == 0x01)	// SAMPLING_LENGTH /
	{
		sampling_time++;
		IMU_read();
		my_gyro.z += inertial.gyro.z;
		m_velocity += velocity;
		if (sampling_time >= SAMPLING_TIME)
		{
			flash_buffer.radius[course_state_time] = my_gyro.z / m_velocity;
			if (course_state_time == 0)
			{
				flash_buffer.radius[course_state_time] = THRESHOLDRADIUS;
			}
			if (rightmarkercount == 2)
			{
				flash_buffer.radius[course_state_time] = THRESHOLDRADIUS;
				if (motorenable == 0)
				{
					flash_buffer.course_state_time_max = course_state_time;
				}
			}
			course_state_time++;
			m_velocity = 0;
			my_gyro.z = 0;
			sampling_time = 0;
		}
	}
	*/
#endif	// USE_IMU
}

void led_brink()
{
#if USE_LED
	uint16_t TIMTIM = 1000;

	if (timtim1 % TIMTIM == 0)	// 1 ms / roop
	{
		set_led(0b10, 0b10);
	}
	if (timtim1 % TIMTIM == (int) (TIMTIM / 2))
	{
		set_led(0b10, 0b00);
	}
	timtim1 = timtim1 + 1;
	if (timtim1 >= 60000)
	{
		timtim1 = 0;
	}
#endif
}

void pid_gain_initialize()
{
	for(int i = 0; i < 16; i++)
	{
		low_velo.velocity_target[i] = VELOCITY_TARGET_LOW;
		high_velo.velocity_target[i] = VELOCITY_TARGET_HIGH;
	}
	low_velo.kp[0] = KP_LOW;
	low_velo.ki[0] = KI_LOW;
	low_velo.kd[0] = KD_LOW;
	high_velo.kp[0] = KP_HIGH;
	high_velo.ki[0] = KI_HIGH;
	high_velo.kd[0] = KD_HIGH;
	for(int i = 1; i < 16; i++)
	{
		low_velo.kp[i] = KP_LOW + (i - 1) * KP_LOW_TOLERANCE;
		low_velo.ki[i] = KI_LOW + (i - 1) * KI_LOW_TOLERANCE;
		low_velo.kd[i] = KD_LOW + (i - 1) * KD_LOW_TOLERANCE;
		high_velo.kp[i] = KP_HIGH + (i - 1) * KP_HIGH_TOLERANCE;
		high_velo.ki[i] = KI_HIGH + (i - 1) * KI_HIGH_TOLERANCE;
		high_velo.kd[i] = KD_HIGH + (i - 1) * KD_HIGH_TOLERANCE;
	}
}

void pid_initialize()
{
	velocity_target = low_velo.velocity_target[rv];
	kp = low_velo.kp[rv];
	kd = low_velo.kd[rv];
	ki = low_velo.ki[rv];
	if(playmode == accel)
	{
		velocity_target = high_velo.velocity_target[rv];
		kp = high_velo.kp[rv];
		kd = high_velo.kd[rv];
		ki = high_velo.ki[rv];
	}
#if USE_SLOWSTART
	slow = 1;
	starting_length = 0;
	base_velocity_target = velocity_target;
	base_p = kp;
	base_i = ki;
	base_d = kd;
#endif  // USE_SLOWSTART
}
