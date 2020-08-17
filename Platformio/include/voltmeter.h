#include "Arduino.h"
#include "program.h"
funRetVal voltmeter_init(uint8_t *memPtr);
funRetVal voltmeter_loop( uint8_t *memPtr);
funRetVal voltmeter_deinit(uint8_t *memPtr);
uint16_t voltmeter_getRawAdc40VRangeNegativePolarity();
uint16_t voltmeter_getRawAdc40VRangePositivePolarity();
extern const program prog_voltmeter;