#include "ncvDetector.h"
#include "measurement.h"
#include "display.h"
#include "buttons.h"
#include "program.h"
#include "main.h"


uint8_t enableBeep;
const program prog_ncv= {ncv_init, ncv_loop, ncv_deinit, "NCV detector", 0};

funRetVal ncv_init(uint8_t *memPtr)
{
    adcSettings settings;
    adc_getDefaultSettings(settings);
    adc_adjustReference(settings,ref_1024);
    adc_adjustPGANoninvSource(settings,pgaNonInvSource_mux);
    adc_adjustPGAInvSource(settings,pgaInvSource_gnd);
    adc_adjustPGAGain(settings,pgaGain_x32);
    adc_adjustMuxSource(settings,muxSource_A3);
    adc_adjustEnablePGA(settings,true);
    //adc_adjustPrescaler(settings,adc_prescale_1);
    adc_applySettings(settings);
    PORTB&=~(1<<PB4);//470k pulldown
    setTimeTillSleep(-1);//do not sleep
    return CONTINUE_LOOP;
}

funRetVal ncv_loop(uint8_t *memPtr)
{
        oled.setCursor(0,0);
        oled.set2X();
        uint16_t level=ncv_getLevel();
        char temp[20];
        //Serial.println(level);
        snprintf(temp,20,"%d    ",level);
        oled.println(temp);
        oled.set1X();
        oled.setCursor(0,2);
        oled.println(F(">>: beep on/off"));
        oled.println(F("<<: exit"));
        oled.println();
        oled.println(F("20 cm wire to ADC11"));
        if(level>300)
        {
            level=300;
        }
        uint16_t freq=map(level,0,300,1000,4000);
        if(enableBeep)
        {
            tone(2,freq,100);
        }
        delay(100);
        if(BUTT_LEFT(justPressedButtons))
        {
            return PROGRAM_END;
        }
        if(BUTT_RIGHT(justPressedButtons))
        {
            enableBeep=!enableBeep;
        }
    return CONTINUE_LOOP;
}

uint16_t ncv_getLevel()
{
    unsigned long startMillis=millis();
    uint16_t theMin=0xFF;
    uint16_t theMax=0;
    while(millis()-startMillis<250)
    {
        uint16_t reading=adc_readADC();
        if(reading<theMin)
        {
            theMin=reading;
        }
        else if(reading>theMax)
        {
            theMax=reading;
        }
    }
    return theMax-theMin;
}

funRetVal ncv_deinit(uint8_t *memPtr)
{
    setTimeTillSleep(10000);
    return CONTINUE_LOOP;
}