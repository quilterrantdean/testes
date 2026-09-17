; ============================================================
; Banco 1 do ROM (offset no ficheiro: 0x4000 - 0x7FFF)
; Endereco de origem assumido no mapa do Z80: 4000h (slot 1, valor inicial; contem o cabecalho TMR SEGA em 7FF0h)
; Gerado com z80dasm 1.1.6 (-a enderecos, -t bytes originais, -l labels)
; NOTA: saltos/chamadas absolutos (JP/CALL) so sao validos quando
; este banco estiver de facto paginado no slot indicado acima.
; Zonas de dados (graficos, tabelas, musica) podem surgir desmontadas
; incorrectamente como instrucoes -- ver aviso Self-modifying-code
; nos ficheiros onde a heuristica do z80dasm o assinalou.
; ============================================================

; z80dasm 1.1.6
; command line: z80dasm -a -t -l -g 0x4000 -s /home/claude/out/bank1.sym -o /home/claude/out/bank1.asm bank1.bin

	org	04000h

l4000h:
	jp c,l4059h		;4000	da 59 40 	. Y @ 
	jp l4078h		;4003	c3 78 40 	. x @ 
	ld a,(0c30eh)		;4006	3a 0e c3 	: . . 
	cp 0a8h		;4009	fe a8 	. . 
	jr c,l402ah		;400b	38 1d 	8 . 
	ld a,(0c314h)		;400d	3a 14 c3 	: . . 
	bit 3,a		;4010	cb 5f 	. _ 
	jp nz,l407fh		;4012	c2 7f 40 	.  @ 
	bit 7,a		;4015	cb 7f 	.  
	jp z,l409bh		;4017	ca 9b 40 	. . @ 
	bit 6,a		;401a	cb 77 	. w 
	jp nz,l407fh		;401c	c2 7f 40 	.  @ 
	ld hl,(0c311h)		;401f	2a 11 c3 	* . . 
	ld a,l			;4022	7d 	} 
	or h			;4023	b4 	. 
	jp z,l409bh		;4024	ca 9b 40 	. . @ 
	jp l407fh		;4027	c3 7f 40 	.  @ 
l402ah:
	ld a,(0c31ah)		;402a	3a 1a c3 	: . . 
	ld b,0f0h		;402d	06 f0 	. . 
	cp 005h		;402f	fe 05 	. . 
	jr nz,l4035h		;4031	20 02 	  . 
	ld b,0e8h		;4033	06 e8 	. . 
l4035h:
	ld a,(0c30ch)		;4035	3a 0c c3 	: . . 
	cp b			;4038	b8 	. 
	ret c			;4039	d8 	. 
	bit 1,(ix+014h)		;403a	dd cb 14 4e 	. . . N 
	jp nz,l4060h		;403e	c2 60 40 	. ` @ 
	call 032e9h		;4041	cd e9 32 	. . 2 
	ld hl,0c0c9h		;4044	21 c9 c0 	! . . 
	set 2,(hl)		;4047	cb d6 	. . 
	ld a,(0c210h)		;4049	3a 10 c2 	: . . 
	cp 005h		;404c	fe 05 	. . 
	ld hl,0ffc0h		;404e	21 c0 ff 	! . . 
	jr nz,l4056h		;4051	20 03 	  . 
	ld hl,0ffa0h		;4053	21 a0 ff 	! . . 
l4056h:
	ld (0c30fh),hl		;4056	22 0f c3 	" . . 
l4059h:
	ld hl,00400h		;4059	21 00 04 	! . . 
	ld (0c0abh),hl		;405c	22 ab c0 	" . . 
	ret			;405f	c9 	. 
l4060h:
	call 032e9h		;4060	cd e9 32 	. . 2 
	ld hl,0c0c9h		;4063	21 c9 c0 	! . . 
	set 3,(hl)		;4066	cb de 	. . 
	ld a,(0c210h)		;4068	3a 10 c2 	: . . 
	cp 005h		;406b	fe 05 	. . 
	ld hl,00040h		;406d	21 40 00 	! @ . 
	jr nz,l4075h		;4070	20 03 	  . 
	ld hl,00060h		;4072	21 60 00 	! ` . 
l4075h:
	ld (0c30fh),hl		;4075	22 0f c3 	" . . 
l4078h:
	ld hl,0fc00h		;4078	21 00 fc 	! . . 
	ld (0c0abh),hl		;407b	22 ab c0 	" . . 
	ret			;407e	c9 	. 
l407fh:
	call 032e9h		;407f	cd e9 32 	. . 2 
	push ix		;4082	dd e5 	. . 
	call sub_663ah		;4084	cd 3a 66 	. : f 
	pop ix		;4087	dd e1 	. . 
	ld hl,0c0c9h		;4089	21 c9 c0 	! . . 
	set 0,(hl)		;408c	cb c6 	. . 
	ld hl,00080h		;408e	21 80 00 	! . . 
	ld (0c311h),hl		;4091	22 11 c3 	" . . 
	ld hl,00400h		;4094	21 00 04 	! . . 
	ld (0c0b9h),hl		;4097	22 b9 c0 	" . . 
	ret			;409a	c9 	. 
l409bh:
	call 032e9h		;409b	cd e9 32 	. . 2 
	ld hl,0c0c9h		;409e	21 c9 c0 	! . . 
	set 1,(hl)		;40a1	cb ce 	. . 
	ld hl,0ff80h		;40a3	21 80 ff 	! . . 
	ld (0c311h),hl		;40a6	22 11 c3 	" . . 
	ld hl,0fc00h		;40a9	21 00 fc 	! . . 
	ld (0c0b9h),hl		;40ac	22 b9 c0 	" . . 
	ret			;40af	c9 	. 
	ld hl,0c0c9h		;40b0	21 c9 c0 	! . . 
	ld a,(hl)			;40b3	7e 	~ 
	and 003h		;40b4	e6 03 	. . 
	jp z,l4127h		;40b6	ca 27 41 	. ' A 
	ld a,(0c30eh)		;40b9	3a 0e c3 	: . . 
	bit 7,(ix+012h)		;40bc	dd cb 12 7e 	. . . ~ 
	jr nz,l40e3h		;40c0	20 21 	  ! 
	bit 0,(hl)		;40c2	cb 46 	. F 
	jr z,l40d5h		;40c4	28 0f 	( . 
	cp 050h		;40c6	fe 50 	. P 
	ret c			;40c8	d8 	. 
	ld a,(0c30ah)		;40c9	3a 0a c3 	: . . 
	or a			;40cc	b7 	. 
	ret nz			;40cd	c0 	. 
	ld hl,(0c311h)		;40ce	2a 11 c3 	* . . 
	ld (0c0b9h),hl		;40d1	22 b9 c0 	" . . 
	ret			;40d4	c9 	. 
l40d5h:
	cp 0a8h		;40d5	fe a8 	. . 
	ret c			;40d7	d8 	. 
l40d8h:
	ld hl,00000h		;40d8	21 00 00 	! . . 
	ld (0c311h),hl		;40db	22 11 c3 	" . . 
	res 4,(ix+014h)		;40de	dd cb 14 a6 	. . . . 
	ret			;40e2	c9 	. 
l40e3h:
	ret			;40e3	c9 	. 
	cp 004h		;40e4	fe 04 	. . 
	ret nc			;40e6	d0 	. 
	set 7,(ix+014h)		;40e7	dd cb 14 fe 	. . . . 
	jr l40d8h		;40eb	18 eb 	. . 
	ld a,(0c0c9h)		;40ed	3a c9 c0 	: . . 
	ld c,a			;40f0	4f 	O 
	ld a,(0c30ch)		;40f1	3a 0c c3 	: . . 
	ld de,(0c30fh)		;40f4	ed 5b 0f c3 	. [ . . 
	bit 7,d		;40f8	cb 7a 	. z 
	jr z,l4115h		;40fa	28 19 	( . 
	bit 2,c		;40fc	cb 51 	. Q 
	jr nz,l410ah		;40fe	20 0a 	  . 
	cp 004h		;4100	fe 04 	. . 
	ret nc			;4102	d0 	. 
	call 03b1fh		;4103	cd 1f 3b 	. . ; 
	ld (0c0abh),hl		;4106	22 ab c0 	" . . 
	ret			;4109	c9 	. 
l410ah:
	cp b			;410a	b8 	. 
	ret nc			;410b	d0 	. 
l410ch:
	xor a			;410c	af 	. 
	ld h,a			;410d	67 	g 
	ld l,a			;410e	6f 	o 
	sbc hl,de		;410f	ed 52 	. R 
	ld (0c0abh),hl		;4111	22 ab c0 	" . . 
	ret			;4114	c9 	. 
l4115h:
	bit 3,c		;4115	cb 59 	. Y 
	jr nz,l4123h		;4117	20 0a 	  . 
	cp 0f4h		;4119	fe f4 	. . 
	ret c			;411b	d8 	. 
	call 03b1fh		;411c	cd 1f 3b 	. . ; 
	ld (0c0abh),hl		;411f	22 ab c0 	" . . 
	ret			;4122	c9 	. 
l4123h:
	cp b			;4123	b8 	. 
	ret c			;4124	d8 	. 
	jr l410ch		;4125	18 e5 	. . 
l4127h:
	ld a,(0c31ah)		;4127	3a 1a c3 	: . . 
	cp 007h		;412a	fe 07 	. . 
	ret c			;412c	d8 	. 
	ld a,(0c30eh)		;412d	3a 0e c3 	: . . 
	bit 7,(ix+012h)		;4130	dd cb 12 7e 	. . . ~ 
	jr nz,l4149h		;4134	20 13 	  . 
	ld a,(0c30ah)		;4136	3a 0a c3 	: . . 
	or a			;4139	b7 	. 
	ret nz			;413a	c0 	. 
	cp 0a8h		;413b	fe a8 	. . 
	ret c			;413d	d8 	. 
l413eh:
	ld hl,00000h		;413e	21 00 00 	! . . 
	ld (0c311h),hl		;4141	22 11 c3 	" . . 
	res 4,(ix+014h)		;4144	dd cb 14 a6 	. . . . 
	ret			;4148	c9 	. 
l4149h:
	cp 004h		;4149	fe 04 	. . 
	ret nc			;414b	d0 	. 
	set 7,(ix+014h)		;414c	dd cb 14 fe 	. . . . 
	jr l413eh		;4150	18 ec 	. . 
	ld d,(hl)			;4152	56 	V 
	inc hl			;4153	23 	# 
	ld a,(0c304h)		;4154	3a 04 c3 	: . . 
	dec (ix+005h)		;4157	dd 35 05 	. 5 . 
	jr nz,l4163h		;415a	20 07 	  . 
	ld e,(ix+006h)		;415c	dd 5e 06 	. ^ . 
	ld (ix+005h),e		;415f	dd 73 05 	. s . 
	inc a			;4162	3c 	< 
l4163h:
	cp d			;4163	ba 	. 
	jr c,l4167h		;4164	38 01 	8 . 
	xor a			;4166	af 	. 
l4167h:
	ld (0c304h),a		;4167	32 04 c3 	2 . . 
	add a,a			;416a	87 	. 
	ld e,a			;416b	5f 	_ 
	ld d,000h		;416c	16 00 	. . 
	add hl,de			;416e	19 	. 
	ld a,(hl)			;416f	7e 	~ 
	inc hl			;4170	23 	# 
	ld h,(hl)			;4171	66 	f 
	ld l,a			;4172	6f 	o 
sub_4173h:
	ld a,(hl)			;4173	7e 	~ 
	inc hl			;4174	23 	# 
	ld (0c200h),a		;4175	32 00 c2 	2 . . 
	ld (0c307h),hl		;4178	22 07 c3 	" . . 
	ret			;417b	c9 	. 
	ld hl,0c200h		;417c	21 00 c2 	! . . 
	ld a,(hl)			;417f	7e 	~ 
	inc hl			;4180	23 	# 
	cp (hl)			;4181	be 	. 
	ret z			;4182	c8 	. 
	ld (hl),a			;4183	77 	w 
	ld hl,0c225h		;4184	21 25 c2 	! % . 
	ld (hl),001h		;4187	36 01 	6 . 
	add a,a			;4189	87 	. 
	ld c,a			;418a	4f 	O 
	ld b,000h		;418b	06 00 	. . 
	ld de,06000h		;418d	11 00 60 	. . ` 
	rst 8			;4190	cf 	. 
	ld a,084h		;4191	3e 84 	> . 
	ld (0ffffh),a		;4193	32 ff ff 	2 . . 
	ld hl,08000h		;4196	21 00 80 	! . . 
	add hl,bc			;4199	09 	. 
	ld e,(hl)			;419a	5e 	^ 
	inc hl			;419b	23 	# 
	ld d,(hl)			;419c	56 	V 
	ex de,hl			;419d	eb 	. 
	ld c,0beh		;419e	0e be 	. . 
	ld a,(hl)			;41a0	7e 	~ 
	inc hl			;41a1	23 	# 
	ex af,af'			;41a2	08 	. 
	xor a			;41a3	af 	. 
	ex af,af'			;41a4	08 	. 
l41a5h:
	ld e,(hl)			;41a5	5e 	^ 
	inc hl			;41a6	23 	# 
	ld d,(hl)			;41a7	56 	V 
	inc hl			;41a8	23 	# 
	ex de,hl			;41a9	eb 	. 
	ex af,af'			;41aa	08 	. 
	outi		;41ab	ed a3 	. . 
	outi		;41ad	ed a3 	. . 
	outi		;41af	ed a3 	. . 
	out (0beh),a		;41b1	d3 be 	. . 
	outi		;41b3	ed a3 	. . 
	outi		;41b5	ed a3 	. . 
	outi		;41b7	ed a3 	. . 
	out (0beh),a		;41b9	d3 be 	. . 
	outi		;41bb	ed a3 	. . 
	outi		;41bd	ed a3 	. . 
	outi		;41bf	ed a3 	. . 
	out (0beh),a		;41c1	d3 be 	. . 
	outi		;41c3	ed a3 	. . 
	outi		;41c5	ed a3 	. . 
	outi		;41c7	ed a3 	. . 
	out (0beh),a		;41c9	d3 be 	. . 
	outi		;41cb	ed a3 	. . 
	outi		;41cd	ed a3 	. . 
	outi		;41cf	ed a3 	. . 
	out (0beh),a		;41d1	d3 be 	. . 
	outi		;41d3	ed a3 	. . 
	outi		;41d5	ed a3 	. . 
	outi		;41d7	ed a3 	. . 
	out (0beh),a		;41d9	d3 be 	. . 
	outi		;41db	ed a3 	. . 
	outi		;41dd	ed a3 	. . 
	outi		;41df	ed a3 	. . 
	out (0beh),a		;41e1	d3 be 	. . 
	outi		;41e3	ed a3 	. . 
	outi		;41e5	ed a3 	. . 
	outi		;41e7	ed a3 	. . 
	out (0beh),a		;41e9	d3 be 	. . 
	ex af,af'			;41eb	08 	. 
	ex de,hl			;41ec	eb 	. 
	dec a			;41ed	3d 	= 
	jp nz,l41a5h		;41ee	c2 a5 41 	. . A 
	ret			;41f1	c9 	. 
	ld hl,0c202h		;41f2	21 02 c2 	! . . 
	ld a,(hl)			;41f5	7e 	~ 
	ld (hl),000h		;41f6	36 00 	6 . 
	add a,a			;41f8	87 	. 
	ret nc			;41f9	d0 	. 
	ld hl,l4200h		;41fa	21 00 42 	! . B 
	jp 00021h		;41fd	c3 21 00 	. ! . 
l4200h:
	inc d			;4200	14 	. 
	ld b,d			;4201	42 	B 
	add hl,bc			;4202	09 	. 
	ld b,e			;4203	43 	C 
	jr l4249h		;4204	18 43 	. C 
	adc a,h			;4206	8c 	. 
	ld b,d			;4207	42 	B 
	ld a,a			;4208	7f 	 
	ld b,d			;4209	42 	B 
	ld h,a			;420a	67 	g 
	ld c,e			;420b	4b 	K 
	cp h			;420c	bc 	. 
	ld c,e			;420d	4b 	K 
	sub (hl)			;420e	96 	. 
	ld c,e			;420f	4b 	K 
	ld b,(hl)			;4210	46 	F 
	ld b,e			;4211	43 	C 
	sub e			;4212	93 	. 
	ld b,e			;4213	43 	C 
	ld a,085h		;4214	3e 85 	> . 
	ld (0ffffh),a		;4216	32 ff ff 	2 . . 
	ld a,(0c08eh)		;4219	3a 8e c0 	: . . 
	or a			;421c	b7 	. 
	jr z,l4250h		;421d	28 31 	( 1 
	ld a,(0c0beh)		;421f	3a be c0 	: . . 
	and 0f0h		;4222	e6 f0 	. . 
	ld c,a			;4224	4f 	O 
	ld hl,(0c204h)		;4225	2a 04 c2 	* . . 
	ld a,l			;4228	7d 	} 
	rra			;4229	1f 	. 
	rra			;422a	1f 	. 
	and 00fh		;422b	e6 0f 	. . 
	ld d,a			;422d	57 	W 
	ld a,h			;422e	7c 	| 
	rl l		;422f	cb 15 	. . 
	rla			;4231	17 	. 
	add a,a			;4232	87 	. 
	add a,a			;4233	87 	. 
	add a,a			;4234	87 	. 
	add a,a			;4235	87 	. 
	add a,d			;4236	82 	. 
	sub c			;4237	91 	. 
	jr nc,l423ch		;4238	30 02 	0 . 
	sub 020h		;423a	d6 20 	.   
l423ch:
	ld hl,(0c078h)		;423c	2a 78 c0 	* x . 
	ld b,(hl)			;423f	46 	F 
	inc b			;4240	04 	. 
	dec b			;4241	05 	. 
	jr z,l4250h		;4242	28 0c 	( . 
l4244h:
	inc l			;4244	2c 	, 
	inc l			;4245	2c 	, 
	cp (hl)			;4246	be 	. 
	jr z,l424dh		;4247	28 04 	( . 
l4249h:
	djnz l4244h		;4249	10 f9 	. . 
	jr l4250h		;424b	18 03 	. . 
l424dh:
	dec l			;424d	2d 	- 
	ld (hl),001h		;424e	36 01 	6 . 
l4250h:
	ld de,(0c204h)		;4250	ed 5b 04 c2 	. [ . . 
	ld hl,(0c206h)		;4254	2a 06 c2 	* . . 
	ldi		;4257	ed a0 	. . 
	ldi		;4259	ed a0 	. . 
	ldi		;425b	ed a0 	. . 
	ldi		;425d	ed a0 	. . 
	ld bc,0003ch		;425f	01 3c 00 	. < . 
	ex de,hl			;4262	eb 	. 
	add hl,bc			;4263	09 	. 
	ex de,hl			;4264	eb 	. 
	ldi		;4265	ed a0 	. . 
	ldi		;4267	ed a0 	. . 
	ldi		;4269	ed a0 	. . 
	ldi		;426b	ed a0 	. . 
	ld de,(0c204h)		;426d	ed 5b 04 c2 	. [ . . 
	ld hl,(0c206h)		;4271	2a 06 c2 	* . . 
	ld a,d			;4274	7a 	z 
	sub 050h		;4275	d6 50 	. P 
	ld d,a			;4277	57 	W 
	ld bc,00204h		;4278	01 04 02 	. . . 
	call 00160h		;427b	cd 60 01 	. ` . 
	ret			;427e	c9 	. 
	ld de,(0c0fdh)		;427f	ed 5b fd c0 	. [ . . 
	call sub_42c1h		;4283	cd c1 42 	. . B 
	ld hl,08410h		;4286	21 10 84 	! . . 
	jp l4296h		;4289	c3 96 42 	. . B 
	ld de,(0c0fdh)		;428c	ed 5b fd c0 	. [ . . 
	call sub_42c1h		;4290	cd c1 42 	. . B 
	ld hl,08400h		;4293	21 00 84 	! . . 
l4296h:
	ld de,(0c204h)		;4296	ed 5b 04 c2 	. [ . . 
	ldi		;429a	ed a0 	. . 
	ldi		;429c	ed a0 	. . 
	ldi		;429e	ed a0 	. . 
	ldi		;42a0	ed a0 	. . 
	ldi		;42a2	ed a0 	. . 
	ldi		;42a4	ed a0 	. . 
	ldi		;42a6	ed a0 	. . 
	ldi		;42a8	ed a0 	. . 
	ld bc,00038h		;42aa	01 38 00 	. 8 . 
	ex de,hl			;42ad	eb 	. 
	add hl,bc			;42ae	09 	. 
	ex de,hl			;42af	eb 	. 
	ldi		;42b0	ed a0 	. . 
	ldi		;42b2	ed a0 	. . 
	ldi		;42b4	ed a0 	. . 
	ldi		;42b6	ed a0 	. . 
	ldi		;42b8	ed a0 	. . 
	ldi		;42ba	ed a0 	. . 
	ldi		;42bc	ed a0 	. . 
	ldi		;42be	ed a0 	. . 
	ret			;42c0	c9 	. 
sub_42c1h:
	ld a,085h		;42c1	3e 85 	> . 
	ld (0ffffh),a		;42c3	32 ff ff 	2 . . 
	ld a,003h		;42c6	3e 03 	> . 
l42c8h:
	ld hl,0850bh		;42c8	21 0b 85 	! . . 
	ldi		;42cb	ed a0 	. . 
	ldi		;42cd	ed a0 	. . 
	ldi		;42cf	ed a0 	. . 
	ldi		;42d1	ed a0 	. . 
	ldi		;42d3	ed a0 	. . 
	ldi		;42d5	ed a0 	. . 
	ldi		;42d7	ed a0 	. . 
	ldi		;42d9	ed a0 	. . 
	ld hl,00038h		;42db	21 38 00 	! 8 . 
	add hl,de			;42de	19 	. 
	ex de,hl			;42df	eb 	. 
	dec a			;42e0	3d 	= 
	jr nz,l42c8h		;42e1	20 e5 	  . 
	ld (0c204h),de		;42e3	ed 53 04 c2 	. S . . 
	ld de,(0c0fdh)		;42e7	ed 5b fd c0 	. [ . . 
	ld a,d			;42eb	7a 	z 
	sub 050h		;42ec	d6 50 	. P 
	ld d,a			;42ee	57 	W 
	ld b,003h		;42ef	06 03 	. . 
l42f1h:
	push bc			;42f1	c5 	. 
	ld hl,0850bh		;42f2	21 0b 85 	! . . 
	ld b,008h		;42f5	06 08 	. . 
	rst 30h			;42f7	f7 	. 
	ld hl,00040h		;42f8	21 40 00 	! @ . 
	add hl,de			;42fb	19 	. 
	ex de,hl			;42fc	eb 	. 
	pop bc			;42fd	c1 	. 
	djnz l42f1h		;42fe	10 f1 	. . 
	ld hl,08400h		;4300	21 00 84 	! . . 
	ld bc,00208h		;4303	01 08 02 	. . . 
	jp 00160h		;4306	c3 60 01 	. ` . 
	ld hl,(0c0fdh)		;4309	2a fd c0 	* . . 
	inc hl			;430c	23 	# 
	ld e,l			;430d	5d 	] 
	ld a,h			;430e	7c 	| 
	sub 050h		;430f	d6 50 	. P 
	ld d,a			;4311	57 	W 
	ld bc,00204h		;4312	01 04 02 	. . . 
	jp l4328h		;4315	c3 28 43 	. ( C 
	ld hl,(0c0fdh)		;4318	2a fd c0 	* . . 
	inc hl			;431b	23 	# 
	ld de,000c0h		;431c	11 c0 00 	. . . 
	add hl,de			;431f	19 	. 
	ld e,l			;4320	5d 	] 
	ld a,h			;4321	7c 	| 
	sub 050h		;4322	d6 50 	. P 
	ld d,a			;4324	57 	W 
	ld bc,00404h		;4325	01 04 04 	. . . 
l4328h:
	rst 8			;4328	cf 	. 
	push bc			;4329	c5 	. 
	push hl			;432a	e5 	. 
	push de			;432b	d5 	. 
l432ch:
	ld a,(hl)			;432c	7e 	~ 
	or 010h		;432d	f6 10 	. . 
	out (0beh),a		;432f	d3 be 	. . 
	inc hl			;4331	23 	# 
	push af			;4332	f5 	. 
	pop af			;4333	f1 	. 
	in a,(0beh)		;4334	db be 	. . 
	inc hl			;4336	23 	# 
	djnz l432ch		;4337	10 f3 	. . 
	pop hl			;4339	e1 	. 
	ld bc,00040h		;433a	01 40 00 	. @ . 
	add hl,bc			;433d	09 	. 
	ex de,hl			;433e	eb 	. 
	pop hl			;433f	e1 	. 
	add hl,bc			;4340	09 	. 
	pop bc			;4341	c1 	. 
	dec c			;4342	0d 	. 
	jr nz,l4328h		;4343	20 e3 	  . 
	ret			;4345	c9 	. 
	ld a,084h		;4346	3e 84 	> . 
	ld (0ffffh),a		;4348	32 ff ff 	2 . . 
	ld a,(0c218h)		;434b	3a 18 c2 	: . . 
	ld b,a			;434e	47 	G 
	and 007h		;434f	e6 07 	. . 
	add a,a			;4351	87 	. 
	add a,a			;4352	87 	. 
	ld l,a			;4353	6f 	o 
	ld a,b			;4354	78 	x 
	and 0f8h		;4355	e6 f8 	. . 
	rra			;4357	1f 	. 
	rra			;4358	1f 	. 
	ld e,a			;4359	5f 	_ 
	ld d,000h		;435a	16 00 	. . 
	ld h,d			;435c	62 	b 
	ld (0c219h),hl		;435d	22 19 c2 	" . . 
	ld hl,0aac2h		;4360	21 c2 aa 	! . . 
	add hl,de			;4363	19 	. 
	ld a,(hl)			;4364	7e 	~ 
	inc hl			;4365	23 	# 
	ld h,(hl)			;4366	66 	f 
	ld l,a			;4367	6f 	o 
	ld a,(hl)			;4368	7e 	~ 
	ld de,(0c21bh)		;4369	ed 5b 1b c2 	. [ . . 
l436dh:
	ex af,af'			;436d	08 	. 
	inc hl			;436e	23 	# 
	ld c,(hl)			;436f	4e 	N 
	inc hl			;4370	23 	# 
	push hl			;4371	e5 	. 
	ld b,(hl)			;4372	46 	F 
	ld hl,(0c219h)		;4373	2a 19 c2 	* . . 
	add hl,bc			;4376	09 	. 
	ex de,hl			;4377	eb 	. 
	ld b,004h		;4378	06 04 	. . 
	rst 30h			;437a	f7 	. 
	ex de,hl			;437b	eb 	. 
	pop hl			;437c	e1 	. 
	ex af,af'			;437d	08 	. 
	dec a			;437e	3d 	= 
	jr nz,l436dh		;437f	20 ec 	  . 
	ld (0c21bh),de		;4381	ed 53 1b c2 	. S . . 
	ld hl,0c218h		;4385	21 18 c2 	! . . 
	inc (hl)			;4388	34 	4 
	ld a,(hl)			;4389	7e 	~ 
	cp 030h		;438a	fe 30 	. 0 
	ret z			;438c	c8 	. 
	ld a,088h		;438d	3e 88 	> . 
	ld (0c202h),a		;438f	32 02 c2 	2 . . 
	ret			;4392	c9 	. 
	ld a,085h		;4393	3e 85 	> . 
	ld (0ffffh),a		;4395	32 ff ff 	2 . . 
	ld hl,08420h		;4398	21 20 84 	!   . 
	ld de,07bb4h		;439b	11 b4 7b 	. . { 
	ld bc,00608h		;439e	01 08 06 	. . . 
	call 00160h		;43a1	cd 60 01 	. ` . 
	ld hl,08420h		;43a4	21 20 84 	!   . 
	ld de,0cbb4h		;43a7	11 b4 cb 	. . . 
	ld a,006h		;43aa	3e 06 	> . 
l43ach:
	ld bc,00008h		;43ac	01 08 00 	. . . 
	ldir		;43af	ed b0 	. . 
	ex de,hl			;43b1	eb 	. 
	ld bc,00038h		;43b2	01 38 00 	. 8 . 
	add hl,bc			;43b5	09 	. 
	ex de,hl			;43b6	eb 	. 
	dec a			;43b7	3d 	= 
	jr nz,l43ach		;43b8	20 f2 	  . 
	ret			;43ba	c9 	. 
	ld a,082h		;43bb	3e 82 	> . 
	ld (0c110h),a		;43bd	32 10 c1 	2 . . 
	ld (ix+01ch),004h		;43c0	dd 36 1c 04 	. 6 . . 
	ld (ix+01ah),003h		;43c4	dd 36 1a 03 	. 6 . . 
	ld (ix+014h),003h		;43c8	dd 36 14 03 	. 6 . . 
	ld hl,0fe00h		;43cc	21 00 fe 	! . . 
	ld (0c311h),hl		;43cf	22 11 c3 	" . . 
	ld hl,00000h		;43d2	21 00 00 	! . . 
	ld (0c30fh),hl		;43d5	22 0f c3 	" . . 
	ld hl,090bch		;43d8	21 bc 90 	! . . 
	call sub_4173h		;43db	cd 73 41 	. s A 
	ld (ix+01fh),018h		;43de	dd 36 1f 18 	. 6 . . 
	ld (ix+01dh),008h		;43e2	dd 36 1d 08 	. 6 . . 
	xor a			;43e6	af 	. 
	ld (0c054h),a		;43e7	32 54 c0 	2 T . 
	ld iy,0c360h		;43ea	fd 21 60 c3 	. ! ` . 
	ld a,(0c30ch)		;43ee	3a 0c c3 	: . . 
	add a,008h		;43f1	c6 08 	. . 
	ld (0c36ch),a		;43f3	32 6c c3 	2 l . 
	ld a,(0c30eh)		;43f6	3a 0e c3 	: . . 
	add a,010h		;43f9	c6 10 	. . 
	ld (0c36eh),a		;43fb	32 6e c3 	2 n . 
	ld (iy+000h),003h		;43fe	fd 36 00 03 	. 6 . . 
	ld (iy+019h),014h		;4402	fd 36 19 14 	. 6 . . 
	ld (iy+005h),004h		;4406	fd 36 05 04 	. 6 . . 
	ld (iy+006h),004h		;440a	fd 36 06 04 	. 6 . . 
	ret			;440e	c9 	. 
	ld hl,08372h		;440f	21 72 83 	! r . 
	call 027d6h		;4412	cd d6 27 	. . ' 
	dec (ix+019h)		;4415	dd 35 19 	. 5 . 
	jp z,02752h		;4418	ca 52 27 	. R ' 
	ret			;441b	c9 	. 
	ld a,0a8h		;441c	3e a8 	> . 
	ld (0c110h),a		;441e	32 10 c1 	2 . . 
	ld hl,0c31ch		;4421	21 1c c3 	! . . 
	ld a,(hl)			;4424	7e 	~ 
	or 009h		;4425	f6 09 	. . 
	ld (hl),a			;4427	77 	w 
	ld a,(0c30eh)		;4428	3a 0e c3 	: . . 
	add a,010h		;442b	c6 10 	. . 
	ld (0c32eh),a		;442d	32 2e c3 	2 . . 
	ld a,(0c30ch)		;4430	3a 0c c3 	: . . 
	bit 0,(ix+014h)		;4433	dd cb 14 46 	. . . F 
	ld hl,0fc00h		;4437	21 00 fc 	! . . 
	jr z,l4442h		;443a	28 06 	( . 
	add a,010h		;443c	c6 10 	. . 
	ret c			;443e	d8 	. 
	ld hl,00400h		;443f	21 00 04 	! . . 
l4442h:
	ld (0c32ch),a		;4442	32 2c c3 	2 , . 
	ld (0c32fh),hl		;4445	22 2f c3 	" / . 
	ld a,002h		;4448	3e 02 	> . 
	ld (0c320h),a		;444a	32 20 c3 	2   . 
	ld hl,084e8h		;444d	21 e8 84 	! . . 
	ld (0c327h),hl		;4450	22 27 c3 	" ' . 
	ld a,014h		;4453	3e 14 	> . 
	ld (0c339h),a		;4455	32 39 c3 	2 9 . 
	ret			;4458	c9 	. 
	bit 7,(ix+001h)		;4459	dd cb 01 7e 	. . . ~ 
	jr nz,l4483h		;445d	20 24 	  $ 
	ld a,(0c329h)		;445f	3a 29 c3 	: ) . 
	or (ix+00ah)		;4462	dd b6 0a 	. . . 
	jr nz,l447fh		;4465	20 18 	  . 
	ld a,(0c32ch)		;4467	3a 2c c3 	: , . 
	ld de,00404h		;446a	11 04 04 	. . . 
	call sub_7c18h		;446d	cd 18 7c 	. . | 
	rlca			;4470	07 	. 
	jr nc,l447fh		;4471	30 0c 	0 . 
	rlca			;4473	07 	. 
	jr nc,l4483h		;4474	30 0d 	0 . 
	call sub_4541h		;4476	cd 41 45 	. A E 
	ld a,(0c202h)		;4479	3a 02 c2 	: . . 
	or a			;447c	b7 	. 
	jr nz,l4483h		;447d	20 04 	  . 
l447fh:
	dec (ix+019h)		;447f	dd 35 19 	. 5 . 
	ret nz			;4482	c0 	. 
l4483h:
	ld (ix+019h),005h		;4483	dd 36 19 05 	. 6 . . 
	ld (ix+000h),004h		;4487	dd 36 00 04 	. 6 . . 
	ld a,0a9h		;448b	3e a9 	> . 
	ld (0c110h),a		;448d	32 10 c1 	2 . . 
	ld hl,00000h		;4490	21 00 00 	! . . 
	ld (0c32fh),hl		;4493	22 2f c3 	" / . 
	ld hl,08380h		;4496	21 80 83 	! . . 
	ld (0c327h),hl		;4499	22 27 c3 	" ' . 
	ret			;449c	c9 	. 
	dec (ix+019h)		;449d	dd 35 19 	. 5 . 
	ret nz			;44a0	c0 	. 
	ld hl,0c31ch		;44a1	21 1c c3 	! . . 
	ld a,(hl)			;44a4	7e 	~ 
	and 0f6h		;44a5	e6 f6 	. . 
	ld (hl),a			;44a7	77 	w 
	jp 02752h		;44a8	c3 52 27 	. R ' 
	bit 0,(ix+01ch)		;44ab	dd cb 1c 46 	. . . F 
	ret nz			;44af	c0 	. 
	ld hl,0c31ch		;44b0	21 1c c3 	! . . 
	ld a,(hl)			;44b3	7e 	~ 
	or 009h		;44b4	f6 09 	. . 
	ld (hl),a			;44b6	77 	w 
	ld (ix+019h),00ah		;44b7	dd 36 19 0a 	. 6 . . 
	bit 0,(ix+014h)		;44bb	dd cb 14 46 	. . . F 
	jr nz,l44c9h		;44bf	20 08 	  . 
	ld hl,08e49h		;44c1	21 49 8e 	! I . 
	ld de,00af9h		;44c4	11 f9 0a 	. . . 
	jr l4527h		;44c7	18 5e 	. ^ 
l44c9h:
	ld hl,08e5eh		;44c9	21 5e 8e 	! ^ . 
	ld de,00a1fh		;44cc	11 1f 0a 	. . . 
	jr l4527h		;44cf	18 56 	. V 
	bit 0,(ix+01ch)		;44d1	dd cb 1c 46 	. . . F 
	ret nz			;44d5	c0 	. 
	ld a,(0c30ah)		;44d6	3a 0a c3 	: . . 
	or a			;44d9	b7 	. 
	ret nz			;44da	c0 	. 
	ld a,(0c01fh)		;44db	3a 1f c0 	: . . 
	and 00fh		;44de	e6 0f 	. . 
	cp 005h		;44e0	fe 05 	. . 
	ret z			;44e2	c8 	. 
	ld a,(0c054h)		;44e3	3a 54 c0 	: T . 
	ld hl,l44ech		;44e6	21 ec 44 	! . D 
	jp 00020h		;44e9	c3 20 00 	.   . 
l44ech:
	ex af,af'			;44ec	08 	. 
	ld b,l			;44ed	45 	E 
	ex af,af'			;44ee	08 	. 
	ld b,l			;44ef	45 	E 
	ex af,af'			;44f0	08 	. 
	ld b,l			;44f1	45 	E 
	ld a,(bc)			;44f2	0a 	. 
	ld b,(hl)			;44f3	46 	F 
	rla			;44f4	17 	. 
	ld b,(hl)			;44f5	46 	F 
	adc a,(hl)			;44f6	8e 	. 
	ld c,b			;44f7	48 	H 
	ex af,af'			;44f8	08 	. 
	ld b,l			;44f9	45 	E 
	ld e,b			;44fa	58 	X 
	ld b,(hl)			;44fb	46 	F 
	inc e			;44fc	1c 	. 
	ld b,h			;44fd	44 	D 
	inc e			;44fe	1c 	. 
	ld b,h			;44ff	44 	D 
	ex af,af'			;4500	08 	. 
	ld b,l			;4501	45 	E 
	ex af,af'			;4502	08 	. 
	ld b,l			;4503	45 	E 
	ex af,af'			;4504	08 	. 
	ld b,l			;4505	45 	E 
	ex af,af'			;4506	08 	. 
	ld b,l			;4507	45 	E 
	ld hl,0c31ch		;4508	21 1c c3 	! . . 
	ld a,(hl)			;450b	7e 	~ 
	or 009h		;450c	f6 09 	. . 
	ld (hl),a			;450e	77 	w 
	ld (ix+019h),00ah		;450f	dd 36 19 0a 	. 6 . . 
	bit 0,(ix+014h)		;4513	dd cb 14 46 	. . . F 
	jr nz,l4521h		;4517	20 08 	  . 
	ld hl,08dd1h		;4519	21 d1 8d 	! . . 
	ld de,00cf9h		;451c	11 f9 0c 	. . . 
	jr l4527h		;451f	18 06 	. . 
l4521h:
	ld hl,08de9h		;4521	21 e9 8d 	! . . 
	ld de,00c17h		;4524	11 17 0c 	. . . 
l4527h:
	ld a,08ah		;4527	3e 8a 	> . 
	ld (0c110h),a		;4529	32 10 c1 	2 . . 
	call sub_4173h		;452c	cd 73 41 	. s A 
	ld a,(0c30ch)		;452f	3a 0c c3 	: . . 
	add a,e			;4532	83 	. 
	cp 0f8h		;4533	fe f8 	. . 
	ret nc			;4535	d0 	. 
	cp 00ah		;4536	fe 0a 	. . 
	ret c			;4538	d8 	. 
	call sub_7c1ch		;4539	cd 1c 7c 	. . | 
	and 0c0h		;453c	e6 c0 	. . 
	cp 0c0h		;453e	fe c0 	. . 
	ret nz			;4540	c0 	. 
sub_4541h:
	ld a,l			;4541	7d 	} 
	and 0bch		;4542	e6 bc 	. . 
	ld l,a			;4544	6f 	o 
	ld (0c204h),hl		;4545	22 04 c2 	" . . 
	ld a,(hl)			;4548	7e 	~ 
	exx			;4549	d9 	. 
	ld d,a			;454a	57 	W 
	exx			;454b	d9 	. 
	ld e,c			;454c	59 	Y 
	ld d,b			;454d	50 	P 
	inc hl			;454e	23 	# 
	ld b,(hl)			;454f	46 	F 
	ld c,001h		;4550	0e 01 	. . 
	cp 00dh		;4552	fe 0d 	. . 
	jr c,l455ch		;4554	38 06 	8 . 
	inc c			;4556	0c 	. 
	cp 07ch		;4557	fe 7c 	. | 
	jr c,l455ch		;4559	38 01 	8 . 
	inc c			;455b	0c 	. 
l455ch:
	ld a,e			;455c	7b 	{ 
	ld hl,(0c0afh)		;455d	2a af c0 	* . . 
	and 0f0h		;4560	e6 f0 	. . 
	add a,h			;4562	84 	. 
	ld e,a			;4563	5f 	_ 
	ld a,d			;4564	7a 	z 
	ld hl,(0c0bdh)		;4565	2a bd c0 	* . . 
	and 0f0h		;4568	e6 f0 	. . 
	sub h			;456a	94 	. 
	jr nc,l456fh		;456b	30 02 	0 . 
	sub 020h		;456d	d6 20 	.   
l456fh:
	cp 0e0h		;456f	fe e0 	. . 
	jr c,l4575h		;4571	38 02 	8 . 
	sub 020h		;4573	d6 20 	.   
l4575h:
	ld d,a			;4575	57 	W 
	ld a,c			;4576	79 	y 
	call sub_5bcah		;4577	cd ca 5b 	. . [ 
	bit 5,b		;457a	cb 68 	. h 
	jr z,l4587h		;457c	28 09 	( . 
	exx			;457e	d9 	. 
	ld a,d			;457f	7a 	z 
	exx			;4580	d9 	. 
	ld c,e			;4581	4b 	K 
	ld b,d			;4582	42 	B 
	ld hl,045a0h		;4583	21 a0 45 	! . E 
	rst 20h			;4586	e7 	. 
l4587h:
	ld a,(0c31ah)		;4587	3a 1a c3 	: . . 
	cp 005h		;458a	fe 05 	. . 
	ld hl,08503h		;458c	21 03 85 	! . . 
	jr nz,l4594h		;458f	20 03 	  . 
	ld hl,0850bh		;4591	21 0b 85 	! . . 
l4594h:
	ld a,085h		;4594	3e 85 	> . 
	ld (0c203h),a		;4596	32 03 c2 	2 . . 
	ld (0c206h),hl		;4599	22 06 c2 	" . . 
	ld a,080h		;459c	3e 80 	> . 
	ld (0c202h),a		;459e	32 02 c2 	2 . . 
	ret			;45a1	c9 	. 
	cp d			;45a2	ba 	. 
	ld b,l			;45a3	45 	E 
	cp d			;45a4	ba 	. 
	ld b,l			;45a5	45 	E 
	cp d			;45a6	ba 	. 
	ld b,l			;45a7	45 	E 
	cp d			;45a8	ba 	. 
	ld b,l			;45a9	45 	E 
	sbc a,045h		;45aa	de 45 	. E 
	sbc a,045h		;45ac	de 45 	. E 
	sbc a,045h		;45ae	de 45 	. E 
	sbc a,045h		;45b0	de 45 	. E 
	ret p			;45b2	f0 	. 
	ld b,l			;45b3	45 	E 
	ret p			;45b4	f0 	. 
	ld b,l			;45b5	45 	E 
	ret p			;45b6	f0 	. 
	ld b,l			;45b7	45 	E 
	ret p			;45b8	f0 	. 
	ld b,l			;45b9	45 	E 
	ld a,(0c054h)		;45ba	3a 54 c0 	: T . 
	ld e,a			;45bd	5f 	_ 
	ld d,000h		;45be	16 00 	. . 
	ld hl,l45d0h		;45c0	21 d0 45 	! . E 
	add hl,de			;45c3	19 	. 
	ld a,(hl)			;45c4	7e 	~ 
	or a			;45c5	b7 	. 
	ret nz			;45c6	c0 	. 
	set 4,(ix+01ch)		;45c7	dd cb 1c e6 	. . . . 
	ld (ix+018h),03ch		;45cb	dd 36 18 3c 	. 6 . < 
	ret			;45cf	c9 	. 
l45d0h:
	nop			;45d0	00 	. 
	nop			;45d1	00 	. 
	nop			;45d2	00 	. 
	ld bc,00101h		;45d3	01 01 01 	. . . 
	nop			;45d6	00 	. 
	ld bc,00101h		;45d7	01 01 01 	. . . 
	nop			;45da	00 	. 
	nop			;45db	00 	. 
	nop			;45dc	00 	. 
	nop			;45dd	00 	. 
	ld e,c			;45de	59 	Y 
	ld d,b			;45df	50 	P 
	ld hl,0c07ch		;45e0	21 7c c0 	! | . 
	ld a,(hl)			;45e3	7e 	~ 
	inc (hl)			;45e4	34 	4 
	ld hl,00d9ch		;45e5	21 9c 0d 	! . . 
	ld c,a			;45e8	4f 	O 
	ld b,000h		;45e9	06 00 	. . 
	add hl,bc			;45eb	09 	. 
	ld c,(hl)			;45ec	4e 	N 
	jp l5b59h		;45ed	c3 59 5b 	. Y [ 
	ld e,c			;45f0	59 	Y 
	ld d,b			;45f1	50 	P 
	ld c,03ch		;45f2	0e 3c 	. < 
	jp l5b59h		;45f4	c3 59 5b 	. Y [ 
	ld hl,0c31ch		;45f7	21 1c c3 	! . . 
	ld a,(hl)			;45fa	7e 	~ 
	and 002h		;45fb	e6 02 	. . 
	xor 002h		;45fd	ee 02 	. . 
	ret z			;45ff	c8 	. 
	dec (ix+019h)		;4600	dd 35 19 	. 5 . 
	ret nz			;4603	c0 	. 
	ld a,(hl)			;4604	7e 	~ 
	and 0f6h		;4605	e6 f6 	. . 
	ld (hl),a			;4607	77 	w 
	cp a			;4608	bf 	. 
	ret			;4609	c9 	. 
	ld iy,0c360h		;460a	fd 21 60 c3 	. ! ` . 
	ld (iy+000h),005h		;460e	fd 36 00 05 	. 6 . . 
	ld hl,080e6h		;4612	21 e6 80 	! . . 
	jr l4622h		;4615	18 0b 	. . 
	ld iy,0c360h		;4617	fd 21 60 c3 	. ! ` . 
	ld (iy+000h),007h		;461b	fd 36 00 07 	. 6 . . 
	ld hl,080f4h		;461f	21 f4 80 	! . . 
l4622h:
	ld a,090h		;4622	3e 90 	> . 
	ld (0c110h),a		;4624	32 10 c1 	2 . . 
	ld (0c367h),hl		;4627	22 67 c3 	" g . 
	ld hl,0c31ch		;462a	21 1c c3 	! . . 
	ld a,(hl)			;462d	7e 	~ 
	or 00bh		;462e	f6 0b 	. . 
	ld (hl),a			;4630	77 	w 
	ld a,(0c30ch)		;4631	3a 0c c3 	: . . 
	ld (0c36ch),a		;4634	32 6c c3 	2 l . 
	ld a,(0c30eh)		;4637	3a 0e c3 	: . . 
	add a,004h		;463a	c6 04 	. . 
	ld (0c36eh),a		;463c	32 6e c3 	2 n . 
	ld a,(0c314h)		;463f	3a 14 c3 	: . . 
	and 002h		;4642	e6 02 	. . 
	ld (0c374h),a		;4644	32 74 c3 	2 t . 
	ld hl,0ff00h		;4647	21 00 ff 	! . . 
	jr z,l464fh		;464a	28 03 	( . 
	ld hl,00100h		;464c	21 00 01 	! . . 
l464fh:
	ld (0c36fh),hl		;464f	22 6f c3 	" o . 
	ld hl,0fe00h		;4652	21 00 fe 	! . . 
	ld (0c371h),hl		;4655	22 71 c3 	" q . 
	ret			;4658	c9 	. 
	ld a,(0c369h)		;4659	3a 69 c3 	: i . 
	or (ix+00ah)		;465c	dd b6 0a 	. . . 
	jp nz,l4823h		;465f	c2 23 48 	. # H 
	ld de,01004h		;4662	11 04 10 	. . . 
	call sub_490dh		;4665	cd 0d 49 	. . I 
	bit 6,(ix+014h)		;4668	dd cb 14 76 	. . . v 
	jr nz,l4685h		;466c	20 17 	  . 
	ld de,00642h		;466e	11 42 06 	. B . 
	bit 1,(ix+014h)		;4671	dd cb 14 4e 	. . . N 
	jr z,l4679h		;4675	28 02 	( . 
	ld e,00eh		;4677	1e 0e 	. . 
l4679h:
	call sub_7c18h		;4679	cd 18 7c 	. . | 
	rlca			;467c	07 	. 
	ret nc			;467d	d0 	. 
	ld hl,00000h		;467e	21 00 00 	! . . 
	ld (0c36fh),hl		;4681	22 6f c3 	" o . 
	ret			;4684	c9 	. 
l4685h:
	ld (ix+000h),006h		;4685	dd 36 00 06 	. 6 . . 
	ld (ix+01eh),008h		;4689	dd 36 1e 08 	. 6 . . 
	ld (ix+01fh),00ah		;468d	dd 36 1f 0a 	. 6 . . 
	ret			;4691	c9 	. 
	ld a,(0c369h)		;4692	3a 69 c3 	: i . 
	or (ix+00ah)		;4695	dd b6 0a 	. . . 
	jp nz,l4823h		;4698	c2 23 48 	. # H 
	ld hl,00000h		;469b	21 00 00 	! . . 
	ld (0c36fh),hl		;469e	22 6f c3 	" o . 
	ld (0c371h),hl		;46a1	22 71 c3 	" q . 
	dec (ix+01fh)		;46a4	dd 35 1f 	. 5 . 
	ret nz			;46a7	c0 	. 
	ld iy,0c320h		;46a8	fd 21 20 c3 	. !   . 
	ld a,(iy+000h)		;46ac	fd 7e 00 	. ~ . 
	or a			;46af	b7 	. 
	jr z,l46c1h		;46b0	28 0f 	( . 
	ld iy,0c340h		;46b2	fd 21 40 c3 	. ! @ . 
	ld a,(iy+000h)		;46b6	fd 7e 00 	. ~ . 
	or a			;46b9	b7 	. 
	jr z,l46c1h		;46ba	28 05 	( . 
	ld (ix+01fh),001h		;46bc	dd 36 1f 01 	. 6 . . 
	ret			;46c0	c9 	. 
l46c1h:
	ld a,0a5h		;46c1	3e a5 	> . 
	ld (0c110h),a		;46c3	32 10 c1 	2 . . 
	ld (ix+01fh),01eh		;46c6	dd 36 1f 1e 	. 6 . . 
	ld (iy+000h),009h		;46ca	fd 36 00 09 	. 6 . . 
	ld a,(0c36ch)		;46ce	3a 6c c3 	: l . 
	ld (iy+00ch),a		;46d1	fd 77 0c 	. w . 
	ld a,(0c36eh)		;46d4	3a 6e c3 	: n . 
	ld (iy+00eh),a		;46d7	fd 77 0e 	. w . 
	ld a,(0c374h)		;46da	3a 74 c3 	: t . 
	and 002h		;46dd	e6 02 	. . 
	ld (iy+014h),a		;46df	fd 77 14 	. w . 
	dec (ix+01eh)		;46e2	dd 35 1e 	. 5 . 
	jp z,02752h		;46e5	ca 52 27 	. R ' 
	ret			;46e8	c9 	. 
	ld a,(0c369h)		;46e9	3a 69 c3 	: i . 
	or (ix+00ah)		;46ec	dd b6 0a 	. . . 
	jp nz,l4823h		;46ef	c2 23 48 	. # H 
	ld de,01004h		;46f2	11 04 10 	. . . 
	call sub_490dh		;46f5	cd 0d 49 	. . I 
	bit 6,(ix+014h)		;46f8	dd cb 14 76 	. . . v 
	jr nz,l4715h		;46fc	20 17 	  . 
	ld de,00642h		;46fe	11 42 06 	. B . 
	bit 1,(ix+014h)		;4701	dd cb 14 4e 	. . . N 
	jr z,l4709h		;4705	28 02 	( . 
	ld e,00eh		;4707	1e 0e 	. . 
l4709h:
	call sub_7c18h		;4709	cd 18 7c 	. . | 
	rlca			;470c	07 	. 
	ret nc			;470d	d0 	. 
	ld hl,00000h		;470e	21 00 00 	! . . 
	ld (0c36fh),hl		;4711	22 6f c3 	" o . 
	ret			;4714	c9 	. 
l4715h:
	res 1,(ix+001h)		;4715	dd cb 01 8e 	. . . . 
	ld a,0abh		;4719	3e ab 	> . 
	ld (0c110h),a		;471b	32 10 c1 	2 . . 
	ld (ix+000h),008h		;471e	dd 36 00 08 	. 6 . . 
	ld hl,08cd2h		;4722	21 d2 8c 	! . . 
	ld (0c367h),hl		;4725	22 67 c3 	" g . 
	ld hl,004b0h		;4728	21 b0 04 	! . . 
	ld (0c37bh),hl		;472b	22 7b c3 	" { . 
	ld hl,00000h		;472e	21 00 00 	! . . 
	ld (0c36fh),hl		;4731	22 6f c3 	" o . 
	ld (0c371h),hl		;4734	22 71 c3 	" q . 
	ret			;4737	c9 	. 
	bit 0,(ix+001h)		;4738	dd cb 01 46 	. . . F 
	jp z,l47bah		;473c	ca ba 47 	. . G 
	bit 7,(ix+001h)		;473f	dd cb 01 7e 	. . . ~ 
	jp nz,l481dh		;4743	c2 1d 48 	. . H 
	ld (ix+011h),000h		;4746	dd 36 11 00 	. 6 . . 
	ld (ix+012h),000h		;474a	dd 36 12 00 	. 6 . . 
	call sub_480fh		;474e	cd 0f 48 	. . H 
	ret nc			;4751	d0 	. 
	bit 0,(ix+01dh)		;4752	dd cb 1d 46 	. . . F 
	jr z,l4784h		;4756	28 2c 	( , 
	ld l,(ix+01bh)		;4758	dd 6e 1b 	. n . 
	ld h,(ix+01ch)		;475b	dd 66 1c 	. f . 
	ld a,(hl)			;475e	7e 	~ 
	or a			;475f	b7 	. 
	jr z,l4780h		;4760	28 1e 	( . 
	push hl			;4762	e5 	. 
	pop iy		;4763	fd e1 	. . 
	ld a,(iy+00ch)		;4765	fd 7e 0c 	. ~ . 
	bit 1,(ix+014h)		;4768	dd cb 14 4e 	. . . N 
	jr nz,l4777h		;476c	20 09 	  . 
	sub (ix+00ch)		;476e	dd 96 0c 	. . . 
	cp 0d0h		;4771	fe d0 	. . 
	jr nc,l47a8h		;4773	30 33 	0 3 
	jr l4784h		;4775	18 0d 	. . 
l4777h:
	sub (ix+00ch)		;4777	dd 96 0c 	. . . 
	cp 010h		;477a	fe 10 	. . 
	jr c,l47a8h		;477c	38 2a 	8 * 
	jr l4784h		;477e	18 04 	. . 
l4780h:
	res 0,(ix+01dh)		;4780	dd cb 1d 86 	. . . . 
l4784h:
	ld de,01004h		;4784	11 04 10 	. . . 
	call sub_7c18h		;4787	cd 18 7c 	. . | 
	rlca			;478a	07 	. 
	jr nc,l479fh		;478b	30 12 	0 . 
	bit 1,(ix+014h)		;478d	dd cb 14 4e 	. . . N 
	jr nz,l4799h		;4791	20 06 	  . 
l4793h:
	ld hl,08522h		;4793	21 22 85 	! " . 
	jp 027d6h		;4796	c3 d6 27 	. . ' 
l4799h:
	ld hl,08537h		;4799	21 37 85 	! 7 . 
	jp 027d6h		;479c	c3 d6 27 	. . ' 
l479fh:
	ld (ix+000h),00ah		;479f	dd 36 00 0a 	. 6 . . 
	set 7,(ix+014h)		;47a3	dd cb 14 fe 	. . . . 
	ret			;47a7	c9 	. 
l47a8h:
	ld a,0a7h		;47a8	3e a7 	> . 
	ld (0c110h),a		;47aa	32 10 c1 	2 . . 
	res 0,(ix+01dh)		;47ad	dd cb 1d 86 	. . . . 
	ld (ix+000h),00ah		;47b1	dd 36 00 0a 	. 6 . . 
	ld (ix+012h),0fdh		;47b5	dd 36 12 fd 	. 6 . . 
	ret			;47b9	c9 	. 
l47bah:
	set 0,(ix+001h)		;47ba	dd cb 01 c6 	. . . . 
	ld (ix+006h),005h		;47be	dd 36 06 05 	. 6 . . 
	call sub_4800h		;47c2	cd 00 48 	. . H 
	jr z,l47f0h		;47c5	28 29 	( ) 
	push hl			;47c7	e5 	. 
	pop iy		;47c8	fd e1 	. . 
	set 0,(ix+01dh)		;47ca	dd cb 1d c6 	. . . . 
	ld (ix+01bh),l		;47ce	dd 75 1b 	. u . 
	ld (ix+01ch),h		;47d1	dd 74 1c 	. t . 
	ld a,(iy+00ch)		;47d4	fd 7e 0c 	. ~ . 
	sub (ix+00ch)		;47d7	dd 96 0c 	. . . 
	jr c,l47e6h		;47da	38 0a 	8 . 
	set 1,(ix+014h)		;47dc	dd cb 14 ce 	. . . . 
	ld (ix+010h),002h		;47e0	dd 36 10 02 	. 6 . . 
	jr l4793h		;47e4	18 ad 	. . 
l47e6h:
	res 1,(ix+014h)		;47e6	dd cb 14 8e 	. . . . 
	ld (ix+010h),0feh		;47ea	dd 36 10 fe 	. 6 . . 
	jr l4799h		;47ee	18 a9 	. . 
l47f0h:
	bit 1,(ix+014h)		;47f0	dd cb 14 4e 	. . . N 
	ld (ix+010h),002h		;47f4	dd 36 10 02 	. 6 . . 
	jr nz,l4799h		;47f8	20 9f 	  . 
	ld (ix+010h),0feh		;47fa	dd 36 10 fe 	. 6 . . 
	jr l4793h		;47fe	18 93 	. . 
sub_4800h:
	ld hl,0c3c0h		;4800	21 c0 c3 	! . . 
	ld de,00020h		;4803	11 20 00 	.   . 
	ld b,00ah		;4806	06 0a 	. . 
l4808h:
	ld a,(hl)			;4808	7e 	~ 
	or a			;4809	b7 	. 
	ret nz			;480a	c0 	. 
	add hl,de			;480b	19 	. 
	djnz l4808h		;480c	10 fa 	. . 
	ret			;480e	c9 	. 
sub_480fh:
	ld a,(ix+009h)		;480f	dd 7e 09 	. ~ . 
	or (ix+00ah)		;4812	dd b6 0a 	. . . 
	jr nz,l481dh		;4815	20 06 	  . 
	ld a,(ix+00eh)		;4817	dd 7e 0e 	. ~ . 
	cp 0ach		;481a	fe ac 	. . 
	ret c			;481c	d8 	. 
l481dh:
	ld a,(0c360h)		;481d	3a 60 c3 	: ` . 
	or a			;4820	b7 	. 
	jr nz,l482eh		;4821	20 0b 	  . 
l4823h:
	ld hl,0c31ch		;4823	21 1c c3 	! . . 
	ld a,(hl)			;4826	7e 	~ 
	and 0f4h		;4827	e6 f4 	. . 
	ld (hl),a			;4829	77 	w 
	xor a			;482a	af 	. 
	ld (0c054h),a		;482b	32 54 c0 	2 T . 
l482eh:
	call 02752h		;482e	cd 52 27 	. R ' 
	or a			;4831	b7 	. 
	ret			;4832	c9 	. 
	bit 7,(ix+001h)		;4833	dd cb 01 7e 	. . . ~ 
	jr nz,l481dh		;4837	20 e4 	  . 
	call sub_480fh		;4839	cd 0f 48 	. . H 
	ret nc			;483c	d0 	. 
	ld de,01004h		;483d	11 04 10 	. . . 
	call sub_490dh		;4840	cd 0d 49 	. . I 
	bit 6,(ix+014h)		;4843	dd cb 14 76 	. . . v 
	ret z			;4847	c8 	. 
	ld a,(ix+014h)		;4848	dd 7e 14 	. ~ . 
	and 03fh		;484b	e6 3f 	. ? 
	ld (ix+014h),a		;484d	dd 77 14 	. w . 
	ld (ix+000h),009h		;4850	dd 36 00 09 	. 6 . . 
	ret			;4854	c9 	. 
	ld hl,(0c37bh)		;4855	2a 7b c3 	* { . 
	dec hl			;4858	2b 	+ 
	ld a,l			;4859	7d 	} 
	or h			;485a	b4 	. 
	ld (0c37bh),hl		;485b	22 7b c3 	" { . 
	jr z,l487dh		;485e	28 1d 	( . 
	ld a,(0c30ch)		;4860	3a 0c c3 	: . . 
	sub 004h		;4863	d6 04 	. . 
	ld (0c36ch),a		;4865	32 6c c3 	2 l . 
	ld a,(0c309h)		;4868	3a 09 c3 	: . . 
	ld (0c369h),a		;486b	32 69 c3 	2 i . 
	ld a,(0c30eh)		;486e	3a 0e c3 	: . . 
	sub 003h		;4871	d6 03 	. . 
	ld (0c36eh),a		;4873	32 6e c3 	2 n . 
	ld a,(0c30ah)		;4876	3a 0a c3 	: . . 
	ld (0c36ah),a		;4879	32 6a c3 	2 j . 
	ret			;487c	c9 	. 
l487dh:
	call 099d3h		;487d	cd d3 99 	. . . 
	ld hl,0c31ch		;4880	21 1c c3 	! . . 
	ld a,(hl)			;4883	7e 	~ 
	and 0f4h		;4884	e6 f4 	. . 
	ld (hl),a			;4886	77 	w 
	xor a			;4887	af 	. 
	ld (0c054h),a		;4888	32 54 c0 	2 T . 
	jp 02752h		;488b	c3 52 27 	. R ' 
	bit 0,(ix+014h)		;488e	dd cb 14 46 	. . . F 
	ld a,(0c30ch)		;4892	3a 0c c3 	: . . 
	jr nz,l48a1h		;4895	20 0a 	  . 
	sub 008h		;4897	d6 08 	. . 
	call nc,sub_48b1h		;4899	d4 b1 48 	. . H 
	ld hl,08dd1h		;489c	21 d1 8d 	! . . 
	jr l48a9h		;489f	18 08 	. . 
l48a1h:
	add a,010h		;48a1	c6 10 	. . 
	call nc,sub_48b9h		;48a3	d4 b9 48 	. . H 
	ld hl,08de9h		;48a6	21 e9 8d 	! . . 
l48a9h:
	ld a,0a4h		;48a9	3e a4 	> . 
	ld (0c110h),a		;48ab	32 10 c1 	2 . . 
	jp sub_4173h		;48ae	c3 73 41 	. s A 
sub_48b1h:
	ld hl,08093h		;48b1	21 93 80 	! . . 
	ld de,0fc00h		;48b4	11 00 fc 	. . . 
	jr l48bfh		;48b7	18 06 	. . 
sub_48b9h:
	ld hl,08098h		;48b9	21 98 80 	! . . 
	ld de,00400h		;48bc	11 00 04 	. . . 
l48bfh:
	ld (0c32ch),a		;48bf	32 2c c3 	2 , . 
	ld a,(0c30eh)		;48c2	3a 0e c3 	: . . 
	add a,008h		;48c5	c6 08 	. . 
	ld (0c32eh),a		;48c7	32 2e c3 	2 . . 
	ld (0c327h),hl		;48ca	22 27 c3 	" ' . 
	ld (0c32fh),de		;48cd	ed 53 2f c3 	. S / . 
	ld hl,00000h		;48d1	21 00 00 	! . . 
	ld (0c331h),hl		;48d4	22 31 c3 	" 1 . 
	ld a,01bh		;48d7	3e 1b 	> . 
	ld (0c320h),a		;48d9	32 20 c3 	2   . 
	ld hl,0c31ch		;48dc	21 1c c3 	! . . 
	ld a,(hl)			;48df	7e 	~ 
	or 00bh		;48e0	f6 0b 	. . 
	ld (hl),a			;48e2	77 	w 
	ret			;48e3	c9 	. 
	ld a,(0c329h)		;48e4	3a 29 c3 	: ) . 
	or (ix+00ah)		;48e7	dd b6 0a 	. . . 
	jr nz,l4903h		;48ea	20 17 	  . 
	ld a,(0c32ch)		;48ec	3a 2c c3 	: , . 
	cp 00ch		;48ef	fe 0c 	. . 
	jr c,l4903h		;48f1	38 10 	8 . 
	cp 0f4h		;48f3	fe f4 	. . 
	jr nc,l4903h		;48f5	30 0c 	0 . 
	ld de,00404h		;48f7	11 04 04 	. . . 
	call sub_7c18h		;48fa	cd 18 7c 	. . | 
	rlca			;48fd	07 	. 
	ret nc			;48fe	d0 	. 
	rlca			;48ff	07 	. 
	jp c,sub_4541h		;4900	da 41 45 	. A E 
l4903h:
	ld hl,0c31ch		;4903	21 1c c3 	! . . 
	ld a,(hl)			;4906	7e 	~ 
	and 0f4h		;4907	e6 f4 	. . 
	ld (hl),a			;4909	77 	w 
	jp 02752h		;490a	c3 52 27 	. R ' 
sub_490dh:
	ld l,(ix+011h)		;490d	dd 6e 11 	. n . 
	ld h,(ix+012h)		;4910	dd 66 12 	. f . 
	ld bc,00040h		;4913	01 40 00 	. @ . 
	add hl,bc			;4916	09 	. 
	ld (ix+011h),l		;4917	dd 75 11 	. u . 
	ld (ix+012h),h		;491a	dd 74 12 	. t . 
	jr nc,l4923h		;491d	30 04 	0 . 
	set 7,(ix+014h)		;491f	dd cb 14 fe 	. . . . 
l4923h:
	bit 7,(ix+014h)		;4923	dd cb 14 7e 	. . . ~ 
	ret z			;4927	c8 	. 
	ld a,h			;4928	7c 	| 
	cp 004h		;4929	fe 04 	. . 
	jr c,l4931h		;492b	38 04 	8 . 
	ld (ix+011h),000h		;492d	dd 36 11 00 	. 6 . . 
l4931h:
	ld a,d			;4931	7a 	z 
	add a,h			;4932	84 	. 
	ld d,a			;4933	57 	W 
	call sub_7c18h		;4934	cd 18 7c 	. . | 
	rlca			;4937	07 	. 
	ret nc			;4938	d0 	. 
	ld a,b			;4939	78 	x 
	and 007h		;493a	e6 07 	. . 
	neg		;493c	ed 44 	. D 
	add a,(ix+012h)		;493e	dd 86 12 	. . . 
	ld (ix+012h),a		;4941	dd 77 12 	. w . 
	ld (ix+011h),000h		;4944	dd 36 11 00 	. 6 . . 
	set 6,(ix+014h)		;4948	dd cb 14 f6 	. . . . 
	ret			;494c	c9 	. 
	set 1,(ix+001h)		;494d	dd cb 01 ce 	. . . . 
	ld a,(0c0c9h)		;4951	3a c9 c0 	: . . 
	and 00fh		;4954	e6 0f 	. . 
	ret nz			;4956	c0 	. 
	dec (ix+003h)		;4957	dd 35 03 	. 5 . 
	ret nz			;495a	c0 	. 
	ld a,(0c202h)		;495b	3a 02 c2 	: . . 
	or a			;495e	b7 	. 
	jr z,l4965h		;495f	28 04 	( . 
	inc (ix+003h)		;4961	dd 34 03 	. 4 . 
	ret			;4964	c9 	. 
l4965h:
	ld a,(ix+019h)		;4965	dd 7e 19 	. ~ . 
	ld (ix+003h),a		;4968	dd 77 03 	. w . 
	ld a,0a2h		;496b	3e a2 	> . 
	ld (0c110h),a		;496d	32 10 c1 	2 . . 
	ld h,000h		;4970	26 00 	& . 
	ld l,(ix+01eh)		;4972	dd 6e 1e 	. n . 
	add hl,hl			;4975	29 	) 
	add hl,hl			;4976	29 	) 
	add hl,hl			;4977	29 	) 
	add hl,hl			;4978	29 	) 
	add hl,hl			;4979	29 	) 
	add hl,hl			;497a	29 	) 
	ld e,(ix+01ch)		;497b	dd 5e 1c 	. ^ . 
	ld d,(ix+01dh)		;497e	dd 56 1d 	. V . 
	add hl,de			;4981	19 	. 
	ld a,(ix+01fh)		;4982	dd 7e 1f 	. ~ . 
	rrca			;4985	0f 	. 
	dec a			;4986	3d 	= 
	ld b,a			;4987	47 	G 
	ld a,(hl)			;4988	7e 	~ 
l4989h:
	inc hl			;4989	23 	# 
	inc hl			;498a	23 	# 
	or (hl)			;498b	b6 	. 
	djnz l4989h		;498c	10 fb 	. . 
	jp nz,02752h		;498e	c2 52 27 	. R ' 
	ld l,(ix+01ch)		;4991	dd 6e 1c 	. n . 
	ld h,(ix+01dh)		;4994	dd 66 1d 	. f . 
	call sub_4bech		;4997	cd ec 4b 	. . K 
	ld (ix+01ch),l		;499a	dd 75 1c 	. u . 
	ld (ix+01dh),h		;499d	dd 74 1d 	. t . 
	ld (0c204h),hl		;49a0	22 04 c2 	" . . 
	ld l,(ix+01ah)		;49a3	dd 6e 1a 	. n . 
	ld h,(ix+01bh)		;49a6	dd 66 1b 	. f . 
	ld (0c206h),hl		;49a9	22 06 c2 	" . . 
	ld l,(ix+01eh)		;49ac	dd 6e 1e 	. n . 
	ld h,(ix+01fh)		;49af	dd 66 1f 	. f . 
	ld (0c208h),hl		;49b2	22 08 c2 	" . . 
	ld a,085h		;49b5	3e 85 	> . 
	ld (0c202h),a		;49b7	32 02 c2 	2 . . 
	ret			;49ba	c9 	. 
	ld hl,0be9eh		;49bb	21 9e be 	! . . 
	ld bc,00403h		;49be	01 03 04 	. . . 
	ld (ix+019h),00fh		;49c1	dd 36 19 0f 	. 6 . . 
l49c5h:
	ld (ix+007h),0e1h		;49c5	dd 36 07 e1 	. 6 . . 
	ld (ix+008h),080h		;49c9	dd 36 08 80 	. 6 . . 
	ld a,(0c0c9h)		;49cd	3a c9 c0 	: . . 
	and 00fh		;49d0	e6 0f 	. . 
	ret nz			;49d2	c0 	. 
	ld (ix+01ah),l		;49d3	dd 75 1a 	. u . 
	ld (ix+01bh),h		;49d6	dd 74 1b 	. t . 
	ld (ix+01fh),b		;49d9	dd 70 1f 	. p . 
	ld (ix+01eh),c		;49dc	dd 71 1e 	. q . 
	ld e,(ix+00ch)		;49df	dd 5e 0c 	. ^ . 
	ld d,(ix+00eh)		;49e2	dd 56 0e 	. V . 
	call sub_7c56h		;49e5	cd 56 7c 	. V | 
	ld a,l			;49e8	7d 	} 
	and 0fch		;49e9	e6 fc 	. . 
	ld (ix+01ch),a		;49eb	dd 77 1c 	. w . 
	ld (ix+01dh),h		;49ee	dd 74 1d 	. t . 
	ld (ix+000h),014h		;49f1	dd 36 00 14 	. 6 . . 
	ret			;49f5	c9 	. 
	ld hl,0beaah		;49f6	21 aa be 	! . . 
	ld bc,00809h		;49f9	01 09 08 	. . . 
	ld (ix+019h),019h		;49fc	dd 36 19 19 	. 6 . . 
	jr l49c5h		;4a00	18 c3 	. . 
	ld hl,0bef2h		;4a02	21 f2 be 	! . . 
	ld bc,0040bh		;4a05	01 0b 04 	. . . 
	ld (ix+019h),00ah		;4a08	dd 36 19 0a 	. 6 . . 
	jr l49c5h		;4a0c	18 b7 	. . 
	ld hl,0bf26h		;4a0e	21 26 bf 	! & . 
	ld bc,02003h		;4a11	01 03 20 	. .   
	ld (ix+019h),01eh		;4a14	dd 36 19 1e 	. 6 . . 
	jr l49c5h		;4a18	18 ab 	. . 
	ld (ix+007h),0e1h		;4a1a	dd 36 07 e1 	. 6 . . 
	ld (ix+008h),080h		;4a1e	dd 36 08 80 	. 6 . . 
	ld a,(0c0c9h)		;4a22	3a c9 c0 	: . . 
	and 00fh		;4a25	e6 0f 	. . 
	ret nz			;4a27	c0 	. 
	bit 0,(ix+001h)		;4a28	dd cb 01 46 	. . . F 
	jr z,l4a8bh		;4a2c	28 5d 	( ] 
	set 1,(ix+001h)		;4a2e	dd cb 01 ce 	. . . . 
	bit 4,(ix+001h)		;4a32	dd cb 01 66 	. . . f 
	jr nz,l4a4fh		;4a36	20 17 	  . 
	ld a,(0c30ch)		;4a38	3a 0c c3 	: . . 
	sub (ix+00ch)		;4a3b	dd 96 0c 	. . . 
	ret c			;4a3e	d8 	. 
	cp 010h		;4a3f	fe 10 	. . 
	ret nc			;4a41	d0 	. 
l4a42h:
	ld a,0a0h		;4a42	3e a0 	> . 
	ld (0c110h),a		;4a44	32 10 c1 	2 . . 
	set 4,(ix+001h)		;4a47	dd cb 01 e6 	. . . . 
	ld (ix+005h),001h		;4a4b	dd 36 05 01 	. 6 . . 
l4a4fh:
	dec (ix+005h)		;4a4f	dd 35 05 	. 5 . 
	ret nz			;4a52	c0 	. 
	ld a,(0c202h)		;4a53	3a 02 c2 	: . . 
	or a			;4a56	b7 	. 
	jr z,l4a5dh		;4a57	28 04 	( . 
	inc (ix+005h)		;4a59	dd 34 05 	. 4 . 
	ret			;4a5c	c9 	. 
l4a5dh:
	ld a,(ix+019h)		;4a5d	dd 7e 19 	. ~ . 
	ld (ix+005h),a		;4a60	dd 77 05 	. w . 
	ld a,(ix+01fh)		;4a63	dd 7e 1f 	. ~ . 
	add a,004h		;4a66	c6 04 	. . 
	ld (ix+01fh),a		;4a68	dd 77 1f 	. w . 
	ld h,a			;4a6b	67 	g 
	ld l,002h		;4a6c	2e 02 	. . 
	ld (0c208h),hl		;4a6e	22 08 c2 	" . . 
	ld l,(ix+01ch)		;4a71	dd 6e 1c 	. n . 
	ld h,(ix+01dh)		;4a74	dd 66 1d 	. f . 
	ld (0c204h),hl		;4a77	22 04 c2 	" . . 
	dec l			;4a7a	2d 	- 
	dec l			;4a7b	2d 	- 
	ld (ix+01ch),l		;4a7c	dd 75 1c 	. u . 
	ld a,087h		;4a7f	3e 87 	> . 
	ld (0c202h),a		;4a81	32 02 c2 	2 . . 
	dec (ix+018h)		;4a84	dd 35 18 	. 5 . 
	jp z,02752h		;4a87	ca 52 27 	. R ' 
	ret			;4a8a	c9 	. 
l4a8bh:
	ld e,(ix+00ch)		;4a8b	dd 5e 0c 	. ^ . 
	ld a,(ix+00eh)		;4a8e	dd 7e 0e 	. ~ . 
	add a,010h		;4a91	c6 10 	. . 
	ld d,a			;4a93	57 	W 
	call sub_7c56h		;4a94	cd 56 7c 	. V | 
	ld a,l			;4a97	7d 	} 
	and 0feh		;4a98	e6 fe 	. . 
	ld (ix+01ch),a		;4a9a	dd 77 1c 	. w . 
	ld (ix+01dh),h		;4a9d	dd 74 1d 	. t . 
l4aa0h:
	set 0,(ix+001h)		;4aa0	dd cb 01 c6 	. . . . 
	ld (ix+019h),003h		;4aa4	dd 36 19 03 	. 6 . . 
	ld a,(ix+003h)		;4aa8	dd 7e 03 	. ~ . 
	ld (ix+018h),a		;4aab	dd 77 18 	. w . 
	ld (ix+01fh),000h		;4aae	dd 36 1f 00 	. 6 . . 
	ld (ix+01eh),002h		;4ab2	dd 36 1e 02 	. 6 . . 
	ret			;4ab6	c9 	. 
	ld (ix+007h),0e1h		;4ab7	dd 36 07 e1 	. 6 . . 
	ld (ix+008h),080h		;4abb	dd 36 08 80 	. 6 . . 
	ld a,(0c0c9h)		;4abf	3a c9 c0 	: . . 
	and 00fh		;4ac2	e6 0f 	. . 
	ret nz			;4ac4	c0 	. 
	bit 0,(ix+001h)		;4ac5	dd cb 01 46 	. . . F 
	jr z,l4addh		;4ac9	28 12 	( . 
	set 1,(ix+001h)		;4acb	dd cb 01 ce 	. . . . 
	bit 4,(ix+001h)		;4acf	dd cb 01 66 	. . . f 
	jp nz,l4a4fh		;4ad3	c2 4f 4a 	. O J 
	call sub_7cd8h		;4ad6	cd d8 7c 	. . | 
	ret c			;4ad9	d8 	. 
	jp l4a42h		;4ada	c3 42 4a 	. B J 
l4addh:
	ld de,0a074h		;4add	11 74 a0 	. t . 
	call sub_7c56h		;4ae0	cd 56 7c 	. V | 
	dec hl			;4ae3	2b 	+ 
	ld (ix+01ch),l		;4ae4	dd 75 1c 	. u . 
	ld (ix+01dh),h		;4ae7	dd 74 1d 	. t . 
	jr l4aa0h		;4aea	18 b4 	. . 
	ld (ix+007h),0e1h		;4aec	dd 36 07 e1 	. 6 . . 
	ld (ix+008h),080h		;4af0	dd 36 08 80 	. 6 . . 
	ld a,(0c0c9h)		;4af4	3a c9 c0 	: . . 
	and 00fh		;4af7	e6 0f 	. . 
	ret nz			;4af9	c0 	. 
	bit 0,(ix+001h)		;4afa	dd cb 01 46 	. . . F 
	jr z,l4b43h		;4afe	28 43 	( C 
	ld a,(ix+00ah)		;4b00	dd 7e 0a 	. ~ . 
	or (ix+009h)		;4b03	dd b6 09 	. . . 
	jr nz,l4b3dh		;4b06	20 35 	  5 
	dec (ix+005h)		;4b08	dd 35 05 	. 5 . 
	ret nz			;4b0b	c0 	. 
	ld a,(0c202h)		;4b0c	3a 02 c2 	: . . 
	or a			;4b0f	b7 	. 
	jr z,l4b16h		;4b10	28 04 	( . 
	inc (ix+005h)		;4b12	dd 34 05 	. 4 . 
	ret			;4b15	c9 	. 
l4b16h:
	ld (ix+005h),00fh		;4b16	dd 36 05 0f 	. 6 . . 
	ld a,086h		;4b1a	3e 86 	> . 
	ld (0c202h),a		;4b1c	32 02 c2 	2 . . 
	ld a,(ix+003h)		;4b1f	dd 7e 03 	. ~ . 
	ld (0c209h),a		;4b22	32 09 c2 	2 . . 
	ld l,(ix+01ch)		;4b25	dd 6e 1c 	. n . 
	ld h,(ix+01dh)		;4b28	dd 66 1d 	. f . 
	ld (0c204h),hl		;4b2b	22 04 c2 	" . . 
	dec (ix+018h)		;4b2e	dd 35 18 	. 5 . 
	jr z,l4b3dh		;4b31	28 0a 	( . 
	call sub_4bech		;4b33	cd ec 4b 	. . K 
	ld (ix+01ch),l		;4b36	dd 75 1c 	. u . 
	ld (ix+01dh),h		;4b39	dd 74 1d 	. t . 
	ret			;4b3c	c9 	. 
l4b3dh:
	call 099d3h		;4b3d	cd d3 99 	. . . 
	jp 02752h		;4b40	c3 52 27 	. R ' 
l4b43h:
	set 0,(ix+001h)		;4b43	dd cb 01 c6 	. . . . 
	ld (ix+019h),001h		;4b47	dd 36 19 01 	. 6 . . 
	ld (ix+018h),012h		;4b4b	dd 36 18 12 	. 6 . . 
	ld e,(ix+00ch)		;4b4f	dd 5e 0c 	. ^ . 
	ld d,(ix+00eh)		;4b52	dd 56 0e 	. V . 
	call sub_7c56h		;4b55	cd 56 7c 	. V | 
	ld a,l			;4b58	7d 	} 
	and 0feh		;4b59	e6 fe 	. . 
	ld (ix+01ch),a		;4b5b	dd 77 1c 	. w . 
	ld (ix+01dh),h		;4b5e	dd 74 1d 	. t . 
	ld a,09fh		;4b61	3e 9f 	> . 
	ld (0c110h),a		;4b63	32 10 c1 	2 . . 
	ret			;4b66	c9 	. 
	ld a,087h		;4b67	3e 87 	> . 
	ld (0ffffh),a		;4b69	32 ff ff 	2 . . 
	ld hl,(0c206h)		;4b6c	2a 06 c2 	* . . 
	ld de,(0c204h)		;4b6f	ed 5b 04 c2 	. [ . . 
	ld bc,(0c208h)		;4b73	ed 4b 08 c2 	. K . . 
l4b77h:
	push bc			;4b77	c5 	. 
	push bc			;4b78	c5 	. 
	push de			;4b79	d5 	. 
	ld c,b			;4b7a	48 	H 
	ld b,000h		;4b7b	06 00 	. . 
	push hl			;4b7d	e5 	. 
	ldir		;4b7e	ed b0 	. . 
	pop hl			;4b80	e1 	. 
	pop de			;4b81	d1 	. 
	ld a,d			;4b82	7a 	z 
	sub 050h		;4b83	d6 50 	. P 
	ld d,a			;4b85	57 	W 
	pop bc			;4b86	c1 	. 
	rst 30h			;4b87	f7 	. 
	ex de,hl			;4b88	eb 	. 
	call sub_4bech		;4b89	cd ec 4b 	. . K 
	ex de,hl			;4b8c	eb 	. 
	ld a,d			;4b8d	7a 	z 
	add a,050h		;4b8e	c6 50 	. P 
	ld d,a			;4b90	57 	W 
	pop bc			;4b91	c1 	. 
	dec c			;4b92	0d 	. 
	jr nz,l4b77h		;4b93	20 e2 	  . 
	ret			;4b95	c9 	. 
	ld hl,(0c204h)		;4b96	2a 04 c2 	* . . 
	ld bc,(0c208h)		;4b99	ed 4b 08 c2 	. K . . 
l4b9dh:
	push bc			;4b9d	c5 	. 
	push bc			;4b9e	c5 	. 
	push hl			;4b9f	e5 	. 
	ld e,l			;4ba0	5d 	] 
	ld a,h			;4ba1	7c 	| 
	sub 050h		;4ba2	d6 50 	. P 
	ld d,a			;4ba4	57 	W 
l4ba5h:
	ld (hl),000h		;4ba5	36 00 	6 . 
	inc hl			;4ba7	23 	# 
	djnz l4ba5h		;4ba8	10 fb 	. . 
	pop hl			;4baa	e1 	. 
	pop bc			;4bab	c1 	. 
	call 00008h		;4bac	cd 08 00 	. . . 
l4bafh:
	xor a			;4baf	af 	. 
	out (0beh),a		;4bb0	d3 be 	. . 
	djnz l4bafh		;4bb2	10 fb 	. . 
	call sub_4bech		;4bb4	cd ec 4b 	. . K 
	pop bc			;4bb7	c1 	. 
	dec c			;4bb8	0d 	. 
	jr nz,l4b9dh		;4bb9	20 e2 	  . 
	ret			;4bbb	c9 	. 
	ld hl,(0c204h)		;4bbc	2a 04 c2 	* . . 
	ld a,(0c209h)		;4bbf	3a 09 c2 	: . . 
	ld b,a			;4bc2	47 	G 
	ld c,043h		;4bc3	0e 43 	. C 
	call sub_4bceh		;4bc5	cd ce 4b 	. . K 
	ld a,(0c209h)		;4bc8	3a 09 c2 	: . . 
	ld b,a			;4bcb	47 	G 
	ld c,044h		;4bcc	0e 44 	. D 
sub_4bceh:
	push bc			;4bce	c5 	. 
	ld e,l			;4bcf	5d 	] 
	ld a,h			;4bd0	7c 	| 
	sub 050h		;4bd1	d6 50 	. P 
	ld d,a			;4bd3	57 	W 
l4bd4h:
	ld a,(hl)			;4bd4	7e 	~ 
	or a			;4bd5	b7 	. 
	jr z,l4bdfh		;4bd6	28 07 	( . 
	cp 044h		;4bd8	fe 44 	. D 
	jr z,l4bdfh		;4bda	28 03 	( . 
	inc hl			;4bdc	23 	# 
	jr l4be3h		;4bdd	18 04 	. . 
l4bdfh:
	ld (hl),c			;4bdf	71 	q 
	inc hl			;4be0	23 	# 
	ld (hl),070h		;4be1	36 70 	6 p 
l4be3h:
	inc hl			;4be3	23 	# 
	djnz l4bd4h		;4be4	10 ee 	. . 
	ld l,e			;4be6	6b 	k 
	pop af			;4be7	f1 	. 
	add a,a			;4be8	87 	. 
	ld b,a			;4be9	47 	G 
	rst 30h			;4bea	f7 	. 
	ld l,e			;4beb	6b 	k 
sub_4bech:
	ld bc,00040h		;4bec	01 40 00 	. @ . 
	add hl,bc			;4bef	09 	. 
	ld a,h			;4bf0	7c 	| 
	cp 0cfh		;4bf1	fe cf 	. . 
	ret c			;4bf3	d8 	. 
	ld h,0c8h		;4bf4	26 c8 	& . 
	ret			;4bf6	c9 	. 
	bit 0,(ix+001h)		;4bf7	dd cb 01 46 	. . . F 
	jr nz,l4c35h		;4bfb	20 38 	  8 
	set 0,(ix+001h)		;4bfd	dd cb 01 c6 	. . . . 
	ld (ix+003h),000h		;4c01	dd 36 03 00 	. 6 . . 
	ld (ix+01bh),0c0h		;4c05	dd 36 1b c0 	. 6 . . 
	ld (ix+01ch),000h		;4c09	dd 36 1c 00 	. 6 . . 
	ld (ix+01dh),008h		;4c0d	dd 36 1d 08 	. 6 . . 
	ld (ix+010h),000h		;4c11	dd 36 10 00 	. 6 . . 
	ld (ix+00fh),000h		;4c15	dd 36 0f 00 	. 6 . . 
	ld (ix+012h),000h		;4c19	dd 36 12 00 	. 6 . . 
	ld (ix+011h),000h		;4c1d	dd 36 11 00 	. 6 . . 
	ld (ix+007h),0e3h		;4c21	dd 36 07 e3 	. 6 . . 
	ld (ix+008h),084h		;4c25	dd 36 08 84 	. 6 . . 
	ld a,(ix+009h)		;4c29	dd 7e 09 	. ~ . 
	ld (ix+01ah),a		;4c2c	dd 77 1a 	. w . 
	ld a,(ix+00ah)		;4c2f	dd 7e 0a 	. ~ . 
	ld (ix+019h),a		;4c32	dd 77 19 	. w . 
l4c35h:
	ld a,(ix+009h)		;4c35	dd 7e 09 	. ~ . 
	or (ix+00ah)		;4c38	dd b6 0a 	. . . 
	jp nz,l4ca7h		;4c3b	c2 a7 4c 	. . L 
	call sub_7d66h		;4c3e	cd 66 7d 	. f } 
	call sub_7cd8h		;4c41	cd d8 7c 	. . | 
	jp c,l4ca7h		;4c44	da a7 4c 	. . L 
	ld a,(ix+015h)		;4c47	dd 7e 15 	. ~ . 
	or a			;4c4a	b7 	. 
	jp nz,l4d5bh		;4c4b	c2 5b 4d 	. [ M 
	ld a,(0c31ch)		;4c4e	3a 1c c3 	: . . 
	bit 3,a		;4c51	cb 5f 	. _ 
	jp z,l4ca7h		;4c53	ca a7 4c 	. . L 
	res 3,a		;4c56	cb 9f 	. . 
	ld (0c31ch),a		;4c58	32 1c c3 	2 . . 
	inc (ix+003h)		;4c5b	dd 34 03 	. 4 . 
	ld a,(ix+003h)		;4c5e	dd 7e 03 	. ~ . 
	cp 003h		;4c61	fe 03 	. . 
	jp c,l4ca7h		;4c63	da a7 4c 	. . L 
	ld b,008h		;4c66	06 08 	. . 
	ld de,00020h		;4c68	11 20 00 	.   . 
l4c6bh:
	ld a,(ix+000h)		;4c6b	dd 7e 00 	. ~ . 
	cp 024h		;4c6e	fe 24 	. $ 
	jr nz,l4c7ah		;4c70	20 08 	  . 
	ld (ix+000h),02bh		;4c72	dd 36 00 2b 	. 6 . + 
	res 0,(ix+001h)		;4c76	dd cb 01 86 	. . . . 
l4c7ah:
	add ix,de		;4c7a	dd 19 	. . 
	djnz l4c6bh		;4c7c	10 ed 	. . 
	ld a,095h		;4c7e	3e 95 	> . 
	ld (0c110h),a		;4c80	32 10 c1 	2 . . 
	ld ix,0c3c0h		;4c83	dd 21 c0 c3 	. ! . . 
	ld a,083h		;4c87	3e 83 	> . 
	ld (0c202h),a		;4c89	32 02 c2 	2 . . 
	ld a,(0c023h)		;4c8c	3a 23 c0 	: # . 
	cp 005h		;4c8f	fe 05 	. . 
	jr c,l4c99h		;4c91	38 06 	8 . 
	ld a,084h		;4c93	3e 84 	> . 
	ld (0c202h),a		;4c95	32 02 c2 	2 . . 
	ret			;4c98	c9 	. 
l4c99h:
	ld a,(0c08dh)		;4c99	3a 8d c0 	: . . 
	and 07fh		;4c9c	e6 7f 	.  
	cp 003h		;4c9e	fe 03 	. . 
	ret c			;4ca0	d8 	. 
	ld a,084h		;4ca1	3e 84 	> . 
	ld (0c202h),a		;4ca3	32 02 c2 	2 . . 
	ret			;4ca6	c9 	. 
l4ca7h:
	ld bc,00000h		;4ca7	01 00 00 	. . . 
	ld a,(ix+016h)		;4caa	dd 7e 16 	. ~ . 
	or a			;4cad	b7 	. 
	jr z,l4cb5h		;4cae	28 05 	( . 
	dec (ix+016h)		;4cb0	dd 35 16 	. 5 . 
	jr l4cd5h		;4cb3	18 20 	.   
l4cb5h:
	ld bc,00002h		;4cb5	01 02 00 	. . . 
	ld a,(ix+018h)		;4cb8	dd 7e 18 	. ~ . 
	ld d,a			;4cbb	57 	W 
	or a			;4cbc	b7 	. 
	jr z,l4cc2h		;4cbd	28 03 	( . 
	ld bc,0fffeh		;4cbf	01 fe ff 	. . . 
l4cc2h:
	inc (ix+017h)		;4cc2	dd 34 17 	. 4 . 
	ld a,(ix+017h)		;4cc5	dd 7e 17 	. ~ . 
	cp 060h		;4cc8	fe 60 	. ` 
	jr c,l4cd5h		;4cca	38 09 	8 . 
	ld a,d			;4ccc	7a 	z 
	cpl			;4ccd	2f 	/ 
	ld (ix+018h),a		;4cce	dd 77 18 	. w . 
	ld (ix+017h),000h		;4cd1	dd 36 17 00 	. 6 . . 
l4cd5h:
	ld a,(ix+015h)		;4cd5	dd 7e 15 	. ~ . 
	or a			;4cd8	b7 	. 
	jr z,l4cf3h		;4cd9	28 18 	( . 
	ld hl,(0c0f4h)		;4cdb	2a f4 c0 	* . . 
	ld (ix+01fh),h		;4cde	dd 74 1f 	. t . 
	ld (ix+01eh),l		;4ce1	dd 75 1e 	. u . 
	ld a,(0c0ffh)		;4ce4	3a ff c0 	: . . 
	ld (ix+019h),a		;4ce7	dd 77 19 	. w . 
	ld a,(0c0fbh)		;4cea	3a fb c0 	: . . 
	ld (ix+01ah),a		;4ced	dd 77 1a 	. w . 
	jp l4d30h		;4cf0	c3 30 4d 	. 0 M 
l4cf3h:
	ld hl,(0c0abh)		;4cf3	2a ab c0 	* . . 
	ld a,h			;4cf6	7c 	| 
	or l			;4cf7	b5 	. 
	jr z,l4d0eh		;4cf8	28 14 	( . 
	ld d,(ix+01fh)		;4cfa	dd 56 1f 	. V . 
	ld e,(ix+006h)		;4cfd	dd 5e 06 	. ^ . 
	add hl,de			;4d00	19 	. 
	ld (ix+01fh),h		;4d01	dd 74 1f 	. t . 
	ld (ix+006h),l		;4d04	dd 75 06 	. u . 
	jr c,l4d30h		;4d07	38 27 	8 ' 
	inc (ix+01ah)		;4d09	dd 34 1a 	. 4 . 
	jr l4d30h		;4d0c	18 22 	. " 
l4d0eh:
	ld hl,(0c0b9h)		;4d0e	2a b9 c0 	* . . 
	ld a,h			;4d11	7c 	| 
	or l			;4d12	b5 	. 
	jr z,l4d30h		;4d13	28 1b 	( . 
	ld d,(ix+01eh)		;4d15	dd 56 1e 	. V . 
	ld e,(ix+002h)		;4d18	dd 5e 02 	. ^ . 
	ex de,hl			;4d1b	eb 	. 
	or a			;4d1c	b7 	. 
	sbc hl,de		;4d1d	ed 52 	. R 
	ld (ix+01eh),h		;4d1f	dd 74 1e 	. t . 
	ld (ix+002h),l		;4d22	dd 75 02 	. u . 
	jr nc,l4d30h		;4d25	30 09 	0 . 
	ld a,h			;4d27	7c 	| 
	sub 040h		;4d28	d6 40 	. @ 
	ld (ix+01eh),a		;4d2a	dd 77 1e 	. w . 
	dec (ix+019h)		;4d2d	dd 35 19 	. 5 . 
l4d30h:
	ld l,(ix+01bh)		;4d30	dd 6e 1b 	. n . 
	ld h,(ix+01ch)		;4d33	dd 66 1c 	. f . 
	add hl,bc			;4d36	09 	. 
	ld (ix+01bh),l		;4d37	dd 75 1b 	. u . 
	ld (ix+01ch),h		;4d3a	dd 74 1c 	. t . 
	call 0049bh		;4d3d	cd 9b 04 	. . . 
	ld h,(ix+00ch)		;4d40	dd 66 0c 	. f . 
	ld l,(ix+00eh)		;4d43	dd 6e 0e 	. n . 
	ld (0c0f4h),hl		;4d46	22 f4 c0 	" . . 
	ld a,(ix+00ah)		;4d49	dd 7e 0a 	. ~ . 
	ld (0c0ffh),a		;4d4c	32 ff c0 	2 . . 
	ld a,(ix+009h)		;4d4f	dd 7e 09 	. ~ . 
	ld (0c0fbh),a		;4d52	32 fb c0 	2 . . 
	cp 001h		;4d55	fe 01 	. . 
	jp z,02752h		;4d57	ca 52 27 	. R ' 
	ret			;4d5a	c9 	. 
l4d5bh:
	ld a,(0c31ch)		;4d5b	3a 1c c3 	: . . 
	bit 3,a		;4d5e	cb 5f 	. _ 
	jp z,l4ca7h		;4d60	ca a7 4c 	. . L 
	res 3,a		;4d63	cb 9f 	. . 
	ld (0c31ch),a		;4d65	32 1c c3 	2 . . 
	inc (ix+003h)		;4d68	dd 34 03 	. 4 . 
	ld a,(ix+003h)		;4d6b	dd 7e 03 	. ~ . 
	cp 003h		;4d6e	fe 03 	. . 
	jp c,l4ca7h		;4d70	da a7 4c 	. . L 
	jp l556eh		;4d73	c3 6e 55 	. n U 
sub_4d76h:
	ld c,000h		;4d76	0e 00 	. . 
	ld a,(0c30eh)		;4d78	3a 0e c3 	: . . 
	sub (ix+00eh)		;4d7b	dd 96 0e 	. . . 
	jr nz,l4d81h		;4d7e	20 01 	  . 
	inc a			;4d80	3c 	< 
l4d81h:
	jr nc,l4d87h		;4d81	30 04 	0 . 
	ld c,001h		;4d83	0e 01 	. . 
	neg		;4d85	ed 44 	. D 
l4d87h:
	ld l,a			;4d87	6f 	o 
	ld a,(0c30ch)		;4d88	3a 0c c3 	: . . 
	sub (ix+00ch)		;4d8b	dd 96 0c 	. . . 
	jr nz,l4d91h		;4d8e	20 01 	  . 
	inc a			;4d90	3c 	< 
l4d91h:
	jr nc,l4d97h		;4d91	30 04 	0 . 
	set 1,c		;4d93	cb c9 	. . 
	neg		;4d95	ed 44 	. D 
l4d97h:
	ld h,a			;4d97	67 	g 
	ld a,l			;4d98	7d 	} 
	cp h			;4d99	bc 	. 
	jr nc,l4da0h		;4d9a	30 04 	0 . 
	set 2,c		;4d9c	cb d1 	. . 
	ld l,h			;4d9e	6c 	l 
	ld h,a			;4d9f	67 	g 
l4da0h:
	ld e,l			;4da0	5d 	] 
	ld l,000h		;4da1	2e 00 	. . 
	call sub_4dddh		;4da3	cd dd 4d 	. . M 
	ld h,000h		;4da6	26 00 	& . 
	ld a,(ix+000h)		;4da8	dd 7e 00 	. ~ . 
	cp 029h		;4dab	fe 29 	. ) 
	jp z,l4dbfh		;4dad	ca bf 4d 	. . M 
	ld e,l			;4db0	5d 	] 
	ld d,h			;4db1	54 	T 
	srl d		;4db2	cb 3a 	. : 
	rr e		;4db4	cb 1b 	. . 
	srl d		;4db6	cb 3a 	. : 
	rr e		;4db8	cb 1b 	. . 
	ld l,e			;4dba	6b 	k 
	ld h,d			;4dbb	62 	b 
	jp l4dbfh		;4dbc	c3 bf 4d 	. . M 
l4dbfh:
	ld de,00100h		;4dbf	11 00 01 	. . . 
	bit 2,c		;4dc2	cb 51 	. Q 
	jr z,l4dc7h		;4dc4	28 01 	( . 
	ex de,hl			;4dc6	eb 	. 
l4dc7h:
	bit 0,c		;4dc7	cb 41 	. A 
	jr z,l4dd2h		;4dc9	28 07 	( . 
	ld a,e			;4dcb	7b 	{ 
	cpl			;4dcc	2f 	/ 
	ld e,a			;4dcd	5f 	_ 
	ld a,d			;4dce	7a 	z 
	cpl			;4dcf	2f 	/ 
	ld d,a			;4dd0	57 	W 
	inc de			;4dd1	13 	. 
l4dd2h:
	bit 1,c		;4dd2	cb 49 	. I 
	ret z			;4dd4	c8 	. 
	ld a,l			;4dd5	7d 	} 
	cpl			;4dd6	2f 	/ 
	ld l,a			;4dd7	6f 	o 
	ld a,h			;4dd8	7c 	| 
	cpl			;4dd9	2f 	/ 
	ld h,a			;4dda	67 	g 
	inc hl			;4ddb	23 	# 
	ret			;4ddc	c9 	. 
sub_4dddh:
	ld b,008h		;4ddd	06 08 	. . 
	xor a			;4ddf	af 	. 
l4de0h:
	adc hl,hl		;4de0	ed 6a 	. j 
	ld a,h			;4de2	7c 	| 
	jp c,l4deah		;4de3	da ea 4d 	. . M 
	cp e			;4de6	bb 	. 
	jp c,l4dedh		;4de7	da ed 4d 	. . M 
l4deah:
	sub e			;4dea	93 	. 
	ld h,a			;4deb	67 	g 
	xor a			;4dec	af 	. 
l4dedh:
	ccf			;4ded	3f 	? 
	djnz l4de0h		;4dee	10 f0 	. . 
	rl l		;4df0	cb 15 	. . 
	sla h		;4df2	cb 24 	. $ 
	ld a,h			;4df4	7c 	| 
	sub e			;4df5	93 	. 
	ret c			;4df6	d8 	. 
	inc l			;4df7	2c 	, 
	ret			;4df8	c9 	. 
	bit 0,(ix+001h)		;4df9	dd cb 01 46 	. . . F 
	jr nz,l4e1fh		;4dfd	20 20 	    
	ld (ix+005h),00ah		;4dff	dd 36 05 0a 	. 6 . . 
	ld (ix+006h),00ah		;4e03	dd 36 06 0a 	. 6 . . 
	ld a,(ix+009h)		;4e07	dd 7e 09 	. ~ . 
	or (ix+00ah)		;4e0a	dd b6 0a 	. . . 
	jr nz,l4e47h		;4e0d	20 38 	  8 
	set 0,(ix+001h)		;4e0f	dd cb 01 c6 	. . . . 
	ld (ix+012h),0ffh		;4e13	dd 36 12 ff 	. 6 . . 
	ld (ix+011h),0c0h		;4e17	dd 36 11 c0 	. 6 . . 
	set 1,(ix+001h)		;4e1b	dd cb 01 ce 	. . . . 
l4e1fh:
	call sub_7d66h		;4e1f	cd 66 7d 	. f } 
	call sub_7cd8h		;4e22	cd d8 7c 	. . | 
	jr nc,l4e4dh		;4e25	30 26 	0 & 
l4e27h:
	inc (ix+017h)		;4e27	dd 34 17 	. 4 . 
	ld a,(ix+017h)		;4e2a	dd 7e 17 	. ~ . 
	cp 0c0h		;4e2d	fe c0 	. . 
	jr nz,l4e47h		;4e2f	20 16 	  . 
	ld (ix+017h),000h		;4e31	dd 36 17 00 	. 6 . . 
	ld a,(ix+012h)		;4e35	dd 7e 12 	. ~ . 
	cpl			;4e38	2f 	/ 
	ld (ix+012h),a		;4e39	dd 77 12 	. w . 
	ld a,(ix+011h)		;4e3c	dd 7e 11 	. ~ . 
	cpl			;4e3f	2f 	/ 
	inc a			;4e40	3c 	< 
	ld (ix+011h),a		;4e41	dd 77 11 	. w . 
	call sub_4f76h		;4e44	cd 76 4f 	. v O 
l4e47h:
	ld hl,08211h		;4e47	21 11 82 	! . . 
	jp 027d6h		;4e4a	c3 d6 27 	. . ' 
l4e4dh:
	ld a,(0c31ch)		;4e4d	3a 1c c3 	: . . 
	bit 3,a		;4e50	cb 5f 	. _ 
	jr z,l4e27h		;4e52	28 d3 	( . 
	res 3,a		;4e54	cb 9f 	. . 
	ld (0c31ch),a		;4e56	32 1c c3 	2 . . 
	inc (ix+003h)		;4e59	dd 34 03 	. 4 . 
	ld a,(ix+003h)		;4e5c	dd 7e 03 	. ~ . 
	cp 003h		;4e5f	fe 03 	. . 
	jp nc,l556eh		;4e61	d2 6e 55 	. n U 
	jr l4e27h		;4e64	18 c1 	. . 
	bit 0,(ix+001h)		;4e66	dd cb 01 46 	. . . F 
	jr nz,l4e9fh		;4e6a	20 33 	  3 
	set 0,(ix+001h)		;4e6c	dd cb 01 c6 	. . . . 
	ld (ix+014h),012h		;4e70	dd 36 14 12 	. 6 . . 
	ld (ix+005h),008h		;4e74	dd 36 05 08 	. 6 . . 
	ld (ix+006h),008h		;4e78	dd 36 06 08 	. 6 . . 
	ld (ix+012h),0ffh		;4e7c	dd 36 12 ff 	. 6 . . 
	ld a,(ix+017h)		;4e80	dd 7e 17 	. ~ . 
	ld c,a			;4e83	4f 	O 
	add a,a			;4e84	87 	. 
	add a,c			;4e85	81 	. 
	ld c,a			;4e86	4f 	O 
	ld b,000h		;4e87	06 00 	. . 
	ld hl,05298h		;4e89	21 98 52 	! . R 
	add hl,bc			;4e8c	09 	. 
	ld a,(hl)			;4e8d	7e 	~ 
	ld (ix+011h),a		;4e8e	dd 77 11 	. w . 
	inc hl			;4e91	23 	# 
	ld a,(hl)			;4e92	7e 	~ 
	ld (ix+010h),a		;4e93	dd 77 10 	. w . 
	inc hl			;4e96	23 	# 
	ld a,(hl)			;4e97	7e 	~ 
	ld (ix+00fh),a		;4e98	dd 77 0f 	. w . 
	set 1,(ix+001h)		;4e9b	dd cb 01 ce 	. . . . 
l4e9fh:
	ld a,(ix+009h)		;4e9f	dd 7e 09 	. ~ . 
	or (ix+00ah)		;4ea2	dd b6 0a 	. . . 
	jr nz,l4eb2h		;4ea5	20 0b 	  . 
	call sub_7d66h		;4ea7	cd 66 7d 	. f } 
	ld a,(ix+00eh)		;4eaa	dd 7e 0e 	. ~ . 
	cp 018h		;4ead	fe 18 	. . 
	jp c,02752h		;4eaf	da 52 27 	. R ' 
l4eb2h:
	ld hl,0825ch		;4eb2	21 5c 82 	! \ . 
	jp 027d6h		;4eb5	c3 d6 27 	. . ' 
	bit 0,(ix+001h)		;4eb8	dd cb 01 46 	. . . F 
	jr nz,l4ed9h		;4ebc	20 1b 	  . 
	ld a,(ix+009h)		;4ebe	dd 7e 09 	. ~ . 
	or (ix+00ah)		;4ec1	dd b6 0a 	. . . 
	jp nz,l4f45h		;4ec4	c2 45 4f 	. E O 
	set 0,(ix+001h)		;4ec7	dd cb 01 c6 	. . . . 
	ld a,(ix+00eh)		;4ecb	dd 7e 0e 	. ~ . 
	ld (ix+016h),a		;4ece	dd 77 16 	. w . 
	ld (ix+005h),008h		;4ed1	dd 36 05 08 	. 6 . . 
	ld (ix+006h),008h		;4ed5	dd 36 06 08 	. 6 . . 
l4ed9h:
	ld a,(ix+009h)		;4ed9	dd 7e 09 	. ~ . 
	or (ix+00ah)		;4edc	dd b6 0a 	. . . 
	jp nz,02752h		;4edf	c2 52 27 	. R ' 
	set 1,(ix+001h)		;4ee2	dd cb 01 ce 	. . . . 
	ld (ix+010h),0ffh		;4ee6	dd 36 10 ff 	. 6 . . 
	ld (ix+00fh),080h		;4eea	dd 36 0f 80 	. 6 . . 
	call sub_7d66h		;4eee	cd 66 7d 	. f } 
	call sub_7cd8h		;4ef1	cd d8 7c 	. . | 
	jp nc,l556eh		;4ef4	d2 6e 55 	. n U 
	ld de,00100h		;4ef7	11 00 01 	. . . 
	call sub_7c18h		;4efa	cd 18 7c 	. . | 
	rlca			;4efd	07 	. 
	jr nc,l4f0ch		;4efe	30 0c 	0 . 
	ld (ix+000h),036h		;4f00	dd 36 00 36 	. 6 . 6 
	ld (ix+010h),000h		;4f04	dd 36 10 00 	. 6 . . 
	ld (ix+00fh),080h		;4f08	dd 36 0f 80 	. 6 . . 
l4f0ch:
	inc (ix+018h)		;4f0c	dd 34 18 	. 4 . 
	ld a,(ix+018h)		;4f0f	dd 7e 18 	. ~ . 
	cp 040h		;4f12	fe 40 	. @ 
	jr nz,l4f1ah		;4f14	20 04 	  . 
	xor a			;4f16	af 	. 
	ld (ix+018h),a		;4f17	dd 77 18 	. w . 
l4f1ah:
	ld hl,l5218h		;4f1a	21 18 52 	! . R 
	ld c,a			;4f1d	4f 	O 
	ld b,000h		;4f1e	06 00 	. . 
	add hl,bc			;4f20	09 	. 
	ld h,(hl)			;4f21	66 	f 
	ld de,(0c0b9h)		;4f22	ed 5b b9 c0 	. [ . . 
	ld a,d			;4f26	7a 	z 
	cpl			;4f27	2f 	/ 
	inc a			;4f28	3c 	< 
	ld d,a			;4f29	57 	W 
	ld a,e			;4f2a	7b 	{ 
	cpl			;4f2b	2f 	/ 
	inc a			;4f2c	3c 	< 
	ld e,a			;4f2d	5f 	_ 
	ld a,h			;4f2e	7c 	| 
	ld h,(ix+016h)		;4f2f	dd 66 16 	. f . 
	ld l,(ix+017h)		;4f32	dd 6e 17 	. n . 
	add hl,de			;4f35	19 	. 
	ld (ix+016h),h		;4f36	dd 74 16 	. t . 
	ld (ix+017h),l		;4f39	dd 75 17 	. u . 
	add a,h			;4f3c	84 	. 
	cp 0c0h		;4f3d	fe c0 	. . 
	jp nc,02752h		;4f3f	d2 52 27 	. R ' 
	ld (ix+00eh),a		;4f42	dd 77 0e 	. w . 
l4f45h:
	ld hl,08bbdh		;4f45	21 bd 8b 	! . . 
	jp 027d6h		;4f48	c3 d6 27 	. . ' 
	ld a,(ix+009h)		;4f4b	dd 7e 09 	. ~ . 
	or (ix+00ah)		;4f4e	dd b6 0a 	. . . 
	jp nz,02752h		;4f51	c2 52 27 	. R ' 
	call sub_7d66h		;4f54	cd 66 7d 	. f } 
	call sub_7cd8h		;4f57	cd d8 7c 	. . | 
	jp nc,l556eh		;4f5a	d2 6e 55 	. n U 
	ld de,00110h		;4f5d	11 10 01 	. . . 
	call sub_7c18h		;4f60	cd 18 7c 	. . | 
	rlca			;4f63	07 	. 
	jp nc,l4f0ch		;4f64	d2 0c 4f 	. . O 
	ld (ix+000h),020h		;4f67	dd 36 00 20 	. 6 .   
	ld (ix+010h),0ffh		;4f6b	dd 36 10 ff 	. 6 . . 
	ld (ix+00fh),080h		;4f6f	dd 36 0f 80 	. 6 . . 
	jp l4f0ch		;4f73	c3 0c 4f 	. . O 
sub_4f76h:
	ld a,(ix+012h)		;4f76	dd 7e 12 	. ~ . 
	cp 0ffh		;4f79	fe ff 	. . 
	ret nz			;4f7b	c0 	. 
	ld b,005h		;4f7c	06 05 	. . 
	ld de,00020h		;4f7e	11 20 00 	.   . 
	ld iy,0c500h		;4f81	fd 21 00 c5 	. ! . . 
l4f85h:
	ld a,(iy+000h)		;4f85	fd 7e 00 	. ~ . 
	or a			;4f88	b7 	. 
	jr nz,l4fb5h		;4f89	20 2a 	  * 
	ld a,097h		;4f8b	3e 97 	> . 
	ld (0c110h),a		;4f8d	32 10 c1 	2 . . 
	ld (iy+000h),022h		;4f90	fd 36 00 22 	. 6 . " 
	ld a,(ix+00eh)		;4f94	dd 7e 0e 	. ~ . 
	ld (iy+00eh),a		;4f97	fd 77 0e 	. w . 
	ld a,(ix+00ch)		;4f9a	dd 7e 0c 	. ~ . 
	ld (iy+00ch),a		;4f9d	fd 77 0c 	. w . 
	ld a,(ix+009h)		;4fa0	dd 7e 09 	. ~ . 
	ld (iy+009h),a		;4fa3	fd 77 09 	. w . 
	set 1,(iy+001h)		;4fa6	fd cb 01 ce 	. . . . 
	inc (ix+018h)		;4faa	dd 34 18 	. 4 . 
	ld a,(ix+018h)		;4fad	dd 7e 18 	. ~ . 
	and 007h		;4fb0	e6 07 	. . 
	ld (iy+017h),a		;4fb2	fd 77 17 	. w . 
l4fb5h:
	add iy,de		;4fb5	fd 19 	. . 
	djnz l4f85h		;4fb7	10 cc 	. . 
	ret			;4fb9	c9 	. 
	bit 0,(ix+001h)		;4fba	dd cb 01 46 	. . . F 
	jr nz,l4fe0h		;4fbe	20 20 	    
	ld (ix+007h),06eh		;4fc0	dd 36 07 6e 	. 6 . n 
	ld (ix+008h),085h		;4fc4	dd 36 08 85 	. 6 . . 
	ld a,(ix+009h)		;4fc8	dd 7e 09 	. ~ . 
	or (ix+00ah)		;4fcb	dd b6 0a 	. . . 
	ret nz			;4fce	c0 	. 
	set 0,(ix+001h)		;4fcf	dd cb 01 c6 	. . . . 
	set 1,(ix+001h)		;4fd3	dd cb 01 ce 	. . . . 
	ld (ix+012h),0ffh		;4fd7	dd 36 12 ff 	. 6 . . 
	ld (ix+011h),080h		;4fdb	dd 36 11 80 	. 6 . . 
	ret			;4fdf	c9 	. 
l4fe0h:
	call sub_7d66h		;4fe0	cd 66 7d 	. f } 
	inc (ix+017h)		;4fe3	dd 34 17 	. 4 . 
	ld a,(ix+017h)		;4fe6	dd 7e 17 	. ~ . 
	cp 040h		;4fe9	fe 40 	. @ 
	ret c			;4feb	d8 	. 
	ld a,(ix+012h)		;4fec	dd 7e 12 	. ~ . 
	cpl			;4fef	2f 	/ 
	ld (ix+012h),a		;4ff0	dd 77 12 	. w . 
	ld a,(ix+011h)		;4ff3	dd 7e 11 	. ~ . 
	cpl			;4ff6	2f 	/ 
	inc a			;4ff7	3c 	< 
	ld (ix+011h),a		;4ff8	dd 77 11 	. w . 
	ld (ix+017h),000h		;4ffb	dd 36 17 00 	. 6 . . 
	ret			;4fff	c9 	. 
	bit 0,(ix+001h)		;5000	dd cb 01 46 	. . . F 
	jr nz,l5018h		;5004	20 12 	  . 
	set 0,(ix+001h)		;5006	dd cb 01 c6 	. . . . 
	ld (ix+014h),004h		;500a	dd 36 14 04 	. 6 . . 
	ld (ix+005h),010h		;500e	dd 36 05 10 	. 6 . . 
	ld (ix+006h),010h		;5012	dd 36 06 10 	. 6 . . 
	jr l504bh		;5016	18 33 	. 3 
l5018h:
	ld a,(ix+009h)		;5018	dd 7e 09 	. ~ . 
	or (ix+00ah)		;501b	dd b6 0a 	. . . 
	jr nz,l504bh		;501e	20 2b 	  + 
	ld (ix+010h),0ffh		;5020	dd 36 10 ff 	. 6 . . 
	ld (ix+00fh),080h		;5024	dd 36 0f 80 	. 6 . . 
	set 1,(ix+001h)		;5028	dd cb 01 ce 	. . . . 
	call sub_7d66h		;502c	cd 66 7d 	. f } 
	call sub_7cd8h		;502f	cd d8 7c 	. . | 
	jp nc,l556eh		;5032	d2 6e 55 	. n U 
	ld de,00100h		;5035	11 00 01 	. . . 
	ld a,008h		;5038	3e 08 	> . 
	call 039cch		;503a	cd cc 39 	. . 9 
	jr nc,l504bh		;503d	30 0c 	0 . 
	ld (ix+000h),033h		;503f	dd 36 00 33 	. 6 . 3 
	ld (ix+010h),000h		;5043	dd 36 10 00 	. 6 . . 
	ld (ix+00fh),080h		;5047	dd 36 0f 80 	. 6 . . 
l504bh:
	ld hl,081b7h		;504b	21 b7 81 	! . . 
	jp 027d6h		;504e	c3 d6 27 	. . ' 
	bit 0,(ix+001h)		;5051	dd cb 01 46 	. . . F 
	jr nz,l5069h		;5055	20 12 	  . 
	set 0,(ix+001h)		;5057	dd cb 01 c6 	. . . . 
	ld (ix+014h),004h		;505b	dd 36 14 04 	. 6 . . 
	ld (ix+005h),010h		;505f	dd 36 05 10 	. 6 . . 
	ld (ix+006h),010h		;5063	dd 36 06 10 	. 6 . . 
	jr l50a4h		;5067	18 3b 	. ; 
l5069h:
	ld a,(ix+009h)		;5069	dd 7e 09 	. ~ . 
	or (ix+00ah)		;506c	dd b6 0a 	. . . 
	jr nz,l50a4h		;506f	20 33 	  3 
	ld (ix+010h),000h		;5071	dd 36 10 00 	. 6 . . 
	ld (ix+00fh),080h		;5075	dd 36 0f 80 	. 6 . . 
	set 1,(ix+001h)		;5079	dd cb 01 ce 	. . . . 
	ld a,(ix+009h)		;507d	dd 7e 09 	. ~ . 
	or (ix+00ah)		;5080	dd b6 0a 	. . . 
	jr nz,l50a4h		;5083	20 1f 	  . 
	call sub_7d66h		;5085	cd 66 7d 	. f } 
	call sub_7cd8h		;5088	cd d8 7c 	. . | 
	jp nc,l556eh		;508b	d2 6e 55 	. n U 
	ld de,00118h		;508e	11 18 01 	. . . 
	ld a,008h		;5091	3e 08 	> . 
	call 039cch		;5093	cd cc 39 	. . 9 
	jr nc,l50a4h		;5096	30 0c 	0 . 
	ld (ix+000h),02dh		;5098	dd 36 00 2d 	. 6 . - 
	ld (ix+010h),0ffh		;509c	dd 36 10 ff 	. 6 . . 
	ld (ix+00fh),080h		;50a0	dd 36 0f 80 	. 6 . . 
l50a4h:
	ld hl,081e4h		;50a4	21 e4 81 	! . . 
	jp 027d6h		;50a7	c3 d6 27 	. . ' 
	bit 0,(ix+001h)		;50aa	dd cb 01 46 	. . . F 
	jr nz,l50c2h		;50ae	20 12 	  . 
	set 0,(ix+001h)		;50b0	dd cb 01 c6 	. . . . 
	ld (ix+014h),004h		;50b4	dd 36 14 04 	. 6 . . 
	ld (ix+005h),010h		;50b8	dd 36 05 10 	. 6 . . 
	ld (ix+006h),010h		;50bc	dd 36 06 10 	. 6 . . 
	jr l50f5h		;50c0	18 33 	. 3 
l50c2h:
	ld a,(ix+009h)		;50c2	dd 7e 09 	. ~ . 
	or (ix+00ah)		;50c5	dd b6 0a 	. . . 
	jr nz,l50f5h		;50c8	20 2b 	  + 
	ld (ix+010h),0ffh		;50ca	dd 36 10 ff 	. 6 . . 
	ld (ix+00fh),0a0h		;50ce	dd 36 0f a0 	. 6 . . 
	set 1,(ix+001h)		;50d2	dd cb 01 ce 	. . . . 
	call sub_7d66h		;50d6	cd 66 7d 	. f } 
	call sub_7cd8h		;50d9	cd d8 7c 	. . | 
	jp nc,l556eh		;50dc	d2 6e 55 	. n U 
	ld de,00100h		;50df	11 00 01 	. . . 
	ld a,008h		;50e2	3e 08 	> . 
	call 039cch		;50e4	cd cc 39 	. . 9 
	jr nc,l50f5h		;50e7	30 0c 	0 . 
	ld (ix+000h),034h		;50e9	dd 36 00 34 	. 6 . 4 
	ld (ix+010h),000h		;50ed	dd 36 10 00 	. 6 . . 
	ld (ix+00fh),060h		;50f1	dd 36 0f 60 	. 6 . ` 
l50f5h:
	ld hl,08bd2h		;50f5	21 d2 8b 	! . . 
	jp 027d6h		;50f8	c3 d6 27 	. . ' 
	ld a,(ix+009h)		;50fb	dd 7e 09 	. ~ . 
	or (ix+00ah)		;50fe	dd b6 0a 	. . . 
	jr nz,l5122h		;5101	20 1f 	  . 
	call sub_7d66h		;5103	cd 66 7d 	. f } 
	call sub_7cd8h		;5106	cd d8 7c 	. . | 
	jp nc,l556eh		;5109	d2 6e 55 	. n U 
	ld de,00110h		;510c	11 10 01 	. . . 
	ld a,008h		;510f	3e 08 	> . 
	call 039cch		;5111	cd cc 39 	. . 9 
	jr nc,l5122h		;5114	30 0c 	0 . 
	ld (ix+000h),030h		;5116	dd 36 00 30 	. 6 . 0 
	ld (ix+010h),0ffh		;511a	dd 36 10 ff 	. 6 . . 
	ld (ix+00fh),0a0h		;511e	dd 36 0f a0 	. 6 . . 
l5122h:
	ld hl,08c4bh		;5122	21 4b 8c 	! K . 
	jp 027d6h		;5125	c3 d6 27 	. . ' 
	bit 0,(ix+001h)		;5128	dd cb 01 46 	. . . F 
	jr nz,l514bh		;512c	20 1d 	  . 
	ld (ix+005h),010h		;512e	dd 36 05 10 	. 6 . . 
	ld (ix+006h),010h		;5132	dd 36 06 10 	. 6 . . 
	ld a,(ix+009h)		;5136	dd 7e 09 	. ~ . 
	or (ix+00ah)		;5139	dd b6 0a 	. . . 
	jr nz,l51b6h		;513c	20 78 	  x 
	set 0,(ix+001h)		;513e	dd cb 01 c6 	. . . . 
	ld a,(ix+00eh)		;5142	dd 7e 0e 	. ~ . 
	ld (ix+016h),a		;5145	dd 77 16 	. w . 
	jp l51b6h		;5148	c3 b6 51 	. . Q 
l514bh:
	ld a,(ix+009h)		;514b	dd 7e 09 	. ~ . 
	or (ix+00ah)		;514e	dd b6 0a 	. . . 
	jr nz,l51b6h		;5151	20 63 	  c 
	ld (ix+010h),0ffh		;5153	dd 36 10 ff 	. 6 . . 
	ld (ix+00fh),0a0h		;5157	dd 36 0f a0 	. 6 . . 
	set 1,(ix+001h)		;515b	dd cb 01 ce 	. . . . 
	call sub_7d66h		;515f	cd 66 7d 	. f } 
	call sub_7cd8h		;5162	cd d8 7c 	. . | 
	jp nc,l556eh		;5165	d2 6e 55 	. n U 
	ld de,00100h		;5168	11 00 01 	. . . 
	ld a,008h		;516b	3e 08 	> . 
	call 039cch		;516d	cd cc 39 	. . 9 
	jr nc,l5180h		;5170	30 0e 	0 . 
	ld (ix+010h),000h		;5172	dd 36 10 00 	. 6 . . 
	ld (ix+00fh),060h		;5176	dd 36 0f 60 	. 6 . ` 
	ld (ix+000h),035h		;517a	dd 36 00 35 	. 6 . 5 
	jr l51b6h		;517e	18 36 	. 6 
l5180h:
	inc (ix+018h)		;5180	dd 34 18 	. 4 . 
	ld a,(ix+018h)		;5183	dd 7e 18 	. ~ . 
	cp 040h		;5186	fe 40 	. @ 
	jp nz,l518fh		;5188	c2 8f 51 	. . Q 
	xor a			;518b	af 	. 
	ld (ix+018h),a		;518c	dd 77 18 	. w . 
l518fh:
	ld hl,l5258h		;518f	21 58 52 	! X R 
	ld c,a			;5192	4f 	O 
	ld b,000h		;5193	06 00 	. . 
	add hl,bc			;5195	09 	. 
	ld h,(hl)			;5196	66 	f 
	ld de,(0c0b9h)		;5197	ed 5b b9 c0 	. [ . . 
	ld a,d			;519b	7a 	z 
	cpl			;519c	2f 	/ 
	inc a			;519d	3c 	< 
	ld d,a			;519e	57 	W 
	ld a,e			;519f	7b 	{ 
	cpl			;51a0	2f 	/ 
	inc a			;51a1	3c 	< 
	ld e,a			;51a2	5f 	_ 
	ld a,h			;51a3	7c 	| 
	add a,d			;51a4	82 	. 
	ld h,(ix+016h)		;51a5	dd 66 16 	. f . 
	ld l,(ix+017h)		;51a8	dd 6e 17 	. n . 
	add hl,de			;51ab	19 	. 
	ld (ix+016h),h		;51ac	dd 74 16 	. t . 
	ld (ix+017h),l		;51af	dd 75 17 	. u . 
	add a,h			;51b2	84 	. 
	ld (ix+00eh),a		;51b3	dd 77 0e 	. w . 
l51b6h:
	ld hl,083abh		;51b6	21 ab 83 	! . . 
	jp 027d6h		;51b9	c3 d6 27 	. . ' 
	ld a,(ix+009h)		;51bc	dd 7e 09 	. ~ . 
	or (ix+00ah)		;51bf	dd b6 0a 	. . . 
	jr nz,l5212h		;51c2	20 4e 	  N 
	call sub_7d66h		;51c4	cd 66 7d 	. f } 
	call sub_7cd8h		;51c7	cd d8 7c 	. . | 
	jp nc,l556eh		;51ca	d2 6e 55 	. n U 
	ld de,00118h		;51cd	11 18 01 	. . . 
	ld a,008h		;51d0	3e 08 	> . 
	call 039cch		;51d2	cd cc 39 	. . 9 
	jr nc,l51ddh		;51d5	30 06 	0 . 
	ld (ix+000h),02eh		;51d7	dd 36 00 2e 	. 6 . . 
	jr l5212h		;51db	18 35 	. 5 
l51ddh:
	inc (ix+018h)		;51dd	dd 34 18 	. 4 . 
	ld a,(ix+018h)		;51e0	dd 7e 18 	. ~ . 
	cp 040h		;51e3	fe 40 	. @ 
	jr nz,l51ebh		;51e5	20 04 	  . 
	xor a			;51e7	af 	. 
	ld (ix+018h),a		;51e8	dd 77 18 	. w . 
l51ebh:
	ld hl,l5258h		;51eb	21 58 52 	! X R 
	ld c,a			;51ee	4f 	O 
	ld b,000h		;51ef	06 00 	. . 
	add hl,bc			;51f1	09 	. 
	ld h,(hl)			;51f2	66 	f 
	ld de,(0c0b9h)		;51f3	ed 5b b9 c0 	. [ . . 
	ld a,d			;51f7	7a 	z 
	cpl			;51f8	2f 	/ 
	inc a			;51f9	3c 	< 
	ld d,a			;51fa	57 	W 
	ld a,e			;51fb	7b 	{ 
	cpl			;51fc	2f 	/ 
	inc a			;51fd	3c 	< 
	ld e,a			;51fe	5f 	_ 
	ld a,h			;51ff	7c 	| 
	add a,d			;5200	82 	. 
	ld h,(ix+016h)		;5201	dd 66 16 	. f . 
	ld l,(ix+017h)		;5204	dd 6e 17 	. n . 
	add hl,de			;5207	19 	. 
	ld (ix+016h),h		;5208	dd 74 16 	. t . 
	ld (ix+017h),l		;520b	dd 75 17 	. u . 
	add a,h			;520e	84 	. 
	ld (ix+00eh),a		;520f	dd 77 0e 	. w . 
l5212h:
	ld hl,083d8h		;5212	21 d8 83 	! . . 
	jp 027d6h		;5215	c3 d6 27 	. . ' 
l5218h:
	nop			;5218	00 	. 
	ld bc,00202h		;5219	01 02 02 	. . . 
	inc bc			;521c	03 	. 
	inc b			;521d	04 	. 
	inc b			;521e	04 	. 
	dec b			;521f	05 	. 
	ld b,006h		;5220	06 06 	. . 
	rlca			;5222	07 	. 
	rlca			;5223	07 	. 
	rlca			;5224	07 	. 
	ex af,af'			;5225	08 	. 
	ex af,af'			;5226	08 	. 
	ex af,af'			;5227	08 	. 
	ex af,af'			;5228	08 	. 
	ex af,af'			;5229	08 	. 
	ex af,af'			;522a	08 	. 
	ex af,af'			;522b	08 	. 
	rlca			;522c	07 	. 
	rlca			;522d	07 	. 
	rlca			;522e	07 	. 
	ld b,006h		;522f	06 06 	. . 
	dec b			;5231	05 	. 
	inc b			;5232	04 	. 
	inc b			;5233	04 	. 
	inc bc			;5234	03 	. 
	ld (bc),a			;5235	02 	. 
	ld (bc),a			;5236	02 	. 
	ld bc,0ff00h		;5237	01 00 ff 	. . . 
	cp 0feh		;523a	fe fe 	. . 
	defb 0fdh,0fch,0fch	;illegal sequence		;523c	fd fc fc 	. . . 
	ei			;523f	fb 	. 
	jp m,0f9fah		;5240	fa fa f9 	. . . 
	ld sp,hl			;5243	f9 	. 
	ld sp,hl			;5244	f9 	. 
	ret m			;5245	f8 	. 
	ret m			;5246	f8 	. 
	ret m			;5247	f8 	. 
	ret m			;5248	f8 	. 
	ret m			;5249	f8 	. 
	ret m			;524a	f8 	. 
	ret m			;524b	f8 	. 
	ld sp,hl			;524c	f9 	. 
	ld sp,hl			;524d	f9 	. 
	ld sp,hl			;524e	f9 	. 
	jp m,0fbfah		;524f	fa fa fb 	. . . 
	call m,0fdfch		;5252	fc fc fd 	. . . 
	cp 0feh		;5255	fe fe 	. . 
	rst 38h			;5257	ff 	. 
l5258h:
	nop			;5258	00 	. 
	ld (bc),a			;5259	02 	. 
	dec b			;525a	05 	. 
	rlca			;525b	07 	. 
	add hl,bc			;525c	09 	. 
	dec bc			;525d	0b 	. 
	dec c			;525e	0d 	. 
	rrca			;525f	0f 	. 
	ld de,01413h		;5260	11 13 14 	. . . 
	dec d			;5263	15 	. 
	ld d,017h		;5264	16 17 	. . 
	jr l5280h		;5266	18 18 	. . 
	jr l5282h		;5268	18 18 	. . 
	jr $+25		;526a	18 17 	. . 
	ld d,015h		;526c	16 15 	. . 
	inc d			;526e	14 	. 
	inc de			;526f	13 	. 
	ld de,00d0fh		;5270	11 0f 0d 	. . . 
	dec bc			;5273	0b 	. 
	add hl,bc			;5274	09 	. 
	rlca			;5275	07 	. 
	dec b			;5276	05 	. 
	ld (bc),a			;5277	02 	. 
	nop			;5278	00 	. 
	cp 0fbh		;5279	fe fb 	. . 
	ld sp,hl			;527b	f9 	. 
	rst 30h			;527c	f7 	. 
	push af			;527d	f5 	. 
	di			;527e	f3 	. 
	pop af			;527f	f1 	. 
l5280h:
	rst 28h			;5280	ef 	. 
	defb 0edh;next byte illegal after ed		;5281	ed 	. 
l5282h:
	call pe,0eaebh		;5282	ec eb ea 	. . . 
	jp (hl)			;5285	e9 	. 
	ret pe			;5286	e8 	. 
	ret pe			;5287	e8 	. 
	ret pe			;5288	e8 	. 
	ret pe			;5289	e8 	. 
	ret pe			;528a	e8 	. 
	jp (hl)			;528b	e9 	. 
	jp pe,0ecebh		;528c	ea eb ec 	. . . 
	defb 0edh;next byte illegal after ed		;528f	ed 	. 
	rst 28h			;5290	ef 	. 
	pop af			;5291	f1 	. 
	di			;5292	f3 	. 
	push af			;5293	f5 	. 
	rst 30h			;5294	f7 	. 
	ld sp,hl			;5295	f9 	. 
	ei			;5296	fb 	. 
	cp 080h		;5297	fe 80 	. . 
	rst 38h			;5299	ff 	. 
	add a,b			;529a	80 	. 
	add a,b			;529b	80 	. 
	nop			;529c	00 	. 
	add a,b			;529d	80 	. 
	nop			;529e	00 	. 
	rst 38h			;529f	ff 	. 
	add a,b			;52a0	80 	. 
	nop			;52a1	00 	. 
	nop			;52a2	00 	. 
	add a,b			;52a3	80 	. 
	add a,b			;52a4	80 	. 
	ld bc,08000h		;52a5	01 00 80 	. . . 
	rst 38h			;52a8	ff 	. 
	nop			;52a9	00 	. 
	add a,b			;52aa	80 	. 
	nop			;52ab	00 	. 
	ld b,b			;52ac	40 	@ 
	add a,b			;52ad	80 	. 
	rst 38h			;52ae	ff 	. 
	ret nz			;52af	c0 	. 
	ld a,(ix+009h)		;52b0	dd 7e 09 	. ~ . 
	or (ix+00ah)		;52b3	dd b6 0a 	. . . 
	jr nz,l52c0h		;52b6	20 08 	  . 
	ld a,(0c31ah)		;52b8	3a 1a c3 	: . . 
	cp 00fh		;52bb	fe 0f 	. . 
	jp z,l553ah		;52bd	ca 3a 55 	. : U 
l52c0h:
	bit 0,(ix+001h)		;52c0	dd cb 01 46 	. . . F 
	jr nz,l52eah		;52c4	20 24 	  $ 
	ld (ix+005h),012h		;52c6	dd 36 05 12 	. 6 . . 
	ld (ix+006h),012h		;52ca	dd 36 06 12 	. 6 . . 
	ld (ix+004h),000h		;52ce	dd 36 04 00 	. 6 . . 
	ld a,(ix+009h)		;52d2	dd 7e 09 	. ~ . 
	or (ix+00ah)		;52d5	dd b6 0a 	. . . 
	jr nz,l5311h		;52d8	20 37 	  7 
	set 0,(ix+001h)		;52da	dd cb 01 c6 	. . . . 
	ld (ix+002h),081h		;52de	dd 36 02 81 	. 6 . . 
	ld (ix+00fh),0a0h		;52e2	dd 36 0f a0 	. 6 . . 
	ld (ix+010h),0ffh		;52e6	dd 36 10 ff 	. 6 . . 
l52eah:
	call sub_7d66h		;52ea	cd 66 7d 	. f } 
	ld a,(ix+013h)		;52ed	dd 7e 13 	. ~ . 
	ld (ix+018h),a		;52f0	dd 77 18 	. w . 
	ld (ix+013h),0a8h		;52f3	dd 36 13 a8 	. 6 . . 
	call sub_7cd8h		;52f7	cd d8 7c 	. . | 
	jp nc,l54a8h		;52fa	d2 a8 54 	. . T 
	ld a,(ix+018h)		;52fd	dd 7e 18 	. ~ . 
	ld (ix+013h),a		;5300	dd 77 13 	. w . 
	ld a,(0c30ch)		;5303	3a 0c c3 	: . . 
	sub (ix+00ch)		;5306	dd 96 0c 	. . . 
	jr nc,l5320h		;5309	30 15 	0 . 
	neg		;530b	ed 44 	. D 
	cp 020h		;530d	fe 20 	.   
	jr c,l5317h		;530f	38 06 	8 . 
l5311h:
	ld hl,08a35h		;5311	21 35 8a 	! 5 . 
	jp 027d6h		;5314	c3 d6 27 	. . ' 
l5317h:
	ld (ix+000h),027h		;5317	dd 36 00 27 	. 6 . ' 
	res 0,(ix+001h)		;531b	dd cb 01 86 	. . . . 
	ret			;531f	c9 	. 
l5320h:
	res 0,(ix+001h)		;5320	dd cb 01 86 	. . . . 
	ld (ix+000h),026h		;5324	dd 36 00 26 	. 6 . & 
	ret			;5328	c9 	. 
	ld a,(ix+009h)		;5329	dd 7e 09 	. ~ . 
	or (ix+00ah)		;532c	dd b6 0a 	. . . 
	jr nz,l5339h		;532f	20 08 	  . 
	ld a,(0c31ah)		;5331	3a 1a c3 	: . . 
	cp 00fh		;5334	fe 0f 	. . 
	jp z,l553ah		;5336	ca 3a 55 	. : U 
l5339h:
	bit 0,(ix+001h)		;5339	dd cb 01 46 	. . . F 
	jr nz,l5357h		;533d	20 18 	  . 
	set 0,(ix+001h)		;533f	dd cb 01 c6 	. . . . 
	ld (ix+005h),012h		;5343	dd 36 05 12 	. 6 . . 
	ld (ix+006h),012h		;5347	dd 36 06 12 	. 6 . . 
	ld (ix+004h),000h		;534b	dd 36 04 00 	. 6 . . 
	ld (ix+00fh),060h		;534f	dd 36 0f 60 	. 6 . ` 
	ld (ix+010h),000h		;5353	dd 36 10 00 	. 6 . . 
l5357h:
	call sub_7d66h		;5357	cd 66 7d 	. f } 
	ld a,(ix+013h)		;535a	dd 7e 13 	. ~ . 
	ld (ix+018h),a		;535d	dd 77 18 	. w . 
	ld (ix+013h),0a8h		;5360	dd 36 13 a8 	. 6 . . 
	call sub_7cd8h		;5364	cd d8 7c 	. . | 
	jp nc,l54a8h		;5367	d2 a8 54 	. . T 
	ld a,(ix+018h)		;536a	dd 7e 18 	. ~ . 
	ld (ix+013h),a		;536d	dd 77 13 	. w . 
	ld a,038h		;5370	3e 38 	> 8 
	add a,(ix+00ch)		;5372	dd 86 0c 	. . . 
	ld c,a			;5375	4f 	O 
	ld a,(0c30ch)		;5376	3a 0c c3 	: . . 
	sub c			;5379	91 	. 
	jr c,l538fh		;537a	38 13 	8 . 
	cp 020h		;537c	fe 20 	.   
	jr c,l5386h		;537e	38 06 	8 . 
	ld hl,08a3fh		;5380	21 3f 8a 	! ? . 
	jp 027d6h		;5383	c3 d6 27 	. . ' 
l5386h:
	ld (ix+000h),028h		;5386	dd 36 00 28 	. 6 . ( 
	res 0,(ix+001h)		;538a	dd cb 01 86 	. . . . 
	ret			;538e	c9 	. 
l538fh:
	ld (ix+000h),025h		;538f	dd 36 00 25 	. 6 . % 
	res 0,(ix+001h)		;5393	dd cb 01 86 	. . . . 
	ret			;5397	c9 	. 
	ld a,(ix+009h)		;5398	dd 7e 09 	. ~ . 
	or (ix+00ah)		;539b	dd b6 0a 	. . . 
	jr nz,l53a8h		;539e	20 08 	  . 
	ld a,(0c31ah)		;53a0	3a 1a c3 	: . . 
	cp 00fh		;53a3	fe 0f 	. . 
	jp z,l553ah		;53a5	ca 3a 55 	. : U 
l53a8h:
	bit 0,(ix+001h)		;53a8	dd cb 01 46 	. . . F 
	jr nz,l53c8h		;53ac	20 1a 	  . 
	set 0,(ix+001h)		;53ae	dd cb 01 c6 	. . . . 
	ld (ix+005h),020h		;53b2	dd 36 05 20 	. 6 .   
	ld (ix+006h),020h		;53b6	dd 36 06 20 	. 6 .   
	ld (ix+004h),000h		;53ba	dd 36 04 00 	. 6 . . 
	ld (ix+010h),0ffh		;53be	dd 36 10 ff 	. 6 . . 
	ld (ix+00fh),0c0h		;53c2	dd 36 0f c0 	. 6 . . 
	jr l5406h		;53c6	18 3e 	. > 
l53c8h:
	ld a,(ix+009h)		;53c8	dd 7e 09 	. ~ . 
	or (ix+00ah)		;53cb	dd b6 0a 	. . . 
	jr nz,l5406h		;53ce	20 36 	  6 
	call sub_7d66h		;53d0	cd 66 7d 	. f } 
	ld a,(ix+013h)		;53d3	dd 7e 13 	. ~ . 
	ld (ix+018h),a		;53d6	dd 77 18 	. w . 
	ld (ix+013h),0a8h		;53d9	dd 36 13 a8 	. 6 . . 
	call sub_7cd8h		;53dd	cd d8 7c 	. . | 
	jp nc,l54a8h		;53e0	d2 a8 54 	. . T 
	ld a,(ix+018h)		;53e3	dd 7e 18 	. ~ . 
	ld (ix+013h),a		;53e6	dd 77 13 	. w . 
	ld a,(ix+004h)		;53e9	dd 7e 04 	. ~ . 
	or a			;53ec	b7 	. 
	jr nz,l540ch		;53ed	20 1d 	  . 
	ld a,(ix+005h)		;53ef	dd 7e 05 	. ~ . 
	cp 020h		;53f2	fe 20 	.   
	jr nz,l5406h		;53f4	20 10 	  . 
	ld a,(0c30ch)		;53f6	3a 0c c3 	: . . 
	sub (ix+00ch)		;53f9	dd 96 0c 	. . . 
	jp nc,l5320h		;53fc	d2 20 53 	.   S 
	neg		;53ff	ed 44 	. D 
	cp 020h		;5401	fe 20 	.   
	jp nc,l538fh		;5403	d2 8f 53 	. . S 
l5406h:
	ld hl,08a3ah		;5406	21 3a 8a 	! : . 
	jp 027d6h		;5409	c3 d6 27 	. . ' 
l540ch:
	ld a,(ix+005h)		;540c	dd 7e 05 	. ~ . 
	cp 020h		;540f	fe 20 	.   
	jr nz,l5406h		;5411	20 f3 	  . 
	ld a,099h		;5413	3e 99 	> . 
	ld (0c110h),a		;5415	32 10 c1 	2 . . 
	jr l5406h		;5418	18 ec 	. . 
	ld a,(ix+009h)		;541a	dd 7e 09 	. ~ . 
	or (ix+00ah)		;541d	dd b6 0a 	. . . 
	jr nz,l542ah		;5420	20 08 	  . 
	ld a,(0c31ah)		;5422	3a 1a c3 	: . . 
	cp 00fh		;5425	fe 0f 	. . 
	jp z,l553ah		;5427	ca 3a 55 	. : U 
l542ah:
	bit 0,(ix+001h)		;542a	dd cb 01 46 	. . . F 
	jr nz,l544bh		;542e	20 1b 	  . 
	set 0,(ix+001h)		;5430	dd cb 01 c6 	. . . . 
	ld (ix+005h),020h		;5434	dd 36 05 20 	. 6 .   
	ld (ix+006h),020h		;5438	dd 36 06 20 	. 6 .   
	ld (ix+004h),000h		;543c	dd 36 04 00 	. 6 . . 
	ld (ix+010h),000h		;5440	dd 36 10 00 	. 6 . . 
	ld (ix+00fh),040h		;5444	dd 36 0f 40 	. 6 . @ 
	jp l5492h		;5448	c3 92 54 	. . T 
l544bh:
	ld a,(ix+009h)		;544b	dd 7e 09 	. ~ . 
	or (ix+00ah)		;544e	dd b6 0a 	. . . 
	jp nz,l5492h		;5451	c2 92 54 	. . T 
	call sub_7d66h		;5454	cd 66 7d 	. f } 
	ld a,(ix+013h)		;5457	dd 7e 13 	. ~ . 
	ld (ix+018h),a		;545a	dd 77 18 	. w . 
	ld (ix+013h),0a8h		;545d	dd 36 13 a8 	. 6 . . 
	call sub_7cd8h		;5461	cd d8 7c 	. . | 
	jp nc,l54a8h		;5464	d2 a8 54 	. . T 
	ld a,(ix+018h)		;5467	dd 7e 18 	. ~ . 
	ld (ix+013h),a		;546a	dd 77 13 	. w . 
	ld a,(ix+004h)		;546d	dd 7e 04 	. ~ . 
	or a			;5470	b7 	. 
	jp nz,l5498h		;5471	c2 98 54 	. . T 
	ld a,(ix+005h)		;5474	dd 7e 05 	. ~ . 
	cp 020h		;5477	fe 20 	.   
	jr nz,l5492h		;5479	20 17 	  . 
	ld a,099h		;547b	3e 99 	> . 
	ld (0c110h),a		;547d	32 10 c1 	2 . . 
	ld a,038h		;5480	3e 38 	> 8 
	add a,(ix+00ch)		;5482	dd 86 0c 	. . . 
	ld c,a			;5485	4f 	O 
	ld a,(0c30ch)		;5486	3a 0c c3 	: . . 
	sub c			;5489	91 	. 
	jp c,l538fh		;548a	da 8f 53 	. . S 
	cp 020h		;548d	fe 20 	.   
	jp nc,l5320h		;548f	d2 20 53 	.   S 
l5492h:
	ld hl,08a44h		;5492	21 44 8a 	! D . 
	jp 027d6h		;5495	c3 d6 27 	. . ' 
l5498h:
	ld a,(ix+005h)		;5498	dd 7e 05 	. ~ . 
	cp 020h		;549b	fe 20 	.   
	jp nz,l5492h		;549d	c2 92 54 	. . T 
	ld a,099h		;54a0	3e 99 	> . 
	ld (0c110h),a		;54a2	32 10 c1 	2 . . 
	jp l5492h		;54a5	c3 92 54 	. . T 
l54a8h:
	ld a,(ix+000h)		;54a8	dd 7e 00 	. ~ . 
	ld (ix+01dh),a		;54ab	dd 77 1d 	. w . 
	ld a,(ix+00fh)		;54ae	dd 7e 0f 	. ~ . 
	ld (ix+01eh),a		;54b1	dd 77 1e 	. w . 
	ld a,(ix+010h)		;54b4	dd 7e 10 	. ~ . 
	ld (ix+01fh),a		;54b7	dd 77 1f 	. w . 
	ld (ix+010h),001h		;54ba	dd 36 10 01 	. 6 . . 
	ld (ix+00fh),000h		;54be	dd 36 0f 00 	. 6 . . 
	bit 7,a		;54c2	cb 7f 	.  
	jr nz,l54ceh		;54c4	20 08 	  . 
	ld (ix+010h),0ffh		;54c6	dd 36 10 ff 	. 6 . . 
	ld (ix+00fh),000h		;54ca	dd 36 0f 00 	. 6 . . 
l54ceh:
	ld (ix+000h),04ah		;54ce	dd 36 00 4a 	. 6 . J 
	ld (ix+017h),008h		;54d2	dd 36 17 08 	. 6 . . 
	inc (ix+016h)		;54d6	dd 34 16 	. 4 . 
	ld a,08bh		;54d9	3e 8b 	> . 
	ld (0c110h),a		;54db	32 10 c1 	2 . . 
	ld a,(ix+009h)		;54de	dd 7e 09 	. ~ . 
	or (ix+00ah)		;54e1	dd b6 0a 	. . . 
	jr nz,l54eeh		;54e4	20 08 	  . 
	ld a,(0c31ah)		;54e6	3a 1a c3 	: . . 
	cp 00fh		;54e9	fe 0f 	. . 
	jp z,l553ah		;54eb	ca 3a 55 	. : U 
l54eeh:
	ld a,(ix+016h)		;54ee	dd 7e 16 	. ~ . 
	cp 008h		;54f1	fe 08 	. . 
	jr nc,l5510h		;54f3	30 1b 	0 . 
	dec (ix+017h)		;54f5	dd 35 17 	. 5 . 
	ret nz			;54f8	c0 	. 
	res 0,(ix+001h)		;54f9	dd cb 01 86 	. . . . 
	ld a,(ix+01dh)		;54fd	dd 7e 1d 	. ~ . 
	ld (ix+000h),a		;5500	dd 77 00 	. w . 
	ld a,(ix+01eh)		;5503	dd 7e 1e 	. ~ . 
	ld (ix+00fh),a		;5506	dd 77 0f 	. w . 
	ld a,(ix+01fh)		;5509	dd 7e 1f 	. ~ . 
	ld (ix+010h),a		;550c	dd 77 10 	. w . 
	ret			;550f	c9 	. 
l5510h:
	ld a,095h		;5510	3e 95 	> . 
	ld (0c110h),a		;5512	32 10 c1 	2 . . 
	call sub_5731h		;5515	cd 31 57 	. 1 W 
	ld (ix+002h),001h		;5518	dd 36 02 01 	. 6 . . 
	res 0,(ix+001h)		;551c	dd cb 01 86 	. . . . 
	ld (ix+000h),043h		;5520	dd 36 00 43 	. 6 . C 
	ret			;5524	c9 	. 
l5525h:
	call sub_5731h		;5525	cd 31 57 	. 1 W 
	ld a,095h		;5528	3e 95 	> . 
	ld (0c110h),a		;552a	32 10 c1 	2 . . 
	ld (ix+002h),000h		;552d	dd 36 02 00 	. 6 . . 
	res 0,(ix+001h)		;5531	dd cb 01 86 	. . . . 
	ld (ix+000h),043h		;5535	dd 36 00 43 	. 6 . C 
	ret			;5539	c9 	. 
l553ah:
	ld (ix+010h),000h		;553a	dd 36 10 00 	. 6 . . 
	ld (ix+00fh),000h		;553e	dd 36 0f 00 	. 6 . . 
	ret			;5542	c9 	. 
	bit 0,(ix+001h)		;5543	dd cb 01 46 	. . . F 
	jr nz,l5564h		;5547	20 1b 	  . 
	ld (ix+005h),040h		;5549	dd 36 05 40 	. 6 . @ 
	ld (ix+006h),040h		;554d	dd 36 06 40 	. 6 . @ 
	ld a,(ix+009h)		;5551	dd 7e 09 	. ~ . 
	or (ix+00ah)		;5554	dd b6 0a 	. . . 
	jr nz,l55b6h		;5557	20 5d 	  ] 
	set 0,(ix+001h)		;5559	dd cb 01 c6 	. . . . 
	set 1,(ix+001h)		;555d	dd cb 01 ce 	. . . . 
	jp l55b6h		;5561	c3 b6 55 	. . U 
l5564h:
	call sub_7d66h		;5564	cd 66 7d 	. f } 
	call sub_7cd8h		;5567	cd d8 7c 	. . | 
	jr nc,l556eh		;556a	30 02 	0 . 
	jr l557fh		;556c	18 11 	. . 
l556eh:
	call sub_5731h		;556e	cd 31 57 	. 1 W 
	ld a,08bh		;5571	3e 8b 	> . 
	ld (0c110h),a		;5573	32 10 c1 	2 . . 
	ld (ix+000h),02bh		;5576	dd 36 00 2b 	. 6 . + 
	res 0,(ix+001h)		;557a	dd cb 01 86 	. . . . 
	ret			;557e	c9 	. 
l557fh:
	ld a,(ix+004h)		;557f	dd 7e 04 	. ~ . 
	or a			;5582	b7 	. 
	jr nz,l55b6h		;5583	20 31 	  1 
	ld a,(ix+005h)		;5585	dd 7e 05 	. ~ . 
	cp 040h		;5588	fe 40 	. @ 
	jr nz,l55b6h		;558a	20 2a 	  * 
	ld iy,0c500h		;558c	fd 21 00 c5 	. ! . . 
	ld de,00020h		;5590	11 20 00 	.   . 
	ld b,005h		;5593	06 05 	. . 
l5595h:
	ld a,(iy+000h)		;5595	fd 7e 00 	. ~ . 
	or a			;5598	b7 	. 
	jr nz,l55b2h		;5599	20 17 	  . 
	ld a,098h		;559b	3e 98 	> . 
	ld (0c110h),a		;559d	32 10 c1 	2 . . 
	ld (iy+000h),029h		;55a0	fd 36 00 29 	. 6 . ) 
	ld a,(ix+00ch)		;55a4	dd 7e 0c 	. ~ . 
	ld (iy+00ch),a		;55a7	fd 77 0c 	. w . 
	ld a,(ix+00eh)		;55aa	dd 7e 0e 	. ~ . 
	ld (iy+00eh),a		;55ad	fd 77 0e 	. w . 
	jr l55b6h		;55b0	18 04 	. . 
l55b2h:
	add iy,de		;55b2	fd 19 	. . 
	djnz l5595h		;55b4	10 df 	. . 
l55b6h:
	ld hl,084edh		;55b6	21 ed 84 	! . . 
	jp 027d6h		;55b9	c3 d6 27 	. . ' 
	bit 0,(ix+001h)		;55bc	dd cb 01 46 	. . . F 
	jr nz,l55e6h		;55c0	20 24 	  $ 
	set 0,(ix+001h)		;55c2	dd cb 01 c6 	. . . . 
	ld (ix+014h),012h		;55c6	dd 36 14 12 	. 6 . . 
	call sub_4d76h		;55ca	cd 76 4d 	. v M 
	ld (ix+00fh),l		;55cd	dd 75 0f 	. u . 
	ld (ix+010h),h		;55d0	dd 74 10 	. t . 
	ld (ix+011h),e		;55d3	dd 73 11 	. s . 
	ld (ix+012h),d		;55d6	dd 72 12 	. r . 
	set 1,(ix+001h)		;55d9	dd cb 01 ce 	. . . . 
	ld (ix+007h),01dh		;55dd	dd 36 07 1d 	. 6 . . 
	ld (ix+008h),085h		;55e1	dd 36 08 85 	. 6 . . 
	ret			;55e5	c9 	. 
l55e6h:
	ld a,(ix+009h)		;55e6	dd 7e 09 	. ~ . 
	or (ix+00ah)		;55e9	dd b6 0a 	. . . 
	jp nz,02752h		;55ec	c2 52 27 	. R ' 
	jp sub_7d66h		;55ef	c3 66 7d 	. f } 
	bit 0,(ix+001h)		;55f2	dd cb 01 46 	. . . F 
	jr nz,l561ch		;55f6	20 24 	  $ 
	set 0,(ix+001h)		;55f8	dd cb 01 c6 	. . . . 
	set 1,(ix+001h)		;55fc	dd cb 01 ce 	. . . . 
	ld (ix+004h),000h		;5600	dd 36 04 00 	. 6 . . 
	ld (ix+005h),010h		;5604	dd 36 05 10 	. 6 . . 
	ld (ix+006h),010h		;5608	dd 36 06 10 	. 6 . . 
	ld (ix+010h),000h		;560c	dd 36 10 00 	. 6 . . 
	ld (ix+00fh),000h		;5610	dd 36 0f 00 	. 6 . . 
	ld (ix+012h),000h		;5614	dd 36 12 00 	. 6 . . 
	ld (ix+011h),000h		;5618	dd 36 11 00 	. 6 . . 
l561ch:
	ld a,(ix+009h)		;561c	dd 7e 09 	. ~ . 
	or (ix+00ah)		;561f	dd b6 0a 	. . . 
	jp nz,02752h		;5622	c2 52 27 	. R ' 
	ld a,(ix+004h)		;5625	dd 7e 04 	. ~ . 
	cp 003h		;5628	fe 03 	. . 
	jr nz,l5633h		;562a	20 07 	  . 
	ld a,(ix+005h)		;562c	dd 7e 05 	. ~ . 
	cp 001h		;562f	fe 01 	. . 
	jr z,l5639h		;5631	28 06 	( . 
l5633h:
	ld hl,08175h		;5633	21 75 81 	! u . 
	jp 027d6h		;5636	c3 d6 27 	. . ' 
l5639h:
	xor a			;5639	af 	. 
	ld (0c07fh),a		;563a	32 7f c0 	2  . 
	ld a,(ix+002h)		;563d	dd 7e 02 	. ~ . 
	or a			;5640	b7 	. 
	jp z,02752h		;5641	ca 52 27 	. R ' 
	res 0,(ix+001h)		;5644	dd cb 01 86 	. . . . 
	ld (ix+000h),044h		;5648	dd 36 00 44 	. 6 . D 
	ret			;564c	c9 	. 
	bit 0,(ix+001h)		;564d	dd cb 01 46 	. . . F 
	jr nz,l5677h		;5651	20 24 	  $ 
	set 0,(ix+001h)		;5653	dd cb 01 c6 	. . . . 
	set 1,(ix+001h)		;5657	dd cb 01 ce 	. . . . 
	ld (ix+004h),000h		;565b	dd 36 04 00 	. 6 . . 
	ld (ix+005h),010h		;565f	dd 36 05 10 	. 6 . . 
	ld (ix+006h),010h		;5663	dd 36 06 10 	. 6 . . 
	ld (ix+010h),000h		;5667	dd 36 10 00 	. 6 . . 
	ld (ix+00fh),000h		;566b	dd 36 0f 00 	. 6 . . 
	ld (ix+012h),000h		;566f	dd 36 12 00 	. 6 . . 
	ld (ix+011h),000h		;5673	dd 36 11 00 	. 6 . . 
l5677h:
	ld a,(ix+009h)		;5677	dd 7e 09 	. ~ . 
	or (ix+00ah)		;567a	dd b6 0a 	. . . 
	jp nz,02752h		;567d	c2 52 27 	. R ' 
	ld a,(ix+004h)		;5680	dd 7e 04 	. ~ . 
	cp 001h		;5683	fe 01 	. . 
	jr nz,l568fh		;5685	20 08 	  . 
	ld a,(ix+005h)		;5687	dd 7e 05 	. ~ . 
	cp 001h		;568a	fe 01 	. . 
	jp z,02752h		;568c	ca 52 27 	. R ' 
l568fh:
	ld hl,08170h		;568f	21 70 81 	! p . 
	jp 027d6h		;5692	c3 d6 27 	. . ' 
	bit 0,(ix+001h)		;5695	dd cb 01 46 	. . . F 
	jr nz,l56b6h		;5699	20 1b 	  . 
	ld (ix+007h),04ch		;569b	dd 36 07 4c 	. 6 . L 
	ld (ix+008h),085h		;569f	dd 36 08 85 	. 6 . . 
	ld a,(ix+009h)		;56a3	dd 7e 09 	. ~ . 
	or (ix+00ah)		;56a6	dd b6 0a 	. . . 
	ret nz			;56a9	c0 	. 
	set 0,(ix+001h)		;56aa	dd cb 01 c6 	. . . . 
	set 1,(ix+001h)		;56ae	dd cb 01 ce 	. . . . 
	ld (ix+017h),010h		;56b2	dd 36 17 10 	. 6 . . 
l56b6h:
	ld a,(ix+009h)		;56b6	dd 7e 09 	. ~ . 
	or (ix+00ah)		;56b9	dd b6 0a 	. . . 
	ret nz			;56bc	c0 	. 
	call sub_7d66h		;56bd	cd 66 7d 	. f } 
	call sub_7cd8h		;56c0	cd d8 7c 	. . | 
	jp nc,l556eh		;56c3	d2 6e 55 	. n U 
	dec (ix+017h)		;56c6	dd 35 17 	. 5 . 
	ret nz			;56c9	c0 	. 
	ld a,001h		;56ca	3e 01 	> . 
	ld (ix+017h),a		;56cc	dd 77 17 	. w . 
	ld de,01108h		;56cf	11 08 11 	. . . 
	call sub_7c18h		;56d2	cd 18 7c 	. . | 
	rlca			;56d5	07 	. 
	ret nc			;56d6	d0 	. 
	ld (ix+000h),037h		;56d7	dd 36 00 37 	. 6 . 7 
	ld (ix+012h),0feh		;56db	dd 36 12 fe 	. 6 . . 
	ld (ix+011h),080h		;56df	dd 36 11 80 	. 6 . . 
	ld (ix+007h),05ah		;56e3	dd 36 07 5a 	. 6 . Z 
	ld (ix+008h),085h		;56e7	dd 36 08 85 	. 6 . . 
	ret			;56eb	c9 	. 
	ld a,(ix+009h)		;56ec	dd 7e 09 	. ~ . 
	or (ix+00ah)		;56ef	dd b6 0a 	. . . 
	ret nz			;56f2	c0 	. 
	call sub_7d66h		;56f3	cd 66 7d 	. f } 
	call sub_7cd8h		;56f6	cd d8 7c 	. . | 
	jp nc,l556eh		;56f9	d2 6e 55 	. n U 
	ld h,(ix+012h)		;56fc	dd 66 12 	. f . 
	ld l,(ix+011h)		;56ff	dd 6e 11 	. n . 
	ld de,00008h		;5702	11 08 00 	. . . 
	add hl,de			;5705	19 	. 
	ld (ix+012h),h		;5706	dd 74 12 	. t . 
	ld (ix+011h),l		;5709	dd 75 11 	. u . 
	ld a,h			;570c	7c 	| 
	cp 0ffh		;570d	fe ff 	. . 
	ret z			;570f	c8 	. 
	ld de,01108h		;5710	11 08 11 	. . . 
	call sub_7c18h		;5713	cd 18 7c 	. . | 
	rlca			;5716	07 	. 
	ret nc			;5717	d0 	. 
	ld (ix+012h),000h		;5718	dd 36 12 00 	. 6 . . 
	ld (ix+011h),000h		;571c	dd 36 11 00 	. 6 . . 
	ld (ix+000h),02fh		;5720	dd 36 00 2f 	. 6 . / 
	ld (ix+007h),04ch		;5724	dd 36 07 4c 	. 6 . L 
	ld (ix+008h),085h		;5728	dd 36 08 85 	. 6 . . 
	ld (ix+017h),010h		;572c	dd 36 17 10 	. 6 . . 
	ret			;5730	c9 	. 
sub_5731h:
	ld a,(ix+000h)		;5731	dd 7e 00 	. ~ . 
	ld c,a			;5734	4f 	O 
	ld b,000h		;5735	06 00 	. . 
	ld hl,0573eh		;5737	21 3e 57 	! > W 
	add hl,bc			;573a	09 	. 
	ld l,(hl)			;573b	6e 	n 
	jp 003bah		;573c	c3 ba 03 	. . . 
	nop			;573f	00 	. 
	nop			;5740	00 	. 
	nop			;5741	00 	. 
	nop			;5742	00 	. 
	nop			;5743	00 	. 
	nop			;5744	00 	. 
	nop			;5745	00 	. 
	nop			;5746	00 	. 
	nop			;5747	00 	. 
	nop			;5748	00 	. 
	nop			;5749	00 	. 
	nop			;574a	00 	. 
	nop			;574b	00 	. 
	nop			;574c	00 	. 
	nop			;574d	00 	. 
	nop			;574e	00 	. 
	nop			;574f	00 	. 
	nop			;5750	00 	. 
	nop			;5751	00 	. 
	nop			;5752	00 	. 
	nop			;5753	00 	. 
	nop			;5754	00 	. 
	nop			;5755	00 	. 
	nop			;5756	00 	. 
	nop			;5757	00 	. 
	nop			;5758	00 	. 
	nop			;5759	00 	. 
	nop			;575a	00 	. 
	ld (de),a			;575b	12 	. 
	ld (de),a			;575c	12 	. 
	ld (de),a			;575d	12 	. 
	inc bc			;575e	03 	. 
	nop			;575f	00 	. 
	nop			;5760	00 	. 
	ld b,006h		;5761	06 06 	. . 
	add hl,bc			;5763	09 	. 
	add hl,bc			;5764	09 	. 
	add hl,bc			;5765	09 	. 
	add hl,bc			;5766	09 	. 
	nop			;5767	00 	. 
	inc bc			;5768	03 	. 
	nop			;5769	00 	. 
	nop			;576a	00 	. 
	nop			;576b	00 	. 
	inc bc			;576c	03 	. 
	nop			;576d	00 	. 
	nop			;576e	00 	. 
	inc bc			;576f	03 	. 
	inc bc			;5770	03 	. 
	nop			;5771	00 	. 
	nop			;5772	00 	. 
	inc bc			;5773	03 	. 
	nop			;5774	00 	. 
	nop			;5775	00 	. 
	nop			;5776	00 	. 
	nop			;5777	00 	. 
	nop			;5778	00 	. 
	nop			;5779	00 	. 
	nop			;577a	00 	. 
	nop			;577b	00 	. 
	nop			;577c	00 	. 
	nop			;577d	00 	. 
	nop			;577e	00 	. 
	nop			;577f	00 	. 
	nop			;5780	00 	. 
	nop			;5781	00 	. 
	nop			;5782	00 	. 
	nop			;5783	00 	. 
	ld b,006h		;5784	06 06 	. . 
	ld b,006h		;5786	06 06 	. . 
	add hl,bc			;5788	09 	. 
	nop			;5789	00 	. 
	nop			;578a	00 	. 
	nop			;578b	00 	. 
	add hl,bc			;578c	09 	. 
	nop			;578d	00 	. 
	nop			;578e	00 	. 
	nop			;578f	00 	. 
	nop			;5790	00 	. 
	nop			;5791	00 	. 
	nop			;5792	00 	. 
	inc bc			;5793	03 	. 
	nop			;5794	00 	. 
	nop			;5795	00 	. 
	nop			;5796	00 	. 
	bit 0,(ix+001h)		;5797	dd cb 01 46 	. . . F 
	jr nz,l57b5h		;579b	20 18 	  . 
	ld (ix+005h),010h		;579d	dd 36 05 10 	. 6 . . 
	ld (ix+006h),010h		;57a1	dd 36 06 10 	. 6 . . 
	ld a,(ix+009h)		;57a5	dd 7e 09 	. ~ . 
	or (ix+00ah)		;57a8	dd b6 0a 	. . . 
	jr nz,l580eh		;57ab	20 61 	  a 
	set 0,(ix+001h)		;57ad	dd cb 01 c6 	. . . . 
	set 1,(ix+001h)		;57b1	dd cb 01 ce 	. . . . 
l57b5h:
	call sub_7d66h		;57b5	cd 66 7d 	. f } 
	call sub_7cd8h		;57b8	cd d8 7c 	. . | 
	jp nc,l556eh		;57bb	d2 6e 55 	. n U 
	ld a,(ix+018h)		;57be	dd 7e 18 	. ~ . 
	or a			;57c1	b7 	. 
	jr nz,l57f6h		;57c2	20 32 	  2 
	ld (ix+012h),000h		;57c4	dd 36 12 00 	. 6 . . 
	ld (ix+011h),080h		;57c8	dd 36 11 80 	. 6 . . 
	inc (ix+017h)		;57cc	dd 34 17 	. 4 . 
	ld a,(ix+017h)		;57cf	dd 7e 17 	. ~ . 
	cp 030h		;57d2	fe 30 	. 0 
	jr c,l580eh		;57d4	38 38 	8 8 
	inc (ix+016h)		;57d6	dd 34 16 	. 4 . 
	ld a,(ix+016h)		;57d9	dd 7e 16 	. ~ . 
	cp 002h		;57dc	fe 02 	. . 
	jr z,l582eh		;57de	28 4e 	( N 
	ld a,(ix+00eh)		;57e0	dd 7e 0e 	. ~ . 
	ld (ix+003h),a		;57e3	dd 77 03 	. w . 
	ld (ix+012h),000h		;57e6	dd 36 12 00 	. 6 . . 
	ld (ix+011h),000h		;57ea	dd 36 11 00 	. 6 . . 
	ld (ix+010h),0ffh		;57ee	dd 36 10 ff 	. 6 . . 
	ld (ix+00fh),080h		;57f2	dd 36 0f 80 	. 6 . . 
l57f6h:
	inc (ix+018h)		;57f6	dd 34 18 	. 4 . 
	ld a,(ix+018h)		;57f9	dd 7e 18 	. ~ . 
	cp 040h		;57fc	fe 40 	. @ 
	jr z,l5814h		;57fe	28 14 	( . 
	ld c,a			;5800	4f 	O 
	ld b,000h		;5801	06 00 	. . 
	ld hl,l5218h		;5803	21 18 52 	! . R 
	add hl,bc			;5806	09 	. 
	ld a,(hl)			;5807	7e 	~ 
	add a,(ix+003h)		;5808	dd 86 03 	. . . 
	ld (ix+00eh),a		;580b	dd 77 0e 	. w . 
l580eh:
	ld hl,08bf3h		;580e	21 f3 8b 	! . . 
	jp 027d6h		;5811	c3 d6 27 	. . ' 
l5814h:
	ld (ix+010h),000h		;5814	dd 36 10 00 	. 6 . . 
	ld (ix+00fh),000h		;5818	dd 36 0f 00 	. 6 . . 
	ld (ix+012h),000h		;581c	dd 36 12 00 	. 6 . . 
	ld (ix+011h),080h		;5820	dd 36 11 80 	. 6 . . 
	ld (ix+017h),000h		;5824	dd 36 17 00 	. 6 . . 
	ld (ix+018h),000h		;5828	dd 36 18 00 	. 6 . . 
	jr l580eh		;582c	18 e0 	. . 
l582eh:
	ld (ix+000h),032h		;582e	dd 36 00 32 	. 6 . 2 
	ld (ix+012h),0ffh		;5832	dd 36 12 ff 	. 6 . . 
	ld (ix+011h),080h		;5836	dd 36 11 80 	. 6 . . 
	ld (ix+016h),000h		;583a	dd 36 16 00 	. 6 . . 
	ld (ix+017h),000h		;583e	dd 36 17 00 	. 6 . . 
	ld (ix+018h),0ffh		;5842	dd 36 18 ff 	. 6 . . 
	ld hl,08bf3h		;5846	21 f3 8b 	! . . 
	jp 027d6h		;5849	c3 d6 27 	. . ' 
	call sub_7d66h		;584c	cd 66 7d 	. f } 
	call sub_7cd8h		;584f	cd d8 7c 	. . | 
	jp nc,l556eh		;5852	d2 6e 55 	. n U 
	ld a,(ix+018h)		;5855	dd 7e 18 	. ~ . 
	cp 0ffh		;5858	fe ff 	. . 
	jr nz,l5884h		;585a	20 28 	  ( 
	inc (ix+017h)		;585c	dd 34 17 	. 4 . 
	ld a,(ix+017h)		;585f	dd 7e 17 	. ~ . 
	cp 030h		;5862	fe 30 	. 0 
	jr c,l589bh		;5864	38 35 	8 5 
	inc (ix+016h)		;5866	dd 34 16 	. 4 . 
	ld a,(ix+016h)		;5869	dd 7e 16 	. ~ . 
	cp 002h		;586c	fe 02 	. . 
	jr z,l58bbh		;586e	28 4b 	( K 
	ld (ix+018h),040h		;5870	dd 36 18 40 	. 6 . @ 
	ld (ix+012h),000h		;5874	dd 36 12 00 	. 6 . . 
	ld (ix+011h),000h		;5878	dd 36 11 00 	. 6 . . 
	ld (ix+010h),000h		;587c	dd 36 10 00 	. 6 . . 
	ld (ix+00fh),080h		;5880	dd 36 0f 80 	. 6 . . 
l5884h:
	dec (ix+018h)		;5884	dd 35 18 	. 5 . 
	ld a,(ix+018h)		;5887	dd 7e 18 	. ~ . 
	or a			;588a	b7 	. 
	jr z,l58a1h		;588b	28 14 	( . 
	ld c,a			;588d	4f 	O 
	ld b,000h		;588e	06 00 	. . 
	ld hl,l5218h		;5890	21 18 52 	! . R 
	add hl,bc			;5893	09 	. 
	ld a,(hl)			;5894	7e 	~ 
	add a,(ix+003h)		;5895	dd 86 03 	. . . 
	ld (ix+00eh),a		;5898	dd 77 0e 	. w . 
l589bh:
	ld hl,08bf3h		;589b	21 f3 8b 	! . . 
	jp 027d6h		;589e	c3 d6 27 	. . ' 
l58a1h:
	ld (ix+010h),000h		;58a1	dd 36 10 00 	. 6 . . 
	ld (ix+00fh),000h		;58a5	dd 36 0f 00 	. 6 . . 
	ld (ix+012h),0ffh		;58a9	dd 36 12 ff 	. 6 . . 
	ld (ix+011h),080h		;58ad	dd 36 11 80 	. 6 . . 
	ld (ix+017h),000h		;58b1	dd 36 17 00 	. 6 . . 
	ld (ix+018h),0ffh		;58b5	dd 36 18 ff 	. 6 . . 
	jr l589bh		;58b9	18 e0 	. . 
l58bbh:
	ld (ix+000h),031h		;58bb	dd 36 00 31 	. 6 . 1 
	ld (ix+016h),000h		;58bf	dd 36 16 00 	. 6 . . 
	ld (ix+017h),000h		;58c3	dd 36 17 00 	. 6 . . 
	ld (ix+018h),000h		;58c7	dd 36 18 00 	. 6 . . 
	ld hl,08bf3h		;58cb	21 f3 8b 	! . . 
	jp 027d6h		;58ce	c3 d6 27 	. . ' 
	bit 0,(ix+001h)		;58d1	dd cb 01 46 	. . . F 
	jr nz,l5934h		;58d5	20 5d 	  ] 
	set 0,(ix+001h)		;58d7	dd cb 01 c6 	. . . . 
	set 1,(ix+001h)		;58db	dd cb 01 ce 	. . . . 
	ld (ix+010h),0ffh		;58df	dd 36 10 ff 	. 6 . . 
	ld (ix+00fh),080h		;58e3	dd 36 0f 80 	. 6 . . 
	ld (ix+012h),0ffh		;58e7	dd 36 12 ff 	. 6 . . 
	ld (ix+011h),080h		;58eb	dd 36 11 80 	. 6 . . 
	ld (ix+005h),008h		;58ef	dd 36 05 08 	. 6 . . 
	ld (ix+006h),008h		;58f3	dd 36 06 08 	. 6 . . 
	ld a,(ix+018h)		;58f7	dd 7e 18 	. ~ . 
	ld de,00020h		;58fa	11 20 00 	.   . 
	ld iy,0c5e0h		;58fd	fd 21 e0 c5 	. ! . . 
	ld (iy+000h),039h		;5901	fd 36 00 39 	. 6 . 9 
	ld (iy+018h),a		;5905	fd 77 18 	. w . 
	res 0,(iy+001h)		;5908	fd cb 01 86 	. . . . 
	set 1,(iy+001h)		;590c	fd cb 01 ce 	. . . . 
	add iy,de		;5910	fd 19 	. . 
	ld (iy+000h),03ah		;5912	fd 36 00 3a 	. 6 . : 
	ld (iy+018h),a		;5916	fd 77 18 	. w . 
	res 0,(iy+001h)		;5919	fd cb 01 86 	. . . . 
	set 1,(iy+001h)		;591d	fd cb 01 ce 	. . . . 
	add iy,de		;5921	fd 19 	. . 
	ld (iy+000h),03bh		;5923	fd 36 00 3b 	. 6 . ; 
	ld (iy+018h),a		;5927	fd 77 18 	. w . 
	res 0,(iy+001h)		;592a	fd cb 01 86 	. . . . 
	set 1,(iy+001h)		;592e	fd cb 01 ce 	. . . . 
	jr l5955h		;5932	18 21 	. ! 
l5934h:
	ld a,(ix+00ch)		;5934	dd 7e 0c 	. ~ . 
	cp 0f8h		;5937	fe f8 	. . 
	jp nc,02752h		;5939	d2 52 27 	. R ' 
	ld a,(ix+009h)		;593c	dd 7e 09 	. ~ . 
	or (ix+00ah)		;593f	dd b6 0a 	. . . 
	jp nz,02752h		;5942	c2 52 27 	. R ' 
	ld h,(ix+012h)		;5945	dd 66 12 	. f . 
	ld l,(ix+011h)		;5948	dd 6e 11 	. n . 
	ld de,00030h		;594b	11 30 00 	. 0 . 
	add hl,de			;594e	19 	. 
	ld (ix+012h),h		;594f	dd 74 12 	. t . 
	ld (ix+011h),l		;5952	dd 75 11 	. u . 
l5955h:
	ld a,(ix+018h)		;5955	dd 7e 18 	. ~ . 
	ld hl,l5d55h		;5958	21 55 5d 	! U ] 
	rst 10h			;595b	d7 	. 
	jp 027d6h		;595c	c3 d6 27 	. . ' 
	bit 0,(ix+001h)		;595f	dd cb 01 46 	. . . F 
	jr nz,l5934h		;5963	20 cf 	  . 
	set 0,(ix+001h)		;5965	dd cb 01 c6 	. . . . 
	ld a,(0c5cch)		;5969	3a cc c5 	: . . 
	ld (ix+00ch),a		;596c	dd 77 0c 	. w . 
	ld a,(0c5ceh)		;596f	3a ce c5 	: . . 
	add a,008h		;5972	c6 08 	. . 
	ld (ix+00eh),a		;5974	dd 77 0e 	. w . 
	ld (ix+010h),0ffh		;5977	dd 36 10 ff 	. 6 . . 
	ld (ix+00fh),080h		;597b	dd 36 0f 80 	. 6 . . 
	ld (ix+012h),0ffh		;597f	dd 36 12 ff 	. 6 . . 
	ld (ix+011h),080h		;5983	dd 36 11 80 	. 6 . . 
	ld (ix+005h),008h		;5987	dd 36 05 08 	. 6 . . 
	ld (ix+006h),008h		;598b	dd 36 06 08 	. 6 . . 
	jr l5934h		;598f	18 a3 	. . 
	bit 0,(ix+001h)		;5991	dd cb 01 46 	. . . F 
	jr nz,l5934h		;5995	20 9d 	  . 
	set 0,(ix+001h)		;5997	dd cb 01 c6 	. . . . 
	ld a,(0c5cch)		;599b	3a cc c5 	: . . 
	add a,008h		;599e	c6 08 	. . 
	ld (ix+00ch),a		;59a0	dd 77 0c 	. w . 
	ld a,(0c5ceh)		;59a3	3a ce c5 	: . . 
	ld (ix+00eh),a		;59a6	dd 77 0e 	. w . 
	ld (ix+010h),000h		;59a9	dd 36 10 00 	. 6 . . 
	ld (ix+00fh),080h		;59ad	dd 36 0f 80 	. 6 . . 
	ld (ix+012h),0ffh		;59b1	dd 36 12 ff 	. 6 . . 
	ld (ix+011h),080h		;59b5	dd 36 11 80 	. 6 . . 
	ld (ix+005h),008h		;59b9	dd 36 05 08 	. 6 . . 
	ld (ix+006h),008h		;59bd	dd 36 06 08 	. 6 . . 
	jp l5934h		;59c1	c3 34 59 	. 4 Y 
	bit 0,(ix+001h)		;59c4	dd cb 01 46 	. . . F 
	jp nz,l5934h		;59c8	c2 34 59 	. 4 Y 
	set 0,(ix+001h)		;59cb	dd cb 01 c6 	. . . . 
	ld a,(0c5cch)		;59cf	3a cc c5 	: . . 
	add a,008h		;59d2	c6 08 	. . 
	ld (ix+00ch),a		;59d4	dd 77 0c 	. w . 
	ld a,(0c5ceh)		;59d7	3a ce c5 	: . . 
	add a,008h		;59da	c6 08 	. . 
	ld (ix+00eh),a		;59dc	dd 77 0e 	. w . 
	ld (ix+010h),000h		;59df	dd 36 10 00 	. 6 . . 
	ld (ix+00fh),080h		;59e3	dd 36 0f 80 	. 6 . . 
	ld (ix+012h),0ffh		;59e7	dd 36 12 ff 	. 6 . . 
	ld (ix+011h),080h		;59eb	dd 36 11 80 	. 6 . . 
	ld (ix+005h),008h		;59ef	dd 36 05 08 	. 6 . . 
	ld (ix+006h),008h		;59f3	dd 36 06 08 	. 6 . . 
	jp l5934h		;59f7	c3 34 59 	. 4 Y 
	bit 0,(ix+001h)		;59fa	dd cb 01 46 	. . . F 
	jr nz,l5a37h		;59fe	20 37 	  7 
	set 0,(ix+001h)		;5a00	dd cb 01 c6 	. . . . 
	ld (ix+00fh),000h		;5a04	dd 36 0f 00 	. 6 . . 
	ld (ix+010h),000h		;5a08	dd 36 10 00 	. 6 . . 
	ld (ix+011h),000h		;5a0c	dd 36 11 00 	. 6 . . 
	ld (ix+012h),000h		;5a10	dd 36 12 00 	. 6 . . 
	ld (ix+017h),0f0h		;5a14	dd 36 17 f0 	. 6 . . 
	ld (ix+007h),059h		;5a18	dd 36 07 59 	. 6 . Y 
	ld (ix+008h),083h		;5a1c	dd 36 08 83 	. 6 . . 
	ld (ix+016h),003h		;5a20	dd 36 16 03 	. 6 . . 
	ld a,(ix+018h)		;5a24	dd 7e 18 	. ~ . 
	cp 004h		;5a27	fe 04 	. . 
	ret c			;5a29	d8 	. 
	ld (ix+007h),067h		;5a2a	dd 36 07 67 	. 6 . g 
	ld (ix+008h),083h		;5a2e	dd 36 08 83 	. 6 . . 
	ld (ix+016h),000h		;5a32	dd 36 16 00 	. 6 . . 
	ret			;5a36	c9 	. 
l5a37h:
	ld a,(ix+009h)		;5a37	dd 7e 09 	. ~ . 
	or (ix+00ah)		;5a3a	dd b6 0a 	. . . 
	jp nz,02752h		;5a3d	c2 52 27 	. R ' 
	ld iy,0c300h		;5a40	fd 21 00 c3 	. ! . . 
	call sub_7c8fh		;5a44	cd 8f 7c 	. . | 
	jp c,l5a58h		;5a47	da 58 5a 	. X Z 
	ld l,(ix+016h)		;5a4a	dd 6e 16 	. n . 
	call 0039ch		;5a4d	cd 9c 03 	. . . 
	ld a,08eh		;5a50	3e 8e 	> . 
	ld (0c110h),a		;5a52	32 10 c1 	2 . . 
	jp 02752h		;5a55	c3 52 27 	. R ' 
l5a58h:
	dec (ix+017h)		;5a58	dd 35 17 	. 5 . 
	jp z,02752h		;5a5b	ca 52 27 	. R ' 
	ret			;5a5e	c9 	. 
	bit 0,(ix+001h)		;5a5f	dd cb 01 46 	. . . F 
	jr nz,l5a86h		;5a63	20 21 	  ! 
	set 0,(ix+001h)		;5a65	dd cb 01 c6 	. . . . 
	ld (ix+017h),0f0h		;5a69	dd 36 17 f0 	. 6 . . 
	ld (ix+007h),00eh		;5a6d	dd 36 07 0e 	. 6 . . 
	ld (ix+008h),08ch		;5a71	dd 36 08 8c 	. 6 . . 
	ld (ix+00fh),000h		;5a75	dd 36 0f 00 	. 6 . . 
	ld (ix+010h),000h		;5a79	dd 36 10 00 	. 6 . . 
	ld (ix+011h),000h		;5a7d	dd 36 11 00 	. 6 . . 
	ld (ix+012h),000h		;5a81	dd 36 12 00 	. 6 . . 
	ret			;5a85	c9 	. 
l5a86h:
	ld a,(ix+009h)		;5a86	dd 7e 09 	. ~ . 
	or (ix+00ah)		;5a89	dd b6 0a 	. . . 
	jp nz,02752h		;5a8c	c2 52 27 	. R ' 
	ld iy,0c300h		;5a8f	fd 21 00 c3 	. ! . . 
	call sub_7c8fh		;5a93	cd 8f 7c 	. . | 
	jr c,l5aa8h		;5a96	38 10 	8 . 
	ld a,08fh		;5a98	3e 8f 	> . 
	ld (0c110h),a		;5a9a	32 10 c1 	2 . . 
	ld hl,0c025h		;5a9d	21 25 c0 	! % . 
	ld a,(hl)			;5aa0	7e 	~ 
	add a,001h		;5aa1	c6 01 	. . 
	daa			;5aa3	27 	' 
	ld (hl),a			;5aa4	77 	w 
	jp 02752h		;5aa5	c3 52 27 	. R ' 
l5aa8h:
	dec (ix+017h)		;5aa8	dd 35 17 	. 5 . 
	jp z,02752h		;5aab	ca 52 27 	. R ' 
	ret			;5aae	c9 	. 
	bit 0,(ix+001h)		;5aaf	dd cb 01 46 	. . . F 
	jr nz,l5ad6h		;5ab3	20 21 	  ! 
	set 0,(ix+001h)		;5ab5	dd cb 01 c6 	. . . . 
	ld (ix+017h),0f0h		;5ab9	dd 36 17 f0 	. 6 . . 
	ld (ix+007h),01ch		;5abd	dd 36 07 1c 	. 6 . . 
	ld (ix+008h),08ch		;5ac1	dd 36 08 8c 	. 6 . . 
	ld (ix+00fh),000h		;5ac5	dd 36 0f 00 	. 6 . . 
	ld (ix+010h),000h		;5ac9	dd 36 10 00 	. 6 . . 
	ld (ix+011h),000h		;5acd	dd 36 11 00 	. 6 . . 
	ld (ix+012h),000h		;5ad1	dd 36 12 00 	. 6 . . 
	ret			;5ad5	c9 	. 
l5ad6h:
	ld a,(ix+009h)		;5ad6	dd 7e 09 	. ~ . 
	or (ix+00ah)		;5ad9	dd b6 0a 	. . . 
	jp nz,02752h		;5adc	c2 52 27 	. R ' 
	ld iy,0c300h		;5adf	fd 21 00 c3 	. ! . . 
	call sub_7c8fh		;5ae3	cd 8f 7c 	. . | 
	jr c,l5af9h		;5ae6	38 11 	8 . 
	ld a,08fh		;5ae8	3e 8f 	> . 
	ld (0c110h),a		;5aea	32 10 c1 	2 . . 
	ld a,001h		;5aed	3e 01 	> . 
	ld (0c04dh),a		;5aef	32 4d c0 	2 M . 
	ld hl,0c08fh		;5af2	21 8f c0 	! . . 
	inc (hl)			;5af5	34 	4 
	jp 02752h		;5af6	c3 52 27 	. R ' 
l5af9h:
	dec (ix+017h)		;5af9	dd 35 17 	. 5 . 
	jp z,02752h		;5afc	ca 52 27 	. R ' 
	ret			;5aff	c9 	. 
	bit 0,(ix+001h)		;5b00	dd cb 01 46 	. . . F 
	jr nz,l5b16h		;5b04	20 10 	  . 
	set 0,(ix+001h)		;5b06	dd cb 01 c6 	. . . . 
	ld (ix+018h),080h		;5b0a	dd 36 18 80 	. 6 . . 
	ld (ix+005h),018h		;5b0e	dd 36 05 18 	. 6 . . 
	ld (ix+006h),018h		;5b12	dd 36 06 18 	. 6 . . 
l5b16h:
	ld a,(ix+009h)		;5b16	dd 7e 09 	. ~ . 
	or (ix+00ah)		;5b19	dd b6 0a 	. . . 
	jp nz,02752h		;5b1c	c2 52 27 	. R ' 
	bit 1,(ix+001h)		;5b1f	dd cb 01 4e 	. . . N 
	jp nz,l5b2fh		;5b23	c2 2f 5b 	. / [ 
	dec (ix+018h)		;5b26	dd 35 18 	. 5 . 
	jr nz,l5b53h		;5b29	20 28 	  ( 
	set 1,(ix+001h)		;5b2b	dd cb 01 ce 	. . . . 
l5b2fh:
	ld a,(0c31ah)		;5b2f	3a 1a c3 	: . . 
	cp 00fh		;5b32	fe 0f 	. . 
	ret z			;5b34	c8 	. 
	call sub_7d66h		;5b35	cd 66 7d 	. f } 
	call sub_4d76h		;5b38	cd 76 4d 	. v M 
	ld (ix+010h),h		;5b3b	dd 74 10 	. t . 
	ld (ix+00fh),l		;5b3e	dd 75 0f 	. u . 
	ld (ix+012h),d		;5b41	dd 72 12 	. r . 
	ld (ix+011h),e		;5b44	dd 73 11 	. s . 
	ld hl,08c6ch		;5b47	21 6c 8c 	! l . 
	ld a,(0c30ch)		;5b4a	3a 0c c3 	: . . 
	cp (ix+00ch)		;5b4d	dd be 0c 	. . . 
	jp nc,027d6h		;5b50	d2 d6 27 	. . ' 
l5b53h:
	ld hl,08c2ah		;5b53	21 2a 8c 	! * . 
	jp 027d6h		;5b56	c3 d6 27 	. . ' 
l5b59h:
	ld iy,0c640h		;5b59	fd 21 40 c6 	. ! @ . 
	ld a,(iy+000h)		;5b5d	fd 7e 00 	. ~ . 
	or a			;5b60	b7 	. 
	jr z,l5b79h		;5b61	28 16 	( . 
	ld iy,0c660h		;5b63	fd 21 60 c6 	. ! ` . 
	ld a,(iy+000h)		;5b67	fd 7e 00 	. ~ . 
	or a			;5b6a	b7 	. 
	jr z,l5b79h		;5b6b	28 0c 	( . 
	ld a,(0c657h)		;5b6d	3a 57 c6 	: W . 
	cp (iy+017h)		;5b70	fd be 17 	. . . 
	jr nc,l5b79h		;5b73	30 04 	0 . 
	ld iy,0c640h		;5b75	fd 21 40 c6 	. ! @ . 
l5b79h:
	ld a,r		;5b79	ed 5f 	. _ 
	and 007h		;5b7b	e6 07 	. . 
	ld (iy+018h),a		;5b7d	fd 77 18 	. w . 
	ld (iy+00eh),d		;5b80	fd 72 0e 	. r . 
	ld (iy+00ch),e		;5b83	fd 73 0c 	. s . 
	ld (iy+000h),c		;5b86	fd 71 00 	. q . 
	res 0,(iy+001h)		;5b89	fd cb 01 86 	. . . . 
	ld a,(0c0afh)		;5b8d	3a af c0 	: . . 
	ld (iy+00bh),a		;5b90	fd 77 0b 	. w . 
	ld a,(0c0bdh)		;5b93	3a bd c0 	: . . 
	ld (iy+00dh),a		;5b96	fd 77 0d 	. w . 
	ret			;5b99	c9 	. 
	bit 0,(ix+001h)		;5b9a	dd cb 01 46 	. . . F 
	jr nz,l5badh		;5b9e	20 0d 	  . 
	set 0,(ix+001h)		;5ba0	dd cb 01 c6 	. . . . 
	ld (ix+007h),0c7h		;5ba4	dd 36 07 c7 	. 6 . . 
	ld (ix+008h),08ch		;5ba8	dd 36 08 8c 	. 6 . . 
	ret			;5bac	c9 	. 
l5badh:
	ld a,(ix+009h)		;5bad	dd 7e 09 	. ~ . 
	or (ix+00ah)		;5bb0	dd b6 0a 	. . . 
	ret nz			;5bb3	c0 	. 
	ld iy,0c300h		;5bb4	fd 21 00 c3 	. ! . . 
	call sub_7c8fh		;5bb8	cd 8f 7c 	. . | 
	ret c			;5bbb	d8 	. 
	ld l,00ch		;5bbc	2e 0c 	. . 
	call 003bah		;5bbe	cd ba 03 	. . . 
	call 02752h		;5bc1	cd 52 27 	. R ' 
	ld a,004h		;5bc4	3e 04 	> . 
	ld (0c01fh),a		;5bc6	32 1f c0 	2 . . 
	ret			;5bc9	c9 	. 
sub_5bcah:
	ex af,af'			;5bca	08 	. 
	ld a,08ch		;5bcb	3e 8c 	> . 
	ld (0c110h),a		;5bcd	32 10 c1 	2 . . 
	ex af,af'			;5bd0	08 	. 
	ld iy,0c5c0h		;5bd1	fd 21 c0 c5 	. ! . . 
	ld (iy+000h),038h		;5bd5	fd 36 00 38 	. 6 . 8 
	ld (iy+018h),a		;5bd9	fd 77 18 	. w . 
	cp 001h		;5bdc	fe 01 	. . 
	jr nz,l5be5h		;5bde	20 05 	  . 
	ld a,0a3h		;5be0	3e a3 	> . 
	ld (0c110h),a		;5be2	32 10 c1 	2 . . 
l5be5h:
	ld (iy+00eh),d		;5be5	fd 72 0e 	. r . 
	ld (iy+00ch),e		;5be8	fd 73 0c 	. s . 
	res 0,(iy+001h)		;5beb	fd cb 01 86 	. . . . 
	ret			;5bef	c9 	. 
	ld iy,0c640h		;5bf0	fd 21 40 c6 	. ! @ . 
	ld (iy+000h),044h		;5bf4	fd 36 00 44 	. 6 . D 
	ld (iy+00eh),d		;5bf8	fd 72 0e 	. r . 
	ld (iy+00ch),e		;5bfb	fd 73 0c 	. s . 
	ret			;5bfe	c9 	. 
	bit 0,(ix+001h)		;5bff	dd cb 01 46 	. . . F 
	jr nz,l5c2eh		;5c03	20 29 	  ) 
	ld a,001h		;5c05	3e 01 	> . 
	ld (0c07fh),a		;5c07	32 7f c0 	2  . 
	ld (ix+005h),001h		;5c0a	dd 36 05 01 	. 6 . . 
	ld (ix+006h),010h		;5c0e	dd 36 06 10 	. 6 . . 
	ld (ix+017h),000h		;5c12	dd 36 17 00 	. 6 . . 
	ld a,(ix+009h)		;5c16	dd 7e 09 	. ~ . 
	or (ix+00ah)		;5c19	dd b6 0a 	. . . 
	jr nz,l5c5fh		;5c1c	20 41 	  A 
	set 0,(ix+001h)		;5c1e	dd cb 01 c6 	. . . . 
	ld (ix+002h),082h		;5c22	dd 36 02 82 	. 6 . . 
	ld (ix+010h),0ffh		;5c26	dd 36 10 ff 	. 6 . . 
	ld (ix+00fh),080h		;5c2a	dd 36 0f 80 	. 6 . . 
l5c2eh:
	ld a,(ix+00ch)		;5c2e	dd 7e 0c 	. ~ . 
	cp 018h		;5c31	fe 18 	. . 
	jr c,l5c65h		;5c33	38 30 	8 0 
	call sub_7d66h		;5c35	cd 66 7d 	. f } 
	call sub_7cd8h		;5c38	cd d8 7c 	. . | 
	jr c,l5c5fh		;5c3b	38 22 	8 " 
	inc (ix+017h)		;5c3d	dd 34 17 	. 4 . 
	ld a,(ix+017h)		;5c40	dd 7e 17 	. ~ . 
	cp 008h		;5c43	fe 08 	. . 
	jp nc,l5d44h		;5c45	d2 44 5d 	. D ] 
	ld a,08bh		;5c48	3e 8b 	> . 
	ld (0c110h),a		;5c4a	32 10 c1 	2 . . 
	ld (ix+000h),047h		;5c4d	dd 36 00 47 	. 6 . G 
	res 0,(ix+001h)		;5c51	dd cb 01 86 	. . . . 
	ld (ix+007h),058h		;5c55	dd 36 07 58 	. 6 . X 
	ld (ix+008h),084h		;5c59	dd 36 08 84 	. 6 . . 
	jr l5c69h		;5c5d	18 0a 	. . 
l5c5fh:
	ld hl,08453h		;5c5f	21 53 84 	! S . 
	jp 027d6h		;5c62	c3 d6 27 	. . ' 
l5c65h:
	ld (ix+000h),048h		;5c65	dd 36 00 48 	. 6 . H 
l5c69h:
	ld a,(ix+010h)		;5c69	dd 7e 10 	. ~ . 
	cpl			;5c6c	2f 	/ 
	ld (ix+010h),a		;5c6d	dd 77 10 	. w . 
	ld a,(ix+00fh)		;5c70	dd 7e 0f 	. ~ . 
	cpl			;5c73	2f 	/ 
	inc a			;5c74	3c 	< 
	ld (ix+00fh),a		;5c75	dd 77 0f 	. w . 
	ret			;5c78	c9 	. 
	bit 0,(ix+001h)		;5c79	dd cb 01 46 	. . . F 
	jr nz,l5c98h		;5c7d	20 19 	  . 
	set 0,(ix+001h)		;5c7f	dd cb 01 c6 	. . . . 
	ld a,(ix+017h)		;5c83	dd 7e 17 	. ~ . 
	add a,a			;5c86	87 	. 
	ld c,a			;5c87	4f 	O 
	ld b,000h		;5c88	06 00 	. . 
	ld hl,l5d44h+1		;5c8a	21 45 5d 	! E ] 
	add hl,bc			;5c8d	09 	. 
	ld a,(hl)			;5c8e	7e 	~ 
	ld (ix+018h),a		;5c8f	dd 77 18 	. w . 
	inc hl			;5c92	23 	# 
	ld a,(hl)			;5c93	7e 	~ 
	ld (ix+016h),a		;5c94	dd 77 16 	. w . 
	ret			;5c97	c9 	. 
l5c98h:
	ld a,(ix+009h)		;5c98	dd 7e 09 	. ~ . 
	or (ix+00ah)		;5c9b	dd b6 0a 	. . . 
	jr nz,l5ca4h		;5c9e	20 04 	  . 
	dec (ix+018h)		;5ca0	dd 35 18 	. 5 . 
	ret nz			;5ca3	c0 	. 
l5ca4h:
	ld (ix+000h),046h		;5ca4	dd 36 00 46 	. 6 . F 
	call l5c69h		;5ca8	cd 69 5c 	. i \ 
	ld h,(ix+010h)		;5cab	dd 66 10 	. f . 
	ld l,(ix+00fh)		;5cae	dd 6e 0f 	. n . 
	ld c,(ix+016h)		;5cb1	dd 4e 16 	. N . 
	ld b,000h		;5cb4	06 00 	. . 
	or a			;5cb6	b7 	. 
	sbc hl,bc		;5cb7	ed 42 	. B 
	ld (ix+010h),h		;5cb9	dd 74 10 	. t . 
	ld (ix+00fh),l		;5cbc	dd 75 0f 	. u . 
	ret			;5cbf	c9 	. 
	ld a,(ix+00ch)		;5cc0	dd 7e 0c 	. ~ . 
	cp 0d8h		;5cc3	fe d8 	. . 
	jr nc,l5cf8h		;5cc5	30 31 	0 1 
	call sub_7d66h		;5cc7	cd 66 7d 	. f } 
	call sub_7cd8h		;5cca	cd d8 7c 	. . | 
	jr c,l5cf2h		;5ccd	38 23 	8 # 
	inc (ix+017h)		;5ccf	dd 34 17 	. 4 . 
	ld a,(ix+017h)		;5cd2	dd 7e 17 	. ~ . 
	cp 008h		;5cd5	fe 08 	. . 
	jp nc,l5d44h		;5cd7	d2 44 5d 	. D ] 
	ld a,08bh		;5cda	3e 8b 	> . 
l5cdch:
	ld (0c110h),a		;5cdc	32 10 c1 	2 . . 
	ld (ix+000h),049h		;5cdf	dd 36 00 49 	. 6 . I 
	res 0,(ix+001h)		;5ce3	dd cb 01 86 	. . . . 
	ld (ix+007h),00ah		;5ce7	dd 36 07 0a 	. 6 . . 
	ld (ix+008h),084h		;5ceb	dd 36 08 84 	. 6 . . 
	jp l5c69h		;5cef	c3 69 5c 	. i \ 
l5cf2h:
	ld hl,08405h		;5cf2	21 05 84 	! . . 
	jp 027d6h		;5cf5	c3 d6 27 	. . ' 
l5cf8h:
	ld (ix+000h),046h		;5cf8	dd 36 00 46 	. 6 . F 
	jp l5c69h		;5cfc	c3 69 5c 	. i \ 
	bit 0,(ix+001h)		;5cff	dd cb 01 46 	. . . F 
	jr nz,l5d1eh		;5d03	20 19 	  . 
	set 0,(ix+001h)		;5d05	dd cb 01 c6 	. . . . 
	ld a,(ix+017h)		;5d09	dd 7e 17 	. ~ . 
	add a,a			;5d0c	87 	. 
	ld c,a			;5d0d	4f 	O 
	ld b,000h		;5d0e	06 00 	. . 
	ld hl,l5d44h+1		;5d10	21 45 5d 	! E ] 
	add hl,bc			;5d13	09 	. 
	ld a,(hl)			;5d14	7e 	~ 
	ld (ix+018h),a		;5d15	dd 77 18 	. w . 
	inc hl			;5d18	23 	# 
	ld a,(hl)			;5d19	7e 	~ 
	ld (ix+016h),a		;5d1a	dd 77 16 	. w . 
	ret			;5d1d	c9 	. 
l5d1eh:
	ld a,(ix+009h)		;5d1e	dd 7e 09 	. ~ . 
	or (ix+00ah)		;5d21	dd b6 0a 	. . . 
	jr nz,l5d2ah		;5d24	20 04 	  . 
	dec (ix+018h)		;5d26	dd 35 18 	. 5 . 
	ret nz			;5d29	c0 	. 
l5d2ah:
	ld (ix+000h),048h		;5d2a	dd 36 00 48 	. 6 . H 
	call l5c69h		;5d2e	cd 69 5c 	. i \ 
	ld h,(ix+010h)		;5d31	dd 66 10 	. f . 
	ld l,(ix+00fh)		;5d34	dd 6e 0f 	. n . 
	ld c,(ix+016h)		;5d37	dd 4e 16 	. N . 
	ld b,000h		;5d3a	06 00 	. . 
	add hl,bc			;5d3c	09 	. 
	ld (ix+010h),h		;5d3d	dd 74 10 	. t . 
	ld (ix+00fh),l		;5d40	dd 75 0f 	. u . 
	ret			;5d43	c9 	. 
l5d44h:
	jp l5525h		;5d44	c3 25 55 	. % U 
	ld b,b			;5d47	40 	@ 
	djnz $+58		;5d48	10 38 	. 8 
	jr nz,l5d7fh		;5d4a	20 33 	  3 
	jr nc,$+48		;5d4c	30 2e 	0 . 
	ld b,b			;5d4e	40 	@ 
	ld hl,(02750h)		;5d4f	2a 50 27 	* P ' 
	ld h,b			;5d52	60 	` 
	inc h			;5d53	24 	$ 
	ld (hl),b			;5d54	70 	p 
l5d55h:
	ld (01180h),hl		;5d55	22 80 11 	" . . 
	add a,c			;5d58	81 	. 
	jr nz,l5cdch		;5d59	20 81 	  . 
	ld (bc),a			;5d5b	02 	. 
	add a,c			;5d5c	81 	. 
	bit 0,(ix+001h)		;5d5d	dd cb 01 46 	. . . F 
	jr nz,l5d95h		;5d61	20 32 	  2 
	set 0,(ix+001h)		;5d63	dd cb 01 c6 	. . . . 
	ld (ix+005h),010h		;5d67	dd 36 05 10 	. 6 . . 
	ld (ix+006h),010h		;5d6b	dd 36 06 10 	. 6 . . 
	ld a,(ix+00ch)		;5d6f	dd 7e 0c 	. ~ . 
	ld (ix+01fh),a		;5d72	dd 77 1f 	. w . 
	ld a,(ix+00eh)		;5d75	dd 7e 0e 	. ~ . 
	ld (ix+01eh),a		;5d78	dd 77 1e 	. w . 
	ld (ix+01dh),020h		;5d7b	dd 36 1d 20 	. 6 .   
l5d7fh:
	ld (ix+01bh),000h		;5d7f	dd 36 1b 00 	. 6 . . 
	ld (ix+01ch),000h		;5d83	dd 36 1c 00 	. 6 . . 
	ld a,(ix+009h)		;5d87	dd 7e 09 	. ~ . 
	ld (ix+01ah),a		;5d8a	dd 77 1a 	. w . 
	ld a,(ix+00ah)		;5d8d	dd 7e 0a 	. ~ . 
	ld (ix+019h),a		;5d90	dd 77 19 	. w . 
	jr l5dd7h		;5d93	18 42 	. B 
l5d95h:
	ld a,(ix+009h)		;5d95	dd 7e 09 	. ~ . 
	or (ix+00ah)		;5d98	dd b6 0a 	. . . 
	jr nz,l5da0h		;5d9b	20 03 	  . 
	call sub_7d66h		;5d9d	cd 66 7d 	. f } 
l5da0h:
	ld hl,(0c0abh)		;5da0	2a ab c0 	* . . 
	ld a,h			;5da3	7c 	| 
	or l			;5da4	b5 	. 
	jr z,l5db9h		;5da5	28 12 	( . 
	ld d,(ix+01fh)		;5da7	dd 56 1f 	. V . 
	ld e,(ix+003h)		;5daa	dd 5e 03 	. ^ . 
	add hl,de			;5dad	19 	. 
	ld (ix+01fh),h		;5dae	dd 74 1f 	. t . 
	ld (ix+003h),l		;5db1	dd 75 03 	. u . 
	jr c,l5db9h		;5db4	38 03 	8 . 
	inc (ix+01ah)		;5db6	dd 34 1a 	. 4 . 
l5db9h:
	ld bc,00002h		;5db9	01 02 00 	. . . 
	ld l,(ix+01bh)		;5dbc	dd 6e 1b 	. n . 
	ld h,(ix+01ch)		;5dbf	dd 66 1c 	. f . 
	add hl,bc			;5dc2	09 	. 
	ld (ix+01bh),l		;5dc3	dd 75 1b 	. u . 
	ld (ix+01ch),h		;5dc6	dd 74 1c 	. t . 
	call 0049bh		;5dc9	cd 9b 04 	. . . 
	ld a,(ix+009h)		;5dcc	dd 7e 09 	. ~ . 
	cp 001h		;5dcf	fe 01 	. . 
	jr nz,l5dd7h		;5dd1	20 04 	  . 
	set 1,(ix+001h)		;5dd3	dd cb 01 ce 	. . . . 
l5dd7h:
	ld hl,085a6h		;5dd7	21 a6 85 	! . . 
	jp 027d6h		;5dda	c3 d6 27 	. . ' 
	bit 0,(ix+001h)		;5ddd	dd cb 01 46 	. . . F 
	jr nz,l5e05h		;5de1	20 22 	  " 
	ld a,(ix+009h)		;5de3	dd 7e 09 	. ~ . 
	or (ix+00ah)		;5de6	dd b6 0a 	. . . 
	jr nz,l5e29h		;5de9	20 3e 	  > 
	set 0,(ix+001h)		;5deb	dd cb 01 c6 	. . . . 
	set 1,(ix+001h)		;5def	dd cb 01 ce 	. . . . 
	ld (ix+005h),010h		;5df3	dd 36 05 10 	. 6 . . 
	ld (ix+006h),010h		;5df7	dd 36 06 10 	. 6 . . 
	ld (ix+00fh),080h		;5dfb	dd 36 0f 80 	. 6 . . 
	ld (ix+010h),0ffh		;5dff	dd 36 10 ff 	. 6 . . 
	jr l5e29h		;5e03	18 24 	. $ 
l5e05h:
	call sub_7d66h		;5e05	cd 66 7d 	. f } 
	ld a,(ix+003h)		;5e08	dd 7e 03 	. ~ . 
	or a			;5e0b	b7 	. 
	jr nz,l5e14h		;5e0c	20 06 	  . 
	call sub_7cd8h		;5e0e	cd d8 7c 	. . | 
	jp nc,l556eh		;5e11	d2 6e 55 	. n U 
l5e14h:
	ld de,00900h		;5e14	11 00 09 	. . . 
	call sub_7c18h		;5e17	cd 18 7c 	. . | 
	rlca			;5e1a	07 	. 
	jr nc,l5e39h		;5e1b	30 1c 	0 . 
l5e1dh:
	ld (ix+000h),03fh		;5e1d	dd 36 00 3f 	. 6 . ? 
	ld (ix+00fh),080h		;5e21	dd 36 0f 80 	. 6 . . 
	ld (ix+010h),000h		;5e25	dd 36 10 00 	. 6 . . 
l5e29h:
	ld hl,085a6h		;5e29	21 a6 85 	! . . 
	ld a,(ix+003h)		;5e2c	dd 7e 03 	. ~ . 
	or a			;5e2f	b7 	. 
	jp nz,027d6h		;5e30	c2 d6 27 	. . ' 
	ld hl,0826bh		;5e33	21 6b 82 	! k . 
	jp 027d6h		;5e36	c3 d6 27 	. . ' 
l5e39h:
	ld d,008h		;5e39	16 08 	. . 
	call sub_7c70h		;5e3b	cd 70 7c 	. p | 
	ld a,(hl)			;5e3e	7e 	~ 
	rlca			;5e3f	07 	. 
	jr c,l5e29h		;5e40	38 e7 	8 . 
	jr l5e1dh		;5e42	18 d9 	. . 
	call sub_7d66h		;5e44	cd 66 7d 	. f } 
	ld a,(ix+003h)		;5e47	dd 7e 03 	. ~ . 
	or a			;5e4a	b7 	. 
	jr nz,l5e53h		;5e4b	20 06 	  . 
	call sub_7cd8h		;5e4d	cd d8 7c 	. . | 
	jp nc,l556eh		;5e50	d2 6e 55 	. n U 
l5e53h:
	ld de,00910h		;5e53	11 10 09 	. . . 
	call sub_7c18h		;5e56	cd 18 7c 	. . | 
	rlca			;5e59	07 	. 
	jr nc,l5e78h		;5e5a	30 1c 	0 . 
l5e5ch:
	ld (ix+000h),03eh		;5e5c	dd 36 00 3e 	. 6 . > 
	ld (ix+00fh),080h		;5e60	dd 36 0f 80 	. 6 . . 
	ld (ix+010h),0ffh		;5e64	dd 36 10 ff 	. 6 . . 
l5e68h:
	ld hl,085a6h		;5e68	21 a6 85 	! . . 
	ld a,(ix+003h)		;5e6b	dd 7e 03 	. ~ . 
	or a			;5e6e	b7 	. 
	jp nz,027d6h		;5e6f	c2 d6 27 	. . ' 
	ld hl,08286h		;5e72	21 86 82 	! . . 
	jp 027d6h		;5e75	c3 d6 27 	. . ' 
l5e78h:
	ld d,008h		;5e78	16 08 	. . 
	call sub_7c70h		;5e7a	cd 70 7c 	. p | 
	ld a,(hl)			;5e7d	7e 	~ 
	rlca			;5e7e	07 	. 
	jr c,l5e68h		;5e7f	38 e7 	8 . 
	jr l5e5ch		;5e81	18 d9 	. . 
	bit 0,(ix+001h)		;5e83	dd cb 01 46 	. . . F 
	jr nz,l5eb9h		;5e87	20 30 	  0 
	ld (ix+007h),0d5h		;5e89	dd 36 07 d5 	. 6 . . 
	ld (ix+008h),085h		;5e8d	dd 36 08 85 	. 6 . . 
	ld a,(ix+009h)		;5e91	dd 7e 09 	. ~ . 
	or (ix+00ah)		;5e94	dd b6 0a 	. . . 
	ret nz			;5e97	c0 	. 
	set 0,(ix+001h)		;5e98	dd cb 01 c6 	. . . . 
	set 1,(ix+001h)		;5e9c	dd cb 01 ce 	. . . . 
	ld (ix+018h),000h		;5ea0	dd 36 18 00 	. 6 . . 
	ld (ix+010h),0ffh		;5ea4	dd 36 10 ff 	. 6 . . 
	ld (ix+00fh),000h		;5ea8	dd 36 0f 00 	. 6 . . 
	ld (ix+005h),001h		;5eac	dd 36 05 01 	. 6 . . 
	ld (ix+006h),001h		;5eb0	dd 36 06 01 	. 6 . . 
	ld (ix+004h),000h		;5eb4	dd 36 04 00 	. 6 . . 
	ret			;5eb8	c9 	. 
l5eb9h:
	call sub_7d66h		;5eb9	cd 66 7d 	. f } 
	inc (ix+018h)		;5ebc	dd 34 18 	. 4 . 
	ld a,(ix+018h)		;5ebf	dd 7e 18 	. ~ . 
	cp 010h		;5ec2	fe 10 	. . 
	ret c			;5ec4	d8 	. 
	ld (ix+000h),041h		;5ec5	dd 36 00 41 	. 6 . A 
	ld (ix+018h),000h		;5ec9	dd 36 18 00 	. 6 . . 
	ret			;5ecd	c9 	. 
	call sub_7d66h		;5ece	cd 66 7d 	. f } 
	ld h,(ix+010h)		;5ed1	dd 66 10 	. f . 
	ld l,(ix+00fh)		;5ed4	dd 6e 0f 	. n . 
	ld de,00008h		;5ed7	11 08 00 	. . . 
	add hl,de			;5eda	19 	. 
	ld (ix+010h),h		;5edb	dd 74 10 	. t . 
	ld (ix+00fh),l		;5ede	dd 75 0f 	. u . 
	ld a,h			;5ee1	7c 	| 
	cp 0ffh		;5ee2	fe ff 	. . 
	ret z			;5ee4	c8 	. 
	ld a,(ix+018h)		;5ee5	dd 7e 18 	. ~ . 
	or a			;5ee8	b7 	. 
	jr nz,l5ef4h		;5ee9	20 09 	  . 
	ld (ix+018h),001h		;5eeb	dd 36 18 01 	. 6 . . 
	ld a,09eh		;5eef	3e 9e 	> . 
	ld (0c110h),a		;5ef1	32 10 c1 	2 . . 
l5ef4h:
	ld a,(ix+004h)		;5ef4	dd 7e 04 	. ~ . 
	cp 013h		;5ef7	fe 13 	. . 
	jr nz,l5f0fh		;5ef9	20 14 	  . 
	ld a,(ix+005h)		;5efb	dd 7e 05 	. ~ . 
	cp 001h		;5efe	fe 01 	. . 
	jr nz,l5f0fh		;5f00	20 0d 	  . 
	ld (ix+000h),040h		;5f02	dd 36 00 40 	. 6 . @ 
	res 0,(ix+001h)		;5f06	dd cb 01 86 	. . . . 
	ld (ix+018h),000h		;5f0a	dd 36 18 00 	. 6 . . 
	ret			;5f0e	c9 	. 
l5f0fh:
	ld hl,085e9h		;5f0f	21 e9 85 	! . . 
	jp 027d6h		;5f12	c3 d6 27 	. . ' 
	bit 0,(ix+001h)		;5f15	dd cb 01 46 	. . . F 
	jr nz,l5f52h		;5f19	20 37 	  7 
	ld (ix+007h),0bdh		;5f1b	dd 36 07 bd 	. 6 . . 
	ld (ix+008h),082h		;5f1f	dd 36 08 82 	. 6 . . 
	ld a,(ix+009h)		;5f23	dd 7e 09 	. ~ . 
	or (ix+00ah)		;5f26	dd b6 0a 	. . . 
	ret nz			;5f29	c0 	. 
	set 0,(ix+001h)		;5f2a	dd cb 01 c6 	. . . . 
	set 1,(ix+001h)		;5f2e	dd cb 01 ce 	. . . . 
	ld (ix+010h),0ffh		;5f32	dd 36 10 ff 	. 6 . . 
	ld (ix+00fh),080h		;5f36	dd 36 0f 80 	. 6 . . 
	ld (ix+012h),0ffh		;5f3a	dd 36 12 ff 	. 6 . . 
	ld (ix+011h),000h		;5f3e	dd 36 11 00 	. 6 . . 
	ld (ix+018h),002h		;5f42	dd 36 18 02 	. 6 . . 
	ld a,r		;5f46	ed 5f 	. _ 
	and 007h		;5f48	e6 07 	. . 
	cp 004h		;5f4a	fe 04 	. . 
	ret c			;5f4c	d8 	. 
	ld (ix+018h),004h		;5f4d	dd 36 18 04 	. 6 . . 
	ret			;5f51	c9 	. 
l5f52h:
	call sub_7d66h		;5f52	cd 66 7d 	. f } 
	call sub_7cd8h		;5f55	cd d8 7c 	. . | 
	jp nc,l556eh		;5f58	d2 6e 55 	. n U 
	ld h,(ix+012h)		;5f5b	dd 66 12 	. f . 
	ld l,(ix+011h)		;5f5e	dd 6e 11 	. n . 
	ld d,000h		;5f61	16 00 	. . 
	ld e,(ix+018h)		;5f63	dd 5e 18 	. ^ . 
	add hl,de			;5f66	19 	. 
	ld (ix+012h),h		;5f67	dd 74 12 	. t . 
	ld (ix+011h),l		;5f6a	dd 75 11 	. u . 
	ld a,h			;5f6d	7c 	| 
	bit 7,a		;5f6e	cb 7f 	.  
	ret nz			;5f70	c0 	. 
	ld (ix+007h),0cbh		;5f71	dd 36 07 cb 	. 6 . . 
	ld (ix+008h),082h		;5f75	dd 36 08 82 	. 6 . . 
	ret			;5f79	c9 	. 
	bit 0,(ix+001h)		;5f7a	dd cb 01 46 	. . . F 
	jp nz,l6007h		;5f7e	c2 07 60 	. . ` 
	ld a,(0d800h)		;5f81	3a 00 d8 	: . . 
	or a			;5f84	b7 	. 
	jp nz,02752h		;5f85	c2 52 27 	. R ' 
	bit 1,(ix+001h)		;5f88	dd cb 01 4e 	. . . N 
	jr nz,l5fb3h		;5f8c	20 25 	  % 
	ld (ix+007h),00bh		;5f8e	dd 36 07 0b 	. 6 . . 
	ld (ix+008h),083h		;5f92	dd 36 08 83 	. 6 . . 
	ld a,(ix+003h)		;5f96	dd 7e 03 	. ~ . 
	or a			;5f99	b7 	. 
	jr nz,l5fa4h		;5f9a	20 08 	  . 
	ld (ix+007h),05ch		;5f9c	dd 36 07 5c 	. 6 . \ 
	ld (ix+008h),081h		;5fa0	dd 36 08 81 	. 6 . . 
l5fa4h:
	ld a,(ix+009h)		;5fa4	dd 7e 09 	. ~ . 
	or (ix+00ah)		;5fa7	dd b6 0a 	. . . 
	ret nz			;5faa	c0 	. 
	set 1,(ix+001h)		;5fab	dd cb 01 ce 	. . . . 
	ld (ix+018h),040h		;5faf	dd 36 18 40 	. 6 . @ 
l5fb3h:
	ld a,(ix+003h)		;5fb3	dd 7e 03 	. ~ . 
	or a			;5fb6	b7 	. 
	jr z,l601dh		;5fb7	28 64 	( d 
	ld a,(0c07fh)		;5fb9	3a 7f c0 	:  . 
	cp 002h		;5fbc	fe 02 	. . 
	ret nz			;5fbe	c0 	. 
	bit 0,(ix+001h)		;5fbf	dd cb 01 46 	. . . F 
	jr nz,l6007h		;5fc3	20 42 	  B 
	dec (ix+018h)		;5fc5	dd 35 18 	. 5 . 
	jr nz,l6007h		;5fc8	20 3d 	  = 
l5fcah:
	set 0,(ix+001h)		;5fca	dd cb 01 c6 	. . . . 
	ld l,00ch		;5fce	2e 0c 	. . 
	call 003bah		;5fd0	cd ba 03 	. . . 
	xor a			;5fd3	af 	. 
	ld (0c07fh),a		;5fd4	32 7f c0 	2  . 
	ld hl,0d800h		;5fd7	21 00 d8 	! . . 
	set 0,(hl)		;5fda	cb c6 	. . 
	ld a,(ix+003h)		;5fdc	dd 7e 03 	. ~ . 
	or a			;5fdf	b7 	. 
	jr nz,l5ffah		;5fe0	20 18 	  . 
	ld a,014h		;5fe2	3e 14 	> . 
	ld hl,0812fh		;5fe4	21 2f 81 	! / . 
	ld iy,0c5c0h		;5fe7	fd 21 c0 c5 	. ! . . 
	ld (iy+000h),044h		;5feb	fd 36 00 44 	. 6 . D 
	ld (iy+00ch),080h		;5fef	fd 36 0c 80 	. 6 . . 
	ld (iy+00eh),080h		;5ff3	fd 36 0e 80 	. 6 . . 
	jp l609dh		;5ff7	c3 9d 60 	. . ` 
l5ffah:
	ld hl,0d802h		;5ffa	21 02 d8 	! . . 
	res 0,(hl)		;5ffd	cb 86 	. . 
	ld a,00fh		;5fff	3e 0f 	> . 
	ld hl,08306h		;6001	21 06 83 	! . . 
	jp l609dh		;6004	c3 9d 60 	. . ` 
l6007h:
	ld (ix+007h),031h		;6007	dd 36 07 31 	. 6 . 1 
	ld (ix+008h),083h		;600b	dd 36 08 83 	. 6 . . 
	ld a,(ix+003h)		;600f	dd 7e 03 	. ~ . 
	or a			;6012	b7 	. 
	ret nz			;6013	c0 	. 
	ld (ix+007h),034h		;6014	dd 36 07 34 	. 6 . 4 
	ld (ix+008h),081h		;6018	dd 36 08 81 	. 6 . . 
	ret			;601c	c9 	. 
l601dh:
	ld a,(0c0c9h)		;601d	3a c9 c0 	: . . 
	and 07fh		;6020	e6 7f 	.  
	or a			;6022	b7 	. 
	ret nz			;6023	c0 	. 
	ld a,(0c31ah)		;6024	3a 1a c3 	: . . 
	cp 002h		;6027	fe 02 	. . 
	ret nz			;6029	c0 	. 
	ld a,080h		;602a	3e 80 	> . 
	ld (0c202h),a		;602c	32 02 c2 	2 . . 
	ld hl,0ce84h		;602f	21 84 ce 	! . . 
	ld (0c204h),hl		;6032	22 04 c2 	" . . 
	ld a,085h		;6035	3e 85 	> . 
	ld (0ffffh),a		;6037	32 ff ff 	2 . . 
	ld hl,08b5dh		;603a	21 5d 8b 	! ] . 
	ld (0c206h),hl		;603d	22 06 c2 	" . . 
	ld a,082h		;6040	3e 82 	> . 
	ld (0ffffh),a		;6042	32 ff ff 	2 . . 
	jr l5fcah		;6045	18 83 	. . 
	ld (ix+007h),02fh		;6047	dd 36 07 2f 	. 6 . / 
	ld (ix+008h),080h		;604b	dd 36 08 80 	. 6 . . 
	ld a,(0c07fh)		;604f	3a 7f c0 	:  . 
	or a			;6052	b7 	. 
	ret nz			;6053	c0 	. 
	bit 0,(ix+001h)		;6054	dd cb 01 46 	. . . F 
	jr nz,l6076h		;6058	20 1c 	  . 
	ld (ix+00eh),088h		;605a	dd 36 0e 88 	. 6 . . 
	ld iy,0c3a0h		;605e	fd 21 a0 c3 	. ! . . 
	ld (iy+000h),044h		;6062	fd 36 00 44 	. 6 . D 
	ld (iy+00ch),098h		;6066	fd 36 0c 98 	. 6 . . 
	ld (iy+00eh),060h		;606a	fd 36 0e 60 	. 6 . ` 
	ld a,00eh		;606e	3e 0e 	> . 
	ld hl,0802ah		;6070	21 2a 80 	! * . 
	jp l609dh		;6073	c3 9d 60 	. . ` 
l6076h:
	bit 1,(ix+001h)		;6076	dd cb 01 4e 	. . . N 
	ret nz			;607a	c0 	. 
	set 1,(ix+001h)		;607b	dd cb 01 ce 	. . . . 
	ld a,0a3h		;607f	3e a3 	> . 
	ld (0c110h),a		;6081	32 10 c1 	2 . . 
	ret			;6084	c9 	. 
	ld (ix+007h),0deh		;6085	dd 36 07 de 	. 6 . . 
	ld (ix+008h),082h		;6089	dd 36 08 82 	. 6 . . 
	bit 0,(ix+001h)		;608d	dd cb 01 46 	. . . F 
	jr nz,l60b8h		;6091	20 25 	  % 
	ld a,(0c0c9h)		;6093	3a c9 c0 	: . . 
	or a			;6096	b7 	. 
	ret nz			;6097	c0 	. 
	ld a,00dh		;6098	3e 0d 	> . 
	ld hl,082d9h		;609a	21 d9 82 	! . . 
l609dh:
	set 0,(ix+001h)		;609d	dd cb 01 c6 	. . . . 
	ld (0c011h),a		;60a1	32 11 c0 	2 . . 
	ld a,001h		;60a4	3e 01 	> . 
	ld (0c076h),a		;60a6	32 76 c0 	2 v . 
	ld a,007h		;60a9	3e 07 	> . 
	ld (0c01fh),a		;60ab	32 1f c0 	2 . . 
	ld (0c072h),hl		;60ae	22 72 c0 	" r . 
	push ix		;60b1	dd e5 	. . 
	pop hl			;60b3	e1 	. 
	ld (0c070h),hl		;60b4	22 70 c0 	" p . 
	ret			;60b7	c9 	. 
l60b8h:
	bit 1,(ix+001h)		;60b8	dd cb 01 4e 	. . . N 
	ret nz			;60bc	c0 	. 
	set 1,(ix+001h)		;60bd	dd cb 01 ce 	. . . . 
	ld iy,0c640h		;60c1	fd 21 40 c6 	. ! @ . 
	ld (iy+000h),052h		;60c5	fd 36 00 52 	. 6 . R 
	ld (iy+00ch),072h		;60c9	fd 36 0c 72 	. 6 . r 
	ld (iy+00eh),070h		;60cd	fd 36 0e 70 	. 6 . p 
	ld (iy+003h),008h		;60d1	fd 36 03 08 	. 6 . . 
	ret			;60d5	c9 	. 
	bit 0,(ix+001h)		;60d6	dd cb 01 46 	. . . F 
	jr nz,l60fah		;60da	20 1e 	  . 
	set 0,(ix+001h)		;60dc	dd cb 01 c6 	. . . . 
	ld a,(ix+003h)		;60e0	dd 7e 03 	. ~ . 
	ld hl,l6413h		;60e3	21 13 64 	! . d 
	rst 10h			;60e6	d7 	. 
	ld a,(hl)			;60e7	7e 	~ 
	or a			;60e8	b7 	. 
	jp nz,02752h		;60e9	c2 52 27 	. R ' 
	ld a,(ix+003h)		;60ec	dd 7e 03 	. ~ . 
	ld hl,l63ebh		;60ef	21 eb 63 	! . c 
	rst 10h			;60f2	d7 	. 
	ld (ix+007h),l		;60f3	dd 75 07 	. u . 
	ld (ix+008h),h		;60f6	dd 74 08 	. t . 
	ret			;60f9	c9 	. 
l60fah:
	ld a,(ix+009h)		;60fa	dd 7e 09 	. ~ . 
	or (ix+00ah)		;60fd	dd b6 0a 	. . . 
	ret nz			;6100	c0 	. 
	set 1,(ix+001h)		;6101	dd cb 01 ce 	. . . . 
	ld iy,0c300h		;6105	fd 21 00 c3 	. ! . . 
	call sub_7c8fh		;6109	cd 8f 7c 	. . | 
	ret c			;610c	d8 	. 
	ld a,08fh		;610d	3e 8f 	> . 
	ld (0c110h),a		;610f	32 10 c1 	2 . . 
	ld a,(ix+003h)		;6112	dd 7e 03 	. ~ . 
	ld hl,l6413h		;6115	21 13 64 	! . d 
	rst 10h			;6118	d7 	. 
	set 0,(hl)		;6119	cb c6 	. . 
	ld a,(ix+003h)		;611b	dd 7e 03 	. ~ . 
	or a			;611e	b7 	. 
	jr z,l6139h		;611f	28 18 	( . 
	cp 005h		;6121	fe 05 	. . 
	jr z,l612eh		;6123	28 09 	( . 
	ld hl,l63ffh		;6125	21 ff 63 	! . c 
	rst 10h			;6128	d7 	. 
	set 0,(hl)		;6129	cb c6 	. . 
	jp 02752h		;612b	c3 52 27 	. R ' 
l612eh:
	ld hl,0c025h		;612e	21 25 c0 	! % . 
	ld a,(hl)			;6131	7e 	~ 
	add a,001h		;6132	c6 01 	. . 
	daa			;6134	27 	' 
	ld (hl),a			;6135	77 	w 
	jp 02752h		;6136	c3 52 27 	. R ' 
l6139h:
	ld a,008h		;6139	3e 08 	> . 
	ld (0c01fh),a		;613b	32 1f c0 	2 . . 
	ret			;613e	c9 	. 
	bit 0,(ix+001h)		;613f	dd cb 01 46 	. . . F 
	jr nz,l616bh		;6143	20 26 	  & 
	ld (ix+007h),0e1h		;6145	dd 36 07 e1 	. 6 . . 
	ld (ix+008h),080h		;6149	dd 36 08 80 	. 6 . . 
	ld a,(0c0c9h)		;614d	3a c9 c0 	: . . 
	or a			;6150	b7 	. 
	ret nz			;6151	c0 	. 
	set 0,(ix+001h)		;6152	dd cb 01 c6 	. . . . 
	ld a,007h		;6156	3e 07 	> . 
	ld (0c01fh),a		;6158	32 1f c0 	2 . . 
	ld a,011h		;615b	3e 11 	> . 
	ld (0c011h),a		;615d	32 11 c0 	2 . . 
	ld a,(0c04ch)		;6160	3a 4c c0 	: L . 
	or a			;6163	b7 	. 
	ret z			;6164	c8 	. 
	ld a,010h		;6165	3e 10 	> . 
	ld (0c011h),a		;6167	32 11 c0 	2 . . 
	ret			;616a	c9 	. 
l616bh:
	bit 1,(ix+001h)		;616b	dd cb 01 4e 	. . . N 
	ret nz			;616f	c0 	. 
	set 1,(ix+001h)		;6170	dd cb 01 ce 	. . . . 
	ld iy,0c640h		;6174	fd 21 40 c6 	. ! @ . 
	ld b,04fh		;6178	06 4f 	. O 
	ld de,030d8h		;617a	11 d8 30 	. . 0 
	ld a,(0c04ch)		;617d	3a 4c c0 	: L . 
	or a			;6180	b7 	. 
	jr z,l618ch		;6181	28 09 	( . 
	ld b,052h		;6183	06 52 	. R 
	ld de,08858h		;6185	11 58 88 	. X . 
	ld (iy+003h),003h		;6188	fd 36 03 03 	. 6 . . 
l618ch:
	ld (iy+000h),b		;618c	fd 70 00 	. p . 
	ld (iy+00ch),e		;618f	fd 73 0c 	. s . 
	ld (iy+00eh),d		;6192	fd 72 0e 	. r . 
	ret			;6195	c9 	. 
	bit 0,(ix+001h)		;6196	dd cb 01 46 	. . . F 
	jr nz,l61c6h		;619a	20 2a 	  * 
	ld (ix+007h),0e1h		;619c	dd 36 07 e1 	. 6 . . 
	ld (ix+008h),080h		;61a0	dd 36 08 80 	. 6 . . 
	ld a,(ix+009h)		;61a4	dd 7e 09 	. ~ . 
	or (ix+00ah)		;61a7	dd b6 0a 	. . . 
	ret nz			;61aa	c0 	. 
	set 0,(ix+001h)		;61ab	dd cb 01 c6 	. . . . 
	set 1,(ix+001h)		;61af	dd cb 01 ce 	. . . . 
	ld (ix+018h),000h		;61b3	dd 36 18 00 	. 6 . . 
	ld (ix+016h),000h		;61b7	dd 36 16 00 	. 6 . . 
	xor a			;61bb	af 	. 
	ld (0c07fh),a		;61bc	32 7f c0 	2  . 
	ld hl,0d8a0h		;61bf	21 a0 d8 	! . . 
	inc hl			;61c2	23 	# 
	ld (0c06ah),hl		;61c3	22 6a c0 	" j . 
l61c6h:
	ld a,(ix+003h)		;61c6	dd 7e 03 	. ~ . 
	cp 001h		;61c9	fe 01 	. . 
	jr z,l623eh		;61cb	28 71 	( q 
	ld a,(ix+018h)		;61cd	dd 7e 18 	. ~ . 
	or a			;61d0	b7 	. 
	jr nz,l61f4h		;61d1	20 21 	  ! 
	ld a,(ix+003h)		;61d3	dd 7e 03 	. ~ . 
	cp 002h		;61d6	fe 02 	. . 
	jr z,l61dfh		;61d8	28 05 	( . 
	call sub_7cd8h		;61da	cd d8 7c 	. . | 
	jr l61e9h		;61dd	18 0a 	. . 
l61dfh:
	ld iy,0c300h		;61df	fd 21 00 c3 	. ! . . 
	call sub_7c8fh		;61e3	cd 8f 7c 	. . | 
	ret c			;61e6	d8 	. 
	jr l61f0h		;61e7	18 07 	. . 
l61e9h:
	ret c			;61e9	d8 	. 
	ld a,(0c31ch)		;61ea	3a 1c c3 	: . . 
	bit 3,a		;61ed	cb 5f 	. _ 
	ret z			;61ef	c8 	. 
l61f0h:
	ld (ix+018h),001h		;61f0	dd 36 18 01 	. 6 . . 
l61f4h:
	ld a,(0c202h)		;61f4	3a 02 c2 	: . . 
	or a			;61f7	b7 	. 
	ret nz			;61f8	c0 	. 
	ld a,(0c31ch)		;61f9	3a 1c c3 	: . . 
	res 3,a		;61fc	cb 9f 	. . 
	ld (0c31ch),a		;61fe	32 1c c3 	2 . . 
	ld (ix+018h),000h		;6201	dd 36 18 00 	. 6 . . 
	inc (ix+016h)		;6205	dd 34 16 	. 4 . 
	ld a,(0d8a0h)		;6208	3a a0 d8 	: . . 
	cp (ix+016h)		;620b	dd be 16 	. . . 
	jp c,02752h		;620e	da 52 27 	. R ' 
	ld a,080h		;6211	3e 80 	> . 
	ld (0c202h),a		;6213	32 02 c2 	2 . . 
	ld hl,(0c06ah)		;6216	2a 6a c0 	* j . 
	ld de,0c204h		;6219	11 04 c2 	. . . 
	ldi		;621c	ed a0 	. . 
	ldi		;621e	ed a0 	. . 
	ld c,(hl)			;6220	4e 	N 
	ld b,000h		;6221	06 00 	. . 
	inc hl			;6223	23 	# 
	ld (0c06ah),hl		;6224	22 6a c0 	" j . 
	ld a,085h		;6227	3e 85 	> . 
	ld (0ffffh),a		;6229	32 ff ff 	2 . . 
	ld hl,(0c087h)		;622c	2a 87 c0 	* . . 
	add hl,bc			;622f	09 	. 
	add hl,bc			;6230	09 	. 
	ld a,(hl)			;6231	7e 	~ 
	inc hl			;6232	23 	# 
	ld h,(hl)			;6233	66 	f 
	ld l,a			;6234	6f 	o 
	ld (0c206h),hl		;6235	22 06 c2 	" . . 
	ld a,082h		;6238	3e 82 	> . 
	ld (0ffffh),a		;623a	32 ff ff 	2 . . 
	ret			;623d	c9 	. 
l623eh:
	call sub_7cd8h		;623e	cd d8 7c 	. . | 
	ret c			;6241	d8 	. 
	ld hl,0c07fh		;6242	21 7f c0 	!  . 
	inc (hl)			;6245	34 	4 
	jp 02752h		;6246	c3 52 27 	. R ' 
	bit 0,(ix+001h)		;6249	dd cb 01 46 	. . . F 
	jr nz,l6261h		;624d	20 12 	  . 
	set 0,(ix+001h)		;624f	dd cb 01 c6 	. . . . 
	ld (ix+007h),0e1h		;6253	dd 36 07 e1 	. 6 . . 
	ld (ix+008h),080h		;6257	dd 36 08 80 	. 6 . . 
	ld a,(ix+003h)		;625b	dd 7e 03 	. ~ . 
	ld (0c07fh),a		;625e	32 7f c0 	2  . 
l6261h:
	ld a,(ix+009h)		;6261	dd 7e 09 	. ~ . 
	or (ix+00ah)		;6264	dd b6 0a 	. . . 
	ret nz			;6267	c0 	. 
	ld iy,0c300h		;6268	fd 21 00 c3 	. ! . . 
	call sub_7c8fh		;626c	cd 8f 7c 	. . | 
	ret c			;626f	d8 	. 
	ld a,008h		;6270	3e 08 	> . 
	ld (0c01fh),a		;6272	32 1f c0 	2 . . 
	jp 02752h		;6275	c3 52 27 	. R ' 
	bit 0,(ix+001h)		;6278	dd cb 01 46 	. . . F 
	jr nz,l62beh		;627c	20 40 	  @ 
	ld (ix+005h),008h		;627e	dd 36 05 08 	. 6 . . 
	ld (ix+006h),008h		;6282	dd 36 06 08 	. 6 . . 
	ld a,(ix+009h)		;6286	dd 7e 09 	. ~ . 
	or (ix+00ah)		;6289	dd b6 0a 	. . . 
	jr nz,l630ah		;628c	20 7c 	  | 
	set 0,(ix+001h)		;628e	dd cb 01 c6 	. . . . 
	set 1,(ix+001h)		;6292	dd cb 01 ce 	. . . . 
	ld (ix+017h),000h		;6296	dd 36 17 00 	. 6 . . 
	ld (ix+016h),030h		;629a	dd 36 16 30 	. 6 . 0 
	ld (ix+018h),00eh		;629e	dd 36 18 0e 	. 6 . . 
	ld (ix+00fh),060h		;62a2	dd 36 0f 60 	. 6 . ` 
	ld (ix+010h),000h		;62a6	dd 36 10 00 	. 6 . . 
	ld a,(0c30ch)		;62aa	3a 0c c3 	: . . 
	cp (ix+00ch)		;62ad	dd be 0c 	. . . 
	jr nc,l62beh		;62b0	30 0c 	0 . 
	ld (ix+018h),002h		;62b2	dd 36 18 02 	. 6 . . 
	ld (ix+00fh),0a0h		;62b6	dd 36 0f a0 	. 6 . . 
	ld (ix+010h),0ffh		;62ba	dd 36 10 ff 	. 6 . . 
l62beh:
	call sub_7d66h		;62be	cd 66 7d 	. f } 
	call sub_7cd8h		;62c1	cd d8 7c 	. . | 
	jp nc,l556eh		;62c4	d2 6e 55 	. n U 
	ld d,001h		;62c7	16 01 	. . 
	ld e,(ix+018h)		;62c9	dd 5e 18 	. ^ . 
	ld a,008h		;62cc	3e 08 	> . 
	call 039cch		;62ce	cd cc 39 	. . 9 
	jr nc,l62e4h		;62d1	30 11 	0 . 
	ld a,(ix+010h)		;62d3	dd 7e 10 	. ~ . 
	cpl			;62d6	2f 	/ 
	ld (ix+010h),a		;62d7	dd 77 10 	. w . 
	ld a,(ix+00fh)		;62da	dd 7e 0f 	. ~ . 
	cpl			;62dd	2f 	/ 
	inc a			;62de	3c 	< 
	ld (ix+00fh),a		;62df	dd 77 0f 	. w . 
	jr l6320h		;62e2	18 3c 	. < 
l62e4h:
	ld a,(ix+018h)		;62e4	dd 7e 18 	. ~ . 
	xor 00ch		;62e7	ee 0c 	. . 
	ld e,a			;62e9	5f 	_ 
	ld d,011h		;62ea	16 11 	. . 
	call sub_7c18h		;62ec	cd 18 7c 	. . | 
	rlca			;62ef	07 	. 
	jr c,l630ah		;62f0	38 18 	8 . 
	ld h,(ix+017h)		;62f2	dd 66 17 	. f . 
	ld l,(ix+016h)		;62f5	dd 6e 16 	. n . 
	ld de,00010h		;62f8	11 10 00 	. . . 
	add hl,de			;62fb	19 	. 
	ld (ix+017h),h		;62fc	dd 74 17 	. t . 
	ld (ix+016h),l		;62ff	dd 75 16 	. u . 
	ld (ix+012h),h		;6302	dd 74 12 	. t . 
	ld (ix+011h),l		;6305	dd 75 11 	. u . 
	jr l631ah		;6308	18 10 	. . 
l630ah:
	ld (ix+017h),000h		;630a	dd 36 17 00 	. 6 . . 
	ld (ix+016h),030h		;630e	dd 36 16 30 	. 6 . 0 
	ld (ix+011h),000h		;6312	dd 36 11 00 	. 6 . . 
	ld (ix+012h),000h		;6316	dd 36 12 00 	. 6 . . 
l631ah:
	ld hl,08585h		;631a	21 85 85 	! . . 
	jp 027d6h		;631d	c3 d6 27 	. . ' 
l6320h:
	ld (ix+018h),002h		;6320	dd 36 18 02 	. 6 . . 
	ld a,(ix+010h)		;6324	dd 7e 10 	. ~ . 
	cp 0ffh		;6327	fe ff 	. . 
	jr z,l631ah		;6329	28 ef 	( . 
	ld (ix+018h),00eh		;632b	dd 36 18 0e 	. 6 . . 
	jr l631ah		;632f	18 e9 	. . 
	bit 0,(ix+001h)		;6331	dd cb 01 46 	. . . F 
	jr nz,l6363h		;6335	20 2c 	  , 
	ld (ix+005h),008h		;6337	dd 36 05 08 	. 6 . . 
	ld (ix+006h),008h		;633b	dd 36 06 08 	. 6 . . 
	ld a,(ix+009h)		;633f	dd 7e 09 	. ~ . 
	or (ix+00ah)		;6342	dd b6 0a 	. . . 
	jr nz,l63b3h		;6345	20 6c 	  l 
	ld (ix+00fh),080h		;6347	dd 36 0f 80 	. 6 . . 
	ld (ix+010h),0ffh		;634b	dd 36 10 ff 	. 6 . . 
	ld (ix+011h),000h		;634f	dd 36 11 00 	. 6 . . 
	ld (ix+012h),0ffh		;6353	dd 36 12 ff 	. 6 . . 
	set 0,(ix+001h)		;6357	dd cb 01 c6 	. . . . 
	set 1,(ix+001h)		;635b	dd cb 01 ce 	. . . . 
	ld (ix+018h),00eh		;635f	dd 36 18 0e 	. 6 . . 
l6363h:
	call sub_7d66h		;6363	cd 66 7d 	. f } 
	call sub_7cd8h		;6366	cd d8 7c 	. . | 
	jp nc,l556eh		;6369	d2 6e 55 	. n U 
	ld a,(ix+018h)		;636c	dd 7e 18 	. ~ . 
	xor 00ch		;636f	ee 0c 	. . 
	ld e,a			;6371	5f 	_ 
	ld d,001h		;6372	16 01 	. . 
	ld a,008h		;6374	3e 08 	> . 
	call 039cch		;6376	cd cc 39 	. . 9 
	jr nc,l6392h		;6379	30 17 	0 . 
	ld a,(ix+010h)		;637b	dd 7e 10 	. ~ . 
	cpl			;637e	2f 	/ 
	ld (ix+010h),a		;637f	dd 77 10 	. w . 
	ld a,(ix+00fh)		;6382	dd 7e 0f 	. ~ . 
	cpl			;6385	2f 	/ 
	inc a			;6386	3c 	< 
	ld (ix+00fh),a		;6387	dd 77 0f 	. w . 
	ld a,(ix+018h)		;638a	dd 7e 18 	. ~ . 
	xor 00ch		;638d	ee 0c 	. . 
	ld (ix+018h),a		;638f	dd 77 18 	. w . 
l6392h:
	ld de,01108h		;6392	11 08 11 	. . . 
	call sub_7c18h		;6395	cd 18 7c 	. . | 
	rlca			;6398	07 	. 
	jr nc,l63a3h		;6399	30 08 	0 . 
	ld (ix+011h),000h		;639b	dd 36 11 00 	. 6 . . 
	ld (ix+012h),0ffh		;639f	dd 36 12 ff 	. 6 . . 
l63a3h:
	ld h,(ix+012h)		;63a3	dd 66 12 	. f . 
	ld l,(ix+011h)		;63a6	dd 6e 11 	. n . 
	ld de,00010h		;63a9	11 10 00 	. . . 
	add hl,de			;63ac	19 	. 
	ld (ix+011h),l		;63ad	dd 75 11 	. u . 
	ld (ix+012h),h		;63b0	dd 74 12 	. t . 
l63b3h:
	ld hl,084c2h		;63b3	21 c2 84 	! . . 
	ld a,(ix+010h)		;63b6	dd 7e 10 	. ~ . 
	cp 0ffh		;63b9	fe ff 	. . 
	jp nz,027d6h		;63bb	c2 d6 27 	. . ' 
	ld hl,084a1h		;63be	21 a1 84 	! . . 
	jp 027d6h		;63c1	c3 d6 27 	. . ' 
	bit 0,(ix+001h)		;63c4	dd cb 01 46 	. . . F 
	jr nz,l63e2h		;63c8	20 18 	  . 
	ld (ix+005h),010h		;63ca	dd 36 05 10 	. 6 . . 
	ld (ix+006h),010h		;63ce	dd 36 06 10 	. 6 . . 
	ld a,(ix+00ah)		;63d2	dd 7e 0a 	. ~ . 
	or (ix+009h)		;63d5	dd b6 09 	. . . 
	jr nz,l63e5h		;63d8	20 0b 	  . 
	set 0,(ix+001h)		;63da	dd cb 01 c6 	. . . . 
	set 1,(ix+001h)		;63de	dd cb 01 ce 	. . . . 
l63e2h:
	call sub_7d66h		;63e2	cd 66 7d 	. f } 
l63e5h:
	ld hl,085a6h		;63e5	21 a6 85 	! . . 
	jp 027d6h		;63e8	c3 d6 27 	. . ' 
l63ebh:
	out (080h),a		;63eb	d3 80 	. . 
	push bc			;63ed	c5 	. 
	add a,b			;63ee	80 	. 
	ld d,a			;63ef	57 	W 
	add a,b			;63f0	80 	. 
	ld h,l			;63f1	65 	e 
	add a,b			;63f2	80 	. 
	daa			;63f3	27 	' 
	adc a,d			;63f4	8a 	. 
	ld c,08ch		;63f5	0e 8c 	. . 
	inc e			;63f7	1c 	. 
	adc a,h			;63f8	8c 	. 
	inc e			;63f9	1c 	. 
	add a,b			;63fa	80 	. 
	ld c,080h		;63fb	0e 80 	. . 
	nop			;63fd	00 	. 
	add a,b			;63fe	80 	. 
l63ffh:
	ld c,b			;63ff	48 	H 
l6400h:
	ret nz			;6400	c0 	. 
	ld c,b			;6401	48 	H 
	ret nz			;6402	c0 	. 
	ld c,h			;6403	4c 	L 
	ret nz			;6404	c0 	. 
	ld c,(hl)			;6405	4e 	N 
	ret nz			;6406	c0 	. 
	ld c,e			;6407	4b 	K 
	ret nz			;6408	c0 	. 
	ld c,e			;6409	4b 	K 
	ret nz			;640a	c0 	. 
	ld c,l			;640b	4d 	M 
	ret nz			;640c	c0 	. 
	ld c,d			;640d	4a 	J 
	ret nz			;640e	c0 	. 
	ld c,a			;640f	4f 	O 
	ret nz			;6410	c0 	. 
	ld c,a			;6411	4f 	O 
	ret nz			;6412	c0 	. 
l6413h:
	nop			;6413	00 	. 
	ret c			;6414	d8 	. 
	ld bc,002d8h		;6415	01 d8 02 	. . . 
	ret c			;6418	d8 	. 
	inc bc			;6419	03 	. 
	ret c			;641a	d8 	. 
	inc b			;641b	04 	. 
	ret c			;641c	d8 	. 
	dec b			;641d	05 	. 
	ret c			;641e	d8 	. 
	ld b,0d8h		;641f	06 d8 	. . 
	rlca			;6421	07 	. 
	ret c			;6422	d8 	. 
	nop			;6423	00 	. 
	ret c			;6424	d8 	. 
	rlca			;6425	07 	. 
	ret c			;6426	d8 	. 
	ld hl,(0c085h)		;6427	2a 85 c0 	* . . 
	jp (hl)			;642a	e9 	. 
	ld a,(0c0c9h)		;642b	3a c9 c0 	: . . 
	or a			;642e	b7 	. 
	ret z			;642f	c8 	. 
	bit 7,a		;6430	cb 7f 	.  
	ret z			;6432	c8 	. 
	and 003h		;6433	e6 03 	. . 
	ret nz			;6435	c0 	. 
	di			;6436	f3 	. 
	ld de,08026h		;6437	11 26 80 	. & . 
	ld a,e			;643a	7b 	{ 
	ld (0c05fh),a		;643b	32 5f c0 	2 _ . 
	rst 8			;643e	cf 	. 
	ei			;643f	fb 	. 
	ld a,008h		;6440	3e 08 	> . 
	ld (0c0c9h),a		;6442	32 c9 c0 	2 . . 
	ret			;6445	c9 	. 
	ld a,(0c0c9h)		;6446	3a c9 c0 	: . . 
	and 07fh		;6449	e6 7f 	.  
	ret z			;644b	c8 	. 
	ld b,a			;644c	47 	G 
	and 003h		;644d	e6 03 	. . 
	ld hl,(0c0c2h)		;644f	2a c2 c0 	* . . 
	ld de,(0c0bbh)		;6452	ed 5b bb c0 	. [ . . 
	jr nz,l6474h		;6456	20 1c 	  . 
	ld a,(0c05ch)		;6458	3a 5c c0 	: \ . 
	or a			;645b	b7 	. 
	jr nz,l646dh		;645c	20 0f 	  . 
	ld a,001h		;645e	3e 01 	> . 
	ld (0c05ch),a		;6460	32 5c c0 	2 \ . 
	di			;6463	f3 	. 
	ld de,08026h		;6464	11 26 80 	. & . 
	ld a,e			;6467	7b 	{ 
	ld (0c05fh),a		;6468	32 5f c0 	2 _ . 
	rst 8			;646b	cf 	. 
	ei			;646c	fb 	. 
l646dh:
	ld hl,(0c0afh)		;646d	2a af c0 	* . . 
	ld de,(0c0adh)		;6470	ed 5b ad c0 	. [ . . 
l6474h:
	ld a,(0c077h)		;6474	3a 77 c0 	: w . 
	or a			;6477	b7 	. 
	jp nz,l64cbh		;6478	c2 cb 64 	. . d 
	ld a,(0c08dh)		;647b	3a 8d c0 	: . . 
	bit 7,a		;647e	cb 7f 	.  
	jr z,l64cbh		;6480	28 49 	( I 
	ld a,001h		;6482	3e 01 	> . 
	ld (0c077h),a		;6484	32 77 c0 	2 w . 
	ld a,b			;6487	78 	x 
	bit 0,a		;6488	cb 47 	. G 
	ld a,(0c0c4h)		;648a	3a c4 c0 	: . . 
	jr z,l6490h		;648d	28 01 	( . 
	inc a			;648f	3c 	< 
l6490h:
	push af			;6490	f5 	. 
	exx			;6491	d9 	. 
	ld b,a			;6492	47 	G 
	ld c,000h		;6493	0e 00 	. . 
	ld hl,0d900h		;6495	21 00 d9 	! . . 
	add hl,bc			;6498	09 	. 
	pop af			;6499	f1 	. 
	ld b,a			;649a	47 	G 
	ld a,(0c08dh)		;649b	3a 8d c0 	: . . 
	and 07fh		;649e	e6 7f 	.  
	sub b			;64a0	90 	. 
	rlca			;64a1	07 	. 
	rlca			;64a2	07 	. 
	rlca			;64a3	07 	. 
	rlca			;64a4	07 	. 
	rlca			;64a5	07 	. 
	ld b,000h		;64a6	06 00 	. . 
	ld c,a			;64a8	4f 	O 
	add hl,bc			;64a9	09 	. 
	ld (0c078h),hl		;64aa	22 78 c0 	" x . 
	ld a,(hl)			;64ad	7e 	~ 
	or a			;64ae	b7 	. 
	jr z,l64cah		;64af	28 19 	( . 
	ld b,a			;64b1	47 	G 
	inc hl			;64b2	23 	# 
l64b3h:
	ld a,(hl)			;64b3	7e 	~ 
	or a			;64b4	b7 	. 
	jr z,l64c6h		;64b5	28 0f 	( . 
	inc hl			;64b7	23 	# 
	push hl			;64b8	e5 	. 
	ld a,(hl)			;64b9	7e 	~ 
	ld e,a			;64ba	5f 	_ 
	ld d,000h		;64bb	16 00 	. . 
	ld hl,0d700h		;64bd	21 00 d7 	! . . 
	add hl,de			;64c0	19 	. 
	ld a,000h		;64c1	3e 00 	> . 
	ld (hl),a			;64c3	77 	w 
	pop hl			;64c4	e1 	. 
	dec hl			;64c5	2b 	+ 
l64c6h:
	inc hl			;64c6	23 	# 
	inc hl			;64c7	23 	# 
	djnz l64b3h		;64c8	10 e9 	. . 
l64cah:
	exx			;64ca	d9 	. 
l64cbh:
	ld a,h			;64cb	7c 	| 
	or l			;64cc	b5 	. 
	ret nz			;64cd	c0 	. 
	ex de,hl			;64ce	eb 	. 
	ld a,h			;64cf	7c 	| 
	or l			;64d0	b5 	. 
	ret nz			;64d1	c0 	. 
	ld a,(0c0c9h)		;64d2	3a c9 c0 	: . . 
	bit 0,a		;64d5	cb 47 	. G 
	jr z,l64dfh		;64d7	28 06 	( . 
	ld hl,0c08dh		;64d9	21 8d c0 	! . . 
	dec (hl)			;64dc	35 	5 
	res 7,(hl)		;64dd	cb be 	. . 
l64dfh:
	and 080h		;64df	e6 80 	. . 
	ld (0c0c9h),a		;64e1	32 c9 c0 	2 . . 
	xor a			;64e4	af 	. 
	ld (0c05ch),a		;64e5	32 5c c0 	2 \ . 
	ld (0c06fh),a		;64e8	32 6f c0 	2 o . 
	ld (0c077h),a		;64eb	32 77 c0 	2 w . 
	ld hl,00000h		;64ee	21 00 00 	! . . 
	ld (0c0abh),hl		;64f1	22 ab c0 	" . . 
	ld (0c0b9h),hl		;64f4	22 b9 c0 	" . . 
	di			;64f7	f3 	. 
	ld de,08006h		;64f8	11 06 80 	. . . 
	ld a,e			;64fb	7b 	{ 
	ld (0c05fh),a		;64fc	32 5f c0 	2 _ . 
	rst 8			;64ff	cf 	. 
	ei			;6500	fb 	. 
	ret			;6501	c9 	. 
	ld a,(0c0c9h)		;6502	3a c9 c0 	: . . 
	or a			;6505	b7 	. 
	ret z			;6506	c8 	. 
	bit 7,a		;6507	cb 7f 	.  
	jr nz,l6519h		;6509	20 0e 	  . 
	and 003h		;650b	e6 03 	. . 
	ret z			;650d	c8 	. 
	ld a,(0c0c9h)		;650e	3a c9 c0 	: . . 
	res 3,a		;6511	cb 9f 	. . 
	set 7,a		;6513	cb ff 	. . 
	ld (0c0c9h),a		;6515	32 c9 c0 	2 . . 
	ret			;6518	c9 	. 
l6519h:
	and 003h		;6519	e6 03 	. . 
	ret nz			;651b	c0 	. 
	ld a,001h		;651c	3e 01 	> . 
	ld (0c0c4h),a		;651e	32 c4 c0 	2 . . 
	ld hl,00000h		;6521	21 00 00 	! . . 
	ld (0c0b4h),hl		;6524	22 b4 c0 	" . . 
	ld (0c0b3h),hl		;6527	22 b3 c0 	" . . 
	ld (0c0b7h),hl		;652a	22 b7 c0 	" . . 
	ld a,(0c0b6h)		;652d	3a b6 c0 	: . . 
	cp 003h		;6530	fe 03 	. . 
	jr nc,l653fh		;6532	30 0b 	0 . 
	ld a,008h		;6534	3e 08 	> . 
	ld (0c0c9h),a		;6536	32 c9 c0 	2 . . 
	ld a,003h		;6539	3e 03 	> . 
	ld (0c0a0h),a		;653b	32 a0 c0 	2 . . 
	ret			;653e	c9 	. 
l653fh:
	xor a			;653f	af 	. 
	ld (0c0c9h),a		;6540	32 c9 c0 	2 . . 
	ret			;6543	c9 	. 
	ld a,(0c0c9h)		;6544	3a c9 c0 	: . . 
	or a			;6547	b7 	. 
	ret z			;6548	c8 	. 
	bit 7,a		;6549	cb 7f 	.  
	jr nz,l655bh		;654b	20 0e 	  . 
	and 003h		;654d	e6 03 	. . 
	ret z			;654f	c8 	. 
	ld a,(0c0c9h)		;6550	3a c9 c0 	: . . 
	res 3,a		;6553	cb 9f 	. . 
	set 7,a		;6555	cb ff 	. . 
	ld (0c0c9h),a		;6557	32 c9 c0 	2 . . 
	ret			;655a	c9 	. 
l655bh:
	and 003h		;655b	e6 03 	. . 
	ret nz			;655d	c0 	. 
	ld hl,00000h		;655e	21 00 00 	! . . 
	ld (0c0b4h),hl		;6561	22 b4 c0 	" . . 
	ld (0c0b3h),hl		;6564	22 b3 c0 	" . . 
	ld (0c0b7h),hl		;6567	22 b7 c0 	" . . 
	ld a,001h		;656a	3e 01 	> . 
	ld (0c0c4h),a		;656c	32 c4 c0 	2 . . 
	ld a,001h		;656f	3e 01 	> . 
	ld (0c0a0h),a		;6571	32 a0 c0 	2 . . 
	ld a,008h		;6574	3e 08 	> . 
	ld (0c0c9h),a		;6576	32 c9 c0 	2 . . 
	ret			;6579	c9 	. 
	ld a,(0c023h)		;657a	3a 23 c0 	: # . 
	ld hl,l669dh		;657d	21 9d 66 	! . f 
	rst 10h			;6580	d7 	. 
	ld a,(hl)			;6581	7e 	~ 
	ld (0ffffh),a		;6582	32 ff ff 	2 . . 
	ld (0c081h),a		;6585	32 81 c0 	2 . . 
	inc hl			;6588	23 	# 
	ld e,(hl)			;6589	5e 	^ 
	inc hl			;658a	23 	# 
	ld d,(hl)			;658b	56 	V 
	ld (0c0a3h),de		;658c	ed 53 a3 c0 	. S . . 
	inc hl			;6590	23 	# 
	ld e,(hl)			;6591	5e 	^ 
	inc hl			;6592	23 	# 
	ld d,(hl)			;6593	56 	V 
	ld (0c0a8h),de		;6594	ed 53 a8 c0 	. S . . 
	inc hl			;6598	23 	# 
	ld a,(hl)			;6599	7e 	~ 
	ld (0c0b6h),a		;659a	32 b6 c0 	2 . . 
	inc hl			;659d	23 	# 
	ld a,(hl)			;659e	7e 	~ 
	ld (0c0c4h),a		;659f	32 c4 c0 	2 . . 
	inc hl			;65a2	23 	# 
	ld a,(hl)			;65a3	7e 	~ 
	ld (0c0a0h),a		;65a4	32 a0 c0 	2 . . 
	inc hl			;65a7	23 	# 
	ld a,(hl)			;65a8	7e 	~ 
	ld (0c0a5h),a		;65a9	32 a5 c0 	2 . . 
	inc hl			;65ac	23 	# 
	ld a,(hl)			;65ad	7e 	~ 
	ld (0c080h),a		;65ae	32 80 c0 	2 . . 
	inc hl			;65b1	23 	# 
	ld e,(hl)			;65b2	5e 	^ 
	inc hl			;65b3	23 	# 
	ld d,(hl)			;65b4	56 	V 
	ld (0c087h),de		;65b5	ed 53 87 c0 	. S . . 
	ld hl,l7800h		;65b9	21 00 78 	! . x 
	ld (0c0b7h),hl		;65bc	22 b7 c0 	" . . 
	ld (0c0c5h),hl		;65bf	22 c5 c0 	" . . 
l65c2h:
	ld hl,00100h		;65c2	21 00 01 	! . . 
	ld (0c0abh),hl		;65c5	22 ab c0 	" . . 
	call sub_678dh		;65c8	cd 8d 67 	. . g 
	call sub_6b0eh		;65cb	cd 0e 6b 	. . k 
	call sub_68e9h		;65ce	cd e9 68 	. . h 
	ld hl,(0c0afh)		;65d1	2a af c0 	* . . 
	ld a,h			;65d4	7c 	| 
	or l			;65d5	b5 	. 
	jr nz,l65c2h		;65d6	20 ea 	  . 
	ld a,(0c0c4h)		;65d8	3a c4 c0 	: . . 
	ld (0c08dh),a		;65db	32 8d c0 	2 . . 
	ld hl,00000h		;65de	21 00 00 	! . . 
	ld (0c0abh),hl		;65e1	22 ab c0 	" . . 
	ld a,(0c023h)		;65e4	3a 23 c0 	: # . 
	cp 001h		;65e7	fe 01 	. . 
	jr nz,l6611h		;65e9	20 26 	  & 
l65ebh:
	xor a			;65eb	af 	. 
	ld (0c0c4h),a		;65ec	32 c4 c0 	2 . . 
	ld a,081h		;65ef	3e 81 	> . 
	ld (0c08dh),a		;65f1	32 8d c0 	2 . . 
	ld a,010h		;65f4	3e 10 	> . 
	ld (0c0a6h),a		;65f6	32 a6 c0 	2 . . 
	call sub_6a38h		;65f9	cd 38 6a 	. 8 j 
	call sub_6b0eh		;65fc	cd 0e 6b 	. . k 
	call sub_68e9h		;65ff	cd e9 68 	. . h 
	ld de,08006h		;6602	11 06 80 	. . . 
	ld a,e			;6605	7b 	{ 
	ld (0c05fh),a		;6606	32 5f c0 	2 _ . 
	rst 8			;6609	cf 	. 
	ld a,(0c080h)		;660a	3a 80 c0 	: . . 
	ld (0c0c9h),a		;660d	32 c9 c0 	2 . . 
	ret			;6610	c9 	. 
l6611h:
	cp 011h		;6611	fe 11 	. . 
	jp z,l65ebh		;6613	ca eb 65 	. . e 
	cp 00dh		;6616	fe 0d 	. . 
	jr z,l662eh		;6618	28 14 	( . 
	ld a,(0c080h)		;661a	3a 80 c0 	: . . 
	ld (0c0c9h),a		;661d	32 c9 c0 	2 . . 
	rlca			;6620	07 	. 
	ret nc			;6621	d0 	. 
	ld a,001h		;6622	3e 01 	> . 
	ld (0c06fh),a		;6624	32 6f c0 	2 o . 
	ld a,(0c0a5h)		;6627	3a a5 c0 	: . . 
	ld (0c065h),a		;662a	32 65 c0 	2 e . 
	ret			;662d	c9 	. 
l662eh:
	ld a,007h		;662e	3e 07 	> . 
	ld (0c08dh),a		;6630	32 8d c0 	2 . . 
	ld a,(0c080h)		;6633	3a 80 c0 	: . . 
	ld (0c0c9h),a		;6636	32 c9 c0 	2 . . 
	ret			;6639	c9 	. 
sub_663ah:
	ld a,001h		;663a	3e 01 	> . 
	ld (0c066h),a		;663c	32 66 c0 	2 f . 
	ld ix,0c3a0h		;663f	dd 21 a0 c3 	. ! . . 
	ld de,00020h		;6643	11 20 00 	.   . 
	ld b,019h		;6646	06 19 	. . 
l6648h:
	ld a,(ix+000h)		;6648	dd 7e 00 	. ~ . 
	or a			;664b	b7 	. 
	jr z,l6659h		;664c	28 0b 	( . 
	ld a,(ix+009h)		;664e	dd 7e 09 	. ~ . 
	or (ix+00ah)		;6651	dd b6 0a 	. . . 
	jr z,l6659h		;6654	28 03 	( . 
	call 02752h		;6656	cd 52 27 	. R ' 
l6659h:
	add ix,de		;6659	dd 19 	. . 
	djnz l6648h		;665b	10 eb 	. . 
	ld a,(0c0c9h)		;665d	3a c9 c0 	: . . 
	and 0e0h		;6660	e6 e0 	. . 
	ret z			;6662	c8 	. 
	rlca			;6663	07 	. 
	jr c,l6697h		;6664	38 31 	8 1 
	rlca			;6666	07 	. 
	jr c,l6674h		;6667	38 0b 	8 . 
	xor a			;6669	af 	. 
	ld (0c0b6h),a		;666a	32 b6 c0 	2 . . 
	ld a,086h		;666d	3e 86 	> . 
	ld (0c08dh),a		;666f	32 8d c0 	2 . . 
	jr l6683h		;6672	18 0f 	. . 
l6674h:
	ld a,(0c0b6h)		;6674	3a b6 c0 	: . . 
	rrca			;6677	0f 	. 
	rrca			;6678	0f 	. 
	and 03fh		;6679	e6 3f 	. ? 
	ld (0c0b6h),a		;667b	32 b6 c0 	2 . . 
	add a,090h		;667e	c6 90 	. . 
	ld (0c08dh),a		;6680	32 8d c0 	2 . . 
l6683h:
	ld a,(0c0b0h)		;6683	3a b0 c0 	: . . 
	ld (0c091h),a		;6686	32 91 c0 	2 . . 
l6689h:
	ld a,010h		;6689	3e 10 	> . 
	ld (0c0a6h),a		;668b	32 a6 c0 	2 . . 
	call sub_6a38h		;668e	cd 38 6a 	. 8 j 
	ld a,082h		;6691	3e 82 	> . 
	ld (0ffffh),a		;6693	32 ff ff 	2 . . 
	ret			;6696	c9 	. 
l6697h:
	ld hl,0c08dh		;6697	21 8d c0 	! . . 
	inc (hl)			;669a	34 	4 
	set 7,(hl)		;669b	cb fe 	. . 
l669dh:
	jr l6689h		;669d	18 ea 	. . 
	pop bc			;669f	c1 	. 
	ld h,(hl)			;66a0	66 	f 
	call 0d966h		;66a1	cd 66 d9 	. f . 
	ld h,(hl)			;66a4	66 	f 
	push hl			;66a5	e5 	. 
	ld h,(hl)			;66a6	66 	f 
	pop af			;66a7	f1 	. 
	ld h,(hl)			;66a8	66 	f 
	ld h,(iy+009h)		;66a9	fd 66 09 	. f . 
	ld h,a			;66ac	67 	g 
	dec d			;66ad	15 	. 
	ld h,a			;66ae	67 	g 
	ld hl,02d67h		;66af	21 67 2d 	! g - 
	ld h,a			;66b2	67 	g 
	add hl,sp			;66b3	39 	9 
	ld h,a			;66b4	67 	g 
	ld b,l			;66b5	45 	E 
	ld h,a			;66b6	67 	g 
	ld d,c			;66b7	51 	Q 
	ld h,a			;66b8	67 	g 
	ld e,l			;66b9	5d 	] 
	ld h,a			;66ba	67 	g 
	ld l,c			;66bb	69 	i 
	ld h,a			;66bc	67 	g 
	ld (hl),l			;66bd	75 	u 
	ld h,a			;66be	67 	g 
	add a,c			;66bf	81 	. 
	ld h,a			;66c0	67 	g 
	add a,(hl)			;66c1	86 	. 
	nop			;66c2	00 	. 
	add a,b			;66c3	80 	. 
	inc b			;66c4	04 	. 
	add a,b			;66c5	80 	. 
	ld bc,00201h		;66c6	01 01 02 	. . . 
	add hl,bc			;66c9	09 	. 
	add a,c			;66ca	81 	. 
	nop			;66cb	00 	. 
	add a,b			;66cc	80 	. 
	add a,(hl)			;66cd	86 	. 
	ret nz			;66ce	c0 	. 
	add a,l			;66cf	85 	. 
	ret nz			;66d0	c0 	. 
	add a,l			;66d1	85 	. 
	ld bc,01100h		;66d2	01 00 11 	. . . 
	nop			;66d5	00 	. 
	ex af,af'			;66d6	08 	. 
	nop			;66d7	00 	. 
	add a,b			;66d8	80 	. 
	add a,(hl)			;66d9	86 	. 
	rra			;66da	1f 	. 
	add a,a			;66db	87 	. 
	inc hl			;66dc	23 	# 
	add a,a			;66dd	87 	. 
	ld bc,00500h		;66de	01 00 05 	. . . 
	ld bc,00028h		;66e1	01 28 00 	. ( . 
	add a,b			;66e4	80 	. 
	add a,(hl)			;66e5	86 	. 
	sub 08ah		;66e6	d6 8a 	. . 
	sub 08ah		;66e8	d6 8a 	. . 
	ld bc,00400h		;66ea	01 00 04 	. . . 
	nop			;66ed	00 	. 
	ex af,af'			;66ee	08 	. 
	nop			;66ef	00 	. 
	add a,b			;66f0	80 	. 
	add a,(hl)			;66f1	86 	. 
	adc a,08dh		;66f2	ce 8d 	. . 
	jp nc,0018dh		;66f4	d2 8d 01 	. . . 
	nop			;66f7	00 	. 
	rrca			;66f8	0f 	. 
	ld bc,00048h		;66f9	01 48 00 	. H . 
	add a,b			;66fc	80 	. 
	add a,(hl)			;66fd	86 	. 
	ld c,d			;66fe	4a 	J 
	sub b			;66ff	90 	. 
	ld c,d			;6700	4a 	J 
	sub b			;6701	90 	. 
	ld bc,00800h		;6702	01 00 08 	. . . 
	nop			;6705	00 	. 
	ex af,af'			;6706	08 	. 
	nop			;6707	00 	. 
	add a,b			;6708	80 	. 
	add a,(hl)			;6709	86 	. 
	ld a,e			;670a	7b 	{ 
	sub e			;670b	93 	. 
	ld a,e			;670c	7b 	{ 
	sub e			;670d	93 	. 
	ld bc,00800h		;670e	01 00 08 	. . . 
	nop			;6711	00 	. 
	ex af,af'			;6712	08 	. 
	nop			;6713	00 	. 
	add a,b			;6714	80 	. 
	add a,(hl)			;6715	86 	. 
	xor 097h		;6716	ee 97 	. . 
	xor 097h		;6718	ee 97 	. . 
	ld bc,00b00h		;671a	01 00 0b 	. . . 
	nop			;671d	00 	. 
	ex af,af'			;671e	08 	. 
	nop			;671f	00 	. 
	add a,b			;6720	80 	. 
	add a,(hl)			;6721	86 	. 
	ld h,(hl)			;6722	66 	f 
	sbc a,l			;6723	9d 	. 
	ld l,d			;6724	6a 	j 
	sbc a,l			;6725	9d 	. 
	ld bc,00f00h		;6726	01 00 0f 	. . . 
	ld bc,00048h		;6729	01 48 00 	. H . 
	add a,b			;672c	80 	. 
	add a,(hl)			;672d	86 	. 
	ld l,d			;672e	6a 	j 
	and b			;672f	a0 	. 
	ld l,d			;6730	6a 	j 
	and b			;6731	a0 	. 
	ld bc,00e00h		;6732	01 00 0e 	. . . 
	nop			;6735	00 	. 
	ex af,af'			;6736	08 	. 
	nop			;6737	00 	. 
	add a,b			;6738	80 	. 
	add a,(hl)			;6739	86 	. 
	add a,0a2h		;673a	c6 a2 	. . 
	adc a,0a2h		;673c	ce a2 	. . 
	ld bc,00502h		;673e	01 02 05 	. . . 
	ld a,(bc)			;6741	0a 	. 
	add a,b			;6742	80 	. 
	nop			;6743	00 	. 
	add a,b			;6744	80 	. 
	add a,(hl)			;6745	86 	. 
	add a,0a9h		;6746	c6 a9 	. . 
	add a,0a9h		;6748	c6 a9 	. . 
	ld bc,00200h		;674a	01 00 02 	. . . 
	nop			;674d	00 	. 
	ex af,af'			;674e	08 	. 
	nop			;674f	00 	. 
	add a,b			;6750	80 	. 
	add a,(hl)			;6751	86 	. 
	or h			;6752	b4 	. 
	xor d			;6753	aa 	. 
	or h			;6754	b4 	. 
	xor d			;6755	aa 	. 
	ex af,af'			;6756	08 	. 
	nop			;6757	00 	. 
	rst 38h			;6758	ff 	. 
	nop			;6759	00 	. 
	inc b			;675a	04 	. 
	nop			;675b	00 	. 
	add a,b			;675c	80 	. 
	add a,(hl)			;675d	86 	. 
	ld d,d			;675e	52 	R 
	xor e			;675f	ab 	. 
	ld d,d			;6760	52 	R 
	xor e			;6761	ab 	. 
	ld bc,00100h		;6762	01 00 01 	. . . 
	nop			;6765	00 	. 
	ex af,af'			;6766	08 	. 
	nop			;6767	00 	. 
	add a,d			;6768	82 	. 
	add a,(hl)			;6769	86 	. 
	ld l,h			;676a	6c 	l 
	xor h			;676b	ac 	. 
	ld l,h			;676c	6c 	l 
	xor h			;676d	ac 	. 
	ld bc,00a00h		;676e	01 00 0a 	. . . 
	nop			;6771	00 	. 
	ex af,af'			;6772	08 	. 
	nop			;6773	00 	. 
	add a,b			;6774	80 	. 
	add a,(hl)			;6775	86 	. 
	dec (hl)			;6776	35 	5 
	xor a			;6777	af 	. 
	ld b,c			;6778	41 	A 
	xor a			;6779	af 	. 
	ld bc,00701h		;677a	01 01 07 	. . . 
	rlca			;677d	07 	. 
	add a,b			;677e	80 	. 
	nop			;677f	00 	. 
	add a,d			;6780	82 	. 
	add a,(hl)			;6781	86 	. 
	ld d,e			;6782	53 	S 
	cp h			;6783	bc 	. 
	ld d,e			;6784	53 	S 
	cp h			;6785	bc 	. 
	ld bc,00100h		;6786	01 00 01 	. . . 
	ld bc,00001h		;6789	01 01 00 	. . . 
	add a,d			;678c	82 	. 
sub_678dh:
	ld de,(0c0abh)		;678d	ed 5b ab c0 	. [ . . 
	ld a,d			;6791	7a 	z 
	or e			;6792	b3 	. 
	jp z,l6990h		;6793	ca 90 69 	. . i 
	ld a,00ch		;6796	3e 0c 	> . 
	ld (0c0a1h),a		;6798	32 a1 c0 	2 . . 
	ld bc,(0c0adh)		;679b	ed 4b ad c0 	. K . . 
	ld hl,(0c0afh)		;679f	2a af c0 	* . . 
	add hl,de			;67a2	19 	. 
	ld (0c0afh),hl		;67a3	22 af c0 	" . . 
	ex de,hl			;67a6	eb 	. 
	bit 7,h		;67a7	cb 7c 	. | 
	jp nz,l6870h		;67a9	c2 70 68 	. p h 
	add hl,bc			;67ac	09 	. 
	ld a,h			;67ad	7c 	| 
	cp 008h		;67ae	fe 08 	. . 
	ld (0c0adh),hl		;67b0	22 ad c0 	" . . 
	ret c			;67b3	d8 	. 
	and 007h		;67b4	e6 07 	. . 
	ld (0c0aeh),a		;67b6	32 ae c0 	2 . . 
	ld a,(0c0b7h)		;67b9	3a b7 c0 	: . . 
	sub 002h		;67bc	d6 02 	. . 
	jp nc,l67c3h		;67be	d2 c3 67 	. . g 
	ld a,03eh		;67c1	3e 3e 	> > 
l67c3h:
	ld (0c0b7h),a		;67c3	32 b7 c0 	2 . . 
	ld hl,(0c0b4h)		;67c6	2a b4 c0 	* . . 
	ld bc,00080h		;67c9	01 80 00 	. . . 
	or a			;67cc	b7 	. 
	sbc hl,bc		;67cd	ed 42 	. B 
	jp nc,l67d5h		;67cf	d2 d5 67 	. . g 
	ld hl,00f80h		;67d2	21 80 0f 	! . . 
l67d5h:
	ex af,af'			;67d5	08 	. 
	ld (0c0b4h),hl		;67d6	22 b4 c0 	" . . 
	ld a,(0c0b3h)		;67d9	3a b3 c0 	: . . 
	dec a			;67dc	3d 	= 
	and 001h		;67dd	e6 01 	. . 
	ld (0c0b3h),a		;67df	32 b3 c0 	2 . . 
	ld hl,0c0b6h		;67e2	21 b6 c0 	! . . 
	ex af,af'			;67e5	08 	. 
	jp nc,l682eh		;67e6	d2 2e 68 	. . h 
	ld a,(hl)			;67e9	7e 	~ 
	sub 001h		;67ea	d6 01 	. . 
	ld (hl),a			;67ec	77 	w 
	ld hl,0c08dh		;67ed	21 8d c0 	! . . 
	dec (hl)			;67f0	35 	5 
	set 7,(hl)		;67f1	cb fe 	. . 
	jp nc,l680ah		;67f3	d2 0a 68 	. . h 
	inc (hl)			;67f6	34 	4 
	res 7,(hl)		;67f7	cb be 	. . 
	ld hl,0c0c9h		;67f9	21 c9 c0 	! . . 
	res 2,(hl)		;67fc	cb 96 	. . 
	ld hl,00000h		;67fe	21 00 00 	! . . 
	ld (0c0abh),hl		;6801	22 ab c0 	" . . 
	ld a,008h		;6804	3e 08 	> . 
	ld (0c0b0h),a		;6806	32 b0 c0 	2 . . 
	ret			;6809	c9 	. 
l680ah:
	add a,a			;680a	87 	. 
	ld c,a			;680b	4f 	O 
	ld b,000h		;680c	06 00 	. . 
	ld a,(0c0c4h)		;680e	3a c4 c0 	: . . 
	add a,a			;6811	87 	. 
	ld e,a			;6812	5f 	_ 
	ld d,000h		;6813	16 00 	. . 
	ld a,(0c081h)		;6815	3a 81 c0 	: . . 
	ld (0ffffh),a		;6818	32 ff ff 	2 . . 
	ld hl,(0c0a3h)		;681b	2a a3 c0 	* . . 
	add hl,de			;681e	19 	. 
	ld a,(hl)			;681f	7e 	~ 
	inc hl			;6820	23 	# 
	ld h,(hl)			;6821	66 	f 
	ld l,a			;6822	6f 	o 
	add hl,bc			;6823	09 	. 
	ld a,(hl)			;6824	7e 	~ 
	inc hl			;6825	23 	# 
	ld h,(hl)			;6826	66 	f 
	ld l,a			;6827	6f 	o 
	ld de,0d700h		;6828	11 00 d7 	. . . 
	call sub_6bb4h		;682b	cd b4 6b 	. . k 
l682eh:
	ld a,001h		;682e	3e 01 	> . 
	ld (0c0aah),a		;6830	32 aa c0 	2 . . 
	ld hl,0d700h		;6833	21 00 d7 	! . . 
	ld a,(0c0b5h)		;6836	3a b5 c0 	: . . 
	ld c,a			;6839	4f 	O 
	ld b,000h		;683a	06 00 	. . 
	add hl,bc			;683c	09 	. 
	ld de,0cf00h		;683d	11 00 cf 	. . . 
	ld a,085h		;6840	3e 85 	> . 
	ld (0ffffh),a		;6842	32 ff ff 	2 . . 
l6845h:
	push hl			;6845	e5 	. 
	ld c,(hl)			;6846	4e 	N 
	ld hl,(0c087h)		;6847	2a 87 c0 	* . . 
	add hl,bc			;684a	09 	. 
	add hl,bc			;684b	09 	. 
	ld a,(hl)			;684c	7e 	~ 
	inc hl			;684d	23 	# 
	ld h,(hl)			;684e	66 	f 
	ld l,a			;684f	6f 	o 
	ld a,(0c0b3h)		;6850	3a b3 c0 	: . . 
	add a,a			;6853	87 	. 
	ld c,a			;6854	4f 	O 
	add hl,bc			;6855	09 	. 
	ldi		;6856	ed a0 	. . 
	ldi		;6858	ed a0 	. . 
	inc hl			;685a	23 	# 
	inc hl			;685b	23 	# 
	ldi		;685c	ed a0 	. . 
	ldi		;685e	ed a0 	. . 
	ld a,(0c0a1h)		;6860	3a a1 c0 	: . . 
	dec a			;6863	3d 	= 
	ld (0c0a1h),a		;6864	32 a1 c0 	2 . . 
	pop hl			;6867	e1 	. 
	ret z			;6868	c8 	. 
	ld bc,00010h		;6869	01 10 00 	. . . 
	add hl,bc			;686c	09 	. 
	jp l6845h		;686d	c3 45 68 	. E h 
l6870h:
	add hl,bc			;6870	09 	. 
	ld (0c0adh),hl		;6871	22 ad c0 	" . . 
	ret c			;6874	d8 	. 
	ld a,(0c0c9h)		;6875	3a c9 c0 	: . . 
	bit 3,a		;6878	cb 5f 	. _ 
	jp nz,l6884h		;687a	c2 84 68 	. . h 
	ld hl,00000h		;687d	21 00 00 	! . . 
	ld (0c0abh),hl		;6880	22 ab c0 	" . . 
	ret			;6883	c9 	. 
l6884h:
	ld a,h			;6884	7c 	| 
	and 007h		;6885	e6 07 	. . 
	ld (0c0aeh),a		;6887	32 ae c0 	2 . . 
	ld a,(0c0b7h)		;688a	3a b7 c0 	: . . 
	or a			;688d	b7 	. 
	jp nz,l68a2h		;688e	c2 a2 68 	. . h 
	ld hl,0c08dh		;6891	21 8d c0 	! . . 
	inc (hl)			;6894	34 	4 
	set 7,(hl)		;6895	cb fe 	. . 
	ld hl,0c0b6h		;6897	21 b6 c0 	! . . 
	ld a,(hl)			;689a	7e 	~ 
	inc a			;689b	3c 	< 
	call l680ah		;689c	cd 0a 68 	. . h 
	jp l68a5h		;689f	c3 a5 68 	. . h 
l68a2h:
	call l682eh		;68a2	cd 2e 68 	. . h 
l68a5h:
	ld a,(0c0b7h)		;68a5	3a b7 c0 	: . . 
	add a,002h		;68a8	c6 02 	. . 
	cp 040h		;68aa	fe 40 	. @ 
	jp c,l68b0h		;68ac	da b0 68 	. . h 
	xor a			;68af	af 	. 
l68b0h:
	ld (0c0b7h),a		;68b0	32 b7 c0 	2 . . 
	ld hl,(0c0b4h)		;68b3	2a b4 c0 	* . . 
	ld bc,00080h		;68b6	01 80 00 	. . . 
	add hl,bc			;68b9	09 	. 
	ld a,h			;68ba	7c 	| 
	cp 010h		;68bb	fe 10 	. . 
	jp c,l68c3h		;68bd	da c3 68 	. . h 
	ld hl,00000h		;68c0	21 00 00 	! . . 
l68c3h:
	ex af,af'			;68c3	08 	. 
	ld (0c0b4h),hl		;68c4	22 b4 c0 	" . . 
	ld a,(0c0b3h)		;68c7	3a b3 c0 	: . . 
	inc a			;68ca	3c 	< 
	and 001h		;68cb	e6 01 	. . 
	ld (0c0b3h),a		;68cd	32 b3 c0 	2 . . 
	ld hl,0c0b6h		;68d0	21 b6 c0 	! . . 
	ld bc,(0c0a0h)		;68d3	ed 4b a0 c0 	. K . . 
	ex af,af'			;68d7	08 	. 
	ret c			;68d8	d8 	. 
	inc (hl)			;68d9	34 	4 
	ld a,(hl)			;68da	7e 	~ 
	cp c			;68db	b9 	. 
	ret c			;68dc	d8 	. 
	ld hl,0c0c9h		;68dd	21 c9 c0 	! . . 
	res 3,(hl)		;68e0	cb 9e 	. . 
	ld hl,0c08dh		;68e2	21 8d c0 	! . . 
	dec (hl)			;68e5	35 	5 
	res 7,(hl)		;68e6	cb be 	. . 
	ret			;68e8	c9 	. 
sub_68e9h:
	ld a,(0c0aah)		;68e9	3a aa c0 	: . . 
	rrca			;68ec	0f 	. 
	jp nc,l692fh		;68ed	d2 2f 69 	. / i 
	ld a,(0c0b0h)		;68f0	3a b0 c0 	: . . 
	ld b,a			;68f3	47 	G 
	ld a,(0c0ach)		;68f4	3a ac c0 	: . . 
	bit 7,a		;68f7	cb 7f 	.  
	jp nz,l6900h		;68f9	c2 00 69 	. . i 
	ld a,b			;68fc	78 	x 
	sub 008h		;68fd	d6 08 	. . 
	ld b,a			;68ff	47 	G 
l6900h:
	ld a,b			;6900	78 	x 
	cpl			;6901	2f 	/ 
	rrca			;6902	0f 	. 
	rrca			;6903	0f 	. 
	and 03eh		;6904	e6 3e 	. > 
	ld c,a			;6906	4f 	O 
	ld b,000h		;6907	06 00 	. . 
	ld hl,(0c0c5h)		;6909	2a c5 c0 	* . . 
	add hl,bc			;690c	09 	. 
	ex de,hl			;690d	eb 	. 
	ld hl,0cf00h		;690e	21 00 cf 	! . . 
	ld bc,00040h		;6911	01 40 00 	. @ . 
	ld a,018h		;6914	3e 18 	> . 
l6916h:
	ex af,af'			;6916	08 	. 
	rst 8			;6917	cf 	. 
	ld a,(hl)			;6918	7e 	~ 
	out (0beh),a		;6919	d3 be 	. . 
	inc hl			;691b	23 	# 
	ld a,(hl)			;691c	7e 	~ 
	inc hl			;691d	23 	# 
	out (0beh),a		;691e	d3 be 	. . 
	ex de,hl			;6920	eb 	. 
	add hl,bc			;6921	09 	. 
	ld a,h			;6922	7c 	| 
	cp 07fh		;6923	fe 7f 	.  
	jp nz,l692ah		;6925	c2 2a 69 	. * i 
	ld h,078h		;6928	26 78 	& x 
l692ah:
	ex de,hl			;692a	eb 	. 
	ex af,af'			;692b	08 	. 
	dec a			;692c	3d 	= 
	jr nz,l6916h		;692d	20 e7 	  . 
l692fh:
	ld a,(0c0aah)		;692f	3a aa c0 	: . . 
	rrca			;6932	0f 	. 
	rrca			;6933	0f 	. 
	jp nc,l697ch		;6934	d2 7c 69 	. | i 
	ld a,(0c0bah)		;6937	3a ba c0 	: . . 
	bit 7,a		;693a	cb 7f 	.  
	ld a,(0c0beh)		;693c	3a be c0 	: . . 
	jp z,l6947h		;693f	ca 47 69 	. G i 
	and 0f8h		;6942	e6 f8 	. . 
	jp l6950h		;6944	c3 50 69 	. P i 
l6947h:
	and 0f8h		;6947	e6 f8 	. . 
	sub 020h		;6949	d6 20 	.   
	jp nc,l6950h		;694b	d2 50 69 	. P i 
	sub 020h		;694e	d6 20 	.   
l6950h:
	ld h,000h		;6950	26 00 	& . 
	ld l,a			;6952	6f 	o 
	add hl,hl			;6953	29 	) 
	add hl,hl			;6954	29 	) 
	add hl,hl			;6955	29 	) 
	ex de,hl			;6956	eb 	. 
	ld hl,(0c0b7h)		;6957	2a b7 c0 	* . . 
	add hl,de			;695a	19 	. 
	ld a,(0c0b7h)		;695b	3a b7 c0 	: . . 
	ld b,a			;695e	47 	G 
	ex af,af'			;695f	08 	. 
	ld a,040h		;6960	3e 40 	> @ 
	sub b			;6962	90 	. 
	ex de,hl			;6963	eb 	. 
	ld b,000h		;6964	06 00 	. . 
	ld c,a			;6966	4f 	O 
	ld hl,0cf38h		;6967	21 38 cf 	! 8 . 
	call 00131h		;696a	cd 31 01 	. 1 . 
	ex af,af'			;696d	08 	. 
	or a			;696e	b7 	. 
	jp z,l697ch		;696f	ca 7c 69 	. | i 
	ld c,a			;6972	4f 	O 
	ld b,000h		;6973	06 00 	. . 
	ld a,e			;6975	7b 	{ 
	and 0c0h		;6976	e6 c0 	. . 
	ld e,a			;6978	5f 	_ 
	call 00131h		;6979	cd 31 01 	. 1 . 
l697ch:
	xor a			;697c	af 	. 
	ld (0c0aah),a		;697d	32 aa c0 	2 . . 
	ld de,(0c0b0h)		;6980	ed 5b b0 c0 	. [ . . 
	ld d,088h		;6984	16 88 	. . 
	rst 8			;6986	cf 	. 
	ld de,(0c0beh)		;6987	ed 5b be c0 	. [ . . 
	ld d,089h		;698b	16 89 	. . 
	jp 00008h		;698d	c3 08 00 	. . . 
l6990h:
	ld de,(0c0b9h)		;6990	ed 5b b9 c0 	. [ . . 
	ld a,d			;6994	7a 	z 
	or e			;6995	b3 	. 
	ret z			;6996	c8 	. 
	ld a,010h		;6997	3e 10 	> . 
	ld (0c0a6h),a		;6999	32 a6 c0 	2 . . 
	ld bc,(0c0bbh)		;699c	ed 4b bb c0 	. K . . 
	ld hl,(0c0bdh)		;69a0	2a bd c0 	* . . 
	add hl,de			;69a3	19 	. 
	ld (0c0bdh),hl		;69a4	22 bd c0 	" . . 
	bit 7,d		;69a7	cb 7a 	. z 
	ld a,h			;69a9	7c 	| 
	jp nz,l69b7h		;69aa	c2 b7 69 	. . i 
	cp 0e0h		;69ad	fe e0 	. . 
	jp c,l69beh		;69af	da be 69 	. . i 
	sub 0e0h		;69b2	d6 e0 	. . 
l69b4h:
	jp l69beh		;69b4	c3 be 69 	. . i 
l69b7h:
	cp 0e0h		;69b7	fe e0 	. . 
	jp c,l69beh		;69b9	da be 69 	. . i 
	sub 020h		;69bc	d6 20 	.   
l69beh:
	ld (0c0beh),a		;69be	32 be c0 	2 . . 
	ex de,hl			;69c1	eb 	. 
	bit 7,h		;69c2	cb 7c 	. | 
	jp nz,l6a84h		;69c4	c2 84 6a 	. . j 
	add hl,bc			;69c7	09 	. 
	ld a,h			;69c8	7c 	| 
	cp 008h		;69c9	fe 08 	. . 
	ld (0c0bbh),hl		;69cb	22 bb c0 	" . . 
	ret c			;69ce	d8 	. 
	and 007h		;69cf	e6 07 	. . 
	ld (0c0bch),a		;69d1	32 bc c0 	2 . . 
	ld hl,(0c0c5h)		;69d4	2a c5 c0 	* . . 
	ld bc,00040h		;69d7	01 40 00 	. @ . 
	add hl,bc			;69da	09 	. 
	ld a,h			;69db	7c 	| 
	cp 07fh		;69dc	fe 7f 	.  
	jp nz,l69e3h		;69de	c2 e3 69 	. . i 
	ld h,078h		;69e1	26 78 	& x 
l69e3h:
	ld (0c0c5h),hl		;69e3	22 c5 c0 	" . . 
	ld a,(0c0c1h)		;69e6	3a c1 c0 	: . . 
	inc a			;69e9	3c 	< 
	and 001h		;69ea	e6 01 	. . 
	ld (0c0c1h),a		;69ec	32 c1 c0 	2 . . 
	ld hl,(0c0c2h)		;69ef	2a c2 c0 	* . . 
	ld bc,00080h		;69f2	01 80 00 	. . . 
	add hl,bc			;69f5	09 	. 
	ld a,h			;69f6	7c 	| 
	cp 00ch		;69f7	fe 0c 	. . 
	ld (0c0c2h),hl		;69f9	22 c2 c0 	" . . 
	jp c,l6a3bh		;69fc	da 3b 6a 	. ; j 
	ld hl,0c08dh		;69ff	21 8d c0 	! . . 
	inc (hl)			;6a02	34 	4 
	set 7,(hl)		;6a03	cb fe 	. . 
	ld hl,00000h		;6a05	21 00 00 	! . . 
	ld (0c0c2h),hl		;6a08	22 c2 c0 	" . . 
	ld bc,(0c0a5h)		;6a0b	ed 4b a5 c0 	. K . . 
	ld hl,0c0c4h		;6a0f	21 c4 c0 	! . . 
	inc (hl)			;6a12	34 	4 
	ld a,(hl)			;6a13	7e 	~ 
	cp c			;6a14	b9 	. 
	jp c,sub_6a38h		;6a15	da 38 6a 	. 8 j 
	xor a			;6a18	af 	. 
	ld (hl),a			;6a19	77 	w 
	ld hl,0c0c9h		;6a1a	21 c9 c0 	! . . 
	res 0,(hl)		;6a1d	cb 86 	. . 
	ld hl,00000h		;6a1f	21 00 00 	! . . 
	ld (0c0b9h),hl		;6a22	22 b9 c0 	" . . 
	ld a,(0c0beh)		;6a25	3a be c0 	: . . 
	and 0f0h		;6a28	e6 f0 	. . 
	ld (0c0beh),a		;6a2a	32 be c0 	2 . . 
	xor a			;6a2d	af 	. 
	ld (0c0bch),a		;6a2e	32 bc c0 	2 . . 
	ld hl,0c08dh		;6a31	21 8d c0 	! . . 
	dec (hl)			;6a34	35 	5 
	res 7,(hl)		;6a35	cb be 	. . 
	ret			;6a37	c9 	. 
sub_6a38h:
	call sub_6ae6h		;6a38	cd e6 6a 	. . j 
l6a3bh:
	ld a,002h		;6a3b	3e 02 	> . 
	ld (0c0aah),a		;6a3d	32 aa c0 	2 . . 
	ld hl,0d700h		;6a40	21 00 d7 	! . . 
	ld a,(0c0c3h)		;6a43	3a c3 c0 	: . . 
	or a			;6a46	b7 	. 
	jp z,l6a52h		;6a47	ca 52 6a 	. R j 
	ld bc,00010h		;6a4a	01 10 00 	. . . 
l6a4dh:
	add hl,bc			;6a4d	09 	. 
	dec a			;6a4e	3d 	= 
	jp nz,l6a4dh		;6a4f	c2 4d 6a 	. M j 
l6a52h:
	ld de,0cf38h		;6a52	11 38 cf 	. 8 . 
	ld a,085h		;6a55	3e 85 	> . 
	ld (0ffffh),a		;6a57	32 ff ff 	2 . . 
l6a5ah:
	push hl			;6a5a	e5 	. 
	ld a,(hl)			;6a5b	7e 	~ 
	ld c,a			;6a5c	4f 	O 
	ld b,000h		;6a5d	06 00 	. . 
	ld hl,(0c087h)		;6a5f	2a 87 c0 	* . . 
	add hl,bc			;6a62	09 	. 
	add hl,bc			;6a63	09 	. 
	ld a,(hl)			;6a64	7e 	~ 
	inc hl			;6a65	23 	# 
	ld h,(hl)			;6a66	66 	f 
	ld l,a			;6a67	6f 	o 
	ld a,(0c0c1h)		;6a68	3a c1 c0 	: . . 
	add a,a			;6a6b	87 	. 
	add a,a			;6a6c	87 	. 
	ld c,a			;6a6d	4f 	O 
	add hl,bc			;6a6e	09 	. 
	ldi		;6a6f	ed a0 	. . 
	ldi		;6a71	ed a0 	. . 
	ldi		;6a73	ed a0 	. . 
	ldi		;6a75	ed a0 	. . 
	ld a,(0c0a6h)		;6a77	3a a6 c0 	: . . 
	dec a			;6a7a	3d 	= 
	ld (0c0a6h),a		;6a7b	32 a6 c0 	2 . . 
	pop hl			;6a7e	e1 	. 
	ret z			;6a7f	c8 	. 
	inc hl			;6a80	23 	# 
	jp l6a5ah		;6a81	c3 5a 6a 	. Z j 
l6a84h:
	add hl,bc			;6a84	09 	. 
	ld (0c0bbh),hl		;6a85	22 bb c0 	" . . 
	ret c			;6a88	d8 	. 
	ld a,h			;6a89	7c 	| 
	and 007h		;6a8a	e6 07 	. . 
	ld (0c0bch),a		;6a8c	32 bc c0 	2 . . 
	ld hl,(0c0c5h)		;6a8f	2a c5 c0 	* . . 
	ld bc,00040h		;6a92	01 40 00 	. @ . 
	or a			;6a95	b7 	. 
	sbc hl,bc		;6a96	ed 42 	. B 
	ld a,h			;6a98	7c 	| 
	cp 077h		;6a99	fe 77 	. w 
	jp nz,l6aa0h		;6a9b	c2 a0 6a 	. . j 
	ld h,07eh		;6a9e	26 7e 	& ~ 
l6aa0h:
	ld (0c0c5h),hl		;6aa0	22 c5 c0 	" . . 
	ld hl,(0c0c2h)		;6aa3	2a c2 c0 	* . . 
	ld bc,00080h		;6aa6	01 80 00 	. . . 
	or a			;6aa9	b7 	. 
	sbc hl,bc		;6aaa	ed 42 	. B 
	jp nc,l6ab2h		;6aac	d2 b2 6a 	. . j 
	ld hl,00b80h		;6aaf	21 80 0b 	! . . 
l6ab2h:
	ex af,af'			;6ab2	08 	. 
	ld (0c0c2h),hl		;6ab3	22 c2 c0 	" . . 
	ld a,(0c0c1h)		;6ab6	3a c1 c0 	: . . 
	dec a			;6ab9	3d 	= 
	and 001h		;6aba	e6 01 	. . 
	ld (0c0c1h),a		;6abc	32 c1 c0 	2 . . 
	ex af,af'			;6abf	08 	. 
	ld a,(0c0c4h)		;6ac0	3a c4 c0 	: . . 
	jp nc,l6a3bh		;6ac3	d2 3b 6a 	. ; j 
	sub 001h		;6ac6	d6 01 	. . 
	jp nc,l6ad7h		;6ac8	d2 d7 6a 	. . j 
	ld hl,0c0c9h		;6acb	21 c9 c0 	! . . 
	res 1,(hl)		;6ace	cb 8e 	. . 
	ld hl,00000h		;6ad0	21 00 00 	! . . 
	ld (0c0b9h),hl		;6ad3	22 b9 c0 	" . . 
	ret			;6ad6	c9 	. 
l6ad7h:
	ld hl,0c08dh		;6ad7	21 8d c0 	! . . 
	dec (hl)			;6ada	35 	5 
	set 7,(hl)		;6adb	cb fe 	. . 
	ld (0c0c4h),a		;6add	32 c4 c0 	2 . . 
	call sub_6aeah		;6ae0	cd ea 6a 	. . j 
	jp l6a3bh		;6ae3	c3 3b 6a 	. ; j 
sub_6ae6h:
	ld a,(0c0c4h)		;6ae6	3a c4 c0 	: . . 
	inc a			;6ae9	3c 	< 
sub_6aeah:
	add a,a			;6aea	87 	. 
	ld c,a			;6aeb	4f 	O 
	ld b,000h		;6aec	06 00 	. . 
	ld a,(0c0b6h)		;6aee	3a b6 c0 	: . . 
	add a,a			;6af1	87 	. 
	ld e,a			;6af2	5f 	_ 
	ld d,000h		;6af3	16 00 	. . 
	ld a,(0c081h)		;6af5	3a 81 c0 	: . . 
	ld (0ffffh),a		;6af8	32 ff ff 	2 . . 
	ld hl,(0c0a8h)		;6afb	2a a8 c0 	* . . 
	add hl,de			;6afe	19 	. 
	ld a,(hl)			;6aff	7e 	~ 
	inc hl			;6b00	23 	# 
	ld h,(hl)			;6b01	66 	f 
	ld l,a			;6b02	6f 	o 
	add hl,bc			;6b03	09 	. 
	ld a,(hl)			;6b04	7e 	~ 
	inc hl			;6b05	23 	# 
	ld h,(hl)			;6b06	66 	f 
	ld l,a			;6b07	6f 	o 
	ld de,0d700h		;6b08	11 00 d7 	. . . 
	jp sub_6bb4h		;6b0b	c3 b4 6b 	. . k 
sub_6b0eh:
	ld a,082h		;6b0e	3e 82 	> . 
	ld (0ffffh),a		;6b10	32 ff ff 	2 . . 
	ld a,(0c0aah)		;6b13	3a aa c0 	: . . 
	rrca			;6b16	0f 	. 
	jp nc,l6b61h		;6b17	d2 61 6b 	. a k 
	ld a,(0c0b0h)		;6b1a	3a b0 c0 	: . . 
	ld b,a			;6b1d	47 	G 
	ld a,(0c0ach)		;6b1e	3a ac c0 	: . . 
	bit 7,a		;6b21	cb 7f 	.  
	jp nz,l6b2ah		;6b23	c2 2a 6b 	. * k 
	ld a,b			;6b26	78 	x 
	sub 008h		;6b27	d6 08 	. . 
	ld b,a			;6b29	47 	G 
l6b2ah:
	ld a,b			;6b2a	78 	x 
	cpl			;6b2b	2f 	/ 
	rrca			;6b2c	0f 	. 
	rrca			;6b2d	0f 	. 
	and 03eh		;6b2e	e6 3e 	. > 
	ld c,a			;6b30	4f 	O 
	ld b,000h		;6b31	06 00 	. . 
	ld hl,(0c0c5h)		;6b33	2a c5 c0 	* . . 
	ld a,h			;6b36	7c 	| 
	and 007h		;6b37	e6 07 	. . 
	ld h,a			;6b39	67 	g 
	add hl,bc			;6b3a	09 	. 
	ex de,hl			;6b3b	eb 	. 
	ld hl,0c800h		;6b3c	21 00 c8 	! . . 
	add hl,de			;6b3f	19 	. 
	ex de,hl			;6b40	eb 	. 
	ld hl,0cf00h		;6b41	21 00 cf 	! . . 
	ld bc,00040h		;6b44	01 40 00 	. @ . 
	ld a,018h		;6b47	3e 18 	> . 
l6b49h:
	ex af,af'			;6b49	08 	. 
	ld a,(hl)			;6b4a	7e 	~ 
	ld (de),a			;6b4b	12 	. 
	inc hl			;6b4c	23 	# 
	inc de			;6b4d	13 	. 
	ld a,(hl)			;6b4e	7e 	~ 
	inc hl			;6b4f	23 	# 
	ld (de),a			;6b50	12 	. 
	dec de			;6b51	1b 	. 
	ex de,hl			;6b52	eb 	. 
	add hl,bc			;6b53	09 	. 
	ld a,h			;6b54	7c 	| 
	cp 0cfh		;6b55	fe cf 	. . 
	jp nz,l6b5ch		;6b57	c2 5c 6b 	. \ k 
	ld h,0c8h		;6b5a	26 c8 	& . 
l6b5ch:
	ex de,hl			;6b5c	eb 	. 
	ex af,af'			;6b5d	08 	. 
	dec a			;6b5e	3d 	= 
	jr nz,l6b49h		;6b5f	20 e8 	  . 
l6b61h:
	ld a,(0c0aah)		;6b61	3a aa c0 	: . . 
	rrca			;6b64	0f 	. 
	rrca			;6b65	0f 	. 
	ret nc			;6b66	d0 	. 
	ld a,(0c0bah)		;6b67	3a ba c0 	: . . 
	bit 7,a		;6b6a	cb 7f 	.  
	ld a,(0c0beh)		;6b6c	3a be c0 	: . . 
	jp z,l6b77h		;6b6f	ca 77 6b 	. w k 
	and 0f8h		;6b72	e6 f8 	. . 
	jp l6b80h		;6b74	c3 80 6b 	. . k 
l6b77h:
	and 0f8h		;6b77	e6 f8 	. . 
	sub 020h		;6b79	d6 20 	.   
	jp nc,l6b80h		;6b7b	d2 80 6b 	. . k 
	sub 020h		;6b7e	d6 20 	.   
l6b80h:
	ld h,000h		;6b80	26 00 	& . 
	ld l,a			;6b82	6f 	o 
	add hl,hl			;6b83	29 	) 
	add hl,hl			;6b84	29 	) 
	add hl,hl			;6b85	29 	) 
	ex de,hl			;6b86	eb 	. 
	ld hl,(0c0b7h)		;6b87	2a b7 c0 	* . . 
	ld h,000h		;6b8a	26 00 	& . 
	add hl,de			;6b8c	19 	. 
	ex de,hl			;6b8d	eb 	. 
	ld hl,0c800h		;6b8e	21 00 c8 	! . . 
	add hl,de			;6b91	19 	. 
	ex de,hl			;6b92	eb 	. 
	ld a,(0c0b7h)		;6b93	3a b7 c0 	: . . 
	ld b,a			;6b96	47 	G 
	ex af,af'			;6b97	08 	. 
	ld a,040h		;6b98	3e 40 	> @ 
	sub b			;6b9a	90 	. 
	ld b,000h		;6b9b	06 00 	. . 
	ld c,a			;6b9d	4f 	O 
	ld hl,0cf38h		;6b9e	21 38 cf 	! 8 . 
	ldir		;6ba1	ed b0 	. . 
	ex af,af'			;6ba3	08 	. 
	or a			;6ba4	b7 	. 
	ret z			;6ba5	c8 	. 
	ex de,hl			;6ba6	eb 	. 
	ld bc,00040h		;6ba7	01 40 00 	. @ . 
	or a			;6baa	b7 	. 
	sbc hl,bc		;6bab	ed 42 	. B 
	ex de,hl			;6bad	eb 	. 
	ld c,a			;6bae	4f 	O 
	ld b,000h		;6baf	06 00 	. . 
	ldir		;6bb1	ed b0 	. . 
	ret			;6bb3	c9 	. 
sub_6bb4h:
	ld a,(hl)			;6bb4	7e 	~ 
	or a			;6bb5	b7 	. 
	ret z			;6bb6	c8 	. 
	bit 7,a		;6bb7	cb 7f 	.  
	jr nz,l6bc6h		;6bb9	20 0b 	  . 
	ld b,a			;6bbb	47 	G 
	inc hl			;6bbc	23 	# 
	ld a,(hl)			;6bbd	7e 	~ 
l6bbeh:
	ld (de),a			;6bbe	12 	. 
	inc de			;6bbf	13 	. 
	djnz l6bbeh		;6bc0	10 fc 	. . 
	inc hl			;6bc2	23 	# 
	jp sub_6bb4h		;6bc3	c3 b4 6b 	. . k 
l6bc6h:
	and 07fh		;6bc6	e6 7f 	.  
	ld c,a			;6bc8	4f 	O 
	ld b,000h		;6bc9	06 00 	. . 
	inc hl			;6bcb	23 	# 
	ldir		;6bcc	ed b0 	. . 
	jp sub_6bb4h		;6bce	c3 b4 6b 	. . k 
	ld a,(0c005h)		;6bd1	3a 05 c0 	: . . 
	and 020h		;6bd4	e6 20 	.   
	jp z,l6bdfh		;6bd6	ca df 6b 	. . k 
	ld a,000h		;6bd9	3e 00 	> . 
	ld (0c01fh),a		;6bdb	32 1f c0 	2 . . 
	ret			;6bde	c9 	. 
l6bdfh:
	call 002bch		;6bdf	cd bc 02 	. . . 
	ld b,005h		;6be2	06 05 	. . 
	call 00310h		;6be4	cd 10 03 	. . . 
	call 09df3h		;6be7	cd f3 9d 	. . . 
	ld hl,0c025h		;6bea	21 25 c0 	! % . 
	ld a,(hl)			;6bed	7e 	~ 
	sub 001h		;6bee	d6 01 	. . 
	jp z,l6d8eh		;6bf0	ca 8e 6d 	. . m 
	daa			;6bf3	27 	' 
	ld (hl),a			;6bf4	77 	w 
	ld a,082h		;6bf5	3e 82 	> . 
	ld (0ffffh),a		;6bf7	32 ff ff 	2 . . 
	ld ix,0c300h		;6bfa	dd 21 00 c3 	. ! . . 
	ld de,00020h		;6bfe	11 20 00 	.   . 
	ld b,005h		;6c01	06 05 	. . 
l6c03h:
	call 02752h		;6c03	cd 52 27 	. R ' 
	add ix,de		;6c06	dd 19 	. . 
	djnz l6c03h		;6c08	10 f9 	. . 
	ld ix,0c500h		;6c0a	dd 21 00 c5 	. ! . . 
	ld de,00020h		;6c0e	11 20 00 	.   . 
	ld b,00ch		;6c11	06 0c 	. . 
l6c13h:
	call 02752h		;6c13	cd 52 27 	. R ' 
	add ix,de		;6c16	dd 19 	. . 
	djnz l6c13h		;6c18	10 f9 	. . 
	ld ix,0c3c0h		;6c1a	dd 21 c0 c3 	. ! . . 
	ld b,00ah		;6c1e	06 0a 	. . 
l6c20h:
	ld a,(ix+002h)		;6c20	dd 7e 02 	. ~ . 
	bit 7,a		;6c23	cb 7f 	.  
	jp z,l6c43h		;6c25	ca 43 6c 	. C l 
	and 07fh		;6c28	e6 7f 	.  
	ld e,b			;6c2a	58 	X 
	ld hl,06ef3h		;6c2b	21 f3 6e 	! . n 
	rst 10h			;6c2e	d7 	. 
	exx			;6c2f	d9 	. 
	call 02752h		;6c30	cd 52 27 	. R ' 
	exx			;6c33	d9 	. 
	ld b,e			;6c34	43 	C 
	ld a,(hl)			;6c35	7e 	~ 
	ld (ix+000h),a		;6c36	dd 77 00 	. w . 
	inc hl			;6c39	23 	# 
	ld a,(hl)			;6c3a	7e 	~ 
	ld (ix+00ch),a		;6c3b	dd 77 0c 	. w . 
	inc hl			;6c3e	23 	# 
	ld a,(hl)			;6c3f	7e 	~ 
	ld (ix+00eh),a		;6c40	dd 77 0e 	. w . 
l6c43h:
	ld de,00020h		;6c43	11 20 00 	.   . 
	add ix,de		;6c46	dd 19 	. . 
	djnz l6c20h		;6c48	10 d6 	. . 
	ld a,(0c0c9h)		;6c4a	3a c9 c0 	: . . 
	bit 7,a		;6c4d	cb 7f 	.  
	jp z,l6c7ah		;6c4f	ca 7a 6c 	. z l 
	ld a,(0c023h)		;6c52	3a 23 c0 	: # . 
	cp 001h		;6c55	fe 01 	. . 
	jp z,l6c7ah		;6c57	ca 7a 6c 	. z l 
	ld de,0c300h		;6c5a	11 00 c3 	. . . 
	ld hl,0c240h		;6c5d	21 40 c2 	! @ . 
	ld bc,00020h		;6c60	01 20 00 	.   . 
	ldir		;6c63	ed b0 	. . 
	ld hl,(0c307h)		;6c65	2a 07 c3 	* . . 
	dec hl			;6c68	2b 	+ 
	ld a,(hl)			;6c69	7e 	~ 
	ld (0c200h),a		;6c6a	32 00 c2 	2 . . 
	ld a,002h		;6c6d	3e 02 	> . 
	ld (0c054h),a		;6c6f	32 54 c0 	2 T . 
	ld a,0ffh		;6c72	3e ff 	> . 
	ld (0c05ah),a		;6c74	32 5a c0 	2 Z . 
	jp l6d38h		;6c77	c3 38 6d 	. 8 m 
l6c7ah:
	ld ix,0c300h		;6c7a	dd 21 00 c3 	. ! . . 
	ld (ix+000h),001h		;6c7e	dd 36 00 01 	. 6 . . 
	ld a,(0c023h)		;6c82	3a 23 c0 	: # . 
	cp 00dh		;6c85	fe 0d 	. . 
	jp z,l6cebh		;6c87	ca eb 6c 	. . l 
	ld a,(0c051h)		;6c8a	3a 51 c0 	: Q . 
	or a			;6c8d	b7 	. 
	jp nz,l6cebh		;6c8e	c2 eb 6c 	. . l 
	ld a,(0c054h)		;6c91	3a 54 c0 	: T . 
	cp 007h		;6c94	fe 07 	. . 
	jp nc,l6cebh		;6c96	d2 eb 6c 	. . l 
	ld a,(0c090h)		;6c99	3a 90 c0 	: . . 
	cp 005h		;6c9c	fe 05 	. . 
	jp z,l6d01h		;6c9e	ca 01 6d 	. . m 
	cp 006h		;6ca1	fe 06 	. . 
	jp z,l6cebh		;6ca3	ca eb 6c 	. . l 
	ld (ix+018h),010h		;6ca6	dd 36 18 10 	. 6 . . 
	ld (ix+016h),010h		;6caa	dd 36 16 10 	. 6 . . 
	ld (ix+017h),001h		;6cae	dd 36 17 01 	. 6 . . 
	ld (ix+01ah),001h		;6cb2	dd 36 1a 01 	. 6 . . 
l6cb6h:
	call sub_6e74h		;6cb6	cd 74 6e 	. t n 
l6cb9h:
	ld de,01900h		;6cb9	11 00 19 	. . . 
	call sub_7c18h		;6cbc	cd 18 7c 	. . | 
	rlca			;6cbf	07 	. 
	jp nc,l6ccdh		;6cc0	d2 cd 6c 	. . l 
	ld de,01908h		;6cc3	11 08 19 	. . . 
	call sub_7c18h		;6cc6	cd 18 7c 	. . | 
	rlca			;6cc9	07 	. 
	jp c,l6d14h		;6cca	da 14 6d 	. . m 
l6ccdh:
	ld a,008h		;6ccd	3e 08 	> . 
	add a,(ix+00eh)		;6ccf	dd 86 0e 	. . . 
	ld (ix+00eh),a		;6cd2	dd 77 0e 	. w . 
	cp 090h		;6cd5	fe 90 	. . 
	jp nc,l6ce0h		;6cd7	d2 e0 6c 	. . l 
	call sub_6e80h		;6cda	cd 80 6e 	. . n 
	jp l6cb9h		;6cdd	c3 b9 6c 	. . l 
l6ce0h:
	ld a,008h		;6ce0	3e 08 	> . 
	add a,(ix+016h)		;6ce2	dd 86 16 	. . . 
	ld (ix+016h),a		;6ce5	dd 77 16 	. w . 
	jp l6cb6h		;6ce8	c3 b6 6c 	. . l 
l6cebh:
	ld ix,0c300h		;6ceb	dd 21 00 c3 	. ! . . 
	ld de,00020h		;6cef	11 20 00 	.   . 
	ld b,01eh		;6cf2	06 1e 	. . 
l6cf4h:
	call 02752h		;6cf4	cd 52 27 	. R ' 
	add ix,de		;6cf7	dd 19 	. . 
	djnz l6cf4h		;6cf9	10 f9 	. . 
	ld a,00ah		;6cfb	3e 0a 	> . 
	ld (0c01fh),a		;6cfd	32 1f c0 	2 . . 
	ret			;6d00	c9 	. 
l6d01h:
	ld (ix+018h),010h		;6d01	dd 36 18 10 	. 6 . . 
	ld (ix+016h),010h		;6d05	dd 36 16 10 	. 6 . . 
	ld (ix+017h),001h		;6d09	dd 36 17 01 	. 6 . . 
	ld (ix+01ah),002h		;6d0d	dd 36 1a 02 	. 6 . . 
	call sub_6e74h		;6d11	cd 74 6e 	. t n 
l6d14h:
	ld a,002h		;6d14	3e 02 	> . 
	ld (0c054h),a		;6d16	32 54 c0 	2 T . 
	ld a,0ffh		;6d19	3e ff 	> . 
	ld (0c05ah),a		;6d1b	32 5a c0 	2 Z . 
	ld (ix+018h),000h		;6d1e	dd 36 18 00 	. 6 . . 
	ld (ix+016h),000h		;6d22	dd 36 16 00 	. 6 . . 
	ld (ix+017h),000h		;6d26	dd 36 17 00 	. 6 . . 
	ld (ix+019h),000h		;6d2a	dd 36 19 00 	. 6 . . 
	ld (ix+01ah),000h		;6d2e	dd 36 1a 00 	. 6 . . 
	call sub_6ee6h		;6d32	cd e6 6e 	. . n 
	call 0298bh		;6d35	cd 8b 29 	. . ) 
l6d38h:
	call 0265ch		;6d38	cd 5c 26 	. \ & 
	ld a,(0c023h)		;6d3b	3a 23 c0 	: # . 
	ld c,a			;6d3e	4f 	O 
	ld a,(0c092h)		;6d3f	3a 92 c0 	: . . 
	or a			;6d42	b7 	. 
	jp z,l6d47h		;6d43	ca 47 6d 	. G m 
	inc c			;6d46	0c 	. 
l6d47h:
	ld hl,00d89h		;6d47	21 89 0d 	! . . 
	ld b,000h		;6d4a	06 00 	. . 
	add hl,bc			;6d4c	09 	. 
	ld a,(hl)			;6d4d	7e 	~ 
	ld (0c110h),a		;6d4e	32 10 c1 	2 . . 
	ld a,(0c023h)		;6d51	3a 23 c0 	: # . 
	cp 010h		;6d54	fe 10 	. . 
	jp z,l6d66h		;6d56	ca 66 6d 	. f m 
	ld a,(0c090h)		;6d59	3a 90 c0 	: . . 
	cp 005h		;6d5c	fe 05 	. . 
	jp nz,l6d66h		;6d5e	c2 66 6d 	. f m 
	ld a,083h		;6d61	3e 83 	> . 
	ld (0c110h),a		;6d63	32 10 c1 	2 . . 
l6d66h:
	ld a,(0c215h)		;6d66	3a 15 c2 	: . . 
	or a			;6d69	b7 	. 
	jp z,l6d72h		;6d6a	ca 72 6d 	. r m 
	ld a,084h		;6d6d	3e 84 	> . 
	ld (0c110h),a		;6d6f	32 10 c1 	2 . . 
l6d72h:
	ld a,082h		;6d72	3e 82 	> . 
	ld (0ffffh),a		;6d74	32 ff ff 	2 . . 
	ld a,001h		;6d77	3e 01 	> . 
	call 002b3h		;6d79	cd b3 02 	. . . 
	ld b,089h		;6d7c	06 89 	. . 
	ld a,(0c215h)		;6d7e	3a 15 c2 	: . . 
	or a			;6d81	b7 	. 
	jp nz,l6d87h		;6d82	c2 87 6d 	. . m 
	ld b,08ah		;6d85	06 8a 	. . 
l6d87h:
	ld a,b			;6d87	78 	x 
	ld (0c01fh),a		;6d88	32 1f c0 	2 . . 
	jp 002c3h		;6d8b	c3 c3 02 	. . . 
l6d8eh:
	call 002deh		;6d8e	cd de 02 	. . . 
	ld b,005h		;6d91	06 05 	. . 
	call 00310h		;6d93	cd 10 03 	. . . 
	call 002d0h		;6d96	cd d0 02 	. . . 
	xor a			;6d99	af 	. 
	ld de,0c000h		;6d9a	11 00 c0 	. . . 
	call 0012bh		;6d9d	cd 2b 01 	. + . 
	xor a			;6da0	af 	. 
	ld de,0c010h		;6da1	11 10 c0 	. . . 
	call 0012bh		;6da4	cd 2b 01 	. + . 
	ld de,l7a94h		;6da7	11 94 7a 	. . z 
	ld hl,l6e50h		;6daa	21 50 6e 	! P n 
	ld b,009h		;6dad	06 09 	. . 
	call 0013fh		;6daf	cd 3f 01 	. ? . 
	ld de,07b90h		;6db2	11 90 7b 	. . { 
	ld hl,06e59h		;6db5	21 59 6e 	! Y n 
	ld b,00dh		;6db8	06 0d 	. . 
	call 0013fh		;6dba	cd 3f 01 	. ? . 
	ld hl,0c022h		;6dbd	21 22 c0 	! " . 
	ld de,l7b9ch		;6dc0	11 9c 7b 	. . { 
	call 00421h		;6dc3	cd 21 04 	. ! . 
	ld de,08026h		;6dc6	11 26 80 	. & . 
	ld a,e			;6dc9	7b 	{ 
	ld (0c05fh),a		;6dca	32 5f c0 	2 _ . 
	rst 8			;6dcd	cf 	. 
	ld a,0afh		;6dce	3e af 	> . 
	ld (0c110h),a		;6dd0	32 10 c1 	2 . . 
	ei			;6dd3	fb 	. 
	call 002c3h		;6dd4	cd c3 02 	. . . 
	ld a,0c0h		;6dd7	3e c0 	> . 
	ld (0c07fh),a		;6dd9	32 7f c0 	2  . 
	xor a			;6ddc	af 	. 
	ld (0c057h),a		;6ddd	32 57 c0 	2 W . 
l6de0h:
	ld a,080h		;6de0	3e 80 	> . 
	call 002b3h		;6de2	cd b3 02 	. . . 
	ld a,(0c006h)		;6de5	3a 06 c0 	: . . 
	and 001h		;6de8	e6 01 	. . 
	jp nz,l6df4h		;6dea	c2 f4 6d 	. . m 
	xor a			;6ded	af 	. 
	ld (0c057h),a		;6dee	32 57 c0 	2 W . 
	jp l6e06h		;6df1	c3 06 6e 	. . n 
l6df4h:
	ld a,(0c007h)		;6df4	3a 07 c0 	: . . 
	and 020h		;6df7	e6 20 	.   
	jp z,l6e06h		;6df9	ca 06 6e 	. . n 
	ld hl,0c057h		;6dfc	21 57 c0 	! W . 
	inc (hl)			;6dff	34 	4 
	ld a,(hl)			;6e00	7e 	~ 
	cp 008h		;6e01	fe 08 	. . 
	jp nc,l6e13h		;6e03	d2 13 6e 	. . n 
l6e06h:
	ld hl,0c07fh		;6e06	21 7f c0 	!  . 
	dec (hl)			;6e09	35 	5 
	jp nz,l6de0h		;6e0a	c2 e0 6d 	. . m 
	ld a,000h		;6e0d	3e 00 	> . 
	ld (0c01fh),a		;6e0f	32 1f c0 	2 . . 
	ret			;6e12	c9 	. 
l6e13h:
	xor a			;6e13	af 	. 
	ld (0c057h),a		;6e14	32 57 c0 	2 W . 
	ld c,003h		;6e17	0e 03 	. . 
	ld b,000h		;6e19	06 00 	. . 
	ld hl,00456h		;6e1b	21 56 04 	! V . 
	add hl,bc			;6e1e	09 	. 
	ld bc,0c030h		;6e1f	01 30 c0 	. 0 . 
	call 003fah		;6e22	cd fa 03 	. . . 
	jr c,l6e06h		;6e25	38 df 	8 . 
	dec hl			;6e27	2b 	+ 
	dec hl			;6e28	2b 	+ 
	dec bc			;6e29	0b 	. 
	dec bc			;6e2a	0b 	. 
	call 003e9h		;6e2b	cd e9 03 	. . . 
	di			;6e2e	f3 	. 
	ld de,07c50h		;6e2f	11 50 7c 	. P | 
	ld hl,l6e66h		;6e32	21 66 6e 	! f n 
	ld b,00dh		;6e35	06 0d 	. . 
	call 0013fh		;6e37	cd 3f 01 	. ? . 
	ei			;6e3a	fb 	. 
	ld a,08fh		;6e3b	3e 8f 	> . 
	ld (0c110h),a		;6e3d	32 10 c1 	2 . . 
	ld b,01eh		;6e40	06 1e 	. . 
	call 00310h		;6e42	cd 10 03 	. . . 
	ld a,003h		;6e45	3e 03 	> . 
	ld (0c025h),a		;6e47	32 25 c0 	2 % . 
	ld a,00ah		;6e4a	3e 0a 	> . 
	ld (0c01fh),a		;6e4c	32 1f c0 	2 . . 
	ret			;6e4f	c9 	. 
l6e50h:
	rst 10h			;6e50	d7 	. 
	pop de			;6e51	d1 	. 
	defb 0ddh,0d5h,0b0h	;illegal sequence		;6e52	dd d5 b0 	. . . 
	rst 18h			;6e55	df 	. 
	and 0d5h		;6e56	e6 d5 	. . 
	jp po,0d3e3h		;6e58	e2 e3 d3 	. . . 
	rst 18h			;6e5b	df 	. 
	jp po,0b0d5h		;6e5c	e2 d5 b0 	. . . 
	or b			;6e5f	b0 	. 
	or b			;6e60	b0 	. 
	or b			;6e61	b0 	. 
	or b			;6e62	b0 	. 
	or b			;6e63	b0 	. 
	or b			;6e64	b0 	. 
	ret nz			;6e65	c0 	. 
l6e66h:
	out (0dfh),a		;6e66	d3 df 	. . 
	sbc a,0e4h		;6e68	de e4 	. . 
	exx			;6e6a	d9 	. 
	sbc a,0e5h		;6e6b	de e5 	. . 
	push de			;6e6d	d5 	. 
	or b			;6e6e	b0 	. 
	defb 0ddh,0dfh,0d4h	;illegal sequence		;6e6f	dd df d4 	. . . 
	push de			;6e72	d5 	. 
	ret			;6e73	c9 	. 
sub_6e74h:
	ld a,(ix+018h)		;6e74	dd 7e 18 	. ~ . 
	ld (ix+00eh),a		;6e77	dd 77 0e 	. w . 
	ld a,(ix+016h)		;6e7a	dd 7e 16 	. ~ . 
	ld (ix+00ch),a		;6e7d	dd 77 0c 	. w . 
sub_6e80h:
	exx			;6e80	d9 	. 
	ld a,(ix+00ch)		;6e81	dd 7e 0c 	. ~ . 
	ld (ix+019h),a		;6e84	dd 77 19 	. w . 
	ld de,00100h		;6e87	11 00 01 	. . . 
	ld a,008h		;6e8a	3e 08 	> . 
	ld b,(ix+01ah)		;6e8c	dd 46 1a 	. F . 
	call 039b6h		;6e8f	cd b6 39 	. . 9 
	exx			;6e92	d9 	. 
	jp nc,l6eb1h		;6e93	d2 b1 6e 	. . n 
l6e96h:
	ld a,008h		;6e96	3e 08 	> . 
	add a,(ix+00eh)		;6e98	dd 86 0e 	. . . 
	ld (ix+00eh),a		;6e9b	dd 77 0e 	. w . 
	cp 090h		;6e9e	fe 90 	. . 
	jp c,sub_6e80h		;6ea0	da 80 6e 	. . n 
	ld a,008h		;6ea3	3e 08 	> . 
	add a,(ix+016h)		;6ea5	dd 86 16 	. . . 
	ld (ix+016h),a		;6ea8	dd 77 16 	. w . 
	cp 060h		;6eab	fe 60 	. ` 
	jp c,sub_6e74h		;6ead	da 74 6e 	. t n 
	ret			;6eb0	c9 	. 
l6eb1h:
	ld b,(ix+01ah)		;6eb1	dd 46 1a 	. F . 
	ld a,008h		;6eb4	3e 08 	> . 
	add a,(ix+019h)		;6eb6	dd 86 19 	. . . 
	ld (ix+00ch),a		;6eb9	dd 77 0c 	. w . 
l6ebch:
	exx			;6ebc	d9 	. 
	ld de,00100h		;6ebd	11 00 01 	. . . 
	ld a,008h		;6ec0	3e 08 	> . 
	ld b,(ix+017h)		;6ec2	dd 46 17 	. F . 
	call 039b6h		;6ec5	cd b6 39 	. . 9 
	exx			;6ec8	d9 	. 
	jp nc,l6ed5h		;6ec9	d2 d5 6e 	. . n 
	ld a,(ix+019h)		;6ecc	dd 7e 19 	. ~ . 
	ld (ix+00ch),a		;6ecf	dd 77 0c 	. w . 
	jp l6e96h		;6ed2	c3 96 6e 	. . n 
l6ed5h:
	ld a,008h		;6ed5	3e 08 	> . 
	add a,(ix+00ch)		;6ed7	dd 86 0c 	. . . 
	ld (ix+00ch),a		;6eda	dd 77 0c 	. w . 
	djnz l6ebch		;6edd	10 dd 	. . 
	ld a,(ix+019h)		;6edf	dd 7e 19 	. ~ . 
	ld (ix+00ch),a		;6ee2	dd 77 0c 	. w . 
	ret			;6ee5	c9 	. 
sub_6ee6h:
	ld a,(0c0bch)		;6ee6	3a bc c0 	: . . 
	cp 007h		;6ee9	fe 07 	. . 
	ret nc			;6eeb	d0 	. 
	ld b,a			;6eec	47 	G 
	ld a,(ix+00eh)		;6eed	dd 7e 0e 	. ~ . 
	sub b			;6ef0	90 	. 
	ld (ix+00eh),a		;6ef1	dd 77 0e 	. w . 
	ret			;6ef4	c9 	. 
	ld l,(iy+000h)		;6ef5	fd 6e 00 	. n . 
	ld l,a			;6ef8	6f 	o 
	inc bc			;6ef9	03 	. 
	ld l,a			;6efa	6f 	o 
	ld b,06fh		;6efb	06 6f 	. o 
	dec h			;6efd	25 	% 
	or b			;6efe	b0 	. 
	ld (hl),b			;6eff	70 	p 
	ld b,(hl)			;6f00	46 	F 
	ret nz			;6f01	c0 	. 
	adc a,b			;6f02	88 	. 
	dec h			;6f03	25 	% 
	or b			;6f04	b0 	. 
	sub b			;6f05	90 	. 
	dec h			;6f06	25 	% 
	or b			;6f07	b0 	. 
	sub b			;6f08	90 	. 
	ld hl,(0c089h)		;6f09	2a 89 c0 	* . . 
	jp (hl)			;6f0c	e9 	. 
	ld hl,0c08dh		;6f0d	21 8d c0 	! . . 
	bit 7,(hl)		;6f10	cb 7e 	. ~ 
	ret z			;6f12	c8 	. 
	res 7,(hl)		;6f13	cb be 	. . 
	ld a,(hl)			;6f15	7e 	~ 
	ld hl,(0c061h)		;6f16	2a 61 c0 	* a . 
	rst 10h			;6f19	d7 	. 
	xor a			;6f1a	af 	. 
	ld (0c067h),a		;6f1b	32 67 c0 	2 g . 
	ld de,00100h		;6f1e	11 00 01 	. . . 
	ld a,(0c066h)		;6f21	3a 66 c0 	: f . 
	or a			;6f24	b7 	. 
	jp nz,l6f43h		;6f25	c2 43 6f 	. C o 
	ld de,00100h		;6f28	11 00 01 	. . . 
	ld a,(0c0c9h)		;6f2b	3a c9 c0 	: . . 
	rrca			;6f2e	0f 	. 
	jp c,l6f43h		;6f2f	da 43 6f 	. C o 
	ld de,0ff00h		;6f32	11 00 ff 	. . . 
	rrca			;6f35	0f 	. 
	jp c,l6f43h		;6f36	da 43 6f 	. C o 
	ld de,00001h		;6f39	11 01 00 	. . . 
	rrca			;6f3c	0f 	. 
	jp c,l6f43h		;6f3d	da 43 6f 	. C o 
	ld de,000ffh		;6f40	11 ff 00 	. . . 
l6f43h:
	xor a			;6f43	af 	. 
	ld (0c066h),a		;6f44	32 66 c0 	2 f . 
	ld (0c063h),de		;6f47	ed 53 63 c0 	. S c . 
l6f4bh:
	ld a,(hl)			;6f4b	7e 	~ 
	or a			;6f4c	b7 	. 
	ret z			;6f4d	c8 	. 
	bit 7,a		;6f4e	cb 7f 	.  
	jp nz,l6fa4h		;6f50	c2 a4 6f 	. . o 
	ld b,a			;6f53	47 	G 
l6f54h:
	ld c,b			;6f54	48 	H 
	ld ix,0c3c0h		;6f55	dd 21 c0 c3 	. ! . . 
	ld de,00020h		;6f59	11 20 00 	.   . 
	ld b,00ah		;6f5c	06 0a 	. . 
l6f5eh:
	ld a,(ix+000h)		;6f5e	dd 7e 00 	. ~ . 
	or a			;6f61	b7 	. 
	jp z,l6f6ah		;6f62	ca 6a 6f 	. j o 
	add ix,de		;6f65	dd 19 	. . 
	djnz l6f5eh		;6f67	10 f5 	. . 
	ret			;6f69	c9 	. 
l6f6ah:
	ld b,c			;6f6a	41 	A 
sub_6f6bh:
	inc hl			;6f6b	23 	# 
	ld a,(hl)			;6f6c	7e 	~ 
	ld (ix+000h),a		;6f6d	dd 77 00 	. w . 
	inc hl			;6f70	23 	# 
	ld a,(hl)			;6f71	7e 	~ 
	ld (ix+00eh),a		;6f72	dd 77 0e 	. w . 
	inc hl			;6f75	23 	# 
	ld a,(hl)			;6f76	7e 	~ 
	ld de,(0c0afh)		;6f77	ed 5b af c0 	. [ . . 
	ld (ix+00bh),e		;6f7b	dd 73 0b 	. s . 
	add a,d			;6f7e	82 	. 
	ld d,a			;6f7f	57 	W 
	ld a,(0c091h)		;6f80	3a 91 c0 	: . . 
	ld e,a			;6f83	5f 	_ 
	ld a,d			;6f84	7a 	z 
	sub e			;6f85	93 	. 
	ld (ix+00ch),a		;6f86	dd 77 0c 	. w . 
	inc hl			;6f89	23 	# 
	ld a,(hl)			;6f8a	7e 	~ 
	ld (ix+003h),a		;6f8b	dd 77 03 	. w . 
	ld de,(0c063h)		;6f8e	ed 5b 63 c0 	. [ c . 
	ld (ix+00ah),d		;6f92	dd 72 0a 	. r . 
	ld (ix+009h),e		;6f95	dd 73 09 	. s . 
	ld a,(0c067h)		;6f98	3a 67 c0 	: g . 
	add a,(ix+00eh)		;6f9b	dd 86 0e 	. . . 
	ld (ix+00eh),a		;6f9e	dd 77 0e 	. w . 
	djnz l6f54h		;6fa1	10 b1 	. . 
	ret			;6fa3	c9 	. 
l6fa4h:
	rrca			;6fa4	0f 	. 
	jp c,l6fd3h		;6fa5	da d3 6f 	. . o 
	rrca			;6fa8	0f 	. 
	jp c,l6ff4h		;6fa9	da f4 6f 	. . o 
	rrca			;6fac	0f 	. 
	jp c,l6fbeh		;6fad	da be 6f 	. . o 
	inc hl			;6fb0	23 	# 
	ld a,(hl)			;6fb1	7e 	~ 
	ld c,a			;6fb2	4f 	O 
	ld b,000h		;6fb3	06 00 	. . 
	inc hl			;6fb5	23 	# 
	ld de,0d8a0h		;6fb6	11 a0 d8 	. . . 
	ldir		;6fb9	ed b0 	. . 
	jp l6f4bh		;6fbb	c3 4b 6f 	. K o 
l6fbeh:
	ld ix,0c3a0h		;6fbe	dd 21 a0 c3 	. ! . . 
	res 0,(ix+001h)		;6fc2	dd cb 01 86 	. . . . 
	res 1,(ix+001h)		;6fc6	dd cb 01 8e 	. . . . 
	ld b,001h		;6fca	06 01 	. . 
	call sub_6f6bh		;6fcc	cd 6b 6f 	. k o 
	inc hl			;6fcf	23 	# 
	jp l6f4bh		;6fd0	c3 4b 6f 	. K o 
l6fd3h:
	ld ix,0c680h		;6fd3	dd 21 80 c6 	. ! . . 
	ld a,(ix+000h)		;6fd7	dd 7e 00 	. ~ . 
	or a			;6fda	b7 	. 
	jp z,l6fe3h		;6fdb	ca e3 6f 	. . o 
	ld de,00020h		;6fde	11 20 00 	.   . 
	add ix,de		;6fe1	dd 19 	. . 
l6fe3h:
	res 0,(ix+001h)		;6fe3	dd cb 01 86 	. . . . 
	res 1,(ix+001h)		;6fe7	dd cb 01 8e 	. . . . 
	ld b,001h		;6feb	06 01 	. . 
	call sub_6f6bh		;6fed	cd 6b 6f 	. k o 
	inc hl			;6ff0	23 	# 
	jp l6f4bh		;6ff1	c3 4b 6f 	. K o 
l6ff4h:
	inc hl			;6ff4	23 	# 
	ld a,(hl)			;6ff5	7e 	~ 
	exx			;6ff6	d9 	. 
	ld hl,070c5h		;6ff7	21 c5 70 	! . p 
	rst 10h			;6ffa	d7 	. 
	ld e,(hl)			;6ffb	5e 	^ 
	inc hl			;6ffc	23 	# 
	ld d,(hl)			;6ffd	56 	V 
	ld (0c0fdh),de		;6ffe	ed 53 fd c0 	. S . . 
	inc hl			;7002	23 	# 
	ld ix,0c3c0h		;7003	dd 21 c0 c3 	. ! . . 
	ld de,00020h		;7007	11 20 00 	.   . 
	ld b,008h		;700a	06 08 	. . 
l700ch:
	ld a,(hl)			;700c	7e 	~ 
	ld (ix+016h),a		;700d	dd 77 16 	. w . 
	inc hl			;7010	23 	# 
	ld a,(hl)			;7011	7e 	~ 
	ld (ix+01eh),a		;7012	dd 77 1e 	. w . 
	inc hl			;7015	23 	# 
	ld a,(hl)			;7016	7e 	~ 
	ld (ix+01fh),a		;7017	dd 77 1f 	. w . 
	inc hl			;701a	23 	# 
	ld a,(hl)			;701b	7e 	~ 
	ld (ix+015h),a		;701c	dd 77 15 	. w . 
	ld (ix+000h),024h		;701f	dd 36 00 24 	. 6 . $ 
	ld a,(0c063h)		;7023	3a 63 c0 	: c . 
	ld (ix+009h),a		;7026	dd 77 09 	. w . 
	ld a,(0c064h)		;7029	3a 64 c0 	: d . 
	ld (ix+00ah),a		;702c	dd 77 0a 	. w . 
	ld (ix+018h),000h		;702f	dd 36 18 00 	. 6 . . 
	ld (ix+017h),000h		;7033	dd 36 17 00 	. 6 . . 
	res 0,(ix+001h)		;7037	dd cb 01 86 	. . . . 
	res 1,(ix+001h)		;703b	dd cb 01 8e 	. . . . 
	add ix,de		;703f	dd 19 	. . 
	inc hl			;7041	23 	# 
	djnz l700ch		;7042	10 c8 	. . 
	exx			;7044	d9 	. 
	inc hl			;7045	23 	# 
	jp l6f4bh		;7046	c3 4b 6f 	. K o 
	ld hl,0c08dh		;7049	21 8d c0 	! . . 
	bit 7,(hl)		;704c	cb 7e 	. ~ 
	ret z			;704e	c8 	. 
	res 7,(hl)		;704f	cb be 	. . 
	xor a			;7051	af 	. 
	ld (0c067h),a		;7052	32 67 c0 	2 g . 
	ld de,00100h		;7055	11 00 01 	. . . 
	ld a,(0c066h)		;7058	3a 66 c0 	: f . 
	or a			;705b	b7 	. 
	jp nz,l7083h		;705c	c2 83 70 	. . p 
	ld a,(0c0c9h)		;705f	3a c9 c0 	: . . 
	rrca			;7062	0f 	. 
	jp c,l7083h		;7063	da 83 70 	. . p 
	ld de,0ff00h		;7066	11 00 ff 	. . . 
	rrca			;7069	0f 	. 
	jp c,l70a1h		;706a	da a1 70 	. . p 
	ld de,00001h		;706d	11 01 00 	. . . 
	rrca			;7070	0f 	. 
	jp c,l70bbh		;7071	da bb 70 	. . p 
	ld de,000ffh		;7074	11 ff 00 	. . . 
	ld hl,0c065h		;7077	21 65 c0 	! e . 
	inc (hl)			;707a	34 	4 
	ld a,(hl)			;707b	7e 	~ 
	ld hl,(0c061h)		;707c	2a 61 c0 	* a . 
	rst 10h			;707f	d7 	. 
	jp l6f43h		;7080	c3 43 6f 	. C o 
l7083h:
	ld a,(0c0bch)		;7083	3a bc c0 	: . . 
	neg		;7086	ed 44 	. D 
	ld (0c067h),a		;7088	32 67 c0 	2 g . 
	xor a			;708b	af 	. 
	ld (0c066h),a		;708c	32 66 c0 	2 f . 
	ld a,(0c0a0h)		;708f	3a a0 c0 	: . . 
	ld b,a			;7092	47 	G 
	ld a,(0c065h)		;7093	3a 65 c0 	: e . 
	add a,b			;7096	80 	. 
	ld (0c065h),a		;7097	32 65 c0 	2 e . 
	ld hl,(0c061h)		;709a	2a 61 c0 	* a . 
	rst 10h			;709d	d7 	. 
	jp l6f43h		;709e	c3 43 6f 	. C o 
l70a1h:
	ld a,(0c0bch)		;70a1	3a bc c0 	: . . 
	ld (0c067h),a		;70a4	32 67 c0 	2 g . 
	ld a,(0c065h)		;70a7	3a 65 c0 	: e . 
	ld c,a			;70aa	4f 	O 
	ld a,(0c0a0h)		;70ab	3a a0 c0 	: . . 
	ld b,a			;70ae	47 	G 
	ld a,c			;70af	79 	y 
	sub b			;70b0	90 	. 
	ld (0c065h),a		;70b1	32 65 c0 	2 e . 
	ld hl,(0c061h)		;70b4	2a 61 c0 	* a . 
	rst 10h			;70b7	d7 	. 
	jp l6f43h		;70b8	c3 43 6f 	. C o 
l70bbh:
	ld hl,0c065h		;70bb	21 65 c0 	! e . 
	dec (hl)			;70be	35 	5 
	ld a,(hl)			;70bf	7e 	~ 
	ld hl,(0c061h)		;70c0	2a 61 c0 	* a . 
	rst 10h			;70c3	d7 	. 
	jp l6f43h		;70c4	c3 43 6f 	. C o 
	bit 6,b		;70c7	cb 70 	. p 
	defb 0edh,070h	;in f,(c)		;70c9	ed 70 	. p 
	ld e,h			;70cb	5c 	\ 
	call z,09800h		;70cc	cc 00 98 	. . . 
	ld (hl),h			;70cf	74 	t 
	nop			;70d0	00 	. 
	ex af,af'			;70d1	08 	. 
	sbc a,b			;70d2	98 	. 
	ld l,h			;70d3	6c 	l 
	ld bc,09810h		;70d4	01 10 98 	. . . 
	ld h,h			;70d7	64 	d 
	ld bc,09818h		;70d8	01 18 98 	. . . 
	ld e,h			;70db	5c 	\ 
	ld bc,09820h		;70dc	01 20 98 	.   . 
	ld d,h			;70df	54 	T 
	ld bc,09828h		;70e0	01 28 98 	. ( . 
	ld c,h			;70e3	4c 	L 
	ld bc,09830h		;70e4	01 30 98 	. 0 . 
	ld b,h			;70e7	44 	D 
	ld bc,09838h		;70e8	01 38 98 	. 8 . 
	inc a			;70eb	3c 	< 
	ld bc,0cc58h		;70ec	01 58 cc 	. X . 
	nop			;70ef	00 	. 
	sbc a,b			;70f0	98 	. 
	ld h,(hl)			;70f1	66 	f 
	nop			;70f2	00 	. 
	ex af,af'			;70f3	08 	. 
	sbc a,b			;70f4	98 	. 
	ld e,(hl)			;70f5	5e 	^ 
	ld bc,09810h		;70f6	01 10 98 	. . . 
	ld d,(hl)			;70f9	56 	V 
	ld bc,09818h		;70fa	01 18 98 	. . . 
	ld c,(hl)			;70fd	4e 	N 
	ld bc,09820h		;70fe	01 20 98 	.   . 
	ld b,(hl)			;7101	46 	F 
	ld bc,09828h		;7102	01 28 98 	. ( . 
	ld a,001h		;7105	3e 01 	> . 
	jr nc,l70a1h		;7107	30 98 	0 . 
	ld (hl),001h		;7109	36 01 	6 . 
	jr c,$-102		;710b	38 98 	8 . 
	ld l,001h		;710d	2e 01 	. . 
	ld a,(0c3bah)		;710f	3a ba c3 	: . . 
	ld hl,l7118h		;7112	21 18 71 	! . q 
	jp 00020h		;7115	c3 20 00 	.   . 
l7118h:
	ld b,d			;7118	42 	B 
	ld (hl),c			;7119	71 	q 
	halt			;711a	76 	v 
	ld (hl),c			;711b	71 	q 
	sub d			;711c	92 	. 
	ld (hl),c			;711d	71 	q 
	sub 071h		;711e	d6 71 	. q 
	ld (iy+017h),c		;7120	fd 71 17 	. q . 
	ld (hl),d			;7123	72 	r 
	ld b,l			;7124	45 	E 
	ld (hl),d			;7125	72 	r 
	ld a,c			;7126	79 	y 
	ld (hl),d			;7127	72 	r 
	ex af,af'			;7128	08 	. 
	ld (hl),e			;7129	73 	s 
	dec e			;712a	1d 	. 
	ld (hl),e			;712b	73 	s 
	jr c,l71a1h		;712c	38 73 	8 s 
	ld (hl),h			;712e	74 	t 
	ld (hl),e			;712f	73 	s 
	sub c			;7130	91 	. 
	ld (hl),e			;7131	73 	s 
	ld l,d			;7132	6a 	j 
	ld (hl),h			;7133	74 	t 
	sbc a,(hl)			;7134	9e 	. 
	ld (hl),e			;7135	73 	s 
	dec c			;7136	0d 	. 
	ld (hl),h			;7137	74 	t 
	halt			;7138	76 	v 
	ld (hl),c			;7139	71 	q 
	add hl,de			;713a	19 	. 
	ld (hl),h			;713b	74 	t 
	dec (hl)			;713c	35 	5 
	ld (hl),h			;713d	74 	t 
	ld l,d			;713e	6a 	j 
	ld (hl),h			;713f	74 	t 
	sub e			;7140	93 	. 
	ld (hl),h			;7141	74 	t 
	inc (ix+01ah)		;7142	dd 34 1a 	. 4 . 
	xor a			;7145	af 	. 
	ld (0c216h),a		;7146	32 16 c2 	2 . . 
	ld (0c215h),a		;7149	32 15 c2 	2 . . 
	inc a			;714c	3c 	< 
	ld (0c3a5h),a		;714d	32 a5 c3 	2 . . 
	ld (0c3bfh),a		;7150	32 bf c3 	2 . . 
	ld a,(0c3a3h)		;7153	3a a3 c3 	: . . 
	and 0feh		;7156	e6 fe 	. . 
	add a,a			;7158	87 	. 
	add a,a			;7159	87 	. 
	add a,a			;715a	87 	. 
	ld hl,080e1h		;715b	21 e1 80 	! . . 
	jr nz,l7163h		;715e	20 03 	  . 
	ld hl,08134h		;7160	21 34 81 	! 4 . 
l7163h:
	ld (0c3a7h),hl		;7163	22 a7 c3 	" . . 
	ld l,a			;7166	6f 	o 
	ld h,000h		;7167	26 00 	& . 
	ld de,l7618h		;7169	11 18 76 	. . v 
	add hl,de			;716c	19 	. 
	ld de,0c230h		;716d	11 30 c2 	. 0 . 
	ld bc,00010h		;7170	01 10 00 	. . . 
	ldir		;7173	ed b0 	. . 
	ret			;7175	c9 	. 
	ld a,(0c3aah)		;7176	3a aa c3 	: . . 
	or (ix+009h)		;7179	dd b6 09 	. . . 
	ret nz			;717c	c0 	. 
	ld a,(0c0c9h)		;717d	3a c9 c0 	: . . 
	and 00fh		;7180	e6 0f 	. . 
	ret nz			;7182	c0 	. 
	ld a,(0c31ah)		;7183	3a 1a c3 	: . . 
	cp 003h		;7186	fe 03 	. . 
	ret nc			;7188	d0 	. 
	inc (ix+01ah)		;7189	dd 34 1a 	. 4 . 
	ld a,016h		;718c	3e 16 	> . 
	ld (0c31ah),a		;718e	32 1a c3 	2 . . 
	ret			;7191	c9 	. 
	ld a,(0c31ah)		;7192	3a 1a c3 	: . . 
	cp 017h		;7195	fe 17 	. . 
	ret nz			;7197	c0 	. 
	inc (ix+01ah)		;7198	dd 34 1a 	. 4 . 
	call 03441h		;719b	cd 41 34 	. A 4 
	ld hl,(0c230h)		;719e	2a 30 c2 	* 0 . 
l71a1h:
	ld (0c3a7h),hl		;71a1	22 a7 c3 	" . . 
	ld a,(0c3a3h)		;71a4	3a a3 c3 	: . . 
	cp 001h		;71a7	fe 01 	. . 
	jr nz,l71b3h		;71a9	20 08 	  . 
	ld (ix+00ch),0b8h		;71ab	dd 36 0c b8 	. 6 . . 
	ld (ix+00eh),080h		;71af	dd 36 0e 80 	. 6 . . 
l71b3h:
	ld a,001h		;71b3	3e 01 	> . 
	ld (0c215h),a		;71b5	32 15 c2 	2 . . 
	call sub_78eeh		;71b8	cd ee 78 	. . x 
	ld hl,(0c232h)		;71bb	2a 32 c2 	* 2 . 
	ld de,l6400h		;71be	11 00 64 	. . d 
	call 00260h		;71c1	cd 60 02 	. ` . 
	ei			;71c4	fb 	. 
	ld a,082h		;71c5	3e 82 	> . 
	ld (0ffffh),a		;71c7	32 ff ff 	2 . . 
	ld a,007h		;71ca	3e 07 	> . 
	ld (0c01fh),a		;71cc	32 1f c0 	2 . . 
	ld a,(0c23eh)		;71cf	3a 3e c2 	: > . 
	ld (0c011h),a		;71d2	32 11 c0 	2 . . 
	ret			;71d5	c9 	. 
	call sub_71f5h		;71d6	cd f5 71 	. . q 
	ret z			;71d9	c8 	. 
	ld hl,(0c234h)		;71da	2a 34 c2 	* 4 . 
	call sub_758dh		;71dd	cd 8d 75 	. . u 
	call sub_790bh		;71e0	cd 0b 79 	. . y 
	ld a,007h		;71e3	3e 07 	> . 
	ld (0c01fh),a		;71e5	32 1f c0 	2 . . 
	ld a,007h		;71e8	3e 07 	> . 
	ld (0c011h),a		;71ea	32 11 c0 	2 . . 
	inc (ix+01ah)		;71ed	dd 34 1a 	. 4 . 
	ld (ix+006h),010h		;71f0	dd 36 06 10 	. 6 . . 
	ret			;71f4	c9 	. 
sub_71f5h:
	ld a,(0c01fh)		;71f5	3a 1f c0 	: . . 
	and 00fh		;71f8	e6 0f 	. . 
	cp 007h		;71fa	fe 07 	. . 
	ret			;71fc	c9 	. 
	call sub_71f5h		;71fd	cd f5 71 	. . q 
	ret z			;7200	c8 	. 
	ld a,017h		;7201	3e 17 	> . 
	ld (0c31ah),a		;7203	32 1a c3 	2 . . 
	ld a,087h		;7206	3e 87 	> . 
	ld (0c110h),a		;7208	32 10 c1 	2 . . 
	inc (ix+01ah)		;720b	dd 34 1a 	. 4 . 
	ld (ix+01fh),0ffh		;720e	dd 36 1f ff 	. 6 . . 
	ld (ix+018h),014h		;7212	dd 36 18 14 	. 6 . . 
	ret			;7216	c9 	. 
	call sub_7558h		;7217	cd 58 75 	. X u 
	ld a,(0c115h)		;721a	3a 15 c1 	: . . 
	cp 080h		;721d	fe 80 	. . 
	jr z,l7227h		;721f	28 06 	( . 
	ld hl,(0c236h)		;7221	2a 36 c2 	* 6 . 
	jp 027d6h		;7224	c3 d6 27 	. . ' 
l7227h:
	ld a,0adh		;7227	3e ad 	> . 
	ld (0c110h),a		;7229	32 10 c1 	2 . . 
	inc (ix+01ah)		;722c	dd 34 1a 	. 4 . 
	ld (ix+006h),014h		;722f	dd 36 06 14 	. 6 . . 
	ld a,001h		;7233	3e 01 	> . 
	ld (0c3a5h),a		;7235	32 a5 c3 	2 . . 
	ld (0c305h),a		;7238	32 05 c3 	2 . . 
	ld a,015h		;723b	3e 15 	> . 
	ld (0c31ah),a		;723d	32 1a c3 	2 . . 
	ld (ix+01fh),046h		;7240	dd 36 1f 46 	. 6 . F 
	ret			;7244	c9 	. 
	call sub_7558h		;7245	cd 58 75 	. X u 
	ld a,(0c115h)		;7248	3a 15 c1 	: . . 
	cp 010h		;724b	fe 10 	. . 
	jr z,l7255h		;724d	28 06 	( . 
	ld hl,(0c238h)		;724f	2a 38 c2 	* 8 . 
	jp 027d6h		;7252	c3 d6 27 	. . ' 
l7255h:
	ld hl,(0c23ah)		;7255	2a 3a c2 	* : . 
	ld a,0aeh		;7258	3e ae 	> . 
	ld (0c110h),a		;725a	32 10 c1 	2 . . 
	inc (ix+01ah)		;725d	dd 34 1a 	. 4 . 
	ld a,018h		;7260	3e 18 	> . 
	ld (0c31ah),a		;7262	32 1a c3 	2 . . 
	ld a,(0c3b7h)		;7265	3a b7 c3 	: . . 
	add a,a			;7268	87 	. 
	ld e,a			;7269	5f 	_ 
	ld d,000h		;726a	16 00 	. . 
	add hl,de			;726c	19 	. 
	ld e,(hl)			;726d	5e 	^ 
	inc hl			;726e	23 	# 
	ld d,(hl)			;726f	56 	V 
	ex de,hl			;7270	eb 	. 
	ld (0c3a7h),hl		;7271	22 a7 c3 	" . . 
	ld (ix+018h),01eh		;7274	dd 36 18 1e 	. 6 . . 
	ret			;7278	c9 	. 
	dec (ix+018h)		;7279	dd 35 18 	. 5 . 
	ret nz			;727c	c0 	. 
	ld a,(0c317h)		;727d	3a 17 c3 	: . . 
	ld e,(ix+017h)		;7280	dd 5e 17 	. ^ . 
	add a,e			;7283	83 	. 
	add a,e			;7284	83 	. 
	add a,e			;7285	83 	. 
	ld hl,l7290h		;7286	21 90 72 	! . r 
	rst 20h			;7289	e7 	. 
	ld a,007h		;728a	3e 07 	> . 
	ld (0c01fh),a		;728c	32 1f c0 	2 . . 
	ret			;728f	c9 	. 
l7290h:
	and d			;7290	a2 	. 
	ld (hl),d			;7291	72 	r 
	xor h			;7292	ac 	. 
	ld (hl),d			;7293	72 	r 
	jp c,0da72h		;7294	da 72 da 	. r . 
	ld (hl),d			;7297	72 	r 
	and d			;7298	a2 	. 
	ld (hl),d			;7299	72 	r 
	xor h			;729a	ac 	. 
	ld (hl),d			;729b	72 	r 
	xor h			;729c	ac 	. 
	ld (hl),d			;729d	72 	r 
	jp c,0a272h		;729e	da 72 a2 	. r . 
	ld (hl),d			;72a1	72 	r 
	ld a,00ah		;72a2	3e 0a 	> . 
	ld (0c011h),a		;72a4	32 11 c0 	2 . . 
	ld (ix+01ah),004h		;72a7	dd 36 1a 04 	. 6 . . 
	ret			;72ab	c9 	. 
	ld a,008h		;72ac	3e 08 	> . 
	ld (0c011h),a		;72ae	32 11 c0 	2 . . 
	ld e,(ix+019h)		;72b1	dd 5e 19 	. ^ . 
	ld d,000h		;72b4	16 00 	. . 
	ld hl,0c2a6h		;72b6	21 a6 c2 	! . . 
	add hl,de			;72b9	19 	. 
	add hl,de			;72ba	19 	. 
	ld (hl),0a5h		;72bb	36 a5 	6 . 
	dec hl			;72bd	2b 	+ 
	dec hl			;72be	2b 	+ 
	ld a,(hl)			;72bf	7e 	~ 
	cp 0a5h		;72c0	fe a5 	. . 
	jr z,l72d3h		;72c2	28 0f 	( . 
	inc (ix+019h)		;72c4	dd 34 19 	. 4 . 
	ld a,(0c3b9h)		;72c7	3a b9 c3 	: . . 
	cp 003h		;72ca	fe 03 	. . 
	jr nc,l72d3h		;72cc	30 05 	0 . 
	ld (ix+01ah),004h		;72ce	dd 36 1a 04 	. 6 . . 
	ret			;72d2	c9 	. 
l72d3h:
	ld (ix+01ah),008h		;72d3	dd 36 1a 08 	. 6 . . 
	jp l7937h		;72d7	c3 37 79 	. 7 y 
	ld a,009h		;72da	3e 09 	> . 
	ld (0c011h),a		;72dc	32 11 c0 	2 . . 
	ld e,(ix+019h)		;72df	dd 5e 19 	. ^ . 
	ld d,000h		;72e2	16 00 	. . 
	ld hl,0c2a6h		;72e4	21 a6 c2 	! . . 
	add hl,de			;72e7	19 	. 
	add hl,de			;72e8	19 	. 
	ld (hl),0a4h		;72e9	36 a4 	6 . 
	dec hl			;72eb	2b 	+ 
	dec hl			;72ec	2b 	+ 
	ld a,(hl)			;72ed	7e 	~ 
	cp 0a4h		;72ee	fe a4 	. . 
	jr z,l7301h		;72f0	28 0f 	( . 
	inc (ix+019h)		;72f2	dd 34 19 	. 4 . 
	ld a,(0c3b9h)		;72f5	3a b9 c3 	: . . 
	cp 003h		;72f8	fe 03 	. . 
	jr nc,l7301h		;72fa	30 05 	0 . 
	ld (ix+01ah),004h		;72fc	dd 36 1a 04 	. 6 . . 
	ret			;7300	c9 	. 
l7301h:
	ld (ix+01ah),00bh		;7301	dd 36 1a 0b 	. 6 . . 
	jp l7937h		;7305	c3 37 79 	. 7 y 
	call sub_71f5h		;7308	cd f5 71 	. . q 
	ret z			;730b	c8 	. 
	call 07608h		;730c	cd 08 76 	. . v 
	ld a,015h		;730f	3e 15 	> . 
	ld (0c011h),a		;7311	32 11 c0 	2 . . 
	ld a,007h		;7314	3e 07 	> . 
	ld (0c01fh),a		;7316	32 1f c0 	2 . . 
	inc (ix+01ah)		;7319	dd 34 1a 	. 4 . 
	ret			;731c	c9 	. 
	call sub_71f5h		;731d	cd f5 71 	. . q 
	ret z			;7320	c8 	. 
	ld (ix+006h),014h		;7321	dd 36 06 14 	. 6 . . 
	ld a,093h		;7325	3e 93 	> . 
	ld (0c110h),a		;7327	32 10 c1 	2 . . 
	ld a,019h		;732a	3e 19 	> . 
	ld (0c31ah),a		;732c	32 1a c3 	2 . . 
	ld a,03ch		;732f	3e 3c 	> < 
	ld (0c318h),a		;7331	32 18 c3 	2 . . 
	inc (ix+01ah)		;7334	dd 34 1a 	. 4 . 
	ret			;7337	c9 	. 
	ld a,(0c01fh)		;7338	3a 1f c0 	: . . 
	cp 006h		;733b	fe 06 	. . 
	jr z,l7345h		;733d	28 06 	( . 
	ld hl,(0c236h)		;733f	2a 36 c2 	* 6 . 
	jp 027d6h		;7342	c3 d6 27 	. . ' 
l7345h:
	ld b,(ix+000h)		;7345	dd 46 00 	. F . 
	ld c,(ix+003h)		;7348	dd 4e 03 	. N . 
	ld e,(ix+00ch)		;734b	dd 5e 0c 	. ^ . 
	ld d,(ix+00eh)		;734e	dd 56 0e 	. V . 
	exx			;7351	d9 	. 
	call 02752h		;7352	cd 52 27 	. R ' 
	exx			;7355	d9 	. 
	ld hl,080e1h		;7356	21 e1 80 	! . . 
	ld (0c3a7h),hl		;7359	22 a7 c3 	" . . 
	ld (ix+000h),b		;735c	dd 70 00 	. p . 
	ld (ix+003h),c		;735f	dd 71 03 	. q . 
	ld (ix+00ch),e		;7362	dd 73 0c 	. s . 
	ld (ix+00eh),d		;7365	dd 72 0e 	. r . 
	ld a,c			;7368	79 	y 
	or a			;7369	b7 	. 
	ret nz			;736a	c0 	. 
	ld (ix+00ch),0c0h		;736b	dd 36 0c c0 	. 6 . . 
	ld (ix+00eh),098h		;736f	dd 36 0e 98 	. 6 . . 
	ret			;7373	c9 	. 
	call sub_7898h		;7374	cd 98 78 	. . x 
	ld (ix+018h),060h		;7377	dd 36 18 60 	. 6 . ` 
	ld hl,l7739h		;737b	21 39 77 	! 9 w 
	ld (0c219h),hl		;737e	22 19 c2 	" . . 
	ld a,003h		;7381	3e 03 	> . 
	ld (0c218h),a		;7383	32 18 c2 	2 . . 
	xor a			;7386	af 	. 
	ld (0c3a2h),a		;7387	32 a2 c3 	2 . . 
	ld hl,0961ah		;738a	21 1a 96 	! . . 
	ld (0c3a7h),hl		;738d	22 a7 c3 	" . . 
	ret			;7390	c9 	. 
	call sub_71f5h		;7391	cd f5 71 	. . q 
	ret z			;7394	c8 	. 
	ld a,084h		;7395	3e 84 	> . 
	ld (0c110h),a		;7397	32 10 c1 	2 . . 
	inc (ix+01ah)		;739a	dd 34 1a 	. 4 . 
	ret			;739d	c9 	. 
	ld a,(ix+00ah)		;739e	dd 7e 0a 	. ~ . 
	or a			;73a1	b7 	. 
	ret nz			;73a2	c0 	. 
	ld (ix+013h),0cch		;73a3	dd 36 13 cc 	. 6 . . 
	call sub_7d66h		;73a7	cd 66 7d 	. f } 
	ld hl,0c31ch		;73aa	21 1c c3 	! . . 
	bit 3,(hl)		;73ad	cb 5e 	. ^ 
	jr z,l73cfh		;73af	28 1e 	( . 
	res 3,(hl)		;73b1	cb 9e 	. . 
	ld (ix+013h),0d0h		;73b3	dd 36 13 d0 	. 6 . . 
	call sub_7cd8h		;73b7	cd d8 7c 	. . | 
	jr c,l73cfh		;73ba	38 13 	8 . 
	inc (ix+002h)		;73bc	dd 34 02 	. 4 . 
	ld a,(0c3a2h)		;73bf	3a a2 c3 	: . . 
	cp 003h		;73c2	fe 03 	. . 
	jr c,l73cah		;73c4	38 04 	8 . 
	inc (ix+01ah)		;73c6	dd 34 1a 	. 4 . 
	ret			;73c9	c9 	. 
l73cah:
	ld a,08dh		;73ca	3e 8d 	> . 
	ld (0c110h),a		;73cc	32 10 c1 	2 . . 
l73cfh:
	ld a,(0c31ah)		;73cf	3a 1a c3 	: . . 
	cp 00fh		;73d2	fe 0f 	. . 
	ret nc			;73d4	d0 	. 
	dec (ix+018h)		;73d5	dd 35 18 	. 5 . 
	ret nz			;73d8	c0 	. 
	inc (ix+018h)		;73d9	dd 34 18 	. 4 . 
	ld iy,0c3c0h		;73dc	fd 21 c0 c3 	. ! . . 
	ld a,(0c3c0h)		;73e0	3a c0 c3 	: . . 
	or a			;73e3	b7 	. 
	jr z,l73efh		;73e4	28 09 	( . 
	ld iy,0c3e0h		;73e6	fd 21 e0 c3 	. ! . . 
	ld a,(0c3e0h)		;73ea	3a e0 c3 	: . . 
	or a			;73ed	b7 	. 
	ret nz			;73ee	c0 	. 
l73efh:
	ld (ix+018h),060h		;73ef	dd 36 18 60 	. 6 . ` 
	ld (iy+000h),019h		;73f3	fd 36 00 19 	. 6 . . 
	ld a,(0c3ach)		;73f7	3a ac c3 	: . . 
	add a,008h		;73fa	c6 08 	. . 
	ld (iy+00ch),a		;73fc	fd 77 0c 	. w . 
	ld a,(0c3aeh)		;73ff	3a ae c3 	: . . 
	add a,010h		;7402	c6 10 	. . 
	ld (iy+00eh),a		;7404	fd 77 0e 	. w . 
	ld a,096h		;7407	3e 96 	> . 
	ld (0c110h),a		;7409	32 10 c1 	2 . . 
	ret			;740c	c9 	. 
	call 099d3h		;740d	cd d3 99 	. . . 
	ld a,095h		;7410	3e 95 	> . 
	ld (0c110h),a		;7412	32 10 c1 	2 . . 
	inc (ix+01ah)		;7415	dd 34 1a 	. 4 . 
	ret			;7418	c9 	. 
	ld hl,0c31ah		;7419	21 1a c3 	! . . 
	ld a,(hl)			;741c	7e 	~ 
	cp 017h		;741d	fe 17 	. . 
	ret nz			;741f	c0 	. 
	ld (hl),01ah		;7420	36 1a 	6 . 
	ld hl,0aafeh		;7422	21 fe aa 	! . . 
	ld (0c21bh),hl		;7425	22 1b c2 	" . . 
	ld a,088h		;7428	3e 88 	> . 
	ld (0c202h),a		;742a	32 02 c2 	2 . . 
	xor a			;742d	af 	. 
	ld (0c218h),a		;742e	32 18 c2 	2 . . 
	inc (ix+01ah)		;7431	dd 34 1a 	. 4 . 
	ret			;7434	c9 	. 
	ld a,(0c202h)		;7435	3a 02 c2 	: . . 
	or a			;7438	b7 	. 
	ret nz			;7439	c0 	. 
	ld hl,l7741h		;743a	21 41 77 	! A w 
	ld (0c219h),hl		;743d	22 19 c2 	" . . 
	ld a,006h		;7440	3e 06 	> . 
	ld (0c218h),a		;7442	32 18 c2 	2 . . 
	inc (ix+01ah)		;7445	dd 34 1a 	. 4 . 
	ld iy,0c400h		;7448	fd 21 00 c4 	. ! . . 
	ld (iy+000h),052h		;744c	fd 36 00 52 	. 6 . R 
	ld (iy+003h),004h		;7450	fd 36 03 04 	. 6 . . 
	ld (iy+00ch),0a8h		;7454	fd 36 0c a8 	. 6 . . 
	ld (iy+00eh),0a0h		;7458	fd 36 0e a0 	. 6 . . 
	ld (iy+001h),000h		;745c	fd 36 01 00 	. 6 . . 
	ld a,001h		;7460	3e 01 	> . 
	ld (0c04bh),a		;7462	32 4b c0 	2 K . 
	ld l,015h		;7465	2e 15 	. . 
	jp 003bah		;7467	c3 ba 03 	. . . 
	ld a,(0c202h)		;746a	3a 02 c2 	: . . 
	or a			;746d	b7 	. 
	ret nz			;746e	c0 	. 
	ld hl,0c218h		;746f	21 18 c2 	! . . 
	dec (hl)			;7472	35 	5 
	jr z,l748dh		;7473	28 18 	( . 
	ld a,(hl)			;7475	7e 	~ 
	add a,a			;7476	87 	. 
	add a,a			;7477	87 	. 
	ld e,a			;7478	5f 	_ 
	ld d,000h		;7479	16 00 	. . 
	ld hl,(0c219h)		;747b	2a 19 c2 	* . . 
	add hl,de			;747e	19 	. 
	ld de,0c204h		;747f	11 04 c2 	. . . 
	ld bc,00004h		;7482	01 04 00 	. . . 
	ldir		;7485	ed b0 	. . 
	ld a,080h		;7487	3e 80 	> . 
	ld (0c202h),a		;7489	32 02 c2 	2 . . 
	ret			;748c	c9 	. 
l748dh:
	call 02bc3h		;748d	cd c3 2b 	. . + 
	inc (ix+01ah)		;7490	dd 34 1a 	. 4 . 
	ret			;7493	c9 	. 
	call sub_7d66h		;7494	cd 66 7d 	. f } 
	bit 7,(iy+001h)		;7497	fd cb 01 7e 	. . . ~ 
	jr nz,l74b2h		;749b	20 15 	  . 
	ld a,(ix+01ah)		;749d	dd 7e 1a 	. ~ . 
	ld hl,l74a6h		;74a0	21 a6 74 	! . t 
	jp 00020h		;74a3	c3 20 00 	.   . 
l74a6h:
	ret nc			;74a6	d0 	. 
	ld (hl),h			;74a7	74 	t 
	call pe,0fc74h		;74a8	ec 74 fc 	. t . 
	ld (hl),h			;74ab	74 	t 
	dec hl			;74ac	2b 	+ 
	ld (hl),l			;74ad	75 	u 
	inc sp			;74ae	33 	3 
	ld (hl),l			;74af	75 	u 
	ld c,a			;74b0	4f 	O 
	ld (hl),l			;74b1	75 	u 
l74b2h:
	res 7,(iy+001h)		;74b2	fd cb 01 be 	. . . . 
	ld (iy+01ah),019h		;74b6	fd 36 1a 19 	. 6 . . 
	ld (iy+018h),03ch		;74ba	fd 36 18 3c 	. 6 . < 
	call 099d3h		;74be	cd d3 99 	. . . 
	ld a,093h		;74c1	3e 93 	> . 
	ld (0c110h),a		;74c3	32 10 c1 	2 . . 
	ld hl,0c3c0h		;74c6	21 c0 c3 	! . . 
	call 02755h		;74c9	cd 55 27 	. U ' 
	inc hl			;74cc	23 	# 
	jp 02755h		;74cd	c3 55 27 	. U ' 
	set 1,(ix+001h)		;74d0	dd cb 01 ce 	. . . . 
	ld (ix+007h),04bh		;74d4	dd 36 07 4b 	. 6 . K 
	ld (ix+008h),097h		;74d8	dd 36 08 97 	. 6 . . 
	ld (ix+010h),0ffh		;74dc	dd 36 10 ff 	. 6 . . 
	ld (ix+016h),008h		;74e0	dd 36 16 08 	. 6 . . 
	ld (ix+017h),001h		;74e4	dd 36 17 01 	. 6 . . 
	inc (ix+01ah)		;74e8	dd 34 1a 	. 4 . 
	ret			;74eb	c9 	. 
	dec (ix+016h)		;74ec	dd 35 16 	. 5 . 
	ret nz			;74ef	c0 	. 
	ld (ix+011h),000h		;74f0	dd 36 11 00 	. 6 . . 
	ld (ix+012h),0feh		;74f4	dd 36 12 fe 	. 6 . . 
	inc (ix+01ah)		;74f8	dd 34 1a 	. 4 . 
	ret			;74fb	c9 	. 
	ld l,(ix+011h)		;74fc	dd 6e 11 	. n . 
	ld h,(ix+012h)		;74ff	dd 66 12 	. f . 
	ld de,00040h		;7502	11 40 00 	. @ . 
	add hl,de			;7505	19 	. 
	ld (ix+011h),l		;7506	dd 75 11 	. u . 
	ld (ix+012h),h		;7509	dd 74 12 	. t . 
	bit 7,h		;750c	cb 7c 	. | 
	ret nz			;750e	c0 	. 
	ld de,00200h		;750f	11 00 02 	. . . 
	or a			;7512	b7 	. 
	sbc hl,de		;7513	ed 52 	. R 
	ret c			;7515	d8 	. 
l7516h:
	ld (ix+011h),e		;7516	dd 73 11 	. s . 
	ld (ix+012h),d		;7519	dd 72 12 	. r . 
	inc (ix+01ah)		;751c	dd 34 1a 	. 4 . 
	ld a,(ix+017h)		;751f	dd 7e 17 	. ~ . 
	add a,002h		;7522	c6 02 	. . 
	ld (ix+017h),a		;7524	dd 77 17 	. w . 
	ld (ix+016h),a		;7527	dd 77 16 	. w . 
	ret			;752a	c9 	. 
	dec (ix+016h)		;752b	dd 35 16 	. 5 . 
	ret nz			;752e	c0 	. 
	inc (ix+01ah)		;752f	dd 34 1a 	. 4 . 
	ret			;7532	c9 	. 
	ld l,(ix+011h)		;7533	dd 6e 11 	. n . 
	ld h,(ix+012h)		;7536	dd 66 12 	. f . 
	ld de,0ffc0h		;7539	11 c0 ff 	. . . 
	add hl,de			;753c	19 	. 
	ld (ix+011h),l		;753d	dd 75 11 	. u . 
	ld (ix+012h),h		;7540	dd 74 12 	. t . 
	bit 7,h		;7543	cb 7c 	. | 
	ret z			;7545	c8 	. 
	ld de,0fe00h		;7546	11 00 fe 	. . . 
	or a			;7549	b7 	. 
	sbc hl,de		;754a	ed 52 	. R 
	jr c,l7516h		;754c	38 c8 	8 . 
	ret			;754e	c9 	. 
	dec (ix+016h)		;754f	dd 35 16 	. 5 . 
	ret nz			;7552	c0 	. 
	ld (ix+01ah),002h		;7553	dd 36 1a 02 	. 6 . . 
	ret			;7557	c9 	. 
sub_7558h:
	ld hl,0c3bfh		;7558	21 bf c3 	! . . 
	ld a,(hl)			;755b	7e 	~ 
	or a			;755c	b7 	. 
	ret z			;755d	c8 	. 
	dec (hl)			;755e	35 	5 
	ld c,(ix+003h)		;755f	dd 4e 03 	. N . 
	ld b,000h		;7562	06 00 	. . 
	ld hl,l772ah		;7564	21 2a 77 	! * w 
	add hl,bc			;7567	09 	. 
	ld c,(hl)			;7568	4e 	N 
	ld de,(0c23ch)		;7569	ed 5b 3c c2 	. [ < . 
	dec (ix+018h)		;756d	dd 35 18 	. 5 . 
	ret p			;7570	f0 	. 
	ld (ix+018h),c		;7571	dd 71 18 	. q . 
	ld hl,0c217h		;7574	21 17 c2 	! . . 
	inc (hl)			;7577	34 	4 
	ld a,(hl)			;7578	7e 	~ 
	and 01fh		;7579	e6 1f 	. . 
	ld l,a			;757b	6f 	o 
	ld h,000h		;757c	26 00 	& . 
	add hl,de			;757e	19 	. 
	ld l,(hl)			;757f	6e 	n 
	ld (ix+017h),l		;7580	dd 75 17 	. u . 
	ld a,(0c048h)		;7583	3a 48 c0 	: H . 
	or a			;7586	b7 	. 
	ret z			;7587	c8 	. 
	ld a,l			;7588	7d 	} 
	ld (0c657h),a		;7589	32 57 c6 	2 W . 
	ret			;758c	c9 	. 
sub_758dh:
	ld hl,0c640h		;758d	21 40 c6 	! @ . 
	call 02755h		;7590	cd 55 27 	. U ' 
	inc hl			;7593	23 	# 
	call 02755h		;7594	cd 55 27 	. U ' 
	ld hl,0ca08h		;7597	21 08 ca 	! . . 
	ld de,0d000h		;759a	11 00 d0 	. . . 
	ld bc,000ech		;759d	01 ec 00 	. . . 
	ldir		;75a0	ed b0 	. . 
	ld de,0ca08h		;75a2	11 08 ca 	. . . 
	call sub_75d7h		;75a5	cd d7 75 	. . u 
	ld iy,0c660h		;75a8	fd 21 60 c6 	. ! ` . 
	ld (iy+000h),00bh		;75ac	fd 36 00 0b 	. 6 . . 
	ld hl,(0c0afh)		;75b0	2a af c0 	* . . 
	ld a,020h		;75b3	3e 20 	>   
	add a,h			;75b5	84 	. 
	ld (iy+00ch),a		;75b6	fd 77 0c 	. w . 
	ld (iy+00eh),03fh		;75b9	fd 36 0e 3f 	. 6 . ? 
	ld a,(0c048h)		;75bd	3a 48 c0 	: H . 
	or a			;75c0	b7 	. 
	ret z			;75c1	c8 	. 
	ld iy,0c640h		;75c2	fd 21 40 c6 	. ! @ . 
	ld (iy+000h),00bh		;75c6	fd 36 00 0b 	. 6 . . 
	ld a,0b0h		;75ca	3e b0 	> . 
	add a,h			;75cc	84 	. 
	ld (iy+00ch),a		;75cd	fd 77 0c 	. w . 
	ld (iy+00eh),03fh		;75d0	fd 36 0e 3f 	. 6 . ? 
	ld de,0ca2ch		;75d4	11 2c ca 	. , . 
sub_75d7h:
	ld hl,092a8h		;75d7	21 a8 92 	! . . 
	ld bc,00408h		;75da	01 08 04 	. . . 
l75ddh:
	push bc			;75dd	c5 	. 
	push de			;75de	d5 	. 
	ld b,000h		;75df	06 00 	. . 
	ldir		;75e1	ed b0 	. . 
	pop de			;75e3	d1 	. 
	ex de,hl			;75e4	eb 	. 
	ld c,040h		;75e5	0e 40 	. @ 
	add hl,bc			;75e7	09 	. 
	ex de,hl			;75e8	eb 	. 
	pop bc			;75e9	c1 	. 
	djnz l75ddh		;75ea	10 f1 	. . 
	ret			;75ec	c9 	. 
	ld a,(ix+017h)		;75ed	dd 7e 17 	. ~ . 
	add a,a			;75f0	87 	. 
	ld e,a			;75f1	5f 	_ 
	ld d,000h		;75f2	16 00 	. . 
	ld hl,l7602h		;75f4	21 02 76 	! . v 
	add hl,de			;75f7	19 	. 
	ld a,(hl)			;75f8	7e 	~ 
	inc hl			;75f9	23 	# 
	ld h,(hl)			;75fa	66 	f 
	ld (ix+007h),a		;75fb	dd 77 07 	. w . 
	ld (ix+008h),h		;75fe	dd 74 08 	. t . 
	ret			;7601	c9 	. 
l7602h:
	ret z			;7602	c8 	. 
	sub d			;7603	92 	. 
	sub 092h		;7604	d6 92 	. . 
	call po,02192h		;7606	e4 92 21 	. . ! 
	ld b,b			;7609	40 	@ 
	add a,0cdh		;760a	c6 cd 	. . 
	ld d,l			;760c	55 	U 
	daa			;760d	27 	' 
	inc hl			;760e	23 	# 
	call 02755h		;760f	cd 55 27 	. U ' 
	ld hl,0c5c0h		;7612	21 c0 c5 	! . . 
	jp 02755h		;7615	c3 55 27 	. U ' 
l7618h:
	ld c,e			;7618	4b 	K 
	sub l			;7619	95 	. 
	ld d,a			;761a	57 	W 
	and e			;761b	a3 	. 
	ld (hl),d			;761c	72 	r 
	halt			;761d	76 	v 
	nop			;761e	00 	. 
	sub l			;761f	95 	. 
	dec b			;7620	05 	. 
	sub l			;7621	95 	. 
	ld e,b			;7622	58 	X 
	halt			;7623	76 	v 
	xor d			;7624	aa 	. 
	halt			;7625	76 	v 
	inc c			;7626	0c 	. 
	nop			;7627	00 	. 
	ld d,093h		;7628	16 93 	. . 
	or l			;762a	b5 	. 
	sbc a,e			;762b	9b 	. 
	add a,b			;762c	80 	. 
	halt			;762d	76 	v 
	jp p,0f792h		;762e	f2 92 f7 	. . . 
	sub d			;7631	92 	. 
	ld e,(hl)			;7632	5e 	^ 
	halt			;7633	76 	v 
	jp z,00476h		;7634	ca 76 04 	. v . 
	nop			;7637	00 	. 
	ld d,093h		;7638	16 93 	. . 
	ld h,a			;763a	67 	g 
	sbc a,(hl)			;763b	9e 	. 
	adc a,(hl)			;763c	8e 	. 
	halt			;763d	76 	v 
	jp p,01592h		;763e	f2 92 15 	. . . 
	sub h			;7641	94 	. 
	ld h,h			;7642	64 	d 
	halt			;7643	76 	v 
	jp pe,00576h		;7644	ea 76 05 	. v . 
	nop			;7647	00 	. 
	ld d,093h		;7648	16 93 	. . 
	xor b			;764a	a8 	. 
	and b			;764b	a0 	. 
	sbc a,h			;764c	9c 	. 
	halt			;764d	76 	v 
	jp p,0f792h		;764e	f2 92 f7 	. . . 
	sub d			;7651	92 	. 
	ld e,(hl)			;7652	5e 	^ 
	halt			;7653	76 	v 
	ld a,(bc)			;7654	0a 	. 
	ld (hl),a			;7655	77 	w 
	ld b,000h		;7656	06 00 	. . 
	ld e,e			;7658	5b 	[ 
	sub (hl)			;7659	96 	. 
	xor e			;765a	ab 	. 
	sub (hl)			;765b	96 	. 
	ei			;765c	fb 	. 
	sub (hl)			;765d	96 	. 
	and e			;765e	a3 	. 
	sub e			;765f	93 	. 
	ret			;7660	c9 	. 
	sub e			;7661	93 	. 
	rst 28h			;7662	ef 	. 
	sub e			;7663	93 	. 
	adc a,(hl)			;7664	8e 	. 
	sub h			;7665	94 	. 
	or h			;7666	b4 	. 
	sub h			;7667	94 	. 
	jp c,0d194h		;7668	da 94 d1 	. . . 
	nop			;766b	00 	. 
	call c,0d500h		;766c	dc 00 d5 	. . . 
	nop			;766f	00 	. 
	ret pe			;7670	e8 	. 
	nop			;7671	00 	. 
	or b			;7672	b0 	. 
	nop			;7673	00 	. 
	pop de			;7674	d1 	. 
	nop			;7675	00 	. 
	sbc a,000h		;7676	de 00 	. . 
	exx			;7678	d9 	. 
	nop			;7679	00 	. 
	rst 18h			;767a	df 	. 
	nop			;767b	00 	. 
	push hl			;767c	e5 	. 
	nop			;767d	00 	. 
	call po,0b000h		;767e	e4 00 b0 	. . . 
	nop			;7681	00 	. 
	push hl			;7682	e5 	. 
	nop			;7683	00 	. 
	sbc a,000h		;7684	de 00 	. . 
	push hl			;7686	e5 	. 
	nop			;7687	00 	. 
	push hl			;7688	e5 	. 
	nop			;7689	00 	. 
	pop de			;768a	d1 	. 
	nop			;768b	00 	. 
	or b			;768c	b0 	. 
	nop			;768d	00 	. 
	or b			;768e	b0 	. 
	nop			;768f	00 	. 
	exx			;7690	d9 	. 
	nop			;7691	00 	. 
	rst 18h			;7692	df 	. 
	nop			;7693	00 	. 
	push hl			;7694	e5 	. 
	nop			;7695	00 	. 
	exx			;7696	d9 	. 
	nop			;7697	00 	. 
	sbc a,000h		;7698	de 00 	. . 
	pop de			;769a	d1 	. 
	nop			;769b	00 	. 
	pop de			;769c	d1 	. 
	nop			;769d	00 	. 
	sbc a,000h		;769e	de 00 	. . 
	sbc a,000h		;76a0	de 00 	. . 
	push hl			;76a2	e5 	. 
	nop			;76a3	00 	. 
	sbc a,000h		;76a4	de 00 	. . 
	exx			;76a6	d9 	. 
	nop			;76a7	00 	. 
	sbc a,000h		;76a8	de 00 	. . 
	nop			;76aa	00 	. 
	ld bc,00202h		;76ab	01 02 02 	. . . 
	nop			;76ae	00 	. 
	ld bc,00200h		;76af	01 00 02 	. . . 
	nop			;76b2	00 	. 
	ld bc,00102h		;76b3	01 02 01 	. . . 
	nop			;76b6	00 	. 
	ld bc,00200h		;76b7	01 00 02 	. . . 
	ld (bc),a			;76ba	02 	. 
	nop			;76bb	00 	. 
	ld (bc),a			;76bc	02 	. 
	ld bc,00200h		;76bd	01 00 02 	. . . 
	ld bc,00102h		;76c0	01 02 01 	. . . 
	nop			;76c3	00 	. 
	ld bc,00002h		;76c4	01 02 00 	. . . 
	ld bc,00200h		;76c7	01 00 02 	. . . 
	nop			;76ca	00 	. 
	ld bc,00002h		;76cb	01 02 00 	. . . 
	nop			;76ce	00 	. 
	ld bc,00200h		;76cf	01 00 02 	. . . 
	ld (bc),a			;76d2	02 	. 
	nop			;76d3	00 	. 
	ld (bc),a			;76d4	02 	. 
	ld bc,00100h		;76d5	01 00 01 	. . . 
	nop			;76d8	00 	. 
	ld (bc),a			;76d9	02 	. 
	ld (bc),a			;76da	02 	. 
	nop			;76db	00 	. 
	ld (bc),a			;76dc	02 	. 
	ld bc,00000h		;76dd	01 00 00 	. . . 
	ld bc,00100h		;76e0	01 00 01 	. . . 
	ld (bc),a			;76e3	02 	. 
	ld bc,00002h		;76e4	01 02 00 	. . . 
	ld bc,00000h		;76e7	01 00 00 	. . . 
	ld bc,00201h		;76ea	01 01 02 	. . . 
	ld (bc),a			;76ed	02 	. 
	nop			;76ee	00 	. 
	ld bc,00100h		;76ef	01 00 01 	. . . 
	ld (bc),a			;76f2	02 	. 
	ld bc,00102h		;76f3	01 02 01 	. . . 
	nop			;76f6	00 	. 
	ld bc,00200h		;76f7	01 00 02 	. . . 
	ld (bc),a			;76fa	02 	. 
	nop			;76fb	00 	. 
	ld bc,00001h		;76fc	01 01 00 	. . . 
	ld (bc),a			;76ff	02 	. 
	ld bc,00102h		;7700	01 02 01 	. . . 
	nop			;7703	00 	. 
	ld bc,00002h		;7704	01 02 00 	. . . 
	ld bc,00100h		;7707	01 00 01 	. . . 
	ld (bc),a			;770a	02 	. 
	ld (bc),a			;770b	02 	. 
	ld bc,00002h		;770c	01 02 00 	. . . 
	ld bc,00200h		;770f	01 00 02 	. . . 
	ld (bc),a			;7712	02 	. 
	ld bc,00202h		;7713	01 02 02 	. . . 
	nop			;7716	00 	. 
	ld bc,00000h		;7717	01 00 00 	. . . 
	ld (bc),a			;771a	02 	. 
	nop			;771b	00 	. 
	ld (bc),a			;771c	02 	. 
	ld bc,00200h		;771d	01 00 02 	. . . 
	ld bc,00102h		;7720	01 02 01 	. . . 
	ld (bc),a			;7723	02 	. 
	ld bc,00002h		;7724	01 02 00 	. . . 
	ld bc,00200h		;7727	01 00 02 	. . . 
l772ah:
	inc hl			;772a	23 	# 
	ld e,046h		;772b	1e 46 	. F 
	ld (02d3ch),a		;772d	32 3c 2d 	2 < - 
	scf			;7730	37 	7 
	jr z,l7736h		;7731	28 03 	( . 
	nop			;7733	00 	. 
	nop			;7734	00 	. 
	nop			;7735	00 	. 
l7736h:
	nop			;7736	00 	. 
	nop			;7737	00 	. 
	rra			;7738	1f 	. 
l7739h:
	ex af,af'			;7739	08 	. 
	rra			;773a	1f 	. 
	djnz $+33		;773b	10 1f 	. . 
	inc b			;773d	04 	. 
	call 08b5dh		;773e	cd 5d 8b 	. ] . 
l7741h:
	add a,h			;7741	84 	. 
	call z,08b5dh		;7742	cc 5d 8b 	. ] . 
	inc b			;7745	04 	. 
	bit 6,l		;7746	cb 75 	. u 
	adc a,e			;7748	8b 	. 
	add a,h			;7749	84 	. 
	jp z,08b75h		;774a	ca 75 8b 	. u . 
	inc b			;774d	04 	. 
	jp z,08b75h		;774e	ca 75 8b 	. u . 
	add a,h			;7751	84 	. 
	ret			;7752	c9 	. 
	ld (hl),l			;7753	75 	u 
	adc a,e			;7754	8b 	. 
l7755h:
	inc b			;7755	04 	. 
	ret			;7756	c9 	. 
	ld (hl),l			;7757	75 	u 
	adc a,e			;7758	8b 	. 
	adc a,h			;7759	8c 	. 
	call 08a65h		;775a	cd 65 8a 	. e . 
	ld a,(0c3bah)		;775d	3a ba c3 	: . . 
	ld hl,l7766h		;7760	21 66 77 	! f w 
	jp 00020h		;7763	c3 20 00 	.   . 
l7766h:
	ld b,d			;7766	42 	B 
	ld (hl),c			;7767	71 	q 
	halt			;7768	76 	v 
	ld (hl),c			;7769	71 	q 
	sub d			;776a	92 	. 
	ld (hl),c			;776b	71 	q 
	sub 071h		;776c	d6 71 	. q 
	ld (iy+017h),c		;776e	fd 71 17 	. q . 
	ld (hl),d			;7771	72 	r 
	ld b,l			;7772	45 	E 
	ld (hl),d			;7773	72 	r 
	ld a,c			;7774	79 	y 
	ld (hl),d			;7775	72 	r 
	ex af,af'			;7776	08 	. 
	ld (hl),e			;7777	73 	s 
	dec e			;7778	1d 	. 
	ld (hl),e			;7779	73 	s 
	jr c,l77efh		;777a	38 73 	8 s 
	add a,(hl)			;777c	86 	. 
	ld (hl),a			;777d	77 	w 
	sub c			;777e	91 	. 
	ld (hl),e			;777f	73 	s 
	ld l,d			;7780	6a 	j 
	ld (hl),h			;7781	74 	t 
	sub l			;7782	95 	. 
	ld (hl),a			;7783	77 	w 
	out (077h),a		;7784	d3 77 	. w 
	call sub_7898h		;7786	cd 98 78 	. . x 
	ld hl,l7755h		;7789	21 55 77 	! U w 
	ld (0c219h),hl		;778c	22 19 c2 	" . . 
	ld a,002h		;778f	3e 02 	> . 
	ld (0c218h),a		;7791	32 18 c2 	2 . . 
	ret			;7794	c9 	. 
	ld hl,0936dh		;7795	21 6d 93 	! m . 
	ld (0c3a7h),hl		;7798	22 a7 c3 	" . . 
	dec (ix+016h)		;779b	dd 35 16 	. 5 . 
	ret nz			;779e	c0 	. 
	ld hl,09395h		;779f	21 95 93 	! . . 
	ld (0c3a7h),hl		;77a2	22 a7 c3 	" . . 
	ld hl,0c3c0h		;77a5	21 c0 c3 	! . . 
	call 02755h		;77a8	cd 55 27 	. U ' 
	ld iy,0c3c0h		;77ab	fd 21 c0 c3 	. ! . . 
	ld (iy+000h),00dh		;77af	fd 36 00 0d 	. 6 . . 
	ld a,(0c3ach)		;77b3	3a ac c3 	: . . 
	ld (0c3cch),a		;77b6	32 cc c3 	2 . . 
	ld a,(0c3aeh)		;77b9	3a ae c3 	: . . 
	ld (0c3ceh),a		;77bc	32 ce c3 	2 . . 
	sub 020h		;77bf	d6 20 	.   
	ld (0c3d7h),a		;77c1	32 d7 c3 	2 . . 
	ld hl,09387h		;77c4	21 87 93 	! . . 
	ld (0c3c7h),hl		;77c7	22 c7 c3 	" . . 
	inc (ix+01ah)		;77ca	dd 34 1a 	. 4 . 
	ld a,0ach		;77cd	3e ac 	> . 
	ld (0c110h),a		;77cf	32 10 c1 	2 . . 
	ret			;77d2	c9 	. 
	call sub_7d66h		;77d3	cd 66 7d 	. f } 
	ld a,(0c3c0h)		;77d6	3a c0 c3 	: . . 
	or a			;77d9	b7 	. 
	jp z,l5510h		;77da	ca 10 55 	. . U 
	ret			;77dd	c9 	. 
	ld a,(0c3bah)		;77de	3a ba c3 	: . . 
	ld hl,l77e7h		;77e1	21 e7 77 	! . w 
	jp 00020h		;77e4	c3 20 00 	.   . 
l77e7h:
	ld b,d			;77e7	42 	B 
	ld (hl),c			;77e8	71 	q 
	halt			;77e9	76 	v 
	ld (hl),c			;77ea	71 	q 
	sub d			;77eb	92 	. 
	ld (hl),c			;77ec	71 	q 
	sub 071h		;77ed	d6 71 	. q 
l77efh:
	ld (iy+017h),c		;77ef	fd 71 17 	. q . 
	ld (hl),d			;77f2	72 	r 
	ld b,l			;77f3	45 	E 
	ld (hl),d			;77f4	72 	r 
	ld a,c			;77f5	79 	y 
	ld (hl),d			;77f6	72 	r 
	ex af,af'			;77f7	08 	. 
	ld (hl),e			;77f8	73 	s 
	dec e			;77f9	1d 	. 
	ld (hl),e			;77fa	73 	s 
	jr c,$+117		;77fb	38 73 	8 s 
	sbc a,b			;77fd	98 	. 
	ld a,b			;77fe	78 	x 
	sub c			;77ff	91 	. 
l7800h:
	ld (hl),e			;7800	73 	s 
	dec b			;7801	05 	. 
	ld a,b			;7802	78 	x 
	jr c,l787dh		;7803	38 78 	8 x 
	ld hl,09458h		;7805	21 58 94 	! X . 
	ld (0c3a7h),hl		;7808	22 a7 c3 	" . . 
	dec (ix+016h)		;780b	dd 35 16 	. 5 . 
	ret nz			;780e	c0 	. 
	ld hl,09480h		;780f	21 80 94 	! . . 
	ld (0c3a7h),hl		;7812	22 a7 c3 	" . . 
	ld iy,0c3c0h		;7815	fd 21 c0 c3 	. ! . . 
	ld (iy+000h),00eh		;7819	fd 36 00 0e 	. 6 . . 
	ld a,(0c3ach)		;781d	3a ac c3 	: . . 
	ld (0c3cch),a		;7820	32 cc c3 	2 . . 
	ld a,(0c3aeh)		;7823	3a ae c3 	: . . 
	ld (0c3ceh),a		;7826	32 ce c3 	2 . . 
	ld hl,09472h		;7829	21 72 94 	! r . 
	ld (0c3c7h),hl		;782c	22 c7 c3 	" . . 
	inc (ix+01ah)		;782f	dd 34 1a 	. 4 . 
	ld a,0ach		;7832	3e ac 	> . 
	ld (0c110h),a		;7834	32 10 c1 	2 . . 
	ret			;7837	c9 	. 
	call sub_7d66h		;7838	cd 66 7d 	. f } 
	ld a,(0c3c0h)		;783b	3a c0 c3 	: . . 
	or a			;783e	b7 	. 
	jp z,l5510h		;783f	ca 10 55 	. . U 
	ld a,(0c3e0h)		;7842	3a e0 c3 	: . . 
	or a			;7845	b7 	. 
	ret nz			;7846	c0 	. 
	ld iy,0c3e0h		;7847	fd 21 e0 c3 	. ! . . 
	ld (iy+000h),01ah		;784b	fd 36 00 1a 	. 6 . . 
	ld a,(0c3ach)		;784f	3a ac c3 	: . . 
	ld (0c3ech),a		;7852	32 ec c3 	2 . . 
	ld a,(0c3aeh)		;7855	3a ae c3 	: . . 
	add a,010h		;7858	c6 10 	. . 
	ld (0c3eeh),a		;785a	32 ee c3 	2 . . 
	ld hl,0ff00h		;785d	21 00 ff 	! . . 
	ld (0c3efh),hl		;7860	22 ef c3 	" . . 
	ld hl,0974bh		;7863	21 4b 97 	! K . 
	ld (0c3e7h),hl		;7866	22 e7 c3 	" . . 
	set 1,(iy+001h)		;7869	fd cb 01 ce 	. . . . 
	ret			;786d	c9 	. 
	jp sub_7d66h		;786e	c3 66 7d 	. f } 
	ld a,(0c3bah)		;7871	3a ba c3 	: . . 
	ld hl,l787ah		;7874	21 7a 78 	! z x 
	jp 00020h		;7877	c3 20 00 	.   . 
l787ah:
	ld b,d			;787a	42 	B 
	ld (hl),c			;787b	71 	q 
	halt			;787c	76 	v 
l787dh:
	ld (hl),c			;787d	71 	q 
	sub d			;787e	92 	. 
	ld (hl),c			;787f	71 	q 
	sub 071h		;7880	d6 71 	. q 
	ld (iy+017h),c		;7882	fd 71 17 	. q . 
	ld (hl),d			;7885	72 	r 
	ld b,l			;7886	45 	E 
	ld (hl),d			;7887	72 	r 
	ld a,c			;7888	79 	y 
	ld (hl),d			;7889	72 	r 
	ex af,af'			;788a	08 	. 
	ld (hl),e			;788b	73 	s 
	dec e			;788c	1d 	. 
	ld (hl),e			;788d	73 	s 
	jr c,$+117		;788e	38 73 	8 s 
	sbc a,b			;7890	98 	. 
	ld a,b			;7891	78 	x 
	sub c			;7892	91 	. 
	ld (hl),e			;7893	73 	s 
	cp e			;7894	bb 	. 
	ld a,b			;7895	78 	x 
	out (077h),a		;7896	d3 77 	. w 
sub_7898h:
	call sub_71f5h		;7898	cd f5 71 	. . q 
	ret z			;789b	c8 	. 
	call 02bc3h		;789c	cd c3 2b 	. . + 
	call 07608h		;789f	cd 08 76 	. . v 
	bit 0,(ix+003h)		;78a2	dd cb 03 46 	. . . F 
	jp z,l5510h		;78a6	ca 10 55 	. . U 
	inc (ix+01ah)		;78a9	dd 34 1a 	. 4 . 
	ld (ix+016h),028h		;78ac	dd 36 16 28 	. 6 . ( 
	ld a,00bh		;78b0	3e 0b 	> . 
	ld (0c011h),a		;78b2	32 11 c0 	2 . . 
	ld a,007h		;78b5	3e 07 	> . 
	ld (0c01fh),a		;78b7	32 1f c0 	2 . . 
	ret			;78ba	c9 	. 
	ld hl,0936dh		;78bb	21 6d 93 	! m . 
	ld (0c3a7h),hl		;78be	22 a7 c3 	" . . 
	dec (ix+016h)		;78c1	dd 35 16 	. 5 . 
	ret nz			;78c4	c0 	. 
	ld hl,09395h		;78c5	21 95 93 	! . . 
	ld (0c3a7h),hl		;78c8	22 a7 c3 	" . . 
	ld iy,0c3c0h		;78cb	fd 21 c0 c3 	. ! . . 
	ld (iy+000h),00fh		;78cf	fd 36 00 0f 	. 6 . . 
	ld a,(0c3ach)		;78d3	3a ac c3 	: . . 
	ld (0c3cch),a		;78d6	32 cc c3 	2 . . 
	ld a,(0c3aeh)		;78d9	3a ae c3 	: . . 
	ld (0c3ceh),a		;78dc	32 ce c3 	2 . . 
	ld hl,09387h		;78df	21 87 93 	! . . 
	ld (0c3c7h),hl		;78e2	22 c7 c3 	" . . 
	inc (ix+01ah)		;78e5	dd 34 1a 	. 4 . 
	ld a,0ach		;78e8	3e ac 	> . 
	ld (0c110h),a		;78ea	32 10 c1 	2 . . 
	ret			;78ed	c9 	. 
sub_78eeh:
	ld hl,0c3c0h		;78ee	21 c0 c3 	! . . 
	ld b,016h		;78f1	06 16 	. . 
l78f3h:
	call 02755h		;78f3	cd 55 27 	. U ' 
	inc hl			;78f6	23 	# 
	djnz l78f3h		;78f7	10 fa 	. . 
	call 09df3h		;78f9	cd f3 9d 	. . . 
	ld a,084h		;78fc	3e 84 	> . 
	ld (0ffffh),a		;78fe	32 ff ff 	2 . . 
	ld hl,098e9h		;7901	21 e9 98 	! . . 
	ld de,07000h		;7904	11 00 70 	. . p 
	di			;7907	f3 	. 
	jp 00260h		;7908	c3 60 02 	. ` . 
sub_790bh:
	ld hl,0c908h		;790b	21 08 c9 	! . . 
	ld de,0c260h		;790e	11 60 c2 	. ` . 
	ld bc,0002eh		;7911	01 2e 00 	. . . 
	ldir		;7914	ed b0 	. . 
	ld hl,0766ah		;7916	21 6a 76 	! j v 
	ld de,0c908h		;7919	11 08 c9 	. . . 
	ld bc,00008h		;791c	01 08 00 	. . . 
	ldir		;791f	ed b0 	. . 
	ld hl,07732h		;7921	21 32 77 	! 2 w 
	ld de,0c2a0h		;7924	11 a0 c2 	. . . 
	ld bc,0000bh		;7927	01 0b 00 	. . . 
	ldir		;792a	ed b0 	. . 
	ld hl,0c5c0h		;792c	21 c0 c5 	! . . 
	push hl			;792f	e5 	. 
	call 02755h		;7930	cd 55 27 	. U ' 
	pop hl			;7933	e1 	. 
	ld (hl),00ch		;7934	36 0c 	6 . 
	ret			;7936	c9 	. 
l7937h:
	ld de,0c908h		;7937	11 08 c9 	. . . 
	ld hl,0c260h		;793a	21 60 c2 	! ` . 
	ld bc,0002eh		;793d	01 2e 00 	. . . 
	ldir		;7940	ed b0 	. . 
	ld hl,0d000h		;7942	21 00 d0 	! . . 
	ld de,0ca08h		;7945	11 08 ca 	. . . 
	ld bc,000ech		;7948	01 ec 00 	. . . 
	ldir		;794b	ed b0 	. . 
	ld a,001h		;794d	3e 01 	> . 
	ld (0c216h),a		;794f	32 16 c2 	2 . . 
	ret			;7952	c9 	. 
	bit 0,(ix+001h)		;7953	dd cb 01 46 	. . . F 
	ret nz			;7957	c0 	. 
	set 0,(ix+001h)		;7958	dd cb 01 c6 	. . . . 
	ld hl,0c2a0h		;795c	21 a0 c2 	! . . 
	ld (0c5c7h),hl		;795f	22 c7 c5 	" . . 
	ld (ix+00ch),028h		;7962	dd 36 0c 28 	. 6 . ( 
	ld (ix+00eh),030h		;7966	dd 36 0e 30 	. 6 . 0 
	ret			;796a	c9 	. 
	ld a,(0c3dah)		;796b	3a da c3 	: . . 
	ld hl,l7974h		;796e	21 74 79 	! t y 
	jp 00020h		;7971	c3 20 00 	.   . 
l7974h:
	ld a,h			;7974	7c 	| 
	ld a,c			;7975	79 	y 
	sbc a,e			;7976	9b 	. 
	ld a,c			;7977	79 	y 
	cp e			;7978	bb 	. 
	ld a,c			;7979	79 	y 
	ld b,h			;797a	44 	D 
	ld a,d			;797b	7a 	z 
	ld a,(0c3ceh)		;797c	3a ce c3 	: . . 
	cp (ix+017h)		;797f	dd be 17 	. . . 
	jr nc,l7994h		;7982	30 10 	0 . 
	inc (ix+01ah)		;7984	dd 34 1a 	. 4 . 
	ld hl,0ff00h		;7987	21 00 ff 	! . . 
	ld (0c3cfh),hl		;798a	22 cf c3 	" . . 
	ld hl,0fe00h		;798d	21 00 fe 	! . . 
	ld (0c3d1h),hl		;7990	22 d1 c3 	" . . 
	ret			;7993	c9 	. 
l7994h:
	ld hl,0ff00h		;7994	21 00 ff 	! . . 
	ld (0c3d1h),hl		;7997	22 d1 c3 	" . . 
	ret			;799a	c9 	. 
	call sub_79dbh		;799b	cd db 79 	. . y 
	ld a,(0c3ceh)		;799e	3a ce c3 	: . . 
	cp (ix+017h)		;79a1	dd be 17 	. . . 
	jr c,l79b0h		;79a4	38 0a 	8 . 
	inc (ix+01ah)		;79a6	dd 34 1a 	. 4 . 
	ld hl,00200h		;79a9	21 00 02 	! . . 
	ld (0c3d1h),hl		;79ac	22 d1 c3 	" . . 
	ret			;79af	c9 	. 
l79b0h:
	ld hl,(0c3d1h)		;79b0	2a d1 c3 	* . . 
	ld de,00010h		;79b3	11 10 00 	. . . 
	add hl,de			;79b6	19 	. 
	ld (0c3d1h),hl		;79b7	22 d1 c3 	" . . 
	ret			;79ba	c9 	. 
	call sub_79dbh		;79bb	cd db 79 	. . y 
	ld a,(0c3ceh)		;79be	3a ce c3 	: . . 
	cp (ix+017h)		;79c1	dd be 17 	. . . 
	jr nc,l79d0h		;79c4	30 0a 	0 . 
	dec (ix+01ah)		;79c6	dd 35 1a 	. 5 . 
	ld hl,0fe00h		;79c9	21 00 fe 	! . . 
	ld (0c3d1h),hl		;79cc	22 d1 c3 	" . . 
	ret			;79cf	c9 	. 
l79d0h:
	ld hl,(0c3d1h)		;79d0	2a d1 c3 	* . . 
	ld de,0fff0h		;79d3	11 f0 ff 	. . . 
	add hl,de			;79d6	19 	. 
	ld (0c3d1h),hl		;79d7	22 d1 c3 	" . . 
	ret			;79da	c9 	. 
sub_79dbh:
	call sub_7d66h		;79db	cd 66 7d 	. f } 
	call sub_7cd8h		;79de	cd d8 7c 	. . | 
	jr nc,l7a0bh		;79e1	30 28 	0 ( 
	bit 1,(ix+014h)		;79e3	dd cb 14 4e 	. . . N 
	jr z,l79fah		;79e7	28 11 	( . 
	ld hl,00100h		;79e9	21 00 01 	! . . 
	ld (0c3cfh),hl		;79ec	22 cf c3 	" . . 
	ld a,(0c3cch)		;79ef	3a cc c3 	: . . 
	cp 0e0h		;79f2	fe e0 	. . 
	ret c			;79f4	d8 	. 
	res 1,(ix+014h)		;79f5	dd cb 14 8e 	. . . . 
	ret			;79f9	c9 	. 
l79fah:
	ld hl,0ff00h		;79fa	21 00 ff 	! . . 
	ld (0c3cfh),hl		;79fd	22 cf c3 	" . . 
	ld a,(0c3cch)		;7a00	3a cc c3 	: . . 
	cp 011h		;7a03	fe 11 	. . 
	ret nc			;7a05	d0 	. 
	set 1,(ix+014h)		;7a06	dd cb 14 ce 	. . . . 
	ret			;7a0a	c9 	. 
l7a0bh:
	pop af			;7a0b	f1 	. 
l7a0ch:
	res 7,(ix+001h)		;7a0c	dd cb 01 be 	. . . . 
	inc (ix+002h)		;7a10	dd 34 02 	. 4 . 
	ld a,(0c3c2h)		;7a13	3a c2 c3 	: . . 
	cp 003h		;7a16	fe 03 	. . 
	jp nc,l556eh		;7a18	d2 6e 55 	. n U 
	ld a,08dh		;7a1b	3e 8d 	> . 
	ld (0c110h),a		;7a1d	32 10 c1 	2 . . 
	ld a,(0c3dah)		;7a20	3a da c3 	: . . 
	ld (0c3d8h),a		;7a23	32 d8 c3 	2 . . 
	ld (ix+01ah),003h		;7a26	dd 36 1a 03 	. 6 . . 
	ld (ix+016h),03ch		;7a2a	dd 36 16 3c 	. 6 . < 
	ld hl,(0c3d1h)		;7a2e	2a d1 c3 	* . . 
	ld (0c3deh),hl		;7a31	22 de c3 	" . . 
	ld hl,(0c3cfh)		;7a34	2a cf c3 	* . . 
	ld (0c3dch),hl		;7a37	22 dc c3 	" . . 
	ld hl,00000h		;7a3a	21 00 00 	! . . 
	ld (0c3d1h),hl		;7a3d	22 d1 c3 	" . . 
	ld (0c3cfh),hl		;7a40	22 cf c3 	" . . 
	ret			;7a43	c9 	. 
	dec (ix+016h)		;7a44	dd 35 16 	. 5 . 
	ret nz			;7a47	c0 	. 
	ld a,(0c3d8h)		;7a48	3a d8 c3 	: . . 
	ld (0c3dah),a		;7a4b	32 da c3 	2 . . 
	ld hl,(0c3deh)		;7a4e	2a de c3 	* . . 
	ld (0c3d1h),hl		;7a51	22 d1 c3 	" . . 
	ld hl,(0c3dch)		;7a54	2a dc c3 	* . . 
	ld (0c3cfh),hl		;7a57	22 cf c3 	" . . 
	ret			;7a5a	c9 	. 
	ld a,(0c3dah)		;7a5b	3a da c3 	: . . 
	ld hl,l7a64h		;7a5e	21 64 7a 	! d z 
	jp 00020h		;7a61	c3 20 00 	.   . 
l7a64h:
	ld l,h			;7a64	6c 	l 
	ld a,d			;7a65	7a 	z 
	adc a,(hl)			;7a66	8e 	. 
	ld a,d			;7a67	7a 	z 
	cp a			;7a68	bf 	. 
	ld a,d			;7a69	7a 	z 
	ld b,h			;7a6a	44 	D 
	ld a,d			;7a6b	7a 	z 
	ld a,(0c3ceh)		;7a6c	3a ce c3 	: . . 
	cp 028h		;7a6f	fe 28 	. ( 
	jr nc,l7a87h		;7a71	30 14 	0 . 
	inc (ix+01ah)		;7a73	dd 34 1a 	. 4 . 
	ld hl,00200h		;7a76	21 00 02 	! . . 
	ld (0c3cfh),hl		;7a79	22 cf c3 	" . . 
	ld hl,0fb34h		;7a7c	21 34 fb 	! 4 . 
	ld (0c3d1h),hl		;7a7f	22 d1 c3 	" . . 
	set 1,(ix+014h)		;7a82	dd cb 14 ce 	. . . . 
	ret			;7a86	c9 	. 
l7a87h:
	ld hl,0ff00h		;7a87	21 00 ff 	! . . 
	ld (0c3d1h),hl		;7a8a	22 d1 c3 	" . . 
	ret			;7a8d	c9 	. 
	call sub_7ae4h		;7a8e	cd e4 7a 	. . z 
	ld a,(0c3ceh)		;7a91	3a ce c3 	: . . 
l7a94h:
	cp 028h		;7a94	fe 28 	. ( 
	jr c,l7ab4h		;7a96	38 1c 	8 . 
	inc (ix+01ah)		;7a98	dd 34 1a 	. 4 . 
	ld hl,004cch		;7a9b	21 cc 04 	! . . 
	ld (0c3d1h),hl		;7a9e	22 d1 c3 	" . . 
	ld hl,0c3d4h		;7aa1	21 d4 c3 	! . . 
	ld a,(hl)			;7aa4	7e 	~ 
	xor 002h		;7aa5	ee 02 	. . 
	ld (hl),a			;7aa7	77 	w 
	ld hl,0fe00h		;7aa8	21 00 fe 	! . . 
	jr z,l7ab0h		;7aab	28 03 	( . 
	ld hl,00200h		;7aad	21 00 02 	! . . 
l7ab0h:
	ld (0c3cfh),hl		;7ab0	22 cf c3 	" . . 
	ret			;7ab3	c9 	. 
l7ab4h:
	ld hl,(0c3d1h)		;7ab4	2a d1 c3 	* . . 
	ld de,0005eh		;7ab7	11 5e 00 	. ^ . 
	add hl,de			;7aba	19 	. 
	ld (0c3d1h),hl		;7abb	22 d1 c3 	" . . 
	ret			;7abe	c9 	. 
	call sub_7d66h		;7abf	cd 66 7d 	. f } 
	call sub_7cd8h		;7ac2	cd d8 7c 	. . | 
	jp nc,l7a0ch		;7ac5	d2 0c 7a 	. . z 
	ld a,(0c3ceh)		;7ac8	3a ce c3 	: . . 
	cp 028h		;7acb	fe 28 	. ( 
	jr nc,l7ad9h		;7acd	30 0a 	0 . 
	dec (ix+01ah)		;7acf	dd 35 1a 	. 5 . 
	ld hl,0fb34h		;7ad2	21 34 fb 	! 4 . 
	ld (0c3d1h),hl		;7ad5	22 d1 c3 	" . . 
	ret			;7ad8	c9 	. 
l7ad9h:
	ld hl,(0c3d1h)		;7ad9	2a d1 c3 	* . . 
	ld de,0ffe2h		;7adc	11 e2 ff 	. . . 
	add hl,de			;7adf	19 	. 
	ld (0c3d1h),hl		;7ae0	22 d1 c3 	" . . 
	ret			;7ae3	c9 	. 
sub_7ae4h:
	call sub_7d66h		;7ae4	cd 66 7d 	. f } 
	call sub_7cd8h		;7ae7	cd d8 7c 	. . | 
	jp nc,l7a0bh		;7aea	d2 0b 7a 	. . z 
	bit 1,(ix+014h)		;7aed	dd cb 14 4e 	. . . N 
	ld de,00028h		;7af1	11 28 00 	. ( . 
	jr z,l7af9h		;7af4	28 03 	( . 
	ld de,0ffd8h		;7af6	11 d8 ff 	. . . 
l7af9h:
	ld hl,(0c3cfh)		;7af9	2a cf c3 	* . . 
	add hl,de			;7afc	19 	. 
	ld (0c3cfh),hl		;7afd	22 cf c3 	" . . 
	ret			;7b00	c9 	. 
	call sub_7d66h		;7b01	cd 66 7d 	. f } 
	ld a,(0c3dbh)		;7b04	3a db c3 	: . . 
	or a			;7b07	b7 	. 
	jr z,l7b0fh		;7b08	28 05 	( . 
	dec (ix+01bh)		;7b0a	dd 35 1b 	. 5 . 
	jr l7b28h		;7b0d	18 19 	. . 
l7b0fh:
	call sub_7cd8h		;7b0f	cd d8 7c 	. . | 
	jr c,l7b28h		;7b12	38 14 	8 . 
	inc (ix+002h)		;7b14	dd 34 02 	. 4 . 
	ld a,(0c3c2h)		;7b17	3a c2 c3 	: . . 
	cp 003h		;7b1a	fe 03 	. . 
	jp nc,l556eh		;7b1c	d2 6e 55 	. n U 
	ld a,08dh		;7b1f	3e 8d 	> . 
	ld (0c110h),a		;7b21	32 10 c1 	2 . . 
	ld (ix+01bh),01eh		;7b24	dd 36 1b 1e 	. 6 . . 
l7b28h:
	ld a,(0c3dah)		;7b28	3a da c3 	: . . 
	ld hl,l7b31h		;7b2b	21 31 7b 	! 1 { 
	jp 00020h		;7b2e	c3 20 00 	.   . 
l7b31h:
	ld b,l			;7b31	45 	E 
	ld a,e			;7b32	7b 	{ 
	ld d,l			;7b33	55 	U 
	ld a,e			;7b34	7b 	{ 
	ld h,(hl)			;7b35	66 	f 
	ld a,e			;7b36	7b 	{ 
	ld d,l			;7b37	55 	U 
	ld a,e			;7b38	7b 	{ 
	ld (hl),a			;7b39	77 	w 
	ld a,e			;7b3a	7b 	{ 
	add a,c			;7b3b	81 	. 
	ld a,e			;7b3c	7b 	{ 
	sub d			;7b3d	92 	. 
	ld a,e			;7b3e	7b 	{ 
	add a,c			;7b3f	81 	. 
	ld a,e			;7b40	7b 	{ 
	and e			;7b41	a3 	. 
	ld a,e			;7b42	7b 	{ 
	cp c			;7b43	b9 	. 
	ld a,e			;7b44	7b 	{ 
	ld hl,0fe00h		;7b45	21 00 fe 	! . . 
	ld (0c3d1h),hl		;7b48	22 d1 c3 	" . . 
	ld a,(0c3ceh)		;7b4b	3a ce c3 	: . . 
	cp 070h		;7b4e	fe 70 	. p 
	ret nc			;7b50	d0 	. 
	inc (ix+01ah)		;7b51	dd 34 1a 	. 4 . 
	ret			;7b54	c9 	. 
	call sub_7bddh		;7b55	cd dd 7b 	. . { 
	call sub_7be8h		;7b58	cd e8 7b 	. . { 
	ret nz			;7b5b	c0 	. 
	ld hl,0fe00h		;7b5c	21 00 fe 	! . . 
	ld (0c3cfh),hl		;7b5f	22 cf c3 	" . . 
	inc (ix+01ah)		;7b62	dd 34 1a 	. 4 . 
	ret			;7b65	c9 	. 
	call sub_7bf5h		;7b66	cd f5 7b 	. . { 
	call sub_7bd0h		;7b69	cd d0 7b 	. . { 
	ret nz			;7b6c	c0 	. 
	ld hl,0fe00h		;7b6d	21 00 fe 	! . . 
	ld (0c3d1h),hl		;7b70	22 d1 c3 	" . . 
	inc (ix+01ah)		;7b73	dd 34 1a 	. 4 . 
	ret			;7b76	c9 	. 
	ld a,(0c3cch)		;7b77	3a cc c3 	: . . 
	cp 048h		;7b7a	fe 48 	. H 
	ret nc			;7b7c	d0 	. 
	inc (ix+01ah)		;7b7d	dd 34 1a 	. 4 . 
	ret			;7b80	c9 	. 
	call sub_7c0dh		;7b81	cd 0d 7c 	. . | 
	call sub_7bd0h		;7b84	cd d0 7b 	. . { 
	ret nz			;7b87	c0 	. 
	ld hl,00200h		;7b88	21 00 02 	! . . 
	ld (0c3d1h),hl		;7b8b	22 d1 c3 	" . . 
	inc (ix+01ah)		;7b8e	dd 34 1a 	. 4 . 
	ret			;7b91	c9 	. 
	call sub_7bddh		;7b92	cd dd 7b 	. . { 
	call sub_7c00h		;7b95	cd 00 7c 	. . | 
	ret nz			;7b98	c0 	. 
	ld hl,00200h		;7b99	21 00 02 	! . . 
l7b9ch:
	ld (0c3d1h),hl		;7b9c	22 d1 c3 	" . . 
	inc (ix+01ah)		;7b9f	dd 34 1a 	. 4 . 
	ret			;7ba2	c9 	. 
	ld a,(0c3ceh)		;7ba3	3a ce c3 	: . . 
	cp 088h		;7ba6	fe 88 	. . 
	ret c			;7ba8	d8 	. 
	ld hl,00000h		;7ba9	21 00 00 	! . . 
	ld (0c3d1h),hl		;7bac	22 d1 c3 	" . . 
	ld hl,00400h		;7baf	21 00 04 	! . . 
	ld (0c3cfh),hl		;7bb2	22 cf c3 	" . . 
	inc (ix+01ah)		;7bb5	dd 34 1a 	. 4 . 
	ret			;7bb8	c9 	. 
	ld a,(0c3cch)		;7bb9	3a cc c3 	: . . 
	cp 0b0h		;7bbc	fe b0 	. . 
	ret c			;7bbe	d8 	. 
	ld hl,00000h		;7bbf	21 00 00 	! . . 
	ld (0c3cfh),hl		;7bc2	22 cf c3 	" . . 
	ld hl,0fe00h		;7bc5	21 00 fe 	! . . 
	ld (0c3d1h),hl		;7bc8	22 d1 c3 	" . . 
	ld (ix+01ah),000h		;7bcb	dd 36 1a 00 	. 6 . . 
	ret			;7bcf	c9 	. 
sub_7bd0h:
	ld hl,(0c3cfh)		;7bd0	2a cf c3 	* . . 
	ld de,00020h		;7bd3	11 20 00 	.   . 
	or a			;7bd6	b7 	. 
	adc hl,de		;7bd7	ed 5a 	. Z 
	ld (0c3cfh),hl		;7bd9	22 cf c3 	" . . 
	ret			;7bdc	c9 	. 
sub_7bddh:
	ld hl,(0c3cfh)		;7bdd	2a cf c3 	* . . 
	ld de,0ffe0h		;7be0	11 e0 ff 	. . . 
	add hl,de			;7be3	19 	. 
	ld (0c3cfh),hl		;7be4	22 cf c3 	" . . 
	ret			;7be7	c9 	. 
sub_7be8h:
	ld hl,(0c3d1h)		;7be8	2a d1 c3 	* . . 
	ld de,00020h		;7beb	11 20 00 	.   . 
	or a			;7bee	b7 	. 
	adc hl,de		;7bef	ed 5a 	. Z 
	ld (0c3d1h),hl		;7bf1	22 d1 c3 	" . . 
	ret			;7bf4	c9 	. 
sub_7bf5h:
	ld hl,(0c3d1h)		;7bf5	2a d1 c3 	* . . 
	ld de,0ffe0h		;7bf8	11 e0 ff 	. . . 
	add hl,de			;7bfb	19 	. 
	ld (0c3d1h),hl		;7bfc	22 d1 c3 	" . . 
	ret			;7bff	c9 	. 
sub_7c00h:
	ld hl,(0c3d1h)		;7c00	2a d1 c3 	* . . 
	ld de,0ffe0h		;7c03	11 e0 ff 	. . . 
	or a			;7c06	b7 	. 
	adc hl,de		;7c07	ed 5a 	. Z 
	ld (0c3d1h),hl		;7c09	22 d1 c3 	" . . 
	ret			;7c0c	c9 	. 
sub_7c0dh:
	ld hl,(0c3d1h)		;7c0d	2a d1 c3 	* . . 
	ld de,00020h		;7c10	11 20 00 	.   . 
	add hl,de			;7c13	19 	. 
	ld (0c3d1h),hl		;7c14	22 d1 c3 	" . . 
	ret			;7c17	c9 	. 
sub_7c18h:
	ld a,(ix+00ch)		;7c18	dd 7e 0c 	. ~ . 
	add a,e			;7c1b	83 	. 
sub_7c1ch:
	ld hl,(0c0afh)		;7c1c	2a af c0 	* . . 
	sub h			;7c1f	94 	. 
	ld c,a			;7c20	4f 	O 
	rra			;7c21	1f 	. 
	rra			;7c22	1f 	. 
	and 03eh		;7c23	e6 3e 	. > 
	ld e,a			;7c25	5f 	_ 
	ld a,(ix+00eh)		;7c26	dd 7e 0e 	. ~ . 
	add a,d			;7c29	82 	. 
l7c2ah:
	ld hl,(0c0bdh)		;7c2a	2a bd c0 	* . . 
	add a,h			;7c2d	84 	. 
	jr nc,l7c32h		;7c2e	30 02 	0 . 
	add a,020h		;7c30	c6 20 	.   
l7c32h:
	cp 0e0h		;7c32	fe e0 	. . 
	jr c,l7c38h		;7c34	38 02 	8 . 
	add a,020h		;7c36	c6 20 	.   
l7c38h:
	ld b,a			;7c38	47 	G 
	and 0f8h		;7c39	e6 f8 	. . 
	ld l,a			;7c3b	6f 	o 
	ld h,000h		;7c3c	26 00 	& . 
	add hl,hl			;7c3e	29 	) 
	add hl,hl			;7c3f	29 	) 
	add hl,hl			;7c40	29 	) 
	ld d,0c8h		;7c41	16 c8 	. . 
	add hl,de			;7c43	19 	. 
	inc hl			;7c44	23 	# 
	ld a,(hl)			;7c45	7e 	~ 
	ret			;7c46	c9 	. 
	ld a,e			;7c47	7b 	{ 
	ld hl,(0c0afh)		;7c48	2a af c0 	* . . 
	sub h			;7c4b	94 	. 
	ld c,a			;7c4c	4f 	O 
	rra			;7c4d	1f 	. 
	rra			;7c4e	1f 	. 
	and 03eh		;7c4f	e6 3e 	. > 
	ld e,a			;7c51	5f 	_ 
	ld a,d			;7c52	7a 	z 
	jp l7c2ah		;7c53	c3 2a 7c 	. * | 
sub_7c56h:
	ld a,e			;7c56	7b 	{ 
	ld c,a			;7c57	4f 	O 
	rra			;7c58	1f 	. 
	rra			;7c59	1f 	. 
	and 03eh		;7c5a	e6 3e 	. > 
	ld e,a			;7c5c	5f 	_ 
	ld a,d			;7c5d	7a 	z 
	jp l7c2ah		;7c5e	c3 2a 7c 	. * | 
	ld a,l			;7c61	7d 	} 
	and 0c0h		;7c62	e6 c0 	. . 
	ld d,a			;7c64	57 	W 
	ld a,c			;7c65	79 	y 
	add a,e			;7c66	83 	. 
	ld c,a			;7c67	4f 	O 
	rra			;7c68	1f 	. 
	rra			;7c69	1f 	. 
	and 03eh		;7c6a	e6 3e 	. > 
	or d			;7c6c	b2 	. 
	inc a			;7c6d	3c 	< 
	ld l,a			;7c6e	6f 	o 
	ret			;7c6f	c9 	. 
sub_7c70h:
	ld a,l			;7c70	7d 	} 
	and 03fh		;7c71	e6 3f 	. ? 
	ld e,a			;7c73	5f 	_ 
	ld a,b			;7c74	78 	x 
	add a,d			;7c75	82 	. 
	ld b,a			;7c76	47 	G 
	cp 0e0h		;7c77	fe e0 	. . 
	jr c,l7c7dh		;7c79	38 02 	8 . 
	sub 0e0h		;7c7b	d6 e0 	. . 
l7c7dh:
	and 0f8h		;7c7d	e6 f8 	. . 
	ld l,a			;7c7f	6f 	o 
	ld h,000h		;7c80	26 00 	& . 
	add hl,hl			;7c82	29 	) 
	add hl,hl			;7c83	29 	) 
	add hl,hl			;7c84	29 	) 
	ld d,0c8h		;7c85	16 c8 	. . 
	add hl,de			;7c87	19 	. 
	ret			;7c88	c9 	. 
sub_7c89h:
	ld a,(iy+000h)		;7c89	fd 7e 00 	. ~ . 
	or a			;7c8c	b7 	. 
	scf			;7c8d	37 	7 
	ret z			;7c8e	c8 	. 
sub_7c8fh:
	ld a,(iy+009h)		;7c8f	fd 7e 09 	. ~ . 
	or (iy+00ah)		;7c92	fd b6 0a 	. . . 
	scf			;7c95	37 	7 
	ret nz			;7c96	c0 	. 
	ld l,(iy+013h)		;7c97	fd 6e 13 	. n . 
	ld h,000h		;7c9a	26 00 	& . 
	ld bc,091d0h		;7c9c	01 d0 91 	. . . 
	add hl,bc			;7c9f	09 	. 
	ex de,hl			;7ca0	eb 	. 
	ld l,(ix+013h)		;7ca1	dd 6e 13 	. n . 
	ld h,000h		;7ca4	26 00 	& . 
	add hl,bc			;7ca6	09 	. 
	ld a,(de)			;7ca7	1a 	. 
	ld b,a			;7ca8	47 	G 
	inc de			;7ca9	13 	. 
	ld a,(de)			;7caa	1a 	. 
	add a,b			;7cab	80 	. 
	add a,(iy+00ch)		;7cac	fd 86 0c 	. . . 
	jr nc,l7cb3h		;7caf	30 02 	0 . 
	ld a,0ffh		;7cb1	3e ff 	> . 
l7cb3h:
	sub (hl)			;7cb3	96 	. 
	sub (ix+00ch)		;7cb4	dd 96 0c 	. . . 
	ret c			;7cb7	d8 	. 
	ld c,a			;7cb8	4f 	O 
	inc hl			;7cb9	23 	# 
	ld a,(de)			;7cba	1a 	. 
	add a,(hl)			;7cbb	86 	. 
	cp c			;7cbc	b9 	. 
	ret c			;7cbd	d8 	. 
	inc de			;7cbe	13 	. 
	inc hl			;7cbf	23 	# 
	ld a,(de)			;7cc0	1a 	. 
	ld b,a			;7cc1	47 	G 
	inc de			;7cc2	13 	. 
	ld a,(de)			;7cc3	1a 	. 
	add a,b			;7cc4	80 	. 
	add a,(iy+00eh)		;7cc5	fd 86 0e 	. . . 
	sub (hl)			;7cc8	96 	. 
	sub (ix+00eh)		;7cc9	dd 96 0e 	. . . 
	ret c			;7ccc	d8 	. 
	inc hl			;7ccd	23 	# 
	ld c,a			;7cce	4f 	O 
	ld a,(de)			;7ccf	1a 	. 
	add a,(hl)			;7cd0	86 	. 
	cp c			;7cd1	b9 	. 
	ret c			;7cd2	d8 	. 
	set 7,(ix+001h)		;7cd3	dd cb 01 fe 	. . . . 
	ret			;7cd7	c9 	. 
sub_7cd8h:
	ld a,(0c31ah)		;7cd8	3a 1a c3 	: . . 
	cp 005h		;7cdb	fe 05 	. . 
	jp z,l7d05h		;7cdd	ca 05 7d 	. . } 
	ld a,(0c054h)		;7ce0	3a 54 c0 	: T . 
	ld hl,l7ce9h		;7ce3	21 e9 7c 	! . | 
	jp 00020h		;7ce6	c3 20 00 	.   . 
l7ce9h:
	dec b			;7ce9	05 	. 
	ld a,l			;7cea	7d 	} 
	dec b			;7ceb	05 	. 
	ld a,l			;7cec	7d 	} 
	dec b			;7ced	05 	. 
	ld a,l			;7cee	7d 	} 
	dec sp			;7cef	3b 	; 
	ld a,l			;7cf0	7d 	} 
	ld d,c			;7cf1	51 	Q 
	ld a,l			;7cf2	7d 	} 
	ld e,a			;7cf3	5f 	_ 
	ld a,l			;7cf4	7d 	} 
	dec b			;7cf5	05 	. 
	ld a,l			;7cf6	7d 	} 
	ld e,b			;7cf7	58 	X 
	ld a,l			;7cf8	7d 	} 
	ld l,07dh		;7cf9	2e 7d 	. } 
	ld l,07dh		;7cfb	2e 7d 	. } 
	dec b			;7cfd	05 	. 
	ld a,l			;7cfe	7d 	} 
	dec b			;7cff	05 	. 
	ld a,l			;7d00	7d 	} 
	dec b			;7d01	05 	. 
	ld a,l			;7d02	7d 	} 
	dec b			;7d03	05 	. 
	ld a,l			;7d04	7d 	} 
l7d05h:
	ld a,(0c31ch)		;7d05	3a 1c c3 	: . . 
	bit 0,a		;7d08	cb 47 	. G 
	scf			;7d0a	37 	7 
	ret z			;7d0b	c8 	. 
	ld iy,0c300h		;7d0c	fd 21 00 c3 	. ! . . 
	ld a,(0c313h)		;7d10	3a 13 c3 	: . . 
	add a,004h		;7d13	c6 04 	. . 
	ld l,a			;7d15	6f 	o 
	ld h,000h		;7d16	26 00 	& . 
	ld bc,091d0h		;7d18	01 d0 91 	. . . 
	add hl,bc			;7d1b	09 	. 
	ex de,hl			;7d1c	eb 	. 
	ld l,(ix+013h)		;7d1d	dd 6e 13 	. n . 
	ld h,000h		;7d20	26 00 	& . 
	add hl,bc			;7d22	09 	. 
	ld a,(de)			;7d23	1a 	. 
	ld b,a			;7d24	47 	G 
	inc de			;7d25	13 	. 
	ld a,(de)			;7d26	1a 	. 
	add a,b			;7d27	80 	. 
	add a,(iy+00ch)		;7d28	fd 86 0c 	. . . 
	jp l7cb3h		;7d2b	c3 b3 7c 	. . | 
	ld iy,0c320h		;7d2e	fd 21 20 c3 	. !   . 
	call sub_7c89h		;7d32	cd 89 7c 	. . | 
	ret c			;7d35	d8 	. 
	set 7,(iy+001h)		;7d36	fd cb 01 fe 	. . . . 
	ret			;7d3a	c9 	. 
	ld iy,0c340h		;7d3b	fd 21 40 c3 	. ! @ . 
	call sub_7c8fh		;7d3f	cd 8f 7c 	. . | 
	jr nc,l7d4ch		;7d42	30 08 	0 . 
	ld iy,0c320h		;7d44	fd 21 20 c3 	. !   . 
	call sub_7c8fh		;7d48	cd 8f 7c 	. . | 
	ret c			;7d4b	d8 	. 
l7d4ch:
	set 7,(iy+001h)		;7d4c	fd cb 01 fe 	. . . . 
	ret			;7d50	c9 	. 
	ld iy,0c360h		;7d51	fd 21 60 c3 	. ! ` . 
	jp sub_7c8fh		;7d55	c3 8f 7c 	. . | 
	ld iy,0c300h		;7d58	fd 21 00 c3 	. ! . . 
	jp sub_7c8fh		;7d5c	c3 8f 7c 	. . | 
	ld iy,0c320h		;7d5f	fd 21 20 c3 	. !   . 
	jp sub_7c8fh		;7d63	c3 8f 7c 	. . | 
sub_7d66h:
	ld a,(0c31ah)		;7d66	3a 1a c3 	: . . 
	cp 00fh		;7d69	fe 0f 	. . 
	ret nc			;7d6b	d0 	. 
	ld a,(0c054h)		;7d6c	3a 54 c0 	: T . 
	ld hl,l7d75h		;7d6f	21 75 7d 	! u } 
	jp 00020h		;7d72	c3 20 00 	.   . 
l7d75h:
	adc a,c			;7d75	89 	. 
	ld a,l			;7d76	7d 	} 
	adc a,c			;7d77	89 	. 
	ld a,l			;7d78	7d 	} 
	sub l			;7d79	95 	. 
	ld a,l			;7d7a	7d 	} 
	adc a,c			;7d7b	89 	. 
	ld a,l			;7d7c	7d 	} 
	sub l			;7d7d	95 	. 
	ld a,l			;7d7e	7d 	} 
	adc a,c			;7d7f	89 	. 
	ld a,l			;7d80	7d 	} 
	adc a,c			;7d81	89 	. 
	ld a,l			;7d82	7d 	} 
	sub l			;7d83	95 	. 
	ld a,l			;7d84	7d 	} 
	adc a,c			;7d85	89 	. 
	ld a,l			;7d86	7d 	} 
	adc a,c			;7d87	89 	. 
	ld a,l			;7d88	7d 	} 
	ld iy,0c300h		;7d89	fd 21 00 c3 	. ! . . 
	call sub_7c8fh		;7d8d	cd 8f 7c 	. . | 
	ret c			;7d90	d8 	. 
	set 7,(iy+001h)		;7d91	fd cb 01 fe 	. . . . 
	ret			;7d95	c9 	. 
	ld sp,0dff0h		;7d96	31 f0 df 	1 . . 
	ld hl,0fffch		;7d99	21 fc ff 	! . . 
	ld (hl),000h		;7d9c	36 00 	6 . 
	inc l			;7d9e	2c 	, 
	ld (hl),000h		;7d9f	36 00 	6 . 
	inc l			;7da1	2c 	, 
	ld (hl),001h		;7da2	36 01 	6 . 
	inc l			;7da4	2c 	, 
	ld (hl),002h		;7da5	36 02 	6 . 
	call 09e02h		;7da7	cd 02 9e 	. . . 
	call 0030eh		;7daa	cd 0e 03 	. . . 
	call 00238h		;7dad	cd 38 02 	. 8 . 
	call sub_7e32h		;7db0	cd 32 7e 	. 2 ~ 
	ld l,000h		;7db3	2e 00 	. . 
	ld de,0c000h		;7db5	11 00 c0 	. . . 
	ld bc,00020h		;7db8	01 20 00 	.   . 
	call 00156h		;7dbb	cd 56 01 	. V . 
	ld a,001h		;7dbe	3e 01 	> . 
	call 00488h		;7dc0	cd 88 04 	. . . 
	ld a,004h		;7dc3	3e 04 	> . 
	ld (0ffffh),a		;7dc5	32 ff ff 	2 . . 
	ld de,0c000h		;7dc8	11 00 c0 	. . . 
	ld hl,0bedbh		;7dcb	21 db be 	! . . 
	ld bc,00003h		;7dce	01 03 00 	. . . 
	call 00131h		;7dd1	cd 31 01 	. 1 . 
	ld de,0c700h		;7dd4	11 00 c7 	. . . 
	ld hl,0bf0eh		;7dd7	21 0e bf 	! . . 
	ld bc,000f2h		;7dda	01 f2 00 	. . . 
	ldir		;7ddd	ed b0 	. . 
	ld a,003h		;7ddf	3e 03 	> . 
	ld (0ffffh),a		;7de1	32 ff ff 	2 . . 
	ld hl,0bf2fh		;7de4	21 2f bf 	! / . 
	ld bc,000d1h		;7de7	01 d1 00 	. . . 
	ldir		;7dea	ed b0 	. . 
	ld a,007h		;7dec	3e 07 	> . 
	ld (0ffffh),a		;7dee	32 ff ff 	2 . . 
	ld hl,0bf86h		;7df1	21 86 bf 	! . . 
	ld bc,0007ah		;7df4	01 7a 00 	. z . 
	ldir		;7df7	ed b0 	. . 
	ld a,006h		;7df9	3e 06 	> . 
	ld (0ffffh),a		;7dfb	32 ff ff 	2 . . 
	ld hl,0bfabh		;7dfe	21 ab bf 	! . . 
	ld bc,0004eh		;7e01	01 4e 00 	. N . 
	ldir		;7e04	ed b0 	. . 
	ld hl,0c700h		;7e06	21 00 c7 	! . . 
	ld de,04c00h		;7e09	11 00 4c 	. . L 
	call 00260h		;7e0c	cd 60 02 	. ` . 
	ld a,004h		;7e0f	3e 04 	> . 
	ld (0ffffh),a		;7e11	32 ff ff 	2 . . 
	ld de,l7a94h		;7e14	11 94 7a 	. . z 
	ld hl,0bedeh		;7e17	21 de be 	! . . 
	ld bc,0040ch		;7e1a	01 0c 04 	. . . 
	xor a			;7e1d	af 	. 
	call 00174h		;7e1e	cd 74 01 	. t . 
	ld de,081e0h		;7e21	11 e0 81 	. . . 
	rst 8			;7e24	cf 	. 
	ld b,028h		;7e25	06 28 	. ( 
	call 00310h		;7e27	cd 10 03 	. . . 
	ld a,005h		;7e2a	3e 05 	> . 
	ld (0ffffh),a		;7e2c	32 ff ff 	2 . . 
	jp 0bed3h		;7e2f	c3 d3 be 	. . . 
sub_7e32h:
	ld de,l4000h		;7e32	11 00 40 	. . @ 
	ld l,000h		;7e35	2e 00 	. . 
	ld bc,l4000h		;7e37	01 00 40 	. . @ 
	jp 00156h		;7e3a	c3 56 01 	. V . 
	exx			;7e3d	d9 	. 
	bit 7,(hl)		;7e3e	cb 7e 	. ~ 
	jp z,l7f47h		;7e40	ca 47 7f 	. G  
	ld a,009h		;7e43	3e 09 	> . 
	call 002b3h		;7e45	cd b3 02 	. . . 
	ld a,001h		;7e48	3e 01 	> . 
	ld (0c03eh),a		;7e4a	32 3e c0 	2 > . 
	ld hl,0c07dh		;7e4d	21 7d c0 	! } . 
	bit 7,(hl)		;7e50	cb 7e 	. ~ 
	jp z,l7e64h		;7e52	ca 64 7e 	. d ~ 
	res 7,(hl)		;7e55	cb be 	. . 
	dec (hl)			;7e57	35 	5 
	set 7,(hl)		;7e58	cb fe 	. . 
	jp nz,l7e78h		;7e5a	c2 78 7e 	. x ~ 
	ld hl,(0c038h)		;7e5d	2a 38 c0 	* 8 . 
	inc hl			;7e60	23 	# 
	jp l7e6bh		;7e61	c3 6b 7e 	. k ~ 
l7e64h:
	dec (hl)			;7e64	35 	5 
	jp nz,l7e78h		;7e65	c2 78 7e 	. x ~ 
	ld hl,(0c038h)		;7e68	2a 38 c0 	* 8 . 
l7e6bh:
	ld a,(hl)			;7e6b	7e 	~ 
	ld (0c07dh),a		;7e6c	32 7d c0 	2 } . 
	inc hl			;7e6f	23 	# 
	ld a,(hl)			;7e70	7e 	~ 
	ld (0c07eh),a		;7e71	32 7e c0 	2 ~ . 
	inc hl			;7e74	23 	# 
	ld (0c038h),hl		;7e75	22 38 c0 	" 8 . 
l7e78h:
	ld a,(0c07eh)		;7e78	3a 7e c0 	: ~ . 
	and 0e0h		;7e7b	e6 e0 	. . 
	jp z,l7eb3h		;7e7d	ca b3 7e 	. . ~ 
	bit 7,a		;7e80	cb 7f 	.  
	jp nz,l7e9ch		;7e82	c2 9c 7e 	. . ~ 
	rlca			;7e85	07 	. 
	rlca			;7e86	07 	. 
	jp c,l7e93h		;7e87	da 93 7e 	. . ~ 
	ld a,008h		;7e8a	3e 08 	> . 
	add a,(ix+00ch)		;7e8c	dd 86 0c 	. . . 
	ld (ix+00ch),a		;7e8f	dd 77 0c 	. w . 
	ret			;7e92	c9 	. 
l7e93h:
	ld a,(ix+00ch)		;7e93	dd 7e 0c 	. ~ . 
	sub 008h		;7e96	d6 08 	. . 
	ld (ix+00ch),a		;7e98	dd 77 0c 	. w . 
	ret			;7e9b	c9 	. 
l7e9ch:
	rlca			;7e9c	07 	. 
	rlca			;7e9d	07 	. 
	jp c,l7eaah		;7e9e	da aa 7e 	. . ~ 
	ld a,008h		;7ea1	3e 08 	> . 
	add a,(ix+00eh)		;7ea3	dd 86 0e 	. . . 
	ld (ix+00eh),a		;7ea6	dd 77 0e 	. w . 
	ret			;7ea9	c9 	. 
l7eaah:
	ld a,(ix+00eh)		;7eaa	dd 7e 0e 	. ~ . 
	sub 008h		;7ead	d6 08 	. . 
	ld (ix+00eh),a		;7eaf	dd 77 0e 	. w . 
	ret			;7eb2	c9 	. 
l7eb3h:
	ld a,0b1h		;7eb3	3e b1 	> . 
	ld (0c110h),a		;7eb5	32 10 c1 	2 . . 
	ld a,082h		;7eb8	3e 82 	> . 
	ld (0ffffh),a		;7eba	32 ff ff 	2 . . 
	ld a,(0c076h)		;7ebd	3a 76 c0 	: v . 
	or a			;7ec0	b7 	. 
	jp z,l7ed2h		;7ec1	ca d2 7e 	. . ~ 
	ld hl,(0c070h)		;7ec4	2a 70 c0 	* p . 
	push hl			;7ec7	e5 	. 
	pop ix		;7ec8	dd e1 	. . 
	ld (ix+005h),00ah		;7eca	dd 36 05 0a 	. 6 . . 
	ld (ix+006h),00ah		;7ece	dd 36 06 0a 	. 6 . . 
l7ed2h:
	ld a,001h		;7ed2	3e 01 	> . 
	call 002b3h		;7ed4	cd b3 02 	. . . 
	ld a,(0c006h)		;7ed7	3a 06 c0 	: . . 
	and 030h		;7eda	e6 30 	. 0 
	jp nz,l7ef8h		;7edc	c2 f8 7e 	. . ~ 
	ld a,(0c076h)		;7edf	3a 76 c0 	: v . 
	or a			;7ee2	b7 	. 
	jp z,l7ef5h		;7ee3	ca f5 7e 	. . ~ 
	ld hl,(0c072h)		;7ee6	2a 72 c0 	* r . 
	call 027d6h		;7ee9	cd d6 27 	. . ' 
	ld hl,0c700h		;7eec	21 00 c7 	! . . 
	ld (0c009h),hl		;7eef	22 09 c0 	" . . 
	call 0269fh		;7ef2	cd 9f 26 	. . & 
l7ef5h:
	jp l7ed2h		;7ef5	c3 d2 7e 	. . ~ 
l7ef8h:
	xor a			;7ef8	af 	. 
	ld (0c076h),a		;7ef9	32 76 c0 	2 v . 
	ld hl,0c700h		;7efc	21 00 c7 	! . . 
	ld (hl),0e0h		;7eff	36 e0 	6 . 
	ld de,0c701h		;7f01	11 01 c7 	. . . 
	ld bc,00005h		;7f04	01 05 00 	. . . 
	ldir		;7f07	ed b0 	. . 
	ld ix,0c300h		;7f09	dd 21 00 c3 	. ! . . 
	ld a,089h		;7f0d	3e 89 	> . 
	ld (0c01fh),a		;7f0f	32 1f c0 	2 . . 
	ld a,(0c215h)		;7f12	3a 15 c2 	: . . 
	or a			;7f15	b7 	. 
	jp nz,l7f2ah		;7f16	c2 2a 7f 	. *  
	ld a,08ah		;7f19	3e 8a 	> . 
	ld (0c01fh),a		;7f1b	32 1f c0 	2 . . 
	ld a,(0c055h)		;7f1e	3a 55 c0 	: U . 
	or a			;7f21	b7 	. 
	jp z,l7f2ah		;7f22	ca 2a 7f 	. *  
	ld a,085h		;7f25	3e 85 	> . 
	ld (0c01fh),a		;7f27	32 1f c0 	2 . . 
l7f2ah:
	call 0265ch		;7f2a	cd 5c 26 	. \ & 
	ld a,001h		;7f2d	3e 01 	> . 
	call 002b3h		;7f2f	cd b3 02 	. . . 
	di			;7f32	f3 	. 
	call 002bch		;7f33	cd bc 02 	. . . 
	ld hl,0c800h		;7f36	21 00 c8 	! . . 
	ld de,l7800h		;7f39	11 00 78 	. . x 
	ld bc,00700h		;7f3c	01 00 07 	. . . 
	call 00131h		;7f3f	cd 31 01 	. 1 . 
	call 002c3h		;7f42	cd c3 02 	. . . 
	ei			;7f45	fb 	. 
	ret			;7f46	c9 	. 
l7f47h:
	ld a,082h		;7f47	3e 82 	> . 
	ld (0ffffh),a		;7f49	32 ff ff 	2 . . 
	call 0265ch		;7f4c	cd 5c 26 	. \ & 
	ld a,001h		;7f4f	3e 01 	> . 
	call 002b3h		;7f51	cd b3 02 	. . . 
	ld hl,0c01fh		;7f54	21 1f c0 	! . . 
	set 7,(hl)		;7f57	cb fe 	. . 
	ld a,(0c215h)		;7f59	3a 15 c2 	: . . 
	or a			;7f5c	b7 	. 
	jp z,l7f65h		;7f5d	ca 65 7f 	. e  
	ld a,084h		;7f60	3e 84 	> . 
	ld (0c110h),a		;7f62	32 10 c1 	2 . . 
l7f65h:
	ld a,087h		;7f65	3e 87 	> . 
	ld (0ffffh),a		;7f67	32 ff ff 	2 . . 
	ld a,(0c011h)		;7f6a	3a 11 c0 	: . . 
	ld hl,07fc2h		;7f6d	21 c2 7f 	! .  
	rst 10h			;7f70	d7 	. 
	ld a,(hl)			;7f71	7e 	~ 
	ld (0c07dh),a		;7f72	32 7d c0 	2 } . 
	inc hl			;7f75	23 	# 
	ld a,(hl)			;7f76	7e 	~ 
	ld (0c07eh),a		;7f77	32 7e c0 	2 ~ . 
	inc hl			;7f7a	23 	# 
	ld (0c038h),hl		;7f7b	22 38 c0 	" 8 . 
	ld hl,00100h		;7f7e	21 00 01 	! . . 
	ld (0c074h),hl		;7f81	22 74 c0 	" t . 
	ld ix,0cfe0h		;7f84	dd 21 e0 cf 	. ! . . 
	ld (ix+00eh),011h		;7f88	dd 36 0e 11 	. 6 . . 
	ld (ix+00ch),009h		;7f8c	dd 36 0c 09 	. 6 . . 
	xor a			;7f90	af 	. 
	ld (0c011h),a		;7f91	32 11 c0 	2 . . 
	ld (0c03eh),a		;7f94	32 3e c0 	2 > . 
	ld a,094h		;7f97	3e 94 	> . 
	ld (0c110h),a		;7f99	32 10 c1 	2 . . 
	ret			;7f9c	c9 	. 
	ld a,(0c03eh)		;7f9d	3a 3e c0 	: > . 
	or a			;7fa0	b7 	. 
	ret z			;7fa1	c8 	. 
	ld de,00100h		;7fa2	11 00 01 	. . . 
	call sub_7c18h		;7fa5	cd 18 7c 	. . | 
	ld a,h			;7fa8	7c 	| 
	xor 0b0h		;7fa9	ee b0 	. . 
	ld h,a			;7fab	67 	g 
	dec hl			;7fac	2b 	+ 
	ex de,hl			;7fad	eb 	. 
	rst 8			;7fae	cf 	. 
	ld hl,(0c038h)		;7faf	2a 38 c0 	* 8 . 
	ld a,(hl)			;7fb2	7e 	~ 
	out (0beh),a		;7fb3	d3 be 	. . 
	ld a,010h		;7fb5	3e 10 	> . 
	out (0beh),a		;7fb7	d3 be 	. . 
	ld a,(0c07dh)		;7fb9	3a 7d c0 	: } . 
	bit 7,a		;7fbc	cb 7f 	.  
	ret nz			;7fbe	c0 	. 
	inc hl			;7fbf	23 	# 
	ld (0c038h),hl		;7fc0	22 38 c0 	" 8 . 
	ret			;7fc3	c9 	. 
	add hl,bc			;7fc4	09 	. 
	or c			;7fc5	b1 	. 
	ld d,l			;7fc6	55 	U 
	or c			;7fc7	b1 	. 
	sbc a,l			;7fc8	9d 	. 
	or c			;7fc9	b1 	. 
	inc l			;7fca	2c 	, 
	or e			;7fcb	b3 	. 
	ld (hl),d			;7fcc	72 	r 
	or d			;7fcd	b2 	. 
	cp b			;7fce	b8 	. 
	or c			;7fcf	b1 	. 
	and 0b3h		;7fd0	e6 b3 	. . 
	ld (hl),h			;7fd2	74 	t 
	or h			;7fd3	b4 	. 
	sub a			;7fd4	97 	. 
	or h			;7fd5	b4 	. 
	cp b			;7fd6	b8 	. 
	or h			;7fd7	b4 	. 
	jp m,l69b4h		;7fd8	fa b4 69 	. . i 
	or l			;7fdb	b5 	. 
	ld h,h			;7fdc	64 	d 
	or (hl)			;7fdd	b6 	. 
	call c,0e5b7h		;7fde	dc b7 e5 	. . . 
	cp b			;7fe1	b8 	. 
	ld e,l			;7fe2	5d 	] 
	cp d			;7fe3	ba 	. 
	ld b,c			;7fe4	41 	A 
	cp e			;7fe5	bb 	. 
	adc a,c			;7fe6	89 	. 
	cp e			;7fe7	bb 	. 
	adc a,c			;7fe8	89 	. 
	cp e			;7fe9	bb 	. 
	adc a,c			;7fea	89 	. 
	cp e			;7feb	bb 	. 
	ld c,b			;7fec	48 	H 
	cp h			;7fed	bc 	. 
	add a,h			;7fee	84 	. 
	cp h			;7fef	bc 	. 
	ld d,h			;7ff0	54 	T 
	ld c,l			;7ff1	4d 	M 
	ld d,d			;7ff2	52 	R 
	jr nz,$+85		;7ff3	20 53 	  S 
	ld b,l			;7ff5	45 	E 
	ld b,a			;7ff6	47 	G 
	ld b,c			;7ff7	41 	A 
	rst 38h			;7ff8	ff 	. 
	rst 38h			;7ff9	ff 	. 
	ld l,(hl)			;7ffa	6e 	n 
	adc a,c			;7ffb	89 	. 
	rst 38h			;7ffc	ff 	. 
	rst 38h			;7ffd	ff 	. 
	rst 38h			;7ffe	ff 	. 
	ld c,a			;7fff	4f 	O 
