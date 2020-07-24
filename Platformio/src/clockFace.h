#pragma once
#include "program.h"

funRetVal clockFace_loop(uint8_t risingByte, uint8_t fallingByte, uint8_t *memPtr);
funRetVal clockFace_init(uint8_t risingByte, uint8_t fallingByte, uint8_t *memPtr);
funRetVal clockFace_deinit(uint8_t risingByte, uint8_t fallingByte, uint8_t *memPtr);

extern const program prog_clockFace;