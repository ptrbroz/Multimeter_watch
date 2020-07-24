#pragma once
#include "program.h"


funRetVal snake_loop(uint8_t risingByte, uint8_t fallingByte, uint8_t *memPtr);
funRetVal snake_init(uint8_t risingByte, uint8_t fallingByte, uint8_t *memPtr);
funRetVal snake_deinit(uint8_t risingByte, uint8_t fallingByte, uint8_t *memPtr);

extern const program prog_snake;

