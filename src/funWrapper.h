#pragma once

struct funWrapper {
  struct funWrapper (*fun)(uint8_t, uint8_t);
  //add more members to pass stuff between programs?
};

