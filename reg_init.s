void reg_init()
{
    asm(
        "cli    \n"
        "in	r24, 0x34	\n"
        "andi	r24, 0xF7   \n"
        "out	0x34, r24	\n"
        "ldi	r30, 0x60	\n"
        "ldi	r31, 0x00	\n"
        "ld	r24, Z  \n"
        "ori	r24, 0x18	\n"
        "st	Z, r24  \n"
        "st	Z, r1   \n"
        "in	r24, 0x04	\n"
        "ori	r24, 0x26	\n"
        "out	0x04, r24	\n"
        "in	r24, 0x05	\n"
        "ori	r24, 0x06	\n"
        "out	0x05, r24	\n"
        "ldi	r30, 0x6F	\n"
        "ldi	r31, 0x00	\n"
        "st	Z, r1   \n"
        "ldi	r26, 0x81	\n"
        "ldi	r27, 0x00	\n"
        "st	X, r1   \n"
        "ldi	r28, 0x80	\n"
        "ldi	r29, 0x00	\n"
        "st	Y, r1   \n"
        "ld	r24, Y  \n"
        "ori	r24, 0xC2	\n"
        "st	Y, r24  \n"
        "ld	r24, X  \n"
        "ori	r24, 0x19	\n"
        "st	X, r24  \n"
        "ld	r24, Z  \n"
        "ori	r24, 0x01	\n"
        "st	Z, r24  \n"
        "cbi	0x0a, 2	    \n"
        "cbi	0x0b, 2	    \n"
        "ldi	r30, 0x6E	\n"
        "ldi	r31, 0x00	\n"
        "ld	r24, Z  \n"
        "andi	r24, 0xFE   \n"
        "st	Z, r24  \n"
        "ldi	r30, 0x69	\n"
        "ldi	r31, 0x00	\n"
        "ld	r24, Z  \n"
        "ori	r24, 0x03	\n"
        "st	Z, r24  \n"
        "sbi	0x1d, 0	\n"
        "lds	r24, 0x0151	\n"
        "lds	r25, 0x0152	\n"
        "sts	0x0087, r25	\n"
        "sts	0x0086, r24	\n"
        "sei     ");
}