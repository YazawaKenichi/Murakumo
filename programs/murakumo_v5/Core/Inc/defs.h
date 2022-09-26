#ifndef __DEFS_H__
#define __DEFS_H__
#include "stdio.h"
#include <string.h>
#include <stdint.h>
#include <math.h>
#include "ICM20648.h"

#ifdef __GNUC__
#define PUTCHAR_PROTOTYPE int __io_putchar(int ch)
#else
#define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#endif

#define PLAY 1

#define D_ANALOG 0
#define D_ANALOGRATE 0
#define D_MOTOR 0
#define D_SIDESENS 0	//
#define D_ENCODER 1	// Debug Encoder
#define D_PWM 0
#define D_ROTARY 0
#define D_PLAYMODE 0
#define D_SWITCH 0
#define D_IMU 0
#define D_LED 0
#define D_VELOCITY_CONTROL 0
#define D_VELOCITY_CONTROL_TIMER 0
#define D_MATH 0
#define D_SLOWSTART 0

#define USE_ANALOG 1
#define USE_MOTOR 1
#define USE_SIDESENSOR 1	// Use SideSensor
#define USE_ENCODER 1
#define USE_ROTARY 1
#define USE_SWITCH 1
#define USE_LED 1
#define USE_FLASH 1
#define USE_IMU 0
#define USE_BUZZER 0
#define USE_VELOCITY_CONTROL 1
#define USE_SIGMOID_TRACE 0

#define ATTACH_LONGSENSOR 0	// use normal sensor and long sensor
#define USE_LONGSENSOR 0	// only use long sensor

#define USE_SLOWSTART 1

#define SECOND 1

#define D_VELOCITY_CONTROL_IN_WHILE 0
#define VELOCITY_CONTROL_RELATIVE 1

#if USE_FLASH
#define BACKUP_FLASH_SECTOR_NUM FLASH_SECTOR_11
#define BACKUP_FLASH_SECTOR_SIZE (1024*16)
#define COURSE_STATE_SIZE 128
#endif

#define ADC_CONVERTED_DATA_BUFFER_SIZE 16	// ADC Channel Count
#define SENSGETCOUNT 9

#define ENCODER_MIDDLE (2048/2)

#ifndef __OBSOLETE_MATH
#define PI 3.14159265358979f
#define E 2.718281828459f
#endif	// __MAIN_H
#define TIREDIAMETER 21000		// um
#define PULSEPERROTATE 4096	// Pulse / Rotate
#define PINION 25
#define SUPER 64
#define TREAD 100	// mm
#define RMIN 100	// mm
#define THRESHOLDRADIUS 500	// mm
// LENGTHPUEPULSE = M_PI * TIREDIAMETER / PULSEPERROTATE

#if USE_VELOCITY_CONTROL
#define VELOCITY_MAX 8340
#if VELOCITY_CONTROL_RELATIVE
#define VKP 6
#define VKI 0.06f
//#define VKP 20	// 27.5f
//#define VKI 0.2f	// 0.15f
#else	// VELOCITY_CONTRO_RELATIVE
// left
#define VKPL 8.0f
#define VKIL 0.025	// 0.025f
// right
#define VKPR 8.0f
#define VKIR 0.025	// 0.025f
#endif	// VELOCITY_CONTROL_RELATIVE
#if D_VELOCITY_CONTROL_TIMER
#define STOPTIME 1000 // 13188	// uint32_t [ms]
#endif
#endif	// USE_VELOCITY_CONTROL

#define PWMMAX 1000 // 3360

#if D_PWM
#define STATICPWM 1
#endif

#if ATTACH_LONGSENSOR	// use normal sensor and long sensor

#define CALIBRATIONSIZE 16
#else	// !ATTACH_LONGSENSOR
#if USE_LONGSENSOR	// only use long sensor
#define CALIBRATIONSIZE 4
#else	// !USE_LONGSENSOR
#define CALIBRATIONSIZE 12
#endif	// !USE_LONGSENSOR
#endif	// !ATTACH_LONGSENSOR

/*
 *
 * good parameters
 *
 * 500, 6.4, 13.75, 0
 * 750, 7.68, 16.5, 0
 *
 */

#if !USE_VELOCITY_CONTROL
#define COMMONSPEED1 0	// 700 // 570
#define COMMONSPEED2 100
#define COMMONSPEED3 100
#define COMMONSPEED4 100
#define COMMONSPEED5 100
#define COMMONSPEED6 100
#define COMMONSPEED7 100
#define COMMONSPEED8 100
#define COMMONSPEED9 100
#define COMMONSPEEDA 100	// 700 // 570
#define COMMONSPEEDB 100
#define COMMONSPEEDC 100
#define COMMONSPEEDD 100
#define COMMONSPEEDE 100
#define COMMONSPEEDF 100
#else
#define VELOCITY_TARGET1 1000
#define VELOCITY_TARGET2 1000
#define VELOCITY_TARGET3 1000
#define VELOCITY_TARGET4 1000
#define VELOCITY_TARGET5 1000
#define VELOCITY_TARGET6 1000
#define VELOCITY_TARGET7 1000
#define VELOCITY_TARGET8 1000
#define VELOCITY_TARGET9 1000
#define VELOCITY_TARGETA 1000
#define VELOCITY_TARGETB 1000
#define VELOCITY_TARGETC 1000
#define VELOCITY_TARGETD 1000
#define VELOCITY_TARGETE 1000
#define VELOCITY_TARGETF 1000
#endif
/*
#define KP1 2.8f	// 30 // 25
#define KD1 0	// 8  // 10
#define KI1 0	// 0.0005f
#define KP2 2.8f
#define KD2 3.4f
#define KI2 0

// god pid
#define VELOCITY_TARGET4 1000
#define KP4 17.5f
#define KD4 400
#define KI4 0

*/
// 5.46f == KP ... great!, 165.71 <= KD <= 170 ... great!
#define KP1 17.5f
#define KD1 335.71f
#define KI1 0
#define KP2 17.5f
#define KD2 357.14f
#define KI2 0
#define KP3 17.5f
#define KD3 378.57f
#define KI3 0
#define KP4 17.5f
#define KD4 400
#define KI4 0
#define KP5 17.5f
#define KD5 421.42f
#define KI5 0
#define KP6 17.5f
#define KD6 442.85f
#define KI6 0
#define KP7 17.5f
#define KD7 464.28f
#define KI7 0
#define KP8 17.5f
#define KD8 485.71f
#define KI8 0
#define KP9 17.5f
#define KD9 507.14f
#define KI9 0
#define KPA 17.5f
#define KDA 528.57f
#define KIA 0
#define KPB 17.5f
#define KDB 550
#define KIB 0
#define KPC 17.5f
#define KDC 571.42f
#define KIC 0
#define KPD 17.5f
#define KDD 592.85f
#define KID 0
#define KPE 17.5f
#define KDE 614.28f
#define KIE 0
#define KPF 17.5f
#define KDF 635.71f
#define KIF 0

#if USE_SLOWSTART
#define THRESHOLD_STARTING_LENGTH 250000	// um
#endif

#define ESC_MAG	"\x1b[35m"
#define ESC_RED "\x1b[31m"
#define ESC_YEL	"\x1b[33m"
#define ESC_GRE	"\x1b[32m"
#define ESC_CYA	"\x1b[36m"
#define ESC_BLU	"\x1b[34m"
#define ESC_DEF "\x1b[39m"

#if USE_FLASH
typedef struct {
	double radius[COURSE_STATE_SIZE];	// radius > 0 => turn right
	uint16_t analogmin[CALIBRATIONSIZE];
	uint16_t analogmax[CALIBRATIONSIZE];
	uint8_t course_state_time_max;
	/*
	uint8_t time[COURSE_STATE_SIZE];
	uint8_t svl[COURSE_STATE_SIZE];
	uint8_t svr[COURSE_STATE_SIZE];
	uint32_t common_speed2[COURSE_STATE_SIZE];
//	uint32_t common_speed3[COURSE_STATE_SIZE];
//	uint16_t second[COURSE_STATE_SIZE];
	*/
} FlashBuffer;
#endif

typedef enum
{
	production,
	a_course,
	b_course,
	mini_course,
	pid_tuning,
	zero_trace
} PlayMode;

// analog
uint16_t analograw[ADC_CONVERTED_DATA_BUFFER_SIZE];	// Analog Data

uint16_t analog[CALIBRATIONSIZE];
uint16_t analogmax[CALIBRATIONSIZE];
uint16_t analogmin[CALIBRATIONSIZE];
uint16_t analogbuffers[SENSGETCOUNT][CALIBRATIONSIZE];

uint16_t analograte[CALIBRATIONSIZE];
uint16_t analogr, analogl;	// Sum Right Analog Sensor, Sum Left Analog Sensor
int direction, beforedirection, sdirection;	// = analogr - analogl
unsigned char sensgettime;
uint8_t calibrationsize;

double kp, kd, ki;
#if USE_SLOWSTART
double base_p, base_i, base_d;
#endif

unsigned char subsensbuf, marker, sidedeltacount, markerstate, rightmarkercount;// 0 ~ 255(2^8-1)
short int encoder;
short int encoder_l, encoder_r;
double LENGTHPERPULSE;	// (um / pulse)

#if SECOND
// uint8_t velocity[COURSELENGTH * 1000];
#endif

#if USE_FLASH
const uint32_t start_address = 0x080E0000;
const uint32_t end_address = 0x080FFFFF;
FlashBuffer flash_buffer;
uint8_t course_state_time;
#endif

#if D_PWM
#define PWM_STEP_AMPLITUDE 1000		// (288 + 1024 * 3) // PWM Pulse Amplitude
#define PWM_STEP_OMEGA 100	// PWM Step Omega (unit mrad / s)
uint32_t pwmstepoutput;	// PWM Duty
uint32_t pwmsteptime;	// PWM Step Time
char pwmstepud;	// PWM Step upword or downword
#endif

#if D_ENCODER
uint16_t d_encoder_left, dd_encoder_left, pre_d_encoder_left, d_encoder_right,
		dd_encoder_right, pre_d_encoder_right;
uint16_t enc1, enc2, enc3;
short int s_encoder, s_encoder_l, s_encoder_r;
#endif

#if USE_VELOCITY_CONTROL || D_ENCODER
double velocity_l, velocity_l_raw;
double velocity_r, velocity_r_raw;
#if VELOCITY_CONTROL_RELATIVE
double velocity_target;
#if USE_SLOWSTART
double base_velocity_target;
#endif
double velocity, s_velocity, velocity_error, s_velocity_error, velocity_next, velocity_raw;
double s_velocity_l, s_velocity_r;
#if D_ENCODER
double left_length, right_length;
#endif
#if USE_SLOWSTART
	double starting_length;
#endif
//		short int s_velocity_l, s_velocity_r;
#else	// VELOCITY_CONTROL_RELATIVE
		double velocity_error_l, s_velocity_error_l, velocity_next_l, nextspeed_l;
		double velocity_error_r, s_velocity_error_r, velocity_next_r, nextspeed_r;
#endif	// VELOCITY_CONTROL_RELATIVE
#if D_VELOCITY_CONTROL_TIMER
		double stoptime;	// ms
	#endif
#endif

// motor
short int commonspeed;
double leftmotor;
double rightmotor;

// switch
uint8_t rotary_value;
uint8_t rv;
char enter;
int timtim1, timtim2;

PlayMode playmode;

#if USE_SLOWSTART
uint8_t slow;
#endif

// flag
uint8_t motorenable;

PUTCHAR_PROTOTYPE;
#if USE_LED
void led_rgb(char r, char g, char b);
void set_led(char, char);
#endif
void running_initialize();
void running_finalize();
void sensor_initialize();
void sensor_finalize();
void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef *AdcHandle);
#ifndef __OBSOLETE_MATH
double pow(double, double);
double exponential(double);
#endif
double sigmoid(double, double, double);
#if USE_ENCODER
void encoder_initialize();
void encoder_finalize();
#endif
#if USE_FLASH
void eraseFlash(void);
void writeFlash(uint32_t, uint8_t*, uint32_t);
void loadFlash(uint32_t, uint8_t*, uint32_t);
#endif
void d_print();
double low_pass_filter(double val, double pre_val, double gamma);

#endif	// __DEFS_H__
