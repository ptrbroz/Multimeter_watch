#pragma once
#include "program.h"


funRetVal snake_loop(uint8_t risingByte, uint8_t fallingByte);
funRetVal snake_init(uint8_t risingByte, uint8_t fallingByte);
funRetVal snake_deinit(uint8_t risingByte, uint8_t fallingByte);

const program prog_snake = {snake_init, snake_loop, snake_deinit, "Snake"};


