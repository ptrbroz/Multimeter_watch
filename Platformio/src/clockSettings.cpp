#include "display.h"
#include "program.h"
#include "clockSettings.h"
#include "buttons.h"
#include "rtcUtils.h"
#include "time.h"

#define hourSetting (*(memPtr+0))
#define minSetting (*(memPtr+1))

const program prog_clockSettings= {clockSettings_init, clockSettings_loop, clockSettings_deinit, "Clock settings", 2};

funRetVal clockSettings_init(uint8_t *memPtr)
{
    oled.clear();
    struct tm ts=rtc_getTimeStruct(true);
    hourSetting=ts.tm_hour;
    minSetting=ts.tm_min;
    return CONTINUE_LOOP;
}

funRetVal clockSettings_loop( uint8_t *memPtr)
{
    if (JOY_UP(justPressedButtons|autoRepeatPressedButtons))
    {
        hourSetting = (hourSetting == 23 ? 0 : hourSetting + 1);
    }
    if (JOY_DOWN(justPressedButtons|autoRepeatPressedButtons))
    {
        hourSetting = (hourSetting == 0 ? 23 : hourSetting - 1);
    }
    if (JOY_RIGHT(justPressedButtons|autoRepeatPressedButtons))
    {
        minSetting = (minSetting == 59 ? 0 : minSetting + 1);
    }
    if (JOY_LEFT(justPressedButtons|autoRepeatPressedButtons))
    {
        minSetting = (minSetting == 0 ? 59 : minSetting - 1);
    }
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
    char temp[50];
    snprintf(temp,50,"%2d:%2d",hourSetting,minSetting);
    oled.set2X();
    oled.setCursor(0,1);
    oled.print(temp);
    oled.set1X();
    return CONTINUE_LOOP;
}

funRetVal clockSettings_deinit(uint8_t *memPtr)
{
    return CONTINUE_LOOP;
}