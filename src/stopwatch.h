#pragma once
#include "program.h"


funRetVal stopWatch_loop(uint8_t risingByte, uint8_t fallingByte, uint8_t *memPtr);
funRetVal stopWatch_init(uint8_t risingByte, uint8_t fallingByte, uint8_t *memPtr);
funRetVal stopWatch_deinit(uint8_t risingByte, uint8_t fallingByte, uint8_t *memPtr);

extern const program prog_stopWatch;

