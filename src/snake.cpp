

#include "display.h"
#include "funWrapper.h"
#include <Arduino.h>
#include "prog_menu.h"
#include "inputs.h"

static uint8_t *snakeBuffer;

//todo append to snakeBuffer to get rid of static vars?
static uint8_t headIndex = 0;
static uint8_t snakeLen = 0;
static uint8_t headX = 0; //todo to one byte with headY?
static uint8_t headY = 0;

#define XSIZE 31
#define YSIZE 6

#define YSTART 2
#define XSTART 0

#define XSTEP 5 // font width

#define s_left 0
#define s_right 1
#define s_up 2
#define s_down 3

void writeAtIndex(uint8_t value){
    uint8_t byte = *(snakeBuffer+(headIndex/4));
    value = value & 0x03; //just to be sure
    value <<= ((headIndex%4)*2);
    byte |= value;
    oled.setCursor(0,2);
    oled.print("W:");
    printByteToOled(byte);
    *(snakeBuffer+(headIndex/4)) = byte;
}

uint8_t readAtIndex(){
    uint8_t byte = *(snakeBuffer+(headIndex/4));
    uint8_t mask = 0x03 << ((headIndex%4)*2);
    return (byte & mask) >> ((headIndex%4)*2);
}

const uint8_t maxIndex = XSIZE*YSIZE;
#define INCREMENT() headIndex = (headIndex==maxIndex) ? (0) : headIndex + 1
#define DECREMENT() headIndex = (headIndex==0) ? (maxIndex) : headIndex - 1

struct funWrapper snake_loop(uint8_t risingByte, uint8_t fallingByte);


struct funWrapper snake_init(uint8_t risingByte, uint8_t fallingByte){
    const int area = XSIZE*YSIZE;
    const int bytes = (area*2)/8 + 1;

    snakeBuffer = (uint8_t*) malloc(bytes);
    headX = 5;
    headY = 3;

    headIndex = 0;
    uint8_t originalHeadIndex = headIndex;
    snakeLen = 4;

    uint8_t cursorX = XSTEP*headX + XSTART;
    uint8_t cursorY = headY + YSTART;
    oled.clear();

    for(int i = 0;i<snakeLen;i++){
        writeAtIndex(s_left);
        oled.setCursor(cursorX,cursorY);
        oled.print("#");
        cursorX -= XSTEP;
        DECREMENT();
    }

    headIndex = originalHeadIndex;

    //todo spawn food

    funWrapper ret  = {snake_loop};
    return ret;
}

struct funWrapper snake_loop(uint8_t risingByte, uint8_t fallingByte){
    static int loopcount = 0;
    static unsigned long lastMillis = millis(); //todo pass time elapsed by argument instead?
    unsigned long timeElapsed = (millis() - lastMillis);

    funWrapper ret = {snake_loop};

    if(BUTT_LEFT(risingByte)){
        ret.fun = prog_menu;
        return ret;
    }

    uint8_t lastDirection = readAtIndex();

    //todo forbit U-turn on the spot

    //prepare next step of head
    INCREMENT();
    if(JOY_UP(risingByte)){
        writeAtIndex(s_down);
    }
    else if(JOY_DOWN(risingByte)){
        writeAtIndex(s_up);
    }
    else if(JOY_LEFT(risingByte)){
        writeAtIndex(s_right);
    }else if(JOY_RIGHT(risingByte)){
        writeAtIndex(s_left);
    }
    else{
        writeAtIndex(lastDirection);
    }
    DECREMENT();

    

    if(timeElapsed < 1000){
        return ret;
    }
    
    lastMillis = millis();

    //move snake one step ahead
    INCREMENT();

    lastDirection = readAtIndex();

    switch(lastDirection){
        case s_up:
            headY++;
            break;
        case s_down:
            headY--;
            break;
        case s_left:
            headX++;
            break;
        case s_right:
            headX--;
            break;
    }

    //todo check for head out of bounds

    //print new head
    uint8_t cursorX = XSTEP*headX + XSTART; //todo write fun or define for this
    uint8_t cursorY = headY + YSTART;
    oled.setCursor(cursorX, cursorY);

    oled.print("@"); //todo head direction with <>v^ ?

    //todo handle eating

    
    uint8_t originalHeadIndex = headIndex;
    uint8_t bodyX = headX;
    uint8_t bodyY = bodyY;

    
    loopcount++;
    oled.setCursor(0,0);
    oled.print(loopcount);
    oled.print(" xy=[");
    oled.print(headX);
    oled.print(",");
    oled.print(headY);
    oled.print("] hi=");
    oled.print(headIndex);
    

    return ret;
}