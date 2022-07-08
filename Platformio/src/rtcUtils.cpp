#include "Wire.h"
#include "time.h"
#include "rtcUtils.h"
#define PCF85163T_I2C_ADDR 81

int bcdToInt(uint8_t _bcd)
{
  int units = _bcd & 0b00001111;
  int tens = (_bcd >> 4) & 0b00001111;
  return tens * 10 + units;
}

uint8_t intToBcd(int _int)
{
  int units = _int % 10;
  int tens = _int / 10;
  return ((tens << 4) & 0b11110000) | units;
}

void rtc_setTimeStruct(struct tm _timeStruct)
{
  Wire.beginTransmission(PCF85163T_I2C_ADDR);
  Wire.write(2);
  //Wire.endTransmission(false);
  Wire.write(intToBcd(_timeStruct.tm_sec));
  Wire.write(intToBcd(_timeStruct.tm_min));
  Wire.write(intToBcd(_timeStruct.tm_hour));
  Wire.endTransmission(true);
}

struct tm rtc_getTimeStruct(bool _forceUpdate)
{
  static struct tm retVal = {0};
  static unsigned long lastMillis=0;
  if(millis()-lastMillis<1000)
  {
    return retVal;//simply return the last reading when we are asking too frequently...
  }
  Wire.beginTransmission(PCF85163T_I2C_ADDR);
  Wire.write(2);
  Wire.endTransmission(false);
  Wire.requestFrom(PCF85163T_I2C_ADDR, 3);//seconds, minutes, hours
  int secsByte = Wire.read() & 0b01111111;
  int minsByte = Wire.read() & 0b01111111;
  int hoursByte = Wire.read() & 0b00111111;
  retVal.tm_hour = bcdToInt(hoursByte);
  retVal.tm_min = bcdToInt(minsByte);
  retVal.tm_sec = bcdToInt(secsByte);
  //TODO: handle other stuff too!
  return retVal;
}