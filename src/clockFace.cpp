

#include "display.h"
#include <Arduino.h>
#include "program.h"

funRetVal clockFace_init(uint8_t risingByte, uint8_t fallingByte){
    return CONTINUE_LOOP;
}

funRetVal clockFace_deinit(uint8_t risingByte, uint8_t fallingByte){
    return CONTINUE_LOOP;
}

funRetVal clockFace_loop(uint8_t risingByte, uint8_t fallingByte){

    //temporary for testing, later via timer interrupt?
    static unsigned long OFFSET = rand();
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

    
    if(risingByte){
        oled.clear();
        return PROGRAM_END;
    }

    return CONTINUE_LOOP;
}


