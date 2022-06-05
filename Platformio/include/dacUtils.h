#include "Arduino.h"
void dac_init();
#define dac_output DALR
uint16_t dac_getRawAdcBeforeShunt();
uint16_t dac_getRawAdcAfterShunt();
uint16_t dac_getVoltageBeforeShunt(uint16_t _batteryVoltage);
uint16_t dac_getVoltageAfterShunt(uint16_t _batteryVoltage);
uint16_t dac_getRawAdcAcrossShunt();
uint16_t dac_getCurrentThroughShunt();
uint16_t dac_getVoltageAcrossShunt();
void dac_testFunGen();