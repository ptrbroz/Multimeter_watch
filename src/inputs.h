#pragma once

#include <Arduino.h>

#define mask_butt_left 0x20
#define mask_butt_right 0x01
#define mask_joy_press  0x02
#define mask_joy_up  0x04
#define mask_joy_down  0x08
#define mask_joy_left  0x10
#define mask_joy_right  0x40

#define BUTT_LEFT(inputByte) ((inputByte & mask_butt_left)!=0)
#define BUTT_RIGHT(inputByte) ((inputByte & mask_butt_right)!=0)
#define JOY_PRESS(inputByte) ((inputByte & mask_joy_press)!=0)
#define JOY_UP(inputByte) ((inputByte & mask_joy_up)!=0)
#define JOY_DOWN(inputByte) ((inputByte & mask_joy_down)!=0)
#define JOY_LEFT(inputByte) ((inputByte & mask_joy_left)!=0)
#define JOY_RIGHT(inputByte) ((inputByte & mask_joy_right)!=0)

#define UPDATE_EDGES(inputByte, risingByte, fallingByte){    \
    static uint8_t lastByte = 0x00; \
    uint8_t edges = inputByte ^ lastByte; \
    risingByte = edges & inputByte; \
    fallingByte = edges & (~inputByte); \
    lastByte = inputByte; \
}


