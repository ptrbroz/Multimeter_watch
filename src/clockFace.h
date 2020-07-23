#pragma once
#include "program.h"

funRetVal clockFace_loop(uint8_t risingByte, uint8_t fallingByte);
funRetVal clockFace_init(uint8_t risingByte, uint8_t fallingByte);
funRetVal clockFace_deinit(uint8_t risingByte, uint8_t fallingByte);

program prog_clockFace = {clockFace_init, clockFace_loop,clockFace_deinit, "Clockface"};