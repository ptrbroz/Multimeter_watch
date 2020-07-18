

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
static uint8_t foodX = 0;
static uint8_t foodY = 0;

#define XSIZE 31
#define YSIZE 6

#define YSTART 2
#define XSTART 0

#define XSTEP 5 // font width

#define s_left 0
#define s_right 1
#define s_up 2
#define s_down 3

void writeToSnake(uint8_t index, uint8_t value){
    uint8_t byte = *(snakeBuffer+(index/4));
    value = value & 0x03; //just to be sure
    value <<= ((index%4)*2);
    byte &= ~(0x03 << (index%4)*2);
    byte |= value;

/*
    oled.setCursor(0,1);
    oled.print("W:");
    printByteToOled(byte);
    oled.setCursor(100,1);
    oled.print("!");
    oled.setCursor(100,1);
    oled.print(" ");
    */

    *(snakeBuffer+(index/4)) = byte;
}

uint8_t readFromSnake(uint8_t index){
    uint8_t byte = *(snakeBuffer+(index/4));
    uint8_t mask = 0x03 << ((index%4)*2);
    return (byte & mask) >> ((index%4)*2);
}

void printCharToGameDisplay(char c, uint8_t x, uint8_t y){
    oled.setCursor(XSTART + x*XSTEP,YSTART + y);
    oled.print(c);
}

const uint8_t maxIndex = XSIZE*YSIZE;
#define INCREMENT(i) i = (i==maxIndex) ? (0) : i + 1
#define DECREMENT(i) i = (i==0) ? (maxIndex) : i - 1

#define XY_STEPBACK(X,Y,DIR){ \
    switch (DIR){  \
    case s_up: Y++;break;   \
    case s_down: Y--;break; \
    case s_left: X++;break; \
    case s_right: X--;break; \
    }\
}\

#define XY_STEPFORWARD(X,Y,DIR){ \
    switch (DIR){  \
    case s_up: Y--;break;   \
    case s_down: Y++;break; \
    case s_left: X--;break; \
    case s_right: X++;break; \
    }\
}\


struct funWrapper snake_loop(uint8_t risingByte, uint8_t fallingByte);

uint8_t getNextDirection(uint8_t currentDirection, uint8_t inputByte);

struct funWrapper snake_init(uint8_t risingByte, uint8_t fallingByte){
    const int area = XSIZE*YSIZE;
    const int bytes = (area*2)/8 + 1;

    
    snakeBuffer = (uint8_t*) calloc(bytes, 1); //todo sepcify space for extra variables
    headX = 8;
    headY = 3;

    snakeLen = 4;
    headIndex = 0;
    
    for(int i = 0; i<snakeLen;i++){
        INCREMENT(headIndex);
        writeToSnake(headIndex, s_right);
        if(i==2){
            writeToSnake(headIndex,s_up);
        }
    }

    uint8_t bodyIndex = headIndex;
    uint8_t bodyX = headX;
    uint8_t bodyY = headY;
    for(int i = 0; i<snakeLen;i++){
        delay(200);
        printCharToGameDisplay('#',bodyX,bodyY);
        uint8_t dir = readFromSnake(bodyIndex);
        XY_STEPBACK(bodyX, bodyY, dir);
        DECREMENT(bodyIndex);
    }

    oled.clear();
    funWrapper ret  = {snake_loop};
    return ret;
}

struct funWrapper snake_loop(uint8_t risingByte, uint8_t fallingByte){
    funWrapper ret  = {snake_loop};
    oled.setCursor(0,0);
    printByteToOled(snakeBuffer[0]);
    oled.print(" ");
    printByteToOled(snakeBuffer[1]);
    oled.setCursor(0,1);
    printByteToOled(snakeBuffer[2]);
    oled.print(" ");
    printByteToOled(snakeBuffer[3]);

    oled.setCursor(0,2);
    oled.print("Hi:");
    oled.print(headIndex);


    oled.setCursor(0,4);
    uint8_t headDirection = readFromSnake(headIndex);

    uint8_t nextDirection = getNextDirection(headDirection, risingByte);

    uint8_t aheadIndex = headIndex;
    INCREMENT(aheadIndex);
    writeToSnake(aheadIndex, nextDirection);

    oled.setCursor(60,2);
    for(int i = 0; i<=5;i++){
        oled.setCursor(60,2+i);
        oled.print(i);
        oled.print(":");
        oled.print(readFromSnake(i));
    }

    static int dones = 0;

    static unsigned long lastMillis = millis();
    unsigned long thisMillis = millis();

    if(!BUTT_RIGHT(risingByte)){
        return ret;
    }

    INCREMENT(headIndex);



    return ret;
}


uint8_t getNextDirection(uint8_t currentDirection, uint8_t inputByte){
    
    uint8_t nextDir = currentDirection;
    if(currentDirection == s_up || currentDirection == s_down){
        if(JOY_LEFT(inputByte)){
            nextDir = s_left;
        }
        else if(JOY_RIGHT(inputByte)){
            nextDir = s_right;
        }
    }
    else{
        if(JOY_UP(inputByte)){
            nextDir = s_up;
        }
        else if(JOY_DOWN(inputByte)){
            nextDir = s_down;
        }

    }
    return nextDir;
}
