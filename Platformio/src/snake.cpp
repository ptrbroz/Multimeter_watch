

#include "display.h"
#include <Arduino.h>
#include "buttons.h"
#include "program.h"

funRetVal snake_loop( uint8_t *snakeBuffer);
funRetVal snake_gameover( uint8_t *snakeBuffer);
funRetVal snake_win( uint8_t *snakeBuffer);
funRetVal snake_init( uint8_t *snakeBuffer);
funRetVal snake_deinit( uint8_t *snakeBuffer);

#define XSIZE 25
#define YSIZE 6
#define MAXINDEX XSIZE*YSIZE
#define MAXSNAKEBYTE (MAXINDEX*2)/8 + 1

#define SNAKETIME 400 //miliseconds between forced moves

#define PSEUDOSTATIC_BYTES 6 + sizeof(unsigned long)//one for each converted static uint8_t variable, one for lastMillis()

extern const program prog_snake = {snake_init, snake_loop, snake_deinit, "Snake", MAXSNAKEBYTE+PSEUDOSTATIC_BYTES};

//pseudostatic variables
#define headIndex   (*(snakeBuffer+MAXSNAKEBYTE+0))
#define snakeLen    (*(snakeBuffer+MAXSNAKEBYTE+1))
#define headX       (*(snakeBuffer+MAXSNAKEBYTE+2))
#define headY       (*(snakeBuffer+MAXSNAKEBYTE+3))
#define foodX       (*(snakeBuffer+MAXSNAKEBYTE+4))
#define foodY       (*(snakeBuffer+MAXSNAKEBYTE+5))
#define lastMillis  (*( (unsigned long *)  (snakeBuffer+MAXSNAKEBYTE+6))  )

#define YSTART 2
#define XSTART 0

#define XSTEP 5 // font width

#define SCOREX 90
#define SCOREY 1
#define INITIALSNAKELEN 4

#define s_left 0
#define s_right 1
#define s_up 2
#define s_down 3

void writeToSnake(uint8_t index, uint8_t value, uint8_t *snakeBuffer){
    uint8_t byte = *(snakeBuffer+(index/4));
    value = value & 0x03; //just to be sure
    value <<= ((index%4)*2);
    byte &= ~(0x03 << (index%4)*2);
    byte |= value;
    *(snakeBuffer+(index/4)) = byte;
}

uint8_t readFromSnake(uint8_t index, uint8_t *snakeBuffer){
    uint8_t byte = *(snakeBuffer+(index/4));
    uint8_t mask = 0x03 << ((index%4)*2);
    return (byte & mask) >> ((index%4)*2);
}

void printCharToGameDisplay(char c, uint8_t x, uint8_t y){
    oled.setCursor(XSTART + x*XSTEP,YSTART + y);
    oled.print(c);
}

#define INCREMENT(i) i = (i==MAXINDEX) ? (0) : i + 1
#define DECREMENT(i) i = (i==0) ? (MAXINDEX) : i - 1

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




uint8_t getNextDirection(uint8_t currentDirection, uint8_t inputByte, uint8_t defaultDirection);

funRetVal snake_deinit( uint8_t *snakeBuffer){
    return CONTINUE_LOOP;
}

funRetVal snake_init( uint8_t *snakeBuffer){
    oled.setCursor(0,0);
    oled.set2X();
    oled.print("SNAKE!");
    oled.set1X();
    oled.setCursor(SCOREX, SCOREY-1);
    oled.print("Score:");
    oled.setCursor(SCOREX + 6*5, SCOREY);
    oled.print(0);

    headX = 5;
    headY = 3;

    snakeLen = INITIALSNAKELEN;
    headIndex = 0;
    lastMillis = millis();

    foodX = rand()%5 + headX + 1;
    foodY = rand()%YSIZE;
    
    const uint8_t snakeInit[] = {s_right,s_right,s_right,s_right};

    for(int i = snakeLen-1; i>=0;i--){
        INCREMENT(headIndex);
        writeToSnake(headIndex, snakeInit[i], snakeBuffer);
    }

    uint8_t lastDir = readFromSnake(headIndex, snakeBuffer);
    INCREMENT(headIndex);
    writeToSnake(headIndex, lastDir, snakeBuffer);
    DECREMENT(headIndex);

    uint8_t bodyIndex = headIndex;
    uint8_t bodyX = headX;
    uint8_t bodyY = headY;
    for(int i = 0; i<snakeLen;i++){
        delay(50);
        printCharToGameDisplay('#',bodyX,bodyY);
        uint8_t dir = readFromSnake(bodyIndex, snakeBuffer);
        XY_STEPBACK(bodyX, bodyY, dir);
        DECREMENT(bodyIndex);
    }

    return CONTINUE_LOOP;
}

funRetVal snake_loop( uint8_t *snakeBuffer){

    printCharToGameDisplay('*', foodX, foodY);

    uint8_t headDirection = readFromSnake(headIndex, snakeBuffer);

    uint8_t aheadIndex = headIndex;
    INCREMENT(aheadIndex);
    uint8_t defaultDirection = readFromSnake(aheadIndex, snakeBuffer);

    uint8_t nextDirection = getNextDirection(headDirection, justPressedButtons, defaultDirection);

    writeToSnake(aheadIndex, nextDirection, snakeBuffer);

    unsigned long thisMillis = millis();


    if((thisMillis-lastMillis < SNAKETIME) && (justPressedButtons==0)){ //don't wait if there is input - hopefully to make controls more responsive
        return CONTINUE_LOOP;
    }
    lastMillis = thisMillis;

    INCREMENT(headIndex);
    INCREMENT(headIndex);
    writeToSnake(headIndex,nextDirection, snakeBuffer);
    DECREMENT(headIndex);
    XY_STEPFORWARD(headX,headY,nextDirection);

    if(headX>=XSIZE || headY >=YSIZE){
        setLoopFun(snake_gameover);
        return CONTINUE_LOOP;
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

        if(snakeLen >= MAXINDEX - 5){
            setLoopFun(snake_win);
            return CONTINUE_LOOP;
        }

    }

    uint8_t tailX = headX;
    uint8_t tailY = headY;
    uint8_t tailIndex = headIndex;

    for(int pass = 0; pass<10; pass++){
        tailX = headX;
        tailY = headY;
        tailIndex = headIndex;

        if(eaten){
            foodX = rand() % XSIZE;
            foodY = rand() % YSIZE;
            foodReady = 1;
        }

        //backiterate through snake
        for(int i = 0; i<snakeLen;i++){
            uint8_t dir = readFromSnake(tailIndex,snakeBuffer);
            DECREMENT(tailIndex);

            if(eaten){
                if(tailX==foodX && tailY==foodY){//food spawned inside snake - invalid
                    foodReady = 0;
                }
            }

            XY_STEPBACK(tailX, tailY, dir);
            
            if(pass==0){ //don't check for self biting on repeated foodgen attempts
                if(tailX==headX && tailY==headY && (i!=snakeLen-1)){ //exclude edge case (when last tail element moves out of way at the moment biting would occur)
                    setLoopFun(snake_gameover);
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
    


    return CONTINUE_LOOP;
}


funRetVal snake_gameover(uint8_t *snakeBuffer){

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
            uint8_t dir = readFromSnake(bodyIndex,snakeBuffer);
            DECREMENT(bodyIndex);
            XY_STEPBACK(bodyX, bodyY, dir);
        }
    }
    delay(700);
    oled.setCursor(40,3);
    oled.set2X();
    oled.print(F("GAME"));
    delay(1000);
    oled.setCursor(40,5);
    oled.print("OVER");
    oled.set1X();
    delay(1000);


    
    return PROGRAM_END;
}

funRetVal snake_win(uint8_t *snakeBuffer){

    delay(700);
    oled.setCursor(10,3);
    oled.set2X();
    oled.print("CONGRATS!");
    delay(1000);
    oled.setCursor(10,5);
    oled.print("YOU  ");
    delay(1000);
    oled.print("WON!");
    delay(4000);


    return PROGRAM_END;
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



