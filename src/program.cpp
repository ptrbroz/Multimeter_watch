#include "program.h"

funPtr currentLoopFun = NULL;
program currentProgram;

funPtr getLoopFun(){
    return currentLoopFun;
}

void setLoopFun(funPtr funPtr){
    currentLoopFun = funPtr;
}

program getProgram(){
    return currentProgram;
}

void setProgram(program prog){
    currentProgram = prog;
}

