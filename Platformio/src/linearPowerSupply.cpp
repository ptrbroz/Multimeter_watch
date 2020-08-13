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


void adjustVoltage(menuCBData data, uint8_t len);

#define ccMode (*(programMemPtr+0))
#define vSetting (*(programMemPtr+1))
#define iSetting (*(programMemPtr+2))
#define dacOut (*((int32_t*)(programMemPtr+3)))



MENU_ITEM_CMD(menuItemVminus,"Voltage -",adjustVoltage,-1,0,0,0);
MENU_ITEM_CMD(menuItemVplus,"Voltage +",adjustVoltage,1,0,0,0);
MENU_ITEM_CMD(menuItemIminus,"Current -",adjustCurrent,-1,0,0,0);
MENU_ITEM_CMD(menuItemIplus,"Current +",adjustCurrent,1,0,0,0);


MENU(mainMenu,"linearPSMenu",0,&menuItemIminus,&menuItemVminus,&menuItemVplus,&menuItemIplus);


const program prog_linearPowerSupply= {linearPS_init, linearPS_loop, linearPS_deinit, "Linear power supply", 8};

funRetVal linearPS_init(uint8_t *memPtr)
{
    oled.clear();
    vSetting=0;
    iSetting=0;
    dacOut=0;
    setCurrentMenu(&mainMenu);
    setTimeTillSleep(-1);//do not sleep
    dac_init();
    return CONTINUE_LOOP;
}

funRetVal linearPS_loop( uint8_t *memPtr)
{
    static unsigned long lastCCEventMillis=0;//TODO: switch to pseudostatic
    if(justPressedButtons!=0||autoRepeatPressedButtons!=0)
    {
        int index=buttonByteToMenuIndex(justPressedButtons|autoRepeatPressedButtons);
        runCurrentMenuCB(index);
    }
    oled.setCursor(0,0);
    char temp[20];
    snprintf(temp,20,"%1d.%1dV",vSetting/10,vSetting%10);
    oled.print(temp);
    uint16_t dacCurrent=dac_getCurrentThroughShunt();
    snprintf(temp,20,"  %4dmA",dacCurrent);
    oled.print(temp);
    uint16_t batVolts=adc_measureBatteryVoltage();
    uint16_t outputVolts=dac_getVoltageAfterShunt(batVolts);
    outputVolts=(outputVolts/100);//single precision

    if((int)dacCurrent>(int)iSetting-2)
    {
        lastCCEventMillis=millis();
        ccMode=true;
    }

    if(millis()-lastCCEventMillis>100)//we do not need the cc mode any more
    {
        ccMode=false;
    }

    if(outputVolts>vSetting)
    {
        ccMode=false;
    }

    if(ccMode)
    {
        int32_t err = (int32_t)dacCurrent- iSetting;
        dacOut -= (err * 150) / 100;
    }
    else
    {
        int32_t err = (int32_t)outputVolts - vSetting;
        dacOut -= (err * 150) / 100;
    }

    dacOut = dacOut > 255 ? 255 : dacOut;
    dacOut = dacOut < 0 ? 0 : dacOut;
    dac_output = dacOut;

   return CONTINUE_LOOP;
}

funRetVal linearPS_deinit(uint8_t *memPtr)
{
    return CONTINUE_LOOP;
}


void adjustVoltage(menuCBData data, uint8_t len)
{
    if (data.ints[0] == -1) //decrease
    {
        if(vSetting>0)
        {
            vSetting--;
        }
    }
    else
    {
        if(vSetting<45)//4.5V
        {
        vSetting++;
        }
    }
}


void adjustCurrent(menuCBData data, uint8_t len)
{
    if (data.ints[0] == -1) //decrease
    {
        if(iSetting>0)
        {
            iSetting--;
        }
    }
    else
    {
        if(vSetting<45)//4.5V
        {
        iSetting++;
        }
    }
}
