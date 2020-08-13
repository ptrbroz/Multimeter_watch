#include "measurement.h "
#include "wiring_private.h"
#include "pins_arduino.h"



void adc_applySettings(struct adcSettings& _settings)
{
    ADCSRA=_settings._ADCSRA;
    ADCSRB=_settings._ADCSRB;
    ADCSRC=_settings._ADCSRC;
    ADCSRD=_settings._ADCSRD;
    ADMUX=_settings._ADMUX;
    DAPCR=_settings._DAPCR;
}

void adc_getCurrentSettings(struct adcSettings& _settings)
{
    _settings._ADCSRA=ADCSRA;
    _settings._ADCSRB=ADCSRB;
    _settings._ADCSRC=ADCSRC;
    _settings._ADCSRD=ADCSRD;
    _settings._ADMUX=ADMUX;
    _settings._DAPCR=DAPCR;
}

void adc_adjustPrescaler(struct adcSettings& _settings, enum adcPrescaleValues _prescale)
{
    _settings._ADCSRA&=~0b00000111;//clear the last 3 bits
    _settings._ADCSRA|=_prescale;
}

//TODO: handle vcal values?
void adc_adjustReference(struct adcSettings& _settings, enum adcReferenceValues _ref)
{
    _settings._ADMUX&=~0b11000000;//clear the refs bits in admux
    _settings._ADMUX|=((_ref<<6)&0b11000000);
    cbi(_settings._ADCSRD,REFS2);
    if(_ref==ref_4096)
    {
        sbi(_settings._ADCSRD,REFS2);
    }
}

void adc_adjustADCSource(struct adcSettings& _settings, enum adcSourceValues _adcSource)
{
    cbi(_settings._ADCSRC,DIFS);
    if(_adcSource==adcSource_pga)
    {
        sbi(_settings._ADCSRC,DIFS);
    }

}

void adc_adjustMuxSource(struct adcSettings& _settings,enum adcMuxSourceValues _muxSource)
{
    _settings._ADMUX&=~0b00011111;
    _settings._ADMUX|=_muxSource;
}

void adc_adjustPGANoninvSource(struct adcSettings& _settings, enum adcPGANonInvSourceValues _pgaSource)
{
    _settings._DAPCR&=~0b00000011;
    _settings._DAPCR|=_pgaSource;
}

void adc_adjustPGAInvSource(struct adcSettings& _settings,enum adcPGAInvSourceValues _pgaSource)
{
    _settings._DAPCR&=~0b00011100;
    _settings._DAPCR|=(_pgaSource<<2);
}

void adc_adjustEnablePGA(struct adcSettings& _settings, bool _enable)
{
    cbi(_settings._DAPCR,DAPEN);
    if(_enable)
    {
        sbi(_settings._DAPCR,DAPEN);
    }
}

void adc_getDefaultSettings(struct adcSettings& _settings)
{
    _settings._ADCSRA=0b10000111;//enable adc; prescaler to 128
    _settings._ADCSRB=0;
    _settings._ADCSRC=0b10000000;//offset compensation enable
    _settings._ADCSRD=0b10000000;//enable reference output
    _settings._ADMUX=0;
    _settings._DAPCR=0;
}

void adc_getBatteryVoltageMeasurementSettings(struct adcSettings& _settings)
{
    adc_getDefaultSettings(_settings);
    adc_adjustMuxSource(_settings,muxSource_ivref);
    adc_adjustReference(_settings, ref_avcc);
    //ivsel to 2.048V
    cbi(_settings._ADCSRD,IVSEL1);
    sbi(_settings._ADCSRD,IVSEL0);
}

uint16_t adc_measureBatteryVoltage()
{
    struct adcSettings backupSettings;
    adc_getCurrentSettings(backupSettings);
    struct adcSettings tempSettings;
    adc_getBatteryVoltageMeasurementSettings(tempSettings);
    adc_applySettings(tempSettings);
    uint32_t retVal=adc_readADCFixOffset();//TODO: filtering?
    //Serial.println("kdak");
    //Serial.println(retVal);
    retVal=(REFERENCE_2V048_EXACT*4095UL)/retVal;
    adc_applySettings(backupSettings);
    return (uint16_t)retVal;

}

uint16_t adc_readADC()
{
  uint8_t tmp = 0;

  // start the conversion
  sbi(ADCSRA, ADSC);

  // ADSC is cleared when the conversion finishes
  while (bit_is_set(ADCSRA, ADSC));

  // read low byte firstly to cause high byte lock.
  tmp = ADCL;

  return (ADCH << 8) | tmp;
}

uint16_t adc_readADCFixOffset()
{
  uint16_t pVal, nVal;
  sbi(ADCSRC, SPN);
  nVal = adc_readADC();
  cbi(ADCSRC, SPN);
  pVal = adc_readADC();
  pVal = (pVal + nVal) >> 1;
  return pVal;
}

void adc_printSettings(struct adcSettings& _settings)
{
    printBin(_settings._ADCSRA);
    printBin(_settings._ADCSRB);
    printBin(_settings._ADCSRC);
    printBin(_settings._ADCSRD);
    printBin(_settings._ADMUX);
    printBin(_settings._DAPCR);
}

void printBin(uint8_t var) {
  for (uint8_t test = 0x80; test; test >>= 1) {
    Serial.write(var  & test ? '1' : '0');
  }
  Serial.println();
}