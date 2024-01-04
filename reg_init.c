/*
 * Author: geobitus
 * Date: 22-Mai-2023 07:58:14 PM
 * Scope: Inverted SPWM with deadtime
 */
#include "spwm.c"

void reg_init()
{
    cli();                                                  /*Clear SREG I flag to prevent any form of interrupt durring reg_init.*/
    MCUSR &= ~(1 << WDRF);                                  /*Clear Watchdog System Reset Flag*/
    WDTCSR |= (1 << WDCE) | (1 << WDE);                     /*Four cycles to set the new values from here*/
    WDTCSR = 0x00;                                          /*Clear WDTCSR register*/
    DDRB |= (1 << DDB1) | (1 << DDB2) | (1 << DDB5);        /*Set dirrection for PORTB1(SPWM+), PORTB2(SPWM-).*/
    PORTB |= (1 << PORTB1) | (1 << PORTB2);                 /*Set PORTB1 & PORTB2 high -mandatory since we want inverted SPWM-.*/
    TCCR1A = TCCR1B = TIMSK1 = 0x00;                        /*clear TCCR1A, TCCR1B & TIMSK1 registers.*/
    TCCR1A |= (1 << COM1A1) | (1 << COM1A0) | (1 << WGM11); /*Set OC1A/OC1B on compare match when up-counting. Clear OC1A/OC1B on compare match when down counting.*/
    TCCR1B |= (1 << WGM13) | (1 << WGM12) | (1 << CS10);    /*CS10 set=>clkI/O/1 (no prescaling) | WGM11, WGM12 & WGM13=>PWM TOP on ICR1 update of OCR1X at BOTTOM TOV1 flag set on TOP.*/
    TIMSK1 |= (1 << TOIE1);                                 /*TOIE1 set=>Timer/Counter1, Overflow Interrupt Enable.*/
    DDRD &= ~(1 << DDD2);                                   /*Clear DDD2 to set PORTD2 as input.*/
    PORTD &= ~(1 << PORTD2);                                /*Clear PORTD2 pullup.*/
    TIMSK0 &= ~(1 << TOIE0);                                /*Clear TOIE0.*/
    EICRA |= (1 << ISC01) | (1 << ISC00);                   /*Set ISC01 & ISC00=>The rising edge of INT0 pin generates an interrupt request.*/
    EIMSK |= (1 << INT0);                                   /*Set INT0=> External Interrupt Request 0 Enable.*/
    ICR1 = MCCPP;                                           /*Load MAX_CPU_CLOCKS_PER_PULSE into ICR1.*/
    sei();                                                  /*Enable Interrupts*/
}
