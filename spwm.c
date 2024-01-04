/*
 * Author: geo
 * Date: 22-Mai-2023 07:58:14 PM
 * Scope: Inverted SPWM with deadtime
 * IGBT switching time Ton=typ 0.8uS max 2uS  / Toff=typ 1.2 max2.8uS
 * MCU clk perriod 62.5 nS @ 16Mhz
 */

#ifndef __AVR_ATmega328P__
#define __AVR_ATmega328P__
#endif

#ifndef F_CPU
#define F_CPU 16000000UL
#endif

//#pragma once /*Avoid include itself*/

#include <stdbool.h>       /*Standard Boolean lib.*/
#include <avr/io.h>        /*AVR device-specific IO definitions*/
#include <avr/interrupt.h> /*Global manipulation of the interrupt flags*/

#include "lookup_40.h"
#include "reg_init.s"
#include "timer1_ovf.s"
#include "ext_int_d2.s"

int main()
{
  reg_init();
  while (1)
  {
    ; /*DO NOTHING*/
  }
  return 0; /*Never land here*/
}