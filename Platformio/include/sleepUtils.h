#include "Arduino.h"
#include "PMU.h"
void sleep_sleepTillWakeup();
void sleep_wdtSleep(period_t _period);
void sleep_setTimeTillSleep(int32_t _t);
void sleep_smartSleepFor1s();
extern int32_t timeTillSleep;