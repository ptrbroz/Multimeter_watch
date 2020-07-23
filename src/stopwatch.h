#pragma once
#include "program.h"


funRetVal stopWatch_loop(uint8_t risingByte, uint8_t fallingByte);
funRetVal stopWatch_init(uint8_t risingByte, uint8_t fallingByte);
funRetVal stopWatch_deinit(uint8_t risingByte, uint8_t fallingByte);

const program prog_stopWatch = {stopWatch_init, stopWatch_loop, stopWatch_deinit, "Stopwatch"};


