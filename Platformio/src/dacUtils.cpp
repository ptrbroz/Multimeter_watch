#include "dacUtils.h"
#include "wiring_private.h"
#include "measurement.h"

void dac_init()
{
    DALR=0;//dac to gnd
    sbi(DACON,DACEN);//enable dac
    sbi(DACON,DAOE);//enable dac output
    //ref=vcc
    cbi(DACON,DAVS0);
    cbi(DACON,DAVS1);

}

uint16_t dac_getRawAdcBeforeShunt()
{
    struct adcSettings adcs;
    adc_getDefaultSettings(adcs);
    adc_adjustReference(adcs,ref_avcc);
    adc_adjustMuxSource(adcs, muxSource_A2);
    adc_applySettings(adcs);
    return adc_readADCFixOffset();
}

uint16_t dac_getRawAdcAfterShunt()
{
    struct adcSettings adcs;
    adc_getDefaultSettings(adcs);
    adc_adjustReference(adcs,ref_avcc);
    adc_adjustMuxSource(adcs, muxSource_A3);
    adc_applySettings(adcs);
    return adc_readADCFixOffset();
}

uint16_t dac_getRawAdcAcrossShunt()
{
    struct adcSettings adcs;
    adc_getDefaultSettings(adcs);
    adc_adjustReference(adcs,ref_2048);
    adc_adjustMuxSource(adcs, muxSource_A2);
    adc_adjustPGANoninvSource(adcs,pgaNonInvSource_mux);
    adc_adjustPGAInvSource(adcs,pgaInvSource_A3);
    adc_adjustADCSource(adcs,adcSource_pga);
    adc_adjustEnablePGA(adcs,true);
    adc_applySettings(adcs);
    return adc_readADCFixOffset();

}

uint16_t dac_getCurrentThroughShunt()
{
    uint16_t adcRaw=dac_getRawAdcAcrossShunt();
    uint16_t shuntVoltage=map(adcRaw,0,4095,0,REFERENCE_2V048_EXACT);
    return shuntVoltage/30;
}

uint16_t dac_getVoltageAfterShunt(uint16_t _batteryVoltage)
{
    uint16_t rawAdc=dac_getRawAdcAfterShunt();
    return map(rawAdc,0,4095,0,_batteryVoltage);
}

void dac_testFunGen()
{
    uint8_t arr[]={0,255};
    int arrIndex=0;
    cli();
    while(true)
    {
        arrIndex=(arrIndex>=1?0:(arrIndex+1));
        dac_output=arr[arrIndex];
    }
    sei();
}