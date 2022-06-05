#include "resistanceMeter.h"
#include "measurement.h"

float res_measureResistance(enum resistanceRange _resRange)
{
    uint16_t reading;
    uint16_t battVoltage=adc_measureBatteryVoltage();
    switch(_resRange)
    {
        case RES_RANGE_0:
        reading=adc_readADCFixOffset();
            reading=adc_readADCFixOffset();
            Serial.println("rr0");
            Serial.println(reading);
            return res_calculateResistanceFromAdcRaw(reading,470000UL,battVoltage,battVoltage);
        break;
        case RES_RANGE_1:
            reading=adc_readADCFixOffset();
            Serial.println("rr1");
            Serial.println(reading);
            return res_calculateResistanceFromAdcRaw(reading,680,battVoltage,battVoltage);
            break;
    }
    return 0;
}

void res_loop()
{
    while(1)
    {
        enum resistanceRange rr=res_autosetRange();
        float r = res_measureResistance(rr);
        Serial.println(r);

    }
}

float res_calculateResistanceFromAdcRaw(uint16_t _adcRaw, float _pullupValue, float _refVoltage, float _batVoltage)
{
    return (_refVoltage/_batVoltage)*(-(_pullupValue*_adcRaw)/((float)_adcRaw-4095));
}

enum resistanceRange res_autosetRange()
{
    res_setRange(RES_RANGE_0);
    float r=res_measureResistance(RES_RANGE_0);
    if(r>20000)
    {
        res_setRange(RES_RANGE_0);
        return RES_RANGE_0;
    }
    else
    {
        res_setRange(RES_RANGE_1);
        return RES_RANGE_1;
    }
}

void res_setRange(enum resistanceRange _resRange)
{

    struct adcSettings settings;
    switch(_resRange)
    {
    case RES_RANGE_0:
        //470K pullup enable
        DDRB |= (1 << PB4);
        PORTB |= (1 << PB4);
        //680R disable
        DDRB &= ~(1 << PB3);
        PORTB &= ~(1 << PB3);
        //other pin to ground
        DDRE |= (1 << PE1);
        PORTE &= ~(1 << PE1);
        adc_getDefaultSettings(settings);
        adc_adjustReference(settings, ref_avcc);
        adc_adjustMuxSource(settings, muxSource_A3);
        adc_adjustEnablePGA(settings, false);
        //adc_adjustPrescaler(settings,adc_prescale_1);
        adc_applySettings(settings);
        break;
    case RES_RANGE_1:
        //470K pullup disable
        DDRB &= ~(1 << PB4);
        PORTB &= ~(1 << PB4);
        //680R enable
        DDRB |= (1 << PB3);
        PORTB |= (1 << PB3);
        //other pin to ground
        DDRE |= (1 << PE1);
        PORTE &= ~(1 << PE1);
        adc_getDefaultSettings(settings);
        adc_adjustReference(settings, ref_avcc);
        adc_adjustMuxSource(settings, muxSource_A3);
        adc_adjustEnablePGA(settings, false);
        //adc_adjustPrescaler(settings,adc_prescale_1);
        adc_applySettings(settings);
        break;
    }
}