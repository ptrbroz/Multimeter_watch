
#include "program.h"
void wfg_generate();
funRetVal wfg_init(uint8_t *memPtr);
funRetVal wfg_loop( uint8_t *memPtr);
funRetVal wfg_deinit(uint8_t *memPtr);
extern const program prog_wfg;
void handleFrequencySetting();
    void wfg_handleMenu();
void wfg_generateTillInterrupted(float _frequency, uint8_t _type);
void wfg_fillBufferWithSin(uint8_t _outBuff[256]);
uint16_t wfg_frequencyToSamplingStep(float _frequency);
uint32_t wfg_getFrequencyFromString(char* _freqString);
void wfg_fillBufferWithSaw(uint8_t _outBuff[256]);
void wfg_waveformTypeToString(uint8_t _waveformType, char* _outStr);