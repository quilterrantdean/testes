; ============================================================
; Banco 2 do ROM (offset no ficheiro: 0x8000 - 0xBFFF)
; Endereco de origem assumido no mapa do Z80: 8000h (slot 2, valor inicial)
; Gerado com z80dasm 1.1.6 (-a enderecos, -t bytes originais, -l labels)
; NOTA: saltos/chamadas absolutos (JP/CALL) so sao validos quando
; este banco estiver de facto paginado no slot indicado acima.
; Zonas de dados (graficos, tabelas, musica) podem surgir desmontadas
; incorrectamente como instrucoes -- ver aviso Self-modifying-code
; nos ficheiros onde a heuristica do z80dasm o assinalou.
; ============================================================

; z80dasm 1.1.6
; command line: z80dasm -a -t -l -g 0x8000 -s /home/claude/out/bank2.sym -o /home/claude/out/bank2.asm bank2.bin

	org	08000h

	inc b			;8000	04 	. 
l8001h:
	adc a,b			;8001	88 	. 
l8002h:
	nop			;8002	00 	. 
sub_8003h:
	nop			;8003	00 	. 
l8004h:
	ex af,af'			;8004	08 	. 
	ex af,af'			;8005	08 	. 
	nop			;8006	00 	. 
	adc a,h			;8007	8c 	. 
	ex af,af'			;8008	08 	. 
	adc a,l			;8009	8d 	. 
	nop			;800a	00 	. 
	adc a,(hl)			;800b	8e 	. 
	ex af,af'			;800c	08 	. 
	adc a,a			;800d	8f 	. 
	inc b			;800e	04 	. 
	adc a,b			;800f	88 	. 
	nop			;8010	00 	. 
	nop			;8011	00 	. 
	ex af,af'			;8012	08 	. 
	ex af,af'			;8013	08 	. 
	nop			;8014	00 	. 
	or a			;8015	b7 	. 
	ex af,af'			;8016	08 	. 
	cp b			;8017	b8 	. 
	nop			;8018	00 	. 
	cp c			;8019	b9 	. 
	ex af,af'			;801a	08 	. 
	cp d			;801b	ba 	. 
	inc b			;801c	04 	. 
	adc a,b			;801d	88 	. 
	nop			;801e	00 	. 
	nop			;801f	00 	. 
	ex af,af'			;8020	08 	. 
	ex af,af'			;8021	08 	. 
	nop			;8022	00 	. 
	adc a,h			;8023	8c 	. 
	ex af,af'			;8024	08 	. 
	adc a,l			;8025	8d 	. 
	nop			;8026	00 	. 
	adc a,(hl)			;8027	8e 	. 
	ex af,af'			;8028	08 	. 
	adc a,a			;8029	8f 	. 
	ld (bc),a			;802a	02 	. 
	cpl			;802b	2f 	/ 
	add a,b			;802c	80 	. 
	ld b,e			;802d	43 	C 
	add a,b			;802e	80 	. 
	ld b,000h		;802f	06 00 	. . 
	nop			;8031	00 	. 
	nop			;8032	00 	. 
	ex af,af'			;8033	08 	. 
	ex af,af'			;8034	08 	. 
	djnz l8047h		;8035	10 10 	. . 
	ld bc,00955h		;8037	01 55 09 	. U . 
	ld d,(hl)			;803a	56 	V 
	ld bc,00957h		;803b	01 57 09 	. W . 
l803eh:
	ld e,b			;803e	58 	X 
	nop			;803f	00 	. 
	ld e,c			;8040	59 	Y 
	ex af,af'			;8041	08 	. 
	ld e,d			;8042	5a 	Z 
	ld b,000h		;8043	06 00 	. . 
	nop			;8045	00 	. 
	nop			;8046	00 	. 
l8047h:
	ex af,af'			;8047	08 	. 
	ex af,af'			;8048	08 	. 
	djnz l805bh		;8049	10 10 	. . 
	ld bc,00955h		;804b	01 55 09 	. U . 
	ld d,(hl)			;804e	56 	V 
	ld bc,0095bh		;804f	01 5b 09 	. [ . 
	ld e,h			;8052	5c 	\ 
	nop			;8053	00 	. 
	ld e,c			;8054	59 	Y 
	ex af,af'			;8055	08 	. 
	ld e,d			;8056	5a 	Z 
	inc b			;8057	04 	. 
	adc a,b			;8058	88 	. 
	nop			;8059	00 	. 
	nop			;805a	00 	. 
l805bh:
	ex af,af'			;805b	08 	. 
	ex af,af'			;805c	08 	. 
	nop			;805d	00 	. 
	adc a,b			;805e	88 	. 
	ex af,af'			;805f	08 	. 
	adc a,c			;8060	89 	. 
	nop			;8061	00 	. 
	adc a,d			;8062	8a 	. 
	ex af,af'			;8063	08 	. 
	adc a,e			;8064	8b 	. 
	inc b			;8065	04 	. 
	adc a,b			;8066	88 	. 
	nop			;8067	00 	. 
	nop			;8068	00 	. 
	ex af,af'			;8069	08 	. 
	ex af,af'			;806a	08 	. 
	nop			;806b	00 	. 
	ld e,c			;806c	59 	Y 
	ex af,af'			;806d	08 	. 
	ld e,d			;806e	5a 	Z 
	nop			;806f	00 	. 
	ld e,e			;8070	5b 	[ 
	ex af,af'			;8071	08 	. 
	ld e,h			;8072	5c 	\ 
	ld a,(bc)			;8073	0a 	. 
	nop			;8074	00 	. 
	nop			;8075	00 	. 
	nop			;8076	00 	. 
	ex af,af'			;8077	08 	. 
	ex af,af'			;8078	08 	. 
	ex af,af'			;8079	08 	. 
	ex af,af'			;807a	08 	. 
	djnz l808dh		;807b	10 10 	. . 
	djnz l808fh		;807d	10 10 	. . 
	dec c			;807f	0d 	. 
	ld b,d			;8080	42 	B 
	dec d			;8081	15 	. 
	ld b,e			;8082	43 	C 
	nop			;8083	00 	. 
	ld b,h			;8084	44 	D 
	ex af,af'			;8085	08 	. 
	ld b,l			;8086	45 	E 
	djnz l80cfh		;8087	10 46 	. F 
	jr l80d2h		;8089	18 47 	. G 
	nop			;808b	00 	. 
	ld c,b			;808c	48 	H 
l808dh:
	ex af,af'			;808d	08 	. 
	ld c,c			;808e	49 	I 
l808fh:
	djnz l80dbh		;808f	10 4a 	. J 
	jr l80deh		;8091	18 4b 	. K 
	ld bc,00088h		;8093	01 88 00 	. . . 
	nop			;8096	00 	. 
	djnz l809ah		;8097	10 01 	. . 
	adc a,b			;8099	88 	. 
l809ah:
	nop			;809a	00 	. 
	nop			;809b	00 	. 
	ld de,lbd03h		;809c	11 03 bd 	. . . 
	add a,b			;809f	80 	. 
l80a0h:
	or d			;80a0	b2 	. 
	add a,b			;80a1	80 	. 
	and h			;80a2	a4 	. 
	add a,b			;80a3	80 	. 
	inc b			;80a4	04 	. 
	nop			;80a5	00 	. 
	ret m			;80a6	f8 	. 
	ret m			;80a7	f8 	. 
	nop			;80a8	00 	. 
	nop			;80a9	00 	. 
	inc bc			;80aa	03 	. 
	ld h,b			;80ab	60 	` 
	dec bc			;80ac	0b 	. 
	ld h,c			;80ad	61 	a 
	ld bc,00962h		;80ae	01 62 09 	. b . 
	ld h,e			;80b1	63 	c 
	inc bc			;80b2	03 	. 
	nop			;80b3	00 	. 
	ret m			;80b4	f8 	. 
	nop			;80b5	00 	. 
	nop			;80b6	00 	. 
	dec b			;80b7	05 	. 
	ld h,h			;80b8	64 	d 
	ld (bc),a			;80b9	02 	. 
	ld h,l			;80ba	65 	e 
	ld a,(bc)			;80bb	0a 	. 
	ld h,(hl)			;80bc	66 	f 
	ld (bc),a			;80bd	02 	. 
	nop			;80be	00 	. 
	nop			;80bf	00 	. 
	nop			;80c0	00 	. 
	inc bc			;80c1	03 	. 
	ld h,a			;80c2	67 	g 
	dec bc			;80c3	0b 	. 
	ld l,b			;80c4	68 	h 
	inc b			;80c5	04 	. 
	adc a,b			;80c6	88 	. 
	nop			;80c7	00 	. 
	nop			;80c8	00 	. 
	ex af,af'			;80c9	08 	. 
	ex af,af'			;80ca	08 	. 
	nop			;80cb	00 	. 
	ld a,h			;80cc	7c 	| 
	ex af,af'			;80cd	08 	. 
	ld a,l			;80ce	7d 	} 
l80cfh:
	nop			;80cf	00 	. 
	ld a,(hl)			;80d0	7e 	~ 
	ex af,af'			;80d1	08 	. 
l80d2h:
	ld a,a			;80d2	7f 	 
	inc b			;80d3	04 	. 
	adc a,b			;80d4	88 	. 
	nop			;80d5	00 	. 
	nop			;80d6	00 	. 
	ex af,af'			;80d7	08 	. 
	ex af,af'			;80d8	08 	. 
	nop			;80d9	00 	. 
	adc a,b			;80da	88 	. 
l80dbh:
	ex af,af'			;80db	08 	. 
	adc a,c			;80dc	89 	. 
	nop			;80dd	00 	. 
l80deh:
	adc a,d			;80de	8a 	. 
	ex af,af'			;80df	08 	. 
	adc a,e			;80e0	8b 	. 
	ld bc,0006ch		;80e1	01 6c 00 	. l . 
	nop			;80e4	00 	. 
	rra			;80e5	1f 	. 
	inc b			;80e6	04 	. 
	nop			;80e7	00 	. 
	nop			;80e8	00 	. 
	nop			;80e9	00 	. 
	ex af,af'			;80ea	08 	. 
	ex af,af'			;80eb	08 	. 
	nop			;80ec	00 	. 
	jr l80f7h		;80ed	18 08 	. . 
	add hl,de			;80ef	19 	. 
	nop			;80f0	00 	. 
	ld a,(de)			;80f1	1a 	. 
	ex af,af'			;80f2	08 	. 
	dec de			;80f3	1b 	. 
	inc b			;80f4	04 	. 
	nop			;80f5	00 	. 
	nop			;80f6	00 	. 
l80f7h:
	nop			;80f7	00 	. 
	ex af,af'			;80f8	08 	. 
	ex af,af'			;80f9	08 	. 
	nop			;80fa	00 	. 
	djnz l8105h		;80fb	10 08 	. . 
	ld de,01200h		;80fd	11 00 12 	. . . 
sub_8100h:
	ex af,af'			;8100	08 	. 
	inc de			;8101	13 	. 
	ld (bc),a			;8102	02 	. 
l8103h:
	rlca			;8103	07 	. 
	add a,c			;8104	81 	. 
l8105h:
	inc c			;8105	0c 	. 
	add a,c			;8106	81 	. 
	ld bc,00000h		;8107	01 00 00 	. . . 
	nop			;810a	00 	. 
	ld b,d			;810b	42 	B 
	ld bc,00000h		;810c	01 00 00 	. . . 
	nop			;810f	00 	. 
	ld b,e			;8110	43 	C 
	ld (bc),a			;8111	02 	. 
	ld d,081h		;8112	16 81 	. . 
	dec de			;8114	1b 	. 
	add a,c			;8115	81 	. 
	ld bc,00000h		;8116	01 00 00 	. . . 
	nop			;8119	00 	. 
	ld b,b			;811a	40 	@ 
	ld bc,00000h		;811b	01 00 00 	. . . 
	nop			;811e	00 	. 
	ld b,c			;811f	41 	A 
	ld (bc),a			;8120	02 	. 
	dec h			;8121	25 	% 
	add a,c			;8122	81 	. 
	ld hl,(00181h)		;8123	2a 81 01 	* . . 
	nop			;8126	00 	. 
	nop			;8127	00 	. 
	nop			;8128	00 	. 
	ld a,001h		;8129	3e 01 	> . 
	nop			;812b	00 	. 
	nop			;812c	00 	. 
	nop			;812d	00 	. 
	ccf			;812e	3f 	? 
	ld (bc),a			;812f	02 	. 
	inc (hl)			;8130	34 	4 
	add a,c			;8131	81 	. 
	ld c,b			;8132	48 	H 
	add a,c			;8133	81 	. 
	ld b,000h		;8134	06 00 	. . 
	nop			;8136	00 	. 
	nop			;8137	00 	. 
	ex af,af'			;8138	08 	. 
	ex af,af'			;8139	08 	. 
	djnz l814ch		;813a	10 10 	. . 
	nop			;813c	00 	. 
	ld (hl),d			;813d	72 	r 
	ex af,af'			;813e	08 	. 
	ld (hl),e			;813f	73 	s 
	nop			;8140	00 	. 
	ld (hl),h			;8141	74 	t 
	ex af,af'			;8142	08 	. 
	ld (hl),l			;8143	75 	u 
	nop			;8144	00 	. 
	halt			;8145	76 	v 
	ex af,af'			;8146	08 	. 
	ld (hl),a			;8147	77 	w 
	ld b,000h		;8148	06 00 	. . 
	nop			;814a	00 	. 
	nop			;814b	00 	. 
l814ch:
	ex af,af'			;814c	08 	. 
	ex af,af'			;814d	08 	. 
	djnz l8160h		;814e	10 10 	. . 
	nop			;8150	00 	. 
	ld (hl),d			;8151	72 	r 
l8152h:
	ex af,af'			;8152	08 	. 
	ld (hl),e			;8153	73 	s 
	nop			;8154	00 	. 
	ld a,b			;8155	78 	x 
	ex af,af'			;8156	08 	. 
	ld a,c			;8157	79 	y 
	nop			;8158	00 	. 
	halt			;8159	76 	v 
	ex af,af'			;815a	08 	. 
	ld (hl),a			;815b	77 	w 
	ld b,000h		;815c	06 00 	. . 
	nop			;815e	00 	. 
	nop			;815f	00 	. 
l8160h:
	ex af,af'			;8160	08 	. 
	ex af,af'			;8161	08 	. 
	djnz l8174h		;8162	10 10 	. . 
	nop			;8164	00 	. 
	ld a,d			;8165	7a 	z 
	ex af,af'			;8166	08 	. 
	ld a,e			;8167	7b 	{ 
	nop			;8168	00 	. 
	ld a,h			;8169	7c 	| 
	ex af,af'			;816a	08 	. 
	ld a,l			;816b	7d 	} 
	nop			;816c	00 	. 
	ld a,(hl)			;816d	7e 	~ 
	ex af,af'			;816e	08 	. 
	ld a,a			;816f	7f 	 
	ld (bc),a			;8170	02 	. 
	ld a,(hl)			;8171	7e 	~ 
	add a,c			;8172	81 	. 
	add a,e			;8173	83 	. 
l8174h:
	add a,c			;8174	81 	. 
	inc b			;8175	04 	. 
	ld a,(hl)			;8176	7e 	~ 
	add a,c			;8177	81 	. 
	add a,e			;8178	83 	. 
	add a,c			;8179	81 	. 
	sub c			;817a	91 	. 
	add a,c			;817b	81 	. 
l817ch:
	add a,e			;817c	83 	. 
	add a,c			;817d	81 	. 
	ld bc,00000h		;817e	01 00 00 	. . . 
	nop			;8181	00 	. 
	ld b,h			;8182	44 	D 
	inc b			;8183	04 	. 
	nop			;8184	00 	. 
l8185h:
	call m,004fch		;8185	fc fc 04 	. . . 
	inc b			;8188	04 	. 
	call m,00445h		;8189	fc 45 04 	. E . 
	ld b,(hl)			;818c	46 	F 
	call m,00447h		;818d	fc 47 04 	. G . 
	ld c,b			;8190	48 	H 
	inc c			;8191	0c 	. 
	nop			;8192	00 	. 
	call p,0f4f4h		;8193	f4 f4 f4 	. . . 
l8196h:
	call m,0fcfch		;8196	fc fc fc 	. . . 
	inc b			;8199	04 	. 
	inc b			;819a	04 	. 
	inc b			;819b	04 	. 
	inc c			;819c	0c 	. 
	inc c			;819d	0c 	. 
sub_819eh:
	inc c			;819e	0c 	. 
	ld sp,hl			;819f	f9 	. 
	ld c,c			;81a0	49 	I 
	ld bc,0094ah		;81a1	01 4a 09 	. J . 
	ld c,e			;81a4	4b 	K 
	ret m			;81a5	f8 	. 
	ld c,h			;81a6	4c 	L 
	nop			;81a7	00 	. 
	ld c,l			;81a8	4d 	M 
	ex af,af'			;81a9	08 	. 
	ld c,(hl)			;81aa	4e 	N 
	ret m			;81ab	f8 	. 
	ld c,a			;81ac	4f 	O 
	nop			;81ad	00 	. 
	ld d,b			;81ae	50 	P 
	ex af,af'			;81af	08 	. 
	ld d,c			;81b0	51 	Q 
	ld sp,hl			;81b1	f9 	. 
	ld d,d			;81b2	52 	R 
	ld bc,00953h		;81b3	01 53 09 	. S . 
	ld d,h			;81b6	54 	T 
	ld (bc),a			;81b7	02 	. 
	cp h			;81b8	bc 	. 
	add a,c			;81b9	81 	. 
	ret nc			;81ba	d0 	. 
	add a,c			;81bb	81 	. 
	ld b,054h		;81bc	06 54 	. T 
	nop			;81be	00 	. 
	nop			;81bf	00 	. 
	nop			;81c0	00 	. 
	ex af,af'			;81c1	08 	. 
	ex af,af'			;81c2	08 	. 
	ex af,af'			;81c3	08 	. 
	nop			;81c4	00 	. 
	ld a,l			;81c5	7d 	} 
	ex af,af'			;81c6	08 	. 
	ld a,(hl)			;81c7	7e 	~ 
	djnz l8249h		;81c8	10 7f 	.  
	nop			;81ca	00 	. 
	add a,b			;81cb	80 	. 
	ex af,af'			;81cc	08 	. 
	add a,c			;81cd	81 	. 
	djnz l8152h		;81ce	10 82 	. . 
	ld b,054h		;81d0	06 54 	. T 
	nop			;81d2	00 	. 
	nop			;81d3	00 	. 
	nop			;81d4	00 	. 
	ex af,af'			;81d5	08 	. 
	ex af,af'			;81d6	08 	. 
	ex af,af'			;81d7	08 	. 
	nop			;81d8	00 	. 
	add a,e			;81d9	83 	. 
	ex af,af'			;81da	08 	. 
	add a,h			;81db	84 	. 
	djnz $-121		;81dc	10 85 	. . 
	ld (bc),a			;81de	02 	. 
	add a,(hl)			;81df	86 	. 
	ld a,(bc)			;81e0	0a 	. 
	add a,a			;81e1	87 	. 
	ld (de),a			;81e2	12 	. 
	adc a,b			;81e3	88 	. 
	ld (bc),a			;81e4	02 	. 
	jp (hl)			;81e5	e9 	. 
	add a,c			;81e6	81 	. 
	defb 0fdh,081h,006h	;illegal sequence		;81e7	fd 81 06 	. . . 
	ld e,b			;81ea	58 	X 
	nop			;81eb	00 	. 
	nop			;81ec	00 	. 
	nop			;81ed	00 	. 
	ex af,af'			;81ee	08 	. 
	ex af,af'			;81ef	08 	. 
	ex af,af'			;81f0	08 	. 
	djnz l817ch		;81f1	10 89 	. . 
	ex af,af'			;81f3	08 	. 
	adc a,d			;81f4	8a 	. 
	nop			;81f5	00 	. 
	adc a,e			;81f6	8b 	. 
	djnz l8185h		;81f7	10 8c 	. . 
	ex af,af'			;81f9	08 	. 
	adc a,l			;81fa	8d 	. 
	nop			;81fb	00 	. 
	adc a,(hl)			;81fc	8e 	. 
	ld b,058h		;81fd	06 58 	. X 
	nop			;81ff	00 	. 
	nop			;8200	00 	. 
	nop			;8201	00 	. 
	ex af,af'			;8202	08 	. 
	ex af,af'			;8203	08 	. 
	ex af,af'			;8204	08 	. 
	djnz l8196h		;8205	10 8f 	. . 
	ex af,af'			;8207	08 	. 
	sub b			;8208	90 	. 
	nop			;8209	00 	. 
	sub c			;820a	91 	. 
	ld c,092h		;820b	0e 92 	. . 
	ld b,093h		;820d	06 93 	. . 
	cp 094h		;820f	fe 94 	. . 
	ld (bc),a			;8211	02 	. 
	ld d,082h		;8212	16 82 	. . 
	add hl,sp			;8214	39 	9 
	add a,d			;8215	82 	. 
	dec bc			;8216	0b 	. 
	ld e,h			;8217	5c 	\ 
	nop			;8218	00 	. 
	nop			;8219	00 	. 
	nop			;821a	00 	. 
	ex af,af'			;821b	08 	. 
	ex af,af'			;821c	08 	. 
	ex af,af'			;821d	08 	. 
	djnz l8230h		;821e	10 10 	. . 
	djnz l823ah		;8220	10 18 	. . 
	jr l8226h		;8222	18 02 	. . 
	xor (hl)			;8224	ae 	. 
	ld a,(bc)			;8225	0a 	. 
l8226h:
	xor a			;8226	af 	. 
	ld (de),a			;8227	12 	. 
	or b			;8228	b0 	. 
	ld bc,009b1h		;8229	01 b1 09 	. . . 
	or d			;822c	b2 	. 
	ld de,001b3h		;822d	11 b3 01 	. . . 
l8230h:
	or h			;8230	b4 	. 
	add hl,bc			;8231	09 	. 
	or l			;8232	b5 	. 
	ld de,005b6h		;8233	11 b6 05 	. . . 
	or a			;8236	b7 	. 
	dec c			;8237	0d 	. 
	cp b			;8238	b8 	. 
	dec bc			;8239	0b 	. 
l823ah:
	ld e,h			;823a	5c 	\ 
	nop			;823b	00 	. 
	nop			;823c	00 	. 
	nop			;823d	00 	. 
	ex af,af'			;823e	08 	. 
	ex af,af'			;823f	08 	. 
	ex af,af'			;8240	08 	. 
	djnz l8253h		;8241	10 10 	. . 
	djnz l825dh		;8243	10 18 	. . 
	jr l8249h		;8245	18 02 	. . 
	xor (hl)			;8247	ae 	. 
	ld a,(bc)			;8248	0a 	. 
l8249h:
	xor a			;8249	af 	. 
	ld (de),a			;824a	12 	. 
	or b			;824b	b0 	. 
	ld bc,009b9h		;824c	01 b9 09 	. . . 
	or d			;824f	b2 	. 
	ld de,001bah		;8250	11 ba 01 	. . . 
l8253h:
	cp e			;8253	bb 	. 
	add hl,bc			;8254	09 	. 
	cp h			;8255	bc 	. 
	ld de,005bdh		;8256	11 bd 05 	. . . 
	cp (hl)			;8259	be 	. 
	dec c			;825a	0d 	. 
	cp a			;825b	bf 	. 
	ld (bc),a			;825c	02 	. 
l825dh:
	ld h,c			;825d	61 	a 
	add a,d			;825e	82 	. 
	ld h,(hl)			;825f	66 	f 
	add a,d			;8260	82 	. 
	ld bc,00088h		;8261	01 88 00 	. . . 
	nop			;8264	00 	. 
	xor h			;8265	ac 	. 
	ld bc,00088h		;8266	01 88 00 	. . . 
	nop			;8269	00 	. 
	xor l			;826a	ad 	. 
	ld (bc),a			;826b	02 	. 
	ld (hl),b			;826c	70 	p 
	add a,d			;826d	82 	. 
	ld a,e			;826e	7b 	{ 
	add a,d			;826f	82 	. 
	inc bc			;8270	03 	. 
	ld h,h			;8271	64 	d 
	nop			;8272	00 	. 
	ex af,af'			;8273	08 	. 
	ex af,af'			;8274	08 	. 
	ld a,(bc)			;8275	0a 	. 
	xor b			;8276	a8 	. 
	nop			;8277	00 	. 
	xor c			;8278	a9 	. 
	ex af,af'			;8279	08 	. 
	xor d			;827a	aa 	. 
	inc bc			;827b	03 	. 
	ld h,h			;827c	64 	d 
	nop			;827d	00 	. 
	ex af,af'			;827e	08 	. 
	ex af,af'			;827f	08 	. 
	ex af,af'			;8280	08 	. 
	xor e			;8281	ab 	. 
	nop			;8282	00 	. 
	xor h			;8283	ac 	. 
	ex af,af'			;8284	08 	. 
	xor l			;8285	ad 	. 
	ld (bc),a			;8286	02 	. 
	adc a,e			;8287	8b 	. 
	add a,d			;8288	82 	. 
	sub (hl)			;8289	96 	. 
	add a,d			;828a	82 	. 
	inc bc			;828b	03 	. 
	ld l,b			;828c	68 	h 
	nop			;828d	00 	. 
	ex af,af'			;828e	08 	. 
	ex af,af'			;828f	08 	. 
	cp 0aeh		;8290	fe ae 	. . 
	ex af,af'			;8292	08 	. 
	xor a			;8293	af 	. 
	nop			;8294	00 	. 
	or b			;8295	b0 	. 
	inc bc			;8296	03 	. 
	ld l,b			;8297	68 	h 
	nop			;8298	00 	. 
	ex af,af'			;8299	08 	. 
	ex af,af'			;829a	08 	. 
	nop			;829b	00 	. 
	or c			;829c	b1 	. 
	ex af,af'			;829d	08 	. 
	or d			;829e	b2 	. 
	nop			;829f	00 	. 
	or e			;82a0	b3 	. 
	inc b			;82a1	04 	. 
	ld l,h			;82a2	6c 	l 
	nop			;82a3	00 	. 
	nop			;82a4	00 	. 
	ex af,af'			;82a5	08 	. 
	ex af,af'			;82a6	08 	. 
	nop			;82a7	00 	. 
	sub l			;82a8	95 	. 
	ex af,af'			;82a9	08 	. 
	sub (hl)			;82aa	96 	. 
	nop			;82ab	00 	. 
	sub a			;82ac	97 	. 
l82adh:
	ex af,af'			;82ad	08 	. 
	sbc a,b			;82ae	98 	. 
	inc b			;82af	04 	. 
	ld l,h			;82b0	6c 	l 
	nop			;82b1	00 	. 
	nop			;82b2	00 	. 
	ex af,af'			;82b3	08 	. 
	ex af,af'			;82b4	08 	. 
	nop			;82b5	00 	. 
	sbc a,c			;82b6	99 	. 
	ex af,af'			;82b7	08 	. 
	sbc a,d			;82b8	9a 	. 
	ld bc,0099bh		;82b9	01 9b 09 	. . . 
	sbc a,h			;82bc	9c 	. 
	inc b			;82bd	04 	. 
	ld l,h			;82be	6c 	l 
	nop			;82bf	00 	. 
	nop			;82c0	00 	. 
	ex af,af'			;82c1	08 	. 
	ex af,af'			;82c2	08 	. 
	ex af,af'			;82c3	08 	. 
	sbc a,l			;82c4	9d 	. 
	nop			;82c5	00 	. 
	sbc a,(hl)			;82c6	9e 	. 
	ex af,af'			;82c7	08 	. 
l82c8h:
	sbc a,a			;82c8	9f 	. 
	nop			;82c9	00 	. 
	and b			;82ca	a0 	. 
	inc b			;82cb	04 	. 
	ld l,h			;82cc	6c 	l 
	nop			;82cd	00 	. 
	nop			;82ce	00 	. 
	ex af,af'			;82cf	08 	. 
	ex af,af'			;82d0	08 	. 
	ex af,af'			;82d1	08 	. 
	and c			;82d2	a1 	. 
	nop			;82d3	00 	. 
	and d			;82d4	a2 	. 
	rlca			;82d5	07 	. 
	and e			;82d6	a3 	. 
	rst 38h			;82d7	ff 	. 
	and h			;82d8	a4 	. 
	ld (bc),a			;82d9	02 	. 
	sbc a,082h		;82da	de 82 	. . 
	jp p,00682h		;82dc	f2 82 06 	. . . 
	nop			;82df	00 	. 
	nop			;82e0	00 	. 
	nop			;82e1	00 	. 
	ex af,af'			;82e2	08 	. 
	ex af,af'			;82e3	08 	. 
	djnz l82f6h		;82e4	10 10 	. . 
	ld bc,00995h		;82e6	01 95 09 	. . . 
	sub (hl)			;82e9	96 	. 
	nop			;82ea	00 	. 
	sub a			;82eb	97 	. 
	ex af,af'			;82ec	08 	. 
	sbc a,b			;82ed	98 	. 
	nop			;82ee	00 	. 
	sbc a,c			;82ef	99 	. 
	ex af,af'			;82f0	08 	. 
	sbc a,d			;82f1	9a 	. 
	ld b,000h		;82f2	06 00 	. . 
	nop			;82f4	00 	. 
	nop			;82f5	00 	. 
l82f6h:
	ex af,af'			;82f6	08 	. 
	ex af,af'			;82f7	08 	. 
	djnz l830ah		;82f8	10 10 	. . 
	ld bc,00995h		;82fa	01 95 09 	. . . 
	sub (hl)			;82fd	96 	. 
	nop			;82fe	00 	. 
	sbc a,e			;82ff	9b 	. 
	ex af,af'			;8300	08 	. 
	sbc a,h			;8301	9c 	. 
	nop			;8302	00 	. 
l8303h:
	sbc a,c			;8303	99 	. 
	ex af,af'			;8304	08 	. 
	sbc a,d			;8305	9a 	. 
	ld (bc),a			;8306	02 	. 
	ld sp,04583h		;8307	31 83 45 	1 . E 
l830ah:
	add a,e			;830a	83 	. 
	inc c			;830b	0c 	. 
	nop			;830c	00 	. 
	nop			;830d	00 	. 
	nop			;830e	00 	. 
	nop			;830f	00 	. 
	ex af,af'			;8310	08 	. 
	ex af,af'			;8311	08 	. 
	ex af,af'			;8312	08 	. 
	djnz $+18		;8313	10 10 	. . 
	djnz l832fh		;8315	10 18 	. . 
	jr l8331h		;8317	18 18 	. . 
	nop			;8319	00 	. 
	adc a,h			;831a	8c 	. 
	ex af,af'			;831b	08 	. 
	adc a,l			;831c	8d 	. 
	djnz l82adh		;831d	10 8e 	. . 
	ld bc,0098fh		;831f	01 8f 09 	. . . 
	sub b			;8322	90 	. 
	ld de,00191h		;8323	11 91 01 	. . . 
	sub d			;8326	92 	. 
	add hl,bc			;8327	09 	. 
	sub e			;8328	93 	. 
	ld de,00094h		;8329	11 94 00 	. . . 
	sub l			;832c	95 	. 
	ex af,af'			;832d	08 	. 
	sub (hl)			;832e	96 	. 
l832fh:
	djnz l82c8h		;832f	10 97 	. . 
l8331h:
	ld b,000h		;8331	06 00 	. . 
	ex af,af'			;8333	08 	. 
	ex af,af'			;8334	08 	. 
	djnz l8347h		;8335	10 10 	. . 
	jr l8351h		;8337	18 18 	. . 
	inc b			;8339	04 	. 
	sbc a,b			;833a	98 	. 
	inc c			;833b	0c 	. 
	sbc a,c			;833c	99 	. 
	inc b			;833d	04 	. 
	sbc a,d			;833e	9a 	. 
	inc c			;833f	0c 	. 
	sbc a,e			;8340	9b 	. 
	dec b			;8341	05 	. 
	sbc a,h			;8342	9c 	. 
	dec c			;8343	0d 	. 
	sbc a,l			;8344	9d 	. 
	ld b,000h		;8345	06 00 	. . 
l8347h:
	ex af,af'			;8347	08 	. 
	ex af,af'			;8348	08 	. 
	djnz l835bh		;8349	10 10 	. . 
	jr $+26		;834b	18 18 	. . 
	inc b			;834d	04 	. 
	sbc a,b			;834e	98 	. 
	inc c			;834f	0c 	. 
	sbc a,c			;8350	99 	. 
l8351h:
	inc b			;8351	04 	. 
	sbc a,(hl)			;8352	9e 	. 
	inc c			;8353	0c 	. 
	sbc a,a			;8354	9f 	. 
	dec b			;8355	05 	. 
	sbc a,h			;8356	9c 	. 
	dec c			;8357	0d 	. 
	sbc a,l			;8358	9d 	. 
	inc b			;8359	04 	. 
	ld l,h			;835a	6c 	l 
l835bh:
	nop			;835b	00 	. 
	nop			;835c	00 	. 
	ex af,af'			;835d	08 	. 
	ex af,af'			;835e	08 	. 
	ld bc,00936h		;835f	01 36 09 	. 6 . 
	scf			;8362	37 	7 
	nop			;8363	00 	. 
	jr c,$+10		;8364	38 08 	8 . 
	add hl,sp			;8366	39 	9 
	inc bc			;8367	03 	. 
	ld l,h			;8368	6c 	l 
	nop			;8369	00 	. 
	ex af,af'			;836a	08 	. 
	ex af,af'			;836b	08 	. 
	dec b			;836c	05 	. 
	ld a,(03b03h)		;836d	3a 03 3b 	: . ; 
	dec bc			;8370	0b 	. 
	inc a			;8371	3c 	< 
	inc b			;8372	04 	. 
	ld a,e			;8373	7b 	{ 
	add a,e			;8374	83 	. 
	add a,b			;8375	80 	. 
	add a,e			;8376	83 	. 
	adc a,(hl)			;8377	8e 	. 
	add a,e			;8378	83 	. 
	add a,b			;8379	80 	. 
	add a,e			;837a	83 	. 
	ld bc,00000h		;837b	01 00 00 	. . . 
	nop			;837e	00 	. 
	ld de,07404h		;837f	11 04 74 	. . t 
	call m,004fch		;8382	fc fc 04 	. . . 
	inc b			;8385	04 	. 
	call m,00412h		;8386	fc 12 04 	. . . 
	inc de			;8389	13 	. 
	rst 38h			;838a	ff 	. 
	inc d			;838b	14 	. 
	rlca			;838c	07 	. 
	dec d			;838d	15 	. 
l838eh:
	add hl,bc			;838e	09 	. 
	nop			;838f	00 	. 
	ret m			;8390	f8 	. 
	ret m			;8391	f8 	. 
	ret m			;8392	f8 	. 
	nop			;8393	00 	. 
	nop			;8394	00 	. 
	nop			;8395	00 	. 
	ex af,af'			;8396	08 	. 
	ex af,af'			;8397	08 	. 
l8398h:
	ex af,af'			;8398	08 	. 
	jp m,00216h		;8399	fa 16 02 	. . . 
	rla			;839c	17 	. 
	ld a,(bc)			;839d	0a 	. 
	jr l8398h		;839e	18 f8 	. . 
	add hl,de			;83a0	19 	. 
	nop			;83a1	00 	. 
	ld a,(de)			;83a2	1a 	. 
	ex af,af'			;83a3	08 	. 
	dec de			;83a4	1b 	. 
	jp m,0021ch		;83a5	fa 1c 02 	. . . 
	dec e			;83a8	1d 	. 
	ld a,(bc)			;83a9	0a 	. 
	ld e,002h		;83aa	1e 02 	. . 
	or b			;83ac	b0 	. 
	add a,e			;83ad	83 	. 
	call nz,00683h		;83ae	c4 83 06 	. . . 
	ld a,b			;83b1	78 	x 
	nop			;83b2	00 	. 
	nop			;83b3	00 	. 
	nop			;83b4	00 	. 
	ex af,af'			;83b5	08 	. 
	ex af,af'			;83b6	08 	. 
	ex af,af'			;83b7	08 	. 
	ld (bc),a			;83b8	02 	. 
	ld h,l			;83b9	65 	e 
	ld a,(bc)			;83ba	0a 	. 
	ld h,(hl)			;83bb	66 	f 
	ld (de),a			;83bc	12 	. 
	ld h,a			;83bd	67 	g 
	nop			;83be	00 	. 
	ld l,b			;83bf	68 	h 
	ex af,af'			;83c0	08 	. 
	ld l,c			;83c1	69 	i 
	djnz l842eh		;83c2	10 6a 	. j 
	ld b,078h		;83c4	06 78 	. x 
	nop			;83c6	00 	. 
	nop			;83c7	00 	. 
	nop			;83c8	00 	. 
	ex af,af'			;83c9	08 	. 
	ex af,af'			;83ca	08 	. 
	ex af,af'			;83cb	08 	. 
	ld (bc),a			;83cc	02 	. 
	ld l,e			;83cd	6b 	k 
	ld a,(bc)			;83ce	0a 	. 
	ld l,h			;83cf	6c 	l 
	ld (de),a			;83d0	12 	. 
	ld l,l			;83d1	6d 	m 
	nop			;83d2	00 	. 
	ld l,(hl)			;83d3	6e 	n 
	ex af,af'			;83d4	08 	. 
	ld l,a			;83d5	6f 	o 
	djnz l8448h		;83d6	10 70 	. p 
	ld (bc),a			;83d8	02 	. 
	defb 0ddh,083h,0f1h	;illegal sequence		;83d9	dd 83 f1 	. . . 
	add a,e			;83dc	83 	. 
	ld b,07ch		;83dd	06 7c 	. | 
	nop			;83df	00 	. 
	nop			;83e0	00 	. 
	nop			;83e1	00 	. 
	ex af,af'			;83e2	08 	. 
	ex af,af'			;83e3	08 	. 
	ex af,af'			;83e4	08 	. 
	ld c,071h		;83e5	0e 71 	. q 
	ld b,072h		;83e7	06 72 	. r 
	cp 073h		;83e9	fe 73 	. s 
	djnz l8461h		;83eb	10 74 	. t 
	ex af,af'			;83ed	08 	. 
	ld (hl),l			;83ee	75 	u 
	nop			;83ef	00 	. 
	halt			;83f0	76 	v 
	ld b,07ch		;83f1	06 7c 	. | 
	nop			;83f3	00 	. 
	nop			;83f4	00 	. 
	nop			;83f5	00 	. 
	ex af,af'			;83f6	08 	. 
	ex af,af'			;83f7	08 	. 
	ex af,af'			;83f8	08 	. 
	ld c,077h		;83f9	0e 77 	. w 
	ld b,078h		;83fb	06 78 	. x 
	cp 079h		;83fd	fe 79 	. y 
	djnz l847bh		;83ff	10 7a 	. z 
	ex af,af'			;8401	08 	. 
	ld a,e			;8402	7b 	{ 
	nop			;8403	00 	. 
	ld a,h			;8404	7c 	| 
	ld (bc),a			;8405	02 	. 
	ld a,(bc)			;8406	0a 	. 
	add a,h			;8407	84 	. 
	jr nc,l838eh		;8408	30 84 	0 . 
	inc c			;840a	0c 	. 
	add a,b			;840b	80 	. 
	nop			;840c	00 	. 
	nop			;840d	00 	. 
	nop			;840e	00 	. 
	nop			;840f	00 	. 
	ex af,af'			;8410	08 	. 
	ex af,af'			;8411	08 	. 
	ex af,af'			;8412	08 	. 
	ex af,af'			;8413	08 	. 
	djnz l8426h		;8414	10 10 	. . 
	djnz l8428h		;8416	10 10 	. . 
	ld d,077h		;8418	16 77 	. w 
	ld c,078h		;841a	0e 78 	. x 
	ld b,079h		;841c	06 79 	. y 
	cp 07ah		;841e	fe 7a 	. z 
	jr l849dh		;8420	18 7b 	. { 
	djnz l84a0h		;8422	10 7c 	. | 
	ex af,af'			;8424	08 	. 
	ld a,l			;8425	7d 	} 
l8426h:
	nop			;8426	00 	. 
	ld a,(hl)			;8427	7e 	~ 
l8428h:
	dec d			;8428	15 	. 
	ld a,a			;8429	7f 	 
	dec c			;842a	0d 	. 
	add a,b			;842b	80 	. 
	inc b			;842c	04 	. 
	add a,c			;842d	81 	. 
l842eh:
	call m,00b82h		;842e	fc 82 0b 	. . . 
	add a,b			;8431	80 	. 
	nop			;8432	00 	. 
	nop			;8433	00 	. 
	nop			;8434	00 	. 
	nop			;8435	00 	. 
	ex af,af'			;8436	08 	. 
	ex af,af'			;8437	08 	. 
	ex af,af'			;8438	08 	. 
	ex af,af'			;8439	08 	. 
	djnz l844ch		;843a	10 10 	. . 
	djnz l8453h		;843c	10 15 	. . 
	add a,e			;843e	83 	. 
	dec c			;843f	0d 	. 
	add a,h			;8440	84 	. 
	dec b			;8441	05 	. 
	add a,l			;8442	85 	. 
	add a,(iy+017h)		;8443	fd 86 17 	. . . 
	add a,a			;8446	87 	. 
	rrca			;8447	0f 	. 
l8448h:
	adc a,b			;8448	88 	. 
	rlca			;8449	07 	. 
	adc a,c			;844a	89 	. 
	rst 38h			;844b	ff 	. 
l844ch:
	adc a,d			;844c	8a 	. 
	ld d,08bh		;844d	16 8b 	. . 
	dec c			;844f	0d 	. 
	adc a,h			;8450	8c 	. 
	dec b			;8451	05 	. 
sub_8452h:
	adc a,l			;8452	8d 	. 
l8453h:
	ld (bc),a			;8453	02 	. 
	ld e,b			;8454	58 	X 
	add a,h			;8455	84 	. 
	ld a,(hl)			;8456	7e 	~ 
	add a,h			;8457	84 	. 
	inc c			;8458	0c 	. 
	add a,b			;8459	80 	. 
	nop			;845a	00 	. 
	nop			;845b	00 	. 
	nop			;845c	00 	. 
	nop			;845d	00 	. 
	ex af,af'			;845e	08 	. 
	ex af,af'			;845f	08 	. 
	ex af,af'			;8460	08 	. 
l8461h:
	ex af,af'			;8461	08 	. 
	djnz l8474h		;8462	10 10 	. . 
	djnz l8476h		;8464	10 10 	. . 
	ld (bc),a			;8466	02 	. 
	ld h,b			;8467	60 	` 
	ld a,(bc)			;8468	0a 	. 
	ld h,c			;8469	61 	a 
	ld (de),a			;846a	12 	. 
	ld h,d			;846b	62 	b 
	ld a,(de)			;846c	1a 	. 
	ld h,e			;846d	63 	c 
	nop			;846e	00 	. 
	ld h,h			;846f	64 	d 
	ex af,af'			;8470	08 	. 
	ld h,l			;8471	65 	e 
	djnz l84dah		;8472	10 66 	. f 
l8474h:
	jr l84ddh		;8474	18 67 	. g 
l8476h:
	inc bc			;8476	03 	. 
	ld l,b			;8477	68 	h 
	dec bc			;8478	0b 	. 
	ld l,c			;8479	69 	i 
	inc d			;847a	14 	. 
l847bh:
	ld l,d			;847b	6a 	j 
	inc e			;847c	1c 	. 
	ld l,e			;847d	6b 	k 
	dec bc			;847e	0b 	. 
	add a,b			;847f	80 	. 
	nop			;8480	00 	. 
	nop			;8481	00 	. 
	nop			;8482	00 	. 
	nop			;8483	00 	. 
	ex af,af'			;8484	08 	. 
	ex af,af'			;8485	08 	. 
	ex af,af'			;8486	08 	. 
	ex af,af'			;8487	08 	. 
	djnz l849ah		;8488	10 10 	. . 
	djnz l848fh		;848a	10 03 	. . 
	ld l,h			;848c	6c 	l 
	dec bc			;848d	0b 	. 
	ld l,l			;848e	6d 	m 
l848fh:
	inc de			;848f	13 	. 
	ld l,(hl)			;8490	6e 	n 
	dec de			;8491	1b 	. 
	ld l,a			;8492	6f 	o 
	ld bc,00970h		;8493	01 70 09 	. p . 
	ld (hl),c			;8496	71 	q 
	ld de,01972h		;8497	11 72 19 	. r . 
l849ah:
	ld (hl),e			;849a	73 	s 
	ld (bc),a			;849b	02 	. 
	ld (hl),h			;849c	74 	t 
l849dh:
	dec bc			;849d	0b 	. 
	ld (hl),l			;849e	75 	u 
	inc de			;849f	13 	. 
l84a0h:
	halt			;84a0	76 	v 
	ld (bc),a			;84a1	02 	. 
	and (hl)			;84a2	a6 	. 
	add a,h			;84a3	84 	. 
	or h			;84a4	b4 	. 
	add a,h			;84a5	84 	. 
	inc b			;84a6	04 	. 
	add a,h			;84a7	84 	. 
	nop			;84a8	00 	. 
	nop			;84a9	00 	. 
	ex af,af'			;84aa	08 	. 
	ex af,af'			;84ab	08 	. 
	nop			;84ac	00 	. 
	sub h			;84ad	94 	. 
	ex af,af'			;84ae	08 	. 
	sub l			;84af	95 	. 
	nop			;84b0	00 	. 
	sub (hl)			;84b1	96 	. 
	ex af,af'			;84b2	08 	. 
	sub a			;84b3	97 	. 
	inc b			;84b4	04 	. 
	add a,h			;84b5	84 	. 
	nop			;84b6	00 	. 
	nop			;84b7	00 	. 
	ex af,af'			;84b8	08 	. 
	ex af,af'			;84b9	08 	. 
	nop			;84ba	00 	. 
	sub h			;84bb	94 	. 
	ex af,af'			;84bc	08 	. 
	sbc a,b			;84bd	98 	. 
	nop			;84be	00 	. 
	sub (hl)			;84bf	96 	. 
	ex af,af'			;84c0	08 	. 
	sbc a,c			;84c1	99 	. 
	ld (bc),a			;84c2	02 	. 
	rst 0			;84c3	c7 	. 
	add a,h			;84c4	84 	. 
	push de			;84c5	d5 	. 
	add a,h			;84c6	84 	. 
	inc b			;84c7	04 	. 
	add a,h			;84c8	84 	. 
	nop			;84c9	00 	. 
	nop			;84ca	00 	. 
	ex af,af'			;84cb	08 	. 
	ex af,af'			;84cc	08 	. 
	ex af,af'			;84cd	08 	. 
	sbc a,d			;84ce	9a 	. 
	nop			;84cf	00 	. 
	sbc a,e			;84d0	9b 	. 
	ex af,af'			;84d1	08 	. 
	sbc a,h			;84d2	9c 	. 
	nop			;84d3	00 	. 
	sbc a,l			;84d4	9d 	. 
	inc b			;84d5	04 	. 
	add a,h			;84d6	84 	. 
	nop			;84d7	00 	. 
	nop			;84d8	00 	. 
	ex af,af'			;84d9	08 	. 
l84dah:
	ex af,af'			;84da	08 	. 
	ex af,af'			;84db	08 	. 
	sbc a,d			;84dc	9a 	. 
l84ddh:
	nop			;84dd	00 	. 
	sbc a,(hl)			;84de	9e 	. 
	ex af,af'			;84df	08 	. 
	sbc a,h			;84e0	9c 	. 
	nop			;84e1	00 	. 
	sbc a,a			;84e2	9f 	. 
	ld bc,00088h		;84e3	01 88 00 	. . . 
	nop			;84e6	00 	. 
	cp a			;84e7	bf 	. 
	ld bc,00088h		;84e8	01 88 00 	. . . 
	nop			;84eb	00 	. 
	djnz l84f0h		;84ec	10 02 	. . 
	add hl,bc			;84ee	09 	. 
	add a,l			;84ef	85 	. 
l84f0h:
	jp p,00784h		;84f0	f2 84 07 	. . . 
	adc a,h			;84f3	8c 	. 
	nop			;84f4	00 	. 
	nop			;84f5	00 	. 
	nop			;84f6	00 	. 
	ex af,af'			;84f7	08 	. 
	ex af,af'			;84f8	08 	. 
	djnz l850bh		;84f9	10 10 	. . 
	nop			;84fb	00 	. 
	ld h,b			;84fc	60 	` 
	nop			;84fd	00 	. 
	ld d,l			;84fe	55 	U 
	ex af,af'			;84ff	08 	. 
	ld d,(hl)			;8500	56 	V 
	nop			;8501	00 	. 
	ld d,a			;8502	57 	W 
l8503h:
	ex af,af'			;8503	08 	. 
	ld e,b			;8504	58 	X 
	ld bc,00959h		;8505	01 59 09 	. Y . 
	ld e,d			;8508	5a 	Z 
	ld b,08ch		;8509	06 8c 	. . 
l850bh:
	nop			;850b	00 	. 
	nop			;850c	00 	. 
	ex af,af'			;850d	08 	. 
	ex af,af'			;850e	08 	. 
	djnz l8521h		;850f	10 10 	. . 
	ld bc,0095bh		;8511	01 5b 09 	. [ . 
	ld e,h			;8514	5c 	\ 
	ld bc,0095dh		;8515	01 5d 09 	. ] . 
	ld e,(hl)			;8518	5e 	^ 
	ld bc,0095fh		;8519	01 5f 09 	. _ . 
	ld e,d			;851c	5a 	Z 
	ld bc,00088h		;851d	01 88 00 	. . . 
	nop			;8520	00 	. 
l8521h:
	ld h,b			;8521	60 	` 
	ld (bc),a			;8522	02 	. 
	daa			;8523	27 	' 
	add a,l			;8524	85 	. 
	cpl			;8525	2f 	/ 
	add a,l			;8526	85 	. 
	ld (bc),a			;8527	02 	. 
	sub b			;8528	90 	. 
	nop			;8529	00 	. 
	ex af,af'			;852a	08 	. 
	nop			;852b	00 	. 
	djnz $+3		;852c	10 01 	. . 
	ld de,l9002h		;852e	11 02 90 	. . . 
	nop			;8531	00 	. 
	ex af,af'			;8532	08 	. 
	nop			;8533	00 	. 
	ld (de),a			;8534	12 	. 
	nop			;8535	00 	. 
	inc de			;8536	13 	. 
	ld (bc),a			;8537	02 	. 
	inc a			;8538	3c 	< 
	add a,l			;8539	85 	. 
	ld b,h			;853a	44 	D 
	add a,l			;853b	85 	. 
	ld (bc),a			;853c	02 	. 
	sub b			;853d	90 	. 
	nop			;853e	00 	. 
	ex af,af'			;853f	08 	. 
	nop			;8540	00 	. 
	inc d			;8541	14 	. 
	rst 38h			;8542	ff 	. 
	dec d			;8543	15 	. 
	ld (bc),a			;8544	02 	. 
	sub b			;8545	90 	. 
	nop			;8546	00 	. 
	ex af,af'			;8547	08 	. 
	nop			;8548	00 	. 
	ld d,000h		;8549	16 00 	. . 
	rla			;854b	17 	. 
	inc b			;854c	04 	. 
	sbc a,b			;854d	98 	. 
	nop			;854e	00 	. 
	nop			;854f	00 	. 
	ex af,af'			;8550	08 	. 
	ex af,af'			;8551	08 	. 
	nop			;8552	00 	. 
	add a,b			;8553	80 	. 
	ex af,af'			;8554	08 	. 
	add a,c			;8555	81 	. 
	nop			;8556	00 	. 
	add a,d			;8557	82 	. 
	ex af,af'			;8558	08 	. 
	add a,e			;8559	83 	. 
	ld b,098h		;855a	06 98 	. . 
	ret m			;855c	f8 	. 
	ret m			;855d	f8 	. 
	nop			;855e	00 	. 
	nop			;855f	00 	. 
	ex af,af'			;8560	08 	. 
	ex af,af'			;8561	08 	. 
	nop			;8562	00 	. 
	add a,b			;8563	80 	. 
	ex af,af'			;8564	08 	. 
	add a,c			;8565	81 	. 
	ld bc,00984h		;8566	01 84 09 	. . . 
	add a,l			;8569	85 	. 
	inc b			;856a	04 	. 
	add a,(hl)			;856b	86 	. 
	inc c			;856c	0c 	. 
	add a,a			;856d	87 	. 
	rlca			;856e	07 	. 
	sbc a,h			;856f	9c 	. 
	nop			;8570	00 	. 
	nop			;8571	00 	. 
	ex af,af'			;8572	08 	. 
	ex af,af'			;8573	08 	. 
	djnz l858eh		;8574	10 18 	. . 
	jr nz,l8579h		;8576	20 01 	  . 
	cp e			;8578	bb 	. 
l8579h:
	add hl,bc			;8579	09 	. 
	cp h			;857a	bc 	. 
	ld bc,009bdh		;857b	01 bd 09 	. . . 
	cp (hl)			;857e	be 	. 
	rlca			;857f	07 	. 
	cp a			;8580	bf 	. 
	rlca			;8581	07 	. 
	cp a			;8582	bf 	. 
	rlca			;8583	07 	. 
	cp a			;8584	bf 	. 
	ld (bc),a			;8585	02 	. 
	adc a,d			;8586	8a 	. 
l8587h:
	add a,l			;8587	85 	. 
	sbc a,b			;8588	98 	. 
	add a,l			;8589	85 	. 
l858ah:
	inc b			;858a	04 	. 
	add a,h			;858b	84 	. 
	nop			;858c	00 	. 
	nop			;858d	00 	. 
l858eh:
	ex af,af'			;858e	08 	. 
	ex af,af'			;858f	08 	. 
	nop			;8590	00 	. 
	or h			;8591	b4 	. 
	ex af,af'			;8592	08 	. 
	or l			;8593	b5 	. 
	ld bc,009b6h		;8594	01 b6 09 	. . . 
	or a			;8597	b7 	. 
	inc b			;8598	04 	. 
	add a,h			;8599	84 	. 
	nop			;859a	00 	. 
	nop			;859b	00 	. 
	ex af,af'			;859c	08 	. 
	ex af,af'			;859d	08 	. 
	ld bc,009b8h		;859e	01 b8 09 	. . . 
	cp c			;85a1	b9 	. 
	ld bc,009b6h		;85a2	01 b6 09 	. . . 
	or a			;85a5	b7 	. 
	ld (bc),a			;85a6	02 	. 
	xor e			;85a7	ab 	. 
	add a,l			;85a8	85 	. 
	cp c			;85a9	b9 	. 
	add a,l			;85aa	85 	. 
	inc b			;85ab	04 	. 
	add a,h			;85ac	84 	. 
	nop			;85ad	00 	. 
	nop			;85ae	00 	. 
	ex af,af'			;85af	08 	. 
	ex af,af'			;85b0	08 	. 
	ld (bc),a			;85b1	02 	. 
	and b			;85b2	a0 	. 
	ld a,(bc)			;85b3	0a 	. 
	and c			;85b4	a1 	. 
	ld bc,009a2h		;85b5	01 a2 09 	. . . 
	and e			;85b8	a3 	. 
	inc b			;85b9	04 	. 
	add a,h			;85ba	84 	. 
	nop			;85bb	00 	. 
	nop			;85bc	00 	. 
	ex af,af'			;85bd	08 	. 
	ex af,af'			;85be	08 	. 
	ld (bc),a			;85bf	02 	. 
	and h			;85c0	a4 	. 
	ld a,(bc)			;85c1	0a 	. 
	and l			;85c2	a5 	. 
	nop			;85c3	00 	. 
	and (hl)			;85c4	a6 	. 
l85c5h:
	ex af,af'			;85c5	08 	. 
	and a			;85c6	a7 	. 
	inc b			;85c7	04 	. 
	adc a,b			;85c8	88 	. 
	nop			;85c9	00 	. 
	nop			;85ca	00 	. 
	ex af,af'			;85cb	08 	. 
	ex af,af'			;85cc	08 	. 
	nop			;85cd	00 	. 
	ld b,008h		;85ce	06 08 	. . 
	rlca			;85d0	07 	. 
	nop			;85d1	00 	. 
	ex af,af'			;85d2	08 	. 
	ex af,af'			;85d3	08 	. 
	add hl,bc			;85d4	09 	. 
	ld b,000h		;85d5	06 00 	. . 
	nop			;85d7	00 	. 
	nop			;85d8	00 	. 
	nop			;85d9	00 	. 
	ex af,af'			;85da	08 	. 
	ex af,af'			;85db	08 	. 
	ex af,af'			;85dc	08 	. 
l85ddh:
	ld bc,00999h		;85dd	01 99 09 	. . . 
	sbc a,d			;85e0	9a 	. 
	ld de,0009bh		;85e1	11 9b 00 	. . . 
	sbc a,h			;85e4	9c 	. 
	ex af,af'			;85e5	08 	. 
	sbc a,l			;85e6	9d 	. 
	djnz l8587h		;85e7	10 9e 	. . 
	inc d			;85e9	14 	. 
	ld (de),a			;85ea	12 	. 
	add a,(hl)			;85eb	86 	. 
	add hl,hl			;85ec	29 	) 
	add a,(hl)			;85ed	86 	. 
	ld b,e			;85ee	43 	C 
	add a,(hl)			;85ef	86 	. 
	ld h,b			;85f0	60 	` 
	add a,(hl)			;85f1	86 	. 
	add a,b			;85f2	80 	. 
	add a,(hl)			;85f3	86 	. 
	and e			;85f4	a3 	. 
	add a,(hl)			;85f5	86 	. 
	ret			;85f6	c9 	. 
	add a,(hl)			;85f7	86 	. 
l85f8h:
	jp p,01e86h		;85f8	f2 86 1e 	. . . 
	add a,a			;85fb	87 	. 
	ld c,l			;85fc	4d 	M 
	add a,a			;85fd	87 	. 
	ld a,a			;85fe	7f 	 
	add a,a			;85ff	87 	. 
	or h			;8600	b4 	. 
	add a,a			;8601	87 	. 
	call pe,02787h		;8602	ec 87 27 	. . ' 
	adc a,b			;8605	88 	. 
	ld h,l			;8606	65 	e 
	adc a,b			;8607	88 	. 
	and (hl)			;8608	a6 	. 
	adc a,b			;8609	88 	. 
	jp pe,03188h		;860a	ea 88 31 	. . 1 
	adc a,c			;860d	89 	. 
	ld a,e			;860e	7b 	{ 
	adc a,c			;860f	89 	. 
	ret z			;8610	c8 	. 
	adc a,c			;8611	89 	. 
	rlca			;8612	07 	. 
	cp h			;8613	bc 	. 
	nop			;8614	00 	. 
	nop			;8615	00 	. 
l8616h:
	nop			;8616	00 	. 
	ex af,af'			;8617	08 	. 
	ex af,af'			;8618	08 	. 
	ex af,af'			;8619	08 	. 
	djnz l861dh		;861a	10 01 	. . 
	sbc a,c			;861c	99 	. 
l861dh:
	add hl,bc			;861d	09 	. 
	sbc a,d			;861e	9a 	. 
	ld de,0009bh		;861f	11 9b 00 	. . . 
	sbc a,h			;8622	9c 	. 
	ex af,af'			;8623	08 	. 
	sbc a,l			;8624	9d 	. 
	djnz l85c5h		;8625	10 9e 	. . 
	ex af,af'			;8627	08 	. 
	sbc a,a			;8628	9f 	. 
	ex af,af'			;8629	08 	. 
	cp h			;862a	bc 	. 
	nop			;862b	00 	. 
	nop			;862c	00 	. 
	nop			;862d	00 	. 
	ex af,af'			;862e	08 	. 
	ex af,af'			;862f	08 	. 
	ex af,af'			;8630	08 	. 
	djnz l864bh		;8631	10 18 	. . 
	ld bc,00999h		;8633	01 99 09 	. . . 
	sbc a,d			;8636	9a 	. 
l8637h:
	ld de,0009bh		;8637	11 9b 00 	. . . 
	sbc a,h			;863a	9c 	. 
	ex af,af'			;863b	08 	. 
	sbc a,l			;863c	9d 	. 
	djnz l85ddh		;863d	10 9e 	. . 
	ex af,af'			;863f	08 	. 
	sbc a,a			;8640	9f 	. 
	ex af,af'			;8641	08 	. 
	sbc a,a			;8642	9f 	. 
	add hl,bc			;8643	09 	. 
	cp h			;8644	bc 	. 
	nop			;8645	00 	. 
	nop			;8646	00 	. 
	nop			;8647	00 	. 
	ex af,af'			;8648	08 	. 
	ex af,af'			;8649	08 	. 
	ex af,af'			;864a	08 	. 
l864bh:
	djnz l8665h		;864b	10 18 	. . 
	jr nz,l8650h		;864d	20 01 	  . 
	sbc a,c			;864f	99 	. 
l8650h:
	add hl,bc			;8650	09 	. 
	sbc a,d			;8651	9a 	. 
	ld de,0009bh		;8652	11 9b 00 	. . . 
	sbc a,h			;8655	9c 	. 
	ex af,af'			;8656	08 	. 
	sbc a,l			;8657	9d 	. 
	djnz l85f8h		;8658	10 9e 	. . 
	ex af,af'			;865a	08 	. 
l865bh:
	sbc a,a			;865b	9f 	. 
	ex af,af'			;865c	08 	. 
	sbc a,a			;865d	9f 	. 
	ex af,af'			;865e	08 	. 
	sbc a,a			;865f	9f 	. 
	ld a,(bc)			;8660	0a 	. 
	cp h			;8661	bc 	. 
	nop			;8662	00 	. 
	nop			;8663	00 	. 
	nop			;8664	00 	. 
l8665h:
	ex af,af'			;8665	08 	. 
	ex af,af'			;8666	08 	. 
	ex af,af'			;8667	08 	. 
	djnz l8682h		;8668	10 18 	. . 
	jr nz,l8694h		;866a	20 28 	  ( 
	ld bc,00999h		;866c	01 99 09 	. . . 
	sbc a,d			;866f	9a 	. 
	ld de,0009bh		;8670	11 9b 00 	. . . 
	sbc a,h			;8673	9c 	. 
	ex af,af'			;8674	08 	. 
	sbc a,l			;8675	9d 	. 
	djnz l8616h		;8676	10 9e 	. . 
	ex af,af'			;8678	08 	. 
	sbc a,a			;8679	9f 	. 
	ex af,af'			;867a	08 	. 
	sbc a,a			;867b	9f 	. 
	ex af,af'			;867c	08 	. 
	sbc a,a			;867d	9f 	. 
	ex af,af'			;867e	08 	. 
	sbc a,a			;867f	9f 	. 
	dec bc			;8680	0b 	. 
	cp h			;8681	bc 	. 
l8682h:
	nop			;8682	00 	. 
	nop			;8683	00 	. 
	nop			;8684	00 	. 
	ex af,af'			;8685	08 	. 
	ex af,af'			;8686	08 	. 
	ex af,af'			;8687	08 	. 
	djnz l86a2h		;8688	10 18 	. . 
	jr nz,l86b4h		;868a	20 28 	  ( 
	jr nc,l868fh		;868c	30 01 	0 . 
	sbc a,c			;868e	99 	. 
l868fh:
	add hl,bc			;868f	09 	. 
	sbc a,d			;8690	9a 	. 
	ld de,0009bh		;8691	11 9b 00 	. . . 
l8694h:
	sbc a,h			;8694	9c 	. 
	ex af,af'			;8695	08 	. 
	sbc a,l			;8696	9d 	. 
	djnz l8637h		;8697	10 9e 	. . 
	ex af,af'			;8699	08 	. 
	sbc a,a			;869a	9f 	. 
	ex af,af'			;869b	08 	. 
	sbc a,a			;869c	9f 	. 
	ex af,af'			;869d	08 	. 
	sbc a,a			;869e	9f 	. 
	ex af,af'			;869f	08 	. 
	sbc a,a			;86a0	9f 	. 
	ex af,af'			;86a1	08 	. 
l86a2h:
	sbc a,a			;86a2	9f 	. 
	inc c			;86a3	0c 	. 
	cp h			;86a4	bc 	. 
	nop			;86a5	00 	. 
	nop			;86a6	00 	. 
	nop			;86a7	00 	. 
	ex af,af'			;86a8	08 	. 
	ex af,af'			;86a9	08 	. 
	ex af,af'			;86aa	08 	. 
	djnz l86c5h		;86ab	10 18 	. . 
	jr nz,l86d7h		;86ad	20 28 	  ( 
	jr nc,l86e9h		;86af	30 38 	0 8 
	ld bc,00999h		;86b1	01 99 09 	. . . 
l86b4h:
	sbc a,d			;86b4	9a 	. 
	ld de,0009bh		;86b5	11 9b 00 	. . . 
	sbc a,h			;86b8	9c 	. 
	ex af,af'			;86b9	08 	. 
	sbc a,l			;86ba	9d 	. 
	djnz l865bh		;86bb	10 9e 	. . 
	ex af,af'			;86bd	08 	. 
sub_86beh:
	sbc a,a			;86be	9f 	. 
	ex af,af'			;86bf	08 	. 
	sbc a,a			;86c0	9f 	. 
	ex af,af'			;86c1	08 	. 
	sbc a,a			;86c2	9f 	. 
	ex af,af'			;86c3	08 	. 
	sbc a,a			;86c4	9f 	. 
l86c5h:
	ex af,af'			;86c5	08 	. 
	sbc a,a			;86c6	9f 	. 
	ex af,af'			;86c7	08 	. 
	sbc a,a			;86c8	9f 	. 
	dec c			;86c9	0d 	. 
	cp h			;86ca	bc 	. 
	nop			;86cb	00 	. 
	nop			;86cc	00 	. 
	nop			;86cd	00 	. 
	ex af,af'			;86ce	08 	. 
	ex af,af'			;86cf	08 	. 
	ex af,af'			;86d0	08 	. 
	djnz l86ebh		;86d1	10 18 	. . 
	jr nz,$+42		;86d3	20 28 	  ( 
	jr nc,l870fh		;86d5	30 38 	0 8 
l86d7h:
	ld b,b			;86d7	40 	@ 
	ld bc,00999h		;86d8	01 99 09 	. . . 
	sbc a,d			;86db	9a 	. 
	ld de,0009bh		;86dc	11 9b 00 	. . . 
	sbc a,h			;86df	9c 	. 
	ex af,af'			;86e0	08 	. 
	sbc a,l			;86e1	9d 	. 
	djnz l8682h		;86e2	10 9e 	. . 
	ex af,af'			;86e4	08 	. 
	sbc a,a			;86e5	9f 	. 
	ex af,af'			;86e6	08 	. 
	sbc a,a			;86e7	9f 	. 
	ex af,af'			;86e8	08 	. 
l86e9h:
	sbc a,a			;86e9	9f 	. 
	ex af,af'			;86ea	08 	. 
l86ebh:
	sbc a,a			;86eb	9f 	. 
	ex af,af'			;86ec	08 	. 
	sbc a,a			;86ed	9f 	. 
	ex af,af'			;86ee	08 	. 
	sbc a,a			;86ef	9f 	. 
	ex af,af'			;86f0	08 	. 
	sbc a,a			;86f1	9f 	. 
	ld c,0bch		;86f2	0e bc 	. . 
	nop			;86f4	00 	. 
	nop			;86f5	00 	. 
	nop			;86f6	00 	. 
	ex af,af'			;86f7	08 	. 
	ex af,af'			;86f8	08 	. 
	ex af,af'			;86f9	08 	. 
	djnz l8714h		;86fa	10 18 	. . 
	jr nz,l8726h		;86fc	20 28 	  ( 
	jr nc,l8738h		;86fe	30 38 	0 8 
	ld b,b			;8700	40 	@ 
	ld c,b			;8701	48 	H 
	ld bc,00999h		;8702	01 99 09 	. . . 
	sbc a,d			;8705	9a 	. 
	ld de,0009bh		;8706	11 9b 00 	. . . 
l8709h:
	sbc a,h			;8709	9c 	. 
	ex af,af'			;870a	08 	. 
	sbc a,l			;870b	9d 	. 
	djnz $-96		;870c	10 9e 	. . 
	ex af,af'			;870e	08 	. 
l870fh:
	sbc a,a			;870f	9f 	. 
	ex af,af'			;8710	08 	. 
	sbc a,a			;8711	9f 	. 
	ex af,af'			;8712	08 	. 
	sbc a,a			;8713	9f 	. 
l8714h:
	ex af,af'			;8714	08 	. 
	sbc a,a			;8715	9f 	. 
	ex af,af'			;8716	08 	. 
	sbc a,a			;8717	9f 	. 
	ex af,af'			;8718	08 	. 
	sbc a,a			;8719	9f 	. 
	ex af,af'			;871a	08 	. 
	sbc a,a			;871b	9f 	. 
	ex af,af'			;871c	08 	. 
	sbc a,a			;871d	9f 	. 
	rrca			;871e	0f 	. 
	ret nz			;871f	c0 	. 
	nop			;8720	00 	. 
	nop			;8721	00 	. 
	nop			;8722	00 	. 
	ex af,af'			;8723	08 	. 
	ex af,af'			;8724	08 	. 
	ex af,af'			;8725	08 	. 
l8726h:
	djnz l8740h		;8726	10 18 	. . 
	jr nz,l8752h		;8728	20 28 	  ( 
	jr nc,$+58		;872a	30 38 	0 8 
	ld b,b			;872c	40 	@ 
	ld c,b			;872d	48 	H 
	ld d,b			;872e	50 	P 
	ld bc,00999h		;872f	01 99 09 	. . . 
	sbc a,d			;8732	9a 	. 
	ld de,0009bh		;8733	11 9b 00 	. . . 
	sbc a,h			;8736	9c 	. 
	ex af,af'			;8737	08 	. 
l8738h:
	sbc a,l			;8738	9d 	. 
	djnz $-96		;8739	10 9e 	. . 
	ex af,af'			;873b	08 	. 
l873ch:
	sbc a,a			;873c	9f 	. 
	ex af,af'			;873d	08 	. 
	sbc a,a			;873e	9f 	. 
	ex af,af'			;873f	08 	. 
l8740h:
	sbc a,a			;8740	9f 	. 
	ex af,af'			;8741	08 	. 
	sbc a,a			;8742	9f 	. 
	ex af,af'			;8743	08 	. 
	sbc a,a			;8744	9f 	. 
	ex af,af'			;8745	08 	. 
	sbc a,a			;8746	9f 	. 
	ex af,af'			;8747	08 	. 
	sbc a,a			;8748	9f 	. 
	ex af,af'			;8749	08 	. 
	sbc a,a			;874a	9f 	. 
	ex af,af'			;874b	08 	. 
	sbc a,a			;874c	9f 	. 
	djnz l870fh		;874d	10 c0 	. . 
	nop			;874f	00 	. 
	nop			;8750	00 	. 
	nop			;8751	00 	. 
l8752h:
	ex af,af'			;8752	08 	. 
	ex af,af'			;8753	08 	. 
	ex af,af'			;8754	08 	. 
	djnz l876fh		;8755	10 18 	. . 
	jr nz,$+42		;8757	20 28 	  ( 
	jr nc,$+58		;8759	30 38 	0 8 
	ld b,b			;875b	40 	@ 
	ld c,b			;875c	48 	H 
	ld d,b			;875d	50 	P 
	ld e,b			;875e	58 	X 
	ld bc,00999h		;875f	01 99 09 	. . . 
	sbc a,d			;8762	9a 	. 
	ld de,0009bh		;8763	11 9b 00 	. . . 
	sbc a,h			;8766	9c 	. 
	ex af,af'			;8767	08 	. 
	sbc a,l			;8768	9d 	. 
	djnz l8709h		;8769	10 9e 	. . 
	ex af,af'			;876b	08 	. 
	sbc a,a			;876c	9f 	. 
	ex af,af'			;876d	08 	. 
	sbc a,a			;876e	9f 	. 
l876fh:
	ex af,af'			;876f	08 	. 
	sbc a,a			;8770	9f 	. 
	ex af,af'			;8771	08 	. 
l8772h:
	sbc a,a			;8772	9f 	. 
	ex af,af'			;8773	08 	. 
	sbc a,a			;8774	9f 	. 
	ex af,af'			;8775	08 	. 
	sbc a,a			;8776	9f 	. 
	ex af,af'			;8777	08 	. 
	sbc a,a			;8778	9f 	. 
	ex af,af'			;8779	08 	. 
	sbc a,a			;877a	9f 	. 
	ex af,af'			;877b	08 	. 
	sbc a,a			;877c	9f 	. 
	ex af,af'			;877d	08 	. 
	sbc a,a			;877e	9f 	. 
	ld de,000c0h		;877f	11 c0 00 	. . . 
	nop			;8782	00 	. 
	nop			;8783	00 	. 
	ex af,af'			;8784	08 	. 
	ex af,af'			;8785	08 	. 
	ex af,af'			;8786	08 	. 
	djnz l87a1h		;8787	10 18 	. . 
	jr nz,l87b3h		;8789	20 28 	  ( 
	jr nc,l87c5h		;878b	30 38 	0 8 
	ld b,b			;878d	40 	@ 
	ld c,b			;878e	48 	H 
	ld d,b			;878f	50 	P 
	ld e,b			;8790	58 	X 
	ld h,b			;8791	60 	` 
	ld bc,00999h		;8792	01 99 09 	. . . 
	sbc a,d			;8795	9a 	. 
	ld de,0009bh		;8796	11 9b 00 	. . . 
	sbc a,h			;8799	9c 	. 
	ex af,af'			;879a	08 	. 
	sbc a,l			;879b	9d 	. 
	djnz l873ch		;879c	10 9e 	. . 
	ex af,af'			;879e	08 	. 
	sbc a,a			;879f	9f 	. 
	ex af,af'			;87a0	08 	. 
l87a1h:
	sbc a,a			;87a1	9f 	. 
	ex af,af'			;87a2	08 	. 
	sbc a,a			;87a3	9f 	. 
	ex af,af'			;87a4	08 	. 
	sbc a,a			;87a5	9f 	. 
	ex af,af'			;87a6	08 	. 
	sbc a,a			;87a7	9f 	. 
	ex af,af'			;87a8	08 	. 
	sbc a,a			;87a9	9f 	. 
	ex af,af'			;87aa	08 	. 
l87abh:
	sbc a,a			;87ab	9f 	. 
	ex af,af'			;87ac	08 	. 
	sbc a,a			;87ad	9f 	. 
	ex af,af'			;87ae	08 	. 
	sbc a,a			;87af	9f 	. 
	ex af,af'			;87b0	08 	. 
	sbc a,a			;87b1	9f 	. 
	ex af,af'			;87b2	08 	. 
l87b3h:
	sbc a,a			;87b3	9f 	. 
	ld (de),a			;87b4	12 	. 
	ret nz			;87b5	c0 	. 
	nop			;87b6	00 	. 
	nop			;87b7	00 	. 
	nop			;87b8	00 	. 
	ex af,af'			;87b9	08 	. 
	ex af,af'			;87ba	08 	. 
	ex af,af'			;87bb	08 	. 
	djnz l87d6h		;87bc	10 18 	. . 
	jr nz,l87e8h		;87be	20 28 	  ( 
	jr nc,l87fah		;87c0	30 38 	0 8 
	ld b,b			;87c2	40 	@ 
	ld c,b			;87c3	48 	H 
	ld d,b			;87c4	50 	P 
l87c5h:
	ld e,b			;87c5	58 	X 
	ld h,b			;87c6	60 	` 
	ld l,b			;87c7	68 	h 
	ld bc,00999h		;87c8	01 99 09 	. . . 
	sbc a,d			;87cb	9a 	. 
	ld de,0009bh		;87cc	11 9b 00 	. . . 
	sbc a,h			;87cf	9c 	. 
	ex af,af'			;87d0	08 	. 
	sbc a,l			;87d1	9d 	. 
	djnz l8772h		;87d2	10 9e 	. . 
	ex af,af'			;87d4	08 	. 
	sbc a,a			;87d5	9f 	. 
l87d6h:
	ex af,af'			;87d6	08 	. 
	sbc a,a			;87d7	9f 	. 
	ex af,af'			;87d8	08 	. 
	sbc a,a			;87d9	9f 	. 
	ex af,af'			;87da	08 	. 
	sbc a,a			;87db	9f 	. 
	ex af,af'			;87dc	08 	. 
	sbc a,a			;87dd	9f 	. 
	ex af,af'			;87de	08 	. 
	sbc a,a			;87df	9f 	. 
	ex af,af'			;87e0	08 	. 
	sbc a,a			;87e1	9f 	. 
	ex af,af'			;87e2	08 	. 
	sbc a,a			;87e3	9f 	. 
	ex af,af'			;87e4	08 	. 
	sbc a,a			;87e5	9f 	. 
	ex af,af'			;87e6	08 	. 
l87e7h:
	sbc a,a			;87e7	9f 	. 
l87e8h:
	ex af,af'			;87e8	08 	. 
	sbc a,a			;87e9	9f 	. 
	ex af,af'			;87ea	08 	. 
	sbc a,a			;87eb	9f 	. 
	inc de			;87ec	13 	. 
	ret nz			;87ed	c0 	. 
	nop			;87ee	00 	. 
	nop			;87ef	00 	. 
	nop			;87f0	00 	. 
	ex af,af'			;87f1	08 	. 
	ex af,af'			;87f2	08 	. 
	ex af,af'			;87f3	08 	. 
	djnz l880eh		;87f4	10 18 	. . 
	jr nz,l8820h		;87f6	20 28 	  ( 
	jr nc,$+58		;87f8	30 38 	0 8 
l87fah:
	ld b,b			;87fa	40 	@ 
	ld c,b			;87fb	48 	H 
	ld d,b			;87fc	50 	P 
	ld e,b			;87fd	58 	X 
	ld h,b			;87fe	60 	` 
	ld l,b			;87ff	68 	h 
	ld (hl),b			;8800	70 	p 
l8801h:
	ld bc,00999h		;8801	01 99 09 	. . . 
	sbc a,d			;8804	9a 	. 
	ld de,0009bh		;8805	11 9b 00 	. . . 
sub_8808h:
	sbc a,h			;8808	9c 	. 
	ex af,af'			;8809	08 	. 
	sbc a,l			;880a	9d 	. 
	djnz l87abh		;880b	10 9e 	. . 
	ex af,af'			;880d	08 	. 
l880eh:
	sbc a,a			;880e	9f 	. 
	ex af,af'			;880f	08 	. 
	sbc a,a			;8810	9f 	. 
	ex af,af'			;8811	08 	. 
	sbc a,a			;8812	9f 	. 
	ex af,af'			;8813	08 	. 
	sbc a,a			;8814	9f 	. 
	ex af,af'			;8815	08 	. 
	sbc a,a			;8816	9f 	. 
	ex af,af'			;8817	08 	. 
	sbc a,a			;8818	9f 	. 
	ex af,af'			;8819	08 	. 
	sbc a,a			;881a	9f 	. 
	ex af,af'			;881b	08 	. 
	sbc a,a			;881c	9f 	. 
	ex af,af'			;881d	08 	. 
	sbc a,a			;881e	9f 	. 
	ex af,af'			;881f	08 	. 
l8820h:
	sbc a,a			;8820	9f 	. 
	ex af,af'			;8821	08 	. 
	sbc a,a			;8822	9f 	. 
	ex af,af'			;8823	08 	. 
	sbc a,a			;8824	9f 	. 
	ex af,af'			;8825	08 	. 
l8826h:
	sbc a,a			;8826	9f 	. 
	inc d			;8827	14 	. 
	ret nz			;8828	c0 	. 
	nop			;8829	00 	. 
	nop			;882a	00 	. 
	nop			;882b	00 	. 
	ex af,af'			;882c	08 	. 
	ex af,af'			;882d	08 	. 
	ex af,af'			;882e	08 	. 
	djnz l8849h		;882f	10 18 	. . 
	jr nz,l885bh		;8831	20 28 	  ( 
	jr nc,l886dh		;8833	30 38 	0 8 
	ld b,b			;8835	40 	@ 
	ld c,b			;8836	48 	H 
	ld d,b			;8837	50 	P 
	ld e,b			;8838	58 	X 
	ld h,b			;8839	60 	` 
	ld l,b			;883a	68 	h 
	ld (hl),b			;883b	70 	p 
	ld a,b			;883c	78 	x 
	ld bc,00999h		;883d	01 99 09 	. . . 
	sbc a,d			;8840	9a 	. 
	ld de,0009bh		;8841	11 9b 00 	. . . 
	sbc a,h			;8844	9c 	. 
l8845h:
	ex af,af'			;8845	08 	. 
	sbc a,l			;8846	9d 	. 
	djnz l87e7h		;8847	10 9e 	. . 
l8849h:
	ex af,af'			;8849	08 	. 
	sbc a,a			;884a	9f 	. 
	ex af,af'			;884b	08 	. 
	sbc a,a			;884c	9f 	. 
	ex af,af'			;884d	08 	. 
	sbc a,a			;884e	9f 	. 
	ex af,af'			;884f	08 	. 
	sbc a,a			;8850	9f 	. 
	ex af,af'			;8851	08 	. 
	sbc a,a			;8852	9f 	. 
	ex af,af'			;8853	08 	. 
	sbc a,a			;8854	9f 	. 
	ex af,af'			;8855	08 	. 
	sbc a,a			;8856	9f 	. 
	ex af,af'			;8857	08 	. 
	sbc a,a			;8858	9f 	. 
	ex af,af'			;8859	08 	. 
	sbc a,a			;885a	9f 	. 
l885bh:
	ex af,af'			;885b	08 	. 
	sbc a,a			;885c	9f 	. 
	ex af,af'			;885d	08 	. 
	sbc a,a			;885e	9f 	. 
	ex af,af'			;885f	08 	. 
	sbc a,a			;8860	9f 	. 
	ex af,af'			;8861	08 	. 
	sbc a,a			;8862	9f 	. 
	ex af,af'			;8863	08 	. 
	sbc a,a			;8864	9f 	. 
	dec d			;8865	15 	. 
	call nz,00000h		;8866	c4 00 00 	. . . 
	nop			;8869	00 	. 
	ex af,af'			;886a	08 	. 
	ex af,af'			;886b	08 	. 
	ex af,af'			;886c	08 	. 
l886dh:
	djnz $+26		;886d	10 18 	. . 
	jr nz,l8899h		;886f	20 28 	  ( 
	jr nc,l88abh		;8871	30 38 	0 8 
	ld b,b			;8873	40 	@ 
	ld c,b			;8874	48 	H 
	ld d,b			;8875	50 	P 
	ld e,b			;8876	58 	X 
	ld h,b			;8877	60 	` 
	ld l,b			;8878	68 	h 
	ld (hl),b			;8879	70 	p 
	ld a,b			;887a	78 	x 
	add a,b			;887b	80 	. 
	ld bc,00999h		;887c	01 99 09 	. . . 
	sbc a,d			;887f	9a 	. 
	ld de,0009bh		;8880	11 9b 00 	. . . 
	sbc a,h			;8883	9c 	. 
	ex af,af'			;8884	08 	. 
	sbc a,l			;8885	9d 	. 
	djnz l8826h		;8886	10 9e 	. . 
	ex af,af'			;8888	08 	. 
	sbc a,a			;8889	9f 	. 
	ex af,af'			;888a	08 	. 
	sbc a,a			;888b	9f 	. 
	ex af,af'			;888c	08 	. 
l888dh:
	sbc a,a			;888d	9f 	. 
	ex af,af'			;888e	08 	. 
l888fh:
	sbc a,a			;888f	9f 	. 
	ex af,af'			;8890	08 	. 
	sbc a,a			;8891	9f 	. 
	ex af,af'			;8892	08 	. 
	sbc a,a			;8893	9f 	. 
	ex af,af'			;8894	08 	. 
	sbc a,a			;8895	9f 	. 
	ex af,af'			;8896	08 	. 
	sbc a,a			;8897	9f 	. 
	ex af,af'			;8898	08 	. 
l8899h:
	sbc a,a			;8899	9f 	. 
	ex af,af'			;889a	08 	. 
	sbc a,a			;889b	9f 	. 
	ex af,af'			;889c	08 	. 
	sbc a,a			;889d	9f 	. 
	ex af,af'			;889e	08 	. 
	sbc a,a			;889f	9f 	. 
	ex af,af'			;88a0	08 	. 
	sbc a,a			;88a1	9f 	. 
	ex af,af'			;88a2	08 	. 
	sbc a,a			;88a3	9f 	. 
l88a4h:
	ex af,af'			;88a4	08 	. 
	sbc a,a			;88a5	9f 	. 
	ld d,0c4h		;88a6	16 c4 	. . 
	nop			;88a8	00 	. 
	nop			;88a9	00 	. 
	nop			;88aa	00 	. 
l88abh:
	ex af,af'			;88ab	08 	. 
	ex af,af'			;88ac	08 	. 
l88adh:
	ex af,af'			;88ad	08 	. 
	djnz l88c8h		;88ae	10 18 	. . 
	jr nz,l88dah		;88b0	20 28 	  ( 
	jr nc,$+58		;88b2	30 38 	0 8 
	ld b,b			;88b4	40 	@ 
	ld c,b			;88b5	48 	H 
	ld d,b			;88b6	50 	P 
	ld e,b			;88b7	58 	X 
	ld h,b			;88b8	60 	` 
	ld l,b			;88b9	68 	h 
	ld (hl),b			;88ba	70 	p 
	ld a,b			;88bb	78 	x 
	add a,b			;88bc	80 	. 
	adc a,b			;88bd	88 	. 
	ld bc,00999h		;88be	01 99 09 	. . . 
	sbc a,d			;88c1	9a 	. 
	ld de,0009bh		;88c2	11 9b 00 	. . . 
	sbc a,h			;88c5	9c 	. 
	ex af,af'			;88c6	08 	. 
	sbc a,l			;88c7	9d 	. 
l88c8h:
	djnz $-96		;88c8	10 9e 	. . 
	ex af,af'			;88ca	08 	. 
	sbc a,a			;88cb	9f 	. 
	ex af,af'			;88cc	08 	. 
	sbc a,a			;88cd	9f 	. 
	ex af,af'			;88ce	08 	. 
	sbc a,a			;88cf	9f 	. 
	ex af,af'			;88d0	08 	. 
	sbc a,a			;88d1	9f 	. 
	ex af,af'			;88d2	08 	. 
	sbc a,a			;88d3	9f 	. 
	ex af,af'			;88d4	08 	. 
	sbc a,a			;88d5	9f 	. 
	ex af,af'			;88d6	08 	. 
	sbc a,a			;88d7	9f 	. 
	ex af,af'			;88d8	08 	. 
	sbc a,a			;88d9	9f 	. 
l88dah:
	ex af,af'			;88da	08 	. 
	sbc a,a			;88db	9f 	. 
	ex af,af'			;88dc	08 	. 
	sbc a,a			;88dd	9f 	. 
	ex af,af'			;88de	08 	. 
	sbc a,a			;88df	9f 	. 
	ex af,af'			;88e0	08 	. 
	sbc a,a			;88e1	9f 	. 
	ex af,af'			;88e2	08 	. 
	sbc a,a			;88e3	9f 	. 
	ex af,af'			;88e4	08 	. 
	sbc a,a			;88e5	9f 	. 
	ex af,af'			;88e6	08 	. 
	sbc a,a			;88e7	9f 	. 
	ex af,af'			;88e8	08 	. 
	sbc a,a			;88e9	9f 	. 
	rla			;88ea	17 	. 
	call nz,00000h		;88eb	c4 00 00 	. . . 
	nop			;88ee	00 	. 
	ex af,af'			;88ef	08 	. 
	ex af,af'			;88f0	08 	. 
	ex af,af'			;88f1	08 	. 
	djnz l890ch		;88f2	10 18 	. . 
	jr nz,l891eh		;88f4	20 28 	  ( 
	jr nc,l8930h		;88f6	30 38 	0 8 
	ld b,b			;88f8	40 	@ 
	ld c,b			;88f9	48 	H 
	ld d,b			;88fa	50 	P 
	ld e,b			;88fb	58 	X 
	ld h,b			;88fc	60 	` 
	ld l,b			;88fd	68 	h 
	ld (hl),b			;88fe	70 	p 
	ld a,b			;88ff	78 	x 
	add a,b			;8900	80 	. 
	adc a,b			;8901	88 	. 
	sub b			;8902	90 	. 
	ld bc,00999h		;8903	01 99 09 	. . . 
	sbc a,d			;8906	9a 	. 
	ld de,0009bh		;8907	11 9b 00 	. . . 
	sbc a,h			;890a	9c 	. 
	ex af,af'			;890b	08 	. 
l890ch:
	sbc a,l			;890c	9d 	. 
	djnz l88adh		;890d	10 9e 	. . 
	ex af,af'			;890f	08 	. 
	sbc a,a			;8910	9f 	. 
	ex af,af'			;8911	08 	. 
	sbc a,a			;8912	9f 	. 
	ex af,af'			;8913	08 	. 
	sbc a,a			;8914	9f 	. 
	ex af,af'			;8915	08 	. 
	sbc a,a			;8916	9f 	. 
	ex af,af'			;8917	08 	. 
	sbc a,a			;8918	9f 	. 
	ex af,af'			;8919	08 	. 
	sbc a,a			;891a	9f 	. 
	ex af,af'			;891b	08 	. 
	sbc a,a			;891c	9f 	. 
	ex af,af'			;891d	08 	. 
l891eh:
	sbc a,a			;891e	9f 	. 
	ex af,af'			;891f	08 	. 
	sbc a,a			;8920	9f 	. 
	ex af,af'			;8921	08 	. 
	sbc a,a			;8922	9f 	. 
	ex af,af'			;8923	08 	. 
	sbc a,a			;8924	9f 	. 
	ex af,af'			;8925	08 	. 
	sbc a,a			;8926	9f 	. 
	ex af,af'			;8927	08 	. 
	sbc a,a			;8928	9f 	. 
	ex af,af'			;8929	08 	. 
	sbc a,a			;892a	9f 	. 
	ex af,af'			;892b	08 	. 
	sbc a,a			;892c	9f 	. 
	ex af,af'			;892d	08 	. 
	sbc a,a			;892e	9f 	. 
	ex af,af'			;892f	08 	. 
l8930h:
	sbc a,a			;8930	9f 	. 
	jr $-58		;8931	18 c4 	. . 
	nop			;8933	00 	. 
	nop			;8934	00 	. 
	nop			;8935	00 	. 
	ex af,af'			;8936	08 	. 
	ex af,af'			;8937	08 	. 
	ex af,af'			;8938	08 	. 
	djnz l8953h		;8939	10 18 	. . 
	jr nz,l8965h		;893b	20 28 	  ( 
	jr nc,l8977h		;893d	30 38 	0 8 
	ld b,b			;893f	40 	@ 
l8940h:
	ld c,b			;8940	48 	H 
	ld d,b			;8941	50 	P 
	ld e,b			;8942	58 	X 
	ld h,b			;8943	60 	` 
	ld l,b			;8944	68 	h 
	ld (hl),b			;8945	70 	p 
	ld a,b			;8946	78 	x 
	add a,b			;8947	80 	. 
	adc a,b			;8948	88 	. 
	sub b			;8949	90 	. 
	sbc a,b			;894a	98 	. 
	ld bc,00999h		;894b	01 99 09 	. . . 
	sbc a,d			;894e	9a 	. 
	ld de,0009bh		;894f	11 9b 00 	. . . 
	sbc a,h			;8952	9c 	. 
l8953h:
	ex af,af'			;8953	08 	. 
	sbc a,l			;8954	9d 	. 
	djnz $-96		;8955	10 9e 	. . 
	ex af,af'			;8957	08 	. 
	sbc a,a			;8958	9f 	. 
	ex af,af'			;8959	08 	. 
	sbc a,a			;895a	9f 	. 
	ex af,af'			;895b	08 	. 
	sbc a,a			;895c	9f 	. 
	ex af,af'			;895d	08 	. 
	sbc a,a			;895e	9f 	. 
	ex af,af'			;895f	08 	. 
	sbc a,a			;8960	9f 	. 
	ex af,af'			;8961	08 	. 
	sbc a,a			;8962	9f 	. 
	ex af,af'			;8963	08 	. 
	sbc a,a			;8964	9f 	. 
l8965h:
	ex af,af'			;8965	08 	. 
	sbc a,a			;8966	9f 	. 
	ex af,af'			;8967	08 	. 
	sbc a,a			;8968	9f 	. 
	ex af,af'			;8969	08 	. 
	sbc a,a			;896a	9f 	. 
	ex af,af'			;896b	08 	. 
	sbc a,a			;896c	9f 	. 
	ex af,af'			;896d	08 	. 
	sbc a,a			;896e	9f 	. 
	ex af,af'			;896f	08 	. 
	sbc a,a			;8970	9f 	. 
	ex af,af'			;8971	08 	. 
	sbc a,a			;8972	9f 	. 
	ex af,af'			;8973	08 	. 
	sbc a,a			;8974	9f 	. 
	ex af,af'			;8975	08 	. 
	sbc a,a			;8976	9f 	. 
l8977h:
	ex af,af'			;8977	08 	. 
	sbc a,a			;8978	9f 	. 
	ex af,af'			;8979	08 	. 
	sbc a,a			;897a	9f 	. 
	add hl,de			;897b	19 	. 
	call nz,00000h		;897c	c4 00 00 	. . . 
	nop			;897f	00 	. 
	ex af,af'			;8980	08 	. 
	ex af,af'			;8981	08 	. 
	ex af,af'			;8982	08 	. 
	djnz l899dh		;8983	10 18 	. . 
	jr nz,l89afh		;8985	20 28 	  ( 
	jr nc,l89c1h		;8987	30 38 	0 8 
	ld b,b			;8989	40 	@ 
	ld c,b			;898a	48 	H 
	ld d,b			;898b	50 	P 
	ld e,b			;898c	58 	X 
	ld h,b			;898d	60 	` 
l898eh:
	ld l,b			;898e	68 	h 
	ld (hl),b			;898f	70 	p 
	ld a,b			;8990	78 	x 
	add a,b			;8991	80 	. 
	adc a,b			;8992	88 	. 
	sub b			;8993	90 	. 
	sbc a,b			;8994	98 	. 
	and b			;8995	a0 	. 
	ld bc,00999h		;8996	01 99 09 	. . . 
	sbc a,d			;8999	9a 	. 
	ld de,0009bh		;899a	11 9b 00 	. . . 
l899dh:
	sbc a,h			;899d	9c 	. 
	ex af,af'			;899e	08 	. 
	sbc a,l			;899f	9d 	. 
	djnz l8940h		;89a0	10 9e 	. . 
	ex af,af'			;89a2	08 	. 
	sbc a,a			;89a3	9f 	. 
	ex af,af'			;89a4	08 	. 
	sbc a,a			;89a5	9f 	. 
	ex af,af'			;89a6	08 	. 
	sbc a,a			;89a7	9f 	. 
	ex af,af'			;89a8	08 	. 
	sbc a,a			;89a9	9f 	. 
	ex af,af'			;89aa	08 	. 
	sbc a,a			;89ab	9f 	. 
	ex af,af'			;89ac	08 	. 
	sbc a,a			;89ad	9f 	. 
	ex af,af'			;89ae	08 	. 
l89afh:
	sbc a,a			;89af	9f 	. 
	ex af,af'			;89b0	08 	. 
	sbc a,a			;89b1	9f 	. 
	ex af,af'			;89b2	08 	. 
	sbc a,a			;89b3	9f 	. 
	ex af,af'			;89b4	08 	. 
	sbc a,a			;89b5	9f 	. 
	ex af,af'			;89b6	08 	. 
	sbc a,a			;89b7	9f 	. 
	ex af,af'			;89b8	08 	. 
	sbc a,a			;89b9	9f 	. 
	ex af,af'			;89ba	08 	. 
	sbc a,a			;89bb	9f 	. 
	ex af,af'			;89bc	08 	. 
	sbc a,a			;89bd	9f 	. 
	ex af,af'			;89be	08 	. 
	sbc a,a			;89bf	9f 	. 
	ex af,af'			;89c0	08 	. 
l89c1h:
	sbc a,a			;89c1	9f 	. 
	ex af,af'			;89c2	08 	. 
	sbc a,a			;89c3	9f 	. 
	ex af,af'			;89c4	08 	. 
	sbc a,a			;89c5	9f 	. 
	ex af,af'			;89c6	08 	. 
	sbc a,a			;89c7	9f 	. 
	ld a,(de)			;89c8	1a 	. 
	call nz,00000h		;89c9	c4 00 00 	. . . 
	nop			;89cc	00 	. 
	ex af,af'			;89cd	08 	. 
	ex af,af'			;89ce	08 	. 
	ex af,af'			;89cf	08 	. 
	djnz $+26		;89d0	10 18 	. . 
	jr nz,l89fch		;89d2	20 28 	  ( 
	jr nc,l8a0eh		;89d4	30 38 	0 8 
	ld b,b			;89d6	40 	@ 
	ld c,b			;89d7	48 	H 
	ld d,b			;89d8	50 	P 
	ld e,b			;89d9	58 	X 
	ld h,b			;89da	60 	` 
	ld l,b			;89db	68 	h 
	ld (hl),b			;89dc	70 	p 
	ld a,b			;89dd	78 	x 
	add a,b			;89de	80 	. 
	adc a,b			;89df	88 	. 
	sub b			;89e0	90 	. 
	sbc a,b			;89e1	98 	. 
	and b			;89e2	a0 	. 
	xor b			;89e3	a8 	. 
	ld bc,00999h		;89e4	01 99 09 	. . . 
	sbc a,d			;89e7	9a 	. 
	ld de,0009bh		;89e8	11 9b 00 	. . . 
	sbc a,h			;89eb	9c 	. 
	ex af,af'			;89ec	08 	. 
	sbc a,l			;89ed	9d 	. 
	djnz l898eh		;89ee	10 9e 	. . 
	ex af,af'			;89f0	08 	. 
	sbc a,a			;89f1	9f 	. 
	ex af,af'			;89f2	08 	. 
	sbc a,a			;89f3	9f 	. 
	ex af,af'			;89f4	08 	. 
	sbc a,a			;89f5	9f 	. 
	ex af,af'			;89f6	08 	. 
	sbc a,a			;89f7	9f 	. 
	ex af,af'			;89f8	08 	. 
	sbc a,a			;89f9	9f 	. 
	ex af,af'			;89fa	08 	. 
	sbc a,a			;89fb	9f 	. 
l89fch:
	ex af,af'			;89fc	08 	. 
	sbc a,a			;89fd	9f 	. 
	ex af,af'			;89fe	08 	. 
	sbc a,a			;89ff	9f 	. 
	ex af,af'			;8a00	08 	. 
	sbc a,a			;8a01	9f 	. 
	ex af,af'			;8a02	08 	. 
sub_8a03h:
	sbc a,a			;8a03	9f 	. 
	ex af,af'			;8a04	08 	. 
	sbc a,a			;8a05	9f 	. 
	ex af,af'			;8a06	08 	. 
	sbc a,a			;8a07	9f 	. 
	ex af,af'			;8a08	08 	. 
	sbc a,a			;8a09	9f 	. 
	ex af,af'			;8a0a	08 	. 
	sbc a,a			;8a0b	9f 	. 
	ex af,af'			;8a0c	08 	. 
	sbc a,a			;8a0d	9f 	. 
l8a0eh:
	ex af,af'			;8a0e	08 	. 
	sbc a,a			;8a0f	9f 	. 
	ex af,af'			;8a10	08 	. 
	sbc a,a			;8a11	9f 	. 
	ex af,af'			;8a12	08 	. 
	sbc a,a			;8a13	9f 	. 
	ex af,af'			;8a14	08 	. 
	sbc a,a			;8a15	9f 	. 
	ex af,af'			;8a16	08 	. 
	sbc a,a			;8a17	9f 	. 
	ld (bc),a			;8a18	02 	. 
	dec e			;8a19	1d 	. 
	adc a,d			;8a1a	8a 	. 
	ld (0018ah),hl		;8a1b	22 8a 01 	" . . 
	nop			;8a1e	00 	. 
	nop			;8a1f	00 	. 
	nop			;8a20	00 	. 
	ld b,c			;8a21	41 	A 
	ld bc,00000h		;8a22	01 00 00 	. . . 
	nop			;8a25	00 	. 
	ld b,b			;8a26	40 	@ 
	inc b			;8a27	04 	. 
	add a,h			;8a28	84 	. 
	nop			;8a29	00 	. 
	nop			;8a2a	00 	. 
	ex af,af'			;8a2b	08 	. 
	ex af,af'			;8a2c	08 	. 
	nop			;8a2d	00 	. 
	ld l,(hl)			;8a2e	6e 	n 
	ex af,af'			;8a2f	08 	. 
	ld l,a			;8a30	6f 	o 
	nop			;8a31	00 	. 
	ld (hl),b			;8a32	70 	p 
	ex af,af'			;8a33	08 	. 
	ld (hl),c			;8a34	71 	q 
	ld (bc),a			;8a35	02 	. 
	ld c,c			;8a36	49 	I 
	adc a,d			;8a37	8a 	. 
	add a,a			;8a38	87 	. 
	adc a,d			;8a39	8a 	. 
	ld (bc),a			;8a3a	02 	. 
	res 1,d		;8a3b	cb 8a 	. . 
	add a,a			;8a3d	87 	. 
	adc a,d			;8a3e	8a 	. 
	ld (bc),a			;8a3f	02 	. 
	inc bc			;8a40	03 	. 
	adc a,e			;8a41	8b 	. 
	ld b,c			;8a42	41 	A 
	adc a,e			;8a43	8b 	. 
	ld (bc),a			;8a44	02 	. 
	add a,l			;8a45	85 	. 
	adc a,e			;8a46	8b 	. 
	ld b,c			;8a47	41 	A 
	adc a,e			;8a48	8b 	. 
	inc d			;8a49	14 	. 
	xor h			;8a4a	ac 	. 
	nop			;8a4b	00 	. 
	nop			;8a4c	00 	. 
	ex af,af'			;8a4d	08 	. 
	ex af,af'			;8a4e	08 	. 
	ex af,af'			;8a4f	08 	. 
	djnz l8a62h		;8a50	10 10 	. . 
	djnz l8a6ch		;8a52	10 18 	. . 
	jr $+26		;8a54	18 18 	. . 
	jr l8a70h		;8a56	18 18 	. . 
	jr nz,l8a7ah		;8a58	20 20 	    
	jr nz,l8a7ch		;8a5a	20 20 	    
	jr nz,l8a86h		;8a5c	20 28 	  ( 
	jr z,l8a72h		;8a5e	28 12 	( . 
	ld h,c			;8a60	61 	a 
	ld a,(de)			;8a61	1a 	. 
l8a62h:
	ld h,d			;8a62	62 	b 
	djnz l8ac8h		;8a63	10 63 	. c 
	jr l8acbh		;8a65	18 64 	. d 
	jr nz,l8aceh		;8a67	20 65 	  e 
	ld de,01966h		;8a69	11 66 19 	. f . 
l8a6ch:
	ld h,a			;8a6c	67 	g 
	ld hl,00068h		;8a6d	21 68 00 	! h . 
l8a70h:
	ld l,c			;8a70	69 	i 
	ex af,af'			;8a71	08 	. 
l8a72h:
	ld l,d			;8a72	6a 	j 
	djnz $+109		;8a73	10 6b 	. k 
l8a75h:
	jr l8ae3h		;8a75	18 6c 	. l 
	jr nz,l8ae6h		;8a77	20 6d 	  m 
	ld (bc),a			;8a79	02 	. 
l8a7ah:
	ld l,(hl)			;8a7a	6e 	n 
	ld a,(bc)			;8a7b	0a 	. 
l8a7ch:
	ld l,a			;8a7c	6f 	o 
	ld (de),a			;8a7d	12 	. 
	ld (hl),b			;8a7e	70 	p 
	ld a,(de)			;8a7f	1a 	. 
	ld (hl),c			;8a80	71 	q 
	ld (01572h),hl		;8a81	22 72 15 	" r . 
	ld (hl),e			;8a84	73 	s 
	dec e			;8a85	1d 	. 
l8a86h:
	ld (hl),h			;8a86	74 	t 
	ld d,0ach		;8a87	16 ac 	. . 
	nop			;8a89	00 	. 
	nop			;8a8a	00 	. 
	ex af,af'			;8a8b	08 	. 
	ex af,af'			;8a8c	08 	. 
	ex af,af'			;8a8d	08 	. 
	djnz l8aa0h		;8a8e	10 10 	. . 
	djnz $+26		;8a90	10 18 	. . 
	jr l8aach		;8a92	18 18 	. . 
	jr $+26		;8a94	18 18 	. . 
	jr nz,l8ab8h		;8a96	20 20 	    
	jr nz,$+34		;8a98	20 20 	    
	jr nz,l8ac4h		;8a9a	20 28 	  ( 
	jr z,l8ac6h		;8a9c	28 28 	( ( 
	jr z,l8ab2h		;8a9e	28 12 	( . 
l8aa0h:
	ld h,c			;8aa0	61 	a 
	ld a,(de)			;8aa1	1a 	. 
	ld h,d			;8aa2	62 	b 
	djnz l8b08h		;8aa3	10 63 	. c 
	jr $+102		;8aa5	18 64 	. d 
sub_8aa7h:
	jr nz,l8b0eh		;8aa7	20 65 	  e 
	ld de,01966h		;8aa9	11 66 19 	. f . 
l8aach:
	ld (hl),l			;8aac	75 	u 
	ld hl,00476h		;8aad	21 76 04 	! v . 
	ld l,c			;8ab0	69 	i 
	inc c			;8ab1	0c 	. 
l8ab2h:
	ld (hl),a			;8ab2	77 	w 
	inc d			;8ab3	14 	. 
	ld a,b			;8ab4	78 	x 
	inc e			;8ab5	1c 	. 
	ld a,c			;8ab6	79 	y 
	inc h			;8ab7	24 	$ 
l8ab8h:
	ld a,d			;8ab8	7a 	z 
	ld b,06eh		;8ab9	06 6e 	. n 
	ld c,07bh		;8abb	0e 7b 	. { 
	ld d,07ch		;8abd	16 7c 	. | 
	ld e,07dh		;8abf	1e 7d 	. } 
	ld h,07eh		;8ac1	26 7e 	& ~ 
	rrca			;8ac3	0f 	. 
l8ac4h:
	ld a,a			;8ac4	7f 	 
	rla			;8ac5	17 	. 
l8ac6h:
	add a,b			;8ac6	80 	. 
	rra			;8ac7	1f 	. 
l8ac8h:
	add a,c			;8ac8	81 	. 
	daa			;8ac9	27 	' 
	add a,d			;8aca	82 	. 
l8acbh:
	ld (de),a			;8acb	12 	. 
	or b			;8acc	b0 	. 
	ret p			;8acd	f0 	. 
l8aceh:
	ret p			;8ace	f0 	. 
	ret m			;8acf	f8 	. 
	nop			;8ad0	00 	. 
	nop			;8ad1	00 	. 
	ex af,af'			;8ad2	08 	. 
	ex af,af'			;8ad3	08 	. 
	ex af,af'			;8ad4	08 	. 
	djnz l8ae7h		;8ad5	10 10 	. . 
	djnz $+26		;8ad7	10 18 	. . 
	jr l8af3h		;8ad9	18 18 	. . 
	jr nz,l8afdh		;8adb	20 20 	    
	jr z,l8b07h		;8add	28 28 	( ( 
	ld (02a83h),hl		;8adf	22 83 2a 	" . * 
	add a,h			;8ae2	84 	. 
l8ae3h:
	ld e,085h		;8ae3	1e 85 	. . 
	ld (de),a			;8ae5	12 	. 
l8ae6h:
	ld h,c			;8ae6	61 	a 
l8ae7h:
	ld a,(de)			;8ae7	1a 	. 
	add a,(hl)			;8ae8	86 	. 
	djnz l8a72h		;8ae9	10 87 	. . 
	jr l8a75h		;8aeb	18 88 	. . 
	jr nz,l8b54h		;8aed	20 65 	  e 
	ld de,01966h		;8aef	11 66 19 	. f . 
	adc a,c			;8af2	89 	. 
l8af3h:
	ld hl,01168h		;8af3	21 68 11 	! h . 
	adc a,d			;8af6	8a 	. 
	add hl,de			;8af7	19 	. 
	adc a,e			;8af8	8b 	. 
	ld hl,0178ch		;8af9	21 8c 17 	! . . 
	adc a,l			;8afc	8d 	. 
l8afdh:
	rra			;8afd	1f 	. 
	adc a,(hl)			;8afe	8e 	. 
	dec d			;8aff	15 	. 
	ld (hl),e			;8b00	73 	s 
	dec e			;8b01	1d 	. 
	ld (hl),h			;8b02	74 	t 
	inc d			;8b03	14 	. 
l8b04h:
	or h			;8b04	b4 	. 
	nop			;8b05	00 	. 
	nop			;8b06	00 	. 
l8b07h:
	ex af,af'			;8b07	08 	. 
l8b08h:
	ex af,af'			;8b08	08 	. 
	ex af,af'			;8b09	08 	. 
	djnz l8b1ch		;8b0a	10 10 	. . 
	djnz l8b26h		;8b0c	10 18 	. . 
l8b0eh:
	jr $+26		;8b0e	18 18 	. . 
	jr l8b2ah		;8b10	18 18 	. . 
	jr nz,l8b34h		;8b12	20 20 	    
	jr nz,l8b36h		;8b14	20 20 	    
	jr nz,l8b40h		;8b16	20 28 	  ( 
	jr z,l8b31h		;8b18	28 17 	( . 
	adc a,a			;8b1a	8f 	. 
	rra			;8b1b	1f 	. 
l8b1ch:
	sub b			;8b1c	90 	. 
	inc de			;8b1d	13 	. 
	sub c			;8b1e	91 	. 
	dec de			;8b1f	1b 	. 
	sub d			;8b20	92 	. 
	inc hl			;8b21	23 	# 
	sub e			;8b22	93 	. 
	ld (de),a			;8b23	12 	. 
	sub h			;8b24	94 	. 
	ld a,(de)			;8b25	1a 	. 
l8b26h:
	sub l			;8b26	95 	. 
	ld (01296h),hl		;8b27	22 96 12 	" . . 
l8b2ah:
	sub a			;8b2a	97 	. 
	ld a,(de)			;8b2b	1a 	. 
	sbc a,b			;8b2c	98 	. 
	ld (02a99h),hl		;8b2d	22 99 2a 	" . * 
l8b30h:
	sbc a,d			;8b30	9a 	. 
l8b31h:
	ld (0149bh),a		;8b31	32 9b 14 	2 . . 
l8b34h:
	sbc a,h			;8b34	9c 	. 
	inc e			;8b35	1c 	. 
l8b36h:
	sbc a,l			;8b36	9d 	. 
	inc h			;8b37	24 	$ 
	ld l,a			;8b38	6f 	o 
	inc l			;8b39	2c 	, 
	sbc a,(hl)			;8b3a	9e 	. 
	inc (hl)			;8b3b	34 	4 
	sbc a,a			;8b3c	9f 	. 
	dec d			;8b3d	15 	. 
	and b			;8b3e	a0 	. 
	dec e			;8b3f	1d 	. 
l8b40h:
	and c			;8b40	a1 	. 
	ld d,0b4h		;8b41	16 b4 	. . 
	nop			;8b43	00 	. 
	nop			;8b44	00 	. 
	ex af,af'			;8b45	08 	. 
	ex af,af'			;8b46	08 	. 
	ex af,af'			;8b47	08 	. 
	djnz l8b5ah		;8b48	10 10 	. . 
	djnz l8b64h		;8b4a	10 18 	. . 
	jr l8b66h		;8b4c	18 18 	. . 
	jr $+26		;8b4e	18 18 	. . 
	jr nz,$+34		;8b50	20 20 	    
	jr nz,l8b74h		;8b52	20 20 	    
l8b54h:
	jr nz,l8b7eh		;8b54	20 28 	  ( 
	jr z,$+42		;8b56	28 28 	( ( 
	jr z,l8b71h		;8b58	28 17 	( . 
l8b5ah:
	adc a,a			;8b5a	8f 	. 
	rra			;8b5b	1f 	. 
	sub b			;8b5c	90 	. 
	inc de			;8b5d	13 	. 
	sub c			;8b5e	91 	. 
	dec de			;8b5f	1b 	. 
	sub d			;8b60	92 	. 
	inc hl			;8b61	23 	# 
	sub e			;8b62	93 	. 
	ld (de),a			;8b63	12 	. 
l8b64h:
	and d			;8b64	a2 	. 
	ld a,(de)			;8b65	1a 	. 
l8b66h:
	and e			;8b66	a3 	. 
	ld (01296h),hl		;8b67	22 96 12 	" . . 
	and h			;8b6a	a4 	. 
	ld a,(de)			;8b6b	1a 	. 
	and l			;8b6c	a5 	. 
	ld (02aa6h),hl		;8b6d	22 a6 2a 	" . * 
	and a			;8b70	a7 	. 
l8b71h:
	ld (011a8h),a		;8b71	32 a8 11 	2 . . 
l8b74h:
	xor c			;8b74	a9 	. 
	add hl,de			;8b75	19 	. 
	xor d			;8b76	aa 	. 
	ld hl,029abh		;8b77	21 ab 29 	! . ) 
	xor h			;8b7a	ac 	. 
	ld sp,010adh		;8b7b	31 ad 10 	1 . . 
l8b7eh:
	xor (hl)			;8b7e	ae 	. 
	jr l8b30h		;8b7f	18 af 	. . 
	jr nz,$-78		;8b81	20 b0 	  . 
	jr z,l8b07h		;8b83	28 82 	( . 
	ld (de),a			;8b85	12 	. 
	cp b			;8b86	b8 	. 
	ret p			;8b87	f0 	. 
	ret p			;8b88	f0 	. 
	ret m			;8b89	f8 	. 
	nop			;8b8a	00 	. 
	nop			;8b8b	00 	. 
	ex af,af'			;8b8c	08 	. 
	ex af,af'			;8b8d	08 	. 
	ex af,af'			;8b8e	08 	. 
	djnz l8ba1h		;8b8f	10 10 	. . 
	djnz l8babh		;8b91	10 18 	. . 
	jr l8badh		;8b93	18 18 	. . 
	jr nz,l8bb7h		;8b95	20 20 	    
	jr z,l8bc1h		;8b97	28 28 	( ( 
	ld a,(bc)			;8b99	0a 	. 
	or c			;8b9a	b1 	. 
	ld (de),a			;8b9b	12 	. 
	or d			;8b9c	b2 	. 
	ld (de),a			;8b9d	12 	. 
	or e			;8b9e	b3 	. 
	ld d,0b4h		;8b9f	16 b4 	. . 
l8ba1h:
	ld e,0b5h		;8ba1	1e b5 	. . 
	inc de			;8ba3	13 	. 
	sub c			;8ba4	91 	. 
	dec de			;8ba5	1b 	. 
	sub d			;8ba6	92 	. 
	inc hl			;8ba7	23 	# 
	sub e			;8ba8	93 	. 
	ld (de),a			;8ba9	12 	. 
	sub h			;8baa	94 	. 
l8babh:
	ld a,(de)			;8bab	1a 	. 
	sub l			;8bac	95 	. 
l8badh:
	ld (01296h),hl		;8bad	22 96 12 	" . . 
	sub a			;8bb0	97 	. 
	ld a,(de)			;8bb1	1a 	. 
	sbc a,b			;8bb2	98 	. 
	ld (014b6h),hl		;8bb3	22 b6 14 	" . . 
	sbc a,h			;8bb6	9c 	. 
l8bb7h:
	inc e			;8bb7	1c 	. 
	or a			;8bb8	b7 	. 
	dec d			;8bb9	15 	. 
	and b			;8bba	a0 	. 
	dec e			;8bbb	1d 	. 
	and c			;8bbc	a1 	. 
	ld (bc),a			;8bbd	02 	. 
	jp nz,0ca8bh		;8bbe	c2 8b ca 	. . . 
l8bc1h:
	adc a,e			;8bc1	8b 	. 
	ld (bc),a			;8bc2	02 	. 
	ret z			;8bc3	c8 	. 
	nop			;8bc4	00 	. 
	nop			;8bc5	00 	. 
	nop			;8bc6	00 	. 
	cp d			;8bc7	ba 	. 
	ex af,af'			;8bc8	08 	. 
	cp e			;8bc9	bb 	. 
	ld (bc),a			;8bca	02 	. 
	ret z			;8bcb	c8 	. 
	nop			;8bcc	00 	. 
	nop			;8bcd	00 	. 
	ld (bc),a			;8bce	02 	. 
	cp h			;8bcf	bc 	. 
	ld a,(bc)			;8bd0	0a 	. 
	cp l			;8bd1	bd 	. 
	ld (bc),a			;8bd2	02 	. 
	rst 10h			;8bd3	d7 	. 
	adc a,e			;8bd4	8b 	. 
	push hl			;8bd5	e5 	. 
	adc a,e			;8bd6	8b 	. 
	inc b			;8bd7	04 	. 
	sub h			;8bd8	94 	. 
	nop			;8bd9	00 	. 
	nop			;8bda	00 	. 
	ex af,af'			;8bdb	08 	. 
	ex af,af'			;8bdc	08 	. 
	ld bc,00955h		;8bdd	01 55 09 	. U . 
	ld d,(hl)			;8be0	56 	V 
	nop			;8be1	00 	. 
	ld d,a			;8be2	57 	W 
	ex af,af'			;8be3	08 	. 
	ld e,b			;8be4	58 	X 
	inc b			;8be5	04 	. 
	sub h			;8be6	94 	. 
	nop			;8be7	00 	. 
	nop			;8be8	00 	. 
	ex af,af'			;8be9	08 	. 
	ex af,af'			;8bea	08 	. 
	ld bc,00959h		;8beb	01 59 09 	. Y . 
	ld e,d			;8bee	5a 	Z 
	nop			;8bef	00 	. 
	ld e,e			;8bf0	5b 	[ 
	ex af,af'			;8bf1	08 	. 
	ld e,h			;8bf2	5c 	\ 
	ld (bc),a			;8bf3	02 	. 
	ret m			;8bf4	f8 	. 
	adc a,e			;8bf5	8b 	. 
	inc bc			;8bf6	03 	. 
	adc a,h			;8bf7	8c 	. 
	inc bc			;8bf8	03 	. 
	and b			;8bf9	a0 	. 
	nop			;8bfa	00 	. 
	nop			;8bfb	00 	. 
	ex af,af'			;8bfc	08 	. 
	inc bc			;8bfd	03 	. 
	sub b			;8bfe	90 	. 
	dec bc			;8bff	0b 	. 
	sub c			;8c00	91 	. 
	dec b			;8c01	05 	. 
	sub d			;8c02	92 	. 
sub_8c03h:
	inc bc			;8c03	03 	. 
l8c04h:
	and b			;8c04	a0 	. 
	nop			;8c05	00 	. 
	nop			;8c06	00 	. 
	ex af,af'			;8c07	08 	. 
	ld (bc),a			;8c08	02 	. 
	sub e			;8c09	93 	. 
	ld a,(bc)			;8c0a	0a 	. 
	sub h			;8c0b	94 	. 
	dec b			;8c0c	05 	. 
	sub l			;8c0d	95 	. 
	inc b			;8c0e	04 	. 
	ld h,h			;8c0f	64 	d 
	nop			;8c10	00 	. 
	nop			;8c11	00 	. 
	ex af,af'			;8c12	08 	. 
	ex af,af'			;8c13	08 	. 
	nop			;8c14	00 	. 
	ld l,008h		;8c15	2e 08 	. . 
	cpl			;8c17	2f 	/ 
	nop			;8c18	00 	. 
	jr nc,l8c23h		;8c19	30 08 	0 . 
	ld sp,06404h		;8c1b	31 04 64 	1 . d 
	nop			;8c1e	00 	. 
	nop			;8c1f	00 	. 
	ex af,af'			;8c20	08 	. 
	ex af,af'			;8c21	08 	. 
	nop			;8c22	00 	. 
l8c23h:
	ld (03308h),a		;8c23	32 08 33 	2 . 3 
	nop			;8c26	00 	. 
	inc (hl)			;8c27	34 	4 
	ex af,af'			;8c28	08 	. 
	dec (hl)			;8c29	35 	5 
	ld (bc),a			;8c2a	02 	. 
	cpl			;8c2b	2f 	/ 
	adc a,h			;8c2c	8c 	. 
	dec a			;8c2d	3d 	= 
	adc a,h			;8c2e	8c 	. 
	inc b			;8c2f	04 	. 
	ld h,h			;8c30	64 	d 
	nop			;8c31	00 	. 
	nop			;8c32	00 	. 
	ex af,af'			;8c33	08 	. 
	ex af,af'			;8c34	08 	. 
	ld bc,00920h		;8c35	01 20 09 	.   . 
	ld hl,02202h		;8c38	21 02 22 	! . " 
	ld a,(bc)			;8c3b	0a 	. 
	inc hl			;8c3c	23 	# 
	inc b			;8c3d	04 	. 
	ld h,h			;8c3e	64 	d 
	nop			;8c3f	00 	. 
	nop			;8c40	00 	. 
	ex af,af'			;8c41	08 	. 
	ex af,af'			;8c42	08 	. 
	nop			;8c43	00 	. 
	inc h			;8c44	24 	$ 
	ex af,af'			;8c45	08 	. 
	ld hl,02501h		;8c46	21 01 25 	! . % 
	add hl,bc			;8c49	09 	. 
	ld h,002h		;8c4a	26 02 	& . 
	ld d,b			;8c4c	50 	P 
	adc a,h			;8c4d	8c 	. 
	ld e,(hl)			;8c4e	5e 	^ 
	adc a,h			;8c4f	8c 	. 
	inc b			;8c50	04 	. 
	sub h			;8c51	94 	. 
	nop			;8c52	00 	. 
	nop			;8c53	00 	. 
	ex af,af'			;8c54	08 	. 
	ex af,af'			;8c55	08 	. 
	rlca			;8c56	07 	. 
	ld e,l			;8c57	5d 	] 
	rst 38h			;8c58	ff 	. 
	ld e,(hl)			;8c59	5e 	^ 
	ex af,af'			;8c5a	08 	. 
	ld e,a			;8c5b	5f 	_ 
	nop			;8c5c	00 	. 
	ld h,b			;8c5d	60 	` 
	inc b			;8c5e	04 	. 
	sub h			;8c5f	94 	. 
	nop			;8c60	00 	. 
	nop			;8c61	00 	. 
	ex af,af'			;8c62	08 	. 
	ex af,af'			;8c63	08 	. 
	rlca			;8c64	07 	. 
	ld h,c			;8c65	61 	a 
	rst 38h			;8c66	ff 	. 
	ld h,d			;8c67	62 	b 
	ex af,af'			;8c68	08 	. 
	ld h,e			;8c69	63 	c 
	nop			;8c6a	00 	. 
	ld h,h			;8c6b	64 	d 
	ld (bc),a			;8c6c	02 	. 
	ld (hl),c			;8c6d	71 	q 
	adc a,h			;8c6e	8c 	. 
	ld a,a			;8c6f	7f 	 
	adc a,h			;8c70	8c 	. 
	inc b			;8c71	04 	. 
	ld h,h			;8c72	64 	d 
	nop			;8c73	00 	. 
	nop			;8c74	00 	. 
	ex af,af'			;8c75	08 	. 
	ex af,af'			;8c76	08 	. 
	rlca			;8c77	07 	. 
	daa			;8c78	27 	' 
	rst 38h			;8c79	ff 	. 
	jr z,l8c82h		;8c7a	28 06 	( . 
	add hl,hl			;8c7c	29 	) 
	cp 02ah		;8c7d	fe 2a 	. * 
	inc b			;8c7f	04 	. 
	ld h,h			;8c80	64 	d 
	nop			;8c81	00 	. 
l8c82h:
	nop			;8c82	00 	. 
	ex af,af'			;8c83	08 	. 
	ex af,af'			;8c84	08 	. 
	ex af,af'			;8c85	08 	. 
	dec hl			;8c86	2b 	+ 
	nop			;8c87	00 	. 
	jr z,l8c91h		;8c88	28 07 	( . 
	inc l			;8c8a	2c 	, 
	rst 38h			;8c8b	ff 	. 
	dec l			;8c8c	2d 	- 
	ld a,(bc)			;8c8d	0a 	. 
	and b			;8c8e	a0 	. 
	nop			;8c8f	00 	. 
	nop			;8c90	00 	. 
l8c91h:
	ex af,af'			;8c91	08 	. 
	ex af,af'			;8c92	08 	. 
	ex af,af'			;8c93	08 	. 
	djnz $+18		;8c94	10 10 	. . 
	djnz l8cb0h		;8c96	10 18 	. . 
	jr l8ca3h		;8c98	18 09 	. . 
	and c			;8c9a	a1 	. 
	ld bc,00fa2h		;8c9b	01 a2 0f 	. . . 
	and e			;8c9e	a3 	. 
	rlca			;8c9f	07 	. 
	and h			;8ca0	a4 	. 
	rst 38h			;8ca1	ff 	. 
	and l			;8ca2	a5 	. 
l8ca3h:
	ld c,0a6h		;8ca3	0e a6 	. . 
	ld b,0a7h		;8ca5	06 a7 	. . 
	cp 0a8h		;8ca7	fe a8 	. . 
	ld a,(bc)			;8ca9	0a 	. 
	xor c			;8caa	a9 	. 
	ld (bc),a			;8cab	02 	. 
	xor d			;8cac	aa 	. 
	ex af,af'			;8cad	08 	. 
	and b			;8cae	a0 	. 
	nop			;8caf	00 	. 
l8cb0h:
	nop			;8cb0	00 	. 
	ex af,af'			;8cb1	08 	. 
	ex af,af'			;8cb2	08 	. 
	djnz l8cc5h		;8cb3	10 10 	. . 
	jr l8ccfh		;8cb5	18 18 	. . 
	add hl,bc			;8cb7	09 	. 
	xor e			;8cb8	ab 	. 
	ld bc,00aach		;8cb9	01 ac 0a 	. . . 
	xor l			;8cbc	ad 	. 
	ld (bc),a			;8cbd	02 	. 
	xor (hl)			;8cbe	ae 	. 
	dec c			;8cbf	0d 	. 
	xor a			;8cc0	af 	. 
	dec b			;8cc1	05 	. 
	or b			;8cc2	b0 	. 
	ex af,af'			;8cc3	08 	. 
	or c			;8cc4	b1 	. 
l8cc5h:
	nop			;8cc5	00 	. 
	or d			;8cc6	b2 	. 
	inc bc			;8cc7	03 	. 
	ld h,h			;8cc8	64 	d 
	cp 006h		;8cc9	fe 06 	. . 
	ld b,004h		;8ccb	06 04 	. . 
	dec c			;8ccd	0d 	. 
	nop			;8cce	00 	. 
l8ccfh:
	ld c,008h		;8ccf	0e 08 	. . 
	rrca			;8cd1	0f 	. 
	ld b,08ch		;8cd2	06 8c 	. . 
	nop			;8cd4	00 	. 
	nop			;8cd5	00 	. 
	ex af,af'			;8cd6	08 	. 
	ex af,af'			;8cd7	08 	. 
	djnz l8ceah		;8cd8	10 10 	. . 
	inc b			;8cda	04 	. 
	inc d			;8cdb	14 	. 
	inc c			;8cdc	0c 	. 
	dec d			;8cdd	15 	. 
	inc bc			;8cde	03 	. 
	ld d,014h		;8cdf	16 14 	. . 
	ld d,003h		;8ce1	16 03 	. . 
	ld d,014h		;8ce3	16 14 	. . 
	ld d,002h		;8ce5	16 02 	. . 
	adc a,b			;8ce7	88 	. 
	adc a,(hl)			;8ce8	8e 	. 
	cp h			;8ce9	bc 	. 
l8ceah:
	sub b			;8cea	90 	. 
	inc b			;8ceb	04 	. 
	cpl			;8cec	2f 	/ 
	adc a,l			;8ced	8d 	. 
	ld b,c			;8cee	41 	A 
	adc a,l			;8cef	8d 	. 
	cpl			;8cf0	2f 	/ 
	adc a,l			;8cf1	8d 	. 
	ld d,(hl)			;8cf2	56 	V 
	adc a,l			;8cf3	8d 	. 
	inc b			;8cf4	04 	. 
	ld l,e			;8cf5	6b 	k 
	adc a,l			;8cf6	8d 	. 
	ld a,l			;8cf7	7d 	} 
	adc a,l			;8cf8	8d 	. 
	ld l,e			;8cf9	6b 	k 
	adc a,l			;8cfa	8d 	. 
	sub d			;8cfb	92 	. 
	adc a,l			;8cfc	8d 	. 
	ld (bc),a			;8cfd	02 	. 
	ld bc,0138eh		;8cfe	01 8e 13 	. . . 
sub_8d01h:
	adc a,(hl)			;8d01	8e 	. 
sub_8d02h:
	ld (bc),a			;8d02	02 	. 
sub_8d03h:
	dec h			;8d03	25 	% 
	adc a,(hl)			;8d04	8e 	. 
	scf			;8d05	37 	7 
sub_8d06h:
	adc a,(hl)			;8d06	8e 	. 
	inc b			;8d07	04 	. 
	ld a,e			;8d08	7b 	{ 
	adc a,a			;8d09	8f 	. 
	sbc a,a			;8d0a	9f 	. 
	adc a,a			;8d0b	8f 	. 
	add a,08fh		;8d0c	c6 8f 	. . 
	jp pe,0048fh		;8d0e	ea 8f 04 	. . . 
	ld de,03590h		;8d11	11 90 35 	. . 5 
	sub b			;8d14	90 	. 
	ld e,h			;8d15	5c 	\ 
	sub b			;8d16	90 	. 
	add a,b			;8d17	80 	. 
	sub b			;8d18	90 	. 
	ld (bc),a			;8d19	02 	. 
	ld hl,(0458fh)		;8d1a	2a 8f 45 	* . E 
	adc a,a			;8d1d	8f 	. 
	ld (bc),a			;8d1e	02 	. 
	ld d,d			;8d1f	52 	R 
	sub c			;8d20	91 	. 
	ld l,l			;8d21	6d 	m 
	sub c			;8d22	91 	. 
	inc bc			;8d23	03 	. 
	ex (sp),hl			;8d24	e3 	. 
	sub b			;8d25	90 	. 
	ret m			;8d26	f8 	. 
	sub b			;8d27	90 	. 
	dec c			;8d28	0d 	. 
	sub c			;8d29	91 	. 
	ld (bc),a			;8d2a	02 	. 
	ld (hl),e			;8d2b	73 	s 
	adc a,(hl)			;8d2c	8e 	. 
	adc a,b			;8d2d	88 	. 
	adc a,(hl)			;8d2e	8e 	. 
	add a,b			;8d2f	80 	. 
	dec b			;8d30	05 	. 
	inc b			;8d31	04 	. 
	nop			;8d32	00 	. 
	nop			;8d33	00 	. 
	ex af,af'			;8d34	08 	. 
	ex af,af'			;8d35	08 	. 
	djnz l8d39h		;8d36	10 01 	. . 
	nop			;8d38	00 	. 
l8d39h:
	add hl,bc			;8d39	09 	. 
	ld bc,00201h		;8d3a	01 01 02 	. . . 
	add hl,bc			;8d3d	09 	. 
	inc bc			;8d3e	03 	. 
	dec b			;8d3f	05 	. 
	inc b			;8d40	04 	. 
	add a,c			;8d41	81 	. 
	ld b,004h		;8d42	06 04 	. . 
	nop			;8d44	00 	. 
	nop			;8d45	00 	. 
	ex af,af'			;8d46	08 	. 
	ex af,af'			;8d47	08 	. 
	djnz l8d5ah		;8d48	10 10 	. . 
	ld bc,00900h		;8d4a	01 00 09 	. . . 
	ld bc,00201h		;8d4d	01 01 02 	. . . 
	add hl,bc			;8d50	09 	. 
	inc bc			;8d51	03 	. 
	ld (bc),a			;8d52	02 	. 
	inc b			;8d53	04 	. 
	ld a,(bc)			;8d54	0a 	. 
	dec b			;8d55	05 	. 
	add a,d			;8d56	82 	. 
	ld b,004h		;8d57	06 04 	. . 
	nop			;8d59	00 	. 
l8d5ah:
	nop			;8d5a	00 	. 
	ex af,af'			;8d5b	08 	. 
	ex af,af'			;8d5c	08 	. 
	djnz l8d6fh		;8d5d	10 10 	. . 
	ld bc,00900h		;8d5f	01 00 09 	. . . 
	ld bc,00201h		;8d62	01 01 02 	. . . 
	add hl,bc			;8d65	09 	. 
	inc bc			;8d66	03 	. 
	ld bc,00904h		;8d67	01 04 09 	. . . 
	dec b			;8d6a	05 	. 
	add a,e			;8d6b	83 	. 
	dec b			;8d6c	05 	. 
	inc c			;8d6d	0c 	. 
	nop			;8d6e	00 	. 
l8d6fh:
	nop			;8d6f	00 	. 
	ex af,af'			;8d70	08 	. 
	ex af,af'			;8d71	08 	. 
	djnz l8d74h		;8d72	10 00 	. . 
l8d74h:
	nop			;8d74	00 	. 
	ex af,af'			;8d75	08 	. 
	ld bc,00200h		;8d76	01 00 02 	. . . 
	ex af,af'			;8d79	08 	. 
	inc bc			;8d7a	03 	. 
	inc b			;8d7b	04 	. 
	inc b			;8d7c	04 	. 
	add a,h			;8d7d	84 	. 
	ld b,00ch		;8d7e	06 0c 	. . 
	nop			;8d80	00 	. 
	nop			;8d81	00 	. 
	ex af,af'			;8d82	08 	. 
	ex af,af'			;8d83	08 	. 
	djnz l8d96h		;8d84	10 10 	. . 
	nop			;8d86	00 	. 
	nop			;8d87	00 	. 
	ex af,af'			;8d88	08 	. 
	ld bc,00200h		;8d89	01 00 02 	. . . 
	ex af,af'			;8d8c	08 	. 
	inc bc			;8d8d	03 	. 
	ld bc,00904h		;8d8e	01 04 09 	. . . 
	dec b			;8d91	05 	. 
	add a,l			;8d92	85 	. 
	ld b,00ch		;8d93	06 0c 	. . 
	nop			;8d95	00 	. 
l8d96h:
	nop			;8d96	00 	. 
	ex af,af'			;8d97	08 	. 
	ex af,af'			;8d98	08 	. 
	djnz l8dabh		;8d99	10 10 	. . 
	nop			;8d9b	00 	. 
	nop			;8d9c	00 	. 
	ex af,af'			;8d9d	08 	. 
	ld bc,00200h		;8d9e	01 00 02 	. . . 
	ex af,af'			;8da1	08 	. 
	inc bc			;8da2	03 	. 
	ld bc,00904h		;8da3	01 04 09 	. . . 
	dec b			;8da6	05 	. 
	add a,(hl)			;8da7	86 	. 
	ld b,014h		;8da8	06 14 	. . 
	inc b			;8daa	04 	. 
l8dabh:
	inc b			;8dab	04 	. 
	inc c			;8dac	0c 	. 
	inc c			;8dad	0c 	. 
	inc d			;8dae	14 	. 
	inc d			;8daf	14 	. 
	ld bc,00900h		;8db0	01 00 09 	. . . 
	ld bc,00201h		;8db3	01 01 02 	. . . 
	add hl,bc			;8db6	09 	. 
	inc bc			;8db7	03 	. 
	inc bc			;8db8	03 	. 
	inc b			;8db9	04 	. 
	dec bc			;8dba	0b 	. 
	dec b			;8dbb	05 	. 
	add a,a			;8dbc	87 	. 
	ld b,018h		;8dbd	06 18 	. . 
	inc b			;8dbf	04 	. 
	inc b			;8dc0	04 	. 
	inc c			;8dc1	0c 	. 
	inc c			;8dc2	0c 	. 
	inc d			;8dc3	14 	. 
	inc d			;8dc4	14 	. 
	nop			;8dc5	00 	. 
	nop			;8dc6	00 	. 
	ex af,af'			;8dc7	08 	. 
	ld bc,00200h		;8dc8	01 00 02 	. . . 
	ex af,af'			;8dcb	08 	. 
	inc bc			;8dcc	03 	. 
	nop			;8dcd	00 	. 
	inc b			;8dce	04 	. 
	ex af,af'			;8dcf	08 	. 
	dec b			;8dd0	05 	. 
	adc a,b			;8dd1	88 	. 
	rlca			;8dd2	07 	. 
	inc b			;8dd3	04 	. 
	ld bc,00801h		;8dd4	01 01 08 	. . . 
	add hl,bc			;8dd7	09 	. 
	add hl,bc			;8dd8	09 	. 
	ld de,00111h		;8dd9	11 11 01 	. . . 
	nop			;8ddc	00 	. 
	add hl,bc			;8ddd	09 	. 
	ld bc,002f9h		;8dde	01 f9 02 	. . . 
	ld bc,00903h		;8de1	01 03 09 	. . . 
	inc b			;8de4	04 	. 
	ld (bc),a			;8de5	02 	. 
	dec b			;8de6	05 	. 
	ld a,(bc)			;8de7	0a 	. 
	ld b,089h		;8de8	06 89 	. . 
	rlca			;8dea	07 	. 
	inc c			;8deb	0c 	. 
	ld bc,00901h		;8dec	01 01 09 	. . . 
	add hl,bc			;8def	09 	. 
	ex af,af'			;8df0	08 	. 
	ld de,00011h		;8df1	11 11 00 	. . . 
	nop			;8df4	00 	. 
	ex af,af'			;8df5	08 	. 
	ld bc,00200h		;8df6	01 00 02 	. . . 
	ex af,af'			;8df9	08 	. 
	inc bc			;8dfa	03 	. 
	djnz $+6		;8dfb	10 04 	. . 
	ld bc,00905h		;8dfd	01 05 09 	. . . 
	ld b,08ah		;8e00	06 8a 	. . 
	dec b			;8e02	05 	. 
	inc e			;8e03	1c 	. 
	nop			;8e04	00 	. 
	nop			;8e05	00 	. 
	ex af,af'			;8e06	08 	. 
	ex af,af'			;8e07	08 	. 
	ex af,af'			;8e08	08 	. 
	ld bc,00900h		;8e09	01 00 09 	. . . 
	ld bc,00201h		;8e0c	01 01 02 	. . . 
	add hl,bc			;8e0f	09 	. 
	inc bc			;8e10	03 	. 
	ld de,l8b04h		;8e11	11 04 8b 	. . . 
	dec b			;8e14	05 	. 
	inc e			;8e15	1c 	. 
	nop			;8e16	00 	. 
	nop			;8e17	00 	. 
	ex af,af'			;8e18	08 	. 
	ex af,af'			;8e19	08 	. 
	ex af,af'			;8e1a	08 	. 
	ld bc,00900h		;8e1b	01 00 09 	. . . 
	ld bc,00201h		;8e1e	01 01 02 	. . . 
	add hl,bc			;8e21	09 	. 
	inc bc			;8e22	03 	. 
	ld de,l8c04h		;8e23	11 04 8c 	. . . 
	dec b			;8e26	05 	. 
	inc h			;8e27	24 	$ 
	nop			;8e28	00 	. 
	nop			;8e29	00 	. 
	ex af,af'			;8e2a	08 	. 
	ex af,af'			;8e2b	08 	. 
	ex af,af'			;8e2c	08 	. 
	ex af,af'			;8e2d	08 	. 
	nop			;8e2e	00 	. 
	djnz l8e32h		;8e2f	10 01 	. . 
	nop			;8e31	00 	. 
l8e32h:
	ld (bc),a			;8e32	02 	. 
	ex af,af'			;8e33	08 	. 
	inc bc			;8e34	03 	. 
	djnz l8e3bh		;8e35	10 04 	. . 
	adc a,l			;8e37	8d 	. 
	dec b			;8e38	05 	. 
	inc h			;8e39	24 	$ 
	nop			;8e3a	00 	. 
l8e3bh:
	nop			;8e3b	00 	. 
	ex af,af'			;8e3c	08 	. 
	ex af,af'			;8e3d	08 	. 
	ex af,af'			;8e3e	08 	. 
	ex af,af'			;8e3f	08 	. 
	nop			;8e40	00 	. 
	djnz $+3		;8e41	10 01 	. . 
	ld bc,00902h		;8e43	01 02 09 	. . . 
	inc bc			;8e46	03 	. 
	djnz l8e4dh		;8e47	10 04 	. . 
	adc a,(hl)			;8e49	8e 	. 
	ld b,01ch		;8e4a	06 1c 	. . 
	nop			;8e4c	00 	. 
l8e4dh:
	nop			;8e4d	00 	. 
	ex af,af'			;8e4e	08 	. 
	ex af,af'			;8e4f	08 	. 
	ex af,af'			;8e50	08 	. 
	ex af,af'			;8e51	08 	. 
	ld bc,00900h		;8e52	01 00 09 	. . . 
	ld bc,002f9h		;8e55	01 f9 02 	. . . 
	ld bc,00903h		;8e58	01 03 09 	. . . 
	inc b			;8e5b	04 	. 
	ld de,l8f05h		;8e5c	11 05 8f 	. . . 
	ld b,024h		;8e5f	06 24 	. $ 
	nop			;8e61	00 	. 
	nop			;8e62	00 	. 
	ex af,af'			;8e63	08 	. 
	ex af,af'			;8e64	08 	. 
	ex af,af'			;8e65	08 	. 
	ex af,af'			;8e66	08 	. 
	ex af,af'			;8e67	08 	. 
	nop			;8e68	00 	. 
	djnz l8e6ch		;8e69	10 01 	. . 
	nop			;8e6b	00 	. 
l8e6ch:
	ld (bc),a			;8e6c	02 	. 
	ex af,af'			;8e6d	08 	. 
	inc bc			;8e6e	03 	. 
	djnz $+6		;8e6f	10 04 	. . 
	jr $+7		;8e71	18 05 	. . 
	sub b			;8e73	90 	. 
	ld b,00ch		;8e74	06 0c 	. . 
	ld bc,00901h		;8e76	01 01 09 	. . . 
	add hl,bc			;8e79	09 	. 
	ld de,00011h		;8e7a	11 11 00 	. . . 
	nop			;8e7d	00 	. 
	ex af,af'			;8e7e	08 	. 
	ld bc,00200h		;8e7f	01 00 02 	. . . 
	ex af,af'			;8e82	08 	. 
	inc bc			;8e83	03 	. 
	ld (bc),a			;8e84	02 	. 
	inc b			;8e85	04 	. 
	ld a,(bc)			;8e86	0a 	. 
	dec b			;8e87	05 	. 
	sub c			;8e88	91 	. 
	ld b,00ch		;8e89	06 0c 	. . 
	ld bc,00901h		;8e8b	01 01 09 	. . . 
	add hl,bc			;8e8e	09 	. 
	ld de,00011h		;8e8f	11 11 00 	. . . 
	nop			;8e92	00 	. 
	ex af,af'			;8e93	08 	. 
	ld bc,00200h		;8e94	01 00 02 	. . . 
	ex af,af'			;8e97	08 	. 
	inc bc			;8e98	03 	. 
	ld bc,00904h		;8e99	01 04 09 	. . . 
	dec b			;8e9c	05 	. 
	sub d			;8e9d	92 	. 
	ld a,(bc)			;8e9e	0a 	. 
	inc c			;8e9f	0c 	. 
	ld bc,00901h		;8ea0	01 01 09 	. . . 
	add hl,bc			;8ea3	09 	. 
	ld de,00311h		;8ea4	11 11 03 	. . . 
	inc bc			;8ea7	03 	. 
	dec bc			;8ea8	0b 	. 
	dec bc			;8ea9	0b 	. 
	nop			;8eaa	00 	. 
	nop			;8eab	00 	. 
	ex af,af'			;8eac	08 	. 
	ld bc,00200h		;8ead	01 00 02 	. . . 
	ex af,af'			;8eb0	08 	. 
	inc bc			;8eb1	03 	. 
	ld bc,00904h		;8eb2	01 04 09 	. . . 
	dec b			;8eb5	05 	. 
	djnz l8ebeh		;8eb6	10 06 	. . 
	jr l8ec1h		;8eb8	18 07 	. . 
	djnz l8ec4h		;8eba	10 08 	. . 
	jr $+11		;8ebc	18 09 	. . 
l8ebeh:
	sub e			;8ebe	93 	. 
	ld a,(bc)			;8ebf	0a 	. 
	inc c			;8ec0	0c 	. 
l8ec1h:
	ld bc,00901h		;8ec1	01 01 09 	. . . 
l8ec4h:
	add hl,bc			;8ec4	09 	. 
	ld de,00311h		;8ec5	11 11 03 	. . . 
	inc bc			;8ec8	03 	. 
	dec bc			;8ec9	0b 	. 
	dec bc			;8eca	0b 	. 
	nop			;8ecb	00 	. 
	nop			;8ecc	00 	. 
	ex af,af'			;8ecd	08 	. 
	ld bc,00200h		;8ece	01 00 02 	. . . 
	ex af,af'			;8ed1	08 	. 
	inc bc			;8ed2	03 	. 
	ld bc,00904h		;8ed3	01 04 09 	. . . 
	dec b			;8ed6	05 	. 
	djnz l8edfh		;8ed7	10 06 	. . 
	jr l8ee2h		;8ed9	18 07 	. . 
	djnz l8ee5h		;8edb	10 08 	. . 
	jr $+11		;8edd	18 09 	. . 
l8edfh:
	sub h			;8edf	94 	. 
	ld a,(bc)			;8ee0	0a 	. 
	inc c			;8ee1	0c 	. 
l8ee2h:
	ld bc,00901h		;8ee2	01 01 09 	. . . 
l8ee5h:
	add hl,bc			;8ee5	09 	. 
	ld de,00311h		;8ee6	11 11 03 	. . . 
	inc bc			;8ee9	03 	. 
	dec bc			;8eea	0b 	. 
	dec bc			;8eeb	0b 	. 
	nop			;8eec	00 	. 
	nop			;8eed	00 	. 
	ex af,af'			;8eee	08 	. 
	ld bc,00200h		;8eef	01 00 02 	. . . 
	ex af,af'			;8ef2	08 	. 
	inc bc			;8ef3	03 	. 
	ld bc,00904h		;8ef4	01 04 09 	. . . 
	dec b			;8ef7	05 	. 
	djnz l8f00h		;8ef8	10 06 	. . 
	jr l8f03h		;8efa	18 07 	. . 
	djnz l8f06h		;8efc	10 08 	. . 
	jr l8f09h		;8efe	18 09 	. . 
l8f00h:
	sub l			;8f00	95 	. 
	ld b,02ch		;8f01	06 2c 	. , 
l8f03h:
	nop			;8f03	00 	. 
	nop			;8f04	00 	. 
l8f05h:
	ex af,af'			;8f05	08 	. 
l8f06h:
	ex af,af'			;8f06	08 	. 
	djnz l8f19h		;8f07	10 10 	. . 
l8f09h:
	ld bc,00900h		;8f09	01 00 09 	. . . 
	ld bc,00200h		;8f0c	01 00 02 	. . . 
	ex af,af'			;8f0f	08 	. 
	inc bc			;8f10	03 	. 
	ld bc,00904h		;8f11	01 04 09 	. . . 
	dec b			;8f14	05 	. 
	sub (hl)			;8f15	96 	. 
	ld b,034h		;8f16	06 34 	. 4 
	nop			;8f18	00 	. 
l8f19h:
	nop			;8f19	00 	. 
	ex af,af'			;8f1a	08 	. 
	ex af,af'			;8f1b	08 	. 
	djnz l8f2eh		;8f1c	10 10 	. . 
	nop			;8f1e	00 	. 
	nop			;8f1f	00 	. 
	ex af,af'			;8f20	08 	. 
	ld bc,00200h		;8f21	01 00 02 	. . . 
	ex af,af'			;8f24	08 	. 
	inc bc			;8f25	03 	. 
	ld bc,00904h		;8f26	01 04 09 	. . . 
	dec b			;8f29	05 	. 
	sub a			;8f2a	97 	. 
	ex af,af'			;8f2b	08 	. 
	inc a			;8f2c	3c 	< 
	nop			;8f2d	00 	. 
l8f2eh:
	nop			;8f2e	00 	. 
	ex af,af'			;8f2f	08 	. 
	ex af,af'			;8f30	08 	. 
	ex af,af'			;8f31	08 	. 
	djnz l8f44h		;8f32	10 10 	. . 
	djnz l8f38h		;8f34	10 02 	. . 
	nop			;8f36	00 	. 
	ld a,(bc)			;8f37	0a 	. 
l8f38h:
	ld bc,00201h		;8f38	01 01 02 	. . . 
	add hl,bc			;8f3b	09 	. 
	inc bc			;8f3c	03 	. 
	ld de,00004h		;8f3d	11 04 00 	. . . 
	dec b			;8f40	05 	. 
	ex af,af'			;8f41	08 	. 
	ld b,010h		;8f42	06 10 	. . 
l8f44h:
	rlca			;8f44	07 	. 
	sbc a,b			;8f45	98 	. 
	ex af,af'			;8f46	08 	. 
	inc a			;8f47	3c 	< 
	nop			;8f48	00 	. 
	nop			;8f49	00 	. 
	ex af,af'			;8f4a	08 	. 
	ex af,af'			;8f4b	08 	. 
	ex af,af'			;8f4c	08 	. 
	djnz l8f5fh		;8f4d	10 10 	. . 
	djnz l8f53h		;8f4f	10 02 	. . 
	nop			;8f51	00 	. 
	ld a,(bc)			;8f52	0a 	. 
l8f53h:
	ld bc,00201h		;8f53	01 01 02 	. . . 
	add hl,bc			;8f56	09 	. 
	inc bc			;8f57	03 	. 
	ld de,00004h		;8f58	11 04 00 	. . . 
	dec b			;8f5b	05 	. 
	ex af,af'			;8f5c	08 	. 
	ld b,010h		;8f5d	06 10 	. . 
l8f5fh:
	rlca			;8f5f	07 	. 
	sbc a,c			;8f60	99 	. 
	ex af,af'			;8f61	08 	. 
	ld b,b			;8f62	40 	@ 
	nop			;8f63	00 	. 
	nop			;8f64	00 	. 
	ex af,af'			;8f65	08 	. 
	ex af,af'			;8f66	08 	. 
	ex af,af'			;8f67	08 	. 
	djnz l8f7ah		;8f68	10 10 	. . 
	djnz l8f6dh		;8f6a	10 01 	. . 
	nop			;8f6c	00 	. 
l8f6dh:
	add hl,bc			;8f6d	09 	. 
	ld bc,00201h		;8f6e	01 01 02 	. . . 
	add hl,bc			;8f71	09 	. 
	inc bc			;8f72	03 	. 
	ld de,00004h		;8f73	11 04 00 	. . . 
	dec b			;8f76	05 	. 
	ex af,af'			;8f77	08 	. 
	ld b,010h		;8f78	06 10 	. . 
l8f7ah:
	rlca			;8f7a	07 	. 
	sbc a,l			;8f7b	9d 	. 
	dec bc			;8f7c	0b 	. 
	ld c,h			;8f7d	4c 	L 
	nop			;8f7e	00 	. 
	nop			;8f7f	00 	. 
	nop			;8f80	00 	. 
	ex af,af'			;8f81	08 	. 
	ex af,af'			;8f82	08 	. 
	ex af,af'			;8f83	08 	. 
	djnz l8f96h		;8f84	10 10 	. . 
	djnz l8fa0h		;8f86	10 18 	. . 
	jr l8f8ah		;8f88	18 00 	. . 
l8f8ah:
	nop			;8f8a	00 	. 
	ex af,af'			;8f8b	08 	. 
	ld bc,00210h		;8f8c	01 10 02 	. . . 
	nop			;8f8f	00 	. 
	inc bc			;8f90	03 	. 
	ex af,af'			;8f91	08 	. 
	inc b			;8f92	04 	. 
	djnz $+7		;8f93	10 05 	. . 
	nop			;8f95	00 	. 
l8f96h:
	ld b,008h		;8f96	06 08 	. . 
	rlca			;8f98	07 	. 
	djnz l8fa3h		;8f99	10 08 	. . 
	ld (bc),a			;8f9b	02 	. 
	add hl,bc			;8f9c	09 	. 
	ld a,(bc)			;8f9d	0a 	. 
	ld a,(bc)			;8f9e	0a 	. 
	sbc a,(hl)			;8f9f	9e 	. 
l8fa0h:
	inc c			;8fa0	0c 	. 
	ld c,h			;8fa1	4c 	L 
	nop			;8fa2	00 	. 
l8fa3h:
	nop			;8fa3	00 	. 
	nop			;8fa4	00 	. 
	ex af,af'			;8fa5	08 	. 
	ex af,af'			;8fa6	08 	. 
	ex af,af'			;8fa7	08 	. 
	djnz l8fbah		;8fa8	10 10 	. . 
	djnz l8fc4h		;8faa	10 18 	. . 
	jr l8fc6h		;8fac	18 18 	. . 
	ld (bc),a			;8fae	02 	. 
	nop			;8faf	00 	. 
	ld a,(bc)			;8fb0	0a 	. 
	ld bc,00212h		;8fb1	01 12 02 	. . . 
	nop			;8fb4	00 	. 
	inc bc			;8fb5	03 	. 
	ex af,af'			;8fb6	08 	. 
	inc b			;8fb7	04 	. 
	djnz $+7		;8fb8	10 05 	. . 
l8fbah:
	nop			;8fba	00 	. 
	ld b,008h		;8fbb	06 08 	. . 
	rlca			;8fbd	07 	. 
	djnz l8fc8h		;8fbe	10 08 	. . 
	ld (bc),a			;8fc0	02 	. 
	add hl,bc			;8fc1	09 	. 
	ld a,(bc)			;8fc2	0a 	. 
	ld a,(bc)			;8fc3	0a 	. 
l8fc4h:
	ld (de),a			;8fc4	12 	. 
	dec bc			;8fc5	0b 	. 
l8fc6h:
	sbc a,a			;8fc6	9f 	. 
	dec bc			;8fc7	0b 	. 
l8fc8h:
	ld c,h			;8fc8	4c 	L 
	nop			;8fc9	00 	. 
	nop			;8fca	00 	. 
	nop			;8fcb	00 	. 
	ex af,af'			;8fcc	08 	. 
	ex af,af'			;8fcd	08 	. 
	ex af,af'			;8fce	08 	. 
	djnz l8fe1h		;8fcf	10 10 	. . 
	djnz l8febh		;8fd1	10 18 	. . 
	jr l8fd7h		;8fd3	18 02 	. . 
	nop			;8fd5	00 	. 
	ld a,(bc)			;8fd6	0a 	. 
l8fd7h:
	ld bc,00212h		;8fd7	01 12 02 	. . . 
	nop			;8fda	00 	. 
	inc bc			;8fdb	03 	. 
	ex af,af'			;8fdc	08 	. 
	inc b			;8fdd	04 	. 
	djnz $+7		;8fde	10 05 	. . 
	nop			;8fe0	00 	. 
l8fe1h:
	ld b,008h		;8fe1	06 08 	. . 
	rlca			;8fe3	07 	. 
	djnz l8feeh		;8fe4	10 08 	. . 
	ld (bc),a			;8fe6	02 	. 
	add hl,bc			;8fe7	09 	. 
	ld a,(bc)			;8fe8	0a 	. 
	ld a,(bc)			;8fe9	0a 	. 
	and b			;8fea	a0 	. 
l8febh:
	inc c			;8feb	0c 	. 
	ld c,h			;8fec	4c 	L 
	nop			;8fed	00 	. 
l8feeh:
	nop			;8fee	00 	. 
	nop			;8fef	00 	. 
	ex af,af'			;8ff0	08 	. 
	ex af,af'			;8ff1	08 	. 
	ex af,af'			;8ff2	08 	. 
	djnz l9005h		;8ff3	10 10 	. . 
	djnz l900fh		;8ff5	10 18 	. . 
	jr l9011h		;8ff7	18 18 	. . 
	ld (bc),a			;8ff9	02 	. 
	nop			;8ffa	00 	. 
	ld a,(bc)			;8ffb	0a 	. 
	ld bc,00212h		;8ffc	01 12 02 	. . . 
	nop			;8fff	00 	. 
	inc bc			;9000	03 	. 
	ex af,af'			;9001	08 	. 
l9002h:
	inc b			;9002	04 	. 
	djnz $+7		;9003	10 05 	. . 
l9005h:
	nop			;9005	00 	. 
	ld b,008h		;9006	06 08 	. . 
	rlca			;9008	07 	. 
	djnz l9013h		;9009	10 08 	. . 
	ld (bc),a			;900b	02 	. 
	add hl,bc			;900c	09 	. 
	ld a,(bc)			;900d	0a 	. 
	ld a,(bc)			;900e	0a 	. 
l900fh:
	ld (de),a			;900f	12 	. 
	dec bc			;9010	0b 	. 
l9011h:
	and c			;9011	a1 	. 
	dec bc			;9012	0b 	. 
l9013h:
	ld d,b			;9013	50 	P 
	nop			;9014	00 	. 
	nop			;9015	00 	. 
l9016h:
	nop			;9016	00 	. 
	ex af,af'			;9017	08 	. 
	ex af,af'			;9018	08 	. 
	ex af,af'			;9019	08 	. 
	djnz l902ch		;901a	10 10 	. . 
	djnz l9036h		;901c	10 18 	. . 
	jr l9020h		;901e	18 00 	. . 
l9020h:
	nop			;9020	00 	. 
	ex af,af'			;9021	08 	. 
	ld bc,00210h		;9022	01 10 02 	. . . 
	nop			;9025	00 	. 
	inc bc			;9026	03 	. 
	ex af,af'			;9027	08 	. 
l9028h:
	inc b			;9028	04 	. 
	djnz $+7		;9029	10 05 	. . 
	nop			;902b	00 	. 
l902ch:
	ld b,008h		;902c	06 08 	. . 
	rlca			;902e	07 	. 
	djnz l9039h		;902f	10 08 	. . 
	ld b,009h		;9031	06 09 	. . 
	ld c,00ah		;9033	0e 0a 	. . 
	and d			;9035	a2 	. 
l9036h:
	inc c			;9036	0c 	. 
	ld d,b			;9037	50 	P 
	nop			;9038	00 	. 
l9039h:
	nop			;9039	00 	. 
	nop			;903a	00 	. 
	ex af,af'			;903b	08 	. 
	ex af,af'			;903c	08 	. 
	ex af,af'			;903d	08 	. 
l903eh:
	djnz l9050h		;903e	10 10 	. . 
	djnz l905ah		;9040	10 18 	. . 
	jr l905ch		;9042	18 18 	. . 
	ld (bc),a			;9044	02 	. 
	nop			;9045	00 	. 
	ld a,(bc)			;9046	0a 	. 
	ld bc,00212h		;9047	01 12 02 	. . . 
	nop			;904a	00 	. 
	inc bc			;904b	03 	. 
	ex af,af'			;904c	08 	. 
	inc b			;904d	04 	. 
	djnz $+7		;904e	10 05 	. . 
l9050h:
	nop			;9050	00 	. 
	ld b,008h		;9051	06 08 	. . 
l9053h:
	rlca			;9053	07 	. 
	djnz l905eh		;9054	10 08 	. . 
	dec b			;9056	05 	. 
	add hl,bc			;9057	09 	. 
	dec c			;9058	0d 	. 
	ld a,(bc)			;9059	0a 	. 
l905ah:
	dec d			;905a	15 	. 
	dec bc			;905b	0b 	. 
l905ch:
	and e			;905c	a3 	. 
	dec bc			;905d	0b 	. 
l905eh:
	ld d,b			;905e	50 	P 
	nop			;905f	00 	. 
	nop			;9060	00 	. 
	nop			;9061	00 	. 
	ex af,af'			;9062	08 	. 
	ex af,af'			;9063	08 	. 
	ex af,af'			;9064	08 	. 
	djnz l9077h		;9065	10 10 	. . 
	djnz l9081h		;9067	10 18 	. . 
	jr l906dh		;9069	18 02 	. . 
	nop			;906b	00 	. 
	ld a,(bc)			;906c	0a 	. 
l906dh:
	ld bc,00212h		;906d	01 12 02 	. . . 
	nop			;9070	00 	. 
	inc bc			;9071	03 	. 
	ex af,af'			;9072	08 	. 
	inc b			;9073	04 	. 
	djnz $+7		;9074	10 05 	. . 
	nop			;9076	00 	. 
l9077h:
	ld b,008h		;9077	06 08 	. . 
	rlca			;9079	07 	. 
	djnz l9084h		;907a	10 08 	. . 
	ld b,009h		;907c	06 09 	. . 
	ld c,00ah		;907e	0e 0a 	. . 
	and h			;9080	a4 	. 
l9081h:
	inc c			;9081	0c 	. 
	ld d,b			;9082	50 	P 
	nop			;9083	00 	. 
l9084h:
	nop			;9084	00 	. 
	nop			;9085	00 	. 
	ex af,af'			;9086	08 	. 
	ex af,af'			;9087	08 	. 
	ex af,af'			;9088	08 	. 
	djnz l909bh		;9089	10 10 	. . 
	djnz l90a5h		;908b	10 18 	. . 
	jr l90a7h		;908d	18 18 	. . 
	ld (bc),a			;908f	02 	. 
	nop			;9090	00 	. 
	ld a,(bc)			;9091	0a 	. 
	ld bc,00212h		;9092	01 12 02 	. . . 
	nop			;9095	00 	. 
	inc bc			;9096	03 	. 
	ex af,af'			;9097	08 	. 
	inc b			;9098	04 	. 
	djnz $+7		;9099	10 05 	. . 
l909bh:
	nop			;909b	00 	. 
	ld b,008h		;909c	06 08 	. . 
	rlca			;909e	07 	. 
	djnz $+10		;909f	10 08 	. . 
	dec b			;90a1	05 	. 
	add hl,bc			;90a2	09 	. 
	dec c			;90a3	0d 	. 
	ld a,(bc)			;90a4	0a 	. 
l90a5h:
	dec d			;90a5	15 	. 
	dec bc			;90a6	0b 	. 
l90a7h:
	and l			;90a7	a5 	. 
	ld b,004h		;90a8	06 04 	. . 
	nop			;90aa	00 	. 
	nop			;90ab	00 	. 
	ex af,af'			;90ac	08 	. 
	ex af,af'			;90ad	08 	. 
	djnz l90c0h		;90ae	10 10 	. . 
	ld bc,00900h		;90b0	01 00 09 	. . . 
	ld bc,00201h		;90b3	01 01 02 	. . . 
	add hl,bc			;90b6	09 	. 
	inc bc			;90b7	03 	. 
	nop			;90b8	00 	. 
	inc b			;90b9	04 	. 
	ex af,af'			;90ba	08 	. 
	dec b			;90bb	05 	. 
	and (hl)			;90bc	a6 	. 
	ld b,00ch		;90bd	06 0c 	. . 
	nop			;90bf	00 	. 
l90c0h:
	nop			;90c0	00 	. 
	ex af,af'			;90c1	08 	. 
	ex af,af'			;90c2	08 	. 
	djnz l90d5h		;90c3	10 10 	. . 
	nop			;90c5	00 	. 
	nop			;90c6	00 	. 
	ex af,af'			;90c7	08 	. 
	ld bc,00200h		;90c8	01 00 02 	. . . 
	ex af,af'			;90cb	08 	. 
	inc bc			;90cc	03 	. 
	nop			;90cd	00 	. 
	inc b			;90ce	04 	. 
	ex af,af'			;90cf	08 	. 
	dec b			;90d0	05 	. 
	xor b			;90d1	a8 	. 
	dec b			;90d2	05 	. 
	inc c			;90d3	0c 	. 
	nop			;90d4	00 	. 
l90d5h:
	nop			;90d5	00 	. 
	ex af,af'			;90d6	08 	. 
	ex af,af'			;90d7	08 	. 
	djnz l90dah		;90d8	10 00 	. . 
l90dah:
	nop			;90da	00 	. 
	ex af,af'			;90db	08 	. 
	ld bc,00200h		;90dc	01 00 02 	. . . 
	ex af,af'			;90df	08 	. 
	inc bc			;90e0	03 	. 
	inc b			;90e1	04 	. 
	inc b			;90e2	04 	. 
	xor c			;90e3	a9 	. 
	ld b,000h		;90e4	06 00 	. . 
	nop			;90e6	00 	. 
	nop			;90e7	00 	. 
	ex af,af'			;90e8	08 	. 
	ex af,af'			;90e9	08 	. 
	djnz l90fch		;90ea	10 10 	. . 
	nop			;90ec	00 	. 
	nop			;90ed	00 	. 
	ex af,af'			;90ee	08 	. 
	ld bc,00200h		;90ef	01 00 02 	. . . 
	ex af,af'			;90f2	08 	. 
	inc bc			;90f3	03 	. 
	ld bc,00904h		;90f4	01 04 09 	. . . 
	dec b			;90f7	05 	. 
	xor d			;90f8	aa 	. 
	ld b,000h		;90f9	06 00 	. . 
	nop			;90fb	00 	. 
l90fch:
	nop			;90fc	00 	. 
	ex af,af'			;90fd	08 	. 
	ex af,af'			;90fe	08 	. 
	djnz l9111h		;90ff	10 10 	. . 
	nop			;9101	00 	. 
	nop			;9102	00 	. 
	ex af,af'			;9103	08 	. 
	ld bc,00200h		;9104	01 00 02 	. . . 
	ex af,af'			;9107	08 	. 
	inc bc			;9108	03 	. 
	ld bc,00904h		;9109	01 04 09 	. . . 
	dec b			;910c	05 	. 
	xor e			;910d	ab 	. 
	ld b,000h		;910e	06 00 	. . 
	nop			;9110	00 	. 
l9111h:
	nop			;9111	00 	. 
	ex af,af'			;9112	08 	. 
	ex af,af'			;9113	08 	. 
	djnz l9126h		;9114	10 10 	. . 
	nop			;9116	00 	. 
	nop			;9117	00 	. 
	ex af,af'			;9118	08 	. 
	ld bc,00200h		;9119	01 00 02 	. . . 
	ex af,af'			;911c	08 	. 
	inc bc			;911d	03 	. 
	ld (bc),a			;911e	02 	. 
	inc b			;911f	04 	. 
	ld a,(bc)			;9120	0a 	. 
	dec b			;9121	05 	. 
	xor h			;9122	ac 	. 
	ld b,000h		;9123	06 00 	. . 
	nop			;9125	00 	. 
l9126h:
	nop			;9126	00 	. 
	ex af,af'			;9127	08 	. 
	ex af,af'			;9128	08 	. 
	djnz l913bh		;9129	10 10 	. . 
	nop			;912b	00 	. 
	nop			;912c	00 	. 
	ex af,af'			;912d	08 	. 
	ld bc,00200h		;912e	01 00 02 	. . . 
	ex af,af'			;9131	08 	. 
	inc bc			;9132	03 	. 
	nop			;9133	00 	. 
	inc b			;9134	04 	. 
	ex af,af'			;9135	08 	. 
	dec b			;9136	05 	. 
	sbc a,d			;9137	9a 	. 
	ex af,af'			;9138	08 	. 
	ld b,h			;9139	44 	D 
	nop			;913a	00 	. 
l913bh:
	nop			;913b	00 	. 
	ex af,af'			;913c	08 	. 
	ex af,af'			;913d	08 	. 
	ex af,af'			;913e	08 	. 
	djnz l9151h		;913f	10 10 	. . 
	djnz l9143h		;9141	10 00 	. . 
l9143h:
	nop			;9143	00 	. 
	ex af,af'			;9144	08 	. 
	ld bc,00200h		;9145	01 00 02 	. . . 
	ex af,af'			;9148	08 	. 
	inc bc			;9149	03 	. 
	djnz $+6		;914a	10 04 	. . 
	nop			;914c	00 	. 
	dec b			;914d	05 	. 
	ex af,af'			;914e	08 	. 
	ld b,010h		;914f	06 10 	. . 
l9151h:
	rlca			;9151	07 	. 
	sbc a,e			;9152	9b 	. 
	ex af,af'			;9153	08 	. 
	ld b,h			;9154	44 	D 
	nop			;9155	00 	. 
	nop			;9156	00 	. 
	ex af,af'			;9157	08 	. 
	ex af,af'			;9158	08 	. 
	ex af,af'			;9159	08 	. 
	djnz l916ch		;915a	10 10 	. . 
	djnz l915eh		;915c	10 00 	. . 
l915eh:
	nop			;915e	00 	. 
	ex af,af'			;915f	08 	. 
	ld bc,00200h		;9160	01 00 02 	. . . 
	ex af,af'			;9163	08 	. 
	inc bc			;9164	03 	. 
	djnz $+6		;9165	10 04 	. . 
	nop			;9167	00 	. 
	dec b			;9168	05 	. 
	ex af,af'			;9169	08 	. 
	ld b,010h		;916a	06 10 	. . 
l916ch:
	rlca			;916c	07 	. 
	sbc a,h			;916d	9c 	. 
	ex af,af'			;916e	08 	. 
	ld b,h			;916f	44 	D 
	nop			;9170	00 	. 
	nop			;9171	00 	. 
	ex af,af'			;9172	08 	. 
	ex af,af'			;9173	08 	. 
	ex af,af'			;9174	08 	. 
	djnz l9187h		;9175	10 10 	. . 
	djnz l9179h		;9177	10 00 	. . 
l9179h:
	nop			;9179	00 	. 
	ex af,af'			;917a	08 	. 
	ld bc,00200h		;917b	01 00 02 	. . . 
	ex af,af'			;917e	08 	. 
	inc bc			;917f	03 	. 
	djnz $+6		;9180	10 04 	. . 
	nop			;9182	00 	. 
	dec b			;9183	05 	. 
	ex af,af'			;9184	08 	. 
	ld b,010h		;9185	06 10 	. . 
l9187h:
	rlca			;9187	07 	. 
	inc b			;9188	04 	. 
	sub c			;9189	91 	. 
	sub c			;918a	91 	. 
	and (hl)			;918b	a6 	. 
	sub c			;918c	91 	. 
	sub c			;918d	91 	. 
	sub c			;918e	91 	. 
	cp e			;918f	bb 	. 
	sub c			;9190	91 	. 
	xor l			;9191	ad 	. 
	ld b,004h		;9192	06 04 	. . 
	nop			;9194	00 	. 
	nop			;9195	00 	. 
	ex af,af'			;9196	08 	. 
	ex af,af'			;9197	08 	. 
	djnz l91aah		;9198	10 10 	. . 
	nop			;919a	00 	. 
	nop			;919b	00 	. 
	ex af,af'			;919c	08 	. 
	ld bc,00200h		;919d	01 00 02 	. . . 
	ex af,af'			;91a0	08 	. 
	inc bc			;91a1	03 	. 
	ld (bc),a			;91a2	02 	. 
	inc b			;91a3	04 	. 
	ld a,(bc)			;91a4	0a 	. 
	dec b			;91a5	05 	. 
	xor (hl)			;91a6	ae 	. 
	ld b,004h		;91a7	06 04 	. . 
	nop			;91a9	00 	. 
l91aah:
	nop			;91aa	00 	. 
	ex af,af'			;91ab	08 	. 
	ex af,af'			;91ac	08 	. 
	djnz l91bfh		;91ad	10 10 	. . 
	nop			;91af	00 	. 
	nop			;91b0	00 	. 
	ex af,af'			;91b1	08 	. 
	ld bc,00200h		;91b2	01 00 02 	. . . 
	ex af,af'			;91b5	08 	. 
	inc bc			;91b6	03 	. 
	ld bc,00904h		;91b7	01 04 09 	. . . 
	dec b			;91ba	05 	. 
	xor a			;91bb	af 	. 
	ld b,004h		;91bc	06 04 	. . 
	nop			;91be	00 	. 
l91bfh:
	nop			;91bf	00 	. 
	ex af,af'			;91c0	08 	. 
	ex af,af'			;91c1	08 	. 
	djnz l91d4h		;91c2	10 10 	. . 
	nop			;91c4	00 	. 
	nop			;91c5	00 	. 
	ex af,af'			;91c6	08 	. 
	ld bc,00200h		;91c7	01 00 02 	. . . 
	ex af,af'			;91ca	08 	. 
	inc bc			;91cb	03 	. 
	inc bc			;91cc	03 	. 
	inc b			;91cd	04 	. 
	dec bc			;91ce	0b 	. 
	dec b			;91cf	05 	. 
	nop			;91d0	00 	. 
	nop			;91d1	00 	. 
	nop			;91d2	00 	. 
	nop			;91d3	00 	. 
l91d4h:
	ld b,005h		;91d4	06 05 	. . 
	inc b			;91d6	04 	. 
	ld (de),a			;91d7	12 	. 
	ld sp,hl			;91d8	f9 	. 
	ex af,af'			;91d9	08 	. 
	ex af,af'			;91da	08 	. 
	ex af,af'			;91db	08 	. 
	dec b			;91dc	05 	. 
	dec b			;91dd	05 	. 
	inc b			;91de	04 	. 
	ld (de),a			;91df	12 	. 
	rrca			;91e0	0f 	. 
	ex af,af'			;91e1	08 	. 
	ex af,af'			;91e2	08 	. 
	ex af,af'			;91e3	08 	. 
	ld b,005h		;91e4	06 05 	. . 
	ex af,af'			;91e6	08 	. 
	ld c,005h		;91e7	0e 05 	. . 
	dec b			;91e9	05 	. 
	ex af,af'			;91ea	08 	. 
	ld c,003h		;91eb	0e 03 	. . 
	inc c			;91ed	0c 	. 
	inc b			;91ee	04 	. 
	ld a,(bc)			;91ef	0a 	. 
	ld sp,hl			;91f0	f9 	. 
	ex af,af'			;91f1	08 	. 
	ex af,af'			;91f2	08 	. 
	ex af,af'			;91f3	08 	. 
	add hl,bc			;91f4	09 	. 
	inc c			;91f5	0c 	. 
	inc b			;91f6	04 	. 
	ld a,(bc)			;91f7	0a 	. 
	rla			;91f8	17 	. 
	ex af,af'			;91f9	08 	. 
l91fah:
	ex af,af'			;91fa	08 	. 
	ex af,af'			;91fb	08 	. 
	ld b,005h		;91fc	06 05 	. . 
	inc b			;91fe	04 	. 
	djnz l91fah		;91ff	10 f9 	. . 
	ex af,af'			;9201	08 	. 
	ex af,af'			;9202	08 	. 
	ex af,af'			;9203	08 	. 
	dec b			;9204	05 	. 
	dec b			;9205	05 	. 
	inc b			;9206	04 	. 
	djnz $+17		;9207	10 0f 	. . 
	ex af,af'			;9209	08 	. 
	ex af,af'			;920a	08 	. 
	ex af,af'			;920b	08 	. 
	inc b			;920c	04 	. 
	inc c			;920d	0c 	. 
	ld (bc),a			;920e	02 	. 
	inc d			;920f	14 	. 
	ld (bc),a			;9210	02 	. 
	dec c			;9211	0d 	. 
	inc bc			;9212	03 	. 
	ld (de),a			;9213	12 	. 
	inc bc			;9214	03 	. 
	ld a,(bc)			;9215	0a 	. 
	inc b			;9216	04 	. 
	ld c,003h		;9217	0e 03 	. . 
	ld a,(bc)			;9219	0a 	. 
	inc b			;921a	04 	. 
	inc c			;921b	0c 	. 
	inc bc			;921c	03 	. 
	rrca			;921d	0f 	. 
	inc b			;921e	04 	. 
	ld (de),a			;921f	12 	. 
	ld b,00fh		;9220	06 0f 	. . 
	inc b			;9222	04 	. 
	ld (de),a			;9223	12 	. 
	inc bc			;9224	03 	. 
	inc de			;9225	13 	. 
	inc bc			;9226	03 	. 
	ld a,(bc)			;9227	0a 	. 
	ld (bc),a			;9228	02 	. 
	inc de			;9229	13 	. 
	inc bc			;922a	03 	. 
	ld a,(bc)			;922b	0a 	. 
	dec b			;922c	05 	. 
	ld c,001h		;922d	0e 01 	. . 
	add hl,de			;922f	19 	. 
	ld bc,00106h		;9230	01 06 01 	. . . 
	ld b,002h		;9233	06 02 	. . 
	dec c			;9235	0d 	. 
	dec b			;9236	05 	. 
	ld a,(bc)			;9237	0a 	. 
	ld bc,0050dh		;9238	01 0d 05 	. . . 
	ld a,(bc)			;923b	0a 	. 
	nop			;923c	00 	. 
	djnz l923fh		;923d	10 00 	. . 
l923fh:
	djnz l9248h		;923f	10 07 	. . 
	ld (de),a			;9241	12 	. 
	inc b			;9242	04 	. 
	inc l			;9243	2c 	, 
	nop			;9244	00 	. 
	ex af,af'			;9245	08 	. 
	nop			;9246	00 	. 
	ex af,af'			;9247	08 	. 
l9248h:
	inc bc			;9248	03 	. 
	ld (de),a			;9249	12 	. 
	inc bc			;924a	03 	. 
	inc c			;924b	0c 	. 
	inc bc			;924c	03 	. 
	ld (de),a			;924d	12 	. 
	inc bc			;924e	03 	. 
	inc c			;924f	0c 	. 
	ld (bc),a			;9250	02 	. 
	inc e			;9251	1c 	. 
	ld bc,00217h		;9252	01 17 02 	. . . 
	inc c			;9255	0c 	. 
	inc bc			;9256	03 	. 
	inc c			;9257	0c 	. 
	ld bc,00106h		;9258	01 06 01 	. . . 
	ld b,001h		;925b	06 01 	. . 
	ld c,003h		;925d	0e 03 	. . 
l925fh:
	dec d			;925f	15 	. 
	nop			;9260	00 	. 
	ex af,af'			;9261	08 	. 
	nop			;9262	00 	. 
	rrca			;9263	0f 	. 
	inc bc			;9264	03 	. 
l9265h:
	ld a,(bc)			;9265	0a 	. 
	inc bc			;9266	03 	. 
	ld a,(bc)			;9267	0a 	. 
	nop			;9268	00 	. 
	djnz l926dh		;9269	10 02 	. . 
	ld c,001h		;926b	0e 01 	. . 
l926dh:
	rlca			;926d	07 	. 
	ld bc,00608h		;926e	01 08 06 	. . . 
l9271h:
	dec b			;9271	05 	. 
	ld (bc),a			;9272	02 	. 
	ld c,000h		;9273	0e 00 	. . 
	jr l9277h		;9275	18 00 	. . 
l9277h:
	ex af,af'			;9277	08 	. 
	djnz l9292h		;9278	10 18 	. . 
	nop			;927a	00 	. 
	jr nc,$+6		;927b	30 04 	0 . 
	inc c			;927d	0c 	. 
	ld a,(de)			;927e	1a 	. 
	ex af,af'			;927f	08 	. 
	djnz l9292h		;9280	10 10 	. . 
	nop			;9282	00 	. 
l9283h:
	djnz l92adh		;9283	10 28 	. ( 
	djnz l92a1h		;9285	10 1a 	. . 
	ex af,af'			;9287	08 	. 
	ex af,af'			;9288	08 	. 
l9289h:
	djnz l928bh		;9289	10 00 	. . 
l928bh:
	djnz l9295h		;928b	10 08 	. . 
	ex af,af'			;928d	08 	. 
	nop			;928e	00 	. 
l928fh:
	ld b,b			;928f	40 	@ 
	ex af,af'			;9290	08 	. 
	ex af,af'			;9291	08 	. 
l9292h:
	nop			;9292	00 	. 
	ld a,b			;9293	78 	x 
	ex af,af'			;9294	08 	. 
l9295h:
	ex af,af'			;9295	08 	. 
	nop			;9296	00 	. 
	xor b			;9297	a8 	. 
	ld (bc),a			;9298	02 	. 
	inc c			;9299	0c 	. 
	ld bc,00806h		;929a	01 06 08 	. . . 
	jr $+10		;929d	18 08 	. . 
	jr z,l92a9h		;929f	28 08 	( . 
l92a1h:
	ex af,af'			;92a1	08 	. 
	nop			;92a2	00 	. 
	ex af,af'			;92a3	08 	. 
	inc b			;92a4	04 	. 
	ex af,af'			;92a5	08 	. 
	djnz l92b8h		;92a6	10 10 	. . 
	add a,b			;92a8	80 	. 
l92a9h:
	add hl,bc			;92a9	09 	. 
	add a,c			;92aa	81 	. 
	add hl,bc			;92ab	09 	. 
	add a,d			;92ac	82 	. 
l92adh:
	add hl,bc			;92ad	09 	. 
	add a,e			;92ae	83 	. 
	add hl,bc			;92af	09 	. 
	add a,h			;92b0	84 	. 
	add hl,bc			;92b1	09 	. 
	rra			;92b2	1f 	. 
	add hl,bc			;92b3	09 	. 
	rra			;92b4	1f 	. 
	add hl,bc			;92b5	09 	. 
	add a,l			;92b6	85 	. 
	add hl,bc			;92b7	09 	. 
l92b8h:
	add a,(hl)			;92b8	86 	. 
	add hl,bc			;92b9	09 	. 
	rra			;92ba	1f 	. 
	add hl,bc			;92bb	09 	. 
	rra			;92bc	1f 	. 
	add hl,bc			;92bd	09 	. 
	add a,a			;92be	87 	. 
	add hl,bc			;92bf	09 	. 
	adc a,b			;92c0	88 	. 
	add hl,bc			;92c1	09 	. 
	adc a,c			;92c2	89 	. 
	add hl,bc			;92c3	09 	. 
	adc a,d			;92c4	8a 	. 
	add hl,bc			;92c5	09 	. 
	adc a,e			;92c6	8b 	. 
	add hl,bc			;92c7	09 	. 
	inc b			;92c8	04 	. 
	nop			;92c9	00 	. 
	ex af,af'			;92ca	08 	. 
	ex af,af'			;92cb	08 	. 
	djnz l92deh		;92cc	10 10 	. . 
	ex af,af'			;92ce	08 	. 
	adc a,h			;92cf	8c 	. 
	djnz l925fh		;92d0	10 8d 	. . 
	ex af,af'			;92d2	08 	. 
	adc a,(hl)			;92d3	8e 	. 
	djnz l9265h		;92d4	10 8f 	. . 
	inc b			;92d6	04 	. 
	nop			;92d7	00 	. 
	ex af,af'			;92d8	08 	. 
	ex af,af'			;92d9	08 	. 
	djnz l92ech		;92da	10 10 	. . 
	ex af,af'			;92dc	08 	. 
	sub b			;92dd	90 	. 
l92deh:
	djnz l9271h		;92de	10 91 	. . 
	ex af,af'			;92e0	08 	. 
	sub d			;92e1	92 	. 
	djnz l9277h		;92e2	10 93 	. . 
	inc b			;92e4	04 	. 
	nop			;92e5	00 	. 
	ex af,af'			;92e6	08 	. 
	ex af,af'			;92e7	08 	. 
	djnz l92fah		;92e8	10 10 	. . 
	ex af,af'			;92ea	08 	. 
	sub h			;92eb	94 	. 
l92ech:
	djnz l9283h		;92ec	10 95 	. . 
	ex af,af'			;92ee	08 	. 
	sub (hl)			;92ef	96 	. 
	djnz l9289h		;92f0	10 97 	. . 
	ld (bc),a			;92f2	02 	. 
	call m,01692h		;92f3	fc 92 16 	. . . 
	sub e			;92f6	93 	. 
	ld (bc),a			;92f7	02 	. 
	ld c,l			;92f8	4d 	M 
	sub e			;92f9	93 	. 
l92fah:
	jr nc,l928fh		;92fa	30 93 	0 . 
	ex af,af'			;92fc	08 	. 
	nop			;92fd	00 	. 
	nop			;92fe	00 	. 
	nop			;92ff	00 	. 
	ex af,af'			;9300	08 	. 
	ex af,af'			;9301	08 	. 
	djnz $+18		;9302	10 10 	. . 
	jr $+26		;9304	18 18 	. . 
	nop			;9306	00 	. 
	jr nz,l9311h		;9307	20 08 	  . 
	ld hl,02200h		;9309	21 00 22 	! . " 
	ex af,af'			;930c	08 	. 
	inc hl			;930d	23 	# 
	nop			;930e	00 	. 
	inc h			;930f	24 	$ 
	ex af,af'			;9310	08 	. 
l9311h:
	dec h			;9311	25 	% 
	nop			;9312	00 	. 
	ld h,008h		;9313	26 08 	& . 
	daa			;9315	27 	' 
	ex af,af'			;9316	08 	. 
	nop			;9317	00 	. 
	ld bc,00901h		;9318	01 01 09 	. . . 
	add hl,bc			;931b	09 	. 
	ld de,01911h		;931c	11 11 19 	. . . 
	add hl,de			;931f	19 	. 
	nop			;9320	00 	. 
	jr nz,l932bh		;9321	20 08 	  . 
	ld hl,02200h		;9323	21 00 22 	! . " 
	ex af,af'			;9326	08 	. 
	inc hl			;9327	23 	# 
	nop			;9328	00 	. 
	jr z,l9333h		;9329	28 08 	( . 
l932bh:
	add hl,hl			;932b	29 	) 
	nop			;932c	00 	. 
	ld hl,(02b08h)		;932d	2a 08 2b 	* . + 
	add hl,bc			;9330	09 	. 
	nop			;9331	00 	. 
	nop			;9332	00 	. 
l9333h:
	nop			;9333	00 	. 
	ex af,af'			;9334	08 	. 
	ex af,af'			;9335	08 	. 
	djnz l9348h		;9336	10 10 	. . 
	jr l9352h		;9338	18 18 	. . 
	inc c			;933a	0c 	. 
	nop			;933b	00 	. 
	jr nz,l9346h		;933c	20 08 	  . 
	ld hl,02c00h		;933e	21 00 2c 	! . , 
	ex af,af'			;9341	08 	. 
	inc hl			;9342	23 	# 
	nop			;9343	00 	. 
	dec l			;9344	2d 	- 
	ex af,af'			;9345	08 	. 
l9346h:
	dec h			;9346	25 	% 
	nop			;9347	00 	. 
l9348h:
	ld h,008h		;9348	26 08 	& . 
	daa			;934a	27 	' 
	ret m			;934b	f8 	. 
	jr nc,l9358h		;934c	30 0a 	0 . 
	nop			;934e	00 	. 
	nop			;934f	00 	. 
	nop			;9350	00 	. 
	ex af,af'			;9351	08 	. 
l9352h:
	ex af,af'			;9352	08 	. 
	djnz l9365h		;9353	10 10 	. . 
	jr l936fh		;9355	18 18 	. . 
	ex af,af'			;9357	08 	. 
l9358h:
	djnz l935ah		;9358	10 00 	. . 
l935ah:
	jr nz,l9364h		;935a	20 08 	  . 
	ld hl,02c00h		;935c	21 00 2c 	! . , 
	ex af,af'			;935f	08 	. 
	inc hl			;9360	23 	# 
	nop			;9361	00 	. 
	dec l			;9362	2d 	- 
	ex af,af'			;9363	08 	. 
l9364h:
	dec h			;9364	25 	% 
l9365h:
	nop			;9365	00 	. 
	ld h,008h		;9366	26 08 	& . 
	daa			;9368	27 	' 
	ret m			;9369	f8 	. 
	ld l,0f8h		;936a	2e f8 	. . 
	cpl			;936c	2f 	/ 
	ex af,af'			;936d	08 	. 
	nop			;936e	00 	. 
l936fh:
	nop			;936f	00 	. 
	nop			;9370	00 	. 
	ex af,af'			;9371	08 	. 
	ex af,af'			;9372	08 	. 
	djnz l9385h		;9373	10 10 	. . 
	jr $+26		;9375	18 18 	. . 
	nop			;9377	00 	. 
	ld sp,03208h		;9378	31 08 32 	1 . 2 
	nop			;937b	00 	. 
	inc sp			;937c	33 	3 
	ex af,af'			;937d	08 	. 
	inc (hl)			;937e	34 	4 
	nop			;937f	00 	. 
	dec (hl)			;9380	35 	5 
	ex af,af'			;9381	08 	. 
	ld (hl),000h		;9382	36 00 	6 . 
	scf			;9384	37 	7 
l9385h:
	ex af,af'			;9385	08 	. 
	jr c,l938ch		;9386	38 04 	8 . 
	add a,h			;9388	84 	. 
	nop			;9389	00 	. 
	nop			;938a	00 	. 
	ex af,af'			;938b	08 	. 
l938ch:
	ex af,af'			;938c	08 	. 
	nop			;938d	00 	. 
	ld sp,03208h		;938e	31 08 32 	1 . 2 
	nop			;9391	00 	. 
	inc sp			;9392	33 	3 
	ex af,af'			;9393	08 	. 
	inc (hl)			;9394	34 	4 
	inc b			;9395	04 	. 
	call nc,01010h		;9396	d4 10 10 	. . . 
	jr $+26		;9399	18 18 	. . 
	nop			;939b	00 	. 
	dec (hl)			;939c	35 	5 
	ex af,af'			;939d	08 	. 
	ld (hl),000h		;939e	36 00 	6 . 
	scf			;93a0	37 	7 
	ex af,af'			;93a1	08 	. 
	jr c,$+14		;93a2	38 0c 	8 . 
	nop			;93a4	00 	. 
	nop			;93a5	00 	. 
	nop			;93a6	00 	. 
	ex af,af'			;93a7	08 	. 
	ex af,af'			;93a8	08 	. 
	djnz l93bbh		;93a9	10 10 	. . 
	jr l93c5h		;93ab	18 18 	. . 
	ex af,af'			;93ad	08 	. 
	ex af,af'			;93ae	08 	. 
	djnz l93c1h		;93af	10 10 	. . 
	nop			;93b1	00 	. 
	jr nz,l93bch		;93b2	20 08 	  . 
	ld hl,02c00h		;93b4	21 00 2c 	! . , 
	ex af,af'			;93b7	08 	. 
	inc hl			;93b8	23 	# 
	nop			;93b9	00 	. 
	dec l			;93ba	2d 	- 
l93bbh:
	ex af,af'			;93bb	08 	. 
l93bch:
	dec h			;93bc	25 	% 
	nop			;93bd	00 	. 
	ld h,008h		;93be	26 08 	& . 
	daa			;93c0	27 	' 
l93c1h:
	ret p			;93c1	f0 	. 
	sbc a,b			;93c2	98 	. 
	ret m			;93c3	f8 	. 
	sbc a,c			;93c4	99 	. 
l93c5h:
	ret p			;93c5	f0 	. 
	sbc a,d			;93c6	9a 	. 
	ret m			;93c7	f8 	. 
	sbc a,e			;93c8	9b 	. 
	inc c			;93c9	0c 	. 
	nop			;93ca	00 	. 
	nop			;93cb	00 	. 
	nop			;93cc	00 	. 
	ex af,af'			;93cd	08 	. 
	ex af,af'			;93ce	08 	. 
	djnz l93e1h		;93cf	10 10 	. . 
	jr l93ebh		;93d1	18 18 	. . 
	ex af,af'			;93d3	08 	. 
	ex af,af'			;93d4	08 	. 
	djnz l93e7h		;93d5	10 10 	. . 
	nop			;93d7	00 	. 
	jr nz,l93e2h		;93d8	20 08 	  . 
	ld hl,02c00h		;93da	21 00 2c 	! . , 
	ex af,af'			;93dd	08 	. 
	inc hl			;93de	23 	# 
	nop			;93df	00 	. 
	dec l			;93e0	2d 	- 
l93e1h:
	ex af,af'			;93e1	08 	. 
l93e2h:
	dec h			;93e2	25 	% 
	nop			;93e3	00 	. 
	ld h,008h		;93e4	26 08 	& . 
	daa			;93e6	27 	' 
l93e7h:
	ret p			;93e7	f0 	. 
	sbc a,h			;93e8	9c 	. 
	ret m			;93e9	f8 	. 
	sbc a,l			;93ea	9d 	. 
l93ebh:
	ret p			;93eb	f0 	. 
	sbc a,(hl)			;93ec	9e 	. 
	ret m			;93ed	f8 	. 
	sbc a,a			;93ee	9f 	. 
	inc c			;93ef	0c 	. 
	nop			;93f0	00 	. 
	nop			;93f1	00 	. 
	nop			;93f2	00 	. 
	ex af,af'			;93f3	08 	. 
	ex af,af'			;93f4	08 	. 
	djnz l9407h		;93f5	10 10 	. . 
	jr l9411h		;93f7	18 18 	. . 
	ex af,af'			;93f9	08 	. 
	ex af,af'			;93fa	08 	. 
	djnz l940dh		;93fb	10 10 	. . 
	nop			;93fd	00 	. 
	jr nz,l9408h		;93fe	20 08 	  . 
	ld hl,02c00h		;9400	21 00 2c 	! . , 
sub_9403h:
	ex af,af'			;9403	08 	. 
	inc hl			;9404	23 	# 
sub_9405h:
	nop			;9405	00 	. 
sub_9406h:
	dec l			;9406	2d 	- 
l9407h:
	ex af,af'			;9407	08 	. 
l9408h:
	dec h			;9408	25 	% 
	nop			;9409	00 	. 
	ld h,008h		;940a	26 08 	& . 
	daa			;940c	27 	' 
l940dh:
	ret p			;940d	f0 	. 
	and b			;940e	a0 	. 
	ret m			;940f	f8 	. 
	and c			;9410	a1 	. 
l9411h:
	ret p			;9411	f0 	. 
	and d			;9412	a2 	. 
	ret m			;9413	f8 	. 
	and e			;9414	a3 	. 
	ld (bc),a			;9415	02 	. 
	ld a,(de)			;9416	1a 	. 
	sub h			;9417	94 	. 
	dec sp			;9418	3b 	; 
	sub h			;9419	94 	. 
	ld a,(bc)			;941a	0a 	. 
	nop			;941b	00 	. 
	nop			;941c	00 	. 
	nop			;941d	00 	. 
	ex af,af'			;941e	08 	. 
	ex af,af'			;941f	08 	. 
	djnz l9432h		;9420	10 10 	. . 
	jr l943ch		;9422	18 18 	. . 
	ex af,af'			;9424	08 	. 
	djnz l9427h		;9425	10 00 	. . 
l9427h:
	jr nz,l9431h		;9427	20 08 	  . 
	ld hl,02c00h		;9429	21 00 2c 	! . , 
	ex af,af'			;942c	08 	. 
	inc hl			;942d	23 	# 
	nop			;942e	00 	. 
	dec l			;942f	2d 	- 
	ex af,af'			;9430	08 	. 
l9431h:
	dec h			;9431	25 	% 
l9432h:
	nop			;9432	00 	. 
	ld l,008h		;9433	2e 08 	. . 
	daa			;9435	27 	' 
	ret m			;9436	f8 	. 
	cpl			;9437	2f 	/ 
	ret m			;9438	f8 	. 
	jr nc,l943bh		;9439	30 00 	0 . 
l943bh:
	add hl,bc			;943b	09 	. 
l943ch:
	nop			;943c	00 	. 
	nop			;943d	00 	. 
	nop			;943e	00 	. 
	ex af,af'			;943f	08 	. 
	ex af,af'			;9440	08 	. 
	djnz l9453h		;9441	10 10 	. . 
	jr l945dh		;9443	18 18 	. . 
	inc c			;9445	0c 	. 
	nop			;9446	00 	. 
	jr nz,l9451h		;9447	20 08 	  . 
	ld hl,02c00h		;9449	21 00 2c 	! . , 
	ex af,af'			;944c	08 	. 
	inc hl			;944d	23 	# 
	nop			;944e	00 	. 
	dec l			;944f	2d 	- 
	ex af,af'			;9450	08 	. 
l9451h:
	dec h			;9451	25 	% 
	nop			;9452	00 	. 
l9453h:
	ld l,008h		;9453	2e 08 	. . 
	daa			;9455	27 	' 
	ret m			;9456	f8 	. 
	ld sp,00008h		;9457	31 08 00 	1 . . 
	nop			;945a	00 	. 
	nop			;945b	00 	. 
	ex af,af'			;945c	08 	. 
l945dh:
	ex af,af'			;945d	08 	. 
	djnz $+18		;945e	10 10 	. . 
	jr $+26		;9460	18 18 	. . 
	nop			;9462	00 	. 
	jr nz,$+10		;9463	20 08 	  . 
	ld hl,02200h		;9465	21 00 22 	! . " 
	ex af,af'			;9468	08 	. 
	inc hl			;9469	23 	# 
	nop			;946a	00 	. 
	ld (03308h),a		;946b	32 08 33 	2 . 3 
	nop			;946e	00 	. 
	ld l,008h		;946f	2e 08 	. . 
	inc (hl)			;9471	34 	4 
	inc b			;9472	04 	. 
	add a,h			;9473	84 	. 
	nop			;9474	00 	. 
	nop			;9475	00 	. 
	ex af,af'			;9476	08 	. 
	ex af,af'			;9477	08 	. 
	nop			;9478	00 	. 
	jr nz,$+10		;9479	20 08 	  . 
	ld hl,02200h		;947b	21 00 22 	! . " 
	ex af,af'			;947e	08 	. 
	inc hl			;947f	23 	# 
	inc b			;9480	04 	. 
	call nc,01010h		;9481	d4 10 10 	. . . 
	jr $+26		;9484	18 18 	. . 
	nop			;9486	00 	. 
	ld (03308h),a		;9487	32 08 33 	2 . 3 
	nop			;948a	00 	. 
	ld l,008h		;948b	2e 08 	. . 
	inc (hl)			;948d	34 	4 
	inc c			;948e	0c 	. 
	nop			;948f	00 	. 
	nop			;9490	00 	. 
	nop			;9491	00 	. 
	ex af,af'			;9492	08 	. 
	ex af,af'			;9493	08 	. 
	djnz l94a6h		;9494	10 10 	. . 
	jr l94b0h		;9496	18 18 	. . 
	ex af,af'			;9498	08 	. 
	ex af,af'			;9499	08 	. 
	djnz l94ach		;949a	10 10 	. . 
	nop			;949c	00 	. 
	jr nz,l94a7h		;949d	20 08 	  . 
	ld hl,02c00h		;949f	21 00 2c 	! . , 
	ex af,af'			;94a2	08 	. 
	inc hl			;94a3	23 	# 
	nop			;94a4	00 	. 
	dec l			;94a5	2d 	- 
l94a6h:
	ex af,af'			;94a6	08 	. 
l94a7h:
	dec h			;94a7	25 	% 
	nop			;94a8	00 	. 
	ld l,008h		;94a9	2e 08 	. . 
	daa			;94ab	27 	' 
l94ach:
	ret p			;94ac	f0 	. 
	sbc a,b			;94ad	98 	. 
	ret m			;94ae	f8 	. 
	sbc a,c			;94af	99 	. 
l94b0h:
	ret p			;94b0	f0 	. 
	sbc a,d			;94b1	9a 	. 
	ret m			;94b2	f8 	. 
	sbc a,e			;94b3	9b 	. 
	inc c			;94b4	0c 	. 
	nop			;94b5	00 	. 
	nop			;94b6	00 	. 
	nop			;94b7	00 	. 
	ex af,af'			;94b8	08 	. 
	ex af,af'			;94b9	08 	. 
	djnz l94cch		;94ba	10 10 	. . 
	jr l94d6h		;94bc	18 18 	. . 
	ex af,af'			;94be	08 	. 
	ex af,af'			;94bf	08 	. 
	djnz l94d2h		;94c0	10 10 	. . 
	nop			;94c2	00 	. 
	jr nz,l94cdh		;94c3	20 08 	  . 
	ld hl,02c00h		;94c5	21 00 2c 	! . , 
	ex af,af'			;94c8	08 	. 
	inc hl			;94c9	23 	# 
	nop			;94ca	00 	. 
	dec l			;94cb	2d 	- 
l94cch:
	ex af,af'			;94cc	08 	. 
l94cdh:
	dec h			;94cd	25 	% 
	nop			;94ce	00 	. 
	ld l,008h		;94cf	2e 08 	. . 
	daa			;94d1	27 	' 
l94d2h:
	ret p			;94d2	f0 	. 
	sbc a,h			;94d3	9c 	. 
	ret m			;94d4	f8 	. 
	sbc a,l			;94d5	9d 	. 
l94d6h:
	ret p			;94d6	f0 	. 
	sbc a,(hl)			;94d7	9e 	. 
	ret m			;94d8	f8 	. 
	sbc a,a			;94d9	9f 	. 
	inc c			;94da	0c 	. 
	nop			;94db	00 	. 
	nop			;94dc	00 	. 
	nop			;94dd	00 	. 
	ex af,af'			;94de	08 	. 
	ex af,af'			;94df	08 	. 
	djnz l94f2h		;94e0	10 10 	. . 
	jr l94fch		;94e2	18 18 	. . 
	ex af,af'			;94e4	08 	. 
	ex af,af'			;94e5	08 	. 
	djnz l94f8h		;94e6	10 10 	. . 
	nop			;94e8	00 	. 
	jr nz,l94f3h		;94e9	20 08 	  . 
	ld hl,02c00h		;94eb	21 00 2c 	! . , 
	ex af,af'			;94ee	08 	. 
	inc hl			;94ef	23 	# 
	nop			;94f0	00 	. 
	dec l			;94f1	2d 	- 
l94f2h:
	ex af,af'			;94f2	08 	. 
l94f3h:
	dec h			;94f3	25 	% 
	nop			;94f4	00 	. 
	ld l,008h		;94f5	2e 08 	. . 
	daa			;94f7	27 	' 
l94f8h:
	ret p			;94f8	f0 	. 
	and b			;94f9	a0 	. 
	ret m			;94fa	f8 	. 
	and c			;94fb	a1 	. 
l94fch:
	ret p			;94fc	f0 	. 
	and d			;94fd	a2 	. 
	ret m			;94fe	f8 	. 
	and e			;94ff	a3 	. 
	ld (bc),a			;9500	02 	. 
	ld a,(bc)			;9501	0a 	. 
	sub l			;9502	95 	. 
	ld c,e			;9503	4b 	K 
	sub l			;9504	95 	. 
	ld (bc),a			;9505	02 	. 
	out (095h),a		;9506	d3 95 	. . 
	adc a,h			;9508	8c 	. 
	sub l			;9509	95 	. 
	dec d			;950a	15 	. 
	nop			;950b	00 	. 
	nop			;950c	00 	. 
	nop			;950d	00 	. 
	nop			;950e	00 	. 
	ex af,af'			;950f	08 	. 
	ex af,af'			;9510	08 	. 
	ex af,af'			;9511	08 	. 
	djnz l9524h		;9512	10 10 	. . 
	djnz $+18		;9514	10 10 	. . 
	jr l9530h		;9516	18 18 	. . 
	jr l9532h		;9518	18 18 	. . 
	jr nz,l953ch		;951a	20 20 	    
	jr nz,l953eh		;951c	20 20 	    
	jr z,l9548h		;951e	28 28 	( ( 
	jr z,l9527h		;9520	28 05 	( . 
	jr nz,l9531h		;9522	20 0d 	  . 
l9524h:
	ld hl,02215h		;9524	21 15 22 	! . " 
l9527h:
	inc b			;9527	04 	. 
	inc hl			;9528	23 	# 
	inc c			;9529	0c 	. 
	inc h			;952a	24 	$ 
	inc d			;952b	14 	. 
	dec h			;952c	25 	% 
	inc bc			;952d	03 	. 
	ld h,00bh		;952e	26 0b 	& . 
l9530h:
	daa			;9530	27 	' 
l9531h:
	inc de			;9531	13 	. 
l9532h:
	jr z,l954fh		;9532	28 1b 	( . 
	add hl,hl			;9534	29 	) 
	ld (bc),a			;9535	02 	. 
	ld hl,(02b0ah)		;9536	2a 0a 2b 	* . + 
	ld (de),a			;9539	12 	. 
	inc l			;953a	2c 	, 
	ld a,(de)			;953b	1a 	. 
l953ch:
	dec l			;953c	2d 	- 
	inc bc			;953d	03 	. 
l953eh:
	ld l,00bh		;953e	2e 0b 	. . 
	cpl			;9540	2f 	/ 
	inc de			;9541	13 	. 
	jr nc,l955fh		;9542	30 1b 	0 . 
	ld sp,03203h		;9544	31 03 32 	1 . 2 
	dec bc			;9547	0b 	. 
l9548h:
	inc sp			;9548	33 	3 
	inc de			;9549	13 	. 
	inc (hl)			;954a	34 	4 
	dec d			;954b	15 	. 
	nop			;954c	00 	. 
	nop			;954d	00 	. 
	nop			;954e	00 	. 
l954fh:
	nop			;954f	00 	. 
	ex af,af'			;9550	08 	. 
	ex af,af'			;9551	08 	. 
	ex af,af'			;9552	08 	. 
	djnz $+18		;9553	10 10 	. . 
	djnz $+18		;9555	10 10 	. . 
	jr l9571h		;9557	18 18 	. . 
	jr $+26		;9559	18 18 	. . 
	jr nz,l957dh		;955b	20 20 	    
	jr nz,l957fh		;955d	20 20 	    
l955fh:
	jr z,l9589h		;955f	28 28 	( ( 
	jr z,$+8		;9561	28 06 	( . 
	dec (hl)			;9563	35 	5 
	ld c,036h		;9564	0e 36 	. 6 
	ld d,037h		;9566	16 37 	. 7 
	ld b,038h		;9568	06 38 	. 8 
	ld c,039h		;956a	0e 39 	. 9 
	ld d,03ah		;956c	16 3a 	. : 
	nop			;956e	00 	. 
	dec sp			;956f	3b 	; 
	ex af,af'			;9570	08 	. 
l9571h:
	inc a			;9571	3c 	< 
	djnz l95b1h		;9572	10 3d 	. = 
	jr $+64		;9574	18 3e 	. > 
	ld (bc),a			;9576	02 	. 
	ccf			;9577	3f 	? 
	ld a,(bc)			;9578	0a 	. 
	ld b,b			;9579	40 	@ 
	ld (de),a			;957a	12 	. 
	ld b,c			;957b	41 	A 
	ld a,(de)			;957c	1a 	. 
l957dh:
	ld b,d			;957d	42 	B 
	ld (bc),a			;957e	02 	. 
l957fh:
	ld b,e			;957f	43 	C 
	ld a,(bc)			;9580	0a 	. 
	ld b,h			;9581	44 	D 
	ld (de),a			;9582	12 	. 
	ld b,l			;9583	45 	E 
	ld a,(de)			;9584	1a 	. 
	ld sp,04603h		;9585	31 03 46 	1 . F 
	dec bc			;9588	0b 	. 
l9589h:
	ld b,a			;9589	47 	G 
	inc de			;958a	13 	. 
	ld c,b			;958b	48 	H 
	rla			;958c	17 	. 
	nop			;958d	00 	. 
	ld bc,00101h		;958e	01 01 01 	. . . 
	add hl,bc			;9591	09 	. 
	add hl,bc			;9592	09 	. 
	add hl,bc			;9593	09 	. 
	ld de,01111h		;9594	11 11 11 	. . . 
	add hl,de			;9597	19 	. 
	add hl,de			;9598	19 	. 
	add hl,de			;9599	19 	. 
	ld hl,02121h		;959a	21 21 21 	! ! ! 
	ld hl,02929h		;959d	21 29 29 	! ) ) 
	add hl,hl			;95a0	29 	) 
	add hl,hl			;95a1	29 	) 
	djnz $+26		;95a2	10 18 	. . 
	jr $+8		;95a4	18 06 	. . 
	dec (hl)			;95a6	35 	5 
	ld c,036h		;95a7	0e 36 	. 6 
	ld d,037h		;95a9	16 37 	. 7 
	ld b,038h		;95ab	06 38 	. 8 
	ld c,039h		;95ad	0e 39 	. 9 
	ld d,03ah		;95af	16 3a 	. : 
l95b1h:
	ld b,049h		;95b1	06 49 	. I 
	ld c,04ah		;95b3	0e 4a 	. J 
	ld d,04bh		;95b5	16 4b 	. K 
	ld b,04ch		;95b7	06 4c 	. L 
	ld c,04dh		;95b9	0e 4d 	. M 
	ld d,04eh		;95bb	16 4e 	. N 
	inc bc			;95bd	03 	. 
	ld c,a			;95be	4f 	O 
	dec bc			;95bf	0b 	. 
	ld d,b			;95c0	50 	P 
	inc de			;95c1	13 	. 
	ld d,c			;95c2	51 	Q 
	dec de			;95c3	1b 	. 
	ld d,d			;95c4	52 	R 
	ld bc,00953h		;95c5	01 53 09 	. S . 
	ld d,h			;95c8	54 	T 
	ld de,01955h		;95c9	11 55 19 	. U . 
	ld d,(hl)			;95cc	56 	V 
	inc b			;95cd	04 	. 
	ld d,a			;95ce	57 	W 
	ld sp,hl			;95cf	f9 	. 
	ld e,b			;95d0	58 	X 
	ld bc,01759h		;95d1	01 59 17 	. Y . 
	nop			;95d4	00 	. 
	ld bc,00101h		;95d5	01 01 01 	. . . 
	add hl,bc			;95d8	09 	. 
	add hl,bc			;95d9	09 	. 
	add hl,bc			;95da	09 	. 
	ld de,01111h		;95db	11 11 11 	. . . 
	add hl,de			;95de	19 	. 
	add hl,de			;95df	19 	. 
	add hl,de			;95e0	19 	. 
	ld hl,02121h		;95e1	21 21 21 	! ! ! 
	ld hl,02929h		;95e4	21 29 29 	! ) ) 
	add hl,hl			;95e7	29 	) 
	add hl,hl			;95e8	29 	) 
	djnz $+18		;95e9	10 10 	. . 
	jr $+8		;95eb	18 06 	. . 
	dec (hl)			;95ed	35 	5 
	ld c,036h		;95ee	0e 36 	. 6 
	ld d,037h		;95f0	16 37 	. 7 
	ld b,038h		;95f2	06 38 	. 8 
	ld c,039h		;95f4	0e 39 	. 9 
	ld d,03ah		;95f6	16 3a 	. : 
	ld b,049h		;95f8	06 49 	. I 
	ld c,04ah		;95fa	0e 4a 	. J 
	ld d,04bh		;95fc	16 4b 	. K 
	ld b,04ch		;95fe	06 4c 	. L 
	ld c,04dh		;9600	0e 4d 	. M 
	ld d,04eh		;9602	16 4e 	. N 
	inc bc			;9604	03 	. 
	ld c,a			;9605	4f 	O 
sub_9606h:
	dec bc			;9606	0b 	. 
	ld d,b			;9607	50 	P 
	inc de			;9608	13 	. 
	ld d,c			;9609	51 	Q 
	dec de			;960a	1b 	. 
	ld d,d			;960b	52 	R 
	ld bc,00953h		;960c	01 53 09 	. S . 
	ld d,h			;960f	54 	T 
	ld de,01955h		;9610	11 55 19 	. U . 
	ld d,(hl)			;9613	56 	V 
	call m,0045ah		;9614	fc 5a 04 	. Z . 
	ld e,e			;9617	5b 	[ 
	nop			;9618	00 	. 
	ld e,h			;9619	5c 	\ 
	dec d			;961a	15 	. 
	nop			;961b	00 	. 
	nop			;961c	00 	. 
	nop			;961d	00 	. 
	nop			;961e	00 	. 
	ex af,af'			;961f	08 	. 
	ex af,af'			;9620	08 	. 
	ex af,af'			;9621	08 	. 
	djnz l9634h		;9622	10 10 	. . 
	djnz $+18		;9624	10 10 	. . 
	jr l9640h		;9626	18 18 	. . 
	jr l9642h		;9628	18 18 	. . 
	jr nz,l964ch		;962a	20 20 	    
	jr nz,l964eh		;962c	20 20 	    
	jr z,l9658h		;962e	28 28 	( ( 
	jr z,l9637h		;9630	28 05 	( . 
	jr nz,l9641h		;9632	20 0d 	  . 
l9634h:
	ld hl,02215h		;9634	21 15 22 	! . " 
l9637h:
	inc b			;9637	04 	. 
	inc hl			;9638	23 	# 
	inc c			;9639	0c 	. 
	inc h			;963a	24 	$ 
	inc d			;963b	14 	. 
	dec h			;963c	25 	% 
	ld (bc),a			;963d	02 	. 
	ld e,l			;963e	5d 	] 
	ld a,(bc)			;963f	0a 	. 
l9640h:
	ld e,(hl)			;9640	5e 	^ 
l9641h:
	ld (de),a			;9641	12 	. 
l9642h:
	ld e,a			;9642	5f 	_ 
	ld a,(de)			;9643	1a 	. 
	ld h,b			;9644	60 	` 
	ld bc,00961h		;9645	01 61 09 	. a . 
	ld h,d			;9648	62 	b 
	ld de,01963h		;9649	11 63 19 	. c . 
l964ch:
	ld h,h			;964c	64 	d 
	nop			;964d	00 	. 
l964eh:
	ld h,l			;964e	65 	e 
	ex af,af'			;964f	08 	. 
	ld h,(hl)			;9650	66 	f 
	djnz $+105		;9651	10 67 	. g 
	jr $+106		;9653	18 68 	. h 
	inc bc			;9655	03 	. 
	ld b,(hl)			;9656	46 	F 
	dec bc			;9657	0b 	. 
l9658h:
	ld l,c			;9658	69 	i 
	inc de			;9659	13 	. 
	inc (hl)			;965a	34 	4 
	ld a,(de)			;965b	1a 	. 
	nop			;965c	00 	. 
	ld bc,00101h		;965d	01 01 01 	. . . 
	add hl,bc			;9660	09 	. 
	add hl,bc			;9661	09 	. 
	add hl,bc			;9662	09 	. 
	ld de,01111h		;9663	11 11 11 	. . . 
	add hl,de			;9666	19 	. 
	add hl,de			;9667	19 	. 
	add hl,de			;9668	19 	. 
	ld hl,02121h		;9669	21 21 21 	! ! ! 
	ld hl,02929h		;966c	21 29 29 	! ) ) 
	add hl,hl			;966f	29 	) 
	add hl,hl			;9670	29 	) 
	djnz l968bh		;9671	10 18 	. . 
	inc de			;9673	13 	. 
	inc de			;9674	13 	. 
	dec de			;9675	1b 	. 
	dec de			;9676	1b 	. 
	ld b,035h		;9677	06 35 	. 5 
	ld c,036h		;9679	0e 36 	. 6 
	ld d,037h		;967b	16 37 	. 7 
	ld b,038h		;967d	06 38 	. 8 
	ld c,039h		;967f	0e 39 	. 9 
	ld d,03ah		;9681	16 3a 	. : 
	ld b,049h		;9683	06 49 	. I 
	ld c,04ah		;9685	0e 4a 	. J 
	ld d,04bh		;9687	16 4b 	. K 
	ld b,04ch		;9689	06 4c 	. L 
l968bh:
	ld c,04dh		;968b	0e 4d 	. M 
	ld d,04eh		;968d	16 4e 	. N 
	inc bc			;968f	03 	. 
	ld c,a			;9690	4f 	O 
	dec bc			;9691	0b 	. 
	ld d,b			;9692	50 	P 
	inc de			;9693	13 	. 
	ld d,c			;9694	51 	Q 
	dec de			;9695	1b 	. 
	ld d,d			;9696	52 	R 
	ld bc,00953h		;9697	01 53 09 	. S . 
	ld d,h			;969a	54 	T 
	ld de,01955h		;969b	11 55 19 	. U . 
	ld d,(hl)			;969e	56 	V 
	inc b			;969f	04 	. 
	ld d,a			;96a0	57 	W 
	ld bc,0f059h		;96a1	01 59 f0 	. Y . 
	sbc a,b			;96a4	98 	. 
	ret m			;96a5	f8 	. 
	sbc a,c			;96a6	99 	. 
	ret p			;96a7	f0 	. 
	sbc a,d			;96a8	9a 	. 
	ret m			;96a9	f8 	. 
	sbc a,e			;96aa	9b 	. 
	ld a,(de)			;96ab	1a 	. 
	nop			;96ac	00 	. 
	ld bc,00101h		;96ad	01 01 01 	. . . 
	add hl,bc			;96b0	09 	. 
	add hl,bc			;96b1	09 	. 
	add hl,bc			;96b2	09 	. 
	ld de,01111h		;96b3	11 11 11 	. . . 
	add hl,de			;96b6	19 	. 
	add hl,de			;96b7	19 	. 
	add hl,de			;96b8	19 	. 
	ld hl,02121h		;96b9	21 21 21 	! ! ! 
	ld hl,02929h		;96bc	21 29 29 	! ) ) 
	add hl,hl			;96bf	29 	) 
	add hl,hl			;96c0	29 	) 
	djnz l96dbh		;96c1	10 18 	. . 
	inc de			;96c3	13 	. 
	inc de			;96c4	13 	. 
	dec de			;96c5	1b 	. 
	dec de			;96c6	1b 	. 
	ld b,035h		;96c7	06 35 	. 5 
	ld c,036h		;96c9	0e 36 	. 6 
	ld d,037h		;96cb	16 37 	. 7 
	ld b,038h		;96cd	06 38 	. 8 
	ld c,039h		;96cf	0e 39 	. 9 
	ld d,03ah		;96d1	16 3a 	. : 
	ld b,049h		;96d3	06 49 	. I 
	ld c,04ah		;96d5	0e 4a 	. J 
	ld d,04bh		;96d7	16 4b 	. K 
	ld b,04ch		;96d9	06 4c 	. L 
l96dbh:
	ld c,04dh		;96db	0e 4d 	. M 
	ld d,04eh		;96dd	16 4e 	. N 
	inc bc			;96df	03 	. 
	ld c,a			;96e0	4f 	O 
	dec bc			;96e1	0b 	. 
	ld d,b			;96e2	50 	P 
	inc de			;96e3	13 	. 
	ld d,c			;96e4	51 	Q 
	dec de			;96e5	1b 	. 
	ld d,d			;96e6	52 	R 
	ld bc,00953h		;96e7	01 53 09 	. S . 
	ld d,h			;96ea	54 	T 
	ld de,01955h		;96eb	11 55 19 	. U . 
	ld d,(hl)			;96ee	56 	V 
	inc b			;96ef	04 	. 
	ld d,a			;96f0	57 	W 
	ld bc,0f059h		;96f1	01 59 f0 	. Y . 
	sbc a,h			;96f4	9c 	. 
	ret m			;96f5	f8 	. 
	sbc a,l			;96f6	9d 	. 
	ret p			;96f7	f0 	. 
	sbc a,(hl)			;96f8	9e 	. 
	ret m			;96f9	f8 	. 
	sbc a,a			;96fa	9f 	. 
	ld a,(de)			;96fb	1a 	. 
	nop			;96fc	00 	. 
	ld bc,00101h		;96fd	01 01 01 	. . . 
	add hl,bc			;9700	09 	. 
	add hl,bc			;9701	09 	. 
	add hl,bc			;9702	09 	. 
	ld de,01111h		;9703	11 11 11 	. . . 
	add hl,de			;9706	19 	. 
	add hl,de			;9707	19 	. 
	add hl,de			;9708	19 	. 
	ld hl,02121h		;9709	21 21 21 	! ! ! 
	ld hl,02929h		;970c	21 29 29 	! ) ) 
	add hl,hl			;970f	29 	) 
	add hl,hl			;9710	29 	) 
	djnz l972bh		;9711	10 18 	. . 
	inc de			;9713	13 	. 
	inc de			;9714	13 	. 
	dec de			;9715	1b 	. 
	dec de			;9716	1b 	. 
	ld b,035h		;9717	06 35 	. 5 
	ld c,036h		;9719	0e 36 	. 6 
	ld d,037h		;971b	16 37 	. 7 
	ld b,038h		;971d	06 38 	. 8 
	ld c,039h		;971f	0e 39 	. 9 
	ld d,03ah		;9721	16 3a 	. : 
	ld b,049h		;9723	06 49 	. I 
	ld c,04ah		;9725	0e 4a 	. J 
	ld d,04bh		;9727	16 4b 	. K 
	ld b,04ch		;9729	06 4c 	. L 
l972bh:
	ld c,04dh		;972b	0e 4d 	. M 
	ld d,04eh		;972d	16 4e 	. N 
	inc bc			;972f	03 	. 
	ld c,a			;9730	4f 	O 
	dec bc			;9731	0b 	. 
	ld d,b			;9732	50 	P 
	inc de			;9733	13 	. 
	ld d,c			;9734	51 	Q 
	dec de			;9735	1b 	. 
	ld d,d			;9736	52 	R 
	ld bc,00953h		;9737	01 53 09 	. S . 
	ld d,h			;973a	54 	T 
	ld de,01955h		;973b	11 55 19 	. U . 
	ld d,(hl)			;973e	56 	V 
	inc b			;973f	04 	. 
	ld d,a			;9740	57 	W 
	ld bc,0f059h		;9741	01 59 f0 	. Y . 
	and b			;9744	a0 	. 
	ret m			;9745	f8 	. 
	and c			;9746	a1 	. 
	ret p			;9747	f0 	. 
	and d			;9748	a2 	. 
	ret m			;9749	f8 	. 
	and e			;974a	a3 	. 
	ld bc,00088h		;974b	01 88 00 	. . . 
	nop			;974e	00 	. 
	and (hl)			;974f	a6 	. 
l9750h:
	ld (bc),a			;9750	02 	. 
	ld d,l			;9751	55 	U 
	sub a			;9752	97 	. 
l9753h:
	sbc a,c			;9753	99 	. 
	sub a			;9754	97 	. 
	ld d,000h		;9755	16 00 	. . 
	nop			;9757	00 	. 
	nop			;9758	00 	. 
	nop			;9759	00 	. 
	ex af,af'			;975a	08 	. 
	ex af,af'			;975b	08 	. 
l975ch:
	ex af,af'			;975c	08 	. 
	ex af,af'			;975d	08 	. 
	djnz $+18		;975e	10 10 	. . 
	djnz $+18		;9760	10 10 	. . 
	jr l977ch		;9762	18 18 	. . 
	jr l977eh		;9764	18 18 	. . 
	jr nz,$+34		;9766	20 20 	    
	jr nz,l978ah		;9768	20 20 	    
	jr z,l9794h		;976a	28 28 	( ( 
	jr z,l9774h		;976c	28 06 	( . 
	ld h,b			;976e	60 	` 
	ld c,061h		;976f	0e 61 	. a 
	ld d,062h		;9771	16 62 	. b 
	inc bc			;9773	03 	. 
l9774h:
	ld h,e			;9774	63 	c 
	dec bc			;9775	0b 	. 
	ld h,h			;9776	64 	d 
	inc de			;9777	13 	. 
	ld h,l			;9778	65 	e 
	dec de			;9779	1b 	. 
	ld h,(hl)			;977a	66 	f 
	inc bc			;977b	03 	. 
l977ch:
	ld h,a			;977c	67 	g 
	dec bc			;977d	0b 	. 
l977eh:
	ld l,b			;977e	68 	h 
	inc de			;977f	13 	. 
	ld l,c			;9780	69 	i 
	dec de			;9781	1b 	. 
	ld l,d			;9782	6a 	j 
	ld bc,0096bh		;9783	01 6b 09 	. k . 
	ld l,h			;9786	6c 	l 
	ld de,0196dh		;9787	11 6d 19 	. m . 
l978ah:
	ld l,(hl)			;978a	6e 	n 
	nop			;978b	00 	. 
	ld l,a			;978c	6f 	o 
	ex af,af'			;978d	08 	. 
	ld (hl),b			;978e	70 	p 
	djnz l9802h		;978f	10 71 	. q 
	jr $+116		;9791	18 72 	. r 
	inc bc			;9793	03 	. 
l9794h:
	ld (hl),e			;9794	73 	s 
	dec bc			;9795	0b 	. 
	ld (hl),h			;9796	74 	t 
	inc de			;9797	13 	. 
	ld (hl),l			;9798	75 	u 
	ld d,000h		;9799	16 00 	. . 
	nop			;979b	00 	. 
	nop			;979c	00 	. 
	nop			;979d	00 	. 
	ex af,af'			;979e	08 	. 
	ex af,af'			;979f	08 	. 
	ex af,af'			;97a0	08 	. 
	ex af,af'			;97a1	08 	. 
	djnz l97b4h		;97a2	10 10 	. . 
	djnz l97b6h		;97a4	10 10 	. . 
	jr $+26		;97a6	18 18 	. . 
	jr l97c2h		;97a8	18 18 	. . 
	jr nz,$+34		;97aa	20 20 	    
	jr nz,$+34		;97ac	20 20 	    
	jr z,l97d8h		;97ae	28 28 	( ( 
	jr z,l97b9h		;97b0	28 07 	( . 
	halt			;97b2	76 	v 
	rrca			;97b3	0f 	. 
l97b4h:
	ld (hl),a			;97b4	77 	w 
	rla			;97b5	17 	. 
l97b6h:
	ld a,b			;97b6	78 	x 
	inc bc			;97b7	03 	. 
	ld a,c			;97b8	79 	y 
l97b9h:
	dec bc			;97b9	0b 	. 
	ld a,d			;97ba	7a 	z 
	inc de			;97bb	13 	. 
	ld a,e			;97bc	7b 	{ 
	dec de			;97bd	1b 	. 
	ld a,h			;97be	7c 	| 
	ld bc,0097dh		;97bf	01 7d 09 	. } . 
l97c2h:
	ld a,(hl)			;97c2	7e 	~ 
	ld de,0197fh		;97c3	11 7f 19 	.  . 
	add a,b			;97c6	80 	. 
	nop			;97c7	00 	. 
	add a,c			;97c8	81 	. 
	ex af,af'			;97c9	08 	. 
	add a,d			;97ca	82 	. 
	djnz l9750h		;97cb	10 83 	. . 
	jr l9753h		;97cd	18 84 	. . 
	nop			;97cf	00 	. 
	add a,l			;97d0	85 	. 
	ex af,af'			;97d1	08 	. 
	add a,(hl)			;97d2	86 	. 
	djnz l975ch		;97d3	10 87 	. . 
	jr $-118		;97d5	18 88 	. . 
	inc b			;97d7	04 	. 
l97d8h:
	adc a,c			;97d8	89 	. 
	inc c			;97d9	0c 	. 
	adc a,d			;97da	8a 	. 
	inc d			;97db	14 	. 
	adc a,e			;97dc	8b 	. 
	nop			;97dd	00 	. 
	inc b			;97de	04 	. 
	ld e,b			;97df	58 	X 
	ld e,c			;97e0	59 	Y 
	ld e,e			;97e1	5b 	[ 
	ld e,h			;97e2	5c 	\ 
	nop			;97e3	00 	. 
	inc b			;97e4	04 	. 
	ld d,(hl)			;97e5	56 	V 
	ld h,(hl)			;97e6	66 	f 
	ld e,e			;97e7	5b 	[ 
	ld l,e			;97e8	6b 	k 
	nop			;97e9	00 	. 
	nop			;97ea	00 	. 
	ld (bc),a			;97eb	02 	. 
	ld l,c			;97ec	69 	i 
	ld l,d			;97ed	6a 	j 
	nop			;97ee	00 	. 
	ld bc,00321h		;97ef	01 21 03 	. ! . 
	add a,(hl)			;97f2	86 	. 
	sub (hl)			;97f3	96 	. 
	ld a,b			;97f4	78 	x 
	nop			;97f5	00 	. 
	nop			;97f6	00 	. 
	nop			;97f7	00 	. 
	nop			;97f8	00 	. 
	nop			;97f9	00 	. 
	nop			;97fa	00 	. 
	nop			;97fb	00 	. 
	nop			;97fc	00 	. 
	nop			;97fd	00 	. 
	nop			;97fe	00 	. 
	rst 38h			;97ff	ff 	. 
	nop			;9800	00 	. 
	nop			;9801	00 	. 
l9802h:
	nop			;9802	00 	. 
sub_9803h:
	ld bc,0001eh		;9803	01 1e 00 	. . . 
sub_9806h:
	nop			;9806	00 	. 
	ld bc,0006eh		;9807	01 6e 00 	. n . 
	ld (bc),a			;980a	02 	. 
	sbc a,l			;980b	9d 	. 
	sbc a,(hl)			;980c	9e 	. 
	nop			;980d	00 	. 
	nop			;980e	00 	. 
	nop			;980f	00 	. 
	nop			;9810	00 	. 
	nop			;9811	00 	. 
	nop			;9812	00 	. 
	inc bc			;9813	03 	. 
	ld b,d			;9814	42 	B 
	adc a,e			;9815	8b 	. 
	and h			;9816	a4 	. 
	ld bc,003a1h		;9817	01 a1 03 	. . . 
	ld a,04eh		;981a	3e 4e 	> N 
	ld e,(hl)			;981c	5e 	^ 
	ld (bc),a			;981d	02 	. 
	xor e			;981e	ab 	. 
	add a,h			;981f	84 	. 
	nop			;9820	00 	. 
	nop			;9821	00 	. 
	nop			;9822	00 	. 
	nop			;9823	00 	. 
	ld bc,00832h		;9824	01 32 08 	. 2 . 
	dec l			;9827	2d 	- 
	ld h,h			;9828	64 	d 
	ld (hl),h			;9829	74 	t 
	add a,h			;982a	84 	. 
	sub c			;982b	91 	. 
	sub d			;982c	92 	. 
	sub e			;982d	93 	. 
	sub h			;982e	94 	. 
	ld bc,00053h		;982f	01 53 00 	. S . 
	nop			;9832	00 	. 
	nop			;9833	00 	. 
	ld (bc),a			;9834	02 	. 
	ld (hl),c			;9835	71 	q 
	sub c			;9836	91 	. 
	nop			;9837	00 	. 
	ld (bc),a			;9838	02 	. 
	ld l,l			;9839	6d 	m 
	sub l			;983a	95 	. 
	nop			;983b	00 	. 
	ld (bc),a			;983c	02 	. 
	ld h,h			;983d	64 	d 
l983eh:
	ld (hl),h			;983e	74 	t 
	nop			;983f	00 	. 
	nop			;9840	00 	. 
	ld bc,00126h		;9841	01 26 01 	. & . 
	ld l,(hl)			;9844	6e 	n 
	nop			;9845	00 	. 
	nop			;9846	00 	. 
	inc bc			;9847	03 	. 
	inc d			;9848	14 	. 
	ld e,02eh		;9849	1e 2e 	. . 
	ld (bc),a			;984b	02 	. 
	sbc a,(hl)			;984c	9e 	. 
	xor (hl)			;984d	ae 	. 
	rst 38h			;984e	ff 	. 
	call sub_98aeh		;984f	cd ae 98 	. . . 
	call sub_986ch		;9852	cd 6c 98 	. l . 
	ld ix,0c118h		;9855	dd 21 18 c1 	. ! . . 
	ld b,007h		;9859	06 07 	. . 
l985bh:
	push bc			;985b	c5 	. 
	bit 7,(ix+000h)		;985c	dd cb 00 7e 	. . . ~ 
	call nz,sub_9acch		;9860	c4 cc 9a 	. . . 
	ld de,00020h		;9863	11 20 00 	.   . 
	add ix,de		;9866	dd 19 	. . 
	pop bc			;9868	c1 	. 
	djnz l985bh		;9869	10 f0 	. . 
	ret			;986b	c9 	. 
sub_986ch:
	ld a,(0c111h)		;986c	3a 11 c1 	: . . 
	or a			;986f	b7 	. 
	jr z,l9897h		;9870	28 25 	( % 
	ld a,(0c112h)		;9872	3a 12 c1 	: . . 
	dec a			;9875	3d 	= 
	jr z,l987dh		;9876	28 05 	( . 
	ld (0c112h),a		;9878	32 12 c1 	2 . . 
	jr l9897h		;987b	18 1a 	. . 
l987dh:
	ld a,01eh		;987d	3e 1e 	> . 
	ld (0c112h),a		;987f	32 12 c1 	2 . . 
	ld a,(0c111h)		;9882	3a 11 c1 	: . . 
	dec a			;9885	3d 	= 
	cp 003h		;9886	fe 03 	. . 
	jr nz,l988bh		;9888	20 01 	  . 
	xor a			;988a	af 	. 
l988bh:
	ld (0c111h),a		;988b	32 11 c1 	2 . . 
	ld (0c120h),a		;988e	32 20 c1 	2   . 
	ld (0c140h),a		;9891	32 40 c1 	2 @ . 
	ld (0c160h),a		;9894	32 60 c1 	2 ` . 
l9897h:
	ld hl,0c1d8h		;9897	21 d8 c1 	! . . 
	bit 7,(hl)		;989a	cb 7e 	. ~ 
	ret z			;989c	c8 	. 
	inc hl			;989d	23 	# 
	bit 5,(hl)		;989e	cb 6e 	. n 
	jr z,l98a8h		;98a0	28 06 	( . 
	ld hl,0c178h		;98a2	21 78 c1 	! x . 
	set 2,(hl)		;98a5	cb d6 	. . 
	ret			;98a7	c9 	. 
l98a8h:
	ld hl,0c158h		;98a8	21 58 c1 	! X . 
	set 2,(hl)		;98ab	cb d6 	. . 
	ret			;98ad	c9 	. 
sub_98aeh:
	ld a,(0c110h)		;98ae	3a 10 c1 	: . . 
	bit 7,a		;98b1	cb 7f 	.  
	jp z,l9df3h		;98b3	ca f3 9d 	. . . 
	cp 0b4h		;98b6	fe b4 	. . 
	jp nc,l9df3h		;98b8	d2 f3 9d 	. . . 
	sub 081h		;98bb	d6 81 	. . 
	ret m			;98bd	f8 	. 
	cp 030h		;98be	fe 30 	. 0 
	jr nc,l98c5h		;98c0	30 03 	0 . 
	ld (0c116h),a		;98c2	32 16 c1 	2 . . 
l98c5h:
	ld c,a			;98c5	4f 	O 
	ld b,000h		;98c6	06 00 	. . 
	ld hl,l98ddh		;98c8	21 dd 98 	! . . 
	add hl,bc			;98cb	09 	. 
	add hl,bc			;98cc	09 	. 
	ld c,(hl)			;98cd	4e 	N 
	inc hl			;98ce	23 	# 
	ld b,(hl)			;98cf	46 	F 
	ld de,0005fh		;98d0	11 5f 00 	. _ . 
	add hl,de			;98d3	19 	. 
	ld a,(hl)			;98d4	7e 	~ 
	inc hl			;98d5	23 	# 
	ld h,(hl)			;98d6	66 	f 
	ld l,a			;98d7	6f 	o 
	ld a,(0c113h)		;98d8	3a 13 c1 	: . . 
	ld e,a			;98db	5f 	_ 
	jp (hl)			;98dc	e9 	. 
l98ddh:
	call sub_819eh		;98dd	cd 9e 81 	. . . 
	sbc a,a			;98e0	9f 	. 
	cp l			;98e1	bd 	. 
	and e			;98e2	a3 	. 
	ld a,l			;98e3	7d 	} 
	and l			;98e4	a5 	. 
	ld d,a			;98e5	57 	W 
	and a			;98e6	a7 	. 
	ret po			;98e7	e0 	. 
	xor b			;98e8	a8 	. 
	scf			;98e9	37 	7 
	xor c			;98ea	a9 	. 
	pop de			;98eb	d1 	. 
	xor d			;98ec	aa 	. 
	ld d,(hl)			;98ed	56 	V 
	xor h			;98ee	ac 	. 
	add a,c			;98ef	81 	. 
	xor h			;98f0	ac 	. 
	sbc a,e			;98f1	9b 	. 
	xor h			;98f2	ac 	. 
	or d			;98f3	b2 	. 
	xor h			;98f4	ac 	. 
	ret			;98f5	c9 	. 
	xor h			;98f6	ac 	. 
	pop hl			;98f7	e1 	. 
	xor h			;98f8	ac 	. 
	ld (bc),a			;98f9	02 	. 
	xor l			;98fa	ad 	. 
	ld e,0adh		;98fb	1e ad 	. . 
	inc l			;98fd	2c 	, 
	xor l			;98fe	ad 	. 
	ld b,(hl)			;98ff	46 	F 
	xor l			;9900	ad 	. 
	adc a,l			;9901	8d 	. 
	xor l			;9902	ad 	. 
	and a			;9903	a7 	. 
	xor l			;9904	ad 	. 
sub_9905h:
	call z,059adh		;9905	cc ad 59 	. . Y 
	xor (hl)			;9908	ae 	. 
	ld a,a			;9909	7f 	 
	xor (hl)			;990a	ae 	. 
	and e			;990b	a3 	. 
	xor (hl)			;990c	ae 	. 
	or e			;990d	b3 	. 
	xor (hl)			;990e	ae 	. 
	call z,0e3aeh		;990f	cc ae e3 	. . . 
	xor (hl)			;9912	ae 	. 
	jp m,014aeh		;9913	fa ae 14 	. . . 
	xor a			;9916	af 	. 
	ld (hl),0afh		;9917	36 af 	6 . 
	ld l,l			;9919	6d 	m 
	xor a			;991a	af 	. 
	add a,h			;991b	84 	. 
	xor a			;991c	af 	. 
	cp l			;991d	bd 	. 
	xor a			;991e	af 	. 
	jp z,0e9afh		;991f	ca af e9 	. . . 
	xor a			;9922	af 	. 
	inc (hl)			;9923	34 	4 
	or b			;9924	b0 	. 
	ld c,l			;9925	4d 	M 
	or b			;9926	b0 	. 
	ld h,d			;9927	62 	b 
	or b			;9928	b0 	. 
	halt			;9929	76 	v 
	or b			;992a	b0 	. 
	sub b			;992b	90 	. 
	or b			;992c	b0 	. 
	xor d			;992d	aa 	. 
	or b			;992e	b0 	. 
	cp (hl)			;992f	be 	. 
	or b			;9930	b0 	. 
	defb 0ddh,0b0h,0f4h	;illegal sequence		;9931	dd b0 f4 	. . . 
	or b			;9934	b0 	. 
	dec e			;9935	1d 	. 
	or c			;9936	b1 	. 
	ld l,a			;9937	6f 	o 
	or c			;9938	b1 	. 
	adc a,c			;9939	89 	. 
	or c			;993a	b1 	. 
	call nc,0f0b1h		;993b	d4 b1 f0 	. . . 
	sbc a,c			;993e	99 	. 
	ret p			;993f	f0 	. 
	sbc a,c			;9940	99 	. 
	ret p			;9941	f0 	. 
	sbc a,c			;9942	99 	. 
	ret p			;9943	f0 	. 
	sbc a,c			;9944	99 	. 
	ret p			;9945	f0 	. 
	sbc a,c			;9946	99 	. 
	ret p			;9947	f0 	. 
	sbc a,c			;9948	99 	. 
	ret p			;9949	f0 	. 
	sbc a,c			;994a	99 	. 
	ret p			;994b	f0 	. 
	sbc a,c			;994c	99 	. 
	ret p			;994d	f0 	. 
	sbc a,c			;994e	99 	. 
	ld a,d			;994f	7a 	z 
	sbc a,d			;9950	9a 	. 
	ld a,d			;9951	7a 	z 
	sbc a,d			;9952	9a 	. 
	ld a,d			;9953	7a 	z 
	sbc a,d			;9954	9a 	. 
	ld sp,hl			;9955	f9 	. 
	sbc a,c			;9956	99 	. 
	call m,0fc99h		;9957	fc 99 fc 	. . . 
	sbc a,c			;995a	99 	. 
	ld a,l			;995b	7d 	} 
	sbc a,d			;995c	9a 	. 
	ld a,d			;995d	7a 	z 
	sbc a,d			;995e	9a 	. 
	nop			;995f	00 	. 
	sbc a,d			;9960	9a 	. 
	adc a,e			;9961	8b 	. 
	sbc a,d			;9962	9a 	. 
	adc a,e			;9963	8b 	. 
	sbc a,d			;9964	9a 	. 
	inc b			;9965	04 	. 
	sbc a,d			;9966	9a 	. 
	ld l,l			;9967	6d 	m 
	sbc a,d			;9968	9a 	. 
	add a,l			;9969	85 	. 
	sbc a,d			;996a	9a 	. 
	add a,l			;996b	85 	. 
	sbc a,d			;996c	9a 	. 
	ld b,a			;996d	47 	G 
	sbc a,d			;996e	9a 	. 
	ld a,d			;996f	7a 	z 
	sbc a,d			;9970	9a 	. 
	rra			;9971	1f 	. 
	sbc a,d			;9972	9a 	. 
	add a,c			;9973	81 	. 
	sbc a,d			;9974	9a 	. 
	ld h,b			;9975	60 	` 
	sbc a,d			;9976	9a 	. 
	inc h			;9977	24 	$ 
	sbc a,d			;9978	9a 	. 
	ld h,b			;9979	60 	` 
	sbc a,d			;997a	9a 	. 
	inc h			;997b	24 	$ 
	sbc a,d			;997c	9a 	. 
	ld a,d			;997d	7a 	z 
	sbc a,d			;997e	9a 	. 
	nop			;997f	00 	. 
	sbc a,d			;9980	9a 	. 
	ld sp,hl			;9981	f9 	. 
	sbc a,c			;9982	99 	. 
	ld b,e			;9983	43 	C 
	sbc a,d			;9984	9a 	. 
	ld a,l			;9985	7d 	} 
	sbc a,d			;9986	9a 	. 
	adc a,c			;9987	89 	. 
	sbc a,d			;9988	9a 	. 
	adc a,c			;9989	89 	. 
	sbc a,d			;998a	9a 	. 
	ld a,l			;998b	7d 	} 
	sbc a,d			;998c	9a 	. 
	adc a,c			;998d	89 	. 
	sbc a,d			;998e	9a 	. 
	ld l,b			;998f	68 	h 
	sbc a,d			;9990	9a 	. 
	ld l,b			;9991	68 	h 
	sbc a,d			;9992	9a 	. 
	add a,l			;9993	85 	. 
	sbc a,d			;9994	9a 	. 
	ld a,l			;9995	7d 	} 
	sbc a,d			;9996	9a 	. 
	ld a,l			;9997	7d 	} 
	sbc a,d			;9998	9a 	. 
	ret p			;9999	f0 	. 
	sbc a,c			;999a	99 	. 
	ret p			;999b	f0 	. 
	sbc a,c			;999c	99 	. 
	and e			;999d	a3 	. 
	sbc a,c			;999e	99 	. 
	out (099h),a		;999f	d3 99 	. . 
	cp (hl)			;99a1	be 	. 
	sbc a,c			;99a2	99 	. 
	ld a,(0c116h)		;99a3	3a 16 c1 	: . . 
	cp 013h		;99a6	fe 13 	. . 
	jr z,l99adh		;99a8	28 03 	( . 
	cp 010h		;99aa	fe 10 	. . 
	ret nz			;99ac	c0 	. 
l99adh:
	xor a			;99ad	af 	. 
	ld (0c1b8h),a		;99ae	32 b8 c1 	2 . . 
	ld a,080h		;99b1	3e 80 	> . 
	ld (0c158h),a		;99b3	32 58 c1 	2 X . 
	ld hl,0c1d8h		;99b6	21 d8 c1 	! . . 
	res 2,(hl)		;99b9	cb 96 	. . 
	jp l9ac6h		;99bb	c3 c6 9a 	. . . 
	ld a,00bh		;99be	3e 0b 	> . 
	ld (0c111h),a		;99c0	32 11 c1 	2 . . 
	ld a,01eh		;99c3	3e 1e 	> . 
	ld (0c112h),a		;99c5	32 12 c1 	2 . . 
	xor a			;99c8	af 	. 
	ld (0c178h),a		;99c9	32 78 c1 	2 x . 
	ld a,0ffh		;99cc	3e ff 	> . 
	out (07fh),a		;99ce	d3 7f 	.  
	jp l9ac6h		;99d0	c3 c6 9a 	. . . 
	xor a			;99d3	af 	. 
	ld (0c1d8h),a		;99d4	32 d8 c1 	2 . . 
	ld (0c114h),a		;99d7	32 14 c1 	2 . . 
	ld a,0dfh		;99da	3e df 	> . 
	ld a,080h		;99dc	3e 80 	> . 
	ld (0c158h),a		;99de	32 58 c1 	2 X . 
	out (07fh),a		;99e1	d3 7f 	.  
	ld a,0c0h		;99e3	3e c0 	> . 
	ld (0c178h),a		;99e5	32 78 c1 	2 x . 
	ld hl,0c1b8h		;99e8	21 b8 c1 	! . . 
	res 2,(hl)		;99eb	cb 96 	. . 
	jp l9ac6h		;99ed	c3 c6 9a 	. . . 
sub_99f0h:
	call l9df3h		;99f0	cd f3 9d 	. . . 
	ld de,0c118h		;99f3	11 18 c1 	. . . 
	jp l9aa3h		;99f6	c3 a3 9a 	. . . 
	xor a			;99f9	af 	. 
	jr l9a06h		;99fa	18 0a 	. . 
	ld a,060h		;99fc	3e 60 	> ` 
	jr l9a06h		;99fe	18 06 	. . 
	ld a,070h		;9a00	3e 70 	> p 
	jr l9a06h		;9a02	18 02 	. . 
	ld a,020h		;9a04	3e 20 	>   
l9a06h:
	cp e			;9a06	bb 	. 
	jp c,l9ac6h		;9a07	da c6 9a 	. . . 
	ld hl,0c138h		;9a0a	21 38 c1 	! 8 . 
	set 2,(hl)		;9a0d	cb d6 	. . 
	ld hl,0c158h		;9a0f	21 58 c1 	! X . 
	set 2,(hl)		;9a12	cb d6 	. . 
	ld hl,0c1d8h		;9a14	21 d8 c1 	! . . 
	set 2,(hl)		;9a17	cb d6 	. . 
	ld de,0c198h		;9a19	11 98 c1 	. . . 
	jp l9a9dh		;9a1c	c3 9d 9a 	. . . 
	call l9df3h		;9a1f	cd f3 9d 	. . . 
	jr l9a3eh		;9a22	18 1a 	. . 
	ld a,070h		;9a24	3e 70 	> p 
	cp e			;9a26	bb 	. 
	jp c,l9ac6h		;9a27	da c6 9a 	. . . 
	ld hl,0c138h		;9a2a	21 38 c1 	! 8 . 
	set 2,(hl)		;9a2d	cb d6 	. . 
	ld hl,0c158h		;9a2f	21 58 c1 	! X . 
	set 2,(hl)		;9a32	cb d6 	. . 
	ld hl,0c178h		;9a34	21 78 c1 	! x . 
	set 2,(hl)		;9a37	cb d6 	. . 
	ld hl,0c1d8h		;9a39	21 d8 c1 	! . . 
	set 2,(hl)		;9a3c	cb d6 	. . 
l9a3eh:
	ld de,0c198h		;9a3e	11 98 c1 	. . . 
	jr l9a9dh		;9a41	18 5a 	. Z 
	ld a,060h		;9a43	3e 60 	> ` 
	jr l9a49h		;9a45	18 02 	. . 
	ld a,040h		;9a47	3e 40 	> @ 
l9a49h:
	cp e			;9a49	bb 	. 
	jr c,l9ac6h		;9a4a	38 7a 	8 z 
	ld hl,0c178h		;9a4c	21 78 c1 	! x . 
	set 2,(hl)		;9a4f	cb d6 	. . 
	ld hl,0c158h		;9a51	21 58 c1 	! X . 
	set 2,(hl)		;9a54	cb d6 	. . 
	ld hl,0c1d8h		;9a56	21 d8 c1 	! . . 
	set 2,(hl)		;9a59	cb d6 	. . 
	ld de,0c1b8h		;9a5b	11 b8 c1 	. . . 
	jr l9a9dh		;9a5e	18 3d 	. = 
	ld a,(0c114h)		;9a60	3a 14 c1 	: . . 
	or a			;9a63	b7 	. 
	jr nz,l9ac6h		;9a64	20 60 	  ` 
	jr l9a6dh		;9a66	18 05 	. . 
	ld a,080h		;9a68	3e 80 	> . 
	ld (0c114h),a		;9a6a	32 14 c1 	2 . . 
l9a6dh:
	ld hl,0c1b8h		;9a6d	21 b8 c1 	! . . 
	set 2,(hl)		;9a70	cb d6 	. . 
	call sub_9e0fh		;9a72	cd 0f 9e 	. . . 
	ld de,0c1d8h		;9a75	11 d8 c1 	. . . 
	jr l9aa3h		;9a78	18 29 	. ) 
	xor a			;9a7a	af 	. 
	jr l9a8bh		;9a7b	18 0e 	. . 
	ld a,060h		;9a7d	3e 60 	> ` 
	jr l9a8bh		;9a7f	18 0a 	. . 
	ld a,070h		;9a81	3e 70 	> p 
	jr l9a8bh		;9a83	18 06 	. . 
	ld a,030h		;9a85	3e 30 	> 0 
	jr l9a8bh		;9a87	18 02 	. . 
	ld a,020h		;9a89	3e 20 	>   
l9a8bh:
	cp e			;9a8b	bb 	. 
	jr c,l9ac6h		;9a8c	38 38 	8 8 
	ld hl,0c158h		;9a8e	21 58 c1 	! X . 
	set 2,(hl)		;9a91	cb d6 	. . 
	ld hl,0c1d8h		;9a93	21 d8 c1 	! . . 
	set 2,(hl)		;9a96	cb d6 	. . 
	ld de,0c1b8h		;9a98	11 b8 c1 	. . . 
	jr l9a9dh		;9a9b	18 00 	. . 
l9a9dh:
	ld (0c113h),a		;9a9d	32 13 c1 	2 . . 
	call sub_9e0fh		;9aa0	cd 0f 9e 	. . . 
l9aa3h:
	ld h,b			;9aa3	60 	` 
	ld l,c			;9aa4	69 	i 
	ld b,(hl)			;9aa5	46 	F 
	inc hl			;9aa6	23 	# 
l9aa7h:
	push bc			;9aa7	c5 	. 
	ld bc,00009h		;9aa8	01 09 00 	. . . 
	ldir		;9aab	ed b0 	. . 
	ld a,020h		;9aad	3e 20 	>   
	ld (de),a			;9aaf	12 	. 
	inc de			;9ab0	13 	. 
	ld a,001h		;9ab1	3e 01 	> . 
	ld (de),a			;9ab3	12 	. 
	inc de			;9ab4	13 	. 
	xor a			;9ab5	af 	. 
	ld (de),a			;9ab6	12 	. 
	inc de			;9ab7	13 	. 
	ld (de),a			;9ab8	12 	. 
	inc de			;9ab9	13 	. 
	ld (de),a			;9aba	12 	. 
	push hl			;9abb	e5 	. 
	ld hl,00012h		;9abc	21 12 00 	! . . 
	add hl,de			;9abf	19 	. 
	ex de,hl			;9ac0	eb 	. 
	pop hl			;9ac1	e1 	. 
	inc de			;9ac2	13 	. 
	pop bc			;9ac3	c1 	. 
	djnz l9aa7h		;9ac4	10 e1 	. . 
l9ac6h:
	ld a,080h		;9ac6	3e 80 	> . 
	ld (0c110h),a		;9ac8	32 10 c1 	2 . . 
	ret			;9acb	c9 	. 
sub_9acch:
	ld e,(ix+00ch)		;9acc	dd 5e 0c 	. ^ . 
	ld d,(ix+00dh)		;9acf	dd 56 0d 	. V . 
	inc de			;9ad2	13 	. 
	ld (ix+00ch),e		;9ad3	dd 73 0c 	. s . 
	ld (ix+00dh),d		;9ad6	dd 72 0d 	. r . 
	ld l,(ix+00ah)		;9ad9	dd 6e 0a 	. n . 
	ld h,(ix+00bh)		;9adc	dd 66 0b 	. f . 
	or a			;9adf	b7 	. 
	sbc hl,de		;9ae0	ed 52 	. R 
	call z,sub_9c39h		;9ae2	cc 39 9c 	. 9 . 
	ld e,(ix+010h)		;9ae5	dd 5e 10 	. ^ . 
	ld d,(ix+011h)		;9ae8	dd 56 11 	. V . 
	ld a,e			;9aeb	7b 	{ 
	or d			;9aec	b2 	. 
	jr nz,l9af6h		;9aed	20 07 	  . 
	ld (ix+016h),00fh		;9aef	dd 36 16 0f 	. 6 . . 
	jp l9ba0h		;9af3	c3 a0 9b 	. . . 
l9af6h:
	bit 5,(ix+000h)		;9af6	dd cb 00 6e 	. . . n 
	jr nz,l9b21h		;9afa	20 25 	  % 
	ld a,(ix+006h)		;9afc	dd 7e 06 	. ~ . 
	or a			;9aff	b7 	. 
	jr nz,l9b16h		;9b00	20 14 	  . 
	ld (ix+012h),e		;9b02	dd 73 12 	. s . 
	ld (ix+013h),d		;9b05	dd 72 13 	. r . 
	jp l9b5eh		;9b08	c3 5e 9b 	. ^ . 
sub_9b0bh:
	dec a			;9b0b	3d 	= 
	ld c,a			;9b0c	4f 	O 
	ld b,000h		;9b0d	06 00 	. . 
	add hl,bc			;9b0f	09 	. 
	add hl,bc			;9b10	09 	. 
	ld a,(hl)			;9b11	7e 	~ 
	inc hl			;9b12	23 	# 
	ld h,(hl)			;9b13	66 	f 
	ld l,a			;9b14	6f 	o 
	ret			;9b15	c9 	. 
l9b16h:
	ld hl,0b28ah		;9b16	21 8a b2 	! . . 
	call sub_9b0bh		;9b19	cd 0b 9b 	. . . 
	call sub_9bf8h		;9b1c	cd f8 9b 	. . . 
	jr l9b5eh		;9b1f	18 3d 	. = 
l9b21h:
	push de			;9b21	d5 	. 
	ld l,(ix+014h)		;9b22	dd 6e 14 	. n . 
	ld h,(ix+015h)		;9b25	dd 66 15 	. f . 
	or a			;9b28	b7 	. 
	sbc hl,de		;9b29	ed 52 	. R 
	push af			;9b2b	f5 	. 
	ld a,l			;9b2c	7d 	} 
	jp p,l9b32h		;9b2d	f2 32 9b 	. 2 . 
	neg		;9b30	ed 44 	. D 
l9b32h:
	ld h,a			;9b32	67 	g 
	ld e,(ix+00ch)		;9b33	dd 5e 0c 	. ^ . 
	call 09eaeh		;9b36	cd ae 9e 	. . . 
	ld e,(ix+00ah)		;9b39	dd 5e 0a 	. ^ . 
	dec e			;9b3c	1d 	. 
	call sub_9ebah		;9b3d	cd ba 9e 	. . . 
	ld e,a			;9b40	5f 	_ 
	ld d,000h		;9b41	16 00 	. . 
	pop af			;9b43	f1 	. 
	ld a,e			;9b44	7b 	{ 
	jp p,l9b4eh		;9b45	f2 4e 9b 	. N . 
	neg		;9b48	ed 44 	. D 
	jr z,l9b4eh		;9b4a	28 02 	( . 
	dec d			;9b4c	15 	. 
	ld e,a			;9b4d	5f 	_ 
l9b4eh:
	pop hl			;9b4e	e1 	. 
	add hl,de			;9b4f	19 	. 
	ex de,hl			;9b50	eb 	. 
	ld (ix+012h),e		;9b51	dd 73 12 	. s . 
	ld (ix+013h),d		;9b54	dd 72 13 	. r . 
	ld a,(ix+006h)		;9b57	dd 7e 06 	. ~ . 
	or a			;9b5a	b7 	. 
	jp nz,l9b16h		;9b5b	c2 16 9b 	. . . 
l9b5eh:
	ld a,(ix+007h)		;9b5e	dd 7e 07 	. ~ . 
	or a			;9b61	b7 	. 
	jr nz,l9b6fh		;9b62	20 0b 	  . 
	ld a,(ix+008h)		;9b64	dd 7e 08 	. ~ . 
	cpl			;9b67	2f 	/ 
	and 00fh		;9b68	e6 0f 	. . 
	ld (ix+016h),a		;9b6a	dd 77 16 	. w . 
	jr l9b78h		;9b6d	18 09 	. . 
l9b6fh:
	ld hl,lb1f9h		;9b6f	21 f9 b1 	! . . 
	call sub_9b0bh		;9b72	cd 0b 9b 	. . . 
	call sub_9bb2h		;9b75	cd b2 9b 	. . . 
l9b78h:
	bit 6,(ix+000h)		;9b78	dd cb 00 76 	. . . v 
	jr nz,l9ba0h		;9b7c	20 22 	  " 
	ld a,(ix+001h)		;9b7e	dd 7e 01 	. ~ . 
	cp 0e0h		;9b81	fe e0 	. . 
	jr nz,l9b87h		;9b83	20 02 	  . 
	ld a,0c0h		;9b85	3e c0 	> . 
l9b87h:
	ld c,a			;9b87	4f 	O 
	ld a,(ix+012h)		;9b88	dd 7e 12 	. ~ . 
	and 00fh		;9b8b	e6 0f 	. . 
	or c			;9b8d	b1 	. 
	call sub_9debh		;9b8e	cd eb 9d 	. . . 
	ld a,(ix+012h)		;9b91	dd 7e 12 	. ~ . 
	and 0f0h		;9b94	e6 f0 	. . 
	or (ix+013h)		;9b96	dd b6 13 	. . . 
	rrca			;9b99	0f 	. 
	rrca			;9b9a	0f 	. 
	rrca			;9b9b	0f 	. 
	rrca			;9b9c	0f 	. 
	call sub_9debh		;9b9d	cd eb 9d 	. . . 
l9ba0h:
	ld a,(ix+001h)		;9ba0	dd 7e 01 	. ~ . 
	add a,010h		;9ba3	c6 10 	. . 
	or (ix+016h)		;9ba5	dd b6 16 	. . . 
	jp sub_9debh		;9ba8	c3 eb 9d 	. . . 
	sub b			;9bab	90 	. 
	or b			;9bac	b0 	. 
	ret nc			;9bad	d0 	. 
	ret p			;9bae	f0 	. 
l9bafh:
	ld (ix+00eh),a		;9baf	dd 77 0e 	. w . 
sub_9bb2h:
	push hl			;9bb2	e5 	. 
	ld a,(ix+00eh)		;9bb3	dd 7e 0e 	. ~ . 
	srl a		;9bb6	cb 3f 	. ? 
	push af			;9bb8	f5 	. 
	ld c,a			;9bb9	4f 	O 
	ld b,000h		;9bba	06 00 	. . 
	add hl,bc			;9bbc	09 	. 
	pop af			;9bbd	f1 	. 
	ld a,(hl)			;9bbe	7e 	~ 
	ex de,hl			;9bbf	eb 	. 
	pop hl			;9bc0	e1 	. 
	jr c,l9be2h		;9bc1	38 1f 	8 . 
	rrca			;9bc3	0f 	. 
	rrca			;9bc4	0f 	. 
	rrca			;9bc5	0f 	. 
	rrca			;9bc6	0f 	. 
	or a			;9bc7	b7 	. 
	jr z,l9bafh		;9bc8	28 e5 	( . 
	cp 010h		;9bca	fe 10 	. . 
	jr nz,l9bd3h		;9bcc	20 05 	  . 
	dec (ix+00eh)		;9bce	dd 35 0e 	. 5 . 
	jr sub_9bb2h		;9bd1	18 df 	. . 
l9bd3h:
	cp 020h		;9bd3	fe 20 	.   
	jr z,l9bedh		;9bd5	28 16 	( . 
	cp 030h		;9bd7	fe 30 	. 0 
	jr nz,l9be2h		;9bd9	20 07 	  . 
	inc de			;9bdb	13 	. 
	ld a,(de)			;9bdc	1a 	. 
	ld (ix+00eh),a		;9bdd	dd 77 0e 	. w . 
	jr sub_9bb2h		;9be0	18 d0 	. . 
l9be2h:
	inc (ix+00eh)		;9be2	dd 34 0e 	. 4 . 
	or 0f0h		;9be5	f6 f0 	. . 
	add a,(ix+008h)		;9be7	dd 86 08 	. . . 
	inc a			;9bea	3c 	< 
	jr c,l9beeh		;9beb	38 01 	8 . 
l9bedh:
	xor a			;9bed	af 	. 
l9beeh:
	cpl			;9bee	2f 	/ 
	and 00fh		;9bef	e6 0f 	. . 
	ld (ix+016h),a		;9bf1	dd 77 16 	. w . 
	ret			;9bf4	c9 	. 
l9bf5h:
	ld (ix+00fh),a		;9bf5	dd 77 0f 	. w . 
sub_9bf8h:
	push hl			;9bf8	e5 	. 
	ld a,(ix+00fh)		;9bf9	dd 7e 0f 	. ~ . 
	srl a		;9bfc	cb 3f 	. ? 
	push af			;9bfe	f5 	. 
	ld c,a			;9bff	4f 	O 
	ld b,000h		;9c00	06 00 	. . 
	add hl,bc			;9c02	09 	. 
	pop af			;9c03	f1 	. 
	ld a,(hl)			;9c04	7e 	~ 
	ld c,l			;9c05	4d 	M 
	ld b,h			;9c06	44 	D 
	pop hl			;9c07	e1 	. 
	jr c,l9c27h		;9c08	38 1d 	8 . 
	rrca			;9c0a	0f 	. 
	rrca			;9c0b	0f 	. 
	rrca			;9c0c	0f 	. 
	rrca			;9c0d	0f 	. 
	or a			;9c0e	b7 	. 
	jp z,l9bf5h		;9c0f	ca f5 9b 	. . . 
	cp 010h		;9c12	fe 10 	. . 
	jr nz,l9c1bh		;9c14	20 05 	  . 
	dec (ix+00fh)		;9c16	dd 35 0f 	. 5 . 
	jr sub_9bf8h		;9c19	18 dd 	. . 
l9c1bh:
	cp 020h		;9c1b	fe 20 	.   
	ret z			;9c1d	c8 	. 
	cp 030h		;9c1e	fe 30 	. 0 
	jr nz,l9c27h		;9c20	20 05 	  . 
	inc bc			;9c22	03 	. 
	ld a,(bc)			;9c23	0a 	. 
	ld (ix+00fh),a		;9c24	dd 77 0f 	. w . 
l9c27h:
	inc (ix+00fh)		;9c27	dd 34 0f 	. 4 . 
	cpl			;9c2a	2f 	/ 
	and 00fh		;9c2b	e6 0f 	. . 
	ld l,a			;9c2d	6f 	o 
	ld h,000h		;9c2e	26 00 	& . 
	ex de,hl			;9c30	eb 	. 
	add hl,de			;9c31	19 	. 
	ld (ix+012h),l		;9c32	dd 75 12 	. u . 
	ld (ix+013h),h		;9c35	dd 74 13 	. t . 
	ret			;9c38	c9 	. 
sub_9c39h:
	ld e,(ix+003h)		;9c39	dd 5e 03 	. ^ . 
	ld d,(ix+004h)		;9c3c	dd 56 04 	. V . 
l9c3fh:
	ld a,(de)			;9c3f	1a 	. 
	inc de			;9c40	13 	. 
	cp 0e0h		;9c41	fe e0 	. . 
	jp nc,l9ccdh		;9c43	d2 cd 9c 	. . . 
	bit 3,(ix+000h)		;9c46	dd cb 00 5e 	. . . ^ 
	jr nz,l9cach		;9c4a	20 60 	  ` 
	or a			;9c4c	b7 	. 
	jp p,l9c88h		;9c4d	f2 88 9c 	. . . 
	sub 080h		;9c50	d6 80 	. . 
	jr z,l9c57h		;9c52	28 03 	( . 
	add a,(ix+005h)		;9c54	dd 86 05 	. . . 
l9c57h:
	ld hl,l9e1ch		;9c57	21 1c 9e 	! . . 
	ld c,a			;9c5a	4f 	O 
	ld b,000h		;9c5b	06 00 	. . 
	add hl,bc			;9c5d	09 	. 
	add hl,bc			;9c5e	09 	. 
	ld a,(hl)			;9c5f	7e 	~ 
	ld (ix+010h),a		;9c60	dd 77 10 	. w . 
	inc hl			;9c63	23 	# 
	ld a,(hl)			;9c64	7e 	~ 
	ld (ix+011h),a		;9c65	dd 77 11 	. w . 
	bit 5,(ix+000h)		;9c68	dd cb 00 6e 	. . . n 
	jr z,l9cc6h		;9c6c	28 58 	( X 
	ld a,(de)			;9c6e	1a 	. 
	inc de			;9c6f	13 	. 
	sub 080h		;9c70	d6 80 	. . 
	add a,(ix+005h)		;9c72	dd 86 05 	. . . 
	ld hl,l9e1ch		;9c75	21 1c 9e 	! . . 
	ld c,a			;9c78	4f 	O 
	ld b,000h		;9c79	06 00 	. . 
	add hl,bc			;9c7b	09 	. 
	add hl,bc			;9c7c	09 	. 
	ld a,(hl)			;9c7d	7e 	~ 
	ld (ix+014h),a		;9c7e	dd 77 14 	. w . 
	inc hl			;9c81	23 	# 
	ld a,(hl)			;9c82	7e 	~ 
	ld (ix+015h),a		;9c83	dd 77 15 	. w . 
l9c86h:
	ld a,(de)			;9c86	1a 	. 
l9c87h:
	inc de			;9c87	13 	. 
l9c88h:
	push de			;9c88	d5 	. 
	ld h,a			;9c89	67 	g 
	ld e,(ix+002h)		;9c8a	dd 5e 02 	. ^ . 
	call 09eaeh		;9c8d	cd ae 9e 	. . . 
	pop de			;9c90	d1 	. 
	ld (ix+00ah),l		;9c91	dd 75 0a 	. u . 
	ld (ix+00bh),h		;9c94	dd 74 0b 	. t . 
l9c97h:
	xor a			;9c97	af 	. 
	ld (ix+00eh),a		;9c98	dd 77 0e 	. w . 
	ld (ix+00fh),a		;9c9b	dd 77 0f 	. w . 
	ld (ix+003h),e		;9c9e	dd 73 03 	. s . 
	ld (ix+004h),d		;9ca1	dd 72 04 	. r . 
	xor a			;9ca4	af 	. 
	ld (ix+00ch),a		;9ca5	dd 77 0c 	. w . 
	ld (ix+00dh),a		;9ca8	dd 77 0d 	. w . 
	ret			;9cab	c9 	. 
l9cach:
	ld (ix+011h),a		;9cac	dd 77 11 	. w . 
	ld a,(de)			;9caf	1a 	. 
	inc de			;9cb0	13 	. 
	ld (ix+010h),a		;9cb1	dd 77 10 	. w . 
	bit 5,(ix+000h)		;9cb4	dd cb 00 6e 	. . . n 
	jr z,l9c86h		;9cb8	28 cc 	( . 
	ld a,(de)			;9cba	1a 	. 
	inc de			;9cbb	13 	. 
	ld (ix+015h),a		;9cbc	dd 77 15 	. w . 
	ld a,(de)			;9cbf	1a 	. 
	inc de			;9cc0	13 	. 
	ld (ix+014h),a		;9cc1	dd 77 14 	. w . 
	jr l9c86h		;9cc4	18 c0 	. . 
l9cc6h:
	ld a,(de)			;9cc6	1a 	. 
	or a			;9cc7	b7 	. 
	jp p,l9c87h		;9cc8	f2 87 9c 	. . . 
	jr l9c97h		;9ccb	18 ca 	. . 
l9ccdh:
	ld hl,l9ce0h		;9ccd	21 e0 9c 	! . . 
	push hl			;9cd0	e5 	. 
	and 01fh		;9cd1	e6 1f 	. . 
	ld hl,l9ce4h		;9cd3	21 e4 9c 	! . . 
	ld c,a			;9cd6	4f 	O 
	ld b,000h		;9cd7	06 00 	. . 
	add hl,bc			;9cd9	09 	. 
	add hl,bc			;9cda	09 	. 
	ld a,(hl)			;9cdb	7e 	~ 
	inc hl			;9cdc	23 	# 
	ld h,(hl)			;9cdd	66 	f 
	ld l,a			;9cde	6f 	o 
	jp (hl)			;9cdf	e9 	. 
l9ce0h:
	inc de			;9ce0	13 	. 
	jp l9c3fh		;9ce1	c3 3f 9c 	. ? . 
l9ce4h:
	rra			;9ce4	1f 	. 
	sbc a,l			;9ce5	9d 	. 
	inc h			;9ce6	24 	$ 
	sbc a,l			;9ce7	9d 	. 
	ld (hl),d			;9ce8	72 	r 
	sbc a,l			;9ce9	9d 	. 
	add hl,hl			;9cea	29 	) 
	sbc a,l			;9ceb	9d 	. 
	ld b,b			;9cec	40 	@ 
	sbc a,l			;9ced	9d 	. 
	ld c,d			;9cee	4a 	J 
	sbc a,l			;9cef	9d 	. 
	ld d,b			;9cf0	50 	P 
	sbc a,l			;9cf1	9d 	. 
	ld d,(hl)			;9cf2	56 	V 
	sbc a,l			;9cf3	9d 	. 
	ld e,h			;9cf4	5c 	\ 
	sbc a,l			;9cf5	9d 	. 
	ld h,d			;9cf6	62 	b 
	sbc a,l			;9cf7	9d 	. 
	sbc a,(hl)			;9cf8	9e 	. 
	sbc a,l			;9cf9	9d 	. 
	cp c			;9cfa	b9 	. 
	sbc a,l			;9cfb	9d 	. 
	call z,0459dh		;9cfc	cc 9d 45 	. . E 
	sbc a,l			;9cff	9d 	. 
	rla			;9d00	17 	. 
	sbc a,l			;9d01	9d 	. 
	ld l,b			;9d02	68 	h 
	sbc a,l			;9d03	9d 	. 
	ld l,(hl)			;9d04	6e 	n 
	sbc a,l			;9d05	9d 	. 
	ex af,af'			;9d06	08 	. 
	sbc a,l			;9d07	9d 	. 
	ld a,(0c023h)		;9d08	3a 23 c0 	: # . 
	cp 010h		;9d0b	fe 10 	. . 
	ret z			;9d0d	c8 	. 
	push de			;9d0e	d5 	. 
	ld bc,la3bdh		;9d0f	01 bd a3 	. . . 
	call sub_99f0h		;9d12	cd f0 99 	. . . 
	pop de			;9d15	d1 	. 
	ret			;9d16	c9 	. 
	ld a,(de)			;9d17	1a 	. 
	add a,(ix+005h)		;9d18	dd 86 05 	. . . 
	ld (ix+005h),a		;9d1b	dd 77 05 	. w . 
	ret			;9d1e	c9 	. 
	ld a,(de)			;9d1f	1a 	. 
	ld (ix+002h),a		;9d20	dd 77 02 	. w . 
	ret			;9d23	c9 	. 
	ld a,(de)			;9d24	1a 	. 
	ld (ix+008h),a		;9d25	dd 77 08 	. w . 
	ret			;9d28	c9 	. 
	ld a,(de)			;9d29	1a 	. 
	or 0e0h		;9d2a	f6 e0 	. . 
	push af			;9d2c	f5 	. 
	call sub_9debh		;9d2d	cd eb 9d 	. . . 
	pop af			;9d30	f1 	. 
	or 0fch		;9d31	f6 fc 	. . 
	inc a			;9d33	3c 	< 
	jr nz,l9d3bh		;9d34	20 05 	  . 
	res 6,(ix+000h)		;9d36	dd cb 00 b6 	. . . . 
	ret			;9d3a	c9 	. 
l9d3bh:
	set 6,(ix+000h)		;9d3b	dd cb 00 f6 	. . . . 
	ret			;9d3f	c9 	. 
	ld a,(de)			;9d40	1a 	. 
	ld (ix+007h),a		;9d41	dd 77 07 	. w . 
	ret			;9d44	c9 	. 
	ld a,(de)			;9d45	1a 	. 
	ld (ix+006h),a		;9d46	dd 77 06 	. w . 
	ret			;9d49	c9 	. 
l9d4ah:
	ex de,hl			;9d4a	eb 	. 
	ld e,(hl)			;9d4b	5e 	^ 
	inc hl			;9d4c	23 	# 
	ld d,(hl)			;9d4d	56 	V 
	dec de			;9d4e	1b 	. 
	ret			;9d4f	c9 	. 
	set 5,(ix+000h)		;9d50	dd cb 00 ee 	. . . . 
	dec de			;9d54	1b 	. 
	ret			;9d55	c9 	. 
	res 5,(ix+000h)		;9d56	dd cb 00 ae 	. . . . 
	dec de			;9d5a	1b 	. 
	ret			;9d5b	c9 	. 
	set 3,(ix+000h)		;9d5c	dd cb 00 de 	. . . . 
	dec de			;9d60	1b 	. 
	ret			;9d61	c9 	. 
	res 3,(ix+000h)		;9d62	dd cb 00 9e 	. . . . 
	dec de			;9d66	1b 	. 
	ret			;9d67	c9 	. 
	xor a			;9d68	af 	. 
	ld (0c114h),a		;9d69	32 14 c1 	2 . . 
	jr l9d76h		;9d6c	18 08 	. . 
	ld a,(de)			;9d6e	1a 	. 
	ld (0c115h),a		;9d6f	32 15 c1 	2 . . 
	xor a			;9d72	af 	. 
	ld (0c113h),a		;9d73	32 13 c1 	2 . . 
l9d76h:
	ld (ix+000h),a		;9d76	dd 77 00 	. w . 
	ld hl,0c138h		;9d79	21 38 c1 	! 8 . 
	res 2,(hl)		;9d7c	cb 96 	. . 
	ld hl,0c158h		;9d7e	21 58 c1 	! X . 
	res 2,(hl)		;9d81	cb 96 	. . 
	ld hl,0c178h		;9d83	21 78 c1 	! x . 
	res 2,(hl)		;9d86	cb 96 	. . 
	ld hl,0c1d8h		;9d88	21 d8 c1 	! . . 
	res 2,(hl)		;9d8b	cb 96 	. . 
	ld a,(0c1b8h)		;9d8d	3a b8 c1 	: . . 
	bit 7,a		;9d90	cb 7f 	.  
	jr nz,l9d98h		;9d92	20 04 	  . 
	ld a,0e4h		;9d94	3e e4 	> . 
	out (07fh),a		;9d96	d3 7f 	.  
l9d98h:
	call sub_9de4h		;9d98	cd e4 9d 	. . . 
	pop hl			;9d9b	e1 	. 
	pop hl			;9d9c	e1 	. 
	ret			;9d9d	c9 	. 
	ld a,(de)			;9d9e	1a 	. 
	ld c,a			;9d9f	4f 	O 
	inc de			;9da0	13 	. 
	ld a,(de)			;9da1	1a 	. 
	ld b,a			;9da2	47 	G 
	push bc			;9da3	c5 	. 
	push ix		;9da4	dd e5 	. . 
	pop hl			;9da6	e1 	. 
	dec (ix+009h)		;9da7	dd 35 09 	. 5 . 
	ld c,(ix+009h)		;9daa	dd 4e 09 	. N . 
	dec (ix+009h)		;9dad	dd 35 09 	. 5 . 
	ld b,000h		;9db0	06 00 	. . 
	add hl,bc			;9db2	09 	. 
	ld (hl),d			;9db3	72 	r 
	dec hl			;9db4	2b 	+ 
	ld (hl),e			;9db5	73 	s 
	pop de			;9db6	d1 	. 
	dec de			;9db7	1b 	. 
	ret			;9db8	c9 	. 
	push ix		;9db9	dd e5 	. . 
	pop hl			;9dbb	e1 	. 
	ld c,(ix+009h)		;9dbc	dd 4e 09 	. N . 
	ld b,000h		;9dbf	06 00 	. . 
	add hl,bc			;9dc1	09 	. 
	ld e,(hl)			;9dc2	5e 	^ 
	inc hl			;9dc3	23 	# 
	ld d,(hl)			;9dc4	56 	V 
	inc (ix+009h)		;9dc5	dd 34 09 	. 4 . 
	inc (ix+009h)		;9dc8	dd 34 09 	. 4 . 
	ret			;9dcb	c9 	. 
	ld a,(de)			;9dcc	1a 	. 
	inc de			;9dcd	13 	. 
	add a,017h		;9dce	c6 17 	. . 
	ld c,a			;9dd0	4f 	O 
	ld b,000h		;9dd1	06 00 	. . 
	push ix		;9dd3	dd e5 	. . 
	pop hl			;9dd5	e1 	. 
	add hl,bc			;9dd6	09 	. 
	ld a,(hl)			;9dd7	7e 	~ 
	or a			;9dd8	b7 	. 
	jr nz,l9dddh		;9dd9	20 02 	  . 
	ld a,(de)			;9ddb	1a 	. 
	ld (hl),a			;9ddc	77 	w 
l9dddh:
	inc de			;9ddd	13 	. 
	dec (hl)			;9dde	35 	5 
	jp nz,l9d4ah		;9ddf	c2 4a 9d 	. J . 
	inc de			;9de2	13 	. 
	ret			;9de3	c9 	. 
sub_9de4h:
	ld a,(ix+001h)		;9de4	dd 7e 01 	. ~ . 
	add a,010h		;9de7	c6 10 	. . 
	or 00fh		;9de9	f6 0f 	. . 
sub_9debh:
	bit 2,(ix+000h)		;9deb	dd cb 00 56 	. . . V 
	ret nz			;9def	c0 	. 
	out (07fh),a		;9df0	d3 7f 	.  
	ret			;9df2	c9 	. 
l9df3h:
	exx			;9df3	d9 	. 
	ld hl,0c111h		;9df4	21 11 c1 	! . . 
	ld de,0c112h		;9df7	11 12 c1 	. . . 
	ld bc,000e4h		;9dfa	01 e4 00 	. . . 
	ld (hl),000h		;9dfd	36 00 	6 . 
	ldir		;9dff	ed b0 	. . 
	exx			;9e01	d9 	. 
	exx			;9e02	d9 	. 
	ld hl,l9e18h		;9e03	21 18 9e 	! . . 
	ld c,07fh		;9e06	0e 7f 	.  
	ld b,004h		;9e08	06 04 	. . 
	otir		;9e0a	ed b3 	. . 
	xor a			;9e0c	af 	. 
	exx			;9e0d	d9 	. 
	ret			;9e0e	c9 	. 
sub_9e0fh:
	ld a,0dfh		;9e0f	3e df 	> . 
	out (07fh),a		;9e11	d3 7f 	.  
	ld a,0ffh		;9e13	3e ff 	> . 
	out (07fh),a		;9e15	d3 7f 	.  
	ret			;9e17	c9 	. 
l9e18h:
	sbc a,a			;9e18	9f 	. 
	cp a			;9e19	bf 	. 
	rst 18h			;9e1a	df 	. 
	rst 38h			;9e1b	ff 	. 
l9e1ch:
	nop			;9e1c	00 	. 
	nop			;9e1d	00 	. 
	rst 38h			;9e1e	ff 	. 
	inc bc			;9e1f	03 	. 
	rst 0			;9e20	c7 	. 
	inc bc			;9e21	03 	. 
	sub b			;9e22	90 	. 
	inc bc			;9e23	03 	. 
	ld e,l			;9e24	5d 	] 
	inc bc			;9e25	03 	. 
	dec l			;9e26	2d 	- 
	inc bc			;9e27	03 	. 
	rst 38h			;9e28	ff 	. 
	ld (bc),a			;9e29	02 	. 
	call nc,sub_ab02h		;9e2a	d4 02 ab 	. . . 
	ld (bc),a			;9e2d	02 	. 
	add a,l			;9e2e	85 	. 
	ld (bc),a			;9e2f	02 	. 
	ld h,c			;9e30	61 	a 
	ld (bc),a			;9e31	02 	. 
	ccf			;9e32	3f 	? 
	ld (bc),a			;9e33	02 	. 
	ld e,002h		;9e34	1e 02 	. . 
	nop			;9e36	00 	. 
	ld (bc),a			;9e37	02 	. 
	ex (sp),hl			;9e38	e3 	. 
	ld bc,001c8h		;9e39	01 c8 01 	. . . 
	xor a			;9e3c	af 	. 
	ld bc,00196h		;9e3d	01 96 01 	. . . 
	add a,b			;9e40	80 	. 
	ld bc,0016ah		;9e41	01 6a 01 	. j . 
	ld d,(hl)			;9e44	56 	V 
	ld bc,00143h		;9e45	01 43 01 	. C . 
	jr nc,l9e4bh		;9e48	30 01 	0 . 
	rra			;9e4a	1f 	. 
l9e4bh:
	ld bc,0010fh		;9e4b	01 0f 01 	. . . 
	nop			;9e4e	00 	. 
	ld bc,000f2h		;9e4f	01 f2 00 	. . . 
	call po,0d700h		;9e52	e4 00 d7 	. . . 
	nop			;9e55	00 	. 
	rlc b		;9e56	cb 00 	. . 
	ret nz			;9e58	c0 	. 
	nop			;9e59	00 	. 
	or l			;9e5a	b5 	. 
	nop			;9e5b	00 	. 
	xor e			;9e5c	ab 	. 
	nop			;9e5d	00 	. 
	and c			;9e5e	a1 	. 
	nop			;9e5f	00 	. 
	sbc a,b			;9e60	98 	. 
	nop			;9e61	00 	. 
	sub b			;9e62	90 	. 
	nop			;9e63	00 	. 
	adc a,b			;9e64	88 	. 
	nop			;9e65	00 	. 
	add a,b			;9e66	80 	. 
	nop			;9e67	00 	. 
	ld a,c			;9e68	79 	y 
	nop			;9e69	00 	. 
	ld (hl),d			;9e6a	72 	r 
	nop			;9e6b	00 	. 
	ld l,h			;9e6c	6c 	l 
	nop			;9e6d	00 	. 
	ld h,(hl)			;9e6e	66 	f 
	nop			;9e6f	00 	. 
	ld h,b			;9e70	60 	` 
	nop			;9e71	00 	. 
	ld e,e			;9e72	5b 	[ 
	nop			;9e73	00 	. 
	ld d,l			;9e74	55 	U 
	nop			;9e75	00 	. 
	ld d,c			;9e76	51 	Q 
	nop			;9e77	00 	. 
	ld c,h			;9e78	4c 	L 
	nop			;9e79	00 	. 
	ld c,b			;9e7a	48 	H 
l9e7bh:
	nop			;9e7b	00 	. 
	ld b,h			;9e7c	44 	D 
	nop			;9e7d	00 	. 
	ld b,b			;9e7e	40 	@ 
	nop			;9e7f	00 	. 
	inc a			;9e80	3c 	< 
	nop			;9e81	00 	. 
	add hl,sp			;9e82	39 	9 
	nop			;9e83	00 	. 
	ld (hl),000h		;9e84	36 00 	6 . 
	inc sp			;9e86	33 	3 
	nop			;9e87	00 	. 
	jr nc,l9e8ah		;9e88	30 00 	0 . 
l9e8ah:
	dec l			;9e8a	2d 	- 
	nop			;9e8b	00 	. 
	dec hl			;9e8c	2b 	+ 
	nop			;9e8d	00 	. 
	jr z,l9e90h		;9e8e	28 00 	( . 
l9e90h:
	ld h,000h		;9e90	26 00 	& . 
	inc h			;9e92	24 	$ 
	nop			;9e93	00 	. 
	ld (02000h),hl		;9e94	22 00 20 	" .   
	nop			;9e97	00 	. 
	ld e,000h		;9e98	1e 00 	. . 
	inc e			;9e9a	1c 	. 
	nop			;9e9b	00 	. 
	dec de			;9e9c	1b 	. 
	nop			;9e9d	00 	. 
	add hl,de			;9e9e	19 	. 
	nop			;9e9f	00 	. 
	jr l9ea2h		;9ea0	18 00 	. . 
l9ea2h:
	ld d,000h		;9ea2	16 00 	. . 
	dec d			;9ea4	15 	. 
	nop			;9ea5	00 	. 
	inc d			;9ea6	14 	. 
	nop			;9ea7	00 	. 
	inc de			;9ea8	13 	. 
	nop			;9ea9	00 	. 
	ld (de),a			;9eaa	12 	. 
	nop			;9eab	00 	. 
	ld de,01600h		;9eac	11 00 16 	. . . 
	nop			;9eaf	00 	. 
	ld l,d			;9eb0	6a 	j 
	ld b,008h		;9eb1	06 08 	. . 
l9eb3h:
	add hl,hl			;9eb3	29 	) 
	jr nc,l9eb7h		;9eb4	30 01 	0 . 
	add hl,de			;9eb6	19 	. 
l9eb7h:
	djnz l9eb3h		;9eb7	10 fa 	. . 
	ret			;9eb9	c9 	. 
sub_9ebah:
	ld b,008h		;9eba	06 08 	. . 
l9ebch:
	adc hl,hl		;9ebc	ed 6a 	. j 
	ld a,h			;9ebe	7c 	| 
	jr c,l9ec4h		;9ebf	38 03 	8 . 
	cp e			;9ec1	bb 	. 
	jr c,l9ec7h		;9ec2	38 03 	8 . 
l9ec4h:
	sub e			;9ec4	93 	. 
	ld h,a			;9ec5	67 	g 
	or a			;9ec6	b7 	. 
l9ec7h:
	djnz l9ebch		;9ec7	10 f3 	. . 
	ld a,l			;9ec9	7d 	} 
	rla			;9eca	17 	. 
	cpl			;9ecb	2f 	/ 
	ret			;9ecc	c9 	. 
	inc b			;9ecd	04 	. 
	add a,b			;9ece	80 	. 
	add a,b			;9ecf	80 	. 
	inc b			;9ed0	04 	. 
	jp p,0ec9eh		;9ed1	f2 9e ec 	. . . 
	ld bc,00b04h		;9ed4	01 04 0b 	. . . 
	add a,b			;9ed7	80 	. 
	and b			;9ed8	a0 	. 
	inc b			;9ed9	04 	. 
	jr l9e7bh		;9eda	18 9f 	. . 
	ret m			;9edc	f8 	. 
	ld bc,00a03h		;9edd	01 03 0a 	. . . 
	add a,b			;9ee0	80 	. 
	ret nz			;9ee1	c0 	. 
	inc b			;9ee2	04 	. 
	ccf			;9ee3	3f 	? 
	sbc a,a			;9ee4	9f 	. 
	call pe,00401h		;9ee5	ec 01 04 	. . . 
	dec bc			;9ee8	0b 	. 
	add a,b			;9ee9	80 	. 
	ret po			;9eea	e0 	. 
	inc b			;9eeb	04 	. 
	ld h,a			;9eec	67 	g 
	sbc a,a			;9eed	9f 	. 
	nop			;9eee	00 	. 
	nop			;9eef	00 	. 
	nop			;9ef0	00 	. 
	nop			;9ef1	00 	. 
	and a			;9ef2	a7 	. 
	ld (bc),a			;9ef3	02 	. 
	inc b			;9ef4	04 	. 
	xor e			;9ef5	ab 	. 
	ld (bc),a			;9ef6	02 	. 
	call po,sub_ae05h		;9ef7	e4 05 ae 	. . . 
	ld b,080h		;9efa	06 80 	. . 
	ld (bc),a			;9efc	02 	. 
	call po,0a904h		;9efd	e4 04 a9 	. . . 
	ld (bc),a			;9f00	02 	. 
l9f01h:
	inc b			;9f01	04 	. 
	xor h			;9f02	ac 	. 
	ld (bc),a			;9f03	02 	. 
	call po,sub_b005h		;9f04	e4 05 b0 	. . . 
	ld b,080h		;9f07	06 80 	. . 
	ld (bc),a			;9f09	02 	. 
	xor (hl)			;9f0a	ae 	. 
	inc b			;9f0b	04 	. 
	inc b			;9f0c	04 	. 
	or d			;9f0d	b2 	. 
	xor (hl)			;9f0e	ae 	. 
	call po,sub_b305h		;9f0f	e4 05 b3 	. . . 
	inc c			;9f12	0c 	. 
	add a,b			;9f13	80 	. 
	inc b			;9f14	04 	. 
	call po,0e204h		;9f15	e4 04 e2 	. . . 
	adc a,a			;9f18	8f 	. 
	inc b			;9f19	04 	. 
	add a,b			;9f1a	80 	. 
	ld (bc),a			;9f1b	02 	. 
	adc a,a			;9f1c	8f 	. 
	inc b			;9f1d	04 	. 
	adc a,d			;9f1e	8a 	. 
	ld (bc),a			;9f1f	02 	. 
	adc a,a			;9f20	8f 	. 
	adc a,d			;9f21	8a 	. 
	sub c			;9f22	91 	. 
	inc b			;9f23	04 	. 
	add a,b			;9f24	80 	. 
	ld (bc),a			;9f25	02 	. 
	sub c			;9f26	91 	. 
	inc b			;9f27	04 	. 
	adc a,h			;9f28	8c 	. 
	ld (bc),a			;9f29	02 	. 
	sub c			;9f2a	91 	. 
	adc a,h			;9f2b	8c 	. 
	add a,b			;9f2c	80 	. 
	inc b			;9f2d	04 	. 
	sub (hl)			;9f2e	96 	. 
	ld (bc),a			;9f2f	02 	. 
	add a,b			;9f30	80 	. 
	ld (bc),a			;9f31	02 	. 
	sbc a,d			;9f32	9a 	. 
	add a,b			;9f33	80 	. 
	sub (hl)			;9f34	96 	. 
	add a,b			;9f35	80 	. 
	add a,b			;9f36	80 	. 
	sbc a,e			;9f37	9b 	. 
	ld (bc),a			;9f38	02 	. 
	ld (bc),a			;9f39	02 	. 
	ld (bc),a			;9f3a	02 	. 
	ld (bc),a			;9f3b	02 	. 
	add a,b			;9f3c	80 	. 
	ld b,0e2h		;9f3d	06 e2 	. . 
	call po,0a204h		;9f3f	e4 04 a2 	. . . 
	ld (bc),a			;9f42	02 	. 
	inc b			;9f43	04 	. 
	and a			;9f44	a7 	. 
	ld (bc),a			;9f45	02 	. 
	call po,sub_ab05h		;9f46	e4 05 ab 	. . . 
	ld b,080h		;9f49	06 80 	. . 
	ld (bc),a			;9f4b	02 	. 
	call po,sub_a404h		;9f4c	e4 04 a4 	. . . 
	ld (bc),a			;9f4f	02 	. 
	inc b			;9f50	04 	. 
	xor c			;9f51	a9 	. 
	ld (bc),a			;9f52	02 	. 
	call po,sub_ac05h		;9f53	e4 05 ac 	. . . 
	ld b,080h		;9f56	06 80 	. . 
	ld (bc),a			;9f58	02 	. 
	call po,sub_ab04h		;9f59	e4 04 ab 	. . . 
	inc b			;9f5c	04 	. 
	inc b			;9f5d	04 	. 
	xor h			;9f5e	ac 	. 
	xor e			;9f5f	ab 	. 
	call po,sub_b005h		;9f60	e4 05 b0 	. . . 
	inc c			;9f63	0c 	. 
	add a,b			;9f64	80 	. 
	inc b			;9f65	04 	. 
	jp po,004e3h		;9f66	e2 e3 04 	. . . 
	jp pe,la291h		;9f69	ea 91 a2 	. . . 
	jp pe,la291h		;9f6c	ea 91 a2 	. . . 
	jp pe,la291h		;9f6f	ea 91 a2 	. . . 
	add a,b			;9f72	80 	. 
	ld (bc),a			;9f73	02 	. 
	pop hl			;9f74	e1 	. 
	dec bc			;9f75	0b 	. 
	call po,00102h		;9f76	e4 02 01 	. . . 
	add a,b			;9f79	80 	. 
	adc a,l			;9f7a	8d 	. 
	add a,b			;9f7b	80 	. 
	adc a,l			;9f7c	8d 	. 
	add a,b			;9f7d	80 	. 
	adc a,l			;9f7e	8d 	. 
	ex af,af'			;9f7f	08 	. 
	jp po,l8004h		;9f80	e2 04 80 	. . . 
	add a,b			;9f83	80 	. 
	inc b			;9f84	04 	. 
	and (hl)			;9f85	a6 	. 
	sbc a,a			;9f86	9f 	. 
	call pe,00401h		;9f87	ec 01 04 	. . . 
	dec bc			;9f8a	0b 	. 
	add a,b			;9f8b	80 	. 
	and b			;9f8c	a0 	. 
	inc b			;9f8d	04 	. 
	ld l,(hl)			;9f8e	6e 	n 
	and b			;9f8f	a0 	. 
	ret m			;9f90	f8 	. 
	ld bc,00a03h		;9f91	01 03 0a 	. . . 
	add a,b			;9f94	80 	. 
	ret nz			;9f95	c0 	. 
	inc b			;9f96	04 	. 
	ld b,(hl)			;9f97	46 	F 
	and c			;9f98	a1 	. 
	call pe,00401h		;9f99	ec 01 04 	. . . 
	dec bc			;9f9c	0b 	. 
l9f9dh:
	add a,b			;9f9d	80 	. 
	ret po			;9f9e	e0 	. 
	inc b			;9f9f	04 	. 
	rra			;9fa0	1f 	. 
	and d			;9fa1	a2 	. 
	nop			;9fa2	00 	. 
	nop			;9fa3	00 	. 
	nop			;9fa4	00 	. 
	nop			;9fa5	00 	. 
	and a			;9fa6	a7 	. 
	ld (bc),a			;9fa7	02 	. 
	ld (bc),a			;9fa8	02 	. 
	and d			;9fa9	a2 	. 
	and d			;9faa	a2 	. 
	call pe,00300h		;9fab	ec 00 03 	. . . 
	and (hl)			;9fae	a6 	. 
	sbc a,a			;9faf	9f 	. 
	and a			;9fb0	a7 	. 
	add a,b			;9fb1	80 	. 
	and a			;9fb2	a7 	. 
	add a,b			;9fb3	80 	. 
	call pe,00201h		;9fb4	ec 01 02 	. . . 
	and (hl)			;9fb7	a6 	. 
	sbc a,a			;9fb8	9f 	. 
	and a			;9fb9	a7 	. 
	ld (bc),a			;9fba	02 	. 
	inc b			;9fbb	04 	. 
	xor e			;9fbc	ab 	. 
	ld (bc),a			;9fbd	02 	. 
	call po,sub_ae05h		;9fbe	e4 05 ae 	. . . 
	ld b,080h		;9fc1	06 80 	. . 
	ld (bc),a			;9fc3	02 	. 
	call po,0a904h		;9fc4	e4 04 a9 	. . . 
	ld (bc),a			;9fc7	02 	. 
	inc b			;9fc8	04 	. 
	xor h			;9fc9	ac 	. 
	ld (bc),a			;9fca	02 	. 
	call po,sub_b005h		;9fcb	e4 05 b0 	. . . 
	ld b,080h		;9fce	06 80 	. . 
	ld (bc),a			;9fd0	02 	. 
	call po,0ae04h		;9fd1	e4 04 ae 	. . . 
	ld (bc),a			;9fd4	02 	. 
	inc b			;9fd5	04 	. 
	or b			;9fd6	b0 	. 
	ld (bc),a			;9fd7	02 	. 
	or d			;9fd8	b2 	. 
	inc b			;9fd9	04 	. 
	or b			;9fda	b0 	. 
	xor (hl)			;9fdb	ae 	. 
	xor h			;9fdc	ac 	. 
	call po,sub_ab05h		;9fdd	e4 05 ab 	. . . 
	ex af,af'			;9fe0	08 	. 
	and a			;9fe1	a7 	. 
	ld (bc),a			;9fe2	02 	. 
	inc b			;9fe3	04 	. 
	xor e			;9fe4	ab 	. 
	ld (bc),a			;9fe5	02 	. 
	call po,sub_ae05h		;9fe6	e4 05 ae 	. . . 
	ld b,080h		;9fe9	06 80 	. . 
	ld (bc),a			;9feb	02 	. 
	call po,0a904h		;9fec	e4 04 a9 	. . . 
	ld (bc),a			;9fef	02 	. 
	inc b			;9ff0	04 	. 
	xor h			;9ff1	ac 	. 
	ld (bc),a			;9ff2	02 	. 
	call po,sub_b005h		;9ff3	e4 05 b0 	. . . 
	ld b,080h		;9ff6	06 80 	. . 
	ld (bc),a			;9ff8	02 	. 
	call po,0ae04h		;9ff9	e4 04 ae 	. . . 
	inc b			;9ffc	04 	. 
	inc b			;9ffd	04 	. 
	or d			;9ffe	b2 	. 
	xor (hl)			;9fff	ae 	. 
	call po,sub_b305h		;a000	e4 05 b3 	. . . 
	inc c			;a003	0c 	. 
	add a,b			;a004	80 	. 
	inc b			;a005	04 	. 
	call po,sub_b004h		;a006	e4 04 b0 	. . . 
	inc b			;a009	04 	. 
	inc bc			;a00a	03 	. 
	ld bc,002b2h		;a00b	01 b2 02 	. . . 
	inc b			;a00e	04 	. 
	or b			;a00f	b0 	. 
	ld (bc),a			;a010	02 	. 
	call po,sub_ae05h		;a011	e4 05 ae 	. . . 
	inc c			;a014	0c 	. 
	add a,b			;a015	80 	. 
	inc b			;a016	04 	. 
	call po,sub_ac04h		;a017	e4 04 ac 	. . . 
	inc b			;a01a	04 	. 
	inc bc			;a01b	03 	. 
	ld bc,002aeh		;a01c	01 ae 02 	. . . 
	inc b			;a01f	04 	. 
	xor h			;a020	ac 	. 
	ld (bc),a			;a021	02 	. 
	call po,sub_ab05h		;a022	e4 05 ab 	. . . 
	inc c			;a025	0c 	. 
	add a,b			;a026	80 	. 
	inc b			;a027	04 	. 
	call po,sub_b004h		;a028	e4 04 b0 	. . . 
	inc b			;a02b	04 	. 
	inc bc			;a02c	03 	. 
	ld bc,002b2h		;a02d	01 b2 02 	. . . 
la030h:
	inc b			;a030	04 	. 
	or b			;a031	b0 	. 
	ld (bc),a			;a032	02 	. 
	xor (hl)			;a033	ae 	. 
	inc b			;a034	04 	. 
	or e			;a035	b3 	. 
	call po,sub_ae05h		;a036	e4 05 ae 	. . . 
	ld b,080h		;a039	06 80 	. . 
	ld (bc),a			;a03b	02 	. 
	call po,sub_b004h		;a03c	e4 04 b0 	. . . 
	inc b			;a03f	04 	. 
	xor (hl)			;a040	ae 	. 
	xor h			;a041	ac 	. 
	xor (hl)			;a042	ae 	. 
	or e			;a043	b3 	. 
	ex af,af'			;a044	08 	. 
	or d			;a045	b2 	. 
	and a			;a046	a7 	. 
	ld (bc),a			;a047	02 	. 
	inc b			;a048	04 	. 
	xor e			;a049	ab 	. 
	ld (bc),a			;a04a	02 	. 
	call po,sub_ae05h		;a04b	e4 05 ae 	. . . 
	ld b,080h		;a04e	06 80 	. . 
	ld (bc),a			;a050	02 	. 
	call po,0a904h		;a051	e4 04 a9 	. . . 
	ld (bc),a			;a054	02 	. 
	inc b			;a055	04 	. 
	xor h			;a056	ac 	. 
	ld (bc),a			;a057	02 	. 
	call po,sub_b005h		;a058	e4 05 b0 	. . . 
	ld b,080h		;a05b	06 80 	. . 
	ld (bc),a			;a05d	02 	. 
	xor (hl)			;a05e	ae 	. 
	inc b			;a05f	04 	. 
	inc b			;a060	04 	. 
	or d			;a061	b2 	. 
	xor (hl)			;a062	ae 	. 
	call po,sub_b305h		;a063	e4 05 b3 	. . . 
	inc c			;a066	0c 	. 
	add a,b			;a067	80 	. 
	inc b			;a068	04 	. 
	call po,0e504h		;a069	e4 04 e5 	. . . 
	and (hl)			;a06c	a6 	. 
	sbc a,a			;a06d	9f 	. 
	adc a,a			;a06e	8f 	. 
	ld (bc),a			;a06f	02 	. 
	ld (bc),a			;a070	02 	. 
	add a,b			;a071	80 	. 
	inc b			;a072	04 	. 
	adc a,d			;a073	8a 	. 
	ld (bc),a			;a074	02 	. 
	add a,b			;a075	80 	. 
	sub (hl)			;a076	96 	. 
	add a,b			;a077	80 	. 
	adc a,a			;a078	8f 	. 
	ld (bc),a			;a079	02 	. 
	ld (bc),a			;a07a	02 	. 
	add a,b			;a07b	80 	. 
	inc b			;a07c	04 	. 
	sub (hl)			;a07d	96 	. 
	ld (bc),a			;a07e	02 	. 
	add a,b			;a07f	80 	. 
	adc a,d			;a080	8a 	. 
	add a,b			;a081	80 	. 
	call pe,00200h		;a082	ec 00 02 	. . . 
	ld l,(hl)			;a085	6e 	n 
	and b			;a086	a0 	. 
	adc a,a			;a087	8f 	. 
	inc b			;a088	04 	. 
	add a,b			;a089	80 	. 
	ld (bc),a			;a08a	02 	. 
	adc a,a			;a08b	8f 	. 
	inc b			;a08c	04 	. 
	adc a,d			;a08d	8a 	. 
	ld (bc),a			;a08e	02 	. 
	adc a,a			;a08f	8f 	. 
	adc a,d			;a090	8a 	. 
	sub c			;a091	91 	. 
	inc b			;a092	04 	. 
	add a,b			;a093	80 	. 
	ld (bc),a			;a094	02 	. 
	sub c			;a095	91 	. 
	inc b			;a096	04 	. 
	adc a,h			;a097	8c 	. 
	ld (bc),a			;a098	02 	. 
	sub c			;a099	91 	. 
	adc a,h			;a09a	8c 	. 
	sub (hl)			;a09b	96 	. 
	inc b			;a09c	04 	. 
la09dh:
	add a,b			;a09d	80 	. 
	ld (bc),a			;a09e	02 	. 
	sub (hl)			;a09f	96 	. 
	inc b			;a0a0	04 	. 
	sub h			;a0a1	94 	. 
la0a2h:
	ld (bc),a			;a0a2	02 	. 
	sub (hl)			;a0a3	96 	. 
	inc b			;a0a4	04 	. 
	sbc a,b			;a0a5	98 	. 
	ld (bc),a			;a0a6	02 	. 
	add a,b			;a0a7	80 	. 
	sub (hl)			;a0a8	96 	. 
	add a,b			;a0a9	80 	. 
	sbc a,e			;a0aa	9b 	. 
	add a,b			;a0ab	80 	. 
	sub (hl)			;a0ac	96 	. 
	add a,b			;a0ad	80 	. 
	adc a,a			;a0ae	8f 	. 
	inc b			;a0af	04 	. 
	add a,b			;a0b0	80 	. 
	ld (bc),a			;a0b1	02 	. 
	adc a,a			;a0b2	8f 	. 
	inc b			;a0b3	04 	. 
	adc a,d			;a0b4	8a 	. 
	ld (bc),a			;a0b5	02 	. 
	adc a,a			;a0b6	8f 	. 
	adc a,d			;a0b7	8a 	. 
	sub c			;a0b8	91 	. 
	inc b			;a0b9	04 	. 
	add a,b			;a0ba	80 	. 
	ld (bc),a			;a0bb	02 	. 
	sub c			;a0bc	91 	. 
	inc b			;a0bd	04 	. 
	adc a,h			;a0be	8c 	. 
	ld (bc),a			;a0bf	02 	. 
	sub c			;a0c0	91 	. 
	adc a,h			;a0c1	8c 	. 
	sub (hl)			;a0c2	96 	. 
	inc b			;a0c3	04 	. 
	add a,b			;a0c4	80 	. 
	ld (bc),a			;a0c5	02 	. 
	sub (hl)			;a0c6	96 	. 
	ld b,094h		;a0c7	06 94 	. . 
	inc b			;a0c9	04 	. 
	call po,09b06h		;a0ca	e4 06 9b 	. . . 
	inc c			;a0cd	0c 	. 
	sbc a,d			;a0ce	9a 	. 
	inc b			;a0cf	04 	. 
	call po,sub_9803h		;a0d0	e4 03 98 	. . . 
	inc b			;a0d3	04 	. 
	add a,b			;a0d4	80 	. 
	ld (bc),a			;a0d5	02 	. 
	sbc a,b			;a0d6	98 	. 
	ld b,09ah		;a0d7	06 9a 	. . 
	inc b			;a0d9	04 	. 
	sub (hl)			;a0da	96 	. 
	inc b			;a0db	04 	. 
	add a,b			;a0dc	80 	. 
	ld (bc),a			;a0dd	02 	. 
	call po,sub_9606h		;a0de	e4 06 96 	. . . 
	ex af,af'			;a0e1	08 	. 
	add a,b			;a0e2	80 	. 
	ld (bc),a			;a0e3	02 	. 
	call po,sub_9403h		;a0e4	e4 03 94 	. . . 
	inc b			;a0e7	04 	. 
	add a,b			;a0e8	80 	. 
	ld (bc),a			;a0e9	02 	. 
	call po,sub_9406h		;a0ea	e4 06 94 	. . . 
	ex af,af'			;a0ed	08 	. 
	add a,b			;a0ee	80 	. 
	ld (bc),a			;a0ef	02 	. 
	call po,09303h		;a0f0	e4 03 93 	. . . 
	ld (bc),a			;a0f3	02 	. 
	add a,b			;a0f4	80 	. 
	sub h			;a0f5	94 	. 
	add a,b			;a0f6	80 	. 
	sub (hl)			;a0f7	96 	. 
	add a,b			;a0f8	80 	. 
	sub h			;a0f9	94 	. 
	add a,b			;a0fa	80 	. 
	sbc a,b			;a0fb	98 	. 
	inc b			;a0fc	04 	. 
	add a,b			;a0fd	80 	. 
	ld (bc),a			;a0fe	02 	. 
	call po,sub_9806h		;a0ff	e4 06 98 	. . . 
	ex af,af'			;a102	08 	. 
	add a,b			;a103	80 	. 
	ld (bc),a			;a104	02 	. 
	call po,09603h		;a105	e4 03 96 	. . . 
	ld (bc),a			;a108	02 	. 
	add a,b			;a109	80 	. 
	sbc a,e			;a10a	9b 	. 
	add a,b			;a10b	80 	. 
	call po,sub_9606h		;a10c	e4 06 96 	. . . 
	ld b,080h		;a10f	06 80 	. . 
	ld (bc),a			;a111	02 	. 
	call po,sub_8003h		;a112	e4 03 80 	. . . 
	inc b			;a115	04 	. 
	sub h			;a116	94 	. 
	add a,b			;a117	80 	. 
	sub e			;a118	93 	. 
	add a,b			;a119	80 	. 
	sbc a,e			;a11a	9b 	. 
	add a,b			;a11b	80 	. 
	sbc a,d			;a11c	9a 	. 
	adc a,a			;a11d	8f 	. 
	inc b			;a11e	04 	. 
	add a,b			;a11f	80 	. 
	ld (bc),a			;a120	02 	. 
	adc a,a			;a121	8f 	. 
	inc b			;a122	04 	. 
	adc a,d			;a123	8a 	. 
	ld (bc),a			;a124	02 	. 
	adc a,a			;a125	8f 	. 
	adc a,d			;a126	8a 	. 
	sub c			;a127	91 	. 
	inc b			;a128	04 	. 
	add a,b			;a129	80 	. 
	ld (bc),a			;a12a	02 	. 
	sub c			;a12b	91 	. 
	inc b			;a12c	04 	. 
	adc a,h			;a12d	8c 	. 
	ld (bc),a			;a12e	02 	. 
	sub c			;a12f	91 	. 
	adc a,h			;a130	8c 	. 
	add a,b			;a131	80 	. 
	inc b			;a132	04 	. 
	sub (hl)			;a133	96 	. 
	ld (bc),a			;a134	02 	. 
	add a,b			;a135	80 	. 
	ld (bc),a			;a136	02 	. 
	sbc a,d			;a137	9a 	. 
	add a,b			;a138	80 	. 
	sub (hl)			;a139	96 	. 
	add a,b			;a13a	80 	. 
	add a,b			;a13b	80 	. 
	sbc a,e			;a13c	9b 	. 
	ld (bc),a			;a13d	02 	. 
	ld (bc),a			;a13e	02 	. 
	ld (bc),a			;a13f	02 	. 
	ld (bc),a			;a140	02 	. 
	add a,b			;a141	80 	. 
	ld b,0e5h		;a142	06 e5 	. . 
	ld l,(hl)			;a144	6e 	n 
	and b			;a145	a0 	. 
	and a			;a146	a7 	. 
	ld (bc),a			;a147	02 	. 
	ld (bc),a			;a148	02 	. 
	add a,b			;a149	80 	. 
	inc b			;a14a	04 	. 
	and a			;a14b	a7 	. 
	ld (bc),a			;a14c	02 	. 
	add a,b			;a14d	80 	. 
	xor (hl)			;a14e	ae 	. 
	add a,b			;a14f	80 	. 
	and a			;a150	a7 	. 
	ld (bc),a			;a151	02 	. 
	ld (bc),a			;a152	02 	. 
	add a,b			;a153	80 	. 
	inc b			;a154	04 	. 
	and a			;a155	a7 	. 
	ld (bc),a			;a156	02 	. 
	add a,b			;a157	80 	. 
	and d			;a158	a2 	. 
	add a,b			;a159	80 	. 
	call pe,00200h		;a15a	ec 00 02 	. . . 
	ld b,(hl)			;a15d	46 	F 
	and c			;a15e	a1 	. 
	and d			;a15f	a2 	. 
	ld (bc),a			;a160	02 	. 
	inc b			;a161	04 	. 
	and a			;a162	a7 	. 
	ld (bc),a			;a163	02 	. 
	call po,sub_ab05h		;a164	e4 05 ab 	. . . 
	ld b,080h		;a167	06 80 	. . 
	ld (bc),a			;a169	02 	. 
	call po,sub_a404h		;a16a	e4 04 a4 	. . . 
	ld (bc),a			;a16d	02 	. 
	inc b			;a16e	04 	. 
	xor c			;a16f	a9 	. 
	ld (bc),a			;a170	02 	. 
	call po,sub_ac05h		;a171	e4 05 ac 	. . . 
	ld b,080h		;a174	06 80 	. . 
	ld (bc),a			;a176	02 	. 
	call po,sub_ab04h		;a177	e4 04 ab 	. . . 
	ld (bc),a			;a17a	02 	. 
	inc b			;a17b	04 	. 
	xor h			;a17c	ac 	. 
	ld (bc),a			;a17d	02 	. 
	xor (hl)			;a17e	ae 	. 
	add a,b			;a17f	80 	. 
	xor h			;a180	ac 	. 
	add a,b			;a181	80 	. 
	xor e			;a182	ab 	. 
	ld (bc),a			;a183	02 	. 
	add a,b			;a184	80 	. 
	xor c			;a185	a9 	. 
	add a,b			;a186	80 	. 
	and a			;a187	a7 	. 
	ex af,af'			;a188	08 	. 
	call po,0a204h		;a189	e4 04 a2 	. . . 
	ld (bc),a			;a18c	02 	. 
	inc b			;a18d	04 	. 
	and a			;a18e	a7 	. 
	ld (bc),a			;a18f	02 	. 
	call po,sub_ab05h		;a190	e4 05 ab 	. . . 
	ld b,080h		;a193	06 80 	. . 
	ld (bc),a			;a195	02 	. 
	call po,sub_a404h		;a196	e4 04 a4 	. . . 
	ld (bc),a			;a199	02 	. 
	inc b			;a19a	04 	. 
	xor c			;a19b	a9 	. 
	ld (bc),a			;a19c	02 	. 
	call po,sub_ac05h		;a19d	e4 05 ac 	. . . 
	ld b,080h		;a1a0	06 80 	. . 
	ld (bc),a			;a1a2	02 	. 
	xor e			;a1a3	ab 	. 
	inc b			;a1a4	04 	. 
	inc b			;a1a5	04 	. 
	xor h			;a1a6	ac 	. 
	ld (bc),a			;a1a7	02 	. 
	add a,b			;a1a8	80 	. 
	xor c			;a1a9	a9 	. 
	add a,b			;a1aa	80 	. 
	call po,sub_ab05h		;a1ab	e4 05 ab 	. . . 
	inc c			;a1ae	0c 	. 
	add a,b			;a1af	80 	. 
	inc b			;a1b0	04 	. 
	call po,sub_a704h		;a1b1	e4 04 a7 	. . . 
	inc b			;a1b4	04 	. 
	inc bc			;a1b5	03 	. 
	ld bc,002a9h		;a1b6	01 a9 02 	. . . 
	inc b			;a1b9	04 	. 
	and a			;a1ba	a7 	. 
	ld (bc),a			;a1bb	02 	. 
	call po,sub_a605h		;a1bc	e4 05 a6 	. . . 
	inc c			;a1bf	0c 	. 
	add a,b			;a1c0	80 	. 
	inc b			;a1c1	04 	. 
	call po,sub_a404h		;a1c2	e4 04 a4 	. . . 
	inc b			;a1c5	04 	. 
	inc bc			;a1c6	03 	. 
	ld bc,002a6h		;a1c7	01 a6 02 	. . . 
	inc b			;a1ca	04 	. 
	and h			;a1cb	a4 	. 
	ld (bc),a			;a1cc	02 	. 
	and d			;a1cd	a2 	. 
	inc b			;a1ce	04 	. 
	and h			;a1cf	a4 	. 
	call po,sub_a605h		;a1d0	e4 05 a6 	. . . 
	ld b,080h		;a1d3	06 80 	. . 
	ld (bc),a			;a1d5	02 	. 
	call po,sub_a704h		;a1d6	e4 04 a7 	. . . 
	inc b			;a1d9	04 	. 
	inc bc			;a1da	03 	. 
	ld bc,002a9h		;a1db	01 a9 02 	. . . 
	inc b			;a1de	04 	. 
	and a			;a1df	a7 	. 
	ld (bc),a			;a1e0	02 	. 
	and (hl)			;a1e1	a6 	. 
	inc b			;a1e2	04 	. 
	xor e			;a1e3	ab 	. 
	call po,sub_a705h		;a1e4	e4 05 a7 	. . . 
	ld b,080h		;a1e7	06 80 	. . 
	ld (bc),a			;a1e9	02 	. 
	call po,0a904h		;a1ea	e4 04 a9 	. . . 
	inc b			;a1ed	04 	. 
	xor e			;a1ee	ab 	. 
	xor c			;a1ef	a9 	. 
	xor e			;a1f0	ab 	. 
sub_a1f1h:
	xor h			;a1f1	ac 	. 
	xor h			;a1f2	ac 	. 
	xor e			;a1f3	ab 	. 
	ex af,af'			;a1f4	08 	. 
	call po,0a204h		;a1f5	e4 04 a2 	. . . 
	ld (bc),a			;a1f8	02 	. 
	inc b			;a1f9	04 	. 
	and a			;a1fa	a7 	. 
	ld (bc),a			;a1fb	02 	. 
	call po,sub_ab05h		;a1fc	e4 05 ab 	. . . 
	ld b,080h		;a1ff	06 80 	. . 
	ld (bc),a			;a201	02 	. 
	call po,sub_a404h		;a202	e4 04 a4 	. . . 
sub_a205h:
	ld (bc),a			;a205	02 	. 
	inc b			;a206	04 	. 
	xor c			;a207	a9 	. 
	ld (bc),a			;a208	02 	. 
	call po,sub_ac05h		;a209	e4 05 ac 	. . . 
	ld b,080h		;a20c	06 80 	. . 
	ld (bc),a			;a20e	02 	. 
	call po,sub_ab04h		;a20f	e4 04 ab 	. . . 
	inc b			;a212	04 	. 
	inc b			;a213	04 	. 
	xor h			;a214	ac 	. 
	xor e			;a215	ab 	. 
	call po,sub_b005h		;a216	e4 05 b0 	. . . 
	inc c			;a219	0c 	. 
	add a,b			;a21a	80 	. 
	inc b			;a21b	04 	. 
	push hl			;a21c	e5 	. 
	ld b,(hl)			;a21d	46 	F 
	and c			;a21e	a1 	. 
	ex (sp),hl			;a21f	e3 	. 
	inc b			;a220	04 	. 
	jp pe,0a279h		;a221	ea 79 a2 	. y . 
	jp pe,la2b5h		;a224	ea b5 a2 	. . . 
	jp pe,0a279h		;a227	ea 79 a2 	. y . 
	jp pe,la2b5h		;a22a	ea b5 a2 	. . . 
	ex (sp),hl			;a22d	e3 	. 
	inc b			;a22e	04 	. 
	jp pe,la291h		;a22f	ea 91 a2 	. . . 
	jp pe,la291h		;a232	ea 91 a2 	. . . 
	jp pe,la291h		;a235	ea 91 a2 	. . . 
	jp pe,la2a8h		;a238	ea a8 a2 	. . . 
	jp pe,la291h		;a23b	ea 91 a2 	. . . 
	jp pe,la291h		;a23e	ea 91 a2 	. . . 
	jp pe,la291h		;a241	ea 91 a2 	. . . 
	jp pe,la2a8h		;a244	ea a8 a2 	. . . 
	jp pe,la2c3h		;a247	ea c3 a2 	. . . 
	jp pe,la2c3h		;a24a	ea c3 a2 	. . . 
	jp pe,la2c3h		;a24d	ea c3 a2 	. . . 
	jp pe,la2a8h		;a250	ea a8 a2 	. . . 
	jp pe,la291h		;a253	ea 91 a2 	. . . 
	jp pe,la291h		;a256	ea 91 a2 	. . . 
	jp pe,la2d9h		;a259	ea d9 a2 	. . . 
	jp pe,la291h		;a25c	ea 91 a2 	. . . 
	jp pe,la291h		;a25f	ea 91 a2 	. . . 
	jp pe,la291h		;a262	ea 91 a2 	. . . 
	jp pe,la291h		;a265	ea 91 a2 	. . . 
	add a,b			;a268	80 	. 
	ld (bc),a			;a269	02 	. 
	pop hl			;a26a	e1 	. 
	dec bc			;a26b	0b 	. 
	call po,00102h		;a26c	e4 02 01 	. . . 
	add a,b			;a26f	80 	. 
	adc a,l			;a270	8d 	. 
	add a,b			;a271	80 	. 
	adc a,l			;a272	8d 	. 
	add a,b			;a273	80 	. 
	adc a,l			;a274	8d 	. 
	ex af,af'			;a275	08 	. 
	push hl			;a276	e5 	. 
	ld hl,0e1a2h		;a277	21 a2 e1 	! . . 
	add hl,bc			;a27a	09 	. 
	call po,sub_8d01h		;a27b	e4 01 8d 	. . . 
	ld (bc),a			;a27e	02 	. 
	ld (bc),a			;a27f	02 	. 
	pop hl			;a280	e1 	. 
	dec bc			;a281	0b 	. 
	call po,00402h		;a282	e4 02 04 	. . . 
	pop hl			;a285	e1 	. 
	add hl,bc			;a286	09 	. 
	call po,00201h		;a287	e4 01 02 	. . . 
	ld (bc),a			;a28a	02 	. 
	pop hl			;a28b	e1 	. 
	dec bc			;a28c	0b 	. 
	call po,00402h		;a28d	e4 02 04 	. . . 
	ex de,hl			;a290	eb 	. 
la291h:
	pop hl			;a291	e1 	. 
	add hl,bc			;a292	09 	. 
	call po,sub_8d01h		;a293	e4 01 8d 	. . . 
	inc b			;a296	04 	. 
	pop hl			;a297	e1 	. 
	dec bc			;a298	0b 	. 
	call po,00402h		;a299	e4 02 04 	. . . 
	pop hl			;a29c	e1 	. 
	add hl,bc			;a29d	09 	. 
	call po,00201h		;a29e	e4 01 02 	. . . 
	ld (bc),a			;a2a1	02 	. 
	pop hl			;a2a2	e1 	. 
	dec bc			;a2a3	0b 	. 
	call po,00402h		;a2a4	e4 02 04 	. . . 
	ex de,hl			;a2a7	eb 	. 
la2a8h:
	pop hl			;a2a8	e1 	. 
	add hl,bc			;a2a9	09 	. 
	call po,00401h		;a2aa	e4 01 04 	. . . 
	pop hl			;a2ad	e1 	. 
	dec bc			;a2ae	0b 	. 
	call po,00402h		;a2af	e4 02 04 	. . . 
	inc b			;a2b2	04 	. 
	inc b			;a2b3	04 	. 
	ex de,hl			;a2b4	eb 	. 
la2b5h:
	pop hl			;a2b5	e1 	. 
	add hl,bc			;a2b6	09 	. 
	call po,00201h		;a2b7	e4 01 02 	. . . 
	ld (bc),a			;a2ba	02 	. 
	pop hl			;a2bb	e1 	. 
	dec bc			;a2bc	0b 	. 
	call po,00402h		;a2bd	e4 02 04 	. . . 
	inc b			;a2c0	04 	. 
	inc b			;a2c1	04 	. 
	ex de,hl			;a2c2	eb 	. 
la2c3h:
	pop hl			;a2c3	e1 	. 
	add hl,bc			;a2c4	09 	. 
	call po,00401h		;a2c5	e4 01 04 	. . . 
	pop hl			;a2c8	e1 	. 
	dec bc			;a2c9	0b 	. 
	call po,00202h		;a2ca	e4 02 02 	. . . 
	pop hl			;a2cd	e1 	. 
	add hl,bc			;a2ce	09 	. 
	call po,00401h		;a2cf	e4 01 04 	. . . 
	ld (bc),a			;a2d2	02 	. 
	pop hl			;a2d3	e1 	. 
	dec bc			;a2d4	0b 	. 
	call po,00402h		;a2d5	e4 02 04 	. . . 
	ex de,hl			;a2d8	eb 	. 
la2d9h:
	pop hl			;a2d9	e1 	. 
	add hl,bc			;a2da	09 	. 
	call po,00401h		;a2db	e4 01 04 	. . . 
	pop hl			;a2de	e1 	. 
	dec bc			;a2df	0b 	. 
	call po,00402h		;a2e0	e4 02 04 	. . . 
	pop hl			;a2e3	e1 	. 
	add hl,bc			;a2e4	09 	. 
	call po,00401h		;a2e5	e4 01 04 	. . . 
	pop hl			;a2e8	e1 	. 
	dec bc			;a2e9	0b 	. 
	call po,00402h		;a2ea	e4 02 04 	. . . 
	ex de,hl			;a2ed	eb 	. 
la2eeh:
	pop hl			;a2ee	e1 	. 
	add hl,bc			;a2ef	09 	. 
	call po,sub_8d01h		;a2f0	e4 01 8d 	. . . 
	inc bc			;a2f3	03 	. 
	ld bc,00be1h		;a2f4	01 e1 0b 	. . . 
	call po,00402h		;a2f7	e4 02 04 	. . . 
	pop hl			;a2fa	e1 	. 
	add hl,bc			;a2fb	09 	. 
	call po,00201h		;a2fc	e4 01 02 	. . . 
	ld (bc),a			;a2ff	02 	. 
	pop hl			;a300	e1 	. 
	dec bc			;a301	0b 	. 
	call po,00402h		;a302	e4 02 04 	. . . 
	ex de,hl			;a305	eb 	. 
la306h:
	pop hl			;a306	e1 	. 
	add hl,bc			;a307	09 	. 
	call po,00401h		;a308	e4 01 04 	. . . 
	pop hl			;a30b	e1 	. 
	dec bc			;a30c	0b 	. 
	call po,00402h		;a30d	e4 02 04 	. . . 
	pop hl			;a310	e1 	. 
	add hl,bc			;a311	09 	. 
	call po,00201h		;a312	e4 01 02 	. . . 
	pop hl			;a315	e1 	. 
	dec bc			;a316	0b 	. 
	call po,00102h		;a317	e4 02 01 	. . . 
	add a,b			;a31a	80 	. 
	adc a,l			;a31b	8d 	. 
	add a,b			;a31c	80 	. 
	adc a,l			;a31d	8d 	. 
	add a,b			;a31e	80 	. 
	ex de,hl			;a31f	eb 	. 
	pop hl			;a320	e1 	. 
	add hl,bc			;a321	09 	. 
	call po,sub_8d01h		;a322	e4 01 8d 	. . . 
	ld (bc),a			;a325	02 	. 
	ld (bc),a			;a326	02 	. 
	pop hl			;a327	e1 	. 
	dec bc			;a328	0b 	. 
	call po,00202h		;a329	e4 02 02 	. . . 
	pop hl			;a32c	e1 	. 
	add hl,bc			;a32d	09 	. 
	call po,00201h		;a32e	e4 01 02 	. . . 
	ld (bc),a			;a331	02 	. 
	ld (bc),a			;a332	02 	. 
	pop hl			;a333	e1 	. 
	dec bc			;a334	0b 	. 
	call po,00202h		;a335	e4 02 02 	. . . 
	pop hl			;a338	e1 	. 
	add hl,bc			;a339	09 	. 
	call po,00201h		;a33a	e4 01 02 	. . . 
	ex de,hl			;a33d	eb 	. 
la33eh:
	pop hl			;a33e	e1 	. 
	add hl,bc			;a33f	09 	. 
	call po,sub_8d01h		;a340	e4 01 8d 	. . . 
	inc bc			;a343	03 	. 
	ld bc,00be1h		;a344	01 e1 0b 	. . . 
	call po,00402h		;a347	e4 02 04 	. . . 
	pop hl			;a34a	e1 	. 
	add hl,bc			;a34b	09 	. 
	call po,00301h		;a34c	e4 01 03 	. . . 
	ld bc,00be1h		;a34f	01 e1 0b 	. . . 
	call po,00302h		;a352	e4 02 03 	. . . 
	ld bc,009e1h		;a355	01 e1 09 	. . . 
	call po,sub_8d01h		;a358	e4 01 8d 	. . . 
	inc bc			;a35b	03 	. 
	ld bc,00be1h		;a35c	01 e1 0b 	. . . 
	call po,00402h		;a35f	e4 02 04 	. . . 
	inc b			;a362	04 	. 
	inc b			;a363	04 	. 
	ex de,hl			;a364	eb 	. 
la365h:
	pop hl			;a365	e1 	. 
	add hl,bc			;a366	09 	. 
	call po,sub_8d01h		;a367	e4 01 8d 	. . . 
	ld (bc),a			;a36a	02 	. 
	ld (bc),a			;a36b	02 	. 
	pop hl			;a36c	e1 	. 
	dec bc			;a36d	0b 	. 
	call po,00202h		;a36e	e4 02 02 	. . . 
	pop hl			;a371	e1 	. 
	add hl,bc			;a372	09 	. 
	call po,00201h		;a373	e4 01 02 	. . . 
	inc b			;a376	04 	. 
	pop hl			;a377	e1 	. 
	dec bc			;a378	0b 	. 
	call po,00202h		;a379	e4 02 02 	. . . 
	pop hl			;a37c	e1 	. 
	add hl,bc			;a37d	09 	. 
	call po,00201h		;a37e	e4 01 02 	. . . 
	ex de,hl			;a381	eb 	. 
la382h:
	pop hl			;a382	e1 	. 
	add hl,bc			;a383	09 	. 
	call po,sub_8d01h		;a384	e4 01 8d 	. . . 
	inc b			;a387	04 	. 
	pop hl			;a388	e1 	. 
	dec bc			;a389	0b 	. 
	call po,00202h		;a38a	e4 02 02 	. . . 
	pop hl			;a38d	e1 	. 
	add hl,bc			;a38e	09 	. 
	call po,00201h		;a38f	e4 01 02 	. . . 
	inc b			;a392	04 	. 
	pop hl			;a393	e1 	. 
	dec bc			;a394	0b 	. 
	call po,00202h		;a395	e4 02 02 	. . . 
	pop hl			;a398	e1 	. 
	add hl,bc			;a399	09 	. 
	call po,00201h		;a39a	e4 01 02 	. . . 
	ex de,hl			;a39d	eb 	. 
la39eh:
	pop hl			;a39e	e1 	. 
	add hl,bc			;a39f	09 	. 
	call po,sub_8d01h		;a3a0	e4 01 8d 	. . . 
	inc b			;a3a3	04 	. 
	ld b,0e1h		;a3a4	06 e1 	. . 
	dec bc			;a3a6	0b 	. 
	call po,00202h		;a3a7	e4 02 02 	. . . 
	ld (bc),a			;a3aa	02 	. 
	ld (bc),a			;a3ab	02 	. 
	ex de,hl			;a3ac	eb 	. 
la3adh:
	pop hl			;a3ad	e1 	. 
	add hl,bc			;a3ae	09 	. 
	call po,sub_8d01h		;a3af	e4 01 8d 	. . . 
	ld (bc),a			;a3b2	02 	. 
	ld (bc),a			;a3b3	02 	. 
	ld (bc),a			;a3b4	02 	. 
	pop hl			;a3b5	e1 	. 
	dec bc			;a3b6	0b 	. 
	call po,00202h		;a3b7	e4 02 02 	. . . 
	inc b			;a3ba	04 	. 
	inc b			;a3bb	04 	. 
	ex de,hl			;a3bc	eb 	. 
la3bdh:
	inc b			;a3bd	04 	. 
	add a,b			;a3be	80 	. 
	add a,b			;a3bf	80 	. 
	ex af,af'			;a3c0	08 	. 
	jp po,0faa3h		;a3c1	e2 a3 fa 	. . . 
	ld bc,00b05h		;a3c4	01 05 0b 	. . . 
	add a,b			;a3c7	80 	. 
	and b			;a3c8	a0 	. 
	ex af,af'			;a3c9	08 	. 
	ld l,l			;a3ca	6d 	m 
	and h			;a3cb	a4 	. 
	ld b,000h		;a3cc	06 00 	. . 
	inc bc			;a3ce	03 	. 
	ld a,(bc)			;a3cf	0a 	. 
	add a,b			;a3d0	80 	. 
	ret nz			;a3d1	c0 	. 
	ex af,af'			;a3d2	08 	. 
	ld bc,0faa5h		;a3d3	01 a5 fa 	. . . 
	ld bc,00b05h		;a3d6	01 05 0b 	. . . 
	add a,b			;a3d9	80 	. 
	ret po			;a3da	e0 	. 
	ex af,af'			;a3db	08 	. 
	ld d,b			;a3dc	50 	P 
	and l			;a3dd	a5 	. 
	nop			;a3de	00 	. 
	nop			;a3df	00 	. 
	nop			;a3e0	00 	. 
	nop			;a3e1	00 	. 
	jp pe,0a3f5h		;a3e2	ea f5 a3 	. . . 
	add a,b			;a3e5	80 	. 
	ex af,af'			;a3e6	08 	. 
	jp pe,0a3f5h		;a3e7	ea f5 a3 	. . . 
	add a,b			;a3ea	80 	. 
	ld (bc),a			;a3eb	02 	. 
	and b			;a3ec	a0 	. 
	and d			;a3ed	a2 	. 
	and h			;a3ee	a4 	. 
	jp pe,la432h		;a3ef	ea 32 a4 	. 2 . 
	push hl			;a3f2	e5 	. 
	jp po,0e4a3h		;a3f3	e2 a3 e4 	. . . 
	inc b			;a3f6	04 	. 
	xor c			;a3f7	a9 	. 
	ld (bc),a			;a3f8	02 	. 
	add a,b			;a3f9	80 	. 
	inc b			;a3fa	04 	. 
	xor c			;a3fb	a9 	. 
	ld (bc),a			;a3fc	02 	. 
	and a			;a3fd	a7 	. 
	add a,b			;a3fe	80 	. 
	inc b			;a3ff	04 	. 
sub_a400h:
	and a			;a400	a7 	. 
la401h:
	ld (bc),a			;a401	02 	. 
	and l			;a402	a5 	. 
	ld (bc),a			;a403	02 	. 
sub_a404h:
	add a,b			;a404	80 	. 
sub_a405h:
	inc b			;a405	04 	. 
	and l			;a406	a5 	. 
	ld (bc),a			;a407	02 	. 
	call po,0a505h		;a408	e4 05 a5 	. . . 
	and h			;a40b	a4 	. 
	inc b			;a40c	04 	. 
	and l			;a40d	a5 	. 
	ld (bc),a			;a40e	02 	. 
	and l			;a40f	a5 	. 
	ld b,0a4h		;a410	06 a4 	. . 
	ld (de),a			;a412	12 	. 
	add a,b			;a413	80 	. 
	ex af,af'			;a414	08 	. 
	call po,sub_a704h		;a415	e4 04 a7 	. . . 
	ld (bc),a			;a418	02 	. 
	add a,b			;a419	80 	. 
	inc b			;a41a	04 	. 
	and a			;a41b	a7 	. 
	ld (bc),a			;a41c	02 	. 
la41dh:
	and l			;a41d	a5 	. 
	add a,b			;a41e	80 	. 
	inc b			;a41f	04 	. 
	and l			;a420	a5 	. 
	ld (bc),a			;a421	02 	. 
	and h			;a422	a4 	. 
	ld (bc),a			;a423	02 	. 
	add a,b			;a424	80 	. 
	inc b			;a425	04 	. 
	call po,sub_a405h		;a426	e4 05 a4 	. . . 
	ld (bc),a			;a429	02 	. 
	xor c			;a42a	a9 	. 
	ld (bc),a			;a42b	02 	. 
	inc b			;a42c	04 	. 
	and a			;a42d	a7 	. 
	ld (bc),a			;a42e	02 	. 
	and l			;a42f	a5 	. 
	jr la41dh		;a430	18 eb 	. . 
la432h:
	call po,0ea05h		;a432	e4 05 ea 	. . . 
	ld b,d			;a435	42 	B 
	and h			;a436	a4 	. 
	add a,b			;a437	80 	. 
	ld (bc),a			;a438	02 	. 
	and b			;a439	a0 	. 
	and d			;a43a	a2 	. 
	and h			;a43b	a4 	. 
	jp pe,la442h		;a43c	ea 42 a4 	. B . 
	add a,b			;a43f	80 	. 
	ex af,af'			;a440	08 	. 
	ex de,hl			;a441	eb 	. 
la442h:
	and l			;a442	a5 	. 
	ld b,0a4h		;a443	06 a4 	. . 
	ld (bc),a			;a445	02 	. 
	and d			;a446	a2 	. 
	ld b,0a4h		;a447	06 a4 	. . 
	ld (bc),a			;a449	02 	. 
	and l			;a44a	a5 	. 
	ld b,0a4h		;a44b	06 a4 	. . 
	ld (bc),a			;a44d	02 	. 
	and a			;a44e	a7 	. 
	ld (bc),a			;a44f	02 	. 
	and l			;a450	a5 	. 
	inc b			;a451	04 	. 
	and h			;a452	a4 	. 
	ld (bc),a			;a453	02 	. 
	and h			;a454	a4 	. 
	ld b,0a2h		;a455	06 a2 	. . 
	ld (de),a			;a457	12 	. 
la458h:
	add a,b			;a458	80 	. 
	ex af,af'			;a459	08 	. 
	and h			;a45a	a4 	. 
	ld b,0a2h		;a45b	06 a2 	. . 
	ld (bc),a			;a45d	02 	. 
	and b			;a45e	a0 	. 
	ld b,0a2h		;a45f	06 a2 	. . 
	ld (bc),a			;a461	02 	. 
	and h			;a462	a4 	. 
	inc b			;a463	04 	. 
	add a,b			;a464	80 	. 
	xor c			;a465	a9 	. 
	ld (bc),a			;a466	02 	. 
	inc b			;a467	04 	. 
	and a			;a468	a7 	. 
	ld (bc),a			;a469	02 	. 
	and l			;a46a	a5 	. 
	jr la458h		;a46b	18 eb 	. . 
	jp pe,la486h		;a46d	ea 86 a4 	. . . 
	jp pe,la486h		;a470	ea 86 a4 	. . . 
	jp pe,la4bbh		;a473	ea bb a4 	. . . 
	adc a,l			;a476	8d 	. 
	ld (bc),a			;a477	02 	. 
	adc a,b			;a478	88 	. 
	adc a,d			;a479	8a 	. 
	adc a,h			;a47a	8c 	. 
	jp pe,la4bbh		;a47b	ea bb a4 	. . . 
	adc a,l			;a47e	8d 	. 
	ld (bc),a			;a47f	02 	. 
	sub h			;a480	94 	. 
	sub d			;a481	92 	. 
	sub c			;a482	91 	. 
	push hl			;a483	e5 	. 
	ld l,l			;a484	6d 	m 
	and h			;a485	a4 	. 
la486h:
	adc a,l			;a486	8d 	. 
	ld (bc),a			;a487	02 	. 
	add a,b			;a488	80 	. 
	ld bc,l888dh		;a489	01 8d 88 	. . . 
	ld (bc),a			;a48c	02 	. 
	adc a,l			;a48d	8d 	. 
	call pe,00300h		;a48e	ec 00 03 	. . . 
	add a,(hl)			;a491	86 	. 
	and h			;a492	a4 	. 
	adc a,l			;a493	8d 	. 
	adc a,a			;a494	8f 	. 
	inc b			;a495	04 	. 
	adc a,l			;a496	8d 	. 
	ld (bc),a			;a497	02 	. 
	adc a,b			;a498	88 	. 
	ld (bc),a			;a499	02 	. 
	add a,b			;a49a	80 	. 
	ld bc,08388h		;a49b	01 88 83 	. . . 
	ld (bc),a			;a49e	02 	. 
	adc a,b			;a49f	88 	. 
	call pe,00700h		;a4a0	ec 00 07 	. . . 
	sbc a,b			;a4a3	98 	. 
	and h			;a4a4	a4 	. 
	adc a,b			;a4a5	88 	. 
	adc a,b			;a4a6	88 	. 
	adc a,d			;a4a7	8a 	. 
	adc a,h			;a4a8	8c 	. 
	adc a,l			;a4a9	8d 	. 
	ld (bc),a			;a4aa	02 	. 
	add a,b			;a4ab	80 	. 
	ld bc,l888dh		;a4ac	01 8d 88 	. . . 
	ld (bc),a			;a4af	02 	. 
	adc a,l			;a4b0	8d 	. 
	call pe,00300h		;a4b1	ec 00 03 	. . . 
	xor c			;a4b4	a9 	. 
	and h			;a4b5	a4 	. 
	adc a,b			;a4b6	88 	. 
	sub h			;a4b7	94 	. 
	sub d			;a4b8	92 	. 
	sub c			;a4b9	91 	. 
	ex de,hl			;a4ba	eb 	. 
la4bbh:
	adc a,l			;a4bb	8d 	. 
	ld (bc),a			;a4bc	02 	. 
	add a,b			;a4bd	80 	. 
	ld bc,l888dh		;a4be	01 8d 88 	. . . 
	ld (bc),a			;a4c1	02 	. 
	adc a,l			;a4c2	8d 	. 
	call pe,00300h		;a4c3	ec 00 03 	. . . 
	cp e			;a4c6	bb 	. 
	and h			;a4c7	a4 	. 
	adc a,a			;a4c8	8f 	. 
	call po,sub_8d06h		;a4c9	e4 06 8d 	. . . 
	inc b			;a4cc	04 	. 
	call po,sub_8c03h		;a4cd	e4 03 8c 	. . . 
	ld (bc),a			;a4d0	02 	. 
	adc a,d			;a4d1	8a 	. 
	ld (bc),a			;a4d2	02 	. 
	add a,b			;a4d3	80 	. 
	ld bc,l858ah		;a4d4	01 8a 85 	. . . 
	ld (bc),a			;a4d7	02 	. 
	adc a,d			;a4d8	8a 	. 
	call pe,00300h		;a4d9	ec 00 03 	. . . 
	pop de			;a4dc	d1 	. 
	and h			;a4dd	a4 	. 
	adc a,d			;a4de	8a 	. 
	adc a,d			;a4df	8a 	. 
	adc a,h			;a4e0	8c 	. 
	adc a,d			;a4e1	8a 	. 
	adc a,b			;a4e2	88 	. 
	ld (bc),a			;a4e3	02 	. 
	add a,b			;a4e4	80 	. 
	ld bc,08388h		;a4e5	01 88 83 	. . . 
	ld (bc),a			;a4e8	02 	. 
	adc a,b			;a4e9	88 	. 
	call pe,00300h		;a4ea	ec 00 03 	. . . 
	jp po,l88a4h		;a4ed	e2 a4 88 	. . . 
	adc a,b			;a4f0	88 	. 
	adc a,d			;a4f1	8a 	. 
	adc a,h			;a4f2	8c 	. 
	adc a,l			;a4f3	8d 	. 
	ld (bc),a			;a4f4	02 	. 
	add a,b			;a4f5	80 	. 
	ld bc,l888dh		;a4f6	01 8d 88 	. . . 
	ld (bc),a			;a4f9	02 	. 
	adc a,l			;a4fa	8d 	. 
	call pe,00300h		;a4fb	ec 00 03 	. . . 
	di			;a4fe	f3 	. 
	and h			;a4ff	a4 	. 
	ex de,hl			;a500	eb 	. 
	jp pe,0a511h		;a501	ea 11 a5 	. . . 
	jp pe,0a511h		;a504	ea 11 a5 	. . . 
	xor 00ch		;a507	ee 0c 	. . 
	jp pe,la432h		;a509	ea 32 a4 	. 2 . 
	xor 0f4h		;a50c	ee f4 	. . 
	push hl			;a50e	e5 	. 
	ld bc,0e4a5h		;a50f	01 a5 e4 	. . . 
	inc b			;a512	04 	. 
	and l			;a513	a5 	. 
	ld (bc),a			;a514	02 	. 
	add a,b			;a515	80 	. 
	inc b			;a516	04 	. 
	and l			;a517	a5 	. 
	ld (bc),a			;a518	02 	. 
	and h			;a519	a4 	. 
	add a,b			;a51a	80 	. 
	inc b			;a51b	04 	. 
	and h			;a51c	a4 	. 
	ld (bc),a			;a51d	02 	. 
	and d			;a51e	a2 	. 
	ld (bc),a			;a51f	02 	. 
	add a,b			;a520	80 	. 
	inc b			;a521	04 	. 
	and d			;a522	a2 	. 
	ld (bc),a			;a523	02 	. 
	call po,sub_a205h		;a524	e4 05 a2 	. . . 
	and b			;a527	a0 	. 
	inc b			;a528	04 	. 
	and d			;a529	a2 	. 
	ld (bc),a			;a52a	02 	. 
	and d			;a52b	a2 	. 
	ld b,0a0h		;a52c	06 a0 	. . 
	ld (de),a			;a52e	12 	. 
	add a,b			;a52f	80 	. 
	ex af,af'			;a530	08 	. 
	call po,sub_a404h		;a531	e4 04 a4 	. . . 
	ld (bc),a			;a534	02 	. 
	add a,b			;a535	80 	. 
	inc b			;a536	04 	. 
	and h			;a537	a4 	. 
	ld (bc),a			;a538	02 	. 
	and d			;a539	a2 	. 
	add a,b			;a53a	80 	. 
	inc b			;a53b	04 	. 
	and d			;a53c	a2 	. 
	ld (bc),a			;a53d	02 	. 
	and b			;a53e	a0 	. 
	ld (bc),a			;a53f	02 	. 
	add a,b			;a540	80 	. 
	inc b			;a541	04 	. 
	and b			;a542	a0 	. 
	ld (bc),a			;a543	02 	. 
	call po,0a505h		;a544	e4 05 a5 	. . . 
	ld (bc),a			;a547	02 	. 
	inc b			;a548	04 	. 
	and h			;a549	a4 	. 
	ld (bc),a			;a54a	02 	. 
	and d			;a54b	a2 	. 
	jr $-126		;a54c	18 80 	. . 
	ex af,af'			;a54e	08 	. 
	ex de,hl			;a54f	eb 	. 
	ex (sp),hl			;a550	e3 	. 
	inc b			;a551	04 	. 
	pop hl			;a552	e1 	. 
	add hl,bc			;a553	09 	. 
	call po,sub_8d01h		;a554	e4 01 8d 	. . . 
	inc bc			;a557	03 	. 
	ld bc,00be1h		;a558	01 e1 0b 	. . . 
	call po,00402h		;a55b	e4 02 04 	. . . 
	call pe,00f00h		;a55e	ec 00 0f 	. . . 
	ld d,d			;a561	52 	R 
	and l			;a562	a5 	. 
	pop hl			;a563	e1 	. 
	add hl,bc			;a564	09 	. 
	call po,00201h		;a565	e4 01 02 	. . . 
la568h:
	pop hl			;a568	e1 	. 
	add hl,bc			;a569	09 	. 
	call po,00102h		;a56a	e4 02 01 	. . . 
	add a,b			;a56d	80 	. 
	pop hl			;a56e	e1 	. 
	dec bc			;a56f	0b 	. 
	call po,sub_8d02h		;a570	e4 02 8d 	. . . 
	add a,b			;a573	80 	. 
	pop hl			;a574	e1 	. 
	dec c			;a575	0d 	. 
	call po,sub_8d02h		;a576	e4 02 8d 	. . . 
	ld (bc),a			;a579	02 	. 
	push hl			;a57a	e5 	. 
	ld d,d			;a57b	52 	R 
	and l			;a57c	a5 	. 
	inc b			;a57d	04 	. 
	add a,b			;a57e	80 	. 
	add a,b			;a57f	80 	. 
	rlca			;a580	07 	. 
	and d			;a581	a2 	. 
	and l			;a582	a5 	. 
	defb 0fdh,001h,008h	;illegal sequence		;a583	fd 01 08 	. . . 
la586h:
	dec bc			;a586	0b 	. 
	add a,b			;a587	80 	. 
	and b			;a588	a0 	. 
	rlca			;a589	07 	. 
	push af			;a58a	f5 	. 
	and l			;a58b	a5 	. 
	defb 0fdh,000h,003h	;illegal sequence		;a58c	fd 00 03 	. . . 
	inc c			;a58f	0c 	. 
	add a,b			;a590	80 	. 
la591h:
	ret nz			;a591	c0 	. 
	rlca			;a592	07 	. 
	and b			;a593	a0 	. 
	and (hl)			;a594	a6 	. 
	defb 0fdh,001h,003h	;illegal sequence		;a595	fd 01 03 	. . . 
	ld a,(bc)			;a598	0a 	. 
	add a,b			;a599	80 	. 
	ret po			;a59a	e0 	. 
	rlca			;a59b	07 	. 
	ld c,a			;a59c	4f 	O 
	and a			;a59d	a7 	. 
	nop			;a59e	00 	. 
	nop			;a59f	00 	. 
	nop			;a5a0	00 	. 
	nop			;a5a1	00 	. 
	and b			;a5a2	a0 	. 
	ld (bc),a			;a5a3	02 	. 
	sbc a,a			;a5a4	9f 	. 
	ld bc,l80a0h		;a5a5	01 a0 80 	. . . 
	ld (bc),a			;a5a8	02 	. 
	and h			;a5a9	a4 	. 
	and e			;a5aa	a3 	. 
	add a,b			;a5ab	80 	. 
	inc b			;a5ac	04 	. 
	and d			;a5ad	a2 	. 
	ld (bc),a			;a5ae	02 	. 
	and c			;a5af	a1 	. 
	add a,b			;a5b0	80 	. 
	inc b			;a5b1	04 	. 
	and a			;a5b2	a7 	. 
	ld (bc),a			;a5b3	02 	. 
	and (hl)			;a5b4	a6 	. 
	add a,b			;a5b5	80 	. 
	ld b,0a0h		;a5b6	06 a0 	. . 
	ld (bc),a			;a5b8	02 	. 
	sbc a,a			;a5b9	9f 	. 
	ld bc,l80a0h		;a5ba	01 a0 80 	. . . 
	ld (bc),a			;a5bd	02 	. 
	and h			;a5be	a4 	. 
	and e			;a5bf	a3 	. 
	add a,b			;a5c0	80 	. 
	and d			;a5c1	a2 	. 
	and c			;a5c2	a1 	. 
	add a,b			;a5c3	80 	. 
	and a			;a5c4	a7 	. 
	and (hl)			;a5c5	a6 	. 
	ex af,af'			;a5c6	08 	. 
	add a,b			;a5c7	80 	. 
	inc b			;a5c8	04 	. 
	call pe,00200h		;a5c9	ec 00 02 	. . . 
	and d			;a5cc	a2 	. 
	and l			;a5cd	a5 	. 
la5ceh:
	sbc a,a			;a5ce	9f 	. 
	ex af,af'			;a5cf	08 	. 
	and d			;a5d0	a2 	. 
	and c			;a5d1	a1 	. 
	sbc a,(hl)			;a5d2	9e 	. 
	sbc a,a			;a5d3	9f 	. 
	djnz $-126		;a5d4	10 80 	. . 
	djnz $-95		;a5d6	10 9f 	. . 
la5d8h:
	ex af,af'			;a5d8	08 	. 
	and d			;a5d9	a2 	. 
	and c			;a5da	a1 	. 
	and h			;a5db	a4 	. 
	and e			;a5dc	a3 	. 
	djnz $-126		;a5dd	10 80 	. . 
	djnz la586h		;a5df	10 a5 	. . 
	ex af,af'			;a5e1	08 	. 
	xor b			;a5e2	a8 	. 
	and a			;a5e3	a7 	. 
	and l			;a5e4	a5 	. 
	and l			;a5e5	a5 	. 
	djnz la568h		;a5e6	10 80 	. . 
	djnz la591h		;a5e8	10 a7 	. . 
	ex af,af'			;a5ea	08 	. 
	xor e			;a5eb	ab 	. 
	xor d			;a5ec	aa 	. 
	and a			;a5ed	a7 	. 
	xor d			;a5ee	aa 	. 
la5efh:
	djnz $-126		;a5ef	10 80 	. . 
	djnz la5d8h		;a5f1	10 e5 	. . 
	and d			;a5f3	a2 	. 
	and l			;a5f4	a5 	. 
	call po,sub_8808h		;a5f5	e4 08 88 	. . . 
	ld (bc),a			;a5f8	02 	. 
	add a,a			;a5f9	87 	. 
	ld bc,08088h		;a5fa	01 88 80 	. . . 
	ld (bc),a			;a5fd	02 	. 
	adc a,h			;a5fe	8c 	. 
	adc a,e			;a5ff	8b 	. 
	add a,b			;a600	80 	. 
	inc b			;a601	04 	. 
	adc a,d			;a602	8a 	. 
	ld (bc),a			;a603	02 	. 
	adc a,c			;a604	89 	. 
sub_a605h:
	add a,b			;a605	80 	. 
	inc b			;a606	04 	. 
	adc a,a			;a607	8f 	. 
	ld (bc),a			;a608	02 	. 
	adc a,(hl)			;a609	8e 	. 
	add a,b			;a60a	80 	. 
	ld b,088h		;a60b	06 88 	. . 
	ld (bc),a			;a60d	02 	. 
	add a,a			;a60e	87 	. 
la60fh:
	ld bc,08088h		;a60f	01 88 80 	. . . 
	ld (bc),a			;a612	02 	. 
	adc a,h			;a613	8c 	. 
	adc a,e			;a614	8b 	. 
	add a,b			;a615	80 	. 
	adc a,d			;a616	8a 	. 
	adc a,c			;a617	89 	. 
	add a,b			;a618	80 	. 
	adc a,a			;a619	8f 	. 
	adc a,(hl)			;a61a	8e 	. 
	ex af,af'			;a61b	08 	. 
	add a,b			;a61c	80 	. 
	inc b			;a61d	04 	. 
	call pe,00200h		;a61e	ec 00 02 	. . . 
	push af			;a621	f5 	. 
	and l			;a622	a5 	. 
	call po,sub_8a03h		;a623	e4 03 8a 	. . . 
	ld (bc),a			;a626	02 	. 
	ld (bc),a			;a627	02 	. 
	add a,b			;a628	80 	. 
	ld b,087h		;a629	06 87 	. . 
	ld (bc),a			;a62b	02 	. 
	ld (bc),a			;a62c	02 	. 
	ld (bc),a			;a62d	02 	. 
	add a,b			;a62e	80 	. 
	ex af,af'			;a62f	08 	. 
	call po,l8f00h		;a630	e4 00 8f 	. . . 
	ld b,080h		;a633	06 80 	. . 
	ld (bc),a			;a635	02 	. 
	call po,sub_8a03h		;a636	e4 03 8a 	. . . 
	ld (bc),a			;a639	02 	. 
	ld (bc),a			;a63a	02 	. 
	add a,b			;a63b	80 	. 
	ld b,087h		;a63c	06 87 	. . 
	ld (bc),a			;a63e	02 	. 
	ld (bc),a			;a63f	02 	. 
	ld (bc),a			;a640	02 	. 
	add a,b			;a641	80 	. 
	djnz la5ceh		;a642	10 8a 	. . 
	ld (bc),a			;a644	02 	. 
	ld (bc),a			;a645	02 	. 
	add a,b			;a646	80 	. 
	ld b,087h		;a647	06 87 	. . 
	ld (bc),a			;a649	02 	. 
	ld (bc),a			;a64a	02 	. 
	ld (bc),a			;a64b	02 	. 
	add a,b			;a64c	80 	. 
	ex af,af'			;a64d	08 	. 
	call po,l8f00h		;a64e	e4 00 8f 	. . . 
	ld b,080h		;a651	06 80 	. . 
	ld (bc),a			;a653	02 	. 
	call po,sub_8a03h		;a654	e4 03 8a 	. . . 
	ld (bc),a			;a657	02 	. 
	ld (bc),a			;a658	02 	. 
	add a,b			;a659	80 	. 
	ld b,087h		;a65a	06 87 	. . 
	ld (bc),a			;a65c	02 	. 
	ld (bc),a			;a65d	02 	. 
	ld (bc),a			;a65e	02 	. 
	add a,b			;a65f	80 	. 
	djnz la5efh		;a660	10 8d 	. . 
	ld (bc),a			;a662	02 	. 
	ld (bc),a			;a663	02 	. 
	add a,b			;a664	80 	. 
	ld b,089h		;a665	06 89 	. . 
	ld (bc),a			;a667	02 	. 
	adc a,d			;a668	8a 	. 
	adc a,e			;a669	8b 	. 
	add a,b			;a66a	80 	. 
	ex af,af'			;a66b	08 	. 
	call po,09100h		;a66c	e4 00 91 	. . . 
	ld b,080h		;a66f	06 80 	. . 
	ld (bc),a			;a671	02 	. 
	call po,sub_8d03h		;a672	e4 03 8d 	. . . 
	ld (bc),a			;a675	02 	. 
	ld (bc),a			;a676	02 	. 
	add a,b			;a677	80 	. 
	ld b,089h		;a678	06 89 	. . 
	ld (bc),a			;a67a	02 	. 
	adc a,d			;a67b	8a 	. 
	adc a,e			;a67c	8b 	. 
	add a,b			;a67d	80 	. 
	djnz la60fh		;a67e	10 8f 	. . 
	ld (bc),a			;a680	02 	. 
	ld (bc),a			;a681	02 	. 
	add a,b			;a682	80 	. 
la683h:
	ld b,08bh		;a683	06 8b 	. . 
	ld (bc),a			;a685	02 	. 
	adc a,h			;a686	8c 	. 
	adc a,l			;a687	8d 	. 
	add a,b			;a688	80 	. 
	ex af,af'			;a689	08 	. 
	call po,09200h		;a68a	e4 00 92 	. . . 
	ld b,080h		;a68d	06 80 	. . 
	ld (bc),a			;a68f	02 	. 
	call po,l8f03h		;a690	e4 03 8f 	. . . 
	ld (bc),a			;a693	02 	. 
	ld (bc),a			;a694	02 	. 
	add a,b			;a695	80 	. 
	ld b,08bh		;a696	06 8b 	. . 
	ld (bc),a			;a698	02 	. 
	adc a,h			;a699	8c 	. 
	adc a,l			;a69a	8d 	. 
	add a,b			;a69b	80 	. 
	djnz la683h		;a69c	10 e5 	. . 
	push af			;a69e	f5 	. 
	and l			;a69f	a5 	. 
	sbc a,l			;a6a0	9d 	. 
	ld (bc),a			;a6a1	02 	. 
	sbc a,h			;a6a2	9c 	. 
	ld bc,0809dh		;a6a3	01 9d 80 	. . . 
	ld (bc),a			;a6a6	02 	. 
	and b			;a6a7	a0 	. 
	sbc a,a			;a6a8	9f 	. 
	add a,b			;a6a9	80 	. 
	inc b			;a6aa	04 	. 
	sbc a,e			;a6ab	9b 	. 
la6ach:
	ld (bc),a			;a6ac	02 	. 
	sbc a,c			;a6ad	99 	. 
	add a,b			;a6ae	80 	. 
	inc b			;a6af	04 	. 
	and d			;a6b0	a2 	. 
	ld (bc),a			;a6b1	02 	. 
	and c			;a6b2	a1 	. 
	add a,b			;a6b3	80 	. 
	ld b,09dh		;a6b4	06 9d 	. . 
	ld (bc),a			;a6b6	02 	. 
	sbc a,h			;a6b7	9c 	. 
	ld bc,0809dh		;a6b8	01 9d 80 	. . . 
	ld (bc),a			;a6bb	02 	. 
	and b			;a6bc	a0 	. 
	sbc a,a			;a6bd	9f 	. 
	add a,b			;a6be	80 	. 
	sbc a,e			;a6bf	9b 	. 
	sbc a,c			;a6c0	99 	. 
	add a,b			;a6c1	80 	. 
	and d			;a6c2	a2 	. 
	and c			;a6c3	a1 	. 
	ex af,af'			;a6c4	08 	. 
	add a,b			;a6c5	80 	. 
	inc b			;a6c6	04 	. 
	call pe,00200h		;a6c7	ec 00 02 	. . . 
	and b			;a6ca	a0 	. 
	and (hl)			;a6cb	a6 	. 
la6cch:
	sbc a,l			;a6cc	9d 	. 
	ld (bc),a			;a6cd	02 	. 
	ld (bc),a			;a6ce	02 	. 
	add a,b			;a6cf	80 	. 
	sbc a,e			;a6d0	9b 	. 
	sbc a,d			;a6d1	9a 	. 
	sbc a,e			;a6d2	9b 	. 
	ld bc,l9f9dh		;a6d3	01 9d 9f 	. . . 
	ld (bc),a			;a6d6	02 	. 
	and b			;a6d7	a0 	. 
	ld bc,la0a2h		;a6d8	01 a2 a0 	. . . 
	ld (bc),a			;a6db	02 	. 
	sbc a,a			;a6dc	9f 	. 
	add a,b			;a6dd	80 	. 
	inc c			;a6de	0c 	. 
	sbc a,l			;a6df	9d 	. 
	ld (bc),a			;a6e0	02 	. 
	ld (bc),a			;a6e1	02 	. 
	add a,b			;a6e2	80 	. 
	inc b			;a6e3	04 	. 
	sbc a,e			;a6e4	9b 	. 
	ld (bc),a			;a6e5	02 	. 
	sbc a,d			;a6e6	9a 	. 
	sbc a,e			;a6e7	9b 	. 
	sbc a,l			;a6e8	9d 	. 
	inc b			;a6e9	04 	. 
	sbc a,a			;a6ea	9f 	. 
	ld (bc),a			;a6eb	02 	. 
	and d			;a6ec	a2 	. 
	add a,b			;a6ed	80 	. 
	ld a,(bc)			;a6ee	0a 	. 
	sbc a,l			;a6ef	9d 	. 
	ld (bc),a			;a6f0	02 	. 
	ld (bc),a			;a6f1	02 	. 
	add a,b			;a6f2	80 	. 
	inc b			;a6f3	04 	. 
	sbc a,e			;a6f4	9b 	. 
	ld (bc),a			;a6f5	02 	. 
	sbc a,d			;a6f6	9a 	. 
	sbc a,e			;a6f7	9b 	. 
	sbc a,l			;a6f8	9d 	. 
	sbc a,a			;a6f9	9f 	. 
	and b			;a6fa	a0 	. 
	and d			;a6fb	a2 	. 
	add a,b			;a6fc	80 	. 
	inc b			;a6fd	04 	. 
	and e			;a6fe	a3 	. 
	ld (bc),a			;a6ff	02 	. 
	and d			;a700	a2 	. 
	and b			;a701	a0 	. 
	and d			;a702	a2 	. 
	ld (bc),a			;a703	02 	. 
sub_a704h:
	and b			;a704	a0 	. 
sub_a705h:
	ld bc,09b9fh		;a705	01 9f 9b 	. . . 
	inc b			;a708	04 	. 
	add a,b			;a709	80 	. 
	jr la6ach		;a70a	18 a0 	. . 
	ld (bc),a			;a70c	02 	. 
	ld (bc),a			;a70d	02 	. 
	add a,b			;a70e	80 	. 
	ld b,09fh		;a70f	06 9f 	. . 
	ld (bc),a			;a711	02 	. 
	and b			;a712	a0 	. 
	and d			;a713	a2 	. 
	and e			;a714	a3 	. 
	and d			;a715	a2 	. 
	and b			;a716	a0 	. 
	add a,b			;a717	80 	. 
	inc b			;a718	04 	. 
	and b			;a719	a0 	. 
	ld (bc),a			;a71a	02 	. 
	sbc a,l			;a71b	9d 	. 
	sbc a,e			;a71c	9b 	. 
	sbc a,d			;a71d	9a 	. 
	ld (bc),a			;a71e	02 	. 
	sbc a,e			;a71f	9b 	. 
	sbc a,l			;a720	9d 	. 
	add a,b			;a721	80 	. 
	inc b			;a722	04 	. 
	and b			;a723	a0 	. 
	ld (bc),a			;a724	02 	. 
	sbc a,l			;a725	9d 	. 
	sbc a,e			;a726	9b 	. 
	add a,b			;a727	80 	. 
	djnz la6cch		;a728	10 a2 	. . 
	ld (bc),a			;a72a	02 	. 
	ld (bc),a			;a72b	02 	. 
	add a,b			;a72c	80 	. 
	ld b,0a6h		;a72d	06 a6 	. . 
	ld (bc),a			;a72f	02 	. 
	and e			;a730	a3 	. 
	and d			;a731	a2 	. 
	and e			;a732	a3 	. 
	ld bc,la0a2h		;a733	01 a2 a0 	. . . 
	inc b			;a736	04 	. 
	add a,b			;a737	80 	. 
	ld a,(bc)			;a738	0a 	. 
	and d			;a739	a2 	. 
	ld (bc),a			;a73a	02 	. 
	ld (bc),a			;a73b	02 	. 
	add a,b			;a73c	80 	. 
	ld b,0a5h		;a73d	06 a5 	. . 
	ld (bc),a			;a73f	02 	. 
	and e			;a740	a3 	. 
	and d			;a741	a2 	. 
	and e			;a742	a3 	. 
	ld (bc),a			;a743	02 	. 
	and b			;a744	a0 	. 
	ld bc,la0a2h		;a745	01 a2 a0 	. . . 
	ld (bc),a			;a748	02 	. 
	and d			;a749	a2 	. 
	add a,b			;a74a	80 	. 
	ex af,af'			;a74b	08 	. 
	push hl			;a74c	e5 	. 
	and b			;a74d	a0 	. 
	and (hl)			;a74e	a6 	. 
	ex (sp),hl			;a74f	e3 	. 
	inc b			;a750	04 	. 
	jp pe,0a279h		;a751	ea 79 a2 	. y . 
	push hl			;a754	e5 	. 
	ld d,c			;a755	51 	Q 
	and a			;a756	a7 	. 
	inc b			;a757	04 	. 
	add a,b			;a758	80 	. 
	add a,b			;a759	80 	. 
	inc b			;a75a	04 	. 
	ld a,h			;a75b	7c 	| 
	and a			;a75c	a7 	. 
	inc bc			;a75d	03 	. 
	ld bc,00b04h		;a75e	01 04 0b 	. . . 
	add a,b			;a761	80 	. 
	and b			;a762	a0 	. 
	inc b			;a763	04 	. 
	call po,003a7h		;a764	e4 a7 03 	. . . 
	nop			;a767	00 	. 
	inc bc			;a768	03 	. 
	ld a,(bc)			;a769	0a 	. 
	add a,b			;a76a	80 	. 
	ret nz			;a76b	c0 	. 
	inc b			;a76c	04 	. 
	scf			;a76d	37 	7 
	xor b			;a76e	a8 	. 
	inc bc			;a76f	03 	. 
	ld bc,00b04h		;a770	01 04 0b 	. . . 
	add a,b			;a773	80 	. 
	ret po			;a774	e0 	. 
	inc b			;a775	04 	. 
	and e			;a776	a3 	. 
	xor b			;a777	a8 	. 
	nop			;a778	00 	. 
	nop			;a779	00 	. 
	nop			;a77a	00 	. 
	nop			;a77b	00 	. 
	jp pe,la7b3h		;a77c	ea b3 a7 	. . . 
	and c			;a77f	a1 	. 
	inc b			;a780	04 	. 
	inc b			;a781	04 	. 
	sbc a,l			;a782	9d 	. 
	ex af,af'			;a783	08 	. 
	jp pe,la7b3h		;a784	ea b3 a7 	. . . 
	and c			;a787	a1 	. 
	inc b			;a788	04 	. 
	sbc a,a			;a789	9f 	. 
	sbc a,l			;a78a	9d 	. 
	ex af,af'			;a78b	08 	. 
	jp pe,la7cfh		;a78c	ea cf a7 	. . . 
	sbc a,a			;a78f	9f 	. 
	ld (bc),a			;a790	02 	. 
	inc b			;a791	04 	. 
	sbc a,l			;a792	9d 	. 
	ld (bc),a			;a793	02 	. 
	sbc a,a			;a794	9f 	. 
	sbc a,a			;a795	9f 	. 
	and c			;a796	a1 	. 
	sbc a,a			;a797	9f 	. 
	sbc a,l			;a798	9d 	. 
	inc b			;a799	04 	. 
	sbc a,a			;a79a	9f 	. 
	and c			;a79b	a1 	. 
	ex af,af'			;a79c	08 	. 
	jp pe,la7cfh		;a79d	ea cf a7 	. . . 
	sbc a,a			;a7a0	9f 	. 
	ld (bc),a			;a7a1	02 	. 
	inc b			;a7a2	04 	. 
	sbc a,l			;a7a3	9d 	. 
	ld (bc),a			;a7a4	02 	. 
	sbc a,a			;a7a5	9f 	. 
	inc b			;a7a6	04 	. 
	and c			;a7a7	a1 	. 
	and d			;a7a8	a2 	. 
	ld (bc),a			;a7a9	02 	. 
	add a,b			;a7aa	80 	. 
	sbc a,l			;a7ab	9d 	. 
	add a,b			;a7ac	80 	. 
	and d			;a7ad	a2 	. 
	inc b			;a7ae	04 	. 
	add a,b			;a7af	80 	. 
	push hl			;a7b0	e5 	. 
	ld a,h			;a7b1	7c 	| 
	and a			;a7b2	a7 	. 
la7b3h:
	and d			;a7b3	a2 	. 
	ld (bc),a			;a7b4	02 	. 
	sbc a,l			;a7b5	9d 	. 
	sbc a,l			;a7b6	9d 	. 
	sbc a,l			;a7b7	9d 	. 
	sbc a,l			;a7b8	9d 	. 
	ld b,09dh		;a7b9	06 9d 	. . 
	ld (bc),a			;a7bb	02 	. 
	sbc a,a			;a7bc	9f 	. 
	ld (bc),a			;a7bd	02 	. 
	sbc a,e			;a7be	9b 	. 
	inc b			;a7bf	04 	. 
	sbc a,a			;a7c0	9f 	. 
	ld (bc),a			;a7c1	02 	. 
	sbc a,l			;a7c2	9d 	. 
	inc b			;a7c3	04 	. 
	sbc a,d			;a7c4	9a 	. 
	sbc a,e			;a7c5	9b 	. 
	ld (bc),a			;a7c6	02 	. 
	sbc a,b			;a7c7	98 	. 
	sbc a,b			;a7c8	98 	. 
	sbc a,b			;a7c9	98 	. 
	sbc a,b			;a7ca	98 	. 
	ld b,098h		;a7cb	06 98 	. . 
	ld (bc),a			;a7cd	02 	. 
	ex de,hl			;a7ce	eb 	. 
la7cfh:
	and d			;a7cf	a2 	. 
	ld (bc),a			;a7d0	02 	. 
	inc b			;a7d1	04 	. 
	and c			;a7d2	a1 	. 
	ld (bc),a			;a7d3	02 	. 
	and d			;a7d4	a2 	. 
	and d			;a7d5	a2 	. 
	ld bc,la401h		;a7d6	01 01 a4 	. . . 
	ld (bc),a			;a7d9	02 	. 
	and d			;a7da	a2 	. 
	and c			;a7db	a1 	. 
	sbc a,l			;a7dc	9d 	. 
	sbc a,l			;a7dd	9d 	. 
	sbc a,l			;a7de	9d 	. 
	sbc a,l			;a7df	9d 	. 
	ld b,080h		;a7e0	06 80 	. . 
	ld (bc),a			;a7e2	02 	. 
	ex de,hl			;a7e3	eb 	. 
	jp pe,0a829h		;a7e4	ea 29 a8 	. ) . 
	adc a,c			;a7e7	89 	. 
	adc a,c			;a7e8	89 	. 
	add a,l			;a7e9	85 	. 
	add a,l			;a7ea	85 	. 
	jp pe,0a829h		;a7eb	ea 29 a8 	. ) . 
	adc a,c			;a7ee	89 	. 
	adc a,c			;a7ef	89 	. 
	ld (bc),a			;a7f0	02 	. 
	add a,a			;a7f1	87 	. 
	add a,l			;a7f2	85 	. 
	inc b			;a7f3	04 	. 
	inc b			;a7f4	04 	. 
	adc a,d			;a7f5	8a 	. 
	adc a,d			;a7f6	8a 	. 
	adc a,d			;a7f7	8a 	. 
	adc a,d			;a7f8	8a 	. 
	adc a,d			;a7f9	8a 	. 
	ld (bc),a			;a7fa	02 	. 
	add a,l			;a7fb	85 	. 
	add a,l			;a7fc	85 	. 
la7fdh:
	add a,l			;a7fd	85 	. 
	add a,l			;a7fe	85 	. 
	inc b			;a7ff	04 	. 
	inc b			;a800	04 	. 
la801h:
	add a,a			;a801	87 	. 
la802h:
	add a,a			;a802	87 	. 
	add a,a			;a803	87 	. 
	add a,a			;a804	87 	. 
	add a,l			;a805	85 	. 
	add a,a			;a806	87 	. 
	adc a,c			;a807	89 	. 
	add a,l			;a808	85 	. 
	adc a,d			;a809	8a 	. 
	adc a,d			;a80a	8a 	. 
	adc a,d			;a80b	8a 	. 
	adc a,d			;a80c	8a 	. 
	adc a,d			;a80d	8a 	. 
	ld (bc),a			;a80e	02 	. 
	add a,l			;a80f	85 	. 
	add a,l			;a810	85 	. 
	add a,l			;a811	85 	. 
	add a,l			;a812	85 	. 
	ld b,080h		;a813	06 80 	. . 
	ld (bc),a			;a815	02 	. 
	add a,e			;a816	83 	. 
	ld (bc),a			;a817	02 	. 
	inc b			;a818	04 	. 
	ld (bc),a			;a819	02 	. 
	add a,l			;a81a	85 	. 
	ld (bc),a			;a81b	02 	. 
	ld (bc),a			;a81c	02 	. 
	add a,a			;a81d	87 	. 
	adc a,c			;a81e	89 	. 
	adc a,d			;a81f	8a 	. 
	inc b			;a820	04 	. 
	add a,l			;a821	85 	. 
	adc a,d			;a822	8a 	. 
	ld b,080h		;a823	06 80 	. . 
	ld (bc),a			;a825	02 	. 
	push hl			;a826	e5 	. 
	call po,sub_8aa7h		;a827	e4 a7 8a 	. . . 
	inc b			;a82a	04 	. 
	inc b			;a82b	04 	. 
la82ch:
	inc b			;a82c	04 	. 
	inc b			;a82d	04 	. 
	add a,e			;a82e	83 	. 
	add a,e			;a82f	83 	. 
	adc a,d			;a830	8a 	. 
	adc a,d			;a831	8a 	. 
	add a,l			;a832	85 	. 
	add a,l			;a833	85 	. 
	add a,l			;a834	85 	. 
	add a,a			;a835	87 	. 
	ex de,hl			;a836	eb 	. 
	jp pe,la873h		;a837	ea 73 a8 	. s . 
	sbc a,l			;a83a	9d 	. 
	inc b			;a83b	04 	. 
	sbc a,l			;a83c	9d 	. 
	sbc a,d			;a83d	9a 	. 
	ld b,080h		;a83e	06 80 	. . 
	ld (bc),a			;a840	02 	. 
	jp pe,la873h		;a841	ea 73 a8 	. s . 
	sbc a,l			;a844	9d 	. 
	inc b			;a845	04 	. 
	sbc a,e			;a846	9b 	. 
	sbc a,d			;a847	9a 	. 
	ld b,080h		;a848	06 80 	. . 
	ld (bc),a			;a84a	02 	. 
	jp pe,la88eh		;a84b	ea 8e a8 	. . . 
	sbc a,e			;a84e	9b 	. 
	ld (bc),a			;a84f	02 	. 
	inc b			;a850	04 	. 
	sbc a,d			;a851	9a 	. 
	ld (bc),a			;a852	02 	. 
	sbc a,e			;a853	9b 	. 
	sbc a,e			;a854	9b 	. 
	sbc a,l			;a855	9d 	. 
	sbc a,e			;a856	9b 	. 
	sbc a,d			;a857	9a 	. 
	inc b			;a858	04 	. 
	sbc a,e			;a859	9b 	. 
	sbc a,l			;a85a	9d 	. 
	ld b,080h		;a85b	06 80 	. . 
	ld (bc),a			;a85d	02 	. 
	jp pe,la88eh		;a85e	ea 8e a8 	. . . 
	sbc a,b			;a861	98 	. 
	ld (bc),a			;a862	02 	. 
	inc b			;a863	04 	. 
	ld (bc),a			;a864	02 	. 
	sbc a,d			;a865	9a 	. 
	inc b			;a866	04 	. 
	sbc a,e			;a867	9b 	. 
	sbc a,l			;a868	9d 	. 
	ld (bc),a			;a869	02 	. 
	add a,b			;a86a	80 	. 
	sbc a,b			;a86b	98 	. 
	add a,b			;a86c	80 	. 
	sbc a,l			;a86d	9d 	. 
	inc b			;a86e	04 	. 
	add a,b			;a86f	80 	. 
	push hl			;a870	e5 	. 
	scf			;a871	37 	7 
	xor b			;a872	a8 	. 
la873h:
	sbc a,a			;a873	9f 	. 
	ld (bc),a			;a874	02 	. 
	sbc a,d			;a875	9a 	. 
	sbc a,d			;a876	9a 	. 
	sbc a,d			;a877	9a 	. 
	sbc a,d			;a878	9a 	. 
	ld b,09ah		;a879	06 9a 	. . 
	ld (bc),a			;a87b	02 	. 
	sbc a,e			;a87c	9b 	. 
	ld (bc),a			;a87d	02 	. 
	sbc a,b			;a87e	98 	. 
	inc b			;a87f	04 	. 
	sbc a,e			;a880	9b 	. 
	ld (bc),a			;a881	02 	. 
	sbc a,d			;a882	9a 	. 
	inc b			;a883	04 	. 
	sub (hl)			;a884	96 	. 
	sbc a,b			;a885	98 	. 
	ld (bc),a			;a886	02 	. 
	sub l			;a887	95 	. 
	ld (bc),a			;a888	02 	. 
	ld (bc),a			;a889	02 	. 
	ld (bc),a			;a88a	02 	. 
	ld b,002h		;a88b	06 02 	. . 
	ex de,hl			;a88d	eb 	. 
la88eh:
	sbc a,l			;a88e	9d 	. 
	ld (bc),a			;a88f	02 	. 
	inc b			;a890	04 	. 
	sbc a,e			;a891	9b 	. 
	ld (bc),a			;a892	02 	. 
	sbc a,l			;a893	9d 	. 
	sbc a,l			;a894	9d 	. 
	ld bc,l9f01h		;a895	01 01 9f 	. . . 
	ld (bc),a			;a898	02 	. 
	sbc a,l			;a899	9d 	. 
	sbc a,e			;a89a	9b 	. 
	sbc a,d			;a89b	9a 	. 
	sbc a,d			;a89c	9a 	. 
	sbc a,d			;a89d	9a 	. 
	sbc a,d			;a89e	9a 	. 
	ld b,080h		;a89f	06 80 	. . 
	ld (bc),a			;a8a1	02 	. 
	ex de,hl			;a8a2	eb 	. 
	ex (sp),hl			;a8a3	e3 	. 
	inc b			;a8a4	04 	. 
	jp pe,la365h		;a8a5	ea 65 a3 	. e . 
	jp pe,la382h		;a8a8	ea 82 a3 	. . . 
	jp pe,la382h		;a8ab	ea 82 a3 	. . . 
	jp pe,la39eh		;a8ae	ea 9e a3 	. . . 
	jp pe,la365h		;a8b1	ea 65 a3 	. e . 
	jp pe,la382h		;a8b4	ea 82 a3 	. . . 
	jp pe,la382h		;a8b7	ea 82 a3 	. . . 
	jp pe,la39eh		;a8ba	ea 9e a3 	. . . 
	jp pe,0a279h		;a8bd	ea 79 a2 	. y . 
	jp pe,la3adh		;a8c0	ea ad a3 	. . . 
	jp pe,0a279h		;a8c3	ea 79 a2 	. y . 
	call po,0e102h		;a8c6	e4 02 e1 	. . . 
	dec bc			;a8c9	0b 	. 
	inc b			;a8ca	04 	. 
	inc b			;a8cb	04 	. 
	ex af,af'			;a8cc	08 	. 
	jp pe,0a279h		;a8cd	ea 79 a2 	. y . 
	jp pe,la3adh		;a8d0	ea ad a3 	. . . 
	jp pe,0a279h		;a8d3	ea 79 a2 	. y . 
	call po,0e102h		;a8d6	e4 02 e1 	. . . 
	dec bc			;a8d9	0b 	. 
	inc b			;a8da	04 	. 
	inc b			;a8db	04 	. 
	ex af,af'			;a8dc	08 	. 
	push hl			;a8dd	e5 	. 
	and l			;a8de	a5 	. 
	xor b			;a8df	a8 	. 
	inc bc			;a8e0	03 	. 
	add a,b			;a8e1	80 	. 
	add a,b			;a8e2	80 	. 
	inc b			;a8e3	04 	. 
	dec b			;a8e4	05 	. 
	xor c			;a8e5	a9 	. 
	inc bc			;a8e6	03 	. 
	ld bc,00b04h		;a8e7	01 04 0b 	. . . 
	add a,b			;a8ea	80 	. 
	and b			;a8eb	a0 	. 
	inc b			;a8ec	04 	. 
	ld d,0a9h		;a8ed	16 a9 	. . 
	inc bc			;a8ef	03 	. 
	ld bc,00a04h		;a8f0	01 04 0a 	. . . 
	add a,b			;a8f3	80 	. 
	ret nz			;a8f4	c0 	. 
	inc b			;a8f5	04 	. 
	daa			;a8f6	27 	' 
	xor c			;a8f7	a9 	. 
	inc bc			;a8f8	03 	. 
	ld bc,00b04h		;a8f9	01 04 0b 	. . . 
	add a,b			;a8fc	80 	. 
	ret po			;a8fd	e0 	. 
	inc b			;a8fe	04 	. 
	scf			;a8ff	37 	7 
	xor c			;a900	a9 	. 
	inc bc			;a901	03 	. 
	ld bc,00d01h		;a902	01 01 0d 	. . . 
	sbc a,a			;a905	9f 	. 
	ld (bc),a			;a906	02 	. 
	inc b			;a907	04 	. 
	sbc a,l			;a908	9d 	. 
	ld (bc),a			;a909	02 	. 
	sbc a,a			;a90a	9f 	. 
	inc b			;a90b	04 	. 
	and c			;a90c	a1 	. 
	and d			;a90d	a2 	. 
	ld (bc),a			;a90e	02 	. 
	add a,b			;a90f	80 	. 
	sbc a,l			;a910	9d 	. 
	add a,b			;a911	80 	. 
	and d			;a912	a2 	. 
	inc b			;a913	04 	. 
	add a,b			;a914	80 	. 
	jp po,00283h		;a915	e2 83 02 	. . . 
	inc b			;a918	04 	. 
	ld (bc),a			;a919	02 	. 
	add a,l			;a91a	85 	. 
	ld (bc),a			;a91b	02 	. 
	ld (bc),a			;a91c	02 	. 
	add a,a			;a91d	87 	. 
	adc a,c			;a91e	89 	. 
	adc a,d			;a91f	8a 	. 
	inc b			;a920	04 	. 
	add a,l			;a921	85 	. 
	adc a,d			;a922	8a 	. 
	ld b,080h		;a923	06 80 	. . 
	ld (bc),a			;a925	02 	. 
	jp po,00298h		;a926	e2 98 02 	. . . 
	inc b			;a929	04 	. 
	ld (bc),a			;a92a	02 	. 
	sbc a,d			;a92b	9a 	. 
	inc b			;a92c	04 	. 
	sbc a,e			;a92d	9b 	. 
	sbc a,l			;a92e	9d 	. 
	ld (bc),a			;a92f	02 	. 
	add a,b			;a930	80 	. 
	sbc a,b			;a931	98 	. 
	add a,b			;a932	80 	. 
	sbc a,l			;a933	9d 	. 
	inc b			;a934	04 	. 
	add a,b			;a935	80 	. 
	jp po,l8004h		;a936	e2 04 80 	. . . 
	add a,b			;a939	80 	. 
	inc b			;a93a	04 	. 
	ld e,h			;a93b	5c 	\ 
	xor c			;a93c	a9 	. 
	inc bc			;a93d	03 	. 
	ld bc,00c07h		;a93e	01 07 0c 	. . . 
	add a,b			;a941	80 	. 
	and b			;a942	a0 	. 
	inc b			;a943	04 	. 
	call z,003a9h		;a944	cc a9 03 	. . . 
	nop			;a947	00 	. 
	inc bc			;a948	03 	. 
	dec bc			;a949	0b 	. 
	add a,b			;a94a	80 	. 
	ret nz			;a94b	c0 	. 
	inc b			;a94c	04 	. 
	inc (hl)			;a94d	34 	4 
	xor d			;a94e	aa 	. 
	inc bc			;a94f	03 	. 
	nop			;a950	00 	. 
	rlca			;a951	07 	. 
	inc c			;a952	0c 	. 
	add a,b			;a953	80 	. 
	ret po			;a954	e0 	. 
	inc b			;a955	04 	. 
	and c			;a956	a1 	. 
	xor d			;a957	aa 	. 
	nop			;a958	00 	. 
	nop			;a959	00 	. 
	nop			;a95a	00 	. 
	nop			;a95b	00 	. 
	add a,b			;a95c	80 	. 
	inc bc			;a95d	03 	. 
	and d			;a95e	a2 	. 
	ld bc,0039dh		;a95f	01 9d 03 	. . . 
	and b			;a962	a0 	. 
	ld bc,003a2h		;a963	01 a2 03 	. . . 
	ld bc,0039dh		;a966	01 9d 03 	. . . 
	and b			;a969	a0 	. 
	ld bc,00380h		;a96a	01 80 03 	. . . 
	and l			;a96d	a5 	. 
	ld bc,003a2h		;a96e	01 a2 03 	. . . 
	and b			;a971	a0 	. 
	ld bc,002a2h		;a972	01 a2 02 	. . . 
	add a,b			;a975	80 	. 
	and d			;a976	a2 	. 
	add a,b			;a977	80 	. 
	add a,b			;a978	80 	. 
	inc bc			;a979	03 	. 
	and b			;a97a	a0 	. 
	ld bc,0039bh		;a97b	01 9b 03 	. . . 
	sbc a,l			;a97e	9d 	. 
	ld bc,003a0h		;a97f	01 a0 03 	. . . 
	ld bc,0039bh		;a982	01 9b 03 	. . . 
	sbc a,l			;a985	9d 	. 
	ld bc,00380h		;a986	01 80 03 	. . . 
	and b			;a989	a0 	. 
	ld bc,003a2h		;a98a	01 a2 03 	. . . 
	and b			;a98d	a0 	. 
	ld bc,002a2h		;a98e	01 a2 02 	. . . 
	add a,b			;a991	80 	. 
	and b			;a992	a0 	. 
	add a,b			;a993	80 	. 
	add a,b			;a994	80 	. 
	inc bc			;a995	03 	. 
	and d			;a996	a2 	. 
	ld bc,0039dh		;a997	01 9d 03 	. . . 
	and b			;a99a	a0 	. 
	ld bc,003a2h		;a99b	01 a2 03 	. . . 
	ld bc,0039dh		;a99e	01 9d 03 	. . . 
	and b			;a9a1	a0 	. 
	ld bc,00380h		;a9a2	01 80 03 	. . . 
	and l			;a9a5	a5 	. 
	ld bc,003a2h		;a9a6	01 a2 03 	. . . 
	and b			;a9a9	a0 	. 
	ld bc,002a2h		;a9aa	01 a2 02 	. . . 
	add a,b			;a9ad	80 	. 
	and d			;a9ae	a2 	. 
	add a,b			;a9af	80 	. 
	add a,b			;a9b0	80 	. 
	inc bc			;a9b1	03 	. 
	sbc a,e			;a9b2	9b 	. 
	ld bc,0039dh		;a9b3	01 9d 03 	. . . 
	and b			;a9b6	a0 	. 
	ld bc,003a2h		;a9b7	01 a2 03 	. . . 
sub_a9bah:
	and b			;a9ba	a0 	. 
	ld bc,003a2h		;a9bb	01 a2 03 	. . . 
	and b			;a9be	a0 	. 
	ld bc,00380h		;a9bf	01 80 03 	. . . 
	and d			;a9c2	a2 	. 
	ld bc,002a5h		;a9c3	01 a5 02 	. . . 
	add a,b			;a9c6	80 	. 
	and l			;a9c7	a5 	. 
	add a,b			;a9c8	80 	. 
	ld b,0f0h		;a9c9	06 f0 	. . 
	add a,b			;a9cb	80 	. 
	add a,b			;a9cc	80 	. 
	inc bc			;a9cd	03 	. 
	adc a,d			;a9ce	8a 	. 
	ld bc,l8503h		;a9cf	01 03 85 	. . . 
	ld bc,0038ah		;a9d2	01 8a 03 	. . . 
	add a,l			;a9d5	85 	. 
	ld bc,0038ah		;a9d6	01 8a 03 	. . . 
	add a,l			;a9d9	85 	. 
	ld bc,00380h		;a9da	01 80 03 	. . . 
	adc a,d			;a9dd	8a 	. 
	ld bc,l8503h		;a9de	01 03 85 	. . . 
	ld bc,0038ah		;a9e1	01 8a 03 	. . . 
	add a,l			;a9e4	85 	. 
	ld bc,0028ah		;a9e5	01 8a 02 	. . . 
	add a,b			;a9e8	80 	. 
	add a,b			;a9e9	80 	. 
	inc bc			;a9ea	03 	. 
	adc a,b			;a9eb	88 	. 
	ld bc,l8303h		;a9ec	01 03 83 	. . . 
	ld bc,00388h		;a9ef	01 88 03 	. . . 
	add a,e			;a9f2	83 	. 
	ld bc,00388h		;a9f3	01 88 03 	. . . 
	add a,e			;a9f6	83 	. 
	ld bc,00380h		;a9f7	01 80 03 	. . . 
	adc a,b			;a9fa	88 	. 
	ld bc,l8303h		;a9fb	01 03 83 	. . . 
	ld bc,00288h		;a9fe	01 88 02 	. . . 
	add a,b			;aa01	80 	. 
	adc a,h			;aa02	8c 	. 
	adc a,b			;aa03	88 	. 
	add a,b			;aa04	80 	. 
	inc bc			;aa05	03 	. 
	adc a,d			;aa06	8a 	. 
	ld bc,l8503h		;aa07	01 03 85 	. . . 
	ld bc,0038ah		;aa0a	01 8a 03 	. . . 
	add a,l			;aa0d	85 	. 
	ld bc,0038ah		;aa0e	01 8a 03 	. . . 
	add a,l			;aa11	85 	. 
	ld bc,00380h		;aa12	01 80 03 	. . . 
	adc a,d			;aa15	8a 	. 
	ld bc,l8503h		;aa16	01 03 85 	. . . 
	ld bc,0038ah		;aa19	01 8a 03 	. . . 
	add a,l			;aa1c	85 	. 
	ld bc,0028ah		;aa1d	01 8a 02 	. . . 
	add a,b			;aa20	80 	. 
	add a,b			;aa21	80 	. 
	inc bc			;aa22	03 	. 
	add a,e			;aa23	83 	. 
	ld bc,l8002h		;aa24	01 02 80 	. . . 
	add a,l			;aa27	85 	. 
	add a,b			;aa28	80 	. 
	adc a,b			;aa29	88 	. 
	add a,l			;aa2a	85 	. 
	add a,b			;aa2b	80 	. 
	inc b			;aa2c	04 	. 
	adc a,l			;aa2d	8d 	. 
	ld (bc),a			;aa2e	02 	. 
	add a,b			;aa2f	80 	. 
	adc a,l			;aa30	8d 	. 
	add a,b			;aa31	80 	. 
	ld b,0e2h		;aa32	06 e2 	. . 
	add a,b			;aa34	80 	. 
	inc bc			;aa35	03 	. 
	sbc a,l			;aa36	9d 	. 
	ld bc,00398h		;aa37	01 98 03 	. . . 
	sbc a,e			;aa3a	9b 	. 
	ld bc,0039dh		;aa3b	01 9d 03 	. . . 
	ld bc,00398h		;aa3e	01 98 03 	. . . 
	sbc a,e			;aa41	9b 	. 
	ld bc,00380h		;aa42	01 80 03 	. . . 
	sbc a,l			;aa45	9d 	. 
	ld bc,0039bh		;aa46	01 9b 03 	. . . 
	sbc a,l			;aa49	9d 	. 
	ld bc,002a0h		;aa4a	01 a0 02 	. . . 
	add a,b			;aa4d	80 	. 
	sbc a,l			;aa4e	9d 	. 
	add a,b			;aa4f	80 	. 
	pop hl			;aa50	e1 	. 
	dec bc			;aa51	0b 	. 
	add a,b			;aa52	80 	. 
	inc bc			;aa53	03 	. 
	sub (hl)			;aa54	96 	. 
	ld bc,00391h		;aa55	01 91 03 	. . . 
	sub h			;aa58	94 	. 
	ld bc,00396h		;aa59	01 96 03 	. . . 
	ld bc,00391h		;aa5c	01 91 03 	. . . 
	sub h			;aa5f	94 	. 
	ld bc,00380h		;aa60	01 80 03 	. . . 
	sub (hl)			;aa63	96 	. 
	ld bc,0039bh		;aa64	01 9b 03 	. . . 
	sub (hl)			;aa67	96 	. 
	ld bc,0029dh		;aa68	01 9d 02 	. . . 
	add a,b			;aa6b	80 	. 
	sbc a,e			;aa6c	9b 	. 
	add a,b			;aa6d	80 	. 
	pop hl			;aa6e	e1 	. 
	dec c			;aa6f	0d 	. 
	add a,b			;aa70	80 	. 
	inc bc			;aa71	03 	. 
	sbc a,l			;aa72	9d 	. 
	ld bc,00398h		;aa73	01 98 03 	. . . 
	sbc a,e			;aa76	9b 	. 
	ld bc,0039dh		;aa77	01 9d 03 	. . . 
	ld bc,00398h		;aa7a	01 98 03 	. . . 
	sbc a,e			;aa7d	9b 	. 
	ld bc,00380h		;aa7e	01 80 03 	. . . 
	sbc a,l			;aa81	9d 	. 
	ld bc,0039bh		;aa82	01 9b 03 	. . . 
	sbc a,l			;aa85	9d 	. 
	ld bc,002a0h		;aa86	01 a0 02 	. . . 
	add a,b			;aa89	80 	. 
	sbc a,l			;aa8a	9d 	. 
	add a,b			;aa8b	80 	. 
	add a,b			;aa8c	80 	. 
	inc bc			;aa8d	03 	. 
	sub (hl)			;aa8e	96 	. 
	ld bc,00298h		;aa8f	01 98 02 	. . . 
	add a,b			;aa92	80 	. 
	ld (bc),a			;aa93	02 	. 
	sbc a,e			;aa94	9b 	. 
	add a,b			;aa95	80 	. 
	sbc a,l			;aa96	9d 	. 
	add a,b			;aa97	80 	. 
	add a,b			;aa98	80 	. 
	inc b			;aa99	04 	. 
	and b			;aa9a	a0 	. 
	ld (bc),a			;aa9b	02 	. 
	add a,b			;aa9c	80 	. 
	and b			;aa9d	a0 	. 
	add a,b			;aa9e	80 	. 
	ld b,0e2h		;aa9f	06 e2 	. . 
	ex (sp),hl			;aaa1	e3 	. 
	inc b			;aaa2	04 	. 
	jp pe,la33eh		;aaa3	ea 3e a3 	. > . 
	call pe,00300h		;aaa6	ec 00 03 	. . . 
	and e			;aaa9	a3 	. 
	xor d			;aaaa	aa 	. 
	pop hl			;aaab	e1 	. 
	add hl,bc			;aaac	09 	. 
	call po,sub_8d01h		;aaad	e4 01 8d 	. . . 
	inc bc			;aab0	03 	. 
	ld bc,00be1h		;aab1	01 e1 0b 	. . . 
	call po,00402h		;aab4	e4 02 04 	. . . 
	pop hl			;aab7	e1 	. 
	add hl,bc			;aab8	09 	. 
	call po,00301h		;aab9	e4 01 03 	. . . 
	ld bc,00be1h		;aabc	01 e1 0b 	. . . 
	call po,00302h		;aabf	e4 02 03 	. . . 
	ld bc,009e1h		;aac2	01 e1 09 	. . . 
	call po,sub_8d01h		;aac5	e4 01 8d 	. . . 
	inc bc			;aac8	03 	. 
	ld bc,00be1h		;aac9	01 e1 0b 	. . . 
	call po,00402h		;aacc	e4 02 04 	. . . 
	inc b			;aacf	04 	. 
	jp po,l8004h		;aad0	e2 04 80 	. . . 
	add a,b			;aad3	80 	. 
	ex af,af'			;aad4	08 	. 
	or 0aah		;aad5	f6 aa 	. . 
	inc bc			;aad7	03 	. 
	ld bc,00b04h		;aad8	01 04 0b 	. . . 
	add a,b			;aadb	80 	. 
	and b			;aadc	a0 	. 
	ex af,af'			;aadd	08 	. 
	ld e,l			;aade	5d 	] 
	xor e			;aadf	ab 	. 
	inc bc			;aae0	03 	. 
	nop			;aae1	00 	. 
	inc bc			;aae2	03 	. 
	ld a,(bc)			;aae3	0a 	. 
	add a,b			;aae4	80 	. 
	ret nz			;aae5	c0 	. 
	ex af,af'			;aae6	08 	. 
	rst 18h			;aae7	df 	. 
	xor e			;aae8	ab 	. 
	inc bc			;aae9	03 	. 
	ld bc,00b04h		;aaea	01 04 0b 	. . . 
	add a,b			;aaed	80 	. 
	ret po			;aaee	e0 	. 
	ex af,af'			;aaef	08 	. 
	ld b,e			;aaf0	43 	C 
	xor h			;aaf1	ac 	. 
	nop			;aaf2	00 	. 
	nop			;aaf3	00 	. 
	nop			;aaf4	00 	. 
	nop			;aaf5	00 	. 
	and b			;aaf6	a0 	. 
	ld (bc),a			;aaf7	02 	. 
	and l			;aaf8	a5 	. 
	add a,b			;aaf9	80 	. 
	and d			;aafa	a2 	. 
	and h			;aafb	a4 	. 
	and d			;aafc	a2 	. 
	and d			;aafd	a2 	. 
	and b			;aafe	a0 	. 
	and b			;aaff	a0 	. 
	and l			;ab00	a5 	. 
	add a,b			;ab01	80 	. 
sub_ab02h:
	and d			;ab02	a2 	. 
	and h			;ab03	a4 	. 
sub_ab04h:
	and d			;ab04	a2 	. 
sub_ab05h:
	and h			;ab05	a4 	. 
	and l			;ab06	a5 	. 
	and b			;ab07	a0 	. 
	and l			;ab08	a5 	. 
	add a,b			;ab09	80 	. 
	and d			;ab0a	a2 	. 
	and h			;ab0b	a4 	. 
	and d			;ab0c	a2 	. 
	and d			;ab0d	a2 	. 
	and b			;ab0e	a0 	. 
	and l			;ab0f	a5 	. 
	and a			;ab10	a7 	. 
	and l			;ab11	a5 	. 
	and a			;ab12	a7 	. 
	and h			;ab13	a4 	. 
	and h			;ab14	a4 	. 
	add a,b			;ab15	80 	. 
	and l			;ab16	a5 	. 
	sbc a,(hl)			;ab17	9e 	. 
	and a			;ab18	a7 	. 
	add a,b			;ab19	80 	. 
	and b			;ab1a	a0 	. 
	ld (bc),a			;ab1b	02 	. 
	sbc a,(hl)			;ab1c	9e 	. 
	and h			;ab1d	a4 	. 
	sbc a,l			;ab1e	9d 	. 
	and d			;ab1f	a2 	. 
	sbc a,(hl)			;ab20	9e 	. 
	and a			;ab21	a7 	. 
	sbc a,(hl)			;ab22	9e 	. 
	and l			;ab23	a5 	. 
	sbc a,e			;ab24	9b 	. 
	ld (bc),a			;ab25	02 	. 
	and h			;ab26	a4 	. 
	and h			;ab27	a4 	. 
	and d			;ab28	a2 	. 
	sbc a,l			;ab29	9d 	. 
	and l			;ab2a	a5 	. 
	add a,b			;ab2b	80 	. 
	sbc a,(hl)			;ab2c	9e 	. 
	ld (bc),a			;ab2d	02 	. 
	sbc a,l			;ab2e	9d 	. 
	and d			;ab2f	a2 	. 
	sbc a,e			;ab30	9b 	. 
	and b			;ab31	a0 	. 
	sbc a,c			;ab32	99 	. 
	and l			;ab33	a5 	. 
	sbc a,e			;ab34	9b 	. 
	and h			;ab35	a4 	. 
	sbc a,l			;ab36	9d 	. 
	and d			;ab37	a2 	. 
	and d			;ab38	a2 	. 
	and d			;ab39	a2 	. 
	sbc a,(hl)			;ab3a	9e 	. 
	and a			;ab3b	a7 	. 
	add a,b			;ab3c	80 	. 
	and b			;ab3d	a0 	. 
	sbc a,(hl)			;ab3e	9e 	. 
	and h			;ab3f	a4 	. 
	sbc a,l			;ab40	9d 	. 
	and d			;ab41	a2 	. 
	sbc a,(hl)			;ab42	9e 	. 
	and a			;ab43	a7 	. 
	sbc a,(hl)			;ab44	9e 	. 
	and l			;ab45	a5 	. 
	sbc a,e			;ab46	9b 	. 
	and h			;ab47	a4 	. 
	and l			;ab48	a5 	. 
	and h			;ab49	a4 	. 
	sbc a,c			;ab4a	99 	. 
	and l			;ab4b	a5 	. 
	sbc a,(hl)			;ab4c	9e 	. 
	and d			;ab4d	a2 	. 
	and d			;ab4e	a2 	. 
	and h			;ab4f	a4 	. 
	and b			;ab50	a0 	. 
	and d			;ab51	a2 	. 
	and l			;ab52	a5 	. 
	and a			;ab53	a7 	. 
	and l			;ab54	a5 	. 
	and a			;ab55	a7 	. 
	and h			;ab56	a4 	. 
	and a			;ab57	a7 	. 
	and a			;ab58	a7 	. 
	and a			;ab59	a7 	. 
	push hl			;ab5a	e5 	. 
	or 0aah		;ab5b	f6 aa 	. . 
	adc a,l			;ab5d	8d 	. 
	ld (bc),a			;ab5e	02 	. 
	add a,b			;ab5f	80 	. 
	ld bc,l888dh		;ab60	01 8d 88 	. . . 
	ld (bc),a			;ab63	02 	. 
	adc a,l			;ab64	8d 	. 
	call pe,00600h		;ab65	ec 00 06 	. . . 
	ld e,l			;ab68	5d 	] 
	xor e			;ab69	ab 	. 
	adc a,a			;ab6a	8f 	. 
	ld (bc),a			;ab6b	02 	. 
	add a,b			;ab6c	80 	. 
	ld bc,08a8fh		;ab6d	01 8f 8a 	. . . 
	ld (bc),a			;ab70	02 	. 
	adc a,a			;ab71	8f 	. 
	adc a,a			;ab72	8f 	. 
	ld (bc),a			;ab73	02 	. 
	add a,b			;ab74	80 	. 
	ld bc,08a8fh		;ab75	01 8f 8a 	. . . 
	ld (bc),a			;ab78	02 	. 
	adc a,d			;ab79	8a 	. 
	adc a,a			;ab7a	8f 	. 
	ld (bc),a			;ab7b	02 	. 
	add a,b			;ab7c	80 	. 
	ld bc,08a8fh		;ab7d	01 8f 8a 	. . . 
	ld (bc),a			;ab80	02 	. 
	adc a,a			;ab81	8f 	. 
	call pe,00300h		;ab82	ec 00 03 	. . . 
	ld a,d			;ab85	7a 	z 
	xor e			;ab86	ab 	. 
	adc a,a			;ab87	8f 	. 
	ld (bc),a			;ab88	02 	. 
	add a,b			;ab89	80 	. 
	ld bc,08a8fh		;ab8a	01 8f 8a 	. . . 
	ld (bc),a			;ab8d	02 	. 
	adc a,d			;ab8e	8a 	. 
	adc a,l			;ab8f	8d 	. 
	ld (bc),a			;ab90	02 	. 
	add a,b			;ab91	80 	. 
	ld bc,l888dh		;ab92	01 8d 88 	. . . 
	ld (bc),a			;ab95	02 	. 
	adc a,l			;ab96	8d 	. 
	adc a,l			;ab97	8d 	. 
	ld (bc),a			;ab98	02 	. 
	add a,b			;ab99	80 	. 
	ld bc,l888dh		;ab9a	01 8d 88 	. . . 
	ld (bc),a			;ab9d	02 	. 
	adc a,l			;ab9e	8d 	. 
	adc a,l			;ab9f	8d 	. 
	ld (bc),a			;aba0	02 	. 
	add a,b			;aba1	80 	. 
	ld bc,l888fh		;aba2	01 8f 88 	. . . 
	ld (bc),a			;aba5	02 	. 
	adc a,l			;aba6	8d 	. 
	adc a,l			;aba7	8d 	. 
	ld (bc),a			;aba8	02 	. 
	add a,b			;aba9	80 	. 
	ld bc,l888dh		;abaa	01 8d 88 	. . . 
	ld (bc),a			;abad	02 	. 
	adc a,b			;abae	88 	. 
	adc a,a			;abaf	8f 	. 
	ld (bc),a			;abb0	02 	. 
	add a,b			;abb1	80 	. 
	ld bc,08a8fh		;abb2	01 8f 8a 	. . . 
	ld (bc),a			;abb5	02 	. 
	sub c			;abb6	91 	. 
	adc a,a			;abb7	8f 	. 
	ld (bc),a			;abb8	02 	. 
	add a,b			;abb9	80 	. 
	ld bc,08a8fh		;abba	01 8f 8a 	. . . 
	ld (bc),a			;abbd	02 	. 
	adc a,d			;abbe	8a 	. 
	call pe,00200h		;abbf	ec 00 02 	. . . 
	xor a			;abc2	af 	. 
	xor e			;abc3	ab 	. 
	adc a,l			;abc4	8d 	. 
	ld (bc),a			;abc5	02 	. 
	add a,b			;abc6	80 	. 
	ld bc,l888dh		;abc7	01 8d 88 	. . . 
	ld (bc),a			;abca	02 	. 
	ld (bc),a			;abcb	02 	. 
	adc a,l			;abcc	8d 	. 
	ld (bc),a			;abcd	02 	. 
	add a,b			;abce	80 	. 
	ld bc,08f8dh		;abcf	01 8d 8f 	. . . 
	ld (bc),a			;abd2	02 	. 
	adc a,l			;abd3	8d 	. 
	sub d			;abd4	92 	. 
	add a,b			;abd5	80 	. 
	sub d			;abd6	92 	. 
	sub d			;abd7	92 	. 
	sub c			;abd8	91 	. 
	sub c			;abd9	91 	. 
	sub c			;abda	91 	. 
	sub c			;abdb	91 	. 
	push hl			;abdc	e5 	. 
	ld e,l			;abdd	5d 	] 
	xor e			;abde	ab 	. 
	sbc a,l			;abdf	9d 	. 
	ld (bc),a			;abe0	02 	. 
	add a,b			;abe1	80 	. 
	inc b			;abe2	04 	. 
	sbc a,l			;abe3	9d 	. 
	ld (bc),a			;abe4	02 	. 
	sbc a,l			;abe5	9d 	. 
	add a,b			;abe6	80 	. 
	sbc a,l			;abe7	9d 	. 
	sbc a,l			;abe8	9d 	. 
	sbc a,l			;abe9	9d 	. 
	add a,b			;abea	80 	. 
	inc b			;abeb	04 	. 
	sbc a,l			;abec	9d 	. 
	ld (bc),a			;abed	02 	. 
	sbc a,l			;abee	9d 	. 
	ex af,af'			;abef	08 	. 
	sbc a,l			;abf0	9d 	. 
	ld (bc),a			;abf1	02 	. 
	add a,b			;abf2	80 	. 
	inc b			;abf3	04 	. 
	sbc a,l			;abf4	9d 	. 
	ld (bc),a			;abf5	02 	. 
	sbc a,l			;abf6	9d 	. 
	add a,b			;abf7	80 	. 
	ld (bc),a			;abf8	02 	. 
	sbc a,l			;abf9	9d 	. 
	sbc a,l			;abfa	9d 	. 
	and d			;abfb	a2 	. 
	add a,b			;abfc	80 	. 
	and d			;abfd	a2 	. 
	add a,b			;abfe	80 	. 
	and b			;abff	a0 	. 
	ex af,af'			;ac00	08 	. 
	sbc a,e			;ac01	9b 	. 
	ld (bc),a			;ac02	02 	. 
	add a,b			;ac03	80 	. 
sub_ac04h:
	inc b			;ac04	04 	. 
sub_ac05h:
	sbc a,e			;ac05	9b 	. 
	ld (bc),a			;ac06	02 	. 
	sbc a,e			;ac07	9b 	. 
	add a,b			;ac08	80 	. 
	sbc a,c			;ac09	99 	. 
	add a,b			;ac0a	80 	. 
	sbc a,e			;ac0b	9b 	. 
	add a,b			;ac0c	80 	. 
	sbc a,e			;ac0d	9b 	. 
	add a,b			;ac0e	80 	. 
	sbc a,b			;ac0f	98 	. 
	ex af,af'			;ac10	08 	. 
	sbc a,c			;ac11	99 	. 
	ld (bc),a			;ac12	02 	. 
	add a,b			;ac13	80 	. 
	inc b			;ac14	04 	. 
	sbc a,c			;ac15	99 	. 
	ld (bc),a			;ac16	02 	. 
	sbc a,c			;ac17	99 	. 
	add a,b			;ac18	80 	. 
	sbc a,b			;ac19	98 	. 
	add a,b			;ac1a	80 	. 
	sub (hl)			;ac1b	96 	. 
	add a,b			;ac1c	80 	. 
	sbc a,b			;ac1d	98 	. 
	add a,b			;ac1e	80 	. 
	sbc a,c			;ac1f	99 	. 
	ex af,af'			;ac20	08 	. 
	sbc a,e			;ac21	9b 	. 
	ld (bc),a			;ac22	02 	. 
	add a,b			;ac23	80 	. 
	inc b			;ac24	04 	. 
	sbc a,e			;ac25	9b 	. 
	ld (bc),a			;ac26	02 	. 
	sbc a,e			;ac27	9b 	. 
	add a,b			;ac28	80 	. 
	sbc a,c			;ac29	99 	. 
	add a,b			;ac2a	80 	. 
	sbc a,e			;ac2b	9b 	. 
	add a,b			;ac2c	80 	. 
	sbc a,e			;ac2d	9b 	. 
	add a,b			;ac2e	80 	. 
	sbc a,b			;ac2f	98 	. 
	ex af,af'			;ac30	08 	. 
	sub (hl)			;ac31	96 	. 
	ld (bc),a			;ac32	02 	. 
	add a,b			;ac33	80 	. 
	sbc a,e			;ac34	9b 	. 
	add a,b			;ac35	80 	. 
	sbc a,(hl)			;ac36	9e 	. 
	add a,b			;ac37	80 	. 
	sbc a,l			;ac38	9d 	. 
	add a,b			;ac39	80 	. 
	and d			;ac3a	a2 	. 
	add a,b			;ac3b	80 	. 
	and d			;ac3c	a2 	. 
	add a,b			;ac3d	80 	. 
	and b			;ac3e	a0 	. 
	ex af,af'			;ac3f	08 	. 
	push hl			;ac40	e5 	. 
	rst 18h			;ac41	df 	. 
	xor e			;ac42	ab 	. 
	ex (sp),hl			;ac43	e3 	. 
	inc b			;ac44	04 	. 
	jp pe,la2eeh		;ac45	ea ee a2 	. . . 
	call pe,00a00h		;ac48	ec 00 0a 	. . . 
	ld b,l			;ac4b	45 	E 
	xor h			;ac4c	ac 	. 
	jp pe,la291h		;ac4d	ea 91 a2 	. . . 
	jp pe,la306h		;ac50	ea 06 a3 	. . . 
	push hl			;ac53	e5 	. 
	ld b,l			;ac54	45 	E 
	xor h			;ac55	ac 	. 
	inc bc			;ac56	03 	. 
	and b			;ac57	a0 	. 
	add a,b			;ac58	80 	. 
	inc b			;ac59	04 	. 
	ld (hl),d			;ac5a	72 	r 
	xor h			;ac5b	ac 	. 
	inc bc			;ac5c	03 	. 
	ld bc,00b00h		;ac5d	01 00 0b 	. . . 
	and b			;ac60	a0 	. 
	and b			;ac61	a0 	. 
	inc b			;ac62	04 	. 
	ld (hl),d			;ac63	72 	r 
	xor h			;ac64	ac 	. 
	nop			;ac65	00 	. 
	ld bc,00b00h		;ac66	01 00 0b 	. . . 
	and b			;ac69	a0 	. 
	ret nz			;ac6a	c0 	. 
	inc b			;ac6b	04 	. 
	ld (hl),d			;ac6c	72 	r 
	xor h			;ac6d	ac 	. 
	defb 0fdh,001h,000h	;illegal sequence		;ac6e	fd 01 00 	. . . 
	dec bc			;ac71	0b 	. 
	and l			;ac72	a5 	. 
	and d			;ac73	a2 	. 
	inc bc			;ac74	03 	. 
	add a,b			;ac75	80 	. 
	add a,b			;ac76	80 	. 
	ld (bc),a			;ac77	02 	. 
	xor 0feh		;ac78	ee fe 	. . 
	call pe,00800h		;ac7a	ec 00 08 	. . . 
	ld (hl),d			;ac7d	72 	r 
	xor h			;ac7e	ac 	. 
	ret p			;ac7f	f0 	. 
	add a,b			;ac80	80 	. 
	ld bc,0c0a8h		;ac81	01 a8 c0 	. . . 
	ld bc,lac8bh		;ac84	01 8b ac 	. . . 
	inc bc			;ac87	03 	. 
	ld bc,00d01h		;ac88	01 01 0d 	. . . 
lac8bh:
	ld bc,00080h		;ac8b	01 80 00 	. . . 
	ret p			;ac8e	f0 	. 
	inc b			;ac8f	04 	. 
	ld bc,00040h		;ac90	01 40 00 	. @ . 
	ret nc			;ac93	d0 	. 
	ld b,000h		;ac94	06 00 	. . 
	ret nc			;ac96	d0 	. 
	ld bc,00340h		;ac97	01 40 03 	. @ . 
	jp po,la801h		;ac9a	e2 01 a8 	. . . 
	ret po			;ac9d	e0 	. 
	ld bc,laca5h		;ac9e	01 a5 ac 	. . . 
	nop			;aca1	00 	. 
	ld bc,00d02h		;aca2	01 02 0d 	. . . 
laca5h:
	ex (sp),hl			;aca5	e3 	. 
	rlca			;aca6	07 	. 
	nop			;aca7	00 	. 
	djnz lacaah		;aca8	10 00 	. . 
lacaah:
	jr nc,$+6		;acaa	30 04 	0 . 
	nop			;acac	00 	. 
	rla			;acad	17 	. 
	nop			;acae	00 	. 
	djnz $+8		;acaf	10 06 	. . 
	jp po,l8001h		;acb1	e2 01 80 	. . . 
	ret po			;acb4	e0 	. 
	ld bc,lacbch		;acb5	01 bc ac 	. . . 
	inc bc			;acb8	03 	. 
	nop			;acb9	00 	. 
	nop			;acba	00 	. 
	rrca			;acbb	0f 	. 
lacbch:
	ex (sp),hl			;acbc	e3 	. 
	rlca			;acbd	07 	. 
	and b			;acbe	a0 	. 
	inc bc			;acbf	03 	. 
	add a,b			;acc0	80 	. 
	ld (bc),a			;acc1	02 	. 
	sbc a,e			;acc2	9b 	. 
	inc b			;acc3	04 	. 
	add a,b			;acc4	80 	. 
	dec b			;acc5	05 	. 
	sbc a,c			;acc6	99 	. 
	ld (bc),a			;acc7	02 	. 
	jp po,l8002h		;acc8	e2 02 80 	. . . 
	and b			;accb	a0 	. 
	ld bc,lacdch		;accc	01 dc ac 	. . . 
	dec b			;accf	05 	. 
	nop			;acd0	00 	. 
lacd1h:
	ld (bc),a			;acd1	02 	. 
	dec c			;acd2	0d 	. 
	add a,b			;acd3	80 	. 
	ret nz			;acd4	c0 	. 
	ld bc,lacdch		;acd5	01 dc ac 	. . . 
	inc bc			;acd8	03 	. 
	ld bc,00d02h		;acd9	01 02 0d 	. . . 
lacdch:
	and l			;acdc	a5 	. 
	ld bc,0059bh		;acdd	01 9b 05 	. . . 
	jp po,l8801h+1		;ace0	e2 02 88 	. . . 
	and b			;ace3	a0 	. 
	ld bc,lacf4h		;ace4	01 f4 ac 	. . . 
	nop			;ace7	00 	. 
	nop			;ace8	00 	. 
	rlca			;ace9	07 	. 
	rrca			;acea	0f 	. 
	adc a,b			;aceb	88 	. 
	ret nz			;acec	c0 	. 
	ld bc,0acfbh		;aced	01 fb ac 	. . . 
	nop			;acf0	00 	. 
	ld bc,00f07h		;acf1	01 07 0f 	. . . 
lacf4h:
	nop			;acf4	00 	. 
	ld a,(de)			;acf5	1a 	. 
	ld b,000h		;acf6	06 00 	. . 
	add hl,bc			;acf8	09 	. 
	dec d			;acf9	15 	. 
	jp po,01e00h		;acfa	e2 00 1e 	. . . 
	ld b,000h		;acfd	06 00 	. . 
	ld de,0e215h		;acff	11 15 e2 	. . . 
	ld (bc),a			;ad02	02 	. 
	add a,b			;ad03	80 	. 
	and b			;ad04	a0 	. 
	inc bc			;ad05	03 	. 
	dec d			;ad06	15 	. 
	xor l			;ad07	ad 	. 
	dec b			;ad08	05 	. 
	ld bc,00d04h		;ad09	01 04 0d 	. . . 
	add a,b			;ad0c	80 	. 
	ret nz			;ad0d	c0 	. 
	inc bc			;ad0e	03 	. 
	dec d			;ad0f	15 	. 
	xor l			;ad10	ad 	. 
	nop			;ad11	00 	. 
	ld bc,00d04h		;ad12	01 04 0d 	. . . 
	sbc a,c			;ad15	99 	. 
	ld (bc),a			;ad16	02 	. 
	sbc a,l			;ad17	9d 	. 
	sbc a,a			;ad18	9f 	. 
	sbc a,l			;ad19	9d 	. 
	sbc a,e			;ad1a	9b 	. 
	and b			;ad1b	a0 	. 
	ld c,0e2h		;ad1c	0e e2 	. . 
	ld bc,0c0a0h		;ad1e	01 a0 c0 	. . . 
	inc b			;ad21	04 	. 
	jr z,lacd1h		;ad22	28 ad 	( . 
	inc bc			;ad24	03 	. 
	nop			;ad25	00 	. 
	inc bc			;ad26	03 	. 
	dec c			;ad27	0d 	. 
	and l			;ad28	a5 	. 
	sbc a,c			;ad29	99 	. 
	ld b,0e2h		;ad2a	06 e2 	. . 
	ld bc,0c0a8h		;ad2c	01 a8 c0 	. . . 
	ld bc,lad36h		;ad2f	01 36 ad 	. 6 . 
	inc bc			;ad32	03 	. 
	nop			;ad33	00 	. 
	nop			;ad34	00 	. 
	dec bc			;ad35	0b 	. 
lad36h:
	ld bc,00056h		;ad36	01 56 00 	. V . 
	ret nc			;ad39	d0 	. 
	rlca			;ad3a	07 	. 
	nop			;ad3b	00 	. 
	sub b			;ad3c	90 	. 
	nop			;ad3d	00 	. 
	ld b,b			;ad3e	40 	@ 
	ld (bc),a			;ad3f	02 	. 
	nop			;ad40	00 	. 
	xor b			;ad41	a8 	. 
	nop			;ad42	00 	. 
	ld d,b			;ad43	50 	P 
	ld a,(de)			;ad44	1a 	. 
	jp po,la802h		;ad45	e2 02 a8 	. . . 
	and b			;ad48	a0 	. 
	ld bc,lad59h		;ad49	01 59 ad 	. Y . 
	inc bc			;ad4c	03 	. 
	nop			;ad4d	00 	. 
	nop			;ad4e	00 	. 
	dec c			;ad4f	0d 	. 
	xor b			;ad50	a8 	. 
	ret po			;ad51	e0 	. 
	ld bc,0ad76h		;ad52	01 76 ad 	. v . 
	inc bc			;ad55	03 	. 
	nop			;ad56	00 	. 
	rlca			;ad57	07 	. 
	rrca			;ad58	0f 	. 
lad59h:
	inc bc			;ad59	03 	. 
	ld d,b			;ad5a	50 	P 
	inc bc			;ad5b	03 	. 
	rst 38h			;ad5c	ff 	. 
	ld b,000h		;ad5d	06 00 	. . 
	nop			;ad5f	00 	. 
	nop			;ad60	00 	. 
	nop			;ad61	00 	. 
	inc b			;ad62	04 	. 
	pop hl			;ad63	e1 	. 
	add hl,bc			;ad64	09 	. 
	inc bc			;ad65	03 	. 
	jr nz,lad6ah		;ad66	20 02 	  . 
	ret nz			;ad68	c0 	. 
	inc b			;ad69	04 	. 
lad6ah:
	inc bc			;ad6a	03 	. 
	jr nz,lad70h		;ad6b	20 03 	  . 
	rst 38h			;ad6d	ff 	. 
	djnz lad70h		;ad6e	10 00 	. . 
lad70h:
	nop			;ad70	00 	. 
	nop			;ad71	00 	. 
	nop			;ad72	00 	. 
	ld e,0f1h		;ad73	1e f1 	. . 
	jp po,007e3h		;ad75	e2 e3 07 	. . . 
	nop			;ad78	00 	. 
	inc bc			;ad79	03 	. 
	nop			;ad7a	00 	. 
	inc b			;ad7b	04 	. 
	ld b,000h		;ad7c	06 00 	. . 
	nop			;ad7e	00 	. 
	nop			;ad7f	00 	. 
	nop			;ad80	00 	. 
	inc b			;ad81	04 	. 
	nop			;ad82	00 	. 
	djnz lad85h		;ad83	10 00 	. . 
lad85h:
	jr lad9bh		;ad85	18 14 	. . 
	nop			;ad87	00 	. 
	nop			;ad88	00 	. 
	nop			;ad89	00 	. 
	nop			;ad8a	00 	. 
	ld e,0e2h		;ad8b	1e e2 	. . 
	ld bc,0c0a8h		;ad8d	01 a8 c0 	. . . 
	ld bc,lad97h		;ad90	01 97 ad 	. . . 
	inc bc			;ad93	03 	. 
	nop			;ad94	00 	. 
	ex af,af'			;ad95	08 	. 
	dec c			;ad96	0d 	. 
lad97h:
	ld bc,00146h		;ad97	01 46 01 	. F . 
	ret nz			;ad9a	c0 	. 
lad9bh:
	dec c			;ad9b	0d 	. 
	nop			;ad9c	00 	. 
	ld d,d			;ad9d	52 	R 
	nop			;ad9e	00 	. 
	ret p			;ad9f	f0 	. 
	ld b,000h		;ada0	06 00 	. . 
	ret nz			;ada2	c0 	. 
	nop			;ada3	00 	. 
	ret p			;ada4	f0 	. 
	ex af,af'			;ada5	08 	. 
	jp po,l8001h		;ada6	e2 01 80 	. . . 
	ret nz			;ada9	c0 	. 
	ld bc,ladb1h		;adaa	01 b1 ad 	. . . 
	inc bc			;adad	03 	. 
	nop			;adae	00 	. 
	inc b			;adaf	04 	. 
	dec c			;adb0	0d 	. 
ladb1h:
	sbc a,c			;adb1	99 	. 
	ld bc,la09dh		;adb2	01 9d a0 	. . . 
	and e			;adb5	a3 	. 
	xor 001h		;adb6	ee 01 	. . 
	call pe,00300h		;adb8	ec 00 03 	. . . 
	or c			;adbb	b1 	. 
	xor l			;adbc	ad 	. 
	sbc a,c			;adbd	99 	. 
	ld bc,la09dh		;adbe	01 9d a0 	. . . 
	and e			;adc1	a3 	. 
	xor 0ffh		;adc2	ee ff 	. . 
	call pe,00300h		;adc4	ec 00 03 	. . . 
	cp l			;adc7	bd 	. 
	xor l			;adc8	ad 	. 
	push hl			;adc9	e5 	. 
	or c			;adca	b1 	. 
	xor l			;adcb	ad 	. 
	ld (bc),a			;adcc	02 	. 
	xor b			;adcd	a8 	. 
	and b			;adce	a0 	. 
	ld (bc),a			;adcf	02 	. 
	rst 18h			;add0	df 	. 
	xor l			;add1	ad 	. 
	inc bc			;add2	03 	. 
	nop			;add3	00 	. 
	inc bc			;add4	03 	. 
	dec c			;add5	0d 	. 
	xor b			;add6	a8 	. 
	ret nz			;add7	c0 	. 
	ld (bc),a			;add8	02 	. 
	inc e			;add9	1c 	. 
	xor (hl)			;adda	ae 	. 
	inc bc			;addb	03 	. 
	nop			;addc	00 	. 
	inc bc			;addd	03 	. 
	dec c			;adde	0d 	. 
	ld (bc),a			;addf	02 	. 
	nop			;ade0	00 	. 
	ld (bc),a			;ade1	02 	. 
	jr nc,$+6		;ade2	30 04 	0 . 
	nop			;ade4	00 	. 
	ret po			;ade5	e0 	. 
	nop			;ade6	00 	. 
	jr nz,ladedh		;ade7	20 04 	  . 
	nop			;ade9	00 	. 
	nop			;adea	00 	. 
	nop			;adeb	00 	. 
	nop			;adec	00 	. 
ladedh:
	inc b			;aded	04 	. 
	ld (bc),a			;adee	02 	. 
	nop			;adef	00 	. 
	ld (bc),a			;adf0	02 	. 
	sub b			;adf1	90 	. 
	inc b			;adf2	04 	. 
	ld (bc),a			;adf3	02 	. 
	ld d,b			;adf4	50 	P 
	ld (bc),a			;adf5	02 	. 
	nop			;adf6	00 	. 
	inc b			;adf7	04 	. 
	nop			;adf8	00 	. 
	nop			;adf9	00 	. 
	nop			;adfa	00 	. 
	nop			;adfb	00 	. 
	inc b			;adfc	04 	. 
	ld (bc),a			;adfd	02 	. 
	nop			;adfe	00 	. 
	ld bc,00480h		;adff	01 80 04 	. . . 
	ld bc,00000h		;ae02	01 00 00 	. . . 
sub_ae05h:
	and b			;ae05	a0 	. 
	inc b			;ae06	04 	. 
	nop			;ae07	00 	. 
	nop			;ae08	00 	. 
	nop			;ae09	00 	. 
	nop			;ae0a	00 	. 
	ld (bc),a			;ae0b	02 	. 
	inc bc			;ae0c	03 	. 
	nop			;ae0d	00 	. 
	inc bc			;ae0e	03 	. 
	jr nz,lae15h		;ae0f	20 04 	  . 
	nop			;ae11	00 	. 
	nop			;ae12	00 	. 
	nop			;ae13	00 	. 
	nop			;ae14	00 	. 
lae15h:
	ld (bc),a			;ae15	02 	. 
	inc bc			;ae16	03 	. 
	jr nz,$+5		;ae17	20 03 	  . 
	ret nz			;ae19	c0 	. 
	ex af,af'			;ae1a	08 	. 
	jp po,0a001h		;ae1b	e2 01 a0 	. . . 
	ld (bc),a			;ae1e	02 	. 
	nop			;ae1f	00 	. 
	inc b			;ae20	04 	. 
	nop			;ae21	00 	. 
	ret nc			;ae22	d0 	. 
	nop			;ae23	00 	. 
	jr nc,lae2ah		;ae24	30 04 	0 . 
	nop			;ae26	00 	. 
	nop			;ae27	00 	. 
	nop			;ae28	00 	. 
	nop			;ae29	00 	. 
lae2ah:
	inc b			;ae2a	04 	. 
	ld bc,002a0h		;ae2b	01 a0 02 	. . . 
	ld h,b			;ae2e	60 	` 
	inc b			;ae2f	04 	. 
	ld (bc),a			;ae30	02 	. 
	ld b,b			;ae31	40 	@ 
	ld bc,004a0h		;ae32	01 a0 04 	. . . 
	nop			;ae35	00 	. 
	nop			;ae36	00 	. 
	nop			;ae37	00 	. 
	nop			;ae38	00 	. 
	inc b			;ae39	04 	. 
	ld bc,001a0h		;ae3a	01 a0 01 	. . . 
	ld h,b			;ae3d	60 	` 
	inc b			;ae3e	04 	. 
	nop			;ae3f	00 	. 
	ret po			;ae40	e0 	. 
	nop			;ae41	00 	. 
	sub b			;ae42	90 	. 
	inc b			;ae43	04 	. 
	nop			;ae44	00 	. 
	nop			;ae45	00 	. 
	nop			;ae46	00 	. 
	nop			;ae47	00 	. 
	ld (bc),a			;ae48	02 	. 
	inc bc			;ae49	03 	. 
	jr nz,lae4fh		;ae4a	20 03 	  . 
	ld b,b			;ae4c	40 	@ 
	inc b			;ae4d	04 	. 
	nop			;ae4e	00 	. 
lae4fh:
	nop			;ae4f	00 	. 
	nop			;ae50	00 	. 
	nop			;ae51	00 	. 
	ld (bc),a			;ae52	02 	. 
	inc bc			;ae53	03 	. 
	nop			;ae54	00 	. 
	inc bc			;ae55	03 	. 
	and b			;ae56	a0 	. 
	ex af,af'			;ae57	08 	. 
	jp po,la801h		;ae58	e2 01 a8 	. . . 
	ret nz			;ae5b	c0 	. 
	ld (bc),a			;ae5c	02 	. 
	ld h,e			;ae5d	63 	c 
	xor (hl)			;ae5e	ae 	. 
	nop			;ae5f	00 	. 
	nop			;ae60	00 	. 
	inc b			;ae61	04 	. 
	dec bc			;ae62	0b 	. 
	nop			;ae63	00 	. 
	ld h,b			;ae64	60 	` 
	ld bc,00540h		;ae65	01 40 05 	. @ . 
	ld bc,00040h		;ae68	01 40 00 	. @ . 
	or b			;ae6b	b0 	. 
	rlca			;ae6c	07 	. 
	nop			;ae6d	00 	. 
	or b			;ae6e	b0 	. 
	ld bc,00740h		;ae6f	01 40 07 	. @ . 
	ld bc,00080h		;ae72	01 80 00 	. . . 
	sub b			;ae75	90 	. 
	rlca			;ae76	07 	. 
	nop			;ae77	00 	. 
	jp p,0c000h		;ae78	f2 00 c0 	. . . 
	rlca			;ae7b	07 	. 
	push hl			;ae7c	e5 	. 
	ld l,b			;ae7d	68 	h 
	xor (hl)			;ae7e	ae 	. 
	ld bc,0c0a8h		;ae7f	01 a8 c0 	. . . 
	ld (bc),a			;ae82	02 	. 
	adc a,c			;ae83	89 	. 
	xor (hl)			;ae84	ae 	. 
	inc bc			;ae85	03 	. 
	nop			;ae86	00 	. 
	ex af,af'			;ae87	08 	. 
	dec c			;ae88	0d 	. 
	ld bc,001b0h		;ae89	01 b0 01 	. . . 
	djnz lae92h		;ae8c	10 04 	. . 
	nop			;ae8e	00 	. 
	nop			;ae8f	00 	. 
	nop			;ae90	00 	. 
	nop			;ae91	00 	. 
lae92h:
	ld bc,04001h		;ae92	01 01 40 	. . @ 
	nop			;ae95	00 	. 
	ret nz			;ae96	c0 	. 
	inc b			;ae97	04 	. 
	ld bc,00020h		;ae98	01 20 00 	.   . 
	and b			;ae9b	a0 	. 
	inc b			;ae9c	04 	. 
	ld bc,00000h		;ae9d	01 00 00 	. . . 
	add a,b			;aea0	80 	. 
	dec b			;aea1	05 	. 
	jp po,la801h		;aea2	e2 01 a8 	. . . 
	ret nz			;aea5	c0 	. 
	ld bc,0aeadh		;aea6	01 ad ae 	. . . 
	nop			;aea9	00 	. 
	nop			;aeaa	00 	. 
	add hl,bc			;aeab	09 	. 
	ld c,000h		;aeac	0e 00 	. . 
	ld e,000h		;aeae	1e 00 	. . 
	ld a,(de)			;aeb0	1a 	. 
	dec b			;aeb1	05 	. 
	jp po,la801h		;aeb2	e2 01 a8 	. . . 
	ret po			;aeb5	e0 	. 
	ld bc,laebdh		;aeb6	01 bd ae 	. . . 
	inc bc			;aeb9	03 	. 
	nop			;aeba	00 	. 
	ex af,af'			;aebb	08 	. 
	rrca			;aebc	0f 	. 
laebdh:
	ex (sp),hl			;aebd	e3 	. 
	rlca			;aebe	07 	. 
	nop			;aebf	00 	. 
	ld b,b			;aec0	40 	@ 
	nop			;aec1	00 	. 
	rst 38h			;aec2	ff 	. 
	ld a,(bc)			;aec3	0a 	. 
	call po,00107h		;aec4	e4 07 01 	. . . 
	nop			;aec7	00 	. 
	ld bc,00470h		;aec8	01 70 04 	. p . 
	jp po,l8801h		;aecb	e2 01 88 	. . . 
	ret nz			;aece	c0 	. 
	ld bc,laed6h		;aecf	01 d6 ae 	. . . 
	inc bc			;aed2	03 	. 
	ld bc,00d01h		;aed3	01 01 0d 	. . . 
laed6h:
	inc bc			;aed6	03 	. 
	ret p			;aed7	f0 	. 
	ld bc,0e003h		;aed8	01 03 e0 	. . . 
	ld (bc),a			;aedb	02 	. 
laedch:
	nop			;aedc	00 	. 
	nop			;aedd	00 	. 
	dec b			;aede	05 	. 
	inc bc			;aedf	03 	. 
	add a,b			;aee0	80 	. 
	ld (bc),a			;aee1	02 	. 
	jp po,0a002h		;aee2	e2 02 a0 	. . . 
	and b			;aee5	a0 	. 
	inc b			;aee6	04 	. 
	or 0aeh		;aee7	f6 ae 	. . 
	inc bc			;aee9	03 	. 
	ld bc,00d00h		;aeea	01 00 0d 	. . . 
	and b			;aeed	a0 	. 
	ret nz			;aeee	c0 	. 
	inc b			;aeef	04 	. 
	or 0aeh		;aef0	f6 ae 	. . 
	nop			;aef2	00 	. 
	ld bc,00d00h		;aef3	01 00 0d 	. . . 
	or c			;aef6	b1 	. 
	sbc a,c			;aef7	99 	. 
	jr nc,laedch		;aef8	30 e2 	0 . 
	ld bc,0c0a8h		;aefa	01 a8 c0 	. . . 
	ld bc,laf04h		;aefd	01 04 af 	. . . 
	nop			;af00	00 	. 
	ld bc,00c02h		;af01	01 02 0c 	. . . 
laf04h:
	ld (bc),a			;af04	02 	. 
	nop			;af05	00 	. 
	ld bc,00360h		;af06	01 60 03 	. ` . 
	nop			;af09	00 	. 
	nop			;af0a	00 	. 
	nop			;af0b	00 	. 
	nop			;af0c	00 	. 
	ld bc,0c200h		;af0d	01 00 c2 	. . . 
	ld bc,009b0h		;af10	01 b0 09 	. . . 
	jp po,la801h		;af13	e2 01 a8 	. . . 
	ret nz			;af16	c0 	. 
	ld bc,laf1eh		;af17	01 1e af 	. . . 
	nop			;af1a	00 	. 
	ld bc,00500h		;af1b	01 00 05 	. . . 
laf1eh:
	nop			;af1e	00 	. 
	add a,b			;af1f	80 	. 
	nop			;af20	00 	. 
	ret nc			;af21	d0 	. 
	inc d			;af22	14 	. 
	ld bc,00020h		;af23	01 20 00 	.   . 
	ret p			;af26	f0 	. 
	jr laf29h		;af27	18 00 	. . 
laf29h:
	ret nz			;af29	c0 	. 
	ld bc,00620h		;af2a	01 20 06 	.   . 
	call pe,00300h		;af2d	ec 00 03 	. . . 
	inc hl			;af30	23 	# 
	xor a			;af31	af 	. 
	push hl			;af32	e5 	. 
	ld e,0afh		;af33	1e af 	. . 
	jp po,la802h		;af35	e2 02 a8 	. . . 
	and b			;af38	a0 	. 
	ld (bc),a			;af39	02 	. 
	ld c,c			;af3a	49 	I 
laf3bh:
	xor a			;af3b	af 	. 
	inc bc			;af3c	03 	. 
	ld bc,00900h		;af3d	01 00 09 	. . . 
	xor b			;af40	a8 	. 
	ret po			;af41	e0 	. 
	ld (bc),a			;af42	02 	. 
	ld e,c			;af43	59 	Y 
	xor a			;af44	af 	. 
	inc bc			;af45	03 	. 
	ld bc,00d00h		;af46	01 00 0d 	. . . 
	ld (bc),a			;af49	02 	. 
	ret p			;af4a	f0 	. 
	inc bc			;af4b	03 	. 
	ld d,b			;af4c	50 	P 
	ld (bc),a			;af4d	02 	. 
	ld bc,00280h		;af4e	01 80 02 	. . . 
	nop			;af51	00 	. 
	inc b			;af52	04 	. 
	inc bc			;af53	03 	. 
	nop			;af54	00 	. 
	inc bc			;af55	03 	. 
	rst 38h			;af56	ff 	. 
	djnz laf3bh		;af57	10 e2 	. . 
	ex (sp),hl			;af59	e3 	. 
	rlca			;af5a	07 	. 
	nop			;af5b	00 	. 
	inc b			;af5c	04 	. 
	nop			;af5d	00 	. 
	djnz laf62h		;af5e	10 02 	. . 
	nop			;af60	00 	. 
	ld b,b			;af61	40 	@ 
laf62h:
	nop			;af62	00 	. 
	add a,b			;af63	80 	. 
	inc b			;af64	04 	. 
	call po,00000h		;af65	e4 00 00 	. . . 
	add a,b			;af68	80 	. 
	ld bc,010d0h		;af69	01 d0 10 	. . . 
	jp po,l8001h		;af6c	e2 01 80 	. . . 
	ret po			;af6f	e0 	. 
	ld bc,laf77h		;af70	01 77 af 	. w . 
	inc bc			;af73	03 	. 
	ld bc,00600h		;af74	01 00 06 	. . . 
laf77h:
	ex (sp),hl			;af77	e3 	. 
	inc b			;af78	04 	. 
	adc a,l			;af79	8d 	. 
	ld e,d			;af7a	5a 	Z 
	nop			;af7b	00 	. 
	nop			;af7c	00 	. 
	nop			;af7d	00 	. 
	nop			;af7e	00 	. 
	inc d			;af7f	14 	. 
	push hl			;af80	e5 	. 
	ld (hl),a			;af81	77 	w 
	xor a			;af82	af 	. 
	jp po,la802h		;af83	e2 02 a8 	. . . 
	and b			;af86	a0 	. 
	ld bc,laf97h		;af87	01 97 af 	. . . 
	inc bc			;af8a	03 	. 
laf8bh:
	nop			;af8b	00 	. 
	inc bc			;af8c	03 	. 
	dec c			;af8d	0d 	. 
	xor b			;af8e	a8 	. 
	ret po			;af8f	e0 	. 
	ld bc,lafa9h		;af90	01 a9 af 	. . . 
	inc bc			;af93	03 	. 
	nop			;af94	00 	. 
	inc bc			;af95	03 	. 
	rrca			;af96	0f 	. 
laf97h:
	inc bc			;af97	03 	. 
	ret p			;af98	f0 	. 
	inc bc			;af99	03 	. 
	jr nz,laf9fh		;af9a	20 03 	  . 
	inc bc			;af9c	03 	. 
	nop			;af9d	00 	. 
	inc bc			;af9e	03 	. 
laf9fh:
	ret p			;af9f	f0 	. 
	dec b			;afa0	05 	. 
	call po,00307h		;afa1	e4 07 03 	. . . 
	ret nz			;afa4	c0 	. 
	inc bc			;afa5	03 	. 
	rst 38h			;afa6	ff 	. 
	djnz laf8bh		;afa7	10 e2 	. . 
lafa9h:
	ex (sp),hl			;afa9	e3 	. 
	rlca			;afaa	07 	. 
	nop			;afab	00 	. 
	ret p			;afac	f0 	. 
	nop			;afad	00 	. 
	ld b,b			;afae	40 	@ 
	inc bc			;afaf	03 	. 
	nop			;afb0	00 	. 
	ret po			;afb1	e0 	. 
	ld bc,005e0h		;afb2	01 e0 05 	. . . 
	call po,00107h		;afb5	e4 07 01 	. . . 
	ret po			;afb8	e0 	. 
	ld bc,010efh		;afb9	01 ef 10 	. . . 
	jp po,l8001h		;afbc	e2 01 80 	. . . 
	ret nz			;afbf	c0 	. 
	inc b			;afc0	04 	. 
	rst 0			;afc1	c7 	. 
	xor a			;afc2	af 	. 
	inc bc			;afc3	03 	. 
	nop			;afc4	00 	. 
lafc5h:
	inc bc			;afc5	03 	. 
	dec c			;afc6	0d 	. 
	and l			;afc7	a5 	. 
	ld (bc),a			;afc8	02 	. 
	jp po,la802h		;afc9	e2 02 a8 	. . . 
	and b			;afcc	a0 	. 
	ld bc,lafddh		;afcd	01 dd af 	. . . 
	nop			;afd0	00 	. 
	nop			;afd1	00 	. 
	add hl,bc			;afd2	09 	. 
	rrca			;afd3	0f 	. 
	xor b			;afd4	a8 	. 
	ret nz			;afd5	c0 	. 
	ld bc,lafe3h		;afd6	01 e3 af 	. . . 
	nop			;afd9	00 	. 
	nop			;afda	00 	. 
	add hl,bc			;afdb	09 	. 
	rrca			;afdc	0f 	. 
lafddh:
	ld (bc),a			;afdd	02 	. 
	ret p			;afde	f0 	. 
	ld (bc),a			;afdf	02 	. 
	and b			;afe0	a0 	. 
	jr nz,lafc5h		;afe1	20 e2 	  . 
lafe3h:
	inc bc			;afe3	03 	. 
	ret p			;afe4	f0 	. 
	inc bc			;afe5	03 	. 
	ld e,a			;afe6	5f 	_ 
	jr nz,$-28		;afe7	20 e2 	  . 
	ld (bc),a			;afe9	02 	. 
	xor b			;afea	a8 	. 
	and b			;afeb	a0 	. 
	ld bc,laffch		;afec	01 fc af 	. . . 
	nop			;afef	00 	. 
	ld bc,00f00h		;aff0	01 00 0f 	. . . 
	xor b			;aff3	a8 	. 
	ret nz			;aff4	c0 	. 
	ld bc,lb018h		;aff5	01 18 b0 	. . . 
	nop			;aff8	00 	. 
	nop			;aff9	00 	. 
	nop			;affa	00 	. 
	rrca			;affb	0f 	. 
laffch:
	nop			;affc	00 	. 
	dec d			;affd	15 	. 
	nop			;affe	00 	. 
	ld (de),a			;afff	12 	. 
	ld (bc),a			;b000	02 	. 
	nop			;b001	00 	. 
	jr sub_b004h		;b002	18 00 	. . 
sub_b004h:
	dec d			;b004	15 	. 
sub_b005h:
	inc bc			;b005	03 	. 
	nop			;b006	00 	. 
	nop			;b007	00 	. 
	nop			;b008	00 	. 
	nop			;b009	00 	. 
	ld (bc),a			;b00a	02 	. 
	nop			;b00b	00 	. 
	dec d			;b00c	15 	. 
	nop			;b00d	00 	. 
	inc de			;b00e	13 	. 
	dec b			;b00f	05 	. 
	call po,00007h		;b010	e4 07 00 	. . . 
	ld de,01000h		;b013	11 00 10 	. . . 
	ld b,0e2h		;b016	06 e2 	. . 
lb018h:
	nop			;b018	00 	. 
	jr lb01bh		;b019	18 00 	. . 
lb01bh:
	djnz $+4		;b01b	10 02 	. . 
	nop			;b01d	00 	. 
	djnz lb020h		;b01e	10 00 	. . 
lb020h:
	ex af,af'			;b020	08 	. 
	inc bc			;b021	03 	. 
	nop			;b022	00 	. 
	nop			;b023	00 	. 
	nop			;b024	00 	. 
	nop			;b025	00 	. 
	ld (bc),a			;b026	02 	. 
	nop			;b027	00 	. 
	ld (de),a			;b028	12 	. 
	nop			;b029	00 	. 
	djnz lb031h		;b02a	10 05 	. . 
	call po,00007h		;b02c	e4 07 00 	. . . 
	inc d			;b02f	14 	. 
	nop			;b030	00 	. 
lb031h:
	inc d			;b031	14 	. 
	ld b,0e2h		;b032	06 e2 	. . 
	ld bc,0e0a8h		;b034	01 a8 e0 	. . . 
	ld bc,lb03eh		;b037	01 3e b0 	. > . 
	inc bc			;b03a	03 	. 
	nop			;b03b	00 	. 
	ex af,af'			;b03c	08 	. 
	dec c			;b03d	0d 	. 
lb03eh:
	ex (sp),hl			;b03e	e3 	. 
	rlca			;b03f	07 	. 
	nop			;b040	00 	. 
	and b			;b041	a0 	. 
	nop			;b042	00 	. 
	djnz $+8		;b043	10 06 	. . 
	call po,00000h		;b045	e4 00 00 	. . . 
	ret nc			;b048	d0 	. 
	nop			;b049	00 	. 
	djnz lb065h		;b04a	10 19 	. . 
	jp po,la801h		;b04c	e2 01 a8 	. . . 
	ret nz			;b04f	c0 	. 
	ld bc,lb057h		;b050	01 57 b0 	. W . 
	inc bc			;b053	03 	. 
	nop			;b054	00 	. 
	inc bc			;b055	03 	. 
	dec c			;b056	0d 	. 
lb057h:
	ld (bc),a			;b057	02 	. 
	nop			;b058	00 	. 
	ld bc,00290h		;b059	01 90 02 	. . . 
	ld bc,00000h		;b05c	01 00 00 	. . . 
	djnz lb064h		;b05f	10 03 	. . 
	jp po,l8801h		;b061	e2 01 88 	. . . 
lb064h:
	ret nz			;b064	c0 	. 
lb065h:
	ld bc,0b06ch		;b065	01 6c b0 	. l . 
	inc bc			;b068	03 	. 
	nop			;b069	00 	. 
	ld bc,0000dh		;b06a	01 0d 00 	. . . 
	ret po			;b06d	e0 	. 
	inc b			;b06e	04 	. 
	nop			;b06f	00 	. 
	nop			;b070	00 	. 
	ld (bc),a			;b071	02 	. 
	nop			;b072	00 	. 
	add a,b			;b073	80 	. 
	inc b			;b074	04 	. 
	jp po,la801h		;b075	e2 01 a8 	. . . 
	ret nz			;b078	c0 	. 
	ld bc,lb080h		;b079	01 80 b0 	. . . 
	inc bc			;b07c	03 	. 
	nop			;b07d	00 	. 
	inc bc			;b07e	03 	. 
	dec c			;b07f	0d 	. 
lb080h:
	nop			;b080	00 	. 
	add a,b			;b081	80 	. 
	nop			;b082	00 	. 
	ld b,b			;b083	40 	@ 
	ld (bc),a			;b084	02 	. 
	nop			;b085	00 	. 
	jr nz,lb088h		;b086	20 00 	  . 
lb088h:
	djnz lb08bh		;b088	10 01 	. . 
	nop			;b08a	00 	. 
lb08bh:
	ret po			;b08b	e0 	. 
	nop			;b08c	00 	. 
	ld d,b			;b08d	50 	P 
	ld b,0e2h		;b08e	06 e2 	. . 
	ld bc,0c0a8h		;b090	01 a8 c0 	. . . 
	ld bc,lb09ah		;b093	01 9a b0 	. . . 
	inc bc			;b096	03 	. 
	nop			;b097	00 	. 
	rlca			;b098	07 	. 
	dec c			;b099	0d 	. 
lb09ah:
	ld bc,00000h		;b09a	01 00 00 	. . . 
	sub b			;b09d	90 	. 
	dec b			;b09e	05 	. 
	nop			;b09f	00 	. 
	ret nc			;b0a0	d0 	. 
	nop			;b0a1	00 	. 
	ld h,b			;b0a2	60 	` 
	inc bc			;b0a3	03 	. 
	nop			;b0a4	00 	. 
	ret nc			;b0a5	d0 	. 
	nop			;b0a6	00 	. 
	ld b,b			;b0a7	40 	@ 
	inc b			;b0a8	04 	. 
	jp po,l8801h		;b0a9	e2 01 88 	. . . 
	ret nz			;b0ac	c0 	. 
	ld bc,lb0b4h		;b0ad	01 b4 b0 	. . . 
	inc bc			;b0b0	03 	. 
	nop			;b0b1	00 	. 
	inc bc			;b0b2	03 	. 
	dec c			;b0b3	0d 	. 
lb0b4h:
	ld bc,00300h		;b0b4	01 00 03 	. . . 
	nop			;b0b7	00 	. 
	nop			;b0b8	00 	. 
	ld (bc),a			;b0b9	02 	. 
	nop			;b0ba	00 	. 
	add a,b			;b0bb	80 	. 
lb0bch:
	inc bc			;b0bc	03 	. 
	jp po,la801h		;b0bd	e2 01 a8 	. . . 
	ret nz			;b0c0	c0 	. 
	ld bc,lb0c8h		;b0c1	01 c8 b0 	. . . 
	inc bc			;b0c4	03 	. 
	ld bc,00a08h		;b0c5	01 08 0a 	. . . 
lb0c8h:
	ld bc,001d0h		;b0c8	01 d0 01 	. . . 
	jr nc,lb0d3h		;b0cb	30 06 	0 . 
	call po,00100h		;b0cd	e4 00 01 	. . . 
	nop			;b0d0	00 	. 
	nop			;b0d1	00 	. 
	or b			;b0d2	b0 	. 
lb0d3h:
	inc bc			;b0d3	03 	. 
sub_b0d4h:
	nop			;b0d4	00 	. 
lb0d5h:
	or b			;b0d5	b0 	. 
	ld bc,00600h		;b0d6	01 00 06 	. . . 
	push hl			;b0d9	e5 	. 
	ret z			;b0da	c8 	. 
	or b			;b0db	b0 	. 
sub_b0dch:
	jp po,l8801h		;b0dc	e2 01 88 	. . . 
sub_b0dfh:
	ret nz			;b0df	c0 	. 
	ld bc,0b0e7h		;b0e0	01 e7 b0 	. . . 
lb0e3h:
	inc bc			;b0e3	03 	. 
lb0e4h:
	nop			;b0e4	00 	. 
	ld bc,0020ah		;b0e5	01 0a 02 	. . . 
	nop			;b0e8	00 	. 
	inc bc			;b0e9	03 	. 
	nop			;b0ea	00 	. 
	nop			;b0eb	00 	. 
	ld (bc),a			;b0ec	02 	. 
	ld bc,00500h		;b0ed	01 00 05 	. . . 
	push hl			;b0f0	e5 	. 
	rst 20h			;b0f1	e7 	. 
	or b			;b0f2	b0 	. 
	jp po,la801h		;b0f3	e2 01 a8 	. . . 
	ret nz			;b0f6	c0 	. 
	ld (bc),a			;b0f7	02 	. 
	cp 0b0h		;b0f8	fe b0 	. . 
	inc bc			;b0fa	03 	. 
	ld bc,00b00h		;b0fb	01 00 0b 	. . . 
	ld (bc),a			;b0fe	02 	. 
	jr nc,lb102h		;b0ff	30 01 	0 . 
	add a,b			;b101	80 	. 
lb102h:
	ex af,af'			;b102	08 	. 
	ld bc,00020h		;b103	01 20 00 	.   . 
	add a,b			;b106	80 	. 
	dec b			;b107	05 	. 
	ld (bc),a			;b108	02 	. 
	nop			;b109	00 	. 
	ld (bc),a			;b10a	02 	. 
	add a,b			;b10b	80 	. 
	ld b,001h		;b10c	06 01 	. . 
	add a,b			;b10e	80 	. 
	ld bc,00610h		;b10f	01 10 06 	. . . 
	ld bc,001c0h		;b112	01 c0 01 	. . . 
	ret p			;b115	f0 	. 
	dec b			;b116	05 	. 
	ld bc,002e0h		;b117	01 e0 02 	. . . 
	djnz lb124h		;b11a	10 08 	. . 
	jp po,la801h		;b11c	e2 01 a8 	. . . 
	ret nz			;b11f	c0 	. 
	ld bc,lb127h		;b120	01 27 b1 	. ' . 
	inc bc			;b123	03 	. 
lb124h:
	ld bc,00d00h		;b124	01 00 0d 	. . . 
lb127h:
	ld bc,00000h		;b127	01 00 00 	. . . 
	ret po			;b12a	e0 	. 
	ld (bc),a			;b12b	02 	. 
	nop			;b12c	00 	. 
	ret nc			;b12d	d0 	. 
	nop			;b12e	00 	. 
	and b			;b12f	a0 	. 
	inc b			;b130	04 	. 
	nop			;b131	00 	. 
	and b			;b132	a0 	. 
	nop			;b133	00 	. 
	ret p			;b134	f0 	. 
	inc bc			;b135	03 	. 
	nop			;b136	00 	. 
	nop			;b137	00 	. 
	nop			;b138	00 	. 
	nop			;b139	00 	. 
	ld (bc),a			;b13a	02 	. 
	ld bc,00120h		;b13b	01 20 01 	.   . 
	jr nc,$+4		;b13e	30 02 	0 . 
	ld bc,00150h		;b140	01 50 01 	. P . 
	and b			;b143	a0 	. 
	ld b,000h		;b144	06 00 	. . 
	nop			;b146	00 	. 
	nop			;b147	00 	. 
	nop			;b148	00 	. 
	inc d			;b149	14 	. 
	ld bc,00000h		;b14a	01 00 00 	. . . 
	ret po			;b14d	e0 	. 
	ld (bc),a			;b14e	02 	. 
	nop			;b14f	00 	. 
	ret nc			;b150	d0 	. 
	nop			;b151	00 	. 
	and b			;b152	a0 	. 
	inc b			;b153	04 	. 
	nop			;b154	00 	. 
	and b			;b155	a0 	. 
	nop			;b156	00 	. 
	ret p			;b157	f0 	. 
	inc bc			;b158	03 	. 
	nop			;b159	00 	. 
	nop			;b15a	00 	. 
	nop			;b15b	00 	. 
	nop			;b15c	00 	. 
	ld (bc),a			;b15d	02 	. 
	ld bc,00120h		;b15e	01 20 01 	.   . 
	jr nc,$+4		;b161	30 02 	0 . 
	ld bc,00150h		;b163	01 50 01 	. P . 
	and b			;b166	a0 	. 
	ld b,000h		;b167	06 00 	. . 
	nop			;b169	00 	. 
	nop			;b16a	00 	. 
	nop			;b16b	00 	. 
	inc d			;b16c	14 	. 
	ret p			;b16d	f0 	. 
	djnz lb171h		;b16e	10 01 	. . 
	xor b			;b170	a8 	. 
lb171h:
	ret nz			;b171	c0 	. 
	ld bc,lb179h		;b172	01 79 b1 	. y . 
	nop			;b175	00 	. 
	ld bc,00d00h		;b176	01 00 0d 	. . . 
lb179h:
	ld bc,00000h		;b179	01 00 00 	. . . 
	ret nc			;b17c	d0 	. 
	ld (bc),a			;b17d	02 	. 
	nop			;b17e	00 	. 
	ld (hl),b			;b17f	70 	p 
	nop			;b180	00 	. 
	ret nz			;b181	c0 	. 
	ld b,001h		;b182	06 01 	. . 
	jr nz,lb187h		;b184	20 01 	  . 
	ld d,b			;b186	50 	P 
lb187h:
	inc bc			;b187	03 	. 
	jp po,sub_8003h		;b188	e2 03 80 	. . . 
	add a,b			;b18b	80 	. 
	ld b,0a5h		;b18c	06 a5 	. . 
	or c			;b18e	b1 	. 
	nop			;b18f	00 	. 
	ld bc,00d04h		;b190	01 04 0d 	. . . 
	add a,b			;b193	80 	. 
	and b			;b194	a0 	. 
	ld b,0b5h		;b195	06 b5 	. . 
	or c			;b197	b1 	. 
	nop			;b198	00 	. 
	ld bc,00d03h		;b199	01 03 0d 	. . . 
	add a,b			;b19c	80 	. 
	ret nz			;b19d	c0 	. 
	ld b,0c5h		;b19e	06 c5 	. . 
	or c			;b1a0	b1 	. 
	nop			;b1a1	00 	. 
	ld bc,00d04h		;b1a2	01 04 0d 	. . . 
	and b			;b1a5	a0 	. 
	inc bc			;b1a6	03 	. 
	sbc a,(hl)			;b1a7	9e 	. 
	ld bc,0039dh		;b1a8	01 9d 03 	. . . 
	sbc a,c			;b1ab	99 	. 
	ld bc,0049dh		;b1ac	01 9d 04 	. . . 
	sbc a,e			;b1af	9b 	. 
	call po,sub_9905h		;b1b0	e4 05 99 	. . . 
	ex af,af'			;b1b3	08 	. 
	jp po,0039dh		;b1b4	e2 9d 03 	. . . 
	sbc a,e			;b1b7	9b 	. 
	ld bc,00399h		;b1b8	01 99 03 	. . . 
	sub h			;b1bb	94 	. 
	ld bc,00499h		;b1bc	01 99 04 	. . . 
	sub h			;b1bf	94 	. 
	call po,sub_9405h		;b1c0	e4 05 94 	. . . 
	ex af,af'			;b1c3	08 	. 
	jp po,0038dh		;b1c4	e2 8d 03 	. . . 
	ld bc,00388h		;b1c7	01 88 03 	. . . 
	sub c			;b1ca	91 	. 
	ld bc,00488h		;b1cb	01 88 04 	. . . 
	adc a,l			;b1ce	8d 	. 
	call po,09106h		;b1cf	e4 06 91 	. . . 
	ex af,af'			;b1d2	08 	. 
	jp po,l8004h		;b1d3	e2 04 80 	. . . 
	add a,b			;b1d6	80 	. 
	ld b,0b9h		;b1d7	06 b9 	. . 
	sbc a,a			;b1d9	9f 	. 
	call pe,00401h		;b1da	ec 01 04 	. . . 
	dec bc			;b1dd	0b 	. 
	add a,b			;b1de	80 	. 
	and b			;b1df	a0 	. 
	ld b,087h		;b1e0	06 87 	. . 
	and b			;b1e2	a0 	. 
	ret m			;b1e3	f8 	. 
	ld bc,00a03h		;b1e4	01 03 0a 	. . . 
	add a,b			;b1e7	80 	. 
	ret nz			;b1e8	c0 	. 
	ld b,05fh		;b1e9	06 5f 	. _ 
	and c			;b1eb	a1 	. 
	call pe,00401h		;b1ec	ec 01 04 	. . . 
	dec bc			;b1ef	0b 	. 
	add a,b			;b1f0	80 	. 
	ret po			;b1f1	e0 	. 
	ld b,02dh		;b1f2	06 2d 	. - 
	and d			;b1f4	a2 	. 
	nop			;b1f5	00 	. 
	nop			;b1f6	00 	. 
	nop			;b1f7	00 	. 
	nop			;b1f8	00 	. 
lb1f9h:
	dec e			;b1f9	1d 	. 
	or d			;b1fa	b2 	. 
	rra			;b1fb	1f 	. 
	or d			;b1fc	b2 	. 
	ld h,0b2h		;b1fd	26 b2 	& . 
	dec hl			;b1ff	2b 	+ 
	or d			;b200	b2 	. 
	inc sp			;b201	33 	3 
	or d			;b202	b2 	. 
	inc a			;b203	3c 	< 
	or d			;b204	b2 	. 
	ld b,h			;b205	44 	D 
	or d			;b206	b2 	. 
	ld c,h			;b207	4c 	L 
	or d			;b208	b2 	. 
	ld d,c			;b209	51 	Q 
	or d			;b20a	b2 	. 
	ld e,b			;b20b	58 	X 
	or d			;b20c	b2 	. 
	ld e,(hl)			;b20d	5e 	^ 
	or d			;b20e	b2 	. 
	ld h,e			;b20f	63 	c 
	or d			;b210	b2 	. 
	ld l,c			;b211	69 	i 
	or d			;b212	b2 	. 
	ld (hl),e			;b213	73 	s 
	or d			;b214	b2 	. 
	ld a,b			;b215	78 	x 
	or d			;b216	b2 	. 
	ld a,d			;b217	7a 	z 
	or d			;b218	b2 	. 
	ld a,h			;b219	7c 	| 
	or d			;b21a	b2 	. 
	add a,e			;b21b	83 	. 
	or d			;b21c	b2 	. 
	rst 38h			;b21d	ff 	. 
	ld (bc),a			;b21e	02 	. 
	rst 38h			;b21f	ff 	. 
	defb 0edh;next byte illegal after ed		;b220	ed 	. 
	call c,0bacbh		;b221	dc cb ba 	. . . 
	xor c			;b224	a9 	. 
	ld (bc),a			;b225	02 	. 
	rst 18h			;b226	df 	. 
	rst 38h			;b227	ff 	. 
	rst 38h			;b228	ff 	. 
	rst 30h			;b229	f7 	. 
	ld (bc),a			;b22a	02 	. 
	cp a			;b22b	bf 	. 
	rst 38h			;b22c	ff 	. 
	defb 0fdh,0cch,0bbh	;illegal sequence		;b22d	fd cc bb 	. . . 
	xor d			;b230	aa 	. 
	cp e			;b231	bb 	. 
	ld (bc),a			;b232	02 	. 
	cp a			;b233	bf 	. 
	rst 38h			;b234	ff 	. 
	defb 0fdh,0cch,0bbh	;illegal sequence		;b235	fd cc bb 	. . . 
	xor d			;b238	aa 	. 
	cp e			;b239	bb 	. 
	inc bc			;b23a	03 	. 
	dec b			;b23b	05 	. 
	rst 18h			;b23c	df 	. 
	rst 38h			;b23d	ff 	. 
	rst 38h			;b23e	ff 	. 
	cp 0ech		;b23f	fe ec 	. . 
	adc a,003h		;b241	ce 03 	. . 
	rlca			;b243	07 	. 
	rst 38h			;b244	ff 	. 
	xor 0ddh		;b245	ee dd 	. . 
	call z,0aabbh		;b247	cc bb aa 	. . . 
	sbc a,c			;b24a	99 	. 
	ld bc,lbc9ah		;b24b	01 9a bc 	. . . 
	sbc a,0efh		;b24e	de ef 	. . 
	ld bc,0f0fbh		;b250	01 fb f0 	. . . 
	add a,h			;b253	84 	. 
	call m,sub_a1f1h		;b254	fc f1 a1 	. . . 
	nop			;b257	00 	. 
	cp 0dch		;b258	fe dc 	. . 
	cp d			;b25a	ba 	. 
	sbc a,b			;b25b	98 	. 
	halt			;b25c	76 	v 
	ld bc,0ddfdh		;b25d	01 fd dd 	. . . 
	call c,001cch		;b260	dc cc 01 	. . . 
	defb 0fdh,0cbh,0a9h,087h	;res 0,(iy-057h) & ld a,(iy-057h)		;b263	fd cb a9 87 	. . . . 
	ld h,l			;b267	65 	e 
	ld bc,0cbfdh		;b268	01 fd cb 	. . . 
	xor c			;b26b	a9 	. 
	add a,a			;b26c	87 	. 
	ld h,l			;b26d	65 	e 
	nop			;b26e	00 	. 
	ld d,h			;b26f	54 	T 
	nop			;b270	00 	. 
	inc sp			;b271	33 	3 
	ld bc,la7fdh		;b272	01 fd a7 	. . . 
	ld d,h			;b275	54 	T 
	ld (0fb02h),a		;b276	32 02 fb 	2 . . 
	nop			;b279	00 	. 
	rst 30h			;b27a	f7 	. 
	ld (bc),a			;b27b	02 	. 
	call z,sub_a9bah		;b27c	cc ba a9 	. . . 
	add a,a			;b27f	87 	. 
	halt			;b280	76 	v 
	ld d,e			;b281	53 	S 
	ld bc,0a9cah		;b282	01 ca a9 	. . . 
	adc a,b			;b285	88 	. 
	halt			;b286	76 	v 
	ld h,l			;b287	65 	e 
	ld b,e			;b288	43 	C 
	ld bc,lb2a8h		;b289	01 a8 b2 	. . . 
	or e			;b28c	b3 	. 
	or d			;b28d	b2 	. 
	pop bc			;b28e	c1 	. 
	or d			;b28f	b2 	. 
	ret nc			;b290	d0 	. 
	or d			;b291	b2 	. 
	in a,(0b2h)		;b292	db b2 	. . 
	sbc a,0b2h		;b294	de b2 	. . 
	jp po,0e7b2h		;b296	e2 b2 e7 	. . . 
	or d			;b299	b2 	. 
	jp pe,0edb2h		;b29a	ea b2 ed 	. . . 
	or d			;b29d	b2 	. 
	ret p			;b29e	f0 	. 
	or d			;b29f	b2 	. 
	call p,0f7b2h		;b2a0	f4 b2 f7 	. . . 
	or d			;b2a3	b2 	. 
	ei			;b2a4	fb 	. 
	or d			;b2a5	b2 	. 
	rst 38h			;b2a6	ff 	. 
	or d			;b2a7	b2 	. 
lb2a8h:
	xor 0eeh		;b2a8	ee ee 	. . 
	xor 0eeh		;b2aa	ee ee 	. . 
	xor 0ffh		;b2ac	ee ff 	. . 
	xor 0ddh		;b2ae	ee dd 	. . 
	rst 28h			;b2b0	ef 	. 
	cp 0ddh		;b2b1	fe dd 	. . 
	rst 28h			;b2b3	ef 	. 
	cp 0dch		;b2b4	fe dc 	. . 
	call 0feefh		;b2b6	cd ef fe 	. . . 
	call c,0decdh		;b2b9	dc cd de 	. . . 
sub_b2bch:
	rst 38h			;b2bc	ff 	. 
	cp 0dch		;b2bd	fe dc 	. . 
	cp h			;b2bf	bc 	. 
	sbc a,0feh		;b2c0	de fe 	. . 
	in a,(0abh)		;b2c2	db ab 	. . 
	call 0edefh		;b2c4	cd ef ed 	. . . 
	res 5,e		;b2c7	cb ab 	. . 
	call 0eeefh		;b2c9	cd ef ee 	. . . 
	ld bc,0eeffh		;b2cc	01 ff ee 	. . . 
	nop			;b2cf	00 	. 
	rst 38h			;b2d0	ff 	. 
	xor 0ffh		;b2d1	ee ff 	. . 
	rst 38h			;b2d3	ff 	. 
	xor 0ddh		;b2d4	ee dd 	. . 
	call z,0eeddh		;b2d6	cc dd ee 	. . . 
	inc bc			;b2d9	03 	. 
	rlca			;b2da	07 	. 
	cp 0deh		;b2db	fe de 	. . 
	nop			;b2dd	00 	. 
	rst 38h			;b2de	ff 	. 
	defb 0edh;next byte illegal after ed		;b2df	ed 	. 
	rst 28h			;b2e0	ef 	. 
	nop			;b2e1	00 	. 
	rst 38h			;b2e2	ff 	. 
	cp 0deh		;b2e3	fe de 	. . 
	rrca			;b2e5	0f 	. 
	nop			;b2e6	00 	. 
	rst 28h			;b2e7	ef 	. 
	rst 38h			;b2e8	ff 	. 
	ld bc,0ffeeh		;b2e9	01 ee ff 	. . . 
	ld bc,0ffdeh		;b2ec	01 de ff 	. . . 
	ld bc,0eeddh		;b2ef	01 dd ee 	. . . 
	rst 38h			;b2f2	ff 	. 
	ld bc,0efcdh		;b2f3	01 cd ef 	. . . 
	ld bc,0decch		;b2f6	01 cc de 	. . . 
	rst 28h			;b2f9	ef 	. 
	ld bc,0cdabh		;b2fa	01 ab cd 	. . . 
	rst 28h			;b2fd	ef 	. 
	ld bc,0cbfdh		;b2fe	01 fd cb 	. . . 
	cp h			;b301	bc 	. 
	rst 18h			;b302	df 	. 
	nop			;b303	00 	. 
	rst 38h			;b304	ff 	. 
sub_b305h:
	nop			;b305	00 	. 
	nop			;b306	00 	. 
	ld a,(de)			;b307	1a 	. 
	inc b			;b308	04 	. 
	call po,0d5d8h		;b309	e4 d8 d5 	. . . 
	or b			;b30c	b0 	. 
	ret c			;b30d	d8 	. 
	push de			;b30e	d5 	. 
	jp po,0d9dfh		;b30f	e2 df d9 	. . . 
	out (0b0h),a		;b312	d3 b0 	. . 
	pop de			;b314	d1 	. 
	out (0e4h),a		;b315	d3 e4 	. . 
	exx			;b317	d9 	. 
	rst 18h			;b318	df 	. 
	sbc a,0b0h		;b319	de b0 	. . 
	call po,0dbd1h		;b31b	e4 d1 db 	. . . 
	push de			;b31e	d5 	. 
	sbc a,0b0h		;b31f	de b0 	. . 
	jp nc,0fee9h		;b321	d2 e9 fe 	. . . 
	add hl,de			;b324	19 	. 
	inc b			;b325	04 	. 
	pop de			;b326	d1 	. 
	call c,0e8d5h		;b327	dc d5 e8 	. . . 
	or b			;b32a	b0 	. 
	in a,(0d9h)		;b32b	db d9 	. . 
	call nc,sub_b0d4h		;b32d	d4 d4 b0 	. . . 
	jp po,0e3d5h		;b330	e2 d5 e3 	. . . 
	push hl			;b333	e5 	. 
	call c,0d5e4h		;b334	dc e4 d5 	. . . 
	call nc,0d9b0h		;b337	d4 b0 d9 	. . . 
	sbc a,0b0h		;b33a	de b0 	. . 
	call po,0d5d8h		;b33c	e4 d8 d5 	. . . 
	cp 01ch		;b33f	fe 1c 	. . 
	inc b			;b341	04 	. 
	call nc,0e7dfh		;b342	d4 df e7 	. . . 
	sbc a,0d6h		;b345	de d6 	. . 
	pop de			;b347	d1 	. 
	call c,sub_b0dch		;b348	dc dc b0 	. . . 
	rst 18h			;b34b	df 	. 
	sub 0b0h		;b34c	d6 b0 	. . 
	jp c,0ded1h		;b34e	da d1 de 	. . . 
	in a,(0d5h)		;b351	db d5 	. . 
	sbc a,0b0h		;b353	de b0 	. . 
	call po,0d5d8h		;b355	e4 d8 d5 	. . . 
	or b			;b358	b0 	. 
	rst 10h			;b359	d7 	. 
	jp po,0d1d5h		;b35a	e2 d5 d1 	. . . 
	call po,019feh		;b35d	e4 fe 19 	. . . 
	inc b			;b360	04 	. 
	pop de			;b361	d1 	. 
	sbc a,0d4h		;b362	de d4 	. . 
	or b			;b364	b0 	. 
	pop de			;b365	d1 	. 
	or b			;b366	b0 	. 
	jp po,0e4d5h		;b367	e2 d5 e4 	. . . 
	push hl			;b36a	e5 	. 
	jp po,sub_b0dch+2		;b36b	e2 de b0 	. . . 
	rst 18h			;b36e	df 	. 
	sub 0b0h		;b36f	d6 b0 	. . 
	ret po			;b371	e0 	. 
	push de			;b372	d5 	. 
	pop de			;b373	d1 	. 
	out (0d5h),a		;b374	d3 d5 	. . 
	or b			;b376	b0 	. 
	pop de			;b377	d1 	. 
	sbc a,0d4h		;b378	de d4 	. . 
	cp 01ah		;b37a	fe 1a 	. . 
	inc b			;b37c	04 	. 
	call po,0d1e2h		;b37d	e4 e2 d1 	. . . 
	sbc a,0e1h		;b380	de e1 	. . 
	push hl			;b382	e5 	. 
	exx			;b383	d9 	. 
	call c,0e4d9h		;b384	dc d9 e4 	. . . 
	jp (hl)			;b387	e9 	. 
	or b			;b388	b0 	. 
	call po,sub_b0dfh		;b389	e4 df b0 	. . . 
	or d			;b38c	b2 	. 
	jp po,0d4d1h		;b38d	e2 d1 d4 	. . . 
	pop de			;b390	d1 	. 
	ret pe			;b391	e8 	. 
	exx			;b392	d9 	. 
	pop de			;b393	d1 	. 
	sbc a,0beh		;b394	de be 	. . 
	or d			;b396	b2 	. 
	cp 019h		;b397	fe 19 	. . 
	inc b			;b399	04 	. 
	exx			;b39a	d9 	. 
	sbc a,0b0h		;b39b	de b0 	. . 
	pop de			;b39d	d1 	. 
	or b			;b39e	b0 	. 
	call nc,0ead1h		;b39f	d4 d1 ea 	. . . 
	jp pe,0d9dch		;b3a2	ea dc d9 	. . . 
	sbc a,0d7h		;b3a5	de d7 	. . 
	or b			;b3a7	b0 	. 
	out (0dfh),a		;b3a8	d3 df 	. . 
	jp po,0dedfh		;b3aa	e2 df de 	. . . 
	pop de			;b3ad	d1 	. 
	call po,0dfd9h		;b3ae	e4 d9 df 	. . . 
	sbc a,0bch		;b3b1	de bc 	. . 
	cp 01ah		;b3b3	fe 1a 	. . 
	inc b			;b3b5	04 	. 
	or d			;b3b6	b2 	. 
	exx			;b3b7	d9 	. 
	rst 10h			;b3b8	d7 	. 
	push hl			;b3b9	e5 	. 
	call c,sub_b2bch		;b3ba	dc bc b2 	. . . 
	or b			;b3bd	b0 	. 
	ret c			;b3be	d8 	. 
	exx			;b3bf	d9 	. 
	ex (sp),hl			;b3c0	e3 	. 
	or b			;b3c1	b0 	. 
	push de			;b3c2	d5 	. 
	call c,0d5d4h		;b3c3	dc d4 d5 	. . . 
	jp po,0d2b0h		;b3c6	e2 b0 d2 	. . . 
	jp po,0e4dfh		;b3c9	e2 df e4 	. . . 
	ret c			;b3cc	d8 	. 
	push de			;b3cd	d5 	. 
	jp po,0febch		;b3ce	e2 bc fe 	. . . 
	dec e			;b3d1	1d 	. 
	inc b			;b3d2	04 	. 
	jp nc,0d3d5h		;b3d3	d2 d5 d3 	. . . 
	pop de			;b3d6	d1 	. 
	defb 0ddh,0d5h,0b0h	;illegal sequence		;b3d7	dd d5 b0 	. . . 
	call po,0d5d8h		;b3da	e4 d8 d5 	. . . 
	or b			;b3dd	b0 	. 
	in a,(0d9h)		;b3de	db d9 	. . 
	sbc a,0d7h		;b3e0	de d7 	. . 
	or b			;b3e2	b0 	. 
	rst 18h			;b3e3	df 	. 
	sub 0b2h		;b3e4	d6 b2 	. . 
	jp po,0d4d1h		;b3e6	e2 d1 d4 	. . . 
	pop de			;b3e9	d1 	. 
	ret pe			;b3ea	e8 	. 
	exx			;b3eb	d9 	. 
	pop de			;b3ec	d1 	. 
	sbc a,0beh		;b3ed	de be 	. . 
	or d			;b3ef	b2 	. 
	cp 01ch		;b3f0	fe 1c 	. . 
	inc b			;b3f2	04 	. 
	call po,0d5d8h		;b3f3	e4 d8 d5 	. . . 
	or b			;b3f6	b0 	. 
	out (0d9h),a		;b3f7	d3 d9 	. . 
	call po,0ead9h		;b3f9	e4 d9 ea 	. . . 
	push de			;b3fc	d5 	. 
	sbc a,0e3h		;b3fd	de e3 	. . 
	or b			;b3ff	b0 	. 
	rst 20h			;b400	e7 	. 
	ret c			;b401	d8 	. 
	rst 18h			;b402	df 	. 
	or b			;b403	b0 	. 
	rst 20h			;b404	e7 	. 
	push de			;b405	d5 	. 
	jp po,lb0d5h		;b406	e2 d5 b0 	. . . 
	call po,0e2e5h		;b409	e4 e5 e2 	. . . 
	sbc a,0d5h		;b40c	de d5 	. . 
	call nc,01bfeh		;b40e	d4 fe 1b 	. . . 
	inc b			;b411	04 	. 
	exx			;b412	d9 	. 
	sbc a,0e4h		;b413	de e4 	. . 
	rst 18h			;b415	df 	. 
	or b			;b416	b0 	. 
	ex (sp),hl			;b417	e3 	. 
	call po,0dedfh		;b418	e4 df de 	. . . 
	push de			;b41b	d5 	. 
	or b			;b41c	b0 	. 
	jp po,0e6d5h		;b41d	e2 d5 e6 	. . . 
	push de			;b420	d5 	. 
	jp po,0d5e4h		;b421	e2 e4 d5 	. . . 
	call nc,0d2b0h		;b424	d4 b0 d2 	. . . 
	pop de			;b427	d1 	. 
	out (0dbh),a		;b428	d3 db 	. . 
	or b			;b42a	b0 	. 
	call po,0fedfh		;b42b	e4 df fe 	. . . 
	jr $+6		;b42e	18 04 	. . 
	ret c			;b430	d8 	. 
	push hl			;b431	e5 	. 
	defb 0ddh,0d1h,0deh	;illegal sequence		;b432	dd d1 de 	. . . 
	or b			;b435	b0 	. 
	jp nc,0d9d5h		;b436	d2 d5 d9 	. . . 
	sbc a,0d7h		;b439	de d7 	. . 
	ex (sp),hl			;b43b	e3 	. 
	or b			;b43c	b0 	. 
	call po,0e2d8h		;b43d	e4 d8 e2 	. . . 
	rst 18h			;b440	df 	. 
	push hl			;b441	e5 	. 
	rst 10h			;b442	d7 	. 
	ret c			;b443	d8 	. 
	or b			;b444	b0 	. 
	call po,0d5d8h		;b445	e4 d8 d5 	. . . 
	cp 015h		;b448	fe 15 	. . 
	inc b			;b44a	04 	. 
	ret po			;b44b	e0 	. 
	rst 18h			;b44c	df 	. 
	rst 20h			;b44d	e7 	. 
	push de			;b44e	d5 	. 
	jp po,0dfb0h		;b44f	e2 b0 df 	. . . 
	sub 0b0h		;b452	d6 b0 	. . 
	call po,0d5d8h		;b454	e4 d8 d5 	. . . 
	or b			;b457	b0 	. 
	or d			;b458	b2 	. 
	out (0e2h),a		;b459	d3 e2 	. . 
	rst 18h			;b45b	df 	. 
	rst 20h			;b45c	e7 	. 
	sbc a,0beh		;b45d	de be 	. . 
	or d			;b45f	b2 	. 
	cp 01ah		;b460	fe 1a 	. . 
	inc b			;b462	04 	. 
	pop de			;b463	d1 	. 
	call c,0e8d5h		;b464	dc d5 e8 	. . . 
	or b			;b467	b0 	. 
	rst 20h			;b468	e7 	. 
	pop de			;b469	d1 	. 
	ex (sp),hl			;b46a	e3 	. 
	or b			;b46b	b0 	. 
	rst 18h			;b46c	df 	. 
	and 0d5h		;b46d	e6 d5 	. . 
	jp po,0dfdah		;b46f	e2 da df 	. . . 
	jp (hl)			;b472	e9 	. 
	push de			;b473	d5 	. 
	call nc,0e4b0h		;b474	d4 b0 e4 	. . . 
	ret c			;b477	d8 	. 
	pop de			;b478	d1 	. 
	call po,0d8b0h		;b479	e4 b0 d8 	. . . 
	push de			;b47c	d5 	. 
	cp 01bh		;b47d	fe 1b 	. . 
	inc b			;b47f	04 	. 
	rst 20h			;b480	e7 	. 
	pop de			;b481	d1 	. 
	ex (sp),hl			;b482	e3 	. 
	or b			;b483	b0 	. 
	pop de			;b484	d1 	. 
	jp nc,0d5dch		;b485	d2 dc d5 	. . . 
	or b			;b488	b0 	. 
	call po,sub_b0dfh		;b489	e4 df b0 	. . . 
	push hl			;b48c	e5 	. 
	ex (sp),hl			;b48d	e3 	. 
	push de			;b48e	d5 	. 
	or b			;b48f	b0 	. 
	ret c			;b490	d8 	. 
	exx			;b491	d9 	. 
	ex (sp),hl			;b492	e3 	. 
	or b			;b493	b0 	. 
	defb 0ddh,0d1h,0e2h	;illegal sequence		;b494	dd d1 e2 	. . . 
	call po,0d1d9h		;b497	e4 d9 d1 	. . . 
	call c,01afeh		;b49a	dc fe 1a 	. . . 
	inc b			;b49d	04 	. 
	pop de			;b49e	d1 	. 
	jp po,lb0e4h		;b49f	e2 e4 b0 	. . . 
	ex (sp),hl			;b4a2	e3 	. 
	in a,(0d9h)		;b4a3	db d9 	. . 
	call c,0e3dch		;b4a5	dc dc e3 	. . . 
	or b			;b4a8	b0 	. 
	sub 0dfh		;b4a9	d6 df 	. . 
	jp po,0e4b0h		;b4ab	e2 b0 e4 	. . . 
	ret c			;b4ae	d8 	. 
	push de			;b4af	d5 	. 
	or b			;b4b0	b0 	. 
	rst 10h			;b4b1	d7 	. 
	rst 18h			;b4b2	df 	. 
	rst 18h			;b4b3	df 	. 
	call nc,0dfb0h		;b4b4	d4 b0 df 	. . . 
	sub 0feh		;b4b7	d6 fe 	. . 
	dec c			;b4b9	0d 	. 
	inc b			;b4ba	04 	. 
	call po,0d5d8h		;b4bb	e4 d8 d5 	. . . 
	or b			;b4be	b0 	. 
	out (0d9h),a		;b4bf	d3 d9 	. . 
	call po,0ead9h		;b4c1	e4 d9 ea 	. . . 
	push de			;b4c4	d5 	. 
	sbc a,0e3h		;b4c5	de e3 	. . 
	cp (hl)			;b4c7	be 	. 
	cp 01bh		;b4c8	fe 1b 	. . 
	inc b			;b4ca	04 	. 
	ex (sp),hl			;b4cb	e3 	. 
	rst 18h			;b4cc	df 	. 
	defb 0ddh,0d5h,0b0h	;illegal sequence		;b4cd	dd d5 b0 	. . . 
	call nc,0e5dfh		;b4d0	d4 df e5 	. . . 
	jp nc,lb0e4h		;b4d3	d2 e4 b0 	. . . 
	ex (sp),hl			;b4d6	e3 	. 
	call po,0dcd9h		;b4d7	e4 d9 dc 	. . . 
	call c,0dcb0h		;b4da	dc b0 dc 	. . . 
	exx			;b4dd	d9 	. 
	sbc a,0d7h		;b4de	de d7 	. . 
	push de			;b4e0	d5 	. 
	jp po,lb0e3h		;b4e1	e2 e3 b0 	. . . 
	exx			;b4e4	d9 	. 
	sbc a,0feh		;b4e5	de fe 	. . 
	add hl,de			;b4e7	19 	. 
	inc b			;b4e8	04 	. 
	ret c			;b4e9	d8 	. 
	exx			;b4ea	d9 	. 
	ex (sp),hl			;b4eb	e3 	. 
	or b			;b4ec	b0 	. 
	defb 0ddh,0d9h,0deh	;illegal sequence		;b4ed	dd d9 de 	. . . 
	call nc,0d1b0h		;b4f0	d4 b0 d1 	. . . 
	ex (sp),hl			;b4f3	e3 	. 
	or b			;b4f4	b0 	. 
	call po,sub_b0dfh		;b4f5	e4 df b0 	. . . 
	rst 20h			;b4f8	e7 	. 
	ret c			;b4f9	d8 	. 
	push de			;b4fa	d5 	. 
	call po,0d5d8h		;b4fb	e4 d8 d5 	. . . 
	jp po,0dfb0h		;b4fe	e2 b0 df 	. . . 
	jp po,017feh		;b501	e2 fe 17 	. . . 
	inc b			;b504	04 	. 
	sbc a,0dfh		;b505	de df 	. . 
	call po,0d1b0h		;b507	e4 b0 d1 	. . . 
	call c,sub_b0dch		;b50a	dc dc b0 	. . . 
	rst 18h			;b50d	df 	. 
	sub 0b0h		;b50e	d6 b0 	. . 
	call po,0d5d8h		;b510	e4 d8 d5 	. . . 
	or b			;b513	b0 	. 
	ex (sp),hl			;b514	e3 	. 
	exx			;b515	d9 	. 
	sbc a,0d9h		;b516	de d9 	. . 
	ex (sp),hl			;b518	e3 	. 
	call po,0e2d5h		;b519	e4 d5 e2 	. . . 
	cp 01ah		;b51c	fe 1a 	. . 
	inc b			;b51e	04 	. 
	push de			;b51f	d5 	. 
	sbc a,0d5h		;b520	de d5 	. . 
	jp (ix)		;b522	dd e9 	. . 
	or b			;b524	b0 	. 
	sub 0dfh		;b525	d6 df 	. . 
	jp po,0d5d3h		;b527	e2 d3 d5 	. . . 
	ex (sp),hl			;b52a	e3 	. 
	or b			;b52b	b0 	. 
	rst 20h			;b52c	e7 	. 
	push de			;b52d	d5 	. 
	jp po,lb0d5h		;b52e	e2 d5 b0 	. . . 
	pop de			;b531	d1 	. 
	out (0e4h),a		;b532	d3 e4 	. . 
	push hl			;b534	e5 	. 
	pop de			;b535	d1 	. 
	call c,0e9dch		;b536	dc dc e9 	. . . 
	cp 00ah		;b539	fe 0a 	. . 
	inc b			;b53b	04 	. 
	call nc,0e3d5h		;b53c	d4 d5 e3 	. . . 
	call po,0dfe2h		;b53f	e4 e2 df 	. . . 
	jp (hl)			;b542	e9 	. 
	push de			;b543	d5 	. 
	call nc,0febeh		;b544	d4 be fe 	. . . 
	ld a,(de)			;b547	1a 	. 
	inc b			;b548	04 	. 
	pop de			;b549	d1 	. 
	call nc,0d5d4h		;b54a	d4 d4 d5 	. . . 
	call nc,0e4b0h		;b54d	d4 b0 e4 	. . . 
	rst 18h			;b550	df 	. 
	or b			;b551	b0 	. 
	call po,0d9d8h		;b552	e4 d8 d9 	. . . 
	ex (sp),hl			;b555	e3 	. 
	or b			;b556	b0 	. 
	sub 0d5h		;b557	d6 d5 	. . 
	pop de			;b559	d1 	. 
	jp po,lb0bch		;b55a	e2 bc b0 	. . . 
	exx			;b55d	d9 	. 
	ex (sp),hl			;b55e	e3 	. 
	or b			;b55f	b0 	. 
	call po,0d5d8h		;b560	e4 d8 d5 	. . . 
	cp 01bh		;b563	fe 1b 	. . 
	inc b			;b565	04 	. 
	push hl			;b566	e5 	. 
	sbc a,0d5h		;b567	de d5 	. . 
	pop de			;b569	d1 	. 
	ex (sp),hl			;b56a	e3 	. 
	exx			;b56b	d9 	. 
	sbc a,0d5h		;b56c	de d5 	. . 
	ex (sp),hl			;b56e	e3 	. 
	ex (sp),hl			;b56f	e3 	. 
	or b			;b570	b0 	. 
	ret c			;b571	d8 	. 
	push de			;b572	d5 	. 
	or b			;b573	b0 	. 
	sub 0d5h		;b574	d6 d5 	. . 
	push de			;b576	d5 	. 
	call c,lb0e3h		;b577	dc e3 b0 	. . . 
	jp nc,0d3d5h		;b57a	d2 d5 d3 	. . . 
	pop de			;b57d	d1 	. 
	push hl			;b57e	e5 	. 
	ex (sp),hl			;b57f	e3 	. 
	push de			;b580	d5 	. 
	cp 01bh		;b581	fe 1b 	. . 
	inc b			;b583	04 	. 
	rst 18h			;b584	df 	. 
	sub 0b0h		;b585	d6 b0 	. . 
	call po,0d5d8h		;b587	e4 d8 d5 	. . . 
	or b			;b58a	b0 	. 
	sub 0d1h		;b58b	d6 d1 	. . 
	out (0e4h),a		;b58d	d3 e4 	. . 
	or b			;b58f	b0 	. 
	call po,0d1d8h		;b590	e4 d8 d1 	. . . 
	call po,0e4b0h		;b593	e4 b0 e4 	. . . 
	ret c			;b596	d8 	. 
	push de			;b597	d5 	. 
	or b			;b598	b0 	. 
	rst 20h			;b599	e7 	. 
	ret c			;b59a	d8 	. 
	push de			;b59b	d5 	. 
	jp po,lbdd5h		;b59c	e2 d5 bd 	. . . 
	cp 01ah		;b59f	fe 1a 	. . 
	inc b			;b5a1	04 	. 
	pop de			;b5a2	d1 	. 
	jp nc,0e5dfh		;b5a3	d2 df e5 	. . . 
	call po,lb0e3h		;b5a6	e4 e3 b0 	. . . 
	rst 18h			;b5a9	df 	. 
	sub 0b0h		;b5aa	d6 b0 	. . 
	ret c			;b5ac	d8 	. 
	exx			;b5ad	d9 	. 
	ex (sp),hl			;b5ae	e3 	. 
	or b			;b5af	b0 	. 
	sub 0d1h		;b5b0	d6 d1 	. . 
	call po,0d5d8h		;b5b2	e4 d8 d5 	. . . 
	jp po,lb0bch		;b5b5	e2 bc b0 	. . . 
	in a,(0d9h)		;b5b8	db d9 	. . 
	sbc a,0d7h		;b5ba	de d7 	. . 
	cp 019h		;b5bc	fe 19 	. . 
	inc b			;b5be	04 	. 
	ex (sp),hl			;b5bf	e3 	. 
	pop de			;b5c0	d1 	. 
	sbc a,0d4h		;b5c1	de d4 	. . 
	push de			;b5c3	d5 	. 
	jp po,lb0bch		;b5c4	e2 bc b0 	. . . 
	exx			;b5c7	d9 	. 
	ex (sp),hl			;b5c8	e3 	. 
	or b			;b5c9	b0 	. 
	ex (sp),hl			;b5ca	e3 	. 
	call po,0dcd9h		;b5cb	e4 d9 dc 	. . . 
	call c,0e5b0h		;b5ce	dc b0 e5 	. . . 
	sbc a,0dbh		;b5d1	de db 	. . 
	sbc a,0dfh		;b5d3	de df 	. . 
	rst 20h			;b5d5	e7 	. 
	sbc a,0beh		;b5d6	de be 	. . 
	cp 0feh		;b5d8	fe fe 	. . 
	cp 0feh		;b5da	fe fe 	. . 
	cp 0feh		;b5dc	fe fe 	. . 
	cp 0feh		;b5de	fe fe 	. . 
	cp 0feh		;b5e0	fe fe 	. . 
	cp 010h		;b5e2	fe 10 	. . 
	inc b			;b5e4	04 	. 
	or b			;b5e5	b0 	. 
	or b			;b5e6	b0 	. 
	or b			;b5e7	b0 	. 
	or b			;b5e8	b0 	. 
	or b			;b5e9	b0 	. 
	or b			;b5ea	b0 	. 
	or b			;b5eb	b0 	. 
	or b			;b5ec	b0 	. 
	or b			;b5ed	b0 	. 
	call po,0d5d8h		;b5ee	e4 d8 d5 	. . . 
	or b			;b5f1	b0 	. 
	push de			;b5f2	d5 	. 
	sbc a,0d4h		;b5f3	de d4 	. . 
	cp 0feh		;b5f5	fe fe 	. . 
	cp 0feh		;b5f7	fe fe 	. . 
	cp 0feh		;b5f9	fe fe 	. . 
	cp 0feh		;b5fb	fe fe 	. . 
	cp 0feh		;b5fd	fe fe 	. . 
	cp 0feh		;b5ff	fe fe 	. . 
	cp 0ffh		;b601	fe ff 	. . 
	nop			;b603	00 	. 
	ld h,0b6h		;b604	26 b6 	& . 
	ld a,0b6h		;b606	3e b6 	> . 
	ld h,d			;b608	62 	b 
	or (hl)			;b609	b6 	. 
	ld a,b			;b60a	78 	x 
	or (hl)			;b60b	b6 	. 
	add a,d			;b60c	82 	. 
	or (hl)			;b60d	b6 	. 
	xor d			;b60e	aa 	. 
	or (hl)			;b60f	b6 	. 
	cp h			;b610	bc 	. 
	or (hl)			;b611	b6 	. 
	adc a,0b6h		;b612	ce b6 	. . 
	and 0b6h		;b614	e6 b6 	. . 
	ld c,0b7h		;b616	0e b7 	. . 
	inc l			;b618	2c 	, 
	or a			;b619	b7 	. 
	ld d,h			;b61a	54 	T 
	or a			;b61b	b7 	. 
	ld e,d			;b61c	5a 	Z 
	or a			;b61d	b7 	. 
	ld l,d			;b61e	6a 	j 
	or a			;b61f	b7 	. 
	ld l,(hl)			;b620	6e 	n 
	or a			;b621	b7 	. 
	add a,h			;b622	84 	. 
	or a			;b623	b7 	. 
	ret c			;b624	d8 	. 
	or a			;b625	b7 	. 
	call pe,0edb7h		;b626	ec b7 ed 	. . . 
	or a			;b629	b7 	. 
	jp p,0fbb7h		;b62a	f2 b7 fb 	. . . 
	or a			;b62d	b7 	. 
	inc b			;b62e	04 	. 
	cp b			;b62f	b8 	. 
	dec c			;b630	0d 	. 
	cp b			;b631	b8 	. 
	ld (de),a			;b632	12 	. 
	cp b			;b633	b8 	. 
	dec de			;b634	1b 	. 
	cp b			;b635	b8 	. 
	inc h			;b636	24 	$ 
	cp b			;b637	b8 	. 
	dec h			;b638	25 	% 
	cp b			;b639	b8 	. 
	ld (03bb8h),a		;b63a	32 b8 3b 	2 . ; 
	cp b			;b63d	b8 	. 
	ld c,l			;b63e	4d 	M 
	cp b			;b63f	b8 	. 
	ld c,(hl)			;b640	4e 	N 
	cp b			;b641	b8 	. 
	ld d,e			;b642	53 	S 
	cp b			;b643	b8 	. 
	ld e,h			;b644	5c 	\ 
	cp b			;b645	b8 	. 
	ld l,c			;b646	69 	i 
	cp b			;b647	b8 	. 
	halt			;b648	76 	v 
	cp b			;b649	b8 	. 
	ld a,e			;b64a	7b 	{ 
	cp b			;b64b	b8 	. 
	add a,h			;b64c	84 	. 
	cp b			;b64d	b8 	. 
	sub c			;b64e	91 	. 
	cp b			;b64f	b8 	. 
	sbc a,(hl)			;b650	9e 	. 
	cp b			;b651	b8 	. 
	xor e			;b652	ab 	. 
	cp b			;b653	b8 	. 
	or h			;b654	b4 	. 
	cp b			;b655	b8 	. 
	cp l			;b656	bd 	. 
	cp b			;b657	b8 	. 
	add a,0b8h		;b658	c6 b8 	. . 
	rst 8			;b65a	cf 	. 
	cp b			;b65b	b8 	. 
	call c,0e5b8h		;b65c	dc b8 e5 	. . . 
	cp b			;b65f	b8 	. 
	jp pe,0f0b8h		;b660	ea b8 f0 	. . . 
	cp b			;b663	b8 	. 
	pop af			;b664	f1 	. 
	cp b			;b665	b8 	. 
	call p,001b8h		;b666	f4 b8 01 	. . . 
	cp c			;b669	b9 	. 
	ld (bc),a			;b66a	02 	. 
	cp c			;b66b	b9 	. 
	dec b			;b66c	05 	. 
	cp c			;b66d	b9 	. 
	inc de			;b66e	13 	. 
	cp c			;b66f	b9 	. 
	inc e			;b670	1c 	. 
	cp c			;b671	b9 	. 
	ld l,0b9h		;b672	2e b9 	. . 
	cpl			;b674	2f 	/ 
	cp c			;b675	b9 	. 
	ld e,l			;b676	5d 	] 
	cp c			;b677	b9 	. 
	ld (hl),e			;b678	73 	s 
	cp c			;b679	b9 	. 
	ld (hl),h			;b67a	74 	t 
	cp c			;b67b	b9 	. 
	ld a,c			;b67c	79 	y 
	cp c			;b67d	b9 	. 
	ld a,(hl)			;b67e	7e 	~ 
	cp c			;b67f	b9 	. 
	adc a,e			;b680	8b 	. 
	cp c			;b681	b9 	. 
	sub l			;b682	95 	. 
	cp c			;b683	b9 	. 
	sbc a,(hl)			;b684	9e 	. 
	cp c			;b685	b9 	. 
	and a			;b686	a7 	. 
	cp c			;b687	b9 	. 
	or b			;b688	b0 	. 
	cp c			;b689	b9 	. 
	sub l			;b68a	95 	. 
	cp c			;b68b	b9 	. 
	sbc a,(hl)			;b68c	9e 	. 
	cp c			;b68d	b9 	. 
	and a			;b68e	a7 	. 
	cp c			;b68f	b9 	. 
	or b			;b690	b0 	. 
	cp c			;b691	b9 	. 
	sub l			;b692	95 	. 
	cp c			;b693	b9 	. 
	sbc a,(hl)			;b694	9e 	. 
	cp c			;b695	b9 	. 
	and a			;b696	a7 	. 
	cp c			;b697	b9 	. 
	or b			;b698	b0 	. 
	cp c			;b699	b9 	. 
	sub l			;b69a	95 	. 
	cp c			;b69b	b9 	. 
	sbc a,(hl)			;b69c	9e 	. 
	cp c			;b69d	b9 	. 
	and a			;b69e	a7 	. 
	cp c			;b69f	b9 	. 
	or l			;b6a0	b5 	. 
	cp c			;b6a1	b9 	. 
	cp e			;b6a2	bb 	. 
	cp c			;b6a3	b9 	. 
	call nz,0d1b9h		;b6a4	c4 b9 d1 	. . . 
	cp c			;b6a7	b9 	. 
	sbc a,0b9h		;b6a8	de b9 	. . 
	ret p			;b6aa	f0 	. 
	cp c			;b6ab	b9 	. 
	pop af			;b6ac	f1 	. 
	cp c			;b6ad	b9 	. 
	or 0b9h		;b6ae	f6 b9 	. . 
	rst 38h			;b6b0	ff 	. 
	cp c			;b6b1	b9 	. 
	inc b			;b6b2	04 	. 
	cp d			;b6b3	ba 	. 
	dec c			;b6b4	0d 	. 
	cp d			;b6b5	ba 	. 
	ld a,(de)			;b6b6	1a 	. 
	cp d			;b6b7	ba 	. 
	daa			;b6b8	27 	' 
	cp d			;b6b9	ba 	. 
	inc (hl)			;b6ba	34 	4 
	cp d			;b6bb	ba 	. 
	dec a			;b6bc	3d 	= 
	cp d			;b6bd	ba 	. 
	ld a,0bah		;b6be	3e ba 	> . 
	ld b,a			;b6c0	47 	G 
	cp d			;b6c1	ba 	. 
	ld d,h			;b6c2	54 	T 
	cp d			;b6c3	ba 	. 
	ld (hl),c			;b6c4	71 	q 
	cp d			;b6c5	ba 	. 
	ld a,d			;b6c6	7a 	z 
	cp d			;b6c7	ba 	. 
	adc a,d			;b6c8	8a 	. 
	cp d			;b6c9	ba 	. 
	adc a,a			;b6ca	8f 	. 
	cp d			;b6cb	ba 	. 
	sbc a,h			;b6cc	9c 	. 
	cp d			;b6cd	ba 	. 
	and d			;b6ce	a2 	. 
	cp d			;b6cf	ba 	. 
	and e			;b6d0	a3 	. 
	cp d			;b6d1	ba 	. 
	xor b			;b6d2	a8 	. 
	cp d			;b6d3	ba 	. 
	xor l			;b6d4	ad 	. 
	cp d			;b6d5	ba 	. 
	or d			;b6d6	b2 	. 
	cp d			;b6d7	ba 	. 
	or a			;b6d8	b7 	. 
	cp d			;b6d9	ba 	. 
	ret nz			;b6da	c0 	. 
	cp d			;b6db	ba 	. 
	ret			;b6dc	c9 	. 
	cp d			;b6dd	ba 	. 
	jp z,0cfbah		;b6de	ca ba cf 	. . . 
	cp d			;b6e1	ba 	. 
	call nc,0d9bah		;b6e2	d4 ba d9 	. . . 
	cp d			;b6e5	ba 	. 
	jp po,0e3bah		;b6e6	e2 ba e3 	. . . 
	cp d			;b6e9	ba 	. 
	call pe,0f5bah		;b6ea	ec ba f5 	. . . 
	cp d			;b6ed	ba 	. 
	ld (bc),a			;b6ee	02 	. 
lb6efh:
	cp e			;b6ef	bb 	. 
	rlca			;b6f0	07 	. 
	cp e			;b6f1	bb 	. 
	djnz $-67		;b6f2	10 bb 	. . 
	add hl,de			;b6f4	19 	. 
	cp e			;b6f5	bb 	. 
	ld (027bbh),hl		;b6f6	22 bb 27 	" . ' 
	cp e			;b6f9	bb 	. 
	inc l			;b6fa	2c 	, 
	cp e			;b6fb	bb 	. 
	dec (hl)			;b6fc	35 	5 
	cp e			;b6fd	bb 	. 
	ld a,0bbh		;b6fe	3e bb 	> . 
	ld b,e			;b700	43 	C 
	cp e			;b701	bb 	. 
	ld d,b			;b702	50 	P 
	cp e			;b703	bb 	. 
	ld d,l			;b704	55 	U 
	cp e			;b705	bb 	. 
	ld e,e			;b706	5b 	[ 
	cp e			;b707	bb 	. 
	ld l,b			;b708	68 	h 
	cp e			;b709	bb 	. 
	ld l,l			;b70a	6d 	m 
	cp e			;b70b	bb 	. 
	ld a,d			;b70c	7a 	z 
	cp e			;b70d	bb 	. 
	add a,h			;b70e	84 	. 
	cp e			;b70f	bb 	. 
	add a,l			;b710	85 	. 
	cp e			;b711	bb 	. 
	adc a,(hl)			;b712	8e 	. 
	cp e			;b713	bb 	. 
	sub a			;b714	97 	. 
	cp e			;b715	bb 	. 
	xor b			;b716	a8 	. 
	cp e			;b717	bb 	. 
	xor l			;b718	ad 	. 
	cp e			;b719	bb 	. 
	or d			;b71a	b2 	. 
	cp e			;b71b	bb 	. 
	cp a			;b71c	bf 	. 
	cp e			;b71d	bb 	. 
	call z,0d9bbh		;b71e	cc bb d9 	. . . 
	cp e			;b721	bb 	. 
	jp po,0ebbbh		;b722	e2 bb eb 	. . . 
	cp e			;b725	bb 	. 
	call p,005bbh		;b726	f4 bb 05 	. . . 
	cp h			;b729	bc 	. 
	ld d,0bch		;b72a	16 bc 	. . 
	jp c,01bbdh		;b72c	da bd 1b 	. . . 
	cp l			;b72f	bd 	. 
	jr nz,lb6efh		;b730	20 bd 	  . 
	dec l			;b732	2d 	- 
	cp l			;b733	bd 	. 
	ld b,d			;b734	42 	B 
	cp l			;b735	bd 	. 
	jp c,051bdh		;b736	da bd 51 	. . Q 
	cp l			;b739	bd 	. 
	ld e,d			;b73a	5a 	Z 
	cp l			;b73b	bd 	. 
	ld h,e			;b73c	63 	c 
	cp l			;b73d	bd 	. 
	ld (hl),b			;b73e	70 	p 
	cp l			;b73f	bd 	. 
	jp c,075bdh		;b740	da bd 75 	. . u 
	cp l			;b743	bd 	. 
	adc a,d			;b744	8a 	. 
	cp l			;b745	bd 	. 
	sub a			;b746	97 	. 
	cp l			;b747	bd 	. 
	and h			;b748	a4 	. 
	cp l			;b749	bd 	. 
	jp c,0aabdh		;b74a	da bd aa 	. . . 
	cp l			;b74d	bd 	. 
	cp e			;b74e	bb 	. 
	cp l			;b74f	bd 	. 
	ret nz			;b750	c0 	. 
	cp l			;b751	bd 	. 
	ret			;b752	c9 	. 
	cp l			;b753	bd 	. 
	inc e			;b754	1c 	. 
	cp h			;b755	bc 	. 
	dec e			;b756	1d 	. 
	cp h			;b757	bc 	. 
	ld hl,(030bch)		;b758	2a bc 30 	* . 0 
	cp h			;b75b	bc 	. 
	ld a,0bch		;b75c	3e bc 	> . 
	ld c,e			;b75e	4b 	K 
	cp h			;b75f	bc 	. 
	ld h,b			;b760	60 	` 
	cp h			;b761	bc 	. 
	ld l,l			;b762	6d 	m 
	cp h			;b763	bc 	. 
	ld a,(hl)			;b764	7e 	~ 
	cp h			;b765	bc 	. 
	add a,a			;b766	87 	. 
	cp h			;b767	bc 	. 
	sub b			;b768	90 	. 
	cp h			;b769	bc 	. 
	sub c			;b76a	91 	. 
	cp h			;b76b	bc 	. 
	sub d			;b76c	92 	. 
	cp h			;b76d	bc 	. 
	sbc a,h			;b76e	9c 	. 
	cp h			;b76f	bc 	. 
	sbc a,h			;b770	9c 	. 
	cp h			;b771	bc 	. 
	sbc a,l			;b772	9d 	. 
	cp h			;b773	bc 	. 
	and (hl)			;b774	a6 	. 
	cp h			;b775	bc 	. 
	or e			;b776	b3 	. 
	cp h			;b777	bc 	. 
	call nz,0d1bch		;b778	c4 bc d1 	. . . 
	cp h			;b77b	bc 	. 
	sbc a,0bch		;b77c	de bc 	. . 
lb77eh:
	rst 20h			;b77e	e7 	. 
lb77fh:
	cp h			;b77f	bc 	. 
	ret p			;b780	f0 	. 
	cp h			;b781	bc 	. 
	ld sp,hl			;b782	f9 	. 
	cp h			;b783	bc 	. 
	add a,(hl)			;b784	86 	. 
	cp a			;b785	bf 	. 
	add a,(hl)			;b786	86 	. 
lb787h:
	cp a			;b787	bf 	. 
	in a,(0bdh)		;b788	db bd 	. . 
	ret pe			;b78a	e8 	. 
	cp l			;b78b	bd 	. 
	ld a,(bc)			;b78c	0a 	. 
	cp (hl)			;b78d	be 	. 
	ld h,0beh		;b78e	26 be 	& . 
	dec sp			;b790	3b 	; 
	cp (hl)			;b791	be 	. 
	add a,(hl)			;b792	86 	. 
	cp a			;b793	bf 	. 
	ld b,b			;b794	40 	@ 
	cp (hl)			;b795	be 	. 
	ld b,l			;b796	45 	E 
	cp (hl)			;b797	be 	. 
	ld e,b			;b798	58 	X 
	cp (hl)			;b799	be 	. 
	ld l,a			;b79a	6f 	o 
	cp (hl)			;b79b	be 	. 
	add a,e			;b79c	83 	. 
	cp (hl)			;b79d	be 	. 
	sub h			;b79e	94 	. 
	cp (hl)			;b79f	be 	. 
	add a,(hl)			;b7a0	86 	. 
	cp a			;b7a1	bf 	. 
	add a,(hl)			;b7a2	86 	. 
	cp a			;b7a3	bf 	. 
	sbc a,d			;b7a4	9a 	. 
	cp (hl)			;b7a5	be 	. 
	xor a			;b7a6	af 	. 
	cp (hl)			;b7a7	be 	. 
	add a,(hl)			;b7a8	86 	. 
	cp a			;b7a9	bf 	. 
	cp a			;b7aa	bf 	. 
	cp (hl)			;b7ab	be 	. 
	call z,sub_86beh		;b7ac	cc be 86 	. . . 
	cp a			;b7af	bf 	. 
	add a,(hl)			;b7b0	86 	. 
	cp a			;b7b1	bf 	. 
	cp (ix-01ah)		;b7b2	dd be e6 	. . . 
	cp (hl)			;b7b5	be 	. 
	jp m,00bbeh		;b7b6	fa be 0b 	. . . 
lb7b9h:
	cp a			;b7b9	bf 	. 
	add a,(hl)			;b7ba	86 	. 
	cp a			;b7bb	bf 	. 
	add a,(hl)			;b7bc	86 	. 
	cp a			;b7bd	bf 	. 
	jr lb77fh		;b7be	18 bf 	. . 
	dec e			;b7c0	1d 	. 
	cp a			;b7c1	bf 	. 
	add a,(hl)			;b7c2	86 	. 
	cp a			;b7c3	bf 	. 
	ld (033bfh),hl		;b7c4	22 bf 33 	" . 3 
	cp a			;b7c7	bf 	. 
	add a,(hl)			;b7c8	86 	. 
	cp a			;b7c9	bf 	. 
	add a,(hl)			;b7ca	86 	. 
	cp a			;b7cb	bf 	. 
	ccf			;b7cc	3f 	? 
	cp a			;b7cd	bf 	. 
	ld e,c			;b7ce	59 	Y 
	cp a			;b7cf	bf 	. 
	ld h,(hl)			;b7d0	66 	f 
	cp a			;b7d1	bf 	. 
	ld (hl),e			;b7d2	73 	s 
	cp a			;b7d3	bf 	. 
	ld a,b			;b7d4	78 	x 
	cp a			;b7d5	bf 	. 
	ld a,l			;b7d6	7d 	} 
	cp a			;b7d7	bf 	. 
lb7d8h:
	rst 38h			;b7d8	ff 	. 
	cp h			;b7d9	bc 	. 
	nop			;b7da	00 	. 
	cp l			;b7db	bd 	. 
	ld a,(de)			;b7dc	1a 	. 
	cp l			;b7dd	bd 	. 
	ld a,(de)			;b7de	1a 	. 
	cp l			;b7df	bd 	. 
	rst 38h			;b7e0	ff 	. 
	cp h			;b7e1	bc 	. 
	nop			;b7e2	00 	. 
	cp l			;b7e3	bd 	. 
	ld a,(de)			;b7e4	1a 	. 
	cp l			;b7e5	bd 	. 
lb7e6h:
	ld a,(de)			;b7e6	1a 	. 
	cp l			;b7e7	bd 	. 
	ld a,(de)			;b7e8	1a 	. 
	cp l			;b7e9	bd 	. 
	ld a,(de)			;b7ea	1a 	. 
	cp l			;b7eb	bd 	. 
	nop			;b7ec	00 	. 
	ld bc,0782dh		;b7ed	01 2d 78 	. - x 
	ld l,b			;b7f0	68 	h 
	nop			;b7f1	00 	. 
	ld (bc),a			;b7f2	02 	. 
	dec l			;b7f3	2d 	- 
	jr nz,lb77eh		;b7f4	20 88 	  . 
	nop			;b7f6	00 	. 
	dec l			;b7f7	2d 	- 
	sbc a,b			;b7f8	98 	. 
	ld b,b			;b7f9	40 	@ 
	nop			;b7fa	00 	. 
	ld (bc),a			;b7fb	02 	. 
	dec l			;b7fc	2d 	- 
	djnz lb787h		;b7fd	10 88 	. . 
	nop			;b7ff	00 	. 
	dec l			;b800	2d 	- 
	and b			;b801	a0 	. 
	ld h,b			;b802	60 	` 
	nop			;b803	00 	. 
	ld (bc),a			;b804	02 	. 
	dec l			;b805	2d 	- 
	jr nz,lb7d8h		;b806	20 d0 	  . 
	nop			;b808	00 	. 
	dec l			;b809	2d 	- 
	ld (hl),b			;b80a	70 	p 
	adc a,b			;b80b	88 	. 
	nop			;b80c	00 	. 
	ld bc,0402dh		;b80d	01 2d 40 	. - @ 
	ld d,b			;b810	50 	P 
	nop			;b811	00 	. 
	ld (bc),a			;b812	02 	. 
	dec l			;b813	2d 	- 
	jr nz,lb7e6h		;b814	20 d0 	  . 
	nop			;b816	00 	. 
	dec l			;b817	2d 	- 
	sub b			;b818	90 	. 
	jr nc,lb81bh		;b819	30 00 	0 . 
lb81bh:
	ld (bc),a			;b81b	02 	. 
	dec l			;b81c	2d 	- 
	ld (hl),b			;b81d	70 	p 
	jr z,lb820h		;b81e	28 00 	( . 
lb820h:
	dec l			;b820	2d 	- 
	sbc a,b			;b821	98 	. 
	or b			;b822	b0 	. 
	nop			;b823	00 	. 
	nop			;b824	00 	. 
	inc bc			;b825	03 	. 
	jr nc,lb890h		;b826	30 68 	0 h 
	jr c,lb82ah		;b828	38 00 	8 . 
lb82ah:
	jr nc,lb87ch		;b82a	30 50 	0 P 
	add a,b			;b82c	80 	. 
	nop			;b82d	00 	. 
	jr nc,lb8a8h		;b82e	30 78 	0 x 
	ret po			;b830	e0 	. 
	nop			;b831	00 	. 
	ld (bc),a			;b832	02 	. 
	jr nc,lb865h		;b833	30 30 	0 0 
	and b			;b835	a0 	. 
	nop			;b836	00 	. 
	jr nc,lb7b9h		;b837	30 80 	0 . 
	sub b			;b839	90 	. 
	nop			;b83a	00 	. 
	add a,h			;b83b	84 	. 
	ld b,h			;b83c	44 	D 
	jr nc,$-30		;b83d	30 e0 	0 . 
	nop			;b83f	00 	. 
	inc bc			;b840	03 	. 
	ld l,028h		;b841	2e 28 	. ( 
	and b			;b843	a0 	. 
	nop			;b844	00 	. 
	jr nc,lb8afh		;b845	30 68 	0 h 
	add a,b			;b847	80 	. 
	nop			;b848	00 	. 
	inc hl			;b849	23 	# 
	add a,b			;b84a	80 	. 
	jr nc,lb84dh		;b84b	30 00 	0 . 
lb84dh:
	nop			;b84d	00 	. 
	ld bc,l903eh		;b84e	01 3e 90 	. > . 
	or b			;b851	b0 	. 
	nop			;b852	00 	. 
	ld (bc),a			;b853	02 	. 
	ld a,090h		;b854	3e 90 	> . 
	ld (hl),b			;b856	70 	p 
	nop			;b857	00 	. 
	ld a,090h		;b858	3e 90 	> . 
	ret nc			;b85a	d0 	. 
	nop			;b85b	00 	. 
	inc bc			;b85c	03 	. 
	cpl			;b85d	2f 	/ 
	ld (hl),b			;b85e	70 	p 
	ld b,b			;b85f	40 	@ 
	nop			;b860	00 	. 
	cpl			;b861	2f 	/ 
	ld b,b			;b862	40 	@ 
	ld a,b			;b863	78 	x 
	nop			;b864	00 	. 
lb865h:
	cpl			;b865	2f 	/ 
	ld (hl),b			;b866	70 	p 
	or b			;b867	b0 	. 
	nop			;b868	00 	. 
	inc bc			;b869	03 	. 
	cpl			;b86a	2f 	/ 
	ld (hl),b			;b86b	70 	p 
	ld b,b			;b86c	40 	@ 
	nop			;b86d	00 	. 
	cpl			;b86e	2f 	/ 
	ld b,b			;b86f	40 	@ 
	ld a,b			;b870	78 	x 
	nop			;b871	00 	. 
	cpl			;b872	2f 	/ 
	ld (hl),b			;b873	70 	p 
	or b			;b874	b0 	. 
	nop			;b875	00 	. 
	ld bc,l903eh		;b876	01 3e 90 	. > . 
	ld h,b			;b879	60 	` 
	nop			;b87a	00 	. 
	ld (bc),a			;b87b	02 	. 
lb87ch:
	ld a,090h		;b87c	3e 90 	> . 
	ld b,b			;b87e	40 	@ 
	nop			;b87f	00 	. 
	ld a,090h		;b880	3e 90 	> . 
	add a,b			;b882	80 	. 
	nop			;b883	00 	. 
	inc bc			;b884	03 	. 
	cpl			;b885	2f 	/ 
	ld (hl),b			;b886	70 	p 
	ld b,b			;b887	40 	@ 
	nop			;b888	00 	. 
	cpl			;b889	2f 	/ 
	ld b,b			;b88a	40 	@ 
	ld a,b			;b88b	78 	x 
	nop			;b88c	00 	. 
	cpl			;b88d	2f 	/ 
	ld (hl),b			;b88e	70 	p 
	or b			;b88f	b0 	. 
lb890h:
	nop			;b890	00 	. 
	inc bc			;b891	03 	. 
	cpl			;b892	2f 	/ 
	ld (hl),b			;b893	70 	p 
	ld b,b			;b894	40 	@ 
	nop			;b895	00 	. 
	cpl			;b896	2f 	/ 
	ld b,b			;b897	40 	@ 
	ld a,b			;b898	78 	x 
	nop			;b899	00 	. 
	cpl			;b89a	2f 	/ 
	ld (hl),b			;b89b	70 	p 
	or b			;b89c	b0 	. 
lb89dh:
	nop			;b89d	00 	. 
	inc bc			;b89e	03 	. 
	ld a,090h		;b89f	3e 90 	> . 
	ld b,b			;b8a1	40 	@ 
	nop			;b8a2	00 	. 
	ld a,090h		;b8a3	3e 90 	> . 
	ld (hl),b			;b8a5	70 	p 
	nop			;b8a6	00 	. 
	cpl			;b8a7	2f 	/ 
lb8a8h:
	sub b			;b8a8	90 	. 
	ret nz			;b8a9	c0 	. 
lb8aah:
	nop			;b8aa	00 	. 
	ld (bc),a			;b8ab	02 	. 
	ld a,090h		;b8ac	3e 90 	> . 
	ld (hl),b			;b8ae	70 	p 
lb8afh:
	nop			;b8af	00 	. 
	ld a,090h		;b8b0	3e 90 	> . 
	ret nz			;b8b2	c0 	. 
	nop			;b8b3	00 	. 
lb8b4h:
	ld (bc),a			;b8b4	02 	. 
	cpl			;b8b5	2f 	/ 
	sub b			;b8b6	90 	. 
	ld b,b			;b8b7	40 	@ 
	nop			;b8b8	00 	. 
	cpl			;b8b9	2f 	/ 
	sub b			;b8ba	90 	. 
	add a,b			;b8bb	80 	. 
	nop			;b8bc	00 	. 
	ld (bc),a			;b8bd	02 	. 
	ld a,090h		;b8be	3e 90 	> . 
	ld d,b			;b8c0	50 	P 
	nop			;b8c1	00 	. 
	cpl			;b8c2	2f 	/ 
	sub b			;b8c3	90 	. 
	and b			;b8c4	a0 	. 
	nop			;b8c5	00 	. 
	ld (bc),a			;b8c6	02 	. 
	cpl			;b8c7	2f 	/ 
	sub b			;b8c8	90 	. 
	adc a,b			;b8c9	88 	. 
	nop			;b8ca	00 	. 
	cpl			;b8cb	2f 	/ 
	sub b			;b8cc	90 	. 
	cp b			;b8cd	b8 	. 
	nop			;b8ce	00 	. 
	inc bc			;b8cf	03 	. 
	cpl			;b8d0	2f 	/ 
	ld (hl),b			;b8d1	70 	p 
	ld b,b			;b8d2	40 	@ 
	nop			;b8d3	00 	. 
	cpl			;b8d4	2f 	/ 
	ld b,b			;b8d5	40 	@ 
	ld a,b			;b8d6	78 	x 
	nop			;b8d7	00 	. 
	cpl			;b8d8	2f 	/ 
lb8d9h:
	ld (hl),b			;b8d9	70 	p 
	or b			;b8da	b0 	. 
	nop			;b8db	00 	. 
	ld (bc),a			;b8dc	02 	. 
	ld a,090h		;b8dd	3e 90 	> . 
	ld d,b			;b8df	50 	P 
lb8e0h:
	nop			;b8e0	00 	. 
	cpl			;b8e1	2f 	/ 
	sub b			;b8e2	90 	. 
	add a,b			;b8e3	80 	. 
	nop			;b8e4	00 	. 
	ld bc,l903eh		;b8e5	01 3e 90 	. > . 
	add a,b			;b8e8	80 	. 
	nop			;b8e9	00 	. 
	add a,h			;b8ea	84 	. 
	dec e			;b8eb	1d 	. 
	add a,b			;b8ec	80 	. 
	or b			;b8ed	b0 	. 
	ld (bc),a			;b8ee	02 	. 
	nop			;b8ef	00 	. 
	nop			;b8f0	00 	. 
	add a,d			;b8f1	82 	. 
	ld bc,00300h		;b8f2	01 00 03 	. . . 
	ld sp,l9028h		;b8f5	31 28 90 	1 ( . 
	nop			;b8f8	00 	. 
	ld sp,07020h		;b8f9	31 20 70 	1   p 
	nop			;b8fc	00 	. 
	jr nc,lb96fh		;b8fd	30 70 	0 p 
	and b			;b8ff	a0 	. 
	nop			;b900	00 	. 
	nop			;b901	00 	. 
	add a,d			;b902	82 	. 
	ld (bc),a			;b903	02 	. 
	nop			;b904	00 	. 
	add a,h			;b905	84 	. 
	ld b,h			;b906	44 	D 
	jr nc,lb8d9h		;b907	30 d0 	0 . 
	nop			;b909	00 	. 
	ld (bc),a			;b90a	02 	. 
	jr nc,lb89dh		;b90b	30 90 	0 . 
	and b			;b90d	a0 	. 
	nop			;b90e	00 	. 
	ld l,030h		;b90f	2e 30 	. 0 
	or b			;b911	b0 	. 
	nop			;b912	00 	. 
	ld (bc),a			;b913	02 	. 
	jr nc,lb926h		;b914	30 10 	0 . 
	or b			;b916	b0 	. 
	nop			;b917	00 	. 
	jr nc,lb8aah		;b918	30 90 	0 . 
	add a,b			;b91a	80 	. 
	nop			;b91b	00 	. 
	add a,c			;b91c	81 	. 
	ld c,h			;b91d	4c 	L 
	nop			;b91e	00 	. 
	ret p			;b91f	f0 	. 
	nop			;b920	00 	. 
	inc bc			;b921	03 	. 
	jr nc,lb8b4h		;b922	30 90 	0 . 
	add a,b			;b924	80 	. 
	nop			;b925	00 	. 
lb926h:
	ld l,048h		;b926	2e 48 	. H 
	add a,b			;b928	80 	. 
	nop			;b929	00 	. 
	ld l,068h		;b92a	2e 68 	. h 
	or b			;b92c	b0 	. 
	nop			;b92d	00 	. 
	nop			;b92e	00 	. 
	adc a,b			;b92f	88 	. 
	ld d,007h		;b930	16 07 	. . 
	djnz $-52		;b932	10 ca 	. . 
	inc bc			;b934	03 	. 
	inc d			;b935	14 	. 
	jp z,01803h		;b936	ca 03 18 	. . . 
lb939h:
	jp z,01c03h		;b939	ca 03 1c 	. . . 
	jp z,02803h		;b93c	ca 03 28 	. . ( 
	jp z,02c03h		;b93f	ca 03 2c 	. . , 
	jp z,03003h		;b942	ca 03 30 	. . 0 
	jp z,l8103h		;b945	ca 03 81 	. . . 
	ld c,e			;b948	4b 	K 
	ld a,b			;b949	78 	x 
	ret nz			;b94a	c0 	. 
	nop			;b94b	00 	. 
	inc b			;b94c	04 	. 
	dec l			;b94d	2d 	- 
	jr nz,lb8e0h		;b94e	20 90 	  . 
	nop			;b950	00 	. 
	dec l			;b951	2d 	- 
	ld e,b			;b952	58 	X 
	ld (hl),b			;b953	70 	p 
	nop			;b954	00 	. 
	ld a,098h		;b955	3e 98 	> . 
	ld h,b			;b957	60 	` 
	nop			;b958	00 	. 
	ld a,098h		;b959	3e 98 	> . 
	ret p			;b95b	f0 	. 
	nop			;b95c	00 	. 
	add a,h			;b95d	84 	. 
	ld b,h			;b95e	44 	D 
	jr nc,$-30		;b95f	30 e0 	0 . 
	nop			;b961	00 	. 
	inc b			;b962	04 	. 
	ld a,098h		;b963	3e 98 	> . 
	jr nc,lb967h		;b965	30 00 	0 . 
lb967h:
	ld a,098h		;b967	3e 98 	> . 
	ret nc			;b969	d0 	. 
	nop			;b96a	00 	. 
	ld a,020h		;b96b	3e 20 	>   
	ld (hl),b			;b96d	70 	p 
	nop			;b96e	00 	. 
lb96fh:
	ld d,d			;b96f	52 	R 
	jr nz,lb9e2h		;b970	20 70 	  p 
	dec b			;b972	05 	. 
	nop			;b973	00 	. 
	ld bc,la82ch		;b974	01 2c a8 	. , . 
	xor b			;b977	a8 	. 
	nop			;b978	00 	. 
	ld bc,l983eh		;b979	01 3e 98 	. > . 
	ret po			;b97c	e0 	. 
	nop			;b97d	00 	. 
	inc bc			;b97e	03 	. 
	ld a,098h		;b97f	3e 98 	> . 
	jr nc,lb983h		;b981	30 00 	0 . 
lb983h:
	ld a,040h		;b983	3e 40 	> @ 
	or b			;b985	b0 	. 
	nop			;b986	00 	. 
	dec l			;b987	2d 	- 
	ld (hl),b			;b988	70 	p 
	ret c			;b989	d8 	. 
	nop			;b98a	00 	. 
	add a,h			;b98b	84 	. 
	ld b,h			;b98c	44 	D 
	ld (hl),b			;b98d	70 	p 
	ret nz			;b98e	c0 	. 
	nop			;b98f	00 	. 
	ld bc,l8845h		;b990	01 45 88 	. E . 
	sbc a,b			;b993	98 	. 
	nop			;b994	00 	. 
	ld (bc),a			;b995	02 	. 
	dec l			;b996	2d 	- 
	jr c,lb939h		;b997	38 a0 	8 . 
	nop			;b999	00 	. 
	ld b,d			;b99a	42 	B 
	cp a			;b99b	bf 	. 
	ret nc			;b99c	d0 	. 
	nop			;b99d	00 	. 
	ld (bc),a			;b99e	02 	. 
	dec l			;b99f	2d 	- 
	ld h,b			;b9a0	60 	` 
	or b			;b9a1	b0 	. 
lb9a2h:
	nop			;b9a2	00 	. 
	ld b,d			;b9a3	42 	B 
	cp a			;b9a4	bf 	. 
	ld (hl),b			;b9a5	70 	p 
	nop			;b9a6	00 	. 
	ld (bc),a			;b9a7	02 	. 
	dec l			;b9a8	2d 	- 
	jr lba0bh		;b9a9	18 60 	. ` 
	nop			;b9ab	00 	. 
	ld b,d			;b9ac	42 	B 
	cp a			;b9ad	bf 	. 
	or b			;b9ae	b0 	. 
	nop			;b9af	00 	. 
	ld bc,lbf42h		;b9b0	01 42 bf 	. B . 
	or b			;b9b3	b0 	. 
	nop			;b9b4	00 	. 
	add a,h			;b9b5	84 	. 
	ld b,h			;b9b6	44 	D 
	jr nz,lba29h		;b9b7	20 70 	  p 
	nop			;b9b9	00 	. 
	nop			;b9ba	00 	. 
	ld bc,08830h		;b9bb	01 30 88 	. 0 . 
	ld d,b			;b9be	50 	P 
	nop			;b9bf	00 	. 
	jr nc,$+50		;b9c0	30 30 	0 0 
	add a,b			;b9c2	80 	. 
	nop			;b9c3	00 	. 
	inc bc			;b9c4	03 	. 
	jr nc,lba2fh		;b9c5	30 68 	0 h 
	adc a,b			;b9c7	88 	. 
	nop			;b9c8	00 	. 
	jr nc,$+42		;b9c9	30 28 	0 ( 
	ret z			;b9cb	c8 	. 
	nop			;b9cc	00 	. 
	jr nc,lb9e7h		;b9cd	30 18 	0 . 
	jr c,lb9d1h		;b9cf	38 00 	8 . 
lb9d1h:
	inc bc			;b9d1	03 	. 
	jr nc,$+114		;b9d2	30 70 	0 p 
	xor b			;b9d4	a8 	. 
	nop			;b9d5	00 	. 
	jr nc,lba08h		;b9d6	30 30 	0 0 
	ld e,b			;b9d8	58 	X 
	nop			;b9d9	00 	. 
	jr nc,$-118		;b9da	30 88 	0 . 
	ld (hl),b			;b9dc	70 	p 
	nop			;b9dd	00 	. 
	add a,h			;b9de	84 	. 
	ld b,h			;b9df	44 	D 
	jr nz,lb9a2h		;b9e0	20 c0 	  . 
lb9e2h:
	nop			;b9e2	00 	. 
	inc bc			;b9e3	03 	. 
	ld l,028h		;b9e4	2e 28 	. ( 
	ret nz			;b9e6	c0 	. 
lb9e7h:
	nop			;b9e7	00 	. 
	jr nc,$+122		;b9e8	30 78 	0 x 
	sbc a,b			;b9ea	98 	. 
	nop			;b9eb	00 	. 
	jr nc,lba46h		;b9ec	30 58 	0 X 
	ld b,b			;b9ee	40 	@ 
	nop			;b9ef	00 	. 
	nop			;b9f0	00 	. 
	ld bc,09055h		;b9f1	01 55 90 	. U . 
	sub b			;b9f4	90 	. 
	nop			;b9f5	00 	. 
	ld (bc),a			;b9f6	02 	. 
lb9f7h:
	ld d,l			;b9f7	55 	U 
	sub b			;b9f8	90 	. 
	and b			;b9f9	a0 	. 
	nop			;b9fa	00 	. 
	ld a,060h		;b9fb	3e 60 	> ` 
	and b			;b9fd	a0 	. 
	nop			;b9fe	00 	. 
	ld bc,l903eh		;b9ff	01 3e 90 	. > . 
	ret nc			;ba02	d0 	. 
	nop			;ba03	00 	. 
	ld (bc),a			;ba04	02 	. 
	ld d,l			;ba05	55 	U 
	ld d,b			;ba06	50 	P 
	or b			;ba07	b0 	. 
lba08h:
	nop			;ba08	00 	. 
	ld a,090h		;ba09	3e 90 	> . 
lba0bh:
	ret nz			;ba0b	c0 	. 
	nop			;ba0c	00 	. 
	inc bc			;ba0d	03 	. 
	ld d,l			;ba0e	55 	U 
	sub b			;ba0f	90 	. 
	ld (hl),b			;ba10	70 	p 
	nop			;ba11	00 	. 
	ld d,l			;ba12	55 	U 
	ld b,b			;ba13	40 	@ 
	and b			;ba14	a0 	. 
	nop			;ba15	00 	. 
	dec a			;ba16	3d 	= 
	ld a,b			;ba17	78 	x 
	ret po			;ba18	e0 	. 
	nop			;ba19	00 	. 
	inc bc			;ba1a	03 	. 
	ld d,l			;ba1b	55 	U 
	ld b,b			;ba1c	40 	@ 
	ret po			;ba1d	e0 	. 
	nop			;ba1e	00 	. 
	ld a,090h		;ba1f	3e 90 	> . 
	and b			;ba21	a0 	. 
	nop			;ba22	00 	. 
	dec a			;ba23	3d 	= 
	ld (hl),b			;ba24	70 	p 
	sub b			;ba25	90 	. 
	nop			;ba26	00 	. 
	inc bc			;ba27	03 	. 
	ld d,l			;ba28	55 	U 
lba29h:
	sub b			;ba29	90 	. 
	ld h,b			;ba2a	60 	` 
	nop			;ba2b	00 	. 
	ld d,l			;ba2c	55 	U 
	sub b			;ba2d	90 	. 
	add a,b			;ba2e	80 	. 
lba2fh:
	nop			;ba2f	00 	. 
	ld d,l			;ba30	55 	U 
	sub b			;ba31	90 	. 
	and b			;ba32	a0 	. 
	nop			;ba33	00 	. 
	ld (bc),a			;ba34	02 	. 
	ld b,(hl)			;ba35	46 	F 
	adc a,b			;ba36	88 	. 
	ret nc			;ba37	d0 	. 
	ld bc,0c050h		;ba38	01 50 c0 	. P . 
	pop bc			;ba3b	c1 	. 
	nop			;ba3c	00 	. 
	nop			;ba3d	00 	. 
	ld (bc),a			;ba3e	02 	. 
	ld d,h			;ba3f	54 	T 
	ld b,b			;ba40	40 	@ 
	ld h,b			;ba41	60 	` 
	nop			;ba42	00 	. 
lba43h:
	jr nz,lbaadh		;ba43	20 68 	  h 
	cp b			;ba45	b8 	. 
lba46h:
	nop			;ba46	00 	. 
	inc bc			;ba47	03 	. 
	ld a,090h		;ba48	3e 90 	> . 
	jr lba4ch		;ba4a	18 00 	. . 
lba4ch:
	ld d,h			;ba4c	54 	T 
	ld b,b			;ba4d	40 	@ 
	or b			;ba4e	b0 	. 
	nop			;ba4f	00 	. 
	ld h,e			;ba50	63 	c 
	jr nc,lba43h		;ba51	30 f0 	0 . 
	nop			;ba53	00 	. 
	adc a,b			;ba54	88 	. 
	dec c			;ba55	0d 	. 
	inc b			;ba56	04 	. 
	and b			;ba57	a0 	. 
	call z,sub_a400h		;ba58	cc 00 a4 	. . . 
	call z,02000h		;ba5b	cc 00 20 	. .   
	call 02400h		;ba5e	cd 00 24 	. . $ 
	call sub_8100h		;ba61	cd 00 81 	. . . 
	ld c,e			;ba64	4b 	K 
	and b			;ba65	a0 	. 
	ld h,b			;ba66	60 	` 
	ld (bc),a			;ba67	02 	. 
	ld (bc),a			;ba68	02 	. 
	ld d,d			;ba69	52 	R 
	and b			;ba6a	a0 	. 
	jr nc,$+3		;ba6b	30 01 	0 . 
	jr nz,lb9f7h		;ba6d	20 88 	  . 
	ret po			;ba6f	e0 	. 
	nop			;ba70	00 	. 
	ld (bc),a			;ba71	02 	. 
	dec a			;ba72	3d 	= 
	ld h,b			;ba73	60 	` 
	ld a,b			;ba74	78 	x 
	nop			;ba75	00 	. 
	ld a,090h		;ba76	3e 90 	> . 
	ld h,b			;ba78	60 	` 
	nop			;ba79	00 	. 
	adc a,b			;ba7a	88 	. 
	inc b			;ba7b	04 	. 
	ld bc,0ca38h		;ba7c	01 38 ca 	. 8 . 
	nop			;ba7f	00 	. 
	add a,c			;ba80	81 	. 
	ld c,e			;ba81	4b 	K 
	ld e,b			;ba82	58 	X 
	or h			;ba83	b4 	. 
	ld (bc),a			;ba84	02 	. 
	ld bc,05054h		;ba85	01 54 50 	. T P 
	or b			;ba88	b0 	. 
	nop			;ba89	00 	. 
	ld bc,0503eh		;ba8a	01 3e 50 	. > P 
	ld b,b			;ba8d	40 	@ 
	nop			;ba8e	00 	. 
	inc bc			;ba8f	03 	. 
	ld a,090h		;ba90	3e 90 	> . 
	djnz lba94h		;ba92	10 00 	. . 
lba94h:
	jr nz,lbaf6h		;ba94	20 60 	  ` 
	sub b			;ba96	90 	. 
	nop			;ba97	00 	. 
	ld a,090h		;ba98	3e 90 	> . 
	or b			;ba9a	b0 	. 
	nop			;ba9b	00 	. 
	add a,h			;ba9c	84 	. 
	ld e,080h		;ba9d	1e 80 	. . 
	or b			;ba9f	b0 	. 
	inc b			;baa0	04 	. 
	nop			;baa1	00 	. 
	nop			;baa2	00 	. 
	ld bc,04820h		;baa3	01 20 48 	.   H 
	sub b			;baa6	90 	. 
	nop			;baa7	00 	. 
	ld bc,04020h		;baa8	01 20 40 	.   @ 
	add a,b			;baab	80 	. 
	nop			;baac	00 	. 
lbaadh:
	ld bc,0102ah		;baad	01 2a 10 	. * . 
	ld d,l			;bab0	55 	U 
	nop			;bab1	00 	. 
	ld bc,03820h		;bab2	01 20 38 	.   8 
	or b			;bab5	b0 	. 
	nop			;bab6	00 	. 
	ld (bc),a			;bab7	02 	. 
	jr nz,lbb2ah		;bab8	20 70 	  p 
	ld h,b			;baba	60 	` 
	nop			;babb	00 	. 
	jr nz,lbae6h		;babc	20 28 	  ( 
	ret nz			;babe	c0 	. 
	nop			;babf	00 	. 
	ld (bc),a			;bac0	02 	. 
	jr nz,lba43h		;bac1	20 80 	  . 
	and b			;bac3	a0 	. 
	nop			;bac4	00 	. 
	ld hl,(05b10h)		;bac5	2a 10 5b 	* . [ 
	nop			;bac8	00 	. 
	nop			;bac9	00 	. 
	ld bc,02020h		;baca	01 20 20 	.     
	or b			;bacd	b0 	. 
	nop			;bace	00 	. 
	ld bc,0202ah		;bacf	01 2a 20 	. *   
	jr z,lbad4h		;bad2	28 00 	( . 
lbad4h:
	ld bc,0102ah		;bad4	01 2a 10 	. * . 
	inc hl			;bad7	23 	# 
	nop			;bad8	00 	. 
	ld (bc),a			;bad9	02 	. 
	dec h			;bada	25 	% 
	ld (hl),b			;badb	70 	p 
	ret nc			;badc	d0 	. 
	nop			;badd	00 	. 
	ld hl,(04810h)		;bade	2a 10 48 	* . H 
	nop			;bae1	00 	. 
lbae2h:
	nop			;bae2	00 	. 
	ld bc,0402dh		;bae3	01 2d 40 	. - @ 
lbae6h:
	or b			;bae6	b0 	. 
	nop			;bae7	00 	. 
	ld b,d			;bae8	42 	B 
	cp a			;bae9	bf 	. 
	ret po			;baea	e0 	. 
	nop			;baeb	00 	. 
	ld (bc),a			;baec	02 	. 
	ld b,d			;baed	42 	B 
	cp a			;baee	bf 	. 
	add a,b			;baef	80 	. 
	nop			;baf0	00 	. 
	dec l			;baf1	2d 	- 
	ld d,b			;baf2	50 	P 
	ret nz			;baf3	c0 	. 
	nop			;baf4	00 	. 
	inc bc			;baf5	03 	. 
lbaf6h:
	dec l			;baf6	2d 	- 
	ld h,b			;baf7	60 	` 
	add a,b			;baf8	80 	. 
	nop			;baf9	00 	. 
	dec l			;bafa	2d 	- 
	ld b,b			;bafb	40 	@ 
	and b			;bafc	a0 	. 
	nop			;bafd	00 	. 
	ld b,d			;bafe	42 	B 
	cp a			;baff	bf 	. 
	ret nc			;bb00	d0 	. 
	nop			;bb01	00 	. 
	ld bc,0302dh		;bb02	01 2d 30 	. - 0 
	or b			;bb05	b0 	. 
	nop			;bb06	00 	. 
	ld bc,0502dh		;bb07	01 2d 50 	. - P 
	sub b			;bb0a	90 	. 
	nop			;bb0b	00 	. 
	ld b,d			;bb0c	42 	B 
	cp a			;bb0d	bf 	. 
	and b			;bb0e	a0 	. 
	nop			;bb0f	00 	. 
	ld (bc),a			;bb10	02 	. 
	ld b,d			;bb11	42 	B 
	cp a			;bb12	bf 	. 
	sub b			;bb13	90 	. 
	nop			;bb14	00 	. 
	dec l			;bb15	2d 	- 
	ld h,b			;bb16	60 	` 
	and b			;bb17	a0 	. 
	nop			;bb18	00 	. 
	ld (bc),a			;bb19	02 	. 
	dec l			;bb1a	2d 	- 
	ld d,b			;bb1b	50 	P 
	or b			;bb1c	b0 	. 
	nop			;bb1d	00 	. 
	ld b,d			;bb1e	42 	B 
	cp a			;bb1f	bf 	. 
	sub b			;bb20	90 	. 
	nop			;bb21	00 	. 
	ld bc,0502dh		;bb22	01 2d 50 	. - P 
	add a,b			;bb25	80 	. 
	nop			;bb26	00 	. 
	ld bc,0482dh		;bb27	01 2d 48 	. - H 
lbb2ah:
	ld (hl),b			;bb2a	70 	p 
	nop			;bb2b	00 	. 
	ld (bc),a			;bb2c	02 	. 
	ld b,d			;bb2d	42 	B 
	cp a			;bb2e	bf 	. 
	and b			;bb2f	a0 	. 
	nop			;bb30	00 	. 
	dec l			;bb31	2d 	- 
	ld b,b			;bb32	40 	@ 
	or b			;bb33	b0 	. 
	nop			;bb34	00 	. 
	ld bc,0602dh		;bb35	01 2d 60 	. - ` 
	add a,b			;bb38	80 	. 
	nop			;bb39	00 	. 
	ld b,d			;bb3a	42 	B 
	cp a			;bb3b	bf 	. 
	ld (hl),b			;bb3c	70 	p 
	nop			;bb3d	00 	. 
	ld bc,0402dh		;bb3e	01 2d 40 	. - @ 
	or b			;bb41	b0 	. 
	nop			;bb42	00 	. 
	ld (bc),a			;bb43	02 	. 
	dec l			;bb44	2d 	- 
	ld (hl),b			;bb45	70 	p 
	and b			;bb46	a0 	. 
	nop			;bb47	00 	. 
	ld b,d			;bb48	42 	B 
	cp a			;bb49	bf 	. 
	or b			;bb4a	b0 	. 
	nop			;bb4b	00 	. 
	ld b,d			;bb4c	42 	B 
	cp a			;bb4d	bf 	. 
	add a,b			;bb4e	80 	. 
	nop			;bb4f	00 	. 
	ld bc,0402dh		;bb50	01 2d 40 	. - @ 
	or b			;bb53	b0 	. 
	nop			;bb54	00 	. 
	add a,h			;bb55	84 	. 
	ld b,h			;bb56	44 	D 
	ld (hl),b			;bb57	70 	p 
	and b			;bb58	a0 	. 
	nop			;bb59	00 	. 
	nop			;bb5a	00 	. 
lbb5bh:
	inc bc			;bb5b	03 	. 
	jr nc,lbb8eh		;bb5c	30 30 	0 0 
	cp b			;bb5e	b8 	. 
	nop			;bb5f	00 	. 
	jr nc,lbae2h		;bb60	30 80 	0 . 
	cp b			;bb62	b8 	. 
	nop			;bb63	00 	. 
	jr nc,lbbb6h		;bb64	30 50 	0 P 
	ld h,b			;bb66	60 	` 
	nop			;bb67	00 	. 
	ld bc,la030h		;bb68	01 30 a0 	. 0 . 
	ld (hl),b			;bb6b	70 	p 
	nop			;bb6c	00 	. 
	inc bc			;bb6d	03 	. 
	jr nc,lbbb0h		;bb6e	30 40 	0 @ 
lbb70h:
	jr nc,lbb72h		;bb70	30 00 	0 . 
lbb72h:
	jr nc,$+98		;bb72	30 60 	0 ` 
	djnz lbb76h		;bb74	10 00 	. . 
lbb76h:
	inc hl			;bb76	23 	# 
	ld a,b			;bb77	78 	x 
	ld a,h			;bb78	7c 	| 
	nop			;bb79	00 	. 
	add a,h			;bb7a	84 	. 
	ld b,h			;bb7b	44 	D 
	ld d,b			;bb7c	50 	P 
	and b			;bb7d	a0 	. 
	nop			;bb7e	00 	. 
	ld bc,06023h		;bb7f	01 23 60 	. # ` 
	adc a,b			;bb82	88 	. 
lbb83h:
	nop			;bb83	00 	. 
	nop			;bb84	00 	. 
	ld (bc),a			;bb85	02 	. 
	ld a,050h		;bb86	3e 50 	> P 
	adc a,b			;bb88	88 	. 
	nop			;bb89	00 	. 
	ld a,050h		;bb8a	3e 50 	> P 
	ret nz			;bb8c	c0 	. 
lbb8dh:
	nop			;bb8d	00 	. 
lbb8eh:
	ld (bc),a			;bb8e	02 	. 
	inc l			;bb8f	2c 	, 
	and b			;bb90	a0 	. 
	jr nc,lbb93h		;bb91	30 00 	0 . 
lbb93h:
	inc l			;bb93	2c 	, 
	and b			;bb94	a0 	. 
	sub b			;bb95	90 	. 
	nop			;bb96	00 	. 
	inc b			;bb97	04 	. 
	ld b,b			;bb98	40 	@ 
	djnz lbb5bh		;bb99	10 c0 	. . 
	nop			;bb9b	00 	. 
	inc l			;bb9c	2c 	, 
	and b			;bb9d	a0 	. 
	jr c,lbba0h		;bb9e	38 00 	8 . 
lbba0h:
	inc l			;bba0	2c 	, 
	and b			;bba1	a0 	. 
	add a,b			;bba2	80 	. 
	nop			;bba3	00 	. 
	inc l			;bba4	2c 	, 
	and b			;bba5	a0 	. 
	ret z			;bba6	c8 	. 
	nop			;bba7	00 	. 
	ld bc,01040h		;bba8	01 40 10 	. @ . 
	jr c,lbbadh		;bbab	38 00 	8 . 
lbbadh:
	ld bc,l903eh		;bbad	01 3e 90 	. > . 
lbbb0h:
	ret po			;bbb0	e0 	. 
	nop			;bbb1	00 	. 
	inc bc			;bbb2	03 	. 
	ld b,b			;bbb3	40 	@ 
	jr nz,$-126		;bbb4	20 80 	  . 
lbbb6h:
	nop			;bbb6	00 	. 
	ld a,090h		;bbb7	3e 90 	> . 
	jr nc,lbbbbh		;bbb9	30 00 	0 . 
lbbbbh:
	ld a,090h		;bbbb	3e 90 	> . 
	ret nz			;bbbd	c0 	. 
	nop			;bbbe	00 	. 
	inc bc			;bbbf	03 	. 
	ld b,b			;bbc0	40 	@ 
	jr nz,lbb83h		;bbc1	20 c0 	  . 
	nop			;bbc3	00 	. 
	ld a,090h		;bbc4	3e 90 	> . 
	ld h,b			;bbc6	60 	` 
	nop			;bbc7	00 	. 
	ld a,090h		;bbc8	3e 90 	> . 
	ret nz			;bbca	c0 	. 
	nop			;bbcb	00 	. 
	inc bc			;bbcc	03 	. 
	ld b,b			;bbcd	40 	@ 
	djnz lbb70h		;bbce	10 a0 	. . 
	nop			;bbd0	00 	. 
	ld d,a			;bbd1	57 	W 
	add a,b			;bbd2	80 	. 
	jr nc,lbbd5h		;bbd3	30 00 	0 . 
lbbd5h:
	ld d,a			;bbd5	57 	W 
	sub b			;bbd6	90 	. 
	ret nz			;bbd7	c0 	. 
	nop			;bbd8	00 	. 
	ld (bc),a			;bbd9	02 	. 
	ld b,b			;bbda	40 	@ 
	jr nz,lbb8dh		;bbdb	20 b0 	  . 
	nop			;bbdd	00 	. 
	dec a			;bbde	3d 	= 
	ld a,b			;bbdf	78 	x 
	ld (hl),b			;bbe0	70 	p 
	nop			;bbe1	00 	. 
	ld (bc),a			;bbe2	02 	. 
	ld d,a			;bbe3	57 	W 
lbbe4h:
	sub b			;bbe4	90 	. 
	ld b,b			;bbe5	40 	@ 
	nop			;bbe6	00 	. 
	dec a			;bbe7	3d 	= 
	ld a,b			;bbe8	78 	x 
	and b			;bbe9	a0 	. 
	nop			;bbea	00 	. 
	ld (bc),a			;bbeb	02 	. 
	dec a			;bbec	3d 	= 
	ld a,b			;bbed	78 	x 
	add a,b			;bbee	80 	. 
	nop			;bbef	00 	. 
	dec a			;bbf0	3d 	= 
	ld a,b			;bbf1	78 	x 
	ret nz			;bbf2	c0 	. 
	nop			;bbf3	00 	. 
	inc b			;bbf4	04 	. 
	ld b,b			;bbf5	40 	@ 
	djnz lbc18h		;bbf6	10 20 	.   
	nop			;bbf8	00 	. 
	ld d,a			;bbf9	57 	W 
	add a,b			;bbfa	80 	. 
	ld h,b			;bbfb	60 	` 
	nop			;bbfc	00 	. 
	dec a			;bbfd	3d 	= 
	ld e,b			;bbfe	58 	X 
	and b			;bbff	a0 	. 
	nop			;bc00	00 	. 
	ld d,a			;bc01	57 	W 
	ld h,b			;bc02	60 	` 
	ret po			;bc03	e0 	. 
	nop			;bc04	00 	. 
	inc b			;bc05	04 	. 
	ld b,b			;bc06	40 	@ 
	jr nz,$-62		;bc07	20 c0 	  . 
	nop			;bc09	00 	. 
	dec a			;bc0a	3d 	= 
	jr c,lbc35h		;bc0b	38 28 	8 ( 
	nop			;bc0d	00 	. 
	dec a			;bc0e	3d 	= 
	ld b,b			;bc0f	40 	@ 
	add a,b			;bc10	80 	. 
	nop			;bc11	00 	. 
	dec a			;bc12	3d 	= 
	ld d,b			;bc13	50 	P 
	or b			;bc14	b0 	. 
	nop			;bc15	00 	. 
	add a,h			;bc16	84 	. 
	rra			;bc17	1f 	. 
lbc18h:
	add a,b			;bc18	80 	. 
	or b			;bc19	b0 	. 
	ld b,000h		;bc1a	06 00 	. . 
	nop			;bc1c	00 	. 
	inc bc			;bc1d	03 	. 
	ld a,090h		;bc1e	3e 90 	> . 
	ld b,b			;bc20	40 	@ 
	nop			;bc21	00 	. 
	ld a,090h		;bc22	3e 90 	> . 
	ld (hl),b			;bc24	70 	p 
	nop			;bc25	00 	. 
	dec a			;bc26	3d 	= 
	ld e,b			;bc27	58 	X 
	ret nz			;bc28	c0 	. 
	nop			;bc29	00 	. 
	add a,h			;bc2a	84 	. 
	ld e,080h		;bc2b	1e 80 	. . 
	ret nz			;bc2d	c0 	. 
	dec b			;bc2e	05 	. 
	nop			;bc2f	00 	. 
	add a,h			;bc30	84 	. 
	ld b,h			;bc31	44 	D 
	ld (hl),b			;bc32	70 	p 
	djnz lbc35h		;bc33	10 00 	. . 
lbc35h:
	ld (bc),a			;bc35	02 	. 
	inc sp			;bc36	33 	3 
	jr nz,$+98		;bc37	20 60 	  ` 
	nop			;bc39	00 	. 
	inc l			;bc3a	2c 	, 
	and b			;bc3b	a0 	. 
	or b			;bc3c	b0 	. 
	nop			;bc3d	00 	. 
	inc bc			;bc3e	03 	. 
	inc sp			;bc3f	33 	3 
	jr lbc82h		;bc40	18 40 	. @ 
	nop			;bc42	00 	. 
	inc sp			;bc43	33 	3 
	ld b,b			;bc44	40 	@ 
	ld l,b			;bc45	68 	h 
	nop			;bc46	00 	. 
	inc sp			;bc47	33 	3 
	ld h,b			;bc48	60 	` 
	sub b			;bc49	90 	. 
	nop			;bc4a	00 	. 
	dec b			;bc4b	05 	. 
	inc sp			;bc4c	33 	3 
	jr nz,lbc8fh		;bc4d	20 40 	  @ 
	nop			;bc4f	00 	. 
	inc sp			;bc50	33 	3 
	ld d,b			;bc51	50 	P 
	or b			;bc52	b0 	. 
	nop			;bc53	00 	. 
	inc l			;bc54	2c 	, 
	and b			;bc55	a0 	. 
	ld b,b			;bc56	40 	@ 
	nop			;bc57	00 	. 
	inc l			;bc58	2c 	, 
	and b			;bc59	a0 	. 
	ld a,b			;bc5a	78 	x 
	nop			;bc5b	00 	. 
	inc l			;bc5c	2c 	, 
	and b			;bc5d	a0 	. 
	or b			;bc5e	b0 	. 
	nop			;bc5f	00 	. 
	inc bc			;bc60	03 	. 
	inc sp			;bc61	33 	3 
	jr z,lbbe4h		;bc62	28 80 	( . 
	nop			;bc64	00 	. 
	inc l			;bc65	2c 	, 
	and b			;bc66	a0 	. 
	and b			;bc67	a0 	. 
	nop			;bc68	00 	. 
	inc l			;bc69	2c 	, 
	and b			;bc6a	a0 	. 
	ld c,b			;bc6b	48 	H 
	nop			;bc6c	00 	. 
	inc b			;bc6d	04 	. 
	inc sp			;bc6e	33 	3 
	jr nz,$-46		;bc6f	20 d0 	  . 
	nop			;bc71	00 	. 
	inc sp			;bc72	33 	3 
	ld d,b			;bc73	50 	P 
	add a,b			;bc74	80 	. 
	nop			;bc75	00 	. 
	inc l			;bc76	2c 	, 
	and b			;bc77	a0 	. 
	ld c,b			;bc78	48 	H 
	nop			;bc79	00 	. 
	inc l			;bc7a	2c 	, 
	and b			;bc7b	a0 	. 
	xor b			;bc7c	a8 	. 
	nop			;bc7d	00 	. 
	ld (bc),a			;bc7e	02 	. 
	inc l			;bc7f	2c 	, 
	and b			;bc80	a0 	. 
	or b			;bc81	b0 	. 
lbc82h:
	nop			;bc82	00 	. 
	inc l			;bc83	2c 	, 
	and b			;bc84	a0 	. 
	ld h,b			;bc85	60 	` 
	nop			;bc86	00 	. 
	ld (bc),a			;bc87	02 	. 
	inc l			;bc88	2c 	, 
	and b			;bc89	a0 	. 
	and b			;bc8a	a0 	. 
	nop			;bc8b	00 	. 
	inc l			;bc8c	2c 	, 
	and b			;bc8d	a0 	. 
	ld c,b			;bc8e	48 	H 
lbc8fh:
	nop			;bc8f	00 	. 
	nop			;bc90	00 	. 
	nop			;bc91	00 	. 
	add a,h			;bc92	84 	. 
	ld b,h			;bc93	44 	D 
	sub b			;bc94	90 	. 
	ret nz			;bc95	c0 	. 
	nop			;bc96	00 	. 
	ld bc,l9053h		;bc97	01 53 90 	. S . 
lbc9ah:
	ret nz			;bc9a	c0 	. 
	nop			;bc9b	00 	. 
	nop			;bc9c	00 	. 
	ld (bc),a			;bc9d	02 	. 
	ld a,090h		;bc9e	3e 90 	> . 
	ld d,b			;bca0	50 	P 
	nop			;bca1	00 	. 
	ld a,090h		;bca2	3e 90 	> . 
	and b			;bca4	a0 	. 
	nop			;bca5	00 	. 
	inc bc			;bca6	03 	. 
	cpl			;bca7	2f 	/ 
	ld (hl),b			;bca8	70 	p 
	jr nz,lbcabh		;bca9	20 00 	  . 
lbcabh:
	ld a,050h		;bcab	3e 50 	> P 
	ld h,b			;bcad	60 	` 
	nop			;bcae	00 	. 
	ld a,080h		;bcaf	3e 80 	> . 
	sub b			;bcb1	90 	. 
	nop			;bcb2	00 	. 
	inc b			;bcb3	04 	. 
	ld a,090h		;bcb4	3e 90 	> . 
	jr nz,lbcb8h		;bcb6	20 00 	  . 
lbcb8h:
	ld a,090h		;bcb8	3e 90 	> . 
	ld (hl),b			;bcba	70 	p 
	nop			;bcbb	00 	. 
	cpl			;bcbc	2f 	/ 
	sub b			;bcbd	90 	. 
	or b			;bcbe	b0 	. 
	nop			;bcbf	00 	. 
	inc l			;bcc0	2c 	, 
	and b			;bcc1	a0 	. 
	ret nc			;bcc2	d0 	. 
	nop			;bcc3	00 	. 
	inc bc			;bcc4	03 	. 
	ld a,090h		;bcc5	3e 90 	> . 
	ld a,b			;bcc7	78 	x 
	nop			;bcc8	00 	. 
	inc l			;bcc9	2c 	, 
	and b			;bcca	a0 	. 
	and b			;bccb	a0 	. 
	nop			;bccc	00 	. 
	ld a,090h		;bccd	3e 90 	> . 
	ret po			;bccf	e0 	. 
	nop			;bcd0	00 	. 
	inc bc			;bcd1	03 	. 
	ld a,090h		;bcd2	3e 90 	> . 
	ld h,b			;bcd4	60 	` 
	nop			;bcd5	00 	. 
	ld a,090h		;bcd6	3e 90 	> . 
	and b			;bcd8	a0 	. 
	nop			;bcd9	00 	. 
	cpl			;bcda	2f 	/ 
	ld h,b			;bcdb	60 	` 
	ret p			;bcdc	f0 	. 
	nop			;bcdd	00 	. 
	ld (bc),a			;bcde	02 	. 
	ld a,040h		;bcdf	3e 40 	> @ 
	add a,b			;bce1	80 	. 
	nop			;bce2	00 	. 
	ld a,090h		;bce3	3e 90 	> . 
	ld h,b			;bce5	60 	` 
	nop			;bce6	00 	. 
	ld (bc),a			;bce7	02 	. 
	ld a,090h		;bce8	3e 90 	> . 
	ld h,b			;bcea	60 	` 
	nop			;bceb	00 	. 
	inc l			;bcec	2c 	, 
	and b			;bced	a0 	. 
	or b			;bcee	b0 	. 
	nop			;bcef	00 	. 
	ld (bc),a			;bcf0	02 	. 
	cpl			;bcf1	2f 	/ 
	ld d,b			;bcf2	50 	P 
	or b			;bcf3	b0 	. 
	nop			;bcf4	00 	. 
	ld a,090h		;bcf5	3e 90 	> . 
	jr nz,lbcf9h		;bcf7	20 00 	  . 
lbcf9h:
	add a,h			;bcf9	84 	. 
	rra			;bcfa	1f 	. 
	add a,b			;bcfb	80 	. 
	or b			;bcfc	b0 	. 
	rlca			;bcfd	07 	. 
	nop			;bcfe	00 	. 
	nop			;bcff	00 	. 
	add a,c			;bd00	81 	. 
	ld c,h			;bd01	4c 	L 
	cp b			;bd02	b8 	. 
lbd03h:
	adc a,h			;bd03	8c 	. 
	nop			;bd04	00 	. 
	dec b			;bd05	05 	. 
	inc hl			;bd06	23 	# 
	cp b			;bd07	b8 	. 
	add a,d			;bd08	82 	. 
	nop			;bd09	00 	. 
	jr nc,$+18		;bd0a	30 10 	0 . 
	or b			;bd0c	b0 	. 
	nop			;bd0d	00 	. 
	jr nc,$+58		;bd0e	30 38 	0 8 
	ret z			;bd10	c8 	. 
	nop			;bd11	00 	. 
	jr nc,lbd84h		;bd12	30 70 	0 p 
	add a,b			;bd14	80 	. 
	nop			;bd15	00 	. 
	jr nc,lbd68h		;bd16	30 50 	0 P 
	ld c,b			;bd18	48 	H 
	nop			;bd19	00 	. 
	nop			;bd1a	00 	. 
	ld bc,0402fh		;bd1b	01 2f 40 	. / @ 
	ld (hl),b			;bd1e	70 	p 
	nop			;bd1f	00 	. 
	inc bc			;bd20	03 	. 
	ld a,040h		;bd21	3e 40 	> @ 
	add a,b			;bd23	80 	. 
	nop			;bd24	00 	. 
	jr nz,$+34		;bd25	20 20 	    
	add a,b			;bd27	80 	. 
	nop			;bd28	00 	. 
	jr nz,lbd9bh		;bd29	20 70 	  p 
	ld d,b			;bd2b	50 	P 
	nop			;bd2c	00 	. 
	dec b			;bd2d	05 	. 
	ld d,d			;bd2e	52 	R 
	ld d,b			;bd2f	50 	P 
	ret po			;bd30	e0 	. 
	dec b			;bd31	05 	. 
	ld a,030h		;bd32	3e 30 	> 0 
	ld h,b			;bd34	60 	` 
	ld bc,0303eh		;bd35	01 3e 30 	. > 0 
	or b			;bd38	b0 	. 
	ld bc,07820h		;bd39	01 20 78 	.   x 
	ld h,b			;bd3c	60 	` 
	nop			;bd3d	00 	. 
	jr nz,lbdb8h		;bd3e	20 78 	  x 
	or b			;bd40	b0 	. 
	nop			;bd41	00 	. 
	add a,c			;bd42	81 	. 
	ld c,e			;bd43	4b 	K 
	jr nz,lbd63h		;bd44	20 1d 	  . 
	ld bc,04b81h		;bd46	01 81 4b 	. . K 
	jr nc,$+62		;bd49	30 3c 	0 < 
	ld bc,05101h		;bd4b	01 01 51 	. . Q 
	sub b			;bd4e	90 	. 
	ld c,b			;bd4f	48 	H 
	ld bc,03e02h		;bd50	01 02 3e 	. . > 
	and b			;bd53	a0 	. 
	and b			;bd54	a0 	. 
	ld bc,01820h		;bd55	01 20 18 	.   . 
	sub b			;bd58	90 	. 
	nop			;bd59	00 	. 
	ld (bc),a			;bd5a	02 	. 
	jr nz,lbd7dh		;bd5b	20 20 	    
	jr lbd5fh		;bd5d	18 00 	. . 
lbd5fh:
	ld d,d			;bd5f	52 	R 
	jr nc,$+18		;bd60	30 10 	0 . 
	ld (bc),a			;bd62	02 	. 
lbd63h:
	inc bc			;bd63	03 	. 
	ld d,020h		;bd64	16 20 	.   
	jr nz,$+5		;bd66	20 03 	  . 
lbd68h:
	ld a,0a0h		;bd68	3e a0 	> . 
	jr z,$+3		;bd6a	28 01 	( . 
	ld a,0a0h		;bd6c	3e a0 	> . 
	add a,b			;bd6e	80 	. 
	nop			;bd6f	00 	. 
	ld bc,01820h		;bd70	01 20 18 	.   . 
	ret nz			;bd73	c0 	. 
	nop			;bd74	00 	. 
	dec b			;bd75	05 	. 
	djnz lbdb0h		;bd76	10 38 	. 8 
	jr nz,$+3		;bd78	20 01 	  . 
	djnz lbdd4h		;bd7a	10 58 	. X 
	ld b,b			;bd7c	40 	@ 
lbd7dh:
	jr nz,$+18		;bd7d	20 10 	  . 
	ld a,b			;bd7f	78 	x 
	ld h,b			;bd80	60 	` 
	ccf			;bd81	3f 	? 
	djnz lbddch		;bd82	10 58 	. X 
lbd84h:
	add a,b			;bd84	80 	. 
	ld (03810h),hl		;bd85	22 10 38 	" . 8 
	and b			;bd88	a0 	. 
	dec b			;bd89	05 	. 
	inc bc			;bd8a	03 	. 
	ld a,0a0h		;bd8b	3e a0 	> . 
	ret c			;bd8d	d8 	. 
	ld bc,0a03eh		;bd8e	01 3e a0 	. > . 
	ld h,b			;bd91	60 	` 
	ld bc,0a03eh		;bd92	01 3e a0 	. > . 
	and b			;bd95	a0 	. 
	ld bc,03e03h		;bd96	01 03 3e 	. . > 
	and b			;bd99	a0 	. 
	ret c			;bd9a	d8 	. 
lbd9bh:
	ld bc,0a03eh		;bd9b	01 3e a0 	. > . 
	ld h,b			;bd9e	60 	` 
	ld bc,0a03eh		;bd9f	01 3e a0 	. > . 
	and b			;bda2	a0 	. 
	ld bc,01d84h		;bda3	01 84 1d 	. . . 
	sub b			;bda6	90 	. 
	ret nz			;bda7	c0 	. 
	inc bc			;bda8	03 	. 
	nop			;bda9	00 	. 
	inc b			;bdaa	04 	. 
	ld d,a			;bdab	57 	W 
	ld d,b			;bdac	50 	P 
	ld d,b			;bdad	50 	P 
	nop			;bdae	00 	. 
	ld d,a			;bdaf	57 	W 
lbdb0h:
	ld d,b			;bdb0	50 	P 
	and b			;bdb1	a0 	. 
	nop			;bdb2	00 	. 
	ld d,a			;bdb3	57 	W 
	and b			;bdb4	a0 	. 
lbdb5h:
	jr nz,lbdb7h		;bdb5	20 00 	  . 
lbdb7h:
	ld d,d			;bdb7	52 	R 
lbdb8h:
	sub b			;bdb8	90 	. 
	add a,b			;bdb9	80 	. 
	ld bc,03e01h		;bdba	01 01 3e 	. . > 
	and b			;bdbd	a0 	. 
	ld (hl),b			;bdbe	70 	p 
	nop			;bdbf	00 	. 
	ld (bc),a			;bdc0	02 	. 
	ld de,05828h		;bdc1	11 28 58 	. ( X 
	inc a			;bdc4	3c 	< 
	ld de,0a828h		;bdc5	11 28 a8 	. ( . 
	ld a,c			;bdc8	79 	y 
	inc b			;bdc9	04 	. 
	ld a,080h		;bdca	3e 80 	> . 
	ld b,b			;bdcc	40 	@ 
	ld bc,0503eh		;bdcd	01 3e 50 	. > P 
	add a,b			;bdd0	80 	. 
	ld bc,0203eh		;bdd1	01 3e 20 	. >   
lbdd4h:
	ld d,b			;bdd4	50 	P 
lbdd5h:
	ld bc,l803eh		;bdd5	01 3e 80 	. > . 
	and b			;bdd8	a0 	. 
	ld bc,00300h		;bdd9	01 00 03 	. . . 
lbddch:
	cpl			;bddc	2f 	/ 
	and b			;bddd	a0 	. 
	add a,b			;bdde	80 	. 
	nop			;bddf	00 	. 
	cpl			;bde0	2f 	/ 
	and b			;bde1	a0 	. 
	ld h,b			;bde2	60 	` 
	nop			;bde3	00 	. 
	cpl			;bde4	2f 	/ 
	ld d,b			;bde5	50 	P 
	and b			;bde6	a0 	. 
	nop			;bde7	00 	. 
	adc a,b			;bde8	88 	. 
	ld a,(bc)			;bde9	0a 	. 
	inc bc			;bdea	03 	. 
	add a,h			;bdeb	84 	. 
	bit 2,c		;bdec	cb 51 	. Q 
	inc b			;bdee	04 	. 
	call z,sub_8452h		;bdef	cc 52 84 	. R . 
	call z,l8152h		;bdf2	cc 52 81 	. R . 
	ld c,e			;bdf5	4b 	K 
	sub b			;bdf6	90 	. 
	inc b			;bdf7	04 	. 
	nop			;bdf8	00 	. 
	inc b			;bdf9	04 	. 
	ld (de),a			;bdfa	12 	. 
	jr z,lbe21h		;bdfb	28 24 	( $ 
	or (hl)			;bdfd	b6 	. 
	ld (de),a			;bdfe	12 	. 
	jr z,lbdb5h		;bdff	28 b4 	( . 
	ld a,c			;be01	79 	y 
	inc de			;be02	13 	. 
	jr c,lbe39h		;be03	38 34 	8 4 
	ret p			;be05	f0 	. 
	rla			;be06	17 	. 
	sub b			;be07	90 	. 
	jr z,$+5		;be08	28 03 	( . 
	adc a,b			;be0a	88 	. 
	inc b			;be0b	04 	. 
	ld bc,0ce88h		;be0c	01 88 ce 	. . . 
	nop			;be0f	00 	. 
	add a,c			;be10	81 	. 
	ld c,e			;be11	4b 	K 
	inc d			;be12	14 	. 
	call p,00400h		;be13	f4 00 04 	. . . 
	cpl			;be16	2f 	/ 
	and b			;be17	a0 	. 
	ld c,b			;be18	48 	H 
	nop			;be19	00 	. 
	ld a,0a0h		;be1a	3e a0 	> . 
	add a,b			;be1c	80 	. 
	nop			;be1d	00 	. 
	ld a,060h		;be1e	3e 60 	> ` 
	add a,b			;be20	80 	. 
lbe21h:
	nop			;be21	00 	. 
	ld a,020h		;be22	3e 20 	>   
	sub b			;be24	90 	. 
	nop			;be25	00 	. 
	dec b			;be26	05 	. 
	ld a,070h		;be27	3e 70 	> p 
lbe29h:
	ret nc			;be29	d0 	. 
	ld bc,0703eh		;be2a	01 3e 70 	. > p 
	sub b			;be2d	90 	. 
	ld bc,03057h		;be2e	01 57 30 	. W 0 
	ret c			;be31	d8 	. 
	ld bc,0402fh		;be32	01 2f 40 	. / @ 
	or b			;be35	b0 	. 
	nop			;be36	00 	. 
lbe37h:
	ld a,070h		;be37	3e 70 	> p 
lbe39h:
	or b			;be39	b0 	. 
	ld bc,05101h		;be3a	01 01 51 	. . Q 
	sbc a,b			;be3d	98 	. 
	and b			;be3e	a0 	. 
	nop			;be3f	00 	. 
	ld bc,l9016h		;be40	01 16 90 	. . . 
	ld a,h			;be43	7c 	| 
	ld b,088h		;be44	06 88 	. . 
	rlca			;be46	07 	. 
	ld (bc),a			;be47	02 	. 
	or b			;be48	b0 	. 
	call z,03000h		;be49	cc 00 30 	. . 0 
	call sub_8100h		;be4c	cd 00 81 	. . . 
	ld c,e			;be4f	4b 	K 
	ld (hl),h			;be50	74 	t 
	inc c			;be51	0c 	. 
	nop			;be52	00 	. 
	ld bc,02015h		;be53	01 15 20 	. .   
	inc d			;be56	14 	. 
	ld d,088h		;be57	16 88 	. . 
	rlca			;be59	07 	. 
	ld (bc),a			;be5a	02 	. 
	jr c,lbe29h		;be5b	38 cc 	8 . 
	nop			;be5d	00 	. 
	cp b			;be5e	b8 	. 
	call z,sub_8100h		;be5f	cc 00 81 	. . . 
	ld c,e			;be62	4b 	K 
	and b			;be63	a0 	. 
	ld h,h			;be64	64 	d 
	nop			;be65	00 	. 
	ld (bc),a			;be66	02 	. 
	ld d,h			;be67	54 	T 
	ld b,b			;be68	40 	@ 
	sbc a,b			;be69	98 	. 
	nop			;be6a	00 	. 
	ld a,090h		;be6b	3e 90 	> . 
	ret nz			;be6d	c0 	. 
	nop			;be6e	00 	. 
	adc a,b			;be6f	88 	. 
	inc b			;be70	04 	. 
	ld bc,0c808h		;be71	01 08 c8 	. . . 
	ld d,b			;be74	50 	P 
	add a,c			;be75	81 	. 
	ld c,e			;be76	4b 	K 
	inc h			;be77	24 	$ 
	inc h			;be78	24 	$ 
	ld (bc),a			;be79	02 	. 
	ld (bc),a			;be7a	02 	. 
	ld d,090h		;be7b	16 90 	. . 
	ld a,h			;be7d	7c 	| 
	ld b,052h		;be7e	06 52 	. R 
	ld b,b			;be80	40 	@ 
	add a,b			;be81	80 	. 
	rlca			;be82	07 	. 
	inc b			;be83	04 	. 
	ld a,0a0h		;be84	3e a0 	> . 
	ld h,b			;be86	60 	` 
	nop			;be87	00 	. 
	cpl			;be88	2f 	/ 
	ld d,b			;be89	50 	P 
	ret nz			;be8a	c0 	. 
	nop			;be8b	00 	. 
	ld a,0a0h		;be8c	3e a0 	> . 
	sub b			;be8e	90 	. 
	ld bc,0a03eh		;be8f	01 3e a0 	. > . 
	ret nz			;be92	c0 	. 
	ld bc,01c84h		;be93	01 84 1c 	. . . 
	sbc a,b			;be96	98 	. 
	ret nz			;be97	c0 	. 
	ld bc,00500h		;be98	01 00 05 	. . . 
lbe9bh:
	ld d,050h		;be9b	16 50 	. P 
	call z,05704h		;be9d	cc 04 57 	. . W 
	and b			;bea0	a0 	. 
	ld h,b			;bea1	60 	` 
	nop			;bea2	00 	. 
	ld d,a			;bea3	57 	W 
	and b			;bea4	a0 	. 
	and b			;bea5	a0 	. 
	nop			;bea6	00 	. 
	ld d,a			;bea7	57 	W 
	and b			;bea8	a0 	. 
	ret nc			;bea9	d0 	. 
	nop			;beaa	00 	. 
	ld d,a			;beab	57 	W 
	ld d,b			;beac	50 	P 
	and b			;bead	a0 	. 
	nop			;beae	00 	. 
	adc a,b			;beaf	88 	. 
	inc b			;beb0	04 	. 
	ld bc,0caa0h		;beb1	01 a0 ca 	. . . 
	djnz lbe37h		;beb4	10 81 	. . 
	ld c,e			;beb6	4b 	K 
	inc h			;beb7	24 	$ 
	call p,00100h		;beb8	f4 00 01 	. . . 
lbebbh:
	ld d,a			;bebb	57 	W 
	and b			;bebc	a0 	. 
	djnz lbebfh		;bebd	10 00 	. . 
lbebfh:
	inc bc			;bebf	03 	. 
	ld (de),a			;bec0	12 	. 
	jr z,lbf07h		;bec1	28 44 	( D 
	inc a			;bec3	3c 	< 
	ld (de),a			;bec4	12 	. 
	jr z,lbe9bh		;bec5	28 d4 	( . 
	ld a,c			;bec7	79 	y 
	inc de			;bec8	13 	. 
	jr c,$+86		;bec9	38 54 	8 T 
	jp p,05704h		;becb	f2 04 57 	. . W 
	and b			;bece	a0 	. 
	sub b			;becf	90 	. 
	nop			;bed0	00 	. 
	ld d,a			;bed1	57 	W 
	and b			;bed2	a0 	. 
	ld (hl),b			;bed3	70 	p 
	nop			;bed4	00 	. 
	ld a,050h		;bed5	3e 50 	> P 
	ld d,b			;bed7	50 	P 
	ld bc,04052h		;bed8	01 52 40 	. R @ 
	ret nc			;bedb	d0 	. 
	dec b			;bedc	05 	. 
	ld (bc),a			;bedd	02 	. 
	ld a,0a0h		;bede	3e a0 	> . 
	ld h,b			;bee0	60 	` 
	ld bc,07016h		;bee1	01 16 70 	. . p 
	ld l,b			;bee4	68 	h 
	inc b			;bee5	04 	. 
	adc a,b			;bee6	88 	. 
	inc b			;bee7	04 	. 
	ld bc,0c890h		;bee8	01 90 c8 	. . . 
	nop			;beeb	00 	. 
	add a,c			;beec	81 	. 
	ld c,e			;beed	4b 	K 
	sub b			;beee	90 	. 
	and h			;beef	a4 	. 
	nop			;bef0	00 	. 
	ld (bc),a			;bef1	02 	. 
	ld d,090h		;bef2	16 90 	. . 
	jr z,lbefah		;bef4	28 04 	( . 
	ld d,a			;bef6	57 	W 
	and b			;bef7	a0 	. 
	ld (hl),b			;bef8	70 	p 
	nop			;bef9	00 	. 
lbefah:
	inc b			;befa	04 	. 
	inc l			;befb	2c 	, 
	ld l,b			;befc	68 	h 
	ld d,b			;befd	50 	P 
	nop			;befe	00 	. 
	inc l			;beff	2c 	, 
	ld c,b			;bf00	48 	H 
	add a,b			;bf01	80 	. 
	nop			;bf02	00 	. 
	inc l			;bf03	2c 	, 
	adc a,b			;bf04	88 	. 
	and b			;bf05	a0 	. 
	nop			;bf06	00 	. 
lbf07h:
	inc l			;bf07	2c 	, 
	ld e,b			;bf08	58 	X 
	ret nc			;bf09	d0 	. 
	nop			;bf0a	00 	. 
	inc bc			;bf0b	03 	. 
	inc l			;bf0c	2c 	, 
	xor b			;bf0d	a8 	. 
	jr nz,lbf10h		;bf0e	20 00 	  . 
lbf10h:
	inc l			;bf10	2c 	, 
	ld e,b			;bf11	58 	X 
	ld d,b			;bf12	50 	P 
	nop			;bf13	00 	. 
	inc l			;bf14	2c 	, 
	ld a,b			;bf15	78 	x 
	sub b			;bf16	90 	. 
	nop			;bf17	00 	. 
	ld bc,06057h		;bf18	01 57 60 	. W ` 
	ret nz			;bf1b	c0 	. 
	nop			;bf1c	00 	. 
	ld bc,0603eh		;bf1d	01 3e 60 	. > ` 
	ret nz			;bf20	c0 	. 
	ld bc,02c04h		;bf21	01 04 2c 	. . , 
	ld h,b			;bf24	60 	` 
	ret z			;bf25	c8 	. 
	nop			;bf26	00 	. 
	inc l			;bf27	2c 	, 
	ld h,b			;bf28	60 	` 
	sub b			;bf29	90 	. 
	nop			;bf2a	00 	. 
	inc l			;bf2b	2c 	, 
	ld h,b			;bf2c	60 	` 
	ld c,b			;bf2d	48 	H 
	nop			;bf2e	00 	. 
	inc l			;bf2f	2c 	, 
	ld h,b			;bf30	60 	` 
	jr lbf33h		;bf31	18 00 	. . 
lbf33h:
	adc a,b			;bf33	88 	. 
	inc b			;bf34	04 	. 
	ld bc,0c994h		;bf35	01 94 c9 	. . . 
	djnz lbebbh		;bf38	10 81 	. . 
	ld c,e			;bf3a	4b 	K 
	ld h,h			;bf3b	64 	d 
	call p,00000h		;bf3c	f4 00 00 	. . . 
	adc a,b			;bf3f	88 	. 
	rlca			;bf40	07 	. 
	ld (bc),a			;bf41	02 	. 
lbf42h:
	add a,b			;bf42	80 	. 
	ret z			;bf43	c8 	. 
	nop			;bf44	00 	. 
	nop			;bf45	00 	. 
	ret			;bf46	c9 	. 
	nop			;bf47	00 	. 
	inc b			;bf48	04 	. 
	ld a,0a0h		;bf49	3e a0 	> . 
	add a,b			;bf4b	80 	. 
	nop			;bf4c	00 	. 
	cpl			;bf4d	2f 	/ 
	jr nc,lbfc0h		;bf4e	30 70 	0 p 
	nop			;bf50	00 	. 
	cpl			;bf51	2f 	/ 
	ld h,b			;bf52	60 	` 
	and b			;bf53	a0 	. 
	nop			;bf54	00 	. 
	cpl			;bf55	2f 	/ 
	add a,b			;bf56	80 	. 
	or b			;bf57	b0 	. 
	nop			;bf58	00 	. 
	inc bc			;bf59	03 	. 
	ld a,070h		;bf5a	3e 70 	> p 
	sbc a,b			;bf5c	98 	. 
	nop			;bf5d	00 	. 
	ld d,020h		;bf5e	16 20 	.   
	cp b			;bf60	b8 	. 
	ld (bc),a			;bf61	02 	. 
	ld a,060h		;bf62	3e 60 	> ` 
	ld d,b			;bf64	50 	P 
	nop			;bf65	00 	. 
	inc bc			;bf66	03 	. 
	ld a,030h		;bf67	3e 30 	> 0 
	ld a,b			;bf69	78 	x 
	nop			;bf6a	00 	. 
	ld a,0a0h		;bf6b	3e a0 	> . 
	ld b,b			;bf6d	40 	@ 
	ld bc,0a03eh		;bf6e	01 3e a0 	. > . 
	or b			;bf71	b0 	. 
	ld bc,01501h		;bf72	01 01 15 	. . . 
	jr nz,lbf97h		;bf75	20 20 	    
	jr lbf7ah		;bf77	18 01 	. . 
	cpl			;bf79	2f 	/ 
lbf7ah:
	add a,b			;bf7a	80 	. 
	or b			;bf7b	b0 	. 
	nop			;bf7c	00 	. 
	ld (bc),a			;bf7d	02 	. 
	ld a,080h		;bf7e	3e 80 	> . 
	ld l,b			;bf80	68 	h 
	ld bc,0a03eh		;bf81	01 3e a0 	. > . 
	and b			;bf84	a0 	. 
	nop			;bf85	00 	. 
	nop			;bf86	00 	. 
	rst 38h			;bf87	ff 	. 
	rst 38h			;bf88	ff 	. 
	rst 38h			;bf89	ff 	. 
	rst 38h			;bf8a	ff 	. 
	rst 38h			;bf8b	ff 	. 
	rst 38h			;bf8c	ff 	. 
	rst 38h			;bf8d	ff 	. 
	rst 38h			;bf8e	ff 	. 
	rst 38h			;bf8f	ff 	. 
	rst 38h			;bf90	ff 	. 
	rst 38h			;bf91	ff 	. 
	rst 38h			;bf92	ff 	. 
	rst 38h			;bf93	ff 	. 
	rst 38h			;bf94	ff 	. 
	rst 38h			;bf95	ff 	. 
	rst 38h			;bf96	ff 	. 
lbf97h:
	rst 38h			;bf97	ff 	. 
	rst 38h			;bf98	ff 	. 
	rst 38h			;bf99	ff 	. 
	rst 38h			;bf9a	ff 	. 
	rst 38h			;bf9b	ff 	. 
	rst 38h			;bf9c	ff 	. 
	rst 38h			;bf9d	ff 	. 
	rst 38h			;bf9e	ff 	. 
	rst 38h			;bf9f	ff 	. 
	rst 38h			;bfa0	ff 	. 
	rst 38h			;bfa1	ff 	. 
	rst 38h			;bfa2	ff 	. 
	rst 38h			;bfa3	ff 	. 
	rst 38h			;bfa4	ff 	. 
	rst 38h			;bfa5	ff 	. 
	rst 38h			;bfa6	ff 	. 
	rst 38h			;bfa7	ff 	. 
	rst 38h			;bfa8	ff 	. 
	rst 38h			;bfa9	ff 	. 
	rst 38h			;bfaa	ff 	. 
	rst 38h			;bfab	ff 	. 
	rst 38h			;bfac	ff 	. 
	rst 38h			;bfad	ff 	. 
	rst 38h			;bfae	ff 	. 
	rst 38h			;bfaf	ff 	. 
	rst 38h			;bfb0	ff 	. 
	rst 38h			;bfb1	ff 	. 
	rst 38h			;bfb2	ff 	. 
	rst 38h			;bfb3	ff 	. 
	rst 38h			;bfb4	ff 	. 
	rst 38h			;bfb5	ff 	. 
	rst 38h			;bfb6	ff 	. 
	rst 38h			;bfb7	ff 	. 
	rst 38h			;bfb8	ff 	. 
	rst 38h			;bfb9	ff 	. 
	rst 38h			;bfba	ff 	. 
	rst 38h			;bfbb	ff 	. 
	rst 38h			;bfbc	ff 	. 
	rst 38h			;bfbd	ff 	. 
	rst 38h			;bfbe	ff 	. 
	rst 38h			;bfbf	ff 	. 
lbfc0h:
	rst 38h			;bfc0	ff 	. 
	rst 38h			;bfc1	ff 	. 
	rst 38h			;bfc2	ff 	. 
	rst 38h			;bfc3	ff 	. 
	rst 38h			;bfc4	ff 	. 
	rst 38h			;bfc5	ff 	. 
	rst 38h			;bfc6	ff 	. 
	rst 38h			;bfc7	ff 	. 
	rst 38h			;bfc8	ff 	. 
	rst 38h			;bfc9	ff 	. 
	rst 38h			;bfca	ff 	. 
	rst 38h			;bfcb	ff 	. 
	rst 38h			;bfcc	ff 	. 
	rst 38h			;bfcd	ff 	. 
	rst 38h			;bfce	ff 	. 
	rst 38h			;bfcf	ff 	. 
	rst 38h			;bfd0	ff 	. 
	rst 38h			;bfd1	ff 	. 
	rst 38h			;bfd2	ff 	. 
	rst 38h			;bfd3	ff 	. 
	rst 38h			;bfd4	ff 	. 
	rst 38h			;bfd5	ff 	. 
	rst 38h			;bfd6	ff 	. 
	rst 38h			;bfd7	ff 	. 
	rst 38h			;bfd8	ff 	. 
	rst 38h			;bfd9	ff 	. 
	rst 38h			;bfda	ff 	. 
	rst 38h			;bfdb	ff 	. 
	rst 38h			;bfdc	ff 	. 
	rst 38h			;bfdd	ff 	. 
	rst 38h			;bfde	ff 	. 
	rst 38h			;bfdf	ff 	. 
	rst 38h			;bfe0	ff 	. 
	rst 38h			;bfe1	ff 	. 
	rst 38h			;bfe2	ff 	. 
	rst 38h			;bfe3	ff 	. 
	rst 38h			;bfe4	ff 	. 
	rst 38h			;bfe5	ff 	. 
	rst 38h			;bfe6	ff 	. 
	rst 38h			;bfe7	ff 	. 
	rst 38h			;bfe8	ff 	. 
	rst 38h			;bfe9	ff 	. 
	rst 38h			;bfea	ff 	. 
	rst 38h			;bfeb	ff 	. 
	rst 38h			;bfec	ff 	. 
	rst 38h			;bfed	ff 	. 
	rst 38h			;bfee	ff 	. 
	rst 38h			;bfef	ff 	. 
	rst 38h			;bff0	ff 	. 
	rst 38h			;bff1	ff 	. 
	rst 38h			;bff2	ff 	. 
	rst 38h			;bff3	ff 	. 
	rst 38h			;bff4	ff 	. 
	rst 38h			;bff5	ff 	. 
	rst 38h			;bff6	ff 	. 
	rst 38h			;bff7	ff 	. 
	rst 38h			;bff8	ff 	. 
	rst 38h			;bff9	ff 	. 
	rst 38h			;bffa	ff 	. 
	rst 38h			;bffb	ff 	. 
	rst 38h			;bffc	ff 	. 
	rst 38h			;bffd	ff 	. 
	rst 38h			;bffe	ff 	. 
	rst 38h			;bfff	ff 	. 
