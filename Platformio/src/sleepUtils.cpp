#include <avr/interrupt.h>
#include <avr/sleep.h>
#include "sleepUtils.h"
#include "buttons.h"

void sleep_sleepTillWakeup()
{
  pinMode(A4,INPUT);
  pinMode(A5,INPUT);
  pinMode(D3,INPUT);
  digitalWrite(A4,LOW);
  digitalWrite(A5,LOW);
  digitalWrite(D3,LOW);
  set_sleep_mode(SLEEP_MODE_PWR_DOWN);
  cli();
  sleep_enable();
  sleep_cpu();
  sleep_disable();
  sei();
  pinMode(D3,OUTPUT);
  digitalWrite(D3,HIGH);
  delay(250);
  buttonsByte=0;
  justPressedButtons=0;
  justReleasedButtons=0;
}