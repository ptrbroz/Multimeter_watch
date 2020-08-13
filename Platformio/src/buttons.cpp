#include "Arduino.h"
#include "buttons.h"

volatile uint8_t buttonsByte = 0;
volatile uint8_t justPressedButtons = 0;
volatile uint8_t justReleasedButtons = 0;
uint8_t autoRepeatPressedButtons=0;
volatile unsigned long lastPressMillis;


void initButtons()
{
    //button pins to inputs
    DDRD &= ~(1 << PD5);
    DDRD &= ~(1 << PD6);
    DDRB &= ~(1 << PB7);
    DDRE &= ~(1 << PE4);
    DDRB &= ~(1 << PB6);
    DDRE &= ~(1 << PE5);
    //enable pullups
    PORTD |= (1 << PD5);
    PORTD |= (1 << PD6);
    PORTB |= (1 << PB7);
    PORTE |= (1 << PE4);
    PORTB |= (1 << PB6);
    PORTE |= (1 << PE5);

    //attach interrupt to the millis timer (timer0); the rest has already been setup by millis
    OCR0A = 0xAF;
    TIMSK0 |= _BV(OCIE0A);
    //attach wakeup interrupt to left button
    PCMSK2|=(1<<PCINT21);//interrupt enable for B2
    PCICR|=(1<<PCIE0);//port B interrupt enable
}

uint8_t getButtonsByteFromPorts(uint8_t _pinB, uint8_t _pinD, uint8_t _pinE)
{
  uint8_t retVal = 0;
  retVal |= ((_pinD >> PD6) & 1) << 0; //button 1
  retVal |= ((_pinD >> PD5) & 1) << 1; //button 2
  retVal |= ((_pinE >> PE4) & 1) << 2; //button 3
  retVal |= ((_pinB >> PB7) & 1) << 3; //button 4
  retVal |= ((_pinB >> PB6) & 1) << 4; //button 5
  retVal |= ((_pinE >> PE5) & 1) << 5; //button 6
  return retVal;
}

void handleButtonEdgeDetection()
{
  justReleasedButtons = 0;
  justPressedButtons=0;
  static uint8_t lastButtonsByte;
  if (buttonsByte != lastButtonsByte)
  {
    justReleasedButtons = ((lastButtonsByte)) & ~buttonsByte;
    justPressedButtons = ~lastButtonsByte & buttonsByte;
    lastButtonsByte = buttonsByte;
    //Serial.println(justReleasedButtons,BIN);
  }
    if(justPressedButtons!=0)
    {
      lastPressMillis=millis();//TODO: maybe handle this in the interrupt for improved accuracy? hmmm
    }
}

void handleButtonAutoRepeat()
{
  static unsigned long lastMillis=0;
  const int delayBeforeAutoRepeat=400;
  const int autoRepeatRateDelay=250;
  autoRepeatPressedButtons=0;
  if(millis()-lastPressMillis<delayBeforeAutoRepeat)
  {
    return;
  }
  if(millis()-lastMillis>autoRepeatRateDelay)
  {
    autoRepeatPressedButtons=buttonsByte;
    //Serial.println(autoRepeatPressedButtons,BIN);
    lastMillis=millis();
  }
}

void handleDebouncing()
{
  static unsigned long lastMillis =0;
  static uint8_t pendingRelease;
  static uint8_t buttonsBytePhase0;
  if (millis() - lastMillis < 20)
  {
    return;
  }
  else
  {
    lastMillis = millis();
  }
  static uint8_t phase = 0;
  if (phase == 0)
  {
    pendingRelease = getButtonsByteFromPorts(PINB, PIND, PINE);
    buttonsBytePhase0 = buttonsByte;
    phase = 1;
  }
  else
  {
    uint8_t currentPendingRelease = getButtonsByteFromPorts(PINB, PIND, PINE);
    if (buttonsByte == buttonsBytePhase0 && pendingRelease == (currentPendingRelease))
    {
      //clear the pressed buttons
      buttonsByte &= ~currentPendingRelease;
    }
    phase = 0;
  }
}



SIGNAL(TIMER0_COMPA_vect)
{
  buttonsByte |= ~getButtonsByteFromPorts(PINB, PIND, PINE);
}

EMPTY_INTERRUPT(PCINT0_vect);