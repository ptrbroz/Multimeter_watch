#include "display.h"
#include "program.h"
#include "voltmeter.h"
#include "buttons.h"
#include "rtcUtils.h"
#include "time.h"
#include "hotKeyMenu.h"
#include "main.h"
#include "dacUtils.h"
#include "measurement.h"
#include "averager.h"

struct averager voltageAverager;//TODO: make this pseudostatic



const program prog_voltmeter= {voltmeter_init, voltmeter_loop, voltmeter_deinit, "Voltmeter", 8};

funRetVal voltmeter_init(uint8_t *memPtr)
{
    oled.clear();
    setTimeTillSleep(-1);//do not sleep
    voltageAverager=avg_createAverager(4,200);
    return CONTINUE_LOOP;
}

funRetVal voltmeter_loop( uint8_t *memPtr)
{
    if(justPressedButtons!=0||autoRepeatPressedButtons!=0)
    {
        if (BUTT_LEFT(justPressedButtons|autoRepeatPressedButtons))
        {
            return PROGRAM_END;
        }
    }
    oled.setCursor(0,0);
    char temp[20];
    uint16_t reading=voltmeter_getRawAdc40VRangePositivePolarity();
    avg_addSample(voltageAverager,reading);
    int voltage=map(voltageAverager.average,3,3338,0,4000);
    snprintf(temp,20,"%02d.%02d V",voltage/100,voltage%100);
    //Serial.println(temp);
    oled.set2X();
    oled.print(temp);

   return CONTINUE_LOOP;
}

funRetVal voltmeter_deinit(uint8_t *memPtr)
{
    setTimeTillSleep(10000UL);
    return CONTINUE_LOOP;
}




uint16_t voltmeter_getRawAdc40VRangeNegativePolarity()
{
    struct adcSettings adcs;
    DDRE&=~(1<<PE6);//PE6 to input
    DDRB|=(1<<PB0);//PB0 to output
    DDRD|=(1<<PD7);//PD7 to output
    DDRE|=(1<<PE3);//PE3 to output

    PORTE&=~(1<<PE6);//low
    PORTB&=~(1<<PB0);//low
    PORTD&=~(1<<PD7);//low
    PORTE&=~(1<<PE3);//low
    delay(1);//settle

    adc_getDefaultSettings(adcs);
    adc_adjustReference(adcs,ref_2048);
    adc_adjustMuxSource(adcs, muxSource_A10);
    adc_applySettings(adcs);
    return adc_readADCFixOffset();

}


uint16_t voltmeter_getRawAdc40VRangePositivePolarity()
{
    struct adcSettings adcs;
    DDRE|=(1<<PE6);//PE6 to output
    DDRB|=(1<<PB0);//PB0 to output
    DDRD|=(1<<PD7);//PD7 to output
    DDRE&=~(1<<PE3);//PE3 to input

    PORTE&=~(1<<PE6);//low
    PORTB&=~(1<<PB0);//low
    PORTD&=~(1<<PD7);//low
    PORTE&=~(1<<PE3);//low
    delay(1);//settle

    adc_getDefaultSettings(adcs);
    adc_adjustReference(adcs,ref_2048);
    adc_adjustMuxSource(adcs, muxSource_A7);
    adc_applySettings(adcs);
    //delay(1);
    return adc_readADCFiltered(250);

}