#include <avr/interrupt.h>
#include <avr/sleep.h>
#include "sleepUtils.h"

void sleep_sleepTillWakeup()
{
  pinMode(A4,INPUT);
  pinMode(A5,INPUT);
  pinMode(12,INPUT);
  digitalWrite(A4,LOW);
  digitalWrite(A5,LOW);
  digitalWrite(12,LOW);
  set_sleep_mode(SLEEP_MODE_PWR_DOWN);
  cli();
  sleep_enable();
  sleep_cpu();
  sleep_disable();
  sei();
  pinMode(12,OUTPUT);
  digitalWrite(12,HIGH);
  delay(250);
}