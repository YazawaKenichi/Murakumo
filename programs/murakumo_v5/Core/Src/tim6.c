#include "tim6.h"

int beforedirection, sdirection;

void tim6_init()
{
    beforedirection = 0;
    sdirection = 0;
	HAL_TIM_PWM_Start(&htim4, TIM_CHANNEL_1);	// 50kHz (0.02ms)
	HAL_TIM_PWM_Start(&htim4, TIM_CHANNEL_2);
	HAL_TIM_Base_Start_IT(&htim6);	// PID
#if PLAY
    motorenable(1);
#endif
}

void tim6_fin()
{
	HAL_TIM_Base_Stop_IT(&htim6);
	HAL_TIM_PWM_Stop(&htim4, TIM_CHANNEL_2);
	HAL_TIM_PWM_Stop(&htim4, TIM_CHANNEL_1);
}

void tim6_main()
{
    uint16_t analogl, analogr;
    int direction;
    double leftmotor, rightmotor;
    analogl = 0;
    analogr = 0;

    for(unsigned char i = 0; i < analog_read_calibrationsize(); i++)
    {
        if(i % 2 == 0)
        {
            analogl += analog_sensor_get(i);
        }
        else
        {
            analogr += analog_sensor_get(i);
        }
    }

    if(analogl + analogr >= 980 * analog_read_calibrationsize())
    {
        velotrace_set_target(0);
        motor_enable(0);
    }

    // ( direction > 0 ) is ( analogl > analogr ) i.e. left is black, right is white.
    // When ( direction > 0 ) , must turn right.
    direction = (analogl - analogr);	// difference

    if(analogl + analogr <= 700 * analog_read_calibrationsize())
    {
        direction = 0;
    }

    if(motor_read_enable())
    {
        leftmotor = velotrace_solve(encoder_read()) + tracer_solve(direction);
        rightmotor = velotrace_solve(encoder_read()) - tracer_solve(direction);
    }
    else
    {
        leftmotor = 0;
        rightmotor = 0;
    }

    motor_set(leftmotor, rightmotor);
}
