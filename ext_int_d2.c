
#include "spwm.c"
ISR(INT0_vect)
{
    cli();                                           /*cli();=>Clear SREG I flag to prevent any form of interrupt.*/
    DDRB = 0x00;                                     /*DDRB inputs.*/
    PORTB = 0xff;                                    /*PORTB activate pullup.*/
    DDRB |= (1 << DDB5);                             /*Onboard LED output*/
    PINB = PINB | (1 << PB5);                        /*Toggle PINB5.(Onboard LED)*/
    WDTCSR = (1 << WDCE) | (1 << WDE);               /*Start watchdog timed sequence:four cycles to set the new values from here*/
    WDTCSR = (1 << WDE) | (1 << WDP3) | (1 << WDP0); /*WDP0 & WDP3 for a 8 seconds WDT*/
    PINB = PINB | (1 << PB5);                        /*Toggle PINB5.(Onboard LED)*/
}