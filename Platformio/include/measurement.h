#include "Arduino.h"
#pragma once
#define REFERENCE_2V048_EXACT 2203

struct adcSettings{
    uint8_t _ADCSRA;
    uint8_t _ADCSRB;
    uint8_t _ADCSRC;
    uint8_t _ADCSRD;
    uint8_t _ADMUX;
    uint8_t _DAPCR;
};


enum adcPrescaleValues {adc_prescale_1, adc_prescale_2, adc_prescale_4,adc_prescale_8,adc_prescale_16,adc_prescale_32,adc_prescale_64,adc_prescale_128};
enum adcReferenceValues {ref_aref, ref_avcc, ref_2048,ref_1024,ref_4096};
enum adcMuxSourceValues {muxSource_A0, muxSource_A1, muxSource_A2, muxSource_A3, muxSource_A4, muxSource_A5, muxSource_A6, muxSource_A7, muxSource_A8=9, muxSource_A9=10, muxSource_A10=11,muxSource_A11=12,muxSource_4_5_vdo=14, muxSource_1_5_vdo=8,muxSource_ivref=13/*datasheet weirdness!*/,muxSource_gnd=15,muxSource_dac=16};
enum adcSourceValues {adcSource_mux, adcSource_pga};
enum adcPGAInvSourceValues {pgaInvSource_A2,pgaInvSource_A3, pgaInvSource_A8, pgaInvSource_A9, pgaInvSource_SWC, pgaInvSource_mux, pgaInvSource_gnd, pgaInvSource_none};
enum adcPGANonInvSourceValues {pgaNonInvSource_mux, pgaNonInvSource_A0, pgaNonInvSource_A1, pgaNonInvSource_gnd};

void adc_applySettings(struct adcSettings& _settings);
void adc_adjustPrescaler(struct adcSettings& _settings,enum adcPrescaleValues _prescale);
void adc_adjustReference(struct adcSettings& _settings, enum adcReferenceValues _ref);
void adc_adjustADCSource(struct adcSettings& _settings, enum adcSourceValues _adcSource);
void adc_adjustMuxSource(struct adcSettings& _settings,enum adcMuxSourceValues _muxSource);
void adc_adjustPGANoninvSource(struct adcSettings& _settings, enum adcPGANonInvSourceValues _pgaSource);
void adc_adjustPGAInvSource(struct adcSettings& _settings,enum adcPGAInvSourceValues _pgaSource);
void adc_adjustEnablePGA(struct adcSettings& _settings, bool _enable);
void adc_getDefaultSettings(struct adcSettings& _settings);
uint16_t adc_readADC();
uint16_t adc_readADCFixOffset();
void adc_getCurrentSettings(struct adcSettings& _settings);
void adc_getBatteryVoltageMeasurementSettings(struct adcSettings& _settings);

void printBin(uint8_t var);
void adc_printSettings(struct adcSettings& _settings);
uint16_t adc_measureBatteryVoltage();
uint16_t adc_readADCFiltered(uint32_t _timeWindow);