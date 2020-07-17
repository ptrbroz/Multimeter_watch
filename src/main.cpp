
#include <Arduino.h>

#include <SSD1306Ascii.h>

#include <SSD1306AsciiAvrI2c.h>

#include <PinChangeInterrupt.h>

#include "inputs.h"
#include "funWrapper.h"
#include "display.h"
#include "prog_clockFace.h"
#include "Adafruit5x7_full.h"




#define DEBOUNCE_TIME 200 //in milliseconds. Keep below 255


volatile uint8_t inputsByte = 0x00;






//------------------------------------------------------------------------------
void setup() {

  #if RST_PIN >= 0
  oled.begin(&Adafruit128x64, I2C_ADDRESS, RST_PIN);
  #else // RST_PIN >= 0
  oled.begin(&Adafruit128x64, I2C_ADDRESS);
  #endif // RST_PIN >= 0
  // Call oled.setI2cClock(frequency) to change from the default frequency.

  for(int i = D1; i<= D7; i++){
    pinMode(i, INPUT);
  }

  //Dunno why this is broken! Only the rising interrupt happens.
  //Maybe the library cannot handle having both a rising and a falling interrupt for a single pin?
  #define ATTACH_LAMBDAS_BROKEN(pin) \
    attachPCINT(digitalPinToPCINT(pin), []{inputsByte = (inputsByte & (~(0x01<<(pin-D1))));interruptCountA += 1;}, FALLING); \
    attachPCINT(digitalPinToPCINT(pin), []{inputsByte = (inputsByte | (0x01<<(pin-D1)));interruptCountB += 1;}, RISING); \

  #define ATTACH_LAMBDAS(pin) \
    attachPCINT(digitalPinToPCINT(pin), []{ \
      if(getPinChangeInterruptTrigger(digitalPinToPCINT(pin))==RISING){ \
        inputsByte = (inputsByte | (0x01<<(pin-D1))); \
      } \
      else{ \
        inputsByte = inputsByte & (~(0x01<<(pin-D1))); \
      } \
    }, CHANGE); \

  ATTACH_LAMBDAS(D1);
  ATTACH_LAMBDAS(D2);
  ATTACH_LAMBDAS(D3);
  ATTACH_LAMBDAS(D4);
  ATTACH_LAMBDAS(D5);
  ATTACH_LAMBDAS(D6);
  ATTACH_LAMBDAS(D7);

  oled.setFont(Adafruit5x7);
}

uint8_t readInputsImmediate(){
  
  uint8_t inputState = 0x00;
  uint8_t mask = 0x01;

  for(int i = D1; i<=D7; i++){
    int pinState = digitalRead(i);
    if(pinState == HIGH){
      inputState = inputState | mask;
    }
    mask <<= 1;
  }

  return inputState;
}





//------------------------------------------------------------------------------
void loop() {
  uint8_t risingByte = 0x00;
  uint8_t fallingByte = 0x00;

  uint8_t risingByteWaiting = 0x00;
  uint8_t fallingByteWaiting = 0x00;
  
  uint8_t debounceTimers[7] = {0}; //only one set of timers needed, since the same bit can never be high on both risingByte and fallingByte

  unsigned long lastMillis = millis();

  funWrapper nextFunWrapper = {prog_clockFace};

  oled.clear();

  while(1){
    UPDATE_EDGES(inputsByte, risingByte, fallingByte);

    unsigned long thisMillis = millis();
    uint8_t diffMillis;

    if(thisMillis<lastMillis){
      lastMillis = 0; //overflow
    }

    diffMillis = (thisMillis - lastMillis <= 255) ? thisMillis - lastMillis : 255;
    
    uint8_t debouncedRisingByte = 0x00;
    uint8_t debouncedFallingByte = 0x00;

    uint8_t mask = 0x01;

    for(int i = 0; i<=6; i++){

      if( ((risingByteWaiting&mask) && (inputsByte&mask)) || ((fallingByteWaiting&mask) && !(inputsByte&mask))  ){
        if(debounceTimers[i] + diffMillis >= DEBOUNCE_TIME){
          debouncedRisingByte |= (risingByteWaiting&mask);
          debouncedFallingByte |= (fallingByteWaiting&mask);
          risingByteWaiting &= (~mask);
          fallingByteWaiting &= (~mask);
          debounceTimers[i] = 0;
        }
        else{
          debounceTimers[i] += diffMillis;
        }
      }
      mask <<= 1;
    }

    risingByteWaiting |= risingByte;
    fallingByteWaiting |= fallingByte;

    nextFunWrapper = nextFunWrapper.fun(debouncedRisingByte, debouncedFallingByte);





  }
}










