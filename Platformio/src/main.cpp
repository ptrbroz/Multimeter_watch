
#include <Arduino.h>
#include "main.h"
#include "wiring_private.h"

#include <SSD1306Ascii.h>

#include <SSD1306AsciiAvrI2c.h>

#include <PinChangeInterrupt.h>

#include "buttons.h"
#include "display.h"
//#include "Adafruit5x7_full.h"
#include "snake.h"
#include "program.h"
#include "menu.h"


#include "sleepUtils.h"
#include "measurement.h"
#include "dacUtils.h"
#include "ohmMeter.h"
#include "capacity.h"
#include "waveformGenerator.h"
#include "ncvDetector.h"
#include "resistanceMeter.h"
#include "formula1.h"
#include "kitchenTimer.h"
#include "servoTester.h"
#include "diodeMeter.h"
#include <avr/interrupt.h>

uint8_t *programMemPtr;


//------------------------------------------------------------------------------
void setup() {


  pinMode(D3,OUTPUT);
  digitalWrite(D3,HIGH);
  delay(400);
  Serial.begin(115200);
  uint16_t battVoltage=adc_measureBatteryVoltage();
  dac_init();
  //dac_testFunGen();
  dac_output=128;
  Serial.println(battVoltage);
  Serial.println(dac_getVoltageAfterShunt(battVoltage));
  //Serial.println(dac_getVoltageAfterShunt(battVoltage));

//ADMUX = _BV(REFS0) | _BV(MUX3) | _BV(MUX2) | _BV(MUX1);
  //adc_printSettings(battSet);
  // delay(10000);
  initButtons();

  #if RST_PIN >= 0
  oled.begin(&Adafruit128x64, I2C_ADDRESS, RST_PIN);
  #else // RST_PIN >= t
  oled.begin(&Adafruit128x64, I2C_ADDRESS);
  #endif // RST_PIN >= 0
  // Call oled.setI2cClock(frequency) to change from the default frequency.

  oled.setFont(Adafruit5x7);
  tone(2,4000,10);
  //wdtTest();
  //servoTester_loop(0);

  //res_loop();
  return;
  while(1)
  {
    diode_measureUI();
  }
  return;
  f1_init(NULL);
  while(1)
  {
    f1_loop(NULL);
  }
  return;
  res_loop();
dac_init();

wfg_generate();
//dac_testFunGen();

  while(1)
  {
    dischargeCapacitor();
    uint32_t cap;
    //measureCapacity3(false,cap);
  }
  /*while(true)
  {
    Serial.println(ohmmeter_getRawADCLowRange());
  }
  */
}





//------------------------------------------------------------------------------
void loop() {

  funPtr nextFun = NULL;
  programMemPtr = NULL;
;

  oled.clear();


  while(1){
    handleDebouncing();
    handleButtonEdgeDetection();
    handleButtonAutoRepeat();

    if(nextFun == NULL){
      nextFun = getLoopFun();

      if(nextFun == NULL){ //no program running
          nextFun = menu;
      }
    }
    //else: a function is left over from previous loop (probably init or deinit)


    funRetVal ret = nextFun(programMemPtr);

    nextFun = NULL;

    program p = getProgram();

    switch (ret){
    case CONTINUE_LOOP:
        //do nothing
      break;
    case PROGRAM_START:
      setLoopFun(p.loop);
      if(p.requiredRam>0){
        programMemPtr = (uint8_t*)calloc(p.requiredRam, 1);  //might need to handle running out of memory here in the future
      }
      else{
        programMemPtr = NULL;
      }
      nextFun = p.init;
      break;
    case PROGRAM_END:
      setLoopFun(NULL);
      free(programMemPtr);
      programMemPtr = NULL;
      nextFun = p.deinit;
      break;
    }

    
  handleSleeping();
  //delay(1000);
  //sleep_sleepTillWakeup();
  }
}

void handleSleeping()
{
  if(millis()-lastPressMillis>timeTillSleep)
  {
    sleep_sleepTillWakeup();
    lastPressMillis=millis();
    initOled();
  }
}



void initOled()
{
    Serial.println("INITOLED");
  pinMode(D3,OUTPUT);
  digitalWrite(D3,HIGH);
  delay(50);
  oled.begin(&Adafruit128x64, I2C_ADDRESS);
}




