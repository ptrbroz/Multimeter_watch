#pragma once

#include "Arduino.h"
#include "program.h"
#include "hotKeyMenu.h"


funRetVal linearPS_init(uint8_t *memPtr);
funRetVal linearPS_loop( uint8_t *memPtr);
funRetVal linearPS_deinit(uint8_t *memPtr);
void adjustVoltage(menuCBData data, uint8_t len);
void adjustCurrent(menuCBData data, uint8_t len);

extern const program prog_linearPowerSupply;