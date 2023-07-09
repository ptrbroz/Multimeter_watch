#include "measurement.h"
#include "display.h"
#include "program.h"
#include "buttons.h"
#include "dacUtils.h"

/*
struct voltAmpPair
{
    uint16_t voltage;
    uint16_t current;
};
*/


void diode_measureUI()
{
        //struct voltAmpPair characteristic[3];
        uint16_t interestingCurrents[]={500,1000,2000,3000,5000};
        #define INTERESTING_CURRENTS_COUNT sizeof(interestingCurrents)/sizeof(interestingCurrents[0])
        uint16_t battVoltage=adc_measureBatteryVoltage();
        dac_init();

        struct adcSettings settings;
        adc_getDefaultSettings(settings);
        adc_adjustReference(settings, ref_avcc);
        adc_adjustMuxSource(settings, muxSource_A3);
        adc_adjustEnablePGA(settings, false);
        //adc_adjustPrescaler(settings,adc_prescale_1);
        adc_applySettings(settings);
        int characteristicIndex=0;
        DDRB |= (1 << PB3);

        for(int i=0;i<255;i++)
        {
            for(int j=1;j<2;j++)
            {
                bool reversePolarity = (j==0);
                dac_output = i;
                int reading; 
                int resistorVoltage;
                int appliedVoltage;

                if (reversePolarity)
                {
                    PORTB |= (1 << PB3);
                    reading = adc_readADCFixOffset();
                    resistorVoltage = map(reading, 0, 4096, battVoltage, 0); // millivolts
                    appliedVoltage = map(i, 0, 255, battVoltage, 0);         // TODO: obtain actual reading
                }
                else
                {
                    //680R to ground
                    PORTB &= ~(1 << PB3);
                    reading = adc_readADCFixOffset();
                    resistorVoltage = map(reading, 0, 4096, 0, battVoltage); // millivolts
                    appliedVoltage = map(i, 0, 255, 0, battVoltage);         // TODO: obtain actual reading
                }

                int current = (resistorVoltage * 1000UL) / 680;      // microamps
                int diodeVoltage = appliedVoltage - resistorVoltage; // get the voltage across the LED
                /*
                if (current >= interestingCurrents[characteristicIndex])
                {
                    if(reversePolarity)
                    {
                        diodeVoltage=diodeVoltage*(-1);
                    }
                    characteristicIndex++;
                    if (characteristicIndex >= INTERESTING_CURRENTS_COUNT)
                    {
                        return;
                    }
                }
                */
                    Serial.print(diodeVoltage);
                    Serial.print(": ");
                    Serial.println(current);
            }
        }
}

