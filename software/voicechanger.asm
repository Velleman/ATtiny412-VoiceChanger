
voicechanger.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	19 c0       	rjmp	.+50     	; 0x34 <__ctors_end>
   2:	28 c0       	rjmp	.+80     	; 0x54 <__bad_interrupt>
   4:	27 c0       	rjmp	.+78     	; 0x54 <__bad_interrupt>
   6:	26 c0       	rjmp	.+76     	; 0x54 <__bad_interrupt>
   8:	25 c0       	rjmp	.+74     	; 0x54 <__bad_interrupt>
   a:	24 c0       	rjmp	.+72     	; 0x54 <__bad_interrupt>
   c:	23 c0       	rjmp	.+70     	; 0x54 <__bad_interrupt>
   e:	22 c0       	rjmp	.+68     	; 0x54 <__bad_interrupt>
  10:	32 c0       	rjmp	.+100    	; 0x76 <__vector_8>
  12:	20 c0       	rjmp	.+64     	; 0x54 <__bad_interrupt>
  14:	1f c0       	rjmp	.+62     	; 0x54 <__bad_interrupt>
  16:	1e c0       	rjmp	.+60     	; 0x54 <__bad_interrupt>
  18:	1d c0       	rjmp	.+58     	; 0x54 <__bad_interrupt>
  1a:	43 c0       	rjmp	.+134    	; 0xa2 <__vector_13>
  1c:	1b c0       	rjmp	.+54     	; 0x54 <__bad_interrupt>
  1e:	1a c0       	rjmp	.+52     	; 0x54 <__bad_interrupt>
  20:	19 c0       	rjmp	.+50     	; 0x54 <__bad_interrupt>
  22:	73 c0       	rjmp	.+230    	; 0x10a <__vector_17>
  24:	17 c0       	rjmp	.+46     	; 0x54 <__bad_interrupt>
  26:	16 c0       	rjmp	.+44     	; 0x54 <__bad_interrupt>
  28:	15 c0       	rjmp	.+42     	; 0x54 <__bad_interrupt>
  2a:	14 c0       	rjmp	.+40     	; 0x54 <__bad_interrupt>
  2c:	13 c0       	rjmp	.+38     	; 0x54 <__bad_interrupt>
  2e:	12 c0       	rjmp	.+36     	; 0x54 <__bad_interrupt>
  30:	11 c0       	rjmp	.+34     	; 0x54 <__bad_interrupt>
  32:	10 c0       	rjmp	.+32     	; 0x54 <__bad_interrupt>

00000034 <__ctors_end>:
  34:	11 24       	eor	r1, r1
  36:	1f be       	out	0x3f, r1	; 63
  38:	cf ef       	ldi	r28, 0xFF	; 255
  3a:	cd bf       	out	0x3d, r28	; 61
  3c:	df e3       	ldi	r29, 0x3F	; 63
  3e:	de bf       	out	0x3e, r29	; 62

00000040 <__do_clear_bss>:
  40:	2f e3       	ldi	r18, 0x3F	; 63
  42:	a0 e0       	ldi	r26, 0x00	; 0
  44:	bf e3       	ldi	r27, 0x3F	; 63
  46:	01 c0       	rjmp	.+2      	; 0x4a <.do_clear_bss_start>

00000048 <.do_clear_bss_loop>:
  48:	1d 92       	st	X+, r1

0000004a <.do_clear_bss_start>:
  4a:	a7 3c       	cpi	r26, 0xC7	; 199
  4c:	b2 07       	cpc	r27, r18
  4e:	e1 f7       	brne	.-8      	; 0x48 <.do_clear_bss_loop>
  50:	7f d0       	rcall	.+254    	; 0x150 <main>
  52:	12 c1       	rjmp	.+548    	; 0x278 <_exit>

00000054 <__bad_interrupt>:
  54:	d5 cf       	rjmp	.-86     	; 0x0 <__vectors>

00000056 <_Z7BUF_popv>:
  56:	80 91 00 3f 	lds	r24, 0x3F00	; 0x803f00 <__DATA_REGION_ORIGIN__>
  5a:	8f 5f       	subi	r24, 0xFF	; 255
  5c:	80 93 00 3f 	sts	0x3F00, r24	; 0x803f00 <__DATA_REGION_ORIGIN__>
  60:	80 3c       	cpi	r24, 0xC0	; 192
  62:	10 f0       	brcs	.+4      	; 0x68 <_Z7BUF_popv+0x12>
  64:	10 92 00 3f 	sts	0x3F00, r1	; 0x803f00 <__DATA_REGION_ORIGIN__>
  68:	e0 91 00 3f 	lds	r30, 0x3F00	; 0x803f00 <__DATA_REGION_ORIGIN__>
  6c:	f0 e0       	ldi	r31, 0x00	; 0
  6e:	ef 5f       	subi	r30, 0xFF	; 255
  70:	f0 4c       	sbci	r31, 0xC0	; 192
  72:	80 81       	ld	r24, Z
  74:	08 95       	ret

00000076 <__vector_8>:
  76:	1f 92       	push	r1
  78:	0f 92       	push	r0
  7a:	0f b6       	in	r0, 0x3f	; 63
  7c:	0f 92       	push	r0
  7e:	11 24       	eor	r1, r1
  80:	8f 93       	push	r24
  82:	9f 93       	push	r25
  84:	81 e0       	ldi	r24, 0x01	; 1
  86:	80 93 0b 0a 	sts	0x0A0B, r24	; 0x800a0b <__RODATA_PM_OFFSET__+0x7f8a0b>
  8a:	90 91 c2 3f 	lds	r25, 0x3FC2	; 0x803fc2 <toggleOutput>
  8e:	89 27       	eor	r24, r25
  90:	80 93 c2 3f 	sts	0x3FC2, r24	; 0x803fc2 <toggleOutput>
  94:	9f 91       	pop	r25
  96:	8f 91       	pop	r24
  98:	0f 90       	pop	r0
  9a:	0f be       	out	0x3f, r0	; 63
  9c:	0f 90       	pop	r0
  9e:	1f 90       	pop	r1
  a0:	18 95       	reti

000000a2 <__vector_13>:
  a2:	1f 92       	push	r1
  a4:	0f 92       	push	r0
  a6:	0f b6       	in	r0, 0x3f	; 63
  a8:	0f 92       	push	r0
  aa:	11 24       	eor	r1, r1
  ac:	2f 93       	push	r18
  ae:	3f 93       	push	r19
  b0:	4f 93       	push	r20
  b2:	5f 93       	push	r21
  b4:	6f 93       	push	r22
  b6:	7f 93       	push	r23
  b8:	8f 93       	push	r24
  ba:	9f 93       	push	r25
  bc:	af 93       	push	r26
  be:	bf 93       	push	r27
  c0:	ef 93       	push	r30
  c2:	ff 93       	push	r31
  c4:	81 e0       	ldi	r24, 0x01	; 1
  c6:	80 93 46 0a 	sts	0x0A46, r24	; 0x800a46 <__RODATA_PM_OFFSET__+0x7f8a46>
  ca:	c5 df       	rcall	.-118    	; 0x56 <_Z7BUF_popv>
  cc:	80 91 c3 3f 	lds	r24, 0x3FC3	; 0x803fc3 <RobotOn>
  d0:	88 23       	and	r24, r24
  d2:	39 f0       	breq	.+14     	; 0xe2 <__vector_13+0x40>
  d4:	80 91 c2 3f 	lds	r24, 0x3FC2	; 0x803fc2 <toggleOutput>
  d8:	81 11       	cpse	r24, r1
  da:	03 c0       	rjmp	.+6      	; 0xe2 <__vector_13+0x40>
  dc:	10 92 81 06 	sts	0x0681, r1	; 0x800681 <__RODATA_PM_OFFSET__+0x7f8681>
  e0:	03 c0       	rjmp	.+6      	; 0xe8 <__vector_13+0x46>
  e2:	b9 df       	rcall	.-142    	; 0x56 <_Z7BUF_popv>
  e4:	80 93 81 06 	sts	0x0681, r24	; 0x800681 <__RODATA_PM_OFFSET__+0x7f8681>
  e8:	ff 91       	pop	r31
  ea:	ef 91       	pop	r30
  ec:	bf 91       	pop	r27
  ee:	af 91       	pop	r26
  f0:	9f 91       	pop	r25
  f2:	8f 91       	pop	r24
  f4:	7f 91       	pop	r23
  f6:	6f 91       	pop	r22
  f8:	5f 91       	pop	r21
  fa:	4f 91       	pop	r20
  fc:	3f 91       	pop	r19
  fe:	2f 91       	pop	r18
 100:	0f 90       	pop	r0
 102:	0f be       	out	0x3f, r0	; 63
 104:	0f 90       	pop	r0
 106:	1f 90       	pop	r1
 108:	18 95       	reti

0000010a <__vector_17>:
 10a:	1f 92       	push	r1
 10c:	0f 92       	push	r0
 10e:	0f b6       	in	r0, 0x3f	; 63
 110:	0f 92       	push	r0
 112:	11 24       	eor	r1, r1
 114:	8f 93       	push	r24
 116:	9f 93       	push	r25
 118:	ef 93       	push	r30
 11a:	ff 93       	push	r31
 11c:	90 91 10 06 	lds	r25, 0x0610	; 0x800610 <__RODATA_PM_OFFSET__+0x7f8610>
 120:	80 91 c1 3f 	lds	r24, 0x3FC1	; 0x803fc1 <BUF_head>
 124:	8f 5f       	subi	r24, 0xFF	; 255
 126:	80 93 c1 3f 	sts	0x3FC1, r24	; 0x803fc1 <BUF_head>
 12a:	80 3c       	cpi	r24, 0xC0	; 192
 12c:	10 f0       	brcs	.+4      	; 0x132 <__vector_17+0x28>
 12e:	10 92 c1 3f 	sts	0x3FC1, r1	; 0x803fc1 <BUF_head>
 132:	e0 91 c1 3f 	lds	r30, 0x3FC1	; 0x803fc1 <BUF_head>
 136:	f0 e0       	ldi	r31, 0x00	; 0
 138:	ef 5f       	subi	r30, 0xFF	; 255
 13a:	f0 4c       	sbci	r31, 0xC0	; 192
 13c:	90 83       	st	Z, r25
 13e:	ff 91       	pop	r31
 140:	ef 91       	pop	r30
 142:	9f 91       	pop	r25
 144:	8f 91       	pop	r24
 146:	0f 90       	pop	r0
 148:	0f be       	out	0x3f, r0	; 63
 14a:	0f 90       	pop	r0
 14c:	1f 90       	pop	r1
 14e:	18 95       	reti

00000150 <main>:
 150:	93 e0       	ldi	r25, 0x03	; 3
 152:	88 ed       	ldi	r24, 0xD8	; 216
 154:	84 bf       	out	0x34, r24	; 52
 156:	90 93 61 00 	sts	0x0061, r25	; 0x800061 <__RODATA_PM_OFFSET__+0x7f8061>
 15a:	80 91 11 04 	lds	r24, 0x0411	; 0x800411 <__RODATA_PM_OFFSET__+0x7f8411>
 15e:	88 60       	ori	r24, 0x08	; 8
 160:	80 93 11 04 	sts	0x0411, r24	; 0x800411 <__RODATA_PM_OFFSET__+0x7f8411>
 164:	80 91 12 04 	lds	r24, 0x0412	; 0x800412 <__RODATA_PM_OFFSET__+0x7f8412>
 168:	88 60       	ori	r24, 0x08	; 8
 16a:	80 93 12 04 	sts	0x0412, r24	; 0x800412 <__RODATA_PM_OFFSET__+0x7f8412>
 16e:	80 91 13 04 	lds	r24, 0x0413	; 0x800413 <__RODATA_PM_OFFSET__+0x7f8413>
 172:	88 60       	ori	r24, 0x08	; 8
 174:	80 93 13 04 	sts	0x0413, r24	; 0x800413 <__RODATA_PM_OFFSET__+0x7f8413>
 178:	80 91 16 04 	lds	r24, 0x0416	; 0x800416 <__RODATA_PM_OFFSET__+0x7f8416>
 17c:	84 60       	ori	r24, 0x04	; 4
 17e:	80 93 16 04 	sts	0x0416, r24	; 0x800416 <__RODATA_PM_OFFSET__+0x7f8416>
 182:	80 91 a0 00 	lds	r24, 0x00A0	; 0x8000a0 <__RODATA_PM_OFFSET__+0x7f80a0>
 186:	83 60       	ori	r24, 0x03	; 3
 188:	80 93 a0 00 	sts	0x00A0, r24	; 0x8000a0 <__RODATA_PM_OFFSET__+0x7f80a0>
 18c:	81 e4       	ldi	r24, 0x41	; 65
 18e:	80 93 80 06 	sts	0x0680, r24	; 0x800680 <__RODATA_PM_OFFSET__+0x7f8680>
 192:	80 91 17 04 	lds	r24, 0x0417	; 0x800417 <__RODATA_PM_OFFSET__+0x7f8417>
 196:	84 60       	ori	r24, 0x04	; 4
 198:	80 93 17 04 	sts	0x0417, r24	; 0x800417 <__RODATA_PM_OFFSET__+0x7f8417>
 19c:	87 e0       	ldi	r24, 0x07	; 7
 19e:	80 93 00 06 	sts	0x0600, r24	; 0x800600 <__RODATA_PM_OFFSET__+0x7f8600>
 1a2:	92 e5       	ldi	r25, 0x52	; 82
 1a4:	90 93 02 06 	sts	0x0602, r25	; 0x800602 <__RODATA_PM_OFFSET__+0x7f8602>
 1a8:	80 93 06 06 	sts	0x0606, r24	; 0x800606 <__RODATA_PM_OFFSET__+0x7f8606>
 1ac:	81 e0       	ldi	r24, 0x01	; 1
 1ae:	80 93 0a 06 	sts	0x060A, r24	; 0x80060a <__RODATA_PM_OFFSET__+0x7f860a>
 1b2:	80 93 08 06 	sts	0x0608, r24	; 0x800608 <__RODATA_PM_OFFSET__+0x7f8608>
 1b6:	80 93 40 0a 	sts	0x0A40, r24	; 0x800a40 <__RODATA_PM_OFFSET__+0x7f8a40>
 1ba:	10 92 41 0a 	sts	0x0A41, r1	; 0x800a41 <__RODATA_PM_OFFSET__+0x7f8a41>
 1be:	27 e6       	ldi	r18, 0x67	; 103
 1c0:	30 e0       	ldi	r19, 0x00	; 0
 1c2:	20 93 4c 0a 	sts	0x0A4C, r18	; 0x800a4c <__RODATA_PM_OFFSET__+0x7f8a4c>
 1c6:	30 93 4d 0a 	sts	0x0A4D, r19	; 0x800a4d <__RODATA_PM_OFFSET__+0x7f8a4d>
 1ca:	80 93 45 0a 	sts	0x0A45, r24	; 0x800a45 <__RODATA_PM_OFFSET__+0x7f8a45>
 1ce:	78 94       	sei
 1d0:	87 e6       	ldi	r24, 0x67	; 103
 1d2:	92 b1       	in	r25, 0x02	; 2
 1d4:	92 70       	andi	r25, 0x02	; 2
 1d6:	20 91 c6 3f 	lds	r18, 0x3FC6	; 0x803fc6 <butlast_up>
 1da:	92 17       	cp	r25, r18
 1dc:	b9 f0       	breq	.+46     	; 0x20c <main+0xbc>
 1de:	91 11       	cpse	r25, r1
 1e0:	0d c0       	rjmp	.+26     	; 0x1fc <main+0xac>
 1e2:	8f 33       	cpi	r24, 0x3F	; 63
 1e4:	58 f0       	brcs	.+22     	; 0x1fc <main+0xac>
 1e6:	84 51       	subi	r24, 0x14	; 20
 1e8:	28 2f       	mov	r18, r24
 1ea:	30 e0       	ldi	r19, 0x00	; 0
 1ec:	20 93 4c 0a 	sts	0x0A4C, r18	; 0x800a4c <__RODATA_PM_OFFSET__+0x7f8a4c>
 1f0:	30 93 4d 0a 	sts	0x0A4D, r19	; 0x800a4d <__RODATA_PM_OFFSET__+0x7f8a4d>
 1f4:	10 92 4a 0a 	sts	0x0A4A, r1	; 0x800a4a <__RODATA_PM_OFFSET__+0x7f8a4a>
 1f8:	10 92 4b 0a 	sts	0x0A4B, r1	; 0x800a4b <__RODATA_PM_OFFSET__+0x7f8a4b>
 1fc:	90 93 c6 3f 	sts	0x3FC6, r25	; 0x803fc6 <butlast_up>
 200:	ef e0       	ldi	r30, 0x0F	; 15
 202:	f7 e2       	ldi	r31, 0x27	; 39
 204:	31 97       	sbiw	r30, 0x01	; 1
 206:	f1 f7       	brne	.-4      	; 0x204 <main+0xb4>
 208:	00 c0       	rjmp	.+0      	; 0x20a <main+0xba>
 20a:	00 00       	nop
 20c:	92 b1       	in	r25, 0x02	; 2
 20e:	94 70       	andi	r25, 0x04	; 4
 210:	20 91 c5 3f 	lds	r18, 0x3FC5	; 0x803fc5 <butlast_down>
 214:	92 17       	cp	r25, r18
 216:	b9 f0       	breq	.+46     	; 0x246 <main+0xf6>
 218:	91 11       	cpse	r25, r1
 21a:	0d c0       	rjmp	.+26     	; 0x236 <main+0xe6>
 21c:	88 3b       	cpi	r24, 0xB8	; 184
 21e:	58 f4       	brcc	.+22     	; 0x236 <main+0xe6>
 220:	8c 5e       	subi	r24, 0xEC	; 236
 222:	28 2f       	mov	r18, r24
 224:	30 e0       	ldi	r19, 0x00	; 0
 226:	20 93 4c 0a 	sts	0x0A4C, r18	; 0x800a4c <__RODATA_PM_OFFSET__+0x7f8a4c>
 22a:	30 93 4d 0a 	sts	0x0A4D, r19	; 0x800a4d <__RODATA_PM_OFFSET__+0x7f8a4d>
 22e:	10 92 4a 0a 	sts	0x0A4A, r1	; 0x800a4a <__RODATA_PM_OFFSET__+0x7f8a4a>
 232:	10 92 4b 0a 	sts	0x0A4B, r1	; 0x800a4b <__RODATA_PM_OFFSET__+0x7f8a4b>
 236:	90 93 c5 3f 	sts	0x3FC5, r25	; 0x803fc5 <butlast_down>
 23a:	ef e0       	ldi	r30, 0x0F	; 15
 23c:	f7 e2       	ldi	r31, 0x27	; 39
 23e:	31 97       	sbiw	r30, 0x01	; 1
 240:	f1 f7       	brne	.-4      	; 0x23e <main+0xee>
 242:	00 c0       	rjmp	.+0      	; 0x244 <main+0xf4>
 244:	00 00       	nop
 246:	92 b1       	in	r25, 0x02	; 2
 248:	98 70       	andi	r25, 0x08	; 8
 24a:	20 91 c4 3f 	lds	r18, 0x3FC4	; 0x803fc4 <butlast_slct>
 24e:	92 17       	cp	r25, r18
 250:	09 f4       	brne	.+2      	; 0x254 <main+0x104>
 252:	bf cf       	rjmp	.-130    	; 0x1d2 <main+0x82>
 254:	91 11       	cpse	r25, r1
 256:	07 c0       	rjmp	.+14     	; 0x266 <main+0x116>
 258:	21 e0       	ldi	r18, 0x01	; 1
 25a:	30 91 c3 3f 	lds	r19, 0x3FC3	; 0x803fc3 <RobotOn>
 25e:	31 11       	cpse	r19, r1
 260:	20 e0       	ldi	r18, 0x00	; 0
 262:	20 93 c3 3f 	sts	0x3FC3, r18	; 0x803fc3 <RobotOn>
 266:	90 93 c4 3f 	sts	0x3FC4, r25	; 0x803fc4 <butlast_slct>
 26a:	ef e0       	ldi	r30, 0x0F	; 15
 26c:	f7 e2       	ldi	r31, 0x27	; 39
 26e:	31 97       	sbiw	r30, 0x01	; 1
 270:	f1 f7       	brne	.-4      	; 0x26e <main+0x11e>
 272:	00 c0       	rjmp	.+0      	; 0x274 <main+0x124>
 274:	00 00       	nop
 276:	ad cf       	rjmp	.-166    	; 0x1d2 <main+0x82>

00000278 <_exit>:
 278:	f8 94       	cli

0000027a <__stop_program>:
 27a:	ff cf       	rjmp	.-2      	; 0x27a <__stop_program>
