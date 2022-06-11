#include <avr/interrupt.h>
#include <avr/sleep.h>
#include <Arduino.h>

int count=0;

void wdtSleep()
{
  set_sleep_mode(SLEEP_MODE_PWR_DOWN);
  //cli();
  sleep_enable();
  sleep_cpu();
  sleep_disable();
  //sei();
}

SIGNAL(BADISR_vect)
{
  count=12345;
}


SIGNAL(WDT_vect) { // WDT interrupt vector
count++;
}


void testWDT()
{
  cli();
  MCUSR &= ~(1 << WDRF);
  WDTCSR |= (1 << WDCE) | (1 << WDE);
  WDTCSR =  (1 << WDP0) | (1 << WDP3);
  WDTCSR |= (1 << WDIE);
  sei();
  Serial.begin(115200);
  Serial.println("Kvak!");
  while (1)
  {
    Serial.println("KVOK!");
    Serial.println(count);
    delay(500);
    //WDT_vect();
    //wdtSleep();
  }
}
