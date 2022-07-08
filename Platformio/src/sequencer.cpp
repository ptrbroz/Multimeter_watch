#include "display.h"
#include "program.h"
#include "clockSettings.h"
#include "buttons.h"
#include "rtcUtils.h"
#include "time.h"
#include "sequencer.h"
#include "sleepUtils.h"
#include "rtcUtils.h"
#include "main.h"
#include "dacUtils.h"

#define cursorScreenPos (*(memPtr+0))
#define firstLineOnScreenIndex (*(memPtr+1))
#define progCounter (*(memPtr+2))
#define mode (*(memPtr+3))
#define v1 (*(uint32_t*)(memPtr+4))
#define v2 (*(uint32_t*)(memPtr+8))
#define v3 (*(uint16_t*)(memPtr+12))
#define v4 (*(uint16_t*)(memPtr+14))

#define SEQ_MENU_ITEM_ON_SCREEN_COUNT 5
#define SEQ_MENU_ITEM_COUNT 10

#define SEQ_MODE_MENU 0
#define SEQ_MODE_EDIT 1
#define SEQ_MODE_RUN 2

typedef void (*codeLinePrintCB)(int32_t);
typedef uint8_t (*codeLineExecCB)(uint8_t*, int32_t);


void pcb_doNothing(int32_t _param);
uint8_t ecb_doNothing(uint8_t* memPtr, int32_t _param);
void pcb_beepForSeconds(int32_t _param);
uint8_t ecb_beepForSeconds(uint8_t* memptr, int32_t _param);
void pcb_waitForSeconds(int32_t _param);
uint8_t ecb_waitForSeconds(uint8_t* memptr, int32_t _param);
void pcb_resetSequence(int32_t _param);
uint8_t ecb_resetSequence(uint8_t* memptr, int32_t _param);
void pcb_waitUntilTime(int32_t _param);
uint8_t ecb_waitUntilTime(uint8_t* memptr, int32_t _param);

void pcb_waitForButtonPress(int32_t _param);
uint8_t ecb_waitForButtonPress(uint8_t* memptr, int32_t _param);
void pcb_setDAC(int32_t _param);
uint8_t ecb_setDAC(uint8_t* memptr, int32_t _param);

codeLinePrintCB printCallbacks[]={pcb_doNothing, pcb_beepForSeconds,pcb_waitForSeconds,pcb_waitUntilTime,pcb_waitForButtonPress,pcb_setDAC,pcb_resetSequence};
codeLineExecCB execCallbacks[]={ecb_doNothing, ecb_beepForSeconds,ecb_waitForSeconds,ecb_waitUntilTime,ecb_waitForButtonPress,ecb_setDAC,ecb_resetSequence};

#define LOC_TYPE_COUNT sizeof(execCallbacks)/sizeof(execCallbacks[0])

#define codeLineArr ((struct codeLine*)(memPtr+16))

#define SEQ_CONTINUE 0
#define SEQ_BLOCK 1

const program prog_sequencer= {seq_init, seq_loop, seq_deinit, "Sequencer", 1+1+1+1+(2*sizeof(uint32_t))+(2*sizeof(uint16_t))+SEQ_MENU_ITEM_COUNT*sizeof(codeLine)};

void pcb_doNothing(int32_t _param)
{
    oled.print(F("(do nothing)"));
}

uint8_t ecb_doNothing(uint8_t* memptr, int32_t _param)
{
    //do nothing
    return SEQ_CONTINUE;
}

void pcb_waitUntilTime(int32_t _param)
{
    oled.print(F("await "));
    char temp[9];
    _param=((uint32_t) _param)%(24*60);
    uint8_t theHour=_param/60;
    uint8_t theMin=_param%60;
    snprintf(temp, 9,"%02d:%02d",theHour,theMin);
    oled.print(temp);

    struct tm currentTime=rtc_getTimeStruct(false);
    theHour=currentTime.tm_hour;
    theMin=currentTime.tm_min;
    oled.print(F("("));
    snprintf(temp, 9,"%02d:%02d",theHour,theMin);
    oled.print(temp);
    oled.print(F(")"));
}

uint8_t ecb_waitUntilTime(uint8_t* memptr, int32_t _param)
{
    uint8_t theHour=_param/60;
    uint8_t theMin=_param%60;
    struct tm currentTime=rtc_getTimeStruct(true);
    if(currentTime.tm_hour==theHour && currentTime.tm_min==theMin)
    {
        return SEQ_CONTINUE;
    }
    sleep_smartSleepFor1s();
    return SEQ_BLOCK;
}

void pcb_waitForButtonPress(int32_t _param)
{
    oled.print(F("Wait for "));
    const char* buttonsList="<^>v";
    _param=(((uint32_t)_param)%4);
    char temp[2];
    temp[1]='\0';
    temp[0]=buttonsList[_param];
    oled.print(temp);
    oled.print(F(" press"));
}

uint8_t ecb_waitForButtonPress(uint8_t* memptr, int32_t _param)
{
    _param=(((uint32_t)_param)%4);
    if(_param==0&&JOY_LEFT(justReleasedButtons))
    {
        return SEQ_CONTINUE;
    }
    if(_param==1&&JOY_UP(justReleasedButtons))
    {
        return SEQ_CONTINUE;
    }
    if(_param==2&&JOY_RIGHT(justReleasedButtons))
    {
        return SEQ_CONTINUE;
    }
    if(_param==3&&JOY_DOWN(justReleasedButtons))
    {
        return SEQ_CONTINUE;
    }
    return SEQ_BLOCK;
}

void pcb_setDAC(int32_t _param)
{
    _param=(((uint32_t)_param)%255);
    oled.print(F("set DAC to "));
    oled.print(_param);
}

uint8_t ecb_setDAC(uint8_t* memptr, int32_t _param)
{
    _param=(((uint32_t)_param)%255);
    dac_output=_param;
}

void pcb_beepForSeconds(int32_t _param)
{
    _param=(uint32_t)_param;
    _param=_param%600;
    oled.print(F("Beep for "));
    oled.print(_param);
    oled.print(F(" s"));
}

uint8_t ecb_beepForSeconds(uint8_t* memPtr, int32_t _param)
{
    _param=_param%600;
    if(v1==0)
    {
        v1=millis();
        tone(2,4000);
        return SEQ_BLOCK;
    }
    if(millis()-v1>(_param*1000UL))
    {
        noTone(2);
        return SEQ_CONTINUE;
    }
    return SEQ_BLOCK;
}

void pcb_waitForSeconds(int32_t _param)
{
    _param=(uint32_t)_param;
    _param=_param%600;
    oled.print(F("Wait for "));
    oled.print(_param);
    oled.print(F(" s"));
}

uint8_t ecb_waitForSeconds(uint8_t* memPtr, int32_t _param)
{
    _param=_param%600;
    if(v1>=_param)
    {
        return SEQ_CONTINUE;
    }
    sleep_smartSleepFor1s();
    v1++;
    return SEQ_BLOCK;
}

void pcb_resetSequence(int32_t _param)
{
    oled.print(F("Reset sequence"));
}

uint8_t ecb_resetSequence(uint8_t* memPtr, int32_t _param)
{
    progCounter=0;
    return SEQ_BLOCK;//so we do not increment the program counter
}

funRetVal seq_init(uint8_t *memPtr)
{
    dac_init();
    oled.clear();
    cursorScreenPos=0;
    firstLineOnScreenIndex=0;
    sleep_setTimeTillSleep(-1);
    setButtonAutoRepeatRate(500,5);
    for(int i=0;i<SEQ_MENU_ITEM_COUNT;i++)
    {
        codeLineArr[i]={0,0};
    }
    return CONTINUE_LOOP;
}

funRetVal seq_loop( uint8_t *memPtr)
{
    int locIndex=0;
    switch (mode)
    {
    case SEQ_MODE_MENU:
        noTone(2);
        if (JOY_UP(justPressedButtons | autoRepeatPressedButtons))
        {
            if (cursorScreenPos == 0)
            {
                firstLineOnScreenIndex = (firstLineOnScreenIndex == 0 ? 0 : firstLineOnScreenIndex - 1);
            }
            else
            {
                cursorScreenPos -= 1;
            }
        }
        if (JOY_DOWN(justPressedButtons | autoRepeatPressedButtons))
        {
            if (cursorScreenPos == SEQ_MENU_ITEM_ON_SCREEN_COUNT - 1)
            {
                if (firstLineOnScreenIndex + SEQ_MENU_ITEM_ON_SCREEN_COUNT <= SEQ_MENU_ITEM_COUNT)
                {
                    firstLineOnScreenIndex += 1;
                }
            }
            else
            {
                cursorScreenPos += 1;
            }
        }
        if (JOY_RIGHT(justPressedButtons | autoRepeatPressedButtons))
        {
            mode = SEQ_MODE_EDIT;
            oled.clear();
            return CONTINUE_LOOP;
        }
        if (BUTT_RIGHT(justPressedButtons))
        {
            Serial.println("Running!");
            mode = SEQ_MODE_RUN;
            v1=v2=v3=v4=0;
            progCounter=0;
            oled.clear();
            return CONTINUE_LOOP;
        }
        if(BUTT_LEFT(justPressedButtons))
        {
            return PROGRAM_END;

        }
        seq_drawMenu(memPtr);
        break;
    case SEQ_MODE_EDIT:
        locIndex = cursorScreenPos + firstLineOnScreenIndex;
        if (JOY_UP(justPressedButtons | autoRepeatPressedButtons))
        {
            codeLineArr[locIndex].param++;
        }
        else if (JOY_DOWN(justPressedButtons | autoRepeatPressedButtons))
        {
            codeLineArr[locIndex].param--;
        }
        else if (JOY_LEFT(justPressedButtons | autoRepeatPressedButtons))
        {
            codeLineArr[locIndex].functionIndex = (codeLineArr[locIndex].functionIndex > 0 ? codeLineArr[locIndex].functionIndex - 1 : 0);
        }
        else if (JOY_RIGHT(justPressedButtons | autoRepeatPressedButtons))
        {
            codeLineArr[locIndex].functionIndex = (codeLineArr[locIndex].functionIndex < LOC_TYPE_COUNT-1 ? codeLineArr[locIndex].functionIndex + 1 : LOC_TYPE_COUNT-1);
        }
        else if (BUTT_RIGHT(justPressedButtons | autoRepeatPressedButtons))
        {
            mode = SEQ_MODE_MENU;
            oled.clear();
            return CONTINUE_LOOP;
        }
        oled.setCursor(0,0);
        printCallbacks[codeLineArr[locIndex].functionIndex](codeLineArr[locIndex].param); // call the function to print the line of code currently being edited
        oled.clearToEOL();

        break;
    case SEQ_MODE_RUN:
        if (BUTT_RIGHT(justPressedButtons))
        {
            Serial.println("Exiting!");
            mode=SEQ_MODE_MENU;
            return CONTINUE_LOOP;
        }
        //Serial.println("RUN");
        oled.setCursor(0,0);
        printCallbacks[codeLineArr[progCounter].functionIndex](codeLineArr[progCounter].param); //print the currently exectued function
        oled.clearToEOL();
        //Serial.println(progCounter);
        //Serial.println(codeLineArr[progCounter].functionIndex);
        uint8_t returnedValue=execCallbacks[codeLineArr[progCounter].functionIndex](memPtr,codeLineArr[progCounter].param);//execute the current LOC
        if(returnedValue==SEQ_CONTINUE)
        {
            v1=v2=v3=v4=0;
            progCounter++;
            if(progCounter>=SEQ_MENU_ITEM_COUNT)
            {
                mode=SEQ_MODE_MENU;
                initOled();
                return CONTINUE_LOOP;
            }
        }
        break;
    }
    return CONTINUE_LOOP;
}

funRetVal seq_deinit(uint8_t *memPtr)
{
    sleep_setTimeTillSleep(10000);
    resetButtonAutoRepeatRate();
    return CONTINUE_LOOP;
}

void seq_drawMenu(uint8_t* memPtr)
{
    int yOffset=0;
    for(int i=0;i<SEQ_MENU_ITEM_ON_SCREEN_COUNT;i++)
    {
        oled.setCursor(0,i);
        if(i==cursorScreenPos)
        {
            oled.print(F(">"));
        }
        else
        {
            oled.print(F(" "));
        }
        int locIndex=firstLineOnScreenIndex+i;
        char temp[5];
        snprintf(temp,5,"%02d ",locIndex);
        oled.print(temp);
        struct codeLine currentLOC=codeLineArr[locIndex];
        printCallbacks[currentLOC.functionIndex](currentLOC.param);
        oled.clearToEOL();
    }
}