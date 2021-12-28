#include <Arduino.h>
#include "measurement.h"
#include "capacity.h"

void testADC11()
{
    DDRB &= ~(1 << PB4);  
    DDRB &= ~(1 << PB3); //680R high side to high impedance
    DDRC &= ~(1 << PC3); //0R high side to high impedance
    //////////////////////
    PORTB &= ~(1 << PB4); //470K high side to ground
    PORTB &= ~(1 << PB3); //680R high side pullup disable
    PORTC &= ~(1 << PC3); //0R high side pullup disable
    //////////////////////
    struct adcSettings adcs;

    adc_getDefaultSettings(adcs);
    adc_adjustADCSource(adcs, adcSource_mux);
    adc_adjustMuxSource(adcs, muxSource_A3);
    adc_adjustReference(adcs, ref_1024);
    adc_applySettings(adcs);
    while(1)
    {
        Serial.println(adc_readADC());
        delay(10);
    }
}

int measureCapacity3(bool _invertPolarity, uint32_t* _outCapacity)
{
    if(!_invertPolarity)
    {
        DDRB|=(1<<PB4);//470K high side to output
        DDRB&=~(1<<PB3);//680R high side to high impedance
        DDRC&=~(1<<PC3);//0R high side to high impedance
        ///////////////////////
        DDRB&=~(1<<PB1);//470K low side to high impedance
        DDRB&=~(1<<PB2);//680R low side to high impedance
        DDRE|=(1<<PE1);//0R low side to output
        //////////////////////
        PORTB&=~(1<<PB4);//470K high side to ground
        PORTB&=~(1<<PB3);//680R high side pullup disable
        PORTC&=~(1<<PC3);//0R high side pullup disable
        //////////////////////
        PORTB&=~(1<<PB1);//470k low side pullup disable
        PORTB&=~(1<<PB2);//680R low side pullup disable
        PORTE&=~(1<<PE1);//0R low side to ground

        struct adcSettings adcs;

        adc_getDefaultSettings(adcs);
        adc_adjustADCSource(adcs,adcSource_mux);
        adc_adjustMuxSource(adcs,muxSource_A3);
        adc_adjustReference(adcs,ref_1024);
        adc_applySettings(adcs);
        
        int pulsesCount=0;
        int adcReading=0;
        for(pulsesCount=0;pulsesCount<10000;pulsesCount++)
        {
            DDRB|=(1<<PB4);
            PORTB|=(1<<PB4);//470K high side to vcc
            delayMicroseconds(1000);
            DDRB&=~(1<<PB4);//470K high side to high impedance
            PORTB&=~(1<<PB4);//470K high side disable pullup
            adcReading=adc_readADC();
            if(adcReading>1000)
            {
                Serial.println(adcReading);
                Serial.println(pulsesCount);
                break;
            }
            else
            {
                if(adcReading<300&&pulsesCount>4000)
                {
                    Serial.println(adcReading);
                    Serial.println(pulsesCount);
                    Serial.println("KVAK!");
                    break;
                }
            }
        }
        float capacity=getCapacityFromAdcAndPulseCount(adcReading,pulsesCount);
        char temp[50];
        getCapacityAsString(capacity,temp,50);
        Serial.print("Capacity: ");
        Serial.println(temp);
    }
    return 0;
}

void getCapacityAsString(float _capacity, char* _outStr, int _maxLen)
{
    if(_capacity<1e-6)//<1uf
    {
        _capacity=_capacity*1e9;
        snprintf(_outStr,_maxLen,"%d nF",(int)_capacity);
        return;
    }
    else//>=1uf
    {
        _capacity=_capacity*1e6;
        snprintf(_outStr,_maxLen,"%d uF",(int)_capacity);
        return;
    }
}

float getCapacityFromAdcAndPulseCount(uint16_t _adc, uint16_t _pulseCount)
{
    float t=_pulseCount*1000.0*1e-6;//time in seconds
    float Vt=(_adc/4096.0)*1.024;
    float V0=3.8;
    float R=470000;
    float capacity=-t/(R*log(1-(Vt/V0)));
    return capacity;
}

void dischargeCapacitor()
{

        DDRC|=(1<<PC3);//0R high side to output
        ///////////////////////
        DDRE|=(1<<PE1);//0R low side to output
        //////////////////////
        PORTC&=~(1<<PC3);//0R high side to ground
        //////////////////////
        PORTE&=~(1<<PE1);//0R low side to ground
        delay(100);
}