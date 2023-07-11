#include "display.h"
#include "buttons.h"
#include "program.h"
#include "main.h"
#include "sleepUtils.h"
#include "formula1.h"
#include <avr/pgmspace.h>



const program prog_f1 = {f1_init, f1_loop, f1_deinit, "Formula 1", 0};

struct prog_f1_struct
{
    uint8_t carArray[CAR_COUNT];
    uint8_t carArrayIndex=0;
    uint16_t speed=500;
    uint8_t pos;
    unsigned long lastMillis;
    unsigned long gameStartMillis;
    uint8_t forceUpdate;
    uint8_t lives;
    unsigned long lastCrashMillis;
    uint8_t recoveryBlinker;
    uint16_t score;
};

static prog_f1_struct s;//TODO: change

funRetVal f1_init(uint8_t *memPtr)
{
    s.gameStartMillis=millis();
    sleep_setTimeTillSleep(-1);//do not sleep
    for(int i=0;i<CAR_COUNT;i++)
    {
        s.carArray[i]=NO_CAR;
        s.lives=3;
    }
    return CONTINUE_LOOP;
}

void f1_step()
{
    int freq=map(millis()-s.gameStartMillis,0,120000UL,2000,13330);
    int period=1000000UL/freq;
    if(period<75)
    {
        period=75;
    }
    if(period>500)
    {
        period=500;
    }


    if(millis()-s.lastMillis>period)
    {
        s.lastMillis=millis();
        s.carArrayIndex++;
        s.carArrayIndex = s.carArrayIndex % CAR_COUNT;
        int newCarIndex = s.carArrayIndex - 1;
        if (newCarIndex < 0)
        {
            newCarIndex += CAR_COUNT;
        }
        if (newCarIndex % 2 == 0)
        {
            s.carArray[newCarIndex] = random(LANES_COUNT + 1); //0==no car
        }
        else
        {
            s.carArray[newCarIndex] = NO_CAR;
        }
        if(millis()-s.lastCrashMillis<5000)//invincible
        {
            s.recoveryBlinker=!s.recoveryBlinker;
        }
        else
        {
            s.recoveryBlinker=0;
            if (s.carArray[s.carArrayIndex] == s.pos + 1)//crash
            {
                s.lives--;
                delay(1000);
                s.lastCrashMillis = millis();
                if(s.lives==0)
                {
                    f1_gameOver();
                }
            }
        }
        s.forceUpdate=true;
        s.score++;
    }
    if(s.forceUpdate)
    {
        f1_draw();
    }
    //unsigned long temp=map(millis()-s.gameStartMillis,0,120000,500,8000);
    //tone(2,200+((millis()%temp)/20));
}

uint8_t f1_getCarArrayAtPos(int _pos)
{
    _pos=_pos%CAR_COUNT;
    if(_pos<0)
    {
        _pos=CAR_COUNT+_pos;
    }
    return s.carArray[_pos];
}

uint8_t f1_setCarArrayAtPos(int _pos, uint8_t _val)
{
    _pos=_pos%CAR_COUNT;
    if(_pos<0)
    {
        _pos=CAR_COUNT+_pos;
    }
    s.carArray[_pos]=_val;
}

void f1_draw()
{
    oled.setCursor(0,0);
    oled.set2X();
    char temp[20];
    snprintf(temp,20,"%06d   x%d",s.score,s.lives);
    oled.print(temp);
    oled.set1X();
    oled.setCursor(0,2);
    oled.print(F("###################"));
    //oled.print(&(barricades[s.score%3]));
    oled.setCursor(0,3);
    for(int i=0;i<LANES_COUNT;i++)
    {
        char textArr[CAR_COUNT+1];
        textArr[CAR_COUNT]='\0';
        for (int j=0;j<CAR_COUNT;j++)
        {
            if (j == 0 && s.pos == i)
            {
                if (s.recoveryBlinker == 0)
                {
                    textArr[j] = 'x';
                }
                else
                {
                    textArr[j] = '+';
                }
                continue;
            }

            int index = (j + s.carArrayIndex) % CAR_COUNT;
            if (s.carArray[index] == i + 1)
            {
                textArr[j] = 'o';
            }
            else
            {
                textArr[j] = ' ';
            }
        }
        oled.println(textArr);
    }
    oled.print(F("###################"));
}

void f1_handleInputs()
{
    s.forceUpdate = false;
    if (JOY_UP(justPressedButtons))
    {
        s.pos > 0 ? s.pos-- : s.pos = 0;
        s.forceUpdate = true;
    }
    else if (JOY_DOWN(justPressedButtons))
    {
        s.pos < LANES_COUNT - 1 ? s.pos++ : s.pos = LANES_COUNT - 1;
        s.forceUpdate = true;
    }
}

funRetVal f1_loop(uint8_t *memPtr)
{
    f1_step();
    if(BUTT_LEFT(justPressedButtons))
    {
        delay(200);
        return PROGRAM_END;
    }
    f1_handleInputs();
    if(s.lives==0)
    {
        return PROGRAM_END;
    }
    return CONTINUE_LOOP;
}

void f1_gameOver()
{
    oled.clear();
    oled.set2X();
    oled.setCursor(0,0);
    oled.println("GAME OVER");
    char temp[20];
    delay(500);
    snprintf(temp,20,"S: %d",s.score);
    oled.println(temp);
    delay(2000);
}


funRetVal f1_deinit(uint8_t *memPtr)
{
    sleep_setTimeTillSleep(10000);
    return CONTINUE_LOOP;
}