/*4000clks/40pls/fullsine=4Khz*/
#include <avr/io.h> 
uint8_t POINTER = 0;      /*LookupPointer*/
uint16_t MCCPP = 4000;    /*MaxCpuClocksPerPulse*/
uint8_t POINTER_MAX = 40; /*PulsesPerHalfSine*/

uint16_t HW_ARRAY[40] = {
     0,   314,   626,   934,  1236,  1531,  1816,
  2090,  2351,  2598,  2828,  3042,  3236,  3411,
  3564,  3696,  3804,  3889,  3951,  3988,  4000,
  3988,  3951,  3889,  3804,  3696,  3564,  3411,
  3236,  3042,  2828,  2598,  2351,  2090,  1816,
  1531,  1236,   934,   626,   314 };

