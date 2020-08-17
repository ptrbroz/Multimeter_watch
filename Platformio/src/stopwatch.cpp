#include "display.h"
#include <Arduino.h>
#include "buttons.h"
#include "program.h"
#include <limits.h>
#include "main.h"


//static uint8_t *dataBuffer;

#define exitMenuPos          (*(memPtr+0))
#define running              (*(memPtr+1))
#define scrollPos            (*(memPtr+2))
#define measureIndex         (*(memPtr+3))
#define offsetMillis         (*( (unsigned long *)  (memPtr + 4 + 0*sizeof(unsigned long)))  )
#define lastMillis           (*( (unsigned long *)  (memPtr + 4 + 1*sizeof(unsigned long)))  )
#define warningStart         (*( (unsigned long *)  (memPtr + 4 + 2*sizeof(unsigned long)))  )
#define measureStart         (*( (unsigned long *)  (memPtr + 4 + 3*sizeof(unsigned long)))  )
#define measuresArray        ( ( (unsigned long *)  (memPtr + 4 + 4*sizeof(unsigned long)))  )

#define maxMeasureCount 30

#define showWarningTime 5000 //milliseconds



void printDiffToHeader(unsigned long startMillis, unsigned long endMillis);
funRetVal stopWatch_init( uint8_t *memPtr);
funRetVal stopWatch_loop( uint8_t *memPtr);
funRetVal stopWatch_deinit( uint8_t *memPtr);
funRetVal stopWatch_beforeExit( uint8_t *memPtr);


extern const program prog_stopWatch = {stopWatch_init, stopWatch_beforeExit, stopWatch_deinit, "Stopwatch", 4 + (4 + maxMeasureCount)*sizeof(unsigned long)};



funRetVal stopWatch_init( uint8_t *memPtr){
    //dataBuffer = (uint8_t*) calloc(4 + (4 + maxMeasureCount)*sizeof(unsigned long), 1); 
    oled.clear();
    //preprint separation in header manually (when printed at const. width, it won't fit)
    oled.set2X();
    oled.setCursor(20,0);
    oled.print(":");
    oled.setCursor(48,0);
    oled.print(":");
    oled.setCursor(76,0);
    oled.print(".");
    oled.set1X();
    oled.setCursor(0, 6);
    printDiffToHeader(0,0);
    setTimeTillSleep(-1);//do not sleep
    return CONTINUE_LOOP;
}

funRetVal stopWatch_deinit( uint8_t *memPtr){
    //free(dataBuffer);

    setTimeTillSleep(10000);//do not sleep
    return CONTINUE_LOOP;
}

void printDiffToHeader(unsigned long startMillis, unsigned long endMillis){
    unsigned long millisDiff = endMillis - startMillis;
    int milliseconds = millisDiff % 1000;
    int seconds = millisDiff / 1000;
    int minutes = seconds / 60;
    uint8_t hours = minutes / 60;
    seconds %= 60;
    minutes %= 60;
    hours %= 24;
    char string[5];

    oled.set2X();
    sprintf(string, "%02d", hours);
    oled.setCursor(0,0);
    oled.print(string);
    
    sprintf(string, "%02d", minutes);
    oled.setCursor(28,0);
    oled.print(string);

    sprintf(string, "%02d", seconds);
    oled.setCursor(56,0);
    oled.print(string);

    sprintf(string, "%03d", milliseconds);
    oled.setCursor(86,0);
    oled.print(string);

}

void printSavedMeasures(uint8_t *memPtr){
    oled.set1X();
    oled.setCursor(0,2);
    
    char string[40];

    for(int i = scrollPos, j = 0; i<maxMeasureCount && j<6; i++,j++){
        if(measuresArray[i]==0){
            sprintf(string, "T%02d                             ", i+1);
            oled.println(string);
            continue;
        }
        int milliseconds = measuresArray[i] % 1000;
        int seconds = measuresArray[i] / 1000;
        int minutes = seconds / 60;
        uint8_t hours = minutes / 60;
        seconds %= 60;
        minutes %= 60;
        hours %= 24;
        sprintf(string, "T%02d  %02d:%02d:%02d.%03d    ", i+1, hours, minutes, seconds, milliseconds);
        oled.println(string);
    }
    

    
}

void printWarning(){
    oled.set1X();
    oled.setCursor(0,2);
    oled.println("#-------------------#  ");
    oled.println("|    ~ WARNING ~    |  ");
    oled.println("|Out of memory! Next|  ");
    oled.println("|save will overwrite|  ");
    oled.println("|   the first one!  |  ");
    oled.println("#-------------------#  ");
}



funRetVal stopWatch_beforeExit( uint8_t *memPtr){
    oled.set1X();
    oled.setCursor(0,2);
    oled.println("Which action to take?");
    const char* menuItems[] = {"Do nothing          ",
                               "Exit program        ",
                               "Clear current time  ",
                               "Clear saved times   ",
                               "Clear both          "}; //todo convert to correct string handling? (Hen?)
    for(int i = 0; i<5;i++){
        if(i==exitMenuPos){
            oled.print(">");
        }
        else{
            oled.print(" ");
        }
        oled.println(menuItems[i]);
    }

    if(JOY_DOWN(justPressedButtons)){
        exitMenuPos = (exitMenuPos<4) ? exitMenuPos + 1 : 0;
    }
    else if(JOY_UP(justPressedButtons)){
        exitMenuPos = (exitMenuPos>0) ? exitMenuPos - 1 : 4;
    }

    if(BUTT_RIGHT(justPressedButtons)){
        switch (exitMenuPos){
        
        case 1:
            return PROGRAM_END;
        case 2:
            measureStart = 0;
            offsetMillis = 0;
            printDiffToHeader(0,0);
        case 0:
            setLoopFun(stopWatch_loop);
            return CONTINUE_LOOP;
        case 4:
            measureStart = 0;
            offsetMillis = 0;
            printDiffToHeader(0,0);
        case 3:
            for(int i = 0; i<maxMeasureCount;i++){
                measuresArray[i] = 0;
            }
            measureIndex = 0;
            setLoopFun(stopWatch_loop);
            return CONTINUE_LOOP;
        }
    }

    return CONTINUE_LOOP;
}

funRetVal stopWatch_loop( uint8_t *memPtr){

    unsigned long thisMillis = millis();

    oled.set1X();

    if(running){
        printDiffToHeader(measureStart, thisMillis + offsetMillis);
    }

    if(warningStart){
        if(thisMillis - warningStart > showWarningTime){
            warningStart = 0;
        }
    }

    if(!warningStart){
        printSavedMeasures(memPtr);
    }
    

    if(!running){
        if(BUTT_RIGHT(justPressedButtons)){
            running = 1;
            measureStart = thisMillis;
        }
        else if(BUTT_LEFT(justPressedButtons)){
            exitMenuPos = 0;
            setLoopFun(stopWatch_beforeExit);            
        }
    }
    else{//running
        if(BUTT_RIGHT(justPressedButtons)){
            //save
            measuresArray[measureIndex] = thisMillis + offsetMillis - measureStart;
            measureIndex++;
            scrollPos = (measureIndex - 6 >= 0) ? measureIndex - 6 : 0;
            if(measureIndex == maxMeasureCount){
                measureIndex = 0;
                printWarning();
                warningStart = thisMillis; //yea, this'll fail once in a million years when thisMillis happens to be zero at the moment of running out of memory slots, but who cares
            }
        }
        else if(BUTT_LEFT(justPressedButtons)){
            running = 0;
            offsetMillis += thisMillis - measureStart; //todo worry about overflow?
        }
    }

    if(JOY_DOWN(justPressedButtons)){
        if(++scrollPos >= maxMeasureCount-5){
            scrollPos--;
        }
    }

    if(JOY_UP(justPressedButtons)){
        if(scrollPos-- == 0){
            scrollPos = 0;
        }
    }


    return CONTINUE_LOOP;
}

