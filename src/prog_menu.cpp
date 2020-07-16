
#include "display.h"
#include "funWrapper.h"
#include <Arduino.h>
#include "prog_clockFace.h"
#include "inputs.h"



//scrolling-capable main menu, supports up to 32 elements
struct funWrapper prog_menu(uint8_t risingByte, uint8_t fallingByte){
    

    static uint8_t menuState = 0x00;
    uint8_t menuCursor = menuState & 0x1F;
    uint8_t cursorPosOnScreen = (menuState & 0xE0) >> 5;
    
    const uint8_t menuElements = 10;
    const uint8_t visibleElements = 6;

    const char *labels[menuElements] = {
        "Help!", "Nothing", "Snake", "Clock", "Nope", "Nah", "NEIN", "Void", "Don't think so", "Last one"};
    
    funWrapper (* funPointers[menuElements])(uint8_t,uint8_t) = {
        prog_menu, prog_menu, prog_menu, prog_clockFace, prog_menu, prog_menu, prog_menu, prog_menu, prog_menu, prog_menu};

    


    uint8_t firstElement = menuCursor - cursorPosOnScreen;


    oled.setCursor(0,0);
    oled.set2X();
    oled.println(":Main Menu:");
    //oled.println(menuCursor);
    oled.set1X();


    //generate menu elements
    for(int i = firstElement; i <= firstElement + visibleElements - 1; i++){
        if(i == menuCursor){
            oled.print(">");
        }
        else{
            oled.print(" ");
        }
        oled.println(labels[i]);
    }


    //scrolling graphics
    const uint8_t scrollLen = visibleElements;
    const uint8_t scrollStartRow = 2;
    const uint8_t scrollX = 110;
    
    const uint8_t menuStepsPerScrollStep = (menuElements-2) / (scrollLen-2);
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



    //handle movement
    if(JOY_DOWN(risingByte) && menuCursor != menuElements-1){
        if(cursorPosOnScreen != visibleElements-1){
            cursorPosOnScreen++;
        }
        else{
            oled.clear(); //clear if scrolling is happening
        }
        menuCursor++;
    }
    else if(JOY_UP(risingByte) && menuCursor != 0){
        if(cursorPosOnScreen != 0){
            cursorPosOnScreen--;
        }
        else{
            oled.clear();
        }
        menuCursor--;
    }


    funWrapper retWrapper = {prog_menu};

    if(JOY_PRESS(risingByte)){
        oled.clear();
        retWrapper.fun = funPointers[menuCursor];
    }


    
    menuState = 0x00;
    menuState |= menuCursor;
    menuState |= (cursorPosOnScreen<<5);


    return retWrapper;
}






