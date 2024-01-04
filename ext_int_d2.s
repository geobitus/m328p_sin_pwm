ISR(INT0_vect)
{
  asm(
      "cli    \n"           /*Clear SREG I flag to prevent any form of interrupt.*/
      "out	0x04, r1   \n"  /*DDRB inputs because "r1"was previous cleared*/
      "ldi	r24, 0xFF   \n" /*Load 0xff into r24*/
      "out	0x05, r24   \n" /*out r24 to PORTB activate pullup.*/
      "sbi 0x04, 5    \n"   /*DDRB << Onboard LED as output*/
      "sbi 0x03, 5    \n"   /*PINB Toggle Onboard LED*/
      "ldi	r30, 0x60   \n"
      "ldi	r31, 0x00   \n"
      "ldi	r24, 0x18   \n"
      "st	Z, r24    \n"
      "ldi	r24, 0x29 \n"
      "st	Z, r24    \n"
      "sbi 0x03, 5 " /*Toggle PINB5.(Onboard LED)*/
  );
}