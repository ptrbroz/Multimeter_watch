#include <avr/interrupt.h>
#include <avr/sleep.h>
#include "sleepUtils.h"
#include "buttons.h"
#include "PMU.h"
static void sleep_beforeSleep();
static void sleep_afterSleep();

void sleep_sleepTillWakeup()
{
  sleep_beforeSleep();
  set_sleep_mode(SLEEP_MODE_PWR_DOWN);
  //cli();
  sleep_enable();
  sleep_cpu();
  sleep_disable();
  sleep_afterSleep();
  //sei();
}

static void sleep_beforeSleep()
{
  pinMode(A4,INPUT);
  pinMode(A5,INPUT);
  pinMode(D3,INPUT);
  digitalWrite(A4,LOW);
  digitalWrite(A5,LOW);
  digitalWrite(D3,LOW);
}

static void sleep_afterSleep()
{
  pinMode(D3,OUTPUT);
  digitalWrite(D3,HIGH);
  delay(250);
  buttonsByte=0;
  justPressedButtons=0;
  justReleasedButtons=0;
}

void sleep_wdtSleep(period_t _period)
{
  sleep_beforeSleep();
  PMU.sleep(PM_POFFS0,_period);
  sleep_afterSleep();
}