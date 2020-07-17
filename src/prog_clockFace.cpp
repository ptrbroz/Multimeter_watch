

#include "display.h"
#include "funWrapper.h"
#include <Arduino.h>
#include "prog_menu.h"



struct funWrapper prog_clockFace(uint8_t risingByte, uint8_t fallingByte){
    
    //temporary for testing, later via timer interrupt?
    const unsigned long OFFSET = 7000000;
    unsigned long thisMillis = millis() + OFFSET;
    int seconds = thisMillis / 1000;
    int minutes = seconds / 60;
    int hours = minutes / 60;
    minutes = minutes % 60;
    seconds = seconds % 60;

    
    static uint8_t lastSeconds = 0;
    
    if(seconds != lastSeconds){
        oled.set2X();
        oled.setCursor(10, 3);
        char string[9];
        sprintf(string, "%02d", hours);
        sprintf(string + 3, "%02d", minutes);
        sprintf(string + 6, "%02d", seconds);
        string[2] = ':';
        string[5] = ':';
        oled.print(string);
        oled.set1X();
        lastSeconds = seconds;
    }


    funWrapper retWrapper = {prog_clockFace};
    
    if(risingByte){
        retWrapper.fun = prog_menu;
        oled.clear();
    }

    return retWrapper;
}


