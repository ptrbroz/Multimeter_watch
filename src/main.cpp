
#include <Arduino.h>

#include <SSD1306Ascii.h>

#include <SSD1306AsciiAvrI2c.h>

#include "inputs.h"

#define INCREMENT(variable) {variable = variable + 1;}


// 0X3C+SA0 - 0x3C or 0x3D
#define I2C_ADDRESS 0x3C

// Define proper RST_PIN if required.
#define RST_PIN -1

#define DEBOUNCE_TIME 200 //in milliseconds

SSD1306AsciiAvrI2c oled;
//------------------------------------------------------------------------------
void setup() {

  #if RST_PIN >= 0
  oled.begin(&Adafruit128x64, I2C_ADDRESS, RST_PIN);
  #else // RST_PIN >= 0
  oled.begin(&Adafruit128x64, I2C_ADDRESS);
  #endif // RST_PIN >= 0
  // Call oled.setI2cClock(frequency) to change from the default frequency.

  pinMode(D0,INPUT);
  pinMode(D1,INPUT);
  pinMode(D2,INPUT);
  pinMode(D3,INPUT);
  pinMode(D4,INPUT);
  pinMode(D5,INPUT);
  pinMode(D6,INPUT);


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
    oled.println("Hello world!");
    oled.println("A long line may be truncated");
    oled.println();
    int x = 1;

  while(1){
    delay(500);
    oled.clear();

    uint8_t inputsState = readInputsImmediate();
    uint8_t risingEdges;
    uint8_t fallingEdges;
    UPDATE_EDGES(inputsState, risingEdges, fallingEdges);

    if(BUTT_LEFT(risingEdges)){
      x = x+1;
    }

    if(BUTT_LEFT(fallingEdges)){
      x = x-1;
    }

    oled.println();
    printByteToOled(inputsState);
    printByteToOled(risingEdges);
    printByteToOled(fallingEdges);
    oled.println(x);



  }

}










