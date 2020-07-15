
#include <Arduino.h>

#include <SSD1306Ascii.h>

#include <SSD1306AsciiAvrI2c.h>

#include <PinChangeInterrupt.h>

#include "inputs.h"




// 0X3C+SA0 - 0x3C or 0x3D
#define I2C_ADDRESS 0x3C

// Define proper RST_PIN if required.
#define RST_PIN -1

#define DEBOUNCE_TIME 200 //in milliseconds


SSD1306AsciiAvrI2c oled;
volatile uint8_t inputsByte = 0x00;
volatile int interruptCountA = 0;
volatile int interruptCountB = 0;


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
        interruptCountA += 1; \
      } \
      else{ \
        inputsByte = inputsByte & (~(0x01<<(pin-D1))); \
        interruptCountB += 1; \
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


void printByteToOled(uint8_t inbyte){
  uint8_t mask = 0x80;
  for(int i = 0; i<=7;i++){
    if((mask & inbyte) != 0x00){
      oled.print("1");
    }
    else{
      oled.print("0");
    }
    mask >>= 1;
  }
  oled.println();
}




//------------------------------------------------------------------------------
void loop() {

    oled.clear();
    oled.println();
    int x = 1;

  while(1){

    oled.clear();

  /*
    uint8_t risingEdges;
    uint8_t fallingEdges;
    UPDATE_EDGES(inputsByte, risingEdges, fallingEdges);

    if(BUTT_LEFT(risingEdges)){
      x = x+1;
    }

    if(BUTT_LEFT(fallingEdges)){
      x = x-1;
    }

*/
    

    oled.println();
    printByteToOled(inputsByte);
    //printByteToOled(risingEdges);
    //printByteToOled(fallingEdges);
    oled.println(x);
    oled.print("  ");
    oled.print(interruptCountA);
    oled.print(":");
    oled.print(interruptCountB);


  }

}










