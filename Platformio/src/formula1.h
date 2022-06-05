
#include "program.h"
#define CAR_COUNT 20
#define LANES_COUNT 4
#define NO_CAR 0
funRetVal f1_init(uint8_t *memPtr);
funRetVal f1_loop(uint8_t *memPtr);
funRetVal f1_deinit(uint8_t *memPtr);
void f1_draw();
extern const program prog_f1;
void f1_gameOver();
