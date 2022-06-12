#include "display.h"
#include "program.h"
#include "keyboardTest.h"
#include "buttons.h"
#include "rtcUtils.h"
#include "time.h"
#include "hotKeyMenu.h"
#include "main.h"
#include "sleepUtils.h"


void typeKey(menuCBData data, uint8_t len);
void exitKbrd(menuCBData data, uint8_t len);
void deleteKey(menuCBData data, uint8_t len);

MENU_ITEM_CMD(menuItemExit,"Exit",exitKbrd,-1,0,0,0);

#define exitFlag (*(programMemPtr+0))
#define textIndex (*(programMemPtr+1))
#define text (char*)(programMemPtr+2)



MENU_ITEM_CMD(menuItemA,"A",typeKey,(int)'a',0,0,0);
MENU_ITEM_CMD(menuItemB,"B",typeKey,(int)'b',0,0,0);
MENU_ITEM_CMD(menuItemC,"C",typeKey,(int)'c',0,0,0);
MENU_ITEM_CMD(menuItemD,"D",typeKey,(int)'d',0,0,0);
MENU_ITEM_CMD(menuItemE,"E",typeKey,(int)'e',0,0,0);
MENU_ITEM_CMD(menuItemF,"F",typeKey,(int)'f',0,0,0);
MENU_ITEM_CMD(menuItemG,"G",typeKey,(int)'g',0,0,0);
MENU_ITEM_CMD(menuItemH,"H",typeKey,(int)'h',0,0,0);
MENU_ITEM_CMD(menuItemI,"I",typeKey,(int)'i',0,0,0);
MENU_ITEM_CMD(menuItemJ,"J",typeKey,(int)'j',0,0,0);
MENU_ITEM_CMD(menuItemK,"K",typeKey,(int)'k',0,0,0);
MENU_ITEM_CMD(menuItemL,"L",typeKey,(int)'l',0,0,0);
MENU_ITEM_CMD(menuItemM,"M",typeKey,(int)'m',0,0,0);
MENU_ITEM_CMD(menuItemN,"N",typeKey,(int)'n',0,0,0);
MENU_ITEM_CMD(menuItemO,"O",typeKey,(int)'o',0,0,0);
MENU_ITEM_CMD(menuItemP,"P",typeKey,(int)'p',0,0,0);
MENU_ITEM_CMD(menuItemQ,"Q",typeKey,(int)'q',0,0,0);
MENU_ITEM_CMD(menuItemR,"R",typeKey,(int)'r',0,0,0);
MENU_ITEM_CMD(menuItemS,"S",typeKey,(int)'s',0,0,0);
MENU_ITEM_CMD(menuItemT,"T",typeKey,(int)'t',0,0,0);
MENU_ITEM_CMD(menuItemU,"U",typeKey,(int)'u',0,0,0);
MENU_ITEM_CMD(menuItemV,"V",typeKey,(int)'v',0,0,0);
MENU_ITEM_CMD(menuItemW,"W",typeKey,(int)'w',0,0,0);
MENU_ITEM_CMD(menuItemX,"X",typeKey,(int)'x',0,0,0);
MENU_ITEM_CMD(menuItemY,"Y",typeKey,(int)'y',0,0,0);
MENU_ITEM_CMD(menuItemZ,"Z",typeKey,(int)'z',0,0,0);
MENU_ITEM_CMD(menuItemSpace,"(space)",typeKey,(int)' ',0,0,0);
MENU_ITEM_CMD(menuItemBackspace,"(backspace)",deleteKey,(int)' ',0,0,0);

MENU(menuABCDEF,"abcdef",&menuItemA,&menuItemB,&menuItemC,&menuItemD,&menuItemE,&menuItemF);
MENU(menuGHIJKL,"ghijkl",&menuItemG,&menuItemH,&menuItemI,&menuItemJ,&menuItemK,&menuItemL);
MENU(menuMNOPQR,"mnopqr",&menuItemM,&menuItemN,&menuItemO,&menuItemP,&menuItemQ,&menuItemR);
MENU(menuSTUVWX,"stuvwx",&menuItemS,&menuItemT,&menuItemU,&menuItemV,&menuItemW,&menuItemX);
MENU(menuYZ,"yz",&menuItemY,&menuItemZ,&menuItemSpace,&menuItemBackspace);


MENU_ITEM_TRANS(menuItemABCDEF,"abcdef",menuABCDEF);
MENU_ITEM_TRANS(menuItemGHIJKL,"ghijkl",menuGHIJKL);
MENU_ITEM_TRANS(menuItemMNOPQR,"mnopqr",menuMNOPQR);
MENU_ITEM_TRANS(menuItemSTUVWX,"stuvwx",menuSTUVWX);
MENU_ITEM_TRANS(menuItemYZ,"yz...",menuYZ);

MENU(menuAlphabet,"alphabet",&menuItemExit,&menuItemABCDEF,&menuItemGHIJKL,&menuItemMNOPQR,&menuItemSTUVWX,&menuItemYZ);

const program prog_KeyboardTest= {keyboardTest_init, keyboardTest_loop, keyboardTest_deinit, "Keyboard test", 50};

funRetVal keyboardTest_init(uint8_t *memPtr)
{
    oled.clear();
    setCurrentMenu(&menuAlphabet);
    sleep_setTimeTillSleep(-1);//do not sleep
    return CONTINUE_LOOP;
}

funRetVal keyboardTest_loop( uint8_t *memPtr)
{
    if(exitFlag)
    {
        return PROGRAM_END;
    }
    if(justPressedButtons!=0)
    {
        int index=buttonByteToMenuIndex(justPressedButtons);
        runCurrentMenuCB(index);
    }

   return CONTINUE_LOOP;
}

funRetVal keyboardTest_deinit(uint8_t *memPtr)
{
    return CONTINUE_LOOP;
}


void typeKey(menuCBData data, uint8_t len)
{
    *(text+textIndex)=data.ints[0];
    textIndex++;
    setCurrentMenu(&menuAlphabet);
    oled.setCursor(0,0);
    oled.print(text);
}

void deleteKey(menuCBData data, uint8_t len)
{

    if (textIndex == 0)
    {
        return;
    }

    textIndex--;
    *(text + textIndex) = data.ints[0];
    setCurrentMenu(&menuAlphabet);
    oled.setCursor(0, 0);
    oled.print(text);
}

void exitKbrd(menuCBData data, uint8_t len)
{
    exitFlag=true;
}