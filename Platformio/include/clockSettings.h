#include "Arduino.h"
#include "program.h"

extern const program prog_clockSettings;
funRetVal clockSettings_init(uint8_t *memPtr);
funRetVal clockSettings_loop(uint8_t *memPtr);
funRetVal clockSettings_deinit(uint8_t *memPtr);