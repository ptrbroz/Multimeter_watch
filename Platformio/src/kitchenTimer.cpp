#include "avr/wdt.h"
#include "avr/sleep.h"


#include "display.h"
#include <Arduino.h>
#include "program.h"
#include "rtcUtils.h"
#include "time.h"
#include "buttons.h"
#include "sleepUtils.h"
#include "kitchenTimer.h"


funRetVal kitchenTimer_init( uint8_t *memPtr){
    //TODO: save the original values of the registers
    return CONTINUE_LOOP;
}

funRetVal kitchenTimer_deinit( uint8_t *memPtr){
    return CONTINUE_LOOP;
}

funRetVal kitchenTimer_loop( uint8_t *memPtr);

const program prog_kitchenTimer = {kitchenTimer_init, kitchenTimer_loop,kitchenTimer_deinit, "Kitchen timer", 0};

funRetVal kitchenTimer_loop( uint8_t *memPtr){
    tone(2, 4000, 100);
    delay(500);
    sleep_wdtSleep(SLEEP_4S);
    return CONTINUE_LOOP;
}

