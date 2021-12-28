//float fs=250000;
//float fs=31887.7551;
float fs=700000;
#include <stdint.h>
#include "dacUtils.h"
#include "waveformGenerator.h"

#include "display.h"
#include "program.h"
#include "buttons.h"


#define SUBSTEP_DIVISIONS 256

#define WFG_MENU_ITEM_FREQUENCY 0
#define WFG_MENU_ITEM_WAVEFORM_TYPE 1
#define WFG_MENU_ITEM_OUTPUT_ENABLE 2

//TODO: allocate dynamically
uint8_t frequencySetIndex=0;
char frequencyStr[6];
uint8_t wfgMenuIndex=0;
uint8_t outputEnable=false;

const program prog_wfg {wfg_init, wfg_loop, wfg_deinit, "Waveform generator", 2};

funRetVal wfg_init(uint8_t *memPtr)
{
    oled.clear();
    frequencyStr[5] = 0;
    for(int i=0;i<5;i++)
    {
        frequencyStr[i]='0';
    }
    return CONTINUE_LOOP;
}

funRetVal wfg_loop( uint8_t *memPtr)
{
    //handleFrequencySetting();
    wfg_handleMenu();
    return CONTINUE_LOOP;
}

funRetVal wfg_deinit(uint8_t *memPtr)
{
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
    }

}

void wfg_activateWaveform(uint32_t _frequency, uint8_t _waveformType)
{

    outputEnable = true;

    float f = 4500 * 1.207; //46500;//Hz
    float ts = 1 / fs;
    float t = 1 / f;
    uint16_t sampleCount = 256;

    uint16_t step = ((ts / t) * sampleCount) * SUBSTEP_DIVISIONS; //*1048576;
    uint16_t bigIndex;
    uint8_t index;
    //uint8_t data[]={0,255,0,255,0,255,0,128,0,255};
    uint8_t data[sampleCount]; //{0,255,0,255,0,255,0,255,0,255};
                               /*
    for(int i=0;i<sampleCount;i++)
    {
        if(i<sampleCount/2)
        {
            data[i]=0;
        }
        else
        {
            data[i]=255;
        }
    }
    */
    for (int i = 0; i < sampleCount; i++)
    {
        data[i] = (sin(((i * 1.0) / (sampleCount)) * 2 * PI) * 127) + 127;
    }
    cli();
    uint16_t bigindexMaximum = sampleCount * SUBSTEP_DIVISIONS; //*1048576;
    uint8_t stepSmall = step / SUBSTEP_DIVISIONS;               //1048576;
    /*
    while(1)
    {
        index+=stepSmall;
        //index=index%sampleCount;
        //Serial.println("kvok");
        Serial.println(index);
        Serial.println(data[index]);
        dac_output=data[index];
    }
    */

    uint8_t *ptr = ((uint8_t *)&bigIndex) + 1;
}

void wfg_handleMenu()
{
    oled.setCursor(8,0);
    oled.print(F("frequency: "));
    oled.setCursor(8,1);
    oled.print(F("wave type: "));
    oled.setCursor(8,2);
    oled.print(F("output: "));

    if(BUTT_RIGHT(justPressedButtons))
    {
        if(wfgMenuIndex==WFG_MENU_ITEM_OUTPUT_ENABLE)
        {
            wfg_activateWaveform(12345,0);
        }
    }
    else if(JOY_LEFT(justPressedButtons))
    {
    } else if(JOY_RIGHT(justPressedButtons))
    {
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

void wfg_generate()
{
    uint8_t pinEStart=PINE;
    Serial.println(pinEStart,BIN);
    while(PINE==pinEStart)
    {
        bigIndex+=step;
        //bigIndex=bigIndex%bigindexMaximum;
        //index=*ptr;//bigIndex/SUBSTEP_DIVISIONS;
        //index=bigIndex/SUBSTEP_DIVISIONS;
        /*
        Serial.println("kvok");
        Serial.println(bigIndex);
        Serial.println(index);
        Serial.println(data[index]);
        */
        dac_output=data[(uint8_t)(bigIndex>>8)];
    }
    Serial.println(PINE,BIN);
    
}