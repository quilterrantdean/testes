; ============================================================
; Banco 0 do ROM (offset no ficheiro: 0x0 - 0x3FFF)
; Endereco de origem assumido no mapa do Z80: 0000h (slot 0 fixo, 0x0000-0x3FFF)
; Gerado com z80dasm 1.1.6 (-a enderecos, -t bytes originais, -l labels)
; NOTA: saltos/chamadas absolutos (JP/CALL) so sao validos quando
; este banco estiver de facto paginado no slot indicado acima.
; Zonas de dados (graficos, tabelas, musica) podem surgir desmontadas
; incorrectamente como instrucoes -- ver aviso Self-modifying-code
; nos ficheiros onde a heuristica do z80dasm o assinalou.
; ============================================================

; z80dasm 1.1.6
; command line: z80dasm -a -t -l -g 0x0000 -s /home/claude/out/bank0.sym -o /home/claude/out/bank0.asm bank0.bin

	org	00000h

l0000h:
	di			;0000	f3 	. 
l0001h:
	im 1		;0001	ed 56 	. V 
l0003h:
	jp 07d96h		;0003	c3 96 7d 	. . } 
	jr l0085h		;0006	18 7d 	. } 
sub_0008h:
	ld a,e			;0008	7b 	{ 
	out (0bfh),a		;0009	d3 bf 	. . 
	ld a,d			;000b	7a 	z 
	out (0bfh),a		;000c	d3 bf 	. . 
l000eh:
	ret			;000e	c9 	. 
	rst 38h			;000f	ff 	. 
l0010h:
	add a,a			;0010	87 	. 
	ld c,a			;0011	4f 	O 
l0012h:
	ld b,000h		;0012	06 00 	. . 
l0014h:
	add hl,bc			;0014	09 	. 
	ld a,(hl)			;0015	7e 	~ 
	inc hl			;0016	23 	# 
	ld h,(hl)			;0017	66 	f 
	ld l,a			;0018	6f 	o 
l0019h:
	ret			;0019	c9 	. 
	rst 38h			;001a	ff 	. 
sub_001bh:
	bit 7,a		;001b	cb 7f 	.  
	ret z			;001d	c8 	. 
	and 00fh		;001e	e6 0f 	. . 
l0020h:
	add a,a			;0020	87 	. 
	ld e,a			;0021	5f 	_ 
	ld d,000h		;0022	16 00 	. . 
l0024h:
	add hl,de			;0024	19 	. 
	ld a,(hl)			;0025	7e 	~ 
	inc hl			;0026	23 	# 
	ld h,(hl)			;0027	66 	f 
	ld l,a			;0028	6f 	o 
l0029h:
	jp (hl)			;0029	e9 	. 
l002ah:
	rst 38h			;002a	ff 	. 
	rst 38h			;002b	ff 	. 
l002ch:
	rst 38h			;002c	ff 	. 
	rst 38h			;002d	ff 	. 
	rst 38h			;002e	ff 	. 
	rst 38h			;002f	ff 	. 
l0030h:
	rst 8			;0030	cf 	. 
	ld c,0beh		;0031	0e be 	. . 
l0033h:
	outi		;0033	ed a3 	. . 
	jr nz,l0033h		;0035	20 fc 	  . 
	ret			;0037	c9 	. 
	jp l00ach		;0038	c3 ac 00 	. . . 
l003bh:
	ld a,(03a07h)		;003b	3a 07 3a 	: . : 
	rlca			;003e	07 	. 
	or d			;003f	b2 	. 
l0040h:
	add hl,bc			;0040	09 	. 
	rla			;0041	17 	. 
	add hl,de			;0042	19 	. 
	sbc a,b			;0043	98 	. 
	jr $-109		;0044	18 91 	. . 
	dec de			;0046	1b 	. 
	pop de			;0047	d1 	. 
	ld l,e			;0048	6b 	k 
	dec a			;0049	3d 	= 
	ld a,(hl)			;004a	7e 	~ 
	inc e			;004b	1c 	. 
	ld d,055h		;004c	16 55 	. U 
	ld a,(bc)			;004e	0a 	. 
	ld d,l			;004f	55 	U 
l0050h:
	ld a,(bc)			;0050	0a 	. 
	sub l			;0051	95 	. 
	rra			;0052	1f 	. 
l0053h:
	xor a			;0053	af 	. 
	ld (0c01fh),a		;0054	32 1f c0 	2 . . 
l0057h:
	ld hl,0c01fh		;0057	21 1f c0 	! . . 
	ld a,(hl)			;005a	7e 	~ 
	and 00fh		;005b	e6 0f 	. . 
	exx			;005d	d9 	. 
	ld hl,l003bh		;005e	21 3b 00 	! ; . 
	rst 20h			;0061	e7 	. 
	jp l0057h		;0062	c3 57 00 	. W . 
	rst 38h			;0065	ff 	. 
	push af			;0066	f5 	. 
	ld a,(0c31ah)		;0067	3a 1a c3 	: . . 
	cp 00fh		;006a	fe 0f 	. . 
	jp z,l0082h		;006c	ca 82 00 	. . . 
	ld a,(0c015h)		;006f	3a 15 c0 	: . . 
	or a			;0072	b7 	. 
	jp nz,l0082h		;0073	c2 82 00 	. . . 
	ld a,(0c01fh)		;0076	3a 1f c0 	: . . 
	cp 08ah		;0079	fe 8a 	. . 
	jr c,l0082h		;007b	38 05 	8 . 
	ld a,001h		;007d	3e 01 	> . 
	ld (0c093h),a		;007f	32 93 c0 	2 . . 
l0082h:
	pop af			;0082	f1 	. 
	retn		;0083	ed 45 	. E 
l0085h:
	ld hl,0c000h		;0085	21 00 c0 	! . . 
	ld de,0c001h		;0088	11 01 c0 	. . . 
	ld bc,l1ffah+1		;008b	01 fb 1f 	. . . 
	ld (hl),l			;008e	75 	u 
	ldir		;008f	ed b0 	. . 
	call sub_031dh		;0091	cd 1d 03 	. . . 
l0094h:
	ld a,082h		;0094	3e 82 	> . 
	ld (0ffffh),a		;0096	32 ff ff 	2 . . 
	ld sp,0dff0h		;0099	31 f0 df 	1 . . 
	call 09e02h		;009c	cd 02 9e 	. . . 
	call sub_0238h		;009f	cd 38 02 	. 8 . 
	call 07e32h		;00a2	cd 32 7e 	. 2 ~ 
	ei			;00a5	fb 	. 
	call sub_02c3h		;00a6	cd c3 02 	. . . 
	jp l0053h		;00a9	c3 53 00 	. S . 
l00ach:
	push af			;00ac	f5 	. 
	push bc			;00ad	c5 	. 
	push de			;00ae	d5 	. 
	push hl			;00af	e5 	. 
	exx			;00b0	d9 	. 
	ex af,af'			;00b1	08 	. 
	push af			;00b2	f5 	. 
	push bc			;00b3	c5 	. 
	push de			;00b4	d5 	. 
	push hl			;00b5	e5 	. 
	push ix		;00b6	dd e5 	. . 
	push iy		;00b8	fd e5 	. . 
	in a,(0bfh)		;00ba	db bf 	. . 
	in a,(0ddh)		;00bc	db dd 	. . 
	and 010h		;00be	e6 10 	. . 
l00c0h:
	ld hl,0c096h		;00c0	21 96 c0 	! . . 
	ld c,(hl)			;00c3	4e 	N 
	ld (hl),a			;00c4	77 	w 
	xor c			;00c5	a9 	. 
	and c			;00c6	a1 	. 
	jp nz,l0094h		;00c7	c2 94 00 	. . . 
	ld a,(0ffffh)		;00ca	3a ff ff 	: . . 
	push af			;00cd	f5 	. 
	ld a,(0c008h)		;00ce	3a 08 c0 	: . . 
	rrca			;00d1	0f 	. 
	push af			;00d2	f5 	. 
	call c,sub_01c4h		;00d3	dc c4 01 	. . . 
	call 0417ch		;00d6	cd 7c 41 	. | A 
	pop af			;00d9	f1 	. 
	rrca			;00da	0f 	. 
	push af			;00db	f5 	. 
	call sub_0334h		;00dc	cd 34 03 	. 4 . 
	call sub_1042h		;00df	cd 42 10 	. B . 
	pop af			;00e2	f1 	. 
	rrca			;00e3	0f 	. 
	push af			;00e4	f5 	. 
	call sub_2617h		;00e5	cd 17 26 	. . & 
	pop af			;00e8	f1 	. 
	rrca			;00e9	0f 	. 
	ld a,(0c01fh)		;00ea	3a 1f c0 	: . . 
	ld hl,l0113h		;00ed	21 13 01 	! . . 
	call c,sub_001bh		;00f0	dc 1b 00 	. . . 
	ld a,082h		;00f3	3e 82 	> . 
	ld (0ffffh),a		;00f5	32 ff ff 	2 . . 
	call 0984fh		;00f8	cd 4f 98 	. O . 
	xor a			;00fb	af 	. 
	ld (0c008h),a		;00fc	32 08 c0 	2 . . 
	pop af			;00ff	f1 	. 
l0100h:
	ld (0ffffh),a		;0100	32 ff ff 	2 . . 
l0103h:
	pop iy		;0103	fd e1 	. . 
	pop ix		;0105	dd e1 	. . 
	pop hl			;0107	e1 	. 
	pop de			;0108	d1 	. 
	pop bc			;0109	c1 	. 
	pop af			;010a	f1 	. 
	exx			;010b	d9 	. 
l010ch:
	ex af,af'			;010c	08 	. 
	pop hl			;010d	e1 	. 
l010eh:
	pop de			;010e	d1 	. 
	pop bc			;010f	c1 	. 
	pop af			;0110	f1 	. 
	ei			;0111	fb 	. 
	ret			;0112	c9 	. 
l0113h:
	rrca			;0113	0f 	. 
	ex af,af'			;0114	08 	. 
	rrca			;0115	0f 	. 
	ex af,af'			;0116	08 	. 
	ld (bc),a			;0117	02 	. 
	ld a,(bc)			;0118	0a 	. 
	ret			;0119	c9 	. 
	add hl,de			;011a	19 	. 
	or (hl)			;011b	b6 	. 
	jr $-72		;011c	18 b6 	. . 
	dec de			;011e	1b 	. 
	ld (hl),e			;011f	73 	s 
	ld l,(hl)			;0120	6e 	n 
	sbc a,l			;0121	9d 	. 
	ld a,a			;0122	7f 	 
	ld (hl),d			;0123	72 	r 
	ld d,07eh		;0124	16 7e 	. ~ 
	ld a,(bc)			;0126	0a 	. 
	ld a,(hl)			;0127	7e 	~ 
	ld a,(bc)			;0128	0a 	. 
	xor (hl)			;0129	ae 	. 
	rra			;012a	1f 	. 
l012bh:
	push af			;012b	f5 	. 
	rst 8			;012c	cf 	. 
	pop af			;012d	f1 	. 
	out (0beh),a		;012e	d3 be 	. . 
	ret			;0130	c9 	. 
sub_0131h:
	rst 8			;0131	cf 	. 
l0132h:
	ld a,(hl)			;0132	7e 	~ 
	out (0beh),a		;0133	d3 be 	. . 
	inc hl			;0135	23 	# 
	dec bc			;0136	0b 	. 
	ld a,c			;0137	79 	y 
	or b			;0138	b0 	. 
	jr nz,l0132h		;0139	20 f7 	  . 
	ret			;013b	c9 	. 
	ld (0c10ah),a		;013c	32 0a c1 	2 . . 
sub_013fh:
	rst 8			;013f	cf 	. 
l0140h:
	ld a,(0c10ah)		;0140	3a 0a c1 	: . . 
	ld c,0beh		;0143	0e be 	. . 
l0145h:
	outi		;0145	ed a3 	. . 
	push af			;0147	f5 	. 
	pop af			;0148	f1 	. 
	out (c),a		;0149	ed 79 	. y 
	jr nz,l0145h		;014b	20 f8 	  . 
	ret			;014d	c9 	. 
l014eh:
	ld de,07800h		;014e	11 00 78 	. . x 
	ld bc,l0700h		;0151	01 00 07 	. . . 
	ld l,000h		;0154	2e 00 	. . 
sub_0156h:
	rst 8			;0156	cf 	. 
l0157h:
	ld a,l			;0157	7d 	} 
	out (0beh),a		;0158	d3 be 	. . 
	dec bc			;015a	0b 	. 
	ld a,c			;015b	79 	y 
	or b			;015c	b0 	. 
	jr nz,l0157h		;015d	20 f8 	  . 
	ret			;015f	c9 	. 
l0160h:
	push bc			;0160	c5 	. 
	rst 8			;0161	cf 	. 
	ld b,c			;0162	41 	A 
	ld c,0beh		;0163	0e be 	. . 
l0165h:
	outi		;0165	ed a3 	. . 
	nop			;0167	00 	. 
	jr nz,l0165h		;0168	20 fb 	  . 
	ex de,hl			;016a	eb 	. 
	ld bc,l0040h		;016b	01 40 00 	. @ . 
	add hl,bc			;016e	09 	. 
	ex de,hl			;016f	eb 	. 
	pop bc			;0170	c1 	. 
	djnz l0160h		;0171	10 ed 	. . 
	ret			;0173	c9 	. 
	ld (0c10ah),a		;0174	32 0a c1 	2 . . 
l0177h:
	push bc			;0177	c5 	. 
	rst 8			;0178	cf 	. 
	ld b,c			;0179	41 	A 
	ld c,0beh		;017a	0e be 	. . 
l017ch:
	outi		;017c	ed a3 	. . 
	ld a,(0c10ah)		;017e	3a 0a c1 	: . . 
	nop			;0181	00 	. 
	out (c),a		;0182	ed 79 	. y 
	nop			;0184	00 	. 
	jp nz,l017ch		;0185	c2 7c 01 	. | . 
	ex de,hl			;0188	eb 	. 
	ld bc,l0040h		;0189	01 40 00 	. @ . 
	add hl,bc			;018c	09 	. 
	ex de,hl			;018d	eb 	. 
	pop bc			;018e	c1 	. 
	djnz l0177h		;018f	10 e6 	. . 
	ret			;0191	c9 	. 
l0192h:
	ld hl,l0040h		;0192	21 40 00 	! @ . 
	rst 8			;0195	cf 	. 
	push bc			;0196	c5 	. 
	xor a			;0197	af 	. 
l0198h:
	out (0beh),a		;0198	d3 be 	. . 
	dec c			;019a	0d 	. 
	jr nz,l0198h		;019b	20 fb 	  . 
	add hl,de			;019d	19 	. 
	ex de,hl			;019e	eb 	. 
	pop bc			;019f	c1 	. 
	djnz l0192h		;01a0	10 f0 	. . 
	ret			;01a2	c9 	. 
l01a3h:
	ld (0c10bh),a		;01a3	32 0b c1 	2 . . 
	rst 8			;01a6	cf 	. 
l01a7h:
	ld a,(hl)			;01a7	7e 	~ 
	exx			;01a8	d9 	. 
	ld c,0beh		;01a9	0e be 	. . 
	ld b,004h		;01ab	06 04 	. . 
	ld h,a			;01ad	67 	g 
	ld a,(0c10bh)		;01ae	3a 0b c1 	: . . 
l01b1h:
	rra			;01b1	1f 	. 
	ld d,h			;01b2	54 	T 
	jr c,l01b7h		;01b3	38 02 	8 . 
	ld d,000h		;01b5	16 00 	. . 
l01b7h:
	out (c),d		;01b7	ed 51 	. Q 
	djnz l01b1h		;01b9	10 f6 	. . 
	exx			;01bb	d9 	. 
	inc hl			;01bc	23 	# 
	dec bc			;01bd	0b 	. 
	ld a,b			;01be	78 	x 
	or c			;01bf	b1 	. 
l01c0h:
	jp nz,l01a7h		;01c0	c2 a7 01 	. . . 
	ret			;01c3	c9 	. 
sub_01c4h:
	ld a,(0c01fh)		;01c4	3a 1f c0 	: . . 
	and 00fh		;01c7	e6 0f 	. . 
	cp 002h		;01c9	fe 02 	. . 
	jr c,l01d5h		;01cb	38 08 	8 . 
	ld hl,0c10dh		;01cd	21 0d c1 	! . . 
l01d0h:
	inc (hl)			;01d0	34 	4 
	bit 0,(hl)		;01d1	cb 46 	. F 
	jr z,l01f1h		;01d3	28 1c 	( . 
l01d5h:
	ld hl,0c700h		;01d5	21 00 c7 	! . . 
	ld de,07f00h		;01d8	11 00 7f 	. .  
	ld bc,040beh		;01db	01 be 40 	. . @ 
	rst 8			;01de	cf 	. 
l01dfh:
	outi		;01df	ed a3 	. . 
	jr nz,l01dfh		;01e1	20 fc 	  . 
	ld hl,0c780h		;01e3	21 80 c7 	! . . 
	ld de,07f80h		;01e6	11 80 7f 	. .  
	ld b,080h		;01e9	06 80 	. . 
	rst 8			;01eb	cf 	. 
l01ech:
	outi		;01ec	ed a3 	. . 
	jr nz,l01ech		;01ee	20 fc 	  . 
	ret			;01f0	c9 	. 
l01f1h:
	ld a,(0c009h)		;01f1	3a 09 c0 	: . . 
	cp 013h		;01f4	fe 13 	. . 
	jr c,l01d5h		;01f6	38 dd 	8 . 
	ld hl,0c700h		;01f8	21 00 c7 	! . . 
	ld bc,l11beh		;01fb	01 be 11 	. . . 
	ld de,07f00h		;01fe	11 00 7f 	. .  
l0201h:
	rst 8			;0201	cf 	. 
l0202h:
	outi		;0202	ed a3 	. . 
l0204h:
	jr nz,l0202h		;0204	20 fc 	  . 
	ld hl,(0c009h)		;0206	2a 09 c0 	* . . 
	ld a,l			;0209	7d 	} 
	dec l			;020a	2d 	- 
	sub 011h		;020b	d6 11 	. . 
	ld b,a			;020d	47 	G 
l020eh:
	outd		;020e	ed ab 	. . 
	jr nz,l020eh		;0210	20 fc 	  . 
l0212h:
	ld a,0d0h		;0212	3e d0 	> . 
l0214h:
	out (0beh),a		;0214	d3 be 	. . 
	ld hl,0c780h		;0216	21 80 c7 	! . . 
	ld de,07f80h		;0219	11 80 7f 	. .  
	ld b,022h		;021c	06 22 	. " 
	rst 8			;021e	cf 	. 
l021fh:
	outi		;021f	ed a3 	. . 
	jr nz,l021fh		;0221	20 fc 	  . 
	ld hl,(0c009h)		;0223	2a 09 c0 	* . . 
	sla l		;0226	cb 25 	. % 
	set 7,l		;0228	cb fd 	. . 
	ld a,l			;022a	7d 	} 
	sub 0a2h		;022b	d6 a2 	. . 
	ld b,a			;022d	47 	G 
l022eh:
	dec l			;022e	2d 	- 
	dec l			;022f	2d 	- 
	outi		;0230	ed a3 	. . 
	outd		;0232	ed ab 	. . 
	jp nz,l022eh		;0234	c2 2e 02 	. . . 
	ret			;0237	c9 	. 
sub_0238h:
	ld hl,l024ah		;0238	21 4a 02 	! J . 
	ld bc,l16bfh		;023b	01 bf 16 	. . . 
	otir		;023e	ed b3 	. . 
l0240h:
	xor a			;0240	af 	. 
	out (0beh),a		;0241	d3 be 	. . 
	ld a,(l024ch)		;0243	3a 4c 02 	: L . 
	ld (0c004h),a		;0246	32 04 c0 	2 . . 
	ret			;0249	c9 	. 
l024ah:
	ld h,080h		;024a	26 80 	& . 
l024ch:
	and b			;024c	a0 	. 
	add a,c			;024d	81 	. 
	rst 38h			;024e	ff 	. 
	add a,d			;024f	82 	. 
	rst 38h			;0250	ff 	. 
	add a,e			;0251	83 	. 
	rst 38h			;0252	ff 	. 
	add a,h			;0253	84 	. 
	rst 38h			;0254	ff 	. 
	add a,l			;0255	85 	. 
	rst 38h			;0256	ff 	. 
	add a,(hl)			;0257	86 	. 
	nop			;0258	00 	. 
	adc a,b			;0259	88 	. 
	nop			;025a	00 	. 
	adc a,c			;025b	89 	. 
	nop			;025c	00 	. 
	add a,a			;025d	87 	. 
	djnz $-62		;025e	10 c0 	. . 
sub_0260h:
	ld b,004h		;0260	06 04 	. . 
l0262h:
	push bc			;0262	c5 	. 
	push de			;0263	d5 	. 
	call sub_026dh		;0264	cd 6d 02 	. m . 
	pop de			;0267	d1 	. 
	inc de			;0268	13 	. 
	pop bc			;0269	c1 	. 
	djnz l0262h		;026a	10 f6 	. . 
	ret			;026c	c9 	. 
sub_026dh:
	ld a,(hl)			;026d	7e 	~ 
	inc hl			;026e	23 	# 
	or a			;026f	b7 	. 
	ret z			;0270	c8 	. 
	ld b,a			;0271	47 	G 
	ld c,a			;0272	4f 	O 
	res 7,b		;0273	cb b8 	. . 
l0275h:
	ld a,e			;0275	7b 	{ 
	out (0bfh),a		;0276	d3 bf 	. . 
	ld a,d			;0278	7a 	z 
	out (0bfh),a		;0279	d3 bf 	. . 
	ld a,(hl)			;027b	7e 	~ 
	out (0beh),a		;027c	d3 be 	. . 
	bit 7,c		;027e	cb 79 	. y 
l0280h:
	jp z,l0284h		;0280	ca 84 02 	. . . 
	inc hl			;0283	23 	# 
l0284h:
	inc de			;0284	13 	. 
	inc de			;0285	13 	. 
	inc de			;0286	13 	. 
	inc de			;0287	13 	. 
	djnz l0275h		;0288	10 eb 	. . 
	jp nz,sub_026dh		;028a	c2 6d 02 	. m . 
	inc hl			;028d	23 	# 
	jp sub_026dh		;028e	c3 6d 02 	. m . 
	rst 8			;0291	cf 	. 
l0292h:
	ld e,008h		;0292	1e 08 	. . 
	ld d,(hl)			;0294	56 	V 
l0295h:
	sla d		;0295	cb 22 	. " 
	rra			;0297	1f 	. 
	dec e			;0298	1d 	. 
	jr nz,l0295h		;0299	20 fa 	  . 
	out (0beh),a		;029b	d3 be 	. . 
	inc hl			;029d	23 	# 
	dec bc			;029e	0b 	. 
	ld a,b			;029f	78 	x 
	or c			;02a0	b1 	. 
	jr nz,l0292h		;02a1	20 ef 	  . 
	ret			;02a3	c9 	. 
	ld hl,0c700h		;02a4	21 00 c7 	! . . 
	ld de,0c701h		;02a7	11 01 c7 	. . . 
	ld bc,000bfh		;02aa	01 bf 00 	. . . 
	ld (hl),0e0h		;02ad	36 e0 	6 . 
	ldir		;02af	ed b0 	. . 
	ld a,001h		;02b1	3e 01 	> . 
sub_02b3h:
	ld hl,0c008h		;02b3	21 08 c0 	! . . 
	ld (hl),a			;02b6	77 	w 
l02b7h:
	ld a,(hl)			;02b7	7e 	~ 
	or a			;02b8	b7 	. 
	jr nz,l02b7h		;02b9	20 fc 	  . 
	ret			;02bb	c9 	. 
sub_02bch:
	ld a,(0c004h)		;02bc	3a 04 c0 	: . . 
	and 0bfh		;02bf	e6 bf 	. . 
	jr l02c8h		;02c1	18 05 	. . 
sub_02c3h:
	ld a,(0c004h)		;02c3	3a 04 c0 	: . . 
	or 040h		;02c6	f6 40 	. @ 
l02c8h:
	ld (0c004h),a		;02c8	32 04 c0 	2 . . 
	ld e,a			;02cb	5f 	_ 
	ld d,081h		;02cc	16 81 	. . 
	rst 8			;02ce	cf 	. 
	ret			;02cf	c9 	. 
sub_02d0h:
	xor a			;02d0	af 	. 
	ld (0c0beh),a		;02d1	32 be c0 	2 . . 
	ld (0c0b0h),a		;02d4	32 b0 c0 	2 . . 
	ld e,a			;02d7	5f 	_ 
	ld d,089h		;02d8	16 89 	. . 
	rst 8			;02da	cf 	. 
	dec d			;02db	15 	. 
	rst 8			;02dc	cf 	. 
	ret			;02dd	c9 	. 
sub_02deh:
	call sub_02bch		;02de	cd bc 02 	. . . 
	ld hl,l0000h		;02e1	21 00 00 	! . . 
	ld (0c0afh),hl		;02e4	22 af c0 	" . . 
	ld (0c0bdh),hl		;02e7	22 bd c0 	" . . 
	ld (0c0abh),hl		;02ea	22 ab c0 	" . . 
	ld (0c0b9h),hl		;02ed	22 b9 c0 	" . . 
	ld hl,0c700h		;02f0	21 00 c7 	! . . 
	ld de,0c701h		;02f3	11 01 c7 	. . . 
	ld bc,000bfh		;02f6	01 bf 00 	. . . 
	ld (hl),0e0h		;02f9	36 e0 	6 . 
	ldir		;02fb	ed b0 	. . 
	ld de,08800h		;02fd	11 00 88 	. . . 
l0300h:
	rst 8			;0300	cf 	. 
l0301h:
	ld d,089h		;0301	16 89 	. . 
	rst 8			;0303	cf 	. 
l0304h:
	ei			;0304	fb 	. 
	ld a,001h		;0305	3e 01 	> . 
	call sub_02b3h		;0307	cd b3 02 	. . . 
	di			;030a	f3 	. 
	jp l014eh		;030b	c3 4e 01 	. N . 
	ld b,00ah		;030e	06 0a 	. . 
l0310h:
	push bc			;0310	c5 	. 
	ld bc,l3333h		;0311	01 33 33 	. 3 3 
l0314h:
	dec bc			;0314	0b 	. 
	ld a,b			;0315	78 	x 
l0316h:
	or c			;0316	b1 	. 
l0317h:
	jr nz,l0314h		;0317	20 fb 	  . 
	pop bc			;0319	c1 	. 
	djnz l0310h		;031a	10 f4 	. . 
	ret			;031c	c9 	. 
sub_031dh:
	ld a,092h		;031d	3e 92 	> . 
	out (0dfh),a		;031f	d3 df 	. . 
	ld hl,0c005h		;0321	21 05 c0 	! . . 
	ld a,(hl)			;0324	7e 	~ 
	and 002h		;0325	e6 02 	. . 
	or 001h		;0327	f6 01 	. . 
	ld (hl),a			;0329	77 	w 
	xor a			;032a	af 	. 
	out (0deh),a		;032b	d3 de 	. . 
	in a,(0deh)		;032d	db de 	. . 
	or a			;032f	b7 	. 
	ret z			;0330	c8 	. 
	res 0,(hl)		;0331	cb 86 	. . 
	ret			;0333	c9 	. 
sub_0334h:
	ld a,(0c005h)		;0334	3a 05 c0 	: . . 
	bit 0,a		;0337	cb 47 	. G 
	jp nz,l0341h		;0339	c2 41 03 	. A . 
	in a,(0dch)		;033c	db dc 	. . 
	jp l0391h		;033e	c3 91 03 	. . . 
l0341h:
	ld a,007h		;0341	3e 07 	> . 
	out (0deh),a		;0343	d3 de 	. . 
	in a,(0dch)		;0345	db dc 	. . 
	ld c,a			;0347	4f 	O 
	ld a,004h		;0348	3e 04 	> . 
	out (0deh),a		;034a	d3 de 	. . 
	in a,(0dch)		;034c	db dc 	. . 
	bit 5,a		;034e	cb 6f 	. o 
	jp nz,l0355h		;0350	c2 55 03 	. U . 
	res 1,c		;0353	cb 89 	. . 
l0355h:
	ld a,005h		;0355	3e 05 	> . 
	out (0deh),a		;0357	d3 de 	. . 
	in a,(0dch)		;0359	db dc 	. . 
	bit 5,a		;035b	cb 6f 	. o 
	jp nz,l0362h		;035d	c2 62 03 	. b . 
	res 2,c		;0360	cb 91 	. . 
l0362h:
	ld a,006h		;0362	3e 06 	> . 
	out (0deh),a		;0364	d3 de 	. . 
	in a,(0dch)		;0366	db dc 	. . 
	bit 5,a		;0368	cb 6f 	. o 
	jp nz,l036fh		;036a	c2 6f 03 	. o . 
	res 3,c		;036d	cb 99 	. . 
l036fh:
	bit 6,a		;036f	cb 77 	. w 
	jp nz,l0376h		;0371	c2 76 03 	. v . 
	res 0,c		;0374	cb 81 	. . 
l0376h:
	ld a,002h		;0376	3e 02 	> . 
	out (0deh),a		;0378	d3 de 	. . 
	in a,(0dch)		;037a	db dc 	. . 
	bit 4,a		;037c	cb 67 	. g 
	jp nz,l0383h		;037e	c2 83 03 	. . . 
	res 4,c		;0381	cb a1 	. . 
l0383h:
	ld a,003h		;0383	3e 03 	> . 
	out (0deh),a		;0385	d3 de 	. . 
	in a,(0dch)		;0387	db dc 	. . 
	bit 4,a		;0389	cb 67 	. g 
	jp nz,l0390h		;038b	c2 90 03 	. . . 
	res 5,c		;038e	cb a9 	. . 
l0390h:
	ld a,c			;0390	79 	y 
l0391h:
	ld hl,0c006h		;0391	21 06 c0 	! . . 
	cpl			;0394	2f 	/ 
	ld c,a			;0395	4f 	O 
	xor (hl)			;0396	ae 	. 
	ld (hl),c			;0397	71 	q 
	inc hl			;0398	23 	# 
	and c			;0399	a1 	. 
	ld (hl),a			;039a	77 	w 
	ret			;039b	c9 	. 
sub_039ch:
	ld a,(0c005h)		;039c	3a 05 c0 	: . . 
	and 020h		;039f	e6 20 	.   
	ret nz			;03a1	c0 	. 
	ld bc,0c030h		;03a2	01 30 c0 	. 0 . 
	ld de,l0450h		;03a5	11 50 04 	. P . 
	ld h,000h		;03a8	26 00 	& . 
	add hl,de			;03aa	19 	. 
	call sub_03d8h		;03ab	cd d8 03 	. . . 
	ret nc			;03ae	d0 	. 
	ld hl,0c030h		;03af	21 30 c0 	! 0 . 
	ld c,099h		;03b2	0e 99 	. . 
	ld (hl),c			;03b4	71 	q 
	inc hl			;03b5	23 	# 
	ld (hl),c			;03b6	71 	q 
	inc hl			;03b7	23 	# 
	ld (hl),c			;03b8	71 	q 
	ret			;03b9	c9 	. 
	ld a,(0c005h)		;03ba	3a 05 c0 	: . . 
	and 020h		;03bd	e6 20 	.   
	ret nz			;03bf	c0 	. 
	ld bc,0c020h		;03c0	01 20 c0 	.   . 
	ld de,l0456h		;03c3	11 56 04 	. V . 
	ld h,000h		;03c6	26 00 	& . 
	add hl,de			;03c8	19 	. 
	call sub_03d8h		;03c9	cd d8 03 	. . . 
	ret nc			;03cc	d0 	. 
	ld hl,0c000h		;03cd	21 00 c0 	! . . 
	ld c,099h		;03d0	0e 99 	. . 
	ld (hl),c			;03d2	71 	q 
	inc hl			;03d3	23 	# 
	ld (hl),c			;03d4	71 	q 
	inc hl			;03d5	23 	# 
	ld (hl),c			;03d6	71 	q 
	ret			;03d7	c9 	. 
sub_03d8h:
	ld a,(bc)			;03d8	0a 	. 
	add a,(hl)			;03d9	86 	. 
	daa			;03da	27 	' 
	ld (bc),a			;03db	02 	. 
	inc bc			;03dc	03 	. 
	inc hl			;03dd	23 	# 
	ld a,(bc)			;03de	0a 	. 
	adc a,(hl)			;03df	8e 	. 
	daa			;03e0	27 	' 
	ld (bc),a			;03e1	02 	. 
	inc bc			;03e2	03 	. 
	inc hl			;03e3	23 	# 
	ld a,(bc)			;03e4	0a 	. 
	adc a,(hl)			;03e5	8e 	. 
	daa			;03e6	27 	' 
	ld (bc),a			;03e7	02 	. 
	ret			;03e8	c9 	. 
sub_03e9h:
	ld a,(bc)			;03e9	0a 	. 
	sub (hl)			;03ea	96 	. 
	daa			;03eb	27 	' 
	ld (bc),a			;03ec	02 	. 
	inc hl			;03ed	23 	# 
	inc c			;03ee	0c 	. 
	ld a,(bc)			;03ef	0a 	. 
	sbc a,(hl)			;03f0	9e 	. 
	daa			;03f1	27 	' 
	ld (bc),a			;03f2	02 	. 
	inc hl			;03f3	23 	# 
	inc c			;03f4	0c 	. 
	ld a,(bc)			;03f5	0a 	. 
	sbc a,(hl)			;03f6	9e 	. 
	daa			;03f7	27 	' 
	ld (bc),a			;03f8	02 	. 
	ret			;03f9	c9 	. 
sub_03fah:
	ld a,(bc)			;03fa	0a 	. 
	sub (hl)			;03fb	96 	. 
	daa			;03fc	27 	' 
	inc hl			;03fd	23 	# 
	inc c			;03fe	0c 	. 
	ld a,(bc)			;03ff	0a 	. 
l0400h:
	sbc a,(hl)			;0400	9e 	. 
	daa			;0401	27 	' 
	inc hl			;0402	23 	# 
	inc c			;0403	0c 	. 
	ld a,(bc)			;0404	0a 	. 
	sbc a,(hl)			;0405	9e 	. 
	daa			;0406	27 	' 
	ret			;0407	c9 	. 
sub_0408h:
	ld de,0c020h		;0408	11 20 c0 	.   . 
	ld hl,0c000h		;040b	21 00 c0 	! . . 
	ld b,003h		;040e	06 03 	. . 
	or a			;0410	b7 	. 
l0411h:
	ld a,(de)			;0411	1a 	. 
	sbc a,(hl)			;0412	9e 	. 
	inc hl			;0413	23 	# 
	inc de			;0414	13 	. 
	djnz l0411h		;0415	10 fa 	. . 
	ret c			;0417	d8 	. 
	ex de,hl			;0418	eb 	. 
	dec hl			;0419	2b 	+ 
	dec de			;041a	1b 	. 
	ld bc,l0003h		;041b	01 03 00 	. . . 
	lddr		;041e	ed b8 	. . 
	ret			;0420	c9 	. 
sub_0421h:
	ld c,003h		;0421	0e 03 	. . 
sub_0423h:
	call sub_0008h		;0423	cd 08 00 	. . . 
	set 7,e		;0426	cb fb 	. . 
l0428h:
	ld a,0c0h		;0428	3e c0 	> . 
	ld b,002h		;042a	06 02 	. . 
l042ch:
	rld		;042c	ed 6f 	. o 
	push af			;042e	f5 	. 
	cp 0c0h		;042f	fe c0 	. . 
	jr nz,l043bh		;0431	20 08 	  . 
	bit 7,e		;0433	cb 7b 	. { 
	jr z,l043dh		;0435	28 06 	( . 
	ld a,000h		;0437	3e 00 	> . 
	jr l043dh		;0439	18 02 	. . 
l043bh:
	res 7,e		;043b	cb bb 	. . 
l043dh:
	out (0beh),a		;043d	d3 be 	. . 
	push af			;043f	f5 	. 
	pop af			;0440	f1 	. 
	ld a,(0c10ah)		;0441	3a 0a c1 	: . . 
	out (0beh),a		;0444	d3 be 	. . 
	pop af			;0446	f1 	. 
	djnz l042ch		;0447	10 e3 	. . 
	rld		;0449	ed 6f 	. o 
	dec hl			;044b	2b 	+ 
	dec c			;044c	0d 	. 
	jr nz,l0428h		;044d	20 d9 	  . 
	ret			;044f	c9 	. 
l0450h:
	ld bc,l0000h		;0450	01 00 00 	. . . 
	ld (bc),a			;0453	02 	. 
	nop			;0454	00 	. 
	nop			;0455	00 	. 
l0456h:
	jr nz,l0458h		;0456	20 00 	  . 
l0458h:
	nop			;0458	00 	. 
	ld b,b			;0459	40 	@ 
	nop			;045a	00 	. 
	nop			;045b	00 	. 
	ld h,b			;045c	60 	` 
	nop			;045d	00 	. 
	nop			;045e	00 	. 
	add a,b			;045f	80 	. 
	nop			;0460	00 	. 
	nop			;0461	00 	. 
	nop			;0462	00 	. 
	ld bc,02000h		;0463	01 00 20 	. .   
	ld bc,l0000h		;0466	01 00 00 	. . . 
	ld (bc),a			;0469	02 	. 
	nop			;046a	00 	. 
	nop			;046b	00 	. 
	djnz l046eh		;046c	10 00 	. . 
l046eh:
	inc hl			;046e	23 	# 
	ld e,(hl)			;046f	5e 	^ 
	inc hl			;0470	23 	# 
	ld d,(hl)			;0471	56 	V 
	inc hl			;0472	23 	# 
	ld b,(hl)			;0473	46 	F 
	inc hl			;0474	23 	# 
	ld a,(hl)			;0475	7e 	~ 
	ret			;0476	c9 	. 
	ld b,(hl)			;0477	46 	F 
l0478h:
	push bc			;0478	c5 	. 
	call l046eh		;0479	cd 6e 04 	. n . 
	inc hl			;047c	23 	# 
	push hl			;047d	e5 	. 
	ld h,(hl)			;047e	66 	f 
	ld l,a			;047f	6f 	o 
l0480h:
	call sub_013fh		;0480	cd 3f 01 	. ? . 
	pop hl			;0483	e1 	. 
	pop bc			;0484	c1 	. 
	djnz l0478h		;0485	10 f1 	. . 
	ret			;0487	c9 	. 
	ex af,af'			;0488	08 	. 
	ld a,003h		;0489	3e 03 	> . 
	ld (0ffffh),a		;048b	32 ff ff 	2 . . 
	ex af,af'			;048e	08 	. 
	ld de,04400h		;048f	11 00 44 	. . D 
	ld bc,00200h		;0492	01 00 02 	. . . 
	ld hl,0b96ah		;0495	21 6a b9 	! j . 
	jp l01a3h		;0498	c3 a3 01 	. . . 
	ld l,(ix+01bh)		;049b	dd 6e 1b 	. n . 
	ld a,(ix+01ch)		;049e	dd 7e 1c 	. ~ . 
	and 001h		;04a1	e6 01 	. . 
	ld (ix+01ch),a		;04a3	dd 77 1c 	. w . 
	ld h,a			;04a6	67 	g 
	add hl,hl			;04a7	29 	) 
	ld a,l			;04a8	7d 	} 
	and 07eh		;04a9	e6 7e 	. ~ 
	ld c,a			;04ab	4f 	O 
	add hl,hl			;04ac	29 	) 
	ld a,h			;04ad	7c 	| 
	add a,a			;04ae	87 	. 
	ld e,a			;04af	5f 	_ 
	ld d,000h		;04b0	16 00 	. . 
	ld hl,l04bbh		;04b2	21 bb 04 	! . . 
	add hl,de			;04b5	19 	. 
	ld a,(hl)			;04b6	7e 	~ 
	inc hl			;04b7	23 	# 
	ld h,(hl)			;04b8	66 	f 
	ld l,a			;04b9	6f 	o 
	jp (hl)			;04ba	e9 	. 
l04bbh:
	rlc h		;04bb	cb 04 	. . 
	ld (bc),a			;04bd	02 	. 
	dec b			;04be	05 	. 
	ld a,005h		;04bf	3e 05 	> . 
	ld (hl),l			;04c1	75 	u 
	dec b			;04c2	05 	. 
	or c			;04c3	b1 	. 
	dec b			;04c4	05 	. 
	ret pe			;04c5	e8 	. 
	dec b			;04c6	05 	. 
	inc h			;04c7	24 	$ 
	ld b,05bh		;04c8	06 5b 	. [ 
	ld b,021h		;04ca	06 21 	. ! 
	sub a			;04cc	97 	. 
	ld b,006h		;04cd	06 06 	. . 
	nop			;04cf	00 	. 
	add hl,bc			;04d0	09 	. 
	ld a,(hl)			;04d1	7e 	~ 
	exx			;04d2	d9 	. 
	ld e,a			;04d3	5f 	_ 
	ld l,(ix+01dh)		;04d4	dd 6e 1d 	. n . 
	call sub_0719h		;04d7	cd 19 07 	. . . 
	ld a,(ix+01eh)		;04da	dd 7e 1e 	. ~ . 
	add a,h			;04dd	84 	. 
	ld (ix+00eh),a		;04de	dd 77 0e 	. w . 
	ld a,(ix+019h)		;04e1	dd 7e 19 	. ~ . 
	adc a,000h		;04e4	ce 00 	. . 
	ld (ix+00ah),a		;04e6	dd 77 0a 	. w . 
	exx			;04e9	d9 	. 
	inc hl			;04ea	23 	# 
	ld l,(hl)			;04eb	6e 	n 
	ld e,(ix+01dh)		;04ec	dd 5e 1d 	. ^ . 
	call sub_0719h		;04ef	cd 19 07 	. . . 
	ld a,(ix+01fh)		;04f2	dd 7e 1f 	. ~ . 
	add a,h			;04f5	84 	. 
	ld (ix+00ch),a		;04f6	dd 77 0c 	. w . 
	ld a,(ix+01ah)		;04f9	dd 7e 1a 	. ~ . 
	sbc a,000h		;04fc	de 00 	. . 
	ld (ix+009h),a		;04fe	dd 77 09 	. w . 
	ret			;0501	c9 	. 
	ld hl,l0699h		;0502	21 99 06 	! . . 
	ld a,c			;0505	79 	y 
	cpl			;0506	2f 	/ 
	add a,07fh		;0507	c6 7f 	.  
	ld c,a			;0509	4f 	O 
	ld b,000h		;050a	06 00 	. . 
	add hl,bc			;050c	09 	. 
	ld a,(hl)			;050d	7e 	~ 
	exx			;050e	d9 	. 
	ld e,a			;050f	5f 	_ 
	ld l,(ix+01dh)		;0510	dd 6e 1d 	. n . 
	call sub_0719h		;0513	cd 19 07 	. . . 
	ld a,(ix+01fh)		;0516	dd 7e 1f 	. ~ . 
	add a,h			;0519	84 	. 
	ld (ix+00ch),a		;051a	dd 77 0c 	. w . 
	ld a,(ix+01ah)		;051d	dd 7e 1a 	. ~ . 
	sbc a,000h		;0520	de 00 	. . 
	ld (ix+009h),a		;0522	dd 77 09 	. w . 
	exx			;0525	d9 	. 
	inc hl			;0526	23 	# 
	ld l,(hl)			;0527	6e 	n 
	ld e,(ix+01dh)		;0528	dd 5e 1d 	. ^ . 
	call sub_0719h		;052b	cd 19 07 	. . . 
	ld a,(ix+01eh)		;052e	dd 7e 1e 	. ~ . 
	add a,h			;0531	84 	. 
	ld (ix+00eh),a		;0532	dd 77 0e 	. w . 
	ld a,(ix+019h)		;0535	dd 7e 19 	. ~ . 
	adc a,000h		;0538	ce 00 	. . 
	ld (ix+00ah),a		;053a	dd 77 0a 	. w . 
	ret			;053d	c9 	. 
	ld hl,l0699h		;053e	21 99 06 	! . . 
	ld b,000h		;0541	06 00 	. . 
	add hl,bc			;0543	09 	. 
	ld a,(hl)			;0544	7e 	~ 
	exx			;0545	d9 	. 
	ld e,a			;0546	5f 	_ 
	ld l,(ix+01dh)		;0547	dd 6e 1d 	. n . 
	call sub_0719h		;054a	cd 19 07 	. . . 
	ld a,(ix+01fh)		;054d	dd 7e 1f 	. ~ . 
	sub h			;0550	94 	. 
	ld (ix+00ch),a		;0551	dd 77 0c 	. w . 
	ld a,(ix+01ah)		;0554	dd 7e 1a 	. ~ . 
	adc a,000h		;0557	ce 00 	. . 
	ld (ix+009h),a		;0559	dd 77 09 	. w . 
	exx			;055c	d9 	. 
	inc hl			;055d	23 	# 
	ld l,(hl)			;055e	6e 	n 
	ld e,(ix+01dh)		;055f	dd 5e 1d 	. ^ . 
	call sub_0719h		;0562	cd 19 07 	. . . 
	ld a,(ix+01eh)		;0565	dd 7e 1e 	. ~ . 
	add a,h			;0568	84 	. 
	ld (ix+00eh),a		;0569	dd 77 0e 	. w . 
	ld a,(ix+019h)		;056c	dd 7e 19 	. ~ . 
	adc a,000h		;056f	ce 00 	. . 
	ld (ix+00ah),a		;0571	dd 77 0a 	. w . 
	ret			;0574	c9 	. 
	ld hl,l0697h		;0575	21 97 06 	! . . 
	ld a,c			;0578	79 	y 
	cpl			;0579	2f 	/ 
	add a,07fh		;057a	c6 7f 	.  
	ld c,a			;057c	4f 	O 
	ld b,000h		;057d	06 00 	. . 
	add hl,bc			;057f	09 	. 
	ld a,(hl)			;0580	7e 	~ 
	exx			;0581	d9 	. 
	ld e,a			;0582	5f 	_ 
	ld l,(ix+01dh)		;0583	dd 6e 1d 	. n . 
	call sub_0719h		;0586	cd 19 07 	. . . 
	ld a,(ix+01eh)		;0589	dd 7e 1e 	. ~ . 
	add a,h			;058c	84 	. 
	ld (ix+00eh),a		;058d	dd 77 0e 	. w . 
	ld a,(ix+019h)		;0590	dd 7e 19 	. ~ . 
	adc a,000h		;0593	ce 00 	. . 
	ld (ix+00ah),a		;0595	dd 77 0a 	. w . 
	exx			;0598	d9 	. 
	inc hl			;0599	23 	# 
	ld l,(hl)			;059a	6e 	n 
	ld e,(ix+01dh)		;059b	dd 5e 1d 	. ^ . 
	call sub_0719h		;059e	cd 19 07 	. . . 
	ld a,(ix+01fh)		;05a1	dd 7e 1f 	. ~ . 
	sub h			;05a4	94 	. 
	ld (ix+00ch),a		;05a5	dd 77 0c 	. w . 
	ld a,(ix+01ah)		;05a8	dd 7e 1a 	. ~ . 
	adc a,000h		;05ab	ce 00 	. . 
	ld (ix+009h),a		;05ad	dd 77 09 	. w . 
	ret			;05b0	c9 	. 
	ld hl,l0697h		;05b1	21 97 06 	! . . 
	ld b,000h		;05b4	06 00 	. . 
	add hl,bc			;05b6	09 	. 
	ld a,(hl)			;05b7	7e 	~ 
	exx			;05b8	d9 	. 
	ld e,a			;05b9	5f 	_ 
	ld l,(ix+01dh)		;05ba	dd 6e 1d 	. n . 
	call sub_0719h		;05bd	cd 19 07 	. . . 
	ld a,(ix+01eh)		;05c0	dd 7e 1e 	. ~ . 
	sub h			;05c3	94 	. 
	ld (ix+00eh),a		;05c4	dd 77 0e 	. w . 
	ld a,(ix+019h)		;05c7	dd 7e 19 	. ~ . 
	sbc a,000h		;05ca	de 00 	. . 
	ld (ix+00ah),a		;05cc	dd 77 0a 	. w . 
	exx			;05cf	d9 	. 
	inc hl			;05d0	23 	# 
	ld l,(hl)			;05d1	6e 	n 
	ld e,(ix+01dh)		;05d2	dd 5e 1d 	. ^ . 
	call sub_0719h		;05d5	cd 19 07 	. . . 
	ld a,(ix+01fh)		;05d8	dd 7e 1f 	. ~ . 
	sub h			;05db	94 	. 
	ld (ix+00ch),a		;05dc	dd 77 0c 	. w . 
	ld a,(ix+01ah)		;05df	dd 7e 1a 	. ~ . 
	adc a,000h		;05e2	ce 00 	. . 
	ld (ix+009h),a		;05e4	dd 77 09 	. w . 
	ret			;05e7	c9 	. 
	ld hl,l0699h		;05e8	21 99 06 	! . . 
	ld a,c			;05eb	79 	y 
	cpl			;05ec	2f 	/ 
	add a,07fh		;05ed	c6 7f 	.  
	ld c,a			;05ef	4f 	O 
	ld b,000h		;05f0	06 00 	. . 
	add hl,bc			;05f2	09 	. 
	ld a,(hl)			;05f3	7e 	~ 
	exx			;05f4	d9 	. 
	ld e,a			;05f5	5f 	_ 
	ld l,(ix+01dh)		;05f6	dd 6e 1d 	. n . 
	call sub_0719h		;05f9	cd 19 07 	. . . 
	ld a,(ix+01fh)		;05fc	dd 7e 1f 	. ~ . 
l05ffh:
	sub h			;05ff	94 	. 
l0600h:
	ld (ix+00ch),a		;0600	dd 77 0c 	. w . 
	ld a,(ix+01ah)		;0603	dd 7e 1a 	. ~ . 
	adc a,000h		;0606	ce 00 	. . 
	ld (ix+009h),a		;0608	dd 77 09 	. w . 
	exx			;060b	d9 	. 
	inc hl			;060c	23 	# 
	ld l,(hl)			;060d	6e 	n 
	ld e,(ix+01dh)		;060e	dd 5e 1d 	. ^ . 
	call sub_0719h		;0611	cd 19 07 	. . . 
	ld a,(ix+01eh)		;0614	dd 7e 1e 	. ~ . 
	sub h			;0617	94 	. 
	ld (ix+00eh),a		;0618	dd 77 0e 	. w . 
	ld a,(ix+019h)		;061b	dd 7e 19 	. ~ . 
	sbc a,000h		;061e	de 00 	. . 
	ld (ix+00ah),a		;0620	dd 77 0a 	. w . 
	ret			;0623	c9 	. 
	ld hl,l0699h		;0624	21 99 06 	! . . 
	ld b,000h		;0627	06 00 	. . 
	add hl,bc			;0629	09 	. 
	ld a,(hl)			;062a	7e 	~ 
	exx			;062b	d9 	. 
	ld e,a			;062c	5f 	_ 
	ld l,(ix+01dh)		;062d	dd 6e 1d 	. n . 
	call sub_0719h		;0630	cd 19 07 	. . . 
	ld a,(ix+01fh)		;0633	dd 7e 1f 	. ~ . 
	add a,h			;0636	84 	. 
	ld (ix+00ch),a		;0637	dd 77 0c 	. w . 
	ld a,(ix+01ah)		;063a	dd 7e 1a 	. ~ . 
	sbc a,000h		;063d	de 00 	. . 
	ld (ix+009h),a		;063f	dd 77 09 	. w . 
	exx			;0642	d9 	. 
	inc hl			;0643	23 	# 
	ld l,(hl)			;0644	6e 	n 
	ld e,(ix+01dh)		;0645	dd 5e 1d 	. ^ . 
	call sub_0719h		;0648	cd 19 07 	. . . 
	ld a,(ix+01eh)		;064b	dd 7e 1e 	. ~ . 
	sub h			;064e	94 	. 
	ld (ix+00eh),a		;064f	dd 77 0e 	. w . 
	ld a,(ix+019h)		;0652	dd 7e 19 	. ~ . 
	sbc a,000h		;0655	de 00 	. . 
	ld (ix+00ah),a		;0657	dd 77 0a 	. w . 
	ret			;065a	c9 	. 
	ld hl,l0697h		;065b	21 97 06 	! . . 
	ld a,c			;065e	79 	y 
	cpl			;065f	2f 	/ 
	add a,07fh		;0660	c6 7f 	.  
	ld c,a			;0662	4f 	O 
	ld b,000h		;0663	06 00 	. . 
	add hl,bc			;0665	09 	. 
	ld a,(hl)			;0666	7e 	~ 
	exx			;0667	d9 	. 
	ld e,a			;0668	5f 	_ 
	ld l,(ix+01dh)		;0669	dd 6e 1d 	. n . 
	call sub_0719h		;066c	cd 19 07 	. . . 
	ld a,(ix+01eh)		;066f	dd 7e 1e 	. ~ . 
	sub h			;0672	94 	. 
	ld (ix+00eh),a		;0673	dd 77 0e 	. w . 
	ld a,(ix+019h)		;0676	dd 7e 19 	. ~ . 
	sbc a,000h		;0679	de 00 	. . 
	ld (ix+00ah),a		;067b	dd 77 0a 	. w . 
	exx			;067e	d9 	. 
	inc hl			;067f	23 	# 
	ld l,(hl)			;0680	6e 	n 
	ld e,(ix+01dh)		;0681	dd 5e 1d 	. ^ . 
	call sub_0719h		;0684	cd 19 07 	. . . 
	ld a,(ix+01fh)		;0687	dd 7e 1f 	. ~ . 
	add a,h			;068a	84 	. 
	ld (ix+00ch),a		;068b	dd 77 0c 	. w . 
	ld a,(ix+01ah)		;068e	dd 7e 1a 	. ~ . 
	sbc a,000h		;0691	de 00 	. . 
	ld (ix+009h),a		;0693	dd 77 09 	. w . 
	ret			;0696	c9 	. 
l0697h:
	nop			;0697	00 	. 
	rst 38h			;0698	ff 	. 
l0699h:
	inc bc			;0699	03 	. 
	rst 38h			;069a	ff 	. 
	ld b,0ffh		;069b	06 ff 	. . 
	add hl,bc			;069d	09 	. 
	rst 38h			;069e	ff 	. 
	dec c			;069f	0d 	. 
	rst 38h			;06a0	ff 	. 
	djnz $+1		;06a1	10 ff 	. . 
	inc de			;06a3	13 	. 
	cp 016h		;06a4	fe 16 	. . 
	cp 019h		;06a6	fe 19 	. . 
	cp 01ch		;06a8	fe 1c 	. . 
	defb 0fdh,01fh,0fdh	;illegal sequence		;06aa	fd 1f fd 	. . . 
	ld (025fdh),hl		;06ad	22 fd 25 	" . % 
	call m,0fc29h		;06b0	fc 29 fc 	. ) . 
	inc l			;06b3	2c 	, 
	ei			;06b4	fb 	. 
	cpl			;06b5	2f 	/ 
l06b6h:
	ei			;06b6	fb 	. 
	ld (035fah),a		;06b7	32 fa 35 	2 . 5 
	ld sp,hl			;06ba	f9 	. 
	jr c,l06b6h		;06bb	38 f9 	8 . 
	dec sp			;06bd	3b 	; 
	ret m			;06be	f8 	. 
	ld a,0f7h		;06bf	3e f7 	> . 
	ld b,c			;06c1	41 	A 
	rst 30h			;06c2	f7 	. 
	ld b,h			;06c3	44 	D 
	or 047h		;06c4	f6 47 	. G 
	push af			;06c6	f5 	. 
	ld c,d			;06c7	4a 	J 
	call p,0f34dh		;06c8	f4 4d f3 	. M . 
	ld d,b			;06cb	50 	P 
	jp p,0f153h		;06cc	f2 53 f1 	. S . 
	ld d,(hl)			;06cf	56 	V 
	ret p			;06d0	f0 	. 
	ld e,c			;06d1	59 	Y 
	rst 28h			;06d2	ef 	. 
	ld e,h			;06d3	5c 	\ 
	xor 05fh		;06d4	ee 5f 	. _ 
	sbc hl,hl		;06d6	ed 62 	. b 
	call pe,0ea64h		;06d8	ec 64 ea 	. d . 
	ld h,a			;06db	67 	g 
	jp (hl)			;06dc	e9 	. 
	ld l,d			;06dd	6a 	j 
	ret pe			;06de	e8 	. 
	ld l,l			;06df	6d 	m 
	rst 20h			;06e0	e7 	. 
	ld (hl),b			;06e1	70 	p 
	push hl			;06e2	e5 	. 
	ld (hl),e			;06e3	73 	s 
	call po,0e275h		;06e4	e4 75 e2 	. u . 
	ld a,b			;06e7	78 	x 
	pop hl			;06e8	e1 	. 
	ld a,e			;06e9	7b 	{ 
	rst 18h			;06ea	df 	. 
	ld a,(hl)			;06eb	7e 	~ 
	sbc a,080h		;06ec	de 80 	. . 
	call c,0db83h		;06ee	dc 83 db 	. . . 
	add a,(hl)			;06f1	86 	. 
	exx			;06f2	d9 	. 
	adc a,b			;06f3	88 	. 
	rst 10h			;06f4	d7 	. 
	adc a,e			;06f5	8b 	. 
	sub 08eh		;06f6	d6 8e 	. . 
	call nc,0d290h		;06f8	d4 90 d2 	. . . 
	sub e			;06fb	93 	. 
	ret nc			;06fc	d0 	. 
	sub l			;06fd	95 	. 
	rst 8			;06fe	cf 	. 
l06ffh:
	sbc a,b			;06ff	98 	. 
l0700h:
	call 0cb9ah		;0700	cd 9a cb 	. . . 
	sbc a,l			;0703	9d 	. 
	ret			;0704	c9 	. 
	sbc a,a			;0705	9f 	. 
	rst 0			;0706	c7 	. 
	and d			;0707	a2 	. 
	push bc			;0708	c5 	. 
	and h			;0709	a4 	. 
	jp 0c1a7h		;070a	c3 a7 c1 	. . . 
	xor c			;070d	a9 	. 
	cp a			;070e	bf 	. 
	xor e			;070f	ab 	. 
	cp l			;0710	bd 	. 
l0711h:
	xor (hl)			;0711	ae 	. 
	cp e			;0712	bb 	. 
	or b			;0713	b0 	. 
	cp c			;0714	b9 	. 
	or d			;0715	b2 	. 
	or a			;0716	b7 	. 
	or h			;0717	b4 	. 
l0718h:
	or h			;0718	b4 	. 
sub_0719h:
	ld h,l			;0719	65 	e 
l071ah:
	ld b,008h		;071a	06 08 	. . 
	ld d,000h		;071c	16 00 	. . 
	ld l,d			;071e	6a 	j 
l071fh:
	add hl,hl			;071f	29 	) 
	jr nc,l0723h		;0720	30 01 	0 . 
	add hl,de			;0722	19 	. 
l0723h:
	djnz l071fh		;0723	10 fa 	. . 
	ret			;0725	c9 	. 
	ld b,011h		;0726	06 11 	. . 
	xor a			;0728	af 	. 
	jp l0735h		;0729	c3 35 07 	. 5 . 
l072ch:
	adc a,a			;072c	8f 	. 
	jr c,l0732h		;072d	38 03 	8 . 
	cp e			;072f	bb 	. 
	jr c,l0734h		;0730	38 02 	8 . 
l0732h:
	sub e			;0732	93 	. 
	or a			;0733	b7 	. 
l0734h:
	ccf			;0734	3f 	? 
l0735h:
	adc hl,hl		;0735	ed 6a 	. j 
	djnz l072ch		;0737	10 f3 	. . 
	ret			;0739	c9 	. 
	exx			;073a	d9 	. 
	bit 7,(hl)		;073b	cb 7e 	. ~ 
	jp nz,l07b9h		;073d	c2 b9 07 	. . . 
	set 7,(hl)		;0740	cb fe 	. . 
	xor a			;0742	af 	. 
	ld (0c10ah),a		;0743	32 0a c1 	2 . . 
	call sub_02deh		;0746	cd de 02 	. . . 
	ld de,06000h		;0749	11 00 60 	. . ` 
	ld bc,l0020h		;074c	01 20 00 	.   . 
	ld l,000h		;074f	2e 00 	. . 
	call sub_0156h		;0751	cd 56 01 	. V . 
	ld a,082h		;0754	3e 82 	> . 
	ld (0ffffh),a		;0756	32 ff ff 	2 . . 
	call 09df3h		;0759	cd f3 9d 	. . . 
	call sub_0408h		;075c	cd 08 04 	. . . 
	ld hl,0c020h		;075f	21 20 c0 	!   . 
	ld de,0c021h		;0762	11 21 c0 	. ! . 
	ld bc,l1ddfh		;0765	01 df 1d 	. . . 
	ld (hl),000h		;0768	36 00 	6 . 
	ldir		;076a	ed b0 	. . 
	ld hl,0c226h		;076c	21 26 c2 	! & . 
	ld (hl),03ch		;076f	36 3c 	6 < 
	xor a			;0771	af 	. 
	ld (0c227h),a		;0772	32 27 c2 	2 ' . 
	ld (0c228h),a		;0775	32 28 c2 	2 ( . 
	ld a,084h		;0778	3e 84 	> . 
	ld (0ffffh),a		;077a	32 ff ff 	2 . . 
	ld hl,0b332h		;077d	21 32 b3 	! 2 . 
	ld de,04020h		;0780	11 20 40 	.   @ 
	call sub_0260h		;0783	cd 60 02 	. ` . 
	ld hl,0ad9eh		;0786	21 9e ad 	! . . 
	ld de,0788eh		;0789	11 8e 78 	. . x 
	ld bc,0061ch		;078c	01 1c 06 	. . . 
	call l0160h		;078f	cd 60 01 	. ` . 
	ld hl,0ae46h		;0792	21 46 ae 	! F . 
	ld de,079dah		;0795	11 da 79 	. . y 
	ld bc,l071ah		;0798	01 1a 07 	. . . 
	call l0160h		;079b	cd 60 01 	. ` . 
	ld hl,l0893h		;079e	21 93 08 	! . . 
	ld de,0c000h		;07a1	11 00 c0 	. . . 
	ld b,020h		;07a4	06 20 	.   
	rst 30h			;07a6	f7 	. 
	call sub_08c3h		;07a7	cd c3 08 	. . . 
	call sub_02c3h		;07aa	cd c3 02 	. . . 
	ei			;07ad	fb 	. 
	ld hl,l01d0h		;07ae	21 d0 01 	! . . 
	ld (0c103h),hl		;07b1	22 03 c1 	" . . 
	ld a,081h		;07b4	3e 81 	> . 
	ld (0c110h),a		;07b6	32 10 c1 	2 . . 
l07b9h:
	ld a,009h		;07b9	3e 09 	> . 
	call sub_02b3h		;07bb	cd b3 02 	. . . 
	call sub_265ch		;07be	cd 5c 26 	. \ & 
	ld a,(0c006h)		;07c1	3a 06 c0 	: . . 
	ld b,a			;07c4	47 	G 
	and 030h		;07c5	e6 30 	. 0 
	jr nz,l07d9h		;07c7	20 10 	  . 
	ld hl,(0c103h)		;07c9	2a 03 c1 	* . . 
	dec hl			;07cc	2b 	+ 
	ld (0c103h),hl		;07cd	22 03 c1 	" . . 
	ld a,h			;07d0	7c 	| 
	or l			;07d1	b5 	. 
	ret nz			;07d2	c0 	. 
	ld a,002h		;07d3	3e 02 	> . 
	ld (0c01fh),a		;07d5	32 1f c0 	2 . . 
	ret			;07d8	c9 	. 
l07d9h:
	ld a,026h		;07d9	3e 26 	> & 
	ld (0c05fh),a		;07db	32 5f c0 	2 _ . 
	ld hl,l07f1h		;07de	21 f1 07 	! . . 
	ld de,0c01fh		;07e1	11 1f c0 	. . . 
	ld bc,l0019h		;07e4	01 19 00 	. . . 
	ldir		;07e7	ed b0 	. . 
	xor a			;07e9	af 	. 
	ld (0c10ah),a		;07ea	32 0a c1 	2 . . 
	ld (0c005h),a		;07ed	32 05 c0 	2 . . 
	ret			;07f0	c9 	. 
l07f1h:
	inc bc			;07f1	03 	. 
	nop			;07f2	00 	. 
	nop			;07f3	00 	. 
	nop			;07f4	00 	. 
	ld bc,l0301h		;07f5	01 01 03 	. . . 
	nop			;07f8	00 	. 
	nop			;07f9	00 	. 
	nop			;07fa	00 	. 
	nop			;07fb	00 	. 
	nop			;07fc	00 	. 
	nop			;07fd	00 	. 
	nop			;07fe	00 	. 
l07ffh:
	nop			;07ff	00 	. 
	nop			;0800	00 	. 
	nop			;0801	00 	. 
	nop			;0802	00 	. 
	nop			;0803	00 	. 
	nop			;0804	00 	. 
	nop			;0805	00 	. 
	nop			;0806	00 	. 
	inc bc			;0807	03 	. 
l0808h:
	nop			;0808	00 	. 
	nop			;0809	00 	. 
	nop			;080a	00 	. 
	nop			;080b	00 	. 
l080ch:
	nop			;080c	00 	. 
	nop			;080d	00 	. 
l080eh:
	nop			;080e	00 	. 
	ld hl,0c226h		;080f	21 26 c2 	! & . 
	dec (hl)			;0812	35 	5 
	ret nz			;0813	c0 	. 
	ld (hl),020h		;0814	36 20 	6   
	inc hl			;0816	23 	# 
	ld a,(hl)			;0817	7e 	~ 
	cp 006h		;0818	fe 06 	. . 
	jr c,l0833h		;081a	38 17 	8 . 
	dec hl			;081c	2b 	+ 
	ld (hl),003h		;081d	36 03 	6 . 
	inc hl			;081f	23 	# 
	inc hl			;0820	23 	# 
	inc (hl)			;0821	34 	4 
	ld a,(hl)			;0822	7e 	~ 
	and 003h		;0823	e6 03 	. . 
	ld hl,l08bfh		;0825	21 bf 08 	! . . 
	ld e,a			;0828	5f 	_ 
	ld d,000h		;0829	16 00 	. . 
	add hl,de			;082b	19 	. 
	ld a,(hl)			;082c	7e 	~ 
	ld de,0c002h		;082d	11 02 c0 	. . . 
	jp l012bh		;0830	c3 2b 01 	. + . 
l0833h:
	inc (hl)			;0833	34 	4 
	ld hl,0ffffh		;0834	21 ff ff 	! . . 
	ld (hl),084h		;0837	36 84 	6 . 
	ld hl,l08b3h		;0839	21 b3 08 	! . . 
	jp l0020h		;083c	c3 20 00 	.   . 
	ld hl,0aefch		;083f	21 fc ae 	! . . 
	ld de,07828h		;0842	11 28 78 	. ( x 
	ld bc,l0718h		;0845	01 18 07 	. . . 
	call l0160h		;0848	cd 60 01 	. ` . 
	jp l098fh		;084b	c3 8f 09 	. . . 
	ld hl,0b0a4h		;084e	21 a4 b0 	! . . 
	ld de,07b98h		;0851	11 98 7b 	. . { 
	ld bc,0061ch		;0854	01 1c 06 	. . . 
	call l0160h		;0857	cd 60 01 	. ` . 
	jp l094bh		;085a	c3 4b 09 	. K . 
	ld hl,0afa4h		;085d	21 a4 af 	! . . 
	ld de,07800h		;0860	11 00 78 	. . x 
	ld bc,l080eh		;0863	01 0e 08 	. . . 
	jp l0160h		;0866	c3 60 01 	. ` . 
	ld hl,0b014h		;0869	21 14 b0 	! . . 
	ld de,079f4h		;086c	11 f4 79 	. . y 
	ld bc,00c0ch		;086f	01 0c 0c 	. . . 
	call l0160h		;0872	cd 60 01 	. ` . 
	jp l0934h		;0875	c3 34 09 	. 4 . 
	ld hl,0b1b2h		;0878	21 b2 b1 	! . . 
	ld de,07a00h		;087b	11 00 7a 	. . z 
	ld bc,l1018h		;087e	01 18 10 	. . . 
	call l0160h		;0881	cd 60 01 	. ` . 
	jp l0962h		;0884	c3 62 09 	. b . 
	ld hl,0b14ch		;0887	21 4c b1 	! L . 
	ld de,07d1ah		;088a	11 1a 7d 	. . } 
	ld bc,00322h		;088d	01 22 03 	. " . 
	jp l0160h		;0890	c3 60 01 	. ` . 
l0893h:
	cpl			;0893	2f 	/ 
	nop			;0894	00 	. 
	inc bc			;0895	03 	. 
	inc b			;0896	04 	. 
	inc c			;0897	0c 	. 
	ex af,af'			;0898	08 	. 
	dec b			;0899	05 	. 
	dec bc			;089a	0b 	. 
	jr nc,$+58		;089b	30 38 	0 8 
	inc a			;089d	3c 	< 
	ccf			;089e	3f 	? 
	ld (bc),a			;089f	02 	. 
	ld b,02fh		;08a0	06 2f 	. / 
	nop			;08a2	00 	. 
	cpl			;08a3	2f 	/ 
	ccf			;08a4	3f 	? 
	dec b			;08a5	05 	. 
	dec bc			;08a6	0b 	. 
	inc bc			;08a7	03 	. 
	ld (bc),a			;08a8	02 	. 
	nop			;08a9	00 	. 
	jr nc,l08e8h		;08aa	30 3c 	0 < 
	inc c			;08ac	0c 	. 
	rrca			;08ad	0f 	. 
	ex af,af'			;08ae	08 	. 
	ld a,(sub_0334h+2)		;08af	3a 36 03 	: 6 . 
	ld a,(bc)			;08b2	0a 	. 
l08b3h:
	ccf			;08b3	3f 	? 
	ex af,af'			;08b4	08 	. 
	ld c,(hl)			;08b5	4e 	N 
	ex af,af'			;08b6	08 	. 
	ld e,l			;08b7	5d 	] 
	ex af,af'			;08b8	08 	. 
	ld l,c			;08b9	69 	i 
	ex af,af'			;08ba	08 	. 
	ld a,b			;08bb	78 	x 
	ex af,af'			;08bc	08 	. 
	add a,a			;08bd	87 	. 
	ex af,af'			;08be	08 	. 
l08bfh:
	inc bc			;08bf	03 	. 
	rrca			;08c0	0f 	. 
	ex af,af'			;08c1	08 	. 
	rrca			;08c2	0f 	. 
sub_08c3h:
	ld a,01eh		;08c3	3e 1e 	> . 
	ld (0c0f8h),a		;08c5	32 f8 c0 	2 . . 
	ld hl,0c300h		;08c8	21 00 c3 	! . . 
	ld (0c0f9h),hl		;08cb	22 f9 c0 	" . . 
	call sub_09a6h		;08ce	cd a6 09 	. . . 
	ld a,01dh		;08d1	3e 1d 	> . 
	call 04189h		;08d3	cd 89 41 	. . A 
	ld bc,00036h		;08d6	01 36 00 	. 6 . 
	call 04191h		;08d9	cd 91 41 	. . A 
	ld bc,l002ch		;08dc	01 2c 00 	. , . 
	call 04191h		;08df	cd 91 41 	. . A 
	ld bc,l0014h		;08e2	01 14 00 	. . . 
	call 04191h		;08e5	cd 91 41 	. . A 
l08e8h:
	ld hl,0a357h		;08e8	21 57 a3 	! W . 
	ld de,06400h		;08eb	11 00 64 	. . d 
	call sub_0260h		;08ee	cd 60 02 	. ` . 
	ld a,082h		;08f1	3e 82 	> . 
	ld (0ffffh),a		;08f3	32 ff ff 	2 . . 
	ld hl,08f7ch		;08f6	21 7c 8f 	! | . 
	ld de,0c800h		;08f9	11 00 c8 	. . . 
	xor a			;08fc	af 	. 
	call sub_091eh		;08fd	cd 1e 09 	. . . 
	ld hl,09153h		;0900	21 53 91 	! S . 
	ld de,0c828h		;0903	11 28 c8 	. ( . 
	ld a,00bh		;0906	3e 0b 	> . 
	call sub_091eh		;0908	cd 1e 09 	. . . 
	ld hl,08f16h		;090b	21 16 8f 	! . . 
l090eh:
	ld de,0c850h		;090e	11 50 c8 	. P . 
	ld a,013h		;0911	3e 13 	> . 
	call sub_091eh		;0913	cd 1e 09 	. . . 
	ld hl,08e02h		;0916	21 02 8e 	! . . 
	ld de,0c878h		;0919	11 78 c8 	. x . 
	ld a,019h		;091c	3e 19 	> . 
sub_091eh:
	push de			;091e	d5 	. 
	ld bc,l0024h		;091f	01 24 00 	. $ . 
	ldir		;0922	ed b0 	. . 
	pop hl			;0924	e1 	. 
	ld e,(hl)			;0925	5e 	^ 
	inc hl			;0926	23 	# 
	ld b,e			;0927	43 	C 
	ld d,000h		;0928	16 00 	. . 
	add hl,de			;092a	19 	. 
	ld c,a			;092b	4f 	O 
l092ch:
	inc hl			;092c	23 	# 
	inc hl			;092d	23 	# 
	ld a,(hl)			;092e	7e 	~ 
	add a,c			;092f	81 	. 
	ld (hl),a			;0930	77 	w 
	djnz l092ch		;0931	10 f9 	. . 
	ret			;0933	c9 	. 
l0934h:
	ld ix,0c300h		;0934	dd 21 00 c3 	. ! . . 
	ld (ix+000h),018h		;0938	dd 36 00 18 	. 6 . . 
	ld hl,0c800h		;093c	21 00 c8 	! . . 
	ld (0c307h),hl		;093f	22 07 c3 	" . . 
	ld (ix+00ch),0dch		;0942	dd 36 0c dc 	. 6 . . 
	ld (ix+00eh),046h		;0946	dd 36 0e 46 	. 6 . F 
	ret			;094a	c9 	. 
l094bh:
	ld ix,0c320h		;094b	dd 21 20 c3 	. !   . 
	ld (ix+000h),018h		;094f	dd 36 00 18 	. 6 . . 
	ld hl,0c828h		;0953	21 28 c8 	! ( . 
	ld (0c327h),hl		;0956	22 27 c3 	" ' . 
	ld (ix+00ch),070h		;0959	dd 36 0c 70 	. 6 . p 
	ld (ix+00eh),07ch		;095d	dd 36 0e 7c 	. 6 . | 
	ret			;0961	c9 	. 
l0962h:
	ld ix,0c340h		;0962	dd 21 40 c3 	. ! @ . 
	ld (ix+000h),018h		;0966	dd 36 00 18 	. 6 . . 
	ld hl,0c850h		;096a	21 50 c8 	! P . 
	ld (0c347h),hl		;096d	22 47 c3 	" G . 
	ld (ix+00ch),018h		;0970	dd 36 0c 18 	. 6 . . 
	ld (ix+00eh),04fh		;0974	dd 36 0e 4f 	. 6 . O 
	ld ix,0c3c0h		;0978	dd 21 c0 c3 	. ! . . 
	ld (ix+000h),018h		;097c	dd 36 00 18 	. 6 . . 
	ld hl,0961ah		;0980	21 1a 96 	! . . 
	ld (0c3c7h),hl		;0983	22 c7 c3 	" . . 
	ld (ix+00ch),030h		;0986	dd 36 0c 30 	. 6 . 0 
	ld (ix+00eh),077h		;098a	dd 36 0e 77 	. 6 . w 
	ret			;098e	c9 	. 
l098fh:
	ld ix,0c360h		;098f	dd 21 60 c3 	. ! ` . 
	ld (ix+000h),018h		;0993	dd 36 00 18 	. 6 . . 
	ld hl,0c878h		;0997	21 78 c8 	! x . 
	ld (0c367h),hl		;099a	22 67 c3 	" g . 
	ld (ix+00ch),0c9h		;099d	dd 36 0c c9 	. 6 . . 
	ld (ix+00eh),00ch		;09a1	dd 36 0e 0c 	. 6 . . 
	ret			;09a5	c9 	. 
sub_09a6h:
	ld b,01eh		;09a6	06 1e 	. . 
	ld hl,0c300h		;09a8	21 00 c3 	! . . 
l09abh:
	call sub_2755h		;09ab	cd 55 27 	. U ' 
	inc hl			;09ae	23 	# 
	djnz l09abh		;09af	10 fa 	. . 
	ret			;09b1	c9 	. 
	ld hl,0c01fh		;09b2	21 1f c0 	! . . 
	bit 7,(hl)		;09b5	cb 7e 	. ~ 
	jp nz,l0a5bh		;09b7	c2 5b 0a 	. [ . 
	set 7,(hl)		;09ba	cb fe 	. . 
	ld a,(0c016h)		;09bc	3a 16 c0 	: . . 
	inc a			;09bf	3c 	< 
	cp 005h		;09c0	fe 05 	. . 
	jp c,l09c7h		;09c2	da c7 09 	. . . 
	ld a,001h		;09c5	3e 01 	> . 
l09c7h:
	ld (0c016h),a		;09c7	32 16 c0 	2 . . 
	ld c,a			;09ca	4f 	O 
	ld b,000h		;09cb	06 00 	. . 
	ld hl,00a48h		;09cd	21 48 0a 	! H . 
	add hl,bc			;09d0	09 	. 
	ld a,(hl)			;09d1	7e 	~ 
	ld (0c023h),a		;09d2	32 23 c0 	2 # . 
	cp 002h		;09d5	fe 02 	. . 
	jp nz,l09dfh		;09d7	c2 df 09 	. . . 
	ld a,007h		;09da	3e 07 	> . 
	ld (0c054h),a		;09dc	32 54 c0 	2 T . 
l09dfh:
	ld a,085h		;09df	3e 85 	> . 
	ld (0ffffh),a		;09e1	32 ff ff 	2 . . 
	ld a,(0c016h)		;09e4	3a 16 c0 	: . . 
	ld hl,l0a4bh		;09e7	21 4b 0a 	! K . 
	rst 10h			;09ea	d7 	. 
	dec hl			;09eb	2b 	+ 
	ld (0c105h),hl		;09ec	22 05 c1 	" . . 
	ld hl,0c005h		;09ef	21 05 c0 	! . . 
	ld a,(hl)			;09f2	7e 	~ 
	and 003h		;09f3	e6 03 	. . 
	or 020h		;09f5	f6 20 	.   
	ld (hl),a			;09f7	77 	w 
	ld hl,001ffh		;09f8	21 ff 01 	! . . 
	ld (0c107h),hl		;09fb	22 07 c1 	" . . 
	jp l0a8ah		;09fe	c3 8a 0a 	. . . 
	ret			;0a01	c9 	. 
	ld a,085h		;0a02	3e 85 	> . 
	ld (0ffffh),a		;0a04	32 ff ff 	2 . . 
	ld a,(0c006h)		;0a07	3a 06 c0 	: . . 
	and 030h		;0a0a	e6 30 	. 0 
	jr z,l0a19h		;0a0c	28 0b 	( . 
	ld a,001h		;0a0e	3e 01 	> . 
	ld (0c01fh),a		;0a10	32 1f c0 	2 . . 
	ld hl,0c005h		;0a13	21 05 c0 	! . . 
	res 5,(hl)		;0a16	cb ae 	. . 
	ret			;0a18	c9 	. 
l0a19h:
	ld bc,(0c107h)		;0a19	ed 4b 07 c1 	. K . . 
	djnz l0a3eh		;0a1d	10 1f 	. . 
	ld hl,(0c105h)		;0a1f	2a 05 c1 	* . . 
	inc hl			;0a22	23 	# 
	ld a,(hl)			;0a23	7e 	~ 
	or a			;0a24	b7 	. 
	jr nz,l0a32h		;0a25	20 0b 	  . 
	ld a,000h		;0a27	3e 00 	> . 
	ld (0c01fh),a		;0a29	32 1f c0 	2 . . 
	ld hl,0c005h		;0a2c	21 05 c0 	! . . 
	res 5,(hl)		;0a2f	cb ae 	. . 
	ret			;0a31	c9 	. 
l0a32h:
	ld b,a			;0a32	47 	G 
	inc hl			;0a33	23 	# 
	ld a,c			;0a34	79 	y 
	ld c,(hl)			;0a35	4e 	N 
	ld (0c105h),hl		;0a36	22 05 c1 	" . . 
	xor c			;0a39	a9 	. 
	and c			;0a3a	a1 	. 
	ld (0c007h),a		;0a3b	32 07 c0 	2 . . 
l0a3eh:
	ld (0c107h),bc		;0a3e	ed 43 07 c1 	. C . . 
	ld a,c			;0a42	79 	y 
	ld (0c006h),a		;0a43	32 06 c0 	2 . . 
	jp l0a7eh		;0a46	c3 7e 0a 	. ~ . 
	ld (bc),a			;0a49	02 	. 
	inc bc			;0a4a	03 	. 
l0a4bh:
	inc b			;0a4b	04 	. 
	dec b			;0a4c	05 	. 
	dec (hl)			;0a4d	35 	5 
	adc a,l			;0a4e	8d 	. 
	ld e,e			;0a4f	5b 	[ 
	adc a,l			;0a50	8d 	. 
	dec sp			;0a51	3b 	; 
	adc a,(hl)			;0a52	8e 	. 
	ld l,e			;0a53	6b 	k 
	adc a,a			;0a54	8f 	. 
	exx			;0a55	d9 	. 
	bit 7,(hl)		;0a56	cb 7e 	. ~ 
	jp z,l0a8ah		;0a58	ca 8a 0a 	. . . 
l0a5bh:
	call 06427h		;0a5b	cd 27 64 	. ' d 
	call 06f09h		;0a5e	cd 09 6f 	. . o 
	call sub_265ch		;0a61	cd 5c 26 	. \ & 
	call 0678dh		;0a64	cd 8d 67 	. . g 
	call 06b0eh		;0a67	cd 0e 6b 	. . k 
	ld a,009h		;0a6a	3e 09 	> . 
	call sub_02b3h		;0a6c	cd b3 02 	. . . 
	ld a,(0c093h)		;0a6f	3a 93 c0 	: . . 
	or a			;0a72	b7 	. 
	ret z			;0a73	c8 	. 
	xor a			;0a74	af 	. 
	ld (0c093h),a		;0a75	32 93 c0 	2 . . 
	ld a,00bh		;0a78	3e 0b 	> . 
	ld (0c01fh),a		;0a7a	32 1f c0 	2 . . 
	ret			;0a7d	c9 	. 
l0a7eh:
	call sub_2617h		;0a7e	cd 17 26 	. . & 
	call 041f2h		;0a81	cd f2 41 	. . A 
	call sub_1556h		;0a84	cd 56 15 	. V . 
	jp 068e9h		;0a87	c3 e9 68 	. . h 
l0a8ah:
	call sub_02deh		;0a8a	cd de 02 	. . . 
	call sub_09a6h		;0a8d	cd a6 09 	. . . 
	ld a,082h		;0a90	3e 82 	> . 
	ld (0ffffh),a		;0a92	32 ff ff 	2 . . 
	call 09df3h		;0a95	cd f3 9d 	. . . 
	ld hl,0c0a0h		;0a98	21 a0 c0 	! . . 
	ld de,0c0a1h		;0a9b	11 a1 c0 	. . . 
	ld bc,l002ah		;0a9e	01 2a 00 	. * . 
	ld (hl),000h		;0aa1	36 00 	6 . 
	ldir		;0aa3	ed b0 	. . 
	ld a,01eh		;0aa5	3e 1e 	> . 
	ld (0c0f8h),a		;0aa7	32 f8 c0 	2 . . 
	ld hl,0c300h		;0aaa	21 00 c3 	! . . 
	ld (0c0f9h),hl		;0aad	22 f9 c0 	" . . 
	call sub_10c5h		;0ab0	cd c5 10 	. . . 
	call sub_10fbh		;0ab3	cd fb 10 	. . . 
	ld hl,0b0a9h		;0ab6	21 a9 b0 	! . . 
	ld de,061a0h		;0ab9	11 a0 61 	. . a 
	ld bc,00060h		;0abc	01 60 00 	. ` . 
	call sub_0131h		;0abf	cd 31 01 	. 1 . 
	ld hl,09349h		;0ac2	21 49 93 	! I . 
	ld de,066c0h		;0ac5	11 c0 66 	. . f 
	ld bc,l0100h		;0ac8	01 00 01 	. . . 
	call sub_0131h		;0acb	cd 31 01 	. 1 . 
	ld a,(0c023h)		;0ace	3a 23 c0 	: # . 
	ld hl,l0de3h		;0ad1	21 e3 0d 	! . . 
	ld c,a			;0ad4	4f 	O 
	ld b,000h		;0ad5	06 00 	. . 
	add hl,bc			;0ad7	09 	. 
	ld a,(hl)			;0ad8	7e 	~ 
	or a			;0ad9	b7 	. 
	jp z,l0b07h		;0ada	ca 07 0b 	. . . 
	cp 001h		;0add	fe 01 	. . 
	jp nz,l0aeah		;0adf	c2 ea 0a 	. . . 
	ld a,001h		;0ae2	3e 01 	> . 
	ld (0c051h),a		;0ae4	32 51 c0 	2 Q . 
	jp l0aefh		;0ae7	c3 ef 0a 	. . . 
l0aeah:
	ld a,009h		;0aea	3e 09 	> . 
	ld (0c054h),a		;0aec	32 54 c0 	2 T . 
l0aefh:
	ld hl,09b29h		;0aef	21 29 9b 	! ) . 
	ld de,06200h		;0af2	11 00 62 	. . b 
	ld bc,l0020h		;0af5	01 20 00 	.   . 
	call sub_0131h		;0af8	cd 31 01 	. 1 . 
	ld hl,09429h		;0afb	21 29 94 	! ) . 
	ld de,06220h		;0afe	11 20 62 	.   b 
	ld bc,l01c0h		;0b01	01 c0 01 	. . . 
	call sub_0131h		;0b04	cd 31 01 	. 1 . 
l0b07h:
	ld a,085h		;0b07	3e 85 	> . 
	ld (0ffffh),a		;0b09	32 ff ff 	2 . . 
	ld de,05600h		;0b0c	11 00 56 	. . V 
	ld hl,0b2b1h		;0b0f	21 b1 b2 	! . . 
	call sub_0260h		;0b12	cd 60 02 	. ` . 
	ld a,083h		;0b15	3e 83 	> . 
	ld (0ffffh),a		;0b17	32 ff ff 	2 . . 
	ld hl,08000h		;0b1a	21 00 80 	! . . 
	ld de,04020h		;0b1d	11 20 40 	.   @ 
	ld bc,l0480h		;0b20	01 80 04 	. . . 
	call sub_0131h		;0b23	cd 31 01 	. 1 . 
	call sub_0e31h		;0b26	cd 31 0e 	. 1 . 
	call 0657ah		;0b29	cd 7a 65 	. z e 
	ld a,(0c023h)		;0b2c	3a 23 c0 	: # . 
	ld hl,l0d32h		;0b2f	21 32 0d 	! 2 . 
	ld c,a			;0b32	4f 	O 
	add a,a			;0b33	87 	. 
	add a,c			;0b34	81 	. 
	ld c,a			;0b35	4f 	O 
	ld b,000h		;0b36	06 00 	. . 
	add hl,bc			;0b38	09 	. 
	ld a,(hl)			;0b39	7e 	~ 
	ld (0c069h),a		;0b3a	32 69 c0 	2 i . 
	inc hl			;0b3d	23 	# 
	ld a,(hl)			;0b3e	7e 	~ 
	inc hl			;0b3f	23 	# 
	ld h,(hl)			;0b40	66 	f 
	ld l,a			;0b41	6f 	o 
	ld (0c0fdh),hl		;0b42	22 fd c0 	" . . 
	ld a,082h		;0b45	3e 82 	> . 
	ld (0ffffh),a		;0b47	32 ff ff 	2 . . 
	ld a,(0c023h)		;0b4a	3a 23 c0 	: # . 
	ld hl,0b602h		;0b4d	21 02 b6 	! . . 
	rst 10h			;0b50	d7 	. 
	ld (0c061h),hl		;0b51	22 61 c0 	" a . 
	xor a			;0b54	af 	. 
	ld (0c08eh),a		;0b55	32 8e c0 	2 . . 
	ld (0c215h),a		;0b58	32 15 c2 	2 . . 
	ld hl,0d900h		;0b5b	21 00 d9 	! . . 
	ld (hl),000h		;0b5e	36 00 	6 . 
	ld de,0d901h		;0b60	11 01 d9 	. . . 
	ld bc,l05ffh		;0b63	01 ff 05 	. . . 
	ldir		;0b66	ed b0 	. . 
	ld a,(0c023h)		;0b68	3a 23 c0 	: # . 
	cp 00bh		;0b6b	fe 0b 	. . 
	jp c,l0c0eh		;0b6d	da 0e 0c 	. . . 
	jp nz,l0bbeh		;0b70	c2 be 0b 	. . . 
	ld a,001h		;0b73	3e 01 	> . 
	ld (0c08eh),a		;0b75	32 8e c0 	2 . . 
	ld hl,097ddh		;0b78	21 dd 97 	! . . 
	ld b,005h		;0b7b	06 05 	. . 
	ld de,0d900h		;0b7d	11 00 d9 	. . . 
l0b80h:
	ld (0c078h),de		;0b80	ed 53 78 c0 	. S x . 
	ld (0c07ah),de		;0b84	ed 53 7a c0 	. S z . 
l0b88h:
	push bc			;0b88	c5 	. 
	ld a,(hl)			;0b89	7e 	~ 
	or a			;0b8a	b7 	. 
	inc hl			;0b8b	23 	# 
	jp z,l0b98h		;0b8c	ca 98 0b 	. . . 
	inc a			;0b8f	3c 	< 
	dec hl			;0b90	2b 	+ 
l0b91h:
	ldi		;0b91	ed a0 	. . 
	inc de			;0b93	13 	. 
	dec a			;0b94	3d 	= 
	jp nz,l0b91h		;0b95	c2 91 0b 	. . . 
l0b98h:
	ex de,hl			;0b98	eb 	. 
	ld hl,(0c07ah)		;0b99	2a 7a c0 	* z . 
	ld bc,l0020h		;0b9c	01 20 00 	.   . 
	add hl,bc			;0b9f	09 	. 
	ld (0c07ah),hl		;0ba0	22 7a c0 	" z . 
	ex de,hl			;0ba3	eb 	. 
	pop bc			;0ba4	c1 	. 
	djnz l0b88h		;0ba5	10 e1 	. . 
	ld a,(hl)			;0ba7	7e 	~ 
	cp 0ffh		;0ba8	fe ff 	. . 
	jp z,l0c0eh		;0baa	ca 0e 0c 	. . . 
	ex de,hl			;0bad	eb 	. 
	ld hl,(0c078h)		;0bae	2a 78 c0 	* x . 
	ld bc,l0100h		;0bb1	01 00 01 	. . . 
	add hl,bc			;0bb4	09 	. 
	ld (0c078h),hl		;0bb5	22 78 c0 	" x . 
	ex de,hl			;0bb8	eb 	. 
	ld b,005h		;0bb9	06 05 	. . 
	jp l0b80h		;0bbb	c3 80 0b 	. . . 
l0bbeh:
	cp 010h		;0bbe	fe 10 	. . 
	jp nz,l0c0eh		;0bc0	c2 0e 0c 	. . . 
	ld a,001h		;0bc3	3e 01 	> . 
	ld (0c08eh),a		;0bc5	32 8e c0 	2 . . 
	ld hl,09800h		;0bc8	21 00 98 	! . . 
	ld b,007h		;0bcb	06 07 	. . 
	ld de,0d900h		;0bcd	11 00 d9 	. . . 
l0bd0h:
	ld (0c078h),de		;0bd0	ed 53 78 c0 	. S x . 
	ld (0c07ah),de		;0bd4	ed 53 7a c0 	. S z . 
l0bd8h:
	push bc			;0bd8	c5 	. 
	ld a,(hl)			;0bd9	7e 	~ 
	or a			;0bda	b7 	. 
	inc hl			;0bdb	23 	# 
	jp z,l0be8h		;0bdc	ca e8 0b 	. . . 
	inc a			;0bdf	3c 	< 
	dec hl			;0be0	2b 	+ 
l0be1h:
	ldi		;0be1	ed a0 	. . 
	inc de			;0be3	13 	. 
	dec a			;0be4	3d 	= 
	jp nz,l0be1h		;0be5	c2 e1 0b 	. . . 
l0be8h:
	ex de,hl			;0be8	eb 	. 
	ld hl,(0c07ah)		;0be9	2a 7a c0 	* z . 
	ld bc,l0020h		;0bec	01 20 00 	.   . 
	add hl,bc			;0bef	09 	. 
	ld (0c07ah),hl		;0bf0	22 7a c0 	" z . 
	ex de,hl			;0bf3	eb 	. 
	pop bc			;0bf4	c1 	. 
	djnz l0bd8h		;0bf5	10 e1 	. . 
	ld a,(hl)			;0bf7	7e 	~ 
	cp 0ffh		;0bf8	fe ff 	. . 
	jp z,l0c0eh		;0bfa	ca 0e 0c 	. . . 
	ex de,hl			;0bfd	eb 	. 
	ld hl,(0c078h)		;0bfe	2a 78 c0 	* x . 
	ld bc,l0100h		;0c01	01 00 01 	. . . 
	add hl,bc			;0c04	09 	. 
	ld (0c078h),hl		;0c05	22 78 c0 	" x . 
l0c08h:
	ex de,hl			;0c08	eb 	. 
	ld b,007h		;0c09	06 07 	. . 
	jp l0bd0h		;0c0b	c3 d0 0b 	. . . 
l0c0eh:
	ld ix,0c300h		;0c0e	dd 21 00 c3 	. ! . . 
	ld (ix+000h),001h		;0c12	dd 36 00 01 	. 6 . . 
	ld a,(0c023h)		;0c16	3a 23 c0 	: # . 
	add a,a			;0c19	87 	. 
	ld c,a			;0c1a	4f 	O 
	ld b,000h		;0c1b	06 00 	. . 
	ld hl,l0d66h		;0c1d	21 66 0d 	! f . 
	add hl,bc			;0c20	09 	. 
	ld a,(hl)			;0c21	7e 	~ 
	ld (ix+00ch),a		;0c22	dd 77 0c 	. w . 
	inc hl			;0c25	23 	# 
	ld a,(hl)			;0c26	7e 	~ 
	ld (ix+00eh),a		;0c27	dd 77 0e 	. w . 
	call sub_298bh		;0c2a	cd 8b 29 	. . ) 
	call sub_265ch		;0c2d	cd 5c 26 	. \ & 
	ld a,(0c023h)		;0c30	3a 23 c0 	: # . 
	ld hl,l0cefh		;0c33	21 ef 0c 	! . . 
	rst 10h			;0c36	d7 	. 
	ld (0c00eh),hl		;0c37	22 0e c0 	" . . 
	ld hl,01532h		;0c3a	21 32 15 	! 2 . 
	ld a,(0c023h)		;0c3d	3a 23 c0 	: # . 
	add a,a			;0c40	87 	. 
	ld e,a			;0c41	5f 	_ 
	ld d,000h		;0c42	16 00 	. . 
	add hl,de			;0c44	19 	. 
	ld a,(hl)			;0c45	7e 	~ 
	inc hl			;0c46	23 	# 
	ld h,(hl)			;0c47	66 	f 
	ld l,a			;0c48	6f 	o 
	ld (0c223h),hl		;0c49	22 23 c2 	" # . 
	ld a,001h		;0c4c	3e 01 	> . 
	ld (0c220h),a		;0c4e	32 20 c2 	2   . 
	ld a,(0c023h)		;0c51	3a 23 c0 	: # . 
	ld hl,00ccdh		;0c54	21 cd 0c 	! . . 
	rst 10h			;0c57	d7 	. 
	ld (0c085h),hl		;0c58	22 85 c0 	" . . 
	ld a,(0c023h)		;0c5b	3a 23 c0 	: # . 
	ld hl,l0d10h+1		;0c5e	21 11 0d 	! . . 
	rst 10h			;0c61	d7 	. 
	ld (0c089h),hl		;0c62	22 89 c0 	" . . 
	ld a,(0c023h)		;0c65	3a 23 c0 	: # . 
	ld c,a			;0c68	4f 	O 
	ld b,000h		;0c69	06 00 	. . 
	ld hl,l0df4h		;0c6b	21 f4 0d 	! . . 
	add hl,bc			;0c6e	09 	. 
	ld a,(hl)			;0c6f	7e 	~ 
	ld (0c07ch),a		;0c70	32 7c c0 	2 | . 
	ld a,087h		;0c73	3e 87 	> . 
	ld (0ffffh),a		;0c75	32 ff ff 	2 . . 
	ld hl,0afc9h		;0c78	21 c9 af 	! . . 
	ld de,06400h		;0c7b	11 00 64 	. . d 
	ld bc,000e0h		;0c7e	01 e0 00 	. . . 
	call sub_0131h		;0c81	cd 31 01 	. 1 . 
	ld hl,0afc9h		;0c84	21 c9 af 	! . . 
	ld bc,000e0h		;0c87	01 e0 00 	. . . 
	call l0292h		;0c8a	cd 92 02 	. . . 
	ld a,085h		;0c8d	3e 85 	> . 
	ld (0ffffh),a		;0c8f	32 ff ff 	2 . . 
	ld hl,0b191h		;0c92	21 91 b1 	! . . 
	ld de,065c0h		;0c95	11 c0 65 	. . e 
l0c98h:
	ld bc,00080h		;0c98	01 80 00 	. . . 
	call sub_0131h		;0c9b	cd 31 01 	. 1 . 
	ld hl,0b0b1h		;0c9e	21 b1 b0 	! . . 
	ld de,06640h		;0ca1	11 40 66 	. @ f 
	ld bc,00060h		;0ca4	01 60 00 	. ` . 
	call sub_0131h		;0ca7	cd 31 01 	. 1 . 
	ld hl,0b0f1h		;0caa	21 f1 b0 	! . . 
	ld bc,l0020h		;0cad	01 20 00 	.   . 
l0cb0h:
	call l0292h		;0cb0	cd 92 02 	. . . 
	ld a,082h		;0cb3	3e 82 	> . 
	ld (0ffffh),a		;0cb5	32 ff ff 	2 . . 
	ld a,(0c023h)		;0cb8	3a 23 c0 	: # . 
	ld c,a			;0cbb	4f 	O 
l0cbch:
	ld b,000h		;0cbc	06 00 	. . 
	ld hl,00d89h		;0cbe	21 89 0d 	! . . 
l0cc1h:
	add hl,bc			;0cc1	09 	. 
	ld a,(hl)			;0cc2	7e 	~ 
	ld (0c110h),a		;0cc3	32 10 c1 	2 . . 
l0cc6h:
	ld hl,0c01fh		;0cc6	21 1f c0 	! . . 
	set 7,(hl)		;0cc9	cb fe 	. . 
l0ccbh:
	ei			;0ccb	fb 	. 
	jp sub_02c3h		;0ccc	c3 c3 02 	. . . 
	dec hl			;0ccf	2b 	+ 
l0cd0h:
	ld h,h			;0cd0	64 	d 
	dec hl			;0cd1	2b 	+ 
	ld h,h			;0cd2	64 	d 
	ld b,h			;0cd3	44 	D 
	ld h,l			;0cd4	65 	e 
	dec hl			;0cd5	2b 	+ 
	ld h,h			;0cd6	64 	d 
	ld (bc),a			;0cd7	02 	. 
	ld h,l			;0cd8	65 	e 
	dec hl			;0cd9	2b 	+ 
	ld h,h			;0cda	64 	d 
	dec hl			;0cdb	2b 	+ 
	ld h,h			;0cdc	64 	d 
	dec hl			;0cdd	2b 	+ 
	ld h,h			;0cde	64 	d 
	ld (bc),a			;0cdf	02 	. 
	ld h,l			;0ce0	65 	e 
	dec hl			;0ce1	2b 	+ 
	ld h,h			;0ce2	64 	d 
	ld b,(hl)			;0ce3	46 	F 
	ld h,h			;0ce4	64 	d 
	dec hl			;0ce5	2b 	+ 
	ld h,h			;0ce6	64 	d 
	dec hl			;0ce7	2b 	+ 
	ld h,h			;0ce8	64 	d 
	dec hl			;0ce9	2b 	+ 
	ld h,h			;0cea	64 	d 
	dec hl			;0ceb	2b 	+ 
	ld h,h			;0cec	64 	d 
	ld b,(hl)			;0ced	46 	F 
	ld h,h			;0cee	64 	d 
l0cefh:
	dec hl			;0cef	2b 	+ 
	ld h,h			;0cf0	64 	d 
	ld c,a			;0cf1	4f 	O 
	djnz l0c98h		;0cf2	10 a4 	. . 
l0cf4h:
	djnz l0d45h		;0cf4	10 4f 	. O 
	djnz $-87		;0cf6	10 a7 	. . 
	djnz l0d49h		;0cf8	10 4f 	. O 
	djnz $-84		;0cfa	10 aa 	. . 
l0cfch:
	djnz $-81		;0cfc	10 ad 	. . 
l0cfeh:
	djnz l0cb0h		;0cfe	10 b0 	. . 
l0d00h:
	djnz l0d51h		;0d00	10 4f 	. O 
l0d02h:
	djnz $-75		;0d02	10 b3 	. . 
l0d04h:
	djnz l0cbch		;0d04	10 b6 	. . 
l0d06h:
	djnz l0cc1h		;0d06	10 b9 	. . 
l0d08h:
	djnz l0cc6h		;0d08	10 bc 	. . 
	djnz l0ccbh		;0d0a	10 bf 	. . 
l0d0ch:
	djnz l0cd0h		;0d0c	10 c2 	. . 
l0d0eh:
	djnz l0d5fh		;0d0e	10 4f 	. O 
l0d10h:
	djnz $+81		;0d10	10 4f 	. O 
l0d12h:
	djnz l0d21h		;0d12	10 0d 	. . 
	ld l,a			;0d14	6f 	o 
	dec c			;0d15	0d 	. 
	ld l,a			;0d16	6f 	o 
	dec c			;0d17	0d 	. 
	ld l,a			;0d18	6f 	o 
	dec c			;0d19	0d 	. 
	ld l,a			;0d1a	6f 	o 
	dec c			;0d1b	0d 	. 
	ld l,a			;0d1c	6f 	o 
	dec c			;0d1d	0d 	. 
	ld l,a			;0d1e	6f 	o 
l0d1fh:
	dec c			;0d1f	0d 	. 
	ld l,a			;0d20	6f 	o 
l0d21h:
	dec c			;0d21	0d 	. 
	ld l,a			;0d22	6f 	o 
	dec c			;0d23	0d 	. 
	ld l,a			;0d24	6f 	o 
	dec c			;0d25	0d 	. 
	ld l,a			;0d26	6f 	o 
	ld c,c			;0d27	49 	I 
	ld (hl),b			;0d28	70 	p 
	dec c			;0d29	0d 	. 
	ld l,a			;0d2a	6f 	o 
	dec c			;0d2b	0d 	. 
	ld l,a			;0d2c	6f 	o 
	dec c			;0d2d	0d 	. 
l0d2eh:
	ld l,a			;0d2e	6f 	o 
	dec c			;0d2f	0d 	. 
	ld l,a			;0d30	6f 	o 
	ld c,c			;0d31	49 	I 
l0d32h:
	ld (hl),b			;0d32	70 	p 
	dec c			;0d33	0d 	. 
	ld l,a			;0d34	6f 	o 
	nop			;0d35	00 	. 
	nop			;0d36	00 	. 
	nop			;0d37	00 	. 
	ld h,b			;0d38	60 	` 
	ld d,h			;0d39	54 	T 
	call z,05c72h		;0d3a	cc 72 5c 	. r \ 
	call z,l0000h		;0d3d	cc 00 00 	. . . 
	nop			;0d40	00 	. 
	ld b,d			;0d41	42 	B 
	ld b,b			;0d42	40 	@ 
	ret			;0d43	c9 	. 
	sub b			;0d44	90 	. 
l0d45h:
	jr nz,$-50		;0d45	20 cc 	  . 
	nop			;0d47	00 	. 
	nop			;0d48	00 	. 
l0d49h:
	nop			;0d49	00 	. 
	jr nc,l0d54h		;0d4a	30 08 	0 . 
	call z,l0000h		;0d4c	cc 00 00 	. . . 
	nop			;0d4f	00 	. 
	ld (hl),b			;0d50	70 	p 
l0d51h:
	jr l0d1fh		;0d51	18 cc 	. . 
	nop			;0d53	00 	. 
l0d54h:
	nop			;0d54	00 	. 
	nop			;0d55	00 	. 
	ld d,b			;0d56	50 	P 
	ret nc			;0d57	d0 	. 
	ret			;0d58	c9 	. 
	nop			;0d59	00 	. 
	nop			;0d5a	00 	. 
	nop			;0d5b	00 	. 
	nop			;0d5c	00 	. 
	nop			;0d5d	00 	. 
	nop			;0d5e	00 	. 
l0d5fh:
	ld d,b			;0d5f	50 	P 
	djnz l0d2eh		;0d60	10 cc 	. . 
	nop			;0d62	00 	. 
	nop			;0d63	00 	. 
	nop			;0d64	00 	. 
	nop			;0d65	00 	. 
l0d66h:
	nop			;0d66	00 	. 
	nop			;0d67	00 	. 
	jr nz,l0dc2h		;0d68	20 58 	  X 
	jr nz,l0cf4h		;0d6a	20 88 	  . 
	ld b,b			;0d6c	40 	@ 
	jr nz,l0d8ah		;0d6d	20 1b 	  . 
	sub b			;0d6f	90 	. 
	jr nz,l0de2h		;0d70	20 70 	  p 
	jr nz,l0cfch		;0d72	20 88 	  . 
	jr nz,l0cfeh		;0d74	20 88 	  . 
	jr nz,l0d00h		;0d76	20 88 	  . 
	jr nz,l0d02h		;0d78	20 88 	  . 
	jr nz,l0d04h		;0d7a	20 88 	  . 
	jr nz,l0d06h		;0d7c	20 88 	  . 
	jr nz,l0d08h		;0d7e	20 88 	  . 
	ret pe			;0d80	e8 	. 
	ld (hl),b			;0d81	70 	p 
	jr nz,l0d0ch		;0d82	20 88 	  . 
	jr nz,l0d0eh		;0d84	20 88 	  . 
	jr nz,l0d10h		;0d86	20 88 	  . 
	djnz l0d12h		;0d88	10 88 	. . 
l0d8ah:
	add a,d			;0d8a	82 	. 
	add a,d			;0d8b	82 	. 
	add a,e			;0d8c	83 	. 
	add a,d			;0d8d	82 	. 
	adc a,b			;0d8e	88 	. 
	add a,d			;0d8f	82 	. 
	add a,d			;0d90	82 	. 
	add a,d			;0d91	82 	. 
	add a,e			;0d92	83 	. 
	add a,d			;0d93	82 	. 
	add a,h			;0d94	84 	. 
	add a,d			;0d95	82 	. 
	adc a,b			;0d96	88 	. 
	add a,d			;0d97	82 	. 
	add a,d			;0d98	82 	. 
	add a,h			;0d99	84 	. 
	add a,d			;0d9a	82 	. 
	add a,d			;0d9b	82 	. 
	ld c,l			;0d9c	4d 	M 
	ld c,(hl)			;0d9d	4e 	N 
	ld c,a			;0d9e	4f 	O 
	ld c,l			;0d9f	4d 	M 
	ld c,(hl)			;0da0	4e 	N 
	ld c,a			;0da1	4f 	O 
	ld c,l			;0da2	4d 	M 
	ld c,(hl)			;0da3	4e 	N 
	ld c,a			;0da4	4f 	O 
	ld c,l			;0da5	4d 	M 
	ld c,(hl)			;0da6	4e 	N 
	ld c,a			;0da7	4f 	O 
	ld c,l			;0da8	4d 	M 
	ld c,(hl)			;0da9	4e 	N 
	ld c,a			;0daa	4f 	O 
	ld c,l			;0dab	4d 	M 
	ld c,(hl)			;0dac	4e 	N 
	ld c,a			;0dad	4f 	O 
	ld c,l			;0dae	4d 	M 
	ld c,(hl)			;0daf	4e 	N 
	ld c,a			;0db0	4f 	O 
	ld c,l			;0db1	4d 	M 
	ld c,(hl)			;0db2	4e 	N 
	ld c,a			;0db3	4f 	O 
	ld c,l			;0db4	4d 	M 
	ld c,(hl)			;0db5	4e 	N 
	ld c,a			;0db6	4f 	O 
	ld c,l			;0db7	4d 	M 
	ld c,(hl)			;0db8	4e 	N 
	ld c,a			;0db9	4f 	O 
	ld c,l			;0dba	4d 	M 
	ld c,(hl)			;0dbb	4e 	N 
	ld c,a			;0dbc	4f 	O 
	ld c,l			;0dbd	4d 	M 
	ld c,(hl)			;0dbe	4e 	N 
	ld c,a			;0dbf	4f 	O 
	ld c,l			;0dc0	4d 	M 
	ld c,(hl)			;0dc1	4e 	N 
l0dc2h:
	ld c,a			;0dc2	4f 	O 
	ld c,l			;0dc3	4d 	M 
	ld c,(hl)			;0dc4	4e 	N 
	ld c,a			;0dc5	4f 	O 
	ld c,l			;0dc6	4d 	M 
	ld c,(hl)			;0dc7	4e 	N 
	ld c,a			;0dc8	4f 	O 
	ld c,l			;0dc9	4d 	M 
	ld c,(hl)			;0dca	4e 	N 
	ld c,a			;0dcb	4f 	O 
	ld c,l			;0dcc	4d 	M 
	ld c,(hl)			;0dcd	4e 	N 
	ld c,a			;0dce	4f 	O 
	ld c,l			;0dcf	4d 	M 
	ld c,(hl)			;0dd0	4e 	N 
	ld c,a			;0dd1	4f 	O 
	ld c,l			;0dd2	4d 	M 
	ld c,(hl)			;0dd3	4e 	N 
	ld c,a			;0dd4	4f 	O 
	ld c,l			;0dd5	4d 	M 
	ld c,(hl)			;0dd6	4e 	N 
	ld c,a			;0dd7	4f 	O 
	ld c,l			;0dd8	4d 	M 
	ld c,(hl)			;0dd9	4e 	N 
	ld c,a			;0dda	4f 	O 
	ld c,l			;0ddb	4d 	M 
	ld c,(hl)			;0ddc	4e 	N 
	ld c,a			;0ddd	4f 	O 
	ld c,l			;0dde	4d 	M 
	ld c,(hl)			;0ddf	4e 	N 
	ld c,a			;0de0	4f 	O 
	ld c,l			;0de1	4d 	M 
l0de2h:
	ld c,(hl)			;0de2	4e 	N 
l0de3h:
	ld c,a			;0de3	4f 	O 
	nop			;0de4	00 	. 
	nop			;0de5	00 	. 
	nop			;0de6	00 	. 
	nop			;0de7	00 	. 
	add hl,bc			;0de8	09 	. 
	nop			;0de9	00 	. 
	nop			;0dea	00 	. 
	nop			;0deb	00 	. 
	ld bc,l0000h		;0dec	01 00 00 	. . . 
	nop			;0def	00 	. 
	add hl,bc			;0df0	09 	. 
	nop			;0df1	00 	. 
	nop			;0df2	00 	. 
	nop			;0df3	00 	. 
l0df4h:
	nop			;0df4	00 	. 
	ld bc,l0301h+1		;0df5	01 02 03 	. . . 
	inc b			;0df8	04 	. 
	dec b			;0df9	05 	. 
	ld b,007h		;0dfa	06 07 	. . 
	ex af,af'			;0dfc	08 	. 
	ld (bc),a			;0dfd	02 	. 
	ld a,(bc)			;0dfe	0a 	. 
	dec bc			;0dff	0b 	. 
	inc c			;0e00	0c 	. 
	dec c			;0e01	0d 	. 
	ld c,00fh		;0e02	0e 0f 	. . 
	djnz l0e17h		;0e04	10 11 	. . 
sub_0e06h:
	push de			;0e06	d5 	. 
	call sub_0e10h		;0e07	cd 10 0e 	. . . 
	inc hl			;0e0a	23 	# 
	pop de			;0e0b	d1 	. 
	inc de			;0e0c	13 	. 
	jp sub_0e10h		;0e0d	c3 10 0e 	. . . 
sub_0e10h:
	ld a,(hl)			;0e10	7e 	~ 
	or a			;0e11	b7 	. 
	ret z			;0e12	c8 	. 
	bit 7,a		;0e13	cb 7f 	.  
	jr nz,l0e23h		;0e15	20 0c 	  . 
l0e17h:
	ld b,a			;0e17	47 	G 
	inc hl			;0e18	23 	# 
	ld a,(hl)			;0e19	7e 	~ 
l0e1ah:
	ld (de),a			;0e1a	12 	. 
	inc de			;0e1b	13 	. 
	inc de			;0e1c	13 	. 
	djnz l0e1ah		;0e1d	10 fb 	. . 
	inc hl			;0e1f	23 	# 
	jp sub_0e10h		;0e20	c3 10 0e 	. . . 
l0e23h:
	and 07fh		;0e23	e6 7f 	.  
	ld b,a			;0e25	47 	G 
l0e26h:
	inc hl			;0e26	23 	# 
	ld a,(hl)			;0e27	7e 	~ 
	ld (de),a			;0e28	12 	. 
	inc de			;0e29	13 	. 
	inc de			;0e2a	13 	. 
	djnz l0e26h		;0e2b	10 f9 	. . 
	inc hl			;0e2d	23 	# 
	jp sub_0e10h		;0e2e	c3 10 0e 	. . . 
sub_0e31h:
	ld hl,084a2h		;0e31	21 a2 84 	! . . 
	ld de,044a0h		;0e34	11 a0 44 	. . D 
	call sub_0260h		;0e37	cd 60 02 	. ` . 
	ld a,(0c023h)		;0e3a	3a 23 c0 	: # . 
	ld hl,00e41h		;0e3d	21 41 0e 	! A . 
	jp l0020h		;0e40	c3 20 00 	.   . 
	ld h,l			;0e43	65 	e 
	ld c,0bfh		;0e44	0e bf 	. . 
	rrca			;0e46	0f 	. 
	rst 20h			;0e47	e7 	. 
	ld c,01ah		;0e48	0e 1a 	. . 
	rrca			;0e4a	0f 	. 
	ld e,a			;0e4b	5f 	_ 
	rrca			;0e4c	0f 	. 
	ld (0740fh),a		;0e4d	32 0f 74 	2 . t 
	rrca			;0e50	0f 	. 
	adc a,a			;0e51	8f 	. 
	ld c,08ch		;0e52	0e 8c 	. . 
	rrca			;0e54	0f 	. 
	add a,00eh		;0e55	c6 0e 	. . 
	ld a,(de)			;0e57	1a 	. 
	rrca			;0e58	0f 	. 
	ld (0bf0fh),a		;0e59	32 0f bf 	2 . . 
	rrca			;0e5c	0f 	. 
	ld e,010h		;0e5d	1e 10 	. . 
	add a,00eh		;0e5f	c6 0e 	. . 
	and l			;0e61	a5 	. 
	ld c,0e8h		;0e62	0e e8 	. . 
	rrca			;0e64	0f 	. 
sub_0e65h:
	ld de,046a0h		;0e65	11 a0 46 	. . F 
	ld bc,00080h		;0e68	01 80 00 	. . . 
	ld l,000h		;0e6b	2e 00 	. . 
	call sub_0156h		;0e6d	cd 56 01 	. V . 
	ld a,(0c023h)		;0e70	3a 23 c0 	: # . 
	ld hl,0847eh		;0e73	21 7e 84 	! ~ . 
	rst 10h			;0e76	d7 	. 
	ld de,04720h		;0e77	11 20 47 	.   G 
	call sub_0260h		;0e7a	cd 60 02 	. ` . 
	ld hl,0b7f6h		;0e7d	21 f6 b7 	! . . 
	ld de,04e60h		;0e80	11 60 4e 	. ` N 
	ld b,0a0h		;0e83	06 a0 	. . 
	rst 30h			;0e85	f7 	. 
	ld hl,08583h		;0e86	21 83 85 	! . . 
	ld de,04f00h		;0e89	11 00 4f 	. . O 
	jp sub_0260h		;0e8c	c3 60 02 	. ` . 
	ld hl,089e1h		;0e8f	21 e1 89 	! . . 
	ld de,04ec0h		;0e92	11 c0 4e 	. . N 
	call sub_0260h		;0e95	cd 60 02 	. ` . 
	ld a,(0c023h)		;0e98	3a 23 c0 	: # . 
	ld hl,0847eh		;0e9b	21 7e 84 	! ~ . 
	rst 10h			;0e9e	d7 	. 
	ld de,046a0h		;0e9f	11 a0 46 	. . F 
	jp sub_0260h		;0ea2	c3 60 02 	. ` . 
	ld de,046a0h		;0ea5	11 a0 46 	. . F 
	ld bc,00080h		;0ea8	01 80 00 	. . . 
	ld l,000h		;0eab	2e 00 	. . 
	call sub_0156h		;0ead	cd 56 01 	. V . 
	ld a,(0c023h)		;0eb0	3a 23 c0 	: # . 
	ld hl,0847eh		;0eb3	21 7e 84 	! ~ . 
	rst 10h			;0eb6	d7 	. 
	ld de,04720h		;0eb7	11 20 47 	.   G 
	call sub_0260h		;0eba	cd 60 02 	. ` . 
	ld hl,08583h		;0ebd	21 83 85 	! . . 
	ld de,04f00h		;0ec0	11 00 4f 	. . O 
	jp sub_0260h		;0ec3	c3 60 02 	. ` . 
	ld de,046a0h		;0ec6	11 a0 46 	. . F 
	ld bc,00080h		;0ec9	01 80 00 	. . . 
	ld l,000h		;0ecc	2e 00 	. . 
	call sub_0156h		;0ece	cd 56 01 	. V . 
	ld a,(0c023h)		;0ed1	3a 23 c0 	: # . 
	ld hl,0847eh		;0ed4	21 7e 84 	! ~ . 
	rst 10h			;0ed7	d7 	. 
	ld de,04720h		;0ed8	11 20 47 	.   G 
	call sub_0260h		;0edb	cd 60 02 	. ` . 
	ld hl,089e1h		;0ede	21 e1 89 	! . . 
	ld de,04ec0h		;0ee1	11 c0 4e 	. . N 
	jp sub_0260h		;0ee4	c3 60 02 	. ` . 
	ld de,046a0h		;0ee7	11 a0 46 	. . F 
	ld bc,00200h		;0eea	01 00 02 	. . . 
	ld l,000h		;0eed	2e 00 	. . 
	call sub_0156h		;0eef	cd 56 01 	. V . 
	ld a,(0c023h)		;0ef2	3a 23 c0 	: # . 
	ld hl,0847eh		;0ef5	21 7e 84 	! ~ . 
	rst 10h			;0ef8	d7 	. 
	ld de,048a0h		;0ef9	11 a0 48 	. . H 
	call sub_0260h		;0efc	cd 60 02 	. ` . 
	ld hl,0b896h		;0eff	21 96 b8 	! . . 
	ld de,04d00h		;0f02	11 00 4d 	. . M 
	call sub_0260h		;0f05	cd 60 02 	. ` . 
	ld hl,0b7f6h		;0f08	21 f6 b7 	! . . 
	ld de,04e60h		;0f0b	11 60 4e 	. ` N 
	ld b,0a0h		;0f0e	06 a0 	. . 
	rst 30h			;0f10	f7 	. 
	ld hl,08583h		;0f11	21 83 85 	! . . 
	ld de,04f00h		;0f14	11 00 4f 	. . O 
	jp sub_0260h		;0f17	c3 60 02 	. ` . 
	ld de,046a0h		;0f1a	11 a0 46 	. . F 
	ld bc,00080h		;0f1d	01 80 00 	. . . 
	ld l,000h		;0f20	2e 00 	. . 
	call sub_0156h		;0f22	cd 56 01 	. V . 
l0f25h:
	ld a,(0c023h)		;0f25	3a 23 c0 	: # . 
	ld hl,0847eh		;0f28	21 7e 84 	! ~ . 
	rst 10h			;0f2b	d7 	. 
	ld de,04720h		;0f2c	11 20 47 	.   G 
	jp sub_0260h		;0f2f	c3 60 02 	. ` . 
	ld de,046a0h		;0f32	11 a0 46 	. . F 
	ld bc,00080h		;0f35	01 80 00 	. . . 
	ld l,000h		;0f38	2e 00 	. . 
	call sub_0156h		;0f3a	cd 56 01 	. V . 
	ld a,002h		;0f3d	3e 02 	> . 
	ld hl,0847eh		;0f3f	21 7e 84 	! ~ . 
	rst 10h			;0f42	d7 	. 
	ld de,04720h		;0f43	11 20 47 	.   G 
	call sub_0260h		;0f46	cd 60 02 	. ` . 
	ld a,(0c023h)		;0f49	3a 23 c0 	: # . 
	ld hl,0847eh		;0f4c	21 7e 84 	! ~ . 
	rst 10h			;0f4f	d7 	. 
	ld de,04920h		;0f50	11 20 49 	.   I 
	call sub_0260h		;0f53	cd 60 02 	. ` . 
	ld hl,089e1h		;0f56	21 e1 89 	! . . 
	ld de,04ec0h		;0f59	11 c0 4e 	. . N 
	jp sub_0260h		;0f5c	c3 60 02 	. ` . 
	call sub_0e65h		;0f5f	cd 65 0e 	. e . 
	ld hl,0b896h		;0f62	21 96 b8 	! . . 
	ld de,04d00h		;0f65	11 00 4d 	. . M 
	call sub_0260h		;0f68	cd 60 02 	. ` . 
	ld hl,08e65h		;0f6b	21 65 8e 	! e . 
	ld de,047a0h		;0f6e	11 a0 47 	. . G 
	jp sub_0260h		;0f71	c3 60 02 	. ` . 
	ld de,046a0h		;0f74	11 a0 46 	. . F 
	ld bc,00080h		;0f77	01 80 00 	. . . 
	ld l,00ah		;0f7a	2e 0a 	. . 
	call sub_0156h		;0f7c	cd 56 01 	. V . 
	ld a,(0c023h)		;0f7f	3a 23 c0 	: # . 
	ld hl,0847eh		;0f82	21 7e 84 	! ~ . 
	rst 10h			;0f85	d7 	. 
	ld de,04720h		;0f86	11 20 47 	.   G 
	jp sub_0260h		;0f89	c3 60 02 	. ` . 
	ld de,046a0h		;0f8c	11 a0 46 	. . F 
	ld bc,00080h		;0f8f	01 80 00 	. . . 
	ld l,000h		;0f92	2e 00 	. . 
	call sub_0156h		;0f94	cd 56 01 	. V . 
	ld a,(0c023h)		;0f97	3a 23 c0 	: # . 
	ld hl,0847eh		;0f9a	21 7e 84 	! ~ . 
	rst 10h			;0f9d	d7 	. 
	ld de,04720h		;0f9e	11 20 47 	.   G 
	call sub_0260h		;0fa1	cd 60 02 	. ` . 
	ld hl,0b896h		;0fa4	21 96 b8 	! . . 
	ld de,04d00h		;0fa7	11 00 4d 	. . M 
	call sub_0260h		;0faa	cd 60 02 	. ` . 
	ld hl,08583h		;0fad	21 83 85 	! . . 
	ld de,04f00h		;0fb0	11 00 4f 	. . O 
	call sub_0260h		;0fb3	cd 60 02 	. ` . 
	ld hl,08e65h		;0fb6	21 65 8e 	! e . 
	ld de,047a0h		;0fb9	11 a0 47 	. . G 
	jp sub_0260h		;0fbc	c3 60 02 	. ` . 
	ld de,046a0h		;0fbf	11 a0 46 	. . F 
	ld bc,00080h		;0fc2	01 80 00 	. . . 
	ld l,000h		;0fc5	2e 00 	. . 
	call sub_0156h		;0fc7	cd 56 01 	. V . 
	ld a,002h		;0fca	3e 02 	> . 
	ld hl,0847eh		;0fcc	21 7e 84 	! ~ . 
	rst 10h			;0fcf	d7 	. 
	ld de,04720h		;0fd0	11 20 47 	.   G 
	call sub_0260h		;0fd3	cd 60 02 	. ` . 
	ld hl,089e1h		;0fd6	21 e1 89 	! . . 
	ld de,04ec0h		;0fd9	11 c0 4e 	. . N 
	call sub_0260h		;0fdc	cd 60 02 	. ` . 
	ld hl,08e65h		;0fdf	21 65 8e 	! e . 
	ld de,047a0h		;0fe2	11 a0 47 	. . G 
	jp sub_0260h		;0fe5	c3 60 02 	. ` . 
	ld de,046a0h		;0fe8	11 a0 46 	. . F 
	ld bc,00200h		;0feb	01 00 02 	. . . 
	ld l,000h		;0fee	2e 00 	. . 
	call sub_0156h		;0ff0	cd 56 01 	. V . 
	ld a,003h		;0ff3	3e 03 	> . 
	ld hl,0847eh		;0ff5	21 7e 84 	! ~ . 
	rst 10h			;0ff8	d7 	. 
	ld de,048a0h		;0ff9	11 a0 48 	. . H 
	call sub_0260h		;0ffc	cd 60 02 	. ` . 
	ld a,(0c023h)		;0fff	3a 23 c0 	: # . 
	ld hl,0847eh		;1002	21 7e 84 	! ~ . 
	rst 10h			;1005	d7 	. 
	ld de,04aa0h		;1006	11 a0 4a 	. . J 
	call sub_0260h		;1009	cd 60 02 	. ` . 
	ld hl,0b75ch		;100c	21 5c b7 	! \ . 
	ld de,04720h		;100f	11 20 47 	.   G 
	call sub_0260h		;1012	cd 60 02 	. ` . 
	ld hl,08583h		;1015	21 83 85 	! . . 
l1018h:
	ld de,04f00h		;1018	11 00 4f 	. . O 
	jp sub_0260h		;101b	c3 60 02 	. ` . 
	ld de,046a0h		;101e	11 a0 46 	. . F 
	ld bc,00080h		;1021	01 80 00 	. . . 
	ld l,000h		;1024	2e 00 	. . 
	call sub_0156h		;1026	cd 56 01 	. V . 
	ld a,00bh		;1029	3e 0b 	> . 
	ld hl,0847eh		;102b	21 7e 84 	! ~ . 
	rst 10h			;102e	d7 	. 
	ld de,04720h		;102f	11 20 47 	.   G 
	call sub_0260h		;1032	cd 60 02 	. ` . 
	ld a,(0c023h)		;1035	3a 23 c0 	: # . 
	ld hl,0847eh		;1038	21 7e 84 	! ~ . 
	rst 10h			;103b	d7 	. 
	ld de,04da0h		;103c	11 a0 4d 	. . M 
	jp sub_0260h		;103f	c3 60 02 	. ` . 
sub_1042h:
	ld a,(0c01fh)		;1042	3a 1f c0 	: . . 
	cp 089h		;1045	fe 89 	. . 
	ret c			;1047	d8 	. 
	cp 08bh		;1048	fe 8b 	. . 
	ret z			;104a	c8 	. 
	ld hl,(0c00eh)		;104b	2a 0e c0 	* . . 
	jp (hl)			;104e	e9 	. 
	ld a,(0c092h)		;104f	3a 92 c0 	: . . 
	or a			;1052	b7 	. 
	jp nz,l1076h		;1053	c2 76 10 	. v . 
	ld hl,0c100h		;1056	21 00 c1 	! . . 
	dec (hl)			;1059	35 	5 
	jp p,l1076h		;105a	f2 76 10 	. v . 
	ld (hl),008h		;105d	36 08 	6 . 
	inc hl			;105f	23 	# 
	ld a,(hl)			;1060	7e 	~ 
	cp 004h		;1061	fe 04 	. . 
	jr c,l1067h		;1063	38 02 	8 . 
	xor a			;1065	af 	. 
	ld (hl),a			;1066	77 	w 
l1067h:
	inc (hl)			;1067	34 	4 
	ld e,a			;1068	5f 	_ 
	ld d,000h		;1069	16 00 	. . 
	ld hl,l109ch		;106b	21 9c 10 	! . . 
	add hl,de			;106e	19 	. 
	ld de,0c00bh		;106f	11 0b c0 	. . . 
	ld a,(hl)			;1072	7e 	~ 
	call l012bh		;1073	cd 2b 01 	. + . 
l1076h:
	ld a,(0c054h)		;1076	3a 54 c0 	: T . 
	or a			;1079	b7 	. 
	ret z			;107a	c8 	. 
	cp 003h		;107b	fe 03 	. . 
	ret nc			;107d	d0 	. 
	ld hl,0c05dh		;107e	21 5d c0 	! ] . 
	dec (hl)			;1081	35 	5 
	ret p			;1082	f0 	. 
	ld (hl),004h		;1083	36 04 	6 . 
	inc hl			;1085	23 	# 
	ld a,(hl)			;1086	7e 	~ 
	cp 004h		;1087	fe 04 	. . 
	jr c,l108dh		;1089	38 02 	8 . 
	xor a			;108b	af 	. 
	ld (hl),a			;108c	77 	w 
l108dh:
	inc (hl)			;108d	34 	4 
	ld e,a			;108e	5f 	_ 
	ld d,000h		;108f	16 00 	. . 
	ld hl,l10a0h		;1091	21 a0 10 	! . . 
	add hl,de			;1094	19 	. 
	ld de,0c014h		;1095	11 14 c0 	. . . 
	ld a,(hl)			;1098	7e 	~ 
	jp l012bh		;1099	c3 2b 01 	. + . 
l109ch:
	rst 38h			;109c	ff 	. 
	defb 0fdh,0fbh,0fdh	;illegal sequence		;109d	fd fb fd 	. . . 
l10a0h:
	inc sp			;10a0	33 	3 
	ccf			;10a1	3f 	? 
	inc sp			;10a2	33 	3 
	ccf			;10a3	3f 	? 
	jp l1076h		;10a4	c3 76 10 	. v . 
	jp l1076h		;10a7	c3 76 10 	. v . 
	jp l1076h		;10aa	c3 76 10 	. v . 
	jp l1076h		;10ad	c3 76 10 	. v . 
	jp l1076h		;10b0	c3 76 10 	. v . 
	jp l1076h		;10b3	c3 76 10 	. v . 
	jp l1076h		;10b6	c3 76 10 	. v . 
	jp l1076h		;10b9	c3 76 10 	. v . 
	jp l1076h		;10bc	c3 76 10 	. v . 
	jp l1076h		;10bf	c3 76 10 	. v . 
	jp l1076h		;10c2	c3 76 10 	. v . 
sub_10c5h:
	ld a,087h		;10c5	3e 87 	> . 
	ld (0ffffh),a		;10c7	32 ff ff 	2 . . 
	ld a,(0c023h)		;10ca	3a 23 c0 	: # . 
	ld hl,010d7h		;10cd	21 d7 10 	! . . 
	rst 10h			;10d0	d7 	. 
	ld de,0c000h		;10d1	11 00 c0 	. . . 
	ld b,020h		;10d4	06 20 	.   
	jp l0030h		;10d6	c3 30 00 	. 0 . 
	sbc a,(hl)			;10d9	9e 	. 
	cp h			;10da	bc 	. 
	ld e,0beh		;10db	1e be 	. . 
	sbc a,0bch		;10dd	de bc 	. . 
	cp 0bch		;10df	fe bc 	. . 
	ld e,0bdh		;10e1	1e bd 	. . 
	ld a,0bdh		;10e3	3e bd 	> . 
	ld e,(hl)			;10e5	5e 	^ 
	cp l			;10e6	bd 	. 
	ld a,(hl)			;10e7	7e 	~ 
	cp l			;10e8	bd 	. 
	cp (hl)			;10e9	be 	. 
	cp l			;10ea	bd 	. 
	sbc a,0bdh		;10eb	de bd 	. . 
	sbc a,(hl)			;10ed	9e 	. 
	cp l			;10ee	bd 	. 
	cp 0bdh		;10ef	fe bd 	. . 
	ld e,0beh		;10f1	1e be 	. . 
	ld a,0beh		;10f3	3e be 	> . 
	cp (hl)			;10f5	be 	. 
	cp h			;10f6	bc 	. 
	ld e,(hl)			;10f7	5e 	^ 
	cp (hl)			;10f8	be 	. 
	ld a,(hl)			;10f9	7e 	~ 
	cp (hl)			;10fa	be 	. 
sub_10fbh:
	ld a,087h		;10fb	3e 87 	> . 
	ld (0ffffh),a		;10fd	32 ff ff 	2 . . 
	ld a,(0c023h)		;1100	3a 23 c0 	: # . 
	ld hl,01107h		;1103	21 07 11 	! . . 
	jp l0020h		;1106	c3 20 00 	.   . 
	dec hl			;1109	2b 	+ 
	ld de,l1146h		;110a	11 46 11 	. F . 
	ld h,h			;110d	64 	d 
	ld de,l117ch		;110e	11 7c 11 	. | . 
	sbc a,d			;1111	9a 	. 
	ld de,l11b2h		;1112	11 b2 11 	. . . 
	call 0e811h		;1115	cd 11 e8 	. . . 
	ld de,l1200h		;1118	11 00 12 	. . . 
	dec de			;111b	1b 	. 
	ld (de),a			;111c	12 	. 
	ld (hl),012h		;111d	36 12 	6 . 
	ld h,b			;111f	60 	` 
	ld (de),a			;1120	12 	. 
	ld (hl),l			;1121	75 	u 
	ld (de),a			;1122	12 	. 
	add a,a			;1123	87 	. 
	ld (de),a			;1124	12 	. 
	sub (hl)			;1125	96 	. 
	ld (de),a			;1126	12 	. 
	or h			;1127	b4 	. 
	ld (de),a			;1128	12 	. 
	ret c			;1129	d8 	. 
	ld (de),a			;112a	12 	. 
	call sub_1479h		;112b	cd 79 14 	. y . 
	call sub_146dh		;112e	cd 6d 14 	. m . 
	call sub_1485h		;1131	cd 85 14 	. . . 
	call sub_12f6h		;1134	cd f6 12 	. . . 
	call sub_1302h		;1137	cd 02 13 	. . . 
	call sub_1317h		;113a	cd 17 13 	. . . 
	call sub_1344h		;113d	cd 44 13 	. D . 
	call sub_1323h		;1140	cd 23 13 	. # . 
	jp l132fh		;1143	c3 2f 13 	. / . 
l1146h:
	call sub_1479h		;1146	cd 79 14 	. y . 
	call sub_146dh		;1149	cd 6d 14 	. m . 
	call sub_1485h		;114c	cd 85 14 	. . . 
	call sub_141ch		;114f	cd 1c 14 	. . . 
	call sub_1428h		;1152	cd 28 14 	. ( . 
	call sub_12f6h		;1155	cd f6 12 	. . . 
	call sub_1359h		;1158	cd 59 13 	. Y . 
	call sub_1365h		;115b	cd 65 13 	. e . 
	call sub_1371h		;115e	cd 71 13 	. q . 
	jp l137dh		;1161	c3 7d 13 	. } . 
	call sub_1479h		;1164	cd 79 14 	. y . 
	call sub_146dh		;1167	cd 6d 14 	. m . 
	call sub_1491h		;116a	cd 91 14 	. . . 
	call sub_12f6h		;116d	cd f6 12 	. . . 
	call l132fh		;1170	cd 2f 13 	. / . 
	call sub_1344h		;1173	cd 44 13 	. D . 
	call sub_1389h		;1176	cd 89 13 	. . . 
	jp l1395h		;1179	c3 95 13 	. . . 
l117ch:
	call sub_1479h		;117c	cd 79 14 	. y . 
	call sub_146dh		;117f	cd 6d 14 	. m . 
	call sub_1491h		;1182	cd 91 14 	. . . 
	call sub_1511h		;1185	cd 11 15 	. . . 
	call sub_12f6h		;1188	cd f6 12 	. . . 
	call sub_1302h		;118b	cd 02 13 	. . . 
	call sub_13a1h		;118e	cd a1 13 	. . . 
	call sub_141ch		;1191	cd 1c 14 	. . . 
	call sub_1428h		;1194	cd 28 14 	. ( . 
	jp l137dh		;1197	c3 7d 13 	. } . 
	call sub_1479h		;119a	cd 79 14 	. y . 
	call sub_146dh		;119d	cd 6d 14 	. m . 
	call sub_1485h		;11a0	cd 85 14 	. . . 
	call sub_12f6h		;11a3	cd f6 12 	. . . 
	call l132fh		;11a6	cd 2f 13 	. / . 
	call sub_1302h		;11a9	cd 02 13 	. . . 
	call sub_1344h		;11ac	cd 44 13 	. D . 
	jp l13adh		;11af	c3 ad 13 	. . . 
l11b2h:
	call sub_1479h		;11b2	cd 79 14 	. y . 
	call sub_146dh		;11b5	cd 6d 14 	. m . 
	call sub_1485h		;11b8	cd 85 14 	. . . 
	call sub_141ch		;11bb	cd 1c 14 	. . . 
l11beh:
	call sub_1428h		;11be	cd 28 14 	. ( . 
	call sub_12f6h		;11c1	cd f6 12 	. . . 
	call sub_13c2h		;11c4	cd c2 13 	. . . 
	call sub_14d9h		;11c7	cd d9 14 	. . . 
	jp l13d7h		;11ca	c3 d7 13 	. . . 
	call sub_1479h		;11cd	cd 79 14 	. y . 
	call sub_146dh		;11d0	cd 6d 14 	. m . 
	call sub_1491h		;11d3	cd 91 14 	. . . 
	call sub_141ch		;11d6	cd 1c 14 	. . . 
	call sub_1428h		;11d9	cd 28 14 	. ( . 
	call sub_14a9h		;11dc	cd a9 14 	. . . 
	call sub_12f6h		;11df	cd f6 12 	. . . 
	call sub_13ech		;11e2	cd ec 13 	. . . 
	jp l1461h		;11e5	c3 61 14 	. a . 
	call sub_1479h		;11e8	cd 79 14 	. y . 
	call sub_146dh		;11eb	cd 6d 14 	. m . 
	call sub_149dh		;11ee	cd 9d 14 	. . . 
	call sub_12f6h		;11f1	cd f6 12 	. . . 
	call sub_1359h		;11f4	cd 59 13 	. Y . 
	call l1461h		;11f7	cd 61 14 	. a . 
	call sub_13f8h		;11fa	cd f8 13 	. . . 
	jp sub_1365h		;11fd	c3 65 13 	. e . 
l1200h:
	call sub_1479h		;1200	cd 79 14 	. y . 
	call sub_146dh		;1203	cd 6d 14 	. m . 
	call sub_1485h		;1206	cd 85 14 	. . . 
	call sub_12f6h		;1209	cd f6 12 	. . . 
	call sub_1302h		;120c	cd 02 13 	. . . 
	call l132fh		;120f	cd 2f 13 	. / . 
	call sub_1317h		;1212	cd 17 13 	. . . 
	call l13adh		;1215	cd ad 13 	. . . 
l1218h:
	jp sub_1323h		;1218	c3 23 13 	. # . 
	call sub_1479h		;121b	cd 79 14 	. y . 
	call sub_146dh		;121e	cd 6d 14 	. m . 
	call sub_1485h		;1221	cd 85 14 	. . . 
	call l137dh		;1224	cd 7d 13 	. } . 
	call sub_12f6h		;1227	cd f6 12 	. . . 
	call sub_1404h		;122a	cd 04 14 	. . . 
	call sub_1410h		;122d	cd 10 14 	. . . 
	call sub_141ch		;1230	cd 1c 14 	. . . 
	jp sub_1428h		;1233	c3 28 14 	. ( . 
	call sub_1479h		;1236	cd 79 14 	. y . 
	call sub_146dh		;1239	cd 6d 14 	. m . 
	call sub_1491h		;123c	cd 91 14 	. . . 
	call sub_12f6h		;123f	cd f6 12 	. . . 
	call sub_14a9h		;1242	cd a9 14 	. . . 
	call sub_141ch		;1245	cd 1c 14 	. . . 
	call sub_14b5h		;1248	cd b5 14 	. . . 
	call sub_143dh		;124b	cd 3d 14 	. = . 
	call sub_1428h		;124e	cd 28 14 	. ( . 
	call sub_13ech		;1251	cd ec 13 	. . . 
	call sub_1365h		;1254	cd 65 13 	. e . 
	call sub_1359h		;1257	cd 59 13 	. Y . 
	call sub_1371h		;125a	cd 71 13 	. q . 
	jp l1461h		;125d	c3 61 14 	. a . 
	call sub_1479h		;1260	cd 79 14 	. y . 
	call sub_146dh		;1263	cd 6d 14 	. m . 
	call sub_1485h		;1266	cd 85 14 	. . . 
	call sub_141ch		;1269	cd 1c 14 	. . . 
	call sub_1428h		;126c	cd 28 14 	. ( . 
	call sub_1371h		;126f	cd 71 13 	. q . 
	jp sub_12f6h		;1272	c3 f6 12 	. . . 
	call sub_1479h		;1275	cd 79 14 	. y . 
	call sub_146dh		;1278	cd 6d 14 	. m . 
	call sub_1485h		;127b	cd 85 14 	. . . 
	call sub_12f6h		;127e	cd f6 12 	. . . 
	call l137dh		;1281	cd 7d 13 	. } . 
	jp sub_1302h		;1284	c3 02 13 	. . . 
	call sub_1479h		;1287	cd 79 14 	. y . 
	call sub_146dh		;128a	cd 6d 14 	. m . 
	call sub_1485h		;128d	cd 85 14 	. . . 
	call sub_14c1h		;1290	cd c1 14 	. . . 
	jp sub_12f6h		;1293	c3 f6 12 	. . . 
	call sub_1479h		;1296	cd 79 14 	. y . 
	call sub_146dh		;1299	cd 6d 14 	. m . 
	call sub_1485h		;129c	cd 85 14 	. . . 
	call sub_141ch		;129f	cd 1c 14 	. . . 
	call sub_1428h		;12a2	cd 28 14 	. ( . 
	call sub_12f6h		;12a5	cd f6 12 	. . . 
	call sub_1359h		;12a8	cd 59 13 	. Y . 
	call sub_1365h		;12ab	cd 65 13 	. e . 
	call sub_1371h		;12ae	cd 71 13 	. q . 
	jp l137dh		;12b1	c3 7d 13 	. } . 
	call sub_1479h		;12b4	cd 79 14 	. y . 
	call sub_146dh		;12b7	cd 6d 14 	. m . 
	call sub_1485h		;12ba	cd 85 14 	. . . 
	call sub_12f6h		;12bd	cd f6 12 	. . . 
	call sub_1371h		;12c0	cd 71 13 	. q . 
	call sub_1449h		;12c3	cd 49 14 	. I . 
	call sub_14e5h		;12c6	cd e5 14 	. . . 
	call sub_1455h		;12c9	cd 55 14 	. U . 
	call sub_141ch		;12cc	cd 1c 14 	. . . 
	call sub_1428h		;12cf	cd 28 14 	. ( . 
	call sub_13ech		;12d2	cd ec 13 	. . . 
	jp l137dh		;12d5	c3 7d 13 	. } . 
	call sub_1479h		;12d8	cd 79 14 	. y . 
	call sub_146dh		;12db	cd 6d 14 	. m . 
	call sub_1485h		;12de	cd 85 14 	. . . 
	call sub_12f6h		;12e1	cd f6 12 	. . . 
	call l132fh		;12e4	cd 2f 13 	. / . 
	call sub_1449h		;12e7	cd 49 14 	. I . 
	call sub_1528h		;12ea	cd 28 15 	. ( . 
	call sub_14cdh		;12ed	cd cd 14 	. . . 
	call sub_1317h		;12f0	cd 17 13 	. . . 
	jp sub_1323h		;12f3	c3 23 13 	. # . 
sub_12f6h:
	ld hl,087e9h		;12f6	21 e9 87 	! . . 
	ld de,06880h		;12f9	11 80 68 	. . h 
	ld bc,l021fh+1		;12fc	01 20 02 	.   . 
	jp sub_0131h		;12ff	c3 31 01 	. 1 . 
sub_1302h:
	ld hl,08a09h		;1302	21 09 8a 	! . . 
	ld de,06fa0h		;1305	11 a0 6f 	. . o 
	ld bc,00180h		;1308	01 80 01 	. . . 
	call sub_0131h		;130b	cd 31 01 	. 1 . 
	ld hl,08a09h		;130e	21 09 8a 	! . . 
	ld bc,00180h		;1311	01 80 01 	. . . 
	jp l0292h		;1314	c3 92 02 	. . . 
sub_1317h:
	ld hl,08dc9h		;1317	21 c9 8d 	! . . 
	ld de,07580h		;131a	11 80 75 	. . u 
	ld bc,l0040h		;131d	01 40 00 	. @ . 
	jp sub_0131h		;1320	c3 31 01 	. 1 . 
sub_1323h:
	ld hl,08b89h		;1323	21 89 8b 	! . . 
	ld de,075c0h		;1326	11 c0 75 	. . u 
	ld bc,l0240h		;1329	01 40 02 	. @ . 
	jp sub_0131h		;132c	c3 31 01 	. 1 . 
l132fh:
	ld hl,0ae09h		;132f	21 09 ae 	! . . 
	ld de,06aa0h		;1332	11 a0 6a 	. . j 
	ld bc,l0100h		;1335	01 00 01 	. . . 
	call sub_0131h		;1338	cd 31 01 	. 1 . 
	ld hl,0ae09h		;133b	21 09 ae 	! . . 
	ld bc,l0100h		;133e	01 00 01 	. . . 
	jp l0292h		;1341	c3 92 02 	. . . 
sub_1344h:
	ld hl,095e9h		;1344	21 e9 95 	! . . 
	ld de,06ca0h		;1347	11 a0 6c 	. . l 
	ld bc,00180h		;134a	01 80 01 	. . . 
	call sub_0131h		;134d	cd 31 01 	. 1 . 
	ld hl,095e9h		;1350	21 e9 95 	! . . 
	ld bc,00180h		;1353	01 80 01 	. . . 
	jp l0292h		;1356	c3 92 02 	. . . 
sub_1359h:
	ld hl,09ca9h		;1359	21 a9 9c 	! . . 
	ld de,06c00h		;135c	11 00 6c 	. . l 
	ld bc,l0020h		;135f	01 20 00 	.   . 
	jp sub_0131h		;1362	c3 31 01 	. 1 . 
sub_1365h:
	ld hl,09b49h		;1365	21 49 9b 	! I . 
	ld de,06aa0h		;1368	11 a0 6a 	. . j 
	ld bc,l0160h		;136b	01 60 01 	. ` . 
	jp sub_0131h		;136e	c3 31 01 	. 1 . 
sub_1371h:
	ld hl,09d49h		;1371	21 49 9d 	! I . 
	ld de,07000h		;1374	11 00 70 	. . p 
	ld bc,l0100h		;1377	01 00 01 	. . . 
	jp sub_0131h		;137a	c3 31 01 	. 1 . 
l137dh:
	ld hl,09e49h		;137d	21 49 9e 	! I . 
	ld de,07760h		;1380	11 60 77 	. ` w 
	ld bc,000a0h		;1383	01 a0 00 	. . . 
	jp sub_0131h		;1386	c3 31 01 	. 1 . 
sub_1389h:
	ld hl,0af09h		;1389	21 09 af 	! . . 
	ld de,07200h		;138c	11 00 72 	. . r 
	ld bc,l00c0h		;138f	01 c0 00 	. . . 
	jp sub_0131h		;1392	c3 31 01 	. 1 . 
l1395h:
	ld hl,09b09h		;1395	21 09 9b 	! . . 
	ld de,077e0h		;1398	11 e0 77 	. . w 
	ld bc,l0020h		;139b	01 20 00 	.   . 
	jp sub_0131h		;139e	c3 31 01 	. 1 . 
sub_13a1h:
	ld hl,08fc9h		;13a1	21 c9 8f 	! . . 
	ld de,072a0h		;13a4	11 a0 72 	. . r 
	ld bc,l0100h		;13a7	01 00 01 	. . . 
	jp sub_0131h		;13aa	c3 31 01 	. 1 . 
l13adh:
	ld hl,08ec9h		;13ad	21 c9 8e 	! . . 
	ld de,072a0h		;13b0	11 a0 72 	. . r 
	ld bc,l0100h		;13b3	01 00 01 	. . . 
	call sub_0131h		;13b6	cd 31 01 	. 1 . 
	ld hl,08ec9h		;13b9	21 c9 8e 	! . . 
	ld bc,l0100h		;13bc	01 00 01 	. . . 
	jp l0292h		;13bf	c3 92 02 	. . . 
sub_13c2h:
	ld hl,09769h		;13c2	21 69 97 	! i . 
	ld de,06c00h		;13c5	11 00 6c 	. . l 
	ld bc,sub_02deh+2		;13c8	01 e0 02 	. . . 
	call sub_0131h		;13cb	cd 31 01 	. 1 . 
	ld hl,09769h		;13ce	21 69 97 	! i . 
	ld bc,sub_02deh+2		;13d1	01 e0 02 	. . . 
	jp l0292h		;13d4	c3 92 02 	. . . 
l13d7h:
	ld hl,09a49h		;13d7	21 49 9a 	! I . 
	ld de,07280h		;13da	11 80 72 	. . r 
	ld bc,l00c0h		;13dd	01 c0 00 	. . . 
	call sub_0131h		;13e0	cd 31 01 	. 1 . 
	ld hl,09a49h		;13e3	21 49 9a 	! I . 
	ld bc,l00c0h		;13e6	01 c0 00 	. . . 
	jp l0292h		;13e9	c3 92 02 	. . . 
sub_13ech:
	ld hl,09ee9h		;13ec	21 e9 9e 	! . . 
	ld de,07680h		;13ef	11 80 76 	. . v 
	ld bc,l00c0h		;13f2	01 c0 00 	. . . 
	jp sub_0131h		;13f5	c3 31 01 	. 1 . 
sub_13f8h:
	ld hl,0a2a9h		;13f8	21 a9 a2 	! . . 
	ld de,06c20h		;13fb	11 20 6c 	.   l 
	ld bc,00ae0h		;13fe	01 e0 0a 	. . . 
	jp sub_0131h		;1401	c3 31 01 	. 1 . 
sub_1404h:
	ld hl,0a0a9h		;1404	21 a9 a0 	! . . 
	ld de,073e0h		;1407	11 e0 73 	. . s 
	ld bc,l0020h		;140a	01 20 00 	.   . 
	jp sub_0131h		;140d	c3 31 01 	. 1 . 
sub_1410h:
	ld hl,0a0c9h		;1410	21 c9 a0 	! . . 
	ld de,07320h		;1413	11 20 73 	.   s 
	ld bc,l00c0h		;1416	01 c0 00 	. . . 
	jp sub_0131h		;1419	c3 31 01 	. 1 . 
sub_141ch:
	ld hl,09fa9h		;141c	21 a9 9f 	! . . 
	ld de,07400h		;141f	11 00 74 	. . t 
	ld bc,l0100h		;1422	01 00 01 	. . . 
	jp sub_0131h		;1425	c3 31 01 	. 1 . 
sub_1428h:
	ld hl,08e09h		;1428	21 09 8e 	! . . 
	ld de,07500h		;142b	11 00 75 	. . u 
	ld bc,l00c0h		;142e	01 c0 00 	. . . 
	call sub_0131h		;1431	cd 31 01 	. 1 . 
	ld hl,08e09h		;1434	21 09 8e 	! . . 
	ld bc,l00c0h		;1437	01 c0 00 	. . . 
	jp l0292h		;143a	c3 92 02 	. . . 
sub_143dh:
	ld hl,090c9h		;143d	21 c9 90 	! . . 
	ld de,07180h		;1440	11 80 71 	. . q 
	ld bc,l0280h		;1443	01 80 02 	. . . 
	jp sub_0131h		;1446	c3 31 01 	. 1 . 
sub_1449h:
	ld hl,0a229h		;1449	21 29 a2 	! ) . 
	ld de,06dc0h		;144c	11 c0 6d 	. . m 
	ld bc,00080h		;144f	01 80 00 	. . . 
	jp sub_0131h		;1452	c3 31 01 	. 1 . 
sub_1455h:
	ld hl,08629h		;1455	21 29 86 	! ) . 
	ld de,06e40h		;1458	11 40 6e 	. @ n 
	ld bc,l01c0h		;145b	01 c0 01 	. . . 
	jp sub_0131h		;145e	c3 31 01 	. 1 . 
l1461h:
	ld hl,0ad89h		;1461	21 89 ad 	! . . 
	ld de,07740h		;1464	11 40 77 	. @ w 
	ld bc,00080h		;1467	01 80 00 	. . . 
	jp sub_0131h		;146a	c3 31 01 	. 1 . 
sub_146dh:
	ld hl,085a9h		;146d	21 a9 85 	! . . 
	ld de,06840h		;1470	11 40 68 	. @ h 
	ld bc,l0040h		;1473	01 40 00 	. @ . 
	jp sub_0131h		;1476	c3 31 01 	. 1 . 
sub_1479h:
	ld hl,08529h		;1479	21 29 85 	! ) . 
	ld de,06800h		;147c	11 00 68 	. . h 
	ld bc,l0040h		;147f	01 40 00 	. @ . 
	jp sub_0131h		;1482	c3 31 01 	. 1 . 
sub_1485h:
	ld hl,08529h		;1485	21 29 85 	! ) . 
	ld de,067c0h		;1488	11 c0 67 	. . g 
	ld bc,l0040h		;148b	01 40 00 	. @ . 
	jp sub_0131h		;148e	c3 31 01 	. 1 . 
sub_1491h:
	ld hl,08569h		;1491	21 69 85 	! i . 
	ld de,067c0h		;1494	11 c0 67 	. . g 
	ld bc,l0040h		;1497	01 40 00 	. @ . 
	jp sub_0131h		;149a	c3 31 01 	. 1 . 
sub_149dh:
	ld hl,085e9h		;149d	21 e9 85 	! . . 
	ld de,067c0h		;14a0	11 c0 67 	. . g 
	ld bc,l0040h		;14a3	01 40 00 	. @ . 
	jp sub_0131h		;14a6	c3 31 01 	. 1 . 
sub_14a9h:
	ld hl,083c9h		;14a9	21 c9 83 	! . . 
	ld de,06f80h		;14ac	11 80 6f 	. . o 
	ld bc,00080h		;14af	01 80 00 	. . . 
	jp sub_0131h		;14b2	c3 31 01 	. 1 . 
sub_14b5h:
	ld hl,08169h		;14b5	21 69 81 	! i . 
	ld de,07100h		;14b8	11 00 71 	. . q 
	ld bc,00080h		;14bb	01 80 00 	. . . 
	jp sub_0131h		;14be	c3 31 01 	. 1 . 
sub_14c1h:
	ld hl,081e9h		;14c1	21 e9 81 	! . . 
	ld de,06b20h		;14c4	11 20 6b 	.   k 
	ld bc,00080h		;14c7	01 80 00 	. . . 
	jp sub_0131h		;14ca	c3 31 01 	. 1 . 
sub_14cdh:
	ld hl,08449h		;14cd	21 49 84 	! I . 
	ld de,07100h		;14d0	11 00 71 	. . q 
	ld bc,00080h		;14d3	01 80 00 	. . . 
	jp sub_0131h		;14d6	c3 31 01 	. 1 . 
sub_14d9h:
	ld hl,08069h		;14d9	21 69 80 	! i . 
	ld de,06aa0h		;14dc	11 a0 6a 	. . j 
	ld bc,l0100h		;14df	01 00 01 	. . . 
	jp sub_0131h		;14e2	c3 31 01 	. 1 . 
sub_14e5h:
	ld a,085h		;14e5	3e 85 	> . 
	ld (0ffffh),a		;14e7	32 ff ff 	2 . . 
	ld hl,0af51h		;14ea	21 51 af 	! Q . 
	ld de,07180h		;14ed	11 80 71 	. . q 
	ld bc,l0020h		;14f0	01 20 00 	.   . 
	call sub_0131h		;14f3	cd 31 01 	. 1 . 
	ld hl,0af51h		;14f6	21 51 af 	! Q . 
	ld bc,l0020h		;14f9	01 20 00 	.   . 
	call l0292h		;14fc	cd 92 02 	. . . 
	ld hl,0af71h		;14ff	21 71 af 	! q . 
	ld de,071c0h		;1502	11 c0 71 	. . q 
	ld bc,l0040h		;1505	01 40 00 	. @ . 
	call sub_0131h		;1508	cd 31 01 	. 1 . 
	ld a,087h		;150b	3e 87 	> . 
	ld (0ffffh),a		;150d	32 ff ff 	2 . . 
	ret			;1510	c9 	. 
sub_1511h:
	ld a,085h		;1511	3e 85 	> . 
	ld (0ffffh),a		;1513	32 ff ff 	2 . . 
	ld hl,0b211h		;1516	21 11 b2 	! . . 
	ld de,076e0h		;1519	11 e0 76 	. . v 
	ld bc,00080h		;151c	01 80 00 	. . . 
	call sub_0131h		;151f	cd 31 01 	. 1 . 
	ld a,087h		;1522	3e 87 	> . 
	ld (0ffffh),a		;1524	32 ff ff 	2 . . 
	ret			;1527	c9 	. 
sub_1528h:
	ld hl,0a189h		;1528	21 89 a1 	! . . 
	ld de,07180h		;152b	11 80 71 	. . q 
	ld bc,00080h		;152e	01 80 00 	. . . 
	jp sub_0131h		;1531	c3 31 01 	. 1 . 
	sbc a,c			;1534	99 	. 
	dec d			;1535	15 	. 
	and a			;1536	a7 	. 
	dec d			;1537	15 	. 
	sbc a,c			;1538	99 	. 
	dec d			;1539	15 	. 
	or l			;153a	b5 	. 
	dec d			;153b	15 	. 
	sbc a,c			;153c	99 	. 
	dec d			;153d	15 	. 
	and a			;153e	a7 	. 
	dec d			;153f	15 	. 
	defb 0ddh,015h,0ebh	;illegal sequence		;1540	dd 15 eb 	. . . 
	dec d			;1543	15 	. 
	sbc a,c			;1544	99 	. 
	dec d			;1545	15 	. 
	and a			;1546	a7 	. 
	dec d			;1547	15 	. 
	ex de,hl			;1548	eb 	. 
	dec d			;1549	15 	. 
	ex de,hl			;154a	eb 	. 
	dec d			;154b	15 	. 
	and a			;154c	a7 	. 
	dec d			;154d	15 	. 
	ex de,hl			;154e	eb 	. 
	dec d			;154f	15 	. 
	and a			;1550	a7 	. 
	dec d			;1551	15 	. 
	jp 09915h		;1552	c3 15 99 	. . . 
	dec d			;1555	15 	. 
sub_1556h:
	ld hl,0c225h		;1556	21 25 c2 	! % . 
	ld a,(hl)			;1559	7e 	~ 
	ld (hl),000h		;155a	36 00 	6 . 
	or a			;155c	b7 	. 
	jp z,l1566h		;155d	ca 66 15 	. f . 
	ld hl,0c220h		;1560	21 20 c2 	!   . 
	dec (hl)			;1563	35 	5 
	ret nz			;1564	c0 	. 
	inc (hl)			;1565	34 	4 
l1566h:
	ld hl,0c220h		;1566	21 20 c2 	!   . 
	dec (hl)			;1569	35 	5 
	ret nz			;156a	c0 	. 
	ld (hl),012h		;156b	36 12 	6 . 
	ld a,085h		;156d	3e 85 	> . 
	ld (0ffffh),a		;156f	32 ff ff 	2 . . 
	ld hl,(0c223h)		;1572	2a 23 c2 	* # . 
	jp (hl)			;1575	e9 	. 
sub_1576h:
	ld hl,0c221h		;1576	21 21 c2 	! ! . 
	inc (hl)			;1579	34 	4 
	ld a,(hl)			;157a	7e 	~ 
	cp 004h		;157b	fe 04 	. . 
	jp c,l158fh		;157d	da 8f 15 	. . . 
	jp l158dh		;1580	c3 8d 15 	. . . 
sub_1583h:
	ld hl,0c222h		;1583	21 22 c2 	! " . 
	inc (hl)			;1586	34 	4 
	ld a,(hl)			;1587	7e 	~ 
	cp 006h		;1588	fe 06 	. . 
	jp c,l158fh		;158a	da 8f 15 	. . . 
l158dh:
	xor a			;158d	af 	. 
	ld (hl),a			;158e	77 	w 
l158fh:
	add a,a			;158f	87 	. 
	ld l,a			;1590	6f 	o 
	ld h,000h		;1591	26 00 	& . 
	add hl,de			;1593	19 	. 
	ld a,(hl)			;1594	7e 	~ 
	inc hl			;1595	23 	# 
	ld h,(hl)			;1596	66 	f 
	ld l,a			;1597	6f 	o 
	ret			;1598	c9 	. 
	ld de,l15ech		;1599	11 ec 15 	. . . 
	call sub_1583h		;159c	cd 83 15 	. . . 
	ld de,05100h		;159f	11 00 51 	. . Q 
	ld b,040h		;15a2	06 40 	. @ 
	jp l0030h		;15a4	c3 30 00 	. 0 . 
	ld de,l15f8h		;15a7	11 f8 15 	. . . 
	call sub_1583h		;15aa	cd 83 15 	. . . 
	ld de,048c0h		;15ad	11 c0 48 	. . H 
	ld b,040h		;15b0	06 40 	. @ 
	jp l0030h		;15b2	c3 30 00 	. 0 . 
	ld de,l1604h		;15b5	11 04 16 	. . . 
	call sub_1576h		;15b8	cd 76 15 	. v . 
	ld de,049e0h		;15bb	11 e0 49 	. . I 
	ld b,060h		;15be	06 60 	. ` 
	jp l0030h		;15c0	c3 30 00 	. 0 . 
	ld de,l160ch		;15c3	11 0c 16 	. . . 
	call sub_1576h		;15c6	cd 76 15 	. v . 
	ld de,048a0h		;15c9	11 a0 48 	. . H 
	ld b,060h		;15cc	06 60 	. ` 
	rst 30h			;15ce	f7 	. 
	ld de,l15ech		;15cf	11 ec 15 	. . . 
	call sub_1583h		;15d2	cd 83 15 	. . . 
	ld de,05100h		;15d5	11 00 51 	. . Q 
	ld b,040h		;15d8	06 40 	. @ 
	jp l0030h		;15da	c3 30 00 	. 0 . 
	ld de,l1614h		;15dd	11 14 16 	. . . 
	call sub_1576h		;15e0	cd 76 15 	. v . 
	ld de,04b40h		;15e3	11 40 4b 	. @ K 
	ld b,060h		;15e6	06 60 	. ` 
	jp l0030h		;15e8	c3 30 00 	. 0 . 
	ret			;15eb	c9 	. 
l15ech:
	ld d,e			;15ec	53 	S 
	cp b			;15ed	b8 	. 
	sub e			;15ee	93 	. 
	cp b			;15ef	b8 	. 
	out (0b8h),a		;15f0	d3 b8 	. . 
	inc de			;15f2	13 	. 
	cp c			;15f3	b9 	. 
	out (0b8h),a		;15f4	d3 b8 	. . 
	sub e			;15f6	93 	. 
	cp b			;15f7	b8 	. 
l15f8h:
	ld d,e			;15f8	53 	S 
	cp c			;15f9	b9 	. 
	sub e			;15fa	93 	. 
	cp c			;15fb	b9 	. 
	out (0b9h),a		;15fc	d3 b9 	. . 
	inc de			;15fe	13 	. 
	cp d			;15ff	ba 	. 
	out (0b9h),a		;1600	d3 b9 	. . 
	sub e			;1602	93 	. 
	cp c			;1603	b9 	. 
l1604h:
	ld d,e			;1604	53 	S 
	cp d			;1605	ba 	. 
	or e			;1606	b3 	. 
	cp d			;1607	ba 	. 
	inc de			;1608	13 	. 
	cp e			;1609	bb 	. 
	ld (hl),e			;160a	73 	s 
	cp e			;160b	bb 	. 
l160ch:
	out (0bbh),a		;160c	d3 bb 	. . 
	inc sp			;160e	33 	3 
	cp h			;160f	bc 	. 
	sub e			;1610	93 	. 
	cp h			;1611	bc 	. 
	di			;1612	f3 	. 
	cp h			;1613	bc 	. 
l1614h:
	ld d,e			;1614	53 	S 
	cp l			;1615	bd 	. 
	or e			;1616	b3 	. 
	cp l			;1617	bd 	. 
	inc de			;1618	13 	. 
	cp (hl)			;1619	be 	. 
	ld (hl),e			;161a	73 	s 
	cp (hl)			;161b	be 	. 
	exx			;161c	d9 	. 
	bit 7,(hl)		;161d	cb 7e 	. ~ 
	jp z,l1700h		;161f	ca 00 17 	. . . 
	ld a,009h		;1622	3e 09 	> . 
	call sub_02b3h		;1624	cd b3 02 	. . . 
	ld a,(0d800h)		;1627	3a 00 d8 	: . . 
	or a			;162a	b7 	. 
	jr nz,l1637h		;162b	20 0a 	  . 
	ld a,08ah		;162d	3e 8a 	> . 
	ld (0c01fh),a		;162f	32 1f c0 	2 . . 
	ld b,00ah		;1632	06 0a 	. . 
	jp l0310h		;1634	c3 10 03 	. . . 
l1637h:
	ld a,(0c095h)		;1637	3a 95 c0 	: . . 
	or a			;163a	b7 	. 
	ret nz			;163b	c0 	. 
	ld hl,l0000h		;163c	21 00 00 	! . . 
	ld (0c0b9h),hl		;163f	22 b9 c0 	" . . 
	ld a,0bdh		;1642	3e bd 	> . 
	ld (0c014h),a		;1644	32 14 c0 	2 . . 
l1647h:
	ld a,001h		;1647	3e 01 	> . 
	call sub_02b3h		;1649	cd b3 02 	. . . 
	ld hl,0c014h		;164c	21 14 c0 	! . . 
	dec (hl)			;164f	35 	5 
	jp nz,l1647h		;1650	c2 47 16 	. G . 
	ld a,082h		;1653	3e 82 	> . 
	ld (0ffffh),a		;1655	32 ff ff 	2 . . 
	call 09df3h		;1658	cd f3 9d 	. . . 
	ld hl,0c030h		;165b	21 30 c0 	! 0 . 
	ld de,0c031h		;165e	11 31 c0 	. 1 . 
	ld (hl),000h		;1661	36 00 	6 . 
	ldi		;1663	ed a0 	. . 
	ldi		;1665	ed a0 	. . 
	ld a,001h		;1667	3e 01 	> . 
	ld (0c025h),a		;1669	32 25 c0 	2 % . 
	ld a,006h		;166c	3e 06 	> . 
	ld (0c01fh),a		;166e	32 1f c0 	2 . . 
	ret			;1671	c9 	. 
	ld a,(0d800h)		;1672	3a 00 d8 	: . . 
	or a			;1675	b7 	. 
	ret z			;1676	c8 	. 
	call 0697ch		;1677	cd 7c 69 	. | i 
	ld hl,(0c0b9h)		;167a	2a b9 c0 	* . . 
	ld de,(0c0bdh)		;167d	ed 5b bd c0 	. [ . . 
	add hl,de			;1681	19 	. 
	ld a,h			;1682	7c 	| 
	cp 0e0h		;1683	fe e0 	. . 
	jr c,l168bh		;1685	38 04 	8 . 
	ld c,020h		;1687	0e 20 	.   
	add a,c			;1689	81 	. 
	ld h,a			;168a	67 	g 
l168bh:
	ld (0c0bdh),hl		;168b	22 bd c0 	" . . 
	cp d			;168e	ba 	. 
	ret z			;168f	c8 	. 
	and 007h		;1690	e6 07 	. . 
	ret nz			;1692	c0 	. 
	ld a,h			;1693	7c 	| 
	add a,0c0h		;1694	c6 c0 	. . 
	ld c,020h		;1696	0e 20 	.   
	jr c,l16a0h		;1698	38 06 	8 . 
	cp 0e0h		;169a	fe e0 	. . 
	jr nc,l16a0h		;169c	30 02 	0 . 
	ld c,000h		;169e	0e 00 	. . 
l16a0h:
	add a,c			;16a0	81 	. 
	ld l,a			;16a1	6f 	o 
	ld h,000h		;16a2	26 00 	& . 
	add hl,hl			;16a4	29 	) 
	add hl,hl			;16a5	29 	) 
	add hl,hl			;16a6	29 	) 
	ld de,07800h		;16a7	11 00 78 	. . x 
	add hl,de			;16aa	19 	. 
	ex de,hl			;16ab	eb 	. 
	ld a,002h		;16ac	3e 02 	> . 
	ld (0ffffh),a		;16ae	32 ff ff 	2 . . 
	ld hl,(0c094h)		;16b1	2a 94 c0 	* . . 
	ld a,(hl)			;16b4	7e 	~ 
	inc hl			;16b5	23 	# 
	or a			;16b6	b7 	. 
	jp z,l16d9h		;16b7	ca d9 16 	. . . 
	ld b,a			;16ba	47 	G 
	inc a			;16bb	3c 	< 
	jp z,l16fbh		;16bc	ca fb 16 	. . . 
l16bfh:
	inc a			;16bf	3c 	< 
	jr z,l16ddh		;16c0	28 1b 	( . 
	push de			;16c2	d5 	. 
	exx			;16c3	d9 	. 
	pop de			;16c4	d1 	. 
	ld l,000h		;16c5	2e 00 	. . 
	ld bc,l0040h		;16c7	01 40 00 	. @ . 
	call sub_0156h		;16ca	cd 56 01 	. V . 
	exx			;16cd	d9 	. 
	ld a,(hl)			;16ce	7e 	~ 
	or e			;16cf	b3 	. 
	ld e,a			;16d0	5f 	_ 
	inc hl			;16d1	23 	# 
	xor a			;16d2	af 	. 
	ld (0c10ah),a		;16d3	32 0a c1 	2 . . 
	call sub_013fh		;16d6	cd 3f 01 	. ? . 
l16d9h:
	ld (0c094h),hl		;16d9	22 94 c0 	" . . 
	ret			;16dc	c9 	. 
l16ddh:
	push hl			;16dd	e5 	. 
	ld a,d			;16de	7a 	z 
	add a,e			;16df	83 	. 
	ld l,000h		;16e0	2e 00 	. . 
	cp 0feh		;16e2	fe fe 	. . 
	ld bc,l0040h		;16e4	01 40 00 	. @ . 
	jr c,l16f5h		;16e7	38 0c 	8 . 
	ld bc,l0020h		;16e9	01 20 00 	.   . 
	call sub_0156h		;16ec	cd 56 01 	. V . 
	ld bc,l0020h		;16ef	01 20 00 	.   . 
	ld de,07800h		;16f2	11 00 78 	. . x 
l16f5h:
	call sub_0156h		;16f5	cd 56 01 	. V . 
	pop hl			;16f8	e1 	. 
	jr l16d9h		;16f9	18 de 	. . 
l16fbh:
	xor a			;16fb	af 	. 
	ld (0c095h),a		;16fc	32 95 c0 	2 . . 
	ret			;16ff	c9 	. 
l1700h:
	call 09df3h		;1700	cd f3 9d 	. . . 
	ld b,005h		;1703	06 05 	. . 
	call l0310h		;1705	cd 10 03 	. . . 
	call sub_02deh		;1708	cd de 02 	. . . 
	ld hl,0c0a0h		;170b	21 a0 c0 	! . . 
	ld de,0c0a1h		;170e	11 a1 c0 	. . . 
	ld bc,l002ah		;1711	01 2a 00 	. * . 
	ld (hl),000h		;1714	36 00 	6 . 
	ldir		;1716	ed b0 	. . 
	xor a			;1718	af 	. 
	ld (0c091h),a		;1719	32 91 c0 	2 . . 
	ld a,(0c023h)		;171c	3a 23 c0 	: # . 
	cp 011h		;171f	fe 11 	. . 
	jp z,l1753h		;1721	ca 53 17 	. S . 
	ld a,001h		;1724	3e 01 	> . 
	ld (0c092h),a		;1726	32 92 c0 	2 . . 
	ld a,083h		;1729	3e 83 	> . 
	ld (0ffffh),a		;172b	32 ff ff 	2 . . 
	ld a,(0c023h)		;172e	3a 23 c0 	: # . 
	push af			;1731	f5 	. 
	inc a			;1732	3c 	< 
	ld (0c023h),a		;1733	32 23 c0 	2 # . 
	call sub_0e31h		;1736	cd 31 0e 	. 1 . 
	call sub_10c5h		;1739	cd c5 10 	. . . 
	ld a,087h		;173c	3e 87 	> . 
	ld (0ffffh),a		;173e	32 ff ff 	2 . . 
	call sub_10fbh		;1741	cd fb 10 	. . . 
	pop af			;1744	f1 	. 
	ld (0c023h),a		;1745	32 23 c0 	2 # . 
	ld hl,08ad6h		;1748	21 d6 8a 	! . . 
	ld de,08ad6h		;174b	11 d6 8a 	. . . 
	ld bc,00607h		;174e	01 07 06 	. . . 
	jr l176ch		;1751	18 19 	. . 
l1753h:
	ld a,(0d800h)		;1753	3a 00 d8 	: . . 
	or a			;1756	b7 	. 
	jp nz,l1865h		;1757	c2 65 18 	. e . 
	ld hl,0bc53h		;175a	21 53 bc 	! S . 
	ld de,0bc53h		;175d	11 53 bc 	. S . 
	ld bc,l0300h		;1760	01 00 03 	. . . 
	ld a,(0c07fh)		;1763	3a 7f c0 	:  . 
	or a			;1766	b7 	. 
	jr z,l176ch		;1767	28 03 	( . 
	ld bc,l0400h		;1769	01 00 04 	. . . 
l176ch:
	ld a,085h		;176c	3e 85 	> . 
	ld (0ffffh),a		;176e	32 ff ff 	2 . . 
	ld (0c0a3h),hl		;1771	22 a3 c0 	" . . 
	ld (0c0a8h),de		;1774	ed 53 a8 c0 	. S . . 
	ld a,b			;1778	78 	x 
	ld (0c0b6h),a		;1779	32 b6 c0 	2 . . 
	xor a			;177c	af 	. 
	ld (0c0c4h),a		;177d	32 c4 c0 	2 . . 
	ld a,c			;1780	79 	y 
	ld (0c0a0h),a		;1781	32 a0 c0 	2 . . 
	xor a			;1784	af 	. 
	ld (0c0a5h),a		;1785	32 a5 c0 	2 . . 
	ld a,008h		;1788	3e 08 	> . 
	ld (0c080h),a		;178a	32 80 c0 	2 . . 
	ld hl,07800h		;178d	21 00 78 	! . x 
	ld (0c0b7h),hl		;1790	22 b7 c0 	" . . 
	ld (0c0c5h),hl		;1793	22 c5 c0 	" . . 
l1796h:
	ld hl,l0100h		;1796	21 00 01 	! . . 
	ld (0c0abh),hl		;1799	22 ab c0 	" . . 
	call 0678dh		;179c	cd 8d 67 	. . g 
	call 06b0eh		;179f	cd 0e 6b 	. . k 
	call 068e9h		;17a2	cd e9 68 	. . h 
	ld hl,(0c0afh)		;17a5	2a af c0 	* . . 
	ld a,h			;17a8	7c 	| 
	or l			;17a9	b5 	. 
	jr nz,l1796h		;17aa	20 ea 	  . 
	ld a,088h		;17ac	3e 88 	> . 
	ld (0c08dh),a		;17ae	32 8d c0 	2 . . 
	ld hl,l0000h		;17b1	21 00 00 	! . . 
	ld (0c0abh),hl		;17b4	22 ab c0 	" . . 
	ld a,(0c080h)		;17b7	3a 80 c0 	: . . 
	ld (0c0c9h),a		;17ba	32 c9 c0 	2 . . 
	ld ix,0c300h		;17bd	dd 21 00 c3 	. ! . . 
	ld de,l0020h		;17c1	11 20 00 	.   . 
	ld a,(0c0f8h)		;17c4	3a f8 c0 	: . . 
	ld b,a			;17c7	47 	G 
l17c8h:
	call sub_2752h		;17c8	cd 52 27 	. R ' 
	add ix,de		;17cb	dd 19 	. . 
	djnz l17c8h		;17cd	10 f9 	. . 
	ld a,082h		;17cf	3e 82 	> . 
	ld (0ffffh),a		;17d1	32 ff ff 	2 . . 
	ld ix,0c300h		;17d4	dd 21 00 c3 	. ! . . 
	ld (ix+000h),001h		;17d8	dd 36 00 01 	. 6 . . 
	ld a,(0c023h)		;17dc	3a 23 c0 	: # . 
	cp 011h		;17df	fe 11 	. . 
	jr z,l17edh		;17e1	28 0a 	( . 
	ld (ix+00ch),010h		;17e3	dd 36 0c 10 	. 6 . . 
	ld (ix+00eh),088h		;17e7	dd 36 0e 88 	. 6 . . 
	jr l183fh		;17eb	18 52 	. R 
l17edh:
	xor a			;17ed	af 	. 
	ld (0c0c9h),a		;17ee	32 c9 c0 	2 . . 
	ld (ix+00ch),010h		;17f1	dd 36 0c 10 	. 6 . . 
	ld (ix+00eh),088h		;17f5	dd 36 0e 88 	. 6 . . 
	ld a,(0c07fh)		;17f9	3a 7f c0 	:  . 
	or a			;17fc	b7 	. 
	jr nz,l1822h		;17fd	20 23 	  # 
	ld c,04ch		;17ff	0e 4c 	. L 
	ld de,088f0h		;1801	11 f0 88 	. . . 
	ld b,001h		;1804	06 01 	. . 
	ld (ix+00ch),070h		;1806	dd 36 0c 70 	. 6 . p 
	ld (ix+00eh),0a0h		;180a	dd 36 0e a0 	. 6 . . 
l180eh:
	ld (ix+00ah),0ffh		;180e	dd 36 0a ff 	. 6 . . 
	ld ix,0c3a0h		;1812	dd 21 a0 c3 	. ! . . 
	ld (ix+000h),c		;1816	dd 71 00 	. q . 
	ld (ix+00ch),e		;1819	dd 73 0c 	. s . 
	ld (ix+00eh),d		;181c	dd 72 0e 	. r . 
	ld (ix+003h),b		;181f	dd 70 03 	. p . 
l1822h:
	ld c,060h		;1822	0e 60 	. ` 
	ld de,098c0h		;1824	11 c0 98 	. . . 
	ld a,(0c07fh)		;1827	3a 7f c0 	:  . 
	or a			;182a	b7 	. 
	jr z,l1832h		;182b	28 05 	( . 
	ld c,061h		;182d	0e 61 	. a 
	ld de,09008h		;182f	11 08 90 	. . . 
l1832h:
	ld ix,0c3c0h		;1832	dd 21 c0 c3 	. ! . . 
	ld (ix+000h),c		;1836	dd 71 00 	. q . 
	ld (ix+00ch),e		;1839	dd 73 0c 	. s . 
	ld (ix+00eh),d		;183c	dd 72 0e 	. r . 
l183fh:
	ld ix,0c300h		;183f	dd 21 00 c3 	. ! . . 
	call sub_298bh		;1843	cd 8b 29 	. . ) 
	call sub_265ch		;1846	cd 5c 26 	. \ & 
	ld de,08026h		;1849	11 26 80 	. & . 
	rst 8			;184c	cf 	. 
	ld a,(0c023h)		;184d	3a 23 c0 	: # . 
	inc a			;1850	3c 	< 
	ld c,a			;1851	4f 	O 
	ld b,000h		;1852	06 00 	. . 
	ld hl,00d89h		;1854	21 89 0d 	! . . 
	add hl,bc			;1857	09 	. 
	ld a,(hl)			;1858	7e 	~ 
	ld (0c110h),a		;1859	32 10 c1 	2 . . 
	ld hl,0c01fh		;185c	21 1f c0 	! . . 
	set 7,(hl)		;185f	cb fe 	. . 
	ei			;1861	fb 	. 
	jp sub_02c3h		;1862	c3 c3 02 	. . . 
l1865h:
	xor a			;1865	af 	. 
	ld de,0c000h		;1866	11 00 c0 	. . . 
	call l012bh		;1869	cd 2b 01 	. + . 
	xor a			;186c	af 	. 
	ld de,0c010h		;186d	11 10 c0 	. . . 
	call l012bh		;1870	cd 2b 01 	. + . 
	call sub_09a6h		;1873	cd a6 09 	. . . 
	call sub_265ch		;1876	cd 5c 26 	. \ & 
	ld a,002h		;1879	3e 02 	> . 
	ld (0ffffh),a		;187b	32 ff ff 	2 . . 
	ld hl,0b305h		;187e	21 05 b3 	! . . 
	ld (0c094h),hl		;1881	22 94 c0 	" . . 
	ld hl,00039h		;1884	21 39 00 	! 9 . 
	ld (0c0b9h),hl		;1887	22 b9 c0 	" . . 
	ld a,0b0h		;188a	3e b0 	> . 
	ld (0c110h),a		;188c	32 10 c1 	2 . . 
	ld hl,0c01fh		;188f	21 1f c0 	! . . 
	set 7,(hl)		;1892	cb fe 	. . 
	ei			;1894	fb 	. 
	jp sub_02c3h		;1895	c3 c3 02 	. . . 
	exx			;1898	d9 	. 
	bit 7,(hl)		;1899	cb 7e 	. ~ 
	jp z,l18b7h		;189b	ca b7 18 	. . . 
	ld a,082h		;189e	3e 82 	> . 
	ld (0ffffh),a		;18a0	32 ff ff 	2 . . 
	ld a,001h		;18a3	3e 01 	> . 
	call sub_02b3h		;18a5	cd b3 02 	. . . 
	ld hl,0c023h		;18a8	21 23 c0 	! # . 
	inc (hl)			;18ab	34 	4 
	ld a,085h		;18ac	3e 85 	> . 
	ld (0ffffh),a		;18ae	32 ff ff 	2 . . 
	ld a,003h		;18b1	3e 03 	> . 
	ld (0c01fh),a		;18b3	32 1f c0 	2 . . 
	ret			;18b6	c9 	. 
l18b7h:
	set 7,(hl)		;18b7	cb fe 	. . 
	call 09df3h		;18b9	cd f3 9d 	. . . 
	ld b,005h		;18bc	06 05 	. . 
	call l0310h		;18be	cd 10 03 	. . . 
	call sub_02deh		;18c1	cd de 02 	. . . 
	ld hl,0d7d0h		;18c4	21 d0 d7 	! . . 
	ld de,0d7d1h		;18c7	11 d1 d7 	. . . 
	ld (hl),000h		;18ca	36 00 	6 . 
	ld bc,l000eh		;18cc	01 0e 00 	. . . 
	ldir		;18cf	ed b0 	. . 
	xor a			;18d1	af 	. 
	ld (0c08eh),a		;18d2	32 8e c0 	2 . . 
	ld b,01eh		;18d5	06 1e 	. . 
	ld de,l0020h		;18d7	11 20 00 	.   . 
	ld ix,0c300h		;18da	dd 21 00 c3 	. ! . . 
l18deh:
	call sub_2752h		;18de	cd 52 27 	. R ' 
	add ix,de		;18e1	dd 19 	. . 
	djnz l18deh		;18e3	10 f9 	. . 
	ld hl,0d800h		;18e5	21 00 d8 	! . . 
	ld de,0d801h		;18e8	11 01 d8 	. . . 
	ld (hl),000h		;18eb	36 00 	6 . 
	ld bc,00007h		;18ed	01 07 00 	. . . 
	ldir		;18f0	ed b0 	. . 
	ld a,(0c023h)		;18f2	3a 23 c0 	: # . 
	cp 00ah		;18f5	fe 0a 	. . 
	jp nz,l18ffh		;18f7	c2 ff 18 	. . . 
	ld hl,0d802h		;18fa	21 02 d8 	! . . 
	set 0,(hl)		;18fd	cb c6 	. . 
l18ffh:
	ld de,08026h		;18ff	11 26 80 	. & . 
	rst 8			;1902	cf 	. 
	xor a			;1903	af 	. 
l1904h:
	ld (0c091h),a		;1904	32 91 c0 	2 . . 
	ld (0c055h),a		;1907	32 55 c0 	2 U . 
	ld (0c054h),a		;190a	32 54 c0 	2 T . 
	ld (0c051h),a		;190d	32 51 c0 	2 Q . 
	ld (0c092h),a		;1910	32 92 c0 	2 . . 
	ei			;1913	fb 	. 
	jp sub_02c3h		;1914	c3 c3 02 	. . . 
	exx			;1917	d9 	. 
	bit 7,(hl)		;1918	cb 7e 	. ~ 
	jp z,l1a0eh		;191a	ca 0e 1a 	. . . 
	ld a,(0c03ch)		;191d	3a 3c c0 	: < . 
	cp 015h		;1920	fe 15 	. . 
	jp z,l1973h		;1922	ca 73 19 	. s . 
	ld a,082h		;1925	3e 82 	> . 
	ld (0ffffh),a		;1927	32 ff ff 	2 . . 
	ld a,(0c03dh)		;192a	3a 3d c0 	: = . 
	or a			;192d	b7 	. 
	ld a,009h		;192e	3e 09 	> . 
	jp nz,l1935h		;1930	c2 35 19 	. 5 . 
	ld a,001h		;1933	3e 01 	> . 
l1935h:
	call sub_02b3h		;1935	cd b3 02 	. . . 
	call sub_265ch		;1938	cd 5c 26 	. \ & 
	ld a,085h		;193b	3e 85 	> . 
	ld (0ffffh),a		;193d	32 ff ff 	2 . . 
	xor a			;1940	af 	. 
	ld (0c03dh),a		;1941	32 3d c0 	2 = . 
	ld a,(0c03eh)		;1944	3a 3e c0 	: > . 
	dec a			;1947	3d 	= 
	ld (0c03eh),a		;1948	32 3e c0 	2 > . 
	ret nz			;194b	c0 	. 
	ld hl,0c03ch		;194c	21 3c c0 	! < . 
	inc (hl)			;194f	34 	4 
	ld a,(hl)			;1950	7e 	~ 
	add a,a			;1951	87 	. 
	ld b,000h		;1952	06 00 	. . 
	ld c,a			;1954	4f 	O 
	ld hl,09e45h		;1955	21 45 9e 	! E . 
	add hl,bc			;1958	09 	. 
	ld a,(hl)			;1959	7e 	~ 
	inc hl			;195a	23 	# 
	ld h,(hl)			;195b	66 	f 
	ld l,a			;195c	6f 	o 
	ld (0c038h),hl		;195d	22 38 c0 	" 8 . 
	ld a,003h		;1960	3e 03 	> . 
	ld (0c03eh),a		;1962	32 3e c0 	2 > . 
	ld a,001h		;1965	3e 01 	> . 
	ld (0c03dh),a		;1967	32 3d c0 	2 = . 
	ld hl,(0c03ah)		;196a	2a 3a c0 	* : . 
	inc hl			;196d	23 	# 
	inc hl			;196e	23 	# 
	ld (0c03ah),hl		;196f	22 3a c0 	" : . 
	ret			;1972	c9 	. 
l1973h:
	ld ix,0c300h		;1973	dd 21 00 c3 	. ! . . 
	ld (ix+000h),056h		;1977	dd 36 00 56 	. 6 . V 
	ld a,(0c023h)		;197b	3a 23 c0 	: # . 
	cp 010h		;197e	fe 10 	. . 
	jp c,l1993h		;1980	da 93 19 	. . . 
	ld ix,0c320h		;1983	dd 21 20 c3 	. !   . 
	ld (ix+000h),058h		;1987	dd 36 00 58 	. 6 . X 
	ld (ix+00ch),098h		;198b	dd 36 0c 98 	. 6 . . 
	ld (ix+00eh),050h		;198f	dd 36 0e 50 	. 6 . P 
l1993h:
	ld a,082h		;1993	3e 82 	> . 
	ld (0ffffh),a		;1995	32 ff ff 	2 . . 
	ld a,001h		;1998	3e 01 	> . 
	call sub_02b3h		;199a	cd b3 02 	. . . 
	call sub_265ch		;199d	cd 5c 26 	. \ & 
	ld hl,0c03fh		;19a0	21 3f c0 	! ? . 
	dec (hl)			;19a3	35 	5 
	jp nz,l1993h		;19a4	c2 93 19 	. . . 
	ld ix,0c300h		;19a7	dd 21 00 c3 	. ! . . 
	call sub_2752h		;19ab	cd 52 27 	. R ' 
	ld ix,0c320h		;19ae	dd 21 20 c3 	. !   . 
	call sub_2752h		;19b2	cd 52 27 	. R ' 
	ld ix,0c340h		;19b5	dd 21 40 c3 	. ! @ . 
	call sub_2752h		;19b9	cd 52 27 	. R ' 
	call sub_265ch		;19bc	cd 5c 26 	. \ & 
	ld a,00ah		;19bf	3e 0a 	> . 
	ld (0c01fh),a		;19c1	32 1f c0 	2 . . 
	ld b,005h		;19c4	06 05 	. . 
	jp l0310h		;19c6	c3 10 03 	. . . 
	ld a,085h		;19c9	3e 85 	> . 
	ld (0ffffh),a		;19cb	32 ff ff 	2 . . 
	ld hl,(0c038h)		;19ce	2a 38 c0 	* 8 . 
	ld de,(0c03ah)		;19d1	ed 5b 3a c0 	. [ : . 
	ld bc,l1200h+2		;19d5	01 02 12 	. . . 
	call l0160h		;19d8	cd 60 01 	. ` . 
	ld de,(0c03ah)		;19db	ed 5b 3a c0 	. [ : . 
	inc de			;19df	13 	. 
	inc de			;19e0	13 	. 
	ld (0c03ah),de		;19e1	ed 53 3a c0 	. S : . 
	ld hl,0a18dh		;19e5	21 8d a1 	! . . 
	ld bc,l1200h+2		;19e8	01 02 12 	. . . 
	call l0160h		;19eb	cd 60 01 	. ` . 
	ld de,(0c03ah)		;19ee	ed 5b 3a c0 	. [ : . 
	inc de			;19f2	13 	. 
	inc de			;19f3	13 	. 
	ld (0c03ah),de		;19f4	ed 53 3a c0 	. S : . 
	ld hl,0a1b1h		;19f8	21 b1 a1 	! . . 
	ld bc,l1200h+2		;19fb	01 02 12 	. . . 
	call l0160h		;19fe	cd 60 01 	. ` . 
	ld de,(0c03ah)		;1a01	ed 5b 3a c0 	. [ : . 
	dec de			;1a05	1b 	. 
	dec de			;1a06	1b 	. 
	dec de			;1a07	1b 	. 
	dec de			;1a08	1b 	. 
	ld (0c03ah),de		;1a09	ed 53 3a c0 	. S : . 
	ret			;1a0d	c9 	. 
l1a0eh:
	set 7,(hl)		;1a0e	cb fe 	. . 
	call sub_02deh		;1a10	cd de 02 	. . . 
	call sub_09a6h		;1a13	cd a6 09 	. . . 
	call sub_02d0h		;1a16	cd d0 02 	. . . 
	ld a,082h		;1a19	3e 82 	> . 
	ld (0ffffh),a		;1a1b	32 ff ff 	2 . . 
	call 09df3h		;1a1e	cd f3 9d 	. . . 
	xor a			;1a21	af 	. 
	ld (0c03ch),a		;1a22	32 3c c0 	2 < . 
	ld (0c03dh),a		;1a25	32 3d c0 	2 = . 
	ld a,003h		;1a28	3e 03 	> . 
	ld (0c03eh),a		;1a2a	32 3e c0 	2 > . 
	ld a,085h		;1a2d	3e 85 	> . 
	ld (0ffffh),a		;1a2f	32 ff ff 	2 . . 
	ld hl,l1b5fh		;1a32	21 5f 1b 	! _ . 
	ld de,0c000h		;1a35	11 00 c0 	. . . 
	ld bc,l0010h		;1a38	01 10 00 	. . . 
	call sub_0131h		;1a3b	cd 31 01 	. 1 . 
	xor a			;1a3e	af 	. 
	ld de,0c010h		;1a3f	11 10 c0 	. . . 
	call l012bh		;1a42	cd 2b 01 	. + . 
	ld hl,0a1d5h		;1a45	21 d5 a1 	! . . 
	ld de,04000h		;1a48	11 00 40 	. . @ 
	call sub_0260h		;1a4b	cd 60 02 	. ` . 
	ld de,078c8h		;1a4e	11 c8 78 	. . x 
	ld (0c03ah),de		;1a51	ed 53 3a c0 	. S : . 
	ld hl,09e75h		;1a55	21 75 9e 	! u . 
	ld bc,l1200h+2		;1a58	01 02 12 	. . . 
	call l0160h		;1a5b	cd 60 01 	. ` . 
	ld de,(0c03ah)		;1a5e	ed 5b 3a c0 	. [ : . 
	inc de			;1a62	13 	. 
	inc de			;1a63	13 	. 
	ld (0c03ah),de		;1a64	ed 53 3a c0 	. S : . 
	ld hl,09e99h		;1a68	21 99 9e 	! . . 
	ld bc,l1200h+2		;1a6b	01 02 12 	. . . 
	call l0160h		;1a6e	cd 60 01 	. ` . 
	ld de,(0c03ah)		;1a71	ed 5b 3a c0 	. [ : . 
	inc de			;1a75	13 	. 
	inc de			;1a76	13 	. 
	ld (0c03ah),de		;1a77	ed 53 3a c0 	. S : . 
	ld hl,0a18dh		;1a7b	21 8d a1 	! . . 
	ld bc,l1200h+2		;1a7e	01 02 12 	. . . 
	call l0160h		;1a81	cd 60 01 	. ` . 
	ld de,(0c03ah)		;1a84	ed 5b 3a c0 	. [ : . 
	inc de			;1a88	13 	. 
	inc de			;1a89	13 	. 
	ld (0c03ah),de		;1a8a	ed 53 3a c0 	. S : . 
	ld hl,0a1b1h		;1a8e	21 b1 a1 	! . . 
	ld bc,l1200h+2		;1a91	01 02 12 	. . . 
	call l0160h		;1a94	cd 60 01 	. ` . 
	ld de,078c8h		;1a97	11 c8 78 	. . x 
	inc de			;1a9a	13 	. 
	inc de			;1a9b	13 	. 
	ld (0c03ah),de		;1a9c	ed 53 3a c0 	. S : . 
	ld a,001h		;1aa0	3e 01 	> . 
	ld (0c03ch),a		;1aa2	32 3c c0 	2 < . 
	ld a,087h		;1aa5	3e 87 	> . 
	ld (0ffffh),a		;1aa7	32 ff ff 	2 . . 
	ld de,06800h		;1aaa	11 00 68 	. . h 
	ld bc,l0020h		;1aad	01 20 00 	.   . 
	ld l,000h		;1ab0	2e 00 	. . 
	call sub_0156h		;1ab2	cd 56 01 	. V . 
	ld hl,0a209h		;1ab5	21 09 a2 	! . . 
	ld de,06820h		;1ab8	11 20 68 	.   h 
	ld bc,l0020h		;1abb	01 20 00 	.   . 
	call sub_0131h		;1abe	cd 31 01 	. 1 . 
	ld hl,08269h		;1ac1	21 69 82 	! i . 
	ld de,06840h		;1ac4	11 40 68 	. @ h 
	ld bc,l0140h		;1ac7	01 40 01 	. @ . 
	call sub_0131h		;1aca	cd 31 01 	. 1 . 
	ld a,003h		;1acd	3e 03 	> . 
	ld (0c0f8h),a		;1acf	32 f8 c0 	2 . . 
	ld hl,0c300h		;1ad2	21 00 c3 	! . . 
	ld (0c0f9h),hl		;1ad5	22 f9 c0 	" . . 
	ld a,083h		;1ad8	3e 83 	> . 
	ld (0ffffh),a		;1ada	32 ff ff 	2 . . 
	ld hl,0bb6ah		;1add	21 6a bb 	! j . 
	ld de,06c00h		;1ae0	11 00 6c 	. . l 
	call sub_0260h		;1ae3	cd 60 02 	. ` . 
	ld ix,0c340h		;1ae6	dd 21 40 c3 	. ! @ . 
	ld (ix+000h),062h		;1aea	dd 36 00 62 	. 6 . b 
	ld a,082h		;1aee	3e 82 	> . 
	ld (0ffffh),a		;1af0	32 ff ff 	2 . . 
	call sub_265ch		;1af3	cd 5c 26 	. \ & 
	ld a,085h		;1af6	3e 85 	> . 
	ld (0ffffh),a		;1af8	32 ff ff 	2 . . 
	ld a,050h		;1afb	3e 50 	> P 
	ld (0c03fh),a		;1afd	32 3f c0 	2 ? . 
	ld a,086h		;1b00	3e 86 	> . 
	ld (0c110h),a		;1b02	32 10 c1 	2 . . 
	ei			;1b05	fb 	. 
	jp sub_02c3h		;1b06	c3 c3 02 	. . . 
	bit 0,(ix+001h)		;1b09	dd cb 01 46 	. . . F 
	jp nz,l1b50h		;1b0d	c2 50 1b 	. P . 
	set 0,(ix+001h)		;1b10	dd cb 01 c6 	. . . . 
	ld (ix+005h),008h		;1b14	dd 36 05 08 	. 6 . . 
	ld (ix+006h),008h		;1b18	dd 36 06 08 	. 6 . . 
	ld a,(0c023h)		;1b1c	3a 23 c0 	: # . 
	add a,a			;1b1f	87 	. 
	ld c,a			;1b20	4f 	O 
	ld b,000h		;1b21	06 00 	. . 
	ld hl,l1b6dh		;1b23	21 6d 1b 	! m . 
	add hl,bc			;1b26	09 	. 
	ld a,(hl)			;1b27	7e 	~ 
	ld (ix+00ch),a		;1b28	dd 77 0c 	. w . 
	inc hl			;1b2b	23 	# 
	ld a,(hl)			;1b2c	7e 	~ 
	ld b,a			;1b2d	47 	G 
	ld a,(0c01fh)		;1b2e	3a 1f c0 	: . . 
	and 07fh		;1b31	e6 7f 	.  
	cp 003h		;1b33	fe 03 	. . 
	jp z,l1b4ch		;1b35	ca 4c 1b 	. L . 
	ld a,b			;1b38	78 	x 
	sub 018h		;1b39	d6 18 	. . 
	ld b,a			;1b3b	47 	G 
	ld a,(0c092h)		;1b3c	3a 92 c0 	: . . 
	or a			;1b3f	b7 	. 
l1b40h:
	jr z,l1b4ch		;1b40	28 0a 	( . 
	ld (ix+00ch),05eh		;1b42	dd 36 0c 5e 	. 6 . ^ 
	ld (ix+00eh),046h		;1b46	dd 36 0e 46 	. 6 . F 
	jr l1b50h		;1b4a	18 04 	. . 
l1b4ch:
	ld a,b			;1b4c	78 	x 
	ld (ix+00eh),a		;1b4d	dd 77 0e 	. w . 
l1b50h:
	ld hl,08a18h		;1b50	21 18 8a 	! . . 
	jp l27d6h		;1b53	c3 d6 27 	. . ' 
	ld (ix+007h),073h		;1b56	dd 36 07 73 	. 6 . s 
	ld (ix+008h),080h		;1b5a	dd 36 08 80 	. 6 . . 
	ret			;1b5e	c9 	. 
l1b5fh:
	nop			;1b5f	00 	. 
	cpl			;1b60	2f 	/ 
	dec bc			;1b61	0b 	. 
	ld b,001h		;1b62	06 01 	. . 
	inc c			;1b64	0c 	. 
	ex af,af'			;1b65	08 	. 
	inc b			;1b66	04 	. 
	ccf			;1b67	3f 	? 
	ld a,038h		;1b68	3e 38 	> 8 
	inc bc			;1b6a	03 	. 
	jr nc,l1b6dh		;1b6b	30 00 	0 . 
l1b6dh:
	rrca			;1b6d	0f 	. 
	nop			;1b6e	00 	. 
	ld c,l			;1b6f	4d 	M 
	ld (hl),h			;1b70	74 	t 
	ld b,h			;1b71	44 	D 
	ld h,h			;1b72	64 	d 
	ld d,e			;1b73	53 	S 
	ld e,h			;1b74	5c 	\ 
	ld e,d			;1b75	5a 	Z 
	ld c,(hl)			;1b76	4e 	N 
	ld h,d			;1b77	62 	b 
	ld c,(hl)			;1b78	4e 	N 
	ld (hl),b			;1b79	70 	p 
	ld b,l			;1b7a	45 	E 
	ld l,b			;1b7b	68 	h 
	jr nc,l1bfbh		;1b7c	30 7d 	0 } 
	ld hl,(l258dh)		;1b7e	2a 8d 25 	* . % 
	sbc a,e			;1b81	9b 	. 
	ld (02aadh),a		;1b82	32 ad 2a 	2 . * 
	ret nz			;1b85	c0 	. 
	jr nc,l1b40h		;1b86	30 b8 	0 . 
	ld b,l			;1b88	45 	E 
	ld (hl),b			;1b89	70 	p 
	add a,b			;1b8a	80 	. 
	sub b			;1b8b	90 	. 
	ld l,(hl)			;1b8c	6e 	n 
	and h			;1b8d	a4 	. 
	ld b,h			;1b8e	44 	D 
	or h			;1b8f	b4 	. 
	ld (hl),b			;1b90	70 	p 
	exx			;1b91	d9 	. 
	bit 7,(hl)		;1b92	cb 7e 	. ~ 
	jp z,l1ccch		;1b94	ca cc 1c 	. . . 
	bit 6,(hl)		;1b97	cb 76 	. v 
	jp nz,l1bfbh		;1b99	c2 fb 1b 	. . . 
	ld a,009h		;1b9c	3e 09 	> . 
	call sub_02b3h		;1b9e	cd b3 02 	. . . 
	ld a,(0c011h)		;1ba1	3a 11 c0 	: . . 
	or a			;1ba4	b7 	. 
	jr z,l1badh		;1ba5	28 06 	( . 
	ld a,007h		;1ba7	3e 07 	> . 
	ld (0c01fh),a		;1ba9	32 1f c0 	2 . . 
	ret			;1bac	c9 	. 
l1badh:
	call sub_265ch		;1bad	cd 5c 26 	. \ & 
	ld hl,0c055h		;1bb0	21 55 c0 	! U . 
	jp l1e77h		;1bb3	c3 77 1e 	. w . 
	ld hl,0c032h		;1bb6	21 32 c0 	! 2 . 
	ld de,07d48h		;1bb9	11 48 7d 	. H } 
	call sub_0421h		;1bbc	cd 21 04 	. ! . 
	call 041f2h		;1bbf	cd f2 41 	. . A 
	ld a,(0c057h)		;1bc2	3a 57 c0 	: W . 
	or a			;1bc5	b7 	. 
	ret z			;1bc6	c8 	. 
	ld d,a			;1bc7	57 	W 
	xor a			;1bc8	af 	. 
	ld (0c057h),a		;1bc9	32 57 c0 	2 W . 
	ld a,086h		;1bcc	3e 86 	> . 
	ld (0ffffh),a		;1bce	32 ff ff 	2 . . 
	ld a,(0c023h)		;1bd1	3a 23 c0 	: # . 
	ld hl,l1f71h		;1bd4	21 71 1f 	! q . 
	rst 10h			;1bd7	d7 	. 
	ld b,003h		;1bd8	06 03 	. . 
l1bdah:
	push bc			;1bda	c5 	. 
	ld a,(hl)			;1bdb	7e 	~ 
	cp d			;1bdc	ba 	. 
	jr nz,l1bf3h		;1bdd	20 14 	  . 
	inc hl			;1bdf	23 	# 
	push hl			;1be0	e5 	. 
	ld a,(hl)			;1be1	7e 	~ 
	inc hl			;1be2	23 	# 
	ld h,(hl)			;1be3	66 	f 
	ld l,a			;1be4	6f 	o 
	set 0,(hl)		;1be5	cb c6 	. . 
	pop hl			;1be7	e1 	. 
	inc hl			;1be8	23 	# 
	inc hl			;1be9	23 	# 
	ld e,(hl)			;1bea	5e 	^ 
	inc hl			;1beb	23 	# 
	ld d,(hl)			;1bec	56 	V 
	ld bc,00306h		;1bed	01 06 03 	. . . 
	call sub_24fah		;1bf0	cd fa 24 	. . $ 
l1bf3h:
	ld bc,l0003h+2		;1bf3	01 05 00 	. . . 
	add hl,bc			;1bf6	09 	. 
	pop bc			;1bf7	c1 	. 
	djnz l1bdah		;1bf8	10 e0 	. . 
	ret			;1bfa	c9 	. 
l1bfbh:
	call 09df3h		;1bfb	cd f3 9d 	. . . 
	call sub_02deh		;1bfe	cd de 02 	. . . 
	ld a,082h		;1c01	3e 82 	> . 
	ld (0ffffh),a		;1c03	32 ff ff 	2 . . 
	ld a,08ah		;1c06	3e 8a 	> . 
	ld (0c01fh),a		;1c08	32 1f c0 	2 . . 
	ld de,0c800h		;1c0b	11 00 c8 	. . . 
	ld hl,0d000h		;1c0e	21 00 d0 	! . . 
	ld bc,l0700h		;1c11	01 00 07 	. . . 
	ldir		;1c14	ed b0 	. . 
	ld hl,0c800h		;1c16	21 00 c8 	! . . 
	ld de,07800h		;1c19	11 00 78 	. . x 
	ld bc,l0700h		;1c1c	01 00 07 	. . . 
	call sub_0131h		;1c1f	cd 31 01 	. 1 . 
	call 0697ch		;1c22	cd 7c 69 	. | i 
	ld hl,0c0cah		;1c25	21 ca c0 	! . . 
	ld de,0c0a0h		;1c28	11 a0 c0 	. . . 
	ld bc,l002ah		;1c2b	01 2a 00 	. * . 
	ldir		;1c2e	ed b0 	. . 
	ld a,(0c023h)		;1c30	3a 23 c0 	: # . 
	ld c,a			;1c33	4f 	O 
	ld b,000h		;1c34	06 00 	. . 
	ld hl,00d89h		;1c36	21 89 0d 	! . . 
	add hl,bc			;1c39	09 	. 
	ld a,(hl)			;1c3a	7e 	~ 
	ld (0c110h),a		;1c3b	32 10 c1 	2 . . 
	ld a,01eh		;1c3e	3e 1e 	> . 
	ld (0c0f8h),a		;1c40	32 f8 c0 	2 . . 
	ld de,0c300h		;1c43	11 00 c3 	. . . 
	ld hl,0cfa0h		;1c46	21 a0 cf 	! . . 
	ld bc,l0020h		;1c49	01 20 00 	.   . 
	ldir		;1c4c	ed b0 	. . 
	ld ix,0c300h		;1c4e	dd 21 00 c3 	. ! . . 
	call sub_298bh		;1c52	cd 8b 29 	. . ) 
	call sub_265ch		;1c55	cd 5c 26 	. \ & 
	call sub_10c5h		;1c58	cd c5 10 	. . . 
	ld a,083h		;1c5b	3e 83 	> . 
	ld (0ffffh),a		;1c5d	32 ff ff 	2 . . 
	call sub_0e31h		;1c60	cd 31 0e 	. 1 . 
	ld a,085h		;1c63	3e 85 	> . 
	ld (0ffffh),a		;1c65	32 ff ff 	2 . . 
	ld hl,0b2b1h		;1c68	21 b1 b2 	! . . 
	ld de,05600h		;1c6b	11 00 56 	. . V 
	call sub_0260h		;1c6e	cd 60 02 	. ` . 
	ld a,082h		;1c71	3e 82 	> . 
	ld (0ffffh),a		;1c73	32 ff ff 	2 . . 
	ld a,(0c054h)		;1c76	3a 54 c0 	: T . 
	cp 007h		;1c79	fe 07 	. . 
	jr c,l1c9eh		;1c7b	38 21 	8 ! 
	cp 008h		;1c7d	fe 08 	. . 
	jr z,l1c9eh		;1c7f	28 1d 	( . 
	ld a,087h		;1c81	3e 87 	> . 
	ld (0ffffh),a		;1c83	32 ff ff 	2 . . 
	ld hl,09b29h		;1c86	21 29 9b 	! ) . 
	ld de,06200h		;1c89	11 00 62 	. . b 
	ld bc,l0020h		;1c8c	01 20 00 	.   . 
	call sub_0131h		;1c8f	cd 31 01 	. 1 . 
	ld hl,09429h		;1c92	21 29 94 	! ) . 
	ld de,06220h		;1c95	11 20 62 	.   b 
	ld bc,l01c0h		;1c98	01 c0 01 	. . . 
	call sub_0131h		;1c9b	cd 31 01 	. 1 . 
l1c9eh:
	ld a,(0c06ch)		;1c9e	3a 6c c0 	: l . 
	ld (0c069h),a		;1ca1	32 69 c0 	2 i . 
	ld hl,(0c06dh)		;1ca4	2a 6d c0 	* m . 
	ld (0c0fdh),hl		;1ca7	22 fd c0 	" . . 
	xor a			;1caa	af 	. 
	ld (0c011h),a		;1cab	32 11 c0 	2 . . 
	ld (0c055h),a		;1cae	32 55 c0 	2 U . 
	ld (0c056h),a		;1cb1	32 56 c0 	2 V . 
	ld a,082h		;1cb4	3e 82 	> . 
	ld (0ffffh),a		;1cb6	32 ff ff 	2 . . 
	ld e,026h		;1cb9	1e 26 	. & 
	ld d,080h		;1cbb	16 80 	. . 
	rst 8			;1cbd	cf 	. 
	ei			;1cbe	fb 	. 
	ld a,009h		;1cbf	3e 09 	> . 
	call sub_02b3h		;1cc1	cd b3 02 	. . . 
	call sub_02c3h		;1cc4	cd c3 02 	. . . 
	ld b,00ah		;1cc7	06 0a 	. . 
	jp l0310h		;1cc9	c3 10 03 	. . . 
l1ccch:
	set 7,(hl)		;1ccc	cb fe 	. . 
	call 09df3h		;1cce	cd f3 9d 	. . . 
	ld hl,0c0a0h		;1cd1	21 a0 c0 	! . . 
	ld de,0c0cah		;1cd4	11 ca c0 	. . . 
	ld bc,l002ah		;1cd7	01 2a 00 	. * . 
	ldir		;1cda	ed b0 	. . 
	dec hl			;1cdc	2b 	+ 
	ld (hl),000h		;1cdd	36 00 	6 . 
	ld d,h			;1cdf	54 	T 
	ld e,l			;1ce0	5d 	] 
	dec de			;1ce1	1b 	. 
	ld bc,l0029h		;1ce2	01 29 00 	. ) . 
	lddr		;1ce5	ed b8 	. . 
	call sub_02deh		;1ce7	cd de 02 	. . . 
	ld b,005h		;1cea	06 05 	. . 
	call l0310h		;1cec	cd 10 03 	. . . 
	call sub_02d0h		;1cef	cd d0 02 	. . . 
	ld hl,0c800h		;1cf2	21 00 c8 	! . . 
	ld de,0d000h		;1cf5	11 00 d0 	. . . 
	ld bc,l0700h		;1cf8	01 00 07 	. . . 
	ldir		;1cfb	ed b0 	. . 
	ld a,085h		;1cfd	3e 85 	> . 
	ld (0ffffh),a		;1cff	32 ff ff 	2 . . 
	ld hl,0908eh		;1d02	21 8e 90 	! . . 
	ld de,0c800h		;1d05	11 00 c8 	. . . 
	call sub_0e06h		;1d08	cd 06 0e 	. . . 
	ld a,001h		;1d0b	3e 01 	> . 
	ld (0c0f8h),a		;1d0d	32 f8 c0 	2 . . 
	ld hl,0cf80h		;1d10	21 80 cf 	! . . 
	ld de,0cf81h		;1d13	11 81 cf 	. . . 
	ld bc,0005fh		;1d16	01 5f 00 	. _ . 
	ld (hl),000h		;1d19	36 00 	6 . 
	ldir		;1d1b	ed b0 	. . 
	ld a,082h		;1d1d	3e 82 	> . 
	ld (0ffffh),a		;1d1f	32 ff ff 	2 . . 
	ld hl,0c300h		;1d22	21 00 c3 	! . . 
	ld de,0cfa0h		;1d25	11 a0 cf 	. . . 
	ld bc,l0020h		;1d28	01 20 00 	.   . 
	ldir		;1d2b	ed b0 	. . 
	ld ix,0c300h		;1d2d	dd 21 00 c3 	. ! . . 
	ld (ix+000h),001h		;1d31	dd 36 00 01 	. 6 . . 
	ld (ix+00ch),020h		;1d35	dd 36 0c 20 	. 6 .   
	ld (ix+00eh),088h		;1d39	dd 36 0e 88 	. 6 . . 
	call sub_298bh		;1d3d	cd 8b 29 	. . ) 
	call sub_265ch		;1d40	cd 5c 26 	. \ & 
	ld a,(0c056h)		;1d43	3a 56 c0 	: V . 
	or a			;1d46	b7 	. 
	jr z,l1d53h		;1d47	28 0a 	( . 
	ld hl,01f28h		;1d49	21 28 1f 	! ( . 
	rst 10h			;1d4c	d7 	. 
	set 0,(hl)		;1d4d	cb c6 	. . 
	xor a			;1d4f	af 	. 
	ld (0c056h),a		;1d50	32 56 c0 	2 V . 
l1d53h:
	ld a,003h		;1d53	3e 03 	> . 
	ld (0ffffh),a		;1d55	32 ff ff 	2 . . 
	ld de,05800h		;1d58	11 00 58 	. . X 
	ld hl,0b9eah		;1d5b	21 ea b9 	! . . 
	ld bc,l0050h		;1d5e	01 50 00 	. P . 
	ld a,001h		;1d61	3e 01 	> . 
	call l01a3h		;1d63	cd a3 01 	. . . 
	ld a,085h		;1d66	3e 85 	> . 
	ld (0ffffh),a		;1d68	32 ff ff 	2 . . 
	ld hl,093f3h		;1d6b	21 f3 93 	! . . 
	ld de,04520h		;1d6e	11 20 45 	.   E 
	call sub_0260h		;1d71	cd 60 02 	. ` . 
	ld hl,09840h		;1d74	21 40 98 	! @ . 
	ld de,04e00h		;1d77	11 00 4e 	. . N 
	call sub_0260h		;1d7a	cd 60 02 	. ` . 
	ld de,0cb08h		;1d7d	11 08 cb 	. . . 
	ld hl,09800h		;1d80	21 00 98 	! . . 
	ld bc,l0808h		;1d83	01 08 08 	. . . 
	call sub_24eah		;1d86	cd ea 24 	. . $ 
	ld hl,0af11h		;1d89	21 11 af 	! . . 
	ld de,05200h		;1d8c	11 00 52 	. . R 
	ld bc,l01c0h		;1d8f	01 c0 01 	. . . 
	call sub_0131h		;1d92	cd 31 01 	. 1 . 
	ld hl,0b291h		;1d95	21 91 b2 	! . . 
	ld de,05fe0h		;1d98	11 e0 5f 	. . _ 
	ld bc,l0020h		;1d9b	01 20 00 	.   . 
	call sub_0131h		;1d9e	cd 31 01 	. 1 . 
	ld hl,0b0b1h		;1da1	21 b1 b0 	! . . 
	ld de,05420h		;1da4	11 20 54 	.   T 
	ld bc,l01dfh+1		;1da7	01 e0 01 	. . . 
	call sub_0131h		;1daa	cd 31 01 	. 1 . 
	ld hl,l1f0ah		;1dad	21 0a 1f 	! . . 
	ld de,0c000h		;1db0	11 00 c0 	. . . 
	ld bc,l0020h		;1db3	01 20 00 	.   . 
	call sub_0131h		;1db6	cd 31 01 	. 1 . 
	ld a,001h		;1db9	3e 01 	> . 
	ld (0c055h),a		;1dbb	32 55 c0 	2 U . 
	ld a,(0c069h)		;1dbe	3a 69 c0 	: i . 
	ld (0c06ch),a		;1dc1	32 6c c0 	2 l . 
	ld a,028h		;1dc4	3e 28 	> ( 
	ld (0c069h),a		;1dc6	32 69 c0 	2 i . 
	ld hl,(0c0fdh)		;1dc9	2a fd c0 	* . . 
	ld (0c06dh),hl		;1dcc	22 6d c0 	" m . 
	ld hl,0cc06h		;1dcf	21 06 cc 	! . . 
	ld (0c0fdh),hl		;1dd2	22 fd c0 	" . . 
	ld a,016h		;1dd5	3e 16 	> . 
	ld (0c011h),a		;1dd7	32 11 c0 	2 . . 
	ld b,003h		;1dda	06 03 	. . 
	ld hl,0d7d0h		;1ddc	21 d0 d7 	! . . 
l1ddfh:
	ld a,(hl)			;1ddf	7e 	~ 
	or a			;1de0	b7 	. 
	jr z,l1dech		;1de1	28 09 	( . 
	ld de,l0003h+2		;1de3	11 05 00 	. . . 
	add hl,de			;1de6	19 	. 
	djnz l1ddfh		;1de7	10 f6 	. . 
	jp l1e3fh		;1de9	c3 3f 1e 	. ? . 
l1dech:
	ld a,001h		;1dec	3e 01 	> . 
	ld (0c011h),a		;1dee	32 11 c0 	2 . . 
	xor a			;1df1	af 	. 
	ld (0c057h),a		;1df2	32 57 c0 	2 W . 
	ld de,08006h		;1df5	11 06 80 	. . . 
	rst 8			;1df8	cf 	. 
	ld a,086h		;1df9	3e 86 	> . 
	ld (0ffffh),a		;1dfb	32 ff ff 	2 . . 
	ld a,(0c023h)		;1dfe	3a 23 c0 	: # . 
	ld hl,01f4fh		;1e01	21 4f 1f 	! O . 
	rst 10h			;1e04	d7 	. 
	ld a,003h		;1e05	3e 03 	> . 
	ld de,0d7d1h		;1e07	11 d1 d7 	. . . 
l1e0ah:
	ldi		;1e0a	ed a0 	. . 
	ldi		;1e0c	ed a0 	. . 
	ldi		;1e0e	ed a0 	. . 
	ldi		;1e10	ed a0 	. . 
	inc de			;1e12	13 	. 
	dec a			;1e13	3d 	= 
	jr nz,l1e0ah		;1e14	20 f4 	  . 
	dec de			;1e16	1b 	. 
	ld a,0ffh		;1e17	3e ff 	> . 
	ld (de),a			;1e19	12 	. 
	ld hl,0d7d0h		;1e1a	21 d0 d7 	! . . 
l1e1dh:
	push hl			;1e1d	e5 	. 
	ld a,(hl)			;1e1e	7e 	~ 
	cp 0ffh		;1e1f	fe ff 	. . 
	jp z,l1e3eh		;1e21	ca 3e 1e 	. > . 
	or a			;1e24	b7 	. 
	jr nz,l1e36h		;1e25	20 0f 	  . 
	inc hl			;1e27	23 	# 
	ld e,(hl)			;1e28	5e 	^ 
	inc hl			;1e29	23 	# 
	ld d,(hl)			;1e2a	56 	V 
	inc hl			;1e2b	23 	# 
	ld a,(hl)			;1e2c	7e 	~ 
	inc hl			;1e2d	23 	# 
	ld h,(hl)			;1e2e	66 	f 
	ld l,a			;1e2f	6f 	o 
	ld bc,00306h		;1e30	01 06 03 	. . . 
	call sub_24eah		;1e33	cd ea 24 	. . $ 
l1e36h:
	pop hl			;1e36	e1 	. 
	ld bc,l0003h+2		;1e37	01 05 00 	. . . 
	add hl,bc			;1e3a	09 	. 
	jp l1e1dh		;1e3b	c3 1d 1e 	. . . 
l1e3eh:
	pop hl			;1e3e	e1 	. 
l1e3fh:
	ld hl,l1ef8h		;1e3f	21 f8 1e 	! . . 
	ld de,0cd44h		;1e42	11 44 cd 	. D . 
	ld bc,l0012h		;1e45	01 12 00 	. . . 
	ldir		;1e48	ed b0 	. . 
	ld de,07800h		;1e4a	11 00 78 	. . x 
	ld hl,0c800h		;1e4d	21 00 c8 	! . . 
	ld bc,l0600h		;1e50	01 00 06 	. . . 
	call sub_0131h		;1e53	cd 31 01 	. 1 . 
	ld hl,0c032h		;1e56	21 32 c0 	! 2 . 
	ld de,07d48h		;1e59	11 48 7d 	. H } 
	call sub_0421h		;1e5c	cd 21 04 	. ! . 
	ld a,082h		;1e5f	3e 82 	> . 
	ld (0ffffh),a		;1e61	32 ff ff 	2 . . 
	ei			;1e64	fb 	. 
	call sub_02c3h		;1e65	cd c3 02 	. . . 
	ld a,(0c023h)		;1e68	3a 23 c0 	: # . 
	ld c,a			;1e6b	4f 	O 
	ld b,000h		;1e6c	06 00 	. . 
	ld hl,00d89h		;1e6e	21 89 0d 	! . . 
	add hl,bc			;1e71	09 	. 
	ld a,(hl)			;1e72	7e 	~ 
	ld (0c110h),a		;1e73	32 10 c1 	2 . . 
	ret			;1e76	c9 	. 
l1e77h:
	ld hl,0c055h		;1e77	21 55 c0 	! U . 
	bit 6,(hl)		;1e7a	cb 76 	. v 
	jr z,l1e8ah		;1e7c	28 0c 	( . 
	ld a,(0c31ah)		;1e7e	3a 1a c3 	: . . 
	cp 003h		;1e81	fe 03 	. . 
	ret z			;1e83	c8 	. 
	res 6,(hl)		;1e84	cb b6 	. . 
	xor a			;1e86	af 	. 
	ld (0c056h),a		;1e87	32 56 c0 	2 V . 
l1e8ah:
	ld a,(0c056h)		;1e8a	3a 56 c0 	: V . 
	or a			;1e8d	b7 	. 
	ret z			;1e8e	c8 	. 
	ld c,a			;1e8f	4f 	O 
	add a,a			;1e90	87 	. 
	add a,c			;1e91	81 	. 
	ld c,a			;1e92	4f 	O 
	ld b,000h		;1e93	06 00 	. . 
	ld hl,l1f33h		;1e95	21 33 1f 	! 3 . 
	add hl,bc			;1e98	09 	. 
	ld bc,0c030h		;1e99	01 30 c0 	. 0 . 
	call sub_03fah		;1e9c	cd fa 03 	. . . 
	jp c,l1ee6h		;1e9f	da e6 1e 	. . . 
	dec hl			;1ea2	2b 	+ 
	dec hl			;1ea3	2b 	+ 
	dec bc			;1ea4	0b 	. 
	dec bc			;1ea5	0b 	. 
	call sub_03e9h		;1ea6	cd e9 03 	. . . 
	ld hl,0c055h		;1ea9	21 55 c0 	! U . 
	set 6,(hl)		;1eac	cb f6 	. . 
	ld a,(0c056h)		;1eae	3a 56 c0 	: V . 
	ld (0c057h),a		;1eb1	32 57 c0 	2 W . 
	cp 007h		;1eb4	fe 07 	. . 
	jr nc,l1ec4h		;1eb6	30 0c 	0 . 
	ld hl,01f28h		;1eb8	21 28 1f 	! ( . 
	rst 10h			;1ebb	d7 	. 
	set 0,(hl)		;1ebc	cb c6 	. . 
	xor a			;1ebe	af 	. 
	ld (0c056h),a		;1ebf	32 56 c0 	2 V . 
	jr l1ed2h		;1ec2	18 0e 	. . 
l1ec4h:
	cp 008h		;1ec4	fe 08 	. . 
	jr z,l1ed8h		;1ec6	28 10 	( . 
	ld (0c054h),a		;1ec8	32 54 c0 	2 T . 
	xor a			;1ecb	af 	. 
	ld (0c05ah),a		;1ecc	32 5a c0 	2 Z . 
	ld (0c056h),a		;1ecf	32 56 c0 	2 V . 
l1ed2h:
	ld a,003h		;1ed2	3e 03 	> . 
	ld (0c011h),a		;1ed4	32 11 c0 	2 . . 
	ret			;1ed7	c9 	. 
l1ed8h:
	ld hl,0c025h		;1ed8	21 25 c0 	! % . 
	ld a,(hl)			;1edb	7e 	~ 
	add a,001h		;1edc	c6 01 	. . 
	daa			;1ede	27 	' 
	ld (hl),a			;1edf	77 	w 
	xor a			;1ee0	af 	. 
	ld (0c056h),a		;1ee1	32 56 c0 	2 V . 
	jr l1ed2h		;1ee4	18 ec 	. . 
l1ee6h:
	xor a			;1ee6	af 	. 
	ld (0c056h),a		;1ee7	32 56 c0 	2 V . 
	ld (0c057h),a		;1eea	32 57 c0 	2 W . 
	ld hl,0c055h		;1eed	21 55 c0 	! U . 
	set 6,(hl)		;1ef0	cb f6 	. . 
	ld a,002h		;1ef2	3e 02 	> . 
	ld (0c011h),a		;1ef4	32 11 c0 	2 . . 
	ret			;1ef7	c9 	. 
l1ef8h:
	rst 38h			;1ef8	ff 	. 
	nop			;1ef9	00 	. 
	nop			;1efa	00 	. 
	nop			;1efb	00 	. 
	nop			;1efc	00 	. 
	nop			;1efd	00 	. 
	nop			;1efe	00 	. 
	nop			;1eff	00 	. 
	nop			;1f00	00 	. 
	nop			;1f01	00 	. 
	nop			;1f02	00 	. 
	nop			;1f03	00 	. 
	nop			;1f04	00 	. 
	nop			;1f05	00 	. 
	nop			;1f06	00 	. 
	nop			;1f07	00 	. 
	ret nz			;1f08	c0 	. 
	nop			;1f09	00 	. 
l1f0ah:
	jr nc,l1f4bh		;1f0a	30 3f 	0 ? 
	ld (bc),a			;1f0c	02 	. 
	inc bc			;1f0d	03 	. 
	rrca			;1f0e	0f 	. 
	dec bc			;1f0f	0b 	. 
	nop			;1f10	00 	. 
	ld b,025h		;1f11	06 25 	. % 
	ld hl,(02f01h)		;1f13	2a 01 2f 	* . / 
	inc a			;1f16	3c 	< 
	inc c			;1f17	0c 	. 
	ex af,af'			;1f18	08 	. 
	inc a			;1f19	3c 	< 
	jr nc,l1f5bh		;1f1a	30 3f 	0 ? 
	dec b			;1f1c	05 	. 
	dec bc			;1f1d	0b 	. 
	inc bc			;1f1e	03 	. 
	ld (bc),a			;1f1f	02 	. 
	nop			;1f20	00 	. 
	jr nc,l1f5fh		;1f21	30 3c 	0 < 
	inc c			;1f23	0c 	. 
	rrca			;1f24	0f 	. 
	ex af,af'			;1f25	08 	. 
	ld a,(sub_0334h+2)		;1f26	3a 36 03 	: 6 . 
	ld a,(bc)			;1f29	0a 	. 
	ld c,c			;1f2a	49 	I 
	ret nz			;1f2b	c0 	. 
	ld c,d			;1f2c	4a 	J 
	ret nz			;1f2d	c0 	. 
	ld b,(hl)			;1f2e	46 	F 
	ret nz			;1f2f	c0 	. 
	ld b,a			;1f30	47 	G 
	ret nz			;1f31	c0 	. 
	ld c,b			;1f32	48 	H 
l1f33h:
	ret nz			;1f33	c0 	. 
	ld c,l			;1f34	4d 	M 
	ret nz			;1f35	c0 	. 
	ld (de),a			;1f36	12 	. 
	nop			;1f37	00 	. 
	nop			;1f38	00 	. 
	djnz l1f3bh		;1f39	10 00 	. . 
l1f3bh:
	nop			;1f3b	00 	. 
	djnz l1f3eh		;1f3c	10 00 	. . 
l1f3eh:
	nop			;1f3e	00 	. 
	ld (de),a			;1f3f	12 	. 
	nop			;1f40	00 	. 
	nop			;1f41	00 	. 
	djnz l1f44h		;1f42	10 00 	. . 
l1f44h:
	nop			;1f44	00 	. 
	djnz l1f47h		;1f45	10 00 	. . 
l1f47h:
	nop			;1f47	00 	. 
	jr nz,l1f4ah		;1f48	20 00 	  . 
l1f4ah:
	nop			;1f4a	00 	. 
l1f4bh:
	ld d,b			;1f4b	50 	P 
	nop			;1f4c	00 	. 
	nop			;1f4d	00 	. 
	jr nz,l1f50h		;1f4e	20 00 	  . 
l1f50h:
	nop			;1f50	00 	. 
	ld b,l			;1f51	45 	E 
	cp (hl)			;1f52	be 	. 
	ld b,l			;1f53	45 	E 
	cp (hl)			;1f54	be 	. 
	ld d,c			;1f55	51 	Q 
	cp (hl)			;1f56	be 	. 
	ld d,c			;1f57	51 	Q 
	cp (hl)			;1f58	be 	. 
	ld d,c			;1f59	51 	Q 
	cp (hl)			;1f5a	be 	. 
l1f5bh:
	ld d,c			;1f5b	51 	Q 
	cp (hl)			;1f5c	be 	. 
	ld e,l			;1f5d	5d 	] 
	cp (hl)			;1f5e	be 	. 
l1f5fh:
	ld e,l			;1f5f	5d 	] 
	cp (hl)			;1f60	be 	. 
	ld l,c			;1f61	69 	i 
	cp (hl)			;1f62	be 	. 
	ld l,c			;1f63	69 	i 
	cp (hl)			;1f64	be 	. 
	ld (hl),l			;1f65	75 	u 
	cp (hl)			;1f66	be 	. 
	ld (hl),l			;1f67	75 	u 
	cp (hl)			;1f68	be 	. 
	ld (hl),l			;1f69	75 	u 
	cp (hl)			;1f6a	be 	. 
	ld (hl),l			;1f6b	75 	u 
	cp (hl)			;1f6c	be 	. 
	add a,c			;1f6d	81 	. 
	cp (hl)			;1f6e	be 	. 
	add a,c			;1f6f	81 	. 
	cp (hl)			;1f70	be 	. 
l1f71h:
	add a,c			;1f71	81 	. 
	cp (hl)			;1f72	be 	. 
	ld d,c			;1f73	51 	Q 
	cp a			;1f74	bf 	. 
	ld d,c			;1f75	51 	Q 
	cp a			;1f76	bf 	. 
	ld h,b			;1f77	60 	` 
	cp a			;1f78	bf 	. 
	ld h,b			;1f79	60 	` 
	cp a			;1f7a	bf 	. 
	ld h,b			;1f7b	60 	` 
	cp a			;1f7c	bf 	. 
	ld h,b			;1f7d	60 	` 
	cp a			;1f7e	bf 	. 
	ld l,a			;1f7f	6f 	o 
	cp a			;1f80	bf 	. 
	ld l,a			;1f81	6f 	o 
	cp a			;1f82	bf 	. 
	ld a,(hl)			;1f83	7e 	~ 
	cp a			;1f84	bf 	. 
	ld a,(hl)			;1f85	7e 	~ 
	cp a			;1f86	bf 	. 
	adc a,l			;1f87	8d 	. 
	cp a			;1f88	bf 	. 
	adc a,l			;1f89	8d 	. 
	cp a			;1f8a	bf 	. 
	adc a,l			;1f8b	8d 	. 
	cp a			;1f8c	bf 	. 
	adc a,l			;1f8d	8d 	. 
	cp a			;1f8e	bf 	. 
	sbc a,h			;1f8f	9c 	. 
	cp a			;1f90	bf 	. 
	sbc a,h			;1f91	9c 	. 
	cp a			;1f92	bf 	. 
	sbc a,h			;1f93	9c 	. 
	cp a			;1f94	bf 	. 
	exx			;1f95	d9 	. 
	bit 7,(hl)		;1f96	cb 7e 	. ~ 
	jp z,l2160h		;1f98	ca 60 21 	. ` ! 
	call sub_265ch		;1f9b	cd 5c 26 	. \ & 
	ld a,009h		;1f9e	3e 09 	> . 
	call sub_02b3h		;1fa0	cd b3 02 	. . . 
	ld a,(0c093h)		;1fa3	3a 93 c0 	: . . 
	or a			;1fa6	b7 	. 
	ret z			;1fa7	c8 	. 
	xor a			;1fa8	af 	. 
	ld (0c093h),a		;1fa9	32 93 c0 	2 . . 
	jr l1fb1h		;1fac	18 03 	. . 
	jp l2605h		;1fae	c3 05 26 	. . & 
l1fb1h:
	call 09df3h		;1fb1	cd f3 9d 	. . . 
	ld a,082h		;1fb4	3e 82 	> . 
	ld (0ffffh),a		;1fb6	32 ff ff 	2 . . 
	call sub_02deh		;1fb9	cd de 02 	. . . 
	ld de,0c800h		;1fbc	11 00 c8 	. . . 
	ld hl,0d000h		;1fbf	21 00 d0 	! . . 
	ld bc,l0700h		;1fc2	01 00 07 	. . . 
	ldir		;1fc5	ed b0 	. . 
	ld hl,0c800h		;1fc7	21 00 c8 	! . . 
	ld de,07800h		;1fca	11 00 78 	. . x 
	ld bc,l0700h		;1fcd	01 00 07 	. . . 
	call sub_0131h		;1fd0	cd 31 01 	. 1 . 
	call 0697ch		;1fd3	cd 7c 69 	. | i 
	ld hl,0c300h		;1fd6	21 00 c3 	! . . 
	ld (0c0f9h),hl		;1fd9	22 f9 c0 	" . . 
	ld a,01eh		;1fdc	3e 1e 	> . 
	ld (0c0f8h),a		;1fde	32 f8 c0 	2 . . 
	ld hl,0c0cah		;1fe1	21 ca c0 	! . . 
	ld de,0c0a0h		;1fe4	11 a0 c0 	. . . 
	ld bc,l002ah		;1fe7	01 2a 00 	. * . 
	ldir		;1fea	ed b0 	. . 
	ld a,(0c023h)		;1fec	3a 23 c0 	: # . 
	push af			;1fef	f5 	. 
	ld a,(0c092h)		;1ff0	3a 92 c0 	: . . 
	or a			;1ff3	b7 	. 
	jr z,l1ffah		;1ff4	28 04 	( . 
	ld hl,0c023h		;1ff6	21 23 c0 	! # . 
	inc (hl)			;1ff9	34 	4 
l1ffah:
	call sub_10c5h		;1ffa	cd c5 10 	. . . 
	ld a,083h		;1ffd	3e 83 	> . 
	ld (0ffffh),a		;1fff	32 ff ff 	2 . . 
	call sub_0e31h		;2002	cd 31 0e 	. 1 . 
	ld hl,08000h		;2005	21 00 80 	! . . 
	ld de,04020h		;2008	11 20 40 	.   @ 
	ld bc,l0480h		;200b	01 80 04 	. . . 
	call sub_0131h		;200e	cd 31 01 	. 1 . 
	pop af			;2011	f1 	. 
	ld (0c023h),a		;2012	32 23 c0 	2 # . 
	ld a,085h		;2015	3e 85 	> . 
	ld (0ffffh),a		;2017	32 ff ff 	2 . . 
	ld hl,0b2b1h		;201a	21 b1 b2 	! . . 
	ld de,05600h		;201d	11 00 56 	. . V 
	call sub_0260h		;2020	cd 60 02 	. ` . 
	ld a,087h		;2023	3e 87 	> . 
	ld (0ffffh),a		;2025	32 ff ff 	2 . . 
	ld a,(0c054h)		;2028	3a 54 c0 	: T . 
	cp 003h		;202b	fe 03 	. . 
	jr nz,l2057h		;202d	20 28 	  ( 
	ld hl,09cc9h		;202f	21 c9 9c 	! . . 
	ld de,06200h		;2032	11 00 62 	. . b 
	ld bc,00080h		;2035	01 80 00 	. . . 
	call sub_0131h		;2038	cd 31 01 	. 1 . 
	ld hl,09cc9h		;203b	21 c9 9c 	! . . 
	ld bc,00080h		;203e	01 80 00 	. . . 
	call l0292h		;2041	cd 92 02 	. . . 
	ld a,085h		;2044	3e 85 	> . 
	ld (0ffffh),a		;2046	32 ff ff 	2 . . 
	ld hl,0afb1h		;2049	21 b1 af 	! . . 
	ld de,06300h		;204c	11 00 63 	. . c 
	ld bc,00080h		;204f	01 80 00 	. . . 
	call sub_0131h		;2052	cd 31 01 	. 1 . 
	jr l2093h		;2055	18 3c 	. < 
l2057h:
	cp 004h		;2057	fe 04 	. . 
	jr nz,l207ah		;2059	20 1f 	  . 
	ld hl,084c9h		;205b	21 c9 84 	! . . 
	ld de,06280h		;205e	11 80 62 	. . b 
	ld bc,l00c0h		;2061	01 c0 00 	. . . 
	call sub_0131h		;2064	cd 31 01 	. 1 . 
	ld a,085h		;2067	3e 85 	> . 
	ld (0ffffh),a		;2069	32 ff ff 	2 . . 
	ld hl,0b031h		;206c	21 31 b0 	! 1 . 
	ld de,06200h		;206f	11 00 62 	. . b 
	ld bc,00080h		;2072	01 80 00 	. . . 
	call sub_0131h		;2075	cd 31 01 	. 1 . 
	jr l2093h		;2078	18 19 	. . 
l207ah:
	cp 005h		;207a	fe 05 	. . 
	jr nz,l2093h		;207c	20 15 	  . 
	ld hl,083a9h		;207e	21 a9 83 	! . . 
	ld de,06200h		;2081	11 00 62 	. . b 
	ld bc,l0020h		;2084	01 20 00 	.   . 
	call sub_0131h		;2087	cd 31 01 	. 1 . 
	ld hl,083a9h		;208a	21 a9 83 	! . . 
	ld bc,l0020h		;208d	01 20 00 	.   . 
	call l0292h		;2090	cd 92 02 	. . . 
l2093h:
	ld a,(0c023h)		;2093	3a 23 c0 	: # . 
	push af			;2096	f5 	. 
	ld a,(0c092h)		;2097	3a 92 c0 	: . . 
	or a			;209a	b7 	. 
	jr z,l20a1h		;209b	28 04 	( . 
	ld hl,0c023h		;209d	21 23 c0 	! # . 
	inc (hl)			;20a0	34 	4 
l20a1h:
	ld a,087h		;20a1	3e 87 	> . 
	ld (0ffffh),a		;20a3	32 ff ff 	2 . . 
	call sub_10fbh		;20a6	cd fb 10 	. . . 
	pop af			;20a9	f1 	. 
	ld (0c023h),a		;20aa	32 23 c0 	2 # . 
	ld a,082h		;20ad	3e 82 	> . 
	ld (0ffffh),a		;20af	32 ff ff 	2 . . 
	ld a,(0c054h)		;20b2	3a 54 c0 	: T . 
	cp 001h		;20b5	fe 01 	. . 
	jr nz,l20c0h		;20b7	20 07 	  . 
	ld ix,0c300h		;20b9	dd 21 00 c3 	. ! . . 
	call sub_2a37h		;20bd	cd 37 2a 	. 7 * 
l20c0h:
	ld ix,0cf80h		;20c0	dd 21 80 cf 	. ! . . 
	call sub_2752h		;20c4	cd 52 27 	. R ' 
	ld ix,0cfa0h		;20c7	dd 21 a0 cf 	. ! . . 
	call sub_2752h		;20cb	cd 52 27 	. R ' 
	ld ix,0cfc0h		;20ce	dd 21 c0 cf 	. ! . . 
	call sub_2752h		;20d2	cd 52 27 	. R ' 
	ld ix,0c300h		;20d5	dd 21 00 c3 	. ! . . 
	call sub_265ch		;20d9	cd 5c 26 	. \ & 
	call 0678dh		;20dc	cd 8d 67 	. . g 
	call 06b0eh		;20df	cd 0e 6b 	. . k 
	ld ix,0c300h		;20e2	dd 21 00 c3 	. ! . . 
	ld a,(0c023h)		;20e6	3a 23 c0 	: # . 
	ld c,a			;20e9	4f 	O 
	ld b,000h		;20ea	06 00 	. . 
	ld hl,00d89h		;20ec	21 89 0d 	! . . 
	add hl,bc			;20ef	09 	. 
	ld a,(hl)			;20f0	7e 	~ 
	ld (0c110h),a		;20f1	32 10 c1 	2 . . 
	ld a,(0c092h)		;20f4	3a 92 c0 	: . . 
	or a			;20f7	b7 	. 
	jr z,l2101h		;20f8	28 07 	( . 
	ld a,082h		;20fa	3e 82 	> . 
	ld (0c110h),a		;20fc	32 10 c1 	2 . . 
	jr l211ah		;20ff	18 19 	. . 
l2101h:
	ld a,(0c31ah)		;2101	3a 1a c3 	: . . 
	cp 005h		;2104	fe 05 	. . 
	jr nz,l211ah		;2106	20 12 	  . 
	ld a,083h		;2108	3e 83 	> . 
	ld (0c110h),a		;210a	32 10 c1 	2 . . 
	ld a,(0c023h)		;210d	3a 23 c0 	: # . 
	cp 010h		;2110	fe 10 	. . 
	jp nz,l211ah		;2112	c2 1a 21 	. . ! 
	ld a,084h		;2115	3e 84 	> . 
	ld (0c110h),a		;2117	32 10 c1 	2 . . 
l211ah:
	ld a,(0c054h)		;211a	3a 54 c0 	: T . 
	cp 007h		;211d	fe 07 	. . 
	jp c,l2137h		;211f	da 37 21 	. 7 ! 
	jp nz,l212dh		;2122	c2 2d 21 	. - ! 
	ld a,085h		;2125	3e 85 	> . 
	ld (0c110h),a		;2127	32 10 c1 	2 . . 
	jp l2137h		;212a	c3 37 21 	. 7 ! 
l212dh:
	cp 008h		;212d	fe 08 	. . 
	jp z,l2137h		;212f	ca 37 21 	. 7 ! 
	ld a,088h		;2132	3e 88 	> . 
	ld (0c110h),a		;2134	32 10 c1 	2 . . 
l2137h:
	ei			;2137	fb 	. 
	ld a,08ah		;2138	3e 8a 	> . 
	ld (0c01fh),a		;213a	32 1f c0 	2 . . 
	ld a,009h		;213d	3e 09 	> . 
	call sub_02b3h		;213f	cd b3 02 	. . . 
	ld a,(0c054h)		;2142	3a 54 c0 	: T . 
	or a			;2145	b7 	. 
	jr z,l2158h		;2146	28 10 	( . 
	cp 003h		;2148	fe 03 	. . 
	jr nc,l2158h		;214a	30 0c 	0 . 
	ld b,0aah		;214c	06 aa 	. . 
	cp 001h		;214e	fe 01 	. . 
	jr z,l2154h		;2150	28 02 	( . 
	ld b,0abh		;2152	06 ab 	. . 
l2154h:
	ld a,b			;2154	78 	x 
	ld (0c110h),a		;2155	32 10 c1 	2 . . 
l2158h:
	call sub_02c3h		;2158	cd c3 02 	. . . 
	ld b,00ah		;215b	06 0a 	. . 
	jp l0310h		;215d	c3 10 03 	. . . 
l2160h:
	set 7,(hl)		;2160	cb fe 	. . 
	call 09df3h		;2162	cd f3 9d 	. . . 
	ld hl,0c0a0h		;2165	21 a0 c0 	! . . 
	ld de,0c0cah		;2168	11 ca c0 	. . . 
	ld bc,l002ah		;216b	01 2a 00 	. * . 
	ldir		;216e	ed b0 	. . 
	dec hl			;2170	2b 	+ 
	ld (hl),000h		;2171	36 00 	6 . 
	ld d,h			;2173	54 	T 
	ld e,l			;2174	5d 	] 
	dec de			;2175	1b 	. 
	ld bc,l0029h		;2176	01 29 00 	. ) . 
	lddr		;2179	ed b8 	. . 
	call sub_02deh		;217b	cd de 02 	. . . 
	ld b,005h		;217e	06 05 	. . 
	call l0310h		;2180	cd 10 03 	. . . 
	ld hl,0c800h		;2183	21 00 c8 	! . . 
	ld de,0d000h		;2186	11 00 d0 	. . . 
	ld bc,l0700h		;2189	01 00 07 	. . . 
	ldir		;218c	ed b0 	. . 
	ld hl,0c800h		;218e	21 00 c8 	! . . 
	ld de,0c801h		;2191	11 01 c8 	. . . 
	ld bc,l06ffh		;2194	01 ff 06 	. . . 
	ld (hl),000h		;2197	36 00 	6 . 
	ldir		;2199	ed b0 	. . 
	xor a			;219b	af 	. 
	ld (0c03ch),a		;219c	32 3c c0 	2 < . 
	ld a,085h		;219f	3e 85 	> . 
	ld (0ffffh),a		;21a1	32 ff ff 	2 . . 
	ld b,018h		;21a4	06 18 	. . 
	ld de,0c808h		;21a6	11 08 c8 	. . . 
	ld (0c03ah),de		;21a9	ed 53 3a c0 	. S : . 
	ld hl,09e75h		;21ad	21 75 9e 	! u . 
	ld (0c038h),hl		;21b0	22 38 c0 	" 8 . 
l21b3h:
	push bc			;21b3	c5 	. 
	ld de,(0c03ah)		;21b4	ed 5b 3a c0 	. [ : . 
	ld hl,(0c038h)		;21b8	2a 38 c0 	* 8 . 
	ld bc,l1200h+2		;21bb	01 02 12 	. . . 
	call sub_24eah		;21be	cd ea 24 	. . $ 
	ld de,(0c03ah)		;21c1	ed 5b 3a c0 	. [ : . 
	inc de			;21c5	13 	. 
	inc de			;21c6	13 	. 
	ld (0c03ah),de		;21c7	ed 53 3a c0 	. S : . 
	ld hl,0c03ch		;21cb	21 3c c0 	! < . 
	inc (hl)			;21ce	34 	4 
	ld a,(hl)			;21cf	7e 	~ 
	add a,a			;21d0	87 	. 
	ld b,000h		;21d1	06 00 	. . 
	ld c,a			;21d3	4f 	O 
	ld hl,09e45h		;21d4	21 45 9e 	! E . 
	add hl,bc			;21d7	09 	. 
	ld a,(hl)			;21d8	7e 	~ 
	inc hl			;21d9	23 	# 
	ld h,(hl)			;21da	66 	f 
	ld l,a			;21db	6f 	o 
	ld (0c038h),hl		;21dc	22 38 c0 	" 8 . 
	pop bc			;21df	c1 	. 
	djnz l21b3h		;21e0	10 d1 	. . 
	xor a			;21e2	af 	. 
	ld (0c053h),a		;21e3	32 53 c0 	2 S . 
	ld a,003h		;21e6	3e 03 	> . 
	ld (0c0f8h),a		;21e8	32 f8 c0 	2 . . 
	ld hl,0cf80h		;21eb	21 80 cf 	! . . 
	ld (0c0f9h),hl		;21ee	22 f9 c0 	" . . 
	ld de,0cf81h		;21f1	11 81 cf 	. . . 
	ld bc,0005fh		;21f4	01 5f 00 	. _ . 
	ld (hl),000h		;21f7	36 00 	6 . 
	ldir		;21f9	ed b0 	. . 
	call 0697ch		;21fb	cd 7c 69 	. | i 
	ld a,087h		;21fe	3e 87 	> . 
	ld (0ffffh),a		;2200	32 ff ff 	2 . . 
	ld de,06800h		;2203	11 00 68 	. . h 
	ld bc,l0020h		;2206	01 20 00 	.   . 
	ld l,000h		;2209	2e 00 	. . 
	call sub_0156h		;220b	cd 56 01 	. V . 
	ld hl,0a209h		;220e	21 09 a2 	! . . 
	ld de,06820h		;2211	11 20 68 	.   h 
	ld bc,l0020h		;2214	01 20 00 	.   . 
	call sub_0131h		;2217	cd 31 01 	. 1 . 
	ld hl,08269h		;221a	21 69 82 	! i . 
	ld de,06840h		;221d	11 40 68 	. @ h 
	ld bc,l0140h		;2220	01 40 01 	. @ . 
	call sub_0131h		;2223	cd 31 01 	. 1 . 
	ld a,082h		;2226	3e 82 	> . 
	ld (0ffffh),a		;2228	32 ff ff 	2 . . 
	ld ix,0cf80h		;222b	dd 21 80 cf 	. ! . . 
	ld (ix+000h),021h		;222f	dd 36 00 21 	. 6 . ! 
	ld (ix+007h),01dh		;2233	dd 36 07 1d 	. 6 . . 
	ld (ix+008h),08ah		;2237	dd 36 08 8a 	. 6 . . 
	ld (ix+006h),008h		;223b	dd 36 06 08 	. 6 . . 
	ld (ix+005h),008h		;223f	dd 36 05 08 	. 6 . . 
	ld (ix+00ch),074h		;2243	dd 36 0c 74 	. 6 . t 
	ld (ix+00eh),08eh		;2247	dd 36 0e 8e 	. 6 . . 
	set 0,(ix+001h)		;224b	dd cb 01 c6 	. . . . 
	ld ix,0cfa0h		;224f	dd 21 a0 cf 	. ! . . 
	ld (ix+000h),056h		;2253	dd 36 00 56 	. 6 . V 
	res 0,(ix+001h)		;2257	dd cb 01 86 	. . . . 
	call sub_265ch		;225b	cd 5c 26 	. \ & 
	ld a,(0c023h)		;225e	3a 23 c0 	: # . 
	cp 010h		;2261	fe 10 	. . 
	jr c,l2275h		;2263	38 10 	8 . 
	ld ix,0cfc0h		;2265	dd 21 c0 cf 	. ! . . 
	ld (ix+000h),058h		;2269	dd 36 00 58 	. 6 . X 
	ld (ix+00ch),098h		;226d	dd 36 0c 98 	. 6 . . 
	ld (ix+00eh),038h		;2271	dd 36 0e 38 	. 6 . 8 
l2275h:
	ld a,003h		;2275	3e 03 	> . 
	ld (0ffffh),a		;2277	32 ff ff 	2 . . 
	ld de,05800h		;227a	11 00 58 	. . X 
	ld hl,0b9eah		;227d	21 ea b9 	! . . 
	ld bc,l0050h		;2280	01 50 00 	. P . 
	ld a,001h		;2283	3e 01 	> . 
	call l01a3h		;2285	cd a3 01 	. . . 
	ld a,085h		;2288	3e 85 	> . 
	ld (0ffffh),a		;228a	32 ff ff 	2 . . 
	ld hl,0a1d5h		;228d	21 d5 a1 	! . . 
	ld de,04000h		;2290	11 00 40 	. . @ 
	call sub_0260h		;2293	cd 60 02 	. ` . 
	ld hl,0af11h		;2296	21 11 af 	! . . 
	ld de,05980h		;2299	11 80 59 	. . Y 
	ld bc,l01c0h		;229c	01 c0 01 	. . . 
	call sub_0131h		;229f	cd 31 01 	. 1 . 
	ld hl,0b0b1h		;22a2	21 b1 b0 	! . . 
	ld de,05ba0h		;22a5	11 a0 5b 	. . [ 
	ld bc,l01dfh+1		;22a8	01 e0 01 	. . . 
	call sub_0131h		;22ab	cd 31 01 	. 1 . 
	ld a,087h		;22ae	3e 87 	> . 
	ld (0ffffh),a		;22b0	32 ff ff 	2 . . 
	ld hl,08000h		;22b3	21 00 80 	! . . 
	ld de,05f80h		;22b6	11 80 5f 	. . _ 
	call sub_0260h		;22b9	cd 60 02 	. ` . 
	ld hl,083c9h		;22bc	21 c9 83 	! . . 
	ld de,05b20h		;22bf	11 20 5b 	.   [ 
	ld bc,00080h		;22c2	01 80 00 	. . . 
	call sub_0131h		;22c5	cd 31 01 	. 1 . 
	ld hl,0a229h		;22c8	21 29 a2 	! ) . 
	ld de,05d80h		;22cb	11 80 5d 	. . ] 
	ld bc,00080h		;22ce	01 80 00 	. . . 
	call sub_0131h		;22d1	cd 31 01 	. 1 . 
	ld hl,08169h		;22d4	21 69 81 	! i . 
	ld de,05e00h		;22d7	11 00 5e 	. . ^ 
	ld bc,00080h		;22da	01 80 00 	. . . 
	call sub_0131h		;22dd	cd 31 01 	. 1 . 
	ld hl,081e9h		;22e0	21 e9 81 	! . . 
	ld de,05e80h		;22e3	11 80 5e 	. . ^ 
	ld bc,00080h		;22e6	01 80 00 	. . . 
	call sub_0131h		;22e9	cd 31 01 	. 1 . 
	ld hl,09349h		;22ec	21 49 93 	! I . 
	ld de,05780h		;22ef	11 80 57 	. . W 
	ld bc,00080h		;22f2	01 80 00 	. . . 
	call sub_0131h		;22f5	cd 31 01 	. 1 . 
	ld hl,0a189h		;22f8	21 89 a1 	! . . 
	ld de,05f00h		;22fb	11 00 5f 	. . _ 
	ld bc,00080h		;22fe	01 80 00 	. . . 
	call sub_0131h		;2301	cd 31 01 	. 1 . 
	ld hl,l23c5h		;2304	21 c5 23 	! . # 
	ld de,0c000h		;2307	11 00 c0 	. . . 
	ld bc,l0020h		;230a	01 20 00 	.   . 
	call sub_0131h		;230d	cd 31 01 	. 1 . 
	call sub_24b4h		;2310	cd b4 24 	. . $ 
	ld de,07800h		;2313	11 00 78 	. . x 
	ld hl,0c800h		;2316	21 00 c8 	! . . 
	ld bc,l0600h		;2319	01 00 06 	. . . 
	call sub_0131h		;231c	cd 31 01 	. 1 . 
	ld hl,l23f1h		;231f	21 f1 23 	! . # 
	ld de,07d42h		;2322	11 42 7d 	. B } 
	ld bc,l0204h		;2325	01 04 02 	. . . 
	call l0160h		;2328	cd 60 01 	. ` . 
	ld hl,0c025h		;232b	21 25 c0 	! % . 
	ld de,07d88h		;232e	11 88 7d 	. . } 
	ld c,001h		;2331	0e 01 	. . 
	call sub_0423h		;2333	cd 23 04 	. # . 
	ld hl,l23f9h		;2336	21 f9 23 	! . # 
	ld de,07cc2h		;2339	11 c2 7c 	. . | 
	ld bc,l0204h		;233c	01 04 02 	. . . 
	call l0160h		;233f	cd 60 01 	. ` . 
	ld a,0c0h		;2342	3e c0 	> . 
	ld de,07d12h		;2344	11 12 7d 	. . } 
	call l012bh		;2347	cd 2b 01 	. + . 
	ld hl,0c032h		;234a	21 32 c0 	! 2 . 
	ld de,07d06h		;234d	11 06 7d 	. . } 
	call sub_0421h		;2350	cd 21 04 	. ! . 
	ld a,008h		;2353	3e 08 	> . 
	ld (0c10ah),a		;2355	32 0a c1 	2 . . 
	ld hl,l23e5h		;2358	21 e5 23 	! . # 
	ld de,07d94h		;235b	11 94 7d 	. . } 
	ld b,00ch		;235e	06 0c 	. . 
	call sub_013fh		;2360	cd 3f 01 	. ? . 
	ld hl,0c022h		;2363	21 22 c0 	! " . 
	ld de,07d9eh		;2366	11 9e 7d 	. . } 
	call sub_0421h		;2369	cd 21 04 	. ! . 
	ld a,082h		;236c	3e 82 	> . 
	ld (0ffffh),a		;236e	32 ff ff 	2 . . 
	ld a,(0c023h)		;2371	3a 23 c0 	: # . 
	ld c,a			;2374	4f 	O 
	ld b,000h		;2375	06 00 	. . 
	ld hl,00d89h		;2377	21 89 0d 	! . . 
	add hl,bc			;237a	09 	. 
	ld a,(hl)			;237b	7e 	~ 
	ld (0c110h),a		;237c	32 10 c1 	2 . . 
	ld a,(0c31ah)		;237f	3a 1a c3 	: . . 
	cp 005h		;2382	fe 05 	. . 
	jr nz,l2398h		;2384	20 12 	  . 
	ld a,083h		;2386	3e 83 	> . 
	ld (0c110h),a		;2388	32 10 c1 	2 . . 
	ld a,(0c023h)		;238b	3a 23 c0 	: # . 
	cp 010h		;238e	fe 10 	. . 
	jp nz,l2398h		;2390	c2 98 23 	. . # 
	ld a,084h		;2393	3e 84 	> . 
	ld (0c110h),a		;2395	32 10 c1 	2 . . 
l2398h:
	ld a,(0c054h)		;2398	3a 54 c0 	: T . 
	cp 007h		;239b	fe 07 	. . 
	jp c,l23b5h		;239d	da b5 23 	. . # 
	jp nz,l23abh		;23a0	c2 ab 23 	. . # 
	ld a,085h		;23a3	3e 85 	> . 
	ld (0c110h),a		;23a5	32 10 c1 	2 . . 
	jp l23b5h		;23a8	c3 b5 23 	. . # 
l23abh:
	cp 008h		;23ab	fe 08 	. . 
	jp z,l23b5h		;23ad	ca b5 23 	. . # 
	ld a,088h		;23b0	3e 88 	> . 
	ld (0c110h),a		;23b2	32 10 c1 	2 . . 
l23b5h:
	ld a,(0c092h)		;23b5	3a 92 c0 	: . . 
	or a			;23b8	b7 	. 
	jr z,l23c0h		;23b9	28 05 	( . 
	ld a,082h		;23bb	3e 82 	> . 
	ld (0c110h),a		;23bd	32 10 c1 	2 . . 
l23c0h:
	ei			;23c0	fb 	. 
	call sub_02c3h		;23c1	cd c3 02 	. . . 
	ret			;23c4	c9 	. 
l23c5h:
	nop			;23c5	00 	. 
	cpl			;23c6	2f 	/ 
	dec bc			;23c7	0b 	. 
	ld b,001h		;23c8	06 01 	. . 
	inc c			;23ca	0c 	. 
	ex af,af'			;23cb	08 	. 
	inc b			;23cc	04 	. 
	ccf			;23cd	3f 	? 
	ld a,038h		;23ce	3e 38 	> 8 
	inc bc			;23d0	03 	. 
	jr nc,l23d3h		;23d1	30 00 	0 . 
l23d3h:
	rrca			;23d3	0f 	. 
	nop			;23d4	00 	. 
	nop			;23d5	00 	. 
	ccf			;23d6	3f 	? 
	dec b			;23d7	05 	. 
	dec bc			;23d8	0b 	. 
	inc bc			;23d9	03 	. 
	ld (bc),a			;23da	02 	. 
	nop			;23db	00 	. 
	jr nc,l241ah		;23dc	30 3c 	0 < 
	inc c			;23de	0c 	. 
	rrca			;23df	0f 	. 
	ex af,af'			;23e0	08 	. 
	ld a,(sub_0334h+2)		;23e1	3a 36 03 	: 6 . 
	ld a,(bc)			;23e4	0a 	. 
l23e5h:
	call m,0fefdh		;23e5	fc fd fe 	. . . 
	rst 38h			;23e8	ff 	. 
	nop			;23e9	00 	. 
	nop			;23ea	00 	. 
	nop			;23eb	00 	. 
	nop			;23ec	00 	. 
	nop			;23ed	00 	. 
	nop			;23ee	00 	. 
	nop			;23ef	00 	. 
	ret nz			;23f0	c0 	. 
l23f1h:
	call po,0e508h		;23f1	e4 08 e5 	. . . 
	ex af,af'			;23f4	08 	. 
	and 008h		;23f5	e6 08 	. . 
	rst 20h			;23f7	e7 	. 
	ex af,af'			;23f8	08 	. 
l23f9h:
	cp h			;23f9	bc 	. 
	ex af,af'			;23fa	08 	. 
	cp l			;23fb	bd 	. 
	ex af,af'			;23fc	08 	. 
	cp (hl)			;23fd	be 	. 
	ex af,af'			;23fe	08 	. 
	cp a			;23ff	bf 	. 
	ex af,af'			;2400	08 	. 
	ld b,(ix+014h)		;2401	dd 46 14 	. F . 
	ld (ix+007h),01dh		;2404	dd 36 07 1d 	. 6 . . 
	ld (ix+008h),08ah		;2408	dd 36 08 8a 	. 6 . . 
	res 4,b		;240c	cb a0 	. . 
	ld a,(0c006h)		;240e	3a 06 c0 	: . . 
	ld c,a			;2411	4f 	O 
	and 003h		;2412	e6 03 	. . 
	ld hl,l0000h		;2414	21 00 00 	! . . 
	call nz,sub_247eh		;2417	c4 7e 24 	. ~ $ 
l241ah:
	ld (ix+011h),l		;241a	dd 75 11 	. u . 
	ld (ix+012h),h		;241d	dd 74 12 	. t . 
	ld hl,l0000h		;2420	21 00 00 	! . . 
	call sub_2497h		;2423	cd 97 24 	. . $ 
	ld (ix+00fh),l		;2426	dd 75 0f 	. u . 
	ld (ix+010h),h		;2429	dd 74 10 	. t . 
	set 1,b		;242c	cb c8 	. . 
	ld (ix+014h),b		;242e	dd 70 14 	. p . 
	ld a,(0c31ah)		;2431	3a 1a c3 	: . . 
	cp 010h		;2434	fe 10 	. . 
	ret z			;2436	c8 	. 
	ld a,(0c054h)		;2437	3a 54 c0 	: T . 
	cp 007h		;243a	fe 07 	. . 
	ret nc			;243c	d0 	. 
	ld a,(0c051h)		;243d	3a 51 c0 	: Q . 
	or a			;2440	b7 	. 
	ret nz			;2441	c0 	. 
	ld a,(0c053h)		;2442	3a 53 c0 	: S . 
	or a			;2445	b7 	. 
	ret nz			;2446	c0 	. 
	ld de,sub_1404h		;2447	11 04 14 	. . . 
	call 07c18h		;244a	cd 18 7c 	. . | 
	and 0e0h		;244d	e6 e0 	. . 
	ret z			;244f	c8 	. 
	ld d,a			;2450	57 	W 
	exx			;2451	d9 	. 
	ld hl,08a18h		;2452	21 18 8a 	! . . 
	call l27d6h		;2455	cd d6 27 	. . ' 
	exx			;2458	d9 	. 
	ld a,(0c006h)		;2459	3a 06 c0 	: . . 
	and 030h		;245c	e6 30 	. 0 
	ret z			;245e	c8 	. 
	ld a,08fh		;245f	3e 8f 	> . 
	ld (0c110h),a		;2461	32 10 c1 	2 . . 
	ld a,081h		;2464	3e 81 	> . 
	ld (0c053h),a		;2466	32 53 c0 	2 S . 
	xor a			;2469	af 	. 
	ld (0c05ah),a		;246a	32 5a c0 	2 Z . 
	ld a,d			;246d	7a 	z 
	rrca			;246e	0f 	. 
	rrca			;246f	0f 	. 
	rrca			;2470	0f 	. 
	rrca			;2471	0f 	. 
	ld c,a			;2472	4f 	O 
	ld b,000h		;2473	06 00 	. . 
	ld hl,0250ah		;2475	21 0a 25 	! . % 
	add hl,bc			;2478	09 	. 
	ld a,(hl)			;2479	7e 	~ 
	inc hl			;247a	23 	# 
	ld h,(hl)			;247b	66 	f 
	ld l,a			;247c	6f 	o 
	jp (hl)			;247d	e9 	. 
sub_247eh:
	ret			;247e	c9 	. 
	rrca			;247f	0f 	. 
	ld a,(ix+00eh)		;2480	dd 7e 0e 	. ~ . 
	jr c,l248eh		;2483	38 09 	8 . 
	cp 09ch		;2485	fe 9c 	. . 
	ret nc			;2487	d0 	. 
	ld hl,00200h		;2488	21 00 02 	! . . 
	set 4,b		;248b	cb e0 	. . 
	ret			;248d	c9 	. 
l248eh:
	cp 088h		;248e	fe 88 	. . 
	ret c			;2490	d8 	. 
	ld hl,0fe00h		;2491	21 00 fe 	! . . 
	res 3,b		;2494	cb 98 	. . 
	ret			;2496	c9 	. 
sub_2497h:
	ld a,c			;2497	79 	y 
	and 00ch		;2498	e6 0c 	. . 
	res 2,b		;249a	cb 90 	. . 
	ret z			;249c	c8 	. 
	set 2,b		;249d	cb d0 	. . 
	and 004h		;249f	e6 04 	. . 
	ld a,(ix+00ch)		;24a1	dd 7e 0c 	. ~ . 
	jr nz,l24adh		;24a4	20 07 	  . 
	cp 0e8h		;24a6	fe e8 	. . 
	ret nc			;24a8	d0 	. 
	ld hl,00200h		;24a9	21 00 02 	! . . 
	ret			;24ac	c9 	. 
l24adh:
	cp 070h		;24ad	fe 70 	. p 
	ret c			;24af	d8 	. 
	ld hl,0fe00h		;24b0	21 00 fe 	! . . 
	ret			;24b3	c9 	. 
sub_24b4h:
	ld hl,0c04fh		;24b4	21 4f c0 	! O . 
	set 0,(hl)		;24b7	cb c6 	. . 
	ld hl,0c046h		;24b9	21 46 c0 	! F . 
	ld b,00ah		;24bc	06 0a 	. . 
l24beh:
	ld a,(hl)			;24be	7e 	~ 
	or a			;24bf	b7 	. 
	jr z,l24e6h		;24c0	28 24 	( $ 
	push hl			;24c2	e5 	. 
	push bc			;24c3	c5 	. 
	ld a,b			;24c4	78 	x 
	add a,a			;24c5	87 	. 
	ld e,a			;24c6	5f 	_ 
	ld d,000h		;24c7	16 00 	. . 
	ld a,086h		;24c9	3e 86 	> . 
	ld (0ffffh),a		;24cb	32 ff ff 	2 . . 
	ld hl,0bdb7h		;24ce	21 b7 bd 	! . . 
	add hl,de			;24d1	19 	. 
	ld a,(hl)			;24d2	7e 	~ 
	inc hl			;24d3	23 	# 
	ld h,(hl)			;24d4	66 	f 
	ld l,a			;24d5	6f 	o 
	ld e,(hl)			;24d6	5e 	^ 
	inc hl			;24d7	23 	# 
	ld d,(hl)			;24d8	56 	V 
	inc hl			;24d9	23 	# 
	ld a,(hl)			;24da	7e 	~ 
	inc hl			;24db	23 	# 
	ld h,(hl)			;24dc	66 	f 
	ld l,a			;24dd	6f 	o 
	ld bc,l0204h		;24de	01 04 02 	. . . 
	call sub_24eah		;24e1	cd ea 24 	. . $ 
	pop bc			;24e4	c1 	. 
	pop hl			;24e5	e1 	. 
l24e6h:
	inc hl			;24e6	23 	# 
	djnz l24beh		;24e7	10 d5 	. . 
	ret			;24e9	c9 	. 
sub_24eah:
	push bc			;24ea	c5 	. 
	ld b,000h		;24eb	06 00 	. . 
	push de			;24ed	d5 	. 
	ldir		;24ee	ed b0 	. . 
	pop de			;24f0	d1 	. 
	ex de,hl			;24f1	eb 	. 
	ld c,040h		;24f2	0e 40 	. @ 
	add hl,bc			;24f4	09 	. 
	ex de,hl			;24f5	eb 	. 
	pop bc			;24f6	c1 	. 
	djnz sub_24eah		;24f7	10 f1 	. . 
	ret			;24f9	c9 	. 
sub_24fah:
	ld hl,l0040h		;24fa	21 40 00 	! @ . 
	push bc			;24fd	c5 	. 
	push de			;24fe	d5 	. 
	xor a			;24ff	af 	. 
l2500h:
	ld (de),a			;2500	12 	. 
	inc de			;2501	13 	. 
	dec c			;2502	0d 	. 
	jr nz,l2500h		;2503	20 fb 	  . 
	pop de			;2505	d1 	. 
	add hl,de			;2506	19 	. 
	ex de,hl			;2507	eb 	. 
	pop bc			;2508	c1 	. 
	djnz sub_24fah		;2509	10 ef 	. . 
	ret			;250b	c9 	. 
	ld (l3025h),hl		;250c	22 25 30 	" % 0 
	dec h			;250f	25 	% 
	ld a,025h		;2510	3e 25 	> % 
	ld c,b			;2512	48 	H 
	dec h			;2513	25 	% 
	ld e,h			;2514	5c 	\ 
	dec h			;2515	25 	% 
	sbc a,e			;2516	9b 	. 
	dec h			;2517	25 	% 
	ld (hl),b			;2518	70 	p 
	dec h			;2519	25 	% 
	call po,0e508h		;251a	e4 08 e5 	. . . 
	ex af,af'			;251d	08 	. 
	and 008h		;251e	e6 08 	. . 
	rst 20h			;2520	e7 	. 
	ex af,af'			;2521	08 	. 
	xor a			;2522	af 	. 
	ld (0c046h),a		;2523	32 46 c0 	2 F . 
	ld hl,07cf4h		;2526	21 f4 7c 	! . | 
	ld de,0ccf4h		;2529	11 f4 cc 	. . . 
	ld a,003h		;252c	3e 03 	> . 
	jr l257ch		;252e	18 4c 	. L 
	xor a			;2530	af 	. 
	ld (0c047h),a		;2531	32 47 c0 	2 G . 
	ld hl,07cf8h		;2534	21 f8 7c 	! . | 
	ld de,0ccf8h		;2537	11 f8 cc 	. . . 
	ld a,004h		;253a	3e 04 	> . 
	jr l257ch		;253c	18 3e 	. > 
	ld hl,07ce0h		;253e	21 e0 7c 	! . | 
	ld de,0cce0h		;2541	11 e0 cc 	. . . 
	ld a,006h		;2544	3e 06 	> . 
	jr l257ch		;2546	18 34 	. 4 
	xor a			;2548	af 	. 
	ld (0c049h),a		;2549	32 49 c0 	2 I . 
	ld hl,l05ffh		;254c	21 ff 05 	! . . 
	ld (0c05ah),hl		;254f	22 5a c0 	" Z . 
	ld hl,07cf0h		;2552	21 f0 7c 	! . | 
	ld de,0ccf0h		;2555	11 f0 cc 	. . . 
	ld a,001h		;2558	3e 01 	> . 
	jr l257ch		;255a	18 20 	.   
	xor a			;255c	af 	. 
	ld (0c04ah),a		;255d	32 4a c0 	2 J . 
	ld hl,l05ffh		;2560	21 ff 05 	! . . 
	ld (0c05ah),hl		;2563	22 5a c0 	" Z . 
	ld hl,07cech		;2566	21 ec 7c 	! . | 
	ld de,0ccech		;2569	11 ec cc 	. . . 
	ld a,002h		;256c	3e 02 	> . 
	jr l257ch		;256e	18 0c 	. . 
	xor a			;2570	af 	. 
	ld (0c04dh),a		;2571	32 4d c0 	2 M . 
	ld hl,07cdch		;2574	21 dc 7c 	! . | 
	ld de,0ccdch		;2577	11 dc cc 	. . . 
	ld a,005h		;257a	3e 05 	> . 
l257ch:
	ld (0c054h),a		;257c	32 54 c0 	2 T . 
	ld (0c058h),hl		;257f	22 58 c0 	" X . 
	ld bc,l0204h		;2582	01 04 02 	. . . 
	call sub_24fah		;2585	cd fa 24 	. . $ 
	ld hl,0c320h		;2588	21 20 c3 	!   . 
	ld b,003h		;258b	06 03 	. . 
l258dh:
	call sub_2755h		;258d	cd 55 27 	. U ' 
	inc hl			;2590	23 	# 
	djnz l258dh		;2591	10 fa 	. . 
	ld hl,0c31ch		;2593	21 1c c3 	! . . 
	ld a,(hl)			;2596	7e 	~ 
	and 0f4h		;2597	e6 f4 	. . 
	ld (hl),a			;2599	77 	w 
	ret			;259a	c9 	. 
	call 09df3h		;259b	cd f3 9d 	. . . 
	call sub_02deh		;259e	cd de 02 	. . . 
	ld hl,0c800h		;25a1	21 00 c8 	! . . 
	ld de,0c801h		;25a4	11 01 c8 	. . . 
	ld (hl),000h		;25a7	36 00 	6 . 
	ld bc,l06ffh		;25a9	01 ff 06 	. . . 
	ldir		;25ac	ed b0 	. . 
	ld hl,l263ch		;25ae	21 3c 26 	! < & 
	ld de,0c000h		;25b1	11 00 c0 	. . . 
	ld bc,l0020h		;25b4	01 20 00 	.   . 
	call sub_0131h		;25b7	cd 31 01 	. 1 . 
	ld a,085h		;25ba	3e 85 	> . 
	ld (0ffffh),a		;25bc	32 ff ff 	2 . . 
	ld hl,09924h		;25bf	21 24 99 	! $ . 
	ld de,07892h		;25c2	11 92 78 	. . x 
	ld bc,l1218h		;25c5	01 18 12 	. . . 
	call l0160h		;25c8	cd 60 01 	. ` . 
	ld hl,09ad4h		;25cb	21 d4 9a 	! . . 
	ld de,04000h		;25ce	11 00 40 	. . @ 
	call sub_0260h		;25d1	cd 60 02 	. ` . 
	ld a,082h		;25d4	3e 82 	> . 
	ld (0ffffh),a		;25d6	32 ff ff 	2 . . 
	ld ix,0cf80h		;25d9	dd 21 80 cf 	. ! . . 
	ld b,003h		;25dd	06 03 	. . 
	ld de,l0020h		;25df	11 20 00 	.   . 
l25e2h:
	call sub_2752h		;25e2	cd 52 27 	. R ' 
	add ix,de		;25e5	dd 19 	. . 
	djnz l25e2h		;25e7	10 f9 	. . 
	call sub_265ch		;25e9	cd 5c 26 	. \ & 
	ei			;25ec	fb 	. 
	call sub_02c3h		;25ed	cd c3 02 	. . . 
l25f0h:
	ld a,001h		;25f0	3e 01 	> . 
	call sub_02b3h		;25f2	cd b3 02 	. . . 
	call sub_265ch		;25f5	cd 5c 26 	. \ & 
	ld a,(0c093h)		;25f8	3a 93 c0 	: . . 
	or a			;25fb	b7 	. 
	jr z,l25f0h		;25fc	28 f2 	( . 
	xor a			;25fe	af 	. 
	ld (0c093h),a		;25ff	32 93 c0 	2 . . 
	jp l1fb1h		;2602	c3 b1 1f 	. . . 
l2605h:
	ld hl,0c053h		;2605	21 53 c0 	! S . 
	bit 7,(hl)		;2608	cb 7e 	. ~ 
	ret z			;260a	c8 	. 
	res 7,(hl)		;260b	cb be 	. . 
	ld de,(0c058h)		;260d	ed 5b 58 c0 	. [ X . 
	ld bc,l0204h		;2611	01 04 02 	. . . 
	jp l0192h		;2614	c3 92 01 	. . . 
sub_2617h:
	ld a,(0c054h)		;2617	3a 54 c0 	: T . 
	or a			;261a	b7 	. 
	ret z			;261b	c8 	. 
	cp 003h		;261c	fe 03 	. . 
	ret nc			;261e	d0 	. 
	ld hl,(0c05ah)		;261f	2a 5a c0 	* Z . 
	ld a,h			;2622	7c 	| 
	or l			;2623	b5 	. 
	jr z,l262bh		;2624	28 05 	( . 
	dec hl			;2626	2b 	+ 
	ld (0c05ah),hl		;2627	22 5a c0 	" Z . 
	ret			;262a	c9 	. 
l262bh:
	ld a,0b2h		;262b	3e b2 	> . 
	ld (0c110h),a		;262d	32 10 c1 	2 . . 
	xor a			;2630	af 	. 
	ld (0c054h),a		;2631	32 54 c0 	2 T . 
	ld a,003h		;2634	3e 03 	> . 
	ld de,0c014h		;2636	11 14 c0 	. . . 
	jp l012bh		;2639	c3 2b 01 	. + . 
l263ch:
	jr nc,l263eh		;263c	30 00 	0 . 
l263eh:
	ccf			;263e	3f 	? 
	ld hl,(l0f25h)		;263f	2a 25 0f 	* % . 
	inc bc			;2642	03 	. 
	dec bc			;2643	0b 	. 
	inc a			;2644	3c 	< 
	ld (bc),a			;2645	02 	. 
	nop			;2646	00 	. 
	nop			;2647	00 	. 
	nop			;2648	00 	. 
	nop			;2649	00 	. 
	nop			;264a	00 	. 
	nop			;264b	00 	. 
	jr nc,l264eh		;264c	30 00 	0 . 
l264eh:
	ccf			;264e	3f 	? 
	ld hl,(l0f25h)		;264f	2a 25 0f 	* % . 
	inc bc			;2652	03 	. 
	dec bc			;2653	0b 	. 
	inc a			;2654	3c 	< 
	ld (bc),a			;2655	02 	. 
	nop			;2656	00 	. 
	nop			;2657	00 	. 
	nop			;2658	00 	. 
	nop			;2659	00 	. 
	nop			;265a	00 	. 
	nop			;265b	00 	. 
sub_265ch:
	ld hl,0c706h		;265c	21 06 c7 	! . . 
	ld (0c009h),hl		;265f	22 09 c0 	" . . 
	ld ix,(0c0f9h)		;2662	dd 2a f9 c0 	. * . . 
	ld a,(0c0f8h)		;2666	3a f8 c0 	: . . 
	ld b,a			;2669	47 	G 
l266ah:
	ld a,(ix+000h)		;266a	dd 7e 00 	. ~ . 
	and 07fh		;266d	e6 7f 	.  
	jp z,l2688h		;266f	ca 88 26 	. . & 
	push bc			;2672	c5 	. 
	ld hl,02858h		;2673	21 58 28 	! X ( 
	rst 20h			;2676	e7 	. 
	ld a,(ix+000h)		;2677	dd 7e 00 	. ~ . 
	or a			;267a	b7 	. 
	jp z,l2687h		;267b	ca 87 26 	. . & 
	call sub_2798h		;267e	cd 98 27 	. . ' 
	call sub_2702h		;2681	cd 02 27 	. . ' 
	call sub_269fh		;2684	cd 9f 26 	. . & 
l2687h:
	pop bc			;2687	c1 	. 
l2688h:
	ld de,l0020h		;2688	11 20 00 	.   . 
	add ix,de		;268b	dd 19 	. . 
	djnz l266ah		;268d	10 db 	. . 
	ld hl,(0c009h)		;268f	2a 09 c0 	* . . 
	ld a,l			;2692	7d 	} 
	cp 040h		;2693	fe 40 	. @ 
	jr c,l269ch		;2695	38 05 	8 . 
	ld l,03fh		;2697	2e 3f 	. ? 
	ld (0c009h),hl		;2699	22 09 c0 	" . . 
l269ch:
	ld (hl),0d0h		;269c	36 d0 	6 . 
	ret			;269e	c9 	. 
sub_269fh:
	ld a,(ix+000h)		;269f	dd 7e 00 	. ~ . 
	or a			;26a2	b7 	. 
	ret z			;26a3	c8 	. 
	ld a,(ix+009h)		;26a4	dd 7e 09 	. ~ . 
	or (ix+00ah)		;26a7	dd b6 0a 	. . . 
	jp nz,l2803h		;26aa	c2 03 28 	. . ( 
	ld a,(ix+00eh)		;26ad	dd 7e 0e 	. ~ . 
	cp 0c0h		;26b0	fe c0 	. . 
	ret nc			;26b2	d0 	. 
	ld c,a			;26b3	4f 	O 
	ld de,(0c009h)		;26b4	ed 5b 09 c0 	. [ . . 
	push de			;26b8	d5 	. 
	ld l,(ix+007h)		;26b9	dd 6e 07 	. n . 
	ld h,(ix+008h)		;26bc	dd 66 08 	. f . 
	ld b,(hl)			;26bf	46 	F 
	push bc			;26c0	c5 	. 
	inc hl			;26c1	23 	# 
	ld a,(hl)			;26c2	7e 	~ 
	ld (ix+013h),a		;26c3	dd 77 13 	. w . 
	inc hl			;26c6	23 	# 
l26c7h:
	ld a,c			;26c7	79 	y 
	add a,(hl)			;26c8	86 	. 
	cp 0d0h		;26c9	fe d0 	. . 
	jr nz,l26ceh		;26cb	20 01 	  . 
	dec a			;26cd	3d 	= 
l26ceh:
	ld (de),a			;26ce	12 	. 
	inc e			;26cf	1c 	. 
	inc hl			;26d0	23 	# 
	djnz l26c7h		;26d1	10 f4 	. . 
	ld (0c009h),de		;26d3	ed 53 09 c0 	. S . . 
	pop bc			;26d7	c1 	. 
	pop de			;26d8	d1 	. 
	sla e		;26d9	cb 23 	. # 
	set 7,e		;26db	cb fb 	. . 
	ld c,(ix+00ch)		;26dd	dd 4e 0c 	. N . 
l26e0h:
	ld a,c			;26e0	79 	y 
	add a,(hl)			;26e1	86 	. 
	bit 7,(hl)		;26e2	cb 7e 	. ~ 
	jp z,l26e8h		;26e4	ca e8 26 	. . & 
	ccf			;26e7	3f 	? 
l26e8h:
	jp nc,l26f9h		;26e8	d2 f9 26 	. . & 
	ld a,0e0h		;26eb	3e e0 	> . 
	res 7,e		;26ed	cb bb 	. . 
	srl e		;26ef	cb 3b 	. ; 
	ld (de),a			;26f1	12 	. 
	sla e		;26f2	cb 23 	. # 
	set 7,e		;26f4	cb fb 	. . 
	jp l26fah		;26f6	c3 fa 26 	. . & 
l26f9h:
	ld (de),a			;26f9	12 	. 
l26fah:
	inc hl			;26fa	23 	# 
	inc e			;26fb	1c 	. 
	ldi		;26fc	ed a0 	. . 
	inc bc			;26fe	03 	. 
	djnz l26e0h		;26ff	10 df 	. . 
	ret			;2701	c9 	. 
sub_2702h:
	ld de,(0c0b9h)		;2702	ed 5b b9 c0 	. [ . . 
	ld h,(ix+012h)		;2706	dd 66 12 	. f . 
	ld l,(ix+011h)		;2709	dd 6e 11 	. n . 
	or a			;270c	b7 	. 
	sbc hl,de		;270d	ed 52 	. R 
	ret z			;270f	c8 	. 
	ex de,hl			;2710	eb 	. 
	ld l,(ix+00dh)		;2711	dd 6e 0d 	. n . 
	ld h,(ix+00eh)		;2714	dd 66 0e 	. f . 
	add hl,de			;2717	19 	. 
	bit 7,d		;2718	cb 7a 	. z 
	jp z,l2734h		;271a	ca 34 27 	. 4 ' 
	jp c,l274bh		;271d	da 4b 27 	. K ' 
	bit 1,(ix+001h)		;2720	dd cb 01 4e 	. . . N 
	jp nz,sub_2752h		;2724	c2 52 27 	. R ' 
	ld a,h			;2727	7c 	| 
	sub 040h		;2728	d6 40 	. @ 
	ld (ix+00dh),l		;272a	dd 75 0d 	. u . 
	ld (ix+00eh),a		;272d	dd 77 0e 	. w . 
	dec (ix+00ah)		;2730	dd 35 0a 	. 5 . 
	ret			;2733	c9 	. 
l2734h:
	ld a,h			;2734	7c 	| 
	sub 0c0h		;2735	d6 c0 	. . 
	jp c,l274bh		;2737	da 4b 27 	. K ' 
	bit 1,(ix+001h)		;273a	dd cb 01 4e 	. . . N 
	jp nz,sub_2752h		;273e	c2 52 27 	. R ' 
	ld (ix+00dh),l		;2741	dd 75 0d 	. u . 
	ld (ix+00eh),a		;2744	dd 77 0e 	. w . 
	inc (ix+00ah)		;2747	dd 34 0a 	. 4 . 
	ret			;274a	c9 	. 
l274bh:
	ld (ix+00dh),l		;274b	dd 75 0d 	. u . 
	ld (ix+00eh),h		;274e	dd 74 0e 	. t . 
	ret			;2751	c9 	. 
sub_2752h:
	push ix		;2752	dd e5 	. . 
	pop hl			;2754	e1 	. 
sub_2755h:
	xor a			;2755	af 	. 
	ld (hl),a			;2756	77 	w 
	inc l			;2757	2c 	, 
	ld (hl),a			;2758	77 	w 
	inc l			;2759	2c 	, 
	ld (hl),a			;275a	77 	w 
	inc l			;275b	2c 	, 
	ld (hl),a			;275c	77 	w 
	inc l			;275d	2c 	, 
	ld (hl),a			;275e	77 	w 
	inc l			;275f	2c 	, 
	ld (hl),001h		;2760	36 01 	6 . 
	inc l			;2762	2c 	, 
	ld (hl),a			;2763	77 	w 
	inc l			;2764	2c 	, 
	ld (hl),a			;2765	77 	w 
	inc l			;2766	2c 	, 
	ld (hl),a			;2767	77 	w 
	inc l			;2768	2c 	, 
	ld (hl),a			;2769	77 	w 
	inc l			;276a	2c 	, 
	ld (hl),a			;276b	77 	w 
	inc l			;276c	2c 	, 
	ld (hl),a			;276d	77 	w 
	inc l			;276e	2c 	, 
	ld (hl),a			;276f	77 	w 
	inc l			;2770	2c 	, 
	ld (hl),a			;2771	77 	w 
	inc l			;2772	2c 	, 
	ld (hl),a			;2773	77 	w 
	inc l			;2774	2c 	, 
	ld (hl),a			;2775	77 	w 
	inc l			;2776	2c 	, 
	ld (hl),a			;2777	77 	w 
	inc l			;2778	2c 	, 
	ld (hl),a			;2779	77 	w 
	inc l			;277a	2c 	, 
	ld (hl),a			;277b	77 	w 
	inc l			;277c	2c 	, 
	ld (hl),a			;277d	77 	w 
	inc l			;277e	2c 	, 
	ld (hl),a			;277f	77 	w 
	inc l			;2780	2c 	, 
	ld (hl),a			;2781	77 	w 
	inc l			;2782	2c 	, 
	ld (hl),a			;2783	77 	w 
	inc l			;2784	2c 	, 
	ld (hl),a			;2785	77 	w 
	inc l			;2786	2c 	, 
	ld (hl),a			;2787	77 	w 
	inc l			;2788	2c 	, 
	ld (hl),a			;2789	77 	w 
	inc l			;278a	2c 	, 
	ld (hl),a			;278b	77 	w 
	inc l			;278c	2c 	, 
	ld (hl),a			;278d	77 	w 
	inc l			;278e	2c 	, 
	ld (hl),a			;278f	77 	w 
	inc l			;2790	2c 	, 
	ld (hl),a			;2791	77 	w 
	inc l			;2792	2c 	, 
	ld (hl),a			;2793	77 	w 
	inc l			;2794	2c 	, 
	ld (hl),a			;2795	77 	w 
	ld c,a			;2796	4f 	O 
	ret			;2797	c9 	. 
sub_2798h:
	ld hl,(0c0abh)		;2798	2a ab c0 	* . . 
	ld d,(ix+010h)		;279b	dd 56 10 	. V . 
	ld e,(ix+00fh)		;279e	dd 5e 0f 	. ^ . 
	or a			;27a1	b7 	. 
	adc hl,de		;27a2	ed 5a 	. Z 
	ret z			;27a4	c8 	. 
	ex de,hl			;27a5	eb 	. 
	ld l,(ix+00bh)		;27a6	dd 6e 0b 	. n . 
	ld h,(ix+00ch)		;27a9	dd 66 0c 	. f . 
	add hl,de			;27ac	19 	. 
	bit 7,d		;27ad	cb 7a 	. z 
	jp z,l27c2h		;27af	ca c2 27 	. . ' 
	jp c,l27cfh		;27b2	da cf 27 	. . ' 
	bit 1,(ix+001h)		;27b5	dd cb 01 4e 	. . . N 
	jp nz,sub_2752h		;27b9	c2 52 27 	. R ' 
	inc (ix+009h)		;27bc	dd 34 09 	. 4 . 
	jp l27cfh		;27bf	c3 cf 27 	. . ' 
l27c2h:
	jp nc,l27cfh		;27c2	d2 cf 27 	. . ' 
	bit 1,(ix+001h)		;27c5	dd cb 01 4e 	. . . N 
	jp nz,sub_2752h		;27c9	c2 52 27 	. R ' 
	dec (ix+009h)		;27cc	dd 35 09 	. 5 . 
l27cfh:
	ld (ix+00bh),l		;27cf	dd 75 0b 	. u . 
	ld (ix+00ch),h		;27d2	dd 74 0c 	. t . 
	ret			;27d5	c9 	. 
l27d6h:
	ld d,(hl)			;27d6	56 	V 
	inc hl			;27d7	23 	# 
	ld a,(ix+004h)		;27d8	dd 7e 04 	. ~ . 
	dec (ix+005h)		;27db	dd 35 05 	. 5 . 
	jr nz,l27ebh		;27de	20 0b 	  . 
	ld e,(ix+006h)		;27e0	dd 5e 06 	. ^ . 
	ld (ix+005h),e		;27e3	dd 73 05 	. s . 
	inc a			;27e6	3c 	< 
	cp d			;27e7	ba 	. 
	jr c,l27ebh		;27e8	38 01 	8 . 
	xor a			;27ea	af 	. 
l27ebh:
	ld (ix+004h),a		;27eb	dd 77 04 	. w . 
l27eeh:
	add a,a			;27ee	87 	. 
	ld e,a			;27ef	5f 	_ 
	ld d,000h		;27f0	16 00 	. . 
	add hl,de			;27f2	19 	. 
	ld e,(hl)			;27f3	5e 	^ 
	inc hl			;27f4	23 	# 
	ld h,(hl)			;27f5	66 	f 
	ld (ix+007h),e		;27f6	dd 73 07 	. s . 
	ld (ix+008h),h		;27f9	dd 74 08 	. t . 
	ret			;27fc	c9 	. 
	inc hl			;27fd	23 	# 
	ld a,(ix+004h)		;27fe	dd 7e 04 	. ~ . 
	jr l27eeh		;2801	18 eb 	. . 
l2803h:
	inc a			;2803	3c 	< 
	or (ix+009h)		;2804	dd b6 09 	. . . 
	ret nz			;2807	c0 	. 
	ld a,(ix+00eh)		;2808	dd 7e 0e 	. ~ . 
	cp 0a8h		;280b	fe a8 	. . 
	ret c			;280d	d8 	. 
	ld c,a			;280e	4f 	O 
	ld de,(0c009h)		;280f	ed 5b 09 c0 	. [ . . 
	push de			;2813	d5 	. 
	ld l,(ix+007h)		;2814	dd 6e 07 	. n . 
	ld h,(ix+008h)		;2817	dd 66 08 	. f . 
	ld b,(hl)			;281a	46 	F 
	push bc			;281b	c5 	. 
	inc hl			;281c	23 	# 
	ld a,(hl)			;281d	7e 	~ 
	ld (ix+013h),a		;281e	dd 77 13 	. w . 
	inc hl			;2821	23 	# 
l2822h:
	ld a,c			;2822	79 	y 
	add a,040h		;2823	c6 40 	. @ 
	add a,(hl)			;2825	86 	. 
	ld (de),a			;2826	12 	. 
	inc e			;2827	1c 	. 
	inc hl			;2828	23 	# 
	djnz l2822h		;2829	10 f7 	. . 
	ld (0c009h),de		;282b	ed 53 09 c0 	. S . . 
	pop bc			;282f	c1 	. 
	pop de			;2830	d1 	. 
	sla e		;2831	cb 23 	. # 
	set 7,e		;2833	cb fb 	. . 
	ld c,(ix+00ch)		;2835	dd 4e 0c 	. N . 
l2838h:
	ld a,c			;2838	79 	y 
	add a,(hl)			;2839	86 	. 
	bit 7,(hl)		;283a	cb 7e 	. ~ 
	jp z,l2840h		;283c	ca 40 28 	. @ ( 
	ccf			;283f	3f 	? 
l2840h:
	jp nc,l2851h		;2840	d2 51 28 	. Q ( 
	ld a,0e0h		;2843	3e e0 	> . 
	res 7,e		;2845	cb bb 	. . 
	srl e		;2847	cb 3b 	. ; 
	ld (de),a			;2849	12 	. 
	sla e		;284a	cb 23 	. # 
	set 7,e		;284c	cb fb 	. . 
	jp l2852h		;284e	c3 52 28 	. R ( 
l2851h:
	ld (de),a			;2851	12 	. 
l2852h:
	inc hl			;2852	23 	# 
	inc e			;2853	1c 	. 
	ldi		;2854	ed a0 	. . 
	inc bc			;2856	03 	. 
	djnz l2838h		;2857	10 df 	. . 
	ret			;2859	c9 	. 
	jr nz,l2885h		;285a	20 29 	  ) 
	ld e,c			;285c	59 	Y 
	ld b,h			;285d	44 	D 
	rrca			;285e	0f 	. 
	ld b,h			;285f	44 	D 
	sbc a,l			;2860	9d 	. 
	ld b,h			;2861	44 	D 
	ld e,c			;2862	59 	Y 
	ld b,(hl)			;2863	46 	F 
	sub d			;2864	92 	. 
	ld b,(hl)			;2865	46 	F 
	jp (hl)			;2866	e9 	. 
	ld b,(hl)			;2867	46 	F 
	ld d,l			;2868	55 	U 
	ld c,b			;2869	48 	H 
	jr c,l28b3h		;286a	38 47 	8 G 
	inc sp			;286c	33 	3 
	ld c,b			;286d	48 	H 
	defb 0edh;next byte illegal after ed		;286e	ed 	. 
	ld (hl),l			;286f	75 	u 
	ld d,e			;2870	53 	S 
	ld a,c			;2871	79 	y 
	ld l,e			;2872	6b 	k 
	ld a,c			;2873	79 	y 
	ld e,e			;2874	5b 	[ 
	ld a,d			;2875	7a 	z 
	ld bc,0bb7bh		;2876	01 7b bb 	. { . 
	ld c,c			;2879	49 	I 
	or 049h		;287a	f6 49 	. I 
	ld (bc),a			;287c	02 	. 
	ld c,d			;287d	4a 	J 
	ld c,04ah		;287e	0e 4a 	. J 
	ld c,l			;2880	4d 	M 
	ld c,c			;2881	49 	I 
	call pe,01a4ah		;2882	ec 4a 1a 	. J . 
l2885h:
	ld c,d			;2885	4a 	J 
	or a			;2886	b7 	. 
	ld c,d			;2887	4a 	J 
	inc sp			;2888	33 	3 
	add hl,bc			;2889	09 	. 
	sub h			;288a	94 	. 
	ld (hl),h			;288b	74 	t 
	ld l,(hl)			;288c	6e 	n 
	ld a,b			;288d	78 	x 
	call po,00f48h		;288e	e4 48 0f 	. H . 
	ld (hl),c			;2891	71 	q 
	ld e,l			;2892	5d 	] 
	ld (hl),a			;2893	77 	w 
	sbc a,077h		;2894	de 77 	. w 
	ld (hl),c			;2896	71 	q 
	ld a,b			;2897	78 	x 
	cp b			;2898	b8 	. 
	ld c,(hl)			;2899	4e 	N 
	ld bc,06624h		;289a	01 24 66 	. $ f 
	ld c,(hl)			;289d	4e 	N 
	ld sp,hl			;289e	f9 	. 
	ld c,l			;289f	4d 	M 
	rst 30h			;28a0	f7 	. 
	ld c,e			;28a1	4b 	K 
	or b			;28a2	b0 	. 
	ld d,d			;28a3	52 	R 
	add hl,hl			;28a4	29 	) 
	ld d,e			;28a5	53 	S 
	sbc a,b			;28a6	98 	. 
	ld d,e			;28a7	53 	S 
	ld a,(de)			;28a8	1a 	. 
	ld d,h			;28a9	54 	T 
	cp h			;28aa	bc 	. 
	ld d,l			;28ab	55 	U 
	ld b,e			;28ac	43 	C 
	ld d,l			;28ad	55 	U 
	ld c,l			;28ae	4d 	M 
	ld d,(hl)			;28af	56 	V 
	cp d			;28b0	ba 	. 
	ld c,a			;28b1	4f 	O 
	nop			;28b2	00 	. 
l28b3h:
	ld d,b			;28b3	50 	P 
	jr z,$+83		;28b4	28 51 	( Q 
	sub l			;28b6	95 	. 
	ld d,(hl)			;28b7	56 	V 
	xor d			;28b8	aa 	. 
	ld d,b			;28b9	50 	P 
	sub a			;28ba	97 	. 
	ld d,a			;28bb	57 	W 
	ld c,h			;28bc	4c 	L 
	ld e,b			;28bd	58 	X 
	ld d,c			;28be	51 	Q 
	ld d,b			;28bf	50 	P 
	ei			;28c0	fb 	. 
	ld d,b			;28c1	50 	P 
	cp h			;28c2	bc 	. 
	ld d,c			;28c3	51 	Q 
	ld c,e			;28c4	4b 	K 
	ld c,a			;28c5	4f 	O 
	call pe,0d156h		;28c6	ec 56 d1 	. V . 
	ld e,b			;28c9	58 	X 
	ld e,a			;28ca	5f 	_ 
	ld e,c			;28cb	59 	Y 
	sub c			;28cc	91 	. 
	ld e,c			;28cd	59 	Y 
	call nz,0fa59h		;28ce	c4 59 fa 	. Y . 
	ld e,c			;28d1	59 	Y 
	ld e,l			;28d2	5d 	] 
	ld e,l			;28d3	5d 	] 
	defb 0ddh,05dh	;ld e,ixl		;28d4	dd 5d 	. ] 
	ld b,h			;28d6	44 	D 
	ld e,(hl)			;28d7	5e 	^ 
	add a,e			;28d8	83 	. 
	ld e,(hl)			;28d9	5e 	^ 
	adc a,05eh		;28da	ce 5e 	. ^ 
	dec d			;28dc	15 	. 
	ld e,a			;28dd	5f 	_ 
	jp p,09a55h		;28de	f2 55 9a 	. U . 
	ld e,e			;28e1	5b 	[ 
	add a,l			;28e2	85 	. 
	ld h,b			;28e3	60 	` 
	rst 38h			;28e4	ff 	. 
	ld e,e			;28e5	5b 	[ 
	ld a,c			;28e6	79 	y 
	ld e,h			;28e7	5c 	\ 
	ret nz			;28e8	c0 	. 
	ld e,h			;28e9	5c 	\ 
	rst 38h			;28ea	ff 	. 
	ld e,h			;28eb	5c 	\ 
	sbc a,054h		;28ec	de 54 	. T 
	sub (hl)			;28ee	96 	. 
	ld h,c			;28ef	61 	a 
	ld c,c			;28f0	49 	I 
	ld h,d			;28f1	62 	b 
	ld e,a			;28f2	5f 	_ 
	ld e,d			;28f3	5a 	Z 
	xor a			;28f4	af 	. 
	ld e,d			;28f5	5a 	Z 
	nop			;28f6	00 	. 
	ld e,e			;28f7	5b 	[ 
	ld b,a			;28f8	47 	G 
	ld h,b			;28f9	60 	` 
	ld a,d			;28fa	7a 	z 
	ld e,a			;28fb	5f 	_ 
	sub 060h		;28fc	d6 60 	. ` 
	ccf			;28fe	3f 	? 
	ld h,c			;28ff	61 	a 
	ld a,b			;2900	78 	x 
	ld h,d			;2901	62 	b 
	ld sp,l0962h+1		;2902	31 63 09 	1 c . 
	dec de			;2905	1b 	. 
	call nz,05663h		;2906	c4 63 56 	. c V 
	dec de			;2909	1b 	. 
	nop			;290a	00 	. 
	nop			;290b	00 	. 
	nop			;290c	00 	. 
	nop			;290d	00 	. 
	nop			;290e	00 	. 
	nop			;290f	00 	. 
	nop			;2910	00 	. 
	nop			;2911	00 	. 
	nop			;2912	00 	. 
	nop			;2913	00 	. 
	nop			;2914	00 	. 
	nop			;2915	00 	. 
	nop			;2916	00 	. 
	nop			;2917	00 	. 
	ret m			;2918	f8 	. 
	dec a			;2919	3d 	= 
	adc a,d			;291a	8a 	. 
	ld a,0a4h		;291b	3e a4 	> . 
	add hl,sp			;291d	39 	9 
	call z,0213eh		;291e	cc 3e 21 	. > ! 
	nop			;2921	00 	. 
	nop			;2922	00 	. 
	ld (0c0abh),hl		;2923	22 ab c0 	" . . 
	ld (0c0b9h),hl		;2926	22 b9 c0 	" . . 
	bit 7,(ix+001h)		;2929	dd cb 01 7e 	. . . ~ 
	call nz,sub_2f0ah		;292d	c4 0a 2f 	. . / 
	ld a,(0c31ah)		;2930	3a 1a c3 	: . . 
	ld hl,l294bh		;2933	21 4b 29 	! K ) 
	rst 20h			;2936	e7 	. 
	ld a,(0c31ah)		;2937	3a 1a c3 	: . . 
	cp 00fh		;293a	fe 0f 	. . 
	ret z			;293c	c8 	. 
	bit 4,(ix+01ch)		;293d	dd cb 1c 66 	. . . f 
	ret nz			;2941	c0 	. 
	ld a,(0c023h)		;2942	3a 23 c0 	: # . 
	ld hl,03f01h		;2945	21 01 3f 	! . ? 
	jp l0020h		;2948	c3 20 00 	.   . 
l294bh:
	add a,e			;294b	83 	. 
	add hl,hl			;294c	29 	) 
	ld h,a			;294d	67 	g 
	ld hl,(l2b0ah)		;294e	2a 0a 2b 	* . + 
	sbc a,c			;2951	99 	. 
	inc l			;2952	2c 	, 
	add hl,hl			;2953	29 	) 
	ld l,07fh		;2954	2e 7f 	.  
	inc (hl)			;2956	34 	4 
	cp d			;2957	ba 	. 
	ld (hl),038h		;2958	36 38 	6 8 
	inc sp			;295a	33 	3 
	ld (hl),b			;295b	70 	p 
	cpl			;295c	2f 	/ 
	ret m			;295d	f8 	. 
	cpl			;295e	2f 	/ 
	rra			;295f	1f 	. 
	ld (l305dh),a		;2960	32 5d 30 	2 ] 0 
	ret nc			;2963	d0 	. 
	jr nc,l29afh		;2964	30 49 	0 I 
	ld sp,l3171h		;2966	31 71 31 	1 q 1 
	ld d,e			;2969	53 	S 
	cpl			;296a	2f 	/ 
	add hl,bc			;296b	09 	. 
	inc sp			;296c	33 	3 
	sub l			;296d	95 	. 
	ld sp,l31ech		;296e	31 ec 31 	1 . 1 
	adc a,(hl)			;2971	8e 	. 
	jr c,l29a5h		;2972	38 31 	8 1 
	inc (hl)			;2974	34 	4 
	jp po,sub_2a37h+1		;2975	e2 38 2a 	. 8 * 
	add hl,sp			;2978	39 	9 
	ld l,(hl)			;2979	6e 	n 
	add hl,sp			;297a	39 	9 
	ld (de),a			;297b	12 	. 
	add hl,sp			;297c	39 	9 
	ld a,l			;297d	7d 	} 
	add hl,sp			;297e	39 	9 
	sbc a,l			;297f	9d 	. 
	add hl,sp			;2980	39 	9 
	adc a,e			;2981	8b 	. 
	jr c,$-33		;2982	38 dd 	8 . 
	ld (hl),00ch		;2984	36 0c 	6 . 
	add a,b			;2986	80 	. 
	ld (ix+00eh),060h		;2987	dd 36 0e 60 	. 6 . ` 
sub_298bh:
	set 0,(ix+001h)		;298b	dd cb 01 c6 	. . . . 
	ld (ix+001h),000h		;298f	dd 36 01 00 	. 6 . . 
	ld (ix+014h),003h		;2993	dd 36 14 03 	. 6 . . 
	ld (ix+005h),001h		;2997	dd 36 05 01 	. 6 . . 
	ld a,(0c06fh)		;299b	3a 6f c0 	: o . 
	or a			;299e	b7 	. 
	jp nz,l2a4dh		;299f	c2 4d 2a 	. M * 
	ld a,(0c051h)		;29a2	3a 51 c0 	: Q . 
l29a5h:
	or a			;29a5	b7 	. 
	jr nz,l2a12h		;29a6	20 6a 	  j 
	ld a,(0c054h)		;29a8	3a 54 c0 	: T . 
	cp 007h		;29ab	fe 07 	. . 
	jr z,l29bfh		;29ad	28 10 	( . 
l29afh:
	cp 009h		;29af	fe 09 	. . 
	jr z,l29e0h		;29b1	28 2d 	( - 
	ld (ix+01fh),018h		;29b3	dd 36 1f 18 	. 6 . . 
	ld (ix+01dh),008h		;29b7	dd 36 1d 08 	. 6 . . 
	call sub_2bc3h		;29bb	cd c3 2b 	. . + 
	ret			;29be	c9 	. 
l29bfh:
	ld a,085h		;29bf	3e 85 	> . 
	ld (0c110h),a		;29c1	32 10 c1 	2 . . 
	ld hl,l0040h		;29c4	21 40 00 	! @ . 
	ld (0c30fh),hl		;29c7	22 0f c3 	" . . 
	ld (ix+006h),004h		;29ca	dd 36 06 04 	. 6 . . 
	ld (ix+01fh),018h		;29ce	dd 36 1f 18 	. 6 . . 
	ld (ix+01dh),00fh		;29d2	dd 36 1d 0f 	. 6 . . 
	ld (ix+01ah),008h		;29d6	dd 36 1a 08 	. 6 . . 
	ld hl,08f2ah		;29da	21 2a 8f 	! * . 
	jp 04173h		;29dd	c3 73 41 	. s A 
l29e0h:
	ld (ix+01ah),006h		;29e0	dd 36 1a 06 	. 6 . . 
	ld a,088h		;29e4	3e 88 	> . 
	ld (0c110h),a		;29e6	32 10 c1 	2 . . 
	ld a,(0c30eh)		;29e9	3a 0e c3 	: . . 
	sub 010h		;29ec	d6 10 	. . 
	ld (0c30eh),a		;29ee	32 0e c3 	2 . . 
	ld (ix+006h),004h		;29f1	dd 36 06 04 	. 6 . . 
	ld (ix+01fh),018h		;29f5	dd 36 1f 18 	. 6 . . 
	ld (ix+01dh),008h		;29f9	dd 36 1d 08 	. 6 . . 
	ld a,(0c023h)		;29fd	3a 23 c0 	: # . 
	cp 00dh		;2a00	fe 0d 	. . 
	ld hl,09011h		;2a02	21 11 90 	! . . 
	jp nz,04173h		;2a05	c2 73 41 	. s A 
	ld (ix+014h),000h		;2a08	dd 36 14 00 	. 6 . . 
	ld hl,08f7bh		;2a0c	21 7b 8f 	! { . 
	jp 04173h		;2a0f	c3 73 41 	. s A 
l2a12h:
	ld hl,l0040h		;2a12	21 40 00 	! @ . 
	ld (0c30fh),hl		;2a15	22 0f c3 	" . . 
	ld (ix+00eh),090h		;2a18	dd 36 0e 90 	. 6 . . 
	ld (ix+006h),004h		;2a1c	dd 36 06 04 	. 6 . . 
	ld (ix+01fh),010h		;2a20	dd 36 1f 10 	. 6 . . 
	ld (ix+01dh),00fh		;2a24	dd 36 1d 0f 	. 6 . . 
	ld (ix+01ah),00bh		;2a28	dd 36 1a 0b 	. 6 . . 
	ld a,008h		;2a2c	3e 08 	> . 
	ld (0c054h),a		;2a2e	32 54 c0 	2 T . 
	ld hl,09152h		;2a31	21 52 91 	! R . 
	jp 04173h		;2a34	c3 73 41 	. s A 
sub_2a37h:
	ld (ix+006h),005h		;2a37	dd 36 06 05 	. 6 . . 
	ld (ix+01fh),018h		;2a3b	dd 36 1f 18 	. 6 . . 
	ld (ix+01dh),008h		;2a3f	dd 36 1d 08 	. 6 . . 
	ld (ix+01ah),007h		;2a43	dd 36 1a 07 	. 6 . . 
	ld hl,090bch		;2a47	21 bc 90 	! . . 
	jp 04173h		;2a4a	c3 73 41 	. s A 
l2a4dh:
	ld (ix+006h),005h		;2a4d	dd 36 06 05 	. 6 . . 
	ld (ix+01fh),018h		;2a51	dd 36 1f 18 	. 6 . . 
	ld (ix+01dh),008h		;2a55	dd 36 1d 08 	. 6 . . 
	ld (ix+01ah),014h		;2a59	dd 36 1a 14 	. 6 . . 
	ld (ix+00eh),098h		;2a5d	dd 36 0e 98 	. 6 . . 
	ld hl,090bch		;2a61	21 bc 90 	! . . 
	jp 04173h		;2a64	c3 73 41 	. s A 
	call sub_3b1fh		;2a67	cd 1f 3b 	. . ; 
	ld (0c311h),hl		;2a6a	22 11 c3 	" . . 
	bit 4,(ix+01ch)		;2a6d	dd cb 1c 66 	. . . f 
	jp nz,l3dd4h		;2a71	c2 d4 3d 	. . = 
	call sub_3c0eh		;2a74	cd 0e 3c 	. . < 
	ld a,(0c31ah)		;2a77	3a 1a c3 	: . . 
	cp 001h		;2a7a	fe 01 	. . 
	ret nz			;2a7c	c0 	. 
	ld de,l1904h		;2a7d	11 04 19 	. . . 
	ld a,(0c30ah)		;2a80	3a 0a c3 	: . . 
	or a			;2a83	b7 	. 
	jr z,l2a8eh		;2a84	28 08 	( . 
	call sub_3a18h		;2a86	cd 18 3a 	. . : 
	jp nc,l2c6ah		;2a89	d2 6a 2c 	. j , 
	jr l2a9fh		;2a8c	18 11 	. . 
l2a8eh:
	ld a,008h		;2a8e	3e 08 	> . 
	call sub_3a0ah		;2a90	cd 0a 3a 	. . : 
	jp nc,l2c6ah		;2a93	d2 6a 2c 	. j , 
	call sub_3cd0h		;2a96	cd d0 3c 	. . < 
	ld a,(0c31ah)		;2a99	3a 1a c3 	: . . 
	cp 001h		;2a9c	fe 01 	. . 
	ret nz			;2a9e	c0 	. 
l2a9fh:
	ld a,(0c213h)		;2a9f	3a 13 c2 	: . . 
	or a			;2aa2	b7 	. 
	jp nz,l3461h		;2aa3	c2 61 34 	. a 4 
	bit 0,(ix+01ch)		;2aa6	dd cb 1c 46 	. . . F 
	jr z,l2ab9h		;2aaa	28 0d 	( . 
	bit 1,(ix+01ch)		;2aac	dd cb 1c 4e 	. . . N 
	jr nz,l2ab9h		;2ab0	20 07 	  . 
	call 045f7h		;2ab2	cd f7 45 	. . E 
	ret nz			;2ab5	c0 	. 
	jp l2bcdh		;2ab6	c3 cd 2b 	. . + 
l2ab9h:
	ld a,(0c007h)		;2ab9	3a 07 c0 	: . . 
	bit 4,a		;2abc	cb 67 	. g 
	jp nz,044d1h		;2abe	c2 d1 44 	. . D 
	bit 5,a		;2ac1	cb 6f 	. o 
	jp nz,l2c77h		;2ac3	c2 77 2c 	. w , 
	ld a,(0c006h)		;2ac6	3a 06 c0 	: . . 
	bit 2,a		;2ac9	cb 57 	. W 
	jr nz,l2ae8h		;2acb	20 1b 	  . 
	bit 3,a		;2acd	cb 5f 	. _ 
	jr nz,l2af5h		;2acf	20 24 	  $ 
	bit 1,a		;2ad1	cb 4f 	. O 
	ret z			;2ad3	c8 	. 
l2ad4h:
	ld (ix+01ah),004h		;2ad4	dd 36 1a 04 	. 6 . . 
	bit 0,(ix+014h)		;2ad8	dd cb 14 46 	. . . F 
	ld hl,08da7h		;2adc	21 a7 8d 	! . . 
	jp z,04173h		;2adf	ca 73 41 	. s A 
	ld hl,08dbch		;2ae2	21 bc 8d 	! . . 
	jp 04173h		;2ae5	c3 73 41 	. s A 
l2ae8h:
	res 1,(ix+014h)		;2ae8	dd cb 14 8e 	. . . . 
l2aech:
	res 0,(ix+014h)		;2aec	dd cb 14 86 	. . . . 
	ld (ix+01ah),002h		;2af0	dd 36 1a 02 	. 6 . . 
	ret			;2af4	c9 	. 
l2af5h:
	set 1,(ix+014h)		;2af5	dd cb 14 ce 	. . . . 
l2af9h:
	set 0,(ix+014h)		;2af9	dd cb 14 c6 	. . . . 
	ld (ix+01ah),002h		;2afd	dd 36 1a 02 	. 6 . . 
	ret			;2b01	c9 	. 
sub_2b02h:
	bit 1,(ix+014h)		;2b02	dd cb 14 4e 	. . . N 
	jr z,l2aech		;2b06	28 e4 	( . 
	jr l2af9h		;2b08	18 ef 	. . 
l2b0ah:
	ld hl,l0000h		;2b0a	21 00 00 	! . . 
	ld (0c311h),hl		;2b0d	22 11 c3 	" . . 
	bit 4,(ix+01ch)		;2b10	dd cb 1c 66 	. . . f 
	jp nz,l3dc4h		;2b14	c2 c4 3d 	. . = 
	call sub_3c0eh		;2b17	cd 0e 3c 	. . < 
	ld a,(0c31ah)		;2b1a	3a 1a c3 	: . . 
	cp 002h		;2b1d	fe 02 	. . 
	ret nz			;2b1f	c0 	. 
	ld de,l1904h		;2b20	11 04 19 	. . . 
	ld a,(0c30ah)		;2b23	3a 0a c3 	: . . 
	or a			;2b26	b7 	. 
	jr z,l2b31h		;2b27	28 08 	( . 
	call sub_3a18h		;2b29	cd 18 3a 	. . : 
	jp nc,l2c6ah		;2b2c	d2 6a 2c 	. j , 
	jr l2b42h		;2b2f	18 11 	. . 
l2b31h:
	ld a,008h		;2b31	3e 08 	> . 
	call sub_3a0ah		;2b33	cd 0a 3a 	. . : 
	jp nc,l2c6ah		;2b36	d2 6a 2c 	. j , 
	call sub_3cd0h		;2b39	cd d0 3c 	. . < 
	ld a,(0c31ah)		;2b3c	3a 1a c3 	: . . 
	cp 002h		;2b3f	fe 02 	. . 
	ret nz			;2b41	c0 	. 
l2b42h:
	ld a,(0c007h)		;2b42	3a 07 c0 	: . . 
	bit 4,a		;2b45	cb 67 	. g 
	jr z,l2b53h		;2b47	28 0a 	( . 
	ld (ix+01ah),001h		;2b49	dd 36 1a 01 	. 6 . . 
	call sub_3b1fh		;2b4d	cd 1f 3b 	. . ; 
	jp 044d1h		;2b50	c3 d1 44 	. . D 
l2b53h:
	bit 5,a		;2b53	cb 6f 	. o 
	jp nz,l2c77h		;2b55	c2 77 2c 	. w , 
	bit 1,(ix+014h)		;2b58	dd cb 14 4e 	. . . N 
	jp nz,l2beeh		;2b5c	c2 ee 2b 	. . + 
	ld de,l0100h+2		;2b5f	11 02 01 	. . . 
	ld a,(0c30ah)		;2b62	3a 0a c3 	: . . 
	or a			;2b65	b7 	. 
	jr z,l2b71h		;2b66	28 09 	( . 
	ld d,017h		;2b68	16 17 	. . 
	call sub_39dah		;2b6a	cd da 39 	. . 9 
	jr c,l2b7ah		;2b6d	38 0b 	8 . 
	jr l2b91h		;2b6f	18 20 	.   
l2b71h:
	ld a,00eh		;2b71	3e 0e 	> . 
	ld b,001h		;2b73	06 01 	. . 
	call sub_39b6h		;2b75	cd b6 39 	. . 9 
	jr nc,l2b91h		;2b78	30 17 	0 . 
l2b7ah:
	call sub_3b1fh		;2b7a	cd 1f 3b 	. . ; 
	ld a,(0c006h)		;2b7d	3a 06 c0 	: . . 
	bit 1,a		;2b80	cb 4f 	. O 
	jp nz,l2ad4h		;2b82	c2 d4 2a 	. . * 
	bit 3,a		;2b85	cb 5f 	. _ 
	jp nz,l2af5h		;2b87	c2 f5 2a 	. . * 
	bit 2,a		;2b8a	cb 57 	. W 
	jr nz,l2ba5h		;2b8c	20 17 	  . 
	jp sub_2bc3h		;2b8e	c3 c3 2b 	. . + 
l2b91h:
	ld a,(0c006h)		;2b91	3a 06 c0 	: . . 
	bit 2,a		;2b94	cb 57 	. W 
	jr z,l2babh		;2b96	28 13 	( . 
	set 2,(ix+014h)		;2b98	dd cb 14 d6 	. . . . 
	ld de,0ffc0h		;2b9c	11 c0 ff 	. . . 
	ld bc,0fe00h		;2b9f	01 00 fe 	. . . 
	call sub_3af4h		;2ba2	cd f4 3a 	. . : 
l2ba5h:
	ld hl,08cebh		;2ba5	21 eb 8c 	! . . 
	jp 04152h		;2ba8	c3 52 41 	. R A 
l2babh:
	bit 3,a		;2bab	cb 5f 	. _ 
	jp nz,l2bdeh		;2bad	c2 de 2b 	. . + 
	bit 1,a		;2bb0	cb 4f 	. O 
	jp nz,l2ad4h		;2bb2	c2 d4 2a 	. . * 
	bit 2,(ix+014h)		;2bb5	dd cb 14 56 	. . . V 
	jr z,sub_2bc3h		;2bb9	28 08 	( . 
	ld de,l0020h		;2bbb	11 20 00 	.   . 
	call sub_3b19h		;2bbe	cd 19 3b 	. . ; 
	jr nc,l2ba5h		;2bc1	30 e2 	0 . 
sub_2bc3h:
	ld a,005h		;2bc3	3e 05 	> . 
	ld (0c306h),a		;2bc5	32 06 c3 	2 . . 
	ld a,001h		;2bc8	3e 01 	> . 
	ld (0c31ah),a		;2bca	32 1a c3 	2 . . 
l2bcdh:
	ld hl,090a7h		;2bcd	21 a7 90 	! . . 
	ld a,(0c314h)		;2bd0	3a 14 c3 	: . . 
	bit 0,a		;2bd3	cb 47 	. G 
	jp z,04173h		;2bd5	ca 73 41 	. s A 
	ld hl,090bch		;2bd8	21 bc 90 	! . . 
	jp 04173h		;2bdb	c3 73 41 	. s A 
l2bdeh:
	set 0,(ix+014h)		;2bde	dd cb 14 c6 	. . . . 
	ld de,l0040h		;2be2	11 40 00 	. @ . 
	call sub_3b2ah		;2be5	cd 2a 3b 	. * ; 
	ld hl,08cf4h		;2be8	21 f4 8c 	! . . 
	jp 04152h		;2beb	c3 52 41 	. R A 
l2beeh:
	ld de,l010eh		;2bee	11 0e 01 	. . . 
	ld a,(0c30ah)		;2bf1	3a 0a c3 	: . . 
	or a			;2bf4	b7 	. 
	jr z,l2c01h		;2bf5	28 0a 	( . 
	ld d,017h		;2bf7	16 17 	. . 
	call sub_39dah		;2bf9	cd da 39 	. . 9 
	jr c,l2c0ah		;2bfc	38 0c 	8 . 
	jp l2c21h		;2bfe	c3 21 2c 	. ! , 
l2c01h:
	ld a,00eh		;2c01	3e 0e 	> . 
	ld b,001h		;2c03	06 01 	. . 
	call sub_39b6h		;2c05	cd b6 39 	. . 9 
	jr nc,l2c21h		;2c08	30 17 	0 . 
l2c0ah:
	call sub_3b1fh		;2c0a	cd 1f 3b 	. . ; 
	ld a,(0c006h)		;2c0d	3a 06 c0 	: . . 
	bit 1,a		;2c10	cb 4f 	. O 
	jp nz,l2ad4h		;2c12	c2 d4 2a 	. . * 
	bit 2,a		;2c15	cb 57 	. W 
	jp nz,l2ae8h		;2c17	c2 e8 2a 	. . * 
	bit 3,a		;2c1a	cb 5f 	. _ 
	jr nz,l2c35h		;2c1c	20 17 	  . 
	jp sub_2bc3h		;2c1e	c3 c3 2b 	. . + 
l2c21h:
	ld a,(0c006h)		;2c21	3a 06 c0 	: . . 
	bit 3,a		;2c24	cb 5f 	. _ 
	jr z,l2c3bh		;2c26	28 13 	( . 
	set 2,(ix+014h)		;2c28	dd cb 14 d6 	. . . . 
	ld de,l0040h		;2c2c	11 40 00 	. @ . 
	ld bc,00200h		;2c2f	01 00 02 	. . . 
	call sub_3b47h		;2c32	cd 47 3b 	. G ; 
l2c35h:
	ld hl,08cf4h		;2c35	21 f4 8c 	! . . 
	jp 04152h		;2c38	c3 52 41 	. R A 
l2c3bh:
	bit 2,a		;2c3b	cb 57 	. W 
	jr nz,l2c56h		;2c3d	20 17 	  . 
	bit 1,a		;2c3f	cb 4f 	. O 
	jp nz,l2ad4h		;2c41	c2 d4 2a 	. . * 
	bit 2,(ix+014h)		;2c44	dd cb 14 56 	. . . V 
	jp z,sub_2bc3h		;2c48	ca c3 2b 	. . + 
	ld de,0ffe0h		;2c4b	11 e0 ff 	. . . 
	call sub_3b6ah		;2c4e	cd 6a 3b 	. j ; 
	jr c,l2c35h		;2c51	38 e2 	8 . 
	jp sub_2bc3h		;2c53	c3 c3 2b 	. . + 
l2c56h:
	set 2,(ix+014h)		;2c56	dd cb 14 d6 	. . . . 
	res 0,(ix+014h)		;2c5a	dd cb 14 86 	. . . . 
	ld de,0ffc0h		;2c5e	11 c0 ff 	. . . 
	call sub_3b7ah		;2c61	cd 7a 3b 	. z ; 
	ld hl,08cf4h		;2c64	21 f4 8c 	! . . 
	jp 04152h		;2c67	c3 52 41 	. R A 
l2c6ah:
	ld a,(0c314h)		;2c6a	3a 14 c3 	: . . 
	and 0bfh		;2c6d	e6 bf 	. . 
	or 080h		;2c6f	f6 80 	. . 
	set 2,(ix+01ch)		;2c71	dd cb 1c d6 	. . . . 
	jr l2c85h		;2c75	18 0e 	. . 
l2c77h:
	ld a,091h		;2c77	3e 91 	> . 
	ld (0c110h),a		;2c79	32 10 c1 	2 . . 
	ld (ix+01bh),016h		;2c7c	dd 36 1b 16 	. 6 . . 
	ld a,(0c314h)		;2c80	3a 14 c3 	: . . 
	and 03fh		;2c83	e6 3f 	. ? 
l2c85h:
	ld (0c314h),a		;2c85	32 14 c3 	2 . . 
	bit 0,a		;2c88	cb 47 	. G 
	ld (ix+01ah),003h		;2c8a	dd 36 1a 03 	. 6 . . 
	ld hl,08f00h		;2c8e	21 00 8f 	! . . 
	jr z,l2c96h		;2c91	28 03 	( . 
	ld hl,08f15h		;2c93	21 15 8f 	! . . 
l2c96h:
	call 04173h		;2c96	cd 73 41 	. s A 
	call sub_3c0eh		;2c99	cd 0e 3c 	. . < 
	ld a,(0c31ah)		;2c9c	3a 1a c3 	: . . 
	cp 003h		;2c9f	fe 03 	. . 
	ret nz			;2ca1	c0 	. 
	ld a,(0c213h)		;2ca2	3a 13 c2 	: . . 
	or a			;2ca5	b7 	. 
	jp nz,l3461h		;2ca6	c2 61 34 	. a 4 
	bit 0,(ix+01ch)		;2ca9	dd cb 1c 46 	. . . F 
	jr z,l2cc5h		;2cad	28 16 	( . 
	call 045f7h		;2caf	cd f7 45 	. . E 
	jr nz,l2ccdh		;2cb2	20 19 	  . 
	ld hl,08f00h		;2cb4	21 00 8f 	! . . 
	bit 0,(ix+014h)		;2cb7	dd cb 14 46 	. . . F 
	jr z,l2cc0h		;2cbb	28 03 	( . 
	ld hl,08f15h		;2cbd	21 15 8f 	! . . 
l2cc0h:
	call 04173h		;2cc0	cd 73 41 	. s A 
	jr l2ccdh		;2cc3	18 08 	. . 
l2cc5h:
	ld a,(0c007h)		;2cc5	3a 07 c0 	: . . 
	and 010h		;2cc8	e6 10 	. . 
	call nz,044d1h		;2cca	c4 d1 44 	. . D 
l2ccdh:
	bit 2,(ix+01ch)		;2ccd	dd cb 1c 56 	. . . V 
	jp nz,l2d13h		;2cd1	c2 13 2d 	. . - 
	ld a,(0c006h)		;2cd4	3a 06 c0 	: . . 
	bit 5,a		;2cd7	cb 6f 	. o 
	jr z,l2d0fh		;2cd9	28 34 	( 4 
	dec (ix+01bh)		;2cdb	dd 35 1b 	. 5 . 
	jr z,l2d0fh		;2cde	28 2f 	( / 
	ld de,(0c30fh)		;2ce0	ed 5b 0f c3 	. [ . . 
	bit 7,d		;2ce4	cb 7a 	. z 
	jr nz,l2ceeh		;2ce6	20 06 	  . 
	xor a			;2ce8	af 	. 
	ld h,a			;2ce9	67 	g 
	ld l,a			;2cea	6f 	o 
	sbc hl,de		;2ceb	ed 52 	. R 
	ex de,hl			;2ced	eb 	. 
l2ceeh:
	sra d		;2cee	cb 2a 	. * 
	rr e		;2cf0	cb 1b 	. . 
	sra d		;2cf2	cb 2a 	. * 
	rr e		;2cf4	cb 1b 	. . 
	ld hl,0fe00h		;2cf6	21 00 fe 	! . . 
	add hl,de			;2cf9	19 	. 
	ld (0c311h),hl		;2cfa	22 11 c3 	" . . 
	ld de,l0103h+1		;2cfd	11 04 01 	. . . 
	call sub_3a47h		;2d00	cd 47 3a 	. G : 
	bit 7,(ix+014h)		;2d03	dd cb 14 7e 	. . . ~ 
	jr z,l2d48h		;2d07	28 3f 	( ? 
	set 2,(ix+01ch)		;2d09	dd cb 1c d6 	. . . . 
	jr l2d48h		;2d0d	18 39 	. 9 
l2d0fh:
	set 2,(ix+01ch)		;2d0f	dd cb 1c d6 	. . . . 
l2d13h:
	ld de,l0103h+1		;2d13	11 04 01 	. . . 
	call sub_3a31h		;2d16	cd 31 3a 	. 1 : 
	bit 6,(ix+014h)		;2d19	dd cb 14 76 	. . . v 
	jr z,l2d48h		;2d1d	28 29 	( ) 
	res 2,(ix+01ch)		;2d1f	dd cb 1c 96 	. . . . 
	ld a,0b1h		;2d23	3e b1 	> . 
	ld (0c110h),a		;2d25	32 10 c1 	2 . . 
	ld a,(0c31ch)		;2d28	3a 1c c3 	: . . 
	bit 0,a		;2d2b	cb 47 	. G 
	jr z,l2d3eh		;2d2d	28 0f 	( . 
	bit 1,a		;2d2f	cb 4f 	. O 
	jr nz,l2d3eh		;2d31	20 0b 	  . 
	res 2,(ix+014h)		;2d33	dd cb 14 96 	. . . . 
	ld (ix+01ah),001h		;2d37	dd 36 1a 01 	. 6 . . 
	jp sub_2bc3h		;2d3b	c3 c3 2b 	. . + 
l2d3eh:
	bit 2,(ix+014h)		;2d3e	dd cb 14 56 	. . . V 
	jp z,sub_2bc3h		;2d42	ca c3 2b 	. . + 
	call sub_2b02h		;2d45	cd 02 2b 	. . + 
l2d48h:
	bit 1,(ix+014h)		;2d48	dd cb 14 4e 	. . . N 
	jp nz,l2dbch		;2d4c	c2 bc 2d 	. . - 
	ld de,01802h		;2d4f	11 02 18 	. . . 
	ld a,(0c30ah)		;2d52	3a 0a c3 	: . . 
	or a			;2d55	b7 	. 
	jr z,l2d5fh		;2d56	28 07 	( . 
	call sub_39dah		;2d58	cd da 39 	. . 9 
	jr c,l2d81h		;2d5b	38 24 	8 $ 
	jr l2d70h		;2d5d	18 11 	. . 
l2d5fh:
	ld a,(0c312h)		;2d5f	3a 12 c3 	: . . 
	add a,007h		;2d62	c6 07 	. . 
	ld d,a			;2d64	57 	W 
	ld a,008h		;2d65	3e 08 	> . 
	ld e,002h		;2d67	1e 02 	. . 
	ld b,001h		;2d69	06 01 	. . 
	call sub_39b6h		;2d6b	cd b6 39 	. . 9 
	jr c,l2d81h		;2d6e	38 11 	8 . 
l2d70h:
	ld a,(0c006h)		;2d70	3a 06 c0 	: . . 
	bit 2,a		;2d73	cb 57 	. W 
	jr nz,l2d8fh		;2d75	20 18 	  . 
	bit 3,a		;2d77	cb 5f 	. _ 
	jr nz,l2d9ch		;2d79	20 21 	  ! 
	ld de,sub_0008h		;2d7b	11 08 00 	. . . 
	jp l3b14h		;2d7e	c3 14 3b 	. . ; 
l2d81h:
	call sub_3b1fh		;2d81	cd 1f 3b 	. . ; 
	ld a,(0c006h)		;2d84	3a 06 c0 	: . . 
	bit 3,a		;2d87	cb 5f 	. _ 
	ret z			;2d89	c8 	. 
	set 1,(ix+014h)		;2d8a	dd cb 14 ce 	. . . . 
	ret			;2d8e	c9 	. 
l2d8fh:
	set 2,(ix+014h)		;2d8f	dd cb 14 d6 	. . . . 
	ld de,0fff0h		;2d93	11 f0 ff 	. . . 
	ld bc,0fe00h		;2d96	01 00 fe 	. . . 
	jp sub_3af4h		;2d99	c3 f4 3a 	. . : 
l2d9ch:
	ld a,(0c314h)		;2d9c	3a 14 c3 	: . . 
	set 0,a		;2d9f	cb c7 	. . 
	ld (0c314h),a		;2da1	32 14 c3 	2 . . 
	ld hl,08f15h		;2da4	21 15 8f 	! . . 
	ld a,(0c31ch)		;2da7	3a 1c c3 	: . . 
	and 003h		;2daa	e6 03 	. . 
	cp 001h		;2dac	fe 01 	. . 
	jr nz,l2db3h		;2dae	20 03 	  . 
	ld hl,08de9h		;2db0	21 e9 8d 	! . . 
l2db3h:
	call 04173h		;2db3	cd 73 41 	. s A 
	ld de,l0010h		;2db6	11 10 00 	. . . 
	jp sub_3b2ah		;2db9	c3 2a 3b 	. * ; 
l2dbch:
	ld de,l180eh		;2dbc	11 0e 18 	. . . 
	ld a,(0c30ah)		;2dbf	3a 0a c3 	: . . 
	or a			;2dc2	b7 	. 
	jr z,l2dcch		;2dc3	28 07 	( . 
	call sub_39dah		;2dc5	cd da 39 	. . 9 
	jr c,l2dech		;2dc8	38 22 	8 " 
	jr l2ddbh		;2dca	18 0f 	. . 
l2dcch:
	ld a,(0c312h)		;2dcc	3a 12 c3 	: . . 
	add a,007h		;2dcf	c6 07 	. . 
	ld d,a			;2dd1	57 	W 
	ld a,008h		;2dd2	3e 08 	> . 
	ld b,001h		;2dd4	06 01 	. . 
	call sub_39b6h		;2dd6	cd b6 39 	. . 9 
	jr c,l2dech		;2dd9	38 11 	8 . 
l2ddbh:
	ld a,(0c006h)		;2ddb	3a 06 c0 	: . . 
	bit 3,a		;2dde	cb 5f 	. _ 
	jr nz,l2dfah		;2de0	20 18 	  . 
	bit 2,a		;2de2	cb 57 	. W 
	jr nz,l2e07h		;2de4	20 21 	  ! 
	ld de,0fff8h		;2de6	11 f8 ff 	. . . 
	jp l3b65h		;2de9	c3 65 3b 	. e ; 
l2dech:
	call sub_3b1fh		;2dec	cd 1f 3b 	. . ; 
	ld a,(0c006h)		;2def	3a 06 c0 	: . . 
	bit 2,a		;2df2	cb 57 	. W 
	ret z			;2df4	c8 	. 
	res 1,(ix+014h)		;2df5	dd cb 14 8e 	. . . . 
	ret			;2df9	c9 	. 
l2dfah:
	set 2,(ix+014h)		;2dfa	dd cb 14 d6 	. . . . 
	ld de,l0010h		;2dfe	11 10 00 	. . . 
	ld bc,00200h		;2e01	01 00 02 	. . . 
	jp sub_3b47h		;2e04	c3 47 3b 	. G ; 
l2e07h:
	ld a,(0c314h)		;2e07	3a 14 c3 	: . . 
	bit 0,a		;2e0a	cb 47 	. G 
	res 0,a		;2e0c	cb 87 	. . 
	ld (0c314h),a		;2e0e	32 14 c3 	2 . . 
	ld hl,08f00h		;2e11	21 00 8f 	! . . 
	ld a,(0c31ch)		;2e14	3a 1c c3 	: . . 
	and 003h		;2e17	e6 03 	. . 
	cp 001h		;2e19	fe 01 	. . 
	jr nz,l2e20h		;2e1b	20 03 	  . 
	ld hl,08dd1h		;2e1d	21 d1 8d 	! . . 
l2e20h:
	call 04173h		;2e20	cd 73 41 	. s A 
	ld de,0fff0h		;2e23	11 f0 ff 	. . . 
	jp sub_3b7ah		;2e26	c3 7a 3b 	. z ; 
	ld hl,l0000h		;2e29	21 00 00 	! . . 
	ld (0c311h),hl		;2e2c	22 11 c3 	" . . 
	bit 4,(ix+01ch)		;2e2f	dd cb 1c 66 	. . . f 
	jp nz,l3dd4h		;2e33	c2 d4 3d 	. . = 
	call sub_3c0eh		;2e36	cd 0e 3c 	. . < 
	ld a,(0c31ah)		;2e39	3a 1a c3 	: . . 
	cp 004h		;2e3c	fe 04 	. . 
	ret nz			;2e3e	c0 	. 
	ld de,l1904h		;2e3f	11 04 19 	. . . 
	ld a,(0c30ah)		;2e42	3a 0a c3 	: . . 
	or a			;2e45	b7 	. 
	jr z,l2e50h		;2e46	28 08 	( . 
	call sub_3a18h		;2e48	cd 18 3a 	. . : 
	jp nc,l2c6ah		;2e4b	d2 6a 2c 	. j , 
	jr l2e58h		;2e4e	18 08 	. . 
l2e50h:
	ld a,008h		;2e50	3e 08 	> . 
	call sub_3a0ah		;2e52	cd 0a 3a 	. . : 
	jp nc,l2c6ah		;2e55	d2 6a 2c 	. j , 
l2e58h:
	ld a,(0c006h)		;2e58	3a 06 c0 	: . . 
	bit 1,a		;2e5b	cb 4f 	. O 
	jr nz,l2e71h		;2e5d	20 12 	  . 
	ld a,(0c30ah)		;2e5f	3a 0a c3 	: . . 
	or a			;2e62	b7 	. 
	jp nz,l2eebh		;2e63	c2 eb 2e 	. . . 
	ld de,l0003h+1		;2e66	11 04 00 	. . . 
	ld a,008h		;2e69	3e 08 	> . 
	call sub_3a0ah		;2e6b	cd 0a 3a 	. . : 
	jp nc,l2eebh		;2e6e	d2 eb 2e 	. . . 
l2e71h:
	bit 2,(ix+014h)		;2e71	dd cb 14 56 	. . . V 
	jr z,l2e8fh		;2e75	28 18 	( . 
	bit 1,(ix+014h)		;2e77	dd cb 14 4e 	. . . N 
	jp nz,l2ef5h		;2e7b	c2 f5 2e 	. . . 
	ld de,00902h		;2e7e	11 02 09 	. . . 
	ld a,00dh		;2e81	3e 0d 	> . 
	call sub_39cch		;2e83	cd cc 39 	. . 9 
	jp c,sub_3b1fh		;2e86	da 1f 3b 	. . ; 
	ld de,l0020h		;2e89	11 20 00 	.   . 
	jp l3b14h		;2e8c	c3 14 3b 	. . ; 
l2e8fh:
	ld a,(0c006h)		;2e8f	3a 06 c0 	: . . 
	ld c,a			;2e92	4f 	O 
	ld a,(0c314h)		;2e93	3a 14 c3 	: . . 
	and 0fbh		;2e96	e6 fb 	. . 
	bit 2,c		;2e98	cb 51 	. Q 
	jr nz,l2ec5h		;2e9a	20 29 	  ) 
	bit 3,c		;2e9c	cb 59 	. Y 
	ret z			;2e9e	c8 	. 
	bit 1,c		;2e9f	cb 49 	. I 
	jr nz,l2eb5h		;2ea1	20 12 	  . 
	ld de,l090eh		;2ea3	11 0e 09 	. . . 
	ld a,00dh		;2ea6	3e 0d 	> . 
	call sub_39cch		;2ea8	cd cc 39 	. . 9 
	jr c,l2eb5h		;2eab	38 08 	8 . 
	ld hl,l0020h		;2ead	21 20 00 	!   . 
	ld (0c30fh),hl		;2eb0	22 0f c3 	" . . 
	set 2,a		;2eb3	cb d7 	. . 
l2eb5h:
	or 003h		;2eb5	f6 03 	. . 
	bit 0,(ix+014h)		;2eb7	dd cb 14 46 	. . . F 
	ld (0c314h),a		;2ebb	32 14 c3 	2 . . 
	ret nz			;2ebe	c0 	. 
	ld hl,08dbch		;2ebf	21 bc 8d 	! . . 
	jp 04173h		;2ec2	c3 73 41 	. s A 
l2ec5h:
	bit 1,c		;2ec5	cb 49 	. I 
	jr nz,l2edbh		;2ec7	20 12 	  . 
	ld de,00902h		;2ec9	11 02 09 	. . . 
	ld a,00dh		;2ecc	3e 0d 	> . 
	call sub_39cch		;2ece	cd cc 39 	. . 9 
	jr c,l2edbh		;2ed1	38 08 	8 . 
	ld hl,0ffe0h		;2ed3	21 e0 ff 	! . . 
	ld (0c30fh),hl		;2ed6	22 0f c3 	" . . 
	set 2,a		;2ed9	cb d7 	. . 
l2edbh:
	and 0fch		;2edb	e6 fc 	. . 
	bit 0,(ix+014h)		;2edd	dd cb 14 46 	. . . F 
	ld (0c314h),a		;2ee1	32 14 c3 	2 . . 
	ret z			;2ee4	c8 	. 
	ld hl,08da7h		;2ee5	21 a7 8d 	! . . 
	jp 04173h		;2ee8	c3 73 41 	. s A 
l2eebh:
	bit 2,(ix+014h)		;2eeb	dd cb 14 56 	. . . V 
	jp z,sub_2bc3h		;2eef	ca c3 2b 	. . + 
	jp sub_2b02h		;2ef2	c3 02 2b 	. . + 
l2ef5h:
	ld de,l090eh		;2ef5	11 0e 09 	. . . 
	ld a,00dh		;2ef8	3e 0d 	> . 
	call sub_39cch		;2efa	cd cc 39 	. . 9 
	jp c,sub_3b1fh		;2efd	da 1f 3b 	. . ; 
	ld de,0ffe0h		;2f00	11 e0 ff 	. . . 
	call sub_3b6ah		;2f03	cd 6a 3b 	. j ; 
	jp nc,sub_3b1fh		;2f06	d2 1f 3b 	. . ; 
	ret			;2f09	c9 	. 
sub_2f0ah:
	res 7,(ix+001h)		;2f0a	dd cb 01 be 	. . . . 
	ld a,(0c31ah)		;2f0e	3a 1a c3 	: . . 
	cp 006h		;2f11	fe 06 	. . 
	jp z,l3857h		;2f13	ca 57 38 	. W 8 
	cp 00bh		;2f16	fe 0b 	. . 
	jp z,l3857h		;2f18	ca 57 38 	. W 8 
	cp 00ch		;2f1b	fe 0c 	. . 
	jp z,l3857h		;2f1d	ca 57 38 	. W 8 
	xor a			;2f20	af 	. 
	ld h,a			;2f21	67 	g 
	ld l,a			;2f22	6f 	o 
	ld (0c30fh),hl		;2f23	22 0f c3 	" . . 
	ld (0c31ch),a		;2f26	32 1c c3 	2 . . 
	ld (0c054h),a		;2f29	32 54 c0 	2 T . 
	res 2,(ix+014h)		;2f2c	dd cb 14 96 	. . . . 
	ld hl,0ff38h		;2f30	21 38 ff 	! 8 . 
	ld (0c311h),hl		;2f33	22 11 c3 	" . . 
	ld a,(0c31ah)		;2f36	3a 1a c3 	: . . 
	ld (0c090h),a		;2f39	32 90 c0 	2 . . 
	ld (ix+01ah),00fh		;2f3c	dd 36 1a 0f 	. 6 . . 
	ld (ix+006h),005h		;2f40	dd 36 06 05 	. 6 . . 
	ld b,01eh		;2f44	06 1e 	. . 
l2f46h:
	ld a,001h		;2f46	3e 01 	> . 
	call sub_02b3h		;2f48	cd b3 02 	. . . 
	djnz l2f46h		;2f4b	10 f9 	. . 
	ld a,089h		;2f4d	3e 89 	> . 
	ld (0c110h),a		;2f4f	32 10 c1 	2 . . 
	ret			;2f52	c9 	. 
	ld hl,08d23h		;2f53	21 23 8d 	! # . 
	call 04152h		;2f56	cd 52 41 	. R A 
	ld a,(0c30eh)		;2f59	3a 0e c3 	: . . 
	cp 0a8h		;2f5c	fe a8 	. . 
	ret nc			;2f5e	d0 	. 
	cp 0a3h		;2f5f	fe a3 	. . 
	ret c			;2f61	d8 	. 
	ld a,(0c30ah)		;2f62	3a 0a c3 	: . . 
	inc a			;2f65	3c 	< 
	ret nz			;2f66	c0 	. 
	call sub_2752h		;2f67	cd 52 27 	. R ' 
	ld a,006h		;2f6a	3e 06 	> . 
	ld (0c01fh),a		;2f6c	32 1f c0 	2 . . 
	ret			;2f6f	c9 	. 
	ld hl,l0000h		;2f70	21 00 00 	! . . 
	ld (0c311h),hl		;2f73	22 11 c3 	" . . 
	ld de,00c0ch		;2f76	11 0c 0c 	. . . 
	call sub_3c11h		;2f79	cd 11 3c 	. . < 
	ld de,01805h		;2f7c	11 05 18 	. . . 
	ld a,00fh		;2f7f	3e 0f 	> . 
	call sub_3a0ah		;2f81	cd 0a 3a 	. . : 
	jp nc,l2fdch		;2f84	d2 dc 2f 	. . / 
	ld a,(0c007h)		;2f87	3a 07 c0 	: . . 
	bit 5,a		;2f8a	cb 6f 	. o 
	jp nz,l2fe6h		;2f8c	c2 e6 2f 	. . / 
	ld a,(0c310h)		;2f8f	3a 10 c3 	: . . 
	cpl			;2f92	2f 	/ 
	add a,007h		;2f93	c6 07 	. . 
	ld (0c306h),a		;2f95	32 06 c3 	2 . . 
	ld hl,08d19h		;2f98	21 19 8d 	! . . 
	call 04152h		;2f9b	cd 52 41 	. R A 
l2f9eh:
	ld de,l0214h		;2f9e	11 14 02 	. . . 
	call 07c18h		;2fa1	cd 18 7c 	. . | 
	rlca			;2fa4	07 	. 
	jr nc,l2fb0h		;2fa5	30 09 	0 . 
	rlca			;2fa7	07 	. 
	jp nc,043bbh		;2fa8	d2 bb 43 	. . C 
	call 04541h		;2fab	cd 41 45 	. A E 
	jr l2fc0h		;2fae	18 10 	. . 
l2fb0h:
	ld de,l1218h		;2fb0	11 18 12 	. . . 
	call 07c18h		;2fb3	cd 18 7c 	. . | 
	rlca			;2fb6	07 	. 
	jr nc,l2fc0h		;2fb7	30 07 	0 . 
	rlca			;2fb9	07 	. 
	jp nc,043bbh		;2fba	d2 bb 43 	. . C 
	call 04541h		;2fbd	cd 41 45 	. A E 
l2fc0h:
	ld a,(0c006h)		;2fc0	3a 06 c0 	: . . 
	bit 3,a		;2fc3	cb 5f 	. _ 
	jr z,l2fd0h		;2fc5	28 09 	( . 
	ld de,l0040h		;2fc7	11 40 00 	. @ . 
	ld bc,l0400h		;2fca	01 00 04 	. . . 
	jp sub_3b47h		;2fcd	c3 47 3b 	. G ; 
l2fd0h:
	bit 2,a		;2fd0	cb 57 	. W 
	ret z			;2fd2	c8 	. 
	ld de,0ffc0h		;2fd3	11 c0 ff 	. . . 
	ld bc,l0100h		;2fd6	01 00 01 	. . . 
	jp l3b98h		;2fd9	c3 98 3b 	. . ; 
l2fdch:
	set 7,(ix+014h)		;2fdc	dd cb 14 fe 	. . . . 
	set 2,(ix+01ch)		;2fe0	dd cb 1c d6 	. . . . 
	jr l2feeh		;2fe4	18 08 	. . 
l2fe6h:
	ld (ix+01bh),010h		;2fe6	dd 36 1b 10 	. 6 . . 
	res 7,(ix+014h)		;2fea	dd cb 14 be 	. . . . 
l2feeh:
	ld (ix+01ah),009h		;2fee	dd 36 1a 09 	. 6 . . 
	ld hl,08f60h		;2ff2	21 60 8f 	! ` . 
	call 04173h		;2ff5	cd 73 41 	. s A 
	ld de,00c0ch		;2ff8	11 0c 0c 	. . . 
	call sub_3c11h		;2ffb	cd 11 3c 	. . < 
	bit 2,(ix+01ch)		;2ffe	dd cb 1c 56 	. . . V 
	jr nz,l303dh		;3002	20 39 	  9 
	ld a,(0c006h)		;3004	3a 06 c0 	: . . 
	bit 5,a		;3007	cb 6f 	. o 
	jr z,l3039h		;3009	28 2e 	( . 
	dec (ix+01bh)		;300b	dd 35 1b 	. 5 . 
	jr z,l3039h		;300e	28 29 	( ) 
	ld de,(0c30fh)		;3010	ed 5b 0f c3 	. [ . . 
	xor a			;3014	af 	. 
	ld h,a			;3015	67 	g 
	ld l,a			;3016	6f 	o 
	sbc hl,de		;3017	ed 52 	. R 
	ex de,hl			;3019	eb 	. 
	sra d		;301a	cb 2a 	. * 
	rr e		;301c	cb 1b 	. . 
	ld hl,0fe00h		;301e	21 00 fe 	! . . 
	add hl,de			;3021	19 	. 
	ld (0c311h),hl		;3022	22 11 c3 	" . . 
l3025h:
	ld de,l0100h+2		;3025	11 02 01 	. . . 
	call sub_3a47h		;3028	cd 47 3a 	. G : 
	bit 7,(ix+014h)		;302b	dd cb 14 7e 	. . . ~ 
	jp z,l2f9eh		;302f	ca 9e 2f 	. . / 
	set 2,(ix+01ch)		;3032	dd cb 1c d6 	. . . . 
	jp l2f9eh		;3036	c3 9e 2f 	. . / 
l3039h:
	set 2,(ix+01ch)		;3039	dd cb 1c d6 	. . . . 
l303dh:
	ld de,l0100h+2		;303d	11 02 01 	. . . 
	call sub_3a31h		;3040	cd 31 3a 	. 1 : 
	bit 6,(ix+014h)		;3043	dd cb 14 76 	. . . v 
	jp z,l2f9eh		;3047	ca 9e 2f 	. . / 
	ld a,(0c314h)		;304a	3a 14 c3 	: . . 
	and 03fh		;304d	e6 3f 	. ? 
	ld (0c314h),a		;304f	32 14 c3 	2 . . 
	res 2,(ix+01ch)		;3052	dd cb 1c 96 	. . . . 
	ld (ix+01ah),008h		;3056	dd 36 1a 08 	. 6 . . 
	jp l2f9eh		;305a	c3 9e 2f 	. . / 
l305dh:
	ld hl,l0000h		;305d	21 00 00 	! . . 
	ld (0c311h),hl		;3060	22 11 c3 	" . . 
	ld de,00c0ch		;3063	11 0c 0c 	. . . 
	call sub_3c11h		;3066	cd 11 3c 	. . < 
	bit 0,(ix+01ch)		;3069	dd cb 1c 46 	. . . F 
	jr nz,l3077h		;306d	20 08 	  . 
	ld a,(0c007h)		;306f	3a 07 c0 	: . . 
	and 010h		;3072	e6 10 	. . 
	call nz,0441ch		;3074	c4 1c 44 	. . D 
l3077h:
	ld a,(0c007h)		;3077	3a 07 c0 	: . . 
	bit 5,a		;307a	cb 6f 	. o 
	jp nz,l30beh		;307c	c2 be 30 	. . 0 
	ld a,(0c310h)		;307f	3a 10 c3 	: . . 
	cpl			;3082	2f 	/ 
	add a,007h		;3083	c6 07 	. . 
	ld (0c306h),a		;3085	32 06 c3 	2 . . 
	ld hl,08d1eh		;3088	21 1e 8d 	! . . 
	call 04152h		;308b	cd 52 41 	. R A 
l308eh:
	ld de,l0212h		;308e	11 12 02 	. . . 
	call 07c18h		;3091	cd 18 7c 	. . | 
	rlca			;3094	07 	. 
	jp c,l3865h		;3095	da 65 38 	. e 8 
	ld de,01214h		;3098	11 14 12 	. . . 
	call 07c18h		;309b	cd 18 7c 	. . | 
	rlca			;309e	07 	. 
	jp c,l3865h		;309f	da 65 38 	. e 8 
	ld a,(0c006h)		;30a2	3a 06 c0 	: . . 
	bit 3,a		;30a5	cb 5f 	. _ 
	jr z,l30b2h		;30a7	28 09 	( . 
	ld de,l0040h		;30a9	11 40 00 	. @ . 
	ld bc,l0280h		;30ac	01 80 02 	. . . 
	jp sub_3b47h		;30af	c3 47 3b 	. G ; 
l30b2h:
	bit 2,a		;30b2	cb 57 	. W 
	ret z			;30b4	c8 	. 
	ld de,0ffc0h		;30b5	11 c0 ff 	. . . 
	ld bc,l0100h		;30b8	01 00 01 	. . . 
	jp l3b98h		;30bb	c3 98 3b 	. . ; 
l30beh:
	ld (ix+01bh),010h		;30be	dd 36 1b 10 	. 6 . . 
	res 7,(ix+014h)		;30c2	dd cb 14 be 	. . . . 
	ld (ix+01ah),00ch		;30c6	dd 36 1a 0c 	. 6 . . 
	ld hl,09137h		;30ca	21 37 91 	! 7 . 
	call 04173h		;30cd	cd 73 41 	. s A 
	ld de,00c0ch		;30d0	11 0c 0c 	. . . 
	call sub_3c11h		;30d3	cd 11 3c 	. . < 
	bit 0,(ix+01ch)		;30d6	dd cb 1c 46 	. . . F 
	jr nz,l30e4h		;30da	20 08 	  . 
	ld a,(0c007h)		;30dc	3a 07 c0 	: . . 
	and 010h		;30df	e6 10 	. . 
	call nz,0441ch		;30e1	c4 1c 44 	. . D 
l30e4h:
	bit 2,(ix+01ch)		;30e4	dd cb 1c 56 	. . . V 
	jr nz,l3123h		;30e8	20 39 	  9 
	ld a,(0c006h)		;30ea	3a 06 c0 	: . . 
	bit 5,a		;30ed	cb 6f 	. o 
	jr z,l311fh		;30ef	28 2e 	( . 
	dec (ix+01bh)		;30f1	dd 35 1b 	. 5 . 
	jr z,l311fh		;30f4	28 29 	( ) 
	ld de,(0c30fh)		;30f6	ed 5b 0f c3 	. [ . . 
	xor a			;30fa	af 	. 
	ld h,a			;30fb	67 	g 
	ld l,a			;30fc	6f 	o 
	sbc hl,de		;30fd	ed 52 	. R 
	ex de,hl			;30ff	eb 	. 
	sra d		;3100	cb 2a 	. * 
	rr e		;3102	cb 1b 	. . 
	ld hl,0fe00h		;3104	21 00 fe 	! . . 
	add hl,de			;3107	19 	. 
	ld (0c311h),hl		;3108	22 11 c3 	" . . 
	ld de,l0100h+2		;310b	11 02 01 	. . . 
	call sub_3a47h		;310e	cd 47 3a 	. G : 
	bit 7,(ix+014h)		;3111	dd cb 14 7e 	. . . ~ 
	jp z,l308eh		;3115	ca 8e 30 	. . 0 
	set 2,(ix+01ch)		;3118	dd cb 1c d6 	. . . . 
	jp l308eh		;311c	c3 8e 30 	. . 0 
l311fh:
	set 2,(ix+01ch)		;311f	dd cb 1c d6 	. . . . 
l3123h:
	ld de,l0100h+2		;3123	11 02 01 	. . . 
	call sub_3ab1h		;3126	cd b1 3a 	. . : 
	ld a,(0c31ah)		;3129	3a 1a c3 	: . . 
	cp 013h		;312c	fe 13 	. . 
	ret z			;312e	c8 	. 
	bit 6,(ix+014h)		;312f	dd cb 14 76 	. . . v 
	jp z,l308eh		;3133	ca 8e 30 	. . 0 
	ld a,(0c314h)		;3136	3a 14 c3 	: . . 
	and 03fh		;3139	e6 3f 	. ? 
	ld (0c314h),a		;313b	32 14 c3 	2 . . 
	res 2,(ix+01ch)		;313e	dd cb 1c 96 	. . . . 
	ld (ix+01ah),00bh		;3142	dd 36 1a 0b 	. 6 . . 
	jp l308eh		;3146	c3 8e 30 	. . 0 
	ld a,(0c069h)		;3149	3a 69 c0 	: i . 
	ld hl,(0c0afh)		;314c	2a af c0 	* . . 
	add a,h			;314f	84 	. 
	cp (ix+00ch)		;3150	dd be 0c 	. . . 
	jr z,l3163h		;3153	28 0e 	( . 
	jr c,l3189h		;3155	38 32 	8 2 
	ld hl,00080h		;3157	21 80 00 	! . . 
	ld (0c30fh),hl		;315a	22 0f c3 	" . . 
	ld hl,08cf4h		;315d	21 f4 8c 	! . . 
	jp 04152h		;3160	c3 52 41 	. R A 
l3163h:
	ld (ix+01ah),00eh		;3163	dd 36 1a 0e 	. 6 . . 
	ld (ix+01bh),021h		;3167	dd 36 1b 21 	. 6 . ! 
	ld a,081h		;316b	3e 81 	> . 
	ld (0c202h),a		;316d	32 02 c2 	2 . . 
	ret			;3170	c9 	. 
l3171h:
	dec (ix+01bh)		;3171	dd 35 1b 	. 5 . 
	jr nz,l3189h		;3174	20 13 	  . 
	call sub_3b1fh		;3176	cd 1f 3b 	. . ; 
	ld hl,0c01fh		;3179	21 1f c0 	! . . 
	ld a,(hl)			;317c	7e 	~ 
	cp 085h		;317d	fe 85 	. . 
	jr z,l3185h		;317f	28 04 	( . 
	ld a,005h		;3181	3e 05 	> . 
	ld (hl),a			;3183	77 	w 
	ret			;3184	c9 	. 
l3185h:
	ld a,0c5h		;3185	3e c5 	> . 
	ld (hl),a			;3187	77 	w 
	ret			;3188	c9 	. 
l3189h:
	ld hl,0ff80h		;3189	21 80 ff 	! . . 
	ld (0c30fh),hl		;318c	22 0f c3 	" . . 
	ld hl,08cebh		;318f	21 eb 8c 	! . . 
	jp 04152h		;3192	c3 52 41 	. R A 
	ld hl,l0000h		;3195	21 00 00 	! . . 
	ld (0c311h),hl		;3198	22 11 c3 	" . . 
	ld a,(0c069h)		;319b	3a 69 c0 	: i . 
	ld hl,(0c0afh)		;319e	2a af c0 	* . . 
	add a,h			;31a1	84 	. 
	cp (ix+00ch)		;31a2	dd be 0c 	. . . 
	jr z,l31c9h		;31a5	28 22 	( " 
	jr c,l31b9h		;31a7	38 10 	8 . 
	ld hl,00080h		;31a9	21 80 00 	! . . 
	ld (0c30fh),hl		;31ac	22 0f c3 	" . . 
	set 1,(ix+014h)		;31af	dd cb 14 ce 	. . . . 
	ld hl,08d02h		;31b3	21 02 8d 	! . . 
	jp 04152h		;31b6	c3 52 41 	. R A 
l31b9h:
	ld hl,0ff80h		;31b9	21 80 ff 	! . . 
	ld (0c30fh),hl		;31bc	22 0f c3 	" . . 
	res 1,(ix+014h)		;31bf	dd cb 14 8e 	. . . . 
	ld hl,08cfdh		;31c3	21 fd 8c 	! . . 
	jp 04152h		;31c6	c3 52 41 	. R A 
l31c9h:
	ld (ix+01ah),012h		;31c9	dd 36 1a 12 	. 6 . . 
	ld (ix+01bh),040h		;31cd	dd 36 1b 40 	. 6 . @ 
	ld a,082h		;31d1	3e 82 	> . 
	ld (0c202h),a		;31d3	32 02 c2 	2 . . 
	ld hl,000d0h		;31d6	21 d0 00 	! . . 
	ld (0c311h),hl		;31d9	22 11 c3 	" . . 
	call sub_3b1fh		;31dc	cd 1f 3b 	. . ; 
	push ix		;31df	dd e5 	. . 
	call 0663ah		;31e1	cd 3a 66 	. : f 
	pop ix		;31e4	dd e1 	. . 
	ld hl,0c0c9h		;31e6	21 c9 c0 	! . . 
	set 0,(hl)		;31e9	cb c6 	. . 
	ret			;31eb	c9 	. 
l31ech:
	ld hl,l0300h		;31ec	21 00 03 	! . . 
	ld (0c0b9h),hl		;31ef	22 b9 c0 	" . . 
	dec (ix+01bh)		;31f2	dd 35 1b 	. 5 . 
	ret nz			;31f5	c0 	. 
	jp l3461h		;31f6	c3 61 34 	. a 4 
l31f9h:
	ld a,(0c211h)		;31f9	3a 11 c2 	: . . 
	add a,a			;31fc	87 	. 
	add a,a			;31fd	87 	. 
	and 0f0h		;31fe	e6 f0 	. . 
	ld (0c30ch),a		;3200	32 0c c3 	2 . . 
	call sub_3b1fh		;3203	cd 1f 3b 	. . ; 
	ld hl,0c314h		;3206	21 14 c3 	! . . 
	ld a,(hl)			;3209	7e 	~ 
	and 02bh		;320a	e6 2b 	. + 
	ld (hl),a			;320c	77 	w 
	res 2,(ix+014h)		;320d	dd cb 14 96 	. . . . 
	ld (ix+006h),004h		;3211	dd 36 06 04 	. 6 . . 
	ld (ix+01ah),00ah		;3215	dd 36 1a 0a 	. 6 . . 
	ld a,0b1h		;3219	3e b1 	> . 
	ld (0c110h),a		;321b	32 10 c1 	2 . . 
	ret			;321e	c9 	. 
	call sub_3b1fh		;321f	cd 1f 3b 	. . ; 
	ld (0c311h),hl		;3222	22 11 c3 	" . . 
	ld a,(0c006h)		;3225	3a 06 c0 	: . . 
	rrca			;3228	0f 	. 
	jr c,l3267h		;3229	38 3c 	8 < 
	rrca			;322b	0f 	. 
	jr c,l32a5h		;322c	38 77 	8 w 
	rrca			;322e	0f 	. 
	jr c,l324dh		;322f	38 1c 	8 . 
	rrca			;3231	0f 	. 
	ret nc			;3232	d0 	. 
	ld de,l0711h		;3233	11 11 07 	. . . 
	ld a,008h		;3236	3e 08 	> . 
	ld e,002h		;3238	1e 02 	. . 
	ld b,001h		;323a	06 01 	. . 
	call sub_39b6h		;323c	cd b6 39 	. . 9 
	ret c			;323f	d8 	. 
	ld hl,l0100h		;3240	21 00 01 	! . . 
	ld (0c30fh),hl		;3243	22 0f c3 	" . . 
	ld (ix+014h),007h		;3246	dd 36 14 07 	. 6 . . 
	jp l2c6ah		;324a	c3 6a 2c 	. j , 
l324dh:
	ld de,l07ffh		;324d	11 ff 07 	. . . 
	ld a,008h		;3250	3e 08 	> . 
	ld e,002h		;3252	1e 02 	. . 
	ld b,001h		;3254	06 01 	. . 
	call sub_39b6h		;3256	cd b6 39 	. . 9 
	ret c			;3259	d8 	. 
	ld hl,0ff00h		;325a	21 00 ff 	! . . 
	ld (0c30fh),hl		;325d	22 0f c3 	" . . 
	ld (ix+014h),004h		;3260	dd 36 14 04 	. 6 . . 
	jp l2c6ah		;3264	c3 6a 2c 	. j , 
l3267h:
	ld a,(0c30ah)		;3267	3a 0a c3 	: . . 
	or a			;326a	b7 	. 
	ret nz			;326b	c0 	. 
	ld de,sub_0008h		;326c	11 08 00 	. . . 
	call 07c18h		;326f	cd 18 7c 	. . | 
	rlca			;3272	07 	. 
	jr nc,l327ah		;3273	30 05 	0 . 
	dec hl			;3275	2b 	+ 
	ld a,(hl)			;3276	7e 	~ 
	cp 03fh		;3277	fe 3f 	. ? 
	ret nz			;3279	c0 	. 
l327ah:
	ld de,l0c08h		;327a	11 08 0c 	. . . 
	call 07c18h		;327d	cd 18 7c 	. . | 
	dec hl			;3280	2b 	+ 
	ld a,(hl)			;3281	7e 	~ 
	cp 03fh		;3282	fe 3f 	. ? 
	jr z,l3295h		;3284	28 0f 	( . 
	ld de,01908h		;3286	11 08 19 	. . . 
	call 07c18h		;3289	cd 18 7c 	. . | 
	rlca			;328c	07 	. 
	ret nc			;328d	d0 	. 
	dec hl			;328e	2b 	+ 
	ld a,(hl)			;328f	7e 	~ 
	cp 03fh		;3290	fe 3f 	. ? 
	jp nz,sub_2bc3h		;3292	c2 c3 2b 	. . + 
l3295h:
	res 3,(ix+014h)		;3295	dd cb 14 9e 	. . . . 
	ld hl,0ff00h		;3299	21 00 ff 	! . . 
	ld (0c311h),hl		;329c	22 11 c3 	" . . 
	ld hl,09188h		;329f	21 88 91 	! . . 
	jp 04152h		;32a2	c3 52 41 	. R A 
l32a5h:
	ld de,l0c08h		;32a5	11 08 0c 	. . . 
	call 07c18h		;32a8	cd 18 7c 	. . | 
	dec hl			;32ab	2b 	+ 
	ld a,(hl)			;32ac	7e 	~ 
	cp 03fh		;32ad	fe 3f 	. ? 
	jr nz,l32dah		;32af	20 29 	  ) 
	ld a,(0c30eh)		;32b1	3a 0e c3 	: . . 
	add a,018h		;32b4	c6 18 	. . 
	cp 0c0h		;32b6	fe c0 	. . 
	jr nc,l32cah		;32b8	30 10 	0 . 
	ld de,01808h		;32ba	11 08 18 	. . . 
	call 07c18h		;32bd	cd 18 7c 	. . | 
	rlca			;32c0	07 	. 
	jr nc,l32cah		;32c1	30 07 	0 . 
	dec hl			;32c3	2b 	+ 
	ld a,(hl)			;32c4	7e 	~ 
	cp 03fh		;32c5	fe 3f 	. ? 
	jp nz,sub_2bc3h		;32c7	c2 c3 2b 	. . + 
l32cah:
	set 3,(ix+014h)		;32ca	dd cb 14 de 	. . . . 
	ld hl,l0100h		;32ce	21 00 01 	! . . 
	ld (0c311h),hl		;32d1	22 11 c3 	" . . 
	ld hl,09188h		;32d4	21 88 91 	! . . 
	jp 04152h		;32d7	c3 52 41 	. R A 
l32dah:
	ld de,01808h		;32da	11 08 18 	. . . 
	call 07c18h		;32dd	cd 18 7c 	. . | 
	dec hl			;32e0	2b 	+ 
	ld a,(hl)			;32e1	7e 	~ 
	cp 03fh		;32e2	fe 3f 	. ? 
	jp nz,l2c6ah		;32e4	c2 6a 2c 	. j , 
	jr l32cah		;32e7	18 e1 	. . 
	ld hl,(0c311h)		;32e9	2a 11 c3 	* . . 
	ld (0c20eh),hl		;32ec	22 0e c2 	" . . 
	ld hl,(0c30fh)		;32ef	2a 0f c3 	* . . 
	ld (0c20ch),hl		;32f2	22 0c c2 	" . . 
	ld hl,l0000h		;32f5	21 00 00 	! . . 
	ld (0c30fh),hl		;32f8	22 0f c3 	" . . 
	ld (0c311h),hl		;32fb	22 11 c3 	" . . 
	ld a,(0c31ah)		;32fe	3a 1a c3 	: . . 
	ld (0c210h),a		;3301	32 10 c2 	2 . . 
	ld (ix+01ah),010h		;3304	dd 36 1a 10 	. 6 . . 
	ret			;3308	c9 	. 
	ld a,(0c0c9h)		;3309	3a c9 c0 	: . . 
	and 00fh		;330c	e6 0f 	. . 
	ret nz			;330e	c0 	. 
	ld hl,(0c20eh)		;330f	2a 0e c2 	* . . 
	ld (0c311h),hl		;3312	22 11 c3 	" . . 
	ld hl,(0c20ch)		;3315	2a 0c c2 	* . . 
	ld (0c30fh),hl		;3318	22 0f c3 	" . . 
	ld a,(0c210h)		;331b	3a 10 c2 	: . . 
	ld (0c31ah),a		;331e	32 1a c3 	2 . . 
	cp 014h		;3321	fe 14 	. . 
	jr nz,l3328h		;3323	20 03 	  . 
	call sub_2bc3h		;3325	cd c3 2b 	. . + 
l3328h:
	ld hl,0c300h		;3328	21 00 c3 	! . . 
	ld de,0c240h		;332b	11 40 c2 	. @ . 
	ld bc,l0020h		;332e	01 20 00 	.   . 
	ldir		;3331	ed b0 	. . 
l3333h:
	xor a			;3333	af 	. 
	ld (0c25ch),a		;3334	32 5c c2 	2 \ . 
	ret			;3337	c9 	. 
	call sub_3b1fh		;3338	cd 1f 3b 	. . ; 
	ld (0c311h),hl		;333b	22 11 c3 	" . . 
	res 4,(ix+014h)		;333e	dd cb 14 a6 	. . . . 
	res 2,(ix+014h)		;3342	dd cb 14 96 	. . . . 
	call sub_3c0eh		;3346	cd 0e 3c 	. . < 
	ld a,(0c054h)		;3349	3a 54 c0 	: T . 
	cp 001h		;334c	fe 01 	. . 
	jp nz,l3427h		;334e	c2 27 34 	. ' 4 
	bit 0,(ix+01ch)		;3351	dd cb 1c 46 	. . . F 
	jr z,l336dh		;3355	28 16 	( . 
	call 045f7h		;3357	cd f7 45 	. . E 
	ret nz			;335a	c0 	. 
l335bh:
	bit 1,(ix+014h)		;335b	dd cb 14 4e 	. . . N 
	jr z,l3367h		;335f	28 06 	( . 
	ld hl,090bch		;3361	21 bc 90 	! . . 
	jp 04173h		;3364	c3 73 41 	. s A 
l3367h:
	ld hl,090a7h		;3367	21 a7 90 	! . . 
	jp 04173h		;336a	c3 73 41 	. s A 
l336dh:
	ld a,(0c007h)		;336d	3a 07 c0 	: . . 
	bit 4,a		;3370	cb 67 	. g 
	jp nz,044d1h		;3372	c2 d1 44 	. . D 
	ld a,(0c006h)		;3375	3a 06 c0 	: . . 
	ld c,a			;3378	4f 	O 
	bit 0,c		;3379	cb 41 	. A 
	call nz,sub_33a5h		;337b	c4 a5 33 	. . 3 
	bit 1,c		;337e	cb 49 	. I 
	call nz,sub_33c9h		;3380	c4 c9 33 	. . 3 
	bit 2,c		;3383	cb 51 	. Q 
	call nz,sub_33edh		;3385	c4 ed 33 	. . 3 
	bit 3,c		;3388	cb 59 	. Y 
	call nz,sub_340bh		;338a	c4 0b 34 	. . 4 
	inc (ix+01bh)		;338d	dd 34 1b 	. 4 . 
	bit 2,(ix+01bh)		;3390	dd cb 1b 56 	. . . V 
	ld de,00080h		;3394	11 80 00 	. . . 
	jr z,l339ch		;3397	28 03 	( . 
	ld de,0ff80h		;3399	11 80 ff 	. . . 
l339ch:
	ld hl,(0c311h)		;339c	2a 11 c3 	* . . 
	add hl,de			;339f	19 	. 
	ld (0c311h),hl		;33a0	22 11 c3 	" . . 
	jr l335bh		;33a3	18 b6 	. . 
sub_33a5h:
	push bc			;33a5	c5 	. 
	ld de,l0103h+1		;33a6	11 04 01 	. . . 
	ld a,00eh		;33a9	3e 0e 	> . 
	call sub_3a0ah		;33ab	cd 0a 3a 	. . : 
	pop bc			;33ae	c1 	. 
	ret c			;33af	d8 	. 
	ld a,(0c30eh)		;33b0	3a 0e c3 	: . . 
	cp 004h		;33b3	fe 04 	. . 
	ret c			;33b5	d8 	. 
	ld hl,0ff00h		;33b6	21 00 ff 	! . . 
	ld (0c311h),hl		;33b9	22 11 c3 	" . . 
	res 3,(ix+014h)		;33bc	dd cb 14 9e 	. . . . 
	res 7,(ix+014h)		;33c0	dd cb 14 be 	. . . . 
	set 4,(ix+014h)		;33c4	dd cb 14 e6 	. . . . 
	ret			;33c8	c9 	. 
sub_33c9h:
	push bc			;33c9	c5 	. 
	ld de,l1904h		;33ca	11 04 19 	. . . 
	ld a,008h		;33cd	3e 08 	> . 
	call sub_3a0ah		;33cf	cd 0a 3a 	. . : 
	pop bc			;33d2	c1 	. 
	ret c			;33d3	d8 	. 
	ld a,(0c30eh)		;33d4	3a 0e c3 	: . . 
	cp 098h		;33d7	fe 98 	. . 
	ret nc			;33d9	d0 	. 
	ld hl,l0100h		;33da	21 00 01 	! . . 
	ld (0c311h),hl		;33dd	22 11 c3 	" . . 
	set 3,(ix+014h)		;33e0	dd cb 14 de 	. . . . 
	set 7,(ix+014h)		;33e4	dd cb 14 fe 	. . . . 
	set 4,(ix+014h)		;33e8	dd cb 14 e6 	. . . . 
	ret			;33ec	c9 	. 
sub_33edh:
	push bc			;33ed	c5 	. 
	ld de,l0100h+2		;33ee	11 02 01 	. . . 
	ld a,00eh		;33f1	3e 0e 	> . 
	ld b,001h		;33f3	06 01 	. . 
	call sub_39b6h		;33f5	cd b6 39 	. . 9 
	pop bc			;33f8	c1 	. 
	ret c			;33f9	d8 	. 
	ld a,(0c314h)		;33fa	3a 14 c3 	: . . 
	and 0fch		;33fd	e6 fc 	. . 
	or 004h		;33ff	f6 04 	. . 
	ld (0c314h),a		;3401	32 14 c3 	2 . . 
	ld hl,0ff00h		;3404	21 00 ff 	! . . 
	ld (0c30fh),hl		;3407	22 0f c3 	" . . 
	ret			;340a	c9 	. 
sub_340bh:
	push bc			;340b	c5 	. 
	ld de,l010eh		;340c	11 0e 01 	. . . 
	ld a,00eh		;340f	3e 0e 	> . 
	ld b,001h		;3411	06 01 	. . 
	call sub_39b6h		;3413	cd b6 39 	. . 9 
	pop bc			;3416	c1 	. 
	ret c			;3417	d8 	. 
	ld a,(0c314h)		;3418	3a 14 c3 	: . . 
	or 007h		;341b	f6 07 	. . 
	ld (0c314h),a		;341d	32 14 c3 	2 . . 
	ld hl,l0100h		;3420	21 00 01 	! . . 
	ld (0c30fh),hl		;3423	22 0f c3 	" . . 
	ret			;3426	c9 	. 
l3427h:
	ld hl,0c314h		;3427	21 14 c3 	! . . 
	ld a,(hl)			;342a	7e 	~ 
	and 0e7h		;342b	e6 e7 	. . 
	ld (hl),a			;342d	77 	w 
	jp l2c6ah		;342e	c3 6a 2c 	. j , 
	ld hl,00180h		;3431	21 80 01 	! . . 
	ld (0c30fh),hl		;3434	22 0f c3 	" . . 
	set 2,(ix+014h)		;3437	dd cb 14 d6 	. . . . 
	ld hl,08cf4h		;343b	21 f4 8c 	! . . 
	jp 04152h		;343e	c3 52 41 	. R A 
sub_3441h:
	ld hl,0c320h		;3441	21 20 c3 	!   . 
	call sub_2755h		;3444	cd 55 27 	. U ' 
	inc hl			;3447	23 	# 
	call sub_2755h		;3448	cd 55 27 	. U ' 
	inc hl			;344b	23 	# 
	call sub_2755h		;344c	cd 55 27 	. U ' 
	ld a,(0c31ch)		;344f	3a 1c c3 	: . . 
	and 0f4h		;3452	e6 f4 	. . 
	ld (0c31ch),a		;3454	32 1c c3 	2 . . 
	ld hl,0c054h		;3457	21 54 c0 	! T . 
	ld a,(hl)			;345a	7e 	~ 
	cp 002h		;345b	fe 02 	. . 
	ret z			;345d	c8 	. 
	xor a			;345e	af 	. 
	ld (hl),a			;345f	77 	w 
	ret			;3460	c9 	. 
l3461h:
	ld a,092h		;3461	3e 92 	> . 
	ld (0c110h),a		;3463	32 10 c1 	2 . . 
	ld (ix+01ah),005h		;3466	dd 36 1a 05 	. 6 . . 
	ld (ix+006h),00ah		;346a	dd 36 06 0a 	. 6 . . 
	call sub_3441h		;346e	cd 41 34 	. A 4 
	bit 7,(ix+012h)		;3471	dd cb 12 7e 	. . . ~ 
	set 3,(ix+014h)		;3475	dd cb 14 de 	. . . . 
	jr z,l347fh		;3479	28 04 	( . 
	res 3,(ix+014h)		;347b	dd cb 14 9e 	. . . . 
l347fh:
	bit 4,(ix+01ch)		;347f	dd cb 1c 66 	. . . f 
	jp nz,l3dcah		;3483	c2 ca 3d 	. . = 
	ld de,l080ch		;3486	11 0c 08 	. . . 
	call sub_3c11h		;3489	cd 11 3c 	. . < 
	ld a,(0c31ah)		;348c	3a 1a c3 	: . . 
	cp 005h		;348f	fe 05 	. . 
	ret nz			;3491	c0 	. 
	ld a,(0c30eh)		;3492	3a 0e c3 	: . . 
	sub 008h		;3495	d6 08 	. . 
	jr c,l34c2h		;3497	38 29 	8 ) 
	ld d,a			;3499	57 	W 
	ld a,(0c30ch)		;349a	3a 0c c3 	: . . 
	add a,00ch		;349d	c6 0c 	. . 
	ld e,a			;349f	5f 	_ 
	call 07c47h		;34a0	cd 47 7c 	. G | 
	and 0e0h		;34a3	e6 e0 	. . 
	cp 060h		;34a5	fe 60 	. ` 
	jr nz,l34c2h		;34a7	20 19 	  . 
	ld a,(0c006h)		;34a9	3a 06 c0 	: . . 
	and 001h		;34ac	e6 01 	. . 
	jr z,l34c2h		;34ae	28 12 	( . 
	dec hl			;34b0	2b 	+ 
	ld a,(hl)			;34b1	7e 	~ 
	cp 03fh		;34b2	fe 3f 	. ? 
	jr nz,l34c2h		;34b4	20 0c 	  . 
	ld (0c211h),hl		;34b6	22 11 c2 	" . . 
	ld hl,0f000h		;34b9	21 00 f0 	! . . 
	ld (0c311h),hl		;34bc	22 11 c3 	" . . 
	jp l31f9h		;34bf	c3 f9 31 	. . 1 
l34c2h:
	bit 0,(ix+01ch)		;34c2	dd cb 1c 46 	. . . F 
	jr z,l34deh		;34c6	28 16 	( . 
	call 045f7h		;34c8	cd f7 45 	. . E 
	jr nz,l34e8h		;34cb	20 1b 	  . 
	ld hl,08e01h		;34cd	21 01 8e 	! . . 
	bit 0,(ix+014h)		;34d0	dd cb 14 46 	. . . F 
	jr z,l34d9h		;34d4	28 03 	( . 
	ld hl,08e25h		;34d6	21 25 8e 	! % . 
l34d9h:
	call 04173h		;34d9	cd 73 41 	. s A 
	jr l34e8h		;34dc	18 0a 	. . 
l34deh:
	ld a,(0c007h)		;34de	3a 07 c0 	: . . 
	and 010h		;34e1	e6 10 	. . 
	jr z,l34e8h		;34e3	28 03 	( . 
	call 044abh		;34e5	cd ab 44 	. . D 
l34e8h:
	ld de,0110ch		;34e8	11 0c 11 	. . . 
	call sub_3cd3h		;34eb	cd d3 3c 	. . < 
	call sub_3524h		;34ee	cd 24 35 	. $ 5 
	call sub_3607h		;34f1	cd 07 36 	. . 6 
	bit 0,(ix+01ch)		;34f4	dd cb 1c 46 	. . . F 
	ret nz			;34f8	c0 	. 
	ld c,014h		;34f9	0e 14 	. . 
	ld a,(0c006h)		;34fb	3a 06 c0 	: . . 
	bit 0,(ix+014h)		;34fe	dd cb 14 46 	. . . F 
	jr nz,l3513h		;3502	20 0f 	  . 
	bit 5,a		;3504	cb 6f 	. o 
	jr z,l350ah		;3506	28 02 	( . 
	ld c,00ah		;3508	0e 0a 	. . 
l350ah:
	ld (ix+006h),c		;350a	dd 71 06 	. q . 
	ld hl,08cfdh		;350d	21 fd 8c 	! . . 
	jp 04152h		;3510	c3 52 41 	. R A 
l3513h:
	ld c,014h		;3513	0e 14 	. . 
	bit 5,a		;3515	cb 6f 	. o 
	jr z,l351bh		;3517	28 02 	( . 
	ld c,00ah		;3519	0e 0a 	. . 
l351bh:
	ld (ix+006h),c		;351b	dd 71 06 	. q . 
	ld hl,08d02h		;351e	21 02 8d 	! . . 
	jp 04152h		;3521	c3 52 41 	. R A 
sub_3524h:
	bit 3,(ix+014h)		;3524	dd cb 14 5e 	. . . ^ 
	jp nz,l35c1h		;3528	c2 c1 35 	. . 5 
	ld a,(0c30eh)		;352b	3a 0e c3 	: . . 
	add a,(ix+012h)		;352e	dd 86 12 	. . . 
	cp 002h		;3531	fe 02 	. . 
	jr c,l3587h		;3533	38 52 	8 R 
	ld de,l0103h		;3535	11 03 01 	. . . 
	call 07c18h		;3538	cd 18 7c 	. . | 
	bit 7,a		;353b	cb 7f 	.  
	jr nz,l35ach		;353d	20 6d 	  m 
	ld de,l010ch		;353f	11 0c 01 	. . . 
	call 07c18h		;3542	cd 18 7c 	. . | 
	bit 7,a		;3545	cb 7f 	.  
	jp nz,l35ach		;3547	c2 ac 35 	. . 5 
	and 0e0h		;354a	e6 e0 	. . 
	cp 020h		;354c	fe 20 	.   
	jr nz,l3587h		;354e	20 37 	  7 
	ld e,009h		;3550	1e 09 	. . 
	call 07c61h		;3552	cd 61 7c 	. a | 
	ld a,(hl)			;3555	7e 	~ 
	bit 7,a		;3556	cb 7f 	.  
	jp nz,l35ach		;3558	c2 ac 35 	. . 5 
	ld a,(0c006h)		;355b	3a 06 c0 	: . . 
	bit 1,a		;355e	cb 4f 	. O 
	jr nz,l3578h		;3560	20 16 	  . 
	bit 0,a		;3562	cb 47 	. G 
	jr nz,l356fh		;3564	20 09 	  . 
	ld bc,0ff00h		;3566	01 00 ff 	. . . 
	ld de,0fff0h		;3569	11 f0 ff 	. . . 
	jp l3baah		;356c	c3 aa 3b 	. . ; 
l356fh:
	ld bc,0fe80h		;356f	01 80 fe 	. . . 
	ld de,0ffe0h		;3572	11 e0 ff 	. . . 
	jp l3baah		;3575	c3 aa 3b 	. . ; 
l3578h:
	ld de,l0010h		;3578	11 10 00 	. . . 
	bit 4,(ix+014h)		;357b	dd cb 14 66 	. . . f 
	jp nz,l3bc0h		;357f	c2 c0 3b 	. . ; 
	set 3,(ix+014h)		;3582	dd cb 14 de 	. . . . 
	ret			;3586	c9 	. 
l3587h:
	cp 060h		;3587	fe 60 	. ` 
	jr nz,l359dh		;3589	20 12 	  . 
	dec hl			;358b	2b 	+ 
	ld a,(hl)			;358c	7e 	~ 
	cp 059h		;358d	fe 59 	. Y 
	jr nz,l359dh		;358f	20 0c 	  . 
	ld a,(0c006h)		;3591	3a 06 c0 	: . . 
	and 001h		;3594	e6 01 	. . 
	jr z,l359dh		;3596	28 05 	( . 
	set 7,(ix+001h)		;3598	dd cb 01 fe 	. . . . 
	ret			;359c	c9 	. 
l359dh:
	ld a,(0c314h)		;359d	3a 14 c3 	: . . 
	or 018h		;35a0	f6 18 	. . 
	ld (0c314h),a		;35a2	32 14 c3 	2 . . 
	ld hl,00080h		;35a5	21 80 00 	! . . 
	ld (0c311h),hl		;35a8	22 11 c3 	" . . 
	ret			;35ab	c9 	. 
l35ach:
	ld hl,l0000h		;35ac	21 00 00 	! . . 
	ld (0c311h),hl		;35af	22 11 c3 	" . . 
	res 4,(ix+014h)		;35b2	dd cb 14 a6 	. . . . 
	ld a,(0c006h)		;35b6	3a 06 c0 	: . . 
	bit 1,a		;35b9	cb 4f 	. O 
	ret z			;35bb	c8 	. 
	set 3,(ix+014h)		;35bc	dd cb 14 de 	. . . . 
	ret			;35c0	c9 	. 
l35c1h:
	ld de,00f03h		;35c1	11 03 0f 	. . . 
	ld a,002h		;35c4	3e 02 	> . 
	call sub_3a0ah		;35c6	cd 0a 3a 	. . : 
	jr c,l35f2h		;35c9	38 27 	8 ' 
	ld e,010h		;35cb	1e 10 	. . 
	call 07c61h		;35cd	cd 61 7c 	. a | 
	ld a,(hl)			;35d0	7e 	~ 
	rlca			;35d1	07 	. 
	jr c,l35f2h		;35d2	38 1e 	8 . 
	ld a,(0c006h)		;35d4	3a 06 c0 	: . . 
	bit 1,a		;35d7	cb 4f 	. O 
	jr z,l35e4h		;35d9	28 09 	( . 
	ld bc,l0100h		;35db	01 00 01 	. . . 
	ld de,l0010h		;35de	11 10 00 	. . . 
	jp l3bdbh		;35e1	c3 db 3b 	. . ; 
l35e4h:
	ld de,0ffe0h		;35e4	11 e0 ff 	. . . 
	bit 0,a		;35e7	cb 47 	. G 
	jp nz,l3bf1h		;35e9	c2 f1 3b 	. . ; 
	ld de,0fff0h		;35ec	11 f0 ff 	. . . 
	jp l3bf1h		;35ef	c3 f1 3b 	. . ; 
l35f2h:
	ld hl,l0000h		;35f2	21 00 00 	! . . 
	ld (0c311h),hl		;35f5	22 11 c3 	" . . 
	res 4,(ix+014h)		;35f8	dd cb 14 a6 	. . . . 
	ld a,(0c006h)		;35fc	3a 06 c0 	: . . 
	bit 1,a		;35ff	cb 4f 	. O 
	ret nz			;3601	c0 	. 
	res 3,(ix+014h)		;3602	dd cb 14 9e 	. . . . 
	ret			;3606	c9 	. 
sub_3607h:
	bit 1,(ix+014h)		;3607	dd cb 14 4e 	. . . N 
	jp nz,l3663h		;360b	c2 63 36 	. c 6 
	ld de,l0301h		;360e	11 01 03 	. . . 
	ld a,00ah		;3611	3e 0a 	> . 
	call sub_39cch		;3613	cd cc 39 	. . 9 
	jr c,l3629h		;3616	38 11 	8 . 
	ld a,(0c006h)		;3618	3a 06 c0 	: . . 
	bit 2,a		;361b	cb 57 	. W 
	jr nz,l363bh		;361d	20 1c 	  . 
	bit 3,a		;361f	cb 5f 	. _ 
	jr nz,l3651h		;3621	20 2e 	  . 
	ld de,sub_0008h		;3623	11 08 00 	. . . 
	jp l3b14h		;3626	c3 14 3b 	. . ; 
l3629h:
	call sub_3b1fh		;3629	cd 1f 3b 	. . ; 
	ld a,(0c006h)		;362c	3a 06 c0 	: . . 
	bit 3,a		;362f	cb 5f 	. _ 
	ret z			;3631	c8 	. 
	ld a,(0c314h)		;3632	3a 14 c3 	: . . 
	or 003h		;3635	f6 03 	. . 
	ld (0c314h),a		;3637	32 14 c3 	2 . . 
	ret			;363a	c9 	. 
l363bh:
	bit 5,a		;363b	cb 6f 	. o 
	jr nz,l3648h		;363d	20 09 	  . 
	ld de,0fff0h		;363f	11 f0 ff 	. . . 
	ld bc,0ff00h		;3642	01 00 ff 	. . . 
	jp sub_3af4h		;3645	c3 f4 3a 	. . : 
l3648h:
	ld de,0ffe0h		;3648	11 e0 ff 	. . . 
	ld bc,0fe80h		;364b	01 80 fe 	. . . 
	jp sub_3af4h		;364e	c3 f4 3a 	. . : 
l3651h:
	set 0,(ix+014h)		;3651	dd cb 14 c6 	. . . . 
	ld de,l0010h		;3655	11 10 00 	. . . 
	bit 5,a		;3658	cb 6f 	. o 
	jp z,sub_3b2ah		;365a	ca 2a 3b 	. * ; 
	ld de,l0020h		;365d	11 20 00 	.   . 
	jp sub_3b2ah		;3660	c3 2a 3b 	. * ; 
l3663h:
	ld de,l0317h		;3663	11 17 03 	. . . 
	ld a,00ah		;3666	3e 0a 	> . 
	call sub_39cch		;3668	cd cc 39 	. . 9 
	jr c,l367eh		;366b	38 11 	8 . 
	ld a,(0c006h)		;366d	3a 06 c0 	: . . 
	bit 3,a		;3670	cb 5f 	. _ 
	jr nz,l3690h		;3672	20 1c 	  . 
	bit 2,a		;3674	cb 57 	. W 
	jr nz,l36a6h		;3676	20 2e 	  . 
	ld de,0fff8h		;3678	11 f8 ff 	. . . 
	jp l3b65h		;367b	c3 65 3b 	. e ; 
l367eh:
	call sub_3b1fh		;367e	cd 1f 3b 	. . ; 
	ld a,(0c006h)		;3681	3a 06 c0 	: . . 
	bit 2,a		;3684	cb 57 	. W 
	ret z			;3686	c8 	. 
	ld a,(0c314h)		;3687	3a 14 c3 	: . . 
	and 0f8h		;368a	e6 f8 	. . 
	ld (0c314h),a		;368c	32 14 c3 	2 . . 
	ret			;368f	c9 	. 
l3690h:
	bit 5,a		;3690	cb 6f 	. o 
	jr nz,l369dh		;3692	20 09 	  . 
	ld de,l0010h		;3694	11 10 00 	. . . 
	ld bc,l0100h		;3697	01 00 01 	. . . 
	jp sub_3b47h		;369a	c3 47 3b 	. G ; 
l369dh:
	ld de,l0020h		;369d	11 20 00 	.   . 
	ld bc,00180h		;36a0	01 80 01 	. . . 
	jp sub_3b47h		;36a3	c3 47 3b 	. G ; 
l36a6h:
	res 0,(ix+014h)		;36a6	dd cb 14 86 	. . . . 
	bit 5,a		;36aa	cb 6f 	. o 
	jr nz,l36b4h		;36ac	20 06 	  . 
	ld de,0fff0h		;36ae	11 f0 ff 	. . . 
	jp sub_3b7ah		;36b1	c3 7a 3b 	. z ; 
l36b4h:
	ld de,0ffe0h		;36b4	11 e0 ff 	. . . 
	jp sub_3b7ah		;36b7	c3 7a 3b 	. z ; 
	bit 6,(ix+01ch)		;36ba	dd cb 1c 76 	. . . v 
	jr nz,l36cah		;36be	20 0a 	  . 
	ld a,(0c007h)		;36c0	3a 07 c0 	: . . 
	and 020h		;36c3	e6 20 	.   
	ret z			;36c5	c8 	. 
	set 6,(ix+01ch)		;36c6	dd cb 1c f6 	. . . . 
l36cah:
	ld de,0040ch		;36ca	11 0c 04 	. . . 
	call sub_3c11h		;36cd	cd 11 3c 	. . < 
	ld de,0140ch		;36d0	11 0c 14 	. . . 
	call sub_3c11h		;36d3	cd 11 3c 	. . < 
	ld de,01c0ch		;36d6	11 0c 1c 	. . . 
	call sub_3c11h		;36d9	cd 11 3c 	. . < 
	bit 0,(ix+01ch)		;36dc	dd cb 1c 46 	. . . F 
	jr nz,l36eah		;36e0	20 08 	  . 
	ld a,(0c007h)		;36e2	3a 07 c0 	: . . 
	and 010h		;36e5	e6 10 	. . 
	call nz,0441ch		;36e7	c4 1c 44 	. . D 
l36eah:
	call sub_370bh		;36ea	cd 0b 37 	. . 7 
	call sub_379eh		;36ed	cd 9e 37 	. . 7 
	bit 0,(ix+014h)		;36f0	dd cb 14 46 	. . . F 
	ld hl,08d07h		;36f4	21 07 8d 	! . . 
	jr z,l36fch		;36f7	28 03 	( . 
	ld hl,08d10h		;36f9	21 10 8d 	! . . 
l36fch:
	ld a,(0c306h)		;36fc	3a 06 c3 	: . . 
	inc a			;36ff	3c 	< 
	cp 014h		;3700	fe 14 	. . 
	jp nc,04152h		;3702	d2 52 41 	. R A 
	ld (0c306h),a		;3705	32 06 c3 	2 . . 
	jp 04152h		;3708	c3 52 41 	. R A 
sub_370bh:
	bit 1,(ix+014h)		;370b	dd cb 14 4e 	. . . N 
	jp nz,l3758h		;370f	c2 58 37 	. X 7 
	ld de,l0301h+1		;3712	11 02 03 	. . . 
	ld a,00ch		;3715	3e 0c 	> . 
	ld b,002h		;3717	06 02 	. . 
	call sub_39b6h		;3719	cd b6 39 	. . 9 
	jr c,l372fh		;371c	38 11 	8 . 
	ld a,(0c006h)		;371e	3a 06 c0 	: . . 
	bit 2,a		;3721	cb 57 	. W 
	jr nz,l3741h		;3723	20 1c 	  . 
	bit 3,a		;3725	cb 5f 	. _ 
	jr nz,l374eh		;3727	20 25 	  % 
	ld de,l0020h		;3729	11 20 00 	.   . 
	jp l3b14h		;372c	c3 14 3b 	. . ; 
l372fh:
	call sub_3b1fh		;372f	cd 1f 3b 	. . ; 
	ld a,(0c006h)		;3732	3a 06 c0 	: . . 
	bit 3,a		;3735	cb 5f 	. _ 
	ret z			;3737	c8 	. 
	ld a,(0c314h)		;3738	3a 14 c3 	: . . 
	or 003h		;373b	f6 03 	. . 
	ld (0c314h),a		;373d	32 14 c3 	2 . . 
	ret			;3740	c9 	. 
l3741h:
	set 2,(ix+014h)		;3741	dd cb 14 d6 	. . . . 
	ld de,0ffc0h		;3745	11 c0 ff 	. . . 
	ld bc,0fe00h		;3748	01 00 fe 	. . . 
	jp sub_3af4h		;374b	c3 f4 3a 	. . : 
l374eh:
	set 0,(ix+014h)		;374e	dd cb 14 c6 	. . . . 
	ld de,l0040h		;3752	11 40 00 	. @ . 
	jp sub_3b2ah		;3755	c3 2a 3b 	. * ; 
l3758h:
	ld de,l0316h		;3758	11 16 03 	. . . 
	ld a,00ch		;375b	3e 0c 	> . 
	ld b,002h		;375d	06 02 	. . 
	call sub_39b6h		;375f	cd b6 39 	. . 9 
	jr c,l3775h		;3762	38 11 	8 . 
	ld a,(0c006h)		;3764	3a 06 c0 	: . . 
	bit 3,a		;3767	cb 5f 	. _ 
	jr nz,l3787h		;3769	20 1c 	  . 
	bit 2,a		;376b	cb 57 	. W 
	jr nz,l3794h		;376d	20 25 	  % 
	ld de,0ffe0h		;376f	11 e0 ff 	. . . 
	jp l3b65h		;3772	c3 65 3b 	. e ; 
l3775h:
	call sub_3b1fh		;3775	cd 1f 3b 	. . ; 
	ld a,(0c006h)		;3778	3a 06 c0 	: . . 
	bit 2,a		;377b	cb 57 	. W 
	ret z			;377d	c8 	. 
	ld a,(0c314h)		;377e	3a 14 c3 	: . . 
	and 0f8h		;3781	e6 f8 	. . 
	ld (0c314h),a		;3783	32 14 c3 	2 . . 
	ret			;3786	c9 	. 
l3787h:
	set 2,(ix+014h)		;3787	dd cb 14 d6 	. . . . 
	ld de,l0040h		;378b	11 40 00 	. @ . 
	ld bc,00200h		;378e	01 00 02 	. . . 
	jp sub_3b47h		;3791	c3 47 3b 	. G ; 
l3794h:
	res 0,(ix+014h)		;3794	dd cb 14 86 	. . . . 
	ld de,0ffc0h		;3798	11 c0 ff 	. . . 
	jp sub_3b7ah		;379b	c3 7a 3b 	. z ; 
sub_379eh:
	bit 3,(ix+014h)		;379e	dd cb 14 5e 	. . . ^ 
	jp nz,l37f4h		;37a2	c2 f4 37 	. . 7 
	ld de,l0204h		;37a5	11 04 02 	. . . 
	ld a,010h		;37a8	3e 10 	> . 
	call sub_3a0ah		;37aa	cd 0a 3a 	. . : 
	jp c,l3857h		;37ad	da 57 38 	. W 8 
	ld a,(0c31bh)		;37b0	3a 1b c3 	: . . 
	or a			;37b3	b7 	. 
	jr nz,l37ceh		;37b4	20 18 	  . 
	ld a,(0c007h)		;37b6	3a 07 c0 	: . . 
	and 020h		;37b9	e6 20 	.   
	jr nz,l37cah		;37bb	20 0d 	  . 
	ld a,(0c30eh)		;37bd	3a 0e c3 	: . . 
	cp 004h		;37c0	fe 04 	. . 
	jr c,l37e5h		;37c2	38 21 	8 ! 
	ld de,l0020h		;37c4	11 20 00 	.   . 
	jp l3bc0h		;37c7	c3 c0 3b 	. . ; 
l37cah:
	ld (ix+01bh),007h		;37ca	dd 36 1b 07 	. 6 . . 
l37ceh:
	dec (ix+01bh)		;37ce	dd 35 1b 	. 5 . 
	ld (ix+006h),002h		;37d1	dd 36 06 02 	. 6 . . 
	ld a,(0c30eh)		;37d5	3a 0e c3 	: . . 
	cp 004h		;37d8	fe 04 	. . 
	jr c,l37e5h		;37da	38 09 	8 . 
	ld de,0ffc0h		;37dc	11 c0 ff 	. . . 
	ld bc,0fe00h		;37df	01 00 fe 	. . . 
	jp l3baah		;37e2	c3 aa 3b 	. . ; 
l37e5h:
	res 4,(ix+014h)		;37e5	dd cb 14 a6 	. . . . 
	set 3,(ix+014h)		;37e9	dd cb 14 de 	. . . . 
	ld hl,l0000h		;37ed	21 00 00 	! . . 
	ld (0c311h),hl		;37f0	22 11 c3 	" . . 
	ret			;37f3	c9 	. 
l37f4h:
	ld de,02004h		;37f4	11 04 20 	. .   
	call 07c18h		;37f7	cd 18 7c 	. . | 
	bit 7,a		;37fa	cb 7f 	.  
	jr nz,l383eh		;37fc	20 40 	  @ 
	ld a,(0c213h)		;37fe	3a 13 c2 	: . . 
	or a			;3801	b7 	. 
	jp nz,l3857h		;3802	c2 57 38 	. W 8 
	ld e,008h		;3805	1e 08 	. . 
	call 07c61h		;3807	cd 61 7c 	. a | 
	ld a,(hl)			;380a	7e 	~ 
	rlca			;380b	07 	. 
	jr c,l383eh		;380c	38 30 	8 0 
	ld e,008h		;380e	1e 08 	. . 
	call 07c61h		;3810	cd 61 7c 	. a | 
	ld a,(hl)			;3813	7e 	~ 
	rlca			;3814	07 	. 
	jr c,l383eh		;3815	38 27 	8 ' 
	ld a,(0c31bh)		;3817	3a 1b c3 	: . . 
	or a			;381a	b7 	. 
	jr nz,l3831h		;381b	20 14 	  . 
	ld a,(0c007h)		;381d	3a 07 c0 	: . . 
	and 020h		;3820	e6 20 	.   
	jr nz,l382dh		;3822	20 09 	  . 
	ld de,l0020h		;3824	11 20 00 	.   . 
	ld bc,l0100h		;3827	01 00 01 	. . . 
	jp l3bdbh		;382a	c3 db 3b 	. . ; 
l382dh:
	ld (ix+01bh),007h		;382d	dd 36 1b 07 	. 6 . . 
l3831h:
	dec (ix+01bh)		;3831	dd 35 1b 	. 5 . 
	ld (ix+006h),002h		;3834	dd 36 06 02 	. 6 . . 
	ld de,0ffc0h		;3838	11 c0 ff 	. . . 
	jp l3bf1h		;383b	c3 f1 3b 	. . ; 
l383eh:
	ld hl,l0000h		;383e	21 00 00 	! . . 
	ld (0c311h),hl		;3841	22 11 c3 	" . . 
	res 4,(ix+014h)		;3844	dd cb 14 a6 	. . . . 
	ld a,(0c31bh)		;3848	3a 1b c3 	: . . 
	or a			;384b	b7 	. 
	jp nz,l3831h		;384c	c2 31 38 	. 1 8 
	ld a,(0c007h)		;384f	3a 07 c0 	: . . 
	and 020h		;3852	e6 20 	.   
	jr nz,l382dh		;3854	20 d7 	  . 
	ret			;3856	c9 	. 
l3857h:
	ld hl,(0c023h)		;3857	2a 23 c0 	* # . 
	ld h,000h		;385a	26 00 	& . 
	ld de,l38cch		;385c	11 cc 38 	. . 8 
	add hl,de			;385f	19 	. 
	ld a,(hl)			;3860	7e 	~ 
	or a			;3861	b7 	. 
	jp z,043bbh		;3862	ca bb 43 	. . C 
l3865h:
	xor a			;3865	af 	. 
	ld (0c051h),a		;3866	32 51 c0 	2 Q . 
	ld (0c054h),a		;3869	32 54 c0 	2 T . 
	call 043deh		;386c	cd de 43 	. . C 
	call sub_3b1fh		;386f	cd 1f 3b 	. . ; 
	ld (0c311h),hl		;3872	22 11 c3 	" . . 
	res 0,(ix+01ch)		;3875	dd cb 1c 86 	. . . . 
	ld a,(0c314h)		;3879	3a 14 c3 	: . . 
	or 018h		;387c	f6 18 	. . 
	ld (0c314h),a		;387e	32 14 c3 	2 . . 
	ld (ix+01ah),01bh		;3881	dd 36 1a 1b 	. 6 . . 
	ld a,09bh		;3885	3e 9b 	> . 
	ld (0c110h),a		;3887	32 10 c1 	2 . . 
	ret			;388a	c9 	. 
	jp sub_3b1fh		;388b	c3 1f 3b 	. . ; 
	call sub_3b1fh		;388e	cd 1f 3b 	. . ; 
	ld hl,09122h		;3891	21 22 91 	! " . 
	call 04173h		;3894	cd 73 41 	. s A 
	ld de,l1904h		;3897	11 04 19 	. . . 
	ld a,008h		;389a	3e 08 	> . 
	call sub_3a0ah		;389c	cd 0a 3a 	. . : 
	ld hl,l0300h		;389f	21 00 03 	! . . 
	jr nc,l38aeh		;38a2	30 0a 	0 . 
	ld a,(0c30eh)		;38a4	3a 0e c3 	: . . 
	cp 004h		;38a7	fe 04 	. . 
	jr c,l38aeh		;38a9	38 03 	8 . 
	ld hl,l0000h		;38ab	21 00 00 	! . . 
l38aeh:
	ld (0c311h),hl		;38ae	22 11 c3 	" . . 
	ld (ix+01ch),000h		;38b1	dd 36 1c 00 	. 6 . . 
	ld hl,0c20bh		;38b5	21 0b c2 	! . . 
	ld a,(0c0c9h)		;38b8	3a c9 c0 	: . . 
	and 001h		;38bb	e6 01 	. . 
	or (hl)			;38bd	b6 	. 
	ret nz			;38be	c0 	. 
	ld de,sub_0008h		;38bf	11 08 00 	. . . 
	call 07c18h		;38c2	cd 18 7c 	. . | 
	and 0e0h		;38c5	e6 e0 	. . 
	cp 020h		;38c7	fe 20 	.   
	jp z,l3461h		;38c9	ca 61 34 	. a 4 
l38cch:
	ret			;38cc	c9 	. 
	ld bc,l0000h		;38cd	01 00 00 	. . . 
	nop			;38d0	00 	. 
	ld bc,l0000h		;38d1	01 00 00 	. . . 
	nop			;38d4	00 	. 
	ld bc,l0000h		;38d5	01 00 00 	. . . 
	nop			;38d8	00 	. 
	nop			;38d9	00 	. 
	nop			;38da	00 	. 
	nop			;38db	00 	. 
	nop			;38dc	00 	. 
	nop			;38dd	00 	. 
	ld (ix+006h),014h		;38de	dd 36 06 14 	. 6 . . 
	call sub_38f1h		;38e2	cd f1 38 	. . 8 
	ld a,(0c317h)		;38e5	3a 17 c3 	: . . 
	ld (0c677h),a		;38e8	32 77 c6 	2 w . 
	ld hl,08d2ah		;38eb	21 2a 8d 	! * . 
	jp 04152h		;38ee	c3 52 41 	. R A 
sub_38f1h:
	ld a,(0c007h)		;38f1	3a 07 c0 	: . . 
	bit 0,a		;38f4	cb 47 	. G 
	jr z,l3901h		;38f6	28 09 	( . 
	dec (ix+017h)		;38f8	dd 35 17 	. 5 . 
	ret p			;38fb	f0 	. 
	ld (ix+017h),002h		;38fc	dd 36 17 02 	. 6 . . 
	ret			;3900	c9 	. 
l3901h:
	bit 1,a		;3901	cb 4f 	. O 
	ret z			;3903	c8 	. 
	inc (ix+017h)		;3904	dd 34 17 	. 4 . 
	ld a,(0c317h)		;3907	3a 17 c3 	: . . 
	cp 003h		;390a	fe 03 	. . 
	ret c			;390c	d8 	. 
	ld (ix+017h),000h		;390d	dd 36 17 00 	. 6 . . 
	ret			;3911	c9 	. 
	ld a,(ix+017h)		;3912	dd 7e 17 	. ~ . 
	add a,a			;3915	87 	. 
	ld e,a			;3916	5f 	_ 
	ld d,000h		;3917	16 00 	. . 
	ld hl,l3924h		;3919	21 24 39 	! $ 9 
	add hl,de			;391c	19 	. 
	ld a,(hl)			;391d	7e 	~ 
	inc hl			;391e	23 	# 
	ld h,(hl)			;391f	66 	f 
	ld l,a			;3920	6f 	o 
	jp 04173h		;3921	c3 73 41 	. s A 
l3924h:
	sbc a,l			;3924	9d 	. 
	adc a,(hl)			;3925	8e 	. 
	cp (hl)			;3926	be 	. 
	adc a,(hl)			;3927	8e 	. 
	rst 18h			;3928	df 	. 
	adc a,(hl)			;3929	8e 	. 
	ld hl,l0000h		;392a	21 00 00 	! . . 
	ld (0c311h),hl		;392d	22 11 c3 	" . . 
	ld a,(0c30ch)		;3930	3a 0c c3 	: . . 
	cp 028h		;3933	fe 28 	. ( 
	jr z,l3951h		;3935	28 1a 	( . 
	jr nc,l3945h		;3937	30 0c 	0 . 
	ld hl,l0100h		;3939	21 00 01 	! . . 
	ld (0c30fh),hl		;393c	22 0f c3 	" . . 
	ld hl,08cf4h		;393f	21 f4 8c 	! . . 
	jp 04152h		;3942	c3 52 41 	. R A 
l3945h:
	ld hl,0ff00h		;3945	21 00 ff 	! . . 
	ld (0c30fh),hl		;3948	22 0f c3 	" . . 
	ld hl,08cebh		;394b	21 eb 8c 	! . . 
	jp 04152h		;394e	c3 52 41 	. R A 
l3951h:
	call sub_3b1fh		;3951	cd 1f 3b 	. . ; 
	ld (0c311h),hl		;3954	22 11 c3 	" . . 
	ld (ix+01ah),017h		;3957	dd 36 1a 17 	. 6 . . 
	ld a,(0000ah)		;395b	3a 0a 00 	: . . 
	ld (0c314h),a		;395e	32 14 c3 	2 . . 
	call l3328h		;3961	cd 28 33 	. ( 3 
	ld a,001h		;3964	3e 01 	> . 
	ld (0c25ah),a		;3966	32 5a c2 	2 Z . 
	ld (ix+006h),014h		;3969	dd 36 06 14 	. 6 . . 
	ret			;396d	c9 	. 
	call sub_38f1h		;396e	cd f1 38 	. . 8 
	ld a,(0c317h)		;3971	3a 17 c3 	: . . 
	ld (0c677h),a		;3974	32 77 c6 	2 w . 
	ld hl,08ce6h		;3977	21 e6 8c 	! . . 
	jp 04152h		;397a	c3 52 41 	. R A 
	call sub_3b1fh		;397d	cd 1f 3b 	. . ; 
	bit 6,(ix+014h)		;3980	dd cb 14 76 	. . . v 
	jr nz,l398bh		;3984	20 05 	  . 
	call sub_3a31h		;3986	cd 31 3a 	. 1 : 
	jr l398eh		;3989	18 03 	. . 
l398bh:
	ld (0c311h),hl		;398b	22 11 c3 	" . . 
l398eh:
	ld hl,090d1h		;398e	21 d1 90 	! . . 
	call 04173h		;3991	cd 73 41 	. s A 
	dec (ix+018h)		;3994	dd 35 18 	. 5 . 
	ret nz			;3997	c0 	. 
	set 7,(ix+001h)		;3998	dd cb 01 fe 	. . . . 
	ret			;399c	c9 	. 
	call sub_3b1fh		;399d	cd 1f 3b 	. . ; 
	ld (0c311h),hl		;39a0	22 11 c3 	" . . 
	ret			;39a3	c9 	. 
	ld (ix+006h),019h		;39a4	dd 36 06 19 	. 6 . . 
	ld (ix+00ch),0d8h		;39a8	dd 36 0c d8 	. 6 . . 
	ld (ix+00eh),080h		;39ac	dd 36 0e 80 	. 6 . . 
	ld hl,09750h		;39b0	21 50 97 	! P . 
	jp l27d6h		;39b3	c3 d6 27 	. . ' 
sub_39b6h:
	push bc			;39b6	c5 	. 
	call sub_39cch		;39b7	cd cc 39 	. . 9 
	pop de			;39ba	d1 	. 
	ret c			;39bb	d8 	. 
	ld a,d			;39bc	7a 	z 
l39bdh:
	ex af,af'			;39bd	08 	. 
	ld d,008h		;39be	16 08 	. . 
	call 07c70h		;39c0	cd 70 7c 	. p | 
	ld a,(hl)			;39c3	7e 	~ 
	rlca			;39c4	07 	. 
	ret c			;39c5	d8 	. 
	ex af,af'			;39c6	08 	. 
	dec a			;39c7	3d 	= 
	jr nz,l39bdh		;39c8	20 f3 	  . 
	or a			;39ca	b7 	. 
	ret			;39cb	c9 	. 
sub_39cch:
	ex af,af'			;39cc	08 	. 
	call 07c18h		;39cd	cd 18 7c 	. . | 
	rlca			;39d0	07 	. 
	ret c			;39d1	d8 	. 
	ex af,af'			;39d2	08 	. 
	ld d,a			;39d3	57 	W 
	call 07c70h		;39d4	cd 70 7c 	. p | 
	ld a,(hl)			;39d7	7e 	~ 
	rlca			;39d8	07 	. 
	ret			;39d9	c9 	. 
sub_39dah:
	ld a,(0c30ch)		;39da	3a 0c c3 	: . . 
	add a,e			;39dd	83 	. 
	ld e,a			;39de	5f 	_ 
	ex af,af'			;39df	08 	. 
	ld a,(0c30eh)		;39e0	3a 0e c3 	: . . 
	add a,040h		;39e3	c6 40 	. @ 
	add a,d			;39e5	82 	. 
	add a,(ix+012h)		;39e6	dd 86 12 	. . . 
	cp 0c0h		;39e9	fe c0 	. . 
	ret nc			;39eb	d0 	. 
	ld d,a			;39ec	57 	W 
	cp 00fh		;39ed	fe 0f 	. . 
	jr c,l39fbh		;39ef	38 0a 	8 . 
	call 07c47h		;39f1	cd 47 7c 	. G | 
	rlca			;39f4	07 	. 
	ret c			;39f5	d8 	. 
	ld d,00ch		;39f6	16 0c 	. . 
	ex af,af'			;39f8	08 	. 
	ld e,a			;39f9	5f 	_ 
	ex af,af'			;39fa	08 	. 
l39fbh:
	call 07c47h		;39fb	cd 47 7c 	. G | 
	rlca			;39fe	07 	. 
	ret c			;39ff	d8 	. 
	ex af,af'			;3a00	08 	. 
	ld e,a			;3a01	5f 	_ 
	ex af,af'			;3a02	08 	. 
	ld d,000h		;3a03	16 00 	. . 
	call 07c47h		;3a05	cd 47 7c 	. G | 
	rlca			;3a08	07 	. 
	ret			;3a09	c9 	. 
sub_3a0ah:
	ex af,af'			;3a0a	08 	. 
	call 07c18h		;3a0b	cd 18 7c 	. . | 
	rlca			;3a0e	07 	. 
	ret c			;3a0f	d8 	. 
	ex af,af'			;3a10	08 	. 
	ld e,a			;3a11	5f 	_ 
	call 07c61h		;3a12	cd 61 7c 	. a | 
	ld a,(hl)			;3a15	7e 	~ 
	rlca			;3a16	07 	. 
	ret			;3a17	c9 	. 
sub_3a18h:
	ld a,(0c30eh)		;3a18	3a 0e c3 	: . . 
	add a,040h		;3a1b	c6 40 	. @ 
	add a,d			;3a1d	82 	. 
	ld d,a			;3a1e	57 	W 
	ld a,(0c30ch)		;3a1f	3a 0c c3 	: . . 
	add a,e			;3a22	83 	. 
	ld e,a			;3a23	5f 	_ 
	call 07c47h		;3a24	cd 47 7c 	. G | 
	rlca			;3a27	07 	. 
	ret c			;3a28	d8 	. 
	ld e,008h		;3a29	1e 08 	. . 
	call 07c61h		;3a2b	cd 61 7c 	. a | 
	ld a,(hl)			;3a2e	7e 	~ 
	rlca			;3a2f	07 	. 
	ret			;3a30	c9 	. 
sub_3a31h:
	ld hl,(0c311h)		;3a31	2a 11 c3 	* . . 
	ld bc,l0040h		;3a34	01 40 00 	. @ . 
	add hl,bc			;3a37	09 	. 
	ld (0c311h),hl		;3a38	22 11 c3 	" . . 
	jr nc,l3a41h		;3a3b	30 04 	0 . 
	set 7,(ix+014h)		;3a3d	dd cb 14 fe 	. . . . 
l3a41h:
	bit 7,(ix+014h)		;3a41	dd cb 14 7e 	. . . ~ 
	jr nz,l3a5eh		;3a45	20 17 	  . 
sub_3a47h:
	ld a,(0c30ah)		;3a47	3a 0a c3 	: . . 
	or a			;3a4a	b7 	. 
	ret nz			;3a4b	c0 	. 
	ld a,(0c31dh)		;3a4c	3a 1d c3 	: . . 
	call sub_3a0ah		;3a4f	cd 0a 3a 	. . : 
	ret nc			;3a52	d0 	. 
	set 7,(ix+014h)		;3a53	dd cb 14 fe 	. . . . 
	ld hl,l0000h		;3a57	21 00 00 	! . . 
	ld (0c311h),hl		;3a5a	22 11 c3 	" . . 
	ret			;3a5d	c9 	. 
l3a5eh:
	ld a,h			;3a5e	7c 	| 
	cp 004h		;3a5f	fe 04 	. . 
	jr c,l3a67h		;3a61	38 04 	8 . 
	ld (ix+011h),000h		;3a63	dd 36 11 00 	. 6 . . 
l3a67h:
	ld a,(0c31fh)		;3a67	3a 1f c3 	: . . 
	add a,h			;3a6a	84 	. 
	ld d,a			;3a6b	57 	W 
	ld a,(0c30ah)		;3a6c	3a 0a c3 	: . . 
	or a			;3a6f	b7 	. 
	jr z,l3a90h		;3a70	28 1e 	( . 
	ld a,(0c30eh)		;3a72	3a 0e c3 	: . . 
	add a,040h		;3a75	c6 40 	. @ 
	add a,d			;3a77	82 	. 
	ret nc			;3a78	d0 	. 
	ld d,a			;3a79	57 	W 
	ld a,(0c30ch)		;3a7a	3a 0c c3 	: . . 
	add a,e			;3a7d	83 	. 
	ld e,a			;3a7e	5f 	_ 
	call 07c47h		;3a7f	cd 47 7c 	. G | 
	rlca			;3a82	07 	. 
	jr c,l3a9eh		;3a83	38 19 	8 . 
	ld e,(ix+01dh)		;3a85	dd 5e 1d 	. ^ . 
	call 07c61h		;3a88	cd 61 7c 	. a | 
	ld a,(hl)			;3a8b	7e 	~ 
	rlca			;3a8c	07 	. 
	jr c,l3a9eh		;3a8d	38 0f 	8 . 
	ret			;3a8f	c9 	. 
l3a90h:
	ld a,d			;3a90	7a 	z 
	add a,(ix+00eh)		;3a91	dd 86 0e 	. . . 
	cp 0bfh		;3a94	fe bf 	. . 
	ret nc			;3a96	d0 	. 
	ld a,(0c31dh)		;3a97	3a 1d c3 	: . . 
	call sub_3a0ah		;3a9a	cd 0a 3a 	. . : 
	ret nc			;3a9d	d0 	. 
l3a9eh:
	ld a,b			;3a9e	78 	x 
	and 007h		;3a9f	e6 07 	. . 
	neg		;3aa1	ed 44 	. D 
	add a,(ix+012h)		;3aa3	dd 86 12 	. . . 
	ld h,a			;3aa6	67 	g 
	ld l,000h		;3aa7	2e 00 	. . 
	ld (0c311h),hl		;3aa9	22 11 c3 	" . . 
	set 6,(ix+014h)		;3aac	dd cb 14 f6 	. . . . 
	ret			;3ab0	c9 	. 
sub_3ab1h:
	ld hl,(0c311h)		;3ab1	2a 11 c3 	* . . 
	ld bc,l0040h		;3ab4	01 40 00 	. @ . 
	add hl,bc			;3ab7	09 	. 
	ld (0c311h),hl		;3ab8	22 11 c3 	" . . 
	jr nc,l3ac1h		;3abb	30 04 	0 . 
	set 7,(ix+014h)		;3abd	dd cb 14 fe 	. . . . 
l3ac1h:
	bit 7,(ix+014h)		;3ac1	dd cb 14 7e 	. . . ~ 
	jr z,sub_3a47h		;3ac5	28 80 	( . 
	ld a,h			;3ac7	7c 	| 
	cp 004h		;3ac8	fe 04 	. . 
	jr c,l3ad0h		;3aca	38 04 	8 . 
	ld (ix+011h),000h		;3acc	dd 36 11 00 	. 6 . . 
l3ad0h:
	ld a,010h		;3ad0	3e 10 	> . 
	add a,h			;3ad2	84 	. 
	ld d,a			;3ad3	57 	W 
	call 07c18h		;3ad4	cd 18 7c 	. . | 
	bit 7,a		;3ad7	cb 7f 	.  
	jp nz,l3865h		;3ad9	c2 65 38 	. e 8 
	and 0e0h		;3adc	e6 e0 	. . 
	cp 020h		;3ade	fe 20 	.   
	jr z,l3a9eh		;3ae0	28 bc 	( . 
	ld e,00fh		;3ae2	1e 0f 	. . 
	call 07c61h		;3ae4	cd 61 7c 	. a | 
	ld a,(hl)			;3ae7	7e 	~ 
	bit 7,a		;3ae8	cb 7f 	.  
	jp nz,l3865h		;3aea	c2 65 38 	. e 8 
	and 0e0h		;3aed	e6 e0 	. . 
	cp 020h		;3aef	fe 20 	.   
	jr z,l3a9eh		;3af1	28 ab 	( . 
	ret			;3af3	c9 	. 
sub_3af4h:
	ld a,(0c314h)		;3af4	3a 14 c3 	: . . 
	or 004h		;3af7	f6 04 	. . 
	and 0fch		;3af9	e6 fc 	. . 
	ld (0c314h),a		;3afb	32 14 c3 	2 . . 
	set 2,(ix+014h)		;3afe	dd cb 14 d6 	. . . . 
	ld hl,(0c30fh)		;3b02	2a 0f c3 	* . . 
	add hl,de			;3b05	19 	. 
	ld e,l			;3b06	5d 	] 
	ld d,h			;3b07	54 	T 
	or a			;3b08	b7 	. 
	sbc hl,bc		;3b09	ed 42 	. B 
	jr nc,l3b0fh		;3b0b	30 02 	0 . 
	ld e,c			;3b0d	59 	Y 
	ld d,b			;3b0e	50 	P 
l3b0fh:
	ld (0c30fh),de		;3b0f	ed 53 0f c3 	. S . . 
	ret			;3b13	c9 	. 
l3b14h:
	bit 2,(ix+014h)		;3b14	dd cb 14 56 	. . . V 
	ret z			;3b18	c8 	. 
sub_3b19h:
	ld hl,(0c30fh)		;3b19	2a 0f c3 	* . . 
	add hl,de			;3b1c	19 	. 
	jr nc,l3b26h		;3b1d	30 07 	0 . 
sub_3b1fh:
	res 2,(ix+014h)		;3b1f	dd cb 14 96 	. . . . 
	ld hl,l0000h		;3b23	21 00 00 	! . . 
l3b26h:
	ld (0c30fh),hl		;3b26	22 0f c3 	" . . 
	ret			;3b29	c9 	. 
sub_3b2ah:
	ld a,(0c314h)		;3b2a	3a 14 c3 	: . . 
	bit 2,a		;3b2d	cb 57 	. W 
	jr z,l3b39h		;3b2f	28 08 	( . 
	set 0,a		;3b31	cb c7 	. . 
	ld hl,(0c30fh)		;3b33	2a 0f c3 	* . . 
	add hl,de			;3b36	19 	. 
	jr nc,l3b40h		;3b37	30 07 	0 . 
l3b39h:
	or 003h		;3b39	f6 03 	. . 
	and 0fbh		;3b3b	e6 fb 	. . 
	ld hl,l0000h		;3b3d	21 00 00 	! . . 
l3b40h:
	ld (0c30fh),hl		;3b40	22 0f c3 	" . . 
	ld (0c314h),a		;3b43	32 14 c3 	2 . . 
	ret			;3b46	c9 	. 
sub_3b47h:
	ld a,(0c314h)		;3b47	3a 14 c3 	: . . 
	or 007h		;3b4a	f6 07 	. . 
	ld (0c314h),a		;3b4c	32 14 c3 	2 . . 
	set 2,(ix+014h)		;3b4f	dd cb 14 d6 	. . . . 
	ld hl,(0c30fh)		;3b53	2a 0f c3 	* . . 
	add hl,de			;3b56	19 	. 
	ld e,l			;3b57	5d 	] 
	ld d,h			;3b58	54 	T 
	or a			;3b59	b7 	. 
	sbc hl,bc		;3b5a	ed 42 	. B 
	jr c,l3b60h		;3b5c	38 02 	8 . 
	ld e,c			;3b5e	59 	Y 
	ld d,b			;3b5f	50 	P 
l3b60h:
	ld (0c30fh),de		;3b60	ed 53 0f c3 	. S . . 
	ret			;3b64	c9 	. 
l3b65h:
	bit 2,(ix+014h)		;3b65	dd cb 14 56 	. . . V 
	ret z			;3b69	c8 	. 
sub_3b6ah:
	ld hl,(0c30fh)		;3b6a	2a 0f c3 	* . . 
	or a			;3b6d	b7 	. 
	adc hl,de		;3b6e	ed 5a 	. Z 
	jp nc,sub_3b1fh		;3b70	d2 1f 3b 	. . ; 
	jp z,sub_3b1fh		;3b73	ca 1f 3b 	. . ; 
	ld (0c30fh),hl		;3b76	22 0f c3 	" . . 
	ret			;3b79	c9 	. 
sub_3b7ah:
	ld a,(0c314h)		;3b7a	3a 14 c3 	: . . 
	bit 2,a		;3b7d	cb 57 	. W 
	jr z,l3b8ch		;3b7f	28 0b 	( . 
	and 0feh		;3b81	e6 fe 	. . 
	ld hl,(0c30fh)		;3b83	2a 0f c3 	* . . 
	adc hl,de		;3b86	ed 5a 	. Z 
	jr z,l3b8ch		;3b88	28 02 	( . 
	jr c,l3b91h		;3b8a	38 05 	8 . 
l3b8ch:
	ld hl,l0000h		;3b8c	21 00 00 	! . . 
	and 0f8h		;3b8f	e6 f8 	. . 
l3b91h:
	ld (0c30fh),hl		;3b91	22 0f c3 	" . . 
	ld (0c314h),a		;3b94	32 14 c3 	2 . . 
	ret			;3b97	c9 	. 
l3b98h:
	ld hl,(0c30fh)		;3b98	2a 0f c3 	* . . 
	add hl,de			;3b9b	19 	. 
	ld e,l			;3b9c	5d 	] 
	ld d,h			;3b9d	54 	T 
	or a			;3b9e	b7 	. 
	sbc hl,bc		;3b9f	ed 42 	. B 
	jr nc,l3ba5h		;3ba1	30 02 	0 . 
	ld e,c			;3ba3	59 	Y 
	ld d,b			;3ba4	50 	P 
l3ba5h:
	ld (0c30fh),de		;3ba5	ed 53 0f c3 	. S . . 
	ret			;3ba9	c9 	. 
l3baah:
	set 4,(ix+014h)		;3baa	dd cb 14 e6 	. . . . 
	ld hl,(0c311h)		;3bae	2a 11 c3 	* . . 
	add hl,de			;3bb1	19 	. 
	ld e,l			;3bb2	5d 	] 
	ld d,h			;3bb3	54 	T 
	or a			;3bb4	b7 	. 
	sbc hl,bc		;3bb5	ed 42 	. B 
	jr nc,l3bbbh		;3bb7	30 02 	0 . 
	ld e,c			;3bb9	59 	Y 
	ld d,b			;3bba	50 	P 
l3bbbh:
	ld (0c311h),de		;3bbb	ed 53 11 c3 	. S . . 
	ret			;3bbf	c9 	. 
l3bc0h:
	ld a,(0c314h)		;3bc0	3a 14 c3 	: . . 
	bit 4,a		;3bc3	cb 67 	. g 
	jr z,l3bcdh		;3bc5	28 06 	( . 
	ld hl,(0c311h)		;3bc7	2a 11 c3 	* . . 
	add hl,de			;3bca	19 	. 
	jr nc,l3bd4h		;3bcb	30 07 	0 . 
l3bcdh:
	or 008h		;3bcd	f6 08 	. . 
	and 0efh		;3bcf	e6 ef 	. . 
	ld hl,l0000h		;3bd1	21 00 00 	! . . 
l3bd4h:
	ld (0c311h),hl		;3bd4	22 11 c3 	" . . 
	ld (0c314h),a		;3bd7	32 14 c3 	2 . . 
	ret			;3bda	c9 	. 
l3bdbh:
	set 4,(ix+014h)		;3bdb	dd cb 14 e6 	. . . . 
	ld hl,(0c311h)		;3bdf	2a 11 c3 	* . . 
	add hl,de			;3be2	19 	. 
	ld e,l			;3be3	5d 	] 
	ld d,h			;3be4	54 	T 
	or a			;3be5	b7 	. 
	sbc hl,bc		;3be6	ed 42 	. B 
	jr c,l3bech		;3be8	38 02 	8 . 
	ld e,c			;3bea	59 	Y 
	ld d,b			;3beb	50 	P 
l3bech:
	ld (0c311h),de		;3bec	ed 53 11 c3 	. S . . 
	ret			;3bf0	c9 	. 
l3bf1h:
	ld a,(0c314h)		;3bf1	3a 14 c3 	: . . 
	bit 4,a		;3bf4	cb 67 	. g 
	jr z,l3c02h		;3bf6	28 0a 	( . 
	ld hl,(0c311h)		;3bf8	2a 11 c3 	* . . 
	or a			;3bfb	b7 	. 
	adc hl,de		;3bfc	ed 5a 	. Z 
	jr z,l3c02h		;3bfe	28 02 	( . 
	jr c,l3c07h		;3c00	38 05 	8 . 
l3c02h:
	ld hl,l0000h		;3c02	21 00 00 	! . . 
	and 0e7h		;3c05	e6 e7 	. . 
l3c07h:
	ld (0c311h),hl		;3c07	22 11 c3 	" . . 
	ld (0c314h),a		;3c0a	32 14 c3 	2 . . 
	ret			;3c0d	c9 	. 
sub_3c0eh:
	ld de,l0c08h		;3c0e	11 08 0c 	. . . 
sub_3c11h:
	xor a			;3c11	af 	. 
	ld (0c213h),a		;3c12	32 13 c2 	2 . . 
	ld a,(0c30ah)		;3c15	3a 0a c3 	: . . 
	or a			;3c18	b7 	. 
	ret nz			;3c19	c0 	. 
	call 07c18h		;3c1a	cd 18 7c 	. . | 
	bit 7,a		;3c1d	cb 7f 	.  
	jp nz,l3cbch		;3c1f	c2 bc 3c 	. . < 
	bit 6,a		;3c22	cb 77 	. w 
	jp z,l3c57h		;3c24	ca 57 3c 	. W < 
	bit 5,a		;3c27	cb 6f 	. o 
	jr nz,l3c98h		;3c29	20 6d 	  m 
	dec hl			;3c2b	2b 	+ 
	ld a,(hl)			;3c2c	7e 	~ 
	sub 090h		;3c2d	d6 90 	. . 
	jr nc,l3c60h		;3c2f	30 2f 	0 / 
	ld a,l			;3c31	7d 	} 
	and 0bch		;3c32	e6 bc 	. . 
	ld l,a			;3c34	6f 	o 
	ld a,(0c0b0h)		;3c35	3a b0 c0 	: . . 
	rra			;3c38	1f 	. 
	rra			;3c39	1f 	. 
	add a,l			;3c3a	85 	. 
	and 03eh		;3c3b	e6 3e 	. > 
	cp 03eh		;3c3d	fe 3e 	. > 
	ret z			;3c3f	c8 	. 
	push hl			;3c40	e5 	. 
	ld l,000h		;3c41	2e 00 	. . 
	call sub_039ch		;3c43	cd 9c 03 	. . . 
	ld a,08eh		;3c46	3e 8e 	> . 
	ld (0c110h),a		;3c48	32 10 c1 	2 . . 
	pop hl			;3c4b	e1 	. 
	ld a,(0c202h)		;3c4c	3a 02 c2 	: . . 
	or a			;3c4f	b7 	. 
	ret nz			;3c50	c0 	. 
	ld (0c204h),hl		;3c51	22 04 c2 	" . . 
	jp 04587h		;3c54	c3 87 45 	. . E 
l3c57h:
	and 0e0h		;3c57	e6 e0 	. . 
	cp 020h		;3c59	fe 20 	.   
	ret nz			;3c5b	c0 	. 
	ld (0c213h),a		;3c5c	32 13 c2 	2 . . 
	ret			;3c5f	c9 	. 
l3c60h:
	ld e,a			;3c60	5f 	_ 
	ld d,000h		;3c61	16 00 	. . 
	ld hl,l3c6ch		;3c63	21 6c 3c 	! l < 
	add hl,de			;3c66	19 	. 
	ld a,(hl)			;3c67	7e 	~ 
	ld (0c056h),a		;3c68	32 56 c0 	2 V . 
	ret			;3c6b	c9 	. 
l3c6ch:
	ld bc,l0201h		;3c6c	01 01 02 	. . . 
	ld (bc),a			;3c6f	02 	. 
	ld (bc),a			;3c70	02 	. 
	inc bc			;3c71	03 	. 
	inc bc			;3c72	03 	. 
	inc bc			;3c73	03 	. 
	inc bc			;3c74	03 	. 
	inc b			;3c75	04 	. 
	inc b			;3c76	04 	. 
	inc b			;3c77	04 	. 
	inc b			;3c78	04 	. 
	dec b			;3c79	05 	. 
	dec b			;3c7a	05 	. 
	dec b			;3c7b	05 	. 
	dec b			;3c7c	05 	. 
	ld b,006h		;3c7d	06 06 	. . 
	ld b,007h		;3c7f	06 07 	. . 
	rlca			;3c81	07 	. 
	rlca			;3c82	07 	. 
	rlca			;3c83	07 	. 
	ex af,af'			;3c84	08 	. 
	ex af,af'			;3c85	08 	. 
	ex af,af'			;3c86	08 	. 
	ex af,af'			;3c87	08 	. 
	add hl,bc			;3c88	09 	. 
	add hl,bc			;3c89	09 	. 
	add hl,bc			;3c8a	09 	. 
	add hl,bc			;3c8b	09 	. 
	ld a,(bc)			;3c8c	0a 	. 
	ld a,(bc)			;3c8d	0a 	. 
	ld a,(bc)			;3c8e	0a 	. 
	ld a,(bc)			;3c8f	0a 	. 
	dec bc			;3c90	0b 	. 
	dec bc			;3c91	0b 	. 
	dec bc			;3c92	0b 	. 
	dec bc			;3c93	0b 	. 
	inc c			;3c94	0c 	. 
	inc c			;3c95	0c 	. 
	inc c			;3c96	0c 	. 
	inc c			;3c97	0c 	. 
l3c98h:
	dec hl			;3c98	2b 	+ 
	ld a,(hl)			;3c99	7e 	~ 
	ld (0c211h),hl		;3c9a	22 11 c2 	" . . 
	cp 070h		;3c9d	fe 70 	. p 
	jr c,l3cb8h		;3c9f	38 17 	8 . 
	ld a,(0c31ah)		;3ca1	3a 1a c3 	: . . 
	cp 001h		;3ca4	fe 01 	. . 
	ret nz			;3ca6	c0 	. 
	ld a,(0c30ch)		;3ca7	3a 0c c3 	: . . 
	cp 018h		;3caa	fe 18 	. . 
	ret c			;3cac	d8 	. 
	ld a,(0c006h)		;3cad	3a 06 c0 	: . . 
	bit 0,a		;3cb0	cb 47 	. G 
	ret z			;3cb2	c8 	. 
	ld (ix+01ah),00dh		;3cb3	dd 36 1a 0d 	. 6 . . 
	ret			;3cb7	c9 	. 
l3cb8h:
	cp 03fh		;3cb8	fe 3f 	. ? 
	jr z,l3cc1h		;3cba	28 05 	( . 
l3cbch:
	set 7,(ix+001h)		;3cbc	dd cb 01 fe 	. . . . 
	ret			;3cc0	c9 	. 
l3cc1h:
	ld a,(0c006h)		;3cc1	3a 06 c0 	: . . 
	bit 0,a		;3cc4	cb 47 	. G 
	ret z			;3cc6	c8 	. 
	ld hl,0ff00h		;3cc7	21 00 ff 	! . . 
	ld (0c311h),hl		;3cca	22 11 c3 	" . . 
	jp l31f9h		;3ccd	c3 f9 31 	. . 1 
sub_3cd0h:
	ld de,01808h		;3cd0	11 08 18 	. . . 
sub_3cd3h:
	ld a,(0c30ah)		;3cd3	3a 0a c3 	: . . 
	or a			;3cd6	b7 	. 
	ret nz			;3cd7	c0 	. 
	call 07c18h		;3cd8	cd 18 7c 	. . | 
	and 0e0h		;3cdb	e6 e0 	. . 
	cp 0a0h		;3cdd	fe a0 	. . 
	jr nz,l3d24h		;3cdf	20 43 	  C 
	dec hl			;3ce1	2b 	+ 
	ld (0c211h),hl		;3ce2	22 11 c2 	" . . 
	ld a,(hl)			;3ce5	7e 	~ 
	cp 03fh		;3ce6	fe 3f 	. ? 
	jp nc,l3d9dh		;3ce8	d2 9d 3d 	. . = 
	sub 00dh		;3ceb	d6 0d 	. . 
	ret c			;3ced	d8 	. 
	ld hl,l3cf4h		;3cee	21 f4 3c 	! . < 
	jp l0020h		;3cf1	c3 20 00 	.   . 
l3cf4h:
	add hl,hl			;3cf4	29 	) 
	dec a			;3cf5	3d 	= 
	add hl,hl			;3cf6	29 	) 
	dec a			;3cf7	3d 	= 
	add hl,hl			;3cf8	29 	) 
	dec a			;3cf9	3d 	= 
	add hl,hl			;3cfa	29 	) 
	dec a			;3cfb	3d 	= 
	dec l			;3cfc	2d 	- 
	dec a			;3cfd	3d 	= 
	dec l			;3cfe	2d 	- 
	dec a			;3cff	3d 	= 
	dec l			;3d00	2d 	- 
	dec a			;3d01	3d 	= 
	dec l			;3d02	2d 	- 
	dec a			;3d03	3d 	= 
	ld sp,0313dh		;3d04	31 3d 31 	1 = 1 
	dec a			;3d07	3d 	= 
	ld sp,0313dh		;3d08	31 3d 31 	1 = 1 
	dec a			;3d0b	3d 	= 
	dec (hl)			;3d0c	35 	5 
	dec a			;3d0d	3d 	= 
	dec (hl)			;3d0e	35 	5 
	dec a			;3d0f	3d 	= 
	dec (hl)			;3d10	35 	5 
	dec a			;3d11	3d 	= 
	dec (hl)			;3d12	35 	5 
	dec a			;3d13	3d 	= 
	adc a,b			;3d14	88 	. 
	dec a			;3d15	3d 	= 
	adc a,b			;3d16	88 	. 
	dec a			;3d17	3d 	= 
	adc a,b			;3d18	88 	. 
	dec a			;3d19	3d 	= 
	adc a,b			;3d1a	88 	. 
	dec a			;3d1b	3d 	= 
	add hl,sp			;3d1c	39 	9 
	dec a			;3d1d	3d 	= 
	add hl,sp			;3d1e	39 	9 
	dec a			;3d1f	3d 	= 
	add hl,sp			;3d20	39 	9 
	dec a			;3d21	3d 	= 
	add hl,sp			;3d22	39 	9 
	dec a			;3d23	3d 	= 
l3d24h:
	xor a			;3d24	af 	. 
	ld (0c214h),a		;3d25	32 14 c2 	2 . . 
	ret			;3d28	c9 	. 
	ld c,003h		;3d29	0e 03 	. . 
	jr l3d3bh		;3d2b	18 0e 	. . 
	ld c,001h		;3d2d	0e 01 	. . 
	jr l3d3bh		;3d2f	18 0a 	. . 
	ld c,004h		;3d31	0e 04 	. . 
	jr l3d3bh		;3d33	18 06 	. . 
	ld c,002h		;3d35	0e 02 	. . 
	jr l3d3bh		;3d37	18 02 	. . 
	ld c,005h		;3d39	0e 05 	. . 
l3d3bh:
	ld a,(0c023h)		;3d3b	3a 23 c0 	: # . 
	cp 011h		;3d3e	fe 11 	. . 
	ret nz			;3d40	c0 	. 
	ld hl,0c22ah		;3d41	21 2a c2 	! * . 
	ld a,(hl)			;3d44	7e 	~ 
	ld (hl),c			;3d45	71 	q 
	cp c			;3d46	b9 	. 
	ret z			;3d47	c8 	. 
	dec hl			;3d48	2b 	+ 
	ld a,(hl)			;3d49	7e 	~ 
	ld hl,l3db9h		;3d4a	21 b9 3d 	! . = 
	ld e,a			;3d4d	5f 	_ 
	ld d,000h		;3d4e	16 00 	. . 
	add hl,de			;3d50	19 	. 
	ld a,(hl)			;3d51	7e 	~ 
	cp c			;3d52	b9 	. 
	jr nz,l3d77h		;3d53	20 22 	  " 
	ld hl,0c229h		;3d55	21 29 c2 	! ) . 
	inc (hl)			;3d58	34 	4 
	ld a,08eh		;3d59	3e 8e 	> . 
	ld (0c110h),a		;3d5b	32 10 c1 	2 . . 
	ld a,(hl)			;3d5e	7e 	~ 
	cp 00ah		;3d5f	fe 0a 	. . 
	ret c			;3d61	d8 	. 
	ld iy,0c3a0h		;3d62	fd 21 a0 c3 	. ! . . 
	ld (iy+000h),052h		;3d66	fd 36 00 52 	. 6 . R 
	ld (iy+003h),000h		;3d6a	fd 36 03 00 	. 6 . . 
	ld (iy+00ch),020h		;3d6e	fd 36 0c 20 	. 6 .   
	ld (iy+00eh),01fh		;3d72	fd 36 0e 1f 	. 6 . . 
	ret			;3d76	c9 	. 
l3d77h:
	xor a			;3d77	af 	. 
	ld (0c229h),a		;3d78	32 29 c2 	2 ) . 
	ld d,030h		;3d7b	16 30 	. 0 
	ld a,(0c0afh)		;3d7d	3a af c0 	: . . 
	add a,030h		;3d80	c6 30 	. 0 
	ld e,a			;3d82	5f 	_ 
	ld c,04fh		;3d83	0e 4f 	. O 
	jp 05b59h		;3d85	c3 59 5b 	. Y [ 
	ld hl,0c214h		;3d88	21 14 c2 	! . . 
	dec (hl)			;3d8b	35 	5 
	ret p			;3d8c	f0 	. 
	ld (hl),07fh		;3d8d	36 7f 	6  
	ld e,(ix+00ch)		;3d8f	dd 5e 0c 	. ^ . 
	ld a,(0c30eh)		;3d92	3a 0e c3 	: . . 
	add a,018h		;3d95	c6 18 	. . 
	ld d,a			;3d97	57 	W 
	ld c,04fh		;3d98	0e 4f 	. O 
	jp 05b59h		;3d9a	c3 59 5b 	. Y [ 
l3d9dh:
	jr z,l3daah		;3d9d	28 0b 	( . 
	ld a,(0c007h)		;3d9f	3a 07 c0 	: . . 
	bit 1,a		;3da2	cb 4f 	. O 
	ret z			;3da4	c8 	. 
	ld (ix+01ah),011h		;3da5	dd 36 1a 11 	. 6 . . 
	ret			;3da9	c9 	. 
l3daah:
	ld a,(0c006h)		;3daa	3a 06 c0 	: . . 
	bit 1,a		;3dad	cb 4f 	. O 
	ret z			;3daf	c8 	. 
	ld hl,l0100h		;3db0	21 00 01 	! . . 
	ld (0c311h),hl		;3db3	22 11 c3 	" . . 
	jp l31f9h		;3db6	c3 f9 31 	. . 1 
l3db9h:
	dec b			;3db9	05 	. 
	ld bc,l0301h+1		;3dba	01 02 03 	. . . 
	dec b			;3dbd	05 	. 
	ld (bc),a			;3dbe	02 	. 
	ld bc,l0304h		;3dbf	01 04 03 	. . . 
	inc b			;3dc2	04 	. 
	rst 38h			;3dc3	ff 	. 
l3dc4h:
	ld (ix+01ah),001h		;3dc4	dd 36 1a 01 	. 6 . . 
	jr l3dd4h		;3dc8	18 0a 	. . 
l3dcah:
	ld hl,l0000h		;3dca	21 00 00 	! . . 
	ld (0c311h),hl		;3dcd	22 11 c3 	" . . 
	res 4,(ix+014h)		;3dd0	dd cb 14 a6 	. . . . 
l3dd4h:
	dec (ix+018h)		;3dd4	dd 35 18 	. 5 . 
	jr z,l3de9h		;3dd7	28 10 	( . 
	ld hl,0ff80h		;3dd9	21 80 ff 	! . . 
	bit 1,(ix+018h)		;3ddc	dd cb 18 4e 	. . . N 
	jr z,l3de5h		;3de0	28 03 	( . 
	ld hl,00080h		;3de2	21 80 00 	! . . 
l3de5h:
	ld (0c30fh),hl		;3de5	22 0f c3 	" . . 
	ret			;3de8	c9 	. 
l3de9h:
	res 2,(ix+014h)		;3de9	dd cb 14 96 	. . . . 
	ld hl,l0000h		;3ded	21 00 00 	! . . 
	ld (0c30fh),hl		;3df0	22 0f c3 	" . . 
	res 4,(ix+01ch)		;3df3	dd cb 1c a6 	. . . . 
	ret			;3df7	c9 	. 
	ld a,(ix+01ah)		;3df8	dd 7e 1a 	. ~ . 
	ld hl,l3e01h		;3dfb	21 01 3e 	! . > 
	jp l0020h		;3dfe	c3 20 00 	.   . 
l3e01h:
	add hl,bc			;3e01	09 	. 
	ld a,019h		;3e02	3e 19 	> . 
	ld a,059h		;3e04	3e 59 	> Y 
	ld a,06fh		;3e06	3e 6f 	> o 
	ld a,0ddh		;3e08	3e dd 	> . 
	ld (hl),009h		;3e0a	36 09 	6 . 
	nop			;3e0c	00 	. 
	ld (ix+007h),0e1h		;3e0d	dd 36 07 e1 	. 6 . . 
	ld (ix+008h),080h		;3e11	dd 36 08 80 	. 6 . . 
	inc (ix+01ah)		;3e15	dd 34 1a 	. 4 . 
	ret			;3e18	c9 	. 
	ld a,(0c31ah)		;3e19	3a 1a c3 	: . . 
	cp 001h		;3e1c	fe 01 	. . 
	ret nz			;3e1e	c0 	. 
	ld a,(ix+00ah)		;3e1f	dd 7e 0a 	. ~ . 
	or (ix+009h)		;3e22	dd b6 09 	. . . 
	ret nz			;3e25	c0 	. 
	ld iy,0c300h		;3e26	fd 21 00 c3 	. ! . . 
	call 07c8fh		;3e2a	cd 8f 7c 	. . | 
	ret c			;3e2d	d8 	. 
	ld a,01ah		;3e2e	3e 1a 	> . 
	ld (0c31ah),a		;3e30	32 1a c3 	2 . . 
	inc (ix+01ah)		;3e33	dd 34 1a 	. 4 . 
	ld (ix+005h),01eh		;3e36	dd 36 05 1e 	. 6 . . 
	ld iy,0c640h		;3e3a	fd 21 40 c6 	. ! @ . 
	ld hl,08000h		;3e3e	21 00 80 	! . . 
	ld c,077h		;3e41	0e 77 	. w 
l3e43h:
	ld (iy+000h),018h		;3e43	fd 36 00 18 	. 6 . . 
	ld a,(ix+00ch)		;3e47	dd 7e 0c 	. ~ . 
	add a,018h		;3e4a	c6 18 	. . 
	ld (iy+00ch),a		;3e4c	fd 77 0c 	. w . 
	ld (iy+00eh),c		;3e4f	fd 71 0e 	. q . 
	ld (iy+007h),l		;3e52	fd 75 07 	. u . 
	ld (iy+008h),h		;3e55	fd 74 08 	. t . 
	ret			;3e58	c9 	. 
	dec (ix+005h)		;3e59	dd 35 05 	. 5 . 
	ret nz			;3e5c	c0 	. 
	ld (ix+005h),03ch		;3e5d	dd 36 05 3c 	. 6 . < 
	inc (ix+01ah)		;3e61	dd 34 1a 	. 4 . 
	ld iy,0c660h		;3e64	fd 21 60 c6 	. ! ` . 
	ld hl,08a27h		;3e68	21 27 8a 	! ' . 
	ld c,087h		;3e6b	0e 87 	. . 
	jr l3e43h		;3e6d	18 d4 	. . 
	dec (ix+005h)		;3e6f	dd 35 05 	. 5 . 
	ret nz			;3e72	c0 	. 
	ld a,001h		;3e73	3e 01 	> . 
	ld (0c31ah),a		;3e75	32 1a c3 	2 . . 
	ld a,089h		;3e78	3e 89 	> . 
	ld (0c202h),a		;3e7a	32 02 c2 	2 . . 
	ld hl,0c640h		;3e7d	21 40 c6 	! @ . 
	call sub_2755h		;3e80	cd 55 27 	. U ' 
	inc hl			;3e83	23 	# 
	call sub_2755h		;3e84	cd 55 27 	. U ' 
	jp sub_2752h		;3e87	c3 52 27 	. R ' 
	ld (ix+007h),0e1h		;3e8a	dd 36 07 e1 	. 6 . . 
	ld (ix+008h),080h		;3e8e	dd 36 08 80 	. 6 . . 
	ld a,(ix+00ah)		;3e92	dd 7e 0a 	. ~ . 
	or (ix+009h)		;3e95	dd b6 09 	. . . 
	ret nz			;3e98	c0 	. 
	ld iy,0c300h		;3e99	fd 21 00 c3 	. ! . . 
	call 07c8fh		;3e9d	cd 8f 7c 	. . | 
	ret c			;3ea0	d8 	. 
	ld a,(0c640h)		;3ea1	3a 40 c6 	: @ . 
	ld c,a			;3ea4	4f 	O 
	ld a,(0c640h)		;3ea5	3a 40 c6 	: @ . 
	or c			;3ea8	b1 	. 
	ret z			;3ea9	c8 	. 
	ld hl,l3ec9h		;3eaa	21 c9 3e 	! . > 
	ld bc,0c030h		;3ead	01 30 c0 	. 0 . 
	call sub_03fah		;3eb0	cd fa 03 	. . . 
	ret c			;3eb3	d8 	. 
	ld hl,l3ec9h		;3eb4	21 c9 3e 	! . > 
	ld bc,0c030h		;3eb7	01 30 c0 	. 0 . 
	call sub_03e9h		;3eba	cd e9 03 	. . . 
	ld hl,0c640h		;3ebd	21 40 c6 	! @ . 
	call sub_2755h		;3ec0	cd 55 27 	. U ' 
	ld hl,0c660h		;3ec3	21 60 c6 	! ` . 
	jp sub_2755h		;3ec6	c3 55 27 	. U ' 
l3ec9h:
	ld d,b			;3ec9	50 	P 
	nop			;3eca	00 	. 
	nop			;3ecb	00 	. 
	bit 0,(ix+001h)		;3ecc	dd cb 01 46 	. . . F 
	jr z,l3eedh		;3ed0	28 1b 	( . 
	call 07cd8h		;3ed2	cd d8 7c 	. . | 
	ret c			;3ed5	d8 	. 
	ld hl,0c202h		;3ed6	21 02 c2 	! . . 
	ld a,(hl)			;3ed9	7e 	~ 
	or a			;3eda	b7 	. 
	ret nz			;3edb	c0 	. 
	ld (hl),080h		;3edc	36 80 	6 . 
	ld hl,08503h		;3ede	21 03 85 	! . . 
	ld (0c206h),hl		;3ee1	22 06 c2 	" . . 
	ld hl,0cc08h		;3ee4	21 08 cc 	! . . 
	ld (0c204h),hl		;3ee7	22 04 c2 	" . . 
	jp sub_2752h		;3eea	c3 52 27 	. R ' 
l3eedh:
	ld (ix+007h),0e1h		;3eed	dd 36 07 e1 	. 6 . . 
	ld (ix+008h),080h		;3ef1	dd 36 08 80 	. 6 . . 
	ld a,(ix+009h)		;3ef5	dd 7e 09 	. ~ . 
	or a			;3ef8	b7 	. 
	ret nz			;3ef9	c0 	. 
	ld a,(ix+001h)		;3efa	dd 7e 01 	. ~ . 
	or 003h		;3efd	f6 03 	. . 
	ld (ix+001h),a		;3eff	dd 77 01 	. w . 
	ret			;3f02	c9 	. 
	dec h			;3f03	25 	% 
	ccf			;3f04	3f 	? 
	ld a,03fh		;3f05	3e 3f 	> ? 
	ld a,03fh		;3f07	3e 3f 	> ? 
	ld a,03fh		;3f09	3e 3f 	> ? 
	sbc a,d			;3f0b	9a 	. 
	ccf			;3f0c	3f 	? 
	ld a,03fh		;3f0d	3e 3f 	> ? 
	ld a,03fh		;3f0f	3e 3f 	> ? 
	ld a,03fh		;3f11	3e 3f 	> ? 
	sbc a,d			;3f13	9a 	. 
	ccf			;3f14	3f 	? 
	ld a,03fh		;3f15	3e 3f 	> ? 
	xor 03fh		;3f17	ee 3f 	. ? 
	ld a,03fh		;3f19	3e 3f 	> ? 
	ld (hl),03fh		;3f1b	36 3f 	6 ? 
	ld a,03fh		;3f1d	3e 3f 	> ? 
	ld a,03fh		;3f1f	3e 3f 	> ? 
	xor 03fh		;3f21	ee 3f 	. ? 
	dec h			;3f23	25 	% 
	ccf			;3f24	3f 	? 
	call 040b0h		;3f25	cd b0 40 	. . @ 
	ld hl,(0c30fh)		;3f28	2a 0f c3 	* . . 
	add hl,hl			;3f2b	29 	) 
	add hl,hl			;3f2c	29 	) 
	add hl,hl			;3f2d	29 	) 
	add hl,hl			;3f2e	29 	) 
	ld a,060h		;3f2f	3e 60 	> ` 
	add a,h			;3f31	84 	. 
	ld b,a			;3f32	47 	G 
	jp 040edh		;3f33	c3 ed 40 	. . @ 
	call 04127h		;3f36	cd 27 41 	. ' A 
	ld b,080h		;3f39	06 80 	. . 
	jp 040edh		;3f3b	c3 ed 40 	. . @ 
l3f3eh:
	call 04127h		;3f3e	cd 27 41 	. ' A 
	ld e,(ix+01ah)		;3f41	dd 5e 1a 	. ^ . 
	ld hl,l3f7ah		;3f44	21 7a 3f 	! z ? 
	ld d,000h		;3f47	16 00 	. . 
	add hl,de			;3f49	19 	. 
	ld a,(hl)			;3f4a	7e 	~ 
	or a			;3f4b	b7 	. 
	jr nz,l3f5ch		;3f4c	20 0e 	  . 
	ld hl,(0c30fh)		;3f4e	2a 0f c3 	* . . 
	add hl,hl			;3f51	29 	) 
	add hl,hl			;3f52	29 	) 
	add hl,hl			;3f53	29 	) 
	add hl,hl			;3f54	29 	) 
	ld a,060h		;3f55	3e 60 	> ` 
	add a,h			;3f57	84 	. 
	ld b,a			;3f58	47 	G 
	jp 040edh		;3f59	c3 ed 40 	. . @ 
l3f5ch:
	ld a,(0c30ch)		;3f5c	3a 0c c3 	: . . 
	ld b,040h		;3f5f	06 40 	. @ 
	cp 044h		;3f61	fe 44 	. D 
	jp c,040edh		;3f63	da ed 40 	. . @ 
	ld a,(0c0c9h)		;3f66	3a c9 c0 	: . . 
	and 008h		;3f69	e6 08 	. . 
	ret z			;3f6b	c8 	. 
	ld de,(0c30fh)		;3f6c	ed 5b 0f c3 	. [ . . 
	xor a			;3f70	af 	. 
	ld hl,0ff00h		;3f71	21 00 ff 	! . . 
	sbc hl,de		;3f74	ed 52 	. R 
	ld (0c0abh),hl		;3f76	22 ab c0 	" . . 
	ret			;3f79	c9 	. 
l3f7ah:
	nop			;3f7a	00 	. 
	nop			;3f7b	00 	. 
	nop			;3f7c	00 	. 
	nop			;3f7d	00 	. 
	nop			;3f7e	00 	. 
	nop			;3f7f	00 	. 
	nop			;3f80	00 	. 
	nop			;3f81	00 	. 
	ld bc,l0001h		;3f82	01 01 00 	. . . 
	ld bc,l0001h		;3f85	01 01 00 	. . . 
	nop			;3f88	00 	. 
	nop			;3f89	00 	. 
	nop			;3f8a	00 	. 
	nop			;3f8b	00 	. 
	nop			;3f8c	00 	. 
	nop			;3f8d	00 	. 
	nop			;3f8e	00 	. 
	nop			;3f8f	00 	. 
	nop			;3f90	00 	. 
	nop			;3f91	00 	. 
	nop			;3f92	00 	. 
	nop			;3f93	00 	. 
	nop			;3f94	00 	. 
	nop			;3f95	00 	. 
	nop			;3f96	00 	. 
	nop			;3f97	00 	. 
	nop			;3f98	00 	. 
	nop			;3f99	00 	. 
	ld a,(0c31ah)		;3f9a	3a 1a c3 	: . . 
	cp 01bh		;3f9d	fe 1b 	. . 
	jr z,l3fa9h		;3f9f	28 08 	( . 
	cp 013h		;3fa1	fe 13 	. . 
	jp nz,l3f3eh		;3fa3	c2 3e 3f 	. > ? 
	jp l3fdah		;3fa6	c3 da 3f 	. . ? 
l3fa9h:
	ld a,(0c0b7h)		;3fa9	3a b7 c0 	: . . 
	and 002h		;3fac	e6 02 	. . 
	jr z,l3fcah		;3fae	28 1a 	( . 
	ld a,(0c30eh)		;3fb0	3a 0e c3 	: . . 
	cp 090h		;3fb3	fe 90 	. . 
	jr c,l3fbdh		;3fb5	38 06 	8 . 
	ld hl,l0000h		;3fb7	21 00 00 	! . . 
	ld (0c311h),hl		;3fba	22 11 c3 	" . . 
l3fbdh:
	ld hl,0ff00h		;3fbd	21 00 ff 	! . . 
	ld (0c0abh),hl		;3fc0	22 ab c0 	" . . 
	ld hl,l0100h		;3fc3	21 00 01 	! . . 
	ld (0c30fh),hl		;3fc6	22 0f c3 	" . . 
	ret			;3fc9	c9 	. 
l3fcah:
	ld (ix+01ah),013h		;3fca	dd 36 1a 13 	. 6 . . 
	push ix		;3fce	dd e5 	. . 
	call 0663ah		;3fd0	cd 3a 66 	. : f 
	pop ix		;3fd3	dd e1 	. . 
	ld hl,0c0c9h		;3fd5	21 c9 c0 	! . . 
	set 0,(hl)		;3fd8	cb c6 	. . 
l3fdah:
	ld a,(0c30eh)		;3fda	3a 0e c3 	: . . 
	cp 008h		;3fdd	fe 08 	. . 
	jr nc,l3fe7h		;3fdf	30 06 	0 . 
	ld hl,l0300h		;3fe1	21 00 03 	! . . 
	ld (0c311h),hl		;3fe4	22 11 c3 	" . . 
l3fe7h:
	ld hl,l0300h		;3fe7	21 00 03 	! . . 
	ld (0c0b9h),hl		;3fea	22 b9 c0 	" . . 
	ret			;3fed	c9 	. 
	ld hl,0c0c9h		;3fee	21 c9 c0 	! . . 
	ld a,(hl)			;3ff1	7e 	~ 
	and 00fh		;3ff2	e6 0f 	. . 
	jp z,04006h		;3ff4	ca 06 40 	. . @ 
	rrca			;3ff7	0f 	. 
	jp c,04094h		;3ff8	da 94 40 	. . @ 
	rrca			;3ffb	0f 	. 
	jp c,040a9h		;3ffc	da a9 40 	. . @ 
	rrca			;3fff	0f 	. 
