#include "Arduino.h"

struct averager{
    uint16_t maxDifference=0;//maximum difference between a new averaging start
    int32_t sum=0;
    uint16_t sampleCount=0;   
    uint16_t maxSampleCount=0;
    int16_t average=0;
};
void avg_addSample(struct averager& _averager, int16_t _sample);
struct averager avg_createAverager(uint16_t _maxDifference, uint16_t _maxSampleCount);