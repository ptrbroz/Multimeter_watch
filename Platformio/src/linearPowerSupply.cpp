#include "display.h"
#include "program.h"
#include "linearPowerSupply.h"
#include "buttons.h"
#include "rtcUtils.h"
#include "time.h"
#include "hotKeyMenu.h"
#include "main.h"
#include "dacUtils.h"
#include "measurement.h"
#include "sleepUtils.h"


void adjustVoltage(menuCBData data, uint8_t len);
void exitApp(menuCBData data, uint8_t len);

uint16_t battVolts;
uint32_t avgSum;
uint16_t avgCount;
uint8_t enableOutput;
uint8_t outputLevel;


const program prog_linearPowerSupply PROGMEM= {linearPS_init, linearPS_loop, linearPS_deinit, "Ref voltage gen.", 8};

funRetVal linearPS_init(uint8_t *memPtr)
{
    oled.clear();
    dac_output=0;
    sleep_setTimeTillSleep(-1);//do not sleep
    dac_init();
    //sbi(MCUSR,SWDD);//disable debug interface
    setButtonAutoRepeatRate(400,100);
    return CONTINUE_LOOP;
}

funRetVal linearPS_loop( uint8_t *memPtr)
{
    if(BUTT_LEFT(justPressedButtons))
    {
        return PROGRAM_END;
    }
    else if(enableOutput&&JOY_UP(justPressedButtons|autoRepeatPressedButtons)&&dac_output<255)
    {
        outputLevel++;
    }
    else if(enableOutput&&JOY_DOWN(justPressedButtons|autoRepeatPressedButtons)&&dac_output>0)
    {
        outputLevel--;
    }
    else if(BUTT_RIGHT(justPressedButtons))
    {
        enableOutput=!enableOutput;
    }
    if(enableOutput)
    {
        dac_output=outputLevel;
    }
    else
    {
        dac_output=0;
    }
    char temp[20];
    oled.set2X();
    oled.setCursor(0,0);
    snprintf(temp,20,"DAC: %d",(int)dac_output);
    oled.print(temp);
    avgSum+=adc_measureBatteryVoltage();
    avgCount++;
    if(avgCount>=20)
{
    battVolts=avgSum/avgCount;
    avgCount=0;
    avgSum=0;
}
    uint16_t outputVolts=map(dac_output,0,255,0,battVolts);//dac_getVoltageAcrossShunt();//dac_getVoltageAfterShunt(batVolts);
    oled.setCursor(0,2);
    snprintf(temp,20,"U: %d mV",outputVolts);
    oled.print(temp);
    oled.set1X();
    oled.setCursor(0,4);
    if(enableOutput)
    {
        oled.println(F("output ON "));
    }
    else
    {
        oled.println(F("output OFF"));
    }

    oled.println(F("^/v:set; >>:en"));
    oled.println(F("<<: exit"));


   return CONTINUE_LOOP;
}

funRetVal linearPS_deinit(uint8_t *memPtr)
{
    resetButtonAutoRepeatRate();
    return CONTINUE_LOOP;
}


