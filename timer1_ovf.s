
ISR(TIMER1_OVF_vect)
{
    asm(
        "cli    \n"
        "lds	r24, 0x0155 \n"
        "and	r24, r24    \n"
        "breq	.+16    \n"
        "lds	r24, 0x0080 \n"
        "ldi	r25, 0xF0   \n"
        "eor	r24, r25    \n"
        "sts	0x0080, r24 \n"
        "sts	0x0155, r1  \n"
        "lds	r25, 0x0154 \n"
        "lds	r24, 0x0150 \n"
        "cp	r25, r24    \n"
        "brcs	.+10    \n"
        "sts	0x0154, r1  \n"
        "ldi	r24, 0x01   \n"
        "sts	0x0155, r24 \n"
        "lds	r24, 0x0154 \n"
        "mov	r30, r24    \n"
        "ldi	r31, 0x00   \n"
        "add	r30, r30    \n"
        "adc	r31, r31    \n"
        "subi	r30, 0x00   \n"
        "sbci	r31, 0xFF   \n"
        "ld	r18, Z  \n"
        "ldd	r19, Z+1    \n"
        "sts	0x008B, r19 \n"
        "sts	0x008A, r18 \n"
        "sts	0x0089, r19 \n"
        "sts	0x0088, r18 \n"
        "subi	r24, 0xFF   \n"
        "sts	0x0154, r24 \n"
        "sei");
}