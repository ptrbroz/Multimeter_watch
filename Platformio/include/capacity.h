#include <stdint.h>
#include "program.h"

float measureCapacity3(bool _invertPolarity,uint16_t _battVoltage);
void dischargeCapacitor();
void testADC11();
float getCapacityFromAdcAndPulseCount(uint16_t _adc, uint16_t _pulseCount,uint16_t _battVoltage);
void getCapacityAsString(float _capacity, char* _outStr, int _maxLen);
extern const program prog_capacity;