#pragma once
#include <Arduino.h>

extern volatile uint8_t buttonsByte ;
extern volatile uint8_t justPressedButtons ;
extern volatile uint8_t justReleasedButtons ;
extern uint8_t autoRepeatPressedButtons;
extern volatile unsigned long lastPressMillis;


void initButtons();
uint8_t getButtonsByteFromPorts(uint8_t _pinB, uint8_t _pinD, uint8_t _pinE);
void handleButtonEdgeDetection();
void handleDebouncing();
void handleButtonAutoRepeat();
void setButtonAutoRepeatRate(int _delayBeforeAutoRepeat, int _autoRepeatRate);
void resetButtonAutoRepeatRate();


#define BUTT_LEFT(inputByte) (((inputByte) & mask_butt_left)!=0)
#define BUTT_RIGHT(inputByte) (((inputByte) & mask_butt_right)!=0)
#define JOY_PRESS(inputByte) (((inputByte) & mask_joy_press)!=0)
#define JOY_UP(inputByte) (((inputByte) & mask_joy_up)!=0)
#define JOY_DOWN(inputByte) (((inputByte) & mask_joy_down)!=0)
#define JOY_LEFT(inputByte) (((inputByte) & mask_joy_left)!=0)
#define JOY_RIGHT(inputByte) (((inputByte) & mask_joy_right)!=0)

#define BUTT_LEFT_INDEX 2
#define JOY_LEFT_INDEX 1
#define JOY_DOWN_INDEX 3
#define JOY_UP_INDEX 4
#define JOY_RIGHT_INDEX 5
#define BUTT_RIGHT_INDEX 6

#define mask_butt_left (1<<(BUTT_LEFT_INDEX-1))
#define mask_butt_right (1<<(BUTT_RIGHT_INDEX-1))
//#define mask_joy_press  (1<<())
#define mask_joy_up  (1<<(JOY_UP_INDEX-1))
#define mask_joy_down  (1<<(JOY_DOWN_INDEX-1))
#define mask_joy_left  (1<<(JOY_LEFT_INDEX-1))
#define mask_joy_right  (1<<(JOY_RIGHT_INDEX-1))



extern volatile unsigned long lastPressMillis;