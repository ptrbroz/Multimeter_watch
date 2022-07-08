#include "Arduino.h"
#include "program.h"
enum resistanceRange{RES_RANGE_0, RES_RANGE_1};
float res_calculateResistanceFromAdcRaw(uint16_t _adcRaw, float _pullupValue, float _refVoltage, float _batVoltage);
float res_measureResistance(enum resistanceRange _resRange);
void res_loop();
enum resistanceRange res_autosetRange();
void res_setRange(enum resistanceRange _resRange);
void res_printResistance(float _res);
funRetVal res_init(uint8_t* memPtr);
funRetVal res_loop(uint8_t* memPtr);
funRetVal res_deinit(uint8_t* memPtr);
extern const program prog_resistanceMeter;