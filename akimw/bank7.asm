; ============================================================
; Banco 7 do ROM (offset no ficheiro: 0x1C000 - 0x1FFFF)
; Endereco de origem assumido no mapa do Z80: 8000h (assumido: banco paginavel para o slot 2 via porta FFFFh)
; Gerado com z80dasm 1.1.6 (-a enderecos, -t bytes originais, -l labels)
; NOTA: saltos/chamadas absolutos (JP/CALL) so sao validos quando
; este banco estiver de facto paginado no slot indicado acima.
; Zonas de dados (graficos, tabelas, musica) podem surgir desmontadas
; incorrectamente como instrucoes -- ver aviso Self-modifying-code
; nos ficheiros onde a heuristica do z80dasm o assinalou.
; ============================================================

; z80dasm 1.1.6
; command line: z80dasm -a -t -l -g 0x8000 -s /home/claude/out/bank7.sym -o /home/claude/out/bank7.asm bank7.bin

	org	08000h

	sub b			;8000	90 	. 
sub_8001h:
	rlca			;8001	07 	. 
	inc c			;8002	0c 	. 
	jr $+26		;8003	18 18 	. . 
	inc c			;8005	0c 	. 
	ld b,(hl)			;8006	46 	F 
	ld h,(hl)			;8007	66 	f 
	inc a			;8008	3c 	< 
	nop			;8009	00 	. 
	add a,b			;800a	80 	. 
	add a,b			;800b	80 	. 
	jr c,l806fh		;800c	38 61 	8 a 
	jp 071cbh		;800e	c3 cb 71 	. . q 
	inc bc			;8011	03 	. 
	nop			;8012	00 	. 
	add a,l			;8013	85 	. 
	and 093h		;8014	e6 93 	. . 
	ld (de),a			;8016	12 	. 
	inc h			;8017	24 	$ 
	call z,00003h		;8018	cc 03 00 	. . . 
	add a,l			;801b	85 	. 
	adc a,012h		;801c	ce 12 	. . 
	inc a			;801e	3c 	< 
	jr nc,$+32		;801f	30 1e 	0 . 
	nop			;8021	00 	. 
	sub b			;8022	90 	. 
	ret m			;8023	f8 	. 
	di			;8024	f3 	. 
	rst 20h			;8025	e7 	. 
	rst 20h			;8026	e7 	. 
	di			;8027	f3 	. 
	cp c			;8028	b9 	. 
	sbc a,c			;8029	99 	. 
	jp 07fffh		;802a	c3 ff 7f 	. .  
	ld a,a			;802d	7f 	 
	rst 0			;802e	c7 	. 
	sbc a,(hl)			;802f	9e 	. 
	inc a			;8030	3c 	< 
	inc (hl)			;8031	34 	4 
	adc a,(hl)			;8032	8e 	. 
	inc bc			;8033	03 	. 
	rst 38h			;8034	ff 	. 
	add a,l			;8035	85 	. 
	add hl,de			;8036	19 	. 
	ld l,h			;8037	6c 	l 
	defb 0edh;next byte illegal after ed		;8038	ed 	. 
	in a,(033h)		;8039	db 33 	. 3 
	inc bc			;803b	03 	. 
	rst 38h			;803c	ff 	. 
	add a,l			;803d	85 	. 
	ld sp,0c3edh		;803e	31 ed c3 	1 . . 
	rst 8			;8041	cf 	. 
	pop hl			;8042	e1 	. 
	nop			;8043	00 	. 
	sub b			;8044	90 	. 
	ret m			;8045	f8 	. 
	di			;8046	f3 	. 
	rst 20h			;8047	e7 	. 
	rst 20h			;8048	e7 	. 
	di			;8049	f3 	. 
	cp c			;804a	b9 	. 
	sbc a,c			;804b	99 	. 
	jp 07fffh		;804c	c3 ff 7f 	. .  
	ld a,a			;804f	7f 	 
	rst 0			;8050	c7 	. 
	sbc a,(hl)			;8051	9e 	. 
	inc a			;8052	3c 	< 
	inc (hl)			;8053	34 	4 
	adc a,(hl)			;8054	8e 	. 
	inc bc			;8055	03 	. 
	rst 38h			;8056	ff 	. 
	add a,l			;8057	85 	. 
	add hl,de			;8058	19 	. 
	ld l,h			;8059	6c 	l 
	defb 0edh;next byte illegal after ed		;805a	ed 	. 
	in a,(033h)		;805b	db 33 	. 3 
	inc bc			;805d	03 	. 
	rst 38h			;805e	ff 	. 
	add a,l			;805f	85 	. 
	ld sp,0c3edh		;8060	31 ed c3 	1 . . 
	rst 8			;8063	cf 	. 
	pop hl			;8064	e1 	. 
	nop			;8065	00 	. 
	jr nz,l8068h		;8066	20 00 	  . 
l8068h:
	nop			;8068	00 	. 
	nop			;8069	00 	. 
	nop			;806a	00 	. 
	nop			;806b	00 	. 
	nop			;806c	00 	. 
	nop			;806d	00 	. 
	rra			;806e	1f 	. 
l806fh:
	rra			;806f	1f 	. 
	nop			;8070	00 	. 
	rra			;8071	1f 	. 
	jr nz,l8094h		;8072	20 20 	    
	nop			;8074	00 	. 
	ccf			;8075	3f 	? 
	ld c,a			;8076	4f 	O 
	ld b,b			;8077	40 	@ 
	nop			;8078	00 	. 
	ccf			;8079	3f 	? 
	ld e,a			;807a	5f 	_ 
	ld b,b			;807b	40 	@ 
	nop			;807c	00 	. 
	ccf			;807d	3f 	? 
	ld d,a			;807e	57 	W 
sub_807fh:
	ld b,b			;807f	40 	@ 
sub_8080h:
	nop			;8080	00 	. 
	ld (hl),a			;8081	77 	w 
	rst 18h			;8082	df 	. 
	adc a,b			;8083	88 	. 
sub_8084h:
	nop			;8084	00 	. 
	ld a,a			;8085	7f 	 
	rst 18h			;8086	df 	. 
	add a,b			;8087	80 	. 
	nop			;8088	00 	. 
	nop			;8089	00 	. 
	nop			;808a	00 	. 
	nop			;808b	00 	. 
	nop			;808c	00 	. 
	nop			;808d	00 	. 
	ret nz			;808e	c0 	. 
	ret nz			;808f	c0 	. 
	nop			;8090	00 	. 
	ret nz			;8091	c0 	. 
	jr nz,l80b4h		;8092	20 20 	    
l8094h:
	nop			;8094	00 	. 
	ret po			;8095	e0 	. 
	sub b			;8096	90 	. 
	djnz l8099h		;8097	10 00 	. . 
l8099h:
	ret po			;8099	e0 	. 
	ret nc			;809a	d0 	. 
	djnz l809dh		;809b	10 00 	. . 
l809dh:
	ret po			;809d	e0 	. 
	ld d,b			;809e	50 	P 
	djnz l80a1h		;809f	10 00 	. . 
l80a1h:
	ld (hl),b			;80a1	70 	p 
	ret c			;80a2	d8 	. 
	adc a,b			;80a3	88 	. 
	nop			;80a4	00 	. 
	ret p			;80a5	f0 	. 
	ret c			;80a6	d8 	. 
	ex af,af'			;80a7	08 	. 
	nop			;80a8	00 	. 
	ccf			;80a9	3f 	? 
	ld d,a			;80aa	57 	W 
	ld b,b			;80ab	40 	@ 
	nop			;80ac	00 	. 
	ccf			;80ad	3f 	? 
	ld b,b			;80ae	40 	@ 
	ld b,b			;80af	40 	@ 
	nop			;80b0	00 	. 
	ccf			;80b1	3f 	? 
	ld c,a			;80b2	4f 	O 
	ld b,b			;80b3	40 	@ 
l80b4h:
	nop			;80b4	00 	. 
	rra			;80b5	1f 	. 
	daa			;80b6	27 	' 
	jr nz,l80b9h		;80b7	20 00 	  . 
l80b9h:
	rra			;80b9	1f 	. 
	jr nz,l80dch		;80ba	20 20 	    
	nop			;80bc	00 	. 
	dec d			;80bd	15 	. 
	ld hl,(0002ah)		;80be	2a 2a 00 	* * . 
	dec h			;80c1	25 	% 
	ld a,d			;80c2	7a 	z 
	ld e,d			;80c3	5a 	Z 
	nop			;80c4	00 	. 
	ld a,d			;80c5	7a 	z 
	rst 38h			;80c6	ff 	. 
	add a,l			;80c7	85 	. 
	nop			;80c8	00 	. 
	ret po			;80c9	e0 	. 
	ld d,b			;80ca	50 	P 
	djnz l80cdh		;80cb	10 00 	. . 
l80cdh:
	ret po			;80cd	e0 	. 
	djnz l80e0h		;80ce	10 10 	. . 
	nop			;80d0	00 	. 
	ret po			;80d1	e0 	. 
	sub b			;80d2	90 	. 
l80d3h:
	djnz l80d5h		;80d3	10 00 	. . 
l80d5h:
	ret nz			;80d5	c0 	. 
	jr nz,l80f8h		;80d6	20 20 	    
	nop			;80d8	00 	. 
	ret nz			;80d9	c0 	. 
	jr nz,l80fch		;80da	20 20 	    
l80dch:
	nop			;80dc	00 	. 
	ld b,b			;80dd	40 	@ 
	and b			;80de	a0 	. 
	and b			;80df	a0 	. 
l80e0h:
	nop			;80e0	00 	. 
	jr nz,l80d3h		;80e1	20 f0 	  . 
	ret nc			;80e3	d0 	. 
sub_80e4h:
	nop			;80e4	00 	. 
	ret p			;80e5	f0 	. 
	ret m			;80e6	f8 	. 
	ex af,af'			;80e7	08 	. 
	nop			;80e8	00 	. 
	ld l,a			;80e9	6f 	o 
	rst 38h			;80ea	ff 	. 
	sub b			;80eb	90 	. 
	nop			;80ec	00 	. 
	ld (hl),e			;80ed	73 	s 
	rst 38h			;80ee	ff 	. 
	adc a,h			;80ef	8c 	. 
	nop			;80f0	00 	. 
	dec a			;80f1	3d 	= 
	ld a,a			;80f2	7f 	 
	ld b,d			;80f3	42 	B 
	nop			;80f4	00 	. 
	dec e			;80f5	1d 	. 
	ld a,a			;80f6	7f 	 
	ld h,d			;80f7	62 	b 
l80f8h:
	ld bc,0ff5dh		;80f8	01 5d ff 	. ] . 
	and d			;80fb	a2 	. 
l80fch:
	ld b,c			;80fc	41 	A 
	ld h,d			;80fd	62 	b 
	rst 38h			;80fe	ff 	. 
	sbc a,l			;80ff	9d 	. 
	ld h,b			;8100	60 	` 
	ld (hl),0ffh		;8101	36 ff 	6 . 
	ret			;8103	c9 	. 
	jr nc,l8106h		;8104	30 00 	0 . 
l8106h:
	ld a,a			;8106	7f 	 
	ld a,a			;8107	7f 	 
	nop			;8108	00 	. 
	call pe,012feh		;8109	ec fe 12 	. . . 
	nop			;810c	00 	. 
	sbc a,h			;810d	9c 	. 
	cp 062h		;810e	fe 62 	. b 
	nop			;8110	00 	. 
	ld a,b			;8111	78 	x 
	call m,00084h		;8112	fc 84 00 	. . . 
	ld (hl),b			;8115	70 	p 
	call m,0008ch		;8116	fc 8c 00 	. . . 
	ld (hl),h			;8119	74 	t 
	cp 08ah		;811a	fe 8a 	. . 
	inc b			;811c	04 	. 
	adc a,h			;811d	8c 	. 
	cp 072h		;811e	fe 72 	. r 
	inc c			;8120	0c 	. 
	ret c			;8121	d8 	. 
	cp 026h		;8122	fe 26 	. & 
	jr l8126h		;8124	18 00 	. . 
l8126h:
	call m,000fch		;8126	fc fc 00 	. . . 
	ccf			;8129	3f 	? 
	ld d,a			;812a	57 	W 
	ld b,b			;812b	40 	@ 
	nop			;812c	00 	. 
	ccf			;812d	3f 	? 
	ld b,b			;812e	40 	@ 
	ld b,b			;812f	40 	@ 
	nop			;8130	00 	. 
	jr c,l8182h		;8131	38 4f 	8 O 
	ld b,a			;8133	47 	G 
	rlca			;8134	07 	. 
	jr l8166h		;8135	18 2f 	. / 
	daa			;8137	27 	' 
	rlca			;8138	07 	. 
	rra			;8139	1f 	. 
	daa			;813a	27 	' 
	jr nz,l813dh		;813b	20 00 	  . 
l813dh:
	dec d			;813d	15 	. 
	ld hl,(0002ah)		;813e	2a 2a 00 	* * . 
	dec h			;8141	25 	% 
	ld a,d			;8142	7a 	z 
	ld e,d			;8143	5a 	Z 
	nop			;8144	00 	. 
	ld a,d			;8145	7a 	z 
	rst 38h			;8146	ff 	. 
	add a,l			;8147	85 	. 
	nop			;8148	00 	. 
	ret po			;8149	e0 	. 
	ld d,b			;814a	50 	P 
	djnz l814dh		;814b	10 00 	. . 
l814dh:
	ret po			;814d	e0 	. 
	djnz l8160h		;814e	10 10 	. . 
	nop			;8150	00 	. 
	ret po			;8151	e0 	. 
	sub b			;8152	90 	. 
l8153h:
	djnz l8155h		;8153	10 00 	. . 
l8155h:
	ret nz			;8155	c0 	. 
	and b			;8156	a0 	. 
	jr nz,l8159h		;8157	20 00 	  . 
l8159h:
	ret nz			;8159	c0 	. 
	jr nz,l817ch		;815a	20 20 	    
	nop			;815c	00 	. 
	ld b,b			;815d	40 	@ 
	and b			;815e	a0 	. 
	and b			;815f	a0 	. 
l8160h:
	nop			;8160	00 	. 
	jr nz,l8153h		;8161	20 f0 	  . 
	ret nc			;8163	d0 	. 
	nop			;8164	00 	. 
	ret p			;8165	f0 	. 
l8166h:
	ret m			;8166	f8 	. 
	ex af,af'			;8167	08 	. 
	nop			;8168	00 	. 
	nop			;8169	00 	. 
	nop			;816a	00 	. 
	nop			;816b	00 	. 
	nop			;816c	00 	. 
	nop			;816d	00 	. 
	rst 0			;816e	c7 	. 
	rst 0			;816f	c7 	. 
	nop			;8170	00 	. 
	ld b,a			;8171	47 	G 
	cp b			;8172	b8 	. 
	cp b			;8173	b8 	. 
	nop			;8174	00 	. 
	ld a,a			;8175	7f 	 
	add a,b			;8176	80 	. 
	add a,b			;8177	80 	. 
	nop			;8178	00 	. 
	ld e,e			;8179	5b 	[ 
	and h			;817a	a4 	. 
	and h			;817b	a4 	. 
l817ch:
	nop			;817c	00 	. 
	ld e,e			;817d	5b 	[ 
l817eh:
	and h			;817e	a4 	. 
	and h			;817f	a4 	. 
	nop			;8180	00 	. 
	ld e,a			;8181	5f 	_ 
l8182h:
	and b			;8182	a0 	. 
	and b			;8183	a0 	. 
	nop			;8184	00 	. 
	ld a,e			;8185	7b 	{ 
	add a,h			;8186	84 	. 
	add a,h			;8187	84 	. 
	nop			;8188	00 	. 
	nop			;8189	00 	. 
	ret m			;818a	f8 	. 
	ret m			;818b	f8 	. 
	nop			;818c	00 	. 
	ret m			;818d	f8 	. 
	ld b,006h		;818e	06 06 	. . 
	nop			;8190	00 	. 
	xor 011h		;8191	ee 11 	. . 
	inc de			;8193	13 	. 
	ld (bc),a			;8194	02 	. 
	ld l,(hl)			;8195	6e 	n 
	sub c			;8196	91 	. 
	sub c			;8197	91 	. 
	nop			;8198	00 	. 
	ld a,(hl)			;8199	7e 	~ 
	add a,c			;819a	81 	. 
	add a,e			;819b	83 	. 
	ld (bc),a			;819c	02 	. 
	xor 011h		;819d	ee 11 	. . 
	ld de,06e00h		;819f	11 00 6e 	. . n 
	sub c			;81a2	91 	. 
	sub e			;81a3	93 	. 
	ld (bc),a			;81a4	02 	. 
	ld l,(hl)			;81a5	6e 	n 
	sub c			;81a6	91 	. 
	sub c			;81a7	91 	. 
	nop			;81a8	00 	. 
	ld e,e			;81a9	5b 	[ 
	and h			;81aa	a4 	. 
	and h			;81ab	a4 	. 
	nop			;81ac	00 	. 
	ld a,a			;81ad	7f 	 
	add a,b			;81ae	80 	. 
	add a,b			;81af	80 	. 
	nop			;81b0	00 	. 
	ld e,e			;81b1	5b 	[ 
	and h			;81b2	a4 	. 
	and h			;81b3	a4 	. 
	nop			;81b4	00 	. 
	ld e,e			;81b5	5b 	[ 
	and h			;81b6	a4 	. 
	and h			;81b7	a4 	. 
	nop			;81b8	00 	. 
	ld e,a			;81b9	5f 	_ 
	and b			;81ba	a0 	. 
	and b			;81bb	a0 	. 
	nop			;81bc	00 	. 
	ld a,a			;81bd	7f 	 
	add a,b			;81be	80 	. 
	add a,b			;81bf	80 	. 
	nop			;81c0	00 	. 
	jr c,$+73		;81c1	38 47 	8 G 
	ld b,a			;81c3	47 	G 
	nop			;81c4	00 	. 
	nop			;81c5	00 	. 
	jr c,l8200h		;81c6	38 38 	8 8 
	nop			;81c8	00 	. 
	ld a,(hl)			;81c9	7e 	~ 
	add a,c			;81ca	81 	. 
	add a,e			;81cb	83 	. 
	ld (bc),a			;81cc	02 	. 
	xor 011h		;81cd	ee 11 	. . 
	ld de,07e00h		;81cf	11 00 7e 	. . ~ 
	add a,c			;81d2	81 	. 
	add a,e			;81d3	83 	. 
	ld (bc),a			;81d4	02 	. 
	ld a,(hl)			;81d5	7e 	~ 
	add a,c			;81d6	81 	. 
	add a,c			;81d7	81 	. 
	nop			;81d8	00 	. 
	jp p,00f0dh		;81d9	f2 0d 0f 	. . . 
	ld (bc),a			;81dc	02 	. 
	inc b			;81dd	04 	. 
	rst 38h			;81de	ff 	. 
	ei			;81df	fb 	. 
	nop			;81e0	00 	. 
	inc b			;81e1	04 	. 
	rrca			;81e2	0f 	. 
	dec bc			;81e3	0b 	. 
	nop			;81e4	00 	. 
	nop			;81e5	00 	. 
	ld c,00eh		;81e6	0e 0e 	. . 
	nop			;81e8	00 	. 
	ld c,001h		;81e9	0e 01 	. . 
	rrca			;81eb	0f 	. 
	ld c,037h		;81ec	0e 37 	. 7 
	ex af,af'			;81ee	08 	. 
	ccf			;81ef	3f 	? 
	scf			;81f0	37 	7 
	ld e,l			;81f1	5d 	] 
	ld (05d7fh),hl		;81f2	22 7f 5d 	"  ] 
	ld (hl),a			;81f5	77 	w 
	inc e			;81f6	1c 	. 
	ld h,e			;81f7	63 	c 
	ld l,e			;81f8	6b 	k 
	and d			;81f9	a2 	. 
	ld e,l			;81fa	5d 	] 
	ex (sp),hl			;81fb	e3 	. 
	cp (hl)			;81fc	be 	. 
	rst 30h			;81fd	f7 	. 
	inc e			;81fe	1c 	. 
	ex (sp),hl			;81ff	e3 	. 
l8200h:
	ex de,hl			;8200	eb 	. 
	ld (0ddffh),ix		;8201	dd 22 ff dd 	. " . . 
	ld (hl),a			;8205	77 	w 
	adc a,b			;8206	88 	. 
	rst 38h			;8207	ff 	. 
	ld (hl),a			;8208	77 	w 
	jr nc,l8217h		;8209	30 0c 	0 . 
	inc a			;820b	3c 	< 
	jr nc,l827ah		;820c	30 6c 	0 l 
	sub d			;820e	92 	. 
	cp 06ch		;820f	fe 6c 	. l 
	xor 011h		;8211	ee 11 	. . 
	rst 28h			;8213	ef 	. 
	cp 082h		;8214	fe 82 	. . 
	ld a,l			;8216	7d 	} 
l8217h:
	rst 0			;8217	c7 	. 
	cp d			;8218	ba 	. 
	add a,039h		;8219	c6 39 	. 9 
l821bh:
	rst 0			;821b	c7 	. 
	cp 092h		;821c	fe 92 	. . 
	ld l,l			;821e	6d 	m 
	rst 10h			;821f	d7 	. 
	cp d			;8220	ba 	. 
	cp 001h		;8221	fe 01 	. . 
	rst 38h			;8223	ff 	. 
	cp 06ah		;8224	fe 6a 	. j 
	sub l			;8226	95 	. 
	rst 38h			;8227	ff 	. 
	ld l,d			;8228	6a 	j 
	ld b,a			;8229	47 	G 
	cp b			;822a	b8 	. 
	rst 0			;822b	c7 	. 
	ld a,a			;822c	7f 	 
	cp c			;822d	b9 	. 
	ld b,(hl)			;822e	46 	F 
	ei			;822f	fb 	. 
	cp l			;8230	bd 	. 
	rst 0			;8231	c7 	. 
	jr c,l821bh		;8232	38 e7 	8 . 
	rst 18h			;8234	df 	. 
	cp c			;8235	b9 	. 
	ld b,(hl)			;8236	46 	F 
	cp e			;8237	bb 	. 
	defb 0fdh,0c7h,038h	;illegal sequence		;8238	fd c7 38 	. . 8 
	rst 8			;823b	cf 	. 
	rst 30h			;823c	f7 	. 
	cp c			;823d	b9 	. 
	ld b,(hl)			;823e	46 	F 
	ei			;823f	fb 	. 
	cp l			;8240	bd 	. 
	ld a,h			;8241	7c 	| 
	add a,e			;8242	83 	. 
	rst 38h			;8243	ff 	. 
	ld a,h			;8244	7c 	| 
	nop			;8245	00 	. 
	ld a,h			;8246	7c 	| 
	ld a,h			;8247	7c 	| 
	nop			;8248	00 	. 
	cp 001h		;8249	fe 01 	. . 
	rst 38h			;824b	ff 	. 
	cp 04ah		;824c	fe 4a 	. J 
	or l			;824e	b5 	. 
	rst 8			;824f	cf 	. 
	ld a,d			;8250	7a 	z 
	and 019h		;8251	e6 19 	. . 
	rst 20h			;8253	e7 	. 
	cp 066h		;8254	fe 66 	. f 
	sbc a,c			;8256	99 	. 
	rst 20h			;8257	e7 	. 
	ld a,(hl)			;8258	7e 	~ 
	call po,0e61ah		;8259	e4 1a e6 	. . . 
	call m,sub_b24ch		;825c	fc 4c b2 	. L . 
	adc a,07ch		;825f	ce 7c 	. | 
	jr $+102		;8261	18 64 	. d 
	ld a,h			;8263	7c 	| 
	jr l8266h		;8264	18 00 	. . 
l8266h:
	jr $+26		;8266	18 18 	. . 
	nop			;8268	00 	. 
	nop			;8269	00 	. 
	nop			;826a	00 	. 
	nop			;826b	00 	. 
	nop			;826c	00 	. 
	nop			;826d	00 	. 
	nop			;826e	00 	. 
	nop			;826f	00 	. 
	nop			;8270	00 	. 
	nop			;8271	00 	. 
	in a,(0dbh)		;8272	db db 	. . 
	nop			;8274	00 	. 
	dec de			;8275	1b 	. 
	rst 38h			;8276	ff 	. 
	and h			;8277	a4 	. 
	nop			;8278	00 	. 
	ccf			;8279	3f 	? 
l827ah:
	push bc			;827a	c5 	. 
	cp d			;827b	ba 	. 
	nop			;827c	00 	. 
	ld a,a			;827d	7f 	 
	or d			;827e	b2 	. 
	call 04f00h		;827f	cd 00 4f 	. . O 
	ld sp,hl			;8282	f9 	. 
	or (hl)			;8283	b6 	. 
	nop			;8284	00 	. 
	ld c,a			;8285	4f 	O 
	jp m,000b5h		;8286	fa b5 00 	. . . 
	nop			;8289	00 	. 
	nop			;828a	00 	. 
	nop			;828b	00 	. 
	nop			;828c	00 	. 
	nop			;828d	00 	. 
	nop			;828e	00 	. 
	nop			;828f	00 	. 
	nop			;8290	00 	. 
	nop			;8291	00 	. 
	ld h,b			;8292	60 	` 
	ld h,b			;8293	60 	` 
	nop			;8294	00 	. 
	nop			;8295	00 	. 
	ret po			;8296	e0 	. 
	and b			;8297	a0 	. 
	nop			;8298	00 	. 
	add a,b			;8299	80 	. 
	ld h,b			;829a	60 	` 
	and b			;829b	a0 	. 
	nop			;829c	00 	. 
	ret nz			;829d	c0 	. 
	and b			;829e	a0 	. 
	ld h,b			;829f	60 	` 
	nop			;82a0	00 	. 
	add a,b			;82a1	80 	. 
	ld h,b			;82a2	60 	` 
	and b			;82a3	a0 	. 
	nop			;82a4	00 	. 
	ret nz			;82a5	c0 	. 
	and b			;82a6	a0 	. 
	ld h,b			;82a7	60 	` 
	nop			;82a8	00 	. 
	nop			;82a9	00 	. 
	in a,(0dbh)		;82aa	db db 	. . 
	nop			;82ac	00 	. 
	ld e,d			;82ad	5a 	Z 
	and l			;82ae	a5 	. 
	rst 38h			;82af	ff 	. 
	nop			;82b0	00 	. 
	ld l,(hl)			;82b1	6e 	n 
	or c			;82b2	b1 	. 
	rst 8			;82b3	cf 	. 
	djnz l82f0h		;82b4	10 3a 	. : 
	call 000b3h		;82b6	cd b3 00 	. . . 
	ld l,(hl)			;82b9	6e 	n 
	or c			;82ba	b1 	. 
	rst 8			;82bb	cf 	. 
	djnz l82f8h		;82bc	10 3a 	. : 
	call 000b3h		;82be	cd b3 00 	. . . 
	ld l,(hl)			;82c1	6e 	n 
	or c			;82c2	b1 	. 
	rst 8			;82c3	cf 	. 
	djnz $+60		;82c4	10 3a 	. : 
	call 000b3h		;82c6	cd b3 00 	. . . 
	ld (bc),a			;82c9	02 	. 
	rlca			;82ca	07 	. 
	dec b			;82cb	05 	. 
	nop			;82cc	00 	. 
	inc bc			;82cd	03 	. 
l82ceh:
	rlca			;82ce	07 	. 
	inc b			;82cf	04 	. 
	nop			;82d0	00 	. 
	nop			;82d1	00 	. 
	scf			;82d2	37 	7 
	scf			;82d3	37 	7 
	nop			;82d4	00 	. 
	inc sp			;82d5	33 	3 
l82d6h:
	call z,000ffh		;82d6	cc ff 00 	. . . 
	rst 38h			;82d9	ff 	. 
	inc sp			;82da	33 	3 
	call z,0ff00h		;82db	cc 00 ff 	. . . 
l82deh:
	call z,00033h		;82de	cc 33 00 	. 3 . 
	rst 38h			;82e1	ff 	. 
	inc sp			;82e2	33 	3 
	call z,0ff00h		;82e3	cc 00 ff 	. . . 
	call z,00033h		;82e6	cc 33 00 	. 3 . 
	ld a,h			;82e9	7c 	| 
	res 6,l		;82ea	cb b5 	. . 
	nop			;82ec	00 	. 
	cp 0d5h		;82ed	fe d5 	. . 
	dec hl			;82ef	2b 	+ 
l82f0h:
	nop			;82f0	00 	. 
	call z,077bbh		;82f1	cc bb 77 	. . w 
	nop			;82f4	00 	. 
	ld (0ffcdh),a		;82f5	32 cd ff 	2 . . 
l82f8h:
	nop			;82f8	00 	. 
	cp 033h		;82f9	fe 33 	. 3 
	call 0fe00h		;82fb	cd 00 fe 	. . . 
	call 00033h		;82fe	cd 33 00 	. 3 . 
	cp 033h		;8301	fe 33 	. 3 
	call 0fe00h		;8303	cd 00 fe 	. . . 
	call 00033h		;8306	cd 33 00 	. 3 . 
	nop			;8309	00 	. 
	or (hl)			;830a	b6 	. 
	or (hl)			;830b	b6 	. 
	nop			;830c	00 	. 
	or h			;830d	b4 	. 
	ld c,d			;830e	4a 	J 
	cp 000h		;830f	fe 00 	. . 
	call pe,0e61ah		;8311	ec 1a e6 	. . . 
	djnz l82ceh		;8314	10 b8 	. . 
	ld h,(hl)			;8316	66 	f 
	sbc a,d			;8317	9a 	. 
	nop			;8318	00 	. 
	call pe,0e61ah		;8319	ec 1a e6 	. . . 
	djnz l82d6h		;831c	10 b8 	. . 
l831eh:
	ld h,(hl)			;831e	66 	f 
	sbc a,d			;831f	9a 	. 
	nop			;8320	00 	. 
	call pe,0e61ah		;8321	ec 1a e6 	. . . 
	djnz l82deh		;8324	10 b8 	. . 
	ld h,(hl)			;8326	66 	f 
	sbc a,d			;8327	9a 	. 
	nop			;8328	00 	. 
	ld l,(hl)			;8329	6e 	n 
	or c			;832a	b1 	. 
	rst 8			;832b	cf 	. 
	djnz l8368h		;832c	10 3a 	. : 
	call 000b3h		;832e	cd b3 00 	. . . 
	ld l,(hl)			;8331	6e 	n 
	or c			;8332	b1 	. 
	rst 8			;8333	cf 	. 
	djnz l8370h		;8334	10 3a 	. : 
	call 000b3h		;8336	cd b3 00 	. . . 
	ld l,(hl)			;8339	6e 	n 
	or c			;833a	b1 	. 
	rst 8			;833b	cf 	. 
	djnz l8378h		;833c	10 3a 	. : 
	call 000b3h		;833e	cd b3 00 	. . . 
	ld l,(hl)			;8341	6e 	n 
	or c			;8342	b1 	. 
	rst 8			;8343	cf 	. 
l8344h:
	djnz l8346h		;8344	10 00 	. . 
l8346h:
	rst 38h			;8346	ff 	. 
	rst 38h			;8347	ff 	. 
	nop			;8348	00 	. 
	ret m			;8349	f8 	. 
	scf			;834a	37 	7 
	rst 8			;834b	cf 	. 
l834ch:
	nop			;834c	00 	. 
	ret p			;834d	f0 	. 
l834eh:
	rst 8			;834e	cf 	. 
	jr c,$+9		;834f	38 07 	8 . 
	ret po			;8351	e0 	. 
	ccf			;8352	3f 	? 
	rst 10h			;8353	d7 	. 
	ex af,af'			;8354	08 	. 
	ret nz			;8355	c0 	. 
l8356h:
	ret m			;8356	f8 	. 
	jr z,l8369h		;8357	28 10 	( . 
	ret nz			;8359	c0 	. 
	jr c,l8344h		;835a	38 e8 	8 . 
	djnz l831eh		;835c	10 c0 	. . 
	ret m			;835e	f8 	. 
	jr z,l8371h		;835f	28 10 	( . 
	ret nz			;8361	c0 	. 
	jr c,l834ch		;8362	38 e8 	8 . 
	djnz l8366h		;8364	10 00 	. . 
l8366h:
	ret m			;8366	f8 	. 
	ret m			;8367	f8 	. 
l8368h:
	nop			;8368	00 	. 
l8369h:
	ld a,0f3h		;8369	3e f3 	> . 
	call 01e00h		;836b	cd 00 1e 	. . . 
	defb 0edh;next byte illegal after ed		;836e	ed 	. 
	inc sp			;836f	33 	3 
l8370h:
	ret nz			;8370	c0 	. 
l8371h:
	ld c,0f3h		;8371	0e f3 	. . 
	defb 0ddh,020h,006h	;illegal sequence		;8373	dd 20 06 	.   . 
	dec a			;8376	3d 	= 
	dec hl			;8377	2b 	+ 
l8378h:
	djnz l8380h		;8378	10 06 	. . 
	dec sp			;837a	3b 	; 
	dec l			;837b	2d 	- 
	djnz l8384h		;837c	10 06 	. . 
	dec a			;837e	3d 	= 
	dec hl			;837f	2b 	+ 
l8380h:
	djnz l8388h		;8380	10 06 	. . 
	ccf			;8382	3f 	? 
	add hl,hl			;8383	29 	) 
l8384h:
	djnz l8386h		;8384	10 00 	. . 
l8386h:
	ccf			;8386	3f 	? 
	ccf			;8387	3f 	? 
l8388h:
	nop			;8388	00 	. 
	call pe,0e61ah		;8389	ec 1a e6 	. . . 
	djnz l8346h		;838c	10 b8 	. . 
	ld h,(hl)			;838e	66 	f 
	sbc a,d			;838f	9a 	. 
	nop			;8390	00 	. 
	call pe,0e61ah		;8391	ec 1a e6 	. . . 
	djnz l834eh		;8394	10 b8 	. . 
	ld h,(hl)			;8396	66 	f 
	sbc a,d			;8397	9a 	. 
	nop			;8398	00 	. 
	call pe,0e61ah		;8399	ec 1a e6 	. . . 
	djnz l8356h		;839c	10 b8 	. . 
	ld h,(hl)			;839e	66 	f 
	sbc a,d			;839f	9a 	. 
	nop			;83a0	00 	. 
	call pe,0e61ah		;83a1	ec 1a e6 	. . . 
	djnz l83a6h		;83a4	10 00 	. . 
l83a6h:
	cp 0feh		;83a6	fe fe 	. . 
	nop			;83a8	00 	. 
	add hl,sp			;83a9	39 	9 
	rlca			;83aa	07 	. 
	nop			;83ab	00 	. 
	ld b,06ch		;83ac	06 6c 	. l 
	ld e,002h		;83ae	1e 02 	. . 
	ld (de),a			;83b0	12 	. 
	ld e,b			;83b1	58 	X 
	inc a			;83b2	3c 	< 
	inc b			;83b3	04 	. 
	inc h			;83b4	24 	$ 
	sbc a,b			;83b5	98 	. 
	ld a,h			;83b6	7c 	| 
	inc b			;83b7	04 	. 
	ld h,h			;83b8	64 	d 
	sbc a,b			;83b9	98 	. 
	ld a,h			;83ba	7c 	| 
	inc b			;83bb	04 	. 
	ld h,h			;83bc	64 	d 
	ld e,b			;83bd	58 	X 
	inc a			;83be	3c 	< 
	inc b			;83bf	04 	. 
	inc h			;83c0	24 	$ 
	ld l,h			;83c1	6c 	l 
	ld e,002h		;83c2	1e 02 	. . 
	ld (de),a			;83c4	12 	. 
	add hl,sp			;83c5	39 	9 
	rlca			;83c6	07 	. 
	nop			;83c7	00 	. 
	ld b,000h		;83c8	06 00 	. . 
	inc bc			;83ca	03 	. 
	inc bc			;83cb	03 	. 
	nop			;83cc	00 	. 
	inc bc			;83cd	03 	. 
	rrca			;83ce	0f 	. 
	rrca			;83cf	0f 	. 
	nop			;83d0	00 	. 
	inc c			;83d1	0c 	. 
	inc e			;83d2	1c 	. 
	rra			;83d3	1f 	. 
	inc bc			;83d4	03 	. 
	ld de,03c30h		;83d5	11 30 3c 	. 0 < 
	ld c,026h		;83d8	0e 26 	. & 
	ld h,b			;83da	60 	` 
	ld (hl),b			;83db	70 	p 
	add hl,de			;83dc	19 	. 
	jr z,l843fh		;83dd	28 60 	( ` 
	ld (hl),b			;83df	70 	p 
	rla			;83e0	17 	. 
	ld c,b			;83e1	48 	H 
	pop bc			;83e2	c1 	. 
	pop hl			;83e3	e1 	. 
	scf			;83e4	37 	7 
	ld d,b			;83e5	50 	P 
	rst 0			;83e6	c7 	. 
	rst 20h			;83e7	e7 	. 
	cpl			;83e8	2f 	/ 
	nop			;83e9	00 	. 
	ret nz			;83ea	c0 	. 
	ret nz			;83eb	c0 	. 
	nop			;83ec	00 	. 
	ret nz			;83ed	c0 	. 
	ret p			;83ee	f0 	. 
	ret p			;83ef	f0 	. 
	nop			;83f0	00 	. 
	jr nc,$+58		;83f1	30 38 	0 8 
	ret m			;83f3	f8 	. 
	ret nz			;83f4	c0 	. 
	adc a,b			;83f5	88 	. 
	inc c			;83f6	0c 	. 
	inc a			;83f7	3c 	< 
	ld (hl),b			;83f8	70 	p 
	inc b			;83f9	04 	. 
	add a,(hl)			;83fa	86 	. 
	adc a,(hl)			;83fb	8e 	. 
	ret m			;83fc	f8 	. 
	inc b			;83fd	04 	. 
	add a,(hl)			;83fe	86 	. 
	adc a,(hl)			;83ff	8e 	. 
	ret m			;8400	f8 	. 
	ld (bc),a			;8401	02 	. 
	jp 0fcc7h		;8402	c3 c7 fc 	. . . 
	ld (bc),a			;8405	02 	. 
	di			;8406	f3 	. 
	rst 30h			;8407	f7 	. 
	call m,0c150h		;8408	fc 50 c1 	. P . 
	pop hl			;840b	e1 	. 
	cpl			;840c	2f 	/ 
	ld d,b			;840d	50 	P 
	jp 02fe3h		;840e	c3 e3 2f 	. . / 
	jr nz,l8475h		;8411	20 62 	  b 
	ld (hl),d			;8413	72 	r 
	rra			;8414	1f 	. 
	jr nz,l8477h		;8415	20 60 	  ` 
	ld (hl),b			;8417	70 	p 
	rra			;8418	1f 	. 
	djnz $+50		;8419	10 30 	. 0 
	inc a			;841b	3c 	< 
	rrca			;841c	0f 	. 
	inc c			;841d	0c 	. 
	inc e			;841e	1c 	. 
	rra			;841f	1f 	. 
	inc bc			;8420	03 	. 
	inc bc			;8421	03 	. 
	rrca			;8422	0f 	. 
	rrca			;8423	0f 	. 
	nop			;8424	00 	. 
	nop			;8425	00 	. 
	inc bc			;8426	03 	. 
	inc bc			;8427	03 	. 
	nop			;8428	00 	. 
	ld (bc),a			;8429	02 	. 
	jp 0fcc7h		;842a	c3 c7 fc 	. . . 
	ld (bc),a			;842d	02 	. 
	ld h,e			;842e	63 	c 
	ld h,a			;842f	67 	g 
	call m,02604h		;8430	fc 04 26 	. . & 
	ld l,0f8h		;8433	2e f8 	. . 
	inc b			;8435	04 	. 
	ld b,00eh		;8436	06 0e 	. . 
	ret m			;8438	f8 	. 
	ex af,af'			;8439	08 	. 
	inc c			;843a	0c 	. 
	inc a			;843b	3c 	< 
	ret p			;843c	f0 	. 
	jr nc,l8477h		;843d	30 38 	0 8 
l843fh:
	ret m			;843f	f8 	. 
	ret nz			;8440	c0 	. 
	ret nz			;8441	c0 	. 
	ret p			;8442	f0 	. 
	ret p			;8443	f0 	. 
	nop			;8444	00 	. 
	nop			;8445	00 	. 
	ret nz			;8446	c0 	. 
	ret nz			;8447	c0 	. 
	nop			;8448	00 	. 
	nop			;8449	00 	. 
	ld bc,00001h		;844a	01 01 00 	. . . 
	ld bc,00202h		;844d	01 02 02 	. . . 
	nop			;8450	00 	. 
	ld (bc),a			;8451	02 	. 
	inc e			;8452	1c 	. 
	inc e			;8453	1c 	. 
	ld bc,03e1eh		;8454	01 1e 3e 	. . > 
	jr nz,l845ah		;8457	20 01 	  . 
	dec h			;8459	25 	% 
l845ah:
	ld a,a			;845a	7f 	 
	ld b,b			;845b	40 	@ 
	ld a,(de)			;845c	1a 	. 
	ld c,c			;845d	49 	I 
	rst 38h			;845e	ff 	. 
	add a,b			;845f	80 	. 
	ld (hl),049h		;8460	36 49 	6 I 
	rst 38h			;8462	ff 	. 
	add a,b			;8463	80 	. 
	ld (hl),049h		;8464	36 49 	6 I 
	rst 38h			;8466	ff 	. 
	add a,b			;8467	80 	. 
	ld (hl),000h		;8468	36 00 	6 . 
	add a,b			;846a	80 	. 
	add a,b			;846b	80 	. 
	nop			;846c	00 	. 
	add a,b			;846d	80 	. 
	ld b,b			;846e	40 	@ 
	ld b,b			;846f	40 	@ 
	nop			;8470	00 	. 
	nop			;8471	00 	. 
	jr c,$+58		;8472	38 38 	8 8 
	ret nz			;8474	c0 	. 
l8475h:
	ld a,b			;8475	78 	x 
	ld a,h			;8476	7c 	| 
l8477h:
	inc b			;8477	04 	. 
	add a,b			;8478	80 	. 
	and h			;8479	a4 	. 
	cp 002h		;847a	fe 02 	. . 
	ld e,b			;847c	58 	X 
	sub d			;847d	92 	. 
	rst 38h			;847e	ff 	. 
	ld bc,l926ch		;847f	01 6c 92 	. l . 
	rst 38h			;8482	ff 	. 
	ld bc,l926ch		;8483	01 6c 92 	. l . 
	rst 38h			;8486	ff 	. 
	ld bc,0496ch		;8487	01 6c 49 	. l I 
	rst 38h			;848a	ff 	. 
	add a,b			;848b	80 	. 
	ld (hl),048h		;848c	36 48 	6 H 
	rst 38h			;848e	ff 	. 
	add a,c			;848f	81 	. 
	scf			;8490	37 	7 
	add hl,hl			;8491	29 	) 
	ld a,(hl)			;8492	7e 	~ 
	ld b,d			;8493	42 	B 
	ld d,028h		;8494	16 28 	. ( 
	ld a,(hl)			;8496	7e 	~ 
	ld b,d			;8497	42 	B 
	rla			;8498	17 	. 
	ld e,021h		;8499	1e 21 	. ! 
	ccf			;849b	3f 	? 
	ld bc,03f1fh		;849c	01 1f 3f 	. . ? 
	jr nz,l84a1h		;849f	20 00 	  . 
l84a1h:
	rra			;84a1	1f 	. 
	jr nz,l84e3h		;84a2	20 3f 	  ? 
	nop			;84a4	00 	. 
	nop			;84a5	00 	. 
	ccf			;84a6	3f 	? 
	ccf			;84a7	3f 	? 
	nop			;84a8	00 	. 
	sub d			;84a9	92 	. 
	rst 38h			;84aa	ff 	. 
	ld bc,0126ch		;84ab	01 6c 12 	. l . 
	rst 38h			;84ae	ff 	. 
	add a,c			;84af	81 	. 
	call pe,07e14h		;84b0	ec 14 7e 	. . ~ 
	ld b,d			;84b3	42 	B 
	ret pe			;84b4	e8 	. 
	inc d			;84b5	14 	. 
	ld a,(hl)			;84b6	7e 	~ 
	ld b,d			;84b7	42 	B 
	ret pe			;84b8	e8 	. 
	ld a,b			;84b9	78 	x 
	add a,h			;84ba	84 	. 
	call m,0f880h		;84bb	fc 80 f8 	. . . 
	call m,00004h		;84be	fc 04 00 	. . . 
	ret m			;84c1	f8 	. 
	inc b			;84c2	04 	. 
	call m,00000h		;84c3	fc 00 00 	. . . 
	call m,000fch		;84c6	fc fc 00 	. . . 
	rlca			;84c9	07 	. 
	nop			;84ca	00 	. 
	nop			;84cb	00 	. 
	nop			;84cc	00 	. 
	jr l84cfh		;84cd	18 00 	. . 
l84cfh:
	nop			;84cf	00 	. 
	nop			;84d0	00 	. 
	jr nz,l84d3h		;84d1	20 00 	  . 
l84d3h:
	nop			;84d3	00 	. 
	nop			;84d4	00 	. 
	ld b,b			;84d5	40 	@ 
	nop			;84d6	00 	. 
	nop			;84d7	00 	. 
	nop			;84d8	00 	. 
	ld b,b			;84d9	40 	@ 
	nop			;84da	00 	. 
	nop			;84db	00 	. 
	nop			;84dc	00 	. 
	add a,b			;84dd	80 	. 
	nop			;84de	00 	. 
	nop			;84df	00 	. 
	nop			;84e0	00 	. 
	add a,b			;84e1	80 	. 
	nop			;84e2	00 	. 
l84e3h:
	nop			;84e3	00 	. 
	nop			;84e4	00 	. 
	add a,b			;84e5	80 	. 
	nop			;84e6	00 	. 
	nop			;84e7	00 	. 
	nop			;84e8	00 	. 
	ret po			;84e9	e0 	. 
	nop			;84ea	00 	. 
	nop			;84eb	00 	. 
	nop			;84ec	00 	. 
	jr l84efh		;84ed	18 00 	. . 
l84efh:
	nop			;84ef	00 	. 
	nop			;84f0	00 	. 
	inc b			;84f1	04 	. 
	nop			;84f2	00 	. 
	nop			;84f3	00 	. 
	nop			;84f4	00 	. 
	ld (bc),a			;84f5	02 	. 
	nop			;84f6	00 	. 
	nop			;84f7	00 	. 
l84f8h:
	nop			;84f8	00 	. 
	ld (bc),a			;84f9	02 	. 
	nop			;84fa	00 	. 
	nop			;84fb	00 	. 
	nop			;84fc	00 	. 
	ld bc,00000h		;84fd	01 00 00 	. . . 
	nop			;8500	00 	. 
	ld bc,00000h		;8501	01 00 00 	. . . 
	nop			;8504	00 	. 
	ld bc,00000h		;8505	01 00 00 	. . . 
	nop			;8508	00 	. 
	add a,b			;8509	80 	. 
	nop			;850a	00 	. 
	nop			;850b	00 	. 
	nop			;850c	00 	. 
	add a,b			;850d	80 	. 
	nop			;850e	00 	. 
	nop			;850f	00 	. 
	nop			;8510	00 	. 
	add a,b			;8511	80 	. 
	nop			;8512	00 	. 
	nop			;8513	00 	. 
l8514h:
	nop			;8514	00 	. 
	add a,b			;8515	80 	. 
	nop			;8516	00 	. 
	nop			;8517	00 	. 
	nop			;8518	00 	. 
	add a,b			;8519	80 	. 
	nop			;851a	00 	. 
	nop			;851b	00 	. 
	nop			;851c	00 	. 
	add a,b			;851d	80 	. 
	nop			;851e	00 	. 
	nop			;851f	00 	. 
	nop			;8520	00 	. 
	add a,b			;8521	80 	. 
	nop			;8522	00 	. 
	nop			;8523	00 	. 
	nop			;8524	00 	. 
	add a,b			;8525	80 	. 
	nop			;8526	00 	. 
	nop			;8527	00 	. 
	nop			;8528	00 	. 
	nop			;8529	00 	. 
	nop			;852a	00 	. 
	nop			;852b	00 	. 
	nop			;852c	00 	. 
	nop			;852d	00 	. 
	jr c,l8530h		;852e	38 00 	8 . 
l8530h:
	nop			;8530	00 	. 
	jr c,l85afh		;8531	38 7c 	8 | 
	nop			;8533	00 	. 
	nop			;8534	00 	. 
	ld b,h			;8535	44 	D 
	cp 000h		;8536	fe 00 	. . 
	jr c,l857eh		;8538	38 44 	8 D 
	cp 000h		;853a	fe 00 	. . 
	jr c,l856ah		;853c	38 2c 	8 , 
	ld a,(hl)			;853e	7e 	~ 
	nop			;853f	00 	. 
	djnz l8572h		;8540	10 30 	. 0 
	ld a,h			;8542	7c 	| 
	nop			;8543	00 	. 
	nop			;8544	00 	. 
	nop			;8545	00 	. 
	jr nc,l8548h		;8546	30 00 	0 . 
l8548h:
	nop			;8548	00 	. 
	nop			;8549	00 	. 
	jr nc,l854ch		;854a	30 00 	0 . 
l854ch:
	nop			;854c	00 	. 
	jr nc,$+126		;854d	30 7c 	0 | 
	nop			;854f	00 	. 
	nop			;8550	00 	. 
	ld c,h			;8551	4c 	L 
	cp 000h		;8552	fe 00 	. . 
	jr nc,l859ah		;8554	30 44 	0 D 
	cp 000h		;8556	fe 00 	. . 
	jr c,l85a2h		;8558	38 48 	8 H 
	call m,03000h		;855a	fc 00 30 	. . 0 
	jr nc,l85d7h		;855d	30 78 	0 x 
	nop			;855f	00 	. 
	nop			;8560	00 	. 
	nop			;8561	00 	. 
	jr nc,l8564h		;8562	30 00 	0 . 
l8564h:
	nop			;8564	00 	. 
	nop			;8565	00 	. 
	nop			;8566	00 	. 
	nop			;8567	00 	. 
	nop			;8568	00 	. 
	nop			;8569	00 	. 
l856ah:
	nop			;856a	00 	. 
	nop			;856b	00 	. 
	nop			;856c	00 	. 
	jr c,l85a7h		;856d	38 38 	8 8 
	jr c,l8571h		;856f	38 00 	8 . 
l8571h:
	ld b,h			;8571	44 	D 
l8572h:
	ld b,h			;8572	44 	D 
	ld a,h			;8573	7c 	| 
	jr c,l84f8h		;8574	38 82 	8 . 
	add a,d			;8576	82 	. 
	add a,07ch		;8577	c6 7c 	. | 
	add a,d			;8579	82 	. 
	add a,d			;857a	82 	. 
	add a,07ch		;857b	c6 7c 	. | 
	ld b,d			;857d	42 	B 
l857eh:
	ld b,d			;857e	42 	B 
	ld l,(hl)			;857f	6e 	n 
	inc a			;8580	3c 	< 
	ld c,h			;8581	4c 	L 
	ld c,h			;8582	4c 	L 
	ld a,h			;8583	7c 	| 
	jr nc,$+50		;8584	30 30 	0 0 
	jr nc,l85b8h		;8586	30 30 	0 0 
	nop			;8588	00 	. 
	jr nc,l85bbh		;8589	30 30 	0 0 
	jr nc,l858dh		;858b	30 00 	0 . 
l858dh:
	ld c,h			;858d	4c 	L 
	ld c,h			;858e	4c 	L 
	ld a,h			;858f	7c 	| 
	jr nc,l8514h		;8590	30 82 	0 . 
	add a,d			;8592	82 	. 
	adc a,07ch		;8593	ce 7c 	. | 
	add a,d			;8595	82 	. 
	add a,d			;8596	82 	. 
	add a,07ch		;8597	c6 7c 	. | 
	add a,h			;8599	84 	. 
l859ah:
	add a,h			;859a	84 	. 
	call z,04878h		;859b	cc 78 48 	. x H 
	ld c,b			;859e	48 	H 
	ld a,b			;859f	78 	x 
	jr nc,$+50		;85a0	30 30 	0 0 
l85a2h:
	jr nc,l85d4h		;85a2	30 30 	0 0 
	nop			;85a4	00 	. 
	nop			;85a5	00 	. 
	nop			;85a6	00 	. 
l85a7h:
	nop			;85a7	00 	. 
	nop			;85a8	00 	. 
	nop			;85a9	00 	. 
	nop			;85aa	00 	. 
	nop			;85ab	00 	. 
	nop			;85ac	00 	. 
	jr c,l85e7h		;85ad	38 38 	8 8 
l85afh:
	nop			;85af	00 	. 
	jr c,$+126		;85b0	38 7c 	8 | 
	ld b,h			;85b2	44 	D 
	nop			;85b3	00 	. 
	ld a,h			;85b4	7c 	| 
	add a,0bah		;85b5	c6 ba 	. . 
	nop			;85b7	00 	. 
l85b8h:
	cp 0c6h		;85b8	fe c6 	. . 
	cp d			;85ba	ba 	. 
l85bbh:
	nop			;85bb	00 	. 
	cp 06eh		;85bc	fe 6e 	. n 
	ld d,d			;85be	52 	R 
	nop			;85bf	00 	. 
	ld a,(hl)			;85c0	7e 	~ 
	ld a,h			;85c1	7c 	| 
	ld c,h			;85c2	4c 	L 
	nop			;85c3	00 	. 
	ld a,h			;85c4	7c 	| 
	jr nc,$+50		;85c5	30 30 	0 0 
	nop			;85c7	00 	. 
	jr nc,l85fah		;85c8	30 30 	0 0 
	jr nc,l85cch		;85ca	30 00 	0 . 
l85cch:
	jr nc,l864ah		;85cc	30 7c 	0 | 
	ld c,h			;85ce	4c 	L 
	nop			;85cf	00 	. 
	ld a,h			;85d0	7c 	| 
	adc a,0b2h		;85d1	ce b2 	. . 
	nop			;85d3	00 	. 
l85d4h:
	cp 0c6h		;85d4	fe c6 	. . 
	cp d			;85d6	ba 	. 
l85d7h:
	nop			;85d7	00 	. 
	cp 0cch		;85d8	fe cc 	. . 
	or h			;85da	b4 	. 
	nop			;85db	00 	. 
	call m,04878h		;85dc	fc 78 48 	. x H 
	nop			;85df	00 	. 
	ld a,b			;85e0	78 	x 
	jr nc,$+50		;85e1	30 30 	0 0 
	nop			;85e3	00 	. 
	jr nc,l85e6h		;85e4	30 00 	0 . 
l85e6h:
	nop			;85e6	00 	. 
l85e7h:
	nop			;85e7	00 	. 
	nop			;85e8	00 	. 
	nop			;85e9	00 	. 
	nop			;85ea	00 	. 
	nop			;85eb	00 	. 
	nop			;85ec	00 	. 
	nop			;85ed	00 	. 
	jr c,l85f0h		;85ee	38 00 	8 . 
l85f0h:
	nop			;85f0	00 	. 
	jr c,l865fh		;85f1	38 6c 	8 l 
	nop			;85f3	00 	. 
	djnz l8662h		;85f4	10 6c 	. l 
	sub 000h		;85f6	d6 00 	. . 
	jr c,l8666h		;85f8	38 6c 	8 l 
l85fah:
	jp c,03400h		;85fa	da 00 34 	. . 4 
	inc a			;85fd	3c 	< 
	ld l,(hl)			;85fe	6e 	n 
	nop			;85ff	00 	. 
	djnz l8632h		;8600	10 30 	. 0 
	ld e,h			;8602	5c 	\ 
	nop			;8603	00 	. 
	jr nz,l8606h		;8604	20 00 	  . 
l8606h:
	jr nc,l8608h		;8606	30 00 	0 . 
l8608h:
	nop			;8608	00 	. 
	nop			;8609	00 	. 
	jr nc,l860ch		;860a	30 00 	0 . 
l860ch:
	nop			;860c	00 	. 
	jr nc,l868bh		;860d	30 7c 	0 | 
	nop			;860f	00 	. 
	nop			;8610	00 	. 
	ld a,h			;8611	7c 	| 
	jp z,03400h		;8612	ca 00 34 	. . 4 
	ld c,h			;8615	4c 	L 
	or (hl)			;8616	b6 	. 
	nop			;8617	00 	. 
	ld a,b			;8618	78 	x 
	ld a,b			;8619	78 	x 
	call c,02000h		;861a	dc 00 20 	. .   
	jr nc,$+106		;861d	30 68 	0 h 
	ex af,af'			;861f	08 	. 
	djnz l8622h		;8620	10 00 	. . 
l8622h:
	jr nc,l8624h		;8622	30 00 	0 . 
l8624h:
	nop			;8624	00 	. 
	nop			;8625	00 	. 
	nop			;8626	00 	. 
	nop			;8627	00 	. 
	nop			;8628	00 	. 
	nop			;8629	00 	. 
	rlca			;862a	07 	. 
	rlca			;862b	07 	. 
	nop			;862c	00 	. 
	ld b,01fh		;862d	06 1f 	. . 
	jr l8638h		;862f	18 07 	. . 
l8631h:
	ld a,(de)			;8631	1a 	. 
l8632h:
	ccf			;8632	3f 	? 
	jr nz,$+33		;8633	20 1f 	  . 
	jr c,l86b6h		;8635	38 7f 	8  
	ld b,c			;8637	41 	A 
l8638h:
	ccf			;8638	3f 	? 
	scf			;8639	37 	7 
	ld a,a			;863a	7f 	 
	ld b,b			;863b	40 	@ 
	ccf			;863c	3f 	? 
	ld a,a			;863d	7f 	 
	rst 38h			;863e	ff 	. 
	add a,b			;863f	80 	. 
	ld a,a			;8640	7f 	 
	ld a,a			;8641	7f 	 
	rst 38h			;8642	ff 	. 
	add a,b			;8643	80 	. 
	ld l,l			;8644	6d 	m 
	ld (hl),a			;8645	77 	w 
	ld sp,hl			;8646	f9 	. 
	adc a,b			;8647	88 	. 
	jr nz,l864ah		;8648	20 00 	  . 
l864ah:
	ret po			;864a	e0 	. 
	ret po			;864b	e0 	. 
	nop			;864c	00 	. 
	ld h,b			;864d	60 	` 
	ret m			;864e	f8 	. 
	jr l8631h		;864f	18 e0 	. . 
	ld e,b			;8651	58 	X 
	call m,0f804h		;8652	fc 04 f8 	. . . 
	inc e			;8655	1c 	. 
	cp 082h		;8656	fe 82 	. . 
	call m,0feech		;8658	fc ec fe 	. . . 
	ld (bc),a			;865b	02 	. 
	call m,0fffeh		;865c	fc fe ff 	. . . 
l865fh:
	ld bc,0fefeh		;865f	01 fe fe 	. . . 
l8662h:
	rst 38h			;8662	ff 	. 
	ld bc,0eeb6h		;8663	01 b6 ee 	. . . 
l8666h:
	sbc a,a			;8666	9f 	. 
	ld de,06904h		;8667	11 04 69 	. . i 
	rst 30h			;866a	f7 	. 
	sub (hl)			;866b	96 	. 
	jr nz,l86e9h		;866c	20 7b 	  { 
	push af			;866e	f5 	. 
	add a,h			;866f	84 	. 
	jr nz,$+129		;8670	20 7f 	   
	rst 38h			;8672	ff 	. 
	add a,b			;8673	80 	. 
	jr nz,l86f4h		;8674	20 7e 	  ~ 
	rst 38h			;8676	ff 	. 
	add a,c			;8677	81 	. 
	ld h,c			;8678	61 	a 
	ld h,a			;8679	67 	g 
	rst 38h			;867a	ff 	. 
	sbc a,b			;867b	98 	. 
	ld h,b			;867c	60 	` 
	ld l,a			;867d	6f 	o 
	jp p,06090h		;867e	f2 90 60 	. . ` 
	ld d,b			;8681	50 	P 
	pop hl			;8682	e1 	. 
	and c			;8683	a1 	. 
	ld c,a			;8684	4f 	O 
	ld a,(04171h)		;8685	3a 71 41 	: q A 
	dec b			;8688	05 	. 
	sub (hl)			;8689	96 	. 
	rst 28h			;868a	ef 	. 
l868bh:
	ld l,c			;868b	69 	i 
	inc b			;868c	04 	. 
	sbc a,0afh		;868d	de af 	. . 
	ld hl,0fe04h		;868f	21 04 fe 	! . . 
	rst 38h			;8692	ff 	. 
	ld bc,07e04h		;8693	01 04 7e 	. . ~ 
	rst 38h			;8696	ff 	. 
	add a,c			;8697	81 	. 
	add a,(hl)			;8698	86 	. 
	and 0ffh		;8699	e6 ff 	. . 
	add hl,de			;869b	19 	. 
	ld b,0f6h		;869c	06 f6 	. . 
	ld c,a			;869e	4f 	O 
	add hl,bc			;869f	09 	. 
	ld b,00ah		;86a0	06 0a 	. . 
	add a,a			;86a2	87 	. 
	add a,l			;86a3	85 	. 
	jp p,08e5ch		;86a4	f2 5c 8e 	. \ . 
	add a,d			;86a7	82 	. 
	and b			;86a8	a0 	. 
	inc sp			;86a9	33 	3 
	ld a,b			;86aa	78 	x 
	ld c,b			;86ab	48 	H 
	inc b			;86ac	04 	. 
	ld (hl),b			;86ad	70 	p 
	call m,0038ch		;86ae	fc 8c 03 	. . . 
	djnz l8723h		;86b1	10 70 	. p 
	ld h,b			;86b3	60 	` 
	rrca			;86b4	0f 	. 
	nop			;86b5	00 	. 
l86b6h:
	jr nz,l86d8h		;86b6	20 20 	    
	rra			;86b8	1f 	. 
	nop			;86b9	00 	. 
	jr nz,l86dch		;86ba	20 20 	    
	rra			;86bc	1f 	. 
	nop			;86bd	00 	. 
	ld b,b			;86be	40 	@ 
	ld b,b			;86bf	40 	@ 
	ccf			;86c0	3f 	? 
	ccf			;86c1	3f 	? 
	ld b,b			;86c2	40 	@ 
	ld b,b			;86c3	40 	@ 
	nop			;86c4	00 	. 
	nop			;86c5	00 	. 
	ld a,a			;86c6	7f 	 
	ld a,a			;86c7	7f 	 
	nop			;86c8	00 	. 
	call z,0121eh		;86c9	cc 1e 12 	. . . 
	jr nz,l86dch		;86cc	20 0e 	  . 
	ccf			;86ce	3f 	? 
	ld sp,008c0h		;86cf	31 c0 08 	1 . . 
	ld c,006h		;86d2	0e 06 	. . 
	ret p			;86d4	f0 	. 
	nop			;86d5	00 	. 
	inc b			;86d6	04 	. 
	inc b			;86d7	04 	. 
l86d8h:
	ret m			;86d8	f8 	. 
	nop			;86d9	00 	. 
	inc b			;86da	04 	. 
	inc b			;86db	04 	. 
l86dch:
	ret m			;86dc	f8 	. 
	nop			;86dd	00 	. 
	ld (bc),a			;86de	02 	. 
	ld (bc),a			;86df	02 	. 
	call m,002fch		;86e0	fc fc 02 	. . . 
	ld (bc),a			;86e3	02 	. 
	nop			;86e4	00 	. 
	nop			;86e5	00 	. 
	cp 0feh		;86e6	fe fe 	. . 
l86e8h:
	nop			;86e8	00 	. 
l86e9h:
	ld l,c			;86e9	69 	i 
	rst 30h			;86ea	f7 	. 
	sub (hl)			;86eb	96 	. 
	jr nz,$+125		;86ec	20 7b 	  { 
	push af			;86ee	f5 	. 
	add a,h			;86ef	84 	. 
	jr nz,l8770h		;86f0	20 7e 	  ~ 
	cp 081h		;86f2	fe 81 	. . 
l86f4h:
	jr nz,l8774h		;86f4	20 7e 	  ~ 
	rst 38h			;86f6	ff 	. 
	add a,c			;86f7	81 	. 
	ld h,c			;86f8	61 	a 
	ld h,(hl)			;86f9	66 	f 
	cp 099h		;86fa	fe 99 	. . 
	ld h,b			;86fc	60 	` 
	ld l,a			;86fd	6f 	o 
	di			;86fe	f3 	. 
	sub b			;86ff	90 	. 
	ld h,b			;8700	60 	` 
	ld d,b			;8701	50 	P 
	pop hl			;8702	e1 	. 
	and c			;8703	a1 	. 
	ld c,a			;8704	4f 	O 
	ld a,(04171h)		;8705	3a 71 41 	: q A 
	dec b			;8708	05 	. 
	sub (hl)			;8709	96 	. 
	rst 28h			;870a	ef 	. 
	ld l,c			;870b	69 	i 
	inc b			;870c	04 	. 
	sbc a,0afh		;870d	de af 	. . 
	ld hl,07e04h		;870f	21 04 7e 	! . ~ 
	ld a,a			;8712	7f 	 
	add a,c			;8713	81 	. 
	inc b			;8714	04 	. 
	ld a,(hl)			;8715	7e 	~ 
	rst 38h			;8716	ff 	. 
	add a,c			;8717	81 	. 
	add a,(hl)			;8718	86 	. 
	ld h,(hl)			;8719	66 	f 
	ld a,a			;871a	7f 	 
	sbc a,c			;871b	99 	. 
	ld b,0f6h		;871c	06 f6 	. . 
	rst 8			;871e	cf 	. 
	add hl,bc			;871f	09 	. 
	ld b,00ah		;8720	06 0a 	. . 
	add a,a			;8722	87 	. 
l8723h:
	add a,l			;8723	85 	. 
	jp p,08e5ch		;8724	f2 5c 8e 	. \ . 
	add a,d			;8727	82 	. 
	and b			;8728	a0 	. 
	nop			;8729	00 	. 
	rlca			;872a	07 	. 
	rlca			;872b	07 	. 
	nop			;872c	00 	. 
	rlca			;872d	07 	. 
	jr l8749h		;872e	18 19 	. . 
	ld bc,0201fh		;8730	01 1f 20 	. .   
	dec h			;8733	25 	% 
	dec b			;8734	05 	. 
	ccf			;8735	3f 	? 
	ld b,b			;8736	40 	@ 
	ld d,a			;8737	57 	W 
	rla			;8738	17 	. 
	ccf			;8739	3f 	? 
	ld b,b			;873a	40 	@ 
	ld c,b			;873b	48 	H 
	ex af,af'			;873c	08 	. 
	ld a,a			;873d	7f 	 
	add a,b			;873e	80 	. 
	sub d			;873f	92 	. 
	ld (de),a			;8740	12 	. 
	ld a,a			;8741	7f 	 
	add a,b			;8742	80 	. 
	xor l			;8743	ad 	. 
	dec l			;8744	2d 	- 
	ld a,a			;8745	7f 	 
	add a,b			;8746	80 	. 
	ret pe			;8747	e8 	. 
	ld l,b			;8748	68 	h 
l8749h:
	nop			;8749	00 	. 
	ret po			;874a	e0 	. 
	ret po			;874b	e0 	. 
	nop			;874c	00 	. 
	ret po			;874d	e0 	. 
	jr l86e8h		;874e	18 98 	. . 
	add a,b			;8750	80 	. 
	ret m			;8751	f8 	. 
	inc b			;8752	04 	. 
	and h			;8753	a4 	. 
	and b			;8754	a0 	. 
	call m,0e202h		;8755	fc 02 e2 	. . . 
	ret po			;8758	e0 	. 
	call m,01202h		;8759	fc 02 12 	. . . 
l875ch:
	djnz l875ch		;875c	10 fe 	. . 
	ld bc,04849h		;875e	01 49 48 	. I H 
	cp 001h		;8761	fe 01 	. . 
	or l			;8763	b5 	. 
	or h			;8764	b4 	. 
	cp 001h		;8765	fe 01 	. . 
	rla			;8767	17 	. 
	ld d,07fh		;8768	16 7f 	.  
	add a,b			;876a	80 	. 
	or (hl)			;876b	b6 	. 
	ld (hl),07fh		;876c	36 7f 	6  
	add a,b			;876e	80 	. 
	and l			;876f	a5 	. 
l8770h:
	dec h			;8770	25 	% 
	ld a,a			;8771	7f 	 
	add a,b			;8772	80 	. 
	xor b			;8773	a8 	. 
l8774h:
	jr z,l87f5h		;8774	28 7f 	(  
	add a,b			;8776	80 	. 
	pop hl			;8777	e1 	. 
	ld h,c			;8778	61 	a 
	ld a,a			;8779	7f 	 
	add a,b			;877a	80 	. 
	or b			;877b	b0 	. 
	jr nc,l87edh		;877c	30 6f 	0 o 
	sub b			;877e	90 	. 
	cp l			;877f	bd 	. 
	dec l			;8780	2d 	- 
	ld e,a			;8781	5f 	_ 
	and b			;8782	a0 	. 
	jp po,03f42h		;8783	e2 42 3f 	. B ? 
	ld b,b			;8786	40 	@ 
	ld d,d			;8787	52 	R 
	ld (de),a			;8788	12 	. 
	cp 001h		;8789	fe 01 	. . 
	ld l,l			;878b	6d 	m 
	ld l,h			;878c	6c 	l 
	cp 001h		;878d	fe 01 	. . 
	dec h			;878f	25 	% 
	inc h			;8790	24 	$ 
	cp 001h		;8791	fe 01 	. . 
	dec b			;8793	05 	. 
	inc b			;8794	04 	. 
	cp 001h		;8795	fe 01 	. . 
	sub a			;8797	97 	. 
	sub (hl)			;8798	96 	. 
	cp 001h		;8799	fe 01 	. . 
	dec c			;879b	0d 	. 
	inc c			;879c	0c 	. 
	or 009h		;879d	f6 09 	. . 
	cp l			;879f	bd 	. 
	or h			;87a0	b4 	. 
	jp m,04705h		;87a1	fa 05 47 	. . G 
	ld b,d			;87a4	42 	B 
	call m,04a02h		;87a5	fc 02 4a 	. . J 
	ld c,b			;87a8	48 	H 
	ccf			;87a9	3f 	? 
	ld b,b			;87aa	40 	@ 
	ld c,e			;87ab	4b 	K 
	dec bc			;87ac	0b 	. 
	ld a,a			;87ad	7f 	 
	add a,b			;87ae	80 	. 
	adc a,h			;87af	8c 	. 
	inc c			;87b0	0c 	. 
	rra			;87b1	1f 	. 
	ld h,b			;87b2	60 	` 
	ld (hl),b			;87b3	70 	p 
	djnz l87d5h		;87b4	10 1f 	. . 
	jr nz,l87dch		;87b6	20 24 	  $ 
	inc b			;87b8	04 	. 
	rra			;87b9	1f 	. 
	jr nz,l87dch		;87ba	20 20 	    
	nop			;87bc	00 	. 
	ccf			;87bd	3f 	? 
	ld b,b			;87be	40 	@ 
	ld a,a			;87bf	7f 	 
	ccf			;87c0	3f 	? 
	ccf			;87c1	3f 	? 
	ld b,b			;87c2	40 	@ 
	ld b,b			;87c3	40 	@ 
	nop			;87c4	00 	. 
	nop			;87c5	00 	. 
	ld a,a			;87c6	7f 	 
	ld a,a			;87c7	7f 	 
	nop			;87c8	00 	. 
	call m,0d202h		;87c9	fc 02 d2 	. . . 
	ret nc			;87cc	d0 	. 
	cp 001h		;87cd	fe 01 	. . 
	ld sp,0f830h		;87cf	31 30 f8 	1 0 . 
	ld b,08eh		;87d2	06 8e 	. . 
	adc a,b			;87d4	88 	. 
l87d5h:
	ret m			;87d5	f8 	. 
	inc b			;87d6	04 	. 
	inc b			;87d7	04 	. 
	nop			;87d8	00 	. 
	ret m			;87d9	f8 	. 
l87dah:
	inc b			;87da	04 	. 
	inc h			;87db	24 	$ 
l87dch:
	jr nz,l87dah		;87dc	20 fc 	  . 
	ld (bc),a			;87de	02 	. 
	cp 0fch		;87df	fe fc 	. . 
	call m,00202h		;87e1	fc 02 02 	. . . 
	nop			;87e4	00 	. 
	nop			;87e5	00 	. 
	cp 0feh		;87e6	fe fe 	. . 
	nop			;87e8	00 	. 
	nop			;87e9	00 	. 
	inc a			;87ea	3c 	< 
	nop			;87eb	00 	. 
	inc a			;87ec	3c 	< 
l87edh:
	inc a			;87ed	3c 	< 
	ld b,d			;87ee	42 	B 
	nop			;87ef	00 	. 
	ld b,d			;87f0	42 	B 
	ld e,d			;87f1	5a 	Z 
	and l			;87f2	a5 	. 
	nop			;87f3	00 	. 
	and l			;87f4	a5 	. 
l87f5h:
	ld a,(hl)			;87f5	7e 	~ 
	add a,c			;87f6	81 	. 
	nop			;87f7	00 	. 
	add a,c			;87f8	81 	. 
	ld a,(hl)			;87f9	7e 	~ 
	add a,c			;87fa	81 	. 
	nop			;87fb	00 	. 
	add a,c			;87fc	81 	. 
	ld e,d			;87fd	5a 	Z 
	and l			;87fe	a5 	. 
	nop			;87ff	00 	. 
	and l			;8800	a5 	. 
	inc a			;8801	3c 	< 
	ld b,d			;8802	42 	B 
	nop			;8803	00 	. 
	ld b,d			;8804	42 	B 
	nop			;8805	00 	. 
	inc a			;8806	3c 	< 
	nop			;8807	00 	. 
	inc a			;8808	3c 	< 
	nop			;8809	00 	. 
	inc bc			;880a	03 	. 
	nop			;880b	00 	. 
	inc bc			;880c	03 	. 
	inc bc			;880d	03 	. 
	inc b			;880e	04 	. 
	nop			;880f	00 	. 
	inc b			;8810	04 	. 
	rlca			;8811	07 	. 
	jr c,l8814h		;8812	38 00 	8 . 
l8814h:
	jr c,l8851h		;8814	38 3b 	8 ; 
	ld b,h			;8816	44 	D 
	nop			;8817	00 	. 
	ld b,h			;8818	44 	D 
	dec a			;8819	3d 	= 
	ld b,d			;881a	42 	B 
	nop			;881b	00 	. 
	ld b,d			;881c	42 	B 
	ld a,l			;881d	7d 	} 
	add a,d			;881e	82 	. 
	nop			;881f	00 	. 
	add a,d			;8820	82 	. 
	ld a,a			;8821	7f 	 
	add a,b			;8822	80 	. 
	nop			;8823	00 	. 
	add a,b			;8824	80 	. 
	ld a,a			;8825	7f 	 
	add a,b			;8826	80 	. 
	nop			;8827	00 	. 
	add a,b			;8828	80 	. 
	nop			;8829	00 	. 
	ret po			;882a	e0 	. 
	nop			;882b	00 	. 
	ret po			;882c	e0 	. 
	ret po			;882d	e0 	. 
	jr l8830h		;882e	18 00 	. . 
l8830h:
	jr $-102		;8830	18 98 	. . 
	ld h,(hl)			;8832	66 	f 
	nop			;8833	00 	. 
	ld h,(hl)			;8834	66 	f 
	ld a,(hl)			;8835	7e 	~ 
	add a,c			;8836	81 	. 
	nop			;8837	00 	. 
	add a,c			;8838	81 	. 
	cp 001h		;8839	fe 01 	. . 
	nop			;883b	00 	. 
	ld bc,001feh		;883c	01 fe 01 	. . . 
	nop			;883f	00 	. 
	ld bc,001feh		;8840	01 fe 01 	. . . 
	nop			;8843	00 	. 
	ld bc,012ech		;8844	01 ec 12 	. . . 
	nop			;8847	00 	. 
	ld (de),a			;8848	12 	. 
l8849h:
	dec sp			;8849	3b 	; 
	ld b,h			;884a	44 	D 
	nop			;884b	00 	. 
	ld b,h			;884c	44 	D 
	ld b,a			;884d	47 	G 
	cp b			;884e	b8 	. 
	nop			;884f	00 	. 
	cp b			;8850	b8 	. 
l8851h:
	ld a,a			;8851	7f 	 
	add a,b			;8852	80 	. 
	nop			;8853	00 	. 
	add a,b			;8854	80 	. 
	ld a,e			;8855	7b 	{ 
	add a,h			;8856	84 	. 
	nop			;8857	00 	. 
	add a,h			;8858	84 	. 
	inc a			;8859	3c 	< 
	ld b,e			;885a	43 	C 
	nop			;885b	00 	. 
	ld b,e			;885c	43 	C 
	ccf			;885d	3f 	? 
	ld b,b			;885e	40 	@ 
	nop			;885f	00 	. 
	ld b,b			;8860	40 	@ 
	rrca			;8861	0f 	. 
	jr nc,l8864h		;8862	30 00 	0 . 
l8864h:
	jr nc,l8866h		;8864	30 00 	0 . 
l8866h:
	rrca			;8866	0f 	. 
	nop			;8867	00 	. 
	rrca			;8868	0f 	. 
	ret p			;8869	f0 	. 
	ld c,000h		;886a	0e 00 	. . 
	ld c,0feh		;886c	0e fe 	. . 
	ld bc,00100h		;886e	01 00 01 	. . . 
	cp 001h		;8871	fe 01 	. . 
	nop			;8873	00 	. 
sub_8874h:
	ld bc,041beh		;8874	01 be 41 	. . A 
	nop			;8877	00 	. 
	ld b,c			;8878	41 	A 
	ld a,(hl)			;8879	7e 	~ 
	add a,c			;887a	81 	. 
	nop			;887b	00 	. 
	add a,c			;887c	81 	. 
	ld a,h			;887d	7c 	| 
	add a,d			;887e	82 	. 
	nop			;887f	00 	. 
	add a,d			;8880	82 	. 
	jr c,l8849h		;8881	38 c6 	8 . 
	nop			;8883	00 	. 
	add a,000h		;8884	c6 00 	. . 
	inc a			;8886	3c 	< 
	nop			;8887	00 	. 
	inc a			;8888	3c 	< 
	nop			;8889	00 	. 
	nop			;888a	00 	. 
	nop			;888b	00 	. 
	nop			;888c	00 	. 
	nop			;888d	00 	. 
	inc bc			;888e	03 	. 
	nop			;888f	00 	. 
	inc bc			;8890	03 	. 
	inc bc			;8891	03 	. 
	inc e			;8892	1c 	. 
	nop			;8893	00 	. 
	inc e			;8894	1c 	. 
	dec e			;8895	1d 	. 
	ld (02200h),hl		;8896	22 00 22 	" . " 
l8899h:
	ld a,041h		;8899	3e 41 	> A 
	nop			;889b	00 	. 
	ld b,c			;889c	41 	A 
l889dh:
	ld a,041h		;889d	3e 41 	> A 
	nop			;889f	00 	. 
	ld b,c			;88a0	41 	A 
l88a1h:
	ld a,a			;88a1	7f 	 
	add a,b			;88a2	80 	. 
	nop			;88a3	00 	. 
	add a,b			;88a4	80 	. 
	ld a,a			;88a5	7f 	 
	add a,b			;88a6	80 	. 
	nop			;88a7	00 	. 
	add a,b			;88a8	80 	. 
	nop			;88a9	00 	. 
	ret po			;88aa	e0 	. 
	nop			;88ab	00 	. 
	ret po			;88ac	e0 	. 
	ret po			;88ad	e0 	. 
	rla			;88ae	17 	. 
	nop			;88af	00 	. 
	rla			;88b0	17 	. 
	rst 30h			;88b1	f7 	. 
	ex af,af'			;88b2	08 	. 
	nop			;88b3	00 	. 
	ex af,af'			;88b4	08 	. 
l88b5h:
	rst 28h			;88b5	ef 	. 
	djnz l88b8h		;88b6	10 00 	. . 
l88b8h:
	djnz l8899h		;88b8	10 df 	. . 
l88bah:
	jr nz,l88bch		;88ba	20 00 	  . 
l88bch:
	jr nz,l889dh		;88bc	20 df 	  . 
	jr nz,l88c0h		;88be	20 00 	  . 
l88c0h:
	jr nz,l88a1h		;88c0	20 df 	  . 
	jr nz,l88c4h		;88c2	20 00 	  . 
l88c4h:
	jr nz,l88b5h		;88c4	20 ef 	  . 
	djnz l88c8h		;88c6	10 00 	. . 
l88c8h:
	djnz l88cah		;88c8	10 00 	. . 
l88cah:
	nop			;88ca	00 	. 
	nop			;88cb	00 	. 
	nop			;88cc	00 	. 
	nop			;88cd	00 	. 
l88ceh:
	add a,b			;88ce	80 	. 
	nop			;88cf	00 	. 
	add a,b			;88d0	80 	. 
	add a,b			;88d1	80 	. 
	ld h,b			;88d2	60 	` 
	nop			;88d3	00 	. 
	ld h,b			;88d4	60 	` 
	ret po			;88d5	e0 	. 
	djnz l88d8h		;88d6	10 00 	. . 
l88d8h:
	djnz l88bah		;88d8	10 e0 	. . 
	djnz l88dch		;88da	10 00 	. . 
l88dch:
	djnz l88ceh		;88dc	10 f0 	. . 
	ex af,af'			;88de	08 	. 
	nop			;88df	00 	. 
	ex af,af'			;88e0	08 	. 
	ret po			;88e1	e0 	. 
	jr l88e4h		;88e2	18 00 	. . 
l88e4h:
	jr l8866h		;88e4	18 80 	. . 
	ld a,h			;88e6	7c 	| 
	nop			;88e7	00 	. 
	ld a,h			;88e8	7c 	| 
	ccf			;88e9	3f 	? 
	ld b,b			;88ea	40 	@ 
	nop			;88eb	00 	. 
	ld b,b			;88ec	40 	@ 
	rra			;88ed	1f 	. 
	jr nz,l88f0h		;88ee	20 00 	  . 
l88f0h:
	jr nz,l8911h		;88f0	20 1f 	  . 
	jr nz,l88f4h		;88f2	20 00 	  . 
l88f4h:
	jr nz,l88f9h		;88f4	20 03 	  . 
	inc e			;88f6	1c 	. 
	nop			;88f7	00 	. 
	inc e			;88f8	1c 	. 
l88f9h:
	dec e			;88f9	1d 	. 
	ld (02200h),hl		;88fa	22 00 22 	" . " 
	ccf			;88fd	3f 	? 
	ld b,b			;88fe	40 	@ 
	nop			;88ff	00 	. 
	ld b,b			;8900	40 	@ 
	ld a,041h		;8901	3e 41 	> A 
	nop			;8903	00 	. 
	ld b,c			;8904	41 	A 
	ld a,(hl)			;8905	7e 	~ 
	add a,c			;8906	81 	. 
	nop			;8907	00 	. 
	add a,c			;8908	81 	. 
	rst 38h			;8909	ff 	. 
	nop			;890a	00 	. 
	nop			;890b	00 	. 
	nop			;890c	00 	. 
	rst 38h			;890d	ff 	. 
	nop			;890e	00 	. 
	nop			;890f	00 	. 
	nop			;8910	00 	. 
l8911h:
	rst 38h			;8911	ff 	. 
	nop			;8912	00 	. 
	nop			;8913	00 	. 
	nop			;8914	00 	. 
	rst 38h			;8915	ff 	. 
	nop			;8916	00 	. 
	nop			;8917	00 	. 
	nop			;8918	00 	. 
	cp a			;8919	bf 	. 
	ld b,b			;891a	40 	@ 
	nop			;891b	00 	. 
	ld b,b			;891c	40 	@ 
	ld a,a			;891d	7f 	 
	add a,b			;891e	80 	. 
	nop			;891f	00 	. 
	add a,b			;8920	80 	. 
	rst 38h			;8921	ff 	. 
	nop			;8922	00 	. 
	nop			;8923	00 	. 
	nop			;8924	00 	. 
	rst 38h			;8925	ff 	. 
	nop			;8926	00 	. 
	nop			;8927	00 	. 
	nop			;8928	00 	. 
	cp h			;8929	bc 	. 
	ld b,d			;892a	42 	B 
	nop			;892b	00 	. 
	ld b,d			;892c	42 	B 
	cp (hl)			;892d	be 	. 
	ld b,c			;892e	41 	A 
	nop			;892f	00 	. 
	ld b,c			;8930	41 	A 
	cp 001h		;8931	fe 01 	. . 
	nop			;8933	00 	. 
	ld bc,001feh		;8934	01 fe 01 	. . . 
	nop			;8937	00 	. 
	ld bc,002fch		;8938	01 fc 02 	. . . 
	nop			;893b	00 	. 
	ld (bc),a			;893c	02 	. 
	call m,00002h		;893d	fc 02 00 	. . . 
	ld (bc),a			;8940	02 	. 
	ret po			;8941	e0 	. 
	inc e			;8942	1c 	. 
	nop			;8943	00 	. 
	inc e			;8944	1c 	. 
	call m,00002h		;8945	fc 02 00 	. . . 
	ld (bc),a			;8948	02 	. 
	ld a,(hl)			;8949	7e 	~ 
	add a,c			;894a	81 	. 
	nop			;894b	00 	. 
	add a,c			;894c	81 	. 
	ld a,a			;894d	7f 	 
	add a,b			;894e	80 	. 
	nop			;894f	00 	. 
	add a,b			;8950	80 	. 
	ld a,a			;8951	7f 	 
	add a,b			;8952	80 	. 
	nop			;8953	00 	. 
	add a,b			;8954	80 	. 
	ccf			;8955	3f 	? 
	ld b,b			;8956	40 	@ 
	nop			;8957	00 	. 
	ld b,b			;8958	40 	@ 
	daa			;8959	27 	' 
	ld e,b			;895a	58 	X 
	nop			;895b	00 	. 
	ld e,b			;895c	58 	X 
	rra			;895d	1f 	. 
	jr nz,l8960h		;895e	20 00 	  . 
l8960h:
	jr nz,l89a0h		;8960	20 3e 	  > 
	ld b,c			;8962	41 	A 
	nop			;8963	00 	. 
	ld b,c			;8964	41 	A 
	add hl,sp			;8965	39 	9 
	ld b,(hl)			;8966	46 	F 
	nop			;8967	00 	. 
	ld b,(hl)			;8968	46 	F 
	rst 38h			;8969	ff 	. 
	nop			;896a	00 	. 
	nop			;896b	00 	. 
	nop			;896c	00 	. 
	ld a,(hl)			;896d	7e 	~ 
	add a,c			;896e	81 	. 
	nop			;896f	00 	. 
	add a,c			;8970	81 	. 
	ld a,a			;8971	7f 	 
	add a,b			;8972	80 	. 
	nop			;8973	00 	. 
	add a,b			;8974	80 	. 
	cp a			;8975	bf 	. 
	ld b,b			;8976	40 	@ 
	nop			;8977	00 	. 
	ld b,b			;8978	40 	@ 
	rst 38h			;8979	ff 	. 
	nop			;897a	00 	. 
	nop			;897b	00 	. 
	nop			;897c	00 	. 
	rst 38h			;897d	ff 	. 
	nop			;897e	00 	. 
	nop			;897f	00 	. 
	nop			;8980	00 	. 
	ld a,(hl)			;8981	7e 	~ 
	add a,c			;8982	81 	. 
	nop			;8983	00 	. 
	add a,c			;8984	81 	. 
	rst 38h			;8985	ff 	. 
	nop			;8986	00 	. 
	nop			;8987	00 	. 
	nop			;8988	00 	. 
	call m,00002h		;8989	fc 02 00 	. . . 
	ld (bc),a			;898c	02 	. 
	cp 001h		;898d	fe 01 	. . 
	nop			;898f	00 	. 
	ld bc,l817eh		;8990	01 7e 81 	. ~ . 
	nop			;8993	00 	. 
	add a,c			;8994	81 	. 
	ld a,(hl)			;8995	7e 	~ 
	add a,c			;8996	81 	. 
	nop			;8997	00 	. 
	add a,c			;8998	81 	. 
	ld l,(hl)			;8999	6e 	n 
	sub c			;899a	91 	. 
	nop			;899b	00 	. 
	sub c			;899c	91 	. 
	ld l,(hl)			;899d	6e 	n 
	sub c			;899e	91 	. 
	nop			;899f	00 	. 
l89a0h:
	sub c			;89a0	91 	. 
	or 009h		;89a1	f6 09 	. . 
	nop			;89a3	00 	. 
	add hl,bc			;89a4	09 	. 
	ret m			;89a5	f8 	. 
	ld b,000h		;89a6	06 00 	. . 
	ld b,06fh		;89a8	06 6f 	. o 
	sub b			;89aa	90 	. 
	nop			;89ab	00 	. 
	sub b			;89ac	90 	. 
	ld e,a			;89ad	5f 	_ 
	and b			;89ae	a0 	. 
	nop			;89af	00 	. 
	and b			;89b0	a0 	. 
	ld e,a			;89b1	5f 	_ 
	and b			;89b2	a0 	. 
	nop			;89b3	00 	. 
	and b			;89b4	a0 	. 
	rra			;89b5	1f 	. 
	ld h,b			;89b6	60 	` 
	nop			;89b7	00 	. 
	ld h,b			;89b8	60 	` 
	rra			;89b9	1f 	. 
	ld h,b			;89ba	60 	` 
	nop			;89bb	00 	. 
	ld h,b			;89bc	60 	` 
	rrca			;89bd	0f 	. 
	jr nc,l89c0h		;89be	30 00 	0 . 
l89c0h:
	jr nc,$+3		;89c0	30 01 	0 . 
	ld c,000h		;89c2	0e 00 	. . 
	ld c,000h		;89c4	0e 00 	. . 
	ld bc,00100h		;89c6	01 00 01 	. . . 
	rst 38h			;89c9	ff 	. 
	nop			;89ca	00 	. 
	nop			;89cb	00 	. 
	nop			;89cc	00 	. 
	rst 30h			;89cd	f7 	. 
	ex af,af'			;89ce	08 	. 
	nop			;89cf	00 	. 
	ex af,af'			;89d0	08 	. 
	ei			;89d1	fb 	. 
	inc b			;89d2	04 	. 
	nop			;89d3	00 	. 
	inc b			;89d4	04 	. 
	defb 0fdh,002h,000h	;illegal sequence		;89d5	fd 02 00 	. . . 
	ld (bc),a			;89d8	02 	. 
	defb 0fdh,002h,000h	;illegal sequence		;89d9	fd 02 00 	. . . 
	ld (bc),a			;89dc	02 	. 
	defb 0fdh,002h,000h	;illegal sequence		;89dd	fd 02 00 	. . . 
	ld (bc),a			;89e0	02 	. 
	ret p			;89e1	f0 	. 
	dec c			;89e2	0d 	. 
	nop			;89e3	00 	. 
	dec c			;89e4	0d 	. 
	nop			;89e5	00 	. 
	ret p			;89e6	f0 	. 
	nop			;89e7	00 	. 
	ret p			;89e8	f0 	. 
	ret m			;89e9	f8 	. 
	inc b			;89ea	04 	. 
	nop			;89eb	00 	. 
	inc b			;89ec	04 	. 
	ret m			;89ed	f8 	. 
	inc b			;89ee	04 	. 
	nop			;89ef	00 	. 
	inc b			;89f0	04 	. 
	ret m			;89f1	f8 	. 
	inc b			;89f2	04 	. 
	nop			;89f3	00 	. 
	inc b			;89f4	04 	. 
	ret p			;89f5	f0 	. 
	ex af,af'			;89f6	08 	. 
	nop			;89f7	00 	. 
	ex af,af'			;89f8	08 	. 
	ret p			;89f9	f0 	. 
	ex af,af'			;89fa	08 	. 
	nop			;89fb	00 	. 
	ex af,af'			;89fc	08 	. 
	ret nz			;89fd	c0 	. 
	jr nc,l8a00h		;89fe	30 00 	0 . 
l8a00h:
	jr nc,l8a02h		;8a00	30 00 	0 . 
l8a02h:
	ret nz			;8a02	c0 	. 
	nop			;8a03	00 	. 
	ret nz			;8a04	c0 	. 
	nop			;8a05	00 	. 
	nop			;8a06	00 	. 
	nop			;8a07	00 	. 
	nop			;8a08	00 	. 
	nop			;8a09	00 	. 
	nop			;8a0a	00 	. 
	nop			;8a0b	00 	. 
	nop			;8a0c	00 	. 
	nop			;8a0d	00 	. 
	rrca			;8a0e	0f 	. 
	rrca			;8a0f	0f 	. 
	nop			;8a10	00 	. 
	rrca			;8a11	0f 	. 
	ccf			;8a12	3f 	? 
	ccf			;8a13	3f 	? 
	rrca			;8a14	0f 	. 
	add hl,sp			;8a15	39 	9 
	ld a,a			;8a16	7f 	 
	ld a,c			;8a17	79 	y 
	ccf			;8a18	3f 	? 
	ld (hl),c			;8a19	71 	q 
	rst 38h			;8a1a	ff 	. 
	defb 0fdh,07fh,073h	;illegal sequence		;8a1b	fd 7f 73 	.  s 
	rst 38h			;8a1e	ff 	. 
	rst 30h			;8a1f	f7 	. 
	ld a,a			;8a20	7f 	 
	ld bc,0ffffh		;8a21	01 ff ff 	. . . 
	ld bc,057abh		;8a24	01 ab 57 	. . W 
	ld d,a			;8a27	57 	W 
	ld d,e			;8a28	53 	S 
	nop			;8a29	00 	. 
	rrca			;8a2a	0f 	. 
	rrca			;8a2b	0f 	. 
	nop			;8a2c	00 	. 
	rrca			;8a2d	0f 	. 
	jp 003c3h		;8a2e	c3 c3 03 	. . . 
	rst 0			;8a31	c7 	. 
	rst 28h			;8a32	ef 	. 
	rst 28h			;8a33	ef 	. 
	rst 0			;8a34	c7 	. 
	rrca			;8a35	0f 	. 
	rst 18h			;8a36	df 	. 
	rst 18h			;8a37	df 	. 
	rrca			;8a38	0f 	. 
	rst 18h			;8a39	df 	. 
	rst 38h			;8a3a	ff 	. 
	rst 38h			;8a3b	ff 	. 
	rst 18h			;8a3c	df 	. 
	cp 0ffh		;8a3d	fe ff 	. . 
	rst 38h			;8a3f	ff 	. 
	cp 0f0h		;8a40	fe f0 	. . 
	rst 38h			;8a42	ff 	. 
	rst 38h			;8a43	ff 	. 
	ret p			;8a44	f0 	. 
	rst 38h			;8a45	ff 	. 
	rst 38h			;8a46	ff 	. 
	rst 38h			;8a47	ff 	. 
	rst 38h			;8a48	ff 	. 
	nop			;8a49	00 	. 
	ret p			;8a4a	f0 	. 
	ret p			;8a4b	f0 	. 
	nop			;8a4c	00 	. 
	ret p			;8a4d	f0 	. 
	ret m			;8a4e	f8 	. 
	ret m			;8a4f	f8 	. 
	ret p			;8a50	f0 	. 
	ret m			;8a51	f8 	. 
	call m,0f8fch		;8a52	fc fc f8 	. . . 
	call m,0fefeh		;8a55	fc fe fe 	. . . 
	call m,0ffc6h		;8a58	fc c6 ff 	. . . 
	rst 38h			;8a5b	ff 	. 
	add a,000h		;8a5c	c6 00 	. . 
	add a,0c6h		;8a5e	c6 c6 	. . 
	nop			;8a60	00 	. 
	nop			;8a61	00 	. 
	add a,b			;8a62	80 	. 
	add a,b			;8a63	80 	. 
	nop			;8a64	00 	. 
	add a,b			;8a65	80 	. 
	ret po			;8a66	e0 	. 
	ret po			;8a67	e0 	. 
	add a,b			;8a68	80 	. 
	add hl,de			;8a69	19 	. 
	rst 38h			;8a6a	ff 	. 
	rst 38h			;8a6b	ff 	. 
	exx			;8a6c	d9 	. 
	and c			;8a6d	a1 	. 
	ld a,e			;8a6e	7b 	{ 
	ld a,e			;8a6f	7b 	{ 
	ld hl,06100h		;8a70	21 00 61 	! . a 
	ld h,c			;8a73	61 	a 
	nop			;8a74	00 	. 
	nop			;8a75	00 	. 
	inc bc			;8a76	03 	. 
	inc bc			;8a77	03 	. 
	nop			;8a78	00 	. 
	nop			;8a79	00 	. 
	rlca			;8a7a	07 	. 
	inc b			;8a7b	04 	. 
	inc bc			;8a7c	03 	. 
	nop			;8a7d	00 	. 
	rrca			;8a7e	0f 	. 
	dec bc			;8a7f	0b 	. 
	inc b			;8a80	04 	. 
	nop			;8a81	00 	. 
	inc b			;8a82	04 	. 
	inc b			;8a83	04 	. 
	nop			;8a84	00 	. 
	nop			;8a85	00 	. 
	nop			;8a86	00 	. 
	nop			;8a87	00 	. 
	nop			;8a88	00 	. 
	rst 38h			;8a89	ff 	. 
	rst 38h			;8a8a	ff 	. 
	rst 38h			;8a8b	ff 	. 
	rst 38h			;8a8c	ff 	. 
	rst 38h			;8a8d	ff 	. 
	rst 38h			;8a8e	ff 	. 
	rst 38h			;8a8f	ff 	. 
	rst 38h			;8a90	ff 	. 
	rst 38h			;8a91	ff 	. 
	rst 38h			;8a92	ff 	. 
	rst 38h			;8a93	ff 	. 
	rst 38h			;8a94	ff 	. 
	ld a,0ffh		;8a95	3e ff 	> . 
	rst 38h			;8a97	ff 	. 
	ld a,000h		;8a98	3e 00 	> . 
	cp 05eh		;8a9a	fe 5e 	. ^ 
	and b			;8a9c	a0 	. 
	nop			;8a9d	00 	. 
	ret m			;8a9e	f8 	. 
	adc a,b			;8a9f	88 	. 
	ld (hl),b			;8aa0	70 	p 
	nop			;8aa1	00 	. 
	ld a,h			;8aa2	7c 	| 
	ld (hl),h			;8aa3	74 	t 
	ex af,af'			;8aa4	08 	. 
	nop			;8aa5	00 	. 
	ex af,af'			;8aa6	08 	. 
	ex af,af'			;8aa7	08 	. 
	nop			;8aa8	00 	. 
	add a,b			;8aa9	80 	. 
	ret nc			;8aaa	d0 	. 
	ret nc			;8aab	d0 	. 
	add a,b			;8aac	80 	. 
	ret nc			;8aad	d0 	. 
	ret m			;8aae	f8 	. 
l8aafh:
	ret m			;8aaf	f8 	. 
	ret nc			;8ab0	d0 	. 
	ret m			;8ab1	f8 	. 
	call m,0f8fch		;8ab2	fc fc f8 	. . . 
	djnz l8aafh		;8ab5	10 f8 	. . 
	ret m			;8ab7	f8 	. 
	djnz l8abah		;8ab8	10 00 	. . 
l8abah:
	djnz l8acch		;8aba	10 10 	. . 
	nop			;8abc	00 	. 
	nop			;8abd	00 	. 
	nop			;8abe	00 	. 
	nop			;8abf	00 	. 
	nop			;8ac0	00 	. 
	nop			;8ac1	00 	. 
	nop			;8ac2	00 	. 
	nop			;8ac3	00 	. 
	nop			;8ac4	00 	. 
	nop			;8ac5	00 	. 
	nop			;8ac6	00 	. 
	nop			;8ac7	00 	. 
	nop			;8ac8	00 	. 
	nop			;8ac9	00 	. 
	rrca			;8aca	0f 	. 
	rrca			;8acb	0f 	. 
l8acch:
	nop			;8acc	00 	. 
	rrca			;8acd	0f 	. 
	ccf			;8ace	3f 	? 
	ccf			;8acf	3f 	? 
	rrca			;8ad0	0f 	. 
	ld sp,0757fh		;8ad1	31 7f 75 	1  u 
	ccf			;8ad4	3f 	? 
	ld (hl),c			;8ad5	71 	q 
	rst 38h			;8ad6	ff 	. 
	defb 0fdh,07fh,073h	;illegal sequence		;8ad7	fd 7f 73 	.  s 
	rst 38h			;8ada	ff 	. 
	di			;8adb	f3 	. 
	ld a,a			;8adc	7f 	 
	ld bc,0ffffh		;8add	01 ff ff 	. . . 
	ld bc,057abh		;8ae0	01 ab 57 	. . W 
	ld d,a			;8ae3	57 	W 
	ld d,e			;8ae4	53 	S 
	ld (bc),a			;8ae5	02 	. 
	ccf			;8ae6	3f 	? 
	ccf			;8ae7	3f 	? 
	ld a,(0c000h)		;8ae8	3a 00 c0 	: . . 
	ret nz			;8aeb	c0 	. 
	nop			;8aec	00 	. 
	ret nz			;8aed	c0 	. 
	ret po			;8aee	e0 	. 
	ret po			;8aef	e0 	. 
	ret nz			;8af0	c0 	. 
	nop			;8af1	00 	. 
	rst 0			;8af2	c7 	. 
	rst 0			;8af3	c7 	. 
	nop			;8af4	00 	. 
	rst 0			;8af5	c7 	. 
	rst 38h			;8af6	ff 	. 
	rst 38h			;8af7	ff 	. 
	rst 0			;8af8	c7 	. 
	jp p,0ffffh		;8af9	f2 ff ff 	. . . 
	jp p,0f3fdh		;8afc	f2 fd f3 	. . . 
	di			;8aff	f3 	. 
	pop af			;8b00	f1 	. 
	di			;8b01	f3 	. 
	rst 38h			;8b02	ff 	. 
	rst 38h			;8b03	ff 	. 
	di			;8b04	f3 	. 
	rst 38h			;8b05	ff 	. 
	rst 38h			;8b06	ff 	. 
	rst 38h			;8b07	ff 	. 
	rst 38h			;8b08	ff 	. 
	nop			;8b09	00 	. 
	inc c			;8b0a	0c 	. 
	inc c			;8b0b	0c 	. 
	nop			;8b0c	00 	. 
	inc c			;8b0d	0c 	. 
	ld a,a			;8b0e	7f 	 
	ld a,a			;8b0f	7f 	 
	inc c			;8b10	0c 	. 
	ld (hl),b			;8b11	70 	p 
	call m,070fch		;8b12	fc fc 70 	. . p 
	add a,b			;8b15	80 	. 
	ret p			;8b16	f0 	. 
	ret p			;8b17	f0 	. 
	add a,b			;8b18	80 	. 
	nop			;8b19	00 	. 
	add a,b			;8b1a	80 	. 
	add a,b			;8b1b	80 	. 
	nop			;8b1c	00 	. 
	nop			;8b1d	00 	. 
	add a,b			;8b1e	80 	. 
	add a,b			;8b1f	80 	. 
	nop			;8b20	00 	. 
	add a,b			;8b21	80 	. 
	call po,sub_80e4h		;8b22	e4 e4 80 	. . . 
	call po,0fefeh		;8b25	e4 fe fe 	. . . 
	call po,0ff07h		;8b28	e4 07 ff 	. . . 
	rst 38h			;8b2b	ff 	. 
	rst 0			;8b2c	c7 	. 
	ld b,a			;8b2d	47 	G 
	cpl			;8b2e	2f 	/ 
	cpl			;8b2f	2f 	/ 
	rlca			;8b30	07 	. 
	ld bc,00707h		;8b31	01 07 07 	. . . 
	ld bc,00100h		;8b34	01 00 01 	. . . 
	ld bc,00000h		;8b37	01 00 00 	. . . 
	ld bc,00001h		;8b3a	01 01 00 	. . . 
	nop			;8b3d	00 	. 
	rlca			;8b3e	07 	. 
	ld b,001h		;8b3f	06 01 	. . 
	nop			;8b41	00 	. 
	rrca			;8b42	0f 	. 
	add hl,bc			;8b43	09 	. 
	ld b,000h		;8b44	06 00 	. . 
	ld b,006h		;8b46	06 06 	. . 
	nop			;8b48	00 	. 
	rst 38h			;8b49	ff 	. 
	rst 38h			;8b4a	ff 	. 
	rst 38h			;8b4b	ff 	. 
	rst 38h			;8b4c	ff 	. 
	cp 0ffh		;8b4d	fe ff 	. . 
	rst 38h			;8b4f	ff 	. 
	cp 0f0h		;8b50	fe f0 	. . 
	cp 0feh		;8b52	fe fe 	. . 
	ret p			;8b54	f0 	. 
	nop			;8b55	00 	. 
	ret p			;8b56	f0 	. 
	or b			;8b57	b0 	. 
	ld b,b			;8b58	40 	@ 
	nop			;8b59	00 	. 
	ret m			;8b5a	f8 	. 
	adc a,b			;8b5b	88 	. 
	ld (hl),b			;8b5c	70 	p 
	nop			;8b5d	00 	. 
	ret m			;8b5e	f8 	. 
l8b5fh:
	ld l,b			;8b5f	68 	h 
	sub b			;8b60	90 	. 
	nop			;8b61	00 	. 
	sub b			;8b62	90 	. 
	sub b			;8b63	90 	. 
	nop			;8b64	00 	. 
	nop			;8b65	00 	. 
	nop			;8b66	00 	. 
	nop			;8b67	00 	. 
	nop			;8b68	00 	. 
	ret p			;8b69	f0 	. 
	ret m			;8b6a	f8 	. 
	ret m			;8b6b	f8 	. 
	ret p			;8b6c	f0 	. 
	jr nz,l8b5fh		;8b6d	20 f0 	  . 
	ret p			;8b6f	f0 	. 
	jr nz,l8b72h		;8b70	20 00 	  . 
l8b72h:
	jr nz,l8b94h		;8b72	20 20 	    
	nop			;8b74	00 	. 
	nop			;8b75	00 	. 
	nop			;8b76	00 	. 
	nop			;8b77	00 	. 
	nop			;8b78	00 	. 
	nop			;8b79	00 	. 
	nop			;8b7a	00 	. 
	nop			;8b7b	00 	. 
	nop			;8b7c	00 	. 
	nop			;8b7d	00 	. 
	nop			;8b7e	00 	. 
	nop			;8b7f	00 	. 
	nop			;8b80	00 	. 
	nop			;8b81	00 	. 
	nop			;8b82	00 	. 
	nop			;8b83	00 	. 
	nop			;8b84	00 	. 
	nop			;8b85	00 	. 
	nop			;8b86	00 	. 
	nop			;8b87	00 	. 
	nop			;8b88	00 	. 
	nop			;8b89	00 	. 
	ld bc,00001h		;8b8a	01 01 00 	. . . 
	ld bc,07e7fh		;8b8d	01 7f 7e 	.  ~ 
	ld bc,0a75fh		;8b90	01 5f a7 	. _ . 
	and b			;8b93	a0 	. 
l8b94h:
	rlca			;8b94	07 	. 
	rra			;8b95	1f 	. 
	rst 28h			;8b96	ef 	. 
	ret po			;8b97	e0 	. 
	rrca			;8b98	0f 	. 
	ld a,(hl)			;8b99	7e 	~ 
	adc a,a			;8b9a	8f 	. 
	add a,c			;8b9b	81 	. 
	ld c,07fh		;8b9c	0e 7f 	.  
	sbc a,a			;8b9e	9f 	. 
	add a,b			;8b9f	80 	. 
	rra			;8ba0	1f 	. 
	ccf			;8ba1	3f 	? 
	ld e,(hl)			;8ba2	5e 	^ 
	ld b,b			;8ba3	40 	@ 
	rra			;8ba4	1f 	. 
	rra			;8ba5	1f 	. 
	jr c,l8bc8h		;8ba6	38 20 	8   
	rra			;8ba8	1f 	. 
	nop			;8ba9	00 	. 
	ret p			;8baa	f0 	. 
	ret p			;8bab	f0 	. 
	nop			;8bac	00 	. 
	ret p			;8bad	f0 	. 
	rst 38h			;8bae	ff 	. 
	rrca			;8baf	0f 	. 
	ret p			;8bb0	f0 	. 
	rst 38h			;8bb1	ff 	. 
	call m,0fc00h		;8bb2	fc 00 fc 	. . . 
	rst 38h			;8bb5	ff 	. 
	cp 000h		;8bb6	fe 00 	. . 
	cp 0efh		;8bb8	fe ef 	. . 
	cp 010h		;8bba	fe 10 	. . 
	xor 0ffh		;8bbc	ee ff 	. . 
	rst 38h			;8bbe	ff 	. 
	nop			;8bbf	00 	. 
	rst 38h			;8bc0	ff 	. 
	rst 38h			;8bc1	ff 	. 
	rrca			;8bc2	0f 	. 
	nop			;8bc3	00 	. 
	rst 38h			;8bc4	ff 	. 
	rst 38h			;8bc5	ff 	. 
	inc bc			;8bc6	03 	. 
	nop			;8bc7	00 	. 
l8bc8h:
	rst 38h			;8bc8	ff 	. 
	nop			;8bc9	00 	. 
	nop			;8bca	00 	. 
	nop			;8bcb	00 	. 
	nop			;8bcc	00 	. 
	nop			;8bcd	00 	. 
	ret nz			;8bce	c0 	. 
	ret nz			;8bcf	c0 	. 
	nop			;8bd0	00 	. 
	ld b,b			;8bd1	40 	@ 
	and b			;8bd2	a0 	. 
	and b			;8bd3	a0 	. 
	nop			;8bd4	00 	. 
	nop			;8bd5	00 	. 
	ret po			;8bd6	e0 	. 
	ret po			;8bd7	e0 	. 
	nop			;8bd8	00 	. 
	ret nz			;8bd9	c0 	. 
	jr nz,l8bfch		;8bda	20 20 	    
	nop			;8bdc	00 	. 
	ret nz			;8bdd	c0 	. 
	jr nz,l8c00h		;8bde	20 20 	    
	nop			;8be0	00 	. 
	add a,b			;8be1	80 	. 
	ld b,b			;8be2	40 	@ 
	ld b,b			;8be3	40 	@ 
	nop			;8be4	00 	. 
	nop			;8be5	00 	. 
	add a,b			;8be6	80 	. 
	add a,b			;8be7	80 	. 
	nop			;8be8	00 	. 
	rlca			;8be9	07 	. 
	jr $+26		;8bea	18 18 	. . 
	rrca			;8bec	0f 	. 
	ld b,039h		;8bed	06 39 	. 9 
	add hl,sp			;8bef	39 	9 
	ld e,021h		;8bf0	1e 21 	. ! 
	ld e,(hl)			;8bf2	5e 	^ 
	ld a,(hl)			;8bf3	7e 	~ 
	dec a			;8bf4	3d 	= 
	inc b			;8bf5	04 	. 
	ld a,e			;8bf6	7b 	{ 
	ld a,a			;8bf7	7f 	 
	ccf			;8bf8	3f 	? 
	ld c,h			;8bf9	4c 	L 
	rst 30h			;8bfa	f7 	. 
	cp e			;8bfb	bb 	. 
l8bfch:
	ld a,a			;8bfc	7f 	 
	ld e,h			;8bfd	5c 	\ 
	xor e			;8bfe	ab 	. 
	rst 30h			;8bff	f7 	. 
l8c00h:
	ld a,a			;8c00	7f 	 
	halt			;8c01	76 	v 
	defb 0ddh,0abh,077h	;illegal sequence		;8c02	dd ab 77 	. . w 
	halt			;8c05	76 	v 
	xor e			;8c06	ab 	. 
	call c,00777h		;8c07	dc 77 07 	. w . 
	ret m			;8c0a	f8 	. 
	ret m			;8c0b	f8 	. 
	rlca			;8c0c	07 	. 
	ei			;8c0d	fb 	. 
	inc b			;8c0e	04 	. 
	inc b			;8c0f	04 	. 
	ei			;8c10	fb 	. 
	adc a,h			;8c11	8c 	. 
	ld (hl),e			;8c12	73 	s 
	ld (hl),e			;8c13	73 	s 
	defb 0fdh,001h,0feh	;illegal sequence		;8c14	fd 01 fe 	. . . 
	rst 18h			;8c17	df 	. 
	rst 38h			;8c18	ff 	. 
	ld bc,08effh		;8c19	01 ff 8e 	. . . 
	rst 38h			;8c1c	ff 	. 
	ld bc,l8ffeh		;8c1d	01 fe 8f 	. . . 
	rst 38h			;8c20	ff 	. 
	inc bc			;8c21	03 	. 
	defb 0fdh,006h,0ffh	;illegal sequence		;8c22	fd 06 ff 	. . . 
	inc bc			;8c25	03 	. 
	cp 001h		;8c26	fe 01 	. . 
	rst 38h			;8c28	ff 	. 
	nop			;8c29	00 	. 
	ret nz			;8c2a	c0 	. 
	ret nz			;8c2b	c0 	. 
	add a,b			;8c2c	80 	. 
	nop			;8c2d	00 	. 
	ret po			;8c2e	e0 	. 
	ret po			;8c2f	e0 	. 
	ret nz			;8c30	c0 	. 
	jr nz,$-46		;8c31	20 d0 	  . 
	ret p			;8c33	f0 	. 
	ret po			;8c34	e0 	. 
	nop			;8c35	00 	. 
	ret p			;8c36	f0 	. 
	ret p			;8c37	f0 	. 
	ret po			;8c38	e0 	. 
	sub b			;8c39	90 	. 
	ld a,b			;8c3a	78 	x 
	ret pe			;8c3b	e8 	. 
	ret p			;8c3c	f0 	. 
	add a,b			;8c3d	80 	. 
	ret m			;8c3e	f8 	. 
	ex af,af'			;8c3f	08 	. 
	ret p			;8c40	f0 	. 
	nop			;8c41	00 	. 
	ret m			;8c42	f8 	. 
	ex af,af'			;8c43	08 	. 
	ret p			;8c44	f0 	. 
	nop			;8c45	00 	. 
	ret m			;8c46	f8 	. 
	ld c,b			;8c47	48 	H 
	or b			;8c48	b0 	. 
	ld (hl),d			;8c49	72 	r 
	xor (ix+073h)		;8c4a	dd ae 73 	. . s 
	inc hl			;8c4d	23 	# 
	cp 085h		;8c4e	fe 85 	. . 
	ld a,e			;8c50	7b 	{ 
	ld bc,082ffh		;8c51	01 ff 82 	. . . 
	ld a,l			;8c54	7d 	} 
	ld bc,l8ffeh		;8c55	01 fe 8f 	. . . 
	ld (hl),c			;8c58	71 	q 
	ld bc,laafbh		;8c59	01 fb aa 	. . . 
	ld d,c			;8c5c	51 	Q 
	inc bc			;8c5d	03 	. 
	ld d,(hl)			;8c5e	56 	V 
	ld d,l			;8c5f	55 	U 
	inc bc			;8c60	03 	. 
	inc bc			;8c61	03 	. 
	dec b			;8c62	05 	. 
	ld b,003h		;8c63	06 03 	. . 
	rlca			;8c65	07 	. 
	ld a,(bc)			;8c66	0a 	. 
	dec c			;8c67	0d 	. 
	rlca			;8c68	07 	. 
	ld (bc),a			;8c69	02 	. 
	defb 0fdh,003h,0feh	;illegal sequence		;8c6a	fd 03 fe 	. . . 
	ld b,0fbh		;8c6d	06 fb 	. . 
	dec b			;8c6f	05 	. 
	cp 004h		;8c70	fe 04 	. . 
	cp 002h		;8c72	fe 02 	. . 
	call m,0fb8eh		;8c74	fc 8e fb 	. . . 
	dec b			;8c77	05 	. 
	cp 0feh		;8c78	fe fe 	. . 
	ld d,l			;8c7a	55 	U 
	xor e			;8c7b	ab 	. 
	cp 0dfh		;8c7c	fe df 	. . 
	xor d			;8c7e	aa 	. 
	ld (hl),l			;8c7f	75 	u 
	rst 18h			;8c80	df 	. 
	rst 18h			;8c81	df 	. 
	ld (hl),l			;8c82	75 	u 
	xor d			;8c83	aa 	. 
	rst 18h			;8c84	df 	. 
	rst 18h			;8c85	df 	. 
	xor d			;8c86	aa 	. 
	ld (hl),l			;8c87	75 	u 
	rst 18h			;8c88	df 	. 
	nop			;8c89	00 	. 
	cp b			;8c8a	b8 	. 
	xor b			;8c8b	a8 	. 
	djnz l8c8eh		;8c8c	10 00 	. . 
l8c8eh:
	djnz l8ca0h		;8c8e	10 10 	. . 
	nop			;8c90	00 	. 
	nop			;8c91	00 	. 
	nop			;8c92	00 	. 
	nop			;8c93	00 	. 
	nop			;8c94	00 	. 
	nop			;8c95	00 	. 
	nop			;8c96	00 	. 
	nop			;8c97	00 	. 
	nop			;8c98	00 	. 
	nop			;8c99	00 	. 
	nop			;8c9a	00 	. 
	nop			;8c9b	00 	. 
	nop			;8c9c	00 	. 
	nop			;8c9d	00 	. 
	add a,b			;8c9e	80 	. 
	add a,b			;8c9f	80 	. 
l8ca0h:
	nop			;8ca0	00 	. 
	nop			;8ca1	00 	. 
	add a,b			;8ca2	80 	. 
	add a,b			;8ca3	80 	. 
	nop			;8ca4	00 	. 
	nop			;8ca5	00 	. 
	add a,b			;8ca6	80 	. 
	add a,b			;8ca7	80 	. 
	nop			;8ca8	00 	. 
	ld a,b			;8ca9	78 	x 
	push de			;8caa	d5 	. 
	xor l			;8cab	ad 	. 
	ld a,b			;8cac	78 	x 
	ld a,b			;8cad	78 	x 
	xor l			;8cae	ad 	. 
	push de			;8caf	d5 	. 
	ld a,b			;8cb0	78 	x 
	jr c,l8d07h		;8cb1	38 54 	8 T 
	ld l,h			;8cb3	6c 	l 
	jr c,l8cc6h		;8cb4	38 10 	8 . 
	ld l,h			;8cb6	6c 	l 
	ld d,h			;8cb7	54 	T 
	jr c,l8cbah		;8cb8	38 00 	8 . 
l8cbah:
	cp 082h		;8cba	fe 82 	. . 
	ld a,h			;8cbc	7c 	| 
	nop			;8cbd	00 	. 
	cp 082h		;8cbe	fe 82 	. . 
	ld a,h			;8cc0	7c 	| 
	nop			;8cc1	00 	. 
	cp 0aah		;8cc2	fe aa 	. . 
	ld d,h			;8cc4	54 	T 
	nop			;8cc5	00 	. 
l8cc6h:
	ld d,h			;8cc6	54 	T 
	ld d,h			;8cc7	54 	T 
	nop			;8cc8	00 	. 
	ret po			;8cc9	e0 	. 
	ld e,b			;8cca	58 	X 
	xor b			;8ccb	a8 	. 
	ret p			;8ccc	f0 	. 
	nop			;8ccd	00 	. 
	ret p			;8cce	f0 	. 
	ld d,b			;8ccf	50 	P 
	and b			;8cd0	a0 	. 
	nop			;8cd1	00 	. 
	and b			;8cd2	a0 	. 
	and b			;8cd3	a0 	. 
	nop			;8cd4	00 	. 
	nop			;8cd5	00 	. 
	nop			;8cd6	00 	. 
	nop			;8cd7	00 	. 
	nop			;8cd8	00 	. 
	nop			;8cd9	00 	. 
	nop			;8cda	00 	. 
	nop			;8cdb	00 	. 
	nop			;8cdc	00 	. 
	nop			;8cdd	00 	. 
	nop			;8cde	00 	. 
	nop			;8cdf	00 	. 
	nop			;8ce0	00 	. 
	nop			;8ce1	00 	. 
	nop			;8ce2	00 	. 
l8ce3h:
	nop			;8ce3	00 	. 
	nop			;8ce4	00 	. 
	nop			;8ce5	00 	. 
	nop			;8ce6	00 	. 
	nop			;8ce7	00 	. 
	nop			;8ce8	00 	. 
	rlca			;8ce9	07 	. 
	jr l8d04h		;8cea	18 18 	. . 
	rrca			;8cec	0f 	. 
	ld b,039h		;8ced	06 39 	. 9 
	add hl,sp			;8cef	39 	9 
	ld e,021h		;8cf0	1e 21 	. ! 
	ld e,(hl)			;8cf2	5e 	^ 
	ld a,(hl)			;8cf3	7e 	~ 
	dec a			;8cf4	3d 	= 
	inc b			;8cf5	04 	. 
	ld a,e			;8cf6	7b 	{ 
	ld a,a			;8cf7	7f 	 
	ccf			;8cf8	3f 	? 
	ld c,h			;8cf9	4c 	L 
	rst 30h			;8cfa	f7 	. 
	cp e			;8cfb	bb 	. 
	ld a,a			;8cfc	7f 	 
	inc c			;8cfd	0c 	. 
	ei			;8cfe	fb 	. 
	add a,a			;8cff	87 	. 
	ld a,a			;8d00	7f 	 
	ld b,0fdh		;8d01	06 fd 	. . 
	add a,e			;8d03	83 	. 
l8d04h:
	ld a,a			;8d04	7f 	 
	ld b,0fbh		;8d05	06 fb 	. . 
l8d07h:
	sub h			;8d07	94 	. 
	ld l,a			;8d08	6f 	o 
	nop			;8d09	00 	. 
	ret nz			;8d0a	c0 	. 
	ret nz			;8d0b	c0 	. 
	add a,b			;8d0c	80 	. 
	nop			;8d0d	00 	. 
	ret po			;8d0e	e0 	. 
	ret po			;8d0f	e0 	. 
	ret nz			;8d10	c0 	. 
	jr nz,l8ce3h		;8d11	20 d0 	  . 
	ret p			;8d13	f0 	. 
	ret po			;8d14	e0 	. 
	nop			;8d15	00 	. 
	ret p			;8d16	f0 	. 
	ret p			;8d17	f0 	. 
	ret po			;8d18	e0 	. 
	sub b			;8d19	90 	. 
	ld a,b			;8d1a	78 	x 
	ret pe			;8d1b	e8 	. 
	ret p			;8d1c	f0 	. 
	ret nc			;8d1d	d0 	. 
	xor b			;8d1e	a8 	. 
	ld a,b			;8d1f	78 	x 
	ret p			;8d20	f0 	. 
	ld (hl),b			;8d21	70 	p 
	ret c			;8d22	d8 	. 
	xor b			;8d23	a8 	. 
	ld (hl),b			;8d24	70 	p 
	ld (hl),b			;8d25	70 	p 
	xor b			;8d26	a8 	. 
	ret c			;8d27	d8 	. 
	ld (hl),b			;8d28	70 	p 
	ld (bc),a			;8d29	02 	. 
	defb 0edh;next byte illegal after ed		;8d2a	ed 	. 
	xor (hl)			;8d2b	ae 	. 
	ld b,e			;8d2c	43 	C 
	inc bc			;8d2d	03 	. 
	ld b,(hl)			;8d2e	46 	F 
	ld b,l			;8d2f	45 	E 
	inc bc			;8d30	03 	. 
	ld bc,00203h		;8d31	01 03 02 	. . . 
	ld bc,00603h		;8d34	01 03 06 	. . . 
	dec b			;8d37	05 	. 
	inc bc			;8d38	03 	. 
	inc bc			;8d39	03 	. 
	dec b			;8d3a	05 	. 
	ld b,003h		;8d3b	06 03 	. . 
	rlca			;8d3d	07 	. 
	ld a,(bc)			;8d3e	0a 	. 
	dec c			;8d3f	0d 	. 
	rlca			;8d40	07 	. 
	rlca			;8d41	07 	. 
	dec c			;8d42	0d 	. 
	ld a,(bc)			;8d43	0a 	. 
	rlca			;8d44	07 	. 
	rlca			;8d45	07 	. 
	ld a,(bc)			;8d46	0a 	. 
	dec c			;8d47	0d 	. 
	rlca			;8d48	07 	. 
	ld (bc),a			;8d49	02 	. 
	defb 0fdh,003h,0feh	;illegal sequence		;8d4a	fd 03 fe 	. . . 
	ld b,0fbh		;8d4d	06 fb 	. . 
	dec b			;8d4f	05 	. 
	cp 004h		;8d50	fe 04 	. . 
	rst 38h			;8d52	ff 	. 
	ld (bc),a			;8d53	02 	. 
	defb 0fdh,08ch	;adc a,iyh		;8d54	fd 8c 	. . 
	ei			;8d56	fb 	. 
	rlca			;8d57	07 	. 
	call m,056fch		;8d58	fc fc 56 	. . V 
	xor d			;8d5b	aa 	. 
	call m,sub_abdeh		;8d5c	fc de ab 	. . . 
	ld (hl),l			;8d5f	75 	u 
l8d60h:
	sbc a,0deh		;8d60	de de 	. . 
	ld (hl),l			;8d62	75 	u 
	xor e			;8d63	ab 	. 
	sbc a,0dfh		;8d64	de df 	. . 
	xor d			;8d66	aa 	. 
l8d67h:
	ld (hl),l			;8d67	75 	u 
	rst 18h			;8d68	df 	. 
	ld (hl),b			;8d69	70 	p 
	ret c			;8d6a	d8 	. 
	xor b			;8d6b	a8 	. 
	ld (hl),b			;8d6c	70 	p 
	jr nz,l8d67h		;8d6d	20 f8 	  . 
	ex af,af'			;8d6f	08 	. 
	ret p			;8d70	f0 	. 
	nop			;8d71	00 	. 
	ret m			;8d72	f8 	. 
	ex af,af'			;8d73	08 	. 
	ret p			;8d74	f0 	. 
	nop			;8d75	00 	. 
	ret m			;8d76	f8 	. 
	adc a,b			;8d77	88 	. 
	ld (hl),b			;8d78	70 	p 
	nop			;8d79	00 	. 
	ret m			;8d7a	f8 	. 
	xor b			;8d7b	a8 	. 
	ld d,b			;8d7c	50 	P 
	nop			;8d7d	00 	. 
	ld d,b			;8d7e	50 	P 
	ld d,b			;8d7f	50 	P 
	nop			;8d80	00 	. 
	nop			;8d81	00 	. 
	nop			;8d82	00 	. 
	nop			;8d83	00 	. 
	nop			;8d84	00 	. 
	nop			;8d85	00 	. 
	add a,b			;8d86	80 	. 
	add a,b			;8d87	80 	. 
	nop			;8d88	00 	. 
	jr c,l8d60h		;8d89	38 d5 	8 . 
	xor l			;8d8b	ad 	. 
	ld a,b			;8d8c	78 	x 
	nop			;8d8d	00 	. 
	ld a,l			;8d8e	7d 	} 
	ld d,l			;8d8f	55 	U 
	jr z,l8d92h		;8d90	28 00 	( . 
l8d92h:
	add hl,hl			;8d92	29 	) 
	add hl,hl			;8d93	29 	) 
	nop			;8d94	00 	. 
	nop			;8d95	00 	. 
	ld bc,00001h		;8d96	01 01 00 	. . . 
	nop			;8d99	00 	. 
	inc bc			;8d9a	03 	. 
	ld (bc),a			;8d9b	02 	. 
	ld bc,00300h		;8d9c	01 00 03 	. . . 
	ld (bc),a			;8d9f	02 	. 
	ld bc,00300h		;8da0	01 00 03 	. . . 
	ld (bc),a			;8da3	02 	. 
	ld bc,00100h		;8da4	01 00 01 	. . . 
	ld bc,0f000h		;8da7	01 00 f0 	. . . 
	ld e,b			;8daa	58 	X 
	xor b			;8dab	a8 	. 
	ret p			;8dac	f0 	. 
	ret p			;8dad	f0 	. 
	xor b			;8dae	a8 	. 
	ld e,b			;8daf	58 	X 
	ret p			;8db0	f0 	. 
	ret po			;8db1	e0 	. 
	ld d,b			;8db2	50 	P 
	or b			;8db3	b0 	. 
	ret po			;8db4	e0 	. 
	ld b,b			;8db5	40 	@ 
	or b			;8db6	b0 	. 
	ld d,b			;8db7	50 	P 
	ret po			;8db8	e0 	. 
	nop			;8db9	00 	. 
	ret m			;8dba	f8 	. 
	ex af,af'			;8dbb	08 	. 
	ret p			;8dbc	f0 	. 
	nop			;8dbd	00 	. 
	ret m			;8dbe	f8 	. 
	ex af,af'			;8dbf	08 	. 
	ret p			;8dc0	f0 	. 
	nop			;8dc1	00 	. 
l8dc2h:
	ret m			;8dc2	f8 	. 
	xor b			;8dc3	a8 	. 
	ld d,b			;8dc4	50 	P 
	nop			;8dc5	00 	. 
	ld d,b			;8dc6	50 	P 
	ld d,b			;8dc7	50 	P 
	nop			;8dc8	00 	. 
	ld b,000h		;8dc9	06 00 	. . 
	nop			;8dcb	00 	. 
	nop			;8dcc	00 	. 
	ld h,h			;8dcd	64 	d 
	nop			;8dce	00 	. 
	nop			;8dcf	00 	. 
	ld (bc),a			;8dd0	02 	. 
	ret po			;8dd1	e0 	. 
	nop			;8dd2	00 	. 
	nop			;8dd3	00 	. 
	djnz l8dc2h		;8dd4	10 ec 	. . 
l8dd6h:
	nop			;8dd6	00 	. 
	nop			;8dd7	00 	. 
	djnz l8df6h		;8dd8	10 1c 	. . 
	nop			;8dda	00 	. 
	nop			;8ddb	00 	. 
	ld h,d			;8ddc	62 	b 
	inc e			;8ddd	1c 	. 
	nop			;8dde	00 	. 
	nop			;8ddf	00 	. 
	ld (bc),a			;8de0	02 	. 
	ld b,b			;8de1	40 	@ 
	nop			;8de2	00 	. 
	nop			;8de3	00 	. 
	inc c			;8de4	0c 	. 
	nop			;8de5	00 	. 
	nop			;8de6	00 	. 
	nop			;8de7	00 	. 
	nop			;8de8	00 	. 
	ld h,b			;8de9	60 	` 
	nop			;8dea	00 	. 
	nop			;8deb	00 	. 
	nop			;8dec	00 	. 
	and 000h		;8ded	e6 00 	. . 
	nop			;8def	00 	. 
	djnz l8dd6h		;8df0	10 e4 	. . 
	nop			;8df2	00 	. 
	nop			;8df3	00 	. 
	ld (de),a			;8df4	12 	. 
	nop			;8df5	00 	. 
l8df6h:
	nop			;8df6	00 	. 
	nop			;8df7	00 	. 
	ld h,b			;8df8	60 	` 
	ld b,000h		;8df9	06 00 	. . 
	nop			;8dfb	00 	. 
	nop			;8dfc	00 	. 
	ld l,000h		;8dfd	2e 00 	. . 
	nop			;8dff	00 	. 
	ld bc,0000eh		;8e00	01 0e 00 	. . . 
	nop			;8e03	00 	. 
	ld bc,00000h		;8e04	01 00 00 	. . . 
	nop			;8e07	00 	. 
	ld b,000h		;8e08	06 00 	. . 
	nop			;8e0a	00 	. 
	nop			;8e0b	00 	. 
	nop			;8e0c	00 	. 
	nop			;8e0d	00 	. 
	nop			;8e0e	00 	. 
	nop			;8e0f	00 	. 
	nop			;8e10	00 	. 
	nop			;8e11	00 	. 
	jr nc,$+50		;8e12	30 30 	0 0 
	nop			;8e14	00 	. 
	nop			;8e15	00 	. 
	ld a,b			;8e16	78 	x 
	ld a,b			;8e17	78 	x 
	jr nc,l8e1ah		;8e18	30 00 	0 . 
l8e1ah:
	call m,078fch		;8e1a	fc fc 78 	. . x 
	nop			;8e1d	00 	. 
	call m,048fch		;8e1e	fc fc 48 	. . H 
	ex af,af'			;8e21	08 	. 
	ld d,h			;8e22	54 	T 
	ld e,h			;8e23	5c 	\ 
	nop			;8e24	00 	. 
	nop			;8e25	00 	. 
l8e26h:
	inc e			;8e26	1c 	. 
	inc e			;8e27	1c 	. 
	ex af,af'			;8e28	08 	. 
	nop			;8e29	00 	. 
	rra			;8e2a	1f 	. 
	rra			;8e2b	1f 	. 
	nop			;8e2c	00 	. 
	ld bc,03f3eh		;8e2d	01 3e 3f 	. > ? 
	ld e,030h		;8e30	1e 30 	. 0 
	ld c,a			;8e32	4f 	O 
	ld c,a			;8e33	4f 	O 
	rrca			;8e34	0f 	. 
	djnz l8e26h		;8e35	10 ef 	. . 
	rst 28h			;8e37	ef 	. 
	ld c,a			;8e38	4f 	O 
	dec b			;8e39	05 	. 
	jp m,07affh		;8e3a	fa ff 7a 	. . z 
	ld b,d			;8e3d	42 	B 
	dec a			;8e3e	3d 	= 
	ld a,a			;8e3f	7f 	 
	nop			;8e40	00 	. 
	ld a,000h		;8e41	3e 00 	> . 
	ld a,000h		;8e43	3e 00 	> . 
	ld b,b			;8e45	40 	@ 
	nop			;8e46	00 	. 
	ld b,b			;8e47	40 	@ 
	nop			;8e48	00 	. 
	nop			;8e49	00 	. 
	rlca			;8e4a	07 	. 
	rlca			;8e4b	07 	. 
	ld (bc),a			;8e4c	02 	. 
	ld (bc),a			;8e4d	02 	. 
	defb 0edh;next byte illegal after ed		;8e4e	ed 	. 
	rst 28h			;8e4f	ef 	. 
	inc b			;8e50	04 	. 
	and h			;8e51	a4 	. 
	ld e,e			;8e52	5b 	[ 
	rst 38h			;8e53	ff 	. 
	ld b,d			;8e54	42 	B 
	sub h			;8e55	94 	. 
	ld l,e			;8e56	6b 	k 
	rst 38h			;8e57	ff 	. 
	ld l,d			;8e58	6a 	j 
	or h			;8e59	b4 	. 
	ld c,d			;8e5a	4a 	J 
	cp 048h		;8e5b	fe 48 	. H 
	sub d			;8e5d	92 	. 
	ld l,h			;8e5e	6c 	l 
	cp 000h		;8e5f	fe 00 	. . 
	ld c,c			;8e61	49 	I 
	nop			;8e62	00 	. 
	ld c,c			;8e63	49 	I 
	nop			;8e64	00 	. 
	ex af,af'			;8e65	08 	. 
	nop			;8e66	00 	. 
	ex af,af'			;8e67	08 	. 
	nop			;8e68	00 	. 
	nop			;8e69	00 	. 
	nop			;8e6a	00 	. 
	nop			;8e6b	00 	. 
	nop			;8e6c	00 	. 
	nop			;8e6d	00 	. 
	nop			;8e6e	00 	. 
	nop			;8e6f	00 	. 
	nop			;8e70	00 	. 
	nop			;8e71	00 	. 
	nop			;8e72	00 	. 
	nop			;8e73	00 	. 
	nop			;8e74	00 	. 
	nop			;8e75	00 	. 
	jr nc,l8ea8h		;8e76	30 30 	0 0 
	nop			;8e78	00 	. 
	nop			;8e79	00 	. 
	ld a,b			;8e7a	78 	x 
	ld a,b			;8e7b	78 	x 
	jr nc,l8e86h		;8e7c	30 08 	0 . 
	call p,070fch		;8e7e	f4 fc 70 	. . p 
	nop			;8e81	00 	. 
	call m,048fch		;8e82	fc fc 48 	. . H 
	inc b			;8e85	04 	. 
l8e86h:
	ld a,d			;8e86	7a 	z 
	ld a,(hl)			;8e87	7e 	~ 
	jr nz,l8e8ah		;8e88	20 00 	  . 
l8e8ah:
	rrca			;8e8a	0f 	. 
	rrca			;8e8b	0f 	. 
	nop			;8e8c	00 	. 
	nop			;8e8d	00 	. 
	rra			;8e8e	1f 	. 
	rra			;8e8f	1f 	. 
	rrca			;8e90	0f 	. 
	jr l8ebah		;8e91	18 27 	. ' 
	daa			;8e93	27 	' 
	rlca			;8e94	07 	. 
	ex af,af'			;8e95	08 	. 
	ld (hl),a			;8e96	77 	w 
	ld (hl),a			;8e97	77 	w 
	daa			;8e98	27 	' 
	dec b			;8e99	05 	. 
	ld a,d			;8e9a	7a 	z 
	ld a,a			;8e9b	7f 	 
	ld a,(03a85h)		;8e9c	3a 85 3a 	: . : 
	cp a			;8e9f	bf 	. 
	nop			;8ea0	00 	. 
	ld a,l			;8ea1	7d 	} 
	nop			;8ea2	00 	. 
	ld a,l			;8ea3	7d 	} 
	nop			;8ea4	00 	. 
	add a,b			;8ea5	80 	. 
	nop			;8ea6	00 	. 
	add a,b			;8ea7	80 	. 
l8ea8h:
	nop			;8ea8	00 	. 
	nop			;8ea9	00 	. 
	xor (hl)			;8eaa	ae 	. 
	xor (hl)			;8eab	ae 	. 
	inc b			;8eac	04 	. 
	add a,(hl)			;8ead	86 	. 
	ld a,c			;8eae	79 	y 
	rst 38h			;8eaf	ff 	. 
	nop			;8eb0	00 	. 
	ld d,d			;8eb1	52 	R 
	xor l			;8eb2	ad 	. 
	rst 38h			;8eb3	ff 	. 
	and h			;8eb4	a4 	. 
	ld c,d			;8eb5	4a 	J 
	or l			;8eb6	b5 	. 
	rst 38h			;8eb7	ff 	. 
	or h			;8eb8	b4 	. 
	ld l,h			;8eb9	6c 	l 
l8ebah:
	sub d			;8eba	92 	. 
	cp 090h		;8ebb	fe 90 	. . 
	inc h			;8ebd	24 	$ 
	ret c			;8ebe	d8 	. 
	call m,02400h		;8ebf	fc 00 24 	. . $ 
	nop			;8ec2	00 	. 
	inc h			;8ec3	24 	$ 
	nop			;8ec4	00 	. 
	jr nz,l8ec7h		;8ec5	20 00 	  . 
l8ec7h:
	jr nz,l8ec9h		;8ec7	20 00 	  . 
l8ec9h:
	nop			;8ec9	00 	. 
	rlca			;8eca	07 	. 
	rlca			;8ecb	07 	. 
	nop			;8ecc	00 	. 
	dec b			;8ecd	05 	. 
	rra			;8ece	1f 	. 
	ld a,(de)			;8ecf	1a 	. 
	dec b			;8ed0	05 	. 
	rla			;8ed1	17 	. 
	jr c,l8efch		;8ed2	38 28 	8 ( 
	rla			;8ed4	17 	. 
	ccf			;8ed5	3f 	? 
	ld (hl),b			;8ed6	70 	p 
	ld b,b			;8ed7	40 	@ 
	ccf			;8ed8	3f 	? 
	rla			;8ed9	17 	. 
	ld l,b			;8eda	68 	h 
	ld l,b			;8edb	68 	h 
	rla			;8edc	17 	. 
	ld a,e			;8edd	7b 	{ 
	call po,07b84h		;8ede	e4 84 7b 	. . { 
	dec a			;8ee1	3d 	= 
	jp nz,03dc2h		;8ee2	c2 c2 3d 	. . = 
	ld a,b			;8ee5	78 	x 
	rst 0			;8ee6	c7 	. 
	add a,a			;8ee7	87 	. 
	ld a,b			;8ee8	78 	x 
	nop			;8ee9	00 	. 
	ret p			;8eea	f0 	. 
	ret p			;8eeb	f0 	. 
	nop			;8eec	00 	. 
	ret p			;8eed	f0 	. 
	inc c			;8eee	0c 	. 
	inc c			;8eef	0c 	. 
	ret p			;8ef0	f0 	. 
	call m,00202h		;8ef1	fc 02 02 	. . . 
	sbc a,h			;8ef4	9c 	. 
	sbc a,(hl)			;8ef5	9e 	. 
	ld h,c			;8ef6	61 	a 
	ld h,c			;8ef7	61 	a 
	ld c,09eh		;8ef8	0e 9e 	. . 
	ld h,c			;8efa	61 	a 
	ld h,c			;8efb	61 	a 
l8efch:
	inc c			;8efc	0c 	. 
	ret m			;8efd	f8 	. 
	ld b,006h		;8efe	06 06 	. . 
	sbc a,d			;8f00	9a 	. 
l8f01h:
	ret m			;8f01	f8 	. 
	rlca			;8f02	07 	. 
	rlca			;8f03	07 	. 
	rst 30h			;8f04	f7 	. 
	jp po,01d1dh		;8f05	e2 1d 1d 	. . . 
	call pe,04f37h		;8f08	ec 37 4f 	. 7 O 
	ld c,b			;8f0b	48 	H 
	scf			;8f0c	37 	7 
	scf			;8f0d	37 	7 
	ld c,a			;8f0e	4f 	O 
	ld c,b			;8f0f	48 	H 
	scf			;8f10	37 	7 
	ld e,e			;8f11	5b 	[ 
	rst 20h			;8f12	e7 	. 
	and h			;8f13	a4 	. 
	ld e,e			;8f14	5b 	[ 
	inc e			;8f15	1c 	. 
	ex (sp),hl			;8f16	e3 	. 
	ex (sp),hl			;8f17	e3 	. 
	inc e			;8f18	1c 	. 
	ld l,a			;8f19	6f 	o 
	ret p			;8f1a	f0 	. 
	sub b			;8f1b	90 	. 
	ld l,a			;8f1c	6f 	o 
	inc de			;8f1d	13 	. 
	ld a,h			;8f1e	7c 	| 
	ld l,h			;8f1f	6c 	l 
	inc de			;8f20	13 	. 
	inc d			;8f21	14 	. 
	ccf			;8f22	3f 	? 
	dec hl			;8f23	2b 	+ 
	inc d			;8f24	14 	. 
	nop			;8f25	00 	. 
	inc e			;8f26	1c 	. 
	inc e			;8f27	1c 	. 
	nop			;8f28	00 	. 
	ld l,d			;8f29	6a 	j 
	sub l			;8f2a	95 	. 
	sub l			;8f2b	95 	. 
	ld d,d			;8f2c	52 	R 
	ld c,0f1h		;8f2d	0e f1 	. . 
	pop af			;8f2f	f1 	. 
	ld c,05ch		;8f30	0e 5c 	. \ 
	and d			;8f32	a2 	. 
	and d			;8f33	a2 	. 
	ld e,h			;8f34	5c 	\ 
	call pe,01216h		;8f35	ec 16 12 	. . . 
	call pe,01cf0h		;8f38	ec f0 1c 	. . . 
	inc c			;8f3b	0c 	. 
	ret p			;8f3c	f0 	. 
	ret nz			;8f3d	c0 	. 
	ld a,b			;8f3e	78 	x 
	jr c,l8f01h		;8f3f	38 c0 	8 . 
	nop			;8f41	00 	. 
	ret nz			;8f42	c0 	. 
	ret nz			;8f43	c0 	. 
	nop			;8f44	00 	. 
	nop			;8f45	00 	. 
	nop			;8f46	00 	. 
	nop			;8f47	00 	. 
	nop			;8f48	00 	. 
	nop			;8f49	00 	. 
	inc e			;8f4a	1c 	. 
	inc e			;8f4b	1c 	. 
	nop			;8f4c	00 	. 
	inc d			;8f4d	14 	. 
	ccf			;8f4e	3f 	? 
	dec hl			;8f4f	2b 	+ 
	inc d			;8f50	14 	. 
	inc de			;8f51	13 	. 
	ld a,h			;8f52	7c 	| 
	ld l,h			;8f53	6c 	l 
	inc de			;8f54	13 	. 
	ld l,a			;8f55	6f 	o 
	ret p			;8f56	f0 	. 
	sub b			;8f57	90 	. 
	ld l,a			;8f58	6f 	o 
	inc e			;8f59	1c 	. 
	ex (sp),hl			;8f5a	e3 	. 
	ex (sp),hl			;8f5b	e3 	. 
	inc e			;8f5c	1c 	. 
	ld e,e			;8f5d	5b 	[ 
	rst 20h			;8f5e	e7 	. 
	and h			;8f5f	a4 	. 
	ld e,e			;8f60	5b 	[ 
	scf			;8f61	37 	7 
	ld c,a			;8f62	4f 	O 
	ld c,b			;8f63	48 	H 
	scf			;8f64	37 	7 
	scf			;8f65	37 	7 
	ld c,a			;8f66	4f 	O 
	ld c,b			;8f67	48 	H 
	scf			;8f68	37 	7 
	nop			;8f69	00 	. 
	ret po			;8f6a	e0 	. 
	ret po			;8f6b	e0 	. 
	nop			;8f6c	00 	. 
	and b			;8f6d	a0 	. 
	ret m			;8f6e	f8 	. 
	ld e,b			;8f6f	58 	X 
	and b			;8f70	a0 	. 
	ret pe			;8f71	e8 	. 
	inc a			;8f72	3c 	< 
	inc d			;8f73	14 	. 
	ret pe			;8f74	e8 	. 
	call m,0020eh		;8f75	fc 0e 02 	. . . 
	call m,016e8h		;8f78	fc e8 16 	. . . 
	ld d,0e8h		;8f7b	16 e8 	. . 
	ld e,(hl)			;8f7d	5e 	^ 
	and e			;8f7e	a3 	. 
	and c			;8f7f	a1 	. 
	ld e,(hl)			;8f80	5e 	^ 
	inc a			;8f81	3c 	< 
	jp 03cc3h		;8f82	c3 c3 3c 	. . < 
	ld a,(hl)			;8f85	7e 	~ 
	add a,e			;8f86	83 	. 
	add a,c			;8f87	81 	. 
	ld a,(hl)			;8f88	7e 	~ 
	ld (hl),c			;8f89	71 	q 
	adc a,(hl)			;8f8a	8e 	. 
	adc a,(hl)			;8f8b	8e 	. 
	ld (hl),c			;8f8c	71 	q 
	ld a,e			;8f8d	7b 	{ 
	call nz,07b84h		;8f8e	c4 84 7b 	. . { 
	inc sp			;8f91	33 	3 
	ld c,h			;8f92	4c 	L 
	ld c,h			;8f93	4c 	L 
	ld sp,07728h		;8f94	31 28 77 	1 ( w 
	ld d,a			;8f97	57 	W 
	ld hl,(0611eh)		;8f98	2a 1e 61 	* . a 
	ld h,c			;8f9b	61 	a 
	dec e			;8f9c	1d 	. 
	inc e			;8f9d	1c 	. 
	inc sp			;8f9e	33 	3 
	inc hl			;8f9f	23 	# 
	dec e			;8fa0	1d 	. 
	rlca			;8fa1	07 	. 
	jr l8fbch		;8fa2	18 18 	. . 
	ld b,000h		;8fa4	06 00 	. . 
	rlca			;8fa6	07 	. 
	rlca			;8fa7	07 	. 
	nop			;8fa8	00 	. 
	call m,00202h		;8fa9	fc 02 02 	. . . 
	call z,032cch		;8fac	cc cc 32 	. . 2 
	ld (0cc84h),a		;8faf	32 84 cc 	2 . . 
	ld (08432h),a		;8fb2	32 32 84 	2 2 . 
	call m,00202h		;8fb5	fc 02 02 	. . . 
	call z,004f8h		;8fb8	cc f8 04 	. . . 
	inc b			;8fbb	04 	. 
l8fbch:
	ld a,b			;8fbc	78 	x 
	jr c,$-58		;8fbd	38 c4 	8 . 
	call nz,030b8h		;8fbf	c4 b8 30 	. . 0 
	ret z			;8fc2	c8 	. 
	ret z			;8fc3	c8 	. 
	ret nc			;8fc4	d0 	. 
	nop			;8fc5	00 	. 
l8fc6h:
	or b			;8fc6	b0 	. 
	or b			;8fc7	b0 	. 
l8fc8h:
	add a,b			;8fc8	80 	. 
	nop			;8fc9	00 	. 
	nop			;8fca	00 	. 
	nop			;8fcb	00 	. 
	nop			;8fcc	00 	. 
	nop			;8fcd	00 	. 
	nop			;8fce	00 	. 
	nop			;8fcf	00 	. 
	nop			;8fd0	00 	. 
	nop			;8fd1	00 	. 
	rrca			;8fd2	0f 	. 
	rrca			;8fd3	0f 	. 
	nop			;8fd4	00 	. 
	rrca			;8fd5	0f 	. 
	rra			;8fd6	1f 	. 
	djnz l8fd9h		;8fd7	10 00 	. . 
l8fd9h:
	rra			;8fd9	1f 	. 
	ccf			;8fda	3f 	? 
	jr nz,l8fddh		;8fdb	20 00 	  . 
l8fddh:
	rra			;8fdd	1f 	. 
	ccf			;8fde	3f 	? 
	jr nz,l8fe1h		;8fdf	20 00 	  . 
l8fe1h:
	ccf			;8fe1	3f 	? 
	ld h,a			;8fe2	67 	g 
	ld b,b			;8fe3	40 	@ 
	nop			;8fe4	00 	. 
	ld (hl),a			;8fe5	77 	w 
	rst 28h			;8fe6	ef 	. 
	adc a,b			;8fe7	88 	. 
	nop			;8fe8	00 	. 
	nop			;8fe9	00 	. 
	nop			;8fea	00 	. 
	nop			;8feb	00 	. 
	nop			;8fec	00 	. 
	nop			;8fed	00 	. 
	nop			;8fee	00 	. 
	nop			;8fef	00 	. 
	nop			;8ff0	00 	. 
	nop			;8ff1	00 	. 
	add a,b			;8ff2	80 	. 
	add a,b			;8ff3	80 	. 
	nop			;8ff4	00 	. 
	add a,b			;8ff5	80 	. 
	ret nz			;8ff6	c0 	. 
	ld b,b			;8ff7	40 	@ 
	nop			;8ff8	00 	. 
	ret nz			;8ff9	c0 	. 
	ret po			;8ffa	e0 	. 
	jr nz,l8ffdh		;8ffb	20 00 	  . 
l8ffdh:
	ret nz			;8ffd	c0 	. 
l8ffeh:
	ret po			;8ffe	e0 	. 
	jr nz,l9001h		;8fff	20 00 	  . 
l9001h:
	ret po			;9001	e0 	. 
	jr nc,l9014h		;9002	30 10 	0 . 
	nop			;9004	00 	. 
	ld (hl),b			;9005	70 	p 
	cp b			;9006	b8 	. 
	adc a,b			;9007	88 	. 
	nop			;9008	00 	. 
	ccf			;9009	3f 	? 
	ld a,a			;900a	7f 	 
	ld b,b			;900b	40 	@ 
	nop			;900c	00 	. 
	rra			;900d	1f 	. 
	inc sp			;900e	33 	3 
	jr nz,l9011h		;900f	20 00 	  . 
l9011h:
	rrca			;9011	0f 	. 
	djnz l9024h		;9012	10 10 	. . 
l9014h:
	nop			;9014	00 	. 
	rrca			;9015	0f 	. 
	rla			;9016	17 	. 
	djnz l9019h		;9017	10 00 	. . 
l9019h:
	rlca			;9019	07 	. 
	dec hl			;901a	2b 	+ 
	jr c,l902dh		;901b	38 10 	8 . 
	rlca			;901d	07 	. 
	ld c,b			;901e	48 	H 
	ld a,b			;901f	78 	x 
	jr nc,$+5		;9020	30 03 	0 . 
	ld b,h			;9022	44 	D 
	ld a,h			;9023	7c 	| 
l9024h:
	jr c,$+5		;9024	38 03 	8 . 
	add a,h			;9026	84 	. 
	call m,0f878h		;9027	fc 78 f8 	. x . 
	call m,00004h		;902a	fc 04 00 	. . . 
l902dh:
	ret p			;902d	f0 	. 
	sbc a,b			;902e	98 	. 
	ex af,af'			;902f	08 	. 
	nop			;9030	00 	. 
	ret po			;9031	e0 	. 
	ld d,010h		;9032	16 10 	. . 
	nop			;9034	00 	. 
	ret po			;9035	e0 	. 
	sub 010h		;9036	d6 10 	. . 
	nop			;9038	00 	. 
	ret nz			;9039	c0 	. 
	xor (hl)			;903a	ae 	. 
	ld a,010h		;903b	3e 10 	> . 
	add a,02fh		;903d	c6 2f 	. / 
	add hl,sp			;903f	39 	9 
	djnz l8fc8h		;9040	10 86 	. . 
	ld c,a			;9042	4f 	O 
	ld a,c			;9043	79 	y 
	jr nc,l8fc6h		;9044	30 80 	0 . 
l9046h:
	ld b,(hl)			;9046	46 	F 
	ld a,(hl)			;9047	7e 	~ 
l9048h:
	jr c,$+3		;9048	38 01 	8 . 
	jp p,00cfeh		;904a	f2 fe 0c 	. . . 
	ld (hl),c			;904d	71 	q 
	jp m,0048eh		;904e	fa 8e 04 	. . . 
	ld h,b			;9051	60 	` 
	pop af			;9052	f1 	. 
	sbc a,a			;9053	9f 	. 
	ld c,000h		;9054	0e 00 	. . 
	xor 0ffh		;9056	ee ff 	. . 
	ld de,l9f0eh		;9058	11 0e 9f 	. . . 
	pop af			;905b	f1 	. 
	ld h,b			;905c	60 	` 
	ld c,05fh		;905d	0e 5f 	. _ 
	ld (hl),c			;905f	71 	q 
	jr nz,l9068h		;9060	20 06 	  . 
	ccf			;9062	3f 	? 
	add hl,sp			;9063	39 	9 
	nop			;9064	00 	. 
	nop			;9065	00 	. 
	ld b,006h		;9066	06 06 	. . 
l9068h:
	nop			;9068	00 	. 
	nop			;9069	00 	. 
	add a,d			;906a	82 	. 
	call m,0007ch		;906b	fc 7c 00 	. | . 
	add a,(hl)			;906e	86 	. 
	call m,00078h		;906f	fc 78 00 	. x . 
	ld (bc),a			;9072	02 	. 
	call m,000fch		;9073	fc fc 00 	. . . 
	jp po,01cfch		;9076	e2 fc 1c 	. . . 
	ret po			;9079	e0 	. 
	jp p,00c1ch		;907a	f2 1c 0c 	. . . 
	ret po			;907d	e0 	. 
	or 01ch		;907e	f6 1c 	. . 
	ex af,af'			;9080	08 	. 
	ret nz			;9081	c0 	. 
	jp m,00038h		;9082	fa 38 00 	. 8 . 
	nop			;9085	00 	. 
	jp nz,000c0h		;9086	c2 c0 00 	. . . 
	ccf			;9089	3f 	? 
	ld a,a			;908a	7f 	 
	ld b,b			;908b	40 	@ 
	nop			;908c	00 	. 
	rra			;908d	1f 	. 
	inc sp			;908e	33 	3 
	jr nz,l9091h		;908f	20 00 	  . 
l9091h:
	rrca			;9091	0f 	. 
	djnz l90a4h		;9092	10 10 	. . 
	nop			;9094	00 	. 
	inc c			;9095	0c 	. 
	rla			;9096	17 	. 
	inc de			;9097	13 	. 
	inc bc			;9098	03 	. 
	inc b			;9099	04 	. 
	cpl			;909a	2f 	/ 
	dec sp			;909b	3b 	; 
	inc de			;909c	13 	. 
	rlca			;909d	07 	. 
	ld c,e			;909e	4b 	K 
	ld a,b			;909f	78 	x 
	jr nc,$+5		;90a0	30 03 	0 . 
	ld b,h			;90a2	44 	D 
	ld a,h			;90a3	7c 	| 
l90a4h:
	jr c,$+5		;90a4	38 03 	8 . 
	add a,h			;90a6	84 	. 
	call m,0f878h		;90a7	fc 78 f8 	. x . 
	call m,00004h		;90aa	fc 04 00 	. . . 
	ret p			;90ad	f0 	. 
	sbc a,b			;90ae	98 	. 
	ex af,af'			;90af	08 	. 
	nop			;90b0	00 	. 
	ret po			;90b1	e0 	. 
	ld d,010h		;90b2	16 10 	. . 
	nop			;90b4	00 	. 
	ld h,b			;90b5	60 	` 
	sub 090h		;90b6	d6 90 	. . 
	add a,b			;90b8	80 	. 
	ld b,b			;90b9	40 	@ 
	xor 0beh		;90ba	ee be 	. . 
	sub b			;90bc	90 	. 
	add a,0afh		;90bd	c6 af 	. . 
	add hl,sp			;90bf	39 	9 
	djnz l9048h		;90c0	10 86 	. . 
	ld c,a			;90c2	4f 	O 
	ld a,c			;90c3	79 	y 
	jr nc,l9046h		;90c4	30 80 	0 . 
	ld b,(hl)			;90c6	46 	F 
	ld a,(hl)			;90c7	7e 	~ 
	jr c,l90cah		;90c8	38 00 	8 . 
l90cah:
	nop			;90ca	00 	. 
	nop			;90cb	00 	. 
	nop			;90cc	00 	. 
	nop			;90cd	00 	. 
	nop			;90ce	00 	. 
	nop			;90cf	00 	. 
	nop			;90d0	00 	. 
	nop			;90d1	00 	. 
	rst 38h			;90d2	ff 	. 
	rst 38h			;90d3	ff 	. 
	nop			;90d4	00 	. 
	nop			;90d5	00 	. 
	rst 38h			;90d6	ff 	. 
	rst 38h			;90d7	ff 	. 
	nop			;90d8	00 	. 
	nop			;90d9	00 	. 
	inc e			;90da	1c 	. 
	inc e			;90db	1c 	. 
	ld h,e			;90dc	63 	c 
	nop			;90dd	00 	. 
	inc e			;90de	1c 	. 
	inc e			;90df	1c 	. 
	ld h,e			;90e0	63 	c 
	nop			;90e1	00 	. 
	inc e			;90e2	1c 	. 
	inc e			;90e3	1c 	. 
sub_90e4h:
	ld h,e			;90e4	63 	c 
	nop			;90e5	00 	. 
	inc e			;90e6	1c 	. 
	inc e			;90e7	1c 	. 
	ld h,e			;90e8	63 	c 
	nop			;90e9	00 	. 
	inc a			;90ea	3c 	< 
	inc a			;90eb	3c 	< 
	nop			;90ec	00 	. 
	nop			;90ed	00 	. 
	ld h,(hl)			;90ee	66 	f 
	ld h,(hl)			;90ef	66 	f 
	nop			;90f0	00 	. 
	nop			;90f1	00 	. 
	rst 38h			;90f2	ff 	. 
l90f3h:
	rst 38h			;90f3	ff 	. 
	nop			;90f4	00 	. 
	nop			;90f5	00 	. 
	rst 38h			;90f6	ff 	. 
l90f7h:
	rst 38h			;90f7	ff 	. 
	nop			;90f8	00 	. 
	nop			;90f9	00 	. 
	rst 20h			;90fa	e7 	. 
l90fbh:
	rst 20h			;90fb	e7 	. 
	jr l90feh		;90fc	18 00 	. . 
l90feh:
	rst 20h			;90fe	e7 	. 
l90ffh:
	rst 20h			;90ff	e7 	. 
	jr l9102h		;9100	18 00 	. . 
l9102h:
	rst 20h			;9102	e7 	. 
l9103h:
	rst 20h			;9103	e7 	. 
	jr l9106h		;9104	18 00 	. . 
l9106h:
	rst 20h			;9106	e7 	. 
l9107h:
	add a,c			;9107	81 	. 
	jr l910ah		;9108	18 00 	. . 
l910ah:
	nop			;910a	00 	. 
	nop			;910b	00 	. 
	nop			;910c	00 	. 
l910dh:
	nop			;910d	00 	. 
	nop			;910e	00 	. 
	nop			;910f	00 	. 
	nop			;9110	00 	. 
l9111h:
	nop			;9111	00 	. 
	rst 38h			;9112	ff 	. 
	rst 38h			;9113	ff 	. 
	nop			;9114	00 	. 
l9115h:
	nop			;9115	00 	. 
	rst 38h			;9116	ff 	. 
	rst 38h			;9117	ff 	. 
	nop			;9118	00 	. 
	nop			;9119	00 	. 
	jr c,l9154h		;911a	38 38 	8 8 
	add a,000h		;911c	c6 00 	. . 
	jr c,l9158h		;911e	38 38 	8 8 
	add a,000h		;9120	c6 00 	. . 
	jr c,l915ch		;9122	38 38 	8 8 
	add a,000h		;9124	c6 00 	. . 
	jr c,l9160h		;9126	38 38 	8 8 
	add a,000h		;9128	c6 00 	. . 
	add hl,sp			;912a	39 	9 
	jr c,l90f3h		;912b	38 c6 	8 . 
	nop			;912d	00 	. 
	add hl,sp			;912e	39 	9 
	jr c,l90f7h		;912f	38 c6 	8 . 
	nop			;9131	00 	. 
	add hl,sp			;9132	39 	9 
	jr c,l90fbh		;9133	38 c6 	8 . 
	ex af,af'			;9135	08 	. 
	add hl,sp			;9136	39 	9 
	jr nc,l90ffh		;9137	30 c6 	0 . 
	add hl,bc			;9139	09 	. 
	add hl,sp			;913a	39 	9 
	jr nc,l9103h		;913b	30 c6 	0 . 
	add hl,bc			;913d	09 	. 
	add hl,sp			;913e	39 	9 
	jr nc,l9107h		;913f	30 c6 	0 . 
	add hl,bc			;9141	09 	. 
	jr c,l9174h		;9142	38 30 	8 0 
	add a,009h		;9144	c6 09 	. . 
	jr c,$+50		;9146	38 30 	8 0 
	add a,000h		;9148	c6 00 	. . 
	adc a,000h		;914a	ce 00 	. . 
	ld sp,0ce00h		;914c	31 00 ce 	1 . . 
	nop			;914f	00 	. 
	ld sp,0ce00h		;9150	31 00 ce 	1 . . 
	nop			;9153	00 	. 
l9154h:
	ld sp,0ce40h		;9154	31 40 ce 	1 @ . 
l9157h:
	nop			;9157	00 	. 
l9158h:
	ld sp,0cec8h		;9158	31 c8 ce 	1 . . 
	nop			;915b	00 	. 
l915ch:
	ld sp,002ceh		;915c	31 ce 02 	1 . . 
	nop			;915f	00 	. 
l9160h:
	ld sp,04886h		;9160	31 86 48 	1 . H 
	ld c,b			;9163	48 	H 
	ld sp,04886h		;9164	31 86 48 	1 . H 
	ld c,b			;9167	48 	H 
	ld sp,07000h		;9168	31 00 70 	1 . p 
	ld (hl),b			;916b	70 	p 
	adc a,h			;916c	8c 	. 
	nop			;916d	00 	. 
	ld (hl),b			;916e	70 	p 
	ld (hl),b			;916f	70 	p 
	adc a,h			;9170	8c 	. 
	nop			;9171	00 	. 
	ld (hl),b			;9172	70 	p 
	ld (hl),b			;9173	70 	p 
l9174h:
	adc a,h			;9174	8c 	. 
	ld b,b			;9175	40 	@ 
	ld (hl),b			;9176	70 	p 
	jr nc,$-114		;9177	30 8c 	0 . 
	ld b,b			;9179	40 	@ 
	ld (hl),b			;917a	70 	p 
	jr nc,$-114		;917b	30 8c 	0 . 
	ld b,b			;917d	40 	@ 
	ld (hl),b			;917e	70 	p 
	jr nc,l910dh		;917f	30 8c 	0 . 
	ld b,b			;9181	40 	@ 
	ld (hl),b			;9182	70 	p 
	jr nc,l9111h		;9183	30 8c 	0 . 
	ld b,b			;9185	40 	@ 
	ld (hl),b			;9186	70 	p 
	jr nc,l9115h		;9187	30 8c 	0 . 
	add hl,bc			;9189	09 	. 
	jr c,$+50		;918a	38 30 	8 0 
	add a,001h		;918c	c6 01 	. . 
	add hl,sp			;918e	39 	9 
	jr c,l9157h		;918f	38 c6 	8 . 
	ld bc,03839h		;9191	01 39 38 	. 9 8 
	add a,000h		;9194	c6 00 	. . 
	ccf			;9196	3f 	? 
	ccf			;9197	3f 	? 
	ret nz			;9198	c0 	. 
	rlca			;9199	07 	. 
	ccf			;919a	3f 	? 
	jr c,$-62		;919b	38 c0 	8 . 
	ld b,03fh		;919d	06 3f 	. ? 
	add hl,sp			;919f	39 	9 
	ret nz			;91a0	c0 	. 
	ld b,03fh		;91a1	06 3f 	. ? 
	add hl,sp			;91a3	39 	9 
	ret nz			;91a4	c0 	. 
	nop			;91a5	00 	. 
	ccf			;91a6	3f 	? 
	ccf			;91a7	3f 	? 
	pop bc			;91a8	c1 	. 
	adc a,000h		;91a9	ce 00 	. . 
	nop			;91ab	00 	. 
	ld sp,0ceceh		;91ac	31 ce ce 	1 . . 
	nop			;91af	00 	. 
	ld sp,0ceceh		;91b0	31 ce ce 	1 . . 
	nop			;91b3	00 	. 
	ld sp,0cf00h		;91b4	31 00 cf 	1 . . 
	rst 8			;91b7	cf 	. 
	jr nc,$+5		;91b8	30 03 	0 . 
	rst 8			;91ba	cf 	. 
	call z,0cd78h		;91bb	cc 78 cd 	. x . 
	rst 8			;91be	cf 	. 
	adc a,030h		;91bf	ce 30 	. 0 
	call 0cecfh		;91c1	cd cf ce 	. . . 
	jr nc,l91c6h		;91c4	30 00 	0 . 
l91c6h:
	rst 8			;91c6	cf 	. 
	rst 8			;91c7	cf 	. 
	cp 040h		;91c8	fe 40 	. @ 
	ld (hl),b			;91ca	70 	p 
	jr nc,$-114		;91cb	30 8c 	0 . 
	nop			;91cd	00 	. 
	ld (hl),b			;91ce	70 	p 
	ld (hl),b			;91cf	70 	p 
	adc a,h			;91d0	8c 	. 
	nop			;91d1	00 	. 
	ld (hl),b			;91d2	70 	p 
	ld (hl),b			;91d3	70 	p 
	adc a,h			;91d4	8c 	. 
	nop			;91d5	00 	. 
	ret p			;91d6	f0 	. 
	ret p			;91d7	f0 	. 
	inc c			;91d8	0c 	. 
	add a,b			;91d9	80 	. 
	ret p			;91da	f0 	. 
	ld (hl),b			;91db	70 	p 
	inc c			;91dc	0c 	. 
	add a,b			;91dd	80 	. 
	ret p			;91de	f0 	. 
	ld (hl),b			;91df	70 	p 
	inc c			;91e0	0c 	. 
	add a,b			;91e1	80 	. 
	ret p			;91e2	f0 	. 
	ld (hl),b			;91e3	70 	p 
	inc c			;91e4	0c 	. 
	nop			;91e5	00 	. 
	ret p			;91e6	f0 	. 
	ret p			;91e7	f0 	. 
	inc c			;91e8	0c 	. 
	nop			;91e9	00 	. 
	inc e			;91ea	1c 	. 
	inc e			;91eb	1c 	. 
	ld h,e			;91ec	63 	c 
	nop			;91ed	00 	. 
	inc e			;91ee	1c 	. 
	inc e			;91ef	1c 	. 
	ld h,e			;91f0	63 	c 
	nop			;91f1	00 	. 
	inc e			;91f2	1c 	. 
	inc e			;91f3	1c 	. 
	ld h,e			;91f4	63 	c 
l91f5h:
	nop			;91f5	00 	. 
	inc e			;91f6	1c 	. 
	inc e			;91f7	1c 	. 
	ld h,e			;91f8	63 	c 
	nop			;91f9	00 	. 
	inc e			;91fa	1c 	. 
	inc e			;91fb	1c 	. 
	ld h,e			;91fc	63 	c 
	nop			;91fd	00 	. 
	inc e			;91fe	1c 	. 
	inc e			;91ff	1c 	. 
	ld h,e			;9200	63 	c 
	nop			;9201	00 	. 
	rst 38h			;9202	ff 	. 
	rst 38h			;9203	ff 	. 
	nop			;9204	00 	. 
	nop			;9205	00 	. 
	rst 38h			;9206	ff 	. 
	rst 38h			;9207	ff 	. 
	nop			;9208	00 	. 
	rst 20h			;9209	e7 	. 
	rst 20h			;920a	e7 	. 
	rst 20h			;920b	e7 	. 
	jr l91f5h		;920c	18 e7 	. . 
	rst 20h			;920e	e7 	. 
	rst 20h			;920f	e7 	. 
	jr l9236h		;9210	18 24 	. $ 
	rst 20h			;9212	e7 	. 
	and l			;9213	a5 	. 
	ld e,d			;9214	5a 	Z 
	nop			;9215	00 	. 
	rst 20h			;9216	e7 	. 
	nop			;9217	00 	. 
	rst 38h			;9218	ff 	. 
	nop			;9219	00 	. 
	rst 20h			;921a	e7 	. 
	nop			;921b	00 	. 
	rst 38h			;921c	ff 	. 
	nop			;921d	00 	. 
	rst 20h			;921e	e7 	. 
	rst 20h			;921f	e7 	. 
	jr l9222h		;9220	18 00 	. . 
l9222h:
	rst 38h			;9222	ff 	. 
	rst 38h			;9223	ff 	. 
	nop			;9224	00 	. 
	nop			;9225	00 	. 
	rst 38h			;9226	ff 	. 
	rst 38h			;9227	ff 	. 
	nop			;9228	00 	. 
	nop			;9229	00 	. 
	jr c,l9264h		;922a	38 38 	8 8 
	add a,000h		;922c	c6 00 	. . 
	jr c,l9268h		;922e	38 38 	8 8 
	add a,000h		;9230	c6 00 	. . 
	jr c,l926ch		;9232	38 38 	8 8 
	add a,000h		;9234	c6 00 	. . 
l9236h:
	jr c,$+58		;9236	38 38 	8 8 
	add a,000h		;9238	c6 00 	. . 
	jr c,$+58		;923a	38 38 	8 8 
	add a,000h		;923c	c6 00 	. . 
	jr c,l9278h		;923e	38 38 	8 8 
	add a,000h		;9240	c6 00 	. . 
	rst 38h			;9242	ff 	. 
	rst 38h			;9243	ff 	. 
	nop			;9244	00 	. 
	nop			;9245	00 	. 
	rst 38h			;9246	ff 	. 
	rst 38h			;9247	ff 	. 
	nop			;9248	00 	. 
	nop			;9249	00 	. 
	rlca			;924a	07 	. 
	rlca			;924b	07 	. 
	nop			;924c	00 	. 
	nop			;924d	00 	. 
	rra			;924e	1f 	. 
	jr l9251h		;924f	18 00 	. . 
l9251h:
	nop			;9251	00 	. 
	ccf			;9252	3f 	? 
	jr nz,l9255h		;9253	20 00 	  . 
l9255h:
	nop			;9255	00 	. 
	ld a,a			;9256	7f 	 
	ld b,b			;9257	40 	@ 
	nop			;9258	00 	. 
	nop			;9259	00 	. 
	ld a,a			;925a	7f 	 
	ld b,b			;925b	40 	@ 
	nop			;925c	00 	. 
	ld b,e			;925d	43 	C 
	rst 38h			;925e	ff 	. 
	add a,b			;925f	80 	. 
	nop			;9260	00 	. 
	ld c,a			;9261	4f 	O 
	rst 38h			;9262	ff 	. 
	add a,b			;9263	80 	. 
l9264h:
	nop			;9264	00 	. 
	ld e,a			;9265	5f 	_ 
	ld sp,hl			;9266	f9 	. 
	add a,b			;9267	80 	. 
l9268h:
	nop			;9268	00 	. 
	nop			;9269	00 	. 
	ret po			;926a	e0 	. 
	ret po			;926b	e0 	. 
l926ch:
	nop			;926c	00 	. 
	nop			;926d	00 	. 
	ret m			;926e	f8 	. 
	jr l9271h		;926f	18 00 	. . 
l9271h:
	nop			;9271	00 	. 
	call m,00004h		;9272	fc 04 00 	. . . 
	nop			;9275	00 	. 
	cp 002h		;9276	fe 02 	. . 
l9278h:
	nop			;9278	00 	. 
	nop			;9279	00 	. 
	cp 002h		;927a	fe 02 	. . 
	nop			;927c	00 	. 
	ld (bc),a			;927d	02 	. 
	rst 38h			;927e	ff 	. 
	ld bc,0c200h		;927f	01 00 c2 	. . . 
	rst 38h			;9282	ff 	. 
	ld bc,0fa00h		;9283	01 00 fa 	. . . 
	sbc a,a			;9286	9f 	. 
	ld bc,05d00h		;9287	01 00 5d 	. . ] 
	di			;928a	f3 	. 
	add a,d			;928b	82 	. 
	nop			;928c	00 	. 
	ld e,l			;928d	5d 	] 
	di			;928e	f3 	. 
	add a,d			;928f	82 	. 
	nop			;9290	00 	. 
	ld e,a			;9291	5f 	_ 
	pop af			;9292	f1 	. 
	add a,b			;9293	80 	. 
	nop			;9294	00 	. 
	rra			;9295	1f 	. 
	ld a,(hl)			;9296	7e 	~ 
	ld b,c			;9297	41 	A 
	nop			;9298	00 	. 
	rrca			;9299	0f 	. 
	ccf			;929a	3f 	? 
l929bh:
	jr nz,l929dh		;929b	20 00 	  . 
l929dh:
	nop			;929d	00 	. 
	rra			;929e	1f 	. 
	rra			;929f	1f 	. 
	nop			;92a0	00 	. 
	ex af,af'			;92a1	08 	. 
	dec de			;92a2	1b 	. 
	ld e,003h		;92a3	1e 03 	. . 
	ld c,03fh		;92a5	0e 3f 	. ? 
	ld l,011h		;92a7	2e 11 	. . 
	cp d			;92a9	ba 	. 
	rst 8			;92aa	cf 	. 
	ld b,c			;92ab	41 	A 
	nop			;92ac	00 	. 
	cp d			;92ad	ba 	. 
	rst 8			;92ae	cf 	. 
	ld b,c			;92af	41 	A 
	nop			;92b0	00 	. 
	jp m,0018fh		;92b1	fa 8f 01 	. . . 
	nop			;92b4	00 	. 
	ret m			;92b5	f8 	. 
	ld a,(hl)			;92b6	7e 	~ 
	add a,d			;92b7	82 	. 
	nop			;92b8	00 	. 
	ret p			;92b9	f0 	. 
	call m,00004h		;92ba	fc 04 00 	. . . 
	nop			;92bd	00 	. 
	ret m			;92be	f8 	. 
	ret m			;92bf	f8 	. 
	nop			;92c0	00 	. 
	djnz l929bh		;92c1	10 d8 	. . 
	ld a,b			;92c3	78 	x 
	ret nz			;92c4	c0 	. 
	ld (hl),b			;92c5	70 	p 
	call m,sub_8874h		;92c6	fc 74 88 	. t . 
	rra			;92c9	1f 	. 
	rst 38h			;92ca	ff 	. 
	sbc a,a			;92cb	9f 	. 
	ld h,b			;92cc	60 	` 
	ld h,b			;92cd	60 	` 
	rst 38h			;92ce	ff 	. 
	sbc a,a			;92cf	9f 	. 
	rra			;92d0	1f 	. 
	ld a,a			;92d1	7f 	 
	rst 38h			;92d2	ff 	. 
	sbc a,a			;92d3	9f 	. 
	nop			;92d4	00 	. 
	inc e			;92d5	1c 	. 
	ld a,a			;92d6	7f 	 
	ld a,a			;92d7	7f 	 
	nop			;92d8	00 	. 
	inc b			;92d9	04 	. 
	rra			;92da	1f 	. 
	rla			;92db	17 	. 
	ex af,af'			;92dc	08 	. 
	nop			;92dd	00 	. 
	ccf			;92de	3f 	? 
	inc hl			;92df	23 	# 
	inc e			;92e0	1c 	. 
l92e1h:
	nop			;92e1	00 	. 
	ld a,a			;92e2	7f 	 
	ld b,e			;92e3	43 	C 
	inc a			;92e4	3c 	< 
	nop			;92e5	00 	. 
	ld a,h			;92e6	7c 	| 
	ld a,h			;92e7	7c 	| 
	nop			;92e8	00 	. 
	ret po			;92e9	e0 	. 
	call m,018e4h		;92ea	fc e4 18 	. . . 
	jr $-2		;92ed	18 fc 	. . 
	call po,0f8e0h		;92ef	e4 e0 f8 	. . . 
	call m,000e4h		;92f2	fc e4 00 	. . . 
	ret po			;92f5	e0 	. 
	ret m			;92f6	f8 	. 
	ret m			;92f7	f8 	. 
	nop			;92f8	00 	. 
	add a,b			;92f9	80 	. 
	ret po			;92fa	e0 	. 
	and b			;92fb	a0 	. 
	ld b,b			;92fc	40 	@ 
	nop			;92fd	00 	. 
	ret p			;92fe	f0 	. 
	djnz l92e1h		;92ff	10 e0 	. . 
	nop			;9301	00 	. 
	ret m			;9302	f8 	. 
	ex af,af'			;9303	08 	. 
	ret p			;9304	f0 	. 
	nop			;9305	00 	. 
	ret m			;9306	f8 	. 
	ret m			;9307	f8 	. 
	nop			;9308	00 	. 
	ld e,l			;9309	5d 	] 
	di			;930a	f3 	. 
	add a,d			;930b	82 	. 
	nop			;930c	00 	. 
	ld e,l			;930d	5d 	] 
	di			;930e	f3 	. 
	add a,d			;930f	82 	. 
	nop			;9310	00 	. 
	ld e,a			;9311	5f 	_ 
	jp p,00081h		;9312	f2 81 00 	. . . 
	inc e			;9315	1c 	. 
	ld a,a			;9316	7f 	 
	ld b,e			;9317	43 	C 
	inc bc			;9318	03 	. 
	ld c,03fh		;9319	0e 3f 	. ? 
l931bh:
	ld hl,00301h		;931b	21 01 03 	! . . 
	rra			;931e	1f 	. 
	inc e			;931f	1c 	. 
	nop			;9320	00 	. 
	ex af,af'			;9321	08 	. 
	dec de			;9322	1b 	. 
	rra			;9323	1f 	. 
	nop			;9324	00 	. 
	ld c,03fh		;9325	0e 3f 	. ? 
	ld l,011h		;9327	2e 11 	. . 
	cp d			;9329	ba 	. 
	rst 8			;932a	cf 	. 
	ld b,c			;932b	41 	A 
	nop			;932c	00 	. 
	cp d			;932d	ba 	. 
	rst 8			;932e	cf 	. 
	ld b,c			;932f	41 	A 
	nop			;9330	00 	. 
	jp m,0814fh		;9331	fa 4f 81 	. O . 
	nop			;9334	00 	. 
l9335h:
	jr c,l9335h		;9335	38 fe 	8 . 
	jp nz,070c0h		;9337	c2 c0 70 	. . p 
	call m,sub_8084h		;933a	fc 84 80 	. . . 
	ret nz			;933d	c0 	. 
	ret m			;933e	f8 	. 
	jr c,l9341h		;933f	38 00 	8 . 
l9341h:
	djnz l931bh		;9341	10 d8 	. . 
	ret m			;9343	f8 	. 
	nop			;9344	00 	. 
	ld (hl),b			;9345	70 	p 
	call m,sub_8874h		;9346	fc 74 88 	. t . 
	nop			;9349	00 	. 
	dec de			;934a	1b 	. 
	dec de			;934b	1b 	. 
	nop			;934c	00 	. 
	dec de			;934d	1b 	. 
	inc h			;934e	24 	$ 
	inc h			;934f	24 	$ 
	nop			;9350	00 	. 
	rrca			;9351	0f 	. 
	djnz l9364h		;9352	10 10 	. . 
	nop			;9354	00 	. 
	rlca			;9355	07 	. 
	ex af,af'			;9356	08 	. 
	ex af,af'			;9357	08 	. 
	nop			;9358	00 	. 
	inc bc			;9359	03 	. 
	rrca			;935a	0f 	. 
	inc c			;935b	0c 	. 
	nop			;935c	00 	. 
	rrca			;935d	0f 	. 
	jr nc,l9390h		;935e	30 30 	0 0 
	nop			;9360	00 	. 
	ccf			;9361	3f 	? 
	ld b,b			;9362	40 	@ 
	ld b,b			;9363	40 	@ 
l9364h:
	nop			;9364	00 	. 
	ld a,e			;9365	7b 	{ 
	add a,h			;9366	84 	. 
	add a,h			;9367	84 	. 
	nop			;9368	00 	. 
	nop			;9369	00 	. 
	ld h,b			;936a	60 	` 
	ld h,b			;936b	60 	` 
	nop			;936c	00 	. 
	ld h,b			;936d	60 	` 
	sub b			;936e	90 	. 
	sub b			;936f	90 	. 
	nop			;9370	00 	. 
	ret nz			;9371	c0 	. 
	jr nz,l9394h		;9372	20 20 	    
	nop			;9374	00 	. 
	add a,b			;9375	80 	. 
	ld b,b			;9376	40 	@ 
	ld b,b			;9377	40 	@ 
	nop			;9378	00 	. 
	nop			;9379	00 	. 
	ret nz			;937a	c0 	. 
	ret nz			;937b	c0 	. 
	nop			;937c	00 	. 
	ret nz			;937d	c0 	. 
	jr nc,l93b0h		;937e	30 30 	0 0 
	nop			;9380	00 	. 
	ret p			;9381	f0 	. 
	ex af,af'			;9382	08 	. 
	ex af,af'			;9383	08 	. 
	nop			;9384	00 	. 
	ld a,b			;9385	78 	x 
	add a,h			;9386	84 	. 
	add a,h			;9387	84 	. 
	nop			;9388	00 	. 
	jr c,l93d2h		;9389	38 47 	8 G 
	ld b,a			;938b	47 	G 
	nop			;938c	00 	. 
	ld a,l			;938d	7d 	} 
	add a,d			;938e	82 	. 
	add a,d			;938f	82 	. 
l9390h:
	nop			;9390	00 	. 
	ld a,b			;9391	78 	x 
	add a,a			;9392	87 	. 
	add a,a			;9393	87 	. 
l9394h:
	nop			;9394	00 	. 
	ld a,l			;9395	7d 	} 
	add a,d			;9396	82 	. 
	add a,d			;9397	82 	. 
	nop			;9398	00 	. 
	ld a,l			;9399	7d 	} 
	add a,d			;939a	82 	. 
	add a,d			;939b	82 	. 
	nop			;939c	00 	. 
	inc a			;939d	3c 	< 
	ld b,e			;939e	43 	C 
	ld b,e			;939f	43 	C 
	nop			;93a0	00 	. 
	rrca			;93a1	0f 	. 
	jr nc,l93d4h		;93a2	30 30 	0 0 
	nop			;93a4	00 	. 
	nop			;93a5	00 	. 
	rrca			;93a6	0f 	. 
	rrca			;93a7	0f 	. 
	nop			;93a8	00 	. 
	inc e			;93a9	1c 	. 
	jp po,000e2h		;93aa	e2 e2 00 	. . . 
	cp (hl)			;93ad	be 	. 
	ld b,c			;93ae	41 	A 
	ld b,c			;93af	41 	A 
l93b0h:
	nop			;93b0	00 	. 
	ld e,0e1h		;93b1	1e e1 	. . 
	pop hl			;93b3	e1 	. 
	nop			;93b4	00 	. 
	cp (hl)			;93b5	be 	. 
	ld b,c			;93b6	41 	A 
	ld b,c			;93b7	41 	A 
	nop			;93b8	00 	. 
	cp (hl)			;93b9	be 	. 
	ld b,c			;93ba	41 	A 
	ld b,c			;93bb	41 	A 
	nop			;93bc	00 	. 
	inc a			;93bd	3c 	< 
	jp nz,000c2h		;93be	c2 c2 00 	. . . 
	ret p			;93c1	f0 	. 
	inc c			;93c2	0c 	. 
	inc c			;93c3	0c 	. 
	nop			;93c4	00 	. 
	nop			;93c5	00 	. 
	ret p			;93c6	f0 	. 
	ret p			;93c7	f0 	. 
	nop			;93c8	00 	. 
	nop			;93c9	00 	. 
	nop			;93ca	00 	. 
	nop			;93cb	00 	. 
	nop			;93cc	00 	. 
	nop			;93cd	00 	. 
	nop			;93ce	00 	. 
	nop			;93cf	00 	. 
	nop			;93d0	00 	. 
	nop			;93d1	00 	. 
l93d2h:
	nop			;93d2	00 	. 
	nop			;93d3	00 	. 
l93d4h:
	nop			;93d4	00 	. 
	nop			;93d5	00 	. 
	nop			;93d6	00 	. 
	nop			;93d7	00 	. 
	nop			;93d8	00 	. 
	nop			;93d9	00 	. 
	ld d,h			;93da	54 	T 
	ld d,h			;93db	54 	T 
	nop			;93dc	00 	. 
	ld d,h			;93dd	54 	T 
	xor d			;93de	aa 	. 
	xor d			;93df	aa 	. 
	nop			;93e0	00 	. 
	jr c,l9427h		;93e1	38 44 	8 D 
	ld b,h			;93e3	44 	D 
	nop			;93e4	00 	. 
	djnz $+58		;93e5	10 38 	. 8 
	jr z,l93e9h		;93e7	28 00 	( . 
l93e9h:
	ld c,031h		;93e9	0e 31 	. 1 
	ld sp,03500h		;93eb	31 00 35 	1 . 5 
	ld c,d			;93ee	4a 	J 
	ld c,d			;93ef	4a 	J 
	nop			;93f0	00 	. 
	ld h,b			;93f1	60 	` 
	sbc a,a			;93f2	9f 	. 
	sbc a,a			;93f3	9f 	. 
	nop			;93f4	00 	. 
	ld (hl),l			;93f5	75 	u 
	adc a,d			;93f6	8a 	. 
	adc a,d			;93f7	8a 	. 
	nop			;93f8	00 	. 
	ld h,b			;93f9	60 	` 
	sbc a,a			;93fa	9f 	. 
	sbc a,a			;93fb	9f 	. 
	nop			;93fc	00 	. 
	ld (hl),l			;93fd	75 	u 
	adc a,d			;93fe	8a 	. 
	adc a,d			;93ff	8a 	. 
	nop			;9400	00 	. 
	ld sp,04e4eh		;9401	31 4e 4e 	1 N N 
	nop			;9404	00 	. 
	nop			;9405	00 	. 
	ccf			;9406	3f 	? 
	ccf			;9407	3f 	? 
	nop			;9408	00 	. 
	nop			;9409	00 	. 
	add a,b			;940a	80 	. 
	add a,b			;940b	80 	. 
	nop			;940c	00 	. 
	add a,b			;940d	80 	. 
	ld b,b			;940e	40 	@ 
	ld b,b			;940f	40 	@ 
	nop			;9410	00 	. 
	ret nz			;9411	c0 	. 
	jr nz,l9434h		;9412	20 20 	    
	nop			;9414	00 	. 
l9415h:
	ret nz			;9415	c0 	. 
	jr nz,l9438h		;9416	20 20 	    
	nop			;9418	00 	. 
	ret nz			;9419	c0 	. 
	jr nz,l943ch		;941a	20 20 	    
	nop			;941c	00 	. 
	ret nz			;941d	c0 	. 
	jr nz,l9440h		;941e	20 20 	    
	nop			;9420	00 	. 
	add a,b			;9421	80 	. 
	ld b,b			;9422	40 	@ 
	ld b,b			;9423	40 	@ 
	nop			;9424	00 	. 
	nop			;9425	00 	. 
	add a,b			;9426	80 	. 
l9427h:
	add a,b			;9427	80 	. 
	nop			;9428	00 	. 
	nop			;9429	00 	. 
	djnz l943ch		;942a	10 10 	. . 
	djnz l943eh		;942c	10 10 	. . 
	djnz l9430h		;942e	10 00 	. . 
l9430h:
	nop			;9430	00 	. 
	jr z,l946bh		;9431	28 38 	( 8 
	nop			;9433	00 	. 
l9434h:
	djnz l947ah		;9434	10 44 	. D 
	cp 082h		;9436	fe 82 	. . 
l9438h:
	cp d			;9438	ba 	. 
	jr z,l9473h		;9439	28 38 	( 8 
	nop			;943b	00 	. 
l943ch:
	djnz l944eh		;943c	10 10 	. . 
l943eh:
	djnz l9440h		;943e	10 00 	. . 
l9440h:
	nop			;9440	00 	. 
	nop			;9441	00 	. 
	djnz l9454h		;9442	10 10 	. . 
	djnz l9446h		;9444	10 00 	. . 
l9446h:
	nop			;9446	00 	. 
	nop			;9447	00 	. 
	nop			;9448	00 	. 
	nop			;9449	00 	. 
	ld bc,00101h		;944a	01 01 01 	. . . 
	nop			;944d	00 	. 
l944eh:
	ld bc,00101h		;944e	01 01 01 	. . . 
	ld bc,00001h		;9451	01 01 00 	. . . 
l9454h:
	nop			;9454	00 	. 
	ld bc,01a1bh		;9455	01 1b 1a 	. . . 
	ld a,(de)			;9458	1a 	. 
	ld a,(bc)			;9459	0a 	. 
	rra			;945a	1f 	. 
	inc d			;945b	14 	. 
	dec d			;945c	15 	. 
	ld (bc),a			;945d	02 	. 
	rrca			;945e	0f 	. 
	ex af,af'			;945f	08 	. 
	dec c			;9460	0d 	. 
	inc c			;9461	0c 	. 
	rra			;9462	1f 	. 
	djnz l9478h		;9463	10 13 	. . 
	jr nc,$+1		;9465	30 ff 	0 . 
	ret nz			;9467	c0 	. 
	rst 8			;9468	cf 	. 
	nop			;9469	00 	. 
	nop			;946a	00 	. 
l946bh:
	nop			;946b	00 	. 
	nop			;946c	00 	. 
	nop			;946d	00 	. 
	nop			;946e	00 	. 
	nop			;946f	00 	. 
	nop			;9470	00 	. 
	nop			;9471	00 	. 
	nop			;9472	00 	. 
l9473h:
	nop			;9473	00 	. 
	nop			;9474	00 	. 
	nop			;9475	00 	. 
	or b			;9476	b0 	. 
	or b			;9477	b0 	. 
l9478h:
	or b			;9478	b0 	. 
	and b			;9479	a0 	. 
l947ah:
	ret p			;947a	f0 	. 
	ld d,b			;947b	50 	P 
	ld d,b			;947c	50 	P 
	add a,b			;947d	80 	. 
	ret po			;947e	e0 	. 
	jr nz,l94e1h		;947f	20 60 	  ` 
	ld h,b			;9481	60 	` 
	ret p			;9482	f0 	. 
	djnz l9415h		;9483	10 90 	. . 
l9485h:
	jr l9485h		;9485	18 fe 	. . 
	ld b,0e6h		;9487	06 e6 	. . 
	ld h,e			;9489	63 	c 
	rst 38h			;948a	ff 	. 
	add a,b			;948b	80 	. 
	sbc a,h			;948c	9c 	. 
	inc d			;948d	14 	. 
	ld a,a			;948e	7f 	 
	ld b,c			;948f	41 	A 
	ld l,e			;9490	6b 	k 
	ld d,l			;9491	55 	U 
	rst 38h			;9492	ff 	. 
	and d			;9493	a2 	. 
	xor d			;9494	aa 	. 
	ex af,af'			;9495	08 	. 
	defb 0ddh,0d5h,0d5h	;illegal sequence		;9496	dd d5 d5 	. . . 
	ex af,af'			;9499	08 	. 
	ex af,af'			;949a	08 	. 
	nop			;949b	00 	. 
	nop			;949c	00 	. 
	nop			;949d	00 	. 
	ex af,af'			;949e	08 	. 
	ex af,af'			;949f	08 	. 
	ex af,af'			;94a0	08 	. 
	nop			;94a1	00 	. 
	ex af,af'			;94a2	08 	. 
	ex af,af'			;94a3	08 	. 
	ex af,af'			;94a4	08 	. 
	nop			;94a5	00 	. 
	nop			;94a6	00 	. 
	nop			;94a7	00 	. 
	nop			;94a8	00 	. 
	nop			;94a9	00 	. 
	add a,b			;94aa	80 	. 
	add a,b			;94ab	80 	. 
	add a,b			;94ac	80 	. 
	nop			;94ad	00 	. 
	nop			;94ae	00 	. 
	nop			;94af	00 	. 
	nop			;94b0	00 	. 
	nop			;94b1	00 	. 
	add a,b			;94b2	80 	. 
	add a,b			;94b3	80 	. 
	add a,b			;94b4	80 	. 
	nop			;94b5	00 	. 
	add a,b			;94b6	80 	. 
	add a,b			;94b7	80 	. 
	add a,b			;94b8	80 	. 
	nop			;94b9	00 	. 
	nop			;94ba	00 	. 
	nop			;94bb	00 	. 
	nop			;94bc	00 	. 
	nop			;94bd	00 	. 
	nop			;94be	00 	. 
	nop			;94bf	00 	. 
	nop			;94c0	00 	. 
	nop			;94c1	00 	. 
	nop			;94c2	00 	. 
	nop			;94c3	00 	. 
	nop			;94c4	00 	. 
	nop			;94c5	00 	. 
	nop			;94c6	00 	. 
	nop			;94c7	00 	. 
	nop			;94c8	00 	. 
	nop			;94c9	00 	. 
	nop			;94ca	00 	. 
	nop			;94cb	00 	. 
	nop			;94cc	00 	. 
	nop			;94cd	00 	. 
	nop			;94ce	00 	. 
	nop			;94cf	00 	. 
	nop			;94d0	00 	. 
	nop			;94d1	00 	. 
	add a,b			;94d2	80 	. 
	add a,b			;94d3	80 	. 
	add a,b			;94d4	80 	. 
	nop			;94d5	00 	. 
	ld h,l			;94d6	65 	e 
	ld h,l			;94d7	65 	e 
	ld h,l			;94d8	65 	e 
	nop			;94d9	00 	. 
	ld a,a			;94da	7f 	 
	ld a,a			;94db	7f 	 
	ld a,a			;94dc	7f 	 
	jr l951eh		;94dd	18 3f 	. ? 
	daa			;94df	27 	' 
	daa			;94e0	27 	' 
l94e1h:
	rra			;94e1	1f 	. 
	ccf			;94e2	3f 	? 
	jr nz,l9505h		;94e3	20 20 	    
	add hl,bc			;94e5	09 	. 
	ld a,a			;94e6	7f 	 
	ld (hl),b			;94e7	70 	p 
	halt			;94e8	76 	v 
	nop			;94e9	00 	. 
	ld b,b			;94ea	40 	@ 
	ld b,b			;94eb	40 	@ 
	ld b,b			;94ec	40 	@ 
	ld b,b			;94ed	40 	@ 
	ret po			;94ee	e0 	. 
	and b			;94ef	a0 	. 
	and b			;94f0	a0 	. 
	ld b,b			;94f1	40 	@ 
	ret po			;94f2	e0 	. 
	and b			;94f3	a0 	. 
	and b			;94f4	a0 	. 
	ld b,b			;94f5	40 	@ 
	call p,sub_b4b4h		;94f6	f4 b4 b4 	. . . 
	and b			;94f9	a0 	. 
	rst 38h			;94fa	ff 	. 
	rra			;94fb	1f 	. 
	ld e,a			;94fc	5f 	_ 
	and e			;94fd	a3 	. 
	rst 38h			;94fe	ff 	. 
	inc e			;94ff	1c 	. 
	ld e,h			;9500	5c 	\ 
	cp a			;9501	bf 	. 
	rst 38h			;9502	ff 	. 
	nop			;9503	00 	. 
	ld b,b			;9504	40 	@ 
l9505h:
	ld (de),a			;9505	12 	. 
	rst 38h			;9506	ff 	. 
	ld bc,000edh		;9507	01 ed 00 	. . . 
	nop			;950a	00 	. 
	nop			;950b	00 	. 
	nop			;950c	00 	. 
	nop			;950d	00 	. 
	nop			;950e	00 	. 
	nop			;950f	00 	. 
	nop			;9510	00 	. 
	nop			;9511	00 	. 
	jr nz,l9534h		;9512	20 20 	    
	jr nz,l9516h		;9514	20 00 	  . 
l9516h:
	ret nz			;9516	c0 	. 
	ret nz			;9517	c0 	. 
	ret nz			;9518	c0 	. 
	nop			;9519	00 	. 
	ret nz			;951a	c0 	. 
	ret nz			;951b	c0 	. 
	ret nz			;951c	c0 	. 
	nop			;951d	00 	. 
l951eh:
	add a,b			;951e	80 	. 
	add a,b			;951f	80 	. 
	add a,b			;9520	80 	. 
	nop			;9521	00 	. 
	add a,b			;9522	80 	. 
	add a,b			;9523	80 	. 
	add a,b			;9524	80 	. 
	nop			;9525	00 	. 
	ret nz			;9526	c0 	. 
	ret nz			;9527	c0 	. 
	ret nz			;9528	c0 	. 
	ld (bc),a			;9529	02 	. 
	rrca			;952a	0f 	. 
	inc c			;952b	0c 	. 
	dec c			;952c	0d 	. 
	inc bc			;952d	03 	. 
	rra			;952e	1f 	. 
	inc e			;952f	1c 	. 
	inc e			;9530	1c 	. 
	ld c,07fh		;9531	0e 7f 	.  
	ld (hl),b			;9533	70 	p 
l9534h:
	ld (hl),c			;9534	71 	q 
	ld (hl),b			;9535	70 	p 
	rst 38h			;9536	ff 	. 
	add a,b			;9537	80 	. 
	adc a,a			;9538	8f 	. 
	ld c,07fh		;9539	0e 7f 	.  
	ld (hl),b			;953b	70 	p 
	ld (hl),c			;953c	71 	q 
	inc bc			;953d	03 	. 
	rra			;953e	1f 	. 
	inc e			;953f	1c 	. 
	inc e			;9540	1c 	. 
	ld (bc),a			;9541	02 	. 
	rrca			;9542	0f 	. 
	inc c			;9543	0c 	. 
	dec c			;9544	0d 	. 
	ld (bc),a			;9545	02 	. 
	rra			;9546	1f 	. 
	inc e			;9547	1c 	. 
	dec e			;9548	1d 	. 
	nop			;9549	00 	. 
	rst 28h			;954a	ef 	. 
	nop			;954b	00 	. 
	rst 28h			;954c	ef 	. 
	ld bc,000abh		;954d	01 ab 00 	. . . 
	xor d			;9550	aa 	. 
	nop			;9551	00 	. 
	rst 0			;9552	c7 	. 
	nop			;9553	00 	. 
	rst 0			;9554	c7 	. 
	nop			;9555	00 	. 
	ld bc,00100h		;9556	01 00 01 	. . . 
	nop			;9559	00 	. 
	rst 0			;955a	c7 	. 
	nop			;955b	00 	. 
	rst 0			;955c	c7 	. 
	ld bc,000abh		;955d	01 ab 00 	. . . 
	xor d			;9560	aa 	. 
	nop			;9561	00 	. 
	rst 28h			;9562	ef 	. 
	nop			;9563	00 	. 
	rst 28h			;9564	ef 	. 
	ld b,h			;9565	44 	D 
	rst 38h			;9566	ff 	. 
	nop			;9567	00 	. 
	cp e			;9568	bb 	. 
	add a,b			;9569	80 	. 
	ret po			;956a	e0 	. 
	ld h,b			;956b	60 	` 
	ld h,b			;956c	60 	` 
	add a,b			;956d	80 	. 
	ret p			;956e	f0 	. 
	ld (hl),b			;956f	70 	p 
	ld (hl),b			;9570	70 	p 
	ret po			;9571	e0 	. 
	call m,01c1ch		;9572	fc 1c 1c 	. . . 
	inc e			;9575	1c 	. 
	cp 002h		;9576	fe 02 	. . 
	jp po,0fce0h		;9578	e2 e0 fc 	. . . 
	inc e			;957b	1c 	. 
	inc e			;957c	1c 	. 
	add a,b			;957d	80 	. 
	ret p			;957e	f0 	. 
	ld (hl),b			;957f	70 	p 
	ld (hl),b			;9580	70 	p 
	add a,b			;9581	80 	. 
	ret po			;9582	e0 	. 
	ld h,b			;9583	60 	` 
	ld h,b			;9584	60 	` 
	add a,b			;9585	80 	. 
	ret p			;9586	f0 	. 
	ld (hl),b			;9587	70 	p 
	ld (hl),b			;9588	70 	p 
	rra			;9589	1f 	. 
	ccf			;958a	3f 	? 
	jr nz,l95adh		;958b	20 20 	    
	jr l95ceh		;958d	18 3f 	. ? 
	daa			;958f	27 	' 
	daa			;9590	27 	' 
	nop			;9591	00 	. 
	ld a,a			;9592	7f 	 
	ld a,a			;9593	7f 	 
	ld a,a			;9594	7f 	 
	nop			;9595	00 	. 
	ld h,l			;9596	65 	e 
	ld h,l			;9597	65 	e 
	ld h,l			;9598	65 	e 
	nop			;9599	00 	. 
	add a,b			;959a	80 	. 
	add a,b			;959b	80 	. 
	add a,b			;959c	80 	. 
	nop			;959d	00 	. 
	nop			;959e	00 	. 
	nop			;959f	00 	. 
	nop			;95a0	00 	. 
	nop			;95a1	00 	. 
	nop			;95a2	00 	. 
	nop			;95a3	00 	. 
	nop			;95a4	00 	. 
	nop			;95a5	00 	. 
	nop			;95a6	00 	. 
	nop			;95a7	00 	. 
	nop			;95a8	00 	. 
	cp a			;95a9	bf 	. 
	rst 38h			;95aa	ff 	. 
	nop			;95ab	00 	. 
	ld b,b			;95ac	40 	@ 
l95adh:
	and e			;95ad	a3 	. 
	rst 38h			;95ae	ff 	. 
	inc e			;95af	1c 	. 
	ld e,h			;95b0	5c 	\ 
	and b			;95b1	a0 	. 
	rst 38h			;95b2	ff 	. 
	rra			;95b3	1f 	. 
	ld e,a			;95b4	5f 	_ 
	ld b,b			;95b5	40 	@ 
	call p,sub_b4b4h		;95b6	f4 b4 b4 	. . . 
	ld b,b			;95b9	40 	@ 
	ret po			;95ba	e0 	. 
	and b			;95bb	a0 	. 
	and b			;95bc	a0 	. 
	ld b,b			;95bd	40 	@ 
	ret po			;95be	e0 	. 
	and b			;95bf	a0 	. 
	and b			;95c0	a0 	. 
	nop			;95c1	00 	. 
	ld b,b			;95c2	40 	@ 
	ld b,b			;95c3	40 	@ 
	ld b,b			;95c4	40 	@ 
	nop			;95c5	00 	. 
	nop			;95c6	00 	. 
	nop			;95c7	00 	. 
	nop			;95c8	00 	. 
	nop			;95c9	00 	. 
	add a,b			;95ca	80 	. 
	add a,b			;95cb	80 	. 
	add a,b			;95cc	80 	. 
	nop			;95cd	00 	. 
l95ceh:
	add a,b			;95ce	80 	. 
	add a,b			;95cf	80 	. 
	add a,b			;95d0	80 	. 
	nop			;95d1	00 	. 
	ret nz			;95d2	c0 	. 
	ret nz			;95d3	c0 	. 
	ret nz			;95d4	c0 	. 
	nop			;95d5	00 	. 
	ret nz			;95d6	c0 	. 
	ret nz			;95d7	c0 	. 
	ret nz			;95d8	c0 	. 
	nop			;95d9	00 	. 
	jr nz,l95fch		;95da	20 20 	    
	jr nz,l95deh		;95dc	20 00 	  . 
l95deh:
	nop			;95de	00 	. 
	nop			;95df	00 	. 
	nop			;95e0	00 	. 
	nop			;95e1	00 	. 
	nop			;95e2	00 	. 
	nop			;95e3	00 	. 
	nop			;95e4	00 	. 
	nop			;95e5	00 	. 
	nop			;95e6	00 	. 
	nop			;95e7	00 	. 
	nop			;95e8	00 	. 
	nop			;95e9	00 	. 
	nop			;95ea	00 	. 
	nop			;95eb	00 	. 
	nop			;95ec	00 	. 
	nop			;95ed	00 	. 
	rlca			;95ee	07 	. 
	rlca			;95ef	07 	. 
	nop			;95f0	00 	. 
	rlca			;95f1	07 	. 
	jr l960ch		;95f2	18 18 	. . 
	rlca			;95f4	07 	. 
	rra			;95f5	1f 	. 
	jr nz,l9618h		;95f6	20 20 	    
	rra			;95f8	1f 	. 
	ccf			;95f9	3f 	? 
	ld b,b			;95fa	40 	@ 
	ld b,b			;95fb	40 	@ 
l95fch:
	ccf			;95fc	3f 	? 
l95fdh:
	ccf			;95fd	3f 	? 
	ld e,a			;95fe	5f 	_ 
	ld b,b			;95ff	40 	@ 
	ccf			;9600	3f 	? 
	ld (hl),b			;9601	70 	p 
	adc a,a			;9602	8f 	. 
	adc a,b			;9603	88 	. 
	ld h,a			;9604	67 	g 
	ld h,b			;9605	60 	` 
	sbc a,a			;9606	9f 	. 
	sbc a,b			;9607	98 	. 
	ld h,a			;9608	67 	g 
	nop			;9609	00 	. 
	ld a,03eh		;960a	3e 3e 	> > 
l960ch:
	nop			;960c	00 	. 
	ld c,0ffh		;960d	0e ff 	. . 
	pop af			;960f	f1 	. 
	ld c,0e3h		;9610	0e e3 	. . 
	rra			;9612	1f 	. 
	inc e			;9613	1c 	. 
	ex (sp),hl			;9614	e3 	. 
	push af			;9615	f5 	. 
	dec bc			;9616	0b 	. 
	ld a,(bc)			;9617	0a 	. 
l9618h:
	push af			;9618	f5 	. 
	or 009h		;9619	f6 09 	. . 
	add hl,bc			;961b	09 	. 
	or 0f7h		;961c	f6 f7 	. . 
	ret z			;961e	c8 	. 
	ex af,af'			;961f	08 	. 
	rst 30h			;9620	f7 	. 
	ld (hl),a			;9621	77 	w 
	ret z			;9622	c8 	. 
	ex af,af'			;9623	08 	. 
	rst 30h			;9624	f7 	. 
	ld (hl),h			;9625	74 	t 
	rrc e		;9626	cb 0b 	. . 
	call p,00000h		;9628	f4 00 00 	. . . 
	nop			;962b	00 	. 
	nop			;962c	00 	. 
	nop			;962d	00 	. 
	add a,b			;962e	80 	. 
	add a,b			;962f	80 	. 
	nop			;9630	00 	. 
	add a,b			;9631	80 	. 
	ret nz			;9632	c0 	. 
	ld b,b			;9633	40 	@ 
	add a,b			;9634	80 	. 
	add a,b			;9635	80 	. 
	ret nz			;9636	c0 	. 
	ld b,b			;9637	40 	@ 
	add a,b			;9638	80 	. 
	ret nz			;9639	c0 	. 
	ret po			;963a	e0 	. 
	jr nz,l95fdh		;963b	20 c0 	  . 
	ld b,b			;963d	40 	@ 
	ret pe			;963e	e8 	. 
	xor b			;963f	a8 	. 
	ld b,b			;9640	40 	@ 
	xor b			;9641	a8 	. 
	ld (hl),h			;9642	74 	t 
	ld d,h			;9643	54 	T 
	xor b			;9644	a8 	. 
	ret c			;9645	d8 	. 
	inc l			;9646	2c 	, 
	inc h			;9647	24 	$ 
	ret c			;9648	d8 	. 
	inc e			;9649	1c 	. 
	inc hl			;964a	23 	# 
	jr nz,l966ch		;964b	20 1f 	  . 
	rra			;964d	1f 	. 
	ld h,b			;964e	60 	` 
	ld h,b			;964f	60 	` 
	rra			;9650	1f 	. 
	ld l,d			;9651	6a 	j 
	sub l			;9652	95 	. 
	sub l			;9653	95 	. 
	ld d,l			;9654	55 	U 
	ld a,a			;9655	7f 	 
	add a,b			;9656	80 	. 
	add a,b			;9657	80 	. 
	ld a,a			;9658	7f 	 
	ld a,a			;9659	7f 	 
	add a,b			;965a	80 	. 
	add a,b			;965b	80 	. 
	ld a,a			;965c	7f 	 
	ccf			;965d	3f 	? 
	ld b,b			;965e	40 	@ 
	ld b,b			;965f	40 	@ 
	ccf			;9660	3f 	? 
	rrca			;9661	0f 	. 
	jr nc,l9694h		;9662	30 30 	0 0 
	rrca			;9664	0f 	. 
	nop			;9665	00 	. 
	rrca			;9666	0f 	. 
	rrca			;9667	0f 	. 
	nop			;9668	00 	. 
	inc a			;9669	3c 	< 
	ex (sp),hl			;966a	e3 	. 
	inc bc			;966b	03 	. 
l966ch:
	call m,003fdh		;966c	fc fd 03 	. . . 
	ld (bc),a			;966f	02 	. 
	defb 0fdh,09dh	;sbc a,iyl		;9670	fd 9d 	. . 
	ld l,e			;9672	6b 	k 
	ld h,d			;9673	62 	b 
	ld a,l			;9674	7d 	} 
	call m,0030bh		;9675	fc 0b 03 	. . . 
	call m,032fdh		;9678	fc fd 32 	. . 2 
	ld (bc),a			;967b	02 	. 
	defb 0fdh,0fdh,002h	;illegal sequence		;967c	fd fd 02 	. . . 
	ld (bc),a			;967f	02 	. 
	defb 0fdh,0fbh,004h	;illegal sequence		;9680	fd fb 04 	. . . 
	inc b			;9683	04 	. 
	ei			;9684	fb 	. 
	nop			;9685	00 	. 
	rst 38h			;9686	ff 	. 
	rst 38h			;9687	ff 	. 
	nop			;9688	00 	. 
	sbc a,0e5h		;9689	de e5 	. . 
	ld hl,0dedeh		;968b	21 de de 	! . . 
	ex (sp),hl			;968e	e3 	. 
	ld hl,0dcdeh		;968f	21 de dc 	! . . 
	and 022h		;9692	e6 22 	. " 
l9694h:
	call c,0e31eh		;9694	dc 1e e3 	. . . 
	pop hl			;9697	e1 	. 
	ld e,0feh		;9698	1e fe 	. . 
	dec b			;969a	05 	. 
	ld bc,0f6feh		;969b	01 fe f6 	. . . 
	dec bc			;969e	0b 	. 
	add hl,bc			;969f	09 	. 
	or 0c2h		;96a0	f6 c2 	. . 
	dec (hl)			;96a2	35 	5 
	dec (hl)			;96a3	35 	5 
	jp nz,0c200h		;96a4	c2 00 c2 	. . . 
	jp nz,00000h		;96a7	c2 00 00 	. . . 
	nop			;96aa	00 	. 
	nop			;96ab	00 	. 
	nop			;96ac	00 	. 
	nop			;96ad	00 	. 
	rlca			;96ae	07 	. 
	rlca			;96af	07 	. 
	nop			;96b0	00 	. 
	rlca			;96b1	07 	. 
	jr l96cch		;96b2	18 18 	. . 
	rlca			;96b4	07 	. 
	rra			;96b5	1f 	. 
	jr nz,l96d8h		;96b6	20 20 	    
	rra			;96b8	1f 	. 
	ccf			;96b9	3f 	? 
	ld b,b			;96ba	40 	@ 
	ld b,b			;96bb	40 	@ 
	ccf			;96bc	3f 	? 
l96bdh:
	ccf			;96bd	3f 	? 
	ld e,a			;96be	5f 	_ 
	ld b,b			;96bf	40 	@ 
	ccf			;96c0	3f 	? 
	ld h,d			;96c1	62 	b 
	sbc a,l			;96c2	9d 	. 
	add a,h			;96c3	84 	. 
	ld a,c			;96c4	79 	y 
	ld h,b			;96c5	60 	` 
	sbc a,a			;96c6	9f 	. 
	add a,(hl)			;96c7	86 	. 
	ld a,c			;96c8	79 	y 
	nop			;96c9	00 	. 
	ld a,03eh		;96ca	3e 3e 	> > 
l96cch:
	nop			;96cc	00 	. 
	ld c,0ffh		;96cd	0e ff 	. . 
	pop af			;96cf	f1 	. 
	ld c,0e3h		;96d0	0e e3 	. . 
	rra			;96d2	1f 	. 
	inc e			;96d3	1c 	. 
	ex (sp),hl			;96d4	e3 	. 
	push af			;96d5	f5 	. 
	dec bc			;96d6	0b 	. 
	ld a,(bc)			;96d7	0a 	. 
l96d8h:
	push af			;96d8	f5 	. 
	or 009h		;96d9	f6 09 	. . 
	add hl,bc			;96db	09 	. 
	or 0f7h		;96dc	f6 f7 	. . 
	ret z			;96de	c8 	. 
	ex af,af'			;96df	08 	. 
	rst 30h			;96e0	f7 	. 
	ld (hl),h			;96e1	74 	t 
	rrc e		;96e2	cb 0b 	. . 
	call p,0cf73h		;96e4	f4 73 cf 	. s . 
	inc c			;96e7	0c 	. 
	di			;96e8	f3 	. 
	nop			;96e9	00 	. 
	nop			;96ea	00 	. 
	nop			;96eb	00 	. 
	nop			;96ec	00 	. 
	nop			;96ed	00 	. 
	add a,b			;96ee	80 	. 
	add a,b			;96ef	80 	. 
	nop			;96f0	00 	. 
	add a,b			;96f1	80 	. 
	ret nz			;96f2	c0 	. 
	ld b,b			;96f3	40 	@ 
	add a,b			;96f4	80 	. 
	add a,b			;96f5	80 	. 
	ret nz			;96f6	c0 	. 
	ld b,b			;96f7	40 	@ 
	add a,b			;96f8	80 	. 
	ret nz			;96f9	c0 	. 
	ret po			;96fa	e0 	. 
	jr nz,l96bdh		;96fb	20 c0 	  . 
	ld b,b			;96fd	40 	@ 
	ret po			;96fe	e0 	. 
	and b			;96ff	a0 	. 
	ld b,b			;9700	40 	@ 
	and b			;9701	a0 	. 
	ld a,h			;9702	7c 	| 
	ld e,h			;9703	5c 	\ 
	and b			;9704	a0 	. 
	ld c,b			;9705	48 	H 
	or h			;9706	b4 	. 
	or h			;9707	b4 	. 
	ld c,b			;9708	48 	H 
	inc e			;9709	1c 	. 
	inc hl			;970a	23 	# 
	jr nz,l972ch		;970b	20 1f 	  . 
	rra			;970d	1f 	. 
	jr nz,l9730h		;970e	20 20 	    
	rra			;9710	1f 	. 
	nop			;9711	00 	. 
	ld a,a			;9712	7f 	 
	ld a,a			;9713	7f 	 
	ccf			;9714	3f 	? 
	ld l,d			;9715	6a 	j 
	sub l			;9716	95 	. 
	sub l			;9717	95 	. 
	ld d,l			;9718	55 	U 
	ld a,a			;9719	7f 	 
	add a,b			;971a	80 	. 
	add a,b			;971b	80 	. 
	ld a,a			;971c	7f 	 
	ld a,a			;971d	7f 	 
	add a,b			;971e	80 	. 
	add a,b			;971f	80 	. 
	ld a,a			;9720	7f 	 
	rra			;9721	1f 	. 
	ld h,b			;9722	60 	` 
	ld h,b			;9723	60 	` 
	rra			;9724	1f 	. 
	nop			;9725	00 	. 
	rra			;9726	1f 	. 
	rra			;9727	1f 	. 
	nop			;9728	00 	. 
	dec a			;9729	3d 	= 
	ex (sp),hl			;972a	e3 	. 
	ld (bc),a			;972b	02 	. 
l972ch:
	defb 0fdh,0fdh,003h	;illegal sequence		;972c	fd fd 03 	. . . 
	ld (bc),a			;972f	02 	. 
l9730h:
	defb 0fdh,01dh,0ebh	;illegal sequence		;9730	fd 1d eb 	. . . 
	jp po,l9cfdh		;9733	e2 fd 9c 	. . . 
	ld l,e			;9736	6b 	k 
	ld h,e			;9737	63 	c 
	ld a,h			;9738	7c 	| 
	defb 0fdh,00ah,002h	;illegal sequence		;9739	fd 0a 02 	. . . 
	defb 0fdh,0fdh,032h	;illegal sequence		;973c	fd fd 32 	. . 2 
	ld (bc),a			;973f	02 	. 
	defb 0fdh,0fbh,004h	;illegal sequence		;9740	fd fb 04 	. . . 
	inc b			;9743	04 	. 
	ei			;9744	fb 	. 
	nop			;9745	00 	. 
	rst 38h			;9746	ff 	. 
	rst 38h			;9747	ff 	. 
	nop			;9748	00 	. 
	sbc a,0e7h		;9749	de e7 	. . 
	ld hl,0dedeh		;974b	21 de de 	! . . 
	pop hl			;974e	e1 	. 
	ld hl,03edeh		;974f	21 de 3e 	! . > 
	rst 0			;9752	c7 	. 
	pop bc			;9753	c1 	. 
	ld a,0feh		;9754	3e fe 	> . 
	ld bc,0fe01h		;9756	01 01 fe 	. . . 
	cp 007h		;9759	fe 07 	. . 
	ld bc,0f2feh		;975b	01 fe f2 	. . . 
	dec c			;975e	0d 	. 
	dec c			;975f	0d 	. 
	jp p,033c0h		;9760	f2 c0 33 	. . 3 
	inc sp			;9763	33 	3 
	ret nz			;9764	c0 	. 
	nop			;9765	00 	. 
	ret nz			;9766	c0 	. 
	ret nz			;9767	c0 	. 
	nop			;9768	00 	. 
	nop			;9769	00 	. 
	nop			;976a	00 	. 
	nop			;976b	00 	. 
	nop			;976c	00 	. 
	nop			;976d	00 	. 
	nop			;976e	00 	. 
	nop			;976f	00 	. 
	nop			;9770	00 	. 
	nop			;9771	00 	. 
	rra			;9772	1f 	. 
	rra			;9773	1f 	. 
	nop			;9774	00 	. 
	rra			;9775	1f 	. 
	inc a			;9776	3c 	< 
	jr nz,l9779h		;9777	20 00 	  . 
l9779h:
	ccf			;9779	3f 	? 
	ld a,h			;977a	7c 	| 
	ld b,b			;977b	40 	@ 
	nop			;977c	00 	. 
	ccf			;977d	3f 	? 
	ld a,(hl)			;977e	7e 	~ 
	ld b,b			;977f	40 	@ 
	nop			;9780	00 	. 
	ld a,a			;9781	7f 	 
	rst 20h			;9782	e7 	. 
	add a,b			;9783	80 	. 
	nop			;9784	00 	. 
	ld e,a			;9785	5f 	_ 
	rst 20h			;9786	e7 	. 
	and b			;9787	a0 	. 
	nop			;9788	00 	. 
	nop			;9789	00 	. 
	ld b,b			;978a	40 	@ 
	ld b,b			;978b	40 	@ 
	nop			;978c	00 	. 
	ld b,b			;978d	40 	@ 
	cp a			;978e	bf 	. 
	cp a			;978f	bf 	. 
	nop			;9790	00 	. 
	ei			;9791	fb 	. 
	ccf			;9792	3f 	? 
	inc b			;9793	04 	. 
	nop			;9794	00 	. 
	ei			;9795	fb 	. 
	cpl			;9796	2f 	/ 
	inc d			;9797	14 	. 
	nop			;9798	00 	. 
	rst 30h			;9799	f7 	. 
	ccf			;979a	3f 	? 
	ex af,af'			;979b	08 	. 
	nop			;979c	00 	. 
	rst 28h			;979d	ef 	. 
	ld a,a			;979e	7f 	 
	djnz l97a1h		;979f	10 00 	. . 
l97a1h:
	rst 28h			;97a1	ef 	. 
	rst 38h			;97a2	ff 	. 
	djnz l97a5h		;97a3	10 00 	. . 
l97a5h:
	rst 28h			;97a5	ef 	. 
	rst 38h			;97a6	ff 	. 
	djnz l97a9h		;97a7	10 00 	. . 
l97a9h:
	nop			;97a9	00 	. 
	nop			;97aa	00 	. 
	nop			;97ab	00 	. 
	nop			;97ac	00 	. 
	nop			;97ad	00 	. 
	ret po			;97ae	e0 	. 
	ret po			;97af	e0 	. 
	nop			;97b0	00 	. 
	ret po			;97b1	e0 	. 
	call m,0001ch		;97b2	fc 1c 00 	. . . 
	call m,003ffh		;97b5	fc ff 03 	. . . 
	nop			;97b8	00 	. 
	rst 38h			;97b9	ff 	. 
	rst 38h			;97ba	ff 	. 
	nop			;97bb	00 	. 
	nop			;97bc	00 	. 
	rst 38h			;97bd	ff 	. 
	rst 38h			;97be	ff 	. 
	nop			;97bf	00 	. 
	nop			;97c0	00 	. 
	rst 38h			;97c1	ff 	. 
	rst 38h			;97c2	ff 	. 
	nop			;97c3	00 	. 
	nop			;97c4	00 	. 
	rst 38h			;97c5	ff 	. 
	rst 38h			;97c6	ff 	. 
	nop			;97c7	00 	. 
	nop			;97c8	00 	. 
	nop			;97c9	00 	. 
	nop			;97ca	00 	. 
	nop			;97cb	00 	. 
	nop			;97cc	00 	. 
	nop			;97cd	00 	. 
	nop			;97ce	00 	. 
	nop			;97cf	00 	. 
	nop			;97d0	00 	. 
	nop			;97d1	00 	. 
	nop			;97d2	00 	. 
	nop			;97d3	00 	. 
	nop			;97d4	00 	. 
	nop			;97d5	00 	. 
	nop			;97d6	00 	. 
	nop			;97d7	00 	. 
	nop			;97d8	00 	. 
	nop			;97d9	00 	. 
	add a,b			;97da	80 	. 
	add a,b			;97db	80 	. 
	nop			;97dc	00 	. 
	add a,b			;97dd	80 	. 
	ret nz			;97de	c0 	. 
	ld b,b			;97df	40 	@ 
	nop			;97e0	00 	. 
	ret nz			;97e1	c0 	. 
	ret po			;97e2	e0 	. 
	jr nz,l97e5h		;97e3	20 00 	  . 
l97e5h:
	ret nz			;97e5	c0 	. 
	ret po			;97e6	e0 	. 
	jr nz,l97e9h		;97e7	20 00 	  . 
l97e9h:
	rra			;97e9	1f 	. 
	inc sp			;97ea	33 	3 
	jr nz,l97edh		;97eb	20 00 	  . 
l97edh:
	rra			;97ed	1f 	. 
	ccf			;97ee	3f 	? 
	jr nz,l97f1h		;97ef	20 00 	  . 
l97f1h:
	ccf			;97f1	3f 	? 
	ld a,a			;97f2	7f 	 
	ld b,b			;97f3	40 	@ 
	nop			;97f4	00 	. 
	rrca			;97f5	0f 	. 
	rst 38h			;97f6	ff 	. 
	ret p			;97f7	f0 	. 
	ld (hl),b			;97f8	70 	p 
	scf			;97f9	37 	7 
	rst 8			;97fa	cf 	. 
	ret m			;97fb	f8 	. 
	ld c,b			;97fc	48 	H 
	scf			;97fd	37 	7 
	rst 8			;97fe	cf 	. 
	ret c			;97ff	d8 	. 
	ld c,b			;9800	48 	H 
	and (hl)			;9801	a6 	. 
	ld e,a			;9802	5f 	_ 
	ld e,c			;9803	59 	Y 
	jr l9846h		;9804	18 40 	. @ 
	ld a,03eh		;9806	3e 3e 	> > 
	nop			;9808	00 	. 
	rst 30h			;9809	f7 	. 
	rst 38h			;980a	ff 	. 
	ex af,af'			;980b	08 	. 
	nop			;980c	00 	. 
	rst 30h			;980d	f7 	. 
	rst 38h			;980e	ff 	. 
	ex af,af'			;980f	08 	. 
	nop			;9810	00 	. 
	rst 8			;9811	cf 	. 
	rst 38h			;9812	ff 	. 
	jr nc,l9815h		;9813	30 00 	0 . 
l9815h:
	ccf			;9815	3f 	? 
	rst 38h			;9816	ff 	. 
	ret nz			;9817	c0 	. 
	nop			;9818	00 	. 
	ld a,a			;9819	7f 	 
	rst 38h			;981a	ff 	. 
	add a,b			;981b	80 	. 
	nop			;981c	00 	. 
	ld l,a			;981d	6f 	o 
	rst 38h			;981e	ff 	. 
	sub b			;981f	90 	. 
	nop			;9820	00 	. 
	ld e,a			;9821	5f 	_ 
	rst 38h			;9822	ff 	. 
	and b			;9823	a0 	. 
	nop			;9824	00 	. 
	ccf			;9825	3f 	? 
	rst 38h			;9826	ff 	. 
	ret nz			;9827	c0 	. 
	nop			;9828	00 	. 
	rst 38h			;9829	ff 	. 
	rst 38h			;982a	ff 	. 
	nop			;982b	00 	. 
	nop			;982c	00 	. 
	rst 38h			;982d	ff 	. 
	rst 38h			;982e	ff 	. 
	nop			;982f	00 	. 
	nop			;9830	00 	. 
	rst 38h			;9831	ff 	. 
	rst 38h			;9832	ff 	. 
	nop			;9833	00 	. 
	nop			;9834	00 	. 
	rst 38h			;9835	ff 	. 
	rst 38h			;9836	ff 	. 
	nop			;9837	00 	. 
	nop			;9838	00 	. 
	rst 38h			;9839	ff 	. 
	rst 38h			;983a	ff 	. 
	nop			;983b	00 	. 
	nop			;983c	00 	. 
	rst 38h			;983d	ff 	. 
	rst 38h			;983e	ff 	. 
	nop			;983f	00 	. 
	nop			;9840	00 	. 
	rst 30h			;9841	f7 	. 
	rst 38h			;9842	ff 	. 
	ex af,af'			;9843	08 	. 
	nop			;9844	00 	. 
	rst 0			;9845	c7 	. 
l9846h:
	rst 38h			;9846	ff 	. 
	jr c,l9849h		;9847	38 00 	8 . 
l9849h:
	ret m			;9849	f8 	. 
	call m,00004h		;984a	fc 04 00 	. . . 
	call m,002feh		;984d	fc fe 02 	. . . 
	nop			;9850	00 	. 
	cp 0ffh		;9851	fe ff 	. . 
	ld bc,0fa00h		;9853	01 00 fa 	. . . 
	rst 38h			;9856	ff 	. 
	dec b			;9857	05 	. 
	nop			;9858	00 	. 
	jp m,005ffh		;9859	fa ff 05 	. . . 
	nop			;985c	00 	. 
	jp m,005ffh		;985d	fa ff 05 	. . . 
	nop			;9860	00 	. 
	jp m,005ffh		;9861	fa ff 05 	. . . 
	nop			;9864	00 	. 
	ret p			;9865	f0 	. 
	rst 38h			;9866	ff 	. 
	add hl,bc			;9867	09 	. 
	ld b,007h		;9868	06 07 	. . 
	rra			;986a	1f 	. 
	jr l986dh		;986b	18 00 	. . 
l986dh:
	rra			;986d	1f 	. 
	ccf			;986e	3f 	? 
	jr nz,l9871h		;986f	20 00 	  . 
l9871h:
	inc a			;9871	3c 	< 
	ld a,a			;9872	7f 	 
	ld b,e			;9873	43 	C 
	nop			;9874	00 	. 
	djnz l98f3h		;9875	10 7c 	. | 
	ld c,h			;9877	4c 	L 
	jr nz,l987ah		;9878	20 00 	  . 
l987ah:
	ret m			;987a	f8 	. 
	adc a,b			;987b	88 	. 
	ld (hl),b			;987c	70 	p 
	nop			;987d	00 	. 
	ret m			;987e	f8 	. 
	adc a,b			;987f	88 	. 
	ld (hl),b			;9880	70 	p 
	nop			;9881	00 	. 
	ret p			;9882	f0 	. 
	ret p			;9883	f0 	. 
	nop			;9884	00 	. 
	nop			;9885	00 	. 
	nop			;9886	00 	. 
	nop			;9887	00 	. 
	nop			;9888	00 	. 
	ret p			;9889	f0 	. 
	cp 00eh		;988a	fe 0e 	. . 
	nop			;988c	00 	. 
	add a,b			;988d	80 	. 
	ret p			;988e	f0 	. 
	ld (hl),b			;988f	70 	p 
	nop			;9890	00 	. 
	nop			;9891	00 	. 
	add a,b			;9892	80 	. 
	add a,b			;9893	80 	. 
	nop			;9894	00 	. 
	nop			;9895	00 	. 
	nop			;9896	00 	. 
	nop			;9897	00 	. 
	nop			;9898	00 	. 
	nop			;9899	00 	. 
	nop			;989a	00 	. 
	nop			;989b	00 	. 
sub_989ch:
	nop			;989c	00 	. 
	nop			;989d	00 	. 
	nop			;989e	00 	. 
	nop			;989f	00 	. 
	nop			;98a0	00 	. 
	nop			;98a1	00 	. 
	nop			;98a2	00 	. 
	nop			;98a3	00 	. 
	nop			;98a4	00 	. 
	nop			;98a5	00 	. 
	nop			;98a6	00 	. 
	nop			;98a7	00 	. 
	nop			;98a8	00 	. 
	ld a,(hl)			;98a9	7e 	~ 
	rst 38h			;98aa	ff 	. 
	add a,c			;98ab	81 	. 
	nop			;98ac	00 	. 
	ccf			;98ad	3f 	? 
	ld a,a			;98ae	7f 	 
	ld b,b			;98af	40 	@ 
	nop			;98b0	00 	. 
	rlca			;98b1	07 	. 
	ccf			;98b2	3f 	? 
	jr c,l98b5h		;98b3	38 00 	8 . 
l98b5h:
	ld bc,00607h		;98b5	01 07 06 	. . . 
	nop			;98b8	00 	. 
	nop			;98b9	00 	. 
	ld bc,00001h		;98ba	01 01 00 	. . . 
l98bdh:
	nop			;98bd	00 	. 
	nop			;98be	00 	. 
	nop			;98bf	00 	. 
	nop			;98c0	00 	. 
	nop			;98c1	00 	. 
	nop			;98c2	00 	. 
	nop			;98c3	00 	. 
	nop			;98c4	00 	. 
	nop			;98c5	00 	. 
	nop			;98c6	00 	. 
	nop			;98c7	00 	. 
	nop			;98c8	00 	. 
	nop			;98c9	00 	. 
	ret p			;98ca	f0 	. 
	sub b			;98cb	90 	. 
	ld h,b			;98cc	60 	` 
	nop			;98cd	00 	. 
	ret po			;98ce	e0 	. 
	ret po			;98cf	e0 	. 
	nop			;98d0	00 	. 
	add a,b			;98d1	80 	. 
	ret nz			;98d2	c0 	. 
	ld b,b			;98d3	40 	@ 
	nop			;98d4	00 	. 
	add a,b			;98d5	80 	. 
	ret po			;98d6	e0 	. 
	jr nz,l9919h		;98d7	20 40 	  @ 
	nop			;98d9	00 	. 
	ret p			;98da	f0 	. 
	djnz l98bdh		;98db	10 e0 	. . 
	nop			;98dd	00 	. 
	ret p			;98de	f0 	. 
	sub b			;98df	90 	. 
	ld h,b			;98e0	60 	` 
	nop			;98e1	00 	. 
	ret p			;98e2	f0 	. 
	sub b			;98e3	90 	. 
	ld h,b			;98e4	60 	` 
	nop			;98e5	00 	. 
	ld h,b			;98e6	60 	` 
	ld h,b			;98e7	60 	` 
	nop			;98e8	00 	. 
	nop			;98e9	00 	. 
	ld (bc),a			;98ea	02 	. 
	ld (bc),a			;98eb	02 	. 
	nop			;98ec	00 	. 
	ld (bc),a			;98ed	02 	. 
	dec b			;98ee	05 	. 
	dec b			;98ef	05 	. 
	nop			;98f0	00 	. 
	inc bc			;98f1	03 	. 
	inc e			;98f2	1c 	. 
l98f3h:
	inc e			;98f3	1c 	. 
	nop			;98f4	00 	. 
	rra			;98f5	1f 	. 
	inc a			;98f6	3c 	< 
	jr nz,l98f9h		;98f7	20 00 	  . 
l98f9h:
	ccf			;98f9	3f 	? 
	ld a,b			;98fa	78 	x 
	ld b,b			;98fb	40 	@ 
	nop			;98fc	00 	. 
	ld a,a			;98fd	7f 	 
	call m,00080h		;98fe	fc 80 00 	. . . 
	ld a,a			;9901	7f 	 
	rst 20h			;9902	e7 	. 
	add a,b			;9903	80 	. 
	nop			;9904	00 	. 
	ld e,a			;9905	5f 	_ 
	rst 20h			;9906	e7 	. 
	and b			;9907	a0 	. 
	nop			;9908	00 	. 
	nop			;9909	00 	. 
	rst 8			;990a	cf 	. 
	rst 8			;990b	cf 	. 
	nop			;990c	00 	. 
	rst 8			;990d	cf 	. 
	rst 38h			;990e	ff 	. 
	jr nc,l9911h		;990f	30 00 	0 . 
l9911h:
	rst 28h			;9911	ef 	. 
	cp a			;9912	bf 	. 
	ld d,b			;9913	50 	P 
	nop			;9914	00 	. 
	rst 28h			;9915	ef 	. 
	ld a,a			;9916	7f 	 
	djnz l9919h		;9917	10 00 	. . 
l9919h:
	sbc a,a			;9919	9f 	. 
	ld a,a			;991a	7f 	 
	ld h,b			;991b	60 	` 
	nop			;991c	00 	. 
	cp a			;991d	bf 	. 
	rst 38h			;991e	ff 	. 
	ld b,b			;991f	40 	@ 
	nop			;9920	00 	. 
	rst 18h			;9921	df 	. 
	rst 38h			;9922	ff 	. 
	jr nz,l9925h		;9923	20 00 	  . 
l9925h:
	rst 18h			;9925	df 	. 
	rst 38h			;9926	ff 	. 
	jr nz,l9929h		;9927	20 00 	  . 
l9929h:
	nop			;9929	00 	. 
	add a,b			;992a	80 	. 
	add a,b			;992b	80 	. 
	nop			;992c	00 	. 
	add a,b			;992d	80 	. 
	ret m			;992e	f8 	. 
	ld a,b			;992f	78 	x 
	nop			;9930	00 	. 
	ret m			;9931	f8 	. 
	cp 006h		;9932	fe 06 	. . 
	nop			;9934	00 	. 
	cp 0ffh		;9935	fe ff 	. . 
	ld bc,0ff00h		;9937	01 00 ff 	. . . 
	rst 38h			;993a	ff 	. 
	nop			;993b	00 	. 
	nop			;993c	00 	. 
	rst 38h			;993d	ff 	. 
	rst 38h			;993e	ff 	. 
	nop			;993f	00 	. 
	nop			;9940	00 	. 
	rst 38h			;9941	ff 	. 
	rst 38h			;9942	ff 	. 
	nop			;9943	00 	. 
	nop			;9944	00 	. 
	rst 38h			;9945	ff 	. 
	rst 38h			;9946	ff 	. 
	nop			;9947	00 	. 
	nop			;9948	00 	. 
	nop			;9949	00 	. 
	nop			;994a	00 	. 
	nop			;994b	00 	. 
	nop			;994c	00 	. 
	nop			;994d	00 	. 
	nop			;994e	00 	. 
	nop			;994f	00 	. 
	nop			;9950	00 	. 
	nop			;9951	00 	. 
	nop			;9952	00 	. 
	nop			;9953	00 	. 
	nop			;9954	00 	. 
	nop			;9955	00 	. 
	nop			;9956	00 	. 
	nop			;9957	00 	. 
	nop			;9958	00 	. 
	nop			;9959	00 	. 
	add a,b			;995a	80 	. 
	add a,b			;995b	80 	. 
	nop			;995c	00 	. 
	nop			;995d	00 	. 
	add a,b			;995e	80 	. 
	add a,b			;995f	80 	. 
	nop			;9960	00 	. 
	add a,b			;9961	80 	. 
l9962h:
	ret nz			;9962	c0 	. 
	ld b,b			;9963	40 	@ 
	nop			;9964	00 	. 
	add a,b			;9965	80 	. 
l9966h:
	ret nz			;9966	c0 	. 
	ld b,b			;9967	40 	@ 
	nop			;9968	00 	. 
	rra			;9969	1f 	. 
	inc sp			;996a	33 	3 
	jr nz,l996dh		;996b	20 00 	  . 
l996dh:
	rra			;996d	1f 	. 
	ccf			;996e	3f 	? 
	jr nz,l9971h		;996f	20 00 	  . 
l9971h:
	rra			;9971	1f 	. 
	ld a,a			;9972	7f 	 
	ld h,b			;9973	60 	` 
	nop			;9974	00 	. 
	ld a,a			;9975	7f 	 
	rst 38h			;9976	ff 	. 
	add a,b			;9977	80 	. 
	nop			;9978	00 	. 
	rlca			;9979	07 	. 
	rst 38h			;997a	ff 	. 
	ret m			;997b	f8 	. 
	ld a,b			;997c	78 	x 
	scf			;997d	37 	7 
	rst 8			;997e	cf 	. 
	ret m			;997f	f8 	. 
	ld c,b			;9980	48 	H 
	ld (hl),0cfh		;9981	36 cf 	6 . 
	exx			;9983	d9 	. 
	ld c,b			;9984	48 	H 
	and b			;9985	a0 	. 
	ld e,(hl)			;9986	5e 	^ 
	ld e,(hl)			;9987	5e 	^ 
	nop			;9988	00 	. 
	rst 30h			;9989	f7 	. 
	rst 38h			;998a	ff 	. 
	ex af,af'			;998b	08 	. 
	nop			;998c	00 	. 
	rst 28h			;998d	ef 	. 
	rst 38h			;998e	ff 	. 
	djnz l9991h		;998f	10 00 	. . 
l9991h:
	rst 18h			;9991	df 	. 
	rst 38h			;9992	ff 	. 
	jr nz,l9995h		;9993	20 00 	  . 
l9995h:
	cp a			;9995	bf 	. 
	rst 38h			;9996	ff 	. 
	ld b,b			;9997	40 	@ 
	nop			;9998	00 	. 
	ld a,a			;9999	7f 	 
	rst 38h			;999a	ff 	. 
	add a,b			;999b	80 	. 
	nop			;999c	00 	. 
	ld a,a			;999d	7f 	 
	rst 38h			;999e	ff 	. 
	add a,b			;999f	80 	. 
	nop			;99a0	00 	. 
	ld a,a			;99a1	7f 	 
	rst 38h			;99a2	ff 	. 
	add a,b			;99a3	80 	. 
	nop			;99a4	00 	. 
	ld a,0ffh		;99a5	3e ff 	> . 
	pop bc			;99a7	c1 	. 
	nop			;99a8	00 	. 
	rst 38h			;99a9	ff 	. 
	rst 38h			;99aa	ff 	. 
	nop			;99ab	00 	. 
	nop			;99ac	00 	. 
	rst 38h			;99ad	ff 	. 
	rst 38h			;99ae	ff 	. 
	nop			;99af	00 	. 
	nop			;99b0	00 	. 
	rst 38h			;99b1	ff 	. 
	rst 38h			;99b2	ff 	. 
	nop			;99b3	00 	. 
	nop			;99b4	00 	. 
	rst 38h			;99b5	ff 	. 
	rst 38h			;99b6	ff 	. 
	nop			;99b7	00 	. 
	nop			;99b8	00 	. 
	rst 38h			;99b9	ff 	. 
	rst 38h			;99ba	ff 	. 
	nop			;99bb	00 	. 
	nop			;99bc	00 	. 
	rst 38h			;99bd	ff 	. 
	rst 38h			;99be	ff 	. 
	nop			;99bf	00 	. 
	nop			;99c0	00 	. 
	cp a			;99c1	bf 	. 
	rst 38h			;99c2	ff 	. 
	ld b,b			;99c3	40 	@ 
	nop			;99c4	00 	. 
	ld a,a			;99c5	7f 	 
	rst 38h			;99c6	ff 	. 
	add a,b			;99c7	80 	. 
	nop			;99c8	00 	. 
	ret p			;99c9	f0 	. 
	ret m			;99ca	f8 	. 
	ex af,af'			;99cb	08 	. 
	nop			;99cc	00 	. 
	ret m			;99cd	f8 	. 
	call m,00004h		;99ce	fc 04 00 	. . . 
	ret pe			;99d1	e8 	. 
	call m,00014h		;99d2	fc 14 00 	. . . 
	ret pe			;99d5	e8 	. 
	call m,00014h		;99d6	fc 14 00 	. . . 
	ret nc			;99d9	d0 	. 
	ret m			;99da	f8 	. 
	jr z,l99ddh		;99db	28 00 	( . 
l99ddh:
	add a,b			;99dd	80 	. 
	ret m			;99de	f8 	. 
	ld c,b			;99df	48 	H 
	jr nc,l9962h		;99e0	30 80 	0 . 
	ret m			;99e2	f8 	. 
	ld c,b			;99e3	48 	H 
	jr nc,l9966h		;99e4	30 80 	0 . 
	ret p			;99e6	f0 	. 
	ld (hl),b			;99e7	70 	p 
	nop			;99e8	00 	. 
	add a,b			;99e9	80 	. 
	nop			;99ea	00 	. 
	nop			;99eb	00 	. 
	nop			;99ec	00 	. 
	nop			;99ed	00 	. 
	nop			;99ee	00 	. 
	nop			;99ef	00 	. 
	nop			;99f0	00 	. 
	nop			;99f1	00 	. 
	nop			;99f2	00 	. 
	nop			;99f3	00 	. 
	nop			;99f4	00 	. 
	nop			;99f5	00 	. 
	nop			;99f6	00 	. 
	nop			;99f7	00 	. 
	nop			;99f8	00 	. 
	nop			;99f9	00 	. 
	nop			;99fa	00 	. 
	nop			;99fb	00 	. 
	nop			;99fc	00 	. 
	nop			;99fd	00 	. 
	nop			;99fe	00 	. 
	nop			;99ff	00 	. 
	nop			;9a00	00 	. 
l9a01h:
	nop			;9a01	00 	. 
	nop			;9a02	00 	. 
	nop			;9a03	00 	. 
	nop			;9a04	00 	. 
l9a05h:
	nop			;9a05	00 	. 
	nop			;9a06	00 	. 
	nop			;9a07	00 	. 
	nop			;9a08	00 	. 
	dec a			;9a09	3d 	= 
	rst 38h			;9a0a	ff 	. 
	jp nz,00e00h		;9a0b	c2 00 0e 	. . . 
	ccf			;9a0e	3f 	? 
	ld sp,03700h		;9a0f	31 00 37 	1 . 7 
	ld a,a			;9a12	7f 	 
	ld c,b			;9a13	48 	H 
	nop			;9a14	00 	. 
	dec de			;9a15	1b 	. 
	ld a,a			;9a16	7f 	 
	ld b,h			;9a17	44 	D 
	jr nz,l9a1ah		;9a18	20 00 	  . 
l9a1ah:
	ei			;9a1a	fb 	. 
	adc a,d			;9a1b	8a 	. 
	ld (hl),c			;9a1c	71 	q 
	nop			;9a1d	00 	. 
	ld a,e			;9a1e	7b 	{ 
	ld c,d			;9a1f	4a 	J 
	ld sp,03300h		;9a20	31 00 33 	1 . 3 
	ld (00001h),a		;9a23	32 01 00 	2 . . 
	inc bc			;9a26	03 	. 
	inc bc			;9a27	03 	. 
	nop			;9a28	00 	. 
	ret m			;9a29	f8 	. 
	cp 006h		;9a2a	fe 06 	. . 
	nop			;9a2c	00 	. 
	ret po			;9a2d	e0 	. 
	ret m			;9a2e	f8 	. 
	jr l9a31h		;9a2f	18 00 	. . 
l9a31h:
	nop			;9a31	00 	. 
	ret po			;9a32	e0 	. 
	ret po			;9a33	e0 	. 
	nop			;9a34	00 	. 
	add a,b			;9a35	80 	. 
	ret nz			;9a36	c0 	. 
	ld b,b			;9a37	40 	@ 
	nop			;9a38	00 	. 
	nop			;9a39	00 	. 
	ret nz			;9a3a	c0 	. 
	ld b,b			;9a3b	40 	@ 
	add a,b			;9a3c	80 	. 
	nop			;9a3d	00 	. 
	ret po			;9a3e	e0 	. 
	jr nz,l9a01h		;9a3f	20 c0 	  . 
	nop			;9a41	00 	. 
	ret po			;9a42	e0 	. 
	jr nz,l9a05h		;9a43	20 c0 	  . 
	nop			;9a45	00 	. 
	ret nz			;9a46	c0 	. 
	ret nz			;9a47	c0 	. 
	nop			;9a48	00 	. 
	nop			;9a49	00 	. 
	nop			;9a4a	00 	. 
	nop			;9a4b	00 	. 
	nop			;9a4c	00 	. 
	nop			;9a4d	00 	. 
	rlca			;9a4e	07 	. 
	rlca			;9a4f	07 	. 
	nop			;9a50	00 	. 
	nop			;9a51	00 	. 
	rrca			;9a52	0f 	. 
	rrca			;9a53	0f 	. 
	rlca			;9a54	07 	. 
	ld c,01fh		;9a55	0e 1f 	. . 
	ld de,00701h		;9a57	11 01 07 	. . . 
	ccf			;9a5a	3f 	? 
	jr c,l9a5dh		;9a5b	38 00 	8 . 
l9a5dh:
	rra			;9a5d	1f 	. 
	inc hl			;9a5e	23 	# 
	jr nz,l9a61h		;9a5f	20 00 	  . 
l9a61h:
	ccf			;9a61	3f 	? 
	ld h,e			;9a62	63 	c 
	ld b,b			;9a63	40 	@ 
	nop			;9a64	00 	. 
	ld l,a			;9a65	6f 	o 
	di			;9a66	f3 	. 
	sub b			;9a67	90 	. 
	nop			;9a68	00 	. 
	nop			;9a69	00 	. 
	nop			;9a6a	00 	. 
	nop			;9a6b	00 	. 
	nop			;9a6c	00 	. 
	nop			;9a6d	00 	. 
	add a,b			;9a6e	80 	. 
	add a,b			;9a6f	80 	. 
	nop			;9a70	00 	. 
	nop			;9a71	00 	. 
	ret po			;9a72	e0 	. 
	ret po			;9a73	e0 	. 
	add a,b			;9a74	80 	. 
	nop			;9a75	00 	. 
	ret p			;9a76	f0 	. 
	ret p			;9a77	f0 	. 
	ret po			;9a78	e0 	. 
	add a,b			;9a79	80 	. 
	call m,0707ch		;9a7a	fc 7c 70 	. | p 
	ret nz			;9a7d	c0 	. 
	jp p,03c3eh		;9a7e	f2 3e 3c 	. > < 
	ret nz			;9a81	c0 	. 
	pop hl			;9a82	e1 	. 
	dec sp			;9a83	3b 	; 
	ld a,0c0h		;9a84	3e c0 	> . 
	pop hl			;9a86	e1 	. 
	inc sp			;9a87	33 	3 
	ld a,01fh		;9a88	3e 1f 	> . 
	rst 38h			;9a8a	ff 	. 
	ret po			;9a8b	e0 	. 
	nop			;9a8c	00 	. 
	dec c			;9a8d	0d 	. 
	rst 38h			;9a8e	ff 	. 
	jp p,06300h		;9a8f	f2 00 63 	. . c 
	rst 38h			;9a92	ff 	. 
	sbc a,h			;9a93	9c 	. 
	nop			;9a94	00 	. 
	nop			;9a95	00 	. 
	rst 38h			;9a96	ff 	. 
	rst 38h			;9a97	ff 	. 
	ld a,a			;9a98	7f 	 
	nop			;9a99	00 	. 
	rst 38h			;9a9a	ff 	. 
	rst 38h			;9a9b	ff 	. 
	ld a,a			;9a9c	7f 	 
	nop			;9a9d	00 	. 
	ld a,a			;9a9e	7f 	 
	ld h,h			;9a9f	64 	d 
	ccf			;9aa0	3f 	? 
	nop			;9aa1	00 	. 
	ccf			;9aa2	3f 	? 
	inc h			;9aa3	24 	$ 
	rra			;9aa4	1f 	. 
	nop			;9aa5	00 	. 
	rra			;9aa6	1f 	. 
	rra			;9aa7	1f 	. 
	nop			;9aa8	00 	. 
	ret nz			;9aa9	c0 	. 
	pop hl			;9aaa	e1 	. 
	inc sp			;9aab	33 	3 
	ld a,080h		;9aac	3e 80 	> . 
	jp p,07c7eh		;9aae	f2 7e 7c 	. ~ | 
	nop			;9ab1	00 	. 
	cp 0feh		;9ab2	fe fe 	. . 
	call m,0fc00h		;9ab4	fc 00 fc 	. . . 
	call m,000f8h		;9ab7	fc f8 00 	. . . 
	call m,0f8fch		;9aba	fc fc f8 	. . . 
	nop			;9abd	00 	. 
	ret m			;9abe	f8 	. 
	ret m			;9abf	f8 	. 
	ret p			;9ac0	f0 	. 
	nop			;9ac1	00 	. 
	ret p			;9ac2	f0 	. 
	ld (hl),b			;9ac3	70 	p 
	ret nz			;9ac4	c0 	. 
	nop			;9ac5	00 	. 
	ret nz			;9ac6	c0 	. 
	ret nz			;9ac7	c0 	. 
	nop			;9ac8	00 	. 
	nop			;9ac9	00 	. 
	nop			;9aca	00 	. 
	nop			;9acb	00 	. 
	nop			;9acc	00 	. 
	nop			;9acd	00 	. 
	add a,b			;9ace	80 	. 
	add a,b			;9acf	80 	. 
	nop			;9ad0	00 	. 
	nop			;9ad1	00 	. 
	ret po			;9ad2	e0 	. 
	ret po			;9ad3	e0 	. 
	add a,b			;9ad4	80 	. 
	nop			;9ad5	00 	. 
	ret p			;9ad6	f0 	. 
	ret p			;9ad7	f0 	. 
	ret po			;9ad8	e0 	. 
	add a,b			;9ad9	80 	. 
	ret m			;9ada	f8 	. 
	ld a,b			;9adb	78 	x 
	ld (hl),b			;9adc	70 	p 
	ret nz			;9add	c0 	. 
	call m,0383ch		;9ade	fc 3c 38 	. < 8 
	ret nz			;9ae1	c0 	. 
	call m,0383ch		;9ae2	fc 3c 38 	. < 8 
	ret nz			;9ae5	c0 	. 
	cp 03eh		;9ae6	fe 3e 	. > 
	inc a			;9ae8	3c 	< 
	ret nz			;9ae9	c0 	. 
	cp 03eh		;9aea	fe 3e 	. > 
	inc a			;9aec	3c 	< 
	add a,b			;9aed	80 	. 
	adc a,(hl)			;9aee	8e 	. 
	ld a,(hl)			;9aef	7e 	~ 
	ld a,h			;9af0	7c 	| 
	nop			;9af1	00 	. 
	ld b,08eh		;9af2	06 8e 	. . 
	call m,00c00h		;9af4	fc 00 0c 	. . . 
	sbc a,h			;9af7	9c 	. 
	ret m			;9af8	f8 	. 
	nop			;9af9	00 	. 
l9afah:
	sbc a,h			;9afa	9c 	. 
	call m,000f8h		;9afb	fc f8 00 	. . . 
	ret m			;9afe	f8 	. 
	ret m			;9aff	f8 	. 
	ret p			;9b00	f0 	. 
	nop			;9b01	00 	. 
	ret p			;9b02	f0 	. 
	ld (hl),b			;9b03	70 	p 
	ret nz			;9b04	c0 	. 
	nop			;9b05	00 	. 
l9b06h:
	ret nz			;9b06	c0 	. 
	ret nz			;9b07	c0 	. 
	nop			;9b08	00 	. 
	nop			;9b09	00 	. 
	inc a			;9b0a	3c 	< 
	inc a			;9b0b	3c 	< 
	nop			;9b0c	00 	. 
	nop			;9b0d	00 	. 
	ld a,(hl)			;9b0e	7e 	~ 
	ld a,(hl)			;9b0f	7e 	~ 
	inc a			;9b10	3c 	< 
	jr l9afah		;9b11	18 e7 	. . 
	rst 38h			;9b13	ff 	. 
	ld h,(hl)			;9b14	66 	f 
	inc a			;9b15	3c 	< 
	in a,(0e7h)		;9b16	db e7 	. . 
	ld b,d			;9b18	42 	B 
	inc a			;9b19	3c 	< 
	in a,(0e7h)		;9b1a	db e7 	. . 
	ld b,d			;9b1c	42 	B 
	jr l9b06h		;9b1d	18 e7 	. . 
	rst 38h			;9b1f	ff 	. 
	ld h,(hl)			;9b20	66 	f 
	nop			;9b21	00 	. 
	ld a,(hl)			;9b22	7e 	~ 
	ld a,(hl)			;9b23	7e 	~ 
	inc a			;9b24	3c 	< 
	nop			;9b25	00 	. 
	inc a			;9b26	3c 	< 
	inc a			;9b27	3c 	< 
	nop			;9b28	00 	. 
	nop			;9b29	00 	. 
	jr c,l9b64h		;9b2a	38 38 	8 8 
	nop			;9b2c	00 	. 
	jr z,$+86		;9b2d	28 54 	( T 
	ld a,h			;9b2f	7c 	| 
	djnz l9b86h		;9b30	10 54 	. T 
	cp d			;9b32	ba 	. 
	xor 028h		;9b33	ee 28 	. ( 
l9b35h:
	jr z,l9b35h		;9b35	28 fe 	( . 
	add a,054h		;9b37	c6 54 	. T 
	ld d,h			;9b39	54 	T 
	cp d			;9b3a	ba 	. 
	xor 028h		;9b3b	ee 28 	. ( 
	jr z,$+86		;9b3d	28 54 	( T 
	ld a,h			;9b3f	7c 	| 
	djnz l9b42h		;9b40	10 00 	. . 
l9b42h:
	jr c,$+58		;9b42	38 38 	8 8 
	nop			;9b44	00 	. 
	nop			;9b45	00 	. 
l9b46h:
	nop			;9b46	00 	. 
	nop			;9b47	00 	. 
	nop			;9b48	00 	. 
	nop			;9b49	00 	. 
	inc bc			;9b4a	03 	. 
	inc bc			;9b4b	03 	. 
	nop			;9b4c	00 	. 
	nop			;9b4d	00 	. 
	rrca			;9b4e	0f 	. 
	inc c			;9b4f	0c 	. 
	nop			;9b50	00 	. 
	nop			;9b51	00 	. 
	rra			;9b52	1f 	. 
	djnz l9b55h		;9b53	10 00 	. . 
l9b55h:
	nop			;9b55	00 	. 
	ld a,a			;9b56	7f 	 
	ld h,b			;9b57	60 	` 
	nop			;9b58	00 	. 
	ld h,(hl)			;9b59	66 	f 
	rst 38h			;9b5a	ff 	. 
	add a,b			;9b5b	80 	. 
	nop			;9b5c	00 	. 
	ld l,a			;9b5d	6f 	o 
	rst 38h			;9b5e	ff 	. 
	add a,b			;9b5f	80 	. 
	nop			;9b60	00 	. 
	add hl,bc			;9b61	09 	. 
	rst 38h			;9b62	ff 	. 
	add a,(hl)			;9b63	86 	. 
l9b64h:
	nop			;9b64	00 	. 
	ld b,0ffh		;9b65	06 ff 	. . 
	adc a,c			;9b67	89 	. 
	nop			;9b68	00 	. 
	nop			;9b69	00 	. 
	ret nz			;9b6a	c0 	. 
	ret nz			;9b6b	c0 	. 
	nop			;9b6c	00 	. 
	nop			;9b6d	00 	. 
	ret p			;9b6e	f0 	. 
	jr nc,l9b71h		;9b6f	30 00 	0 . 
l9b71h:
	nop			;9b71	00 	. 
	ret m			;9b72	f8 	. 
	ex af,af'			;9b73	08 	. 
	nop			;9b74	00 	. 
	nop			;9b75	00 	. 
	call m,00004h		;9b76	fc 04 00 	. . . 
	ld h,b			;9b79	60 	` 
	call m,00004h		;9b7a	fc 04 00 	. . . 
	ret p			;9b7d	f0 	. 
	call m,00004h		;9b7e	fc 04 00 	. . . 
	sub b			;9b81	90 	. 
	call m,00064h		;9b82	fc 64 00 	. d . 
	ld h,h			;9b85	64 	d 
l9b86h:
	cp 092h		;9b86	fe 92 	. . 
	nop			;9b88	00 	. 
	rla			;9b89	17 	. 
	jp (hl)			;9b8a	e9 	. 
	sub b			;9b8b	90 	. 
	nop			;9b8c	00 	. 
	dec c			;9b8d	0d 	. 
	ei			;9b8e	fb 	. 
	add a,d			;9b8f	82 	. 
	nop			;9b90	00 	. 
	rrca			;9b91	0f 	. 
	cp 081h		;9b92	fe 81 	. . 
	nop			;9b94	00 	. 
	inc c			;9b95	0c 	. 
	rst 38h			;9b96	ff 	. 
	add a,e			;9b97	83 	. 
	inc bc			;9b98	03 	. 
	rlca			;9b99	07 	. 
	ld a,a			;9b9a	7f 	 
	ld d,b			;9b9b	50 	P 
	djnz l9b9eh		;9b9c	10 00 	. . 
l9b9eh:
	ld a,a			;9b9e	7f 	 
	ld e,b			;9b9f	58 	X 
	jr l9ba3h		;9ba0	18 01 	. . 
	ld a,a			;9ba2	7f 	 
l9ba3h:
	ld e,h			;9ba3	5c 	\ 
	inc e			;9ba4	1c 	. 
	ld bc,07c7fh		;9ba5	01 7f 7c 	.  | 
	inc a			;9ba8	3c 	< 
	call pe,00a96h		;9ba9	ec 96 0a 	. . . 
	nop			;9bac	00 	. 
	or h			;9bad	b4 	. 
	sbc a,042h		;9bae	de 42 	. B 
	nop			;9bb0	00 	. 
	ret p			;9bb1	f0 	. 
	ld a,h			;9bb2	7c 	| 
	add a,h			;9bb3	84 	. 
	nop			;9bb4	00 	. 
l9bb5h:
	jr nc,l9bb5h		;9bb5	30 fe 	0 . 
	jp nz,0e0c0h		;9bb7	c2 c0 e0 	. . . 
	rst 38h			;9bba	ff 	. 
	add hl,bc			;9bbb	09 	. 
	ex af,af'			;9bbc	08 	. 
	nop			;9bbd	00 	. 
	rst 38h			;9bbe	ff 	. 
	add hl,de			;9bbf	19 	. 
	jr l9b42h		;9bc0	18 80 	. . 
	rst 38h			;9bc2	ff 	. 
	add hl,sp			;9bc3	39 	9 
	jr c,l9b46h		;9bc4	38 80 	8 . 
	rst 38h			;9bc6	ff 	. 
	dec a			;9bc7	3d 	= 
	inc a			;9bc8	3c 	< 
	inc bc			;9bc9	03 	. 
	rst 38h			;9bca	ff 	. 
	ret m			;9bcb	f8 	. 
	ld a,b			;9bcc	78 	x 
	nop			;9bcd	00 	. 
	ld a,a			;9bce	7f 	 
	ld a,b			;9bcf	78 	x 
	jr c,l9bd2h		;9bd0	38 00 	8 . 
l9bd2h:
	ccf			;9bd2	3f 	? 
	jr nz,l9bd5h		;9bd3	20 00 	  . 
l9bd5h:
	nop			;9bd5	00 	. 
	ld a,a			;9bd6	7f 	 
	ld b,a			;9bd7	47 	G 
	nop			;9bd8	00 	. 
	nop			;9bd9	00 	. 
	jr c,l9c04h		;9bda	38 28 	8 ( 
	nop			;9bdc	00 	. 
	nop			;9bdd	00 	. 
	ld a,b			;9bde	78 	x 
	ld l,b			;9bdf	68 	h 
	nop			;9be0	00 	. 
	ld h,b			;9be1	60 	` 
	call m,00084h		;9be2	fc 84 00 	. . . 
	nop			;9be5	00 	. 
	call m,000fch		;9be6	fc fc 00 	. . . 
	nop			;9be9	00 	. 
	cp 07ah		;9bea	fe 7a 	. z 
	ld a,b			;9bec	78 	x 
	nop			;9bed	00 	. 
	cp 072h		;9bee	fe 72 	. r 
	ld (hl),b			;9bf0	70 	p 
	inc c			;9bf1	0c 	. 
	cp 012h		;9bf2	fe 12 	. . 
	nop			;9bf4	00 	. 
	inc c			;9bf5	0c 	. 
	cp 082h		;9bf6	fe 82 	. . 
	nop			;9bf8	00 	. 
	nop			;9bf9	00 	. 
	ld a,h			;9bfa	7c 	| 
	ld e,h			;9bfb	5c 	\ 
	nop			;9bfc	00 	. 
	nop			;9bfd	00 	. 
	ld a,b			;9bfe	78 	x 
l9bffh:
	ld e,b			;9bff	58 	X 
	nop			;9c00	00 	. 
	jr l9bffh		;9c01	18 fc 	. . 
	add a,h			;9c03	84 	. 
l9c04h:
	nop			;9c04	00 	. 
	nop			;9c05	00 	. 
	call m,000fch		;9c06	fc fc 00 	. . . 
	nop			;9c09	00 	. 
	rlca			;9c0a	07 	. 
	rlca			;9c0b	07 	. 
	nop			;9c0c	00 	. 
	nop			;9c0d	00 	. 
	rra			;9c0e	1f 	. 
	jr l9c11h		;9c0f	18 00 	. . 
l9c11h:
	nop			;9c11	00 	. 
	ccf			;9c12	3f 	? 
	jr nz,l9c15h		;9c13	20 00 	  . 
l9c15h:
	nop			;9c15	00 	. 
	ld a,a			;9c16	7f 	 
	ld b,b			;9c17	40 	@ 
	nop			;9c18	00 	. 
	inc c			;9c19	0c 	. 
	ld a,a			;9c1a	7f 	 
	ld b,b			;9c1b	40 	@ 
	nop			;9c1c	00 	. 
	rra			;9c1d	1f 	. 
	ld a,a			;9c1e	7f 	 
	ld b,b			;9c1f	40 	@ 
	nop			;9c20	00 	. 
	inc de			;9c21	13 	. 
	ld a,a			;9c22	7f 	 
	ld c,h			;9c23	4c 	L 
	nop			;9c24	00 	. 
	ld c,h			;9c25	4c 	L 
	rst 38h			;9c26	ff 	. 
	sub e			;9c27	93 	. 
	nop			;9c28	00 	. 
	nop			;9c29	00 	. 
	add a,b			;9c2a	80 	. 
	add a,b			;9c2b	80 	. 
	nop			;9c2c	00 	. 
	nop			;9c2d	00 	. 
	ret po			;9c2e	e0 	. 
	ld h,b			;9c2f	60 	` 
	nop			;9c30	00 	. 
	nop			;9c31	00 	. 
	ret p			;9c32	f0 	. 
	djnz l9c35h		;9c33	10 00 	. . 
l9c35h:
	nop			;9c35	00 	. 
	ret m			;9c36	f8 	. 
	ex af,af'			;9c37	08 	. 
	nop			;9c38	00 	. 
	ret nz			;9c39	c0 	. 
	ret m			;9c3a	f8 	. 
l9c3bh:
	ex af,af'			;9c3b	08 	. 
	nop			;9c3c	00 	. 
	ret po			;9c3d	e0 	. 
	ret m			;9c3e	f8 	. 
	ex af,af'			;9c3f	08 	. 
	nop			;9c40	00 	. 
	jr nz,l9c3bh		;9c41	20 f8 	  . 
	ret z			;9c43	c8 	. 
	nop			;9c44	00 	. 
	ret z			;9c45	c8 	. 
	call m,00024h		;9c46	fc 24 00 	. $ . 
	ld l,a			;9c49	6f 	o 
	out (0a0h),a		;9c4a	d3 a0 	. . 
	nop			;9c4c	00 	. 
	ld e,e			;9c4d	5b 	[ 
	rst 30h			;9c4e	f7 	. 
	add a,h			;9c4f	84 	. 
	nop			;9c50	00 	. 
	rra			;9c51	1f 	. 
	ld a,h			;9c52	7c 	| 
	ld b,e			;9c53	43 	C 
	nop			;9c54	00 	. 
	jr l9cd6h		;9c55	18 7f 	.  
	ld b,a			;9c57	47 	G 
	rlca			;9c58	07 	. 
	rrca			;9c59	0f 	. 
	rst 38h			;9c5a	ff 	. 
	and b			;9c5b	a0 	. 
	jr nz,l9c5eh		;9c5c	20 00 	  . 
l9c5eh:
	rst 38h			;9c5e	ff 	. 
	sub b			;9c5f	90 	. 
	djnz l9c65h		;9c60	10 03 	. . 
	rst 38h			;9c62	ff 	. 
	adc a,b			;9c63	88 	. 
	ex af,af'			;9c64	08 	. 
l9c65h:
	inc bc			;9c65	03 	. 
	rst 38h			;9c66	ff 	. 
	ret nz			;9c67	c0 	. 
	ld b,b			;9c68	40 	@ 
	ret c			;9c69	d8 	. 
	inc l			;9c6a	2c 	, 
	inc d			;9c6b	14 	. 
	nop			;9c6c	00 	. 
	ld l,b			;9c6d	68 	h 
	cp h			;9c6e	bc 	. 
	add a,h			;9c6f	84 	. 
	nop			;9c70	00 	. 
	ret po			;9c71	e0 	. 
	ret m			;9c72	f8 	. 
l9c73h:
	ex af,af'			;9c73	08 	. 
	nop			;9c74	00 	. 
	ld h,b			;9c75	60 	` 
	call m,sub_8084h		;9c76	fc 84 80 	. . . 
	ret nz			;9c79	c0 	. 
	cp 012h		;9c7a	fe 12 	. . 
	djnz l9c7eh		;9c7c	10 00 	. . 
l9c7eh:
	cp 032h		;9c7e	fe 32 	. 2 
	jr nc,l9c82h		;9c80	30 00 	0 . 
l9c82h:
	cp 072h		;9c82	fe 72 	. r 
	ld (hl),b			;9c84	70 	p 
	nop			;9c85	00 	. 
	cp 07ah		;9c86	fe 7a 	. z 
	ld a,b			;9c88	78 	x 
	dec bc			;9c89	0b 	. 
	rst 38h			;9c8a	ff 	. 
	ret po			;9c8b	e0 	. 
	ld h,b			;9c8c	60 	` 
	inc e			;9c8d	1c 	. 
	ld a,a			;9c8e	7f 	 
	ld h,b			;9c8f	60 	` 
	jr nz,l9caah		;9c90	20 18 	  . 
	ccf			;9c92	3f 	? 
	jr nz,l9c95h		;9c93	20 00 	  . 
l9c95h:
	nop			;9c95	00 	. 
	ld a,a			;9c96	7f 	 
	ld b,a			;9c97	47 	G 
	nop			;9c98	00 	. 
	nop			;9c99	00 	. 
	jr c,l9cc4h		;9c9a	38 28 	8 ( 
	nop			;9c9c	00 	. 
	nop			;9c9d	00 	. 
	ld a,b			;9c9e	78 	x 
	ld l,b			;9c9f	68 	h 
	nop			;9ca0	00 	. 
	ld h,b			;9ca1	60 	` 
	call m,00084h		;9ca2	fc 84 00 	. . . 
	nop			;9ca5	00 	. 
	call m,000fch		;9ca6	fc fc 00 	. . . 
	nop			;9ca9	00 	. 
l9caah:
	nop			;9caa	00 	. 
	nop			;9cab	00 	. 
	nop			;9cac	00 	. 
	nop			;9cad	00 	. 
	inc a			;9cae	3c 	< 
	inc a			;9caf	3c 	< 
	nop			;9cb0	00 	. 
	inc a			;9cb1	3c 	< 
	ld a,(hl)			;9cb2	7e 	~ 
	ld b,d			;9cb3	42 	B 
	inc a			;9cb4	3c 	< 
	ld a,(hl)			;9cb5	7e 	~ 
	jp 07e81h		;9cb6	c3 81 7e 	. . ~ 
	ld a,(hl)			;9cb9	7e 	~ 
	jp 07e81h		;9cba	c3 81 7e 	. . ~ 
	inc a			;9cbd	3c 	< 
	ld a,(hl)			;9cbe	7e 	~ 
	ld b,d			;9cbf	42 	B 
	inc a			;9cc0	3c 	< 
	nop			;9cc1	00 	. 
	inc a			;9cc2	3c 	< 
	inc a			;9cc3	3c 	< 
l9cc4h:
	nop			;9cc4	00 	. 
	nop			;9cc5	00 	. 
	nop			;9cc6	00 	. 
	nop			;9cc7	00 	. 
	nop			;9cc8	00 	. 
	nop			;9cc9	00 	. 
	inc a			;9cca	3c 	< 
	inc a			;9ccb	3c 	< 
	nop			;9ccc	00 	. 
	nop			;9ccd	00 	. 
	ld a,(hl)			;9cce	7e 	~ 
	ld b,d			;9ccf	42 	B 
	nop			;9cd0	00 	. 
	nop			;9cd1	00 	. 
	ld a,a			;9cd2	7f 	 
	ld b,c			;9cd3	41 	A 
	nop			;9cd4	00 	. 
	inc (hl)			;9cd5	34 	4 
l9cd6h:
	rst 38h			;9cd6	ff 	. 
	pop bc			;9cd7	c1 	. 
	nop			;9cd8	00 	. 
	ld (hl),04fh		;9cd9	36 4f 	6 O 
	ld b,c			;9cdb	41 	A 
	nop			;9cdc	00 	. 
	ld d,(hl)			;9cdd	56 	V 
	rst 28h			;9cde	ef 	. 
	and c			;9cdf	a1 	. 
	nop			;9ce0	00 	. 
	ld (hl),b			;9ce1	70 	p 
	cp 082h		;9ce2	fe 82 	. . 
	nop			;9ce4	00 	. 
	jr $+102		;9ce5	18 64 	. d 
	ld h,h			;9ce7	64 	d 
	nop			;9ce8	00 	. 
	ld d,b			;9ce9	50 	P 
	call nz,000ech		;9cea	c4 ec 00 	. . . 
	djnz l9c73h		;9ced	10 84 	. . 
	call pe,03000h		;9cef	ec 00 30 	. . 0 
	add a,h			;9cf2	84 	. 
	call z,03000h		;9cf3	cc 00 30 	. . 0 
	ld a,b			;9cf6	78 	x 
	ld c,b			;9cf7	48 	H 
	nop			;9cf8	00 	. 
	nop			;9cf9	00 	. 
	jr z,l9d34h		;9cfa	28 38 	( 8 
	nop			;9cfc	00 	. 
l9cfdh:
	djnz l9d37h		;9cfd	10 38 	. 8 
	jr c,l9d01h		;9cff	38 00 	8 . 
l9d01h:
	jr nc,l9d7bh		;9d01	30 78 	0 x 
	ld a,b			;9d03	78 	x 
	nop			;9d04	00 	. 
	nop			;9d05	00 	. 
	ld a,b			;9d06	78 	x 
	ld a,b			;9d07	78 	x 
	nop			;9d08	00 	. 
	nop			;9d09	00 	. 
	inc a			;9d0a	3c 	< 
	inc a			;9d0b	3c 	< 
	nop			;9d0c	00 	. 
	nop			;9d0d	00 	. 
	ld a,(hl)			;9d0e	7e 	~ 
	ld b,d			;9d0f	42 	B 
	nop			;9d10	00 	. 
	nop			;9d11	00 	. 
	ld a,a			;9d12	7f 	 
	ld b,c			;9d13	41 	A 
	nop			;9d14	00 	. 
	inc (hl)			;9d15	34 	4 
	rst 38h			;9d16	ff 	. 
	pop bc			;9d17	c1 	. 
	nop			;9d18	00 	. 
	ld (hl),04fh		;9d19	36 4f 	6 O 
	ld b,c			;9d1b	41 	A 
	nop			;9d1c	00 	. 
	ld d,(hl)			;9d1d	56 	V 
	rst 28h			;9d1e	ef 	. 
	and c			;9d1f	a1 	. 
	nop			;9d20	00 	. 
	ld (hl),b			;9d21	70 	p 
	cp 082h		;9d22	fe 82 	. . 
	nop			;9d24	00 	. 
	djnz $+106		;9d25	10 68 	. h 
	ld l,b			;9d27	68 	h 
	nop			;9d28	00 	. 
	jr z,$+102		;9d29	28 64 	( d 
	ld (hl),h			;9d2b	74 	t 
	nop			;9d2c	00 	. 
	inc b			;9d2d	04 	. 
	ld b,d			;9d2e	42 	B 
	ld a,d			;9d2f	7a 	z 
	nop			;9d30	00 	. 
	ld b,043h		;9d31	06 43 	. C 
	ld a,c			;9d33	79 	y 
l9d34h:
	nop			;9d34	00 	. 
	ld b,067h		;9d35	06 67 	. g 
l9d37h:
	ld a,c			;9d37	79 	y 
	nop			;9d38	00 	. 
	ld b,d			;9d39	42 	B 
	jp 000ffh		;9d3a	c3 ff 00 	. . . 
	ld b,d			;9d3d	42 	B 
	in a,(0ffh)		;9d3e	db ff 	. . 
	nop			;9d40	00 	. 
	nop			;9d41	00 	. 
	ld h,(hl)			;9d42	66 	f 
l9d43h:
	ld h,(hl)			;9d43	66 	f 
	nop			;9d44	00 	. 
	nop			;9d45	00 	. 
	nop			;9d46	00 	. 
	nop			;9d47	00 	. 
	nop			;9d48	00 	. 
	nop			;9d49	00 	. 
	ld b,006h		;9d4a	06 06 	. . 
	nop			;9d4c	00 	. 
	ld b,009h		;9d4d	06 09 	. . 
	add hl,bc			;9d4f	09 	. 
	nop			;9d50	00 	. 
	dec bc			;9d51	0b 	. 
	ld (hl),h			;9d52	74 	t 
	ld (hl),h			;9d53	74 	t 
	nop			;9d54	00 	. 
	ld l,e			;9d55	6b 	k 
	sub h			;9d56	94 	. 
	sub h			;9d57	94 	. 
	ld h,b			;9d58	60 	` 
	halt			;9d59	76 	v 
	adc a,c			;9d5a	89 	. 
	adc a,c			;9d5b	89 	. 
	ld (hl),b			;9d5c	70 	p 
	add hl,de			;9d5d	19 	. 
	and 0c6h		;9d5e	e6 c6 	. . 
	ld a,c			;9d60	79 	y 
	rrca			;9d61	0f 	. 
	ret p			;9d62	f0 	. 
	and b			;9d63	a0 	. 
	ld a,a			;9d64	7f 	 
	inc bc			;9d65	03 	. 
	ld a,h			;9d66	7c 	| 
	ld b,b			;9d67	40 	@ 
	ccf			;9d68	3f 	? 
	nop			;9d69	00 	. 
	nop			;9d6a	00 	. 
	nop			;9d6b	00 	. 
	nop			;9d6c	00 	. 
	nop			;9d6d	00 	. 
	nop			;9d6e	00 	. 
	nop			;9d6f	00 	. 
	nop			;9d70	00 	. 
	nop			;9d71	00 	. 
	add a,b			;9d72	80 	. 
	add a,b			;9d73	80 	. 
	nop			;9d74	00 	. 
	nop			;9d75	00 	. 
	add a,b			;9d76	80 	. 
	add a,b			;9d77	80 	. 
	nop			;9d78	00 	. 
	nop			;9d79	00 	. 
	cp b			;9d7a	b8 	. 
l9d7bh:
	cp b			;9d7b	b8 	. 
	nop			;9d7c	00 	. 
	jr c,l9d43h		;9d7d	38 c4 	8 . 
	call nz,0fc38h		;9d7f	c4 38 fc 	. 8 . 
	ld (bc),a			;9d82	02 	. 
	ld (bc),a			;9d83	02 	. 
	call m,002fch		;9d84	fc fc 02 	. . . 
	ld (bc),a			;9d87	02 	. 
	call m,07c03h		;9d88	fc 03 7c 	. . | 
	ld b,b			;9d8b	40 	@ 
	ccf			;9d8c	3f 	? 
	rrca			;9d8d	0f 	. 
	jr nc,$+50		;9d8e	30 30 	0 0 
	rrca			;9d90	0f 	. 
	inc c			;9d91	0c 	. 
	inc de			;9d92	13 	. 
	djnz l9da4h		;9d93	10 0f 	. . 
	inc c			;9d95	0c 	. 
	di			;9d96	f3 	. 
	jp p,0fc0dh		;9d97	f2 0d fc 	. . . 
	inc bc			;9d9a	03 	. 
	ld (bc),a			;9d9b	02 	. 
	defb 0fdh,038h,0c5h	;illegal sequence		;9d9c	fd 38 c5 	. 8 . 
	push bc			;9d9f	c5 	. 
	jr c,l9df3h		;9da0	38 51 	8 Q 
	xor d			;9da2	aa 	. 
	xor d			;9da3	aa 	. 
l9da4h:
	ld d,c			;9da4	51 	Q 
	sub b			;9da5	90 	. 
	ld l,e			;9da6	6b 	k 
	ld l,e			;9da7	6b 	k 
	sub b			;9da8	90 	. 
	cp 001h		;9da9	fe 01 	. . 
	ld bc,0fefeh		;9dab	01 fe fe 	. . . 
	ld bc,0fe01h		;9dae	01 01 fe 	. . . 
	ld b,(hl)			;9db1	46 	F 
	cp c			;9db2	b9 	. 
	cp c			;9db3	b9 	. 
	ld b,(hl)			;9db4	46 	F 
	ld a,(045c5h)		;9db5	3a c5 45 	: . E 
	cp d			;9db8	ba 	. 
	ld a,(hl)			;9db9	7e 	~ 
	add a,c			;9dba	81 	. 
	add a,c			;9dbb	81 	. 
	ld a,(hl)			;9dbc	7e 	~ 
	inc c			;9dbd	0c 	. 
	jp p,00cf2h		;9dbe	f2 f2 0c 	. . . 
	call m,00202h		;9dc1	fc 02 02 	. . . 
	call m,0fc00h		;9dc4	fc 00 fc 	. . . 
	call m,00700h		;9dc7	fc 00 07 	. . . 
	ret m			;9dca	f8 	. 
l9dcbh:
	add a,b			;9dcb	80 	. 
	ld a,a			;9dcc	7f 	 
	ccf			;9dcd	3f 	? 
	ld b,b			;9dce	40 	@ 
	ld b,b			;9dcf	40 	@ 
	ccf			;9dd0	3f 	? 
	add hl,sp			;9dd1	39 	9 
	ld b,(hl)			;9dd2	46 	F 
	ld b,b			;9dd3	40 	@ 
	ccf			;9dd4	3f 	? 
	inc e			;9dd5	1c 	. 
	inc hl			;9dd6	23 	# 
	jr nz,l9df8h		;9dd7	20 1f 	  . 
	inc e			;9dd9	1c 	. 
	inc hl			;9dda	23 	# 
	ld hl,01c1eh		;9ddb	21 1e 1c 	! . . 
	inc hl			;9dde	23 	# 
	inc hl			;9ddf	23 	# 
	inc e			;9de0	1c 	. 
	inc c			;9de1	0c 	. 
	inc de			;9de2	13 	. 
	inc de			;9de3	13 	. 
	inc c			;9de4	0c 	. 
	inc c			;9de5	0c 	. 
	inc de			;9de6	13 	. 
	inc de			;9de7	13 	. 
	inc c			;9de8	0c 	. 
	call m,00202h		;9de9	fc 02 02 	. . . 
	call m,002fch		;9dec	fc fc 02 	. . . 
	ld (bc),a			;9def	02 	. 
	call m,002fch		;9df0	fc fc 02 	. . . 
l9df3h:
	ld (bc),a			;9df3	02 	. 
	call m,002fch		;9df4	fc fc 02 	. . . 
	ld (bc),a			;9df7	02 	. 
l9df8h:
	call m,002fch		;9df8	fc fc 02 	. . . 
	ld (bc),a			;9dfb	02 	. 
	call m,022dch		;9dfc	fc dc 22 	. . " 
	ld (03cdch),hl		;9dff	22 dc 3c 	" . < 
	jp nz,03cc2h		;9e02	c2 c2 3c 	. . < 
	jr c,l9dcbh		;9e05	38 c4 	8 . 
	call nz,06138h		;9e07	c4 38 61 	. 8 a 
	sub d			;9e0a	92 	. 
	sub d			;9e0b	92 	. 
	ld h,c			;9e0c	61 	a 
	ld (hl),c			;9e0d	71 	q 
	add a,d			;9e0e	82 	. 
	add a,d			;9e0f	82 	. 
	ld (hl),c			;9e10	71 	q 
	jr nc,l9e60h		;9e11	30 4d 	0 M 
	ld c,l			;9e13	4d 	M 
	jr nc,l9e52h		;9e14	30 3c 	0 < 
	ld b,d			;9e16	42 	B 
	ld b,d			;9e17	42 	B 
	inc a			;9e18	3c 	< 
	jr l9e3fh		;9e19	18 24 	. $ 
	inc h			;9e1b	24 	$ 
	jr l9e2ah		;9e1c	18 0c 	. . 
	ld (de),a			;9e1e	12 	. 
	ld (de),a			;9e1f	12 	. 
	inc c			;9e20	0c 	. 
	ld b,009h		;9e21	06 09 	. . 
	add hl,bc			;9e23	09 	. 
	ld b,000h		;9e24	06 00 	. . 
	rlca			;9e26	07 	. 
	rlca			;9e27	07 	. 
	nop			;9e28	00 	. 
	ret nz			;9e29	c0 	. 
l9e2ah:
	jr nz,l9e4ch		;9e2a	20 20 	    
	ret nz			;9e2c	c0 	. 
	ret nz			;9e2d	c0 	. 
	jr nz,l9e50h		;9e2e	20 20 	    
	ret nz			;9e30	c0 	. 
	ret nz			;9e31	c0 	. 
	jr nz,$+34		;9e32	20 20 	    
	ret nz			;9e34	c0 	. 
	ld b,b			;9e35	40 	@ 
	and b			;9e36	a0 	. 
	and b			;9e37	a0 	. 
	ld b,b			;9e38	40 	@ 
	ld h,b			;9e39	60 	` 
	sub b			;9e3a	90 	. 
	sub b			;9e3b	90 	. 
	ld h,b			;9e3c	60 	` 
	ld h,b			;9e3d	60 	` 
	sub b			;9e3e	90 	. 
l9e3fh:
	sub b			;9e3f	90 	. 
	ld h,b			;9e40	60 	` 
	jr nc,$-62		;9e41	30 c0 	0 . 
	ret nz			;9e43	c0 	. 
	jr nc,$+18		;9e44	30 10 	0 . 
	jr nz,l9e68h		;9e46	20 20 	    
	djnz l9e4ah		;9e48	10 00 	. . 
l9e4ah:
	nop			;9e4a	00 	. 
l9e4bh:
	nop			;9e4b	00 	. 
l9e4ch:
	nop			;9e4c	00 	. 
	nop			;9e4d	00 	. 
	nop			;9e4e	00 	. 
	nop			;9e4f	00 	. 
l9e50h:
	nop			;9e50	00 	. 
	nop			;9e51	00 	. 
l9e52h:
	ld bc,00001h		;9e52	01 01 00 	. . . 
	ld bc,03e3eh		;9e55	01 3e 3e 	. > > 
	ld bc,0423dh		;9e58	01 3d 42 	. = B 
	ld b,d			;9e5b	42 	B 
	dec a			;9e5c	3d 	= 
	ld h,a			;9e5d	67 	g 
	sbc a,b			;9e5e	98 	. 
	sbc a,b			;9e5f	98 	. 
l9e60h:
	ld h,a			;9e60	67 	g 
	ld b,e			;9e61	43 	C 
	and h			;9e62	a4 	. 
	and h			;9e63	a4 	. 
	ld b,e			;9e64	43 	C 
	ld b,e			;9e65	43 	C 
	xor h			;9e66	ac 	. 
	xor h			;9e67	ac 	. 
l9e68h:
	ld b,e			;9e68	43 	C 
	nop			;9e69	00 	. 
	ld a,b			;9e6a	78 	x 
	ld a,b			;9e6b	78 	x 
	nop			;9e6c	00 	. 
	ld a,b			;9e6d	78 	x 
	add a,h			;9e6e	84 	. 
	add a,h			;9e6f	84 	. 
	ld a,b			;9e70	78 	x 
	call z,03232h		;9e71	cc 32 32 	. 2 2 
	call z,06a84h		;9e74	cc 84 6a 	. . j 
	ld l,d			;9e77	6a 	j 
	add a,h			;9e78	84 	. 
	inc h			;9e79	24 	$ 
	jp c,024dah		;9e7a	da da 24 	. . $ 
	ld b,h			;9e7d	44 	D 
	xor d			;9e7e	aa 	. 
	xor d			;9e7f	aa 	. 
	ld b,h			;9e80	44 	D 
	ld c,h			;9e81	4c 	L 
	or d			;9e82	b2 	. 
	or d			;9e83	b2 	. 
	ld c,h			;9e84	4c 	L 
	jr c,l9e4bh		;9e85	38 c4 	8 . 
	call nz,06b38h		;9e87	c4 38 6b 	. 8 k 
	sub h			;9e8a	94 	. 
	sub h			;9e8b	94 	. 
	ld l,e			;9e8c	6b 	k 
	ld sp,04a4ah		;9e8d	31 4a 4a 	1 J J 
	ld sp,03e01h		;9e90	31 01 3e 	1 . > 
	ld a,001h		;9e93	3e 01 	> . 
	dec c			;9e95	0d 	. 
	ld (de),a			;9e96	12 	. 
	ld (de),a			;9e97	12 	. 
	dec c			;9e98	0d 	. 
	inc de			;9e99	13 	. 
	inc l			;9e9a	2c 	, 
	inc l			;9e9b	2c 	, 
	inc de			;9e9c	13 	. 
	dec bc			;9e9d	0b 	. 
	inc d			;9e9e	14 	. 
	inc d			;9e9f	14 	. 
	dec bc			;9ea0	0b 	. 
	ld bc,00a0ah		;9ea1	01 0a 0a 	. . . 
	ld bc,00201h		;9ea4	01 01 02 	. . . 
	ld (bc),a			;9ea7	02 	. 
	ld bc,lb800h		;9ea8	01 00 b8 	. . . 
	cp b			;9eab	b8 	. 
	nop			;9eac	00 	. 
	nop			;9ead	00 	. 
	add a,b			;9eae	80 	. 
	add a,b			;9eaf	80 	. 
	nop			;9eb0	00 	. 
	nop			;9eb1	00 	. 
	add a,b			;9eb2	80 	. 
	add a,b			;9eb3	80 	. 
	nop			;9eb4	00 	. 
	nop			;9eb5	00 	. 
	add a,b			;9eb6	80 	. 
	add a,b			;9eb7	80 	. 
	nop			;9eb8	00 	. 
	nop			;9eb9	00 	. 
	add a,b			;9eba	80 	. 
	add a,b			;9ebb	80 	. 
	nop			;9ebc	00 	. 
	nop			;9ebd	00 	. 
	add a,b			;9ebe	80 	. 
	add a,b			;9ebf	80 	. 
	nop			;9ec0	00 	. 
	nop			;9ec1	00 	. 
	add a,b			;9ec2	80 	. 
	add a,b			;9ec3	80 	. 
	nop			;9ec4	00 	. 
	nop			;9ec5	00 	. 
	add a,b			;9ec6	80 	. 
	add a,b			;9ec7	80 	. 
	nop			;9ec8	00 	. 
	ld b,b			;9ec9	40 	@ 
	and b			;9eca	a0 	. 
	and b			;9ecb	a0 	. 
	ld b,b			;9ecc	40 	@ 
	ld b,b			;9ecd	40 	@ 
	and b			;9ece	a0 	. 
	and b			;9ecf	a0 	. 
	ld b,b			;9ed0	40 	@ 
	ld b,b			;9ed1	40 	@ 
	and b			;9ed2	a0 	. 
	and b			;9ed3	a0 	. 
	ld b,b			;9ed4	40 	@ 
	ld b,b			;9ed5	40 	@ 
	and b			;9ed6	a0 	. 
	and b			;9ed7	a0 	. 
	ld b,b			;9ed8	40 	@ 
	ld b,b			;9ed9	40 	@ 
	and b			;9eda	a0 	. 
	and b			;9edb	a0 	. 
	ld b,b			;9edc	40 	@ 
	ld b,b			;9edd	40 	@ 
	and b			;9ede	a0 	. 
	and b			;9edf	a0 	. 
	ld b,b			;9ee0	40 	@ 
	ld b,b			;9ee1	40 	@ 
	and b			;9ee2	a0 	. 
	and b			;9ee3	a0 	. 
	ld b,b			;9ee4	40 	@ 
	ld b,b			;9ee5	40 	@ 
l9ee6h:
	and b			;9ee6	a0 	. 
	and b			;9ee7	a0 	. 
	ld b,b			;9ee8	40 	@ 
	nop			;9ee9	00 	. 
	nop			;9eea	00 	. 
	nop			;9eeb	00 	. 
	nop			;9eec	00 	. 
	nop			;9eed	00 	. 
	ld bc,00001h		;9eee	01 01 00 	. . . 
	ld bc,06767h		;9ef1	01 67 67 	. g g 
	ld bc,0ff65h		;9ef4	01 65 ff 	. e . 
	sbc a,l			;9ef7	9d 	. 
	dec b			;9ef8	05 	. 
	ld l,(hl)			;9ef9	6e 	n 
	rst 38h			;9efa	ff 	. 
	sbc a,(hl)			;9efb	9e 	. 
	ld c,05fh		;9efc	0e 5f 	. _ 
	ld sp,hl			;9efe	f9 	. 
	cp c			;9eff	b9 	. 
	add hl,de			;9f00	19 	. 
	ld e,a			;9f01	5f 	_ 
	ret p			;9f02	f0 	. 
	or b			;9f03	b0 	. 
	djnz l9f83h		;9f04	10 7d 	. } 
	jp p,01092h		;9f06	f2 92 10 	. . . 
	nop			;9f09	00 	. 
	nop			;9f0a	00 	. 
	nop			;9f0b	00 	. 
	nop			;9f0c	00 	. 
	nop			;9f0d	00 	. 
l9f0eh:
	ret nz			;9f0e	c0 	. 
	ret nz			;9f0f	c0 	. 
	nop			;9f10	00 	. 
	ret nz			;9f11	c0 	. 
	or 0f6h		;9f12	f6 f6 	. . 
	ret nz			;9f14	c0 	. 
	or 0ffh		;9f15	f6 ff 	. . 
	ld sp,hl			;9f17	f9 	. 
	ret p			;9f18	f0 	. 
	cp 0ffh		;9f19	fe ff 	. . 
	ld sp,hl			;9f1b	f9 	. 
	ret m			;9f1c	f8 	. 
	ld a,d			;9f1d	7a 	z 
	rst 8			;9f1e	cf 	. 
	ld c,l			;9f1f	4d 	M 
	ld c,b			;9f20	48 	H 
	ld a,(hl)			;9f21	7e 	~ 
	add a,a			;9f22	87 	. 
	dec b			;9f23	05 	. 
	inc b			;9f24	04 	. 
	ld e,(hl)			;9f25	5e 	^ 
	and a			;9f26	a7 	. 
	ld hl,07d00h		;9f27	21 00 7d 	! . } 
	di			;9f2a	f3 	. 
	pop af			;9f2b	f1 	. 
	ld (hl),c			;9f2c	71 	q 
	ld a,(de)			;9f2d	1a 	. 
	rst 38h			;9f2e	ff 	. 
	sbc a,d			;9f2f	9a 	. 
	ld a,(de)			;9f30	1a 	. 
	ld h,(hl)			;9f31	66 	f 
	rst 38h			;9f32	ff 	. 
	and 066h		;9f33	e6 66 	. f 
	ld a,d			;9f35	7a 	z 
	rst 38h			;9f36	ff 	. 
	jp m,03d7ah		;9f37	fa 7a 3d 	. z = 
	ld a,a			;9f3a	7f 	 
	ld a,l			;9f3b	7d 	} 
	dec a			;9f3c	3d 	= 
	dec a			;9f3d	3d 	= 
	ld a,a			;9f3e	7f 	 
	ld a,l			;9f3f	7d 	} 
	dec a			;9f40	3d 	= 
	dec e			;9f41	1d 	. 
	ccf			;9f42	3f 	? 
	ccf			;9f43	3f 	? 
	dec e			;9f44	1d 	. 
	nop			;9f45	00 	. 
	dec e			;9f46	1d 	. 
	dec e			;9f47	1d 	. 
	nop			;9f48	00 	. 
	ld a,b			;9f49	78 	x 
	sbc a,h			;9f4a	9c 	. 
l9f4bh:
	inc e			;9f4b	1c 	. 
	jr l9ee6h		;9f4c	18 98 	. . 
	call m,sub_989ch		;9f4e	fc 9c 98 	. . . 
	ret pe			;9f51	e8 	. 
	call m,0e8ech		;9f52	fc ec e8 	. . . 
	ret p			;9f55	f0 	. 
	call m,0f0f4h		;9f56	fc f4 f0 	. . . 
	ret p			;9f59	f0 	. 
	ret m			;9f5a	f8 	. 
	ret m			;9f5b	f8 	. 
	ret p			;9f5c	f0 	. 
	ret p			;9f5d	f0 	. 
	ret m			;9f5e	f8 	. 
	ret m			;9f5f	f8 	. 
	ret p			;9f60	f0 	. 
	ret po			;9f61	e0 	. 
	ret p			;9f62	f0 	. 
	ret p			;9f63	f0 	. 
	ret po			;9f64	e0 	. 
	nop			;9f65	00 	. 
	ret po			;9f66	e0 	. 
	ret po			;9f67	e0 	. 
	nop			;9f68	00 	. 
	nop			;9f69	00 	. 
	ld h,b			;9f6a	60 	` 
	ld h,b			;9f6b	60 	` 
	nop			;9f6c	00 	. 
	ld h,b			;9f6d	60 	` 
	di			;9f6e	f3 	. 
	sub e			;9f6f	93 	. 
	nop			;9f70	00 	. 
	ld h,e			;9f71	63 	c 
	rst 38h			;9f72	ff 	. 
	sbc a,a			;9f73	9f 	. 
	inc bc			;9f74	03 	. 
	ld c,e			;9f75	4b 	K 
	rst 38h			;9f76	ff 	. 
	cp e			;9f77	bb 	. 
	dec bc			;9f78	0b 	. 
	ld e,l			;9f79	5d 	] 
	rst 38h			;9f7a	ff 	. 
	cp l			;9f7b	bd 	. 
	dec e			;9f7c	1d 	. 
	ld a,(hl)			;9f7d	7e 	~ 
	di			;9f7e	f3 	. 
	or d			;9f7f	b2 	. 
	ld (0e57ah),a		;9f80	32 7a e5 	2 z . 
l9f83h:
	and h			;9f83	a4 	. 
	jr nz,la004h		;9f84	20 7e 	  ~ 
	pop hl			;9f86	e1 	. 
	and b			;9f87	a0 	. 
	jr nz,l9f8ah		;9f88	20 00 	  . 
l9f8ah:
	jr l9fa4h		;9f8a	18 18 	. . 
	nop			;9f8c	00 	. 
	jr l9f4bh		;9f8d	18 bc 	. . 
	and h			;9f8f	a4 	. 
	nop			;9f90	00 	. 
	sbc a,b			;9f91	98 	. 
	call m,sub_80e4h		;9f92	fc e4 80 	. . . 
	ret pe			;9f95	e8 	. 
	call m,0e0f4h		;9f96	fc f4 e0 	. . . 
	ret m			;9f99	f8 	. 
	call m,0f0f4h		;9f9a	fc f4 f0 	. . . 
	ret m			;9f9d	f8 	. 
	sbc a,h			;9f9e	9c 	. 
	sub h			;9f9f	94 	. 
	sub b			;9fa0	90 	. 
	cp b			;9fa1	b8 	. 
	ld c,h			;9fa2	4c 	L 
	ld b,h			;9fa3	44 	D 
l9fa4h:
	nop			;9fa4	00 	. 
	ret m			;9fa5	f8 	. 
	inc c			;9fa6	0c 	. 
	inc b			;9fa7	04 	. 
	nop			;9fa8	00 	. 
	nop			;9fa9	00 	. 
	inc b			;9faa	04 	. 
	inc b			;9fab	04 	. 
	inc b			;9fac	04 	. 
	dec b			;9fad	05 	. 
	ld (bc),a			;9fae	02 	. 
	rlca			;9faf	07 	. 
	ld (bc),a			;9fb0	02 	. 
	add hl,bc			;9fb1	09 	. 
	ld d,01fh		;9fb2	16 1f 	. . 
	ld d,010h		;9fb4	16 10 	. . 
	rrca			;9fb6	0f 	. 
	rra			;9fb7	1f 	. 
	rrca			;9fb8	0f 	. 
	ld (03d1fh),hl		;9fb9	22 1f 3d 	" . = 
	dec e			;9fbc	1d 	. 
	ld b,h			;9fbd	44 	D 
	ccf			;9fbe	3f 	? 
	ld a,e			;9fbf	7b 	{ 
	dec sp			;9fc0	3b 	; 
	ld d,h			;9fc1	54 	T 
	xor a			;9fc2	af 	. 
	ex de,hl			;9fc3	eb 	. 
	xor e			;9fc4	ab 	. 
	ld d,0efh		;9fc5	16 ef 	. . 
	jp (hl)			;9fc7	e9 	. 
	ret po			;9fc8	e0 	. 
	nop			;9fc9	00 	. 
	nop			;9fca	00 	. 
	nop			;9fcb	00 	. 
	nop			;9fcc	00 	. 
	nop			;9fcd	00 	. 
	nop			;9fce	00 	. 
	nop			;9fcf	00 	. 
	nop			;9fd0	00 	. 
	nop			;9fd1	00 	. 
	ld b,b			;9fd2	40 	@ 
	ld b,b			;9fd3	40 	@ 
	ld b,b			;9fd4	40 	@ 
	ld b,b			;9fd5	40 	@ 
	add a,b			;9fd6	80 	. 
	ret nz			;9fd7	c0 	. 
	add a,b			;9fd8	80 	. 
	add a,b			;9fd9	80 	. 
	nop			;9fda	00 	. 
	add a,b			;9fdb	80 	. 
	nop			;9fdc	00 	. 
	ld b,b			;9fdd	40 	@ 
	and b			;9fde	a0 	. 
	ret po			;9fdf	e0 	. 
	and b			;9fe0	a0 	. 
	add a,b			;9fe1	80 	. 
	ld h,b			;9fe2	60 	` 
	ld h,b			;9fe3	60 	` 
	ld h,b			;9fe4	60 	` 
	and b			;9fe5	a0 	. 
	ld b,b			;9fe6	40 	@ 
	ld h,b			;9fe7	60 	` 
	ld b,b			;9fe8	40 	@ 
	ld b,a			;9fe9	47 	G 
	ccf			;9fea	3f 	? 
	ld a,b			;9feb	78 	x 
	jr c,la035h		;9fec	38 47 	8 G 
	cp a			;9fee	bf 	. 
l9fefh:
	ret m			;9fef	f8 	. 
	cp b			;9ff0	b8 	. 
	adc a,a			;9ff1	8f 	. 
	ld a,a			;9ff2	7f 	 
	ret p			;9ff3	f0 	. 
	ld (hl),b			;9ff4	70 	p 
	adc a,a			;9ff5	8f 	. 
	ld a,a			;9ff6	7f 	 
	ret p			;9ff7	f0 	. 
	ld (hl),b			;9ff8	70 	p 
	adc a,a			;9ff9	8f 	. 
	ld a,a			;9ffa	7f 	 
	ret p			;9ffb	f0 	. 
l9ffch:
	ld (hl),b			;9ffc	70 	p 
	ld h,a			;9ffd	67 	g 
	rra			;9ffe	1f 	. 
l9fffh:
	ld a,b			;9fff	78 	x 
	jr la01ah		;a000	18 18 	. . 
	rlca			;a002	07 	. 
	rra			;a003	1f 	. 
la004h:
	rlca			;a004	07 	. 
	rlca			;a005	07 	. 
	nop			;a006	00 	. 
	rlca			;a007	07 	. 
	nop			;a008	00 	. 
	djnz l9fefh		;a009	10 e4 	. . 
	call p,sub_90e4h		;a00b	f4 e4 90 	. . . 
	ret pe			;a00e	e8 	. 
	ld a,b			;a00f	78 	x 
	ld l,b			;a010	68 	h 
	add a,b			;a011	80 	. 
	ret m			;a012	f8 	. 
	ld a,b			;a013	78 	x 
	ld a,b			;a014	78 	x 
	adc a,b			;a015	88 	. 
	ret p			;a016	f0 	. 
	ld a,b			;a017	78 	x 
	ld (hl),b			;a018	70 	p 
	adc a,b			;a019	88 	. 
la01ah:
	ret p			;a01a	f0 	. 
	ld a,b			;a01b	78 	x 
	ld (hl),b			;a01c	70 	p 
	djnz l9fffh		;a01d	10 e0 	. . 
	ret p			;a01f	f0 	. 
	ret po			;a020	e0 	. 
	ld h,b			;a021	60 	` 
	add a,b			;a022	80 	. 
	ret po			;a023	e0 	. 
	add a,b			;a024	80 	. 
	add a,b			;a025	80 	. 
	nop			;a026	00 	. 
	add a,b			;a027	80 	. 
	nop			;a028	00 	. 
	ex af,af'			;a029	08 	. 
	inc b			;a02a	04 	. 
	inc c			;a02b	0c 	. 
	inc b			;a02c	04 	. 
	ld a,(bc)			;a02d	0a 	. 
	inc b			;a02e	04 	. 
	ld c,004h		;a02f	0e 04 	. . 
	ld (de),a			;a031	12 	. 
	dec c			;a032	0d 	. 
	rra			;a033	1f 	. 
	dec c			;a034	0d 	. 
la035h:
	ld bc,03f3eh		;a035	01 3e 3f 	. > ? 
	ld a,028h		;a038	3e 28 	> ( 
	rra			;a03a	1f 	. 
	scf			;a03b	37 	7 
	rla			;a03c	17 	. 
	ld b,h			;a03d	44 	D 
	cp a			;a03e	bf 	. 
	ei			;a03f	fb 	. 
	cp e			;a040	bb 	. 
	ld d,h			;a041	54 	T 
	rrca			;a042	0f 	. 
	ld l,e			;a043	6b 	k 
	dec bc			;a044	0b 	. 
	sub h			;a045	94 	. 
	ld c,a			;a046	4f 	O 
	ex de,hl			;a047	eb 	. 
	ld b,d			;a048	42 	B 
	nop			;a049	00 	. 
	nop			;a04a	00 	. 
	nop			;a04b	00 	. 
	nop			;a04c	00 	. 
	nop			;a04d	00 	. 
	nop			;a04e	00 	. 
	nop			;a04f	00 	. 
	nop			;a050	00 	. 
	nop			;a051	00 	. 
	nop			;a052	00 	. 
	nop			;a053	00 	. 
	nop			;a054	00 	. 
	nop			;a055	00 	. 
	nop			;a056	00 	. 
	nop			;a057	00 	. 
sub_a058h:
	nop			;a058	00 	. 
	add a,b			;a059	80 	. 
la05ah:
	jr nz,l9ffch		;a05a	20 a0 	  . 
	jr nz,la09eh		;a05c	20 40 	  @ 
la05eh:
	and b			;a05e	a0 	. 
	ret po			;a05f	e0 	. 
	and b			;a060	a0 	. 
	ret nz			;a061	c0 	. 
	nop			;a062	00 	. 
	ld b,b			;a063	40 	@ 
	nop			;a064	00 	. 
	add a,b			;a065	80 	. 
	ld b,b			;a066	40 	@ 
	ld b,b			;a067	40 	@ 
	ld b,b			;a068	40 	@ 
	inc hl			;a069	23 	# 
	sbc a,a			;a06a	9f 	. 
	cp h			;a06b	bc 	. 
	sbc a,h			;a06c	9c 	. 
	daa			;a06d	27 	' 
	ld e,a			;a06e	5f 	_ 
	ld a,b			;a06f	78 	x 
	ld e,b			;a070	58 	X 
	rlca			;a071	07 	. 
	ld a,a			;a072	7f 	 
	ld a,b			;a073	78 	x 
	ld a,b			;a074	78 	x 
	ld b,a			;a075	47 	G 
	ccf			;a076	3f 	? 
	ld a,b			;a077	78 	x 
	jr c,la0c1h		;a078	38 47 	8 G 
	ccf			;a07a	3f 	? 
	ld a,b			;a07b	78 	x 
	jr c,la0a1h		;a07c	38 23 	8 # 
	rra			;a07e	1f 	. 
	inc a			;a07f	3c 	< 
	inc e			;a080	1c 	. 
	jr la08ah		;a081	18 07 	. . 
	rra			;a083	1f 	. 
	rlca			;a084	07 	. 
	rlca			;a085	07 	. 
	nop			;a086	00 	. 
	rlca			;a087	07 	. 
	nop			;a088	00 	. 
	adc a,b			;a089	88 	. 
la08ah:
	ret p			;a08a	f0 	. 
	ld a,b			;a08b	78 	x 
	ld (hl),b			;a08c	70 	p 
	adc a,b			;a08d	88 	. 
	call p,0747ch		;a08e	f4 7c 74 	. | t 
	call nz,03cf8h		;a091	c4 f8 3c 	. . < 
	jr c,la05ah		;a094	38 c4 	8 . 
	ret m			;a096	f8 	. 
	inc a			;a097	3c 	< 
	jr c,la05eh		;a098	38 c4 	8 . 
	ret m			;a09a	f8 	. 
	inc a			;a09b	3c 	< 
	jr c,$-102		;a09c	38 98 	8 . 
la09eh:
	ret po			;a09e	e0 	. 
	ld a,b			;a09f	78 	x 
	ld h,b			;a0a0	60 	` 
la0a1h:
	ld h,b			;a0a1	60 	` 
	add a,b			;a0a2	80 	. 
	ret po			;a0a3	e0 	. 
	add a,b			;a0a4	80 	. 
	add a,b			;a0a5	80 	. 
	nop			;a0a6	00 	. 
	add a,b			;a0a7	80 	. 
	nop			;a0a8	00 	. 
	nop			;a0a9	00 	. 
	ld de,01100h		;a0aa	11 00 11 	. . . 
	nop			;a0ad	00 	. 
	inc de			;a0ae	13 	. 
	nop			;a0af	00 	. 
	inc de			;a0b0	13 	. 
	nop			;a0b1	00 	. 
	ld h,000h		;a0b2	26 00 	& . 
	ld h,000h		;a0b4	26 00 	& . 
	ld hl,(02a00h)		;a0b6	2a 00 2a 	* . * 
	nop			;a0b9	00 	. 
	ld d,h			;a0ba	54 	T 
	nop			;a0bb	00 	. 
	ld d,h			;a0bc	54 	T 
	nop			;a0bd	00 	. 
	ld h,h			;a0be	64 	d 
	nop			;a0bf	00 	. 
	ld h,h			;a0c0	64 	d 
la0c1h:
	nop			;a0c1	00 	. 
	ret z			;a0c2	c8 	. 
	nop			;a0c3	00 	. 
	ret z			;a0c4	c8 	. 
	nop			;a0c5	00 	. 
	adc a,b			;a0c6	88 	. 
	nop			;a0c7	00 	. 
	adc a,b			;a0c8	88 	. 
	nop			;a0c9	00 	. 
	ld c,00eh		;a0ca	0e 0e 	. . 
	nop			;a0cc	00 	. 
	ld c,031h		;a0cd	0e 31 	. 1 
	ccf			;a0cf	3f 	? 
	ld c,03fh		;a0d0	0e 3f 	. ? 
	ld b,b			;a0d2	40 	@ 
	ld a,a			;a0d3	7f 	 
	ccf			;a0d4	3f 	? 
	ld a,a			;a0d5	7f 	 
	add a,b			;a0d6	80 	. 
	rst 38h			;a0d7	ff 	. 
	ld a,a			;a0d8	7f 	 
	ld a,a			;a0d9	7f 	 
	add a,b			;a0da	80 	. 
	rst 38h			;a0db	ff 	. 
	ld a,a			;a0dc	7f 	 
	ld a,a			;a0dd	7f 	 
	add a,b			;a0de	80 	. 
	rst 38h			;a0df	ff 	. 
	ld a,a			;a0e0	7f 	 
	dec sp			;a0e1	3b 	; 
	ld b,h			;a0e2	44 	D 
	ld a,a			;a0e3	7f 	 
	dec sp			;a0e4	3b 	; 
	ld b,a			;a0e5	47 	G 
	cp b			;a0e6	b8 	. 
	rst 38h			;a0e7	ff 	. 
	ld b,a			;a0e8	47 	G 
	nop			;a0e9	00 	. 
	ld e,01eh		;a0ea	1e 1e 	. . 
	nop			;a0ec	00 	. 
	ld e,0a1h		;a0ed	1e a1 	. . 
	cp a			;a0ef	bf 	. 
	ld e,0bfh		;a0f0	1e bf 	. . 
	ld b,b			;a0f2	40 	@ 
	rst 38h			;a0f3	ff 	. 
	cp a			;a0f4	bf 	. 
	rst 38h			;a0f5	ff 	. 
	nop			;a0f6	00 	. 
	rst 38h			;a0f7	ff 	. 
	rst 38h			;a0f8	ff 	. 
	rst 38h			;a0f9	ff 	. 
	nop			;a0fa	00 	. 
	rst 38h			;a0fb	ff 	. 
	rst 38h			;a0fc	ff 	. 
	rst 38h			;a0fd	ff 	. 
	nop			;a0fe	00 	. 
	rst 38h			;a0ff	ff 	. 
	rst 38h			;a100	ff 	. 
	rst 38h			;a101	ff 	. 
	nop			;a102	00 	. 
	rst 38h			;a103	ff 	. 
	rst 38h			;a104	ff 	. 
	rst 38h			;a105	ff 	. 
	nop			;a106	00 	. 
	rst 38h			;a107	ff 	. 
	rst 38h			;a108	ff 	. 
	nop			;a109	00 	. 
	nop			;a10a	00 	. 
	nop			;a10b	00 	. 
	nop			;a10c	00 	. 
	nop			;a10d	00 	. 
	ld h,b			;a10e	60 	` 
	ld h,b			;a10f	60 	` 
	nop			;a110	00 	. 
	ld h,b			;a111	60 	` 
	sub b			;a112	90 	. 
	ret p			;a113	f0 	. 
	ld h,b			;a114	60 	` 
	ret p			;a115	f0 	. 
	ex af,af'			;a116	08 	. 
	ret m			;a117	f8 	. 
	ret p			;a118	f0 	. 
	ret p			;a119	f0 	. 
	ex af,af'			;a11a	08 	. 
	ret m			;a11b	f8 	. 
	ret p			;a11c	f0 	. 
	ret m			;a11d	f8 	. 
	inc b			;a11e	04 	. 
	call m,0fcf8h		;a11f	fc f8 fc 	. . . 
	ld (bc),a			;a122	02 	. 
	cp 0fch		;a123	fe fc 	. . 
	cp h			;a125	bc 	. 
	ld b,d			;a126	42 	B 
	cp 0bch		;a127	fe bc 	. . 
	ccf			;a129	3f 	? 
	ld b,b			;a12a	40 	@ 
	ld a,a			;a12b	7f 	 
	ccf			;a12c	3f 	? 
	ld a,a			;a12d	7f 	 
	add a,b			;a12e	80 	. 
	rst 38h			;a12f	ff 	. 
	ld a,a			;a130	7f 	 
	ld (hl),a			;a131	77 	w 
	adc a,b			;a132	88 	. 
	rst 38h			;a133	ff 	. 
	ld (hl),a			;a134	77 	w 
	ld (hl),a			;a135	77 	w 
	adc a,b			;a136	88 	. 
	rst 38h			;a137	ff 	. 
	ld (hl),a			;a138	77 	w 
	dec sp			;a139	3b 	; 
	ld b,h			;a13a	44 	D 
	ld a,a			;a13b	7f 	 
	dec sp			;a13c	3b 	; 
	inc a			;a13d	3c 	< 
	ld b,e			;a13e	43 	C 
	ld a,a			;a13f	7f 	 
	inc a			;a140	3c 	< 
	ld c,031h		;a141	0e 31 	. 1 
	ccf			;a143	3f 	? 
	ld c,000h		;a144	0e 00 	. . 
	ld c,00eh		;a146	0e 0e 	. . 
	nop			;a148	00 	. 
	rst 38h			;a149	ff 	. 
	nop			;a14a	00 	. 
	rst 38h			;a14b	ff 	. 
	rst 38h			;a14c	ff 	. 
	rst 38h			;a14d	ff 	. 
	nop			;a14e	00 	. 
	rst 38h			;a14f	ff 	. 
	rst 38h			;a150	ff 	. 
	defb 0fdh,002h,0ffh	;illegal sequence		;a151	fd 02 ff 	. . . 
	defb 0fdh,0feh,001h	;illegal sequence		;a154	fd fe 01 	. . . 
	rst 38h			;a157	ff 	. 
	cp 0dfh		;a158	fe df 	. . 
	jr nz,$+1		;a15a	20 ff 	  . 
	rst 18h			;a15c	df 	. 
	ccf			;a15d	3f 	? 
	ret nz			;a15e	c0 	. 
	rst 38h			;a15f	ff 	. 
	ccf			;a160	3f 	? 
	inc a			;a161	3c 	< 
	ld b,e			;a162	43 	C 
	ld a,a			;a163	7f 	 
	inc a			;a164	3c 	< 
	nop			;a165	00 	. 
	inc a			;a166	3c 	< 
	inc a			;a167	3c 	< 
	nop			;a168	00 	. 
	xor 011h		;a169	ee 11 	. . 
	rst 38h			;a16b	ff 	. 
	xor 0ech		;a16c	ee ec 	. . 
	ld (de),a			;a16e	12 	. 
	cp 0ech		;a16f	fe ec 	. . 
	call c,0fe22h		;a171	dc 22 fe 	. " . 
	call c,0c438h		;a174	dc 38 c4 	. 8 . 
	call m,0fc38h		;a177	fc 38 fc 	. 8 . 
	ld (bc),a			;a17a	02 	. 
	cp 0fch		;a17b	fe fc 	. . 
	ld a,h			;a17d	7c 	| 
	add a,d			;a17e	82 	. 
	cp 07ch		;a17f	fe 7c 	. | 
	jr c,$+70		;a181	38 44 	8 D 
	ld a,h			;a183	7c 	| 
	jr c,la186h		;a184	38 00 	8 . 
la186h:
	jr c,$+58		;a186	38 38 	8 8 
	nop			;a188	00 	. 
	nop			;a189	00 	. 
	inc bc			;a18a	03 	. 
	inc bc			;a18b	03 	. 
	nop			;a18c	00 	. 
	ld (bc),a			;a18d	02 	. 
	rrca			;a18e	0f 	. 
	rrca			;a18f	0f 	. 
	ld bc,01d0ch		;a190	01 0c 1d 	. . . 
	rra			;a193	1f 	. 
	inc bc			;a194	03 	. 
	nop			;a195	00 	. 
	jr nc,la1d4h		;a196	30 3c 	0 < 
	rra			;a198	1f 	. 
	jr nz,la206h		;a199	20 6b 	  k 
	ld a,e			;a19b	7b 	{ 
	rra			;a19c	1f 	. 
	inc hl			;a19d	23 	# 
	ld h,a			;a19e	67 	g 
	ld (hl),h			;a19f	74 	t 
	inc e			;a1a0	1c 	. 
	ld b,(hl)			;a1a1	46 	F 
	rst 8			;a1a2	cf 	. 
	ret pe			;a1a3	e8 	. 
	add hl,sp			;a1a4	39 	9 
	inc b			;a1a5	04 	. 
	rst 28h			;a1a6	ef 	. 
	ret pe			;a1a7	e8 	. 
	ld a,e			;a1a8	7b 	{ 
	nop			;a1a9	00 	. 
	add a,b			;a1aa	80 	. 
	add a,b			;a1ab	80 	. 
	nop			;a1ac	00 	. 
	add a,b			;a1ad	80 	. 
	ret po			;a1ae	e0 	. 
	ret po			;a1af	e0 	. 
	nop			;a1b0	00 	. 
	ld h,b			;a1b1	60 	` 
	ld (hl),b			;a1b2	70 	p 
	ret p			;a1b3	f0 	. 
	add a,b			;a1b4	80 	. 
	nop			;a1b5	00 	. 
	jr la230h		;a1b6	18 78 	. x 
	ret p			;a1b8	f0 	. 
	ex af,af'			;a1b9	08 	. 
	xor h			;a1ba	ac 	. 
	cp h			;a1bb	bc 	. 
	ret p			;a1bc	f0 	. 
	adc a,b			;a1bd	88 	. 
	call z,0705ch		;a1be	cc 5c 70 	. \ p 
	call nz,02ee6h		;a1c1	c4 e6 2e 	. . . 
	jr c,la206h		;a1c4	38 40 	8 @ 
	xor 02eh		;a1c6	ee 2e 	. . 
	cp h			;a1c8	bc 	. 
	ld b,(hl)			;a1c9	46 	F 
	rst 8			;a1ca	cf 	. 
	ret pe			;a1cb	e8 	. 
	add hl,sp			;a1cc	39 	9 
	inc hl			;a1cd	23 	# 
	ld h,a			;a1ce	67 	g 
	ld (hl),h			;a1cf	74 	t 
	inc e			;a1d0	1c 	. 
	jr nz,la23eh		;a1d1	20 6b 	  k 
	ld a,e			;a1d3	7b 	{ 
la1d4h:
	rra			;a1d4	1f 	. 
	nop			;a1d5	00 	. 
	jr nc,la214h		;a1d6	30 3c 	0 < 
	rra			;a1d8	1f 	. 
	inc c			;a1d9	0c 	. 
	dec e			;a1da	1d 	. 
	rra			;a1db	1f 	. 
	inc bc			;a1dc	03 	. 
	ld (bc),a			;a1dd	02 	. 
	rrca			;a1de	0f 	. 
	rrca			;a1df	0f 	. 
	ld bc,00300h		;a1e0	01 00 03 	. . . 
	inc bc			;a1e3	03 	. 
	nop			;a1e4	00 	. 
	nop			;a1e5	00 	. 
	nop			;a1e6	00 	. 
	nop			;a1e7	00 	. 
	nop			;a1e8	00 	. 
	call nz,02ee6h		;a1e9	c4 e6 2e 	. . . 
	jr c,$-118		;a1ec	38 88 	8 . 
	call z,0705ch		;a1ee	cc 5c 70 	. \ p 
	ex af,af'			;a1f1	08 	. 
	xor h			;a1f2	ac 	. 
	cp h			;a1f3	bc 	. 
	ret p			;a1f4	f0 	. 
	nop			;a1f5	00 	. 
	jr la270h		;a1f6	18 78 	. x 
	ret p			;a1f8	f0 	. 
	ld h,b			;a1f9	60 	` 
	ld (hl),b			;a1fa	70 	p 
	ret p			;a1fb	f0 	. 
	add a,b			;a1fc	80 	. 
	add a,b			;a1fd	80 	. 
	ret po			;a1fe	e0 	. 
	ret po			;a1ff	e0 	. 
	nop			;a200	00 	. 
	nop			;a201	00 	. 
	add a,b			;a202	80 	. 
	add a,b			;a203	80 	. 
	nop			;a204	00 	. 
	nop			;a205	00 	. 
la206h:
	nop			;a206	00 	. 
	nop			;a207	00 	. 
	nop			;a208	00 	. 
	nop			;a209	00 	. 
	ld a,(hl)			;a20a	7e 	~ 
	ld a,(hl)			;a20b	7e 	~ 
	nop			;a20c	00 	. 
	inc a			;a20d	3c 	< 
	ld b,d			;a20e	42 	B 
	ld b,d			;a20f	42 	B 
	nop			;a210	00 	. 
	inc a			;a211	3c 	< 
	ld b,d			;a212	42 	B 
	ld b,d			;a213	42 	B 
la214h:
	nop			;a214	00 	. 
	inc a			;a215	3c 	< 
	ld b,d			;a216	42 	B 
	ld b,d			;a217	42 	B 
	nop			;a218	00 	. 
	ld a,(hl)			;a219	7e 	~ 
	add a,c			;a21a	81 	. 
	add a,c			;a21b	81 	. 
	nop			;a21c	00 	. 
	inc a			;a21d	3c 	< 
	ld b,d			;a21e	42 	B 
	ld b,d			;a21f	42 	B 
	nop			;a220	00 	. 
	jr la247h		;a221	18 24 	. $ 
	inc h			;a223	24 	$ 
	nop			;a224	00 	. 
	nop			;a225	00 	. 
	jr la240h		;a226	18 18 	. . 
	nop			;a228	00 	. 
	nop			;a229	00 	. 
	inc bc			;a22a	03 	. 
	inc bc			;a22b	03 	. 
	nop			;a22c	00 	. 
	nop			;a22d	00 	. 
	rrca			;a22e	0f 	. 
	inc c			;a22f	0c 	. 
la230h:
	inc bc			;a230	03 	. 
	nop			;a231	00 	. 
	rra			;a232	1f 	. 
	djnz la244h		;a233	10 0f 	. . 
la235h:
	nop			;a235	00 	. 
	ccf			;a236	3f 	? 
	daa			;a237	27 	' 
	rra			;a238	1f 	. 
	nop			;a239	00 	. 
	ld a,a			;a23a	7f 	 
	ld c,a			;a23b	4f 	O 
	ccf			;a23c	3f 	? 
	dec bc			;a23d	0b 	. 
la23eh:
	ld a,a			;a23e	7f 	 
	ld d,b			;a23f	50 	P 
la240h:
	inc (hl)			;a240	34 	4 
	dec de			;a241	1b 	. 
	rst 38h			;a242	ff 	. 
	add a,b			;a243	80 	. 
la244h:
	ld h,h			;a244	64 	d 
	nop			;a245	00 	. 
	rst 38h			;a246	ff 	. 
la247h:
	add a,b			;a247	80 	. 
	ld a,a			;a248	7f 	 
	nop			;a249	00 	. 
	add a,b			;a24a	80 	. 
	add a,b			;a24b	80 	. 
	nop			;a24c	00 	. 
	nop			;a24d	00 	. 
	ret po			;a24e	e0 	. 
	ld h,b			;a24f	60 	` 
	add a,b			;a250	80 	. 
	nop			;a251	00 	. 
	ret p			;a252	f0 	. 
	djnz la235h		;a253	10 e0 	. . 
	nop			;a255	00 	. 
	ret m			;a256	f8 	. 
	ret z			;a257	c8 	. 
	ret p			;a258	f0 	. 
	nop			;a259	00 	. 
	call m,0f8e4h		;a25a	fc e4 f8 	. . . 
	nop			;a25d	00 	. 
	call m,0f8f4h		;a25e	fc f4 f8 	. . . 
	add a,b			;a261	80 	. 
	cp 072h		;a262	fe 72 	. r 
	ld a,h			;a264	7c 	| 
	add a,b			;a265	80 	. 
	cp 072h		;a266	fe 72 	. r 
	ld a,h			;a268	7c 	| 
	dec de			;a269	1b 	. 
	rst 38h			;a26a	ff 	. 
	add a,b			;a26b	80 	. 
	ld h,h			;a26c	64 	d 
	dec bc			;a26d	0b 	. 
	ld a,a			;a26e	7f 	 
	ld d,b			;a26f	50 	P 
la270h:
	inc (hl)			;a270	34 	4 
	nop			;a271	00 	. 
	ld a,a			;a272	7f 	 
	ld c,a			;a273	4f 	O 
	ccf			;a274	3f 	? 
	nop			;a275	00 	. 
	ccf			;a276	3f 	? 
	daa			;a277	27 	' 
	rra			;a278	1f 	. 
	nop			;a279	00 	. 
	rra			;a27a	1f 	. 
	djnz la28ch		;a27b	10 0f 	. . 
la27dh:
	nop			;a27d	00 	. 
	rrca			;a27e	0f 	. 
	inc c			;a27f	0c 	. 
	inc bc			;a280	03 	. 
	nop			;a281	00 	. 
	inc bc			;a282	03 	. 
	inc bc			;a283	03 	. 
	nop			;a284	00 	. 
	nop			;a285	00 	. 
	nop			;a286	00 	. 
	nop			;a287	00 	. 
	nop			;a288	00 	. 
	add a,b			;a289	80 	. 
	cp 072h		;a28a	fe 72 	. r 
la28ch:
	ld a,h			;a28c	7c 	| 
	nop			;a28d	00 	. 
	call m,0f8f4h		;a28e	fc f4 f8 	. . . 
	nop			;a291	00 	. 
	call m,0f8e4h		;a292	fc e4 f8 	. . . 
	nop			;a295	00 	. 
	ret m			;a296	f8 	. 
	ret z			;a297	c8 	. 
	ret p			;a298	f0 	. 
	nop			;a299	00 	. 
	ret p			;a29a	f0 	. 
	djnz la27dh		;a29b	10 e0 	. . 
	nop			;a29d	00 	. 
	ret po			;a29e	e0 	. 
	ld h,b			;a29f	60 	` 
	add a,b			;a2a0	80 	. 
	nop			;a2a1	00 	. 
	add a,b			;a2a2	80 	. 
	add a,b			;a2a3	80 	. 
	nop			;a2a4	00 	. 
	nop			;a2a5	00 	. 
	nop			;a2a6	00 	. 
	nop			;a2a7	00 	. 
	nop			;a2a8	00 	. 
	nop			;a2a9	00 	. 
la2aah:
	nop			;a2aa	00 	. 
	nop			;a2ab	00 	. 
	nop			;a2ac	00 	. 
	nop			;a2ad	00 	. 
	ld bc,00001h		;a2ae	01 01 00 	. . . 
	ld bc,01f1fh		;a2b1	01 1f 1f 	. . . 
	nop			;a2b4	00 	. 
	rra			;a2b5	1f 	. 
	inc hl			;a2b6	23 	# 
	inc hl			;a2b7	23 	# 
	inc e			;a2b8	1c 	. 
	rrca			;a2b9	0f 	. 
	inc sp			;a2ba	33 	3 
	ld (03f0ch),a		;a2bb	32 0c 3f 	2 . ? 
	ld b,a			;a2be	47 	G 
	ld b,a			;a2bf	47 	G 
	jr c,la31ah		;a2c0	38 58 	8 X 
	cp a			;a2c2	bf 	. 
	cp a			;a2c3	bf 	. 
	ld b,b			;a2c4	40 	@ 
	scf			;a2c5	37 	7 
	ld a,a			;a2c6	7f 	 
	ld a,a			;a2c7	7f 	 
	nop			;a2c8	00 	. 
	nop			;a2c9	00 	. 
	nop			;a2ca	00 	. 
	nop			;a2cb	00 	. 
	nop			;a2cc	00 	. 
	nop			;a2cd	00 	. 
	ret nz			;a2ce	c0 	. 
	ret nz			;a2cf	c0 	. 
	nop			;a2d0	00 	. 
	ret nz			;a2d1	c0 	. 
	ret po			;a2d2	e0 	. 
	ret po			;a2d3	e0 	. 
	nop			;a2d4	00 	. 
	ret po			;a2d5	e0 	. 
	ret p			;a2d6	f0 	. 
	ld (hl),b			;a2d7	70 	p 
	nop			;a2d8	00 	. 
	ret p			;a2d9	f0 	. 
	ret pe			;a2da	e8 	. 
	jr z,la2edh		;a2db	28 10 	( . 
	ret m			;a2dd	f8 	. 
	call p,008f4h		;a2de	f4 f4 08 	. . . 
	ld a,h			;a2e1	7c 	| 
	jp m,004fah		;a2e2	fa fa 04 	. . . 
	cp h			;a2e5	bc 	. 
	jp m,004fah		;a2e6	fa fa 04 	. . . 
	nop			;a2e9	00 	. 
	rra			;a2ea	1f 	. 
	rra			;a2eb	1f 	. 
	nop			;a2ec	00 	. 
la2edh:
	ld e,07fh		;a2ed	1e 7f 	.  
	ld a,(hl)			;a2ef	7e 	~ 
	ld bc,0e707h		;a2f0	01 07 e7 	. . . 
	rst 38h			;a2f3	ff 	. 
	jr la2f9h		;a2f4	18 03 	. . 
	ex (sp),hl			;a2f6	e3 	. 
	rst 38h			;a2f7	ff 	. 
	inc e			;a2f8	1c 	. 
la2f9h:
	ld bc,0ff81h		;a2f9	01 81 ff 	. . . 
	ld a,(hl)			;a2fc	7e 	~ 
	ld bc,0ff81h		;a2fd	01 81 ff 	. . . 
	ld a,(hl)			;a300	7e 	~ 
	inc bc			;a301	03 	. 
	ld b,e			;a302	43 	C 
	ld a,a			;a303	7f 	 
	inc a			;a304	3c 	< 
	inc bc			;a305	03 	. 
	ccf			;a306	3f 	? 
	ccf			;a307	3f 	? 
	nop			;a308	00 	. 
	ccf			;a309	3f 	? 
	rst 38h			;a30a	ff 	. 
	ccf			;a30b	3f 	? 
	ret nz			;a30c	c0 	. 
	ld a,a			;a30d	7f 	 
	rst 38h			;a30e	ff 	. 
	ld a,a			;a30f	7f 	 
	add a,b			;a310	80 	. 
	rst 38h			;a311	ff 	. 
	rst 38h			;a312	ff 	. 
	rst 38h			;a313	ff 	. 
	nop			;a314	00 	. 
	rst 38h			;a315	ff 	. 
	rst 38h			;a316	ff 	. 
	rst 38h			;a317	ff 	. 
	nop			;a318	00 	. 
	rst 38h			;a319	ff 	. 
la31ah:
	rst 38h			;a31a	ff 	. 
	rst 38h			;a31b	ff 	. 
	nop			;a31c	00 	. 
	ret p			;a31d	f0 	. 
	rst 38h			;a31e	ff 	. 
	rst 38h			;a31f	ff 	. 
	nop			;a320	00 	. 
	ret po			;a321	e0 	. 
	rst 38h			;a322	ff 	. 
	rst 38h			;a323	ff 	. 
	rrca			;a324	0f 	. 
	rst 8			;a325	cf 	. 
	ret p			;a326	f0 	. 
	ret p			;a327	f0 	. 
	djnz la2aah		;a328	10 80 	. . 
	ld b,b			;a32a	40 	@ 
	ld b,b			;a32b	40 	@ 
	add a,b			;a32c	80 	. 
	add a,b			;a32d	80 	. 
	ld b,b			;a32e	40 	@ 
	ld b,b			;a32f	40 	@ 
	add a,b			;a330	80 	. 
	add a,b			;a331	80 	. 
	ld b,b			;a332	40 	@ 
	ld b,b			;a333	40 	@ 
	add a,b			;a334	80 	. 
	add a,b			;a335	80 	. 
	ld b,b			;a336	40 	@ 
	ld b,b			;a337	40 	@ 
	add a,b			;a338	80 	. 
	ret nz			;a339	c0 	. 
	and b			;a33a	a0 	. 
	and b			;a33b	a0 	. 
	ld b,b			;a33c	40 	@ 
	ret po			;a33d	e0 	. 
	ret nc			;a33e	d0 	. 
	ret nc			;a33f	d0 	. 
	jr nz,la3a2h		;a340	20 60 	  ` 
	ret nc			;a342	d0 	. 
	ret nc			;a343	d0 	. 
	jr nz,$+50		;a344	20 30 	  0 
	ret pe			;a346	e8 	. 
	ret pe			;a347	e8 	. 
	sub b			;a348	90 	. 
	rrca			;a349	0f 	. 
	rra			;a34a	1f 	. 
	rra			;a34b	1f 	. 
	nop			;a34c	00 	. 
	nop			;a34d	00 	. 
	ld a,a			;a34e	7f 	 
	ld a,a			;a34f	7f 	 
	nop			;a350	00 	. 
	nop			;a351	00 	. 
	rst 38h			;a352	ff 	. 
	rst 38h			;a353	ff 	. 
	ld a,a			;a354	7f 	 
	ld a,a			;a355	7f 	 
	add a,b			;a356	80 	. 
	add a,b			;a357	80 	. 
	nop			;a358	00 	. 
	ld a,a			;a359	7f 	 
	add a,b			;a35a	80 	. 
la35bh:
	add a,b			;a35b	80 	. 
	nop			;a35c	00 	. 
	nop			;a35d	00 	. 
	rst 38h			;a35e	ff 	. 
	rst 38h			;a35f	ff 	. 
	ld a,a			;a360	7f 	 
	rrca			;a361	0f 	. 
	ret p			;a362	f0 	. 
	rst 38h			;a363	ff 	. 
	rrca			;a364	0f 	. 
	ld (hl),a			;a365	77 	w 
	ret m			;a366	f8 	. 
	adc a,a			;a367	8f 	. 
	rlca			;a368	07 	. 
	ccf			;a369	3f 	? 
	ret nz			;a36a	c0 	. 
	ret nz			;a36b	c0 	. 
	ld b,b			;a36c	40 	@ 
	ld h,c			;a36d	61 	a 
	sbc a,(hl)			;a36e	9e 	. 
	sbc a,(hl)			;a36f	9e 	. 
	sbc a,(hl)			;a370	9e 	. 
	sbc a,03fh		;a371	de 3f 	. ? 
	ccf			;a373	3f 	? 
	ld hl,07f9eh		;a374	21 9e 7f 	! .  
	ld a,a			;a377	7f 	 
	ld b,b			;a378	40 	@ 
	ld e,(hl)			;a379	5e 	^ 
	cp a			;a37a	bf 	. 
	rst 38h			;a37b	ff 	. 
	ret nz			;a37c	c0 	. 
	sbc a,03fh		;a37d	de 3f 	. ? 
	rst 38h			;a37f	ff 	. 
	ret nz			;a380	c0 	. 
	sbc a,03fh		;a381	de 3f 	. ? 
	rst 38h			;a383	ff 	. 
	ret nz			;a384	c0 	. 
	sbc a,03fh		;a385	de 3f 	. ? 
	rst 38h			;a387	ff 	. 
	ret nz			;a388	c0 	. 
	jr nz,la35bh		;a389	20 d0 	  . 
	ret nc			;a38b	d0 	. 
	and b			;a38c	a0 	. 
	add a,b			;a38d	80 	. 
	ld (hl),b			;a38e	70 	p 
	ld (hl),b			;a38f	70 	p 
	ld b,b			;a390	40 	@ 
	ret nz			;a391	c0 	. 
	jr c,la3cch		;a392	38 38 	8 8 
	jr nc,la406h		;a394	30 70 	0 p 
	adc a,b			;a396	88 	. 
	adc a,b			;a397	88 	. 
la398h:
	add a,b			;a398	80 	. 
	or b			;a399	b0 	. 
	ld c,b			;a39a	48 	H 
	ret z			;a39b	c8 	. 
la39ch:
	ret nz			;a39c	c0 	. 
	ret nz			;a39d	c0 	. 
	jr c,la398h		;a39e	38 f8 	8 . 
	ret p			;a3a0	f0 	. 
	ret nz			;a3a1	c0 	. 
la3a2h:
	jr c,la39ch		;a3a2	38 f8 	8 . 
	ret nz			;a3a4	c0 	. 
	add a,b			;a3a5	80 	. 
	ld a,b			;a3a6	78 	x 
	ret z			;a3a7	c8 	. 
	or b			;a3a8	b0 	. 
	nop			;a3a9	00 	. 
	nop			;a3aa	00 	. 
	nop			;a3ab	00 	. 
	nop			;a3ac	00 	. 
	nop			;a3ad	00 	. 
	nop			;a3ae	00 	. 
	nop			;a3af	00 	. 
	nop			;a3b0	00 	. 
	nop			;a3b1	00 	. 
	nop			;a3b2	00 	. 
	nop			;a3b3	00 	. 
	nop			;a3b4	00 	. 
	add a,b			;a3b5	80 	. 
	nop			;a3b6	00 	. 
	nop			;a3b7	00 	. 
	nop			;a3b8	00 	. 
	ret po			;a3b9	e0 	. 
	nop			;a3ba	00 	. 
	nop			;a3bb	00 	. 
	nop			;a3bc	00 	. 
	cp 000h		;a3bd	fe 00 	. . 
	nop			;a3bf	00 	. 
	nop			;a3c0	00 	. 
	ld a,a			;a3c1	7f 	 
	nop			;a3c2	00 	. 
	nop			;a3c3	00 	. 
	nop			;a3c4	00 	. 
	ld a,a			;a3c5	7f 	 
la3c6h:
	nop			;a3c6	00 	. 
	nop			;a3c7	00 	. 
	nop			;a3c8	00 	. 
	nop			;a3c9	00 	. 
	nop			;a3ca	00 	. 
	nop			;a3cb	00 	. 
la3cch:
	nop			;a3cc	00 	. 
	nop			;a3cd	00 	. 
	nop			;a3ce	00 	. 
	nop			;a3cf	00 	. 
	nop			;a3d0	00 	. 
	nop			;a3d1	00 	. 
	nop			;a3d2	00 	. 
	nop			;a3d3	00 	. 
	nop			;a3d4	00 	. 
	nop			;a3d5	00 	. 
	nop			;a3d6	00 	. 
	nop			;a3d7	00 	. 
	nop			;a3d8	00 	. 
	nop			;a3d9	00 	. 
	nop			;a3da	00 	. 
	nop			;a3db	00 	. 
	nop			;a3dc	00 	. 
	nop			;a3dd	00 	. 
	nop			;a3de	00 	. 
	nop			;a3df	00 	. 
	nop			;a3e0	00 	. 
	rst 38h			;a3e1	ff 	. 
	nop			;a3e2	00 	. 
	nop			;a3e3	00 	. 
	nop			;a3e4	00 	. 
	rst 38h			;a3e5	ff 	. 
	nop			;a3e6	00 	. 
	nop			;a3e7	00 	. 
	nop			;a3e8	00 	. 
	dec b			;a3e9	05 	. 
	ld a,(hl)			;a3ea	7e 	~ 
	ld a,e			;a3eb	7b 	{ 
	ld bc,07f02h		;a3ec	01 02 7f 	. .  
	ld c,l			;a3ef	4d 	M 
	jr nc,la3f4h		;a3f0	30 02 	0 . 
	ld a,a			;a3f2	7f 	 
	ld (hl),l			;a3f3	75 	u 
la3f4h:
	ex af,af'			;a3f4	08 	. 
	ld (bc),a			;a3f5	02 	. 
	ld a,a			;a3f6	7f 	 
	ld c,l			;a3f7	4d 	M 
	jr nc,la3ffh		;a3f8	30 05 	0 . 
	ld a,(hl)			;a3fa	7e 	~ 
	ld a,e			;a3fb	7b 	{ 
	ld bc,07c3bh		;a3fc	01 3b 7c 	. ; | 
la3ffh:
	ld b,a			;a3ff	47 	G 
	inc bc			;a400	03 	. 
	rst 38h			;a401	ff 	. 
	nop			;a402	00 	. 
	nop			;a403	00 	. 
	nop			;a404	00 	. 
	rst 38h			;a405	ff 	. 
la406h:
	nop			;a406	00 	. 
	nop			;a407	00 	. 
	nop			;a408	00 	. 
	rst 28h			;a409	ef 	. 
	rra			;a40a	1f 	. 
	rst 38h			;a40b	ff 	. 
	ret po			;a40c	e0 	. 
	rst 28h			;a40d	ef 	. 
	rra			;a40e	1f 	. 
	rst 38h			;a40f	ff 	. 
	ret po			;a410	e0 	. 
	rst 28h			;a411	ef 	. 
	rra			;a412	1f 	. 
	rst 38h			;a413	ff 	. 
	ret po			;a414	e0 	. 
	rst 8			;a415	cf 	. 
	ccf			;a416	3f 	? 
	rst 38h			;a417	ff 	. 
	ret nz			;a418	c0 	. 
	cp a			;a419	bf 	. 
	ld a,a			;a41a	7f 	 
	rst 38h			;a41b	ff 	. 
	add a,b			;a41c	80 	. 
	adc a,a			;a41d	8f 	. 
	ld a,a			;a41e	7f 	 
	rst 8			;a41f	cf 	. 
	add a,b			;a420	80 	. 
	rst 28h			;a421	ef 	. 
	rra			;a422	1f 	. 
	rrca			;a423	0f 	. 
	nop			;a424	00 	. 
	rst 28h			;a425	ef 	. 
	rra			;a426	1f 	. 
	rrca			;a427	0f 	. 
	nop			;a428	00 	. 
	ld h,b			;a429	60 	` 
	sbc a,h			;a42a	9c 	. 
	call m,07860h		;a42b	fc 60 78 	. ` x 
	add a,h			;a42e	84 	. 
	call m,06078h		;a42f	fc 78 60 	. x ` 
	sbc a,h			;a432	9c 	. 
	call m,04060h		;a433	fc 60 40 	. ` @ 
	cp h			;a436	bc 	. 
	call po,sub_a058h		;a437	e4 58 a0 	. X . 
	call c,020fch		;a43a	dc fc 20 	. .   
	cp b			;a43d	b8 	. 
	call nz,038fch		;a43e	c4 fc 38 	. . 8 
	or b			;a441	b0 	. 
	ret z			;a442	c8 	. 
	ret m			;a443	f8 	. 
	jr nc,la3c6h		;a444	30 80 	0 . 
	ret p			;a446	f0 	. 
	ret p			;a447	f0 	. 
	nop			;a448	00 	. 
	rst 38h			;a449	ff 	. 
	nop			;a44a	00 	. 
	nop			;a44b	00 	. 
	nop			;a44c	00 	. 
	rra			;a44d	1f 	. 
	nop			;a44e	00 	. 
	nop			;a44f	00 	. 
	nop			;a450	00 	. 
	nop			;a451	00 	. 
	nop			;a452	00 	. 
	nop			;a453	00 	. 
	nop			;a454	00 	. 
	nop			;a455	00 	. 
	nop			;a456	00 	. 
	nop			;a457	00 	. 
	nop			;a458	00 	. 
	nop			;a459	00 	. 
	nop			;a45a	00 	. 
	nop			;a45b	00 	. 
	nop			;a45c	00 	. 
	nop			;a45d	00 	. 
	nop			;a45e	00 	. 
	nop			;a45f	00 	. 
	nop			;a460	00 	. 
	nop			;a461	00 	. 
	nop			;a462	00 	. 
	nop			;a463	00 	. 
	nop			;a464	00 	. 
	nop			;a465	00 	. 
	nop			;a466	00 	. 
	nop			;a467	00 	. 
	nop			;a468	00 	. 
	rst 38h			;a469	ff 	. 
	nop			;a46a	00 	. 
	nop			;a46b	00 	. 
	nop			;a46c	00 	. 
	rst 38h			;a46d	ff 	. 
	nop			;a46e	00 	. 
	nop			;a46f	00 	. 
	nop			;a470	00 	. 
	nop			;a471	00 	. 
	nop			;a472	00 	. 
	nop			;a473	00 	. 
	nop			;a474	00 	. 
	nop			;a475	00 	. 
	nop			;a476	00 	. 
	nop			;a477	00 	. 
	nop			;a478	00 	. 
	nop			;a479	00 	. 
	nop			;a47a	00 	. 
	nop			;a47b	00 	. 
	nop			;a47c	00 	. 
	nop			;a47d	00 	. 
	nop			;a47e	00 	. 
	nop			;a47f	00 	. 
	nop			;a480	00 	. 
	nop			;a481	00 	. 
	nop			;a482	00 	. 
	nop			;a483	00 	. 
	nop			;a484	00 	. 
	nop			;a485	00 	. 
	nop			;a486	00 	. 
	nop			;a487	00 	. 
	nop			;a488	00 	. 
	rst 38h			;a489	ff 	. 
	nop			;a48a	00 	. 
	nop			;a48b	00 	. 
	nop			;a48c	00 	. 
	rst 38h			;a48d	ff 	. 
	nop			;a48e	00 	. 
	nop			;a48f	00 	. 
	nop			;a490	00 	. 
	nop			;a491	00 	. 
	rlca			;a492	07 	. 
	inc b			;a493	04 	. 
	inc bc			;a494	03 	. 
	nop			;a495	00 	. 
	rlca			;a496	07 	. 
	inc b			;a497	04 	. 
	inc bc			;a498	03 	. 
	nop			;a499	00 	. 
	inc bc			;a49a	03 	. 
	ld (bc),a			;a49b	02 	. 
	ld bc,00300h		;a49c	01 00 03 	. . . 
	ld (bc),a			;a49f	02 	. 
	ld bc,00300h		;a4a0	01 00 03 	. . . 
	ld (bc),a			;a4a3	02 	. 
	ld bc,00700h		;a4a4	01 00 07 	. . . 
	rlca			;a4a7	07 	. 
	nop			;a4a8	00 	. 
	cp h			;a4a9	bc 	. 
	ld a,a			;a4aa	7f 	 
	ld a,001h		;a4ab	3e 01 	> . 
	add a,b			;a4ad	80 	. 
	ld a,a			;a4ae	7f 	 
	inc a			;a4af	3c 	< 
	inc bc			;a4b0	03 	. 
	nop			;a4b1	00 	. 
	rst 38h			;a4b2	ff 	. 
	nop			;a4b3	00 	. 
	ccf			;a4b4	3f 	? 
	nop			;a4b5	00 	. 
	rst 38h			;a4b6	ff 	. 
	nop			;a4b7	00 	. 
	rst 38h			;a4b8	ff 	. 
	nop			;a4b9	00 	. 
	rst 38h			;a4ba	ff 	. 
	ld bc,000feh		;a4bb	01 fe 00 	. . . 
	rst 38h			;a4be	ff 	. 
	ld bc,000feh		;a4bf	01 fe 00 	. . . 
	rst 38h			;a4c2	ff 	. 
	ld bc,000feh		;a4c3	01 fe 00 	. . . 
	rst 38h			;a4c6	ff 	. 
	rst 38h			;a4c7	ff 	. 
	nop			;a4c8	00 	. 
	nop			;a4c9	00 	. 
	ret nz			;a4ca	c0 	. 
	ld b,b			;a4cb	40 	@ 
	add a,b			;a4cc	80 	. 
	nop			;a4cd	00 	. 
	add a,b			;a4ce	80 	. 
	add a,b			;a4cf	80 	. 
	nop			;a4d0	00 	. 
	nop			;a4d1	00 	. 
	add a,b			;a4d2	80 	. 
	add a,b			;a4d3	80 	. 
	nop			;a4d4	00 	. 
	nop			;a4d5	00 	. 
	add a,b			;a4d6	80 	. 
	add a,b			;a4d7	80 	. 
	nop			;a4d8	00 	. 
	nop			;a4d9	00 	. 
	nop			;a4da	00 	. 
	nop			;a4db	00 	. 
	nop			;a4dc	00 	. 
	nop			;a4dd	00 	. 
	nop			;a4de	00 	. 
	nop			;a4df	00 	. 
	nop			;a4e0	00 	. 
	nop			;a4e1	00 	. 
	nop			;a4e2	00 	. 
	nop			;a4e3	00 	. 
	nop			;a4e4	00 	. 
	nop			;a4e5	00 	. 
	add a,b			;a4e6	80 	. 
	add a,b			;a4e7	80 	. 
	nop			;a4e8	00 	. 
	nop			;a4e9	00 	. 
	ccf			;a4ea	3f 	? 
	ccf			;a4eb	3f 	? 
	nop			;a4ec	00 	. 
	nop			;a4ed	00 	. 
	rra			;a4ee	1f 	. 
	rra			;a4ef	1f 	. 
	nop			;a4f0	00 	. 
	nop			;a4f1	00 	. 
	rra			;a4f2	1f 	. 
	rra			;a4f3	1f 	. 
	nop			;a4f4	00 	. 
	nop			;a4f5	00 	. 
	rra			;a4f6	1f 	. 
	rra			;a4f7	1f 	. 
	nop			;a4f8	00 	. 
	nop			;a4f9	00 	. 
	ccf			;a4fa	3f 	? 
	ccf			;a4fb	3f 	? 
	nop			;a4fc	00 	. 
	nop			;a4fd	00 	. 
	ld a,a			;a4fe	7f 	 
	ld a,a			;a4ff	7f 	 
	nop			;a500	00 	. 
	nop			;a501	00 	. 
	rst 38h			;a502	ff 	. 
	rst 38h			;a503	ff 	. 
	nop			;a504	00 	. 
	nop			;a505	00 	. 
	rst 38h			;a506	ff 	. 
	rst 38h			;a507	ff 	. 
	nop			;a508	00 	. 
	nop			;a509	00 	. 
	call m,000fch		;a50a	fc fc 00 	. . . 
	nop			;a50d	00 	. 
	ret m			;a50e	f8 	. 
	ret m			;a50f	f8 	. 
	nop			;a510	00 	. 
	nop			;a511	00 	. 
	ret m			;a512	f8 	. 
	ret m			;a513	f8 	. 
	nop			;a514	00 	. 
	nop			;a515	00 	. 
	ret m			;a516	f8 	. 
	ret m			;a517	f8 	. 
	nop			;a518	00 	. 
	nop			;a519	00 	. 
	call m,000fch		;a51a	fc fc 00 	. . . 
	nop			;a51d	00 	. 
	call m,000fch		;a51e	fc fc 00 	. . . 
	nop			;a521	00 	. 
	call m,000fch		;a522	fc fc 00 	. . . 
	nop			;a525	00 	. 
	call m,000fch		;a526	fc fc 00 	. . . 
	ccf			;a529	3f 	? 
	ret nz			;a52a	c0 	. 
	ret nz			;a52b	c0 	. 
	ld b,b			;a52c	40 	@ 
	ld h,c			;a52d	61 	a 
	sbc a,(hl)			;a52e	9e 	. 
	sbc a,(hl)			;a52f	9e 	. 
	sbc a,(hl)			;a530	9e 	. 
	sbc a,03fh		;a531	de 3f 	. ? 
	ccf			;a533	3f 	? 
	ld hl,07f9eh		;a534	21 9e 7f 	! .  
	ld a,a			;a537	7f 	 
	ld b,b			;a538	40 	@ 
	ld e,(hl)			;a539	5e 	^ 
	cp a			;a53a	bf 	. 
	rst 38h			;a53b	ff 	. 
	ret nz			;a53c	c0 	. 
	rst 28h			;a53d	ef 	. 
	rra			;a53e	1f 	. 
	rst 38h			;a53f	ff 	. 
	ret po			;a540	e0 	. 
	rst 28h			;a541	ef 	. 
	rra			;a542	1f 	. 
	rst 38h			;a543	ff 	. 
	ret po			;a544	e0 	. 
	rst 30h			;a545	f7 	. 
	rrca			;a546	0f 	. 
	rst 38h			;a547	ff 	. 
	ret p			;a548	f0 	. 
	jr nz,$-46		;a549	20 d0 	  . 
	ret nc			;a54b	d0 	. 
	and b			;a54c	a0 	. 
	add a,b			;a54d	80 	. 
	ld (hl),b			;a54e	70 	p 
	ld (hl),b			;a54f	70 	p 
	ld b,b			;a550	40 	@ 
	ret nz			;a551	c0 	. 
	jr c,la58ch		;a552	38 38 	8 8 
	jr nc,la5c6h		;a554	30 70 	0 p 
	adc a,b			;a556	88 	. 
	adc a,b			;a557	88 	. 
	add a,b			;a558	80 	. 
	or b			;a559	b0 	. 
	ld c,b			;a55a	48 	H 
	ret z			;a55b	c8 	. 
	ret nz			;a55c	c0 	. 
	ld b,b			;a55d	40 	@ 
	cp b			;a55e	b8 	. 
	ret m			;a55f	f8 	. 
	ld (hl),b			;a560	70 	p 
	ld b,b			;a561	40 	@ 
	cp b			;a562	b8 	. 
	ret m			;a563	f8 	. 
	ld b,b			;a564	40 	@ 
	add a,b			;a565	80 	. 
	ret m			;a566	f8 	. 
	ret z			;a567	c8 	. 
	jr nc,la56ah		;a568	30 00 	0 . 
la56ah:
	rlca			;a56a	07 	. 
	rlca			;a56b	07 	. 
	nop			;a56c	00 	. 
	nop			;a56d	00 	. 
	rrca			;a56e	0f 	. 
	inc c			;a56f	0c 	. 
	inc bc			;a570	03 	. 
	ex af,af'			;a571	08 	. 
	rra			;a572	1f 	. 
	rra			;a573	1f 	. 
	nop			;a574	00 	. 
	ex af,af'			;a575	08 	. 
	rra			;a576	1f 	. 
	inc e			;a577	1c 	. 
	inc bc			;a578	03 	. 
	ex af,af'			;a579	08 	. 
	rra			;a57a	1f 	. 
	rra			;a57b	1f 	. 
	nop			;a57c	00 	. 
	dec bc			;a57d	0b 	. 
	rra			;a57e	1f 	. 
	inc e			;a57f	1c 	. 
	nop			;a580	00 	. 
	rst 38h			;a581	ff 	. 
	nop			;a582	00 	. 
	nop			;a583	00 	. 
	nop			;a584	00 	. 
	rst 38h			;a585	ff 	. 
	nop			;a586	00 	. 
	nop			;a587	00 	. 
	nop			;a588	00 	. 
	ld e,a			;a589	5f 	_ 
	ret po			;a58a	e0 	. 
	cp a			;a58b	bf 	. 
la58ch:
	rra			;a58c	1f 	. 
	cpl			;a58d	2f 	/ 
	ret p			;a58e	f0 	. 
	rst 18h			;a58f	df 	. 
	rrca			;a590	0f 	. 
	cpl			;a591	2f 	/ 
	ret p			;a592	f0 	. 
	ld e,a			;a593	5f 	_ 
	adc a,a			;a594	8f 	. 
	cpl			;a595	2f 	/ 
	ret p			;a596	f0 	. 
	rst 18h			;a597	df 	. 
	rrca			;a598	0f 	. 
	ld e,a			;a599	5f 	_ 
	ret po			;a59a	e0 	. 
	cp a			;a59b	bf 	. 
	rra			;a59c	1f 	. 
	cp a			;a59d	bf 	. 
	ret nz			;a59e	c0 	. 
	ld a,a			;a59f	7f 	 
	ccf			;a5a0	3f 	? 
	rst 38h			;a5a1	ff 	. 
	nop			;a5a2	00 	. 
	nop			;a5a3	00 	. 
	nop			;a5a4	00 	. 
	rst 38h			;a5a5	ff 	. 
	nop			;a5a6	00 	. 
	nop			;a5a7	00 	. 
	nop			;a5a8	00 	. 
	cp h			;a5a9	bc 	. 
	ld a,a			;a5aa	7f 	 
	rst 38h			;a5ab	ff 	. 
	add a,b			;a5ac	80 	. 
	sbc a,03fh		;a5ad	de 3f 	. ? 
	rst 38h			;a5af	ff 	. 
	ret nz			;a5b0	c0 	. 
	sbc a,03fh		;a5b1	de 3f 	. ? 
	rst 38h			;a5b3	ff 	. 
	ret nz			;a5b4	c0 	. 
	rst 18h			;a5b5	df 	. 
	ccf			;a5b6	3f 	? 
	rst 38h			;a5b7	ff 	. 
	ret nz			;a5b8	c0 	. 
	cp a			;a5b9	bf 	. 
	ld a,a			;a5ba	7f 	 
	rst 38h			;a5bb	ff 	. 
	add a,b			;a5bc	80 	. 
	adc a,a			;a5bd	8f 	. 
	ld a,a			;a5be	7f 	 
	rst 8			;a5bf	cf 	. 
	add a,b			;a5c0	80 	. 
	rst 28h			;a5c1	ef 	. 
	rra			;a5c2	1f 	. 
	rrca			;a5c3	0f 	. 
	nop			;a5c4	00 	. 
	rst 28h			;a5c5	ef 	. 
la5c6h:
	rra			;a5c6	1f 	. 
	rrca			;a5c7	0f 	. 
	nop			;a5c8	00 	. 
	nop			;a5c9	00 	. 
	ret nz			;a5ca	c0 	. 
	ret nz			;a5cb	c0 	. 
	nop			;a5cc	00 	. 
	add a,b			;a5cd	80 	. 
	ld b,b			;a5ce	40 	@ 
	ret nz			;a5cf	c0 	. 
	add a,b			;a5d0	80 	. 
	nop			;a5d1	00 	. 
	ret nz			;a5d2	c0 	. 
	ret nz			;a5d3	c0 	. 
	nop			;a5d4	00 	. 
	nop			;a5d5	00 	. 
	ret nz			;a5d6	c0 	. 
	ret nz			;a5d7	c0 	. 
	nop			;a5d8	00 	. 
	add a,b			;a5d9	80 	. 
	ret nz			;a5da	c0 	. 
	ret nz			;a5db	c0 	. 
	nop			;a5dc	00 	. 
	add a,b			;a5dd	80 	. 
	ret nz			;a5de	c0 	. 
	ret nz			;a5df	c0 	. 
	nop			;a5e0	00 	. 
	add a,b			;a5e1	80 	. 
	ret nz			;a5e2	c0 	. 
	ret nz			;a5e3	c0 	. 
	nop			;a5e4	00 	. 
	add a,b			;a5e5	80 	. 
	ret nz			;a5e6	c0 	. 
	ret nz			;a5e7	c0 	. 
	nop			;a5e8	00 	. 
	rst 38h			;a5e9	ff 	. 
	nop			;a5ea	00 	. 
	nop			;a5eb	00 	. 
	nop			;a5ec	00 	. 
	rst 38h			;a5ed	ff 	. 
	nop			;a5ee	00 	. 
	nop			;a5ef	00 	. 
	nop			;a5f0	00 	. 
	nop			;a5f1	00 	. 
	ld bc,00001h		;a5f2	01 01 00 	. . . 
	nop			;a5f5	00 	. 
	ld bc,00001h		;a5f6	01 01 00 	. . . 
	nop			;a5f9	00 	. 
	inc bc			;a5fa	03 	. 
	ld (bc),a			;a5fb	02 	. 
	ld bc,00300h		;a5fc	01 00 03 	. . . 
	inc bc			;a5ff	03 	. 
	nop			;a600	00 	. 
	nop			;a601	00 	. 
	rlca			;a602	07 	. 
	rlca			;a603	07 	. 
	nop			;a604	00 	. 
	nop			;a605	00 	. 
	rlca			;a606	07 	. 
	rlca			;a607	07 	. 
	nop			;a608	00 	. 
	rst 38h			;a609	ff 	. 
	nop			;a60a	00 	. 
	nop			;a60b	00 	. 
	nop			;a60c	00 	. 
	rst 38h			;a60d	ff 	. 
	nop			;a60e	00 	. 
	nop			;a60f	00 	. 
	nop			;a610	00 	. 
	nop			;a611	00 	. 
	rst 38h			;a612	ff 	. 
	nop			;a613	00 	. 
	rst 38h			;a614	ff 	. 
	nop			;a615	00 	. 
	rst 38h			;a616	ff 	. 
	nop			;a617	00 	. 
	rst 38h			;a618	ff 	. 
	nop			;a619	00 	. 
	rst 38h			;a61a	ff 	. 
	ld bc,000feh		;a61b	01 fe 00 	. . . 
	rst 38h			;a61e	ff 	. 
	add a,c			;a61f	81 	. 
	ld a,(hl)			;a620	7e 	~ 
	nop			;a621	00 	. 
	rst 38h			;a622	ff 	. 
	jp po,0001dh		;a623	e2 1d 00 	. . . 
	rst 38h			;a626	ff 	. 
	ei			;a627	fb 	. 
	inc b			;a628	04 	. 
	cp h			;a629	bc 	. 
	ld a,(hl)			;a62a	7e 	~ 
	ld a,000h		;a62b	3e 00 	> . 
	or b			;a62d	b0 	. 
	ld a,h			;a62e	7c 	| 
	inc a			;a62f	3c 	< 
	nop			;a630	00 	. 
	nop			;a631	00 	. 
	call m,00834h		;a632	fc 34 08 	. 4 . 
	nop			;a635	00 	. 
	cp 0c2h		;a636	fe c2 	. . 
	inc a			;a638	3c 	< 
	nop			;a639	00 	. 
	cp 00eh		;a63a	fe 0e 	. . 
	ret p			;a63c	f0 	. 
	nop			;a63d	00 	. 
	rst 38h			;a63e	ff 	. 
	ccf			;a63f	3f 	? 
	ret nz			;a640	c0 	. 
	nop			;a641	00 	. 
	rst 38h			;a642	ff 	. 
	rst 38h			;a643	ff 	. 
	nop			;a644	00 	. 
	nop			;a645	00 	. 
	rst 38h			;a646	ff 	. 
	rst 38h			;a647	ff 	. 
	nop			;a648	00 	. 
	nop			;a649	00 	. 
	nop			;a64a	00 	. 
	nop			;a64b	00 	. 
	nop			;a64c	00 	. 
	nop			;a64d	00 	. 
	nop			;a64e	00 	. 
	nop			;a64f	00 	. 
	nop			;a650	00 	. 
	nop			;a651	00 	. 
	nop			;a652	00 	. 
	nop			;a653	00 	. 
	nop			;a654	00 	. 
	nop			;a655	00 	. 
	nop			;a656	00 	. 
	nop			;a657	00 	. 
	nop			;a658	00 	. 
	nop			;a659	00 	. 
	nop			;a65a	00 	. 
	nop			;a65b	00 	. 
	nop			;a65c	00 	. 
	nop			;a65d	00 	. 
	nop			;a65e	00 	. 
	nop			;a65f	00 	. 
	nop			;a660	00 	. 
	nop			;a661	00 	. 
	nop			;a662	00 	. 
	nop			;a663	00 	. 
	nop			;a664	00 	. 
	nop			;a665	00 	. 
	add a,b			;a666	80 	. 
	add a,b			;a667	80 	. 
	nop			;a668	00 	. 
	nop			;a669	00 	. 
	ccf			;a66a	3f 	? 
	ccf			;a66b	3f 	? 
	nop			;a66c	00 	. 
	nop			;a66d	00 	. 
	rst 38h			;a66e	ff 	. 
	rst 38h			;a66f	ff 	. 
	nop			;a670	00 	. 
	nop			;a671	00 	. 
	rst 38h			;a672	ff 	. 
	rst 38h			;a673	ff 	. 
	nop			;a674	00 	. 
	nop			;a675	00 	. 
	ld a,a			;a676	7f 	 
	ld a,a			;a677	7f 	 
	nop			;a678	00 	. 
	nop			;a679	00 	. 
	rra			;a67a	1f 	. 
	rra			;a67b	1f 	. 
	nop			;a67c	00 	. 
	nop			;a67d	00 	. 
	rlca			;a67e	07 	. 
	rlca			;a67f	07 	. 
	nop			;a680	00 	. 
	nop			;a681	00 	. 
	ld bc,00001h		;a682	01 01 00 	. . . 
	nop			;a685	00 	. 
	nop			;a686	00 	. 
	nop			;a687	00 	. 
	nop			;a688	00 	. 
	nop			;a689	00 	. 
	rst 38h			;a68a	ff 	. 
	rst 38h			;a68b	ff 	. 
	nop			;a68c	00 	. 
	nop			;a68d	00 	. 
	rst 38h			;a68e	ff 	. 
	rst 38h			;a68f	ff 	. 
	nop			;a690	00 	. 
	nop			;a691	00 	. 
	ei			;a692	fb 	. 
	ei			;a693	fb 	. 
	nop			;a694	00 	. 
	nop			;a695	00 	. 
	ei			;a696	fb 	. 
	ei			;a697	fb 	. 
	nop			;a698	00 	. 
	nop			;a699	00 	. 
	rst 30h			;a69a	f7 	. 
	rst 30h			;a69b	f7 	. 
	nop			;a69c	00 	. 
	nop			;a69d	00 	. 
	rst 38h			;a69e	ff 	. 
	rst 38h			;a69f	ff 	. 
	nop			;a6a0	00 	. 
	nop			;a6a1	00 	. 
	rst 28h			;a6a2	ef 	. 
	rst 28h			;a6a3	ef 	. 
	nop			;a6a4	00 	. 
	nop			;a6a5	00 	. 
	ld h,(hl)			;a6a6	66 	f 
	ld h,(hl)			;a6a7	66 	f 
	nop			;a6a8	00 	. 
	nop			;a6a9	00 	. 
	rst 38h			;a6aa	ff 	. 
	rst 38h			;a6ab	ff 	. 
	nop			;a6ac	00 	. 
	nop			;a6ad	00 	. 
	rst 38h			;a6ae	ff 	. 
	rst 38h			;a6af	ff 	. 
	nop			;a6b0	00 	. 
	nop			;a6b1	00 	. 
	rst 38h			;a6b2	ff 	. 
	rst 38h			;a6b3	ff 	. 
	nop			;a6b4	00 	. 
	nop			;a6b5	00 	. 
	cp 0feh		;a6b6	fe fe 	. . 
	nop			;a6b8	00 	. 
	nop			;a6b9	00 	. 
	ret m			;a6ba	f8 	. 
	ret m			;a6bb	f8 	. 
	nop			;a6bc	00 	. 
	nop			;a6bd	00 	. 
	ret po			;a6be	e0 	. 
	ret po			;a6bf	e0 	. 
	nop			;a6c0	00 	. 
	nop			;a6c1	00 	. 
	add a,b			;a6c2	80 	. 
	add a,b			;a6c3	80 	. 
	nop			;a6c4	00 	. 
	nop			;a6c5	00 	. 
	nop			;a6c6	00 	. 
	nop			;a6c7	00 	. 
	nop			;a6c8	00 	. 
	nop			;a6c9	00 	. 
	nop			;a6ca	00 	. 
	nop			;a6cb	00 	. 
	nop			;a6cc	00 	. 
	nop			;a6cd	00 	. 
	add a,b			;a6ce	80 	. 
	add a,b			;a6cf	80 	. 
	nop			;a6d0	00 	. 
	nop			;a6d1	00 	. 
	add a,b			;a6d2	80 	. 
	add a,b			;a6d3	80 	. 
	nop			;a6d4	00 	. 
	nop			;a6d5	00 	. 
	nop			;a6d6	00 	. 
	nop			;a6d7	00 	. 
	nop			;a6d8	00 	. 
	nop			;a6d9	00 	. 
	nop			;a6da	00 	. 
	nop			;a6db	00 	. 
	nop			;a6dc	00 	. 
	nop			;a6dd	00 	. 
	nop			;a6de	00 	. 
	nop			;a6df	00 	. 
	nop			;a6e0	00 	. 
	nop			;a6e1	00 	. 
	nop			;a6e2	00 	. 
	nop			;a6e3	00 	. 
	nop			;a6e4	00 	. 
	nop			;a6e5	00 	. 
	nop			;a6e6	00 	. 
	nop			;a6e7	00 	. 
	nop			;a6e8	00 	. 
	inc bc			;a6e9	03 	. 
	nop			;a6ea	00 	. 
	nop			;a6eb	00 	. 
	nop			;a6ec	00 	. 
	rrca			;a6ed	0f 	. 
	nop			;a6ee	00 	. 
	nop			;a6ef	00 	. 
	nop			;a6f0	00 	. 
	rra			;a6f1	1f 	. 
	nop			;a6f2	00 	. 
	nop			;a6f3	00 	. 
	nop			;a6f4	00 	. 
	ccf			;a6f5	3f 	? 
	nop			;a6f6	00 	. 
	nop			;a6f7	00 	. 
	nop			;a6f8	00 	. 
	ld a,(hl)			;a6f9	7e 	~ 
	nop			;a6fa	00 	. 
	nop			;a6fb	00 	. 
	nop			;a6fc	00 	. 
	ld a,h			;a6fd	7c 	| 
	nop			;a6fe	00 	. 
	nop			;a6ff	00 	. 
	nop			;a700	00 	. 
	ret m			;a701	f8 	. 
	nop			;a702	00 	. 
	nop			;a703	00 	. 
	nop			;a704	00 	. 
	ret m			;a705	f8 	. 
	nop			;a706	00 	. 
	nop			;a707	00 	. 
	nop			;a708	00 	. 
	ret nz			;a709	c0 	. 
	nop			;a70a	00 	. 
	nop			;a70b	00 	. 
	nop			;a70c	00 	. 
	ret p			;a70d	f0 	. 
	nop			;a70e	00 	. 
	nop			;a70f	00 	. 
	nop			;a710	00 	. 
	ret nz			;a711	c0 	. 
	nop			;a712	00 	. 
	nop			;a713	00 	. 
	nop			;a714	00 	. 
	nop			;a715	00 	. 
	nop			;a716	00 	. 
	nop			;a717	00 	. 
	nop			;a718	00 	. 
	nop			;a719	00 	. 
	nop			;a71a	00 	. 
	nop			;a71b	00 	. 
	nop			;a71c	00 	. 
	nop			;a71d	00 	. 
	nop			;a71e	00 	. 
	nop			;a71f	00 	. 
	nop			;a720	00 	. 
	nop			;a721	00 	. 
	nop			;a722	00 	. 
	nop			;a723	00 	. 
	nop			;a724	00 	. 
	nop			;a725	00 	. 
	nop			;a726	00 	. 
	nop			;a727	00 	. 
	nop			;a728	00 	. 
	rra			;a729	1f 	. 
	nop			;a72a	00 	. 
	nop			;a72b	00 	. 
	nop			;a72c	00 	. 
	rra			;a72d	1f 	. 
	nop			;a72e	00 	. 
	nop			;a72f	00 	. 
	nop			;a730	00 	. 
	ld a,000h		;a731	3e 00 	> . 
	nop			;a733	00 	. 
	nop			;a734	00 	. 
	ld a,000h		;a735	3e 00 	> . 
	nop			;a737	00 	. 
	nop			;a738	00 	. 
	ld a,h			;a739	7c 	| 
	nop			;a73a	00 	. 
	nop			;a73b	00 	. 
	nop			;a73c	00 	. 
	ld a,h			;a73d	7c 	| 
	nop			;a73e	00 	. 
	nop			;a73f	00 	. 
	nop			;a740	00 	. 
	ret m			;a741	f8 	. 
	nop			;a742	00 	. 
	nop			;a743	00 	. 
	nop			;a744	00 	. 
	ret m			;a745	f8 	. 
	nop			;a746	00 	. 
	nop			;a747	00 	. 
	nop			;a748	00 	. 
	rra			;a749	1f 	. 
	nop			;a74a	00 	. 
	nop			;a74b	00 	. 
	nop			;a74c	00 	. 
	rra			;a74d	1f 	. 
	ret nz			;a74e	c0 	. 
	ret nz			;a74f	c0 	. 
	nop			;a750	00 	. 
	cp 0c0h		;a751	fe c0 	. . 
	ret nz			;a753	c0 	. 
	nop			;a754	00 	. 
	cp 0c0h		;a755	fe c0 	. . 
	ld b,b			;a757	40 	@ 
	nop			;a758	00 	. 
	call m,00080h		;a759	fc 80 00 	. . . 
	nop			;a75c	00 	. 
	call m,sub_8080h		;a75d	fc 80 80 	. . . 
	nop			;a760	00 	. 
	ret m			;a761	f8 	. 
	inc b			;a762	04 	. 
	inc b			;a763	04 	. 
	nop			;a764	00 	. 
	call m,00202h		;a765	fc 02 02 	. . . 
	inc b			;a768	04 	. 
	nop			;a769	00 	. 
	rra			;a76a	1f 	. 
	ld e,000h		;a76b	1e 00 	. . 
	ld e,07fh		;a76d	1e 7f 	.  
	ld a,(hl)			;a76f	7e 	~ 
	nop			;a770	00 	. 
	ld b,0e7h		;a771	06 e7 	. . 
	rst 38h			;a773	ff 	. 
	jr la777h		;a774	18 01 	. . 
	ex (sp),hl			;a776	e3 	. 
la777h:
	rst 38h			;a777	ff 	. 
	inc e			;a778	1c 	. 
	ld bc,0ff83h		;a779	01 83 ff 	. . . 
	ld a,h			;a77c	7c 	| 
	ld bc,0ff83h		;a77d	01 83 ff 	. . . 
	ld a,h			;a780	7c 	| 
	ld bc,07f43h		;a781	01 43 7f 	. C  
	inc a			;a784	3c 	< 
	ld (bc),a			;a785	02 	. 
	ccf			;a786	3f 	? 
	ccf			;a787	3f 	? 
	nop			;a788	00 	. 
	ld a,a			;a789	7f 	 
	add a,e			;a78a	83 	. 
	inc bc			;a78b	03 	. 
	nop			;a78c	00 	. 
	ccf			;a78d	3f 	? 
	jp 00003h		;a78e	c3 03 00 	. . . 
	adc a,e			;a791	8b 	. 
	rst 30h			;a792	f7 	. 
	add a,e			;a793	83 	. 
	nop			;a794	00 	. 
	pop hl			;a795	e1 	. 
	rst 38h			;a796	ff 	. 
	pop hl			;a797	e1 	. 
	nop			;a798	00 	. 
	ld sp,hl			;a799	f9 	. 
	rst 38h			;a79a	ff 	. 
	ld sp,hl			;a79b	f9 	. 
	nop			;a79c	00 	. 
	call m,0ffffh		;a79d	fc ff ff 	. . . 
	nop			;a7a0	00 	. 
	call m,0ffffh		;a7a1	fc ff ff 	. . . 
	ld bc,0ff7eh		;a7a4	01 7e ff 	. ~ . 
	rst 38h			;a7a7	ff 	. 
	nop			;a7a8	00 	. 
	ld a,l			;a7a9	7d 	} 
	cp 0feh		;a7aa	fe fe 	. . 
	nop			;a7ac	00 	. 
	ld a,(hl)			;a7ad	7e 	~ 
	rst 38h			;a7ae	ff 	. 
	rst 38h			;a7af	ff 	. 
	nop			;a7b0	00 	. 
	cp a			;a7b1	bf 	. 
	ld a,a			;a7b2	7f 	 
	ld a,a			;a7b3	7f 	 
	nop			;a7b4	00 	. 
	cp a			;a7b5	bf 	. 
	ld a,a			;a7b6	7f 	 
	ld a,a			;a7b7	7f 	 
	nop			;a7b8	00 	. 
	ld e,a			;a7b9	5f 	_ 
	cp a			;a7ba	bf 	. 
	rst 38h			;a7bb	ff 	. 
	ret nz			;a7bc	c0 	. 
	rst 18h			;a7bd	df 	. 
	ld a,0ffh		;a7be	3e ff 	> . 
	pop bc			;a7c0	c1 	. 
	rst 38h			;a7c1	ff 	. 
	nop			;a7c2	00 	. 
	rst 38h			;a7c3	ff 	. 
	rst 38h			;a7c4	ff 	. 
	rst 38h			;a7c5	ff 	. 
	nop			;a7c6	00 	. 
	rst 38h			;a7c7	ff 	. 
	rst 38h			;a7c8	ff 	. 
	dec bc			;a7c9	0b 	. 
	call m,003f7h		;a7ca	fc f7 03 	. . . 
	dec b			;a7cd	05 	. 
	cp 09bh		;a7ce	fe 9b 	. . 
	ld h,c			;a7d0	61 	a 
	dec b			;a7d1	05 	. 
	cp 0ebh		;a7d2	fe eb 	. . 
	ld de,0fe05h		;a7d4	11 05 fe 	. . . 
	sbc a,e			;a7d7	9b 	. 
	ld h,c			;a7d8	61 	a 
	dec bc			;a7d9	0b 	. 
	call m,003f7h		;a7da	fc f7 03 	. . . 
	ld (hl),a			;a7dd	77 	w 
	ret m			;a7de	f8 	. 
	adc a,a			;a7df	8f 	. 
	rlca			;a7e0	07 	. 
	rrca			;a7e1	0f 	. 
	ld (hl),b			;a7e2	70 	p 
	ld a,a			;a7e3	7f 	 
	rrca			;a7e4	0f 	. 
	nop			;a7e5	00 	. 
	ccf			;a7e6	3f 	? 
	ccf			;a7e7	3f 	? 
	nop			;a7e8	00 	. 
	rst 38h			;a7e9	ff 	. 
	nop			;a7ea	00 	. 
	rst 38h			;a7eb	ff 	. 
	rst 38h			;a7ec	ff 	. 
	rst 38h			;a7ed	ff 	. 
	nop			;a7ee	00 	. 
	rst 38h			;a7ef	ff 	. 
	rst 38h			;a7f0	ff 	. 
	rst 38h			;a7f1	ff 	. 
	nop			;a7f2	00 	. 
	rst 38h			;a7f3	ff 	. 
	rst 38h			;a7f4	ff 	. 
	rst 38h			;a7f5	ff 	. 
	nop			;a7f6	00 	. 
	rst 38h			;a7f7	ff 	. 
	rst 38h			;a7f8	ff 	. 
	rst 38h			;a7f9	ff 	. 
	nop			;a7fa	00 	. 
	rst 38h			;a7fb	ff 	. 
	rst 38h			;a7fc	ff 	. 
	rst 38h			;a7fd	ff 	. 
	nop			;a7fe	00 	. 
	rst 38h			;a7ff	ff 	. 
	rst 38h			;a800	ff 	. 
	rst 38h			;a801	ff 	. 
	nop			;a802	00 	. 
	rst 38h			;a803	ff 	. 
la804h:
	rst 38h			;a804	ff 	. 
	nop			;a805	00 	. 
	rst 38h			;a806	ff 	. 
	rst 38h			;a807	ff 	. 
	nop			;a808	00 	. 
	ret nz			;a809	c0 	. 
	jr c,la804h		;a80a	38 f8 	8 . 
la80ch:
	ret nz			;a80c	c0 	. 
	ret p			;a80d	f0 	. 
	ex af,af'			;a80e	08 	. 
	ret m			;a80f	f8 	. 
	ret p			;a810	f0 	. 
	ret nz			;a811	c0 	. 
	jr c,la80ch		;a812	38 f8 	8 . 
la814h:
	ret nz			;a814	c0 	. 
	add a,b			;a815	80 	. 
	ld a,b			;a816	78 	x 
	ret z			;a817	c8 	. 
	or b			;a818	b0 	. 
	ret nz			;a819	c0 	. 
	jr c,la814h		;a81a	38 f8 	8 . 
	ret nz			;a81c	c0 	. 
la81dh:
	ret p			;a81d	f0 	. 
	ex af,af'			;a81e	08 	. 
	ret m			;a81f	f8 	. 
	ret p			;a820	f0 	. 
la821h:
	ret po			;a821	e0 	. 
	djnz la814h		;a822	10 f0 	. . 
	ret po			;a824	e0 	. 
la825h:
	nop			;a825	00 	. 
	ret po			;a826	e0 	. 
	ret po			;a827	e0 	. 
	nop			;a828	00 	. 
	nop			;a829	00 	. 
	rst 38h			;a82a	ff 	. 
	add a,b			;a82b	80 	. 
	ld a,a			;a82c	7f 	 
	nop			;a82d	00 	. 
	rst 38h			;a82e	ff 	. 
	add a,b			;a82f	80 	. 
	ld a,a			;a830	7f 	 
la831h:
	nop			;a831	00 	. 
	rst 38h			;a832	ff 	. 
	add a,b			;a833	80 	. 
	ld a,a			;a834	7f 	 
la835h:
	nop			;a835	00 	. 
	rst 38h			;a836	ff 	. 
	add a,b			;a837	80 	. 
	ld a,a			;a838	7f 	 
la839h:
	nop			;a839	00 	. 
	ld a,a			;a83a	7f 	 
	ld b,b			;a83b	40 	@ 
	ccf			;a83c	3f 	? 
	nop			;a83d	00 	. 
	ld a,a			;a83e	7f 	 
	ld b,b			;a83f	40 	@ 
	ccf			;a840	3f 	? 
	nop			;a841	00 	. 
	ld a,a			;a842	7f 	 
	ld b,b			;a843	40 	@ 
	ccf			;a844	3f 	? 
	nop			;a845	00 	. 
	rst 38h			;a846	ff 	. 
	rst 38h			;a847	ff 	. 
	nop			;a848	00 	. 
	nop			;a849	00 	. 
	ret m			;a84a	f8 	. 
	ex af,af'			;a84b	08 	. 
	ret p			;a84c	f0 	. 
	nop			;a84d	00 	. 
	ret p			;a84e	f0 	. 
	djnz la831h		;a84f	10 e0 	. . 
	nop			;a851	00 	. 
	ret p			;a852	f0 	. 
	djnz la835h		;a853	10 e0 	. . 
	nop			;a855	00 	. 
	ret p			;a856	f0 	. 
	djnz la839h		;a857	10 e0 	. . 
	nop			;a859	00 	. 
	ret po			;a85a	e0 	. 
	jr nz,la81dh		;a85b	20 c0 	  . 
	nop			;a85d	00 	. 
	ret po			;a85e	e0 	. 
	jr nz,la821h		;a85f	20 c0 	  . 
	nop			;a861	00 	. 
	ret po			;a862	e0 	. 
	jr nz,la825h		;a863	20 c0 	  . 
	nop			;a865	00 	. 
	ret p			;a866	f0 	. 
	ret p			;a867	f0 	. 
	nop			;a868	00 	. 
	nop			;a869	00 	. 
	nop			;a86a	00 	. 
	nop			;a86b	00 	. 
	nop			;a86c	00 	. 
	nop			;a86d	00 	. 
	rlca			;a86e	07 	. 
	rlca			;a86f	07 	. 
	nop			;a870	00 	. 
	rlca			;a871	07 	. 
	rrca			;a872	0f 	. 
	rrca			;a873	0f 	. 
	nop			;a874	00 	. 
	rrca			;a875	0f 	. 
	rra			;a876	1f 	. 
	dec e			;a877	1d 	. 
	nop			;a878	00 	. 
	rra			;a879	1f 	. 
	cpl			;a87a	2f 	/ 
	jr z,la88dh		;a87b	28 10 	( . 
	ccf			;a87d	3f 	? 
	ld e,a			;a87e	5f 	_ 
	ld e,a			;a87f	5f 	_ 
	jr nz,la8feh		;a880	20 7c 	  | 
	cp a			;a882	bf 	. 
	cp a			;a883	bf 	. 
	ld b,b			;a884	40 	@ 
	ld a,e			;a885	7b 	{ 
	cp a			;a886	bf 	. 
	cp a			;a887	bf 	. 
	ld b,b			;a888	40 	@ 
	nop			;a889	00 	. 
	nop			;a88a	00 	. 
	nop			;a88b	00 	. 
	nop			;a88c	00 	. 
la88dh:
	nop			;a88d	00 	. 
	nop			;a88e	00 	. 
	nop			;a88f	00 	. 
	nop			;a890	00 	. 
	nop			;a891	00 	. 
	ret p			;a892	f0 	. 
	ret p			;a893	f0 	. 
	nop			;a894	00 	. 
	ret p			;a895	f0 	. 
	adc a,b			;a896	88 	. 
	adc a,b			;a897	88 	. 
	ld (hl),b			;a898	70 	p 
	ret po			;a899	e0 	. 
	sbc a,b			;a89a	98 	. 
	sbc a,b			;a89b	98 	. 
	ld h,b			;a89c	60 	` 
	ret m			;a89d	f8 	. 
	call nz,038c4h		;a89e	c4 c4 38 	. . 8 
	inc (hl)			;a8a1	34 	4 
	jp m,004fah		;a8a2	fa fa 04 	. . . 
	ret c			;a8a5	d8 	. 
	call m,000fch		;a8a6	fc fc 00 	. . . 
	rrca			;a8a9	0f 	. 
	rla			;a8aa	17 	. 
	rla			;a8ab	17 	. 
	ex af,af'			;a8ac	08 	. 
	rrca			;a8ad	0f 	. 
	rla			;a8ae	17 	. 
	rla			;a8af	17 	. 
	ex af,af'			;a8b0	08 	. 
	rrca			;a8b1	0f 	. 
	rla			;a8b2	17 	. 
	rla			;a8b3	17 	. 
	ex af,af'			;a8b4	08 	. 
	rrca			;a8b5	0f 	. 
	rla			;a8b6	17 	. 
	rla			;a8b7	17 	. 
	ex af,af'			;a8b8	08 	. 
	rra			;a8b9	1f 	. 
	cpl			;a8ba	2f 	/ 
	cpl			;a8bb	2f 	/ 
	djnz la8f6h		;a8bc	10 38 	. 8 
	ld e,a			;a8be	5f 	_ 
	ld e,a			;a8bf	5f 	_ 
	jr nz,la8f2h		;a8c0	20 30 	  0 
	ld e,a			;a8c2	5f 	_ 
	ld e,a			;a8c3	5f 	_ 
	daa			;a8c4	27 	' 
	ld h,a			;a8c5	67 	g 
	cp b			;a8c6	b8 	. 
	cp b			;a8c7	b8 	. 
	ld c,b			;a8c8	48 	H 
	ret po			;a8c9	e0 	. 
	rst 38h			;a8ca	ff 	. 
	rst 20h			;a8cb	e7 	. 
	jr $-11		;a8cc	18 f3 	. . 
	rst 38h			;a8ce	ff 	. 
	di			;a8cf	f3 	. 
	inc c			;a8d0	0c 	. 
	rst 38h			;a8d1	ff 	. 
	rst 38h			;a8d2	ff 	. 
	rst 38h			;a8d3	ff 	. 
	nop			;a8d4	00 	. 
	cp 0feh		;a8d5	fe fe 	. . 
	rst 38h			;a8d7	ff 	. 
	ld bc,0fcfch		;a8d8	01 fc fc 	. . . 
	rst 38h			;a8db	ff 	. 
	inc bc			;a8dc	03 	. 
	ld a,h			;a8dd	7c 	| 
	call m,003ffh		;a8de	fc ff 03 	. . . 
	ld a,0feh		;a8e1	3e fe 	> . 
	rst 38h			;a8e3	ff 	. 
	add a,c			;a8e4	81 	. 
	sbc a,(hl)			;a8e5	9e 	. 
	ld a,a			;a8e6	7f 	 
	ld a,a			;a8e7	7f 	 
	ld b,b			;a8e8	40 	@ 
	nop			;a8e9	00 	. 
	ret nz			;a8ea	c0 	. 
	ret nz			;a8eb	c0 	. 
la8ech:
	nop			;a8ec	00 	. 
	ret nz			;a8ed	c0 	. 
	ret p			;a8ee	f0 	. 
	ret p			;a8ef	f0 	. 
la8f0h:
	nop			;a8f0	00 	. 
	nop			;a8f1	00 	. 
la8f2h:
	jr c,la8ech		;a8f2	38 f8 	8 . 
la8f4h:
	ret nz			;a8f4	c0 	. 
	nop			;a8f5	00 	. 
la8f6h:
	jr c,la8f0h		;a8f6	38 f8 	8 . 
	ret nz			;a8f8	c0 	. 
	nop			;a8f9	00 	. 
	ex af,af'			;a8fa	08 	. 
	ret m			;a8fb	f8 	. 
	ret p			;a8fc	f0 	. 
	nop			;a8fd	00 	. 
la8feh:
	ex af,af'			;a8fe	08 	. 
	ret m			;a8ff	f8 	. 
	ret p			;a900	f0 	. 
	nop			;a901	00 	. 
	djnz la8f4h		;a902	10 f0 	. . 
	ret po			;a904	e0 	. 
	nop			;a905	00 	. 
	ret po			;a906	e0 	. 
	ret po			;a907	e0 	. 
	nop			;a908	00 	. 
	daa			;a909	27 	' 
	ld e,b			;a90a	58 	X 
	ld e,b			;a90b	58 	X 
	jr z,la91ah		;a90c	28 0c 	( . 
	ld (hl),e			;a90e	73 	s 
	ld (hl),e			;a90f	73 	s 
	inc de			;a910	13 	. 
la911h:
	dec de			;a911	1b 	. 
	rst 20h			;a912	e7 	. 
	rst 20h			;a913	e7 	. 
	ld h,h			;a914	64 	d 
	ld (hl),e			;a915	73 	s 
la916h:
	adc a,a			;a916	8f 	. 
	adc a,a			;a917	8f 	. 
	ex af,af'			;a918	08 	. 
	ld l,e			;a919	6b 	k 
la91ah:
	sub a			;a91a	97 	. 
	sbc a,a			;a91b	9f 	. 
	jr $+29		;a91c	18 1b 	. . 
	rst 20h			;a91e	e7 	. 
	rst 38h			;a91f	ff 	. 
	ld a,b			;a920	78 	x 
	dec de			;a921	1b 	. 
	rst 20h			;a922	e7 	. 
	rst 38h			;a923	ff 	. 
	jr la931h		;a924	18 0b 	. . 
	rst 30h			;a926	f7 	. 
	sbc a,a			;a927	9f 	. 
	ld l,b			;a928	68 	h 
	rst 20h			;a929	e7 	. 
	rra			;a92a	1f 	. 
	rra			;a92b	1f 	. 
	djnz la95eh		;a92c	10 30 	. 0 
	rst 8			;a92e	cf 	. 
	rst 8			;a92f	cf 	. 
	ret z			;a930	c8 	. 
la931h:
	ret c			;a931	d8 	. 
	rst 20h			;a932	e7 	. 
	rst 20h			;a933	e7 	. 
	daa			;a934	27 	' 
	rst 8			;a935	cf 	. 
	ret p			;a936	f0 	. 
	ret p			;a937	f0 	. 
	djnz la911h		;a938	10 d7 	. . 
la93ah:
	ret pe			;a93a	e8 	. 
	ret m			;a93b	f8 	. 
	jr la916h		;a93c	18 d8 	. . 
	rst 20h			;a93e	e7 	. 
	rst 38h			;a93f	ff 	. 
	rra			;a940	1f 	. 
	rst 18h			;a941	df 	. 
	ret po			;a942	e0 	. 
	rst 38h			;a943	ff 	. 
	rra			;a944	1f 	. 
	rst 18h			;a945	df 	. 
	ret po			;a946	e0 	. 
	rst 38h			;a947	ff 	. 
	rra			;a948	1f 	. 
	add a,b			;a949	80 	. 
	ret nz			;a94a	c0 	. 
	ret nz			;a94b	c0 	. 
	nop			;a94c	00 	. 
	nop			;a94d	00 	. 
	ret p			;a94e	f0 	. 
	ret p			;a94f	f0 	. 
	nop			;a950	00 	. 
	nop			;a951	00 	. 
	ret m			;a952	f8 	. 
	ret m			;a953	f8 	. 
	ret p			;a954	f0 	. 
	ret p			;a955	f0 	. 
	ex af,af'			;a956	08 	. 
	ex af,af'			;a957	08 	. 
	nop			;a958	00 	. 
	ret p			;a959	f0 	. 
	ex af,af'			;a95a	08 	. 
	ex af,af'			;a95b	08 	. 
	nop			;a95c	00 	. 
	nop			;a95d	00 	. 
la95eh:
	ret m			;a95e	f8 	. 
	ret m			;a95f	f8 	. 
	ret p			;a960	f0 	. 
	add a,b			;a961	80 	. 
	ld a,b			;a962	78 	x 
	ret m			;a963	f8 	. 
	add a,b			;a964	80 	. 
	ld (hl),b			;a965	70 	p 
	ret m			;a966	f8 	. 
	adc a,b			;a967	88 	. 
	nop			;a968	00 	. 
	dec de			;a969	1b 	. 
	rst 20h			;a96a	e7 	. 
	rst 38h			;a96b	ff 	. 
	jr la9e9h		;a96c	18 7b 	. { 
	add a,a			;a96e	87 	. 
	rst 38h			;a96f	ff 	. 
	ld a,b			;a970	78 	x 
	dec de			;a971	1b 	. 
	rst 20h			;a972	e7 	. 
	rst 38h			;a973	ff 	. 
	jr la981h		;a974	18 0b 	. . 
	rst 30h			;a976	f7 	. 
	sbc a,a			;a977	9f 	. 
	ld l,b			;a978	68 	h 
	rla			;a979	17 	. 
	rst 28h			;a97a	ef 	. 
	rst 38h			;a97b	ff 	. 
	djnz la9f5h		;a97c	10 77 	. w 
	adc a,a			;a97e	8f 	. 
	rst 38h			;a97f	ff 	. 
	ld (hl),b			;a980	70 	p 
la981h:
	scf			;a981	37 	7 
	ld c,a			;a982	4f 	O 
	ld a,a			;a983	7f 	 
	jr nc,$+9		;a984	30 07 	0 . 
	ccf			;a986	3f 	? 
	ccf			;a987	3f 	? 
	nop			;a988	00 	. 
	sbc a,0e1h		;a989	de e1 	. . 
	rst 38h			;a98b	ff 	. 
	ld e,0ddh		;a98c	1e dd 	. . 
	ex (sp),hl			;a98e	e3 	. 
	cp 01ch		;a98f	fe 1c 	. . 
	ex (sp),ix		;a991	dd e3 	. . 
	cp 01ch		;a993	fe 1c 	. . 
	ex (sp),ix		;a995	dd e3 	. . 
	cp 01ch		;a997	fe 1c 	. . 
	xor 0f1h		;a999	ee f1 	. . 
	rst 38h			;a99b	ff 	. 
	ld c,0f7h		;a99c	0e f7 	. . 
	ret m			;a99e	f8 	. 
	rst 38h			;a99f	ff 	. 
	rlca			;a9a0	07 	. 
	rst 30h			;a9a1	f7 	. 
	ret m			;a9a2	f8 	. 
	rst 38h			;a9a3	ff 	. 
	rlca			;a9a4	07 	. 
	ret nz			;a9a5	c0 	. 
	rst 38h			;a9a6	ff 	. 
	rst 38h			;a9a7	ff 	. 
	nop			;a9a8	00 	. 
	add a,b			;a9a9	80 	. 
	ret m			;a9aa	f8 	. 
	ld a,b			;a9ab	78 	x 
	nop			;a9ac	00 	. 
	nop			;a9ad	00 	. 
	ret m			;a9ae	f8 	. 
	ret z			;a9af	c8 	. 
	jr nc,la9b2h		;a9b0	30 00 	0 . 
la9b2h:
	ret m			;a9b2	f8 	. 
	cp b			;a9b3	b8 	. 
	ld b,b			;a9b4	40 	@ 
	nop			;a9b5	00 	. 
	ret m			;a9b6	f8 	. 
	ret z			;a9b7	c8 	. 
	jr nc,la93ah		;a9b8	30 80 	0 . 
	ret m			;a9ba	f8 	. 
	ld a,b			;a9bb	78 	x 
	nop			;a9bc	00 	. 
	ld (hl),b			;a9bd	70 	p 
	ret m			;a9be	f8 	. 
	adc a,b			;a9bf	88 	. 
	nop			;a9c0	00 	. 
	adc a,a			;a9c1	8f 	. 
	ld (hl),b			;a9c2	70 	p 
	ret p			;a9c3	f0 	. 
	add a,b			;a9c4	80 	. 
	rra			;a9c5	1f 	. 
	ret po			;a9c6	e0 	. 
	ret po			;a9c7	e0 	. 
	nop			;a9c8	00 	. 
	nop			;a9c9	00 	. 
	nop			;a9ca	00 	. 
	nop			;a9cb	00 	. 
	nop			;a9cc	00 	. 
	nop			;a9cd	00 	. 
	nop			;a9ce	00 	. 
	nop			;a9cf	00 	. 
	nop			;a9d0	00 	. 
	nop			;a9d1	00 	. 
	nop			;a9d2	00 	. 
	nop			;a9d3	00 	. 
	nop			;a9d4	00 	. 
	nop			;a9d5	00 	. 
	nop			;a9d6	00 	. 
	nop			;a9d7	00 	. 
	nop			;a9d8	00 	. 
	nop			;a9d9	00 	. 
	nop			;a9da	00 	. 
	nop			;a9db	00 	. 
	nop			;a9dc	00 	. 
	ld bc,00000h		;a9dd	01 00 00 	. . . 
	nop			;a9e0	00 	. 
	rst 38h			;a9e1	ff 	. 
	nop			;a9e2	00 	. 
	nop			;a9e3	00 	. 
	nop			;a9e4	00 	. 
	rst 38h			;a9e5	ff 	. 
	nop			;a9e6	00 	. 
	nop			;a9e7	00 	. 
	nop			;a9e8	00 	. 
la9e9h:
	nop			;a9e9	00 	. 
	nop			;a9ea	00 	. 
	nop			;a9eb	00 	. 
	nop			;a9ec	00 	. 
	nop			;a9ed	00 	. 
	nop			;a9ee	00 	. 
	nop			;a9ef	00 	. 
	nop			;a9f0	00 	. 
	nop			;a9f1	00 	. 
	nop			;a9f2	00 	. 
	nop			;a9f3	00 	. 
	nop			;a9f4	00 	. 
la9f5h:
	inc b			;a9f5	04 	. 
	nop			;a9f6	00 	. 
	nop			;a9f7	00 	. 
	nop			;a9f8	00 	. 
	inc e			;a9f9	1c 	. 
	nop			;a9fa	00 	. 
	nop			;a9fb	00 	. 
	nop			;a9fc	00 	. 
	call m,00000h		;a9fd	fc 00 00 	. . . 
	nop			;aa00	00 	. 
	ret m			;aa01	f8 	. 
	nop			;aa02	00 	. 
	nop			;aa03	00 	. 
	nop			;aa04	00 	. 
	ret m			;aa05	f8 	. 
	nop			;aa06	00 	. 
	nop			;aa07	00 	. 
	nop			;aa08	00 	. 
	rrca			;aa09	0f 	. 
	rst 38h			;aa0a	ff 	. 
	sbc a,a			;aa0b	9f 	. 
	ld h,b			;aa0c	60 	` 
	nop			;aa0d	00 	. 
	ld a,a			;aa0e	7f 	 
	ld c,a			;aa0f	4f 	O 
	jr nc,laa12h		;aa10	30 00 	0 . 
laa12h:
	ld a,a			;aa12	7f 	 
	ld b,b			;aa13	40 	@ 
	ccf			;aa14	3f 	? 
	nop			;aa15	00 	. 
	ld a,a			;aa16	7f 	 
	ld b,b			;aa17	40 	@ 
	ccf			;aa18	3f 	? 
	nop			;aa19	00 	. 
	ccf			;aa1a	3f 	? 
	jr nz,$+33		;aa1b	20 1f 	  . 
laa1dh:
	nop			;aa1d	00 	. 
	ccf			;aa1e	3f 	? 
	jr nz,$+33		;aa1f	20 1f 	  . 
laa21h:
	nop			;aa21	00 	. 
	ccf			;aa22	3f 	? 
	jr nz,$+33		;aa23	20 1f 	  . 
laa25h:
	nop			;aa25	00 	. 
	ld a,a			;aa26	7f 	 
	ld a,a			;aa27	7f 	 
	nop			;aa28	00 	. 
	rlca			;aa29	07 	. 
	ret m			;aa2a	f8 	. 
	adc a,b			;aa2b	88 	. 
	ld (hl),b			;aa2c	70 	p 
	rlca			;aa2d	07 	. 
	ret m			;aa2e	f8 	. 
	ex af,af'			;aa2f	08 	. 
	ret p			;aa30	f0 	. 
	nop			;aa31	00 	. 
	ret m			;aa32	f8 	. 
	ex af,af'			;aa33	08 	. 
	ret p			;aa34	f0 	. 
	nop			;aa35	00 	. 
	ret m			;aa36	f8 	. 
	ex af,af'			;aa37	08 	. 
	ret p			;aa38	f0 	. 
	nop			;aa39	00 	. 
	ret p			;aa3a	f0 	. 
	djnz laa1dh		;aa3b	10 e0 	. . 
	nop			;aa3d	00 	. 
	ret p			;aa3e	f0 	. 
	djnz laa21h		;aa3f	10 e0 	. . 
	nop			;aa41	00 	. 
	ret p			;aa42	f0 	. 
	djnz laa25h		;aa43	10 e0 	. . 
	nop			;aa45	00 	. 
	ret m			;aa46	f8 	. 
	ret m			;aa47	f8 	. 
	nop			;aa48	00 	. 
	rst 38h			;aa49	ff 	. 
	nop			;aa4a	00 	. 
	nop			;aa4b	00 	. 
	nop			;aa4c	00 	. 
	cp 000h		;aa4d	fe 00 	. . 
	nop			;aa4f	00 	. 
	nop			;aa50	00 	. 
	nop			;aa51	00 	. 
	nop			;aa52	00 	. 
	nop			;aa53	00 	. 
	nop			;aa54	00 	. 
	nop			;aa55	00 	. 
	nop			;aa56	00 	. 
	nop			;aa57	00 	. 
	nop			;aa58	00 	. 
	nop			;aa59	00 	. 
	nop			;aa5a	00 	. 
	nop			;aa5b	00 	. 
	nop			;aa5c	00 	. 
	nop			;aa5d	00 	. 
	nop			;aa5e	00 	. 
	nop			;aa5f	00 	. 
	nop			;aa60	00 	. 
	nop			;aa61	00 	. 
	nop			;aa62	00 	. 
	nop			;aa63	00 	. 
	nop			;aa64	00 	. 
	nop			;aa65	00 	. 
	nop			;aa66	00 	. 
	nop			;aa67	00 	. 
	nop			;aa68	00 	. 
	ret nz			;aa69	c0 	. 
	nop			;aa6a	00 	. 
	nop			;aa6b	00 	. 
	nop			;aa6c	00 	. 
	nop			;aa6d	00 	. 
	nop			;aa6e	00 	. 
	nop			;aa6f	00 	. 
	nop			;aa70	00 	. 
	nop			;aa71	00 	. 
	nop			;aa72	00 	. 
	nop			;aa73	00 	. 
	nop			;aa74	00 	. 
	nop			;aa75	00 	. 
	nop			;aa76	00 	. 
	nop			;aa77	00 	. 
	nop			;aa78	00 	. 
	nop			;aa79	00 	. 
	nop			;aa7a	00 	. 
	nop			;aa7b	00 	. 
	nop			;aa7c	00 	. 
	nop			;aa7d	00 	. 
	nop			;aa7e	00 	. 
	nop			;aa7f	00 	. 
	nop			;aa80	00 	. 
	nop			;aa81	00 	. 
	nop			;aa82	00 	. 
	nop			;aa83	00 	. 
	nop			;aa84	00 	. 
	nop			;aa85	00 	. 
	nop			;aa86	00 	. 
	nop			;aa87	00 	. 
	nop			;aa88	00 	. 
	nop			;aa89	00 	. 
	rst 38h			;aa8a	ff 	. 
	rst 38h			;aa8b	ff 	. 
	nop			;aa8c	00 	. 
	nop			;aa8d	00 	. 
	ld a,a			;aa8e	7f 	 
	ld a,a			;aa8f	7f 	 
	nop			;aa90	00 	. 
	nop			;aa91	00 	. 
	ld a,a			;aa92	7f 	 
	ld a,a			;aa93	7f 	 
	nop			;aa94	00 	. 
	nop			;aa95	00 	. 
	ld a,a			;aa96	7f 	 
	ld a,a			;aa97	7f 	 
	nop			;aa98	00 	. 
	nop			;aa99	00 	. 
	rst 38h			;aa9a	ff 	. 
	rst 38h			;aa9b	ff 	. 
	nop			;aa9c	00 	. 
	nop			;aa9d	00 	. 
	rst 38h			;aa9e	ff 	. 
	rst 38h			;aa9f	ff 	. 
	nop			;aaa0	00 	. 
	nop			;aaa1	00 	. 
	rst 38h			;aaa2	ff 	. 
	rst 38h			;aaa3	ff 	. 
	nop			;aaa4	00 	. 
	nop			;aaa5	00 	. 
	rst 38h			;aaa6	ff 	. 
	rst 38h			;aaa7	ff 	. 
	nop			;aaa8	00 	. 
	nop			;aaa9	00 	. 
	ret p			;aaaa	f0 	. 
	ret p			;aaab	f0 	. 
	nop			;aaac	00 	. 
	nop			;aaad	00 	. 
	ret po			;aaae	e0 	. 
	ret po			;aaaf	e0 	. 
	nop			;aab0	00 	. 
	nop			;aab1	00 	. 
	ret po			;aab2	e0 	. 
	ret po			;aab3	e0 	. 
	nop			;aab4	00 	. 
	nop			;aab5	00 	. 
	ret po			;aab6	e0 	. 
	ret po			;aab7	e0 	. 
	nop			;aab8	00 	. 
	nop			;aab9	00 	. 
	ret p			;aaba	f0 	. 
	ret p			;aabb	f0 	. 
	nop			;aabc	00 	. 
	nop			;aabd	00 	. 
	ret m			;aabe	f8 	. 
	ret m			;aabf	f8 	. 
	nop			;aac0	00 	. 
	nop			;aac1	00 	. 
	call m,000fch		;aac2	fc fc 00 	. . . 
	nop			;aac5	00 	. 
	call m,000fch		;aac6	fc fc 00 	. . . 
	daa			;aac9	27 	' 
	ld e,b			;aaca	58 	X 
	ld e,b			;aacb	58 	X 
	jr z,laadah		;aacc	28 0c 	( . 
	ld (hl),e			;aace	73 	s 
	ld (hl),e			;aacf	73 	s 
	inc de			;aad0	13 	. 
laad1h:
	dec de			;aad1	1b 	. 
	rst 20h			;aad2	e7 	. 
	rst 20h			;aad3	e7 	. 
	ld h,h			;aad4	64 	d 
	ld (hl),e			;aad5	73 	s 
	adc a,a			;aad6	8f 	. 
	adc a,a			;aad7	8f 	. 
	ex af,af'			;aad8	08 	. 
	ld l,e			;aad9	6b 	k 
laadah:
	sub a			;aada	97 	. 
	sbc a,a			;aadb	9f 	. 
	jr laafbh		;aadc	18 1d 	. . 
	ex (sp),hl			;aade	e3 	. 
	rst 38h			;aadf	ff 	. 
	ld a,h			;aae0	7c 	| 
	dec e			;aae1	1d 	. 
	ex (sp),hl			;aae2	e3 	. 
	rst 38h			;aae3	ff 	. 
	inc e			;aae4	1c 	. 
	ld c,0f1h		;aae5	0e f1 	. . 
	sbc a,a			;aae7	9f 	. 
	ld l,(hl)			;aae8	6e 	n 
	rst 20h			;aae9	e7 	. 
	rra			;aaea	1f 	. 
	rra			;aaeb	1f 	. 
	djnz lab1eh		;aaec	10 30 	. 0 
	rst 8			;aaee	cf 	. 
	rst 8			;aaef	cf 	. 
	ret z			;aaf0	c8 	. 
	ret c			;aaf1	d8 	. 
	rst 20h			;aaf2	e7 	. 
	rst 20h			;aaf3	e7 	. 
	daa			;aaf4	27 	' 
	rst 8			;aaf5	cf 	. 
	ret p			;aaf6	f0 	. 
	ret p			;aaf7	f0 	. 
	djnz laad1h		;aaf8	10 d7 	. . 
	ret pe			;aafa	e8 	. 
laafbh:
	ret m			;aafb	f8 	. 
	jr $-22		;aafc	18 e8 	. . 
	rst 30h			;aafe	f7 	. 
	rst 38h			;aaff	ff 	. 
	rrca			;ab00	0f 	. 
	rst 28h			;ab01	ef 	. 
	ret p			;ab02	f0 	. 
	rst 38h			;ab03	ff 	. 
	rrca			;ab04	0f 	. 
	rst 30h			;ab05	f7 	. 
	ret m			;ab06	f8 	. 
	rst 38h			;ab07	ff 	. 
	rlca			;ab08	07 	. 
	ld e,0e1h		;ab09	1e e1 	. . 
	rst 38h			;ab0b	ff 	. 
	ld e,07fh		;ab0c	1e 7f 	.  
	add a,b			;ab0e	80 	. 
	rst 38h			;ab0f	ff 	. 
	ld a,a			;ab10	7f 	 
	rra			;ab11	1f 	. 
	ret po			;ab12	e0 	. 
	rst 38h			;ab13	ff 	. 
	rra			;ab14	1f 	. 
	rrca			;ab15	0f 	. 
	ret p			;ab16	f0 	. 
	sbc a,a			;ab17	9f 	. 
	ld l,a			;ab18	6f 	o 
	rra			;ab19	1f 	. 
	ret po			;ab1a	e0 	. 
	rst 38h			;ab1b	ff 	. 
	rra			;ab1c	1f 	. 
	ld a,a			;ab1d	7f 	 
lab1eh:
	add a,b			;ab1e	80 	. 
	rst 38h			;ab1f	ff 	. 
	ld a,a			;ab20	7f 	 
	ccf			;ab21	3f 	? 
	ld b,b			;ab22	40 	@ 
	ld a,a			;ab23	7f 	 
	ccf			;ab24	3f 	? 
	nop			;ab25	00 	. 
	ccf			;ab26	3f 	? 
	ccf			;ab27	3f 	? 
	nop			;ab28	00 	. 
	or 0f9h		;ab29	f6 f9 	. . 
	rst 38h			;ab2b	ff 	. 
	ld b,079h		;ab2c	06 79 	. y 
	rst 38h			;ab2e	ff 	. 
	cp 000h		;ab2f	fe 00 	. . 
	ld a,c			;ab31	79 	y 
	rst 38h			;ab32	ff 	. 
	cp 000h		;ab33	fe 00 	. . 
	cp (hl)			;ab35	be 	. 
	ld a,a			;ab36	7f 	 
	rst 38h			;ab37	ff 	. 
	add a,b			;ab38	80 	. 
	cp a			;ab39	bf 	. 
	ld a,a			;ab3a	7f 	 
	rst 38h			;ab3b	ff 	. 
	add a,b			;ab3c	80 	. 
	cp (hl)			;ab3d	be 	. 
	ld a,a			;ab3e	7f 	 
	rst 38h			;ab3f	ff 	. 
	add a,b			;ab40	80 	. 
	cp a			;ab41	bf 	. 
	ld a,a			;ab42	7f 	 
	rst 38h			;ab43	ff 	. 
	add a,b			;ab44	80 	. 
	ccf			;ab45	3f 	? 
	rst 38h			;ab46	ff 	. 
	rst 38h			;ab47	ff 	. 
	nop			;ab48	00 	. 
	add a,b			;ab49	80 	. 
	ret m			;ab4a	f8 	. 
	ld a,b			;ab4b	78 	x 
	nop			;ab4c	00 	. 
	nop			;ab4d	00 	. 
	ret m			;ab4e	f8 	. 
	ret z			;ab4f	c8 	. 
	jr nc,lab52h		;ab50	30 00 	0 . 
lab52h:
	ret m			;ab52	f8 	. 
	cp b			;ab53	b8 	. 
	ld b,b			;ab54	40 	@ 
	nop			;ab55	00 	. 
	ret m			;ab56	f8 	. 
	ret z			;ab57	c8 	. 
	jr nc,lab5ah		;ab58	30 00 	0 . 
lab5ah:
	ret m			;ab5a	f8 	. 
	ret m			;ab5b	f8 	. 
	nop			;ab5c	00 	. 
	ld (hl),b			;ab5d	70 	p 
	ret m			;ab5e	f8 	. 
	adc a,b			;ab5f	88 	. 
	nop			;ab60	00 	. 
	rrca			;ab61	0f 	. 
	ret p			;ab62	f0 	. 
	ret p			;ab63	f0 	. 
	nop			;ab64	00 	. 
	rra			;ab65	1f 	. 
	ret po			;ab66	e0 	. 
	ret po			;ab67	e0 	. 
	nop			;ab68	00 	. 
	nop			;ab69	00 	. 
	nop			;ab6a	00 	. 
	nop			;ab6b	00 	. 
	nop			;ab6c	00 	. 
	nop			;ab6d	00 	. 
	nop			;ab6e	00 	. 
	nop			;ab6f	00 	. 
	nop			;ab70	00 	. 
	nop			;ab71	00 	. 
	nop			;ab72	00 	. 
	nop			;ab73	00 	. 
	nop			;ab74	00 	. 
	nop			;ab75	00 	. 
	nop			;ab76	00 	. 
	nop			;ab77	00 	. 
	nop			;ab78	00 	. 
	ld bc,00000h		;ab79	01 00 00 	. . . 
	nop			;ab7c	00 	. 
	rra			;ab7d	1f 	. 
	nop			;ab7e	00 	. 
	nop			;ab7f	00 	. 
	nop			;ab80	00 	. 
	rst 38h			;ab81	ff 	. 
	nop			;ab82	00 	. 
	nop			;ab83	00 	. 
	nop			;ab84	00 	. 
	rst 38h			;ab85	ff 	. 
	nop			;ab86	00 	. 
	nop			;ab87	00 	. 
	nop			;ab88	00 	. 
	nop			;ab89	00 	. 
	nop			;ab8a	00 	. 
	nop			;ab8b	00 	. 
	nop			;ab8c	00 	. 
	nop			;ab8d	00 	. 
	nop			;ab8e	00 	. 
	nop			;ab8f	00 	. 
	nop			;ab90	00 	. 
	nop			;ab91	00 	. 
	nop			;ab92	00 	. 
	nop			;ab93	00 	. 
	nop			;ab94	00 	. 
	ld b,b			;ab95	40 	@ 
	nop			;ab96	00 	. 
	nop			;ab97	00 	. 
	nop			;ab98	00 	. 
	ret nz			;ab99	c0 	. 
	nop			;ab9a	00 	. 
	nop			;ab9b	00 	. 
	nop			;ab9c	00 	. 
	ret nz			;ab9d	c0 	. 
	nop			;ab9e	00 	. 
	nop			;ab9f	00 	. 
	nop			;aba0	00 	. 
	add a,b			;aba1	80 	. 
	nop			;aba2	00 	. 
	nop			;aba3	00 	. 
	nop			;aba4	00 	. 
	add a,b			;aba5	80 	. 
	nop			;aba6	00 	. 
	nop			;aba7	00 	. 
	nop			;aba8	00 	. 
	nop			;aba9	00 	. 
	rrca			;abaa	0f 	. 
	ex af,af'			;abab	08 	. 
	rlca			;abac	07 	. 
	nop			;abad	00 	. 
	rra			;abae	1f 	. 
	djnz labc0h		;abaf	10 0f 	. . 
	nop			;abb1	00 	. 
	rra			;abb2	1f 	. 
	djnz labc4h		;abb3	10 0f 	. . 
	nop			;abb5	00 	. 
	ccf			;abb6	3f 	? 
	jr nz,labd8h		;abb7	20 1f 	  . 
	nop			;abb9	00 	. 
	ccf			;abba	3f 	? 
	jr c,labc4h		;abbb	38 07 	8 . 
labbdh:
	nop			;abbd	00 	. 
	ld a,a			;abbe	7f 	 
	ld a,(hl)			;abbf	7e 	~ 
labc0h:
	ld bc,07f00h		;abc0	01 00 7f 	. .  
	ld a,a			;abc3	7f 	 
labc4h:
	nop			;abc4	00 	. 
	nop			;abc5	00 	. 
	rst 38h			;abc6	ff 	. 
	rst 38h			;abc7	ff 	. 
	nop			;abc8	00 	. 
	rrca			;abc9	0f 	. 
	rst 38h			;abca	ff 	. 
	rra			;abcb	1f 	. 
	ret po			;abcc	e0 	. 
	nop			;abcd	00 	. 
	rst 38h			;abce	ff 	. 
	rrca			;abcf	0f 	. 
	ret p			;abd0	f0 	. 
	nop			;abd1	00 	. 
	rst 38h			;abd2	ff 	. 
	inc b			;abd3	04 	. 
	ei			;abd4	fb 	. 
	nop			;abd5	00 	. 
	rst 38h			;abd6	ff 	. 
	inc b			;abd7	04 	. 
labd8h:
	ei			;abd8	fb 	. 
	nop			;abd9	00 	. 
	rst 38h			;abda	ff 	. 
	ex af,af'			;abdb	08 	. 
	rst 30h			;abdc	f7 	. 
	nop			;abdd	00 	. 
sub_abdeh:
	rst 38h			;abde	ff 	. 
	ex af,af'			;abdf	08 	. 
	rst 30h			;abe0	f7 	. 
	nop			;abe1	00 	. 
	rst 38h			;abe2	ff 	. 
	sub e			;abe3	93 	. 
	ld l,h			;abe4	6c 	l 
	nop			;abe5	00 	. 
	rst 38h			;abe6	ff 	. 
	rst 38h			;abe7	ff 	. 
	nop			;abe8	00 	. 
	ld a,a			;abe9	7f 	 
	add a,b			;abea	80 	. 
	add a,b			;abeb	80 	. 
	nop			;abec	00 	. 
	ld a,a			;abed	7f 	 
	add a,b			;abee	80 	. 
	add a,b			;abef	80 	. 
	nop			;abf0	00 	. 
	nop			;abf1	00 	. 
	ret nz			;abf2	c0 	. 
	ld b,b			;abf3	40 	@ 
	add a,b			;abf4	80 	. 
	nop			;abf5	00 	. 
	ret nz			;abf6	c0 	. 
	ld b,b			;abf7	40 	@ 
	add a,b			;abf8	80 	. 
	nop			;abf9	00 	. 
	ret po			;abfa	e0 	. 
	jr nz,labbdh		;abfb	20 c0 	  . 
	nop			;abfd	00 	. 
	ret po			;abfe	e0 	. 
	ret po			;abff	e0 	. 
	nop			;ac00	00 	. 
	nop			;ac01	00 	. 
	ret p			;ac02	f0 	. 
	ret p			;ac03	f0 	. 
	nop			;ac04	00 	. 
	nop			;ac05	00 	. 
	ret p			;ac06	f0 	. 
	ret p			;ac07	f0 	. 
	nop			;ac08	00 	. 
	rst 38h			;ac09	ff 	. 
	nop			;ac0a	00 	. 
	nop			;ac0b	00 	. 
	nop			;ac0c	00 	. 
	call m,00000h		;ac0d	fc 00 00 	. . . 
	nop			;ac10	00 	. 
	nop			;ac11	00 	. 
	nop			;ac12	00 	. 
	nop			;ac13	00 	. 
	nop			;ac14	00 	. 
	nop			;ac15	00 	. 
	nop			;ac16	00 	. 
	nop			;ac17	00 	. 
	nop			;ac18	00 	. 
	nop			;ac19	00 	. 
	nop			;ac1a	00 	. 
	nop			;ac1b	00 	. 
	nop			;ac1c	00 	. 
	nop			;ac1d	00 	. 
	nop			;ac1e	00 	. 
	nop			;ac1f	00 	. 
	nop			;ac20	00 	. 
	nop			;ac21	00 	. 
	nop			;ac22	00 	. 
	nop			;ac23	00 	. 
	nop			;ac24	00 	. 
	nop			;ac25	00 	. 
	nop			;ac26	00 	. 
	nop			;ac27	00 	. 
	nop			;ac28	00 	. 
	add a,b			;ac29	80 	. 
	nop			;ac2a	00 	. 
	nop			;ac2b	00 	. 
	nop			;ac2c	00 	. 
	nop			;ac2d	00 	. 
	nop			;ac2e	00 	. 
	nop			;ac2f	00 	. 
	nop			;ac30	00 	. 
	nop			;ac31	00 	. 
	nop			;ac32	00 	. 
	nop			;ac33	00 	. 
	nop			;ac34	00 	. 
	nop			;ac35	00 	. 
	nop			;ac36	00 	. 
	nop			;ac37	00 	. 
	nop			;ac38	00 	. 
	nop			;ac39	00 	. 
	nop			;ac3a	00 	. 
	nop			;ac3b	00 	. 
	nop			;ac3c	00 	. 
	nop			;ac3d	00 	. 
	nop			;ac3e	00 	. 
	nop			;ac3f	00 	. 
	nop			;ac40	00 	. 
	nop			;ac41	00 	. 
	nop			;ac42	00 	. 
	nop			;ac43	00 	. 
	nop			;ac44	00 	. 
	nop			;ac45	00 	. 
	nop			;ac46	00 	. 
	nop			;ac47	00 	. 
	nop			;ac48	00 	. 
	nop			;ac49	00 	. 
	ld a,a			;ac4a	7f 	 
	ld a,a			;ac4b	7f 	 
	nop			;ac4c	00 	. 
	nop			;ac4d	00 	. 
	rst 38h			;ac4e	ff 	. 
	rst 38h			;ac4f	ff 	. 
	nop			;ac50	00 	. 
	nop			;ac51	00 	. 
	rst 38h			;ac52	ff 	. 
	rst 38h			;ac53	ff 	. 
	nop			;ac54	00 	. 
	nop			;ac55	00 	. 
	ccf			;ac56	3f 	? 
	ccf			;ac57	3f 	? 
	nop			;ac58	00 	. 
	nop			;ac59	00 	. 
	rrca			;ac5a	0f 	. 
	rrca			;ac5b	0f 	. 
	nop			;ac5c	00 	. 
	nop			;ac5d	00 	. 
	inc bc			;ac5e	03 	. 
	inc bc			;ac5f	03 	. 
	nop			;ac60	00 	. 
	nop			;ac61	00 	. 
	nop			;ac62	00 	. 
	nop			;ac63	00 	. 
	nop			;ac64	00 	. 
	nop			;ac65	00 	. 
	nop			;ac66	00 	. 
	nop			;ac67	00 	. 
	nop			;ac68	00 	. 
	nop			;ac69	00 	. 
	rst 30h			;ac6a	f7 	. 
	rst 30h			;ac6b	f7 	. 
	nop			;ac6c	00 	. 
	nop			;ac6d	00 	. 
	rst 38h			;ac6e	ff 	. 
	rst 38h			;ac6f	ff 	. 
	nop			;ac70	00 	. 
	nop			;ac71	00 	. 
	rst 28h			;ac72	ef 	. 
	rst 28h			;ac73	ef 	. 
	nop			;ac74	00 	. 
	nop			;ac75	00 	. 
	rst 28h			;ac76	ef 	. 
	rst 28h			;ac77	ef 	. 
	nop			;ac78	00 	. 
	nop			;ac79	00 	. 
	rst 30h			;ac7a	f7 	. 
	rst 30h			;ac7b	f7 	. 
	nop			;ac7c	00 	. 
	nop			;ac7d	00 	. 
	ei			;ac7e	fb 	. 
	ei			;ac7f	fb 	. 
	nop			;ac80	00 	. 
	nop			;ac81	00 	. 
	ei			;ac82	fb 	. 
	ei			;ac83	fb 	. 
	nop			;ac84	00 	. 
	nop			;ac85	00 	. 
	ld sp,00031h		;ac86	31 31 00 	1 1 . 
	nop			;ac89	00 	. 
	cp 0feh		;ac8a	fe fe 	. . 
	nop			;ac8c	00 	. 
	nop			;ac8d	00 	. 
	rst 38h			;ac8e	ff 	. 
	rst 38h			;ac8f	ff 	. 
	nop			;ac90	00 	. 
	nop			;ac91	00 	. 
	rst 38h			;ac92	ff 	. 
	rst 38h			;ac93	ff 	. 
	nop			;ac94	00 	. 
	nop			;ac95	00 	. 
	rst 38h			;ac96	ff 	. 
	rst 38h			;ac97	ff 	. 
	nop			;ac98	00 	. 
	nop			;ac99	00 	. 
	call m,000fch		;ac9a	fc fc 00 	. . . 
	nop			;ac9d	00 	. 
	ret p			;ac9e	f0 	. 
	ret p			;ac9f	f0 	. 
	nop			;aca0	00 	. 
	nop			;aca1	00 	. 
	ret nz			;aca2	c0 	. 
	ret nz			;aca3	c0 	. 
	nop			;aca4	00 	. 
	nop			;aca5	00 	. 
	nop			;aca6	00 	. 
	nop			;aca7	00 	. 
	nop			;aca8	00 	. 
	inc a			;aca9	3c 	< 
	nop			;acaa	00 	. 
	nop			;acab	00 	. 
	nop			;acac	00 	. 
	rst 38h			;acad	ff 	. 
	nop			;acae	00 	. 
	nop			;acaf	00 	. 
	nop			;acb0	00 	. 
	ccf			;acb1	3f 	? 
	nop			;acb2	00 	. 
	nop			;acb3	00 	. 
	nop			;acb4	00 	. 
	rrca			;acb5	0f 	. 
	nop			;acb6	00 	. 
	nop			;acb7	00 	. 
	nop			;acb8	00 	. 
	rlca			;acb9	07 	. 
	nop			;acba	00 	. 
	nop			;acbb	00 	. 
	nop			;acbc	00 	. 
	inc bc			;acbd	03 	. 
	nop			;acbe	00 	. 
	nop			;acbf	00 	. 
	nop			;acc0	00 	. 
	ld bc,00000h		;acc1	01 00 00 	. . . 
	nop			;acc4	00 	. 
	ld bc,00000h		;acc5	01 00 00 	. . . 
	nop			;acc8	00 	. 
	nop			;acc9	00 	. 
	nop			;acca	00 	. 
	nop			;accb	00 	. 
	nop			;accc	00 	. 
	nop			;accd	00 	. 
	nop			;acce	00 	. 
	nop			;accf	00 	. 
	nop			;acd0	00 	. 
	add a,b			;acd1	80 	. 
	nop			;acd2	00 	. 
	nop			;acd3	00 	. 
	nop			;acd4	00 	. 
	ret nz			;acd5	c0 	. 
	nop			;acd6	00 	. 
	nop			;acd7	00 	. 
	nop			;acd8	00 	. 
	ret po			;acd9	e0 	. 
lacdah:
	nop			;acda	00 	. 
	nop			;acdb	00 	. 
	nop			;acdc	00 	. 
	ret po			;acdd	e0 	. 
	nop			;acde	00 	. 
	nop			;acdf	00 	. 
	nop			;ace0	00 	. 
	ret p			;ace1	f0 	. 
	nop			;ace2	00 	. 
	nop			;ace3	00 	. 
	nop			;ace4	00 	. 
	ret p			;ace5	f0 	. 
	nop			;ace6	00 	. 
	nop			;ace7	00 	. 
	nop			;ace8	00 	. 
	ret m			;ace9	f8 	. 
	nop			;acea	00 	. 
	nop			;aceb	00 	. 
	nop			;acec	00 	. 
	ret m			;aced	f8 	. 
	nop			;acee	00 	. 
	nop			;acef	00 	. 
	nop			;acf0	00 	. 
	ld a,h			;acf1	7c 	| 
	nop			;acf2	00 	. 
	nop			;acf3	00 	. 
	nop			;acf4	00 	. 
	ld a,h			;acf5	7c 	| 
	nop			;acf6	00 	. 
	nop			;acf7	00 	. 
	nop			;acf8	00 	. 
	ld a,000h		;acf9	3e 00 	> . 
	nop			;acfb	00 	. 
	nop			;acfc	00 	. 
	ld a,000h		;acfd	3e 00 	> . 
	nop			;acff	00 	. 
	nop			;ad00	00 	. 
	rra			;ad01	1f 	. 
	nop			;ad02	00 	. 
	nop			;ad03	00 	. 
	nop			;ad04	00 	. 
	rra			;ad05	1f 	. 
	nop			;ad06	00 	. 
	nop			;ad07	00 	. 
	nop			;ad08	00 	. 
	ret m			;ad09	f8 	. 
	nop			;ad0a	00 	. 
	nop			;ad0b	00 	. 
	nop			;ad0c	00 	. 
	ret m			;ad0d	f8 	. 
	inc bc			;ad0e	03 	. 
	inc bc			;ad0f	03 	. 
	nop			;ad10	00 	. 
	ld a,e			;ad11	7b 	{ 
	rlca			;ad12	07 	. 
	rlca			;ad13	07 	. 
	nop			;ad14	00 	. 
	ld (hl),a			;ad15	77 	w 
	rrca			;ad16	0f 	. 
	ld c,000h		;ad17	0e 00 	. . 
	cpl			;ad19	2f 	/ 
	rla			;ad1a	17 	. 
	inc d			;ad1b	14 	. 
	ex af,af'			;ad1c	08 	. 
	rra			;ad1d	1f 	. 
	cpl			;ad1e	2f 	/ 
	cpl			;ad1f	2f 	/ 
	djnz lad60h		;ad20	10 3e 	. > 
	ld e,a			;ad22	5f 	_ 
	ld e,a			;ad23	5f 	_ 
	jr nz,lad63h		;ad24	20 3d 	  = 
	ld e,a			;ad26	5f 	_ 
	ld e,a			;ad27	5f 	_ 
	jr nz,lad2ah		;ad28	20 00 	  . 
lad2ah:
	nop			;ad2a	00 	. 
	nop			;ad2b	00 	. 
	nop			;ad2c	00 	. 
	nop			;ad2d	00 	. 
	add a,b			;ad2e	80 	. 
	add a,b			;ad2f	80 	. 
	nop			;ad30	00 	. 
	add a,b			;ad31	80 	. 
	ret m			;ad32	f8 	. 
	ret m			;ad33	f8 	. 
	nop			;ad34	00 	. 
	ret m			;ad35	f8 	. 
	call nz,038c4h		;ad36	c4 c4 38 	. . 8 
	ret p			;ad39	f0 	. 
	call z,0304ch		;ad3a	cc 4c 30 	. L 0 
	call m,0e2e2h		;ad3d	fc e2 e2 	. . . 
	inc e			;ad40	1c 	. 
	ld a,(de)			;ad41	1a 	. 
	defb 0fdh,0fdh,002h	;illegal sequence		;ad42	fd fd 02 	. . . 
	call pe,0fefeh		;ad45	ec fe fe 	. . . 
	nop			;ad48	00 	. 
	add a,b			;ad49	80 	. 
	ret m			;ad4a	f8 	. 
	ld a,b			;ad4b	78 	x 
	nop			;ad4c	00 	. 
	nop			;ad4d	00 	. 
	ret m			;ad4e	f8 	. 
	ret z			;ad4f	c8 	. 
	jr nc,lad52h		;ad50	30 00 	0 . 
lad52h:
	ret m			;ad52	f8 	. 
	cp b			;ad53	b8 	. 
	ld b,b			;ad54	40 	@ 
	nop			;ad55	00 	. 
	ret m			;ad56	f8 	. 
	ret z			;ad57	c8 	. 
	jr nc,lacdah		;ad58	30 80 	0 . 
	ret m			;ad5a	f8 	. 
	ld a,b			;ad5b	78 	x 
	nop			;ad5c	00 	. 
lad5dh:
	ld (hl),b			;ad5d	70 	p 
	ret m			;ad5e	f8 	. 
	adc a,b			;ad5f	88 	. 
lad60h:
	nop			;ad60	00 	. 
lad61h:
	add a,b			;ad61	80 	. 
	ld (hl),b			;ad62	70 	p 
lad63h:
	ret p			;ad63	f0 	. 
	add a,b			;ad64	80 	. 
lad65h:
	nop			;ad65	00 	. 
	ret po			;ad66	e0 	. 
	ret po			;ad67	e0 	. 
	nop			;ad68	00 	. 
	nop			;ad69	00 	. 
	ret m			;ad6a	f8 	. 
	adc a,b			;ad6b	88 	. 
	ld (hl),b			;ad6c	70 	p 
	nop			;ad6d	00 	. 
	ret m			;ad6e	f8 	. 
	ex af,af'			;ad6f	08 	. 
	ret p			;ad70	f0 	. 
	nop			;ad71	00 	. 
	ret m			;ad72	f8 	. 
	ex af,af'			;ad73	08 	. 
	ret p			;ad74	f0 	. 
	nop			;ad75	00 	. 
	ret m			;ad76	f8 	. 
	ex af,af'			;ad77	08 	. 
	ret p			;ad78	f0 	. 
	nop			;ad79	00 	. 
	ret p			;ad7a	f0 	. 
	djnz lad5dh		;ad7b	10 e0 	. . 
	nop			;ad7d	00 	. 
	ret p			;ad7e	f0 	. 
	djnz lad61h		;ad7f	10 e0 	. . 
	nop			;ad81	00 	. 
	ret p			;ad82	f0 	. 
	djnz lad65h		;ad83	10 e0 	. . 
	nop			;ad85	00 	. 
	ret m			;ad86	f8 	. 
	ret m			;ad87	f8 	. 
	nop			;ad88	00 	. 
	nop			;ad89	00 	. 
	ld (bc),a			;ad8a	02 	. 
	ld (bc),a			;ad8b	02 	. 
	nop			;ad8c	00 	. 
	ld (bc),a			;ad8d	02 	. 
	daa			;ad8e	27 	' 
	daa			;ad8f	27 	' 
	ld (bc),a			;ad90	02 	. 
	inc hl			;ad91	23 	# 
	ld a,a			;ad92	7f 	 
	ld e,a			;ad93	5f 	_ 
	inc bc			;ad94	03 	. 
	dec a			;ad95	3d 	= 
	ld a,a			;ad96	7f 	 
	ld a,a			;ad97	7f 	 
	dec a			;ad98	3d 	= 
	ld a,a			;ad99	7f 	 
	rst 38h			;ad9a	ff 	. 
	rst 38h			;ad9b	ff 	. 
	ld a,a			;ad9c	7f 	 
	ld a,a			;ad9d	7f 	 
	rst 38h			;ad9e	ff 	. 
	rst 38h			;ad9f	ff 	. 
	ld a,a			;ada0	7f 	 
	ld h,(hl)			;ada1	66 	f 
	rst 38h			;ada2	ff 	. 
	rst 38h			;ada3	ff 	. 
	ld h,(hl)			;ada4	66 	f 
	nop			;ada5	00 	. 
	ld h,(hl)			;ada6	66 	f 
	ld h,(hl)			;ada7	66 	f 
	nop			;ada8	00 	. 
	nop			;ada9	00 	. 
	ld b,b			;adaa	40 	@ 
	ld b,b			;adab	40 	@ 
	nop			;adac	00 	. 
	ld b,b			;adad	40 	@ 
	call po,040e4h		;adae	e4 e4 40 	. . @ 
	call nz,0fafeh		;adb1	c4 fe fa 	. . . 
	ret nz			;adb4	c0 	. 
	cp h			;adb5	bc 	. 
	cp 0feh		;adb6	fe fe 	. . 
	cp h			;adb8	bc 	. 
	cp 0ffh		;adb9	fe ff 	. . 
	rst 38h			;adbb	ff 	. 
	cp 0feh		;adbc	fe fe 	. . 
	rst 38h			;adbe	ff 	. 
	rst 38h			;adbf	ff 	. 
	cp 066h		;adc0	fe 66 	. f 
	rst 38h			;adc2	ff 	. 
	rst 38h			;adc3	ff 	. 
	ld h,(hl)			;adc4	66 	f 
	nop			;adc5	00 	. 
	ld h,(hl)			;adc6	66 	f 
	ld h,(hl)			;adc7	66 	f 
	nop			;adc8	00 	. 
	nop			;adc9	00 	. 
	ld c,c			;adca	49 	I 
	ld c,c			;adcb	49 	I 
	nop			;adcc	00 	. 
	ld c,c			;adcd	49 	I 
	rst 38h			;adce	ff 	. 
	cp a			;adcf	bf 	. 
	add hl,bc			;add0	09 	. 
	ld l,a			;add1	6f 	o 
	rst 38h			;add2	ff 	. 
	rst 38h			;add3	ff 	. 
	ld l,a			;add4	6f 	o 
	halt			;add5	76 	v 
	rst 38h			;add6	ff 	. 
	rst 38h			;add7	ff 	. 
	halt			;add8	76 	v 
	ld a,a			;add9	7f 	 
	rst 38h			;adda	ff 	. 
	rst 38h			;addb	ff 	. 
	ld a,a			;addc	7f 	 
	ld a,a			;addd	7f 	 
	rst 38h			;adde	ff 	. 
laddfh:
	rst 38h			;addf	ff 	. 
	ld a,a			;ade0	7f 	 
	ld c,c			;ade1	49 	I 
	rst 38h			;ade2	ff 	. 
	rst 38h			;ade3	ff 	. 
	ld c,c			;ade4	49 	I 
	nop			;ade5	00 	. 
	ld c,c			;ade6	49 	I 
	ld c,c			;ade7	49 	I 
	nop			;ade8	00 	. 
	nop			;ade9	00 	. 
	jr nz,lae0ch		;adea	20 20 	    
	nop			;adec	00 	. 
	jr nz,laddfh		;aded	20 f0 	  . 
	ret nc			;adef	d0 	. 
	nop			;adf0	00 	. 
	ld h,b			;adf1	60 	` 
	ret p			;adf2	f0 	. 
ladf3h:
	ret p			;adf3	f0 	. 
	ld h,b			;adf4	60 	` 
ladf5h:
	ret po			;adf5	e0 	. 
	ret p			;adf6	f0 	. 
	ret p			;adf7	f0 	. 
	ret po			;adf8	e0 	. 
	ret po			;adf9	e0 	. 
	ret p			;adfa	f0 	. 
	ret p			;adfb	f0 	. 
	ret po			;adfc	e0 	. 
	ret po			;adfd	e0 	. 
	ret p			;adfe	f0 	. 
	ret p			;adff	f0 	. 
	ret po			;ae00	e0 	. 
	jr nz,ladf3h		;ae01	20 f0 	  . 
	ret p			;ae03	f0 	. 
	jr nz,lae06h		;ae04	20 00 	  . 
lae06h:
	jr nz,lae28h		;ae06	20 20 	    
	nop			;ae08	00 	. 
	nop			;ae09	00 	. 
	nop			;ae0a	00 	. 
	nop			;ae0b	00 	. 
lae0ch:
	nop			;ae0c	00 	. 
	nop			;ae0d	00 	. 
	ld bc,00001h		;ae0e	01 01 00 	. . . 
	ld bc,00e0fh		;ae11	01 0f 0e 	. . . 
	ld bc,0130fh		;ae14	01 0f 13 	. . . 
	djnz $+5		;ae17	10 03 	. . 
lae19h:
	ld e,021h		;ae19	1e 21 	. ! 
	ld hl,01600h		;ae1b	21 00 16 	! . . 
	add hl,hl			;ae1e	29 	) 
	add hl,hl			;ae1f	29 	) 
	nop			;ae20	00 	. 
	ld a,041h		;ae21	3e 41 	> A 
	ld b,c			;ae23	41 	A 
	ld (l817eh),a		;ae24	32 7e 81 	2 ~ . 
	add a,c			;ae27	81 	. 
lae28h:
	ld a,(hl)			;ae28	7e 	~ 
	nop			;ae29	00 	. 
	nop			;ae2a	00 	. 
	nop			;ae2b	00 	. 
	nop			;ae2c	00 	. 
	nop			;ae2d	00 	. 
	ret nz			;ae2e	c0 	. 
	ret nz			;ae2f	c0 	. 
	nop			;ae30	00 	. 
	ret nz			;ae31	c0 	. 
	ret po			;ae32	e0 	. 
	jr nz,ladf5h		;ae33	20 c0 	  . 
	ret po			;ae35	e0 	. 
	ret p			;ae36	f0 	. 
	djnz lae19h		;ae37	10 e0 	. . 
	ret p			;ae39	f0 	. 
	jr c,lae44h		;ae3a	38 08 	8 . 
	ret p			;ae3c	f0 	. 
	ret p			;ae3d	f0 	. 
	inc e			;ae3e	1c 	. 
	inc c			;ae3f	0c 	. 
	ret p			;ae40	f0 	. 
	call p,00a0eh		;ae41	f4 0e 0a 	. . . 
lae44h:
	call p,0eefch		;ae44	f4 fc ee 	. . . 
	ld (bc),a			;ae47	02 	. 
	call m,0c03fh		;ae48	fc 3f c0 	. ? . 
	ret nz			;ae4b	c0 	. 
	ld a,a			;ae4c	7f 	 
	ccf			;ae4d	3f 	? 
	ld b,b			;ae4e	40 	@ 
	ld b,b			;ae4f	40 	@ 
	ccf			;ae50	3f 	? 
	rra			;ae51	1f 	. 
	jr nz,lae74h		;ae52	20 20 	    
	rra			;ae54	1f 	. 
	rrca			;ae55	0f 	. 
	djnz lae68h		;ae56	10 10 	. . 
	rrca			;ae58	0f 	. 
	inc bc			;ae59	03 	. 
	inc c			;ae5a	0c 	. 
	inc c			;ae5b	0c 	. 
	inc bc			;ae5c	03 	. 
	nop			;ae5d	00 	. 
	inc bc			;ae5e	03 	. 
	inc bc			;ae5f	03 	. 
	nop			;ae60	00 	. 
	nop			;ae61	00 	. 
	nop			;ae62	00 	. 
	nop			;ae63	00 	. 
	nop			;ae64	00 	. 
	nop			;ae65	00 	. 
	nop			;ae66	00 	. 
	nop			;ae67	00 	. 
lae68h:
	nop			;ae68	00 	. 
	ld a,(hl)			;ae69	7e 	~ 
	rst 30h			;ae6a	f7 	. 
	add a,c			;ae6b	81 	. 
	ld a,(hl)			;ae6c	7e 	~ 
	ld a,(hl)			;ae6d	7e 	~ 
	rst 30h			;ae6e	f7 	. 
	add a,c			;ae6f	81 	. 
	ld a,(hl)			;ae70	7e 	~ 
	ld a,d			;ae71	7a 	z 
	add a,a			;ae72	87 	. 
	add a,l			;ae73	85 	. 
lae74h:
	ld a,d			;ae74	7a 	z 
	ld (hl),b			;ae75	70 	p 
	adc a,d			;ae76	8a 	. 
lae77h:
	adc a,d			;ae77	8a 	. 
	ld (hl),b			;ae78	70 	p 
lae79h:
	ld (hl),b			;ae79	70 	p 
	sbc a,b			;ae7a	98 	. 
	adc a,b			;ae7b	88 	. 
	ld (hl),b			;ae7c	70 	p 
	jr nc,lae77h		;ae7d	30 f8 	0 . 
	ret z			;ae7f	c8 	. 
	jr nc,lae82h		;ae80	30 00 	0 . 
lae82h:
	jr nc,laeb4h		;ae82	30 30 	0 0 
	nop			;ae84	00 	. 
	nop			;ae85	00 	. 
	nop			;ae86	00 	. 
	nop			;ae87	00 	. 
	nop			;ae88	00 	. 
	nop			;ae89	00 	. 
	nop			;ae8a	00 	. 
	nop			;ae8b	00 	. 
	nop			;ae8c	00 	. 
	nop			;ae8d	00 	. 
	inc bc			;ae8e	03 	. 
	inc bc			;ae8f	03 	. 
	nop			;ae90	00 	. 
	inc bc			;ae91	03 	. 
	rrca			;ae92	0f 	. 
	inc c			;ae93	0c 	. 
	inc bc			;ae94	03 	. 
	rrca			;ae95	0f 	. 
	inc de			;ae96	13 	. 
	djnz $+5		;ae97	10 03 	. . 
	ld e,021h		;ae99	1e 21 	. ! 
	ld hl,03a00h		;ae9b	21 00 3a 	! . : 
	ld b,l			;ae9e	45 	E 
	ld b,l			;ae9f	45 	E 
	jr nz,laf20h		;aea0	20 7e 	  ~ 
	add a,c			;aea2	81 	. 
	add a,c			;aea3	81 	. 
	ld (hl),d			;aea4	72 	r 
	ld a,(hl)			;aea5	7e 	~ 
	add a,c			;aea6	81 	. 
	add a,c			;aea7	81 	. 
	ld a,(hl)			;aea8	7e 	~ 
	nop			;aea9	00 	. 
	nop			;aeaa	00 	. 
	nop			;aeab	00 	. 
	nop			;aeac	00 	. 
	nop			;aead	00 	. 
	add a,b			;aeae	80 	. 
	add a,b			;aeaf	80 	. 
	nop			;aeb0	00 	. 
	add a,b			;aeb1	80 	. 
	ret nz			;aeb2	c0 	. 
	ld b,b			;aeb3	40 	@ 
laeb4h:
	add a,b			;aeb4	80 	. 
	ret nz			;aeb5	c0 	. 
	ret po			;aeb6	e0 	. 
	jr nz,lae79h		;aeb7	20 c0 	  . 
	ret po			;aeb9	e0 	. 
	jr nc,laecch		;aeba	30 10 	0 . 
	ret po			;aebc	e0 	. 
	ret p			;aebd	f0 	. 
	jr laec8h		;aebe	18 08 	. . 
	ret p			;aec0	f0 	. 
	ret p			;aec1	f0 	. 
	inc c			;aec2	0c 	. 
	inc c			;aec3	0c 	. 
	ret p			;aec4	f0 	. 
	call p,00aceh		;aec5	f4 ce 0a 	. . . 
laec8h:
	call p,sub_807fh		;aec8	f4 7f 80 	.  . 
	add a,b			;aecb	80 	. 
laecch:
	ld a,a			;aecc	7f 	 
	ccf			;aecd	3f 	? 
	ld b,b			;aece	40 	@ 
	ld b,b			;aecf	40 	@ 
	ccf			;aed0	3f 	? 
	ccf			;aed1	3f 	? 
	ld b,b			;aed2	40 	@ 
	ld b,b			;aed3	40 	@ 
	ccf			;aed4	3f 	? 
	rra			;aed5	1f 	. 
	jr nz,laef8h		;aed6	20 20 	    
	rra			;aed8	1f 	. 
	inc bc			;aed9	03 	. 
	inc e			;aeda	1c 	. 
	inc e			;aedb	1c 	. 
	inc bc			;aedc	03 	. 
	nop			;aedd	00 	. 
	inc bc			;aede	03 	. 
	inc bc			;aedf	03 	. 
	nop			;aee0	00 	. 
	nop			;aee1	00 	. 
	nop			;aee2	00 	. 
	nop			;aee3	00 	. 
	nop			;aee4	00 	. 
	nop			;aee5	00 	. 
	nop			;aee6	00 	. 
	nop			;aee7	00 	. 
	nop			;aee8	00 	. 
	ld a,(hl)			;aee9	7e 	~ 
	rst 20h			;aeea	e7 	. 
	add a,c			;aeeb	81 	. 
	ld a,(hl)			;aeec	7e 	~ 
	ld a,d			;aeed	7a 	z 
	rst 20h			;aeee	e7 	. 
	add a,l			;aeef	85 	. 
	ld a,d			;aef0	7a 	z 
	ld a,b			;aef1	78 	x 
	add a,(hl)			;aef2	86 	. 
	add a,(hl)			;aef3	86 	. 
	ld a,b			;aef4	78 	x 
	ld (hl),b			;aef5	70 	p 
	adc a,b			;aef6	88 	. 
laef7h:
	adc a,b			;aef7	88 	. 
laef8h:
	ld (hl),b			;aef8	70 	p 
	ld a,b			;aef9	78 	x 
	sbc a,h			;aefa	9c 	. 
	add a,h			;aefb	84 	. 
	ld a,b			;aefc	78 	x 
	djnz laef7h		;aefd	10 f8 	. . 
	ret pe			;aeff	e8 	. 
	djnz laf02h		;af00	10 00 	. . 
laf02h:
	djnz laf14h		;af02	10 10 	. . 
	nop			;af04	00 	. 
	nop			;af05	00 	. 
	nop			;af06	00 	. 
	nop			;af07	00 	. 
	nop			;af08	00 	. 
	nop			;af09	00 	. 
	rlca			;af0a	07 	. 
	rlca			;af0b	07 	. 
	nop			;af0c	00 	. 
	rlca			;af0d	07 	. 
	ex af,af'			;af0e	08 	. 
	rrca			;af0f	0f 	. 
	rlca			;af10	07 	. 
	rrca			;af11	0f 	. 
	ld (hl),b			;af12	70 	p 
	ld a,c			;af13	79 	y 
laf14h:
	add hl,bc			;af14	09 	. 
	ld a,e			;af15	7b 	{ 
	add a,h			;af16	84 	. 
	defb 0fdh,079h,00fh	;illegal sequence		;af17	fd 79 0f 	. y . 
	ld (hl),b			;af1a	70 	p 
	ld a,a			;af1b	7f 	 
	rrca			;af1c	0f 	. 
	ld b,009h		;af1d	06 09 	. . 
	rrca			;af1f	0f 	. 
laf20h:
	ld b,00fh		;af20	06 0f 	. . 
	djnz laf3ah		;af22	10 16 	. . 
	rlca			;af24	07 	. 
	ld e,021h		;af25	1e 21 	. ! 
	inc hl			;af27	23 	# 
	ld (bc),a			;af28	02 	. 
	nop			;af29	00 	. 
	nop			;af2a	00 	. 
	nop			;af2b	00 	. 
	nop			;af2c	00 	. 
	nop			;af2d	00 	. 
	add a,b			;af2e	80 	. 
	add a,b			;af2f	80 	. 
	nop			;af30	00 	. 
	add a,b			;af31	80 	. 
	ld b,b			;af32	40 	@ 
	ret nz			;af33	c0 	. 
	add a,b			;af34	80 	. 
	add a,b			;af35	80 	. 
	ld b,b			;af36	40 	@ 
	ret nz			;af37	c0 	. 
	add a,b			;af38	80 	. 
	nop			;af39	00 	. 
laf3ah:
	add a,b			;af3a	80 	. 
	add a,b			;af3b	80 	. 
	nop			;af3c	00 	. 
	nop			;af3d	00 	. 
	nop			;af3e	00 	. 
	nop			;af3f	00 	. 
	nop			;af40	00 	. 
	nop			;af41	00 	. 
	add a,b			;af42	80 	. 
	add a,b			;af43	80 	. 
	nop			;af44	00 	. 
	nop			;af45	00 	. 
	nop			;af46	00 	. 
	nop			;af47	00 	. 
	nop			;af48	00 	. 
	ld a,h			;af49	7c 	| 
	add a,d			;af4a	82 	. 
	adc a,d			;af4b	8a 	. 
	inc c			;af4c	0c 	. 
	ld a,b			;af4d	78 	x 
	add a,h			;af4e	84 	. 
	adc a,h			;af4f	8c 	. 
	ex af,af'			;af50	08 	. 
	inc a			;af51	3c 	< 
	ld b,d			;af52	42 	B 
	ld e,d			;af53	5a 	Z 
	inc e			;af54	1c 	. 
	inc e			;af55	1c 	. 
	ld (01c3eh),hl		;af56	22 3e 1c 	" > . 
	inc c			;af59	0c 	. 
	ld d,d			;af5a	52 	R 
	ld e,(hl)			;af5b	5e 	^ 
	inc c			;af5c	0c 	. 
	ld c,h			;af5d	4c 	L 
	or d			;af5e	b2 	. 
	cp 04ch		;af5f	fe 4c 	. L 
	jr c,lafa7h		;af61	38 44 	8 D 
	ld a,h			;af63	7c 	| 
	jr c,laf66h		;af64	38 00 	8 . 
laf66h:
	jr c,lafa0h		;af66	38 38 	8 8 
	nop			;af68	00 	. 
	nop			;af69	00 	. 
	rlca			;af6a	07 	. 
	rlca			;af6b	07 	. 
	nop			;af6c	00 	. 
	rlca			;af6d	07 	. 
	ex af,af'			;af6e	08 	. 
	rrca			;af6f	0f 	. 
	rlca			;af70	07 	. 
	rrca			;af71	0f 	. 
	ld (hl),b			;af72	70 	p 
	ld a,c			;af73	79 	y 
	add hl,bc			;af74	09 	. 
	ld a,e			;af75	7b 	{ 
	add a,h			;af76	84 	. 
	defb 0fdh,079h,00fh	;illegal sequence		;af77	fd 79 0f 	. y . 
	ld (hl),b			;af7a	70 	p 
	ld a,a			;af7b	7f 	 
	rrca			;af7c	0f 	. 
	ld b,009h		;af7d	06 09 	. . 
	rrca			;af7f	0f 	. 
	ld b,00fh		;af80	06 0f 	. . 
	djnz laf9ah		;af82	10 16 	. . 
	rlca			;af84	07 	. 
	rrca			;af85	0f 	. 
	djnz laf9bh		;af86	10 13 	. . 
	inc bc			;af88	03 	. 
	nop			;af89	00 	. 
	nop			;af8a	00 	. 
	nop			;af8b	00 	. 
	nop			;af8c	00 	. 
	nop			;af8d	00 	. 
	add a,b			;af8e	80 	. 
	add a,b			;af8f	80 	. 
	nop			;af90	00 	. 
	add a,b			;af91	80 	. 
	ld b,b			;af92	40 	@ 
	ret nz			;af93	c0 	. 
	add a,b			;af94	80 	. 
	add a,b			;af95	80 	. 
	ld b,b			;af96	40 	@ 
	ret nz			;af97	c0 	. 
	add a,b			;af98	80 	. 
	nop			;af99	00 	. 
laf9ah:
	add a,b			;af9a	80 	. 
laf9bh:
	add a,b			;af9b	80 	. 
	nop			;af9c	00 	. 
	nop			;af9d	00 	. 
	nop			;af9e	00 	. 
	nop			;af9f	00 	. 
lafa0h:
	nop			;afa0	00 	. 
	nop			;afa1	00 	. 
	add a,b			;afa2	80 	. 
	add a,b			;afa3	80 	. 
	nop			;afa4	00 	. 
	nop			;afa5	00 	. 
	add a,b			;afa6	80 	. 
lafa7h:
	add a,b			;afa7	80 	. 
	nop			;afa8	00 	. 
	ld a,h			;afa9	7c 	| 
	add a,d			;afaa	82 	. 
	adc a,d			;afab	8a 	. 
	inc c			;afac	0c 	. 
	inc a			;afad	3c 	< 
	ld b,d			;afae	42 	B 
	ld c,(hl)			;afaf	4e 	N 
	inc c			;afb0	0c 	. 
	ld e,021h		;afb1	1e 21 	. ! 
	dec l			;afb3	2d 	- 
	ld c,00eh		;afb4	0e 0e 	. . 
	ld de,00e1fh		;afb6	11 1f 0e 	. . . 
	ld b,019h		;afb9	06 19 	. . 
	rra			;afbb	1f 	. 
	ld b,016h		;afbc	06 16 	. . 
	add hl,hl			;afbe	29 	) 
	ccf			;afbf	3f 	? 
	ld d,00ch		;afc0	16 0c 	. . 
	ld (de),a			;afc2	12 	. 
	ld e,00ch		;afc3	1e 0c 	. . 
	nop			;afc5	00 	. 
	inc c			;afc6	0c 	. 
	inc c			;afc7	0c 	. 
	nop			;afc8	00 	. 
	nop			;afc9	00 	. 
	rrca			;afca	0f 	. 
	rrca			;afcb	0f 	. 
	nop			;afcc	00 	. 
	nop			;afcd	00 	. 
	djnz $+33		;afce	10 1f 	. . 
lafd0h:
	rrca			;afd0	0f 	. 
	nop			;afd1	00 	. 
	ld h,03fh		;afd2	26 3f 	& ? 
	add hl,de			;afd4	19 	. 
	nop			;afd5	00 	. 
	cpl			;afd6	2f 	/ 
	ccf			;afd7	3f 	? 
	djnz lb01ah		;afd8	10 40 	. @ 
	rra			;afda	1f 	. 
	dec bc			;afdb	0b 	. 
	inc d			;afdc	14 	. 
	and b			;afdd	a0 	. 
	rra			;afde	1f 	. 
	rra			;afdf	1f 	. 
	nop			;afe0	00 	. 
	ld b,b			;afe1	40 	@ 
	ld b,03fh		;afe2	06 3f 	. ? 
lafe4h:
	add hl,sp			;afe4	39 	9 
	ld b,b			;afe5	40 	@ 
	nop			;afe6	00 	. 
	ccf			;afe7	3f 	? 
	ccf			;afe8	3f 	? 
	nop			;afe9	00 	. 
	ret nz			;afea	c0 	. 
	ret nz			;afeb	c0 	. 
	nop			;afec	00 	. 
	nop			;afed	00 	. 
	jr nz,lafd0h		;afee	20 e0 	  . 
	ret nz			;aff0	c0 	. 
	nop			;aff1	00 	. 
	djnz lafe4h		;aff2	10 f0 	. . 
	ret po			;aff4	e0 	. 
	nop			;aff5	00 	. 
	ex af,af'			;aff6	08 	. 
	ret m			;aff7	f8 	. 
	ret p			;aff8	f0 	. 
	nop			;aff9	00 	. 
	ex af,af'			;affa	08 	. 
	ret m			;affb	f8 	. 
	ret p			;affc	f0 	. 
	nop			;affd	00 	. 
	inc b			;affe	04 	. 
	call m,000f8h		;afff	fc f8 00 	. . . 
	inc b			;b002	04 	. 
	call m,000f8h		;b003	fc f8 00 	. . . 
	inc b			;b006	04 	. 
	call m,l80f8h		;b007	fc f8 80 	. . . 
	ld b,b			;b00a	40 	@ 
	ld a,a			;b00b	7f 	 
	ccf			;b00c	3f 	? 
	add a,b			;b00d	80 	. 
	jr nz,$+65		;b00e	20 3f 	  ? 
	rra			;b010	1f 	. 
	add a,b			;b011	80 	. 
	jr c,$+65		;b012	38 3f 	8 ? 
	rlca			;b014	07 	. 
	add a,b			;b015	80 	. 
	jr nz,lb057h		;b016	20 3f 	  ? 
	rra			;b018	1f 	. 
	add a,b			;b019	80 	. 
lb01ah:
	jr nz,lb05bh		;b01a	20 3f 	  ? 
	rra			;b01c	1f 	. 
	add a,b			;b01d	80 	. 
	jr nz,lb05fh		;b01e	20 3f 	  ? 
	rra			;b020	1f 	. 
	nop			;b021	00 	. 
	jr nz,$+65		;b022	20 3f 	  ? 
	rra			;b024	1f 	. 
	nop			;b025	00 	. 
	rra			;b026	1f 	. 
	rra			;b027	1f 	. 
	nop			;b028	00 	. 
	nop			;b029	00 	. 
	ex af,af'			;b02a	08 	. 
	ret m			;b02b	f8 	. 
	ret p			;b02c	f0 	. 
	nop			;b02d	00 	. 
	ex af,af'			;b02e	08 	. 
	ret m			;b02f	f8 	. 
	ret p			;b030	f0 	. 
	nop			;b031	00 	. 
	ex af,af'			;b032	08 	. 
	ret m			;b033	f8 	. 
	ret p			;b034	f0 	. 
	nop			;b035	00 	. 
	ex af,af'			;b036	08 	. 
	ret m			;b037	f8 	. 
	ret p			;b038	f0 	. 
	nop			;b039	00 	. 
	ex af,af'			;b03a	08 	. 
	ret m			;b03b	f8 	. 
	ret p			;b03c	f0 	. 
	nop			;b03d	00 	. 
	ex af,af'			;b03e	08 	. 
	ret m			;b03f	f8 	. 
	ret p			;b040	f0 	. 
	nop			;b041	00 	. 
	inc b			;b042	04 	. 
	call m,000f8h		;b043	fc f8 00 	. . . 
	call m,000fch		;b046	fc fc 00 	. . . 
	nop			;b049	00 	. 
	rrca			;b04a	0f 	. 
	rrca			;b04b	0f 	. 
	nop			;b04c	00 	. 
	nop			;b04d	00 	. 
	djnz lb06fh		;b04e	10 1f 	. . 
	rrca			;b050	0f 	. 
	nop			;b051	00 	. 
	ld h,03fh		;b052	26 3f 	& ? 
	add hl,de			;b054	19 	. 
	nop			;b055	00 	. 
	cpl			;b056	2f 	/ 
lb057h:
	ccf			;b057	3f 	? 
	djnz lb05ah		;b058	10 00 	. . 
lb05ah:
	rra			;b05a	1f 	. 
lb05bh:
	dec bc			;b05b	0b 	. 
	inc d			;b05c	14 	. 
	nop			;b05d	00 	. 
	rra			;b05e	1f 	. 
lb05fh:
	rra			;b05f	1f 	. 
	nop			;b060	00 	. 
	ld b,b			;b061	40 	@ 
	ld e,01fh		;b062	1e 1f 	. . 
	ld bc,018a0h		;b064	01 a0 18 	. . . 
	rra			;b067	1f 	. 
	rlca			;b068	07 	. 
	add a,b			;b069	80 	. 
	nop			;b06a	00 	. 
	ld a,a			;b06b	7f 	 
	ld a,a			;b06c	7f 	 
	add a,b			;b06d	80 	. 
	nop			;b06e	00 	. 
lb06fh:
	ld a,a			;b06f	7f 	 
	ld a,a			;b070	7f 	 
	add a,b			;b071	80 	. 
	ld c,b			;b072	48 	H 
	ld a,a			;b073	7f 	 
	scf			;b074	37 	7 
	add a,b			;b075	80 	. 
	jr nc,lb0b7h		;b076	30 3f 	0 ? 
	rrca			;b078	0f 	. 
	add a,b			;b079	80 	. 
	jr nz,lb0bbh		;b07a	20 3f 	  ? 
	rra			;b07c	1f 	. 
	add a,b			;b07d	80 	. 
	jr nz,lb0bfh		;b07e	20 3f 	  ? 
lb080h:
	rra			;b080	1f 	. 
	add a,b			;b081	80 	. 
	djnz lb0a3h		;b082	10 1f 	. . 
	rrca			;b084	0f 	. 
	add a,b			;b085	80 	. 
	rrca			;b086	0f 	. 
	rrca			;b087	0f 	. 
	nop			;b088	00 	. 
	nop			;b089	00 	. 
	ex af,af'			;b08a	08 	. 
	ret m			;b08b	f8 	. 
	ret p			;b08c	f0 	. 
	nop			;b08d	00 	. 
	ex af,af'			;b08e	08 	. 
	ret m			;b08f	f8 	. 
	ret p			;b090	f0 	. 
	nop			;b091	00 	. 
	ex af,af'			;b092	08 	. 
	ret m			;b093	f8 	. 
	ret p			;b094	f0 	. 
	nop			;b095	00 	. 
	ex af,af'			;b096	08 	. 
	ret m			;b097	f8 	. 
	ret p			;b098	f0 	. 
	nop			;b099	00 	. 
	ex af,af'			;b09a	08 	. 
	ret m			;b09b	f8 	. 
	ret p			;b09c	f0 	. 
	nop			;b09d	00 	. 
	inc b			;b09e	04 	. 
	call m,000f8h		;b09f	fc f8 00 	. . . 
	ld (bc),a			;b0a2	02 	. 
lb0a3h:
	cp 0fch		;b0a3	fe fc 	. . 
	nop			;b0a5	00 	. 
	cp 0feh		;b0a6	fe fe 	. . 
	nop			;b0a8	00 	. 
	nop			;b0a9	00 	. 
	nop			;b0aa	00 	. 
	nop			;b0ab	00 	. 
	nop			;b0ac	00 	. 
	nop			;b0ad	00 	. 
	nop			;b0ae	00 	. 
	nop			;b0af	00 	. 
lb0b0h:
	nop			;b0b0	00 	. 
sub_b0b1h:
	nop			;b0b1	00 	. 
	nop			;b0b2	00 	. 
	nop			;b0b3	00 	. 
	nop			;b0b4	00 	. 
	nop			;b0b5	00 	. 
	nop			;b0b6	00 	. 
lb0b7h:
	nop			;b0b7	00 	. 
	nop			;b0b8	00 	. 
	nop			;b0b9	00 	. 
	nop			;b0ba	00 	. 
lb0bbh:
	nop			;b0bb	00 	. 
lb0bch:
	nop			;b0bc	00 	. 
	nop			;b0bd	00 	. 
sub_b0beh:
	inc a			;b0be	3c 	< 
lb0bfh:
	inc a			;b0bf	3c 	< 
lb0c0h:
	nop			;b0c0	00 	. 
	inc (hl)			;b0c1	34 	4 
	rst 38h			;b0c2	ff 	. 
	jp 03e08h		;b0c3	c3 08 3e 	. . > 
	rst 38h			;b0c6	ff 	. 
	add a,c			;b0c7	81 	. 
	ld b,b			;b0c8	40 	@ 
	rrca			;b0c9	0f 	. 
	rra			;b0ca	1f 	. 
	djnz lb0cdh		;b0cb	10 00 	. . 
lb0cdh:
	ld b,07fh		;b0cd	06 7f 	.  
	ld (hl),b			;b0cf	70 	p 
	add hl,bc			;b0d0	09 	. 
	daa			;b0d1	27 	' 
	ld a,a			;b0d2	7f 	 
	ld b,b			;b0d3	40 	@ 
lb0d4h:
	jr nz,lb10eh		;b0d4	20 38 	  8 
	ld h,a			;b0d6	67 	g 
	ld b,b			;b0d7	40 	@ 
sub_b0d8h:
	jr c,lb0dah		;b0d8	38 00 	8 . 
lb0dah:
	ld a,h			;b0da	7c 	| 
	ld (hl),e			;b0db	73 	s 
sub_b0dch:
	nop			;b0dc	00 	. 
	inc c			;b0dd	0c 	. 
lb0deh:
	rra			;b0de	1f 	. 
sub_b0dfh:
	djnz lb0e1h		;b0df	10 00 	. . 
lb0e1h:
	inc bc			;b0e1	03 	. 
	rra			;b0e2	1f 	. 
lb0e3h:
	inc e			;b0e3	1c 	. 
lb0e4h:
	nop			;b0e4	00 	. 
	nop			;b0e5	00 	. 
	rlca			;b0e6	07 	. 
	rlca			;b0e7	07 	. 
	nop			;b0e8	00 	. 
lb0e9h:
	ret nc			;b0e9	d0 	. 
	ret m			;b0ea	f8 	. 
	ex af,af'			;b0eb	08 	. 
	jr nz,lb0deh		;b0ec	20 f0 	  . 
	call m,0000ch		;b0ee	fc 0c 00 	. . . 
	and b			;b0f1	a0 	. 
	call m,04004h		;b0f2	fc 04 40 	. . @ 
	ex af,af'			;b0f5	08 	. 
	and 016h		;b0f6	e6 16 	. . 
	ex af,af'			;b0f8	08 	. 
	call m,00232h		;b0f9	fc 32 02 	. 2 . 
	call m,0fe38h		;b0fc	fc 38 fe 	. 8 . 
lb0ffh:
	ld b,008h		;b0ff	06 08 	. . 
	ret nz			;b101	c0 	. 
	call m,0003ch		;b102	fc 3c 00 	. < . 
	nop			;b105	00 	. 
	ret po			;b106	e0 	. 
	ret po			;b107	e0 	. 
lb108h:
	nop			;b108	00 	. 
	sbc a,h			;b109	9c 	. 
	jr nz,lb0bch		;b10a	20 b0 	  . 
	add a,h			;b10c	84 	. 
	add a,b			;b10d	80 	. 
lb10eh:
	or b			;b10e	b0 	. 
	sbc a,d			;b10f	9a 	. 
	ld h,b			;b110	60 	` 
	or b			;b111	b0 	. 
	add a,e			;b112	83 	. 
	ret nz			;b113	c0 	. 
	or b			;b114	b0 	. 
	add hl,de			;b115	19 	. 
	jr nz,lb0ffh		;b116	20 e7 	  . 
	push de			;b118	d5 	. 
	call c,0dfd3h		;b119	dc d3 df 	. . . 
	defb 0ddh,0d5h,0b1h	;illegal sequence		;b11c	dd d5 b1 	. . . 
	or b			;b11f	b0 	. 
	ret po			;b120	e0 	. 
	call c,0d1d5h		;b121	dc d5 d1 	. . . 
	ex (sp),hl			;b124	e3 	. 
	push de			;b125	d5 	. 
	or b			;b126	b0 	. 
	jp nc,0e9e5h		;b127	d2 e5 e9 	. . . 
	or b			;b12a	b0 	. 
	or b			;b12b	b0 	. 
	or b			;b12c	b0 	. 
	or b			;b12d	b0 	. 
	or b			;b12e	b0 	. 
	or b			;b12f	b0 	. 
	ld bc,lb080h		;b130	01 80 b0 	. . . 
	sbc a,b			;b133	98 	. 
	ld h,b			;b134	60 	` 
	or b			;b135	b0 	. 
	ld bc,0e480h		;b136	01 80 e4 	. . . 
	jr lb15bh		;b139	18 20 	.   
	ret c			;b13b	d8 	. 
	push de			;b13c	d5 	. 
	or b			;b13d	b0 	. 
	call po,0d9d8h		;b13e	e4 d8 d9 	. . . 
	sbc a,0d7h		;b141	de d7 	. . 
	ex (sp),hl			;b143	e3 	. 
	or b			;b144	b0 	. 
	call po,0d1d8h		;b145	e4 d8 d1 	. . . 
	call po,0e9b0h		;b148	e4 b0 e9 	. . . 
	rst 18h			;b14b	df 	. 
	push hl			;b14c	e5 	. 
lb14dh:
	or b			;b14d	b0 	. 
	call c,0dbd9h		;b14e	dc d9 db 	. . . 
	push de			;b151	d5 	. 
	cp (hl)			;b152	be 	. 
	nop			;b153	00 	. 
	nop			;b154	00 	. 
	sbc a,d			;b155	9a 	. 
	jr nz,lb108h		;b156	20 b0 	  . 
	add a,h			;b158	84 	. 
	add a,b			;b159	80 	. 
	or b			;b15a	b0 	. 
lb15bh:
	sbc a,b			;b15b	98 	. 
	ld h,b			;b15c	60 	` 
	or b			;b15d	b0 	. 
	add a,e			;b15e	83 	. 
	ret nz			;b15f	c0 	. 
	or b			;b160	b0 	. 
	rla			;b161	17 	. 
	jr nz,lb14dh		;b162	20 e9 	  . 
	rst 18h			;b164	df 	. 
	push hl			;b165	e5 	. 
	or b			;b166	b0 	. 
	pop de			;b167	d1 	. 
	jp po,lb0d4h+1		;b168	e2 d5 b0 	. . . 
lb16bh:
	ex (sp),hl			;b16b	e3 	. 
	ret c			;b16c	d8 	. 
	rst 18h			;b16d	df 	. 
	jp po,lb0e4h		;b16e	e2 e4 b0 	. . . 
	rst 18h			;b171	df 	. 
	sub 0b0h		;b172	d6 b0 	. . 
	defb 0ddh,0dfh,0deh	;illegal sequence		;b174	dd df de 	. . . 
	push de			;b177	d5 	. 
	jp (hl)			;b178	e9 	. 
	cp h			;b179	bc 	. 
	ld bc,lb080h		;b17a	01 80 b0 	. . . 
	sub (hl)			;b17d	96 	. 
	ld h,b			;b17e	60 	` 
	or b			;b17f	b0 	. 
	ld bc,0d180h		;b180	01 80 d1 	. . . 
	ld d,020h		;b183	16 20 	.   
	jp po,0ded5h		;b185	e2 d5 de 	. . . 
	or a			;b188	b7 	. 
	call po,0e9b0h		;b189	e4 b0 e9 	. . . 
	rst 18h			;b18c	df 	. 
	push hl			;b18d	e5 	. 
	rst 8			;b18e	cf 	. 
	or b			;b18f	b0 	. 
	or b			;b190	b0 	. 
lb191h:
	or b			;b191	b0 	. 
	or b			;b192	b0 	. 
	or b			;b193	b0 	. 
	or b			;b194	b0 	. 
	or b			;b195	b0 	. 
	or b			;b196	b0 	. 
	or b			;b197	b0 	. 
	or b			;b198	b0 	. 
	or b			;b199	b0 	. 
	or b			;b19a	b0 	. 
	nop			;b19b	00 	. 
	nop			;b19c	00 	. 
	adc a,l			;b19d	8d 	. 
	jr nz,$-78		;b19e	20 b0 	  . 
lb1a0h:
	ld (bc),a			;b1a0	02 	. 
	add a,b			;b1a1	80 	. 
	or b			;b1a2	b0 	. 
	or b			;b1a3	b0 	. 
	adc a,e			;b1a4	8b 	. 
	ld h,b			;b1a5	60 	` 
	or b			;b1a6	b0 	. 
	ld bc,lb0c0h		;b1a7	01 c0 b0 	. . . 
	ld a,(bc)			;b1aa	0a 	. 
	jr nz,lb191h		;b1ab	20 e4 	  . 
	ret c			;b1ad	d8 	. 
	pop de			;b1ae	d1 	. 
	sbc a,0dbh		;b1af	de db 	. . 
	or b			;b1b1	b0 	. 
	jp (hl)			;b1b2	e9 	. 
	rst 18h			;b1b3	df 	. 
	push hl			;b1b4	e5 	. 
	cp (hl)			;b1b5	be 	. 
	nop			;b1b6	00 	. 
	nop			;b1b7	00 	. 
	sbc a,l			;b1b8	9d 	. 
	jr nz,lb16bh		;b1b9	20 b0 	  . 
	adc a,d			;b1bb	8a 	. 
	add a,b			;b1bc	80 	. 
	or b			;b1bd	b0 	. 
	sbc a,e			;b1be	9b 	. 
	ld h,b			;b1bf	60 	` 
	or b			;b1c0	b0 	. 
	adc a,c			;b1c1	89 	. 
	ret nz			;b1c2	c0 	. 
	or b			;b1c3	b0 	. 
lb1c4h:
	ld a,(de)			;b1c4	1a 	. 
	jr nz,lb1a0h		;b1c5	20 d9 	  . 
	or a			;b1c7	b7 	. 
	defb 0ddh,0b0h,0b2h	;illegal sequence		;b1c8	dd b0 b2 	. . . 
	ret po			;b1cb	e0 	. 
	pop de			;b1cc	d1 	. 
	ret po			;b1cd	e0 	. 
	push de			;b1ce	d5 	. 
	jp po,0d8b0h		;b1cf	e2 b0 d8 	. . . 
	push de			;b1d2	d5 	. 
	pop de			;b1d3	d1 	. 
	call nc,0b2bch		;b1d4	d4 bc b2 	. . . 
	or b			;b1d7	b0 	. 
	or b			;b1d8	b0 	. 
	or b			;b1d9	b0 	. 
	or b			;b1da	b0 	. 
	or b			;b1db	b0 	. 
	or b			;b1dc	b0 	. 
	or b			;b1dd	b0 	. 
	or b			;b1de	b0 	. 
	or b			;b1df	b0 	. 
	ld bc,lb080h		;b1e0	01 80 b0 	. . . 
	sbc a,c			;b1e3	99 	. 
	ld h,b			;b1e4	60 	` 
	or b			;b1e5	b0 	. 
	ld bc,0e480h		;b1e6	01 80 e4 	. . . 
lb1e9h:
	add hl,de			;b1e9	19 	. 
	jr nz,lb1c4h		;b1ea	20 d8 	  . 
	push de			;b1ec	d5 	. 
	or b			;b1ed	b0 	. 
	sub 0d9h		;b1ee	d6 d9 	. . 
	jp po,0e4e3h		;b1f0	e2 e3 e4 	. . . 
	or b			;b1f3	b0 	. 
	ret c			;b1f4	d8 	. 
	push de			;b1f5	d5 	. 
	sbc a,0d3h		;b1f6	de d3 	. . 
	ret c			;b1f8	d8 	. 
	defb 0ddh,0d1h,0deh	;illegal sequence		;b1f9	dd d1 de 	. . . 
	or b			;b1fc	b0 	. 
	rst 18h			;b1fd	df 	. 
	sub 0b0h		;b1fe	d6 b0 	. . 
	call po,0d5d8h		;b200	e4 d8 d5 	. . . 
	or b			;b203	b0 	. 
	ld bc,lb080h		;b204	01 80 b0 	. . . 
	sbc a,c			;b207	99 	. 
	ld h,b			;b208	60 	` 
lb209h:
	or b			;b209	b0 	. 
	ld bc,0db80h		;b20a	01 80 db 	. . . 
	add hl,de			;b20d	19 	. 
	jr nz,lb1e9h		;b20e	20 d9 	  . 
	sbc a,0d7h		;b210	de d7 	. . 
	cp (hl)			;b212	be 	. 
	or b			;b213	b0 	. 
	exx			;b214	d9 	. 
	or a			;b215	b7 	. 
	call c,sub_b0dch		;b216	dc dc b0 	. . . 
	call c,0e4d5h		;b219	dc d5 e4 	. . . 
	or b			;b21c	b0 	. 
	jp (hl)			;b21d	e9 	. 
	rst 18h			;b21e	df 	. 
	push hl			;b21f	e5 	. 
	or b			;b220	b0 	. 
	ret po			;b221	e0 	. 
	pop de			;b222	d1 	. 
	ex (sp),hl			;b223	e3 	. 
	ex (sp),hl			;b224	e3 	. 
lb225h:
	or b			;b225	b0 	. 
	jp nc,001e9h		;b226	d2 e9 01 	. . . 
	add a,b			;b229	80 	. 
	or b			;b22a	b0 	. 
	sbc a,c			;b22b	99 	. 
	ld h,b			;b22c	60 	` 
	or b			;b22d	b0 	. 
	ld bc,0d880h		;b22e	01 80 d8 	. . . 
	add hl,de			;b231	19 	. 
lb232h:
	jr nz,lb209h		;b232	20 d5 	  . 
	jp po,lb0d4h+1		;b234	e2 d5 b0 	. . . 
	exx			;b237	d9 	. 
	sub 0b0h		;b238	d6 b0 	. . 
	jp (hl)			;b23a	e9 	. 
	rst 18h			;b23b	df 	. 
	push hl			;b23c	e5 	. 
	or b			;b23d	b0 	. 
	rst 20h			;b23e	e7 	. 
	exx			;b23f	d9 	. 
	sbc a,0b0h		;b240	de b0 	. . 
	call po,0e2d8h		;b242	e4 d8 e2 	. . . 
	push de			;b245	d5 	. 
	push de			;b246	d5 	. 
	or b			;b247	b0 	. 
	or b			;b248	b0 	. 
	or b			;b249	b0 	. 
	or b			;b24a	b0 	. 
	or b			;b24b	b0 	. 
sub_b24ch:
	ld bc,lb080h		;b24c	01 80 b0 	. . . 
	sbc a,c			;b24f	99 	. 
	ld h,b			;b250	60 	` 
	or b			;b251	b0 	. 
	ld bc,0b280h		;b252	01 80 b2 	. . . 
	add hl,de			;b255	19 	. 
	jr nz,lb232h		;b256	20 da 	  . 
	pop de			;b258	d1 	. 
	sbc a,0dbh		;b259	de db 	. . 
	push de			;b25b	d5 	. 
	sbc a,0b2h		;b25c	de b2 	. . 
	or b			;b25e	b0 	. 
	defb 0ddh,0d1h,0e4h	;illegal sequence		;b25f	dd d1 e4 	. . . 
	out (0d8h),a		;b262	d3 d8 	. . 
	push de			;b264	d5 	. 
	ex (sp),hl			;b265	e3 	. 
	cp (hl)			;b266	be 	. 
	or b			;b267	b0 	. 
	or b			;b268	b0 	. 
	or b			;b269	b0 	. 
	or b			;b26a	b0 	. 
	or b			;b26b	b0 	. 
	or b			;b26c	b0 	. 
	or b			;b26d	b0 	. 
	or b			;b26e	b0 	. 
	or b			;b26f	b0 	. 
	nop			;b270	00 	. 
	nop			;b271	00 	. 
	sbc a,l			;b272	9d 	. 
	jr nz,lb225h		;b273	20 b0 	  . 
	adc a,d			;b275	8a 	. 
	add a,b			;b276	80 	. 
	or b			;b277	b0 	. 
	sbc a,e			;b278	9b 	. 
	ld h,b			;b279	60 	` 
	or b			;b27a	b0 	. 
	adc a,c			;b27b	89 	. 
	ret nz			;b27c	c0 	. 
	or b			;b27d	b0 	. 
lb27eh:
	ld a,(de)			;b27e	1a 	. 
	jr nz,$-37		;b27f	20 d9 	  . 
	or a			;b281	b7 	. 
	defb 0ddh,0b0h,0b2h	;illegal sequence		;b282	dd b0 b2 	. . . 
	ex (sp),hl			;b285	e3 	. 
	out (0d9h),a		;b286	d3 d9 	. . 
	ex (sp),hl			;b288	e3 	. 
	ex (sp),hl			;b289	e3 	. 
	rst 18h			;b28a	df 	. 
	jp po,lb0e3h		;b28b	e2 e3 b0 	. . . 
	ret c			;b28e	d8 	. 
	push de			;b28f	d5 	. 
	pop de			;b290	d1 	. 
	call nc,0b2bch		;b291	d4 bc b2 	. . . 
	or b			;b294	b0 	. 
	or b			;b295	b0 	. 
	or b			;b296	b0 	. 
	or b			;b297	b0 	. 
	or b			;b298	b0 	. 
	or b			;b299	b0 	. 
	ld bc,lb080h		;b29a	01 80 b0 	. . . 
	sbc a,c			;b29d	99 	. 
	ld h,b			;b29e	60 	` 
	or b			;b29f	b0 	. 
	ld bc,0e480h		;b2a0	01 80 e4 	. . . 
lb2a3h:
	add hl,de			;b2a3	19 	. 
	jr nz,lb27eh		;b2a4	20 d8 	  . 
	push de			;b2a6	d5 	. 
	or b			;b2a7	b0 	. 
	ex (sp),hl			;b2a8	e3 	. 
	push de			;b2a9	d5 	. 
	out (0dfh),a		;b2aa	d3 df 	. . 
	sbc a,0d4h		;b2ac	de d4 	. . 
	or b			;b2ae	b0 	. 
	ret c			;b2af	d8 	. 
	push de			;b2b0	d5 	. 
	sbc a,0d3h		;b2b1	de d3 	. . 
	ret c			;b2b3	d8 	. 
	defb 0ddh,0d1h,0deh	;illegal sequence		;b2b4	dd d1 de 	. . . 
	or b			;b2b7	b0 	. 
	rst 18h			;b2b8	df 	. 
	sub 0b0h		;b2b9	d6 b0 	. . 
	call po,0d5d8h		;b2bb	e4 d8 d5 	. . . 
sub_b2beh:
	ld bc,lb080h		;b2be	01 80 b0 	. . . 
	sbc a,c			;b2c1	99 	. 
	ld h,b			;b2c2	60 	` 
lb2c3h:
	or b			;b2c3	b0 	. 
	ld bc,0db80h		;b2c4	01 80 db 	. . . 
	add hl,de			;b2c7	19 	. 
	jr nz,lb2a3h		;b2c8	20 d9 	  . 
	sbc a,0d7h		;b2ca	de d7 	. . 
	cp (hl)			;b2cc	be 	. 
	or b			;b2cd	b0 	. 
	exx			;b2ce	d9 	. 
	or a			;b2cf	b7 	. 
	call c,sub_b0dch		;b2d0	dc dc b0 	. . . 
	call c,0e4d5h		;b2d3	dc d5 e4 	. . . 
	or b			;b2d6	b0 	. 
	jp (hl)			;b2d7	e9 	. 
	rst 18h			;b2d8	df 	. 
	push hl			;b2d9	e5 	. 
	or b			;b2da	b0 	. 
	ret po			;b2db	e0 	. 
	pop de			;b2dc	d1 	. 
	ex (sp),hl			;b2dd	e3 	. 
	ex (sp),hl			;b2de	e3 	. 
lb2dfh:
	or b			;b2df	b0 	. 
	jp nc,001e9h		;b2e0	d2 e9 01 	. . . 
	add a,b			;b2e3	80 	. 
	or b			;b2e4	b0 	. 
	sbc a,c			;b2e5	99 	. 
	ld h,b			;b2e6	60 	` 
	or b			;b2e7	b0 	. 
	ld bc,0d880h		;b2e8	01 80 d8 	. . . 
	add hl,de			;b2eb	19 	. 
lb2ech:
	jr nz,lb2c3h		;b2ec	20 d5 	  . 
	jp po,lb0d4h+1		;b2ee	e2 d5 b0 	. . . 
	exx			;b2f1	d9 	. 
	sub 0b0h		;b2f2	d6 b0 	. . 
	jp (hl)			;b2f4	e9 	. 
	rst 18h			;b2f5	df 	. 
	push hl			;b2f6	e5 	. 
	or b			;b2f7	b0 	. 
	rst 20h			;b2f8	e7 	. 
	exx			;b2f9	d9 	. 
	sbc a,0b0h		;b2fa	de b0 	. . 
	call po,0e2d8h		;b2fc	e4 d8 e2 	. . . 
	push de			;b2ff	d5 	. 
	push de			;b300	d5 	. 
	or b			;b301	b0 	. 
	or b			;b302	b0 	. 
	or b			;b303	b0 	. 
	or b			;b304	b0 	. 
	or b			;b305	b0 	. 
	ld bc,lb080h		;b306	01 80 b0 	. . . 
	sbc a,c			;b309	99 	. 
	ld h,b			;b30a	60 	` 
	or b			;b30b	b0 	. 
	ld bc,0b280h		;b30c	01 80 b2 	. . . 
	add hl,de			;b30f	19 	. 
	jr nz,lb2ech		;b310	20 da 	  . 
	pop de			;b312	d1 	. 
	sbc a,0dbh		;b313	de db 	. . 
	push de			;b315	d5 	. 
	sbc a,0b2h		;b316	de b2 	. . 
	or b			;b318	b0 	. 
	defb 0ddh,0d1h,0e4h	;illegal sequence		;b319	dd d1 e4 	. . . 
	out (0d8h),a		;b31c	d3 d8 	. . 
	push de			;b31e	d5 	. 
	ex (sp),hl			;b31f	e3 	. 
	cp (hl)			;b320	be 	. 
	or b			;b321	b0 	. 
	or b			;b322	b0 	. 
	or b			;b323	b0 	. 
	or b			;b324	b0 	. 
	or b			;b325	b0 	. 
	or b			;b326	b0 	. 
	or b			;b327	b0 	. 
	or b			;b328	b0 	. 
	or b			;b329	b0 	. 
	nop			;b32a	00 	. 
	nop			;b32b	00 	. 
	sbc a,l			;b32c	9d 	. 
	jr nz,lb2dfh		;b32d	20 b0 	  . 
	adc a,d			;b32f	8a 	. 
	add a,b			;b330	80 	. 
	or b			;b331	b0 	. 
	sbc a,e			;b332	9b 	. 
	ld h,b			;b333	60 	` 
	or b			;b334	b0 	. 
	adc a,c			;b335	89 	. 
	ret nz			;b336	c0 	. 
	or b			;b337	b0 	. 
lb338h:
	ld a,(de)			;b338	1a 	. 
	jr nz,$-37		;b339	20 d9 	  . 
	or a			;b33b	b7 	. 
	defb 0ddh,0b0h,0b2h	;illegal sequence		;b33c	dd b0 b2 	. . . 
	ex (sp),hl			;b33f	e3 	. 
	call po,0dedfh		;b340	e4 df de 	. . . 
	push de			;b343	d5 	. 
	or b			;b344	b0 	. 
	ret c			;b345	d8 	. 
	push de			;b346	d5 	. 
	pop de			;b347	d1 	. 
	call nc,0b2bch		;b348	d4 bc b2 	. . . 
	or b			;b34b	b0 	. 
	or b			;b34c	b0 	. 
	or b			;b34d	b0 	. 
	or b			;b34e	b0 	. 
	or b			;b34f	b0 	. 
	or b			;b350	b0 	. 
	or b			;b351	b0 	. 
	or b			;b352	b0 	. 
	or b			;b353	b0 	. 
	ld bc,lb080h		;b354	01 80 b0 	. . . 
	sbc a,c			;b357	99 	. 
	ld h,b			;b358	60 	` 
	or b			;b359	b0 	. 
	ld bc,0e480h		;b35a	01 80 e4 	. . . 
lb35dh:
	add hl,de			;b35d	19 	. 
	jr nz,lb338h		;b35e	20 d8 	  . 
	push de			;b360	d5 	. 
	or b			;b361	b0 	. 
	call po,0d9d8h		;b362	e4 d8 d9 	. . . 
	jp po,lb0d4h		;b365	e2 d4 b0 	. . . 
	ret c			;b368	d8 	. 
	push de			;b369	d5 	. 
	sbc a,0d3h		;b36a	de d3 	. . 
	ret c			;b36c	d8 	. 
	defb 0ddh,0d1h,0deh	;illegal sequence		;b36d	dd d1 de 	. . . 
	or b			;b370	b0 	. 
	rst 18h			;b371	df 	. 
	sub 0b0h		;b372	d6 b0 	. . 
	call po,0d5d8h		;b374	e4 d8 d5 	. . . 
	or b			;b377	b0 	. 
	ld bc,lb080h		;b378	01 80 b0 	. . . 
	sbc a,c			;b37b	99 	. 
	ld h,b			;b37c	60 	` 
lb37dh:
	or b			;b37d	b0 	. 
	ld bc,0db80h		;b37e	01 80 db 	. . . 
	add hl,de			;b381	19 	. 
	jr nz,lb35dh		;b382	20 d9 	  . 
	sbc a,0d7h		;b384	de d7 	. . 
	cp (hl)			;b386	be 	. 
	or b			;b387	b0 	. 
	exx			;b388	d9 	. 
	or a			;b389	b7 	. 
	call c,sub_b0dch		;b38a	dc dc b0 	. . . 
	call c,0e4d5h		;b38d	dc d5 e4 	. . . 
	or b			;b390	b0 	. 
	jp (hl)			;b391	e9 	. 
	rst 18h			;b392	df 	. 
	push hl			;b393	e5 	. 
	or b			;b394	b0 	. 
	ret po			;b395	e0 	. 
	pop de			;b396	d1 	. 
	ex (sp),hl			;b397	e3 	. 
	ex (sp),hl			;b398	e3 	. 
lb399h:
	or b			;b399	b0 	. 
	jp nc,001e9h		;b39a	d2 e9 01 	. . . 
	add a,b			;b39d	80 	. 
	or b			;b39e	b0 	. 
	sbc a,c			;b39f	99 	. 
	ld h,b			;b3a0	60 	` 
	or b			;b3a1	b0 	. 
	ld bc,0d880h		;b3a2	01 80 d8 	. . . 
	add hl,de			;b3a5	19 	. 
lb3a6h:
	jr nz,lb37dh		;b3a6	20 d5 	  . 
	jp po,lb0d4h+1		;b3a8	e2 d5 b0 	. . . 
	exx			;b3ab	d9 	. 
	sub 0b0h		;b3ac	d6 b0 	. . 
	jp (hl)			;b3ae	e9 	. 
	rst 18h			;b3af	df 	. 
	push hl			;b3b0	e5 	. 
	or b			;b3b1	b0 	. 
	rst 20h			;b3b2	e7 	. 
	exx			;b3b3	d9 	. 
	sbc a,0b0h		;b3b4	de b0 	. . 
	call po,0e2d8h		;b3b6	e4 d8 e2 	. . . 
	push de			;b3b9	d5 	. 
	push de			;b3ba	d5 	. 
	or b			;b3bb	b0 	. 
	or b			;b3bc	b0 	. 
	or b			;b3bd	b0 	. 
	or b			;b3be	b0 	. 
	or b			;b3bf	b0 	. 
	ld bc,lb080h		;b3c0	01 80 b0 	. . . 
	sbc a,c			;b3c3	99 	. 
	ld h,b			;b3c4	60 	` 
	or b			;b3c5	b0 	. 
	ld bc,0b280h		;b3c6	01 80 b2 	. . . 
	add hl,de			;b3c9	19 	. 
	jr nz,lb3a6h		;b3ca	20 da 	  . 
	pop de			;b3cc	d1 	. 
	sbc a,0dbh		;b3cd	de db 	. . 
	push de			;b3cf	d5 	. 
	sbc a,0b2h		;b3d0	de b2 	. . 
	or b			;b3d2	b0 	. 
	defb 0ddh,0d1h,0e4h	;illegal sequence		;b3d3	dd d1 e4 	. . . 
	out (0d8h),a		;b3d6	d3 d8 	. . 
	push de			;b3d8	d5 	. 
	ex (sp),hl			;b3d9	e3 	. 
	cp (hl)			;b3da	be 	. 
	or b			;b3db	b0 	. 
	or b			;b3dc	b0 	. 
	or b			;b3dd	b0 	. 
	or b			;b3de	b0 	. 
	or b			;b3df	b0 	. 
	or b			;b3e0	b0 	. 
	or b			;b3e1	b0 	. 
	or b			;b3e2	b0 	. 
	or b			;b3e3	b0 	. 
	nop			;b3e4	00 	. 
	nop			;b3e5	00 	. 
	sbc a,e			;b3e6	9b 	. 
	jr nz,lb399h		;b3e7	20 b0 	  . 
	adc a,b			;b3e9	88 	. 
	add a,b			;b3ea	80 	. 
	or b			;b3eb	b0 	. 
	sbc a,c			;b3ec	99 	. 
	ld h,b			;b3ed	60 	` 
	or b			;b3ee	b0 	. 
	add a,a			;b3ef	87 	. 
lb3f0h:
	ret nz			;b3f0	c0 	. 
	or b			;b3f1	b0 	. 
	jr $+34		;b3f2	18 20 	.   
	jp (hl)			;b3f4	e9 	. 
	rst 18h			;b3f5	df 	. 
	push hl			;b3f6	e5 	. 
	or b			;b3f7	b0 	. 
	push ix		;b3f8	dd e5 	. . 
	ex (sp),hl			;b3fa	e3 	. 
	call po,0d3b0h		;b3fb	e4 b0 d3 	. . . 
	ret c			;b3fe	d8 	. 
	rst 18h			;b3ff	df 	. 
	rst 18h			;b400	df 	. 
	ex (sp),hl			;b401	e3 	. 
	push de			;b402	d5 	. 
	or b			;b403	b0 	. 
	push de			;b404	d5 	. 
	exx			;b405	d9 	. 
	call po,0d5d8h		;b406	e4 d8 d5 	. . . 
	jp po,lb0b0h		;b409	e2 b0 b0 	. . . 
	ld bc,lb080h		;b40c	01 80 b0 	. . . 
	sub a			;b40f	97 	. 
	ld h,b			;b410	60 	` 
	or b			;b411	b0 	. 
	ld bc,0e480h		;b412	01 80 e4 	. . . 
	rla			;b415	17 	. 
	jr nz,lb3f0h		;b416	20 d8 	  . 
	push de			;b418	d5 	. 
	or b			;b419	b0 	. 
	or d			;b41a	b2 	. 
	ret po			;b41b	e0 	. 
lb41ch:
	pop de			;b41c	d1 	. 
	ret po			;b41d	e0 	. 
	push de			;b41e	d5 	. 
	jp po,0b2bch		;b41f	e2 bc b2 	. . . 
	or b			;b422	b0 	. 
	or d			;b423	b2 	. 
	ex (sp),hl			;b424	e3 	. 
	out (0d9h),a		;b425	d3 d9 	. . 
lb427h:
	ex (sp),hl			;b427	e3 	. 
	ex (sp),hl			;b428	e3 	. 
	rst 18h			;b429	df 	. 
	jp po,lbce3h		;b42a	e2 e3 bc 	. . . 
	or d			;b42d	b2 	. 
	ld bc,lb080h		;b42e	01 80 b0 	. . . 
	sub a			;b431	97 	. 
	ld h,b			;b432	60 	` 
	or b			;b433	b0 	. 
	ld bc,0df80h		;b434	01 80 df 	. . . 
	rla			;b437	17 	. 
	jr nz,lb41ch		;b438	20 e2 	  . 
	or b			;b43a	b0 	. 
	or d			;b43b	b2 	. 
	ex (sp),hl			;b43c	e3 	. 
	call po,0dedfh		;b43d	e4 df de 	. . . 
	push de			;b440	d5 	. 
lb441h:
	or d			;b441	b2 	. 
	or b			;b442	b0 	. 
	jp nc,0d6d5h		;b443	d2 d5 d6 	. . . 
	rst 18h			;b446	df 	. 
	jp po,lb0d4h+1		;b447	e2 d5 b0 	. . . 
lb44ah:
	call po,0d5d8h		;b44a	e4 d8 d5 	. . . 
	or b			;b44d	b0 	. 
	or b			;b44e	b0 	. 
	or b			;b44f	b0 	. 
	ld bc,lb080h		;b450	01 80 b0 	. . . 
	sub a			;b453	97 	. 
	ld h,b			;b454	60 	` 
	or b			;b455	b0 	. 
	ld bc,0dd80h		;b456	01 80 dd 	. . . 
	rla			;b459	17 	. 
	jr nz,lb441h		;b45a	20 e5 	  . 
	ex (sp),hl			;b45c	e3 	. 
lb45dh:
	exx			;b45d	d9 	. 
	out (0b0h),a		;b45e	d3 b0 	. . 
	ex (sp),hl			;b460	e3 	. 
	call po,0e0dfh		;b461	e4 df e0 	. . . 
	ex (sp),hl			;b464	e3 	. 
	cp (hl)			;b465	be 	. 
	or b			;b466	b0 	. 
	or b			;b467	b0 	. 
	or b			;b468	b0 	. 
	or b			;b469	b0 	. 
	or b			;b46a	b0 	. 
lb46bh:
	or b			;b46b	b0 	. 
	or b			;b46c	b0 	. 
	or b			;b46d	b0 	. 
	or b			;b46e	b0 	. 
	or b			;b46f	b0 	. 
	or b			;b470	b0 	. 
	or b			;b471	b0 	. 
	nop			;b472	00 	. 
	nop			;b473	00 	. 
	sub l			;b474	95 	. 
	jr nz,lb427h		;b475	20 b0 	  . 
	ld (bc),a			;b477	02 	. 
	add a,b			;b478	80 	. 
	or b			;b479	b0 	. 
	or b			;b47a	b0 	. 
	sub e			;b47b	93 	. 
	ld h,b			;b47c	60 	` 
	or b			;b47d	b0 	. 
	ld bc,lb0c0h		;b47e	01 c0 b0 	. . . 
	ld (de),a			;b481	12 	. 
	jr nz,lb45dh		;b482	20 d9 	  . 
	or b			;b484	b0 	. 
	rst 20h			;b485	e7 	. 
	exx			;b486	d9 	. 
	sbc a,0beh		;b487	de be 	. . 
	or b			;b489	b0 	. 
	jp (hl)			;b48a	e9 	. 
	rst 18h			;b48b	df 	. 
	push hl			;b48c	e5 	. 
	or b			;b48d	b0 	. 
	rst 10h			;b48e	d7 	. 
	rst 18h			;b48f	df 	. 
	call po,0d9b0h		;b490	e4 b0 d9 	. . . 
	call po,000beh		;b493	e4 be 00 	. . . 
	nop			;b496	00 	. 
	sub e			;b497	93 	. 
	jr nz,lb44ah		;b498	20 b0 	  . 
	ld (bc),a			;b49a	02 	. 
	add a,b			;b49b	80 	. 
	or b			;b49c	b0 	. 
	or b			;b49d	b0 	. 
	sub c			;b49e	91 	. 
	ld h,b			;b49f	60 	` 
lb4a0h:
	or b			;b4a0	b0 	. 
	ld bc,lb0c0h		;b4a1	01 c0 b0 	. . . 
	djnz $+34		;b4a4	10 20 	.   
	call nc,0e2d1h		;b4a6	d4 d1 e2 	. . . 
	sbc a,0b0h		;b4a9	de b0 	. . 
	exx			;b4ab	d9 	. 
	call po,sub_b0beh		;b4ac	e4 be b0 	. . . 
	exx			;b4af	d9 	. 
	or b			;b4b0	b0 	. 
	call c,0e3dfh		;b4b1	dc df e3 	. . . 
sub_b4b4h:
	push de			;b4b4	d5 	. 
	cp (hl)			;b4b5	be 	. 
	nop			;b4b6	00 	. 
	nop			;b4b7	00 	. 
	sub a			;b4b8	97 	. 
	jr nz,lb46bh		;b4b9	20 b0 	  . 
	add a,h			;b4bb	84 	. 
	add a,b			;b4bc	80 	. 
	or b			;b4bd	b0 	. 
	sub l			;b4be	95 	. 
	ld h,b			;b4bf	60 	` 
	or b			;b4c0	b0 	. 
	add a,e			;b4c1	83 	. 
	ret nz			;b4c2	c0 	. 
	or b			;b4c3	b0 	. 
	inc d			;b4c4	14 	. 
lb4c5h:
	jr nz,lb4a0h		;b4c5	20 d9 	  . 
	call po,0e3b7h		;b4c7	e4 b7 e3 	. . . 
	or b			;b4ca	b0 	. 
	pop de			;b4cb	d1 	. 
	or b			;b4cc	b0 	. 
	call nc,0d1e2h		;b4cd	d4 e2 d1 	. . . 
	rst 20h			;b4d0	e7 	. 
	cp (hl)			;b4d1	be 	. 
	or b			;b4d2	b0 	. 
	or b			;b4d3	b0 	. 
	or b			;b4d4	b0 	. 
	or b			;b4d5	b0 	. 
	or b			;b4d6	b0 	. 
	or b			;b4d7	b0 	. 
	or b			;b4d8	b0 	. 
	or b			;b4d9	b0 	. 
	ld bc,lb080h		;b4da	01 80 b0 	. . . 
	sub e			;b4dd	93 	. 
	ld h,b			;b4de	60 	` 
	or b			;b4df	b0 	. 
	ld bc,0e980h		;b4e0	01 80 e9 	. . . 
	inc de			;b4e3	13 	. 
	jr nz,lb4c5h		;b4e4	20 df 	  . 
	push hl			;b4e6	e5 	. 
	or b			;b4e7	b0 	. 
	ex (sp),hl			;b4e8	e3 	. 
	push hl			;b4e9	e5 	. 
	jp po,lb0d4h+1		;b4ea	e2 d5 b0 	. . . 
	call c,0d3e5h		;b4ed	dc e5 d3 	. . . 
lb4f0h:
	in a,(0d5h)		;b4f0	db d5 	. . 
	call nc,0dfb0h		;b4f2	d4 b0 df 	. . . 
	push hl			;b4f5	e5 	. 
	call po,000beh		;b4f6	e4 be 00 	. . . 
	nop			;b4f9	00 	. 
	sbc a,h			;b4fa	9c 	. 
	jr nz,$-78		;b4fb	20 b0 	  . 
	add a,(hl)			;b4fd	86 	. 
	add a,b			;b4fe	80 	. 
	or b			;b4ff	b0 	. 
	sbc a,d			;b500	9a 	. 
	ld h,b			;b501	60 	` 
	or b			;b502	b0 	. 
	add a,l			;b503	85 	. 
	ret nz			;b504	c0 	. 
	or b			;b505	b0 	. 
	add hl,de			;b506	19 	. 
	jr nz,lb4f0h		;b507	20 e7 	  . 
	push de			;b509	d5 	. 
	call c,sub_b0dch		;b50a	dc dc b0 	. . . 
	exx			;b50d	d9 	. 
	call po,0dcb0h		;b50e	e4 b0 dc 	. . . 
	rst 18h			;b511	df 	. 
	rst 18h			;b512	df 	. 
	in a,(0e3h)		;b513	db e3 	. . 
	or b			;b515	b0 	. 
	call c,0dbd9h		;b516	dc d9 db 	. . . 
	push de			;b519	d5 	. 
	or b			;b51a	b0 	. 
	call po,0d1d8h		;b51b	e4 d8 d1 	. . . 
	call po,0e3b7h		;b51e	e4 b7 e3 	. . . 
	ld bc,lb080h		;b521	01 80 b0 	. . . 
	sbc a,b			;b524	98 	. 
	ld h,b			;b525	60 	` 
	or b			;b526	b0 	. 
	ld bc,0e480h		;b527	01 80 e4 	. . . 
	jr $+34		;b52a	18 20 	.   
	ret c			;b52c	d8 	. 
	push de			;b52d	d5 	. 
	or b			;b52e	b0 	. 
	rst 20h			;b52f	e7 	. 
	pop de			;b530	d1 	. 
	jp (hl)			;b531	e9 	. 
	or b			;b532	b0 	. 
	exx			;b533	d9 	. 
	call po,0e3b7h		;b534	e4 b7 e3 	. . . 
	or b			;b537	b0 	. 
	defb 0ddh,0d5h,0d1h	;illegal sequence		;b538	dd d5 d1 	. . . 
	sbc a,0e4h		;b53b	de e4 	. . 
	or b			;b53d	b0 	. 
	call po,sub_b0dfh		;b53e	e4 df b0 	. . . 
	jp nc,0bed5h		;b541	d2 d5 be 	. . . 
	ld bc,lb080h		;b544	01 80 b0 	. . . 
	sbc a,b			;b547	98 	. 
	ld h,b			;b548	60 	` 
	or b			;b549	b0 	. 
	ld bc,0df80h		;b54a	01 80 df 	. . . 
	jr lb56fh		;b54d	18 20 	.   
	in a,(0beh)		;b54f	db be 	. . 
lb551h:
	or b			;b551	b0 	. 
	call po,0dbd1h		;b552	e4 d1 db 	. . . 
	push de			;b555	d5 	. 
	or b			;b556	b0 	. 
	call po,0d9d8h		;b557	e4 d8 d9 	. . . 
	ex (sp),hl			;b55a	e3 	. 
	or c			;b55b	b1 	. 
	or b			;b55c	b0 	. 
	or b			;b55d	b0 	. 
	or b			;b55e	b0 	. 
	or b			;b55f	b0 	. 
	or b			;b560	b0 	. 
	or b			;b561	b0 	. 
	or b			;b562	b0 	. 
	or b			;b563	b0 	. 
	or b			;b564	b0 	. 
	or b			;b565	b0 	. 
	or b			;b566	b0 	. 
	nop			;b567	00 	. 
	nop			;b568	00 	. 
	sbc a,h			;b569	9c 	. 
	jr nz,$-78		;b56a	20 b0 	  . 
	adc a,(hl)			;b56c	8e 	. 
	add a,b			;b56d	80 	. 
	or b			;b56e	b0 	. 
lb56fh:
	sbc a,d			;b56f	9a 	. 
	ld h,b			;b570	60 	` 
	or b			;b571	b0 	. 
	adc a,l			;b572	8d 	. 
	ret nz			;b573	c0 	. 
	or b			;b574	b0 	. 
	add hl,de			;b575	19 	. 
	jr nz,lb551h		;b576	20 d9 	  . 
	call po,0e3b7h		;b578	e4 b7 e3 	. . . 
	or b			;b57b	b0 	. 
	call c,0d3e5h		;b57c	dc e5 d3 	. . . 
	in a,(0e9h)		;b57f	db e9 	. . 
	or b			;b581	b0 	. 
	call po,0d1d8h		;b582	e4 d8 d1 	. . . 
	call po,0e9b0h		;b585	e4 b0 e9 	. . . 
	rst 18h			;b588	df 	. 
	push hl			;b589	e5 	. 
	or b			;b58a	b0 	. 
	ret c			;b58b	d8 	. 
	pop de			;b58c	d1 	. 
	and 0d5h		;b58d	e6 d5 	. . 
	or b			;b58f	b0 	. 
	ld bc,lb080h		;b590	01 80 b0 	. . . 
	sbc a,b			;b593	98 	. 
	ld h,b			;b594	60 	` 
	or b			;b595	b0 	. 
	ld bc,0dd80h		;b596	01 80 dd 	. . . 
	jr $+34		;b599	18 20 	.   
	pop de			;b59b	d1 	. 
	sbc a,0d1h		;b59c	de d1 	. . 
	rst 10h			;b59e	d7 	. 
	push de			;b59f	d5 	. 
	call nc,0e4b0h		;b5a0	d4 b0 e4 	. . . 
	rst 18h			;b5a3	df 	. 
	or b			;b5a4	b0 	. 
	out (0dfh),a		;b5a5	d3 df 	. . 
	defb 0ddh,0d5h,0b0h	;illegal sequence		;b5a7	dd d5 b0 	. . . 
	call po,0d9d8h		;b5aa	e4 d8 d9 	. . . 
	ex (sp),hl			;b5ad	e3 	. 
	or b			;b5ae	b0 	. 
	sub 0d1h		;b5af	d6 d1 	. . 
	jp po,001bch		;b5b1	e2 bc 01 	. . . 
	add a,b			;b5b4	80 	. 
	or b			;b5b5	b0 	. 
	sbc a,b			;b5b6	98 	. 
	ld h,b			;b5b7	60 	` 
	or b			;b5b8	b0 	. 
	ld bc,0d880h		;b5b9	01 80 d8 	. . . 
	jr $+34		;b5bc	18 20 	.   
	rst 18h			;b5be	df 	. 
	rst 20h			;b5bf	e7 	. 
	push de			;b5c0	d5 	. 
	and 0d5h		;b5c1	e6 d5 	. . 
	jp po,lb0bch		;b5c3	e2 bc b0 	. . . 
	exx			;b5c6	d9 	. 
	or a			;b5c7	b7 	. 
	call c,sub_b0dch		;b5c8	dc dc b0 	. . . 
	ret po			;b5cb	e0 	. 
	push hl			;b5cc	e5 	. 
	call po,0d1b0h		;b5cd	e4 b0 d1 	. . . 
	sbc a,0b0h		;b5d0	de b0 	. . 
	push de			;b5d2	d5 	. 
	sbc a,0d4h		;b5d3	de d4 	. . 
	or b			;b5d5	b0 	. 
	ld bc,lb080h		;b5d6	01 80 b0 	. . . 
	sbc a,b			;b5d9	98 	. 
	ld h,b			;b5da	60 	` 
	or b			;b5db	b0 	. 
	ld bc,0e480h		;b5dc	01 80 e4 	. . . 
	jr $+34		;b5df	18 20 	.   
	rst 18h			;b5e1	df 	. 
	or b			;b5e2	b0 	. 
	call po,0d1d8h		;b5e3	e4 d8 d1 	. . . 
	call po,sub_b0beh		;b5e6	e4 be b0 	. . . 
	call c,0e4d5h		;b5e9	dc d5 e4 	. . . 
	or a			;b5ec	b7 	. 
	ex (sp),hl			;b5ed	e3 	. 
	or b			;b5ee	b0 	. 
	or d			;b5ef	b2 	. 
	jp c,0ded1h		;b5f0	da d1 de 	. . . 
	in a,(0d5h)		;b5f3	db d5 	. . 
	sbc a,0b2h		;b5f5	de b2 	. . 
	or b			;b5f7	b0 	. 
	or b			;b5f8	b0 	. 
	ld bc,lb080h		;b5f9	01 80 b0 	. . . 
	sbc a,b			;b5fc	98 	. 
	ld h,b			;b5fd	60 	` 
	or b			;b5fe	b0 	. 
	ld bc,0d680h		;b5ff	01 80 d6 	. . . 
	jr $+34		;b602	18 20 	.   
	rst 18h			;b604	df 	. 
	jp po,0e4b0h		;b605	e2 b0 e4 	. . . 
	ret c			;b608	d8 	. 
	jp po,0d5d5h		;b609	e2 d5 d5 	. . . 
	or b			;b60c	b0 	. 
	defb 0ddh,0d1h,0e4h	;illegal sequence		;b60d	dd d1 e4 	. . . 
	out (0d8h),a		;b610	d3 d8 	. . 
	push de			;b612	d5 	. 
	ex (sp),hl			;b613	e3 	. 
	or b			;b614	b0 	. 
	pop de			;b615	d1 	. 
	sbc a,0d4h		;b616	de d4 	. . 
	or b			;b618	b0 	. 
	exx			;b619	d9 	. 
	sub 0b0h		;b61a	d6 b0 	. . 
	ld bc,lb080h		;b61c	01 80 b0 	. . . 
	sbc a,b			;b61f	98 	. 
	ld h,b			;b620	60 	` 
	or b			;b621	b0 	. 
	ld bc,0e980h		;b622	01 80 e9 	. . . 
	jr $+34		;b625	18 20 	.   
	rst 18h			;b627	df 	. 
	push hl			;b628	e5 	. 
	or b			;b629	b0 	. 
	call c,0e3dfh		;b62a	dc df e3 	. . . 
	push de			;b62d	d5 	. 
	cp h			;b62e	bc 	. 
	or b			;b62f	b0 	. 
	exx			;b630	d9 	. 
	or a			;b631	b7 	. 
	call c,sub_b0dch		;b632	dc dc b0 	. . . 
	defb 0ddh,0d1h,0dbh	;illegal sequence		;b635	dd d1 db 	. . . 
	push de			;b638	d5 	. 
	or b			;b639	b0 	. 
	jp (hl)			;b63a	e9 	. 
	rst 18h			;b63b	df 	. 
	push hl			;b63c	e5 	. 
	or b			;b63d	b0 	. 
	or b			;b63e	b0 	. 
	ld bc,lb080h		;b63f	01 80 b0 	. . . 
	sbc a,b			;b642	98 	. 
	ld h,b			;b643	60 	` 
	or b			;b644	b0 	. 
	ld bc,0e480h		;b645	01 80 e4 	. . . 
	jr lb66ah		;b648	18 20 	.   
	push hl			;b64a	e5 	. 
	jp po,lb0deh		;b64b	e2 de b0 	. . . 
	exx			;b64e	d9 	. 
	sbc a,0e4h		;b64f	de e4 	. . 
	rst 18h			;b651	df 	. 
	or b			;b652	b0 	. 
	pop de			;b653	d1 	. 
	or b			;b654	b0 	. 
	ex (sp),hl			;b655	e3 	. 
	call po,0dedfh		;b656	e4 df de 	. . . 
	push de			;b659	d5 	. 
lb65ah:
	cp (hl)			;b65a	be 	. 
	or b			;b65b	b0 	. 
	or b			;b65c	b0 	. 
	or b			;b65d	b0 	. 
	or b			;b65e	b0 	. 
	or b			;b65f	b0 	. 
	or b			;b660	b0 	. 
	or b			;b661	b0 	. 
	nop			;b662	00 	. 
	nop			;b663	00 	. 
	sbc a,(hl)			;b664	9e 	. 
	jr nz,$-78		;b665	20 b0 	  . 
	sub h			;b667	94 	. 
	add a,b			;b668	80 	. 
	or b			;b669	b0 	. 
lb66ah:
	sbc a,h			;b66a	9c 	. 
	ld h,b			;b66b	60 	` 
	or b			;b66c	b0 	. 
	sub e			;b66d	93 	. 
	ret nz			;b66e	c0 	. 
	or b			;b66f	b0 	. 
	dec de			;b670	1b 	. 
	jr nz,lb65ah		;b671	20 e7 	  . 
	push de			;b673	d5 	. 
	call c,0dfd3h		;b674	dc d3 df 	. . . 
	defb 0ddh,0d5h,0bch	;illegal sequence		;b677	dd d5 bc 	. . . 
	or b			;b67a	b0 	. 
lb67bh:
	pop de			;b67b	d1 	. 
	call c,0e8d5h		;b67c	dc d5 e8 	. . . 
	cp (hl)			;b67f	be 	. 
	or b			;b680	b0 	. 
	jp (hl)			;b681	e9 	. 
	rst 18h			;b682	df 	. 
	push hl			;b683	e5 	. 
	or b			;b684	b0 	. 
	pop de			;b685	d1 	. 
	jp po,lb0d4h+1		;b686	e2 d5 b0 	. . . 
	pop de			;b689	d1 	. 
	or b			;b68a	b0 	. 
	or b			;b68b	b0 	. 
	or b			;b68c	b0 	. 
	ld bc,lb080h		;b68d	01 80 b0 	. . . 
	sbc a,d			;b690	9a 	. 
	ld h,b			;b691	60 	` 
	or b			;b692	b0 	. 
	ld bc,0e080h		;b693	01 80 e0 	. . . 
	ld a,(de)			;b696	1a 	. 
	jr nz,lb67bh		;b697	20 e2 	  . 
	exx			;b699	d9 	. 
	sbc a,0d3h		;b69a	de d3 	. . 
	push de			;b69c	d5 	. 
	or b			;b69d	b0 	. 
	sub 0e2h		;b69e	d6 e2 	. . 
	rst 18h			;b6a0	df 	. 
	defb 0ddh,0b0h,0e4h	;illegal sequence		;b6a1	dd b0 e4 	. . . 
	ret c			;b6a4	d8 	. 
	push de			;b6a5	d5 	. 
	or b			;b6a6	b0 	. 
	out (0dfh),a		;b6a7	d3 df 	. . 
	push hl			;b6a9	e5 	. 
	sbc a,0e4h		;b6aa	de e4 	. . 
	jp po,lb0e9h		;b6ac	e2 e9 b0 	. . . 
	rst 18h			;b6af	df 	. 
	sub 0b0h		;b6b0	d6 b0 	. . 
	ld bc,lb080h		;b6b2	01 80 b0 	. . . 
	sbc a,d			;b6b5	9a 	. 
	ld h,b			;b6b6	60 	` 
	or b			;b6b7	b0 	. 
	ld bc,0e280h		;b6b8	01 80 e2 	. . . 
	ld a,(de)			;b6bb	1a 	. 
	jr nz,$-45		;b6bc	20 d1 	  . 
	call nc,0e8d1h		;b6be	d4 d1 e8 	. . . 
	exx			;b6c1	d9 	. 
	pop de			;b6c2	d1 	. 
	sbc a,0bch		;b6c3	de bc 	. . 
	or b			;b6c5	b0 	. 
	rst 20h			;b6c6	e7 	. 
	ret c			;b6c7	d8 	. 
	rst 18h			;b6c8	df 	. 
	or b			;b6c9	b0 	. 
	rst 20h			;b6ca	e7 	. 
	pop de			;b6cb	d1 	. 
lb6cch:
	ex (sp),hl			;b6cc	e3 	. 
	or b			;b6cd	b0 	. 
	in a,(0d9h)		;b6ce	db d9 	. . 
	call nc,0d1deh		;b6d0	d4 de d1 	. . . 
	ret po			;b6d3	e0 	. 
	ret po			;b6d4	e0 	. 
	push de			;b6d5	d5 	. 
	call nc,sub_8001h		;b6d6	d4 01 80 	. . . 
	or b			;b6d9	b0 	. 
	sbc a,d			;b6da	9a 	. 
	ld h,b			;b6db	60 	` 
	or b			;b6dc	b0 	. 
	ld bc,0d280h		;b6dd	01 80 d2 	. . . 
	ld a,(de)			;b6e0	1a 	. 
	jr nz,lb6cch		;b6e1	20 e9 	  . 
	or b			;b6e3	b0 	. 
	push de			;b6e4	d5 	. 
	and 0d9h		;b6e5	e6 d9 	. . 
	call c,0ddb0h		;b6e7	dc b0 dd 	. . . 
	push de			;b6ea	d5 	. 
	sbc a,0b0h		;b6eb	de b0 	. . 
lb6edh:
	rst 20h			;b6ed	e7 	. 
	ret c			;b6ee	d8 	. 
	push de			;b6ef	d5 	. 
	sbc a,0b0h		;b6f0	de b0 	. . 
	jp (hl)			;b6f2	e9 	. 
	rst 18h			;b6f3	df 	. 
	push hl			;b6f4	e5 	. 
	or b			;b6f5	b0 	. 
	rst 20h			;b6f6	e7 	. 
	push de			;b6f7	d5 	. 
	jp po,lb0d4h+1		;b6f8	e2 d5 b0 	. . . 
	or b			;b6fb	b0 	. 
	ld bc,lb080h		;b6fc	01 80 b0 	. . . 
	sbc a,d			;b6ff	9a 	. 
	ld h,b			;b700	60 	` 
	or b			;b701	b0 	. 
	ld bc,0d280h		;b702	01 80 d2 	. . . 
	ld a,(de)			;b705	1a 	. 
	jr nz,lb6edh		;b706	20 e5 	  . 
	call po,0d1b0h		;b708	e4 b0 d1 	. . . 
	or b			;b70b	b0 	. 
	ex (sp),hl			;b70c	e3 	. 
	defb 0ddh,0d1h,0dch	;illegal sequence		;b70d	dd d1 dc 	. . . 
	call c,0d2b0h		;b710	dc b0 d2 	. . . 
	rst 18h			;b713	df 	. 
	jp (hl)			;b714	e9 	. 
	cp (hl)			;b715	be 	. 
	jp (hl)			;b716	e9 	. 
	rst 18h			;b717	df 	. 
	push hl			;b718	e5 	. 
	jp po,0deb0h		;b719	e2 b0 de 	. . . 
	pop de			;b71c	d1 	. 
	call po,0e6d9h		;b71d	e4 d9 e6 	. . . 
	push de			;b720	d5 	. 
	ld bc,lb080h		;b721	01 80 b0 	. . . 
	sbc a,d			;b724	9a 	. 
	ld h,b			;b725	60 	` 
	or b			;b726	b0 	. 
	ld bc,0dc80h		;b727	01 80 dc 	. . . 
	ld a,(de)			;b72a	1a 	. 
lb72bh:
	jr nz,$-45		;b72b	20 d1 	  . 
	sbc a,0d4h		;b72d	de d4 	. . 
	or b			;b72f	b0 	. 
	exx			;b730	d9 	. 
	ex (sp),hl			;b731	e3 	. 
	or b			;b732	b0 	. 
	sbc a,0dfh		;b733	de df 	. . 
	rst 20h			;b735	e7 	. 
	or b			;b736	b0 	. 
	jp nc,0d9d5h		;b737	d2 d5 d9 	. . . 
	sbc a,0d7h		;b73a	de d7 	. . 
	or b			;b73c	b0 	. 
	rst 10h			;b73d	d7 	. 
	jp po,0e3dfh		;b73e	e2 df e3 	. . . 
	ex (sp),hl			;b741	e3 	. 
	call c,lb0e9h		;b742	dc e9 b0 	. . . 
	or b			;b745	b0 	. 
	ld bc,lb080h		;b746	01 80 b0 	. . . 
	sbc a,d			;b749	9a 	. 
	ld h,b			;b74a	60 	` 
	or b			;b74b	b0 	. 
	ld bc,0dd80h		;b74c	01 80 dd 	. . . 
	ld a,(de)			;b74f	1a 	. 
	jr nz,lb72bh		;b750	20 d9 	  . 
	ex (sp),hl			;b752	e3 	. 
	rst 10h			;b753	d7 	. 
	rst 18h			;b754	df 	. 
	and 0d5h		;b755	e6 d5 	. . 
	jp po,0d5deh		;b757	e2 de d5 	. . . 
	call nc,0d2b0h		;b75a	d4 b0 d2 	. . . 
	jp (hl)			;b75d	e9 	. 
	or b			;b75e	b0 	. 
	call po,0d5d8h		;b75f	e4 d8 d5 	. . . 
	or b			;b762	b0 	. 
	call po,0e2e9h		;b763	e4 e9 e2 	. . . 
	pop de			;b766	d1 	. 
	sbc a,0e4h		;b767	de e4 	. . 
	cp h			;b769	bc 	. 
	or b			;b76a	b0 	. 
	ld bc,lb080h		;b76b	01 80 b0 	. . . 
	sbc a,d			;b76e	9a 	. 
	ld h,b			;b76f	60 	` 
	or b			;b770	b0 	. 
	ld bc,0b280h		;b771	01 80 b2 	. . . 
	ld a,(de)			;b774	1a 	. 
lb775h:
	jr nz,$-36		;b775	20 da 	  . 
	pop de			;b777	d1 	. 
	sbc a,0dbh		;b778	de db 	. . 
	push de			;b77a	d5 	. 
	sbc a,0b0h		;b77b	de b0 	. . 
	call po,0d5d8h		;b77d	e4 d8 d5 	. . . 
	or b			;b780	b0 	. 
	rst 10h			;b781	d7 	. 
	jp po,0d1d5h		;b782	e2 d5 d1 	. . . 
	call po,sub_b2beh		;b785	e4 be b2 	. . . 
	or b			;b788	b0 	. 
	jp (hl)			;b789	e9 	. 
	rst 18h			;b78a	df 	. 
	push hl			;b78b	e5 	. 
	jp po,lb0b0h		;b78c	e2 b0 b0 	. . . 
lb78fh:
	or b			;b78f	b0 	. 
	ld bc,lb080h		;b790	01 80 b0 	. . . 
	sbc a,d			;b793	9a 	. 
	ld h,b			;b794	60 	` 
	or b			;b795	b0 	. 
	ld bc,0dd80h		;b796	01 80 dd 	. . . 
	ld a,(de)			;b799	1a 	. 
	jr nz,lb775h		;b79a	20 d9 	  . 
	ex (sp),hl			;b79c	e3 	. 
	ex (sp),hl			;b79d	e3 	. 
	exx			;b79e	d9 	. 
	rst 18h			;b79f	df 	. 
lb7a0h:
	sbc a,0b0h		;b7a0	de b0 	. . 
	exx			;b7a2	d9 	. 
	ex (sp),hl			;b7a3	e3 	. 
	or b			;b7a4	b0 	. 
	call po,sub_b0dfh		;b7a5	e4 df b0 	. . . 
	ex (sp),hl			;b7a8	e3 	. 
	pop de			;b7a9	d1 	. 
	and 0d5h		;b7aa	e6 d5 	. . 
	or b			;b7ac	b0 	. 
	call po,0d5d8h		;b7ad	e4 d8 d5 	. . . 
	or b			;b7b0	b0 	. 
	or b			;b7b1	b0 	. 
	or b			;b7b2	b0 	. 
	or b			;b7b3	b0 	. 
	or b			;b7b4	b0 	. 
	ld bc,lb080h		;b7b5	01 80 b0 	. . . 
	sbc a,d			;b7b8	9a 	. 
	ld h,b			;b7b9	60 	` 
	or b			;b7ba	b0 	. 
	ld bc,0e080h		;b7bb	01 80 e0 	. . . 
	ld a,(de)			;b7be	1a 	. 
	jr nz,lb7a0h		;b7bf	20 df 	  . 
	ret po			;b7c1	e0 	. 
	push hl			;b7c2	e5 	. 
	call c,0d3d1h		;b7c3	dc d1 d3 	. . . 
	push de			;b7c6	d5 	. 
	or b			;b7c7	b0 	. 
	sub 0e2h		;b7c8	d6 e2 	. . 
	rst 18h			;b7ca	df 	. 
lb7cbh:
	defb 0ddh,0b0h,0d8h	;illegal sequence		;b7cb	dd b0 d8 	. . . 
	exx			;b7ce	d9 	. 
	cp (ix-050h)		;b7cf	dd be b0 	. . . 
	or b			;b7d2	b0 	. 
	or b			;b7d3	b0 	. 
	or b			;b7d4	b0 	. 
	or b			;b7d5	b0 	. 
	or b			;b7d6	b0 	. 
	or b			;b7d7	b0 	. 
	or b			;b7d8	b0 	. 
	or b			;b7d9	b0 	. 
	nop			;b7da	00 	. 
	nop			;b7db	00 	. 
	sbc a,(hl)			;b7dc	9e 	. 
	jr nz,lb78fh		;b7dd	20 b0 	  . 
	adc a,(hl)			;b7df	8e 	. 
	add a,b			;b7e0	80 	. 
	or b			;b7e1	b0 	. 
	sbc a,h			;b7e2	9c 	. 
	ld h,b			;b7e3	60 	` 
	or b			;b7e4	b0 	. 
	adc a,l			;b7e5	8d 	. 
	ret nz			;b7e6	c0 	. 
	or b			;b7e7	b0 	. 
	dec de			;b7e8	1b 	. 
	jr nz,lb7cbh		;b7e9	20 e0 	  . 
	jp po,0ded9h		;b7eb	e2 d9 de 	. . . 
	out (0d5h),a		;b7ee	d3 d5 	. . 
lb7f0h:
	or b			;b7f0	b0 	. 
	pop de			;b7f1	d1 	. 
	call c,0e8d5h		;b7f2	dc d5 e8 	. . . 
	or b			;b7f5	b0 	. 
	rst 18h			;b7f6	df 	. 
	sub 0b0h		;b7f7	d6 b0 	. . 
	or d			;b7f9	b2 	. 
	jp po,0d4d1h		;b7fa	e2 d1 d4 	. . . 
	pop de			;b7fd	d1 	. 
	ret pe			;b7fe	e8 	. 
	exx			;b7ff	d9 	. 
lb800h:
	pop de			;b800	d1 	. 
	sbc a,0bch		;b801	de bc 	. . 
	or d			;b803	b2 	. 
	or b			;b804	b0 	. 
	ld bc,lb080h		;b805	01 80 b0 	. . . 
	sbc a,d			;b808	9a 	. 
	ld h,b			;b809	60 	` 
	or b			;b80a	b0 	. 
	ld bc,0e980h		;b80b	01 80 e9 	. . . 
	ld a,(de)			;b80e	1a 	. 
	jr nz,lb7f0h		;b80f	20 df 	  . 
	push hl			;b811	e5 	. 
	or b			;b812	b0 	. 
	pop de			;b813	d1 	. 
lb814h:
	jp po,lb0d4h+1		;b814	e2 d5 b0 	. . . 
	call c,0dfdfh		;b817	dc df df 	. . . 
	in a,(0d9h)		;b81a	db d9 	. . 
	sbc a,0d7h		;b81c	de d7 	. . 
	or b			;b81e	b0 	. 
	and 0d5h		;b81f	e6 d5 	. . 
	jp po,lb0e9h		;b821	e2 e9 b0 	. . . 
	rst 20h			;b824	e7 	. 
	push de			;b825	d5 	. 
	call c,sub_b0dch		;b826	dc dc b0 	. . . 
	or b			;b829	b0 	. 
	ld bc,lb080h		;b82a	01 80 b0 	. . . 
	sbc a,d			;b82d	9a 	. 
	ld h,b			;b82e	60 	` 
	or b			;b82f	b0 	. 
	ld bc,0d980h		;b830	01 80 d9 	. . . 
	ld a,(de)			;b833	1a 	. 
	jr nz,lb814h		;b834	20 de 	  . 
	call nc,0d5d5h		;b836	d4 d5 d5 	. . . 
	call nc,sub_b0b1h		;b839	d4 b1 b0 	. . . 
	rst 20h			;b83c	e7 	. 
	push de			;b83d	d5 	. 
	or b			;b83e	b0 	. 
	ret c			;b83f	d8 	. 
	push de			;b840	d5 	. 
	pop de			;b841	d1 	. 
	jp po,0e4b0h		;b842	e2 b0 e4 	. . . 
	ret c			;b845	d8 	. 
	pop de			;b846	d1 	. 
	call po,0e9b0h		;b847	e4 b0 e9 	. . . 
	rst 18h			;b84a	df 	. 
	push hl			;b84b	e5 	. 
	jp po,lb0b0h		;b84c	e2 b0 b0 	. . . 
	ld bc,lb080h		;b84f	01 80 b0 	. . . 
	sbc a,d			;b852	9a 	. 
	ld h,b			;b853	60 	` 
	or b			;b854	b0 	. 
	ld bc,0d580h		;b855	01 80 d5 	. . . 
	ld a,(de)			;b858	1a 	. 
	jr nz,$-34		;b859	20 dc 	  . 
	call nc,0e2d5h		;b85b	d4 d5 e2 	. . . 
lb85eh:
	or b			;b85e	b0 	. 
	jp nc,0dfe2h		;b85f	d2 e2 df 	. . . 
	call po,0d5d8h		;b862	e4 d8 d5 	. . . 
	jp po,0d9b0h		;b865	e2 b0 d9 	. . . 
	ex (sp),hl			;b868	e3 	. 
	or b			;b869	b0 	. 
	exx			;b86a	d9 	. 
	defb 0ddh,0e0h,0e2h	;illegal sequence		;b86b	dd e0 e2 	. . . 
	exx			;b86e	d9 	. 
	ex (sp),hl			;b86f	e3 	. 
	rst 18h			;b870	df 	. 
	sbc a,0d5h		;b871	de d5 	. . 
	call nc,sub_8001h		;b873	d4 01 80 	. . . 
	or b			;b876	b0 	. 
	sbc a,d			;b877	9a 	. 
	ld h,b			;b878	60 	` 
	or b			;b879	b0 	. 
	ld bc,0d980h		;b87a	01 80 d9 	. . . 
	ld a,(de)			;b87d	1a 	. 
	jr nz,lb85eh		;b87e	20 de 	  . 
	or b			;b880	b0 	. 
	call po,0d5d8h		;b881	e4 d8 d5 	. . . 
	or b			;b884	b0 	. 
	or d			;b885	b2 	. 
	jp po,0d4d1h		;b886	e2 d1 d4 	. . . 
	pop de			;b889	d1 	. 
	ret pe			;b88a	e8 	. 
	exx			;b88b	d9 	. 
	pop de			;b88c	d1 	. 
	sbc a,0b2h		;b88d	de b2 	. . 
	or b			;b88f	b0 	. 
	out (0d1h),a		;b890	d3 d1 	. . 
	ex (sp),hl			;b892	e3 	. 
	call po,0d5dch		;b893	e4 dc d5 	. . . 
	or b			;b896	b0 	. 
	or b			;b897	b0 	. 
lb898h:
	or b			;b898	b0 	. 
	ld bc,lb080h		;b899	01 80 b0 	. . . 
	sbc a,d			;b89c	9a 	. 
	ld h,b			;b89d	60 	` 
	or b			;b89e	b0 	. 
	ld bc,0d180h		;b89f	01 80 d1 	. . . 
lb8a2h:
	ld a,(de)			;b8a2	1a 	. 
	jr nz,$-32		;b8a3	20 de 	  . 
	call nc,0e9b0h		;b8a5	d4 b0 e9 	. . . 
	rst 18h			;b8a8	df 	. 
	push hl			;b8a9	e5 	. 
	or b			;b8aa	b0 	. 
	pop de			;b8ab	d1 	. 
	jp po,lb0d4h+1		;b8ac	e2 d5 b0 	. . . 
	call po,0d5d8h		;b8af	e4 d8 d5 	. . . 
	or b			;b8b2	b0 	. 
	rst 18h			;b8b3	df 	. 
	sbc a,0dch		;b8b4	de dc 	. . 
	jp (hl)			;b8b6	e9 	. 
	or b			;b8b7	b0 	. 
	ret po			;b8b8	e0 	. 
	push de			;b8b9	d5 	. 
	jp po,0dfe3h		;b8ba	e2 e3 df 	. . . 
	sbc a,001h		;b8bd	de 01 	. . 
	add a,b			;b8bf	80 	. 
	or b			;b8c0	b0 	. 
	sbc a,d			;b8c1	9a 	. 
	ld h,b			;b8c2	60 	` 
	or b			;b8c3	b0 	. 
	ld bc,0e780h		;b8c4	01 80 e7 	. . . 
	ld a,(de)			;b8c7	1a 	. 
	jr nz,lb8a2h		;b8c8	20 d8 	  . 
	rst 18h			;b8ca	df 	. 
	or b			;b8cb	b0 	. 
	out (0d1h),a		;b8cc	d3 d1 	. . 
	sbc a,0b0h		;b8ce	de b0 	. . 
	out (0dfh),a		;b8d0	d3 df 	. . 
	defb 0ddh,0d5h,0b0h	;illegal sequence		;b8d2	dd d5 b0 	. . . 
	call po,sub_b0dfh		;b8d5	e4 df b0 	. . . 
lb8d8h:
	ret c			;b8d8	d8 	. 
	exx			;b8d9	d9 	. 
	ex (sp),hl			;b8da	e3 	. 
	or b			;b8db	b0 	. 
	jp po,0e3d5h		;b8dc	e2 d5 e3 	. . . 
	out (0e5h),a		;b8df	d3 e5 	. . 
	push de			;b8e1	d5 	. 
	cp (hl)			;b8e2	be 	. 
	nop			;b8e3	00 	. 
	nop			;b8e4	00 	. 
	sbc a,(hl)			;b8e5	9e 	. 
	jr nz,lb898h		;b8e6	20 b0 	  . 
	sub h			;b8e8	94 	. 
	add a,b			;b8e9	80 	. 
	or b			;b8ea	b0 	. 
	sbc a,h			;b8eb	9c 	. 
	ld h,b			;b8ec	60 	` 
	or b			;b8ed	b0 	. 
	sub e			;b8ee	93 	. 
	ret nz			;b8ef	c0 	. 
	or b			;b8f0	b0 	. 
	dec de			;b8f1	1b 	. 
	jr nz,lb8d8h		;b8f2	20 e4 	  . 
	ret c			;b8f4	d8 	. 
	pop de			;b8f5	d1 	. 
	sbc a,0dbh		;b8f6	de db 	. . 
	or b			;b8f8	b0 	. 
	jp (hl)			;b8f9	e9 	. 
	rst 18h			;b8fa	df 	. 
	push hl			;b8fb	e5 	. 
	cp h			;b8fc	bc 	. 
	or b			;b8fd	b0 	. 
	pop de			;b8fe	d1 	. 
	call c,0e8d5h		;b8ff	dc d5 e8 	. . . 
	cp (hl)			;b902	be 	. 
	or b			;b903	b0 	. 
	call po,0d5d8h		;b904	e4 d8 d5 	. . . 
	or b			;b907	b0 	. 
	defb 0ddh,0dfh,0dfh	;illegal sequence		;b908	dd df df 	. . . 
	sbc a,0bdh		;b90b	de bd 	. . 
	or b			;b90d	b0 	. 
	ld bc,lb080h		;b90e	01 80 b0 	. . . 
	sbc a,d			;b911	9a 	. 
	ld h,b			;b912	60 	` 
	or b			;b913	b0 	. 
	ld bc,0dc80h		;b914	01 80 dc 	. . . 
	ld a,(de)			;b917	1a 	. 
lb918h:
	jr nz,$-37		;b918	20 d9 	  . 
	rst 10h			;b91a	d7 	. 
	ret c			;b91b	d8 	. 
	call po,0e3b0h		;b91c	e4 b0 e3 	. . . 
	call po,0dedfh		;b91f	e4 df de 	. . . 
	push de			;b922	d5 	. 
	or b			;b923	b0 	. 
	exx			;b924	d9 	. 
	ex (sp),hl			;b925	e3 	. 
	or b			;b926	b0 	. 
	exx			;b927	d9 	. 
	sbc a,0b0h		;b928	de b0 	. . 
	call po,0d5d8h		;b92a	e4 d8 d5 	. . . 
	or b			;b92d	b0 	. 
	or b			;b92e	b0 	. 
	or b			;b92f	b0 	. 
	or b			;b930	b0 	. 
	or b			;b931	b0 	. 
	or b			;b932	b0 	. 
	ld bc,lb080h		;b933	01 80 b0 	. . . 
	sbc a,d			;b936	9a 	. 
	ld h,b			;b937	60 	` 
	or b			;b938	b0 	. 
lb939h:
	ld bc,0de80h		;b939	01 80 de 	. . . 
	ld a,(de)			;b93c	1a 	. 
	jr nz,lb918h		;b93d	20 d9 	  . 
	jp nc,0ded1h		;b93f	d2 d1 de 	. . . 
	pop de			;b942	d1 	. 
	or b			;b943	b0 	. 
	in a,(0d9h)		;b944	db d9 	. . 
	sbc a,0d7h		;b946	de d7 	. . 
	call nc,0dddfh		;b948	d4 df dd 	. . . 
	cp h			;b94b	bc 	. 
	ex (sp),hl			;b94c	e3 	. 
	rst 18h			;b94d	df 	. 
	or b			;b94e	b0 	. 
	jp (hl)			;b94f	e9 	. 
	rst 18h			;b950	df 	. 
	push hl			;b951	e5 	. 
	or b			;b952	b0 	. 
	push ix		;b953	dd e5 	. . 
	ex (sp),hl			;b955	e3 	. 
	call po,001b0h		;b956	e4 b0 01 	. . . 
	add a,b			;b959	80 	. 
	or b			;b95a	b0 	. 
	sbc a,d			;b95b	9a 	. 
	ld h,b			;b95c	60 	` 
	or b			;b95d	b0 	. 
	ld bc,0e280h		;b95e	01 80 e2 	. . . 
lb961h:
	ld a,(de)			;b961	1a 	. 
	jr nz,lb939h		;b962	20 d5 	  . 
	pop de			;b964	d1 	. 
	out (0d8h),a		;b965	d3 d8 	. . 
	or b			;b967	b0 	. 
	call po,0d5d8h		;b968	e4 d8 d5 	. . . 
	jp po,lb0d4h+1		;b96b	e2 d5 b0 	. . . 
	jp nc,0d6d5h		;b96e	d2 d5 d6 	. . . 
	rst 18h			;b971	df 	. 
	jp po,lb0d4h+1		;b972	e2 d5 b0 	. . . 
	jp c,0ded1h		;b975	da d1 de 	. . . 
	in a,(0d5h)		;b978	db d5 	. . 
	sbc a,0b0h		;b97a	de b0 	. . 
	or b			;b97c	b0 	. 
	ld bc,lb080h		;b97d	01 80 b0 	. . . 
	sbc a,d			;b980	9a 	. 
	ld h,b			;b981	60 	` 
	or b			;b982	b0 	. 
	ld bc,0e480h		;b983	01 80 e4 	. . . 
	ld a,(de)			;b986	1a 	. 
	jr nz,lb961h		;b987	20 d8 	  . 
	push de			;b989	d5 	. 
	or b			;b98a	b0 	. 
	rst 10h			;b98b	d7 	. 
	jp po,0d1d5h		;b98c	e2 d5 d1 	. . . 
	call po,0d4b0h		;b98f	e4 b0 d4 	. . . 
	rst 18h			;b992	df 	. 
	push de			;b993	d5 	. 
	ex (sp),hl			;b994	e3 	. 
	cp (hl)			;b995	be 	. 
	or b			;b996	b0 	. 
	pop de			;b997	d1 	. 
	sbc a,0b0h		;b998	de b0 	. . 
	pop de			;b99a	d1 	. 
	push hl			;b99b	e5 	. 
	call po,lbddeh+1		;b99c	e4 df bd 	. . . 
	or b			;b99f	b0 	. 
	or b			;b9a0	b0 	. 
	or b			;b9a1	b0 	. 
	ld bc,lb080h		;b9a2	01 80 b0 	. . . 
	sbc a,d			;b9a5	9a 	. 
	ld h,b			;b9a6	60 	` 
	or b			;b9a7	b0 	. 
	ld bc,0d780h		;b9a8	01 80 d7 	. . . 
lb9abh:
	ld a,(de)			;b9ab	1a 	. 
	jr nz,$-28		;b9ac	20 e2 	  . 
	pop de			;b9ae	d1 	. 
	ret po			;b9af	e0 	. 
	ret c			;b9b0	d8 	. 
	push de			;b9b1	d5 	. 
	call nc,0dcb0h		;b9b2	d4 b0 dc 	. . . 
	push de			;b9b5	d5 	. 
	call po,0d5e4h		;b9b6	e4 e4 d5 	. . . 
	jp po,0d1b0h		;b9b9	e2 b0 d1 	. . . 
	call nc,0e2d4h		;b9bc	d4 d4 e2 	. . . 
	push de			;b9bf	d5 	. 
	ex (sp),hl			;b9c0	e3 	. 
	ex (sp),hl			;b9c1	e3 	. 
	push de			;b9c2	d5 	. 
	call nc,0e4b0h		;b9c3	d4 b0 e4 	. . . 
	rst 18h			;b9c6	df 	. 
	ld bc,lb080h		;b9c7	01 80 b0 	. . . 
	sbc a,d			;b9ca	9a 	. 
	ld h,b			;b9cb	60 	` 
	or b			;b9cc	b0 	. 
	ld bc,0e480h		;b9cd	01 80 e4 	. . . 
	ld a,(de)			;b9d0	1a 	. 
lb9d1h:
	jr nz,lb9abh		;b9d1	20 d8 	  . 
	push de			;b9d3	d5 	. 
	or b			;b9d4	b0 	. 
	sbc a,0d9h		;b9d5	de d9 	. . 
	jp nc,0ded1h		;b9d7	d2 d1 de 	. . . 
	pop de			;b9da	d1 	. 
	or b			;b9db	b0 	. 
	in a,(0d9h)		;b9dc	db d9 	. . 
	sbc a,0d7h		;b9de	de d7 	. . 
	call nc,0dddfh		;b9e0	d4 df dd 	. . . 
	or b			;b9e3	b0 	. 
	exx			;b9e4	d9 	. 
	ex (sp),hl			;b9e5	e3 	. 
	or b			;b9e6	b0 	. 
	or b			;b9e7	b0 	. 
	or b			;b9e8	b0 	. 
	or b			;b9e9	b0 	. 
	or b			;b9ea	b0 	. 
	or b			;b9eb	b0 	. 
	ld bc,lb080h		;b9ec	01 80 b0 	. . . 
	sbc a,d			;b9ef	9a 	. 
	ld h,b			;b9f0	60 	` 
	or b			;b9f1	b0 	. 
	ld bc,0d880h		;b9f2	01 80 d8 	. . . 
	ld a,(de)			;b9f5	1a 	. 
	jr nz,lb9d1h		;b9f6	20 d9 	  . 
	call nc,0d5d4h		;b9f8	d4 d4 d5 	. . . 
	sbc a,0b0h		;b9fb	de b0 	. . 
	ex (sp),hl			;b9fd	e3 	. 
	rst 18h			;b9fe	df 	. 
	defb 0ddh,0d5h,0e7h	;illegal sequence		;b9ff	dd d5 e7 	. . . 
	ret c			;ba02	d8 	. 
	push de			;ba03	d5 	. 
	jp po,lb0d4h+1		;ba04	e2 d5 b0 	. . . 
	exx			;ba07	d9 	. 
	sbc a,0b0h		;ba08	de b0 	. . 
	call po,0d9d8h		;ba0a	e4 d8 d9 	. . . 
	ex (sp),hl			;ba0d	e3 	. 
	or b			;ba0e	b0 	. 
	or b			;ba0f	b0 	. 
lba10h:
	or b			;ba10	b0 	. 
	ld bc,lb080h		;ba11	01 80 b0 	. . . 
	sbc a,d			;ba14	9a 	. 
	ld h,b			;ba15	60 	` 
	or b			;ba16	b0 	. 
	ld bc,0d380h		;ba17	01 80 d3 	. . . 
	ld a,(de)			;ba1a	1a 	. 
	jr nz,$-45		;ba1b	20 d1 	  . 
	ex (sp),hl			;ba1d	e3 	. 
	call po,0d5dch		;ba1e	e4 dc d5 	. . . 
	cp (hl)			;ba21	be 	. 
	or b			;ba22	b0 	. 
	pop de			;ba23	d1 	. 
	sub 0e4h		;ba24	d6 e4 	. . 
	push de			;ba26	d5 	. 
	jp po,0d6b0h		;ba27	e2 b0 d6 	. . . 
	exx			;ba2a	d9 	. 
	sbc a,0d4h		;ba2b	de d4 	. . 
	exx			;ba2d	d9 	. 
	sbc a,0d7h		;ba2e	de d7 	. . 
	or b			;ba30	b0 	. 
	exx			;ba31	d9 	. 
	call po,lb0bch		;ba32	e4 bc b0 	. . . 
	or b			;ba35	b0 	. 
	ld bc,lb080h		;ba36	01 80 b0 	. . . 
	sbc a,d			;ba39	9a 	. 
	ld h,b			;ba3a	60 	` 
	or b			;ba3b	b0 	. 
	ld bc,0e480h		;ba3c	01 80 e4 	. . . 
	ld a,(de)			;ba3f	1a 	. 
	jr nz,$-45		;ba40	20 d1 	  . 
	in a,(0d5h)		;ba42	db d5 	. . 
	or b			;ba44	b0 	. 
	exx			;ba45	d9 	. 
	call po,0e7b0h		;ba46	e4 b0 e7 	. . . 
	exx			;ba49	d9 	. 
	call po,sub_b0d8h		;ba4a	e4 d8 b0 	. . . 
	jp (hl)			;ba4d	e9 	. 
	rst 18h			;ba4e	df 	. 
	push hl			;ba4f	e5 	. 
	cp (hl)			;ba50	be 	. 
	or b			;ba51	b0 	. 
	or b			;ba52	b0 	. 
	or b			;ba53	b0 	. 
	or b			;ba54	b0 	. 
	or b			;ba55	b0 	. 
	or b			;ba56	b0 	. 
	or b			;ba57	b0 	. 
	or b			;ba58	b0 	. 
	or b			;ba59	b0 	. 
	or b			;ba5a	b0 	. 
	nop			;ba5b	00 	. 
	nop			;ba5c	00 	. 
	sbc a,(hl)			;ba5d	9e 	. 
	jr nz,lba10h		;ba5e	20 b0 	  . 
	adc a,h			;ba60	8c 	. 
	add a,b			;ba61	80 	. 
	or b			;ba62	b0 	. 
	sbc a,h			;ba63	9c 	. 
	ld h,b			;ba64	60 	` 
	or b			;ba65	b0 	. 
	adc a,e			;ba66	8b 	. 
	ret nz			;ba67	c0 	. 
	or b			;ba68	b0 	. 
	dec de			;ba69	1b 	. 
	jr nz,$-31		;ba6a	20 df 	  . 
	ret c			;ba6c	d8 	. 
	cp h			;ba6d	bc 	. 
	pop de			;ba6e	d1 	. 
	call c,0e8d5h		;ba6f	dc d5 e8 	. . . 
	cp h			;ba72	bc 	. 
	exx			;ba73	d9 	. 
	or a			;ba74	b7 	. 
	defb 0ddh,0b0h,0e4h	;illegal sequence		;ba75	dd b0 e4 	. . . 
	push de			;ba78	d5 	. 
	jp po,0d9e2h		;ba79	e2 e2 d9 	. . . 
	jp nc,0e9dch		;ba7c	d2 dc e9 	. . . 
	or b			;ba7f	b0 	. 
	ex (sp),hl			;ba80	e3 	. 
	rst 18h			;ba81	df 	. 
	jp po,0e9e2h		;ba82	e2 e2 e9 	. . . 
	cp h			;ba85	bc 	. 
	ld bc,lb080h		;ba86	01 80 b0 	. . . 
	sbc a,d			;ba89	9a 	. 
	ld h,b			;ba8a	60 	` 
	or b			;ba8b	b0 	. 
	ld bc,0d280h		;ba8c	01 80 d2 	. . . 
lba8fh:
	ld a,(de)			;ba8f	1a 	. 
	jr nz,$-25		;ba90	20 e5 	  . 
	call po,0d9b0h		;ba92	e4 b0 d9 	. . . 
	or b			;ba95	b0 	. 
	rst 20h			;ba96	e7 	. 
	pop de			;ba97	d1 	. 
	ex (sp),hl			;ba98	e3 	. 
	or b			;ba99	b0 	. 
	jp c,0e3e5h		;ba9a	da e5 e3 	. . . 
	call po,0e2b0h		;ba9d	e4 b0 e2 	. . . 
	rst 18h			;baa0	df 	. 
	jp nc,0d5d2h		;baa1	d2 d2 d5 	. . . 
	call nc,0dfb0h		;baa4	d4 b0 df 	. . . 
	sub 0b0h		;baa7	d6 b0 	. . 
	or b			;baa9	b0 	. 
	or b			;baaa	b0 	. 
	ld bc,lb080h		;baab	01 80 b0 	. . . 
	sbc a,d			;baae	9a 	. 
lbaafh:
	ld h,b			;baaf	60 	` 
	or b			;bab0	b0 	. 
	ld bc,0e480h		;bab1	01 80 e4 	. . . 
	ld a,(de)			;bab4	1a 	. 
	jr nz,lba8fh		;bab5	20 d8 	  . 
	push de			;bab7	d5 	. 
	or b			;bab8	b0 	. 
	defb 0ddh,0dfh,0dfh	;illegal sequence		;bab9	dd df df 	. . . 
	sbc a,0dch		;babc	de dc 	. . 
	exx			;babe	d9 	. 
	rst 10h			;babf	d7 	. 
	ret c			;bac0	d8 	. 
	call po,0e3b0h		;bac1	e4 b0 e3 	. . . 
	call po,0dedfh		;bac4	e4 df de 	. . . 
	push de			;bac7	d5 	. 
	cp (hl)			;bac8	be 	. 
	or b			;bac9	b0 	. 
	call po,0d5d8h		;baca	e4 d8 d5 	. . . 
	or b			;bacd	b0 	. 
	or b			;bace	b0 	. 
	or b			;bacf	b0 	. 
	ld bc,lb080h		;bad0	01 80 b0 	. . . 
	sbc a,d			;bad3	9a 	. 
	ld h,b			;bad4	60 	` 
	or b			;bad5	b0 	. 
	ld bc,0b280h		;bad6	01 80 b2 	. . . 
	ld a,(de)			;bad9	1a 	. 
	jr nz,lbaafh		;bada	20 d3 	  . 
	jp po,0e7dfh		;badc	e2 df e7 	. . . 
	sbc a,0b2h		;badf	de b2 	. . 
	or b			;bae1	b0 	. 
	exx			;bae2	d9 	. 
	ex (sp),hl			;bae3	e3 	. 
	or b			;bae4	b0 	. 
	exx			;bae5	d9 	. 
	sbc a,0b0h		;bae6	de b0 	. . 
	call c,0dbd1h		;bae8	dc d1 db 	. . . 
	push de			;baeb	d5 	. 
	or b			;baec	b0 	. 
	call nc,0d5d5h		;baed	d4 d5 d5 	. . . 
	ret po			;baf0	e0 	. 
	cp (hl)			;baf1	be 	. 
	or b			;baf2	b0 	. 
	or b			;baf3	b0 	. 
lbaf4h:
	or b			;baf4	b0 	. 
	ld bc,lb080h		;baf5	01 80 b0 	. . . 
	sbc a,d			;baf8	9a 	. 
	ld h,b			;baf9	60 	` 
	or b			;bafa	b0 	. 
	ld bc,0e980h		;bafb	01 80 e9 	. . . 
	ld a,(de)			;bafe	1a 	. 
	jr nz,$-31		;baff	20 df 	  . 
	push hl			;bb01	e5 	. 
	or a			;bb02	b7 	. 
	call nc,0d2b0h		;bb03	d4 b0 d2 	. . . 
	push de			;bb06	d5 	. 
	call po,0d5e4h		;bb07	e4 e4 d5 	. . . 
lbb0ah:
	jp po,0e4b0h		;bb0a	e2 b0 e4 	. . . 
	pop de			;bb0d	d1 	. 
	in a,(0d5h)		;bb0e	db d5 	. . 
	or b			;bb10	b0 	. 
	call po,0d9d8h		;bb11	e4 d8 d9 	. . . 
	ex (sp),hl			;bb14	e3 	. 
	or b			;bb15	b0 	. 
	or b			;bb16	b0 	. 
	or b			;bb17	b0 	. 
	or b			;bb18	b0 	. 
	or b			;bb19	b0 	. 
	ld bc,lb080h		;bb1a	01 80 b0 	. . . 
	sbc a,d			;bb1d	9a 	. 
	ld h,b			;bb1e	60 	` 
	or b			;bb1f	b0 	. 
	ld bc,0e380h		;bb20	01 80 e3 	. . . 
	ld a,(de)			;bb23	1a 	. 
	jr nz,lbb0ah		;bb24	20 e4 	  . 
	rst 18h			;bb26	df 	. 
	sbc a,0d5h		;bb27	de d5 	. . 
lbb29h:
	or b			;bb29	b0 	. 
	ex (sp),hl			;bb2a	e3 	. 
	call c,0d2d1h		;bb2b	dc d1 d2 	. . . 
	or b			;bb2e	b0 	. 
	rst 20h			;bb2f	e7 	. 
	exx			;bb30	d9 	. 
	call po,sub_b0d8h		;bb31	e4 d8 b0 	. . . 
	jp (hl)			;bb34	e9 	. 
	rst 18h			;bb35	df 	. 
	push hl			;bb36	e5 	. 
	cp (hl)			;bb37	be 	. 
	or b			;bb38	b0 	. 
	or b			;bb39	b0 	. 
	or b			;bb3a	b0 	. 
	or b			;bb3b	b0 	. 
lbb3ch:
	or b			;bb3c	b0 	. 
	or b			;bb3d	b0 	. 
	or b			;bb3e	b0 	. 
	nop			;bb3f	00 	. 
	nop			;bb40	00 	. 
	sbc a,d			;bb41	9a 	. 
	jr nz,lbaf4h		;bb42	20 b0 	  . 
	add a,h			;bb44	84 	. 
	add a,b			;bb45	80 	. 
	or b			;bb46	b0 	. 
	sbc a,b			;bb47	98 	. 
	ld h,b			;bb48	60 	` 
	or b			;bb49	b0 	. 
	add a,e			;bb4a	83 	. 
	ret nz			;bb4b	c0 	. 
	or b			;bb4c	b0 	. 
	rla			;bb4d	17 	. 
	jr nz,lbb29h		;bb4e	20 d9 	  . 
	or b			;bb50	b0 	. 
	ret c			;bb51	d8 	. 
	pop de			;bb52	d1 	. 
	and 0d5h		;bb53	e6 d5 	. . 
	or b			;bb55	b0 	. 
	sbc a,0dfh		;bb56	de df 	. . 
	or b			;bb58	b0 	. 
	jp nc,0e3e5h		;bb59	d2 e5 e3 	. . . 
	exx			;bb5c	d9 	. 
	sbc a,0d5h		;bb5d	de d5 	. . 
	ex (sp),hl			;bb5f	e3 	. 
	ex (sp),hl			;bb60	e3 	. 
	or b			;bb61	b0 	. 
	rst 20h			;bb62	e7 	. 
	exx			;bb63	d9 	. 
	call po,001d8h		;bb64	e4 d8 01 	. . . 
	add a,b			;bb67	80 	. 
	or b			;bb68	b0 	. 
	sub (hl)			;bb69	96 	. 
	ld h,b			;bb6a	60 	` 
	or b			;bb6b	b0 	. 
	ld bc,0e980h		;bb6c	01 80 e9 	. . . 
	ld d,020h		;bb6f	16 20 	.   
	rst 18h			;bb71	df 	. 
	push hl			;bb72	e5 	. 
	cp h			;bb73	bc 	. 
	or b			;bb74	b0 	. 
	ex (sp),hl			;bb75	e3 	. 
	rst 18h			;bb76	df 	. 
	or b			;bb77	b0 	. 
	ret po			;bb78	e0 	. 
	call c,0d1d5h		;bb79	dc d5 d1 	. . . 
lbb7ch:
	ex (sp),hl			;bb7c	e3 	. 
	push de			;bb7d	d5 	. 
	or b			;bb7e	b0 	. 
	call c,0d1d5h		;bb7f	dc d5 d1 	. . . 
	and 0d5h		;bb82	e6 d5 	. . 
	cp (hl)			;bb84	be 	. 
	or b			;bb85	b0 	. 
	or b			;bb86	b0 	. 
	nop			;bb87	00 	. 
	nop			;bb88	00 	. 
	sbc a,(hl)			;bb89	9e 	. 
	jr nz,lbb3ch		;bb8a	20 b0 	  . 
	adc a,d			;bb8c	8a 	. 
	add a,b			;bb8d	80 	. 
	or b			;bb8e	b0 	. 
	sbc a,h			;bb8f	9c 	. 
	ld h,b			;bb90	60 	` 
	or b			;bb91	b0 	. 
	adc a,c			;bb92	89 	. 
	ret nz			;bb93	c0 	. 
	or b			;bb94	b0 	. 
	dec de			;bb95	1b 	. 
	jr nz,lbb7ch		;bb96	20 e4 	  . 
	ret c			;bb98	d8 	. 
	pop de			;bb99	d1 	. 
	sbc a,0dbh		;bb9a	de db 	. . 
	or b			;bb9c	b0 	. 
	jp (hl)			;bb9d	e9 	. 
	rst 18h			;bb9e	df 	. 
	push hl			;bb9f	e5 	. 
	cp h			;bba0	bc 	. 
lbba1h:
	pop de			;bba1	d1 	. 
	call c,0e8d5h		;bba2	dc d5 e8 	. . . 
	cp (hl)			;bba5	be 	. 
	jp (hl)			;bba6	e9 	. 
	rst 18h			;bba7	df 	. 
	push hl			;bba8	e5 	. 
	jp po,0ddb0h		;bba9	e2 b0 dd 	. . . 
	rst 18h			;bbac	df 	. 
	call po,0d5d8h		;bbad	e4 d8 d5 	. . . 
	jp po,001b0h		;bbb0	e2 b0 01 	. . . 
	add a,b			;bbb3	80 	. 
	or b			;bbb4	b0 	. 
	sbc a,d			;bbb5	9a 	. 
	ld h,b			;bbb6	60 	` 
	or b			;bbb7	b0 	. 
	ld bc,0d980h		;bbb8	01 80 d9 	. . . 
	ld a,(de)			;bbbb	1a 	. 
	jr nz,lbba1h		;bbbc	20 e3 	  . 
	or b			;bbbe	b0 	. 
lbbbfh:
	rst 20h			;bbbf	e7 	. 
	push de			;bbc0	d5 	. 
	call c,sub_b0dch		;bbc1	dc dc b0 	. . . 
	pop de			;bbc4	d1 	. 
	sbc a,0d4h		;bbc5	de d4 	. . 
	or b			;bbc7	b0 	. 
	exx			;bbc8	d9 	. 
	sbc a,0b0h		;bbc9	de b0 	. . 
	rst 10h			;bbcb	d7 	. 
	rst 18h			;bbcc	df 	. 
	rst 18h			;bbcd	df 	. 
	call nc,0d8b0h		;bbce	d4 b0 d8 	. . . 
	pop de			;bbd1	d1 	. 
	sbc a,0d4h		;bbd2	de d4 	. . 
	ex (sp),hl			;bbd4	e3 	. 
	cp (hl)			;bbd5	be 	. 
	or b			;bbd6	b0 	. 
	ld bc,lb080h		;bbd7	01 80 b0 	. . . 
	sbc a,d			;bbda	9a 	. 
	ld h,b			;bbdb	60 	` 
	or b			;bbdc	b0 	. 
lbbddh:
	ld bc,0e080h		;bbdd	01 80 e0 	. . . 
	ld a,(de)			;bbe0	1a 	. 
	jr nz,lbbbfh		;bbe1	20 dc 	  . 
	push de			;bbe3	d5 	. 
	pop de			;bbe4	d1 	. 
	ex (sp),hl			;bbe5	e3 	. 
	push de			;bbe6	d5 	. 
	or b			;bbe7	b0 	. 
	ex (sp),hl			;bbe8	e3 	. 
	pop de			;bbe9	d1 	. 
	and 0d5h		;bbea	e6 d5 	. . 
	or b			;bbec	b0 	. 
	call po,0d5d8h		;bbed	e4 d8 d5 	. . . 
	or b			;bbf0	b0 	. 
	jp po,0d4d1h		;bbf1	e2 d1 d4 	. . . 
	pop de			;bbf4	d1 	. 
	ret pe			;bbf5	e8 	. 
	exx			;bbf6	d9 	. 
	pop de			;bbf7	d1 	. 
	sbc a,0b0h		;bbf8	de b0 	. . 
	or b			;bbfa	b0 	. 
lbbfbh:
	or b			;bbfb	b0 	. 
	ld bc,lb080h		;bbfc	01 80 b0 	. . . 
	sbc a,d			;bbff	9a 	. 
	ld h,b			;bc00	60 	` 
	or b			;bc01	b0 	. 
	ld bc,0e080h		;bc02	01 80 e0 	. . . 
	ld a,(de)			;bc05	1a 	. 
	jr nz,lbbddh		;bc06	20 d5 	  . 
	rst 18h			;bc08	df 	. 
	ret po			;bc09	e0 	. 
	call c,lb0d4h+1		;bc0a	dc d5 b0 	. . . 
	rst 20h			;bc0d	e7 	. 
	exx			;bc0e	d9 	. 
	call po,sub_b0d8h		;bc0f	e4 d8 b0 	. . . 
	jp (hl)			;bc12	e9 	. 
	rst 18h			;bc13	df 	. 
	push hl			;bc14	e5 	. 
	jp po,0ddb0h		;bc15	e2 b0 dd 	. . . 
	rst 18h			;bc18	df 	. 
	ex (sp),hl			;bc19	e3 	. 
	call po,lb0b0h		;bc1a	e4 b0 b0 	. . . 
	or b			;bc1d	b0 	. 
	or b			;bc1e	b0 	. 
	or b			;bc1f	b0 	. 
	or b			;bc20	b0 	. 
	ld bc,lb080h		;bc21	01 80 b0 	. . . 
	sbc a,d			;bc24	9a 	. 
	ld h,b			;bc25	60 	` 
	or b			;bc26	b0 	. 
	ld bc,0e080h		;bc27	01 80 e0 	. . . 
	ld a,(de)			;bc2a	1a 	. 
	jr nz,$-31		;bc2b	20 df 	  . 
	rst 20h			;bc2d	e7 	. 
	push de			;bc2e	d5 	. 
	jp po,0e5d6h		;bc2f	e2 d6 e5 	. . . 
	call c,0e7b0h		;bc32	dc b0 e7 	. . . 
	push de			;bc35	d5 	. 
	pop de			;bc36	d1 	. 
lbc37h:
	ret po			;bc37	e0 	. 
	rst 18h			;bc38	df 	. 
	sbc a,0bch		;bc39	de bc 	. . 
	call po,0d5d8h		;bc3b	e4 d8 d5 	. . . 
	or d			;bc3e	b2 	. 
	out (0e2h),a		;bc3f	d3 e2 	. . 
	rst 18h			;bc41	df 	. 
	rst 20h			;bc42	e7 	. 
	sbc a,0beh		;bc43	de be 	. . 
	or d			;bc45	b2 	. 
	nop			;bc46	00 	. 
	nop			;bc47	00 	. 
	sub h			;bc48	94 	. 
	jr nz,lbbfbh		;bc49	20 b0 	  . 
	add a,h			;bc4b	84 	. 
	add a,b			;bc4c	80 	. 
	or b			;bc4d	b0 	. 
	sub d			;bc4e	92 	. 
	ld h,b			;bc4f	60 	` 
	or b			;bc50	b0 	. 
	add a,e			;bc51	83 	. 
	ret nz			;bc52	c0 	. 
	or b			;bc53	b0 	. 
	ld de,0e920h		;bc54	11 20 e9 	.   . 
	rst 18h			;bc57	df 	. 
	push hl			;bc58	e5 	. 
	or b			;bc59	b0 	. 
	jp nc,0e4d5h		;bc5a	d2 d5 e4 	. . . 
	call po,0e2d5h		;bc5d	e4 d5 e2 	. . . 
	or b			;bc60	b0 	. 
	pop de			;bc61	d1 	. 
	out (0d3h),a		;bc62	d3 d3 	. . 
	push de			;bc64	d5 	. 
	ret po			;bc65	e0 	. 
	call po,sub_8001h		;bc66	e4 01 80 	. . . 
	or b			;bc69	b0 	. 
	sub b			;bc6a	90 	. 
	ld h,b			;bc6b	60 	` 
	or b			;bc6c	b0 	. 
	ld bc,0e480h		;bc6d	01 80 e4 	. . . 
	djnz lbc92h		;bc70	10 20 	.   
	ret c			;bc72	d8 	. 
	push de			;bc73	d5 	. 
	or b			;bc74	b0 	. 
	exx			;bc75	d9 	. 
	sbc a,0d5h		;bc76	de d5 	. . 
	and 0d9h		;bc78	e6 d9 	. . 
	call po,0d2d1h		;bc7a	e4 d1 d2 	. . . 
	call c,0b1d5h		;bc7d	dc d5 b1 	. . . 
	or b			;bc80	b0 	. 
	or b			;bc81	b0 	. 
	nop			;bc82	00 	. 
	nop			;bc83	00 	. 
	adc a,h			;bc84	8c 	. 
	jr nz,lbc37h		;bc85	20 b0 	  . 
	ld (bc),a			;bc87	02 	. 
	add a,b			;bc88	80 	. 
	or b			;bc89	b0 	. 
	or b			;bc8a	b0 	. 
	adc a,d			;bc8b	8a 	. 
	ld h,b			;bc8c	60 	` 
	or b			;bc8d	b0 	. 
	ld bc,lb0c0h		;bc8e	01 c0 b0 	. . . 
	add hl,bc			;bc91	09 	. 
lbc92h:
	jr nz,$-27		;bc92	20 e3 	  . 
	rst 18h			;bc94	df 	. 
	call c,lb0d4h		;bc95	dc d4 b0 	. . . 
	rst 18h			;bc98	df 	. 
	push hl			;bc99	e5 	. 
	call po,000beh		;bc9a	e4 be 00 	. . . 
	nop			;bc9d	00 	. 
	jr nc,$+65		;bc9e	30 3f 	0 ? 
	scf			;bca0	37 	7 
	dec sp			;bca1	3b 	; 
	rrca			;bca2	0f 	. 
	dec bc			;bca3	0b 	. 
	nop			;bca4	00 	. 
	cpl			;bca5	2f 	/ 
	ld b,00bh		;bca6	06 0b 	. . 
	ld bc,0383eh		;bca8	01 3e 38 	. > 8 
	inc c			;bcab	0c 	. 
	ex af,af'			;bcac	08 	. 
	inc a			;bcad	3c 	< 
	jr nc,$+65		;bcae	30 3f 	0 ? 
	dec b			;bcb0	05 	. 
	dec bc			;bcb1	0b 	. 
	inc bc			;bcb2	03 	. 
	ld (bc),a			;bcb3	02 	. 
	nop			;bcb4	00 	. 
	jr nc,lbcf3h		;bcb5	30 3c 	0 < 
	inc c			;bcb7	0c 	. 
	rrca			;bcb8	0f 	. 
	ex af,af'			;bcb9	08 	. 
	ld a,(00336h)		;bcba	3a 36 03 	: 6 . 
	ld a,(bc)			;bcbd	0a 	. 
	jr nc,$+65		;bcbe	30 3f 	0 ? 
	scf			;bcc0	37 	7 
	dec sp			;bcc1	3b 	; 
	rrca			;bcc2	0f 	. 
	dec bc			;bcc3	0b 	. 
	nop			;bcc4	00 	. 
	ld b,025h		;bcc5	06 25 	. % 
	ld hl,(02f01h)		;bcc7	2a 01 2f 	* . / 
	jr c,lbcd8h		;bcca	38 0c 	8 . 
	ex af,af'			;bccc	08 	. 
	inc a			;bccd	3c 	< 
	jr nc,$+65		;bcce	30 3f 	0 ? 
	dec b			;bcd0	05 	. 
	dec bc			;bcd1	0b 	. 
	inc bc			;bcd2	03 	. 
	ld (bc),a			;bcd3	02 	. 
	nop			;bcd4	00 	. 
	jr nc,lbd13h		;bcd5	30 3c 	0 < 
	inc c			;bcd7	0c 	. 
lbcd8h:
	rrca			;bcd8	0f 	. 
	ex af,af'			;bcd9	08 	. 
	ld a,(00336h)		;bcda	3a 36 03 	: 6 . 
	ld a,(bc)			;bcdd	0a 	. 
	jr nc,$+65		;bcde	30 3f 	0 ? 
	scf			;bce0	37 	7 
	dec sp			;bce1	3b 	; 
	rrca			;bce2	0f 	. 
lbce3h:
	dec bc			;bce3	0b 	. 
	nop			;bce4	00 	. 
	cpl			;bce5	2f 	/ 
	ld b,00bh		;bce6	06 0b 	. . 
	ld bc,0383eh		;bce8	01 3e 38 	. > 8 
	inc c			;bceb	0c 	. 
	ex af,af'			;bcec	08 	. 
	inc a			;bced	3c 	< 
	jr c,$+65		;bcee	38 3f 	8 ? 
	dec b			;bcf0	05 	. 
	dec bc			;bcf1	0b 	. 
	inc bc			;bcf2	03 	. 
lbcf3h:
	ld (bc),a			;bcf3	02 	. 
	nop			;bcf4	00 	. 
	jr nc,lbd33h		;bcf5	30 3c 	0 < 
	inc c			;bcf7	0c 	. 
	rrca			;bcf8	0f 	. 
	ex af,af'			;bcf9	08 	. 
	ld a,(00336h)		;bcfa	3a 36 03 	: 6 . 
	ld a,(bc)			;bcfd	0a 	. 
	jr nc,$+65		;bcfe	30 3f 	0 ? 
	ld b,001h		;bd00	06 01 	. . 
	rrca			;bd02	0f 	. 
	dec bc			;bd03	0b 	. 
	nop			;bd04	00 	. 
	ld hl,(03c25h)		;bd05	2a 25 3c 	* % < 
	ld (bc),a			;bd08	02 	. 
	inc bc			;bd09	03 	. 
	jr c,lbd18h		;bd0a	38 0c 	8 . 
	ex af,af'			;bd0c	08 	. 
	nop			;bd0d	00 	. 
	jr nc,$+65		;bd0e	30 3f 	0 ? 
	dec b			;bd10	05 	. 
	dec bc			;bd11	0b 	. 
	inc bc			;bd12	03 	. 
lbd13h:
	ld (bc),a			;bd13	02 	. 
	nop			;bd14	00 	. 
	jr nc,lbd53h		;bd15	30 3c 	0 < 
	inc c			;bd17	0c 	. 
lbd18h:
	rrca			;bd18	0f 	. 
	ex af,af'			;bd19	08 	. 
	ld a,(00336h)		;bd1a	3a 36 03 	: 6 . 
	ld a,(bc)			;bd1d	0a 	. 
	jr nc,$+65		;bd1e	30 3f 	0 ? 
	inc bc			;bd20	03 	. 
	inc bc			;bd21	03 	. 
	rrca			;bd22	0f 	. 
	dec bc			;bd23	0b 	. 
	nop			;bd24	00 	. 
	cpl			;bd25	2f 	/ 
	ld b,00bh		;bd26	06 0b 	. . 
	ld bc,0383eh		;bd28	01 3e 38 	. > 8 
	inc c			;bd2b	0c 	. 
	ex af,af'			;bd2c	08 	. 
	inc a			;bd2d	3c 	< 
	jr c,$+65		;bd2e	38 3f 	8 ? 
	dec b			;bd30	05 	. 
	dec bc			;bd31	0b 	. 
	inc bc			;bd32	03 	. 
lbd33h:
	ld (bc),a			;bd33	02 	. 
	nop			;bd34	00 	. 
	jr nc,lbd73h		;bd35	30 3c 	0 < 
	inc c			;bd37	0c 	. 
	rrca			;bd38	0f 	. 
	ex af,af'			;bd39	08 	. 
	ld a,(00336h)		;bd3a	3a 36 03 	: 6 . 
	ld a,(bc)			;bd3d	0a 	. 
	jr nc,$+65		;bd3e	30 3f 	0 ? 
	scf			;bd40	37 	7 
	dec sp			;bd41	3b 	; 
	rrca			;bd42	0f 	. 
	dec bc			;bd43	0b 	. 
	nop			;bd44	00 	. 
	ld b,025h		;bd45	06 25 	. % 
	ld hl,(02f01h)		;bd47	2a 01 2f 	* . / 
	jr c,lbd58h		;bd4a	38 0c 	8 . 
	ex af,af'			;bd4c	08 	. 
	inc a			;bd4d	3c 	< 
	jr nc,lbd8fh		;bd4e	30 3f 	0 ? 
	dec b			;bd50	05 	. 
	dec bc			;bd51	0b 	. 
	inc bc			;bd52	03 	. 
lbd53h:
	ld (bc),a			;bd53	02 	. 
	nop			;bd54	00 	. 
	jr nc,lbd93h		;bd55	30 3c 	0 < 
	inc c			;bd57	0c 	. 
lbd58h:
	rrca			;bd58	0f 	. 
	ex af,af'			;bd59	08 	. 
	ld a,(00336h)		;bd5a	3a 36 03 	: 6 . 
	ld a,(bc)			;bd5d	0a 	. 
	ld bc,0373fh		;bd5e	01 3f 37 	. ? 7 
	dec sp			;bd61	3b 	; 
	rrca			;bd62	0f 	. 
	dec bc			;bd63	0b 	. 
	nop			;bd64	00 	. 
	cpl			;bd65	2f 	/ 
	ld b,00bh		;bd66	06 0b 	. . 
	jr nc,lbda8h		;bd68	30 3e 	0 > 
	jr c,$+5		;bd6a	38 03 	8 . 
	ld (bc),a			;bd6c	02 	. 
	ld bc,03f01h		;bd6d	01 01 3f 	. . ? 
	dec b			;bd70	05 	. 
	dec bc			;bd71	0b 	. 
	inc bc			;bd72	03 	. 
lbd73h:
	ld (bc),a			;bd73	02 	. 
	nop			;bd74	00 	. 
	jr nc,lbdb3h		;bd75	30 3c 	0 < 
	inc c			;bd77	0c 	. 
	rrca			;bd78	0f 	. 
	ex af,af'			;bd79	08 	. 
	ld a,(00336h)		;bd7a	3a 36 03 	: 6 . 
	ld a,(bc)			;bd7d	0a 	. 
	jr nc,$+65		;bd7e	30 3f 	0 ? 
	scf			;bd80	37 	7 
	dec sp			;bd81	3b 	; 
	rrca			;bd82	0f 	. 
	dec bc			;bd83	0b 	. 
	nop			;bd84	00 	. 
	ld b,025h		;bd85	06 25 	. % 
	inc b			;bd87	04 	. 
	ld bc,0382fh		;bd88	01 2f 38 	. / 8 
	inc c			;bd8b	0c 	. 
	ex af,af'			;bd8c	08 	. 
	inc b			;bd8d	04 	. 
	inc b			;bd8e	04 	. 
lbd8fh:
	ccf			;bd8f	3f 	? 
	dec b			;bd90	05 	. 
	dec bc			;bd91	0b 	. 
	inc bc			;bd92	03 	. 
lbd93h:
	ld (bc),a			;bd93	02 	. 
	nop			;bd94	00 	. 
	jr nc,lbdd3h		;bd95	30 3c 	0 < 
	inc c			;bd97	0c 	. 
	rrca			;bd98	0f 	. 
	ex af,af'			;bd99	08 	. 
	ld a,(00336h)		;bd9a	3a 36 03 	: 6 . 
	ld a,(bc)			;bd9d	0a 	. 
	dec h			;bd9e	25 	% 
	ccf			;bd9f	3f 	? 
	scf			;bda0	37 	7 
	dec sp			;bda1	3b 	; 
	rrca			;bda2	0f 	. 
	dec bc			;bda3	0b 	. 
	nop			;bda4	00 	. 
	cpl			;bda5	2f 	/ 
	jr nc,$+64		;bda6	30 3e 	0 > 
lbda8h:
	jr nz,lbddeh		;bda8	20 34 	  4 
	jr c,lbdb2h		;bdaa	38 06 	8 . 
	ld bc,02505h		;bdac	01 05 25 	. . % 
	ccf			;bdaf	3f 	? 
	dec b			;bdb0	05 	. 
	dec bc			;bdb1	0b 	. 
lbdb2h:
	inc bc			;bdb2	03 	. 
lbdb3h:
	ld (bc),a			;bdb3	02 	. 
	nop			;bdb4	00 	. 
	jr nc,lbdf3h		;bdb5	30 3c 	0 < 
	inc c			;bdb7	0c 	. 
	rrca			;bdb8	0f 	. 
	ex af,af'			;bdb9	08 	. 
	ld a,(00336h)		;bdba	3a 36 03 	: 6 . 
	ld a,(bc)			;bdbd	0a 	. 
	jr nc,$+65		;bdbe	30 3f 	0 ? 
	scf			;bdc0	37 	7 
	inc bc			;bdc1	03 	. 
	rrca			;bdc2	0f 	. 
	dec bc			;bdc3	0b 	. 
	nop			;bdc4	00 	. 
	cpl			;bdc5	2f 	/ 
	ld b,00bh		;bdc6	06 0b 	. . 
	ld bc,0383eh		;bdc8	01 3e 38 	. > 8 
	inc c			;bdcb	0c 	. 
	ex af,af'			;bdcc	08 	. 
	inc a			;bdcd	3c 	< 
	jr nc,$+65		;bdce	30 3f 	0 ? 
	dec b			;bdd0	05 	. 
	dec bc			;bdd1	0b 	. 
	inc bc			;bdd2	03 	. 
lbdd3h:
	ld (bc),a			;bdd3	02 	. 
	nop			;bdd4	00 	. 
	jr nc,lbdddh		;bdd5	30 06 	0 . 
	inc c			;bdd7	0c 	. 
	rrca			;bdd8	0f 	. 
	ex af,af'			;bdd9	08 	. 
	ld a,(00336h)		;bdda	3a 36 03 	: 6 . 
lbdddh:
	ld a,(bc)			;bddd	0a 	. 
lbddeh:
	jr nc,$+65		;bdde	30 3f 	0 ? 
	scf			;bde0	37 	7 
	dec sp			;bde1	3b 	; 
	rrca			;bde2	0f 	. 
	dec bc			;bde3	0b 	. 
	nop			;bde4	00 	. 
	ld b,025h		;bde5	06 25 	. % 
	ld hl,(02f01h)		;bde7	2a 01 2f 	* . / 
	jr c,lbdf8h		;bdea	38 0c 	8 . 
	ex af,af'			;bdec	08 	. 
	inc a			;bded	3c 	< 
	jr nc,$+65		;bdee	30 3f 	0 ? 
	dec b			;bdf0	05 	. 
	dec bc			;bdf1	0b 	. 
	inc bc			;bdf2	03 	. 
lbdf3h:
	ld (bc),a			;bdf3	02 	. 
	nop			;bdf4	00 	. 
	jr nc,lbe33h		;bdf5	30 3c 	0 < 
	inc c			;bdf7	0c 	. 
lbdf8h:
	rrca			;bdf8	0f 	. 
	ex af,af'			;bdf9	08 	. 
	ld a,(00336h)		;bdfa	3a 36 03 	: 6 . 
	ld a,(bc)			;bdfd	0a 	. 
	jr nc,lbe3fh		;bdfe	30 3f 	0 ? 
	scf			;be00	37 	7 
	dec sp			;be01	3b 	; 
	rrca			;be02	0f 	. 
	dec bc			;be03	0b 	. 
	nop			;be04	00 	. 
	ld b,025h		;be05	06 25 	. % 
	ld hl,(02f01h)		;be07	2a 01 2f 	* . / 
	jr c,lbe18h		;be0a	38 0c 	8 . 
	ex af,af'			;be0c	08 	. 
	inc a			;be0d	3c 	< 
	jr nc,lbe4fh		;be0e	30 3f 	0 ? 
	dec b			;be10	05 	. 
	dec bc			;be11	0b 	. 
	inc bc			;be12	03 	. 
	ld (bc),a			;be13	02 	. 
	nop			;be14	00 	. 
	jr nc,lbe53h		;be15	30 3c 	0 < 
	inc c			;be17	0c 	. 
lbe18h:
	rrca			;be18	0f 	. 
	ex af,af'			;be19	08 	. 
	ld a,(00336h)		;be1a	3a 36 03 	: 6 . 
	ld a,(bc)			;be1d	0a 	. 
	jr nc,$+65		;be1e	30 3f 	0 ? 
	inc bc			;be20	03 	. 
	inc bc			;be21	03 	. 
	rrca			;be22	0f 	. 
	dec bc			;be23	0b 	. 
	nop			;be24	00 	. 
	ld b,025h		;be25	06 25 	. % 
	ld hl,(02f01h)		;be27	2a 01 2f 	* . / 
	jr c,lbe38h		;be2a	38 0c 	8 . 
	ex af,af'			;be2c	08 	. 
	inc a			;be2d	3c 	< 
	jr nc,$+65		;be2e	30 3f 	0 ? 
	dec b			;be30	05 	. 
	dec bc			;be31	0b 	. 
	inc bc			;be32	03 	. 
lbe33h:
	ld (bc),a			;be33	02 	. 
	nop			;be34	00 	. 
	jr nc,lbe73h		;be35	30 3c 	0 < 
	inc c			;be37	0c 	. 
lbe38h:
	rrca			;be38	0f 	. 
	ex af,af'			;be39	08 	. 
	ld a,(00336h)		;be3a	3a 36 03 	: 6 . 
	ld a,(bc)			;be3d	0a 	. 
	dec h			;be3e	25 	% 
lbe3fh:
	ccf			;be3f	3f 	? 
	scf			;be40	37 	7 
	dec sp			;be41	3b 	; 
	rrca			;be42	0f 	. 
	dec bc			;be43	0b 	. 
	nop			;be44	00 	. 
	cpl			;be45	2f 	/ 
	jr nc,lbe57h		;be46	30 0f 	0 . 
	ld (bc),a			;be48	02 	. 
	rlca			;be49	07 	. 
	dec bc			;be4a	0b 	. 
	ld b,001h		;be4b	06 01 	. . 
	inc a			;be4d	3c 	< 
	dec h			;be4e	25 	% 
lbe4fh:
	ccf			;be4f	3f 	? 
	dec b			;be50	05 	. 
	dec bc			;be51	0b 	. 
	inc bc			;be52	03 	. 
lbe53h:
	ld (bc),a			;be53	02 	. 
	nop			;be54	00 	. 
	jr nc,lbe93h		;be55	30 3c 	0 < 
lbe57h:
	inc c			;be57	0c 	. 
	rrca			;be58	0f 	. 
	ex af,af'			;be59	08 	. 
	ld a,(00336h)		;be5a	3a 36 03 	: 6 . 
	ld a,(bc)			;be5d	0a 	. 
	jr nz,lbe9fh		;be5e	20 3f 	  ? 
	scf			;be60	37 	7 
	dec sp			;be61	3b 	; 
	rrca			;be62	0f 	. 
	dec bc			;be63	0b 	. 
	nop			;be64	00 	. 
	cpl			;be65	2f 	/ 
	jr nc,lbea6h		;be66	30 3e 	0 > 
	inc a			;be68	3c 	< 
	ld a,038h		;be69	3e 38 	> 8 
	ld b,001h		;be6b	06 01 	. . 
	dec b			;be6d	05 	. 
	jr nz,lbeafh		;be6e	20 3f 	  ? 
	dec b			;be70	05 	. 
	dec bc			;be71	0b 	. 
	inc bc			;be72	03 	. 
lbe73h:
	ld (bc),a			;be73	02 	. 
	nop			;be74	00 	. 
	jr nc,lbeb3h		;be75	30 3c 	0 < 
	inc c			;be77	0c 	. 
	rrca			;be78	0f 	. 
	ex af,af'			;be79	08 	. 
	ld a,(00336h)		;be7a	3a 36 03 	: 6 . 
	ld a,(bc)			;be7d	0a 	. 
	jr nc,$+65		;be7e	30 3f 	0 ? 
	scf			;be80	37 	7 
	dec sp			;be81	3b 	; 
	rrca			;be82	0f 	. 
	dec bc			;be83	0b 	. 
	nop			;be84	00 	. 
	cpl			;be85	2f 	/ 
	ld b,00bh		;be86	06 0b 	. . 
	ld bc,0383eh		;be88	01 3e 38 	. > 8 
	inc c			;be8b	0c 	. 
	ex af,af'			;be8c	08 	. 
	inc a			;be8d	3c 	< 
	jr nc,$+65		;be8e	30 3f 	0 ? 
	dec b			;be90	05 	. 
	dec bc			;be91	0b 	. 
	inc bc			;be92	03 	. 
lbe93h:
	ld (bc),a			;be93	02 	. 
	nop			;be94	00 	. 
	jr nc,lbed3h		;be95	30 3c 	0 < 
	inc c			;be97	0c 	. 
	rrca			;be98	0f 	. 
	ex af,af'			;be99	08 	. 
	ld a,(00336h)		;be9a	3a 36 03 	: 6 . 
	ld a,(bc)			;be9d	0a 	. 
	ld b,b			;be9e	40 	@ 
lbe9fh:
	nop			;be9f	00 	. 
	ld b,b			;bea0	40 	@ 
	ld (bc),a			;bea1	02 	. 
	ld b,c			;bea2	41 	A 
	ld h,b			;bea3	60 	` 
	ld b,d			;bea4	42 	B 
	ld h,b			;bea5	60 	` 
lbea6h:
	ld b,e			;bea6	43 	C 
	ld h,b			;bea7	60 	` 
	ld b,e			;bea8	43 	C 
	ld h,b			;bea9	60 	` 
	ld b,b			;beaa	40 	@ 
	nop			;beab	00 	. 
	ld b,b			;beac	40 	@ 
	ld (bc),a			;bead	02 	. 
	ld b,b			;beae	40 	@ 
lbeafh:
	nop			;beaf	00 	. 
	ld b,b			;beb0	40 	@ 
	ld (bc),a			;beb1	02 	. 
	dec a			;beb2	3d 	= 
lbeb3h:
	add a,b			;beb3	80 	. 
	ld a,080h		;beb4	3e 80 	> . 
	dec a			;beb6	3d 	= 
	add a,b			;beb7	80 	. 
	ld a,080h		;beb8	3e 80 	> . 
	ld a,080h		;beba	3e 80 	> . 
	dec a			;bebc	3d 	= 
	add a,b			;bebd	80 	. 
	ld a,080h		;bebe	3e 80 	> . 
	dec a			;bec0	3d 	= 
	add a,b			;bec1	80 	. 
	dec a			;bec2	3d 	= 
	add a,b			;bec3	80 	. 
	ld a,080h		;bec4	3e 80 	> . 
	dec a			;bec6	3d 	= 
	add a,b			;bec7	80 	. 
	ld a,080h		;bec8	3e 80 	> . 
	ld a,080h		;beca	3e 80 	> . 
	dec a			;becc	3d 	= 
	add a,b			;becd	80 	. 
	ld a,080h		;bece	3e 80 	> . 
	dec a			;bed0	3d 	= 
	add a,b			;bed1	80 	. 
	dec a			;bed2	3d 	= 
lbed3h:
	add a,b			;bed3	80 	. 
	ld a,080h		;bed4	3e 80 	> . 
	dec a			;bed6	3d 	= 
	add a,b			;bed7	80 	. 
	ld a,080h		;bed8	3e 80 	> . 
	ld a,080h		;beda	3e 80 	> . 
	dec a			;bedc	3d 	= 
	add a,b			;bedd	80 	. 
	ld a,080h		;bede	3e 80 	> . 
	dec a			;bee0	3d 	= 
	add a,b			;bee1	80 	. 
	ld b,c			;bee2	41 	A 
	ld h,b			;bee3	60 	` 
	ld b,d			;bee4	42 	B 
	ld h,b			;bee5	60 	` 
	ld b,c			;bee6	41 	A 
	ld h,b			;bee7	60 	` 
	ld b,d			;bee8	42 	B 
	ld h,b			;bee9	60 	` 
	ld b,e			;beea	43 	C 
	ld h,b			;beeb	60 	` 
	ld b,e			;beec	43 	C 
	ld h,b			;beed	60 	` 
	ld b,e			;beee	43 	C 
	ld h,b			;beef	60 	` 
	ld b,e			;bef0	43 	C 
	ld h,b			;bef1	60 	` 
	ld c,l			;bef2	4d 	M 
	nop			;bef3	00 	. 
	ld c,l			;bef4	4d 	M 
	ld (bc),a			;bef5	02 	. 
	dec a			;bef6	3d 	= 
	add a,b			;bef7	80 	. 
	ld a,080h		;bef8	3e 80 	> . 
	ld a,080h		;befa	3e 80 	> . 
	dec a			;befc	3d 	= 
	add a,b			;befd	80 	. 
	dec a			;befe	3d 	= 
	add a,b			;beff	80 	. 
	ld a,080h		;bf00	3e 80 	> . 
	ld a,080h		;bf02	3e 80 	> . 
	dec a			;bf04	3d 	= 
	add a,b			;bf05	80 	. 
	dec a			;bf06	3d 	= 
	add a,b			;bf07	80 	. 
	ld a,080h		;bf08	3e 80 	> . 
	ld a,080h		;bf0a	3e 80 	> . 
	dec a			;bf0c	3d 	= 
	add a,b			;bf0d	80 	. 
	dec a			;bf0e	3d 	= 
	add a,b			;bf0f	80 	. 
	ld a,080h		;bf10	3e 80 	> . 
	ld a,080h		;bf12	3e 80 	> . 
	dec a			;bf14	3d 	= 
	add a,b			;bf15	80 	. 
	dec a			;bf16	3d 	= 
	add a,b			;bf17	80 	. 
	ld a,080h		;bf18	3e 80 	> . 
	ld a,080h		;bf1a	3e 80 	> . 
	dec a			;bf1c	3d 	= 
	add a,b			;bf1d	80 	. 
	dec a			;bf1e	3d 	= 
	add a,b			;bf1f	80 	. 
	ld a,080h		;bf20	3e 80 	> . 
	ld a,080h		;bf22	3e 80 	> . 
	dec a			;bf24	3d 	= 
	add a,b			;bf25	80 	. 
	nop			;bf26	00 	. 
	nop			;bf27	00 	. 
	nop			;bf28	00 	. 
	nop			;bf29	00 	. 
	nop			;bf2a	00 	. 
	nop			;bf2b	00 	. 
	nop			;bf2c	00 	. 
	nop			;bf2d	00 	. 
	ld c,l			;bf2e	4d 	M 
	nop			;bf2f	00 	. 
	ld c,l			;bf30	4d 	M 
	ld (bc),a			;bf31	02 	. 
	nop			;bf32	00 	. 
	nop			;bf33	00 	. 
	nop			;bf34	00 	. 
	nop			;bf35	00 	. 
	nop			;bf36	00 	. 
	nop			;bf37	00 	. 
	nop			;bf38	00 	. 
	nop			;bf39	00 	. 
	ld c,l			;bf3a	4d 	M 
	nop			;bf3b	00 	. 
	ld c,l			;bf3c	4d 	M 
	ld (bc),a			;bf3d	02 	. 
	nop			;bf3e	00 	. 
	nop			;bf3f	00 	. 
	nop			;bf40	00 	. 
	nop			;bf41	00 	. 
	nop			;bf42	00 	. 
	nop			;bf43	00 	. 
	nop			;bf44	00 	. 
	nop			;bf45	00 	. 
	ld b,b			;bf46	40 	@ 
	ld h,b			;bf47	60 	` 
	ld b,c			;bf48	41 	A 
	ld h,b			;bf49	60 	` 
	ld b,b			;bf4a	40 	@ 
	ld h,b			;bf4b	60 	` 
	ld b,c			;bf4c	41 	A 
	ld h,b			;bf4d	60 	` 
	ld b,b			;bf4e	40 	@ 
	ld h,b			;bf4f	60 	` 
	ld b,c			;bf50	41 	A 
	ld h,b			;bf51	60 	` 
	ld b,b			;bf52	40 	@ 
	ld h,b			;bf53	60 	` 
	ld b,c			;bf54	41 	A 
	ld h,b			;bf55	60 	` 
	ld b,b			;bf56	40 	@ 
	ld h,b			;bf57	60 	` 
	ld b,c			;bf58	41 	A 
	ld h,b			;bf59	60 	` 
	ld b,b			;bf5a	40 	@ 
	ld h,b			;bf5b	60 	` 
	ld b,c			;bf5c	41 	A 
	ld h,b			;bf5d	60 	` 
	ld b,b			;bf5e	40 	@ 
	ld h,b			;bf5f	60 	` 
	ld b,c			;bf60	41 	A 
	ld h,b			;bf61	60 	` 
	ld b,b			;bf62	40 	@ 
	ld h,b			;bf63	60 	` 
	ld b,c			;bf64	41 	A 
	ld h,b			;bf65	60 	` 
	ld b,d			;bf66	42 	B 
	ld h,b			;bf67	60 	` 
	ld b,d			;bf68	42 	B 
	ld h,b			;bf69	60 	` 
	ld b,d			;bf6a	42 	B 
	ld h,b			;bf6b	60 	` 
	ld b,d			;bf6c	42 	B 
lbf6dh:
	ld h,b			;bf6d	60 	` 
	ld b,d			;bf6e	42 	B 
	ld h,b			;bf6f	60 	` 
	ld b,d			;bf70	42 	B 
	ld h,b			;bf71	60 	` 
	ld b,d			;bf72	42 	B 
	ld h,b			;bf73	60 	` 
	ld b,d			;bf74	42 	B 
	ld h,b			;bf75	60 	` 
	ld b,d			;bf76	42 	B 
	ld h,b			;bf77	60 	` 
	ld b,d			;bf78	42 	B 
	ld h,b			;bf79	60 	` 
	ld b,d			;bf7a	42 	B 
	ld h,b			;bf7b	60 	` 
	ld b,d			;bf7c	42 	B 
	ld h,b			;bf7d	60 	` 
	ld b,d			;bf7e	42 	B 
	ld h,b			;bf7f	60 	` 
	ld b,d			;bf80	42 	B 
	ld h,b			;bf81	60 	` 
	ld b,d			;bf82	42 	B 
	ld h,b			;bf83	60 	` 
	ld b,d			;bf84	42 	B 
	ld h,b			;bf85	60 	` 
	sbc a,0e8h		;bf86	de e8 	. . 
	xor b			;bf88	a8 	. 
	ret z			;bf89	c8 	. 
	xor b			;bf8a	a8 	. 
	djnz lbf6dh		;bf8b	10 e0 	. . 
	nop			;bf8d	00 	. 
	nop			;bf8e	00 	. 
	ld c,00fh		;bf8f	0e 0f 	. . 
	rrca			;bf91	0f 	. 
	rlca			;bf92	07 	. 
	inc bc			;bf93	03 	. 
	inc bc			;bf94	03 	. 
	nop			;bf95	00 	. 
	add a,e			;bf96	83 	. 
	rst 38h			;bf97	ff 	. 
	ld a,a			;bf98	7f 	 
	add a,b			;bf99	80 	. 
	inc bc			;bf9a	03 	. 
	rst 38h			;bf9b	ff 	. 
	ld (bc),a			;bf9c	02 	. 
	nop			;bf9d	00 	. 
	add a,(hl)			;bf9e	86 	. 
	cp 0ffh		;bf9f	fe ff 	. . 
	rrca			;bfa1	0f 	. 
	rst 30h			;bfa2	f7 	. 
	ei			;bfa3	fb 	. 
	ei			;bfa4	fb 	. 
	inc b			;bfa5	04 	. 
	dec sp			;bfa6	3b 	; 
	add a,c			;bfa7	81 	. 
	cp b			;bfa8	b8 	. 
	dec b			;bfa9	05 	. 
	cp e			;bfaa	bb 	. 
	ld (bc),a			;bfab	02 	. 
	rst 38h			;bfac	ff 	. 
	add a,c			;bfad	81 	. 
	nop			;bfae	00 	. 
	inc bc			;bfaf	03 	. 
	rst 38h			;bfb0	ff 	. 
	ld (bc),a			;bfb1	02 	. 
	add a,b			;bfb2	80 	. 
	ld (bc),a			;bfb3	02 	. 
	ld sp,hl			;bfb4	f9 	. 
	add a,c			;bfb5	81 	. 
	ld bc,0f903h		;bfb6	01 03 f9 	. . . 
	ld (bc),a			;bfb9	02 	. 
	ld bc,0dd02h		;bfba	01 02 dd 	. . . 
	add a,c			;bfbd	81 	. 
	call c,0dd03h		;bfbe	dc 03 dd 	. . . 
	ld (bc),a			;bfc1	02 	. 
	call c,0ff02h		;bfc2	dc 02 ff 	. . . 
	add a,c			;bfc5	81 	. 
	nop			;bfc6	00 	. 
	inc bc			;bfc7	03 	. 
	cp 002h		;bfc8	fe 02 	. . 
	ld c,081h		;bfca	0e 81 	. . 
	ret po			;bfcc	e0 	. 
	inc bc			;bfcd	03 	. 
	pop hl			;bfce	e1 	. 
	ld (bc),a			;bfcf	02 	. 
	ex (sp),hl			;bfd0	e3 	. 
	ld (bc),a			;bfd1	02 	. 
	rst 20h			;bfd2	e7 	. 
	add a,c			;bfd3	81 	. 
	rst 30h			;bfd4	f7 	. 
	inc bc			;bfd5	03 	. 
	rst 28h			;bfd6	ef 	. 
	ld (bc),a			;bfd7	02 	. 
	sbc a,002h		;bfd8	de 02 	. . 
	cp h			;bfda	bc 	. 
	add a,c			;bfdb	81 	. 
	sbc a,003h		;bfdc	de 03 	. . 
	rst 28h			;bfde	ef 	. 
	ld (bc),a			;bfdf	02 	. 
	rst 30h			;bfe0	f7 	. 
	ld (bc),a			;bfe1	02 	. 
	ld a,e			;bfe2	7b 	{ 
	inc b			;bfe3	04 	. 
	nop			;bfe4	00 	. 
	ld (bc),a			;bfe5	02 	. 
	add a,b			;bfe6	80 	. 
	ld (bc),a			;bfe7	02 	. 
	ret nz			;bfe8	c0 	. 
	inc bc			;bfe9	03 	. 
	rrca			;bfea	0f 	. 
	add a,c			;bfeb	81 	. 
	nop			;bfec	00 	. 
	inc bc			;bfed	03 	. 
	rrca			;bfee	0f 	. 
	add a,c			;bfef	81 	. 
	nop			;bff0	00 	. 
	inc bc			;bff1	03 	. 
	rst 38h			;bff2	ff 	. 
	add a,c			;bff3	81 	. 
	nop			;bff4	00 	. 
	inc bc			;bff5	03 	. 
	rst 38h			;bff6	ff 	. 
	sub c			;bff7	91 	. 
	nop			;bff8	00 	. 
	ei			;bff9	fb 	. 
	ei			;bffa	fb 	. 
	rst 30h			;bffb	f7 	. 
	rrca			;bffc	0f 	. 
	rst 38h			;bffd	ff 	. 
	cp 0f8h		;bffe	fe f8 	. . 
