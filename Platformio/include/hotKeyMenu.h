#pragma once
#include "Arduino.h"
void runCurrentMenuCB(int _menuItemIndex);

extern const struct menu* currentMenu;

#define MENU_ITEM_TRANS(varName, name, nextMenu)  const struct menuItem varName PROGMEM={name, setCurrentMenuBinding, menuCBData{.ptr = &nextMenu}, sizeof(struct menu*)};//transitional menu item; executing it will open another menu


#define MENU_ITEM_CMD(varName,name,targetFunc,intArg0,intArg1,intArg2,intArg3) const struct menuItem varName PROGMEM={name, targetFunc,  menuCBData{.ints = {intArg0,intArg1,intArg2,intArg3}},  sizeof(struct menu*)};//transitional menu item; executing it will open another menu

#define MENU(varName,name,...) const struct menu varName PROGMEM={name,{__VA_ARGS__}};

union menuCBData
{
  const void *ptr;
  int16_t ints[4];
  int32_t longs[2];
};

void testCBMenu(menuCBData data, uint8_t len);


struct menuItem
{
  char itemName[30];
  void (*cbPtr)(menuCBData, uint8_t);
  menuCBData data;
  uint8_t dataLen;
};

struct menu
{
  char menuName[30];
  const struct menuItem* menuItems[6];
};

struct menuItem getMenuItem(const struct menuItem* _progmemItem);
struct menu getMenu(const struct menu* _progmemMenu);
void printMenu(const struct menu* _progmemMenu);
void setCurrentMenuBinding(menuCBData data, uint8_t len);
void testCBMenu(menuCBData data, uint8_t len);
void setCurrentMenu(const struct menu* _progmemMenu);
void runCurrentMenuCB(int _menuItemIndex);
int buttonByteToMenuIndex(uint8_t _buttonByte);