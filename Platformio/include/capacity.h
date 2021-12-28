#include <stdint.h>

int measureCapacity3(bool _invertPolarity, uint32_t* _outCapacity);
void dischargeCapacitor();
void testADC11();
float getCapacityFromAdcAndPulseCount(uint16_t _adc, uint16_t _pulseCount);
void getCapacityAsString(float _capacity, char* _outStr, int _maxLen);