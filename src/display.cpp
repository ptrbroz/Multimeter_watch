#include <Arduino.h>
#include <SSD1306AsciiAvrI2c.h>


SSD1306AsciiAvrI2c oled;


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










