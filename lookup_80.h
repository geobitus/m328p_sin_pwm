/*2000clks/160pls/fullsine=8Khz*/
#include <avr/io.h> 
uint8_t POINTER = 0;      /*LookupPointer*/
uint16_t MCCPP = 2000;    /*MaxCpuClocksPerPulse*/
uint8_t POINTER_MAX = 80; /*PulsesPerHalfSine*/

uint8_t HW_ARRAY[80] = {
    0, 0, 157, 235, 313, 390, 467,
    543, 618, 692, 765, 837, 908, 977,
    1045, 1111, 1176, 1238, 1299, 1358, 1414,
    1469, 1521, 1571, 1618, 1663, 1705, 1745,
    1782, 1816, 1848, 1876, 1902, 1925, 1945,
    1962, 1975, 1986, 1994, 1998, 2000, 1998,
    1994, 1986, 1975, 1962, 1945, 1925, 1902,
    1876, 1848, 1816, 1782, 1745, 1705, 1663,
    1618, 1571, 1521, 1469, 1414, 1358, 1299,
    1238, 1176, 1111, 1045, 977, 908, 837,
    765, 692, 618, 543, 467, 390, 313,
    235, 157, 0};