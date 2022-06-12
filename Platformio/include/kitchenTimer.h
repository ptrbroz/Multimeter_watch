#include "Arduino.h"
#include "program.h"

extern const program prog_kitchenTimer;
funRetVal kitchenTimer_init(uint8_t *memPtr);
funRetVal kitchenTimer_loop(uint8_t *memPtr);
funRetVal kitchenTimer_deinit(uint8_t *memPtr);
void wdtTest();