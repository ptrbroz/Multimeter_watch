#include "avr/wdt.h"
#include "avr/sleep.h"


#include "display.h"
#include <Arduino.h>
#include "program.h"
#include "rtcUtils.h"
#include "time.h"
#include "buttons.h"
#include "sleepUtils.h"
#include "kitchenTimer.h"
#include "main.h"

#define TIMER_STATE_STOPPED 0
#define TIMER_STATE_RUNNING 1
#define TIMER_STATE_ALARM 2

#define minSetting (*(memPtr+0))
#define secSetting (*(memPtr+1))
#define timerState (*(memPtr+2))
#define displayDeinitialized (*(memPtr+3))

funRetVal kitchenTimer_init( uint8_t *memPtr){
    //TODO: save the original values of the registers
    minSetting=0;
    secSetting=0;
    timerState=0;
    sleep_setTimeTillSleep(-1);//do not sleep
    return CONTINUE_LOOP;
}

funRetVal kitchenTimer_deinit( uint8_t *memPtr){

    sleep_setTimeTillSleep(10000);//do not sleep
    initOled();
    return CONTINUE_LOOP;
}

funRetVal kitchenTimer_loop( uint8_t *memPtr);

const program prog_kitchenTimer = {kitchenTimer_init, kitchenTimer_loop,kitchenTimer_deinit, "Kitchen timer", 4};

funRetVal kitchenTimer_loop( uint8_t *memPtr){

    if (timerState == TIMER_STATE_STOPPED)
    {

        if (JOY_UP(justPressedButtons | autoRepeatPressedButtons))
        {
            minSetting = (minSetting == 59 ? 0 : minSetting + 1);
        }
        if (JOY_DOWN(justPressedButtons | autoRepeatPressedButtons))
        {
            minSetting = (minSetting == 0 ? 59 : minSetting - 1);
        }
        if (JOY_RIGHT(justPressedButtons | autoRepeatPressedButtons))
        {
            secSetting = (secSetting == 59 ? 0 : secSetting + 1);
        }
        if (JOY_LEFT(justPressedButtons | autoRepeatPressedButtons))
        {
            secSetting = (secSetting == 0 ? 59 : secSetting - 1);
        }
        if (BUTT_LEFT(justPressedButtons))
        {
         return PROGRAM_END;
        }
    }
    if (BUTT_RIGHT(justPressedButtons))
    {
        if (timerState == TIMER_STATE_RUNNING || timerState == TIMER_STATE_ALARM)
        {
            timerState = TIMER_STATE_STOPPED;
        }
        else
        {
            timerState = TIMER_STATE_RUNNING;
        }
    }
    /*
    if (BUTT_RIGHT(justPressedButtons))
    {
        struct tm ts = {0};
        ts.tm_hour = hourSetting;
        ts.tm_min = minSetting;
        rtc_setTimeStruct(ts);
        oled.clear();
        oled.setCursor(0, 0);
        oled.set2X();
        oled.println("Time set.");
        oled.set1X();
        delay(1000);
        return PROGRAM_END;
    }
    if (BUTT_LEFT(justPressedButtons))
    {
        oled.setCursor(0, 0);
        oled.clear();
        oled.println("Exiting without change.");
        delay(1000);
        return PROGRAM_END;
    }
    */
    if (timerState == TIMER_STATE_RUNNING)
    {
        if (minSetting == 0 && secSetting == 0)
        {
            // beep beep!
            initOled();
            timerState = TIMER_STATE_ALARM;
        }
        else
        {
            if (secSetting <= 0)
            {
                secSetting = 59;
                minSetting--;
            }
            else
            {
                secSetting--;
            }
            sleep_smartSleepFor1s();
        }
    }
    else if (timerState == TIMER_STATE_ALARM)
    {
        tone(2, 4000, 100);
        delay(1000);
    }

    char temp[20];
    snprintf(temp, 10, "%02d:%02d", minSetting, secSetting);
    oled.set2X();
    oled.setCursor(0, 1);
    oled.print(temp);
    oled.set1X();
    oled.setCursor(0, 3);
    oled.print(F("<^>V: adjust timeout"));
    oled.setCursor(0, 4);
    oled.print(F(">>: start/stop"));
    oled.setCursor(0, 5);
    oled.print(F("<<: exit (once stopped)"));
    return CONTINUE_LOOP;
}

