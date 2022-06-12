#include "display.h"
#include "program.h"
#include "ohmMeter.h"
#include "buttons.h"
#include "rtcUtils.h"
#include "time.h"
#include "hotKeyMenu.h"
#include "main.h"
#include "dacUtils.h"
#include "measurement.h"
#include "averager.h"
#include "sleepUtils.h"

struct averager resistanceAverager;//TODO: make this pseudostatic



const program prog_ohmmeter= {ohmmeter_init, ohmmeter_loop, ohmmeter_deinit, "Ohmmeter", 8};

funRetVal ohmmeter_init(uint8_t *memPtr)
{
    oled.clear();
    sleep_setTimeTillSleep(-1);//do not sleep
    resistanceAverager=avg_createAverager(4,200);
    return CONTINUE_LOOP;
}

funRetVal ohmmeter_loop( uint8_t *memPtr)
{
    /*
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
    avg_addSample(resistanceAverager,reading);
    snprintf(temp,20,"%4d V",resistanceAverager.average);
    //Serial.println(temp);
    oled.set2X();
    oled.print(temp);

*/
   return CONTINUE_LOOP;
}

funRetVal ohmmeter_deinit(uint8_t *memPtr)
{
    sleep_setTimeTillSleep(10000UL);
    return CONTINUE_LOOP;
}




uint16_t ohmmeter_getRawADCLowRange()
{
    struct adcSettings adcs;

    DDRB|=(1<<PB3);//high-side 680R to output
    DDRB&=~(1<<PB4);//high-side 470K floating
    DDRB&=~(1<<PB5);//high-side ADC floating

    DDRE|=(1<<PE1);//low-side ADC to output (will be used to short the other resistor terminal to gnd)
    DDRB&=~(1<<PB1);//low-side 470K floating
    DDRB&=~(1<<PB2);//low-side 680R floating
    ////////////////////////////////////////////////
    PORTB|=(1<<PB3);//high-side 680R to Vcc
    PORTB&=~(1<<PB4);//high-side 470K pullup off
    PORTB&=~(1<<PB5);//high-side adc pullup off

    PORTB&=~(1<<PB1);//low-side 470K pullup off
    PORTB&=~(1<<PB2);//low-side 680R pullup off
    PORTE&=~(1<<PE1);//pull to ground

    delay(1);//settle

    adc_getDefaultSettings(adcs);
    //adc_adjustReference(adcs,ref_1024);
    adc_adjustMuxSource(adcs, muxSource_A11);
    //adc_adjustEnablePGA(adcs,true);
    //adc_adjustPGANoninvSource(adcs,pgaNonInvSource_mux);
    //adc_adjustPGAInvSource(adcs,pgaInvSource_gnd);
    //adc_adjustADCSource(adcs,adcSource_pga);
    adc_applySettings(adcs);
    return adc_readADCFiltered(250);

}


uint16_t ohmmeter_getRawAdcHighRange()
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