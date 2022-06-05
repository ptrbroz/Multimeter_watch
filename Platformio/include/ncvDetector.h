
#include "Arduino.h"
#include "program.h"
uint16_t ncv_getLevel();
extern const program prog_ncv;
funRetVal ncv_init(uint8_t *memPtr);
funRetVal ncv_loop(uint8_t *memPtr);
funRetVal ncv_deinit(uint8_t *memPtr);