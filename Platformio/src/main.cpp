#include <PMU.h>
#include <Arduino.h>

volatile uint8_t g_LastState;
volatile uint8_t g_IntFlag;
void donothing()
{
    //g_IntFlag = 1;
}

void setup()
{
  Serial.begin(9600);

  pinMode(2,INPUT);
  digitalWrite(2, HIGH);

  //attachInterrupt(0, donothing, FALLING);
  g_LastState = digitalRead(2);
  g_IntFlag = 0;
}
 
void loop()
{
    static int kokon=0;
    Serial.write("hello, I am working!\n");
    Serial.println(kokon++);
    
    // power/down mode 
    /*
    if(g_LastState == HIGH)
    {
      Serial.println("Change to falling");
      attachInterrupt(0, donothing, FALLING);      
    }
    else
    {
      Serial.println("Change to rising");
      attachInterrupt(0, donothing, RISING);      
    }
    */

    Serial.flush();
  
    PMU.sleep(PM_POFFS0, SLEEP_4S);  
    g_LastState = digitalRead(2); 
}



