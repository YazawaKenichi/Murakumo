#ifndef __DEFINES_H__
#define __DEFINES_H__

#define PLAY 1

#define D_ANALOG 0
#define D_ANALOGRATE 0
#ifndef D_MOTOR
#define D_MOTOR 1
#endif
#define D_SIDESENS 0	//
#define D_ENCODER 0	// Debug Encoder
#define D_PWM 0
#define D_ROTARY 0
#define D_PLAYMODE 0
#define D_SWITCH 0
#define D_IMU 1
#define D_FLASH 1
#define D_LED 0
#define D_VELOCITY_CONTROL 0
#define D_VELOCITY_CONTROL_TIMER 0
#define D_MATH 0
#define D_SLOWSTART 0
#define D_SEARCH 1
#define D_WHILE_PRINT 0
#define D_COURSE_SAVING 0
#define D_PRINT 1

#define USE_ANALOG 1
#define USE_MOTOR 1
#define USE_SIDESENSOR 1	// Use SideSensor
#define USE_ENCODER 1
#define USE_ROTARY 1
#define USE_SWITCH 1
#define USE_LED 1
#define USE_FLASH 1
#define USE_IMU 1
#define USE_BUZZER 0
#define USE_VELOCITY_CONTROL 1
#define USE_SIGMOID_TRACE 0
#define USE_DANGERSTOP 0
#define USE_LR_DIFFERENCE 1
#define USE_PID_ARRAY 1
#define USE_COURSE_STATE_TIME 1

#define USE_SLOWSTART 1
#define USE_WRITE_FLASH 1

// one side only
#define LENGTH_SAMPLING 1
#define LEFTMARKER_SAMPLING 0
#define SAMPLING_LENGTH 10000

#endif
