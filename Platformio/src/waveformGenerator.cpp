//float fs=250000;
//float fs=31887.7551;
float fs=938560;
#include <stdint.h>
#include "dacUtils.h"
#include "waveformGenerator.h"

#include "display.h"
#include "program.h"
#include "buttons.h"
#include "main.h"
#include "sleepUtils.h"


#define SUBSTEP_DIVISIONS 256

#define WFG_MENU_ITEM_FREQUENCY 0
#define WFG_MENU_ITEM_WAVEFORM_TYPE 1
#define WFG_MENU_ITEM_OUTPUT_ENABLE 2

//TODO: allocate dynamically
uint8_t frequencySetIndex=0;
char frequencyStr[6];
uint32_t frequency=0;
uint8_t wfgMenuIndex=0;
uint8_t outputEnable=false;

enum wfgState{WFG_MENU,WFG_FREQ_ADJUST,WFG_OUTPUT, WFG_EXIT};
enum wfgState currentState=WFG_MENU;
uint8_t waveformType=0;

const program prog_wfg {wfg_init, wfg_loop, wfg_deinit, "Waveform generator", 2};

funRetVal wfg_init(uint8_t *memPtr)
{
    oled.clear();
    frequencyStr[5] = 0;
    for(int i=0;i<5;i++)
    {
        frequencyStr[i]='0';
    }
    currentState=WFG_MENU;
    sleep_setTimeTillSleep(-1);//do not sleep
    return CONTINUE_LOOP;
}

funRetVal wfg_loop( uint8_t *memPtr)
{
    //handleFrequencySetting();
    switch(currentState)
    {
        case WFG_MENU:
            wfg_handleMenu();
            break;
        case WFG_FREQ_ADJUST:
            handleFrequencySetting();
            break;
        case WFG_OUTPUT:
            wfg_generateTillInterrupted(frequency,waveformType);
        break;
        case WFG_EXIT:
            return PROGRAM_END;
        break;
    }
    if(outputEnable)
    {

    }
    return CONTINUE_LOOP;
}

funRetVal wfg_deinit(uint8_t *memPtr)
{
    sleep_setTimeTillSleep(10000UL);
    return CONTINUE_LOOP;
}

void wfg_getFrequencyCursorString(char* _outStr)
{
    for(int i=0;i<5;i++)
    {
        if(i==frequencySetIndex)
        {
            _outStr[i]='^';
        }
        else
        {
            _outStr[i]=' ';
        }
    }
    _outStr[5]='\0';
}

void handleFrequencySetting()
{
    oled.setCursor(0, 0);
    oled.set2X();
    oled.println(frequencyStr);
    char cursorStr[6];
    wfg_getFrequencyCursorString(cursorStr);
    oled.println(cursorStr);
    if(JOY_LEFT(justPressedButtons)&&frequencySetIndex!=0)
    {
        frequencySetIndex--;
    } else if(JOY_RIGHT(justPressedButtons)&&frequencySetIndex!=4)
    {
        frequencySetIndex++;
    }else if(JOY_UP(justPressedButtons)&&frequencyStr[frequencySetIndex]!='9')
    {
        frequencyStr[frequencySetIndex]++;
    } else if(JOY_DOWN(justPressedButtons)&&frequencyStr[frequencySetIndex]!='0')
    {
        frequencyStr[frequencySetIndex]--;
    } else if(BUTT_RIGHT(justPressedButtons)||BUTT_LEFT(justPressedButtons))
    {
        oled.set1X();
        frequency=wfg_getFrequencyFromString(frequencyStr);
        currentState=WFG_MENU;
    }
}

uint32_t wfg_getFrequencyFromString(char* _freqString)
{
    uint32_t retVal=0;
    uint32_t multiplier=10000;
    for(int i=0;i<5;i++)
    {
        retVal+=(_freqString[i]-'0')*multiplier;
        multiplier/=10;
    }
    return retVal;
}

void wfg_activateWaveform(uint32_t _frequency, uint8_t _waveformType)
{

    outputEnable=true;
}

void wfg_waveformTypeToString(uint8_t _waveformType, char* _outStr)
{
    switch (_waveformType)
    {
    case 0:
        snprintf(_outStr,10,"sin");
        break;
    case 1:
        snprintf(_outStr,10,"saw");
        break;
    default:
        break;
    }
}

void wfg_handleMenu()
{
    oled.setCursor(8,0);
    oled.print(F("frequency: "));
    oled.print(frequencyStr);
    oled.setCursor(8,1);
    oled.print(F("wave type: "));
    char temp[20];
    wfg_waveformTypeToString(waveformType,temp);
    oled.print(temp);
    oled.setCursor(8,2);
    oled.print(F("GENERATE"));

    if(BUTT_LEFT(justPressedButtons))
    {
        currentState=WFG_EXIT;
    }
    else if(BUTT_RIGHT(justPressedButtons))
    {
        if(wfgMenuIndex==WFG_MENU_ITEM_OUTPUT_ENABLE)
        {
            currentState=WFG_OUTPUT;
        }
        else if(wfgMenuIndex==WFG_MENU_ITEM_FREQUENCY)
        {
            currentState=WFG_FREQ_ADJUST;
        }
    }
    else if(JOY_LEFT(justPressedButtons))
    {
        if(wfgMenuIndex==WFG_MENU_ITEM_WAVEFORM_TYPE&&waveformType<2)
        {
            waveformType++;
        }
    } else if(JOY_RIGHT(justPressedButtons))
    {
        if(wfgMenuIndex==WFG_MENU_ITEM_WAVEFORM_TYPE&&waveformType>0)
        {
            waveformType--;
        }
    }else if(JOY_UP(justPressedButtons)&&wfgMenuIndex>0)
    {
        wfgMenuIndex--;
    } else if(JOY_DOWN(justPressedButtons)&&wfgMenuIndex<2)
    {
        wfgMenuIndex++;
    }
    for(int i = 0;i<3;i++)
    {
        oled.setCursor(0,i);
        if(i==wfgMenuIndex)
        {
            oled.print(F(">"));
        }
        else
        {
            oled.print(F(" "));
        }
    }
}

void wfg_generateTillInterrupted(float _frequency, uint8_t _type)
{
    uint8_t data[256];
    switch(_type)
    {
        case 0:
            wfg_fillBufferWithSin(data);
        break;
        case 1:
            wfg_fillBufferWithSaw(data);
        break;
    }
    uint16_t step=wfg_frequencyToSamplingStep(_frequency);

    uint16_t bigIndex;
    //Serial.println(pinEStart,BIN);

    delay(500);
    cli();
    while(1)
    {
        uint8_t pinEStart=PINE;
        while (PINE == pinEStart)
        {
            bigIndex += step;
            dac_output = data[(uint8_t)(bigIndex >> 8)];
        }
        if(!(PINE&(1<<PE5)))
        {
            break;
        }
        else
        {
            pinEStart=PINE;
        }
    }
    sei();
    delay(500);
    currentState=WFG_MENU;
}

uint16_t wfg_frequencyToSamplingStep(float _frequency)
{
    float ts=1/fs;
    float t=1/_frequency;
    uint16_t sampleCount=256;
    uint16_t step=((ts/t)*sampleCount)*SUBSTEP_DIVISIONS;//*1048576;
    return step;
}

void wfg_fillBufferWithSin(uint8_t _outBuff[256])
{
   for(int i=0;i<256;i++)
   {
       _outBuff[i]=(sin(((i*1.0)/(256))*2*PI)*127)+127;
   }
}

void wfg_fillBufferWithSaw(uint8_t _outBuff[256])
{
    for(int i=0;i<256;i++)
    {
        _outBuff[i]=i;
    }
}

void wfg_generate()
{
    
}