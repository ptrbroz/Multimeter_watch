
#include "program.h"
void wfg_generate();
funRetVal wfg_init(uint8_t *memPtr);
funRetVal wfg_loop( uint8_t *memPtr);
funRetVal wfg_deinit(uint8_t *memPtr);
extern const program prog_wfg;
void handleFrequencySetting();
    void wfg_handleMenu();