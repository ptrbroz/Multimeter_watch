

#include "display.h"
#include <Arduino.h>
#include "program.h"
#include "rtcUtils.h"
#include "time.h"
#include "buttons.h"


funRetVal clockFace_init( uint8_t *memPtr){
    return CONTINUE_LOOP;
}

funRetVal clockFace_deinit( uint8_t *memPtr){
    return CONTINUE_LOOP;
}

funRetVal clockFace_loop( uint8_t *memPtr);

extern const program prog_clockFace PROGMEM = {clockFace_init, clockFace_loop,clockFace_deinit, "Clockface", 0};

funRetVal clockFace_loop( uint8_t *memPtr){

    struct tm ts = rtc_getTimeStruct();

    oled.set2X();
    oled.setCursor(10, 3);
    char str[9];
    sprintf(str, "%02d", ts.tm_hour);
    sprintf(str + 3, "%02d", ts.tm_min);
    sprintf(str + 6, "%02d", ts.tm_sec);
    str[2] = ':';
    str[5] = ':';
    oled.print(str);
    oled.set1X();

    if (justPressedButtons)
    {
        oled.clear();
        return PROGRAM_END;
    }

    return CONTINUE_LOOP;
}


