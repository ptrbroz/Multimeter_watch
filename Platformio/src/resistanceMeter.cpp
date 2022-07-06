#include "resistanceMeter.h"
#include "measurement.h"
#include "display.h"
#include "program.h"
#include "buttons.h"

#define lastMill (*(memPtr+0))

const program prog_resistanceMeter= {res_init, res_loop, res_deinit, "Res. measurement", 4};

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

funRetVal res_init(uint8_t* memPtr)
{
    return CONTINUE_LOOP;
}

funRetVal res_loop(uint8_t* memPtr)
{
        enum resistanceRange rr=res_autosetRange();
        float r = res_measureResistance(rr);
        Serial.println(r);
        oled.set2X();
        oled.setCursor(10, 3);
        //char str[9];
        //sprintf(str, "%02d", ts.tm_hour);
        //str[2] = ':';
        res_printResistance(r);
        if(BUTT_LEFT(justPressedButtons))
        {
            return PROGRAM_END;
        }
        delay(250);
        return CONTINUE_LOOP;
}

funRetVal res_deinit(uint8_t* memPtr)
{
    return CONTINUE_LOOP;
}


void res_printResistance(float _res)
{
    oled.set2X();
    oled.setCursor(10, 3);
    if (_res < 0.1)
    {
        oled.print(F("LOW"));
        oled.clearToEOL();
        return;
    }
    if (_res > 40000000UL)
    {
        oled.print(F("HIGH"));
        oled.clearToEOL();
        return;
    }
    if (_res < 10000)
    {
        oled.print(_res);
        oled.print(F(" Ohm"));
        oled.clearToEOL();
        return;
    }

    oled.print(_res / 1000.0);
    oled.print(F("k"));
    oled.clearToEOL();
    return;
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