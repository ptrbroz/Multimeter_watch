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
    cli();
    MCUSR&=~(1<<WDRF);
    WDTCSR|=(1<<WDCE)|(1<<WDE);
    WDTCSR =  (1<<WDP0) | (1<<WDP2);
    WDTCSR|=(1<<WDIE);
    sei();
    return CONTINUE_LOOP;
}

funRetVal kitchenTimer_deinit( uint8_t *memPtr){
    return CONTINUE_LOOP;
}

funRetVal kitchenTimer_loop( uint8_t *memPtr);

const program prog_kitchenTimer = {kitchenTimer_init, kitchenTimer_loop,kitchenTimer_deinit, "Kitchen timer", 0};

funRetVal kitchenTimer_loop( uint8_t *memPtr){
    tone(2, 4000, 100);
    sleep_sleepTillWakeup();
    return CONTINUE_LOOP;
}

void sleepTest()
{
 set_sleep_mode(SLEEP_MODE_PWR_DOWN);
  //cli();
  sleep_enable();
  sleep_cpu();
  sleep_disable();

}

void wdtTest()
{
    delay(500);
    tone(2, 4000, 100);
    delay(100);
    tone(2, 4000, 100);
    delay(600);
    cli();
    MCUSR &= ~(1 << WDRF);
    WDTCSR = (1 << WDCE) | (1 << WDE);
    WDTCSR = (1 << WDIE) | (1 << WDP0) | (1 << WDP2);
    sei();
    while (1)
    {
        sleepTest();
        tone(2, 2000, 100);
        delay(500);
    }
}
