#include "Arduino.h"
enum resistanceRange{RES_RANGE_0, RES_RANGE_1};
float res_calculateResistanceFromAdcRaw(uint16_t _adcRaw, float _pullupValue, float _refVoltage, float _batVoltage);
float res_measureResistance(enum resistanceRange _resRange);
void res_loop();
enum resistanceRange res_autosetRange();
void res_setRange(enum resistanceRange _resRange);