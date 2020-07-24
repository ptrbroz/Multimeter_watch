#pragma once

#include <arduino.h>

#define maxProgramNameLen 20

enum funRetVal{CONTINUE_LOOP, PROGRAM_START, PROGRAM_END};

/*
Program flow control:

During normal operation, return CONTINUE_LOOP.
The program may change its running function by calling setLoopFun.

When PROGRAM_START is called, the main will set LoopFun to that specified in getProgram(). Before running LoopFun, program.init will first run
Intended to be returned mostly from the main menu. Be sure to call setProgram() before returning it!
If you do wish to start another program from your own, take care that proper deinit of your program happens. 
You should probably only return this from your program.deinit function (or call your deinit manually before returning).

After returning PROGRAM_END, the main will set LoopFun to NULL (null loopfun leads to menu function being called).
Then, program.deinit function will be called.
*/


typedef funRetVal (*funPtr)(uint8_t, uint8_t, uint8_t *);

struct program {
    funPtr init;
    funPtr loop;
    funPtr deinit;
    char name[maxProgramNameLen];
    int requiredRam;
};

funPtr getLoopFun();
void setLoopFun(funPtr funPtr);
program getProgram();
void setProgram(program prog);




