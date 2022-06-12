

#include "display.h"
#include <Arduino.h>
#include "program.h"
#include "rtcUtils.h"
#include "time.h"
#include "buttons.h"
#include "servoTester.h"
#include "sleepUtils.h"

#define angle (*(memPtr + 0))
#define lastMicros (*((uint32_t*)(memPtr + 1)))//no alignment necessary on an 8-bit mcu

funRetVal servoTester_init(uint8_t *memPtr)
{
    DDRC |= (1 << PC3);
    sleep_setTimeTillSleep(-1);
    setButtonAutoRepeatRate(250,10);
    lastMicros=0;
    return CONTINUE_LOOP;
}

funRetVal servoTester_deinit(uint8_t *memPtr)
{
    DDRC &= (1 << PC3);
    sleep_setTimeTillSleep(10000);
    return CONTINUE_LOOP;
}

const program prog_servoTester = {servoTester_init, servoTester_loop, servoTester_deinit, "Servo tester", 1};

funRetVal servoTester_loop(uint8_t *memPtr)
{
    while(micros()-lastMicros<20000)
    {

    }
    if (JOY_UP(justPressedButtons | autoRepeatPressedButtons))
    {
        angle = (angle == 180 ? 180 : angle + 1);
    }
    if (JOY_DOWN(justPressedButtons | autoRepeatPressedButtons))
    {
        angle = (angle == 0 ? 0 : angle - 1);
    }
    if(BUTT_LEFT(justPressedButtons))
    {
        return PROGRAM_END;
    }

    PORTC |= (1 << PC3);
    const unsigned long correctionFactor=130;//somehow, the delay in microseconds is really inaccurate...
    delayMicroseconds(((1000+((angle*1000UL)/180))*correctionFactor)/100);
    PORTC &= ~(1 << PC3);
    lastMicros=micros();

    oled.set2X();
    oled.setCursor(1, 1);
    char str[20];
    sprintf(str, "angle: %03d", angle);
    oled.print(str);
    oled.set1X();
return CONTINUE_LOOP;
}
