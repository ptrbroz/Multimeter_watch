#include "Arduino.h"

int bcdToInt(uint8_t _bcd);
uint8_t intToBcd(int _int);
void rtc_setTimeStruct(struct tm _timeStruct);
struct tm rtc_getTimeStruct(bool _forceUpdate);