
#include "display.h"
#include <Arduino.h>
#include "clockFace.h"
#include "buttons.h"
#include "snake.h"
#include "program.h"
#include "stopwatch.h"
#include "clockSettings.h"
#include "keyboardTest.h"
#include "linearPowerSupply.h"
#include "voltmeter.h"
#include "waveformGenerator.h"
#include "ncvDetector.h"
#include "formula1.h"
#include "kitchenTimer.h"
#include "servoTester.h"


const uint8_t menuElements = 12;
const uint8_t visibleElements = 6;

const uint8_t scrollLen = visibleElements;
const uint8_t scrollStartRow = 2;
const uint8_t scrollX = 120;    
const uint8_t menuStepsPerScrollStep = (menuElements-2) / (scrollLen-2);

void drawScrollbar(uint8_t menuCursor);

program prog_placeHolder = {NULL, NULL, NULL, "Placeholder", 0};

//scrolling-capable main menu, supports up to 32 elements
funRetVal menu(uint8_t *unusedMemoryPointer){ //null memory pointer passed to menu to keep signature same as program funs 
    if(justPressedButtons==0&&justReleasedButtons==0&&autoRepeatPressedButtons==0)
    {
        return CONTINUE_LOOP;
    }
    
    static uint8_t menuState = 0x00;
    uint8_t menuCursor = menuState & 0x1F;
    uint8_t cursorPosOnScreen = (menuState & 0xE0) >> 5;
    
    
    program programArray[menuElements] = {
                                        prog_stopWatch,
                                        prog_clockFace,
                                        prog_clockSettings,
                                        prog_snake, 
                                        prog_KeyboardTest,
                                        prog_linearPowerSupply,
                                        prog_voltmeter,
                                        prog_wfg,
                                        prog_ncv,
                                        prog_f1,
                                        prog_kitchenTimer,
                                        prog_servoTester
                                        };


    


    uint8_t firstElement = menuCursor - cursorPosOnScreen;


    oled.setCursor(0,0);
    oled.set2X();
    oled.println(":Main Menu:");
    oled.set1X();

    const uint8_t padToLen = 19;
    //generate menu elements
    for(int i = firstElement; i <= firstElement + visibleElements - 1; i++){
        if(i == menuCursor){
            oled.print(">");
        }
        else{
            oled.print(" ");
        }
        oled.print(programArray[i].name);
        if(strlen(programArray[i].name) < padToLen){
            uint8_t missingSpaces = padToLen - strlen(programArray[i].name); 
            for(int i = 0; i<missingSpaces;i++){
                oled.print(" ");
            }
        }
        oled.println();
     }


    //scrolling graphics
    drawScrollbar(menuCursor);

    //handle movement
    if(JOY_DOWN(justPressedButtons|autoRepeatPressedButtons) && menuCursor != menuElements-1){
        if(cursorPosOnScreen != visibleElements-1){
            cursorPosOnScreen++;
        }
        menuCursor++;
    }
    else if(JOY_UP(justPressedButtons|autoRepeatPressedButtons) && menuCursor != 0){
        if(cursorPosOnScreen != 0){
            cursorPosOnScreen--;
        }
        menuCursor--;
    }

    funRetVal ret = CONTINUE_LOOP;

    if(BUTT_RIGHT(justPressedButtons)){
        oled.clear();
        setProgram(programArray[menuCursor]);
        ret = PROGRAM_START;        
    }


    menuState = 0x00;
    menuState |= menuCursor;
    menuState |= (cursorPosOnScreen<<5);


    return ret;
}


void drawScrollbar(uint8_t menuCursor){
    int8_t scrollHandlePos = 0;

    //edge cases - cursor on first or last element - scroll handle at edge
    oled.setCursor(scrollX,scrollStartRow);
    if(menuCursor==0){
        oled.print("@");
        scrollHandlePos = -1;
    }
    else{
        oled.print("^");
    }

    oled.setCursor(scrollX,scrollStartRow+scrollLen-1);
    if(menuCursor==menuElements-1){
        oled.print("@");
        scrollHandlePos = -1;
    }
    else{
        oled.print("v");
    }

    if(scrollHandlePos!=-1){
        scrollHandlePos = (menuCursor-1)/menuStepsPerScrollStep;
    }


    for(int i = 0; i < scrollLen-2; i++){
         oled.setCursor(scrollX,scrollStartRow+1+i);
         if(i==scrollHandlePos){
            oled.print("@");
         }
         else{
            oled.print("|");
         }

    }
}



