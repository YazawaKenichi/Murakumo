#include "encoder.h"

double LENGTHPERPULSE;
double encoder_velocity;

void encoder_init()
{
    LENGTHPERPULSE = M_PI * TIREDIAMETER * PINION / (double) PULSEPERROTATE / (double) SUPER;
}

void encoder_set_middle()
{
    TIM1 -> CNT = ENCODER_MIDDLE;
    TIM2 -> CNT = ENCODER_MIDDLE;
}

void encoder_initialize()
{
    encoder_set_middle();

	HAL_TIM_Encoder_Start(&htim1, TIM_CHANNEL_ALL);
	HAL_TIM_Encoder_Start(&htim3, TIM_CHANNEL_ALL);
	HAL_TIM_Base_Start_IT(&htim10);
}

void encoder_finalize()
{
	HAL_TIM_Encoder_Stop(&htim1, TIM_CHANNEL_ALL);
	HAL_TIM_Encoder_Stop(&htim3, TIM_CHANNEL_ALL);
}

double encoder_read_velocity()
{
    short int encoder_l_, encoder_r_;
    double encoder_, velocity_;

    encoder_l_ = TIM1 -> CNT - ENCODER_MIDDLE;
    encoder_r_ = -(TIM3 -> CNT - ENCODER_MIDDLE);

    encoder_set_middle();

    encoder_ = (double) (encoder_l_ + encoder_r_) / 2;
    velocity_ = (double) encoder_l_ * LENGTHPERPULSE;

    encoder_velocity = velocity_;

    return velocity_;
}

double encoder_read()
{
    return encoder_velocity;
}
