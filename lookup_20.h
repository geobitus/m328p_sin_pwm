/*8000clks/20pls/fullsine=2Khz*/
#include <avr/io.h> 
uint8_t POINTER = 0;      /*LookupPointer*/
uint16_t MCCPP = 8000;    /*MaxCpuClocksPerPulse*/
uint8_t POINTER_MAX = 20; /*PulsesPerHalfSine*/

uint8_t HW_ARRAY[20] = {
     0,  1251,  2472,  3632,  4702,  5657,  6472,
  7128,  7608,  7902,  8000,  7902,  7608,  7128,
  6472,  5657,  4702,  3632,  2472,  1251 };

