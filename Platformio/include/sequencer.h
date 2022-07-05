#include "program.h"

funRetVal seq_init(uint8_t *memPtr);
funRetVal seq_loop( uint8_t *memPtr);
funRetVal seq_deinit(uint8_t *memPtr);
void seq_drawMenu(uint8_t* memPtr);
extern const program prog_sequencer;

struct codeLine
{
    uint8_t functionIndex;
    int16_t param;
};