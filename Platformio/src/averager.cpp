#include "averager.h"

void avg_addSample(struct averager& _averager, int16_t _sample)
{
    if(abs(_sample-_averager.average)<_averager.maxDifference)
    {
        if(_averager.sampleCount<_averager.maxSampleCount)
        {
            _averager.sampleCount++;
            _averager.sum+=_sample;
        }
        _averager.average=(int16_t)(_averager.sum/_averager.sampleCount);
    }
    else
    {
        _averager.sampleCount=1;
        _averager.sum=_sample;
        _averager.average=_sample;
    }
    
}

struct averager avg_createAverager(uint16_t _maxDifference, uint16_t _maxSampleCount)
{
    struct averager retVal={};
    retVal.maxDifference=_maxDifference;
    retVal.maxSampleCount=_maxSampleCount;
    return retVal;
}