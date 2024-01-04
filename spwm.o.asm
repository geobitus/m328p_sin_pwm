
spwm.o:     file format elf32-avr


Disassembly of section .text:

00000000 <reg_init>:
   0:	f8 94       	cli
   2:	84 b7       	in	r24, 0x34	; 52
   4:	87 7f       	andi	r24, 0xF7	; 247
   6:	84 bf       	out	0x34, r24	; 52
   8:	e0 e6       	ldi	r30, 0x60	; 96
   a:	f0 e0       	ldi	r31, 0x00	; 0
   c:	80 81       	ld	r24, Z
   e:	88 61       	ori	r24, 0x18	; 24
  10:	80 83       	st	Z, r24
  12:	10 82       	st	Z, r1
  14:	84 b1       	in	r24, 0x04	; 4
  16:	86 62       	ori	r24, 0x26	; 38
  18:	84 b9       	out	0x04, r24	; 4
  1a:	85 b1       	in	r24, 0x05	; 5
  1c:	86 60       	ori	r24, 0x06	; 6
  1e:	85 b9       	out	0x05, r24	; 5
  20:	ef e6       	ldi	r30, 0x6F	; 111
  22:	f0 e0       	ldi	r31, 0x00	; 0
  24:	10 82       	st	Z, r1
  26:	a1 e8       	ldi	r26, 0x81	; 129
  28:	b0 e0       	ldi	r27, 0x00	; 0
  2a:	1c 92       	st	X, r1
  2c:	c0 e8       	ldi	r28, 0x80	; 128
  2e:	d0 e0       	ldi	r29, 0x00	; 0
  30:	18 82       	st	Y, r1
  32:	88 81       	ld	r24, Y
  34:	82 6c       	ori	r24, 0xC2	; 194
  36:	88 83       	st	Y, r24
  38:	8c 91       	ld	r24, X
  3a:	89 61       	ori	r24, 0x19	; 25
  3c:	8c 93       	st	X, r24
  3e:	80 81       	ld	r24, Z
  40:	81 60       	ori	r24, 0x01	; 1
  42:	80 83       	st	Z, r24
  44:	52 98       	cbi	0x0a, 2	; 10
  46:	5a 98       	cbi	0x0b, 2	; 11
  48:	ee e6       	ldi	r30, 0x6E	; 110
  4a:	f0 e0       	ldi	r31, 0x00	; 0
  4c:	80 81       	ld	r24, Z
  4e:	8e 7f       	andi	r24, 0xFE	; 254
  50:	80 83       	st	Z, r24
  52:	e9 e6       	ldi	r30, 0x69	; 105
  54:	f0 e0       	ldi	r31, 0x00	; 0
  56:	80 81       	ld	r24, Z
  58:	83 60       	ori	r24, 0x03	; 3
  5a:	80 83       	st	Z, r24
  5c:	e8 9a       	sbi	0x1d, 0	; 29
  5e:	80 91 51 01 	lds	r24, 0x0151	; 0x800151 <__vector_1+0x80006f>
  62:	90 91 52 01 	lds	r25, 0x0152	; 0x800152 <__vector_1+0x800070>
  66:	90 93 87 00 	sts	0x0087, r25	; 0x800087 <__vector_1+0x7fffa5>
  6a:	80 93 86 00 	sts	0x0086, r24	; 0x800086 <__vector_1+0x7fffa4>
  6e:	78 94       	sei
  70:	08 95       	ret

00000072 <__vector_13>:
  72:	1f 92       	push	r1
  74:	0f 92       	push	r0
  76:	0f b6       	in	r0, 0x3f	; 63
  78:	0f 92       	push	r0
  7a:	11 24       	eor	r1, r1
  7c:	f8 94       	cli
  7e:	80 91 55 01 	lds	r24, 0x0155	; 0x800155 <__vector_1+0x800073>
  82:	88 23       	and	r24, r24
  84:	01 f0       	breq	.+0      	; 0x86 <__vector_13+0x14>
  86:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__vector_1+0x7fff9e>
  8a:	90 ef       	ldi	r25, 0xF0	; 240
  8c:	89 27       	eor	r24, r25
  8e:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__vector_1+0x7fff9e>
  92:	10 92 55 01 	sts	0x0155, r1	; 0x800155 <__vector_1+0x800073>
  96:	90 91 54 01 	lds	r25, 0x0154	; 0x800154 <__vector_1+0x800072>
  9a:	80 91 50 01 	lds	r24, 0x0150	; 0x800150 <__vector_1+0x80006e>
  9e:	98 17       	cp	r25, r24
  a0:	00 f0       	brcs	.+0      	; 0xa2 <__vector_13+0x30>
  a2:	10 92 54 01 	sts	0x0154, r1	; 0x800154 <__vector_1+0x800072>
  a6:	81 e0       	ldi	r24, 0x01	; 1
  a8:	80 93 55 01 	sts	0x0155, r24	; 0x800155 <__vector_1+0x800073>
  ac:	80 91 54 01 	lds	r24, 0x0154	; 0x800154 <__vector_1+0x800072>
  b0:	e8 2f       	mov	r30, r24
  b2:	f0 e0       	ldi	r31, 0x00	; 0
  b4:	ee 0f       	add	r30, r30
  b6:	ff 1f       	adc	r31, r31
  b8:	e0 50       	subi	r30, 0x00	; 0
  ba:	ff 4f       	sbci	r31, 0xFF	; 255
  bc:	20 81       	ld	r18, Z
  be:	31 81       	ldd	r19, Z+1	; 0x01
  c0:	30 93 8b 00 	sts	0x008B, r19	; 0x80008b <__vector_1+0x7fffa9>
  c4:	20 93 8a 00 	sts	0x008A, r18	; 0x80008a <__vector_1+0x7fffa8>
  c8:	30 93 89 00 	sts	0x0089, r19	; 0x800089 <__vector_1+0x7fffa7>
  cc:	20 93 88 00 	sts	0x0088, r18	; 0x800088 <__vector_1+0x7fffa6>
  d0:	8f 5f       	subi	r24, 0xFF	; 255
  d2:	80 93 54 01 	sts	0x0154, r24	; 0x800154 <__vector_1+0x800072>
  d6:	78 94       	sei
  d8:	0f 90       	pop	r0
  da:	0f be       	out	0x3f, r0	; 63
  dc:	0f 90       	pop	r0
  de:	1f 90       	pop	r1
  e0:	18 95       	reti

000000e2 <__vector_1>:
  e2:	1f 92       	push	r1
  e4:	0f 92       	push	r0
  e6:	0f b6       	in	r0, 0x3f	; 63
  e8:	0f 92       	push	r0
  ea:	11 24       	eor	r1, r1
  ec:	f8 94       	cli
  ee:	14 b8       	out	0x04, r1	; 4
  f0:	8f ef       	ldi	r24, 0xFF	; 255
  f2:	85 b9       	out	0x05, r24	; 5
  f4:	25 9a       	sbi	0x04, 5	; 4
  f6:	1d 9a       	sbi	0x03, 5	; 3
  f8:	e0 e6       	ldi	r30, 0x60	; 96
  fa:	f0 e0       	ldi	r31, 0x00	; 0
  fc:	88 e1       	ldi	r24, 0x18	; 24
  fe:	80 83       	st	Z, r24
 100:	89 e2       	ldi	r24, 0x29	; 41
 102:	80 83       	st	Z, r24
 104:	1d 9a       	sbi	0x03, 5	; 3
 106:	0f 90       	pop	r0
 108:	0f be       	out	0x3f, r0	; 63
 10a:	0f 90       	pop	r0
 10c:	1f 90       	pop	r1
 10e:	18 95       	reti

Disassembly of section .data:

00000000 <HW_ARRAY>:
   0:	00 00       	nop
   2:	3a 01       	movw	r6, r20
   4:	72 02       	muls	r23, r18
   6:	a6 03       	fmuls	r18, r22
   8:	d4 04       	cpc	r13, r4
   a:	fb 05       	cpc	r31, r11
   c:	18 07       	cpc	r17, r24
   e:	2a 08       	sbc	r2, r10
  10:	2f 09       	sbc	r18, r15
  12:	26 0a       	sbc	r2, r22
  14:	0c 0b       	sbc	r16, r28
  16:	e2 0b       	sbc	r30, r18
  18:	a4 0c       	add	r10, r4
  1a:	53 0d       	add	r21, r3
  1c:	ec 0d       	add	r30, r12
  1e:	70 0e       	add	r7, r16
  20:	dc 0e       	add	r13, r28
  22:	31 0f       	add	r19, r17
  24:	6f 0f       	add	r22, r31
  26:	94 0f       	add	r25, r20
  28:	a0 0f       	add	r26, r16
  2a:	94 0f       	add	r25, r20
  2c:	6f 0f       	add	r22, r31
  2e:	31 0f       	add	r19, r17
  30:	dc 0e       	add	r13, r28
  32:	70 0e       	add	r7, r16
  34:	ec 0d       	add	r30, r12
  36:	53 0d       	add	r21, r3
  38:	a4 0c       	add	r10, r4
  3a:	e2 0b       	sbc	r30, r18
  3c:	0c 0b       	sbc	r16, r28
  3e:	26 0a       	sbc	r2, r22
  40:	2f 09       	sbc	r18, r15
  42:	2a 08       	sbc	r2, r10
  44:	18 07       	cpc	r17, r24
  46:	fb 05       	cpc	r31, r11
  48:	d4 04       	cpc	r13, r4
  4a:	a6 03       	fmuls	r18, r22
  4c:	72 02       	muls	r23, r18
  4e:	3a 01       	movw	r6, r20

00000050 <POINTER_MAX>:
  50:	28 a0       	ldd	r2, Y+32	; 0x20

00000051 <MCCPP>:
  51:	a0 0f       	add	r26, r16

Disassembly of section .bss:

00000000 <POINTER>:
	...

Disassembly of section .text.startup:

00000000 <main>:
   0:	0e 94 00 00 	call	0	; 0x0 <main>
   4:	00 c0       	rjmp	.+0      	; 0x6 <__zero_reg__+0x5>

Disassembly of section .comment:

00000000 <.comment>:
   0:	00 47       	sbci	r16, 0x70	; 112
   2:	43 43       	sbci	r20, 0x33	; 51
   4:	3a 20       	and	r3, r10
   6:	28 41       	sbci	r18, 0x18	; 24
   8:	56 52       	subi	r21, 0x26	; 38
   a:	5f 38       	cpi	r21, 0x8F	; 143
   c:	5f 62       	ori	r21, 0x2F	; 47
   e:	69 74       	andi	r22, 0x49	; 73
  10:	5f 47       	sbci	r21, 0x7F	; 127
  12:	4e 55       	subi	r20, 0x5E	; 94
  14:	5f 54       	subi	r21, 0x4F	; 79
  16:	6f 6f       	ori	r22, 0xFF	; 255
  18:	6c 63       	ori	r22, 0x3C	; 60
  1a:	68 61       	ori	r22, 0x18	; 24
  1c:	69 6e       	ori	r22, 0xE9	; 233
  1e:	5f 33       	cpi	r21, 0x3F	; 63
  20:	2e 37       	cpi	r18, 0x7E	; 126
  22:	2e 30       	cpi	r18, 0x0E	; 14
  24:	5f 31       	cpi	r21, 0x1F	; 31
  26:	37 39       	cpi	r19, 0x97	; 151
  28:	36 29       	or	r19, r6
  2a:	20 37       	cpi	r18, 0x70	; 112
  2c:	2e 33       	cpi	r18, 0x3E	; 62
  2e:	2e 30       	cpi	r18, 0x0E	; 14
	...
