#include "Arduino.h"

extern const program prog_ohmmeter;
funRetVal ohmmeter_init(uint8_t *memPtr);
funRetVal ohmmeter_loop( uint8_t *memPtr);
funRetVal ohmmeter_deinit(uint8_t *memPtr);
uint16_t ohmmeter_getRawADCLowRange();
uint16_t ohmmeter_getRawAdcHighRange();