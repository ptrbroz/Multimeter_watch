#include "Arduino.h"
#include "PMU.h"
void sleep_sleepTillWakeup();
void sleep_wdtSleep(period_t _period);
void sleep_setTimeTillSleep(int32_t _t);
extern int32_t timeTillSleep;