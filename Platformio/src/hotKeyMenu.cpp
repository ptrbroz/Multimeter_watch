#include "hotKeyMenu.h"
#include "display.h"

const struct menu* currentMenu;


struct menuItem getMenuItem(const struct menuItem* _progmemItem)
{
  struct menuItem retVal;
  memcpy_P(&retVal, _progmemItem, sizeof(struct menuItem));
  return retVal;
}

struct menu getMenu(const struct menu* _progmemMenu)
{
  struct menu retVal;
  memcpy_P(&retVal, _progmemMenu, sizeof(struct menu));
  return retVal;
}


void printMenu(const struct menu* _progmemMenu)
{
  struct menu ramMenu = getMenu(_progmemMenu);
  //oled.println(ramMenu.menuName);
  //oled.println("----------");
  oled.clear();
  oled.setCursor(0,2);
  char buttonStrings[][4]={"<<","<","v","^",">",">>"};

  for (int i = 0; i < 6; i++)
  {
    if (ramMenu.menuItems[i] != 0)
    {
      struct menuItem ramMenuItem = getMenuItem(ramMenu.menuItems[i]);
      oled.print(buttonStrings[i]);
      oled.print(": ");
      oled.println(ramMenuItem.itemName);
    }
  }
}


void setCurrentMenuBinding(menuCBData data, uint8_t len)
{
  setCurrentMenu((const struct menu*)(data.ptr));
}

void testCBMenu(menuCBData data, uint8_t len)
{
  for (int i = 0; i < 4; i++)
  {
    Serial.println(data.ints[i]);
  }

}

void setCurrentMenu(const struct menu* _progmemMenu)
{
  currentMenu = _progmemMenu;
  printMenu(_progmemMenu);
}

void runCurrentMenuCB(int _menuItemIndex)
{
  struct menu ramMenu = getMenu(currentMenu);
  struct menuItem ramMenuItem = getMenuItem(ramMenu.menuItems[_menuItemIndex]);
  if(ramMenuItem.cbPtr==0)
  {
    return;
  }
  ramMenuItem.cbPtr(ramMenuItem.data, ramMenuItem.dataLen);
}

int buttonByteToMenuIndex(uint8_t _buttonByte)
{
    int tempIndex=-1;
    for(int i=0;i<6;i++)
    {
        if((_buttonByte>>i)&0x01)
        {
            tempIndex=i;
            break;
        }
    }
    if(tempIndex==1)
    {
        tempIndex=0;
    }
    else
    if(tempIndex==0)
    {
        tempIndex=1;
    }
    return tempIndex;
}