/*
 * Author: geobitus
 * Date: 22-Mai-2023 07:58:14 PM
 * Scope: Inverted SPWM with deadtime
 */
#include "spwm.c"

static bool HWLP; /*'bool' outside or 'static uint8_t' inside function !critical!*/

ISR(TIMER1_OVF_vect) /*TIMER1_OVF_vect _VECTOR(13) */
{
  cli();
  if (HWLP) /*If half_wave_last_pulse is true.*/
  {
    TCCR1A ^= 0xF0; /*XOR-ing uper nibble of TCCR1A toggle set<->clear COM1A1&COM1A0 <-> COM1B1&COM1B0.*/
    HWLP = false;   /*Declare half_wave_last_pulse as false.*/
  }

  if (POINTER >= POINTER_MAX) /*If POINTER equal or bigger than last_half_wave_pulse*/
  {
    POINTER = 0; /*Reseet POINTER*/
    HWLP = true; /*Declare half_wave_last_pulse as true.*/
  }

  OCR1A = OCR1B = (HW_ARRAY[POINTER]); /*Load pointed value into OCR1A and OCR1B.*/
  POINTER++;                           /*Increment POINTER.*/
  sei();
}
