#pragma once

#include <SSD1306AsciiAvrI2c.h>

extern SSD1306AsciiAvrI2c oled;


#define I2C_ADDRESS 0x3C
// 0X3C+SA0 - 0x3C or 0x3D

// Define proper RST_PIN if required.
#define RST_PIN -1

void printByteToOled(uint8_t inbyte);

