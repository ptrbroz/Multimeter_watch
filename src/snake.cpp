

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

#define XSIZE 25
#define YSIZE 6

#define YSTART 2
#define XSTART 0

#define XSTEP 5 // font width

#define SCOREX 70
#define SCOREY 1
#define INITIALSNAKELEN 4

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
struct funWrapper snake_gameover(uint8_t risingByte, uint8_t fallingByte);
struct funWrapper snake_win(uint8_t risingByte, uint8_t fallingByte);


uint8_t getNextDirection(uint8_t currentDirection, uint8_t inputByte, uint8_t defaultDirection);

struct funWrapper snake_init(uint8_t risingByte, uint8_t fallingByte){
    const int area = XSIZE*YSIZE;
    const int bytes = (area*2)/8 + 1;

    oled.setCursor(0,0);
    oled.set2X();
    oled.print("SNAKE!");
    oled.set1X();
    oled.setCursor(SCOREX, SCOREY-1);
    oled.print("Score:");
    oled.setCursor(SCOREX + 6*5, SCOREY);
    oled.print(0);


    snakeBuffer = (uint8_t*) calloc(bytes, 1); //todo sepcify space for extra variables
    headX = 5;
    headY = 3;

    snakeLen = INITIALSNAKELEN;
    headIndex = 0;

    foodX = rand()%5 + headX + 1;
    foodY = rand()%YSIZE;
    
    const uint8_t snakeInit[] = {s_right,s_right,s_right,s_right};

    for(int i = snakeLen-1; i>=0;i--){
        INCREMENT(headIndex);
        writeToSnake(headIndex, snakeInit[i]);
    }

    uint8_t lastDir = readFromSnake(headIndex);
    INCREMENT(headIndex);
    writeToSnake(headIndex, lastDir);
    DECREMENT(headIndex);

    uint8_t bodyIndex = headIndex;
    uint8_t bodyX = headX;
    uint8_t bodyY = headY;
    for(int i = 0; i<snakeLen;i++){
        delay(50);
        printCharToGameDisplay('#',bodyX,bodyY);
        uint8_t dir = readFromSnake(bodyIndex);
        XY_STEPBACK(bodyX, bodyY, dir);
        DECREMENT(bodyIndex);
    }

    funWrapper ret  = {snake_loop};
    return ret;
}

struct funWrapper snake_loop(uint8_t risingByte, uint8_t fallingByte){
    funWrapper ret  = {snake_loop};
    /*
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
    oled.print(" Hxy:[");
    oled.print(headX);
    oled.print(":");
    oled.print(headY);
    oled.print("]");
    */

    printCharToGameDisplay('*', foodX, foodY);

    uint8_t headDirection = readFromSnake(headIndex);

    uint8_t aheadIndex = headIndex;
    INCREMENT(aheadIndex);
    uint8_t defaultDirection = readFromSnake(aheadIndex);

    uint8_t nextDirection = getNextDirection(headDirection, risingByte,defaultDirection);

    writeToSnake(aheadIndex, nextDirection);

    static unsigned long lastMillis = millis();
    unsigned long thisMillis = millis();


    if((thisMillis-lastMillis < 300) && (risingByte==0)){ //don't wait if there is input - hopefully to make controls more responsive
    //if(!BUTT_RIGHT(risingByte)){
        return ret;
    }
    lastMillis = thisMillis;

    INCREMENT(headIndex);
    INCREMENT(headIndex);
    writeToSnake(headIndex,nextDirection);
    DECREMENT(headIndex);
    XY_STEPFORWARD(headX,headY,nextDirection);

    if(headX>=XSIZE || headY >=YSIZE){
        ret.fun = snake_gameover;
        return ret;
    }

    printCharToGameDisplay('#', headX,headY);

    uint8_t foodReady = 1;
    uint8_t eaten = 0;

    if(headX==foodX && headY==foodY){
        foodReady = 0;
        eaten = 1;
        snakeLen++;
        uint8_t offset = 2;
        if(snakeLen-INITIALSNAKELEN>=10) offset--;
        if(snakeLen-INITIALSNAKELEN>=100) offset--;
        oled.setCursor(SCOREX + (3+offset)*5,SCOREY);
        oled.print((snakeLen - INITIALSNAKELEN)*10);

        if(snakeLen >= maxIndex - 5){
            ret.fun = snake_win;
            return ret;
        }

    }

    uint8_t tailX = headX;
    uint8_t tailY = headY;
    uint8_t tailIndex = headIndex;
    uint8_t bittenSelf = 0;

    for(int pass = 0; pass<10; pass++){
        tailX = headX;
        tailY = headY;
        tailIndex = headIndex;

        if(eaten){
            foodX = rand() % XSIZE;
            foodY = rand() % YSIZE;
            foodReady = 1;
        }

        for(int i = 0; i<snakeLen;i++){
            uint8_t dir = readFromSnake(tailIndex);
            DECREMENT(tailIndex);

            if(eaten){
                if(tailX==foodX && tailY==foodY){//food spawned inside snake - invalid
                    foodReady = 0;
                }
            }

            XY_STEPBACK(tailX, tailY, dir);
            
            if(pass==0){ //don't check for self biting on repeated foodgen attempts
                if(tailX==headX && tailY==headY && (i!=snakeLen-1)){ //exclude edge case (when last tail element moves out of way at the moment biting would occur)
                    bittenSelf = 1;
                    ret.fun = snake_gameover;
                    break;
                }
            }
        }

        if(foodReady){
            break;
        }
    }

    if(!foodReady){ //fallback - when random generation fails, place food behind snake.
        foodX = tailX;
        foodY = tailY;
    }


    if(!eaten){
        if(!(tailX==headX && tailY==headY)){
            printCharToGameDisplay(' ', tailX,tailY); //don't clear tail element if head is taking its place
        }
    }
    


    return ret;
}


struct funWrapper snake_gameover(uint8_t risingByte, uint8_t fallingByte){

    delay(500);

    const char charsToPrint[] = {' ', '#'};
    int waitTime = 500;

    for(int i = 0; i<19;i++){
        waitTime = (int) (waitTime * 0.85);
        uint8_t bodyX = headX;
        uint8_t bodyY = headY;
        uint8_t bodyIndex = headIndex;
        delay(waitTime);
        for(int j = 0; j<=snakeLen;j++){
            printCharToGameDisplay(charsToPrint[i%2],bodyX,bodyY);
            uint8_t dir = readFromSnake(bodyIndex);
            DECREMENT(bodyIndex);
            XY_STEPBACK(bodyX, bodyY, dir);
        }
    }
    delay(700);
    oled.setCursor(40,3);
    oled.set2X();
    oled.print("GAME");
    delay(1000);
    oled.setCursor(40,5);
    oled.print("OVER");
    oled.set1X();
    delay(1000);


    

    funWrapper ret = {prog_menu};
    return ret;
}

struct funWrapper snake_win(uint8_t risingByte, uint8_t fallingByte){

    delay(700);
    oled.setCursor(10,3);
    oled.set2X();
    oled.print("CONGRATS!");
    delay(1000);
    oled.setCursor(10,5);
    oled.print("YOU  ");
    delay(1000);
    oled.print("WON!");
    delay(3000);

    funWrapper ret = {prog_menu};
    return ret;
}




uint8_t getNextDirection(uint8_t currentDirection, uint8_t inputByte, uint8_t defaultDirection){
    
    uint8_t nextDir = defaultDirection;

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
