; ============================================================
; Banco 5 do ROM (offset no ficheiro: 0x14000 - 0x17FFF)
; Endereco de origem assumido no mapa do Z80: 8000h (assumido: banco paginavel para o slot 2 via porta FFFFh)
; Gerado com z80dasm 1.1.6 (-a enderecos, -t bytes originais, -l labels)
; NOTA: saltos/chamadas absolutos (JP/CALL) so sao validos quando
; este banco estiver de facto paginado no slot indicado acima.
; Zonas de dados (graficos, tabelas, musica) podem surgir desmontadas
; incorrectamente como instrucoes -- ver aviso Self-modifying-code
; nos ficheiros onde a heuristica do z80dasm o assinalou.
; ============================================================

; z80dasm 1.1.6
; command line: z80dasm -a -t -l -g 0x8000 -s /home/claude/out/bank5.sym -o /home/claude/out/bank5.asm bank5.bin

	org	08000h

l8000h:
	ld d,b			;8000	50 	P 
	add a,h			;8001	84 	. 
sub_8002h:
	ld e,b			;8002	58 	X 
	add a,h			;8003	84 	. 
	ld h,b			;8004	60 	` 
	add a,h			;8005	84 	. 
	ld l,b			;8006	68 	h 
	add a,h			;8007	84 	. 
	ld (hl),b			;8008	70 	p 
	add a,h			;8009	84 	. 
	ld a,b			;800a	78 	x 
	add a,h			;800b	84 	. 
	add a,b			;800c	80 	. 
	add a,h			;800d	84 	. 
	adc a,b			;800e	88 	. 
	add a,h			;800f	84 	. 
	sub b			;8010	90 	. 
	add a,h			;8011	84 	. 
	sbc a,b			;8012	98 	. 
	add a,h			;8013	84 	. 
	and b			;8014	a0 	. 
	add a,h			;8015	84 	. 
	xor b			;8016	a8 	. 
	add a,h			;8017	84 	. 
	or b			;8018	b0 	. 
	add a,h			;8019	84 	. 
	cp b			;801a	b8 	. 
	add a,h			;801b	84 	. 
	cp b			;801c	b8 	. 
	add a,h			;801d	84 	. 
	cp b			;801e	b8 	. 
	add a,h			;801f	84 	. 
	cp c			;8020	b9 	. 
	add a,h			;8021	84 	. 
	pop bc			;8022	c1 	. 
	add a,h			;8023	84 	. 
	ret			;8024	c9 	. 
	add a,h			;8025	84 	. 
	ret			;8026	c9 	. 
	add a,h			;8027	84 	. 
	jp z,0d284h		;8028	ca 84 d2 	. . . 
	add a,h			;802b	84 	. 
	jp c,0e284h		;802c	da 84 e2 	. . . 
	add a,h			;802f	84 	. 
	jp pe,0f284h		;8030	ea 84 f2 	. . . 
	add a,h			;8033	84 	. 
	jp m,00284h		;8034	fa 84 02 	. . . 
	add a,l			;8037	85 	. 
	ld (bc),a			;8038	02 	. 
	add a,l			;8039	85 	. 
	ld (bc),a			;803a	02 	. 
	add a,l			;803b	85 	. 
	ld (bc),a			;803c	02 	. 
	add a,l			;803d	85 	. 
	ld (bc),a			;803e	02 	. 
	add a,l			;803f	85 	. 
	inc bc			;8040	03 	. 
	add a,l			;8041	85 	. 
	dec bc			;8042	0b 	. 
	add a,l			;8043	85 	. 
	inc de			;8044	13 	. 
	add a,l			;8045	85 	. 
	dec de			;8046	1b 	. 
	add a,l			;8047	85 	. 
	inc hl			;8048	23 	# 
	add a,l			;8049	85 	. 
	dec hl			;804a	2b 	+ 
	add a,l			;804b	85 	. 
	inc sp			;804c	33 	3 
	add a,l			;804d	85 	. 
	dec sp			;804e	3b 	; 
	add a,l			;804f	85 	. 
	ld b,e			;8050	43 	C 
	add a,l			;8051	85 	. 
	ld c,e			;8052	4b 	K 
	add a,l			;8053	85 	. 
	ld d,e			;8054	53 	S 
	add a,l			;8055	85 	. 
	ld e,e			;8056	5b 	[ 
	add a,l			;8057	85 	. 
	ld h,e			;8058	63 	c 
	add a,l			;8059	85 	. 
	ld l,e			;805a	6b 	k 
	add a,l			;805b	85 	. 
	ld (hl),e			;805c	73 	s 
	add a,l			;805d	85 	. 
	ld a,e			;805e	7b 	{ 
	add a,l			;805f	85 	. 
	add a,e			;8060	83 	. 
	add a,l			;8061	85 	. 
	adc a,e			;8062	8b 	. 
	add a,l			;8063	85 	. 
	sub e			;8064	93 	. 
	add a,l			;8065	85 	. 
	sbc a,e			;8066	9b 	. 
	add a,l			;8067	85 	. 
	and e			;8068	a3 	. 
	add a,l			;8069	85 	. 
	xor e			;806a	ab 	. 
	add a,l			;806b	85 	. 
	or e			;806c	b3 	. 
	add a,l			;806d	85 	. 
	cp e			;806e	bb 	. 
	add a,l			;806f	85 	. 
	jp 0cb85h		;8070	c3 85 cb 	. . . 
	add a,l			;8073	85 	. 
	out (085h),a		;8074	d3 85 	. . 
	in a,(085h)		;8076	db 85 	. . 
	ex (sp),hl			;8078	e3 	. 
	add a,l			;8079	85 	. 
	ex de,hl			;807a	eb 	. 
	add a,l			;807b	85 	. 
	di			;807c	f3 	. 
	add a,l			;807d	85 	. 
	ei			;807e	fb 	. 
l807fh:
	add a,l			;807f	85 	. 
	inc bc			;8080	03 	. 
	add a,(hl)			;8081	86 	. 
	dec bc			;8082	0b 	. 
	add a,(hl)			;8083	86 	. 
	inc de			;8084	13 	. 
	add a,(hl)			;8085	86 	. 
	dec de			;8086	1b 	. 
	add a,(hl)			;8087	86 	. 
	inc hl			;8088	23 	# 
	add a,(hl)			;8089	86 	. 
	dec hl			;808a	2b 	+ 
	add a,(hl)			;808b	86 	. 
	inc sp			;808c	33 	3 
	add a,(hl)			;808d	86 	. 
	dec sp			;808e	3b 	; 
	add a,(hl)			;808f	86 	. 
	ld b,e			;8090	43 	C 
	add a,(hl)			;8091	86 	. 
	dec l			;8092	2d 	- 
	adc a,h			;8093	8c 	. 
	call 06588h		;8094	cd 88 65 	. . e 
	adc a,e			;8097	8b 	. 
	push bc			;8098	c5 	. 
	adc a,b			;8099	88 	. 
	dec a			;809a	3d 	= 
	adc a,h			;809b	8c 	. 
	ld b,l			;809c	45 	E 
	adc a,h			;809d	8c 	. 
	ld c,l			;809e	4d 	M 
	adc a,h			;809f	8c 	. 
	ld c,h			;80a0	4c 	L 
	add a,(hl)			;80a1	86 	. 
	ld d,h			;80a2	54 	T 
	add a,(hl)			;80a3	86 	. 
	ld e,h			;80a4	5c 	\ 
	add a,(hl)			;80a5	86 	. 
	ld h,h			;80a6	64 	d 
	add a,(hl)			;80a7	86 	. 
	ld l,h			;80a8	6c 	l 
	add a,(hl)			;80a9	86 	. 
	ld (hl),h			;80aa	74 	t 
	add a,(hl)			;80ab	86 	. 
	ld a,h			;80ac	7c 	| 
	add a,(hl)			;80ad	86 	. 
	add a,h			;80ae	84 	. 
	add a,(hl)			;80af	86 	. 
	adc a,h			;80b0	8c 	. 
	add a,(hl)			;80b1	86 	. 
	sub h			;80b2	94 	. 
	add a,(hl)			;80b3	86 	. 
	sub h			;80b4	94 	. 
	add a,(hl)			;80b5	86 	. 
	sub h			;80b6	94 	. 
	add a,(hl)			;80b7	86 	. 
	sub h			;80b8	94 	. 
	add a,(hl)			;80b9	86 	. 
	sub h			;80ba	94 	. 
	add a,(hl)			;80bb	86 	. 
	sub h			;80bc	94 	. 
	add a,(hl)			;80bd	86 	. 
	sub h			;80be	94 	. 
	add a,(hl)			;80bf	86 	. 
l80c0h:
	sub h			;80c0	94 	. 
	add a,(hl)			;80c1	86 	. 
	sub h			;80c2	94 	. 
	add a,(hl)			;80c3	86 	. 
	sub h			;80c4	94 	. 
	add a,(hl)			;80c5	86 	. 
	sub h			;80c6	94 	. 
	add a,(hl)			;80c7	86 	. 
	sub h			;80c8	94 	. 
	add a,(hl)			;80c9	86 	. 
	sub h			;80ca	94 	. 
	add a,(hl)			;80cb	86 	. 
	sub h			;80cc	94 	. 
	add a,(hl)			;80cd	86 	. 
	sub h			;80ce	94 	. 
	add a,(hl)			;80cf	86 	. 
	sub l			;80d0	95 	. 
	add a,(hl)			;80d1	86 	. 
	sbc a,l			;80d2	9d 	. 
	add a,(hl)			;80d3	86 	. 
	and l			;80d4	a5 	. 
	add a,(hl)			;80d5	86 	. 
	xor l			;80d6	ad 	. 
	add a,(hl)			;80d7	86 	. 
	or l			;80d8	b5 	. 
	add a,(hl)			;80d9	86 	. 
	cp l			;80da	bd 	. 
	add a,(hl)			;80db	86 	. 
	push bc			;80dc	c5 	. 
	add a,(hl)			;80dd	86 	. 
	call 0d586h		;80de	cd 86 d5 	. . . 
	add a,(hl)			;80e1	86 	. 
	add a,(ix-01bh)		;80e2	dd 86 e5 	. . . 
	add a,(hl)			;80e5	86 	. 
	defb 0edh;next byte illegal after ed		;80e6	ed 	. 
	add a,(hl)			;80e7	86 	. 
	push af			;80e8	f5 	. 
	add a,(hl)			;80e9	86 	. 
	add a,(iy+005h)		;80ea	fd 86 05 	. . . 
	add a,a			;80ed	87 	. 
	dec c			;80ee	0d 	. 
	add a,a			;80ef	87 	. 
	dec d			;80f0	15 	. 
	add a,a			;80f1	87 	. 
	dec d			;80f2	15 	. 
	add a,a			;80f3	87 	. 
	dec e			;80f4	1d 	. 
	add a,a			;80f5	87 	. 
	dec h			;80f6	25 	% 
	add a,a			;80f7	87 	. 
sub_80f8h:
	dec l			;80f8	2d 	- 
	add a,a			;80f9	87 	. 
	dec (hl)			;80fa	35 	5 
	add a,a			;80fb	87 	. 
	dec a			;80fc	3d 	= 
	add a,a			;80fd	87 	. 
	ld b,l			;80fe	45 	E 
	add a,a			;80ff	87 	. 
l8100h:
	ld c,l			;8100	4d 	M 
	add a,a			;8101	87 	. 
	ld d,l			;8102	55 	U 
	add a,a			;8103	87 	. 
l8104h:
	ld e,l			;8104	5d 	] 
	add a,a			;8105	87 	. 
	ld h,l			;8106	65 	e 
	add a,a			;8107	87 	. 
	ld l,l			;8108	6d 	m 
	add a,a			;8109	87 	. 
	ld (hl),l			;810a	75 	u 
	add a,a			;810b	87 	. 
	ld a,l			;810c	7d 	} 
	add a,a			;810d	87 	. 
	add a,l			;810e	85 	. 
	add a,a			;810f	87 	. 
	adc a,l			;8110	8d 	. 
	add a,a			;8111	87 	. 
	sub l			;8112	95 	. 
	add a,a			;8113	87 	. 
	sbc a,l			;8114	9d 	. 
	add a,a			;8115	87 	. 
	and l			;8116	a5 	. 
	add a,a			;8117	87 	. 
	xor l			;8118	ad 	. 
	add a,a			;8119	87 	. 
	or l			;811a	b5 	. 
	add a,a			;811b	87 	. 
	cp l			;811c	bd 	. 
	add a,a			;811d	87 	. 
	push bc			;811e	c5 	. 
	add a,a			;811f	87 	. 
	call 0d587h		;8120	cd 87 d5 	. . . 
	add a,a			;8123	87 	. 
	defb 0ddh,087h,0e5h	;illegal sequence		;8124	dd 87 e5 	. . . 
	add a,a			;8127	87 	. 
	defb 0edh;next byte illegal after ed		;8128	ed 	. 
	add a,a			;8129	87 	. 
	push af			;812a	f5 	. 
	add a,a			;812b	87 	. 
	defb 0fdh,087h,005h	;illegal sequence		;812c	fd 87 05 	. . . 
	adc a,b			;812f	88 	. 
	dec c			;8130	0d 	. 
	adc a,b			;8131	88 	. 
	dec d			;8132	15 	. 
	adc a,b			;8133	88 	. 
	dec e			;8134	1d 	. 
	adc a,b			;8135	88 	. 
	dec h			;8136	25 	% 
	adc a,b			;8137	88 	. 
	dec l			;8138	2d 	- 
	adc a,b			;8139	88 	. 
	dec (hl)			;813a	35 	5 
	adc a,b			;813b	88 	. 
	dec a			;813c	3d 	= 
	adc a,b			;813d	88 	. 
	ld b,l			;813e	45 	E 
	adc a,b			;813f	88 	. 
	ld c,l			;8140	4d 	M 
l8141h:
	adc a,b			;8141	88 	. 
	ld d,l			;8142	55 	U 
	adc a,b			;8143	88 	. 
	ld e,l			;8144	5d 	] 
	adc a,b			;8145	88 	. 
	ld h,l			;8146	65 	e 
	adc a,b			;8147	88 	. 
	ld l,l			;8148	6d 	m 
	adc a,b			;8149	88 	. 
	ld (hl),l			;814a	75 	u 
	adc a,b			;814b	88 	. 
	ld a,l			;814c	7d 	} 
	adc a,b			;814d	88 	. 
	add a,l			;814e	85 	. 
	adc a,b			;814f	88 	. 
	adc a,l			;8150	8d 	. 
	adc a,b			;8151	88 	. 
	sub l			;8152	95 	. 
	adc a,b			;8153	88 	. 
	sbc a,l			;8154	9d 	. 
	adc a,b			;8155	88 	. 
	and l			;8156	a5 	. 
	adc a,b			;8157	88 	. 
	xor l			;8158	ad 	. 
	adc a,b			;8159	88 	. 
	or l			;815a	b5 	. 
	adc a,b			;815b	88 	. 
	cp l			;815c	bd 	. 
	adc a,b			;815d	88 	. 
	push de			;815e	d5 	. 
	adc a,b			;815f	88 	. 
	defb 0ddh,088h,0e5h	;illegal sequence		;8160	dd 88 e5 	. . . 
	adc a,b			;8163	88 	. 
	defb 0edh;next byte illegal after ed		;8164	ed 	. 
	adc a,b			;8165	88 	. 
	push af			;8166	f5 	. 
	adc a,b			;8167	88 	. 
	defb 0fdh,088h,005h	;illegal sequence		;8168	fd 88 05 	. . . 
	adc a,c			;816b	89 	. 
	dec c			;816c	0d 	. 
	adc a,c			;816d	89 	. 
	dec d			;816e	15 	. 
	adc a,c			;816f	89 	. 
	dec e			;8170	1d 	. 
	adc a,c			;8171	89 	. 
	dec h			;8172	25 	% 
	adc a,c			;8173	89 	. 
	dec l			;8174	2d 	- 
	adc a,c			;8175	89 	. 
	dec (hl)			;8176	35 	5 
	adc a,c			;8177	89 	. 
	dec a			;8178	3d 	= 
	adc a,c			;8179	89 	. 
	ld b,l			;817a	45 	E 
	adc a,c			;817b	89 	. 
	ld c,l			;817c	4d 	M 
	adc a,c			;817d	89 	. 
	ld d,l			;817e	55 	U 
	adc a,c			;817f	89 	. 
sub_8180h:
	ld e,l			;8180	5d 	] 
	adc a,c			;8181	89 	. 
	ld h,l			;8182	65 	e 
	adc a,c			;8183	89 	. 
	ld l,l			;8184	6d 	m 
	adc a,c			;8185	89 	. 
	ld (hl),l			;8186	75 	u 
	adc a,c			;8187	89 	. 
	ld a,l			;8188	7d 	} 
	adc a,c			;8189	89 	. 
	add a,l			;818a	85 	. 
	adc a,c			;818b	89 	. 
	adc a,l			;818c	8d 	. 
	adc a,c			;818d	89 	. 
	sub l			;818e	95 	. 
	adc a,c			;818f	89 	. 
	sbc a,l			;8190	9d 	. 
	adc a,c			;8191	89 	. 
	and l			;8192	a5 	. 
	adc a,c			;8193	89 	. 
	xor l			;8194	ad 	. 
	adc a,c			;8195	89 	. 
	or l			;8196	b5 	. 
	adc a,c			;8197	89 	. 
	cp l			;8198	bd 	. 
	adc a,c			;8199	89 	. 
	push bc			;819a	c5 	. 
	adc a,c			;819b	89 	. 
	call 0d589h		;819c	cd 89 d5 	. . . 
	adc a,c			;819f	89 	. 
	defb 0ddh,089h,0e5h	;illegal sequence		;81a0	dd 89 e5 	. . . 
	adc a,c			;81a3	89 	. 
	defb 0edh;next byte illegal after ed		;81a4	ed 	. 
l81a5h:
	adc a,c			;81a5	89 	. 
	push af			;81a6	f5 	. 
	adc a,c			;81a7	89 	. 
	defb 0fdh,089h,005h	;illegal sequence		;81a8	fd 89 05 	. . . 
	adc a,d			;81ab	8a 	. 
	dec c			;81ac	0d 	. 
	adc a,d			;81ad	8a 	. 
	dec d			;81ae	15 	. 
	adc a,d			;81af	8a 	. 
	dec e			;81b0	1d 	. 
	adc a,d			;81b1	8a 	. 
	dec h			;81b2	25 	% 
	adc a,d			;81b3	8a 	. 
	dec l			;81b4	2d 	- 
	adc a,d			;81b5	8a 	. 
	dec (hl)			;81b6	35 	5 
	adc a,d			;81b7	8a 	. 
	dec a			;81b8	3d 	= 
sub_81b9h:
	adc a,d			;81b9	8a 	. 
	ld b,l			;81ba	45 	E 
	adc a,d			;81bb	8a 	. 
	ld c,l			;81bc	4d 	M 
	adc a,d			;81bd	8a 	. 
	ld d,l			;81be	55 	U 
	adc a,d			;81bf	8a 	. 
	ld e,l			;81c0	5d 	] 
	adc a,d			;81c1	8a 	. 
	ld h,l			;81c2	65 	e 
	adc a,d			;81c3	8a 	. 
	ld l,l			;81c4	6d 	m 
	adc a,d			;81c5	8a 	. 
	ld (hl),l			;81c6	75 	u 
	adc a,d			;81c7	8a 	. 
	ld a,l			;81c8	7d 	} 
	adc a,d			;81c9	8a 	. 
	add a,l			;81ca	85 	. 
	adc a,d			;81cb	8a 	. 
	adc a,l			;81cc	8d 	. 
	adc a,d			;81cd	8a 	. 
	sub l			;81ce	95 	. 
	adc a,d			;81cf	8a 	. 
	sbc a,l			;81d0	9d 	. 
	adc a,d			;81d1	8a 	. 
	and l			;81d2	a5 	. 
	adc a,d			;81d3	8a 	. 
	xor l			;81d4	ad 	. 
	adc a,d			;81d5	8a 	. 
	or l			;81d6	b5 	. 
	adc a,d			;81d7	8a 	. 
	cp l			;81d8	bd 	. 
	adc a,d			;81d9	8a 	. 
	push bc			;81da	c5 	. 
	adc a,d			;81db	8a 	. 
	call 0d58ah		;81dc	cd 8a d5 	. . . 
	adc a,d			;81df	8a 	. 
	defb 0ddh,08ah,0e5h	;illegal sequence		;81e0	dd 8a e5 	. . . 
	adc a,d			;81e3	8a 	. 
	defb 0edh;next byte illegal after ed		;81e4	ed 	. 
	adc a,d			;81e5	8a 	. 
	push af			;81e6	f5 	. 
	adc a,d			;81e7	8a 	. 
	defb 0fdh,08ah,005h	;illegal sequence		;81e8	fd 8a 05 	. . . 
	adc a,e			;81eb	8b 	. 
	dec c			;81ec	0d 	. 
	adc a,e			;81ed	8b 	. 
	dec d			;81ee	15 	. 
	adc a,e			;81ef	8b 	. 
	dec e			;81f0	1d 	. 
	adc a,e			;81f1	8b 	. 
	dec h			;81f2	25 	% 
	adc a,e			;81f3	8b 	. 
	dec l			;81f4	2d 	- 
	adc a,e			;81f5	8b 	. 
	dec (hl)			;81f6	35 	5 
	adc a,e			;81f7	8b 	. 
	dec a			;81f8	3d 	= 
	adc a,e			;81f9	8b 	. 
	ld b,l			;81fa	45 	E 
	adc a,e			;81fb	8b 	. 
	ld c,l			;81fc	4d 	M 
	adc a,e			;81fd	8b 	. 
	ld d,l			;81fe	55 	U 
l81ffh:
	adc a,e			;81ff	8b 	. 
	ld d,b			;8200	50 	P 
	add a,h			;8201	84 	. 
	ld e,b			;8202	58 	X 
	add a,h			;8203	84 	. 
	ld h,b			;8204	60 	` 
	add a,h			;8205	84 	. 
	ld l,b			;8206	68 	h 
	add a,h			;8207	84 	. 
	ld (hl),b			;8208	70 	p 
	add a,h			;8209	84 	. 
	ld a,b			;820a	78 	x 
	add a,h			;820b	84 	. 
	add a,b			;820c	80 	. 
	add a,h			;820d	84 	. 
	adc a,b			;820e	88 	. 
	add a,h			;820f	84 	. 
	sub b			;8210	90 	. 
	add a,h			;8211	84 	. 
	sbc a,b			;8212	98 	. 
	add a,h			;8213	84 	. 
	and b			;8214	a0 	. 
	add a,h			;8215	84 	. 
	xor b			;8216	a8 	. 
	add a,h			;8217	84 	. 
	or b			;8218	b0 	. 
	add a,h			;8219	84 	. 
	cp b			;821a	b8 	. 
	add a,h			;821b	84 	. 
	cp b			;821c	b8 	. 
	add a,h			;821d	84 	. 
	cp b			;821e	b8 	. 
	add a,h			;821f	84 	. 
	cp c			;8220	b9 	. 
	add a,h			;8221	84 	. 
	pop bc			;8222	c1 	. 
	add a,h			;8223	84 	. 
	ret			;8224	c9 	. 
	add a,h			;8225	84 	. 
	ret			;8226	c9 	. 
	add a,h			;8227	84 	. 
	jp z,0d284h		;8228	ca 84 d2 	. . . 
	add a,h			;822b	84 	. 
	jp c,0e284h		;822c	da 84 e2 	. . . 
	add a,h			;822f	84 	. 
	jp pe,0f284h		;8230	ea 84 f2 	. . . 
	add a,h			;8233	84 	. 
	jp m,00284h		;8234	fa 84 02 	. . . 
	add a,l			;8237	85 	. 
	ld (bc),a			;8238	02 	. 
	add a,l			;8239	85 	. 
	ld (bc),a			;823a	02 	. 
	add a,l			;823b	85 	. 
	ld (bc),a			;823c	02 	. 
	add a,l			;823d	85 	. 
	ld (bc),a			;823e	02 	. 
	add a,l			;823f	85 	. 
	inc bc			;8240	03 	. 
	add a,l			;8241	85 	. 
	dec bc			;8242	0b 	. 
	add a,l			;8243	85 	. 
	inc de			;8244	13 	. 
	add a,l			;8245	85 	. 
	dec de			;8246	1b 	. 
	add a,l			;8247	85 	. 
	inc hl			;8248	23 	# 
	add a,l			;8249	85 	. 
	dec hl			;824a	2b 	+ 
	add a,l			;824b	85 	. 
	inc sp			;824c	33 	3 
	add a,l			;824d	85 	. 
	dec sp			;824e	3b 	; 
	add a,l			;824f	85 	. 
	ld b,e			;8250	43 	C 
	add a,l			;8251	85 	. 
	ld c,e			;8252	4b 	K 
	add a,l			;8253	85 	. 
	ld d,e			;8254	53 	S 
	add a,l			;8255	85 	. 
	ld e,e			;8256	5b 	[ 
	add a,l			;8257	85 	. 
	ld h,e			;8258	63 	c 
	add a,l			;8259	85 	. 
	ld l,e			;825a	6b 	k 
	add a,l			;825b	85 	. 
	ld (hl),e			;825c	73 	s 
	add a,l			;825d	85 	. 
	ld a,e			;825e	7b 	{ 
	add a,l			;825f	85 	. 
	add a,e			;8260	83 	. 
	add a,l			;8261	85 	. 
	adc a,e			;8262	8b 	. 
	add a,l			;8263	85 	. 
	sub e			;8264	93 	. 
	add a,l			;8265	85 	. 
	sbc a,e			;8266	9b 	. 
	add a,l			;8267	85 	. 
	and e			;8268	a3 	. 
	add a,l			;8269	85 	. 
	xor e			;826a	ab 	. 
	add a,l			;826b	85 	. 
	or e			;826c	b3 	. 
	add a,l			;826d	85 	. 
	cp e			;826e	bb 	. 
	add a,l			;826f	85 	. 
	jp 0cb85h		;8270	c3 85 cb 	. . . 
	add a,l			;8273	85 	. 
	out (085h),a		;8274	d3 85 	. . 
	in a,(085h)		;8276	db 85 	. . 
	ex (sp),hl			;8278	e3 	. 
	add a,l			;8279	85 	. 
	ex de,hl			;827a	eb 	. 
	add a,l			;827b	85 	. 
	di			;827c	f3 	. 
	add a,l			;827d	85 	. 
	ei			;827e	fb 	. 
	add a,l			;827f	85 	. 
	inc bc			;8280	03 	. 
	add a,(hl)			;8281	86 	. 
	dec bc			;8282	0b 	. 
	add a,(hl)			;8283	86 	. 
	inc de			;8284	13 	. 
	add a,(hl)			;8285	86 	. 
	dec de			;8286	1b 	. 
	add a,(hl)			;8287	86 	. 
	inc hl			;8288	23 	# 
	add a,(hl)			;8289	86 	. 
	dec hl			;828a	2b 	+ 
	add a,(hl)			;828b	86 	. 
	inc sp			;828c	33 	3 
	add a,(hl)			;828d	86 	. 
	dec sp			;828e	3b 	; 
	add a,(hl)			;828f	86 	. 
	ld b,e			;8290	43 	C 
	add a,(hl)			;8291	86 	. 
	dec l			;8292	2d 	- 
	adc a,h			;8293	8c 	. 
	call 06588h		;8294	cd 88 65 	. . e 
	adc a,e			;8297	8b 	. 
	push bc			;8298	c5 	. 
	adc a,b			;8299	88 	. 
	dec a			;829a	3d 	= 
	adc a,h			;829b	8c 	. 
	ld b,l			;829c	45 	E 
	adc a,h			;829d	8c 	. 
	ld c,l			;829e	4d 	M 
	adc a,h			;829f	8c 	. 
	ld e,l			;82a0	5d 	] 
	adc a,e			;82a1	8b 	. 
	ld l,l			;82a2	6d 	m 
	adc a,e			;82a3	8b 	. 
	ld (hl),l			;82a4	75 	u 
	adc a,e			;82a5	8b 	. 
	ld a,l			;82a6	7d 	} 
	adc a,e			;82a7	8b 	. 
	add a,l			;82a8	85 	. 
	adc a,e			;82a9	8b 	. 
	adc a,l			;82aa	8d 	. 
	adc a,e			;82ab	8b 	. 
	sub l			;82ac	95 	. 
	adc a,e			;82ad	8b 	. 
	sbc a,l			;82ae	9d 	. 
	adc a,e			;82af	8b 	. 
	and l			;82b0	a5 	. 
	adc a,e			;82b1	8b 	. 
	xor l			;82b2	ad 	. 
	adc a,e			;82b3	8b 	. 
	or l			;82b4	b5 	. 
	adc a,e			;82b5	8b 	. 
	cp l			;82b6	bd 	. 
	adc a,e			;82b7	8b 	. 
	push bc			;82b8	c5 	. 
	adc a,e			;82b9	8b 	. 
	call 0d58bh		;82ba	cd 8b d5 	. . . 
	adc a,e			;82bd	8b 	. 
	defb 0ddh,08bh,0e5h	;illegal sequence		;82be	dd 8b e5 	. . . 
	adc a,e			;82c1	8b 	. 
	defb 0edh;next byte illegal after ed		;82c2	ed 	. 
	adc a,e			;82c3	8b 	. 
	push af			;82c4	f5 	. 
	adc a,e			;82c5	8b 	. 
	defb 0fdh,08bh,005h	;illegal sequence		;82c6	fd 8b 05 	. . . 
	adc a,h			;82c9	8c 	. 
	dec c			;82ca	0d 	. 
	adc a,h			;82cb	8c 	. 
	dec d			;82cc	15 	. 
	adc a,h			;82cd	8c 	. 
	dec e			;82ce	1d 	. 
	adc a,h			;82cf	8c 	. 
	dec h			;82d0	25 	% 
	adc a,h			;82d1	8c 	. 
	dec (hl)			;82d2	35 	5 
	adc a,h			;82d3	8c 	. 
	and l			;82d4	a5 	. 
	add a,(hl)			;82d5	86 	. 
	xor l			;82d6	ad 	. 
	add a,(hl)			;82d7	86 	. 
	or l			;82d8	b5 	. 
	add a,(hl)			;82d9	86 	. 
	cp l			;82da	bd 	. 
	add a,(hl)			;82db	86 	. 
	push bc			;82dc	c5 	. 
	add a,(hl)			;82dd	86 	. 
	call 0d586h		;82de	cd 86 d5 	. . . 
	add a,(hl)			;82e1	86 	. 
	add a,(ix-01bh)		;82e2	dd 86 e5 	. . . 
	add a,(hl)			;82e5	86 	. 
	defb 0edh;next byte illegal after ed		;82e6	ed 	. 
	add a,(hl)			;82e7	86 	. 
	push af			;82e8	f5 	. 
	add a,(hl)			;82e9	86 	. 
	add a,(iy+005h)		;82ea	fd 86 05 	. . . 
	add a,a			;82ed	87 	. 
	dec c			;82ee	0d 	. 
	add a,a			;82ef	87 	. 
	dec d			;82f0	15 	. 
	add a,a			;82f1	87 	. 
	dec d			;82f2	15 	. 
	add a,a			;82f3	87 	. 
	ld d,l			;82f4	55 	U 
	adc a,h			;82f5	8c 	. 
	ld e,l			;82f6	5d 	] 
	adc a,h			;82f7	8c 	. 
	ld h,l			;82f8	65 	e 
	adc a,h			;82f9	8c 	. 
	ld l,l			;82fa	6d 	m 
	adc a,h			;82fb	8c 	. 
	ld (hl),l			;82fc	75 	u 
	adc a,h			;82fd	8c 	. 
	ld a,l			;82fe	7d 	} 
l82ffh:
	adc a,h			;82ff	8c 	. 
	add a,l			;8300	85 	. 
	adc a,h			;8301	8c 	. 
	adc a,l			;8302	8d 	. 
	adc a,h			;8303	8c 	. 
	sub l			;8304	95 	. 
	adc a,h			;8305	8c 	. 
	sbc a,l			;8306	9d 	. 
	adc a,h			;8307	8c 	. 
	and l			;8308	a5 	. 
	adc a,h			;8309	8c 	. 
	xor l			;830a	ad 	. 
	adc a,h			;830b	8c 	. 
	or l			;830c	b5 	. 
	adc a,h			;830d	8c 	. 
	cp l			;830e	bd 	. 
	adc a,h			;830f	8c 	. 
	push bc			;8310	c5 	. 
	adc a,h			;8311	8c 	. 
	call 0d58ch		;8312	cd 8c d5 	. . . 
	adc a,h			;8315	8c 	. 
	defb 0ddh,08ch	;adc a,ixh		;8316	dd 8c 	. . 
	push hl			;8318	e5 	. 
	adc a,h			;8319	8c 	. 
	defb 0edh;next byte illegal after ed		;831a	ed 	. 
	adc a,h			;831b	8c 	. 
	push af			;831c	f5 	. 
	adc a,h			;831d	8c 	. 
	defb 0fdh,08ch	;adc a,iyh		;831e	fd 8c 	. . 
	dec b			;8320	05 	. 
	adc a,l			;8321	8d 	. 
	dec c			;8322	0d 	. 
	adc a,l			;8323	8d 	. 
	dec d			;8324	15 	. 
	adc a,l			;8325	8d 	. 
	dec e			;8326	1d 	. 
	adc a,l			;8327	8d 	. 
	dec h			;8328	25 	% 
	adc a,l			;8329	8d 	. 
	dec l			;832a	2d 	- 
	adc a,l			;832b	8d 	. 
	defb 0fdh,087h,005h	;illegal sequence		;832c	fd 87 05 	. . . 
	adc a,b			;832f	88 	. 
	dec c			;8330	0d 	. 
	adc a,b			;8331	88 	. 
	dec d			;8332	15 	. 
	adc a,b			;8333	88 	. 
	dec e			;8334	1d 	. 
	adc a,b			;8335	88 	. 
	dec h			;8336	25 	% 
	adc a,b			;8337	88 	. 
	dec l			;8338	2d 	- 
	adc a,b			;8339	88 	. 
	dec (hl)			;833a	35 	5 
	adc a,b			;833b	88 	. 
	dec a			;833c	3d 	= 
	adc a,b			;833d	88 	. 
	ld b,l			;833e	45 	E 
	adc a,b			;833f	88 	. 
	ld c,l			;8340	4d 	M 
	adc a,b			;8341	88 	. 
	ld d,l			;8342	55 	U 
	adc a,b			;8343	88 	. 
	ld e,l			;8344	5d 	] 
	adc a,b			;8345	88 	. 
	ld h,l			;8346	65 	e 
	adc a,b			;8347	88 	. 
	ld l,l			;8348	6d 	m 
	adc a,b			;8349	88 	. 
	ld (hl),l			;834a	75 	u 
	adc a,b			;834b	88 	. 
	ld a,l			;834c	7d 	} 
	adc a,b			;834d	88 	. 
	add a,l			;834e	85 	. 
	adc a,b			;834f	88 	. 
	adc a,l			;8350	8d 	. 
	adc a,b			;8351	88 	. 
	sub l			;8352	95 	. 
	adc a,b			;8353	88 	. 
	sbc a,l			;8354	9d 	. 
	adc a,b			;8355	88 	. 
	and l			;8356	a5 	. 
	adc a,b			;8357	88 	. 
	xor l			;8358	ad 	. 
	adc a,b			;8359	88 	. 
	or l			;835a	b5 	. 
	adc a,b			;835b	88 	. 
	cp l			;835c	bd 	. 
	adc a,b			;835d	88 	. 
	push de			;835e	d5 	. 
	adc a,b			;835f	88 	. 
	defb 0ddh,088h,0e5h	;illegal sequence		;8360	dd 88 e5 	. . . 
	adc a,b			;8363	88 	. 
	defb 0edh;next byte illegal after ed		;8364	ed 	. 
	adc a,b			;8365	88 	. 
	push af			;8366	f5 	. 
	adc a,b			;8367	88 	. 
	defb 0fdh,088h,005h	;illegal sequence		;8368	fd 88 05 	. . . 
	adc a,c			;836b	89 	. 
	dec c			;836c	0d 	. 
	adc a,c			;836d	89 	. 
	dec d			;836e	15 	. 
	adc a,c			;836f	89 	. 
	dec e			;8370	1d 	. 
	adc a,c			;8371	89 	. 
	dec h			;8372	25 	% 
	adc a,c			;8373	89 	. 
	dec l			;8374	2d 	- 
	adc a,c			;8375	89 	. 
	dec (hl)			;8376	35 	5 
	adc a,c			;8377	89 	. 
	dec a			;8378	3d 	= 
	adc a,c			;8379	89 	. 
	ld b,l			;837a	45 	E 
	adc a,c			;837b	89 	. 
	ld c,l			;837c	4d 	M 
	adc a,c			;837d	89 	. 
	ld d,l			;837e	55 	U 
	adc a,c			;837f	89 	. 
	ld e,l			;8380	5d 	] 
	adc a,c			;8381	89 	. 
	ld h,l			;8382	65 	e 
	adc a,c			;8383	89 	. 
	ld l,l			;8384	6d 	m 
	adc a,c			;8385	89 	. 
	ld (hl),l			;8386	75 	u 
	adc a,c			;8387	89 	. 
	ld a,l			;8388	7d 	} 
	adc a,c			;8389	89 	. 
	add a,l			;838a	85 	. 
	adc a,c			;838b	89 	. 
	adc a,l			;838c	8d 	. 
	adc a,c			;838d	89 	. 
	sub l			;838e	95 	. 
	adc a,c			;838f	89 	. 
	sbc a,l			;8390	9d 	. 
	adc a,c			;8391	89 	. 
	and l			;8392	a5 	. 
	adc a,c			;8393	89 	. 
	xor l			;8394	ad 	. 
	adc a,c			;8395	89 	. 
	or l			;8396	b5 	. 
	adc a,c			;8397	89 	. 
	cp l			;8398	bd 	. 
	adc a,c			;8399	89 	. 
	push bc			;839a	c5 	. 
	adc a,c			;839b	89 	. 
	call 0d589h		;839c	cd 89 d5 	. . . 
	adc a,c			;839f	89 	. 
	defb 0ddh,089h,0e5h	;illegal sequence		;83a0	dd 89 e5 	. . . 
	adc a,c			;83a3	89 	. 
	defb 0edh;next byte illegal after ed		;83a4	ed 	. 
	adc a,c			;83a5	89 	. 
	push af			;83a6	f5 	. 
	adc a,c			;83a7	89 	. 
	defb 0fdh,089h,005h	;illegal sequence		;83a8	fd 89 05 	. . . 
	adc a,d			;83ab	8a 	. 
	dec c			;83ac	0d 	. 
	adc a,d			;83ad	8a 	. 
	dec d			;83ae	15 	. 
	adc a,d			;83af	8a 	. 
	dec e			;83b0	1d 	. 
	adc a,d			;83b1	8a 	. 
	dec h			;83b2	25 	% 
	adc a,d			;83b3	8a 	. 
	dec l			;83b4	2d 	- 
	adc a,d			;83b5	8a 	. 
	dec (hl)			;83b6	35 	5 
	adc a,d			;83b7	8a 	. 
	dec a			;83b8	3d 	= 
	adc a,d			;83b9	8a 	. 
	ld b,l			;83ba	45 	E 
	adc a,d			;83bb	8a 	. 
	ld c,l			;83bc	4d 	M 
	adc a,d			;83bd	8a 	. 
	ld d,l			;83be	55 	U 
	adc a,d			;83bf	8a 	. 
	ld e,l			;83c0	5d 	] 
	adc a,d			;83c1	8a 	. 
	ld h,l			;83c2	65 	e 
	adc a,d			;83c3	8a 	. 
	ld l,l			;83c4	6d 	m 
	adc a,d			;83c5	8a 	. 
	ld (hl),l			;83c6	75 	u 
	adc a,d			;83c7	8a 	. 
	ld a,l			;83c8	7d 	} 
	adc a,d			;83c9	8a 	. 
	add a,l			;83ca	85 	. 
	adc a,d			;83cb	8a 	. 
	adc a,l			;83cc	8d 	. 
	adc a,d			;83cd	8a 	. 
	sub l			;83ce	95 	. 
	adc a,d			;83cf	8a 	. 
	sbc a,l			;83d0	9d 	. 
	adc a,d			;83d1	8a 	. 
	and l			;83d2	a5 	. 
	adc a,d			;83d3	8a 	. 
	xor l			;83d4	ad 	. 
	adc a,d			;83d5	8a 	. 
	or l			;83d6	b5 	. 
	adc a,d			;83d7	8a 	. 
	cp l			;83d8	bd 	. 
	adc a,d			;83d9	8a 	. 
	push bc			;83da	c5 	. 
	adc a,d			;83db	8a 	. 
	call 0d58ah		;83dc	cd 8a d5 	. . . 
	adc a,d			;83df	8a 	. 
	defb 0ddh,08ah,0e5h	;illegal sequence		;83e0	dd 8a e5 	. . . 
	adc a,d			;83e3	8a 	. 
	defb 0edh;next byte illegal after ed		;83e4	ed 	. 
	adc a,d			;83e5	8a 	. 
	push af			;83e6	f5 	. 
	adc a,d			;83e7	8a 	. 
	defb 0fdh,08ah,005h	;illegal sequence		;83e8	fd 8a 05 	. . . 
	adc a,e			;83eb	8b 	. 
	dec c			;83ec	0d 	. 
	adc a,e			;83ed	8b 	. 
	dec d			;83ee	15 	. 
	adc a,e			;83ef	8b 	. 
	dec e			;83f0	1d 	. 
	adc a,e			;83f1	8b 	. 
	dec h			;83f2	25 	% 
	adc a,e			;83f3	8b 	. 
	dec l			;83f4	2d 	- 
	adc a,e			;83f5	8b 	. 
	dec (hl)			;83f6	35 	5 
	adc a,e			;83f7	8b 	. 
	dec a			;83f8	3d 	= 
	adc a,e			;83f9	8b 	. 
	ld b,l			;83fa	45 	E 
	adc a,e			;83fb	8b 	. 
	ld c,l			;83fc	4d 	M 
	adc a,e			;83fd	8b 	. 
	ld d,l			;83fe	55 	U 
sub_83ffh:
	adc a,e			;83ff	8b 	. 
	ld (hl),e			;8400	73 	s 
	xor b			;8401	a8 	. 
	and h			;8402	a4 	. 
	xor b			;8403	a8 	. 
	ld (hl),h			;8404	74 	t 
	xor b			;8405	a8 	. 
	ld (hl),l			;8406	75 	u 
	xor b			;8407	a8 	. 
	and l			;8408	a5 	. 
	xor b			;8409	a8 	. 
	and (hl)			;840a	a6 	. 
	xor b			;840b	a8 	. 
	halt			;840c	76 	v 
	xor b			;840d	a8 	. 
	ld (hl),a			;840e	77 	w 
	xor b			;840f	a8 	. 
	ld (hl),e			;8410	73 	s 
	adc a,b			;8411	88 	. 
	and h			;8412	a4 	. 
	adc a,b			;8413	88 	. 
	ld (hl),h			;8414	74 	t 
	adc a,b			;8415	88 	. 
	ld (hl),l			;8416	75 	u 
	adc a,b			;8417	88 	. 
l8418h:
	and l			;8418	a5 	. 
	adc a,b			;8419	88 	. 
	and (hl)			;841a	a6 	. 
	adc a,b			;841b	88 	. 
	halt			;841c	76 	v 
	adc a,b			;841d	88 	. 
	ld (hl),a			;841e	77 	w 
	adc a,b			;841f	88 	. 
	add hl,sp			;8420	39 	9 
	add a,b			;8421	80 	. 
	ld a,(03a80h)		;8422	3a 80 3a 	: . : 
	add a,d			;8425	82 	. 
	add hl,sp			;8426	39 	9 
	add a,d			;8427	82 	. 
l8428h:
	dec sp			;8428	3b 	; 
	nop			;8429	00 	. 
	nop			;842a	00 	. 
	ld b,000h		;842b	06 00 	. . 
	ld b,03ch		;842d	06 3c 	. < 
	djnz l846dh		;842f	10 3c 	. < 
	ld (bc),a			;8431	02 	. 
	nop			;8432	00 	. 
	ld b,000h		;8433	06 00 	. . 
	ld b,03ch		;8435	06 3c 	. < 
	djnz l8476h		;8437	10 3d 	. = 
	nop			;8439	00 	. 
	nop			;843a	00 	. 
	ld b,000h		;843b	06 00 	. . 
	ld b,03ch		;843d	06 3c 	. < 
	djnz l847dh		;843f	10 3c 	. < 
	ld (bc),a			;8441	02 	. 
	nop			;8442	00 	. 
	ld b,000h		;8443	06 00 	. . 
	ld b,03ch		;8445	06 3c 	. < 
	djnz l8486h		;8447	10 3d 	. = 
	nop			;8449	00 	. 
	nop			;844a	00 	. 
	ld b,000h		;844b	06 00 	. . 
	ld b,03ch		;844d	06 3c 	. < 
	djnz l8451h		;844f	10 00 	. . 
l8451h:
	nop			;8451	00 	. 
	nop			;8452	00 	. 
	nop			;8453	00 	. 
	nop			;8454	00 	. 
	nop			;8455	00 	. 
	nop			;8456	00 	. 
	nop			;8457	00 	. 
	ld bc,002e0h		;8458	01 e0 02 	. . . 
	ret po			;845b	e0 	. 
	inc bc			;845c	03 	. 
	ret po			;845d	e0 	. 
	inc b			;845e	04 	. 
	ret po			;845f	e0 	. 
	dec b			;8460	05 	. 
	ret po			;8461	e0 	. 
	ld b,0e0h		;8462	06 e0 	. . 
	rlca			;8464	07 	. 
	ret po			;8465	e0 	. 
	ex af,af'			;8466	08 	. 
	ret po			;8467	e0 	. 
	add hl,bc			;8468	09 	. 
	ret po			;8469	e0 	. 
	ld a,(bc)			;846a	0a 	. 
	ret po			;846b	e0 	. 
	dec bc			;846c	0b 	. 
l846dh:
	ret po			;846d	e0 	. 
	inc c			;846e	0c 	. 
	ret po			;846f	e0 	. 
	dec c			;8470	0d 	. 
	and b			;8471	a0 	. 
	ld c,0a0h		;8472	0e a0 	. . 
	rrca			;8474	0f 	. 
	and b			;8475	a0 	. 
l8476h:
	djnz l8418h		;8476	10 a0 	. . 
	ld de,012a0h		;8478	11 a0 12 	. . . 
	and b			;847b	a0 	. 
	inc de			;847c	13 	. 
l847dh:
	and b			;847d	a0 	. 
	inc d			;847e	14 	. 
	and b			;847f	a0 	. 
	dec d			;8480	15 	. 
	and b			;8481	a0 	. 
	ld d,0a0h		;8482	16 a0 	. . 
	rla			;8484	17 	. 
	and b			;8485	a0 	. 
l8486h:
	jr l8428h		;8486	18 a0 	. . 
	add hl,de			;8488	19 	. 
	and b			;8489	a0 	. 
	ld a,(de)			;848a	1a 	. 
	and b			;848b	a0 	. 
	dec de			;848c	1b 	. 
	and b			;848d	a0 	. 
	inc e			;848e	1c 	. 
	and b			;848f	a0 	. 
	dec e			;8490	1d 	. 
	and b			;8491	a0 	. 
	ld e,0a0h		;8492	1e a0 	. . 
	rra			;8494	1f 	. 
	and b			;8495	a0 	. 
	jr nz,$-94		;8496	20 a0 	  . 
	ld hl,022a0h		;8498	21 a0 22 	! . " 
	and b			;849b	a0 	. 
	inc hl			;849c	23 	# 
	and b			;849d	a0 	. 
	inc h			;849e	24 	$ 
	and b			;849f	a0 	. 
	dec h			;84a0	25 	% 
	ld b,b			;84a1	40 	@ 
	dec h			;84a2	25 	% 
	ld b,d			;84a3	42 	B 
	ld h,040h		;84a4	26 40 	& @ 
	ld h,042h		;84a6	26 42 	& B 
	daa			;84a8	27 	' 
	nop			;84a9	00 	. 
	jr z,l84ach		;84aa	28 00 	( . 
l84ach:
	add hl,hl			;84ac	29 	) 
	nop			;84ad	00 	. 
	ld hl,(02b00h)		;84ae	2a 00 2b 	* . + 
	nop			;84b1	00 	. 
	inc l			;84b2	2c 	, 
	nop			;84b3	00 	. 
	dec l			;84b4	2d 	- 
	nop			;84b5	00 	. 
	ld l,000h		;84b6	2e 00 	. . 
	nop			;84b8	00 	. 
	add hl,sp			;84b9	39 	9 
	ret nz			;84ba	c0 	. 
	ld a,(03bc0h)		;84bb	3a c0 3b 	: . ; 
	ret nz			;84be	c0 	. 
	inc a			;84bf	3c 	< 
	ret nz			;84c0	c0 	. 
	ld a,h			;84c1	7c 	| 
	ret nz			;84c2	c0 	. 
	ld a,l			;84c3	7d 	} 
	ret nz			;84c4	c0 	. 
	ld a,(hl)			;84c5	7e 	~ 
	ret nz			;84c6	c0 	. 
	ld a,a			;84c7	7f 	 
	ret nz			;84c8	c0 	. 
	nop			;84c9	00 	. 
	dec a			;84ca	3d 	= 
	add a,b			;84cb	80 	. 
	ld a,080h		;84cc	3e 80 	> . 
	ccf			;84ce	3f 	? 
	add a,b			;84cf	80 	. 
	ld b,b			;84d0	40 	@ 
	add a,b			;84d1	80 	. 
	ld b,c			;84d2	41 	A 
	add a,b			;84d3	80 	. 
	ld b,d			;84d4	42 	B 
	add a,b			;84d5	80 	. 
	ld b,e			;84d6	43 	C 
	add a,b			;84d7	80 	. 
	ld b,h			;84d8	44 	D 
	add a,b			;84d9	80 	. 
	add a,b			;84da	80 	. 
	add a,b			;84db	80 	. 
	add a,c			;84dc	81 	. 
	add a,b			;84dd	80 	. 
	add a,d			;84de	82 	. 
	add a,b			;84df	80 	. 
	add a,e			;84e0	83 	. 
	add a,b			;84e1	80 	. 
	add a,h			;84e2	84 	. 
	add a,b			;84e3	80 	. 
	add a,l			;84e4	85 	. 
	add a,b			;84e5	80 	. 
	add a,(hl)			;84e6	86 	. 
	add a,b			;84e7	80 	. 
	add a,a			;84e8	87 	. 
	add a,b			;84e9	80 	. 
	add a,l			;84ea	85 	. 
	add a,d			;84eb	82 	. 
	add a,h			;84ec	84 	. 
	add a,d			;84ed	82 	. 
	add a,a			;84ee	87 	. 
	add a,d			;84ef	82 	. 
	add a,(hl)			;84f0	86 	. 
	add a,d			;84f1	82 	. 
	add a,a			;84f2	87 	. 
	add a,(hl)			;84f3	86 	. 
	add a,(hl)			;84f4	86 	. 
	add a,(hl)			;84f5	86 	. 
	add a,l			;84f6	85 	. 
	add a,(hl)			;84f7	86 	. 
	add a,h			;84f8	84 	. 
	add a,(hl)			;84f9	86 	. 
	add a,(hl)			;84fa	86 	. 
	add a,h			;84fb	84 	. 
	add a,a			;84fc	87 	. 
	add a,h			;84fd	84 	. 
	add a,h			;84fe	84 	. 
	add a,h			;84ff	84 	. 
	add a,l			;8500	85 	. 
	add a,h			;8501	84 	. 
	nop			;8502	00 	. 
	dec (hl)			;8503	35 	5 
	nop			;8504	00 	. 
	ld (hl),000h		;8505	36 00 	6 . 
	scf			;8507	37 	7 
	nop			;8508	00 	. 
	jr c,l850bh		;8509	38 00 	8 . 
l850bh:
	ld a,b			;850b	78 	x 
	jr nz,l8587h		;850c	20 79 	  y 
	jr nz,l858ah		;850e	20 7a 	  z 
	jr nz,l858dh		;8510	20 7b 	  { 
	jr nz,l8514h		;8512	20 00 	  . 
l8514h:
	ld b,076h		;8514	06 76 	. v 
	nop			;8516	00 	. 
	nop			;8517	00 	. 
	ld b,077h		;8518	06 77 	. w 
	nop			;851a	00 	. 
	ld a,b			;851b	78 	x 
	nop			;851c	00 	. 
	ld a,c			;851d	79 	y 
	nop			;851e	00 	. 
	ld a,c			;851f	79 	y 
	nop			;8520	00 	. 
	ld a,c			;8521	79 	y 
	nop			;8522	00 	. 
	ld a,b			;8523	78 	x 
	ld (bc),a			;8524	02 	. 
	halt			;8525	76 	v 
	ld (bc),a			;8526	02 	. 
	ld a,c			;8527	79 	y 
	nop			;8528	00 	. 
	ld (hl),a			;8529	77 	w 
	ld (bc),a			;852a	02 	. 
	nop			;852b	00 	. 
	ld b,07ah		;852c	06 7a 	. z 
	nop			;852e	00 	. 
	ld a,e			;852f	7b 	{ 
	nop			;8530	00 	. 
	ld a,h			;8531	7c 	| 
	nop			;8532	00 	. 
	ld a,d			;8533	7a 	z 
	nop			;8534	00 	. 
	ld a,d			;8535	7a 	z 
	nop			;8536	00 	. 
	ld a,l			;8537	7d 	} 
	nop			;8538	00 	. 
	ld a,(hl)			;8539	7e 	~ 
	nop			;853a	00 	. 
	ld a,d			;853b	7a 	z 
	nop			;853c	00 	. 
	ld a,d			;853d	7a 	z 
	nop			;853e	00 	. 
	ld a,h			;853f	7c 	| 
	nop			;8540	00 	. 
	ld a,a			;8541	7f 	 
	nop			;8542	00 	. 
	add a,b			;8543	80 	. 
	nop			;8544	00 	. 
	add a,c			;8545	81 	. 
	nop			;8546	00 	. 
	ld a,h			;8547	7c 	| 
	nop			;8548	00 	. 
	add a,d			;8549	82 	. 
	nop			;854a	00 	. 
	add a,e			;854b	83 	. 
	nop			;854c	00 	. 
	add a,h			;854d	84 	. 
	nop			;854e	00 	. 
	add a,l			;854f	85 	. 
	nop			;8550	00 	. 
	add a,(hl)			;8551	86 	. 
	nop			;8552	00 	. 
	add a,a			;8553	87 	. 
	nop			;8554	00 	. 
	adc a,b			;8555	88 	. 
	nop			;8556	00 	. 
	adc a,c			;8557	89 	. 
	nop			;8558	00 	. 
	adc a,d			;8559	8a 	. 
	nop			;855a	00 	. 
	adc a,e			;855b	8b 	. 
	nop			;855c	00 	. 
	add a,h			;855d	84 	. 
	nop			;855e	00 	. 
	adc a,e			;855f	8b 	. 
	nop			;8560	00 	. 
	add a,(hl)			;8561	86 	. 
	nop			;8562	00 	. 
	adc a,h			;8563	8c 	. 
	nop			;8564	00 	. 
	adc a,l			;8565	8d 	. 
	nop			;8566	00 	. 
	adc a,e			;8567	8b 	. 
	nop			;8568	00 	. 
	adc a,e			;8569	8b 	. 
	nop			;856a	00 	. 
	nop			;856b	00 	. 
	nop			;856c	00 	. 
	nop			;856d	00 	. 
	nop			;856e	00 	. 
	adc a,(hl)			;856f	8e 	. 
	nop			;8570	00 	. 
	adc a,a			;8571	8f 	. 
	nop			;8572	00 	. 
	nop			;8573	00 	. 
	nop			;8574	00 	. 
	nop			;8575	00 	. 
	nop			;8576	00 	. 
l8577h:
	sub b			;8577	90 	. 
	nop			;8578	00 	. 
	sub b			;8579	90 	. 
	ld (bc),a			;857a	02 	. 
	nop			;857b	00 	. 
	nop			;857c	00 	. 
	nop			;857d	00 	. 
l857eh:
	nop			;857e	00 	. 
	adc a,a			;857f	8f 	. 
	ld (bc),a			;8580	02 	. 
l8581h:
	adc a,(hl)			;8581	8e 	. 
	ld (bc),a			;8582	02 	. 
	sub c			;8583	91 	. 
l8584h:
	nop			;8584	00 	. 
	sub d			;8585	92 	. 
	nop			;8586	00 	. 
l8587h:
	sub e			;8587	93 	. 
	nop			;8588	00 	. 
	sub h			;8589	94 	. 
l858ah:
	nop			;858a	00 	. 
	sub l			;858b	95 	. 
	nop			;858c	00 	. 
l858dh:
	sub (hl)			;858d	96 	. 
	nop			;858e	00 	. 
	sub a			;858f	97 	. 
l8590h:
	nop			;8590	00 	. 
	sbc a,b			;8591	98 	. 
	nop			;8592	00 	. 
l8593h:
	sbc a,c			;8593	99 	. 
	nop			;8594	00 	. 
	sbc a,d			;8595	9a 	. 
l8596h:
	nop			;8596	00 	. 
	sbc a,e			;8597	9b 	. 
	nop			;8598	00 	. 
l8599h:
	sbc a,h			;8599	9c 	. 
	nop			;859a	00 	. 
	sbc a,l			;859b	9d 	. 
l859ch:
	nop			;859c	00 	. 
	sub l			;859d	95 	. 
	ld (bc),a			;859e	02 	. 
l859fh:
	sbc a,(hl)			;859f	9e 	. 
	nop			;85a0	00 	. 
	sub a			;85a1	97 	. 
	ld (bc),a			;85a2	02 	. 
	sub d			;85a3	92 	. 
	ld (bc),a			;85a4	02 	. 
	sub c			;85a5	91 	. 
	ld (bc),a			;85a6	02 	. 
l85a7h:
	sub h			;85a7	94 	. 
	nop			;85a8	00 	. 
	sub e			;85a9	93 	. 
	ld (bc),a			;85aa	02 	. 
	sbc a,a			;85ab	9f 	. 
	nop			;85ac	00 	. 
	and b			;85ad	a0 	. 
	nop			;85ae	00 	. 
	and c			;85af	a1 	. 
	nop			;85b0	00 	. 
l85b1h:
	and d			;85b1	a2 	. 
	nop			;85b2	00 	. 
	and e			;85b3	a3 	. 
	nop			;85b4	00 	. 
	and h			;85b5	a4 	. 
	nop			;85b6	00 	. 
	sub h			;85b7	94 	. 
	nop			;85b8	00 	. 
	and l			;85b9	a5 	. 
	nop			;85ba	00 	. 
	and (hl)			;85bb	a6 	. 
	nop			;85bc	00 	. 
	and (hl)			;85bd	a6 	. 
	nop			;85be	00 	. 
	and a			;85bf	a7 	. 
	nop			;85c0	00 	. 
	xor b			;85c1	a8 	. 
	nop			;85c2	00 	. 
	and h			;85c3	a4 	. 
	ld (bc),a			;85c4	02 	. 
	and e			;85c5	a3 	. 
	ld (bc),a			;85c6	02 	. 
	and l			;85c7	a5 	. 
	ld (bc),a			;85c8	02 	. 
	sub h			;85c9	94 	. 
	nop			;85ca	00 	. 
	and b			;85cb	a0 	. 
	ld (bc),a			;85cc	02 	. 
	sbc a,a			;85cd	9f 	. 
	ld (bc),a			;85ce	02 	. 
	and d			;85cf	a2 	. 
	ld (bc),a			;85d0	02 	. 
	and c			;85d1	a1 	. 
	ld (bc),a			;85d2	02 	. 
	and e			;85d3	a3 	. 
	nop			;85d4	00 	. 
	xor c			;85d5	a9 	. 
	nop			;85d6	00 	. 
	sub h			;85d7	94 	. 
	nop			;85d8	00 	. 
	and l			;85d9	a5 	. 
	nop			;85da	00 	. 
	xor d			;85db	aa 	. 
	ld h,b			;85dc	60 	` 
	xor d			;85dd	aa 	. 
	ld h,b			;85de	60 	` 
	xor d			;85df	aa 	. 
	ld h,b			;85e0	60 	` 
	xor d			;85e1	aa 	. 
	ld h,b			;85e2	60 	` 
	xor c			;85e3	a9 	. 
	ld (bc),a			;85e4	02 	. 
	and e			;85e5	a3 	. 
	ld (bc),a			;85e6	02 	. 
	and l			;85e7	a5 	. 
	ld (bc),a			;85e8	02 	. 
	sub h			;85e9	94 	. 
	nop			;85ea	00 	. 
	adc a,b			;85eb	88 	. 
	jr nz,l8577h		;85ec	20 89 	  . 
	jr nz,l8668h		;85ee	20 78 	  x 
	jr nz,l866bh		;85f0	20 79 	  y 
	jr nz,l857eh		;85f2	20 8a 	  . 
	jr nz,l8581h		;85f4	20 8b 	  . 
	jr nz,l8584h		;85f6	20 8c 	  . 
	jr nz,l8587h		;85f8	20 8d 	  . 
	jr nz,l858ah		;85fa	20 8e 	  . 
	jr nz,l858dh		;85fc	20 8f 	  . 
	jr nz,l8590h		;85fe	20 90 	  . 
	jr nz,l8593h		;8600	20 91 	  . 
	jr nz,l8596h		;8602	20 92 	  . 
	jr nz,l8599h		;8604	20 93 	  . 
	jr nz,l859ch		;8606	20 94 	  . 
	jr nz,l859fh		;8608	20 95 	  . 
	jr nz,l8684h		;860a	20 78 	  x 
	jr nz,l8687h		;860c	20 79 	  y 
	jr nz,l85a7h		;860e	20 97 	  . 
	sbc a,b			;8610	98 	. 
	sbc a,b			;8611	98 	. 
	sbc a,b			;8612	98 	. 
	ld a,b			;8613	78 	x 
	jr nz,$+123		;8614	20 79 	  y 
	jr nz,l85b1h		;8616	20 99 	  . 
	sbc a,b			;8618	98 	. 
	sbc a,d			;8619	9a 	. 
	sbc a,b			;861a	98 	. 
	sbc a,e			;861b	9b 	. 
	sbc a,b			;861c	98 	. 
	sbc a,h			;861d	9c 	. 
	sbc a,b			;861e	98 	. 
	sbc a,l			;861f	9d 	. 
	sbc a,b			;8620	98 	. 
	sbc a,(hl)			;8621	9e 	. 
	sbc a,b			;8622	98 	. 
	sbc a,a			;8623	9f 	. 
	sbc a,b			;8624	98 	. 
	and b			;8625	a0 	. 
	sbc a,b			;8626	98 	. 
	and c			;8627	a1 	. 
	sbc a,b			;8628	98 	. 
	and d			;8629	a2 	. 
	sbc a,b			;862a	98 	. 
	and e			;862b	a3 	. 
	xor b			;862c	a8 	. 
	and h			;862d	a4 	. 
	xor b			;862e	a8 	. 
	and l			;862f	a5 	. 
	xor b			;8630	a8 	. 
	and (hl)			;8631	a6 	. 
	xor b			;8632	a8 	. 
	and a			;8633	a7 	. 
	xor b			;8634	a8 	. 
	xor b			;8635	a8 	. 
	xor b			;8636	a8 	. 
	xor c			;8637	a9 	. 
	xor b			;8638	a8 	. 
	xor d			;8639	aa 	. 
	xor b			;863a	a8 	. 
	ld l,b			;863b	68 	h 
	add a,b			;863c	80 	. 
	ld l,c			;863d	69 	i 
	add a,b			;863e	80 	. 
	ld l,d			;863f	6a 	j 
	add a,b			;8640	80 	. 
	ld l,e			;8641	6b 	k 
	add a,b			;8642	80 	. 
	ld l,h			;8643	6c 	l 
	add a,b			;8644	80 	. 
	ld l,l			;8645	6d 	m 
	add a,b			;8646	80 	. 
	ld l,(hl)			;8647	6e 	n 
	add a,b			;8648	80 	. 
	ld l,a			;8649	6f 	o 
	add a,b			;864a	80 	. 
	nop			;864b	00 	. 
	dec a			;864c	3d 	= 
	add a,b			;864d	80 	. 
	ld a,080h		;864e	3e 80 	> . 
	ccf			;8650	3f 	? 
	add a,b			;8651	80 	. 
	ld b,b			;8652	40 	@ 
	add a,b			;8653	80 	. 
	ld b,c			;8654	41 	A 
	add a,b			;8655	80 	. 
	ld b,d			;8656	42 	B 
	add a,b			;8657	80 	. 
	ld b,e			;8658	43 	C 
	add a,b			;8659	80 	. 
	ld b,h			;865a	44 	D 
	add a,b			;865b	80 	. 
	ld b,l			;865c	45 	E 
	add a,b			;865d	80 	. 
	ld b,(hl)			;865e	46 	F 
	add a,b			;865f	80 	. 
	ld b,a			;8660	47 	G 
	nop			;8661	00 	. 
	ld c,b			;8662	48 	H 
	add a,b			;8663	80 	. 
	ld b,(hl)			;8664	46 	F 
	add a,d			;8665	82 	. 
	ld b,l			;8666	45 	E 
	add a,d			;8667	82 	. 
l8668h:
	ld c,b			;8668	48 	H 
	add a,d			;8669	82 	. 
	ld b,a			;866a	47 	G 
l866bh:
	ld (bc),a			;866b	02 	. 
	ld c,c			;866c	49 	I 
	add a,b			;866d	80 	. 
	ld c,d			;866e	4a 	J 
	add a,b			;866f	80 	. 
	ld b,a			;8670	47 	G 
	nop			;8671	00 	. 
	ld c,b			;8672	48 	H 
	add a,b			;8673	80 	. 
	ld c,d			;8674	4a 	J 
	add a,d			;8675	82 	. 
	ld c,c			;8676	49 	I 
	add a,d			;8677	82 	. 
	ld c,b			;8678	48 	H 
	add a,d			;8679	82 	. 
	ld b,a			;867a	47 	G 
	ld (bc),a			;867b	02 	. 
	ld c,e			;867c	4b 	K 
	add a,b			;867d	80 	. 
	ld c,h			;867e	4c 	L 
	add a,b			;867f	80 	. 
	ld c,l			;8680	4d 	M 
	add a,b			;8681	80 	. 
	ld c,(hl)			;8682	4e 	N 
	add a,b			;8683	80 	. 
l8684h:
	ld c,h			;8684	4c 	L 
	add a,d			;8685	82 	. 
	ld c,e			;8686	4b 	K 
l8687h:
	add a,d			;8687	82 	. 
	ld c,(hl)			;8688	4e 	N 
	add a,d			;8689	82 	. 
	ld c,l			;868a	4d 	M 
	add a,d			;868b	82 	. 
	dec a			;868c	3d 	= 
	add a,b			;868d	80 	. 
	ld a,080h		;868e	3e 80 	> . 
	ld c,a			;8690	4f 	O 
	add a,b			;8691	80 	. 
	ld d,b			;8692	50 	P 
	add a,b			;8693	80 	. 
	nop			;8694	00 	. 
	ld b,l			;8695	45 	E 
	ld (hl),b			;8696	70 	p 
	ld b,l			;8697	45 	E 
	ld (hl),h			;8698	74 	t 
	ld b,l			;8699	45 	E 
	ld (hl),h			;869a	74 	t 
	ld b,l			;869b	45 	E 
	ld (hl),d			;869c	72 	r 
	ld b,(hl)			;869d	46 	F 
	ld (hl),b			;869e	70 	p 
	ld b,a			;869f	47 	G 
	ld (hl),b			;86a0	70 	p 
	ld b,l			;86a1	45 	E 
	ld (hl),h			;86a2	74 	t 
	ld b,l			;86a3	45 	E 
	ld (hl),d			;86a4	72 	r 
	ld b,l			;86a5	45 	E 
	add a,b			;86a6	80 	. 
	ld b,(hl)			;86a7	46 	F 
	add a,b			;86a8	80 	. 
	ld b,a			;86a9	47 	G 
	add a,b			;86aa	80 	. 
	ld c,b			;86ab	48 	H 
	add a,b			;86ac	80 	. 
	ld c,c			;86ad	49 	I 
	add a,b			;86ae	80 	. 
	ld c,d			;86af	4a 	J 
	add a,b			;86b0	80 	. 
	ld c,e			;86b1	4b 	K 
	add a,b			;86b2	80 	. 
	ld c,h			;86b3	4c 	L 
	add a,b			;86b4	80 	. 
	ld b,(hl)			;86b5	46 	F 
	add a,d			;86b6	82 	. 
	ld c,l			;86b7	4d 	M 
	add a,b			;86b8	80 	. 
	ld c,b			;86b9	48 	H 
	add a,d			;86ba	82 	. 
	ld c,(hl)			;86bb	4e 	N 
	add a,b			;86bc	80 	. 
	ld c,l			;86bd	4d 	M 
	add a,d			;86be	82 	. 
	ld b,(hl)			;86bf	46 	F 
	add a,b			;86c0	80 	. 
	ld c,(hl)			;86c1	4e 	N 
	add a,d			;86c2	82 	. 
	ld c,b			;86c3	48 	H 
	add a,b			;86c4	80 	. 
	ld c,d			;86c5	4a 	J 
	add a,d			;86c6	82 	. 
	ld c,a			;86c7	4f 	O 
	add a,b			;86c8	80 	. 
	ld c,h			;86c9	4c 	L 
	add a,d			;86ca	82 	. 
	ld d,b			;86cb	50 	P 
	add a,b			;86cc	80 	. 
	ld c,a			;86cd	4f 	O 
	add a,d			;86ce	82 	. 
	ld c,d			;86cf	4a 	J 
	add a,b			;86d0	80 	. 
	ld d,b			;86d1	50 	P 
	add a,d			;86d2	82 	. 
	ld c,h			;86d3	4c 	L 
	add a,b			;86d4	80 	. 
	ld b,l			;86d5	45 	E 
	add a,b			;86d6	80 	. 
	ld b,(hl)			;86d7	46 	F 
	add a,b			;86d8	80 	. 
	ld d,c			;86d9	51 	Q 
	add a,b			;86da	80 	. 
	ld d,d			;86db	52 	R 
	add a,b			;86dc	80 	. 
	ld d,c			;86dd	51 	Q 
	add a,h			;86de	84 	. 
	ld d,d			;86df	52 	R 
	add a,h			;86e0	84 	. 
	ld b,l			;86e1	45 	E 
	add a,h			;86e2	84 	. 
	ld b,(hl)			;86e3	46 	F 
	add a,h			;86e4	84 	. 
	ld c,d			;86e5	4a 	J 
	add a,d			;86e6	82 	. 
	ld c,c			;86e7	49 	I 
	add a,d			;86e8	82 	. 
	ld d,e			;86e9	53 	S 
	add a,b			;86ea	80 	. 
	ld d,h			;86eb	54 	T 
	add a,b			;86ec	80 	. 
	ld d,e			;86ed	53 	S 
	add a,h			;86ee	84 	. 
	ld d,h			;86ef	54 	T 
	add a,h			;86f0	84 	. 
	ld c,d			;86f1	4a 	J 
	add a,(hl)			;86f2	86 	. 
	ld c,c			;86f3	49 	I 
	add a,(hl)			;86f4	86 	. 
	ld d,l			;86f5	55 	U 
	add a,b			;86f6	80 	. 
	ld d,(hl)			;86f7	56 	V 
	add a,b			;86f8	80 	. 
	ld d,e			;86f9	53 	S 
	add a,b			;86fa	80 	. 
	ld d,h			;86fb	54 	T 
	add a,b			;86fc	80 	. 
	ld c,l			;86fd	4d 	M 
	add a,d			;86fe	82 	. 
	ld d,a			;86ff	57 	W 
	add a,b			;8700	80 	. 
	ld c,(hl)			;8701	4e 	N 
	add a,d			;8702	82 	. 
	ld e,b			;8703	58 	X 
	add a,b			;8704	80 	. 
	ld e,c			;8705	59 	Y 
	jr nz,l8762h		;8706	20 5a 	  Z 
	add a,b			;8708	80 	. 
	ld e,e			;8709	5b 	[ 
	add a,b			;870a	80 	. 
	ld e,h			;870b	5c 	\ 
	add a,b			;870c	80 	. 
	ld e,l			;870d	5d 	] 
	jr nz,l876eh		;870e	20 5e 	  ^ 
	jr nz,l8771h		;8710	20 5f 	  _ 
	jr nz,l8774h		;8712	20 60 	  ` 
	add a,b			;8714	80 	. 
	ld h,c			;8715	61 	a 
	jr nz,l877ah		;8716	20 62 	  b 
	add a,b			;8718	80 	. 
	ld h,e			;8719	63 	c 
	add a,b			;871a	80 	. 
	ld h,h			;871b	64 	d 
	add a,b			;871c	80 	. 
	nop			;871d	00 	. 
	ld b,000h		;871e	06 00 	. . 
	ld b,041h		;8720	06 41 	. A 
	nop			;8722	00 	. 
	ld b,d			;8723	42 	B 
	nop			;8724	00 	. 
	ld b,e			;8725	43 	C 
	nop			;8726	00 	. 
	ld b,h			;8727	44 	D 
	nop			;8728	00 	. 
	ld b,l			;8729	45 	E 
	nop			;872a	00 	. 
	ld b,(hl)			;872b	46 	F 
	nop			;872c	00 	. 
	ld b,a			;872d	47 	G 
	nop			;872e	00 	. 
	ld c,b			;872f	48 	H 
	nop			;8730	00 	. 
	ld c,c			;8731	49 	I 
	nop			;8732	00 	. 
	ld c,d			;8733	4a 	J 
	nop			;8734	00 	. 
	ld c,e			;8735	4b 	K 
	nop			;8736	00 	. 
	ld c,h			;8737	4c 	L 
	nop			;8738	00 	. 
	ld c,h			;8739	4c 	L 
	ld (bc),a			;873a	02 	. 
	ld c,e			;873b	4b 	K 
	ld (bc),a			;873c	02 	. 
	ld c,l			;873d	4d 	M 
	djnz l878eh		;873e	10 4e 	. N 
	djnz l878eh		;8740	10 4c 	. L 
	sub d			;8742	92 	. 
	ld c,e			;8743	4b 	K 
	sub d			;8744	92 	. 
	ld c,a			;8745	4f 	O 
	ld (hl),b			;8746	70 	p 
	ld c,a			;8747	4f 	O 
	ld (hl),d			;8748	72 	r 
	ld d,b			;8749	50 	P 
	ld (hl),b			;874a	70 	p 
	ld d,c			;874b	51 	Q 
	ld (hl),b			;874c	70 	p 
	ld d,d			;874d	52 	R 
	ld (hl),b			;874e	70 	p 
	ld d,e			;874f	53 	S 
	ld (hl),b			;8750	70 	p 
	ld d,h			;8751	54 	T 
	ld (hl),b			;8752	70 	p 
	ld d,l			;8753	55 	U 
	ld (hl),b			;8754	70 	p 
	ld d,(hl)			;8755	56 	V 
	nop			;8756	00 	. 
	ld d,(hl)			;8757	56 	V 
	nop			;8758	00 	. 
	ld d,a			;8759	57 	W 
	nop			;875a	00 	. 
	ld e,b			;875b	58 	X 
	nop			;875c	00 	. 
	ld d,(hl)			;875d	56 	V 
	nop			;875e	00 	. 
	ld d,(hl)			;875f	56 	V 
	nop			;8760	00 	. 
	ld e,c			;8761	59 	Y 
l8762h:
	nop			;8762	00 	. 
	ld e,d			;8763	5a 	Z 
	nop			;8764	00 	. 
	ld e,e			;8765	5b 	[ 
	nop			;8766	00 	. 
	ld e,h			;8767	5c 	\ 
	nop			;8768	00 	. 
	ld e,l			;8769	5d 	] 
	nop			;876a	00 	. 
	ld e,(hl)			;876b	5e 	^ 
	nop			;876c	00 	. 
	ld e,a			;876d	5f 	_ 
l876eh:
	nop			;876e	00 	. 
	ld h,b			;876f	60 	` 
	nop			;8770	00 	. 
l8771h:
	ld h,c			;8771	61 	a 
	nop			;8772	00 	. 
	ld h,d			;8773	62 	b 
l8774h:
	nop			;8774	00 	. 
	ld h,e			;8775	63 	c 
	nop			;8776	00 	. 
	ld h,h			;8777	64 	d 
	nop			;8778	00 	. 
	ld h,l			;8779	65 	e 
l877ah:
	nop			;877a	00 	. 
	ld h,(hl)			;877b	66 	f 
	nop			;877c	00 	. 
	ld e,l			;877d	5d 	] 
	nop			;877e	00 	. 
	ld h,a			;877f	67 	g 
	nop			;8780	00 	. 
	ld e,l			;8781	5d 	] 
	nop			;8782	00 	. 
	ld l,b			;8783	68 	h 
	nop			;8784	00 	. 
	ld h,a			;8785	67 	g 
	ld (bc),a			;8786	02 	. 
	ld e,l			;8787	5d 	] 
	ld (bc),a			;8788	02 	. 
	ld l,b			;8789	68 	h 
	ld (bc),a			;878a	02 	. 
	ld e,l			;878b	5d 	] 
	ld (bc),a			;878c	02 	. 
	ld h,h			;878d	64 	d 
l878eh:
	ld (bc),a			;878e	02 	. 
	ld h,e			;878f	63 	c 
	ld (bc),a			;8790	02 	. 
	ld h,(hl)			;8791	66 	f 
	ld (bc),a			;8792	02 	. 
	ld h,l			;8793	65 	e 
	ld (bc),a			;8794	02 	. 
	ld l,c			;8795	69 	i 
	nop			;8796	00 	. 
	ld l,d			;8797	6a 	j 
	nop			;8798	00 	. 
	ld l,c			;8799	69 	i 
	nop			;879a	00 	. 
	ld l,d			;879b	6a 	j 
	nop			;879c	00 	. 
	ld l,e			;879d	6b 	k 
	nop			;879e	00 	. 
	ld l,h			;879f	6c 	l 
	nop			;87a0	00 	. 
	ld l,l			;87a1	6d 	m 
	nop			;87a2	00 	. 
	ld l,(hl)			;87a3	6e 	n 
	nop			;87a4	00 	. 
	ld l,a			;87a5	6f 	o 
	nop			;87a6	00 	. 
	ld l,e			;87a7	6b 	k 
	ld (bc),a			;87a8	02 	. 
	ld l,(hl)			;87a9	6e 	n 
	ld (bc),a			;87aa	02 	. 
	ld l,l			;87ab	6d 	m 
	ld (bc),a			;87ac	02 	. 
	ld l,d			;87ad	6a 	j 
	ld (bc),a			;87ae	02 	. 
	ld l,c			;87af	69 	i 
	ld (bc),a			;87b0	02 	. 
	ld l,d			;87b1	6a 	j 
	ld (bc),a			;87b2	02 	. 
	ld l,c			;87b3	69 	i 
	ld (bc),a			;87b4	02 	. 
	ld (hl),b			;87b5	70 	p 
	nop			;87b6	00 	. 
	ld (hl),c			;87b7	71 	q 
	nop			;87b8	00 	. 
	ld (hl),b			;87b9	70 	p 
	nop			;87ba	00 	. 
	ld (hl),c			;87bb	71 	q 
	nop			;87bc	00 	. 
	ld (hl),c			;87bd	71 	q 
	nop			;87be	00 	. 
	ld (hl),b			;87bf	70 	p 
	ld (bc),a			;87c0	02 	. 
	ld (hl),c			;87c1	71 	q 
	nop			;87c2	00 	. 
	ld (hl),b			;87c3	70 	p 
	ld (bc),a			;87c4	02 	. 
	ld (hl),d			;87c5	72 	r 
	djnz l883bh		;87c6	10 73 	. s 
	djnz l8816h		;87c8	10 4c 	. L 
	sub d			;87ca	92 	. 
	ld c,e			;87cb	4b 	K 
	sub d			;87cc	92 	. 
	ld c,c			;87cd	49 	I 
	nop			;87ce	00 	. 
	ld c,d			;87cf	4a 	J 
	nop			;87d0	00 	. 
	ld c,e			;87d1	4b 	K 
	nop			;87d2	00 	. 
	ld c,h			;87d3	4c 	L 
	nop			;87d4	00 	. 
	ld c,d			;87d5	4a 	J 
	ld (bc),a			;87d6	02 	. 
	ld c,c			;87d7	49 	I 
	ld (bc),a			;87d8	02 	. 
	ld c,h			;87d9	4c 	L 
	ld (bc),a			;87da	02 	. 
	ld c,e			;87db	4b 	K 
	ld (bc),a			;87dc	02 	. 
	ld c,e			;87dd	4b 	K 
	nop			;87de	00 	. 
	ld c,l			;87df	4d 	M 
	nop			;87e0	00 	. 
	ld c,e			;87e1	4b 	K 
	nop			;87e2	00 	. 
	ld c,(hl)			;87e3	4e 	N 
	nop			;87e4	00 	. 
	ld c,a			;87e5	4f 	O 
	nop			;87e6	00 	. 
	ld c,e			;87e7	4b 	K 
	ld (bc),a			;87e8	02 	. 
	ld d,b			;87e9	50 	P 
	nop			;87ea	00 	. 
	ld c,e			;87eb	4b 	K 
	ld (bc),a			;87ec	02 	. 
	nop			;87ed	00 	. 
	ld b,051h		;87ee	06 51 	. Q 
	nop			;87f0	00 	. 
	nop			;87f1	00 	. 
	ld b,052h		;87f2	06 52 	. R 
	nop			;87f4	00 	. 
	ld d,e			;87f5	53 	S 
	nop			;87f6	00 	. 
	ld d,h			;87f7	54 	T 
	nop			;87f8	00 	. 
	ld c,e			;87f9	4b 	K 
	nop			;87fa	00 	. 
	ld c,h			;87fb	4c 	L 
	nop			;87fc	00 	. 
	ld d,l			;87fd	55 	U 
	nop			;87fe	00 	. 
l87ffh:
	ld d,e			;87ff	53 	S 
	ld (bc),a			;8800	02 	. 
	ld c,h			;8801	4c 	L 
	ld (bc),a			;8802	02 	. 
	ld c,e			;8803	4b 	K 
	ld (bc),a			;8804	02 	. 
	ld d,(hl)			;8805	56 	V 
	nop			;8806	00 	. 
	ld d,(hl)			;8807	56 	V 
	ld (bc),a			;8808	02 	. 
	ld d,a			;8809	57 	W 
	nop			;880a	00 	. 
	ld d,a			;880b	57 	W 
	ld (bc),a			;880c	02 	. 
	nop			;880d	00 	. 
	ld b,000h		;880e	06 00 	. . 
	ld b,058h		;8810	06 58 	. X 
	nop			;8812	00 	. 
	ld e,b			;8813	58 	X 
	ld (bc),a			;8814	02 	. 
	ld e,c			;8815	59 	Y 
l8816h:
	nop			;8816	00 	. 
	ld e,c			;8817	59 	Y 
	nop			;8818	00 	. 
	ld e,c			;8819	59 	Y 
	nop			;881a	00 	. 
	ld e,c			;881b	59 	Y 
	nop			;881c	00 	. 
	ld e,c			;881d	59 	Y 
	nop			;881e	00 	. 
	ld e,d			;881f	5a 	Z 
	nop			;8820	00 	. 
	ld e,c			;8821	59 	Y 
	nop			;8822	00 	. 
	ld e,e			;8823	5b 	[ 
	nop			;8824	00 	. 
	ld e,h			;8825	5c 	\ 
	nop			;8826	00 	. 
	ld e,l			;8827	5d 	] 
	nop			;8828	00 	. 
	ld e,(hl)			;8829	5e 	^ 
	nop			;882a	00 	. 
	ld e,a			;882b	5f 	_ 
	nop			;882c	00 	. 
	ld h,b			;882d	60 	` 
	nop			;882e	00 	. 
	ld e,h			;882f	5c 	\ 
	ld (bc),a			;8830	02 	. 
	ld e,a			;8831	5f 	_ 
	nop			;8832	00 	. 
	ld e,(hl)			;8833	5e 	^ 
	ld (bc),a			;8834	02 	. 
	ld h,c			;8835	61 	a 
	nop			;8836	00 	. 
	ld e,c			;8837	59 	Y 
	nop			;8838	00 	. 
	ld e,c			;8839	59 	Y 
	nop			;883a	00 	. 
l883bh:
	ld e,c			;883b	59 	Y 
	nop			;883c	00 	. 
	ld h,c			;883d	61 	a 
	nop			;883e	00 	. 
	ld h,c			;883f	61 	a 
	nop			;8840	00 	. 
	ld e,c			;8841	59 	Y 
	nop			;8842	00 	. 
	ld e,c			;8843	59 	Y 
	nop			;8844	00 	. 
	ld e,l			;8845	5d 	] 
	ld (bc),a			;8846	02 	. 
	ld e,h			;8847	5c 	\ 
	ld (bc),a			;8848	02 	. 
	ld e,a			;8849	5f 	_ 
	nop			;884a	00 	. 
	ld e,(hl)			;884b	5e 	^ 
	ld (bc),a			;884c	02 	. 
	ld e,d			;884d	5a 	Z 
	nop			;884e	00 	. 
	ld h,c			;884f	61 	a 
	nop			;8850	00 	. 
	ld e,e			;8851	5b 	[ 
	nop			;8852	00 	. 
	ld e,c			;8853	59 	Y 
	nop			;8854	00 	. 
	ld e,b			;8855	58 	X 
	nop			;8856	00 	. 
	ld e,b			;8857	58 	X 
	ld (bc),a			;8858	02 	. 
	ld h,d			;8859	62 	b 
	nop			;885a	00 	. 
	ld h,e			;885b	63 	c 
	nop			;885c	00 	. 
	ld h,h			;885d	64 	d 
	nop			;885e	00 	. 
	ld h,h			;885f	64 	d 
	nop			;8860	00 	. 
	ld e,c			;8861	59 	Y 
	nop			;8862	00 	. 
	ld e,c			;8863	59 	Y 
	nop			;8864	00 	. 
	ld e,d			;8865	5a 	Z 
	nop			;8866	00 	. 
	ld e,c			;8867	59 	Y 
	nop			;8868	00 	. 
	ld e,e			;8869	5b 	[ 
	nop			;886a	00 	. 
	ld e,c			;886b	59 	Y 
	nop			;886c	00 	. 
	nop			;886d	00 	. 
	ld b,000h		;886e	06 00 	. . 
	ld b,064h		;8870	06 64 	. d 
	nop			;8872	00 	. 
	ld h,h			;8873	64 	d 
	nop			;8874	00 	. 
	ld e,c			;8875	59 	Y 
	nop			;8876	00 	. 
	ld h,c			;8877	61 	a 
	nop			;8878	00 	. 
	ld e,c			;8879	59 	Y 
	nop			;887a	00 	. 
	ld e,c			;887b	59 	Y 
	nop			;887c	00 	. 
	ld h,l			;887d	65 	e 
	nop			;887e	00 	. 
	ld h,l			;887f	65 	e 
	nop			;8880	00 	. 
	ld e,a			;8881	5f 	_ 
	nop			;8882	00 	. 
	ld e,a			;8883	5f 	_ 
	nop			;8884	00 	. 
	ld h,(hl)			;8885	66 	f 
	nop			;8886	00 	. 
	ld h,(hl)			;8887	66 	f 
	nop			;8888	00 	. 
	ld h,a			;8889	67 	g 
	nop			;888a	00 	. 
	ld h,a			;888b	67 	g 
	nop			;888c	00 	. 
	ld h,a			;888d	67 	g 
	nop			;888e	00 	. 
	ld h,a			;888f	67 	g 
	nop			;8890	00 	. 
	ld h,a			;8891	67 	g 
	nop			;8892	00 	. 
	ld h,a			;8893	67 	g 
	nop			;8894	00 	. 
	ld h,a			;8895	67 	g 
	nop			;8896	00 	. 
	ld h,a			;8897	67 	g 
	nop			;8898	00 	. 
	ld l,b			;8899	68 	h 
	nop			;889a	00 	. 
	ld l,b			;889b	68 	h 
	nop			;889c	00 	. 
	ld l,c			;889d	69 	i 
	add a,b			;889e	80 	. 
	ld l,d			;889f	6a 	j 
	add a,b			;88a0	80 	. 
	ld l,d			;88a1	6a 	j 
	add a,d			;88a2	82 	. 
	ld l,c			;88a3	69 	i 
	add a,d			;88a4	82 	. 
	ld l,e			;88a5	6b 	k 
	nop			;88a6	00 	. 
	ld l,h			;88a7	6c 	l 
	nop			;88a8	00 	. 
	ld l,l			;88a9	6d 	m 
	nop			;88aa	00 	. 
	ld l,h			;88ab	6c 	l 
	nop			;88ac	00 	. 
	ld l,(hl)			;88ad	6e 	n 
	nop			;88ae	00 	. 
	ld l,(hl)			;88af	6e 	n 
	ld (bc),a			;88b0	02 	. 
	ld l,(hl)			;88b1	6e 	n 
	nop			;88b2	00 	. 
	ld l,(hl)			;88b3	6e 	n 
	ld (bc),a			;88b4	02 	. 
	ld l,h			;88b5	6c 	l 
	nop			;88b6	00 	. 
	ld l,e			;88b7	6b 	k 
	ld (bc),a			;88b8	02 	. 
	ld l,h			;88b9	6c 	l 
	nop			;88ba	00 	. 
	ld l,l			;88bb	6d 	m 
	ld (bc),a			;88bc	02 	. 
	ld l,a			;88bd	6f 	o 
	nop			;88be	00 	. 
	ld l,a			;88bf	6f 	o 
	nop			;88c0	00 	. 
	ld (hl),b			;88c1	70 	p 
	nop			;88c2	00 	. 
	ld (hl),b			;88c3	70 	p 
	nop			;88c4	00 	. 
	ld (hl),c			;88c5	71 	q 
	add a,b			;88c6	80 	. 
	ld (hl),c			;88c7	71 	q 
	add a,d			;88c8	82 	. 
	ld (hl),d			;88c9	72 	r 
	add a,b			;88ca	80 	. 
	ld (hl),e			;88cb	73 	s 
	add a,b			;88cc	80 	. 
	xor d			;88cd	aa 	. 
	nop			;88ce	00 	. 
	xor d			;88cf	aa 	. 
	nop			;88d0	00 	. 
	xor d			;88d1	aa 	. 
	nop			;88d2	00 	. 
	xor d			;88d3	aa 	. 
	nop			;88d4	00 	. 
	dec a			;88d5	3d 	= 
	nop			;88d6	00 	. 
	ld a,000h		;88d7	3e 00 	> . 
	ccf			;88d9	3f 	? 
	nop			;88da	00 	. 
	ld b,b			;88db	40 	@ 
	nop			;88dc	00 	. 
	ld b,c			;88dd	41 	A 
	nop			;88de	00 	. 
	ld b,d			;88df	42 	B 
	nop			;88e0	00 	. 
	ld b,e			;88e1	43 	C 
	nop			;88e2	00 	. 
	ld b,h			;88e3	44 	D 
	nop			;88e4	00 	. 
	ld b,l			;88e5	45 	E 
	nop			;88e6	00 	. 
	ld b,(hl)			;88e7	46 	F 
	nop			;88e8	00 	. 
	ld b,a			;88e9	47 	G 
	nop			;88ea	00 	. 
	ld c,b			;88eb	48 	H 
	nop			;88ec	00 	. 
	ld b,(hl)			;88ed	46 	F 
	ld (bc),a			;88ee	02 	. 
	ld b,l			;88ef	45 	E 
	ld (bc),a			;88f0	02 	. 
	ld c,b			;88f1	48 	H 
	ld (bc),a			;88f2	02 	. 
	ld b,a			;88f3	47 	G 
	ld (bc),a			;88f4	02 	. 
	ld h,c			;88f5	61 	a 
	nop			;88f6	00 	. 
	ld c,c			;88f7	49 	I 
	nop			;88f8	00 	. 
	ld h,c			;88f9	61 	a 
	nop			;88fa	00 	. 
	ld c,d			;88fb	4a 	J 
	nop			;88fc	00 	. 
	ld c,e			;88fd	4b 	K 
	nop			;88fe	00 	. 
	ld c,h			;88ff	4c 	L 
	nop			;8900	00 	. 
	ld c,l			;8901	4d 	M 
	nop			;8902	00 	. 
	ld c,(hl)			;8903	4e 	N 
	nop			;8904	00 	. 
	ld c,c			;8905	49 	I 
	ld (bc),a			;8906	02 	. 
	ld h,c			;8907	61 	a 
	nop			;8908	00 	. 
	ld c,d			;8909	4a 	J 
	ld (bc),a			;890a	02 	. 
	ld h,c			;890b	61 	a 
	nop			;890c	00 	. 
	ld c,h			;890d	4c 	L 
	ld (bc),a			;890e	02 	. 
	ld c,e			;890f	4b 	K 
	ld (bc),a			;8910	02 	. 
	ld c,(hl)			;8911	4e 	N 
	ld (bc),a			;8912	02 	. 
	ld c,l			;8913	4d 	M 
	ld (bc),a			;8914	02 	. 
	ld c,a			;8915	4f 	O 
	djnz l8918h		;8916	10 00 	. . 
l8918h:
	ld d,050h		;8918	16 50 	. P 
	djnz l891ch		;891a	10 00 	. . 
l891ch:
	ld d,051h		;891c	16 51 	. Q 
	djnz l8972h		;891e	10 52 	. R 
	djnz l8970h		;8920	10 4e 	. N 
	ld (de),a			;8922	12 	. 
	ld d,e			;8923	53 	S 
	djnz l8926h		;8924	10 00 	. . 
l8926h:
	ld d,04fh		;8926	16 4f 	. O 
	ld (de),a			;8928	12 	. 
	nop			;8929	00 	. 
	ld d,050h		;892a	16 50 	. P 
	ld (de),a			;892c	12 	. 
	ld d,d			;892d	52 	R 
	ld (de),a			;892e	12 	. 
	ld d,c			;892f	51 	Q 
	ld (de),a			;8930	12 	. 
	ld d,e			;8931	53 	S 
	ld (de),a			;8932	12 	. 
l8933h:
	ld c,(hl)			;8933	4e 	N 
	djnz l898ah		;8934	10 54 	. T 
	add a,b			;8936	80 	. 
	ld d,l			;8937	55 	U 
	add a,b			;8938	80 	. 
	ld d,(hl)			;8939	56 	V 
	add a,b			;893a	80 	. 
	ld d,a			;893b	57 	W 
	add a,b			;893c	80 	. 
	ld d,h			;893d	54 	T 
	add a,b			;893e	80 	. 
	ld e,b			;893f	58 	X 
	add a,b			;8940	80 	. 
	ld d,(hl)			;8941	56 	V 
	add a,b			;8942	80 	. 
	ld e,c			;8943	59 	Y 
	add a,b			;8944	80 	. 
	ld e,b			;8945	58 	X 
	add a,d			;8946	82 	. 
	ld d,h			;8947	54 	T 
	add a,d			;8948	82 	. 
	ld e,c			;8949	59 	Y 
	add a,d			;894a	82 	. 
	ld d,(hl)			;894b	56 	V 
	add a,d			;894c	82 	. 
	ld e,d			;894d	5a 	Z 
	ld (hl),b			;894e	70 	p 
	ld e,d			;894f	5a 	Z 
	ld (hl),d			;8950	72 	r 
	ld e,e			;8951	5b 	[ 
	ld (hl),b			;8952	70 	p 
	ld e,h			;8953	5c 	\ 
	ld (hl),b			;8954	70 	p 
	ld e,l			;8955	5d 	] 
	ld (hl),b			;8956	70 	p 
	ld e,(hl)			;8957	5e 	^ 
	ld (hl),b			;8958	70 	p 
	ld e,a			;8959	5f 	_ 
	ld (hl),b			;895a	70 	p 
	ld h,b			;895b	60 	` 
	ld (hl),b			;895c	70 	p 
	dec a			;895d	3d 	= 
	add a,b			;895e	80 	. 
	ld a,080h		;895f	3e 80 	> . 
	ccf			;8961	3f 	? 
	add a,b			;8962	80 	. 
	ld b,b			;8963	40 	@ 
	add a,b			;8964	80 	. 
	ld b,c			;8965	41 	A 
	add a,b			;8966	80 	. 
	ld b,d			;8967	42 	B 
	add a,b			;8968	80 	. 
	ld b,e			;8969	43 	C 
	add a,b			;896a	80 	. 
	ld b,h			;896b	44 	D 
	add a,b			;896c	80 	. 
	ld b,l			;896d	45 	E 
	add a,b			;896e	80 	. 
	ld b,(hl)			;896f	46 	F 
l8970h:
	add a,b			;8970	80 	. 
	ld b,a			;8971	47 	G 
l8972h:
	add a,b			;8972	80 	. 
	ld c,b			;8973	48 	H 
	add a,b			;8974	80 	. 
	ld b,(hl)			;8975	46 	F 
	add a,d			;8976	82 	. 
	ld b,l			;8977	45 	E 
	add a,d			;8978	82 	. 
	ld c,b			;8979	48 	H 
	add a,d			;897a	82 	. 
	ld b,a			;897b	47 	G 
	add a,d			;897c	82 	. 
	dec a			;897d	3d 	= 
	djnz l89beh		;897e	10 3e 	. > 
	djnz l89c1h		;8980	10 3f 	. ? 
	djnz l89c4h		;8982	10 40 	. @ 
	djnz l89c7h		;8984	10 41 	. A 
	djnz l89cah		;8986	10 42 	. B 
	djnz l89cdh		;8988	10 43 	. C 
l898ah:
	djnz l89d0h		;898a	10 44 	. D 
	djnz l89efh		;898c	10 61 	. a 
	nop			;898e	00 	. 
	ld h,c			;898f	61 	a 
	nop			;8990	00 	. 
	ld h,c			;8991	61 	a 
	nop			;8992	00 	. 
	ld h,c			;8993	61 	a 
	nop			;8994	00 	. 
	ld b,c			;8995	41 	A 
	nop			;8996	00 	. 
	ld b,d			;8997	42 	B 
	nop			;8998	00 	. 
	ld b,e			;8999	43 	C 
	nop			;899a	00 	. 
	ld b,h			;899b	44 	D 
	nop			;899c	00 	. 
	ld c,d			;899d	4a 	J 
	nop			;899e	00 	. 
	ld c,e			;899f	4b 	K 
	nop			;89a0	00 	. 
	ld c,h			;89a1	4c 	L 
	nop			;89a2	00 	. 
	ld c,l			;89a3	4d 	M 
	nop			;89a4	00 	. 
	ld c,(hl)			;89a5	4e 	N 
	nop			;89a6	00 	. 
	ld c,a			;89a7	4f 	O 
	nop			;89a8	00 	. 
	ld d,b			;89a9	50 	P 
	nop			;89aa	00 	. 
	ld b,h			;89ab	44 	D 
	nop			;89ac	00 	. 
	ld d,c			;89ad	51 	Q 
	nop			;89ae	00 	. 
	ld d,d			;89af	52 	R 
	nop			;89b0	00 	. 
	ld d,e			;89b1	53 	S 
	nop			;89b2	00 	. 
	ld d,h			;89b3	54 	T 
	nop			;89b4	00 	. 
	nop			;89b5	00 	. 
	ld b,055h		;89b6	06 55 	. U 
	nop			;89b8	00 	. 
	nop			;89b9	00 	. 
	ld b,056h		;89ba	06 56 	. V 
	nop			;89bc	00 	. 
	ld d,a			;89bd	57 	W 
l89beh:
	nop			;89be	00 	. 
	ld e,b			;89bf	58 	X 
	nop			;89c0	00 	. 
l89c1h:
	ld e,c			;89c1	59 	Y 
	nop			;89c2	00 	. 
	ld e,d			;89c3	5a 	Z 
l89c4h:
	nop			;89c4	00 	. 
	ld e,e			;89c5	5b 	[ 
	nop			;89c6	00 	. 
l89c7h:
	ld e,h			;89c7	5c 	\ 
	nop			;89c8	00 	. 
	ld e,l			;89c9	5d 	] 
l89cah:
	nop			;89ca	00 	. 
	ld e,(hl)			;89cb	5e 	^ 
	nop			;89cc	00 	. 
l89cdh:
	ld d,a			;89cd	57 	W 
	nop			;89ce	00 	. 
	ld e,a			;89cf	5f 	_ 
l89d0h:
	nop			;89d0	00 	. 
	ld h,b			;89d1	60 	` 
	nop			;89d2	00 	. 
	ld h,c			;89d3	61 	a 
	nop			;89d4	00 	. 
	ld d,a			;89d5	57 	W 
	nop			;89d6	00 	. 
	ld e,b			;89d7	58 	X 
	nop			;89d8	00 	. 
	ld h,d			;89d9	62 	b 
	nop			;89da	00 	. 
	ld e,d			;89db	5a 	Z 
	nop			;89dc	00 	. 
	nop			;89dd	00 	. 
	ld b,063h		;89de	06 63 	. c 
	nop			;89e0	00 	. 
	nop			;89e1	00 	. 
	ld b,000h		;89e2	06 00 	. . 
	ld b,064h		;89e4	06 64 	. d 
	nop			;89e6	00 	. 
	ld h,l			;89e7	65 	e 
	nop			;89e8	00 	. 
	ld h,(hl)			;89e9	66 	f 
	nop			;89ea	00 	. 
	ld h,a			;89eb	67 	g 
	nop			;89ec	00 	. 
	ld l,b			;89ed	68 	h 
	nop			;89ee	00 	. 
l89efh:
	ld l,c			;89ef	69 	i 
	nop			;89f0	00 	. 
	ld l,d			;89f1	6a 	j 
	nop			;89f2	00 	. 
	ld l,e			;89f3	6b 	k 
	nop			;89f4	00 	. 
	ld l,h			;89f5	6c 	l 
	nop			;89f6	00 	. 
	ld l,l			;89f7	6d 	m 
	nop			;89f8	00 	. 
	ld l,(hl)			;89f9	6e 	n 
	nop			;89fa	00 	. 
	ld l,a			;89fb	6f 	o 
	nop			;89fc	00 	. 
	ld (hl),b			;89fd	70 	p 
	nop			;89fe	00 	. 
	dec (hl)			;89ff	35 	5 
	nop			;8a00	00 	. 
	ld (hl),c			;8a01	71 	q 
	nop			;8a02	00 	. 
	dec (hl)			;8a03	35 	5 
	nop			;8a04	00 	. 
	ld (hl),d			;8a05	72 	r 
	nop			;8a06	00 	. 
	dec (hl)			;8a07	35 	5 
	nop			;8a08	00 	. 
	ld (hl),e			;8a09	73 	s 
	nop			;8a0a	00 	. 
	ld (hl),h			;8a0b	74 	t 
	nop			;8a0c	00 	. 
	dec (hl)			;8a0d	35 	5 
	nop			;8a0e	00 	. 
	ld (hl),b			;8a0f	70 	p 
	ld (bc),a			;8a10	02 	. 
	dec (hl)			;8a11	35 	5 
	nop			;8a12	00 	. 
	ld (hl),c			;8a13	71 	q 
	ld (bc),a			;8a14	02 	. 
	ld l,l			;8a15	6d 	m 
	ld (bc),a			;8a16	02 	. 
	ld l,h			;8a17	6c 	l 
	ld (bc),a			;8a18	02 	. 
	ld l,a			;8a19	6f 	o 
	ld (bc),a			;8a1a	02 	. 
	ld l,(hl)			;8a1b	6e 	n 
	ld (bc),a			;8a1c	02 	. 
	ld l,c			;8a1d	69 	i 
	ld (bc),a			;8a1e	02 	. 
	ld l,b			;8a1f	68 	h 
	ld (bc),a			;8a20	02 	. 
	ld l,e			;8a21	6b 	k 
	ld (bc),a			;8a22	02 	. 
	ld l,d			;8a23	6a 	j 
	ld (bc),a			;8a24	02 	. 
	nop			;8a25	00 	. 
	ld b,075h		;8a26	06 75 	. u 
	nop			;8a28	00 	. 
	nop			;8a29	00 	. 
	ld b,000h		;8a2a	06 00 	. . 
	ld b,000h		;8a2c	06 00 	. . 
	ld b,000h		;8a2e	06 00 	. . 
	ld b,076h		;8a30	06 76 	. v 
	nop			;8a32	00 	. 
	ld (hl),a			;8a33	77 	w 
	nop			;8a34	00 	. 
	ld h,h			;8a35	64 	d 
	nop			;8a36	00 	. 
	ld h,l			;8a37	65 	e 
	nop			;8a38	00 	. 
	ld a,b			;8a39	78 	x 
	nop			;8a3a	00 	. 
	ld a,c			;8a3b	79 	y 
	nop			;8a3c	00 	. 
	dec (hl)			;8a3d	35 	5 
	nop			;8a3e	00 	. 
	dec (hl)			;8a3f	35 	5 
	nop			;8a40	00 	. 
	ld a,d			;8a41	7a 	z 
	nop			;8a42	00 	. 
	ld a,e			;8a43	7b 	{ 
	nop			;8a44	00 	. 
	dec (hl)			;8a45	35 	5 
	nop			;8a46	00 	. 
	dec (hl)			;8a47	35 	5 
	nop			;8a48	00 	. 
	ld a,h			;8a49	7c 	| 
	nop			;8a4a	00 	. 
	ld a,l			;8a4b	7d 	} 
	nop			;8a4c	00 	. 
	ld a,(hl)			;8a4d	7e 	~ 
	add a,b			;8a4e	80 	. 
	ld a,a			;8a4f	7f 	 
	add a,b			;8a50	80 	. 
	ld a,a			;8a51	7f 	 
	add a,d			;8a52	82 	. 
	ld a,(hl)			;8a53	7e 	~ 
	add a,d			;8a54	82 	. 
	ld b,l			;8a55	45 	E 
	ld h,b			;8a56	60 	` 
	ld b,l			;8a57	45 	E 
	ld h,b			;8a58	60 	` 
	ld b,(hl)			;8a59	46 	F 
	ld h,b			;8a5a	60 	` 
	ld b,a			;8a5b	47 	G 
	ld h,b			;8a5c	60 	` 
	ld c,b			;8a5d	48 	H 
	ld h,b			;8a5e	60 	` 
	ld c,b			;8a5f	48 	H 
	ld h,b			;8a60	60 	` 
	ld c,c			;8a61	49 	I 
	ld h,b			;8a62	60 	` 
	ld c,c			;8a63	49 	I 
	ld h,b			;8a64	60 	` 
	dec a			;8a65	3d 	= 
	add a,b			;8a66	80 	. 
	ld a,080h		;8a67	3e 80 	> . 
	ld a,080h		;8a69	3e 80 	> . 
	dec a			;8a6b	3d 	= 
	add a,b			;8a6c	80 	. 
	ccf			;8a6d	3f 	? 
	ld h,b			;8a6e	60 	` 
	ccf			;8a6f	3f 	? 
	ld h,d			;8a70	62 	b 
	ccf			;8a71	3f 	? 
	ld h,b			;8a72	60 	` 
	ccf			;8a73	3f 	? 
	ld h,d			;8a74	62 	b 
	ccf			;8a75	3f 	? 
	and b			;8a76	a0 	. 
	ccf			;8a77	3f 	? 
	and d			;8a78	a2 	. 
	ccf			;8a79	3f 	? 
	and b			;8a7a	a0 	. 
	ccf			;8a7b	3f 	? 
	and d			;8a7c	a2 	. 
	ld b,b			;8a7d	40 	@ 
	nop			;8a7e	00 	. 
	ld b,b			;8a7f	40 	@ 
	ld (bc),a			;8a80	02 	. 
	ld b,b			;8a81	40 	@ 
	nop			;8a82	00 	. 
	ld b,b			;8a83	40 	@ 
	ld (bc),a			;8a84	02 	. 
	ld b,c			;8a85	41 	A 
	ld h,b			;8a86	60 	` 
	ld b,d			;8a87	42 	B 
	ld h,b			;8a88	60 	` 
	ld b,e			;8a89	43 	C 
	ld h,b			;8a8a	60 	` 
	ld b,e			;8a8b	43 	C 
	ld h,b			;8a8c	60 	` 
	ld b,e			;8a8d	43 	C 
	ld h,h			;8a8e	64 	d 
	ld b,e			;8a8f	43 	C 
	ld h,h			;8a90	64 	d 
	ld b,h			;8a91	44 	D 
	ld h,b			;8a92	60 	` 
	ld b,h			;8a93	44 	D 
	ld h,b			;8a94	60 	` 
	ld b,l			;8a95	45 	E 
	nop			;8a96	00 	. 
	ld b,l			;8a97	45 	E 
	nop			;8a98	00 	. 
	ld b,l			;8a99	45 	E 
	nop			;8a9a	00 	. 
	ld b,l			;8a9b	45 	E 
	nop			;8a9c	00 	. 
	ld b,(hl)			;8a9d	46 	F 
	nop			;8a9e	00 	. 
	ld b,(hl)			;8a9f	46 	F 
	nop			;8aa0	00 	. 
	ld b,(hl)			;8aa1	46 	F 
	nop			;8aa2	00 	. 
	ld b,(hl)			;8aa3	46 	F 
	nop			;8aa4	00 	. 
	ld b,l			;8aa5	45 	E 
	nop			;8aa6	00 	. 
	ld b,l			;8aa7	45 	E 
	nop			;8aa8	00 	. 
	ld b,a			;8aa9	47 	G 
	nop			;8aaa	00 	. 
	ld c,b			;8aab	48 	H 
	nop			;8aac	00 	. 
	ld b,l			;8aad	45 	E 
	nop			;8aae	00 	. 
	ld b,l			;8aaf	45 	E 
	nop			;8ab0	00 	. 
	ld c,b			;8ab1	48 	H 
	nop			;8ab2	00 	. 
	ld c,c			;8ab3	49 	I 
	nop			;8ab4	00 	. 
	ld b,(hl)			;8ab5	46 	F 
	nop			;8ab6	00 	. 
	ld b,(hl)			;8ab7	46 	F 
	nop			;8ab8	00 	. 
	ld c,d			;8ab9	4a 	J 
	nop			;8aba	00 	. 
	ld c,e			;8abb	4b 	K 
	nop			;8abc	00 	. 
	ld b,(hl)			;8abd	46 	F 
	nop			;8abe	00 	. 
	ld b,(hl)			;8abf	46 	F 
	nop			;8ac0	00 	. 
	ld c,e			;8ac1	4b 	K 
	nop			;8ac2	00 	. 
	ld c,h			;8ac3	4c 	L 
	nop			;8ac4	00 	. 
	ld c,l			;8ac5	4d 	M 
	nop			;8ac6	00 	. 
	ld c,(hl)			;8ac7	4e 	N 
	nop			;8ac8	00 	. 
	ld c,l			;8ac9	4d 	M 
	nop			;8aca	00 	. 
	ld c,(hl)			;8acb	4e 	N 
	nop			;8acc	00 	. 
	ld c,(hl)			;8acd	4e 	N 
	ld (bc),a			;8ace	02 	. 
	ld c,l			;8acf	4d 	M 
	ld (bc),a			;8ad0	02 	. 
	ld c,a			;8ad1	4f 	O 
	nop			;8ad2	00 	. 
	ld c,l			;8ad3	4d 	M 
	ld (bc),a			;8ad4	02 	. 
	ld b,l			;8ad5	45 	E 
	nop			;8ad6	00 	. 
	ld b,l			;8ad7	45 	E 
	nop			;8ad8	00 	. 
	ld c,b			;8ad9	48 	H 
	nop			;8ada	00 	. 
	ld c,b			;8adb	48 	H 
	nop			;8adc	00 	. 
	ld d,b			;8add	50 	P 
	nop			;8ade	00 	. 
	ld d,c			;8adf	51 	Q 
	nop			;8ae0	00 	. 
	ld d,d			;8ae1	52 	R 
	nop			;8ae2	00 	. 
	ld d,e			;8ae3	53 	S 
	nop			;8ae4	00 	. 
	ld d,b			;8ae5	50 	P 
	nop			;8ae6	00 	. 
	ld d,c			;8ae7	51 	Q 
	nop			;8ae8	00 	. 
	ld d,h			;8ae9	54 	T 
	nop			;8aea	00 	. 
	ld d,l			;8aeb	55 	U 
	nop			;8aec	00 	. 
	ld b,(hl)			;8aed	46 	F 
	nop			;8aee	00 	. 
	ld b,(hl)			;8aef	46 	F 
	nop			;8af0	00 	. 
	ld b,(hl)			;8af1	46 	F 
	nop			;8af2	00 	. 
	ld d,(hl)			;8af3	56 	V 
	nop			;8af4	00 	. 
	ld d,a			;8af5	57 	W 
	nop			;8af6	00 	. 
	ld e,b			;8af7	58 	X 
	nop			;8af8	00 	. 
	ld e,c			;8af9	59 	Y 
	nop			;8afa	00 	. 
	ld e,d			;8afb	5a 	Z 
	nop			;8afc	00 	. 
	ld b,(hl)			;8afd	46 	F 
	nop			;8afe	00 	. 
	ld b,(hl)			;8aff	46 	F 
	nop			;8b00	00 	. 
	ld e,e			;8b01	5b 	[ 
	nop			;8b02	00 	. 
	ld b,(hl)			;8b03	46 	F 
	nop			;8b04	00 	. 
	ld e,h			;8b05	5c 	\ 
	nop			;8b06	00 	. 
	ld e,l			;8b07	5d 	] 
	nop			;8b08	00 	. 
	ld e,(hl)			;8b09	5e 	^ 
	nop			;8b0a	00 	. 
	ld e,a			;8b0b	5f 	_ 
	nop			;8b0c	00 	. 
	ld h,b			;8b0d	60 	` 
	nop			;8b0e	00 	. 
	ld h,c			;8b0f	61 	a 
	nop			;8b10	00 	. 
	ld h,d			;8b11	62 	b 
	nop			;8b12	00 	. 
	ld h,e			;8b13	63 	c 
	nop			;8b14	00 	. 
	ld h,h			;8b15	64 	d 
	nop			;8b16	00 	. 
	ld h,l			;8b17	65 	e 
	nop			;8b18	00 	. 
	ld h,(hl)			;8b19	66 	f 
	nop			;8b1a	00 	. 
	ld h,a			;8b1b	67 	g 
	nop			;8b1c	00 	. 
	ld l,b			;8b1d	68 	h 
	nop			;8b1e	00 	. 
	ld l,c			;8b1f	69 	i 
	nop			;8b20	00 	. 
	ld l,b			;8b21	68 	h 
	nop			;8b22	00 	. 
	ld l,c			;8b23	69 	i 
	nop			;8b24	00 	. 
	ld h,e			;8b25	63 	c 
	djnz l8b92h		;8b26	10 6a 	. j 
	djnz l8b8dh		;8b28	10 63 	. c 
	djnz l8b96h		;8b2a	10 6a 	. j 
	djnz l8b99h		;8b2c	10 6b 	. k 
	add a,b			;8b2e	80 	. 
	ld l,h			;8b2f	6c 	l 
	add a,b			;8b30	80 	. 
	ld l,h			;8b31	6c 	l 
	add a,b			;8b32	80 	. 
	ld l,e			;8b33	6b 	k 
	add a,b			;8b34	80 	. 
	ld b,(hl)			;8b35	46 	F 
	djnz l8b7eh		;8b36	10 46 	. F 
	djnz l8b80h		;8b38	10 46 	. F 
	djnz l8b82h		;8b3a	10 46 	. F 
	djnz l8b8bh		;8b3c	10 4d 	. M 
	djnz l8b8eh		;8b3e	10 4e 	. N 
	djnz l8b8fh		;8b40	10 4d 	. M 
	djnz l8b92h		;8b42	10 4e 	. N 
	djnz l8b94h		;8b44	10 4e 	. N 
	ld (de),a			;8b46	12 	. 
	ld c,l			;8b47	4d 	M 
	ld (de),a			;8b48	12 	. 
	ld c,a			;8b49	4f 	O 
	djnz l8b99h		;8b4a	10 4d 	. M 
	ld (de),a			;8b4c	12 	. 
	ld d,b			;8b4d	50 	P 
	djnz l8ba1h		;8b4e	10 51 	. Q 
	djnz l8ba6h		;8b50	10 54 	. T 
	djnz l8ba9h		;8b52	10 55 	. U 
	djnz l8b9bh		;8b54	10 45 	. E 
	add a,b			;8b56	80 	. 
	ld b,l			;8b57	45 	E 
	add a,b			;8b58	80 	. 
	ld b,l			;8b59	45 	E 
	add a,b			;8b5a	80 	. 
	ld b,l			;8b5b	45 	E 
	add a,b			;8b5c	80 	. 
	dec a			;8b5d	3d 	= 
	add a,b			;8b5e	80 	. 
	ld a,080h		;8b5f	3e 80 	> . 
	ld a,080h		;8b61	3e 80 	> . 
	dec a			;8b63	3d 	= 
	add a,b			;8b64	80 	. 
	dec a			;8b65	3d 	= 
	sub b			;8b66	90 	. 
	ld a,090h		;8b67	3e 90 	> . 
	ld a,090h		;8b69	3e 90 	> . 
	dec a			;8b6b	3d 	= 
	sub b			;8b6c	90 	. 
	ccf			;8b6d	3f 	? 
	and b			;8b6e	a0 	. 
	ccf			;8b6f	3f 	? 
	and d			;8b70	a2 	. 
	ccf			;8b71	3f 	? 
	and b			;8b72	a0 	. 
	ccf			;8b73	3f 	? 
	and d			;8b74	a2 	. 
	ccf			;8b75	3f 	? 
	ld h,b			;8b76	60 	` 
	ccf			;8b77	3f 	? 
	ld h,d			;8b78	62 	b 
	ccf			;8b79	3f 	? 
	ld h,b			;8b7a	60 	` 
	ccf			;8b7b	3f 	? 
	ld h,d			;8b7c	62 	b 
	ld b,b			;8b7d	40 	@ 
l8b7eh:
	ld h,b			;8b7e	60 	` 
	ld b,c			;8b7f	41 	A 
l8b80h:
	ld h,b			;8b80	60 	` 
	ld b,d			;8b81	42 	B 
l8b82h:
	ld h,b			;8b82	60 	` 
	ld b,d			;8b83	42 	B 
	ld h,b			;8b84	60 	` 
	ld b,d			;8b85	42 	B 
	ld h,h			;8b86	64 	d 
	ld b,d			;8b87	42 	B 
	ld h,h			;8b88	64 	d 
	ld b,b			;8b89	40 	@ 
	ld h,h			;8b8a	64 	d 
l8b8bh:
	ld b,c			;8b8b	41 	A 
	ld h,h			;8b8c	64 	d 
l8b8dh:
	ld b,l			;8b8d	45 	E 
l8b8eh:
	ld (hl),b			;8b8e	70 	p 
l8b8fh:
	ld b,l			;8b8f	45 	E 
	ld (hl),d			;8b90	72 	r 
	ld b,(hl)			;8b91	46 	F 
l8b92h:
	ld (hl),b			;8b92	70 	p 
	ld b,a			;8b93	47 	G 
l8b94h:
	ld (hl),b			;8b94	70 	p 
	ld c,b			;8b95	48 	H 
l8b96h:
	ld (hl),b			;8b96	70 	p 
	ld c,c			;8b97	49 	I 
	ld (hl),b			;8b98	70 	p 
l8b99h:
	ld c,d			;8b99	4a 	J 
	ld (hl),b			;8b9a	70 	p 
l8b9bh:
	ld c,e			;8b9b	4b 	K 
	ld (hl),b			;8b9c	70 	p 
	ld c,h			;8b9d	4c 	L 
	ld (hl),b			;8b9e	70 	p 
	ld c,h			;8b9f	4c 	L 
	ld (hl),b			;8ba0	70 	p 
l8ba1h:
	ld c,h			;8ba1	4c 	L 
	ld (hl),b			;8ba2	70 	p 
	ld c,h			;8ba3	4c 	L 
	ld (hl),b			;8ba4	70 	p 
	ld c,l			;8ba5	4d 	M 
l8ba6h:
	nop			;8ba6	00 	. 
	ld c,l			;8ba7	4d 	M 
	ld (bc),a			;8ba8	02 	. 
l8ba9h:
	ld c,l			;8ba9	4d 	M 
	nop			;8baa	00 	. 
	ld c,l			;8bab	4d 	M 
	ld (bc),a			;8bac	02 	. 
	ld c,(hl)			;8bad	4e 	N 
	nop			;8bae	00 	. 
	ld c,a			;8baf	4f 	O 
	nop			;8bb0	00 	. 
	ld d,b			;8bb1	50 	P 
	nop			;8bb2	00 	. 
	ld d,c			;8bb3	51 	Q 
	nop			;8bb4	00 	. 
	ld d,d			;8bb5	52 	R 
	add a,b			;8bb6	80 	. 
	ld d,d			;8bb7	52 	R 
	add a,b			;8bb8	80 	. 
	ld d,d			;8bb9	52 	R 
	add a,b			;8bba	80 	. 
	ld d,d			;8bbb	52 	R 
	add a,b			;8bbc	80 	. 
	nop			;8bbd	00 	. 
	ld b,053h		;8bbe	06 53 	. S 
	nop			;8bc0	00 	. 
	ld d,e			;8bc1	53 	S 
	nop			;8bc2	00 	. 
	nop			;8bc3	00 	. 
	ld b,054h		;8bc4	06 54 	. T 
	add a,b			;8bc6	80 	. 
	ld d,l			;8bc7	55 	U 
	add a,b			;8bc8	80 	. 
	ld d,l			;8bc9	55 	U 
	add a,b			;8bca	80 	. 
	ld d,(hl)			;8bcb	56 	V 
	add a,b			;8bcc	80 	. 
	ld d,l			;8bcd	55 	U 
	add a,b			;8bce	80 	. 
	ld d,(hl)			;8bcf	56 	V 
	add a,b			;8bd0	80 	. 
	ld d,a			;8bd1	57 	W 
	add a,b			;8bd2	80 	. 
	ld e,b			;8bd3	58 	X 
	add a,b			;8bd4	80 	. 
	ld e,c			;8bd5	59 	Y 
	add a,b			;8bd6	80 	. 
	ld e,d			;8bd7	5a 	Z 
	add a,b			;8bd8	80 	. 
	ld e,e			;8bd9	5b 	[ 
	add a,b			;8bda	80 	. 
	ld e,h			;8bdb	5c 	\ 
	add a,b			;8bdc	80 	. 
	ld e,l			;8bdd	5d 	] 
	add a,b			;8bde	80 	. 
	ld e,(hl)			;8bdf	5e 	^ 
	add a,b			;8be0	80 	. 
	ld e,(hl)			;8be1	5e 	^ 
	add a,b			;8be2	80 	. 
	ld e,l			;8be3	5d 	] 
	add a,b			;8be4	80 	. 
	ld e,a			;8be5	5f 	_ 
	nop			;8be6	00 	. 
	ld e,a			;8be7	5f 	_ 
	nop			;8be8	00 	. 
	ld e,a			;8be9	5f 	_ 
	nop			;8bea	00 	. 
	ld e,a			;8beb	5f 	_ 
	nop			;8bec	00 	. 
	ld h,b			;8bed	60 	` 
	add a,b			;8bee	80 	. 
	ld h,c			;8bef	61 	a 
	add a,b			;8bf0	80 	. 
	ld h,c			;8bf1	61 	a 
	add a,b			;8bf2	80 	. 
	ld h,b			;8bf3	60 	` 
	add a,b			;8bf4	80 	. 
	ld h,h			;8bf5	64 	d 
	ld h,h			;8bf6	64 	d 
	ld h,l			;8bf7	65 	e 
	ld h,h			;8bf8	64 	d 
	ld h,d			;8bf9	62 	b 
	ld h,h			;8bfa	64 	d 
	ld h,e			;8bfb	63 	c 
	ld h,h			;8bfc	64 	d 
	ld h,(hl)			;8bfd	66 	f 
	add a,b			;8bfe	80 	. 
	ld h,a			;8bff	67 	g 
	add a,b			;8c00	80 	. 
	ld l,b			;8c01	68 	h 
	add a,b			;8c02	80 	. 
	ld l,c			;8c03	69 	i 
	add a,b			;8c04	80 	. 
	ld h,a			;8c05	67 	g 
	add a,d			;8c06	82 	. 
	ld h,(hl)			;8c07	66 	f 
	add a,d			;8c08	82 	. 
	ld l,d			;8c09	6a 	j 
	add a,b			;8c0a	80 	. 
	ld l,e			;8c0b	6b 	k 
	add a,b			;8c0c	80 	. 
	ld l,h			;8c0d	6c 	l 
	add a,b			;8c0e	80 	. 
	ld l,l			;8c0f	6d 	m 
	add a,b			;8c10	80 	. 
	ld l,(hl)			;8c11	6e 	n 
	add a,b			;8c12	80 	. 
	ld l,a			;8c13	6f 	o 
	add a,b			;8c14	80 	. 
	ld (hl),b			;8c15	70 	p 
	add a,b			;8c16	80 	. 
	ld (hl),c			;8c17	71 	q 
	add a,b			;8c18	80 	. 
	ld (hl),d			;8c19	72 	r 
	add a,b			;8c1a	80 	. 
	ld l,(hl)			;8c1b	6e 	n 
	add a,d			;8c1c	82 	. 
	ld (hl),e			;8c1d	73 	s 
	add a,b			;8c1e	80 	. 
	ld (hl),h			;8c1f	74 	t 
	add a,b			;8c20	80 	. 
	ld (hl),l			;8c21	75 	u 
	add a,b			;8c22	80 	. 
	halt			;8c23	76 	v 
	add a,b			;8c24	80 	. 
	ld (hl),h			;8c25	74 	t 
	add a,d			;8c26	82 	. 
	ld (hl),e			;8c27	73 	s 
	add a,d			;8c28	82 	. 
	ld (hl),a			;8c29	77 	w 
	add a,b			;8c2a	80 	. 
	ld (hl),l			;8c2b	75 	u 
	add a,d			;8c2c	82 	. 
	ld e,a			;8c2d	5f 	_ 
	djnz $+97		;8c2e	10 5f 	. _ 
	djnz l8c91h		;8c30	10 5f 	. _ 
	djnz l8c93h		;8c32	10 5f 	. _ 
	djnz l8c8dh		;8c34	10 57 	. W 
	ld (hl),b			;8c36	70 	p 
	ld e,b			;8c37	58 	X 
	ld h,b			;8c38	60 	` 
	ld e,c			;8c39	59 	Y 
	ld h,b			;8c3a	60 	` 
	ld e,c			;8c3b	59 	Y 
	ld h,b			;8c3c	60 	` 
	nop			;8c3d	00 	. 
	add a,b			;8c3e	80 	. 
	nop			;8c3f	00 	. 
	add a,b			;8c40	80 	. 
	nop			;8c41	00 	. 
	add a,b			;8c42	80 	. 
	nop			;8c43	00 	. 
	add a,b			;8c44	80 	. 
	ld e,c			;8c45	59 	Y 
	ld h,h			;8c46	64 	d 
	ld e,c			;8c47	59 	Y 
	ld h,h			;8c48	64 	d 
	ld d,a			;8c49	57 	W 
	ld h,h			;8c4a	64 	d 
	ld e,b			;8c4b	58 	X 
	ld h,h			;8c4c	64 	d 
	ld e,c			;8c4d	59 	Y 
	ld h,h			;8c4e	64 	d 
	ld e,c			;8c4f	59 	Y 
	ld h,h			;8c50	64 	d 
	ld e,c			;8c51	59 	Y 
	ld h,b			;8c52	60 	` 
	ld e,c			;8c53	59 	Y 
	ld h,b			;8c54	60 	` 
	nop			;8c55	00 	. 
	ld b,06dh		;8c56	06 6d 	. m 
	nop			;8c58	00 	. 
	nop			;8c59	00 	. 
	ld b,06eh		;8c5a	06 6e 	. n 
	nop			;8c5c	00 	. 
	ld l,a			;8c5d	6f 	o 
	nop			;8c5e	00 	. 
	ld l,l			;8c5f	6d 	m 
	ld (bc),a			;8c60	02 	. 
	ld (hl),b			;8c61	70 	p 
	nop			;8c62	00 	. 
	ld l,(hl)			;8c63	6e 	n 
	ld (bc),a			;8c64	02 	. 
	nop			;8c65	00 	. 
	ld b,071h		;8c66	06 71 	. q 
	nop			;8c68	00 	. 
	nop			;8c69	00 	. 
	ld b,071h		;8c6a	06 71 	. q 
	nop			;8c6c	00 	. 
	ld (hl),d			;8c6d	72 	r 
	nop			;8c6e	00 	. 
	ld (hl),c			;8c6f	71 	q 
	ld (bc),a			;8c70	02 	. 
	ld (hl),d			;8c71	72 	r 
	nop			;8c72	00 	. 
	ld (hl),c			;8c73	71 	q 
	ld (bc),a			;8c74	02 	. 
	nop			;8c75	00 	. 
	ld b,071h		;8c76	06 71 	. q 
	nop			;8c78	00 	. 
	nop			;8c79	00 	. 
	ld b,06eh		;8c7a	06 6e 	. n 
	inc b			;8c7c	04 	. 
	ld (hl),d			;8c7d	72 	r 
	nop			;8c7e	00 	. 
	ld (hl),c			;8c7f	71 	q 
	ld (bc),a			;8c80	02 	. 
	ld (hl),b			;8c81	70 	p 
	inc b			;8c82	04 	. 
	ld l,(hl)			;8c83	6e 	n 
	ld b,000h		;8c84	06 00 	. . 
	ld b,000h		;8c86	06 00 	. . 
	ld b,073h		;8c88	06 73 	. s 
	add a,b			;8c8a	80 	. 
	ld (hl),e			;8c8b	73 	s 
	add a,b			;8c8c	80 	. 
l8c8dh:
	nop			;8c8d	00 	. 
	ld b,06dh		;8c8e	06 6d 	. m 
	inc b			;8c90	04 	. 
l8c91h:
	ld (hl),e			;8c91	73 	s 
	add a,b			;8c92	80 	. 
l8c93h:
	ld (hl),e			;8c93	73 	s 
	add a,b			;8c94	80 	. 
	ld l,a			;8c95	6f 	o 
	inc b			;8c96	04 	. 
	ld l,l			;8c97	6d 	m 
	ld b,073h		;8c98	06 73 	. s 
	add a,b			;8c9a	80 	. 
	ld (hl),e			;8c9b	73 	s 
	add a,b			;8c9c	80 	. 
	nop			;8c9d	00 	. 
	ld b,000h		;8c9e	06 00 	. . 
	ld b,000h		;8ca0	06 00 	. . 
	ld b,074h		;8ca2	06 74 	. t 
	nop			;8ca4	00 	. 
	ld (hl),l			;8ca5	75 	u 
	nop			;8ca6	00 	. 
	halt			;8ca7	76 	v 
	nop			;8ca8	00 	. 
	ld (hl),a			;8ca9	77 	w 
	nop			;8caa	00 	. 
	ld a,b			;8cab	78 	x 
	nop			;8cac	00 	. 
	halt			;8cad	76 	v 
	ld (bc),a			;8cae	02 	. 
	ld (hl),l			;8caf	75 	u 
	ld (bc),a			;8cb0	02 	. 
	ld a,b			;8cb1	78 	x 
	ld (bc),a			;8cb2	02 	. 
	ld (hl),a			;8cb3	77 	w 
	ld (bc),a			;8cb4	02 	. 
	nop			;8cb5	00 	. 
	ld b,000h		;8cb6	06 00 	. . 
	ld b,074h		;8cb8	06 74 	. t 
	ld (bc),a			;8cba	02 	. 
	nop			;8cbb	00 	. 
	ld b,000h		;8cbc	06 00 	. . 
l8cbeh:
	ld b,079h		;8cbe	06 79 	. y 
	nop			;8cc0	00 	. 
	nop			;8cc1	00 	. 
	ld b,07ah		;8cc2	06 7a 	. z 
	nop			;8cc4	00 	. 
	ld a,e			;8cc5	7b 	{ 
	nop			;8cc6	00 	. 
	ld a,h			;8cc7	7c 	| 
	nop			;8cc8	00 	. 
	ld a,l			;8cc9	7d 	} 
	nop			;8cca	00 	. 
	ld a,(hl)			;8ccb	7e 	~ 
	nop			;8ccc	00 	. 
	ld a,h			;8ccd	7c 	| 
	ld (bc),a			;8cce	02 	. 
	ld a,e			;8ccf	7b 	{ 
	ld (bc),a			;8cd0	02 	. 
	ld a,(hl)			;8cd1	7e 	~ 
	ld (bc),a			;8cd2	02 	. 
	ld a,l			;8cd3	7d 	} 
	ld (bc),a			;8cd4	02 	. 
	ld a,c			;8cd5	79 	y 
	ld (bc),a			;8cd6	02 	. 
	nop			;8cd7	00 	. 
	ld b,07ah		;8cd8	06 7a 	. z 
	ld (bc),a			;8cda	02 	. 
	nop			;8cdb	00 	. 
	ld b,07fh		;8cdc	06 7f 	.  
	nop			;8cde	00 	. 
	add a,b			;8cdf	80 	. 
	nop			;8ce0	00 	. 
	add a,c			;8ce1	81 	. 
	nop			;8ce2	00 	. 
	add a,d			;8ce3	82 	. 
	nop			;8ce4	00 	. 
	add a,e			;8ce5	83 	. 
	nop			;8ce6	00 	. 
	ld a,a			;8ce7	7f 	 
	ld (bc),a			;8ce8	02 	. 
	add a,d			;8ce9	82 	. 
	ld (bc),a			;8cea	02 	. 
	add a,c			;8ceb	81 	. 
	ld (bc),a			;8cec	02 	. 
	add a,h			;8ced	84 	. 
	nop			;8cee	00 	. 
	add a,l			;8cef	85 	. 
	nop			;8cf0	00 	. 
	add a,(hl)			;8cf1	86 	. 
	nop			;8cf2	00 	. 
	add a,a			;8cf3	87 	. 
	nop			;8cf4	00 	. 
	add a,l			;8cf5	85 	. 
	ld (bc),a			;8cf6	02 	. 
	add a,h			;8cf7	84 	. 
	ld (bc),a			;8cf8	02 	. 
l8cf9h:
	add a,a			;8cf9	87 	. 
	ld (bc),a			;8cfa	02 	. 
	add a,(hl)			;8cfb	86 	. 
	ld (bc),a			;8cfc	02 	. 
	adc a,b			;8cfd	88 	. 
	nop			;8cfe	00 	. 
	adc a,c			;8cff	89 	. 
	nop			;8d00	00 	. 
	adc a,d			;8d01	8a 	. 
	add a,b			;8d02	80 	. 
	adc a,d			;8d03	8a 	. 
	add a,b			;8d04	80 	. 
	adc a,c			;8d05	89 	. 
	ld (bc),a			;8d06	02 	. 
	adc a,b			;8d07	88 	. 
	ld (bc),a			;8d08	02 	. 
	adc a,d			;8d09	8a 	. 
	add a,b			;8d0a	80 	. 
	adc a,d			;8d0b	8a 	. 
	add a,b			;8d0c	80 	. 
	nop			;8d0d	00 	. 
	ld b,000h		;8d0e	06 00 	. . 
	ld b,073h		;8d10	06 73 	. s 
	add a,b			;8d12	80 	. 
	adc a,d			;8d13	8a 	. 
	add a,b			;8d14	80 	. 
	nop			;8d15	00 	. 
	ld b,073h		;8d16	06 73 	. s 
	add a,b			;8d18	80 	. 
	ld (hl),e			;8d19	73 	s 
	add a,b			;8d1a	80 	. 
	adc a,e			;8d1b	8b 	. 
	add a,b			;8d1c	80 	. 
	adc a,d			;8d1d	8a 	. 
	add a,b			;8d1e	80 	. 
	adc a,d			;8d1f	8a 	. 
	add a,b			;8d20	80 	. 
	adc a,e			;8d21	8b 	. 
	add a,b			;8d22	80 	. 
	adc a,e			;8d23	8b 	. 
	add a,b			;8d24	80 	. 
	nop			;8d25	00 	. 
	ld b,000h		;8d26	06 00 	. . 
	ld b,08ah		;8d28	06 8a 	. . 
	add a,b			;8d2a	80 	. 
	ld (hl),e			;8d2b	73 	s 
	add a,b			;8d2c	80 	. 
	ld (hl),e			;8d2d	73 	s 
	add a,b			;8d2e	80 	. 
	nop			;8d2f	00 	. 
	ld b,08bh		;8d30	06 8b 	. . 
	add a,b			;8d32	80 	. 
	ld (hl),e			;8d33	73 	s 
	add a,b			;8d34	80 	. 
	ld de,0b400h		;8d35	11 00 b4 	. . . 
	ex af,af'			;8d38	08 	. 
	dec bc			;8d39	0b 	. 
	jr z,l8cbeh		;8d3a	28 82 	( . 
	ex af,af'			;8d3c	08 	. 
	inc c			;8d3d	0c 	. 
	jr z,$+54		;8d3e	28 34 	( 4 
	ex af,af'			;8d40	08 	. 
	inc de			;8d41	13 	. 
	jr z,l8d6fh		;8d42	28 2b 	( + 
	ex af,af'			;8d44	08 	. 
	ld a,(bc)			;8d45	0a 	. 
	jr z,l8dc3h		;8d46	28 7b 	( { 
	ex af,af'			;8d48	08 	. 
	inc de			;8d49	13 	. 
	jr z,l8cf9h		;8d4a	28 ad 	( . 
	ex af,af'			;8d4c	08 	. 
	rrca			;8d4d	0f 	. 
	jr z,l8d81h		;8d4e	28 31 	( 1 
	ex af,af'			;8d50	08 	. 
	inc c			;8d51	0c 	. 
	jr z,l8dcbh		;8d52	28 77 	( w 
	ex af,af'			;8d54	08 	. 
	inc c			;8d55	0c 	. 
	jr z,l8d6fh		;8d56	28 17 	( . 
	jr nz,l8d5ah		;8d58	20 00 	  . 
l8d5ah:
	nop			;8d5a	00 	. 
	inc e			;8d5b	1c 	. 
	nop			;8d5c	00 	. 
	ld (bc),a			;8d5d	02 	. 
	ex af,af'			;8d5e	08 	. 
	jr nz,l8d6bh		;8d5f	20 0a 	  . 
	dec c			;8d61	0d 	. 
	ld (bc),a			;8d62	02 	. 
	inc bc			;8d63	03 	. 
	ld (00207h),hl		;8d64	22 07 02 	" . . 
	inc de			;8d67	13 	. 
	ld b,00ah		;8d68	06 0a 	. . 
	ld (bc),a			;8d6a	02 	. 
l8d6bh:
	dec h			;8d6b	25 	% 
	ld a,(bc)			;8d6c	0a 	. 
	inc b			;8d6d	04 	. 
	ld a,(de)			;8d6e	1a 	. 
l8d6fh:
	ld b,00ah		;8d6f	06 0a 	. . 
	inc b			;8d71	04 	. 
	ld a,(de)			;8d72	1a 	. 
	djnz l8d7fh		;8d73	10 0a 	. . 
	dec b			;8d75	05 	. 
	ld a,(de)			;8d76	1a 	. 
	ld (de),a			;8d77	12 	. 
	ld a,(bc)			;8d78	0a 	. 
	inc bc			;8d79	03 	. 
	ld a,(de)			;8d7a	1a 	. 
	add hl,bc			;8d7b	09 	. 
	ld a,(bc)			;8d7c	0a 	. 
	inc b			;8d7d	04 	. 
	ld (de),a			;8d7e	12 	. 
l8d7fh:
	inc bc			;8d7f	03 	. 
	ld (bc),a			;8d80	02 	. 
l8d81h:
	ld b,a			;8d81	47 	G 
	ld b,007h		;8d82	06 07 	. . 
	inc b			;8d84	04 	. 
	ld (bc),a			;8d85	02 	. 
	nop			;8d86	00 	. 
	inc bc			;8d87	03 	. 
	djnz l8d8dh		;8d88	10 03 	. . 
	ld de,01902h		;8d8a	11 02 19 	. . . 
l8d8dh:
	ld d,009h		;8d8d	16 09 	. . 
	ex af,af'			;8d8f	08 	. 
	ld bc,00003h		;8d90	01 03 00 	. . . 
	rlca			;8d93	07 	. 
	ex af,af'			;8d94	08 	. 
	ld a,(bc)			;8d95	0a 	. 
	ld a,(bc)			;8d96	0a 	. 
	rla			;8d97	17 	. 
	ex af,af'			;8d98	08 	. 
	ld hl,(0460ah)		;8d99	2a 0a 46 	* . F 
	ex af,af'			;8d9c	08 	. 
	ld a,00ah		;8d9d	3e 0a 	> . 
	rlca			;8d9f	07 	. 
	ld (bc),a			;8da0	02 	. 
	inc bc			;8da1	03 	. 
	ld a,(bc)			;8da2	0a 	. 
	ld hl,(00808h)		;8da3	2a 08 08 	* . . 
	ld a,(bc)			;8da6	0a 	. 
	inc de			;8da7	13 	. 
	ld (bc),a			;8da8	02 	. 
	inc c			;8da9	0c 	. 
	ld a,(bc)			;8daa	0a 	. 
	jr nz,$+10		;8dab	20 08 	  . 
	dec de			;8dad	1b 	. 
	ld a,(bc)			;8dae	0a 	. 
	rla			;8daf	17 	. 
	ex af,af'			;8db0	08 	. 
	dec b			;8db1	05 	. 
	add hl,bc			;8db2	09 	. 
	dec bc			;8db3	0b 	. 
	ld bc,00505h		;8db4	01 05 05 	. . . 
	inc de			;8db7	13 	. 
	inc b			;8db8	04 	. 
	inc bc			;8db9	03 	. 
	inc d			;8dba	14 	. 
	ex af,af'			;8dbb	08 	. 
	djnz l8dc2h		;8dbc	10 04 	. . 
	nop			;8dbe	00 	. 
	ld b,012h		;8dbf	06 12 	. . 
	inc bc			;8dc1	03 	. 
l8dc2h:
	ld (bc),a			;8dc2	02 	. 
l8dc3h:
	add hl,bc			;8dc3	09 	. 
	ld a,(bc)			;8dc4	0a 	. 
	ld b,002h		;8dc5	06 02 	. . 
	dec d			;8dc7	15 	. 
	ld b,00ah		;8dc8	06 0a 	. . 
	inc b			;8dca	04 	. 
l8dcbh:
	ld bc,00105h		;8dcb	01 05 01 	. . . 
	ld bc,00003h		;8dce	01 03 00 	. . . 
	inc bc			;8dd1	03 	. 
	ex af,af'			;8dd2	08 	. 
	ld (00c0ah),hl		;8dd3	22 0a 0c 	" . . 
	ex af,af'			;8dd6	08 	. 
	dec de			;8dd7	1b 	. 
	add hl,bc			;8dd8	09 	. 
	dec h			;8dd9	25 	% 
	ex af,af'			;8dda	08 	. 
	dec hl			;8ddb	2b 	+ 
	ld a,(bc)			;8ddc	0a 	. 
	rlca			;8ddd	07 	. 
	ld (bc),a			;8dde	02 	. 
	rlca			;8ddf	07 	. 
	ld b,00bh		;8de0	06 0b 	. . 
	inc b			;8de2	04 	. 
	dec b			;8de3	05 	. 
	nop			;8de4	00 	. 
	ld bc,03d02h		;8de5	01 02 3d 	. . = 
	ld a,(bc)			;8de8	0a 	. 
	ld b,b			;8de9	40 	@ 
	ex af,af'			;8dea	08 	. 
	dec h			;8deb	25 	% 
	ld a,(bc)			;8dec	0a 	. 
	add hl,bc			;8ded	09 	. 
	jr l8e08h		;8dee	18 18 	. . 
	ex af,af'			;8df0	08 	. 
	add hl,bc			;8df1	09 	. 
	ld a,(bc)			;8df2	0a 	. 
	inc c			;8df3	0c 	. 
	ld a,(de)			;8df4	1a 	. 
	ld bc,0050ah		;8df5	01 0a 05 	. . . 
	ld (bc),a			;8df8	02 	. 
	ld (hl),006h		;8df9	36 06 	6 . 
	ex af,af'			;8dfb	08 	. 
	ld (bc),a			;8dfc	02 	. 
	cpl			;8dfd	2f 	/ 
	ld a,(bc)			;8dfe	0a 	. 
	ld c,l			;8dff	4d 	M 
	ex af,af'			;8e00	08 	. 
	ex af,af'			;8e01	08 	. 
	add hl,bc			;8e02	09 	. 
	inc c			;8e03	0c 	. 
	ex af,af'			;8e04	08 	. 
	inc hl			;8e05	23 	# 
	ld a,(bc)			;8e06	0a 	. 
	add hl,bc			;8e07	09 	. 
l8e08h:
	ld a,(de)			;8e08	1a 	. 
	ld de,0090ah		;8e09	11 0a 09 	. . . 
	ld a,(de)			;8e0c	1a 	. 
	djnz $+12		;8e0d	10 0a 	. . 
	ld a,(bc)			;8e0f	0a 	. 
	ld a,(de)			;8e10	1a 	. 
	daa			;8e11	27 	' 
	ld a,(bc)			;8e12	0a 	. 
	rlca			;8e13	07 	. 
	ld (bc),a			;8e14	02 	. 
	inc hl			;8e15	23 	# 
	ld b,007h		;8e16	06 07 	. . 
	ld d,005h		;8e18	16 05 	. . 
	djnz l8e3ah		;8e1a	10 1e 	. . 
	ex af,af'			;8e1c	08 	. 
	ld a,(de)			;8e1d	1a 	. 
	add hl,bc			;8e1e	09 	. 
	dec bc			;8e1f	0b 	. 
	ex af,af'			;8e20	08 	. 
	ld c,d			;8e21	4a 	J 
	ld a,(bc)			;8e22	0a 	. 
	ld a,(de)			;8e23	1a 	. 
	ld (bc),a			;8e24	02 	. 
	dec bc			;8e25	0b 	. 
	nop			;8e26	00 	. 
	rrca			;8e27	0f 	. 
	ld bc,00008h		;8e28	01 08 00 	. . . 
	ex af,af'			;8e2b	08 	. 
	ld (bc),a			;8e2c	02 	. 
	inc d			;8e2d	14 	. 
	ld b,008h		;8e2e	06 08 	. . 
	ld (bc),a			;8e30	02 	. 
	dec b			;8e31	05 	. 
	nop			;8e32	00 	. 
	jr l8e3dh		;8e33	18 08 	. . 
	ld bc,01100h		;8e35	01 00 11 	. . . 
	ld (bc),a			;8e38	02 	. 
	nop			;8e39	00 	. 
l8e3ah:
	nop			;8e3a	00 	. 
	ld d,000h		;8e3b	16 00 	. . 
l8e3dh:
	inc h			;8e3d	24 	$ 
	ex af,af'			;8e3e	08 	. 
	inc d			;8e3f	14 	. 
	jr z,l8e57h		;8e40	28 15 	( . 
	ex af,af'			;8e42	08 	. 
	dec c			;8e43	0d 	. 
	jr z,l8e4bh		;8e44	28 05 	( . 
	ex af,af'			;8e46	08 	. 
	dec d			;8e47	15 	. 
	nop			;8e48	00 	. 
	djnz $+10		;8e49	10 08 	. . 
l8e4bh:
	inc b			;8e4b	04 	. 
	nop			;8e4c	00 	. 
	djnz $+6		;8e4d	10 04 	. . 
	ld c,024h		;8e4f	0e 24 	. $ 
	ld bc,00925h		;8e51	01 25 09 	. % . 
	dec b			;8e54	05 	. 
	inc b			;8e55	04 	. 
	inc b			;8e56	04 	. 
l8e57h:
	inc bc			;8e57	03 	. 
	nop			;8e58	00 	. 
	dec b			;8e59	05 	. 
	djnz l8e61h		;8e5a	10 05 	. . 
	inc d			;8e5c	14 	. 
	dec b			;8e5d	05 	. 
	inc b			;8e5e	04 	. 
	inc d			;8e5f	14 	. 
	inc h			;8e60	24 	$ 
l8e61h:
	inc de			;8e61	13 	. 
	inc b			;8e62	04 	. 
	ld bc,00305h		;8e63	01 05 03 	. . . 
	ld bc,00901h		;8e66	01 01 09 	. . . 
	rlca			;8e69	07 	. 
	ex af,af'			;8e6a	08 	. 
	dec bc			;8e6b	0b 	. 
	jr z,l8e80h		;8e6c	28 12 	( . 
	ex af,af'			;8e6e	08 	. 
	dec b			;8e6f	05 	. 
	nop			;8e70	00 	. 
	inc bc			;8e71	03 	. 
	inc b			;8e72	04 	. 
	ld b,000h		;8e73	06 00 	. . 
	ld (01308h),hl		;8e75	22 08 13 	" . . 
	jr z,l8e82h		;8e78	28 08 	( . 
	ex af,af'			;8e7a	08 	. 
	dec bc			;8e7b	0b 	. 
	jr l8e87h		;8e7c	18 09 	. . 
	ex af,af'			;8e7e	08 	. 
	rrca			;8e7f	0f 	. 
l8e80h:
	jr z,l8e88h		;8e80	28 06 	( . 
l8e82h:
	ex af,af'			;8e82	08 	. 
	ld a,(bc)			;8e83	0a 	. 
	jr l8e87h		;8e84	18 01 	. . 
	ex af,af'			;8e86	08 	. 
l8e87h:
	dec b			;8e87	05 	. 
l8e88h:
	nop			;8e88	00 	. 
	ex af,af'			;8e89	08 	. 
	inc b			;8e8a	04 	. 
	inc bc			;8e8b	03 	. 
	inc h			;8e8c	24 	$ 
	ld bc,00425h		;8e8d	01 25 04 	. % . 
	ld hl,02901h		;8e90	21 01 29 	! . ) 
	add hl,bc			;8e93	09 	. 
	jr z,l8eaeh		;8e94	28 18 	( . 
	ex af,af'			;8e96	08 	. 
	ld de,00428h		;8e97	11 28 04 	. ( . 
	ex af,af'			;8e9a	08 	. 
	inc d			;8e9b	14 	. 
	jr z,l8ea8h		;8e9c	28 0a 	( . 
	ex af,af'			;8e9e	08 	. 
	ld bc,00200h		;8e9f	01 00 02 	. . . 
	ex af,af'			;8ea2	08 	. 
	ld bc,00300h		;8ea3	01 00 03 	. . . 
	ex af,af'			;8ea6	08 	. 
	rlca			;8ea7	07 	. 
l8ea8h:
	nop			;8ea8	00 	. 
	ld b,020h		;8ea9	06 20 	.   
	rlca			;8eab	07 	. 
	jr nc,l8eb2h		;8eac	30 04 	0 . 
l8eaeh:
	djnz l8eb8h		;8eae	10 08 	. . 
	nop			;8eb0	00 	. 
	rlca			;8eb1	07 	. 
l8eb2h:
	inc b			;8eb2	04 	. 
	dec b			;8eb3	05 	. 
	dec b			;8eb4	05 	. 
	ld de,00225h		;8eb5	11 25 02 	. % . 
l8eb8h:
	ld bc,00004h		;8eb8	01 04 00 	. . . 
	ld bc,01521h		;8ebb	01 21 15 	. ! . 
	dec h			;8ebe	25 	% 
	dec b			;8ebf	05 	. 
	dec b			;8ec0	05 	. 
	ld a,(bc)			;8ec1	0a 	. 
	dec d			;8ec2	15 	. 
	ld c,005h		;8ec3	0e 05 	. . 
	dec h			;8ec5	25 	% 
	dec h			;8ec6	25 	% 
	rrca			;8ec7	0f 	. 
	dec b			;8ec8	05 	. 
	ld bc,00425h		;8ec9	01 25 04 	. % . 
	ld hl,02512h		;8ecc	21 12 25 	! . % 
	ld bc,00205h		;8ecf	01 05 02 	. . . 
	ld bc,0000fh		;8ed2	01 0f 00 	. . . 
	ld a,(bc)			;8ed5	0a 	. 
	djnz l8edeh		;8ed6	10 06 	. . 
	nop			;8ed8	00 	. 
	ld bc,00620h		;8ed9	01 20 06 	.   . 
	inc h			;8edc	24 	$ 
	add hl,de			;8edd	19 	. 
l8edeh:
	dec h			;8ede	25 	% 
	ld a,(bc)			;8edf	0a 	. 
	dec b			;8ee0	05 	. 
	dec b			;8ee1	05 	. 
	ld bc,00804h		;8ee2	01 04 08 	. . . 
	add hl,de			;8ee5	19 	. 
	jr z,$+65		;8ee6	28 3f 	( ? 
	ex af,af'			;8ee8	08 	. 
	ex af,af'			;8ee9	08 	. 
	jr $+34		;8eea	18 20 	.   
	ex af,af'			;8eec	08 	. 
	ld a,(de)			;8eed	1a 	. 
	nop			;8eee	00 	. 
	ld b,008h		;8eef	06 08 	. . 
	dec c			;8ef1	0d 	. 
	nop			;8ef2	00 	. 
	ld c,020h		;8ef3	0e 20 	.   
	rlca			;8ef5	07 	. 
	nop			;8ef6	00 	. 
	dec c			;8ef7	0d 	. 
	djnz l8f05h		;8ef8	10 0b 	. . 
	nop			;8efa	00 	. 
	ld (bc),a			;8efb	02 	. 
	ex af,af'			;8efc	08 	. 
	ld (02f28h),a		;8efd	32 28 2f 	2 ( / 
l8f00h:
	ex af,af'			;8f00	08 	. 
	dec b			;8f01	05 	. 
	nop			;8f02	00 	. 
l8f03h:
	ex af,af'			;8f03	08 	. 
	inc b			;8f04	04 	. 
l8f05h:
	ld (bc),a			;8f05	02 	. 
	dec b			;8f06	05 	. 
	ld bc,00925h		;8f07	01 25 09 	. % . 
	ld hl,02901h		;8f0a	21 01 29 	! . ) 
	inc bc			;8f0d	03 	. 
	jr z,$+20		;8f0e	28 12 	( . 
	ex af,af'			;8f10	08 	. 
	ld (bc),a			;8f11	02 	. 
	nop			;8f12	00 	. 
	ld (bc),a			;8f13	02 	. 
	ld hl,0250fh		;8f14	21 0f 25 	! . % 
	ld bc,00505h		;8f17	01 05 05 	. . . 
	inc b			;8f1a	04 	. 
	inc bc			;8f1b	03 	. 
	nop			;8f1c	00 	. 
	inc c			;8f1d	0c 	. 
	djnz l8f2ch		;8f1e	10 0c 	. . 
	nop			;8f20	00 	. 
	djnz l8f43h		;8f21	10 20 	.   
	ld b,000h		;8f23	06 00 	. . 
	ld a,(bc)			;8f25	0a 	. 
	djnz $+11		;8f26	10 09 	. . 
	nop			;8f28	00 	. 
	dec b			;8f29	05 	. 
	jr nz,l8f3bh		;8f2a	20 0f 	  . 
l8f2ch:
	inc h			;8f2c	24 	$ 
	inc b			;8f2d	04 	. 
	dec h			;8f2e	25 	% 
	ld (bc),a			;8f2f	02 	. 
	jr nz,l8f34h		;8f30	20 02 	  . 
	nop			;8f32	00 	. 
	inc e			;8f33	1c 	. 
l8f34h:
	ex af,af'			;8f34	08 	. 
	ld b,000h		;8f35	06 00 	. . 
	ld (bc),a			;8f37	02 	. 
	inc b			;8f38	04 	. 
	dec bc			;8f39	0b 	. 
	inc h			;8f3a	24 	$ 
l8f3bh:
	add hl,bc			;8f3b	09 	. 
	dec h			;8f3c	25 	% 
	ld bc,00720h		;8f3d	01 20 07 	.   . 
	nop			;8f40	00 	. 
	dec bc			;8f41	0b 	. 
	inc b			;8f42	04 	. 
l8f43h:
	ld a,(de)			;8f43	1a 	. 
	nop			;8f44	00 	. 
	ld bc,01b08h		;8f45	01 08 1b 	. . . 
	jr z,l8f4bh		;8f48	28 01 	( . 
	add hl,hl			;8f4a	29 	) 
l8f4bh:
	inc b			;8f4b	04 	. 
	add hl,bc			;8f4c	09 	. 
	inc b			;8f4d	04 	. 
	add hl,de			;8f4e	19 	. 
	inc b			;8f4f	04 	. 
	jr l8f56h		;8f50	18 04 	. . 
	djnz $+18		;8f52	10 10 	. . 
	nop			;8f54	00 	. 
	rrca			;8f55	0f 	. 
l8f56h:
	jr nz,l8f5ah		;8f56	20 02 	  . 
	inc h			;8f58	24 	$ 
	inc b			;8f59	04 	. 
l8f5ah:
	jr nz,l8f60h		;8f5a	20 04 	  . 
	nop			;8f5c	00 	. 
	add hl,bc			;8f5d	09 	. 
	jr nz,l8f6eh		;8f5e	20 0e 	  . 
l8f60h:
	inc h			;8f60	24 	$ 
	dec b			;8f61	05 	. 
	inc b			;8f62	04 	. 
	djnz l8f65h		;8f63	10 00 	. . 
l8f65h:
	rlca			;8f65	07 	. 
	ex af,af'			;8f66	08 	. 
	dec d			;8f67	15 	. 
	jr z,l8f6ah		;8f68	28 00 	( . 
l8f6ah:
	nop			;8f6a	00 	. 
	ld (de),a			;8f6b	12 	. 
	nop			;8f6c	00 	. 
	dec b			;8f6d	05 	. 
l8f6eh:
	ld a,(bc)			;8f6e	0a 	. 
	ld (bc),a			;8f6f	02 	. 
	ld hl,(00a1ch)		;8f70	2a 1c 0a 	* . . 
	ld bc,00202h		;8f73	01 02 02 	. . . 
	ld hl,(00a07h)		;8f76	2a 07 0a 	* . . 
	ld (bc),a			;8f79	02 	. 
	ld hl,(00a05h)		;8f7a	2a 05 0a 	* . . 
	inc bc			;8f7d	03 	. 
	ld hl,(00a31h)		;8f7e	2a 31 0a 	* 1 . 
	ld (bc),a			;8f81	02 	. 
	ld hl,(00a07h)		;8f82	2a 07 0a 	* . . 
	ld bc,0382ah		;8f85	01 2a 38 	. * 8 
	ld a,(bc)			;8f88	0a 	. 
	inc bc			;8f89	03 	. 
	ld hl,(00a0dh)		;8f8a	2a 0d 0a 	* . . 
	inc bc			;8f8d	03 	. 
	ld hl,(00a06h)		;8f8e	2a 06 0a 	* . . 
	ld (bc),a			;8f91	02 	. 
	ld hl,(00a06h)		;8f92	2a 06 0a 	* . . 
	ld (bc),a			;8f95	02 	. 
	ld hl,(00a11h)		;8f96	2a 11 0a 	* . . 
	ld (bc),a			;8f99	02 	. 
	ld a,(de)			;8f9a	1a 	. 
	inc de			;8f9b	13 	. 
sub_8f9ch:
	ld a,(bc)			;8f9c	0a 	. 
	ld (bc),a			;8f9d	02 	. 
	ld hl,(00a06h)		;8f9e	2a 06 0a 	* . . 
	inc bc			;8fa1	03 	. 
	ld hl,(00a05h)		;8fa2	2a 05 0a 	* . . 
	inc bc			;8fa5	03 	. 
	ld hl,(00a17h)		;8fa6	2a 17 0a 	* . . 
	ld (bc),a			;8fa9	02 	. 
	ld hl,(00a07h)		;8faa	2a 07 0a 	* . . 
	ld (bc),a			;8fad	02 	. 
	ld hl,(00a06h)		;8fae	2a 06 0a 	* . . 
	ld bc,00502h		;8fb1	01 02 05 	. . . 
	ld (de),a			;8fb4	12 	. 
	inc b			;8fb5	04 	. 
	ld (bc),a			;8fb6	02 	. 
	inc bc			;8fb7	03 	. 
	ld (de),a			;8fb8	12 	. 
	dec d			;8fb9	15 	. 
	ld (bc),a			;8fba	02 	. 
	ex af,af'			;8fbb	08 	. 
	ld b,006h		;8fbc	06 06 	. . 
	nop			;8fbe	00 	. 
	ld (bc),a			;8fbf	02 	. 
	ex af,af'			;8fc0	08 	. 
	inc c			;8fc1	0c 	. 
	ld a,(bc)			;8fc2	0a 	. 
	ex af,af'			;8fc3	08 	. 
	ld (bc),a			;8fc4	02 	. 
	inc b			;8fc5	04 	. 
	ld a,(bc)			;8fc6	0a 	. 
	ld (bc),a			;8fc7	02 	. 
	ld hl,(02801h)		;8fc8	2a 01 28 	* . ( 
	dec b			;8fcb	05 	. 
	ex af,af'			;8fcc	08 	. 
	inc bc			;8fcd	03 	. 
	ld hl,(00a05h)		;8fce	2a 05 0a 	* . . 
	inc b			;8fd1	04 	. 
	ld hl,(00a40h)		;8fd2	2a 40 0a 	* @ . 
	inc bc			;8fd5	03 	. 
	ld hl,(00a06h)		;8fd6	2a 06 0a 	* . . 
	inc bc			;8fd9	03 	. 
	ld hl,(00a45h)		;8fda	2a 45 0a 	* E . 
	dec h			;8fdd	25 	% 
	ld (bc),a			;8fde	02 	. 
	inc e			;8fdf	1c 	. 
	ld a,(bc)			;8fe0	0a 	. 
	ld (bc),a			;8fe1	02 	. 
	ld hl,(00a1bh)		;8fe2	2a 1b 0a 	* . . 
	dec b			;8fe5	05 	. 
	ld hl,(00a0eh)		;8fe6	2a 0e 0a 	* . . 
	ld (bc),a			;8fe9	02 	. 
	ld (bc),a			;8fea	02 	. 
	rlca			;8feb	07 	. 
	ld (00204h),hl		;8fec	22 04 02 	" . . 
	inc b			;8fef	04 	. 
	ld (00202h),hl		;8ff0	22 02 02 	" . . 
	inc b			;8ff3	04 	. 
	ld a,(bc)			;8ff4	0a 	. 
	ld bc,00222h		;8ff5	01 22 02 	. " . 
	ld hl,(00a17h)		;8ff8	2a 17 0a 	* . . 
	inc b			;8ffb	04 	. 
	ld hl,(00a05h)		;8ffc	2a 05 0a 	* . . 
	inc b			;8fff	04 	. 
	ld hl,(00a29h)		;9000	2a 29 0a 	* ) . 
	ld a,(de)			;9003	1a 	. 
	ld (bc),a			;9004	02 	. 
	ld (bc),a			;9005	02 	. 
	ld a,(bc)			;9006	0a 	. 
	inc bc			;9007	03 	. 
	ex af,af'			;9008	08 	. 
	ld (bc),a			;9009	02 	. 
	jr z,l901bh		;900a	28 0f 	( . 
	ex af,af'			;900c	08 	. 
	djnz l900fh		;900d	10 00 	. . 
l900fh:
	inc bc			;900f	03 	. 
	jr nz,l9017h		;9010	20 05 	  . 
	nop			;9012	00 	. 
	dec b			;9013	05 	. 
	jr nz,l901ah		;9014	20 04 	  . 
	nop			;9016	00 	. 
l9017h:
	dec b			;9017	05 	. 
	jr nz,l9022h		;9018	20 08 	  . 
l901ah:
	nop			;901a	00 	. 
l901bh:
	add hl,bc			;901b	09 	. 
	djnz $+10		;901c	10 08 	. . 
	nop			;901e	00 	. 
	dec bc			;901f	0b 	. 
	ex af,af'			;9020	08 	. 
	dec b			;9021	05 	. 
l9022h:
	ld (00005h),hl		;9022	22 05 00 	" . . 
	ld bc,00102h		;9025	01 02 01 	. . . 
	ld (02607h),hl		;9028	22 07 26 	" . & 
	ld a,(bc)			;902b	0a 	. 
	ld b,021h		;902c	06 21 	. ! 
	ld (bc),a			;902e	02 	. 
	rlca			;902f	07 	. 
	ld b,016h		;9030	06 16 	. . 
	ld (bc),a			;9032	02 	. 
	jr nz,$+12		;9033	20 0a 	  . 
	inc b			;9035	04 	. 
	ld hl,(00a05h)		;9036	2a 05 0a 	* . . 
	inc b			;9039	04 	. 
	ld hl,(00a06h)		;903a	2a 06 0a 	* . . 
	inc b			;903d	04 	. 
	ld hl,(00a13h)		;903e	2a 13 0a 	* . . 
	inc bc			;9041	03 	. 
	ld hl,(00a38h)		;9042	2a 38 0a 	* 8 . 
	inc b			;9045	04 	. 
	ld hl,(00a08h)		;9046	2a 08 0a 	* . . 
	ld bc,0082ah		;9049	01 2a 08 	. * . 
	ld a,(bc)			;904c	0a 	. 
	dec b			;904d	05 	. 
	ld hl,(00a1bh)		;904e	2a 1b 0a 	* . . 
	inc b			;9051	04 	. 
	ld hl,(00a11h)		;9052	2a 11 0a 	* . . 
	dec b			;9055	05 	. 
	ld hl,(00a07h)		;9056	2a 07 0a 	* . . 
	inc b			;9059	04 	. 
	ld hl,(00a02h)		;905a	2a 02 0a 	* . . 
	inc de			;905d	13 	. 
	ld (bc),a			;905e	02 	. 
	inc b			;905f	04 	. 
	ld (02a01h),hl		;9060	22 01 2a 	" . * 
	rlca			;9063	07 	. 
	ld a,(bc)			;9064	0a 	. 
	inc b			;9065	04 	. 
	ld hl,(00a14h)		;9066	2a 14 0a 	* . . 
	ld (de),a			;9069	12 	. 
	ld (bc),a			;906a	02 	. 
	ld b,006h		;906b	06 06 	. . 
	ld b,002h		;906d	06 02 	. . 
	ld c,00ah		;906f	0e 0a 	. . 
	dec c			;9071	0d 	. 
	ld (bc),a			;9072	02 	. 
	inc de			;9073	13 	. 
	ld a,(bc)			;9074	0a 	. 
	inc bc			;9075	03 	. 
	ld hl,(00a06h)		;9076	2a 06 0a 	* . . 
	inc bc			;9079	03 	. 
	ld hl,(00a07h)		;907a	2a 07 0a 	* . . 
	inc bc			;907d	03 	. 
	ld hl,(00a07h)		;907e	2a 07 0a 	* . . 
	ld (bc),a			;9081	02 	. 
	ld hl,(00a0dh)		;9082	2a 0d 0a 	* . . 
	inc b			;9085	04 	. 
	ld hl,(00a20h)		;9086	2a 20 0a 	*   . 
	ld (bc),a			;9089	02 	. 
	ld hl,(00008h)		;908a	2a 08 00 	* . . 
	nop			;908d	00 	. 
	inc b			;908e	04 	. 
	add hl,hl			;908f	29 	) 
	add a,e			;9090	83 	. 
	ld hl,(02c2bh)		;9091	2a 2b 2c 	* + , 
	ld (de),a			;9094	12 	. 
	dec l			;9095	2d 	- 
	add a,e			;9096	83 	. 
	inc l			;9097	2c 	, 
	dec hl			;9098	2b 	+ 
	ld hl,(02907h)		;9099	2a 07 29 	* . ) 
	add a,d			;909c	82 	. 
	ld l,02fh		;909d	2e 2f 	. / 
	ld d,02dh		;909f	16 2d 	. - 
	add a,d			;90a1	82 	. 
	cpl			;90a2	2f 	/ 
	ld l,005h		;90a3	2e 05 	. . 
	add hl,hl			;90a5	29 	) 
	add a,d			;90a6	82 	. 
	jr nc,$+51		;90a7	30 31 	0 1 
	jr l90d8h		;90a9	18 2d 	. - 
	add a,d			;90ab	82 	. 
	ld sp,00330h		;90ac	31 30 03 	1 0 . 
	add hl,hl			;90af	29 	) 
	add a,e			;90b0	83 	. 
	ld (03433h),a		;90b1	32 33 34 	2 3 4 
	jr l90ebh		;90b4	18 35 	. 5 
	rst 30h			;90b6	f7 	. 
	inc (hl)			;90b7	34 	4 
	inc sp			;90b8	33 	3 
	ld (02929h),a		;90b9	32 29 29 	2 ) ) 
	ld (hl),034h		;90bc	36 34 	6 4 
	inc (hl)			;90be	34 	4 
	scf			;90bf	37 	7 
	dec l			;90c0	2d 	- 
	scf			;90c1	37 	7 
	dec l			;90c2	2d 	- 
	scf			;90c3	37 	7 
	dec l			;90c4	2d 	- 
	scf			;90c5	37 	7 
	dec l			;90c6	2d 	- 
	scf			;90c7	37 	7 
	dec l			;90c8	2d 	- 
	scf			;90c9	37 	7 
	dec l			;90ca	2d 	- 
	scf			;90cb	37 	7 
	dec l			;90cc	2d 	- 
	scf			;90cd	37 	7 
	dec l			;90ce	2d 	- 
	scf			;90cf	37 	7 
	dec l			;90d0	2d 	- 
	scf			;90d1	37 	7 
	dec l			;90d2	2d 	- 
	scf			;90d3	37 	7 
	dec l			;90d4	2d 	- 
	scf			;90d5	37 	7 
	dec l			;90d6	2d 	- 
	inc (hl)			;90d7	34 	4 
l90d8h:
	inc (hl)			;90d8	34 	4 
	ld (hl),029h		;90d9	36 29 	6 ) 
	add hl,hl			;90db	29 	) 
	ld (hl),034h		;90dc	36 34 	6 4 
	jr c,$+59		;90de	38 39 	8 9 
	dec l			;90e0	2d 	- 
	add hl,sp			;90e1	39 	9 
	dec l			;90e2	2d 	- 
	add hl,sp			;90e3	39 	9 
	dec l			;90e4	2d 	- 
	add hl,sp			;90e5	39 	9 
	dec l			;90e6	2d 	- 
	add hl,sp			;90e7	39 	9 
	dec l			;90e8	2d 	- 
	add hl,sp			;90e9	39 	9 
	dec l			;90ea	2d 	- 
l90ebh:
	add hl,sp			;90eb	39 	9 
	dec l			;90ec	2d 	- 
	add hl,sp			;90ed	39 	9 
	dec l			;90ee	2d 	- 
	add hl,sp			;90ef	39 	9 
	dec l			;90f0	2d 	- 
	add hl,sp			;90f1	39 	9 
	dec l			;90f2	2d 	- 
	add hl,sp			;90f3	39 	9 
	dec l			;90f4	2d 	- 
	add hl,sp			;90f5	39 	9 
	dec l			;90f6	2d 	- 
	jr c,l912dh		;90f7	38 34 	8 4 
	ld (hl),029h		;90f9	36 29 	6 ) 
	add hl,hl			;90fb	29 	) 
	ld (hl),034h		;90fc	36 34 	6 4 
	ld a,(02d37h)		;90fe	3a 37 2d 	: 7 - 
	scf			;9101	37 	7 
	dec l			;9102	2d 	- 
	scf			;9103	37 	7 
	dec l			;9104	2d 	- 
	scf			;9105	37 	7 
	dec l			;9106	2d 	- 
	scf			;9107	37 	7 
	dec l			;9108	2d 	- 
	scf			;9109	37 	7 
	dec l			;910a	2d 	- 
	scf			;910b	37 	7 
	dec l			;910c	2d 	- 
	scf			;910d	37 	7 
	dec l			;910e	2d 	- 
	scf			;910f	37 	7 
	dec l			;9110	2d 	- 
	scf			;9111	37 	7 
	dec l			;9112	2d 	- 
	scf			;9113	37 	7 
	dec l			;9114	2d 	- 
	scf			;9115	37 	7 
	dec l			;9116	2d 	- 
	ld a,(03634h)		;9117	3a 34 36 	: 4 6 
	add hl,hl			;911a	29 	) 
	add hl,hl			;911b	29 	) 
	ld (hl),034h		;911c	36 34 	6 4 
	dec sp			;911e	3b 	; 
	add hl,sp			;911f	39 	9 
	dec l			;9120	2d 	- 
	add hl,sp			;9121	39 	9 
	dec l			;9122	2d 	- 
	add hl,sp			;9123	39 	9 
	dec l			;9124	2d 	- 
	add hl,sp			;9125	39 	9 
	dec l			;9126	2d 	- 
	add hl,sp			;9127	39 	9 
	dec l			;9128	2d 	- 
	add hl,sp			;9129	39 	9 
	dec l			;912a	2d 	- 
	add hl,sp			;912b	39 	9 
	dec l			;912c	2d 	- 
l912dh:
	add hl,sp			;912d	39 	9 
	sub a			;912e	97 	. 
	dec l			;912f	2d 	- 
	add hl,sp			;9130	39 	9 
	dec l			;9131	2d 	- 
	add hl,sp			;9132	39 	9 
	dec l			;9133	2d 	- 
	add hl,sp			;9134	39 	9 
	dec l			;9135	2d 	- 
	add hl,sp			;9136	39 	9 
	dec l			;9137	2d 	- 
	dec sp			;9138	3b 	; 
	inc (hl)			;9139	34 	4 
	ld (hl),029h		;913a	36 29 	6 ) 
	add hl,hl			;913c	29 	) 
	ld (hl),03ch		;913d	36 3c 	6 < 
	dec a			;913f	3d 	= 
	ld a,02dh		;9140	3e 2d 	> - 
	ld a,02dh		;9142	3e 2d 	> - 
	ld a,03fh		;9144	3e 3f 	> ? 
	inc c			;9146	0c 	. 
	ld b,b			;9147	40 	@ 
	sub h			;9148	94 	. 
	ccf			;9149	3f 	? 
	dec l			;914a	2d 	- 
	scf			;914b	37 	7 
	dec l			;914c	2d 	- 
	scf			;914d	37 	7 
	dec l			;914e	2d 	- 
	dec a			;914f	3d 	= 
	inc a			;9150	3c 	< 
	ld (hl),029h		;9151	36 29 	6 ) 
	add hl,hl			;9153	29 	) 
	ld (hl),03ch		;9154	36 3c 	6 < 
	dec a			;9156	3d 	= 
	ld b,c			;9157	41 	A 
	dec l			;9158	2d 	- 
	ld b,c			;9159	41 	A 
	dec l			;915a	2d 	- 
	ld b,c			;915b	41 	A 
	ld b,d			;915c	42 	B 
	inc c			;915d	0c 	. 
	add hl,hl			;915e	29 	) 
	sub h			;915f	94 	. 
	ld b,d			;9160	42 	B 
	dec l			;9161	2d 	- 
	add hl,sp			;9162	39 	9 
	dec l			;9163	2d 	- 
	add hl,sp			;9164	39 	9 
	dec l			;9165	2d 	- 
	dec a			;9166	3d 	= 
	inc a			;9167	3c 	< 
	ld (hl),029h		;9168	36 29 	6 ) 
	add hl,hl			;916a	29 	) 
	ld (hl),034h		;916b	36 34 	6 4 
	dec sp			;916d	3b 	; 
	ld b,e			;916e	43 	C 
	dec l			;916f	2d 	- 
	ld b,e			;9170	43 	C 
	dec l			;9171	2d 	- 
	ld b,e			;9172	43 	C 
	ld b,d			;9173	42 	B 
	inc c			;9174	0c 	. 
	add hl,hl			;9175	29 	) 
	sub h			;9176	94 	. 
	ld b,d			;9177	42 	B 
	dec l			;9178	2d 	- 
	scf			;9179	37 	7 
	dec l			;917a	2d 	- 
	scf			;917b	37 	7 
	dec l			;917c	2d 	- 
	dec sp			;917d	3b 	; 
	inc (hl)			;917e	34 	4 
	ld (hl),029h		;917f	36 29 	6 ) 
	add hl,hl			;9181	29 	) 
	ld (hl),034h		;9182	36 34 	6 4 
	ld a,(02d44h)		;9184	3a 44 2d 	: D - 
	ld b,h			;9187	44 	D 
	dec l			;9188	2d 	- 
	ld b,h			;9189	44 	D 
	ld b,d			;918a	42 	B 
	inc c			;918b	0c 	. 
	add hl,hl			;918c	29 	) 
	sub h			;918d	94 	. 
	ld b,d			;918e	42 	B 
	dec l			;918f	2d 	- 
	add hl,sp			;9190	39 	9 
	dec l			;9191	2d 	- 
	add hl,sp			;9192	39 	9 
	dec l			;9193	2d 	- 
	ld a,(03634h)		;9194	3a 34 36 	: 4 6 
	add hl,hl			;9197	29 	) 
	add hl,hl			;9198	29 	) 
	ld (hl),034h		;9199	36 34 	6 4 
	jr c,l91e2h		;919b	38 45 	8 E 
	dec l			;919d	2d 	- 
	ld b,l			;919e	45 	E 
	dec l			;919f	2d 	- 
	ld b,l			;91a0	45 	E 
	ld b,d			;91a1	42 	B 
	inc c			;91a2	0c 	. 
	add hl,hl			;91a3	29 	) 
	sub h			;91a4	94 	. 
	ld b,d			;91a5	42 	B 
	dec l			;91a6	2d 	- 
	scf			;91a7	37 	7 
	dec l			;91a8	2d 	- 
	scf			;91a9	37 	7 
	dec l			;91aa	2d 	- 
	jr c,$+54		;91ab	38 34 	8 4 
	ld (hl),029h		;91ad	36 29 	6 ) 
	add hl,hl			;91af	29 	) 
	ld (hl),034h		;91b0	36 34 	6 4 
	inc (hl)			;91b2	34 	4 
	ld b,c			;91b3	41 	A 
	dec l			;91b4	2d 	- 
	ld b,c			;91b5	41 	A 
	dec l			;91b6	2d 	- 
	ld b,c			;91b7	41 	A 
	ld b,d			;91b8	42 	B 
	inc c			;91b9	0c 	. 
	add hl,hl			;91ba	29 	) 
	sub h			;91bb	94 	. 
	ld b,d			;91bc	42 	B 
	dec l			;91bd	2d 	- 
	add hl,sp			;91be	39 	9 
	dec l			;91bf	2d 	- 
	add hl,sp			;91c0	39 	9 
	dec l			;91c1	2d 	- 
	inc (hl)			;91c2	34 	4 
	inc (hl)			;91c3	34 	4 
	ld (hl),029h		;91c4	36 29 	6 ) 
	add hl,hl			;91c6	29 	) 
	ld (hl),034h		;91c7	36 34 	6 4 
	inc (hl)			;91c9	34 	4 
	ld b,e			;91ca	43 	C 
	dec l			;91cb	2d 	- 
	ld b,e			;91cc	43 	C 
	dec l			;91cd	2d 	- 
	ld b,e			;91ce	43 	C 
	ld b,(hl)			;91cf	46 	F 
	inc c			;91d0	0c 	. 
	ld b,a			;91d1	47 	G 
	rst 30h			;91d2	f7 	. 
	ld b,(hl)			;91d3	46 	F 
	dec l			;91d4	2d 	- 
	scf			;91d5	37 	7 
	dec l			;91d6	2d 	- 
	scf			;91d7	37 	7 
	dec l			;91d8	2d 	- 
	inc (hl)			;91d9	34 	4 
	inc (hl)			;91da	34 	4 
	ld (hl),029h		;91db	36 29 	6 ) 
	add hl,hl			;91dd	29 	) 
	ld (hl),034h		;91de	36 34 	6 4 
	jr c,l9226h		;91e0	38 44 	8 D 
l91e2h:
	dec l			;91e2	2d 	- 
	ld b,h			;91e3	44 	D 
	dec l			;91e4	2d 	- 
	ld b,h			;91e5	44 	D 
	dec l			;91e6	2d 	- 
	add hl,sp			;91e7	39 	9 
	dec l			;91e8	2d 	- 
	add hl,sp			;91e9	39 	9 
	dec l			;91ea	2d 	- 
	add hl,sp			;91eb	39 	9 
	dec l			;91ec	2d 	- 
	add hl,sp			;91ed	39 	9 
	dec l			;91ee	2d 	- 
	add hl,sp			;91ef	39 	9 
	dec l			;91f0	2d 	- 
	add hl,sp			;91f1	39 	9 
	dec l			;91f2	2d 	- 
	add hl,sp			;91f3	39 	9 
	dec l			;91f4	2d 	- 
	ld c,l			;91f5	4d 	M 
	ld c,(hl)			;91f6	4e 	N 
	ld c,a			;91f7	4f 	O 
	dec l			;91f8	2d 	- 
	jr c,l922fh		;91f9	38 34 	8 4 
	ld (hl),029h		;91fb	36 29 	6 ) 
	add hl,hl			;91fd	29 	) 
	ld (hl),034h		;91fe	36 34 	6 4 
	ld a,(02d45h)		;9200	3a 45 2d 	: E - 
	ld b,l			;9203	45 	E 
	dec l			;9204	2d 	- 
	ld b,l			;9205	45 	E 
	dec l			;9206	2d 	- 
	scf			;9207	37 	7 
	dec l			;9208	2d 	- 
	scf			;9209	37 	7 
	dec l			;920a	2d 	- 
	scf			;920b	37 	7 
	dec l			;920c	2d 	- 
	scf			;920d	37 	7 
	dec l			;920e	2d 	- 
	scf			;920f	37 	7 
	dec l			;9210	2d 	- 
	scf			;9211	37 	7 
	dec l			;9212	2d 	- 
	scf			;9213	37 	7 
	dec l			;9214	2d 	- 
	ld d,b			;9215	50 	P 
	ld d,c			;9216	51 	Q 
	ld d,d			;9217	52 	R 
	dec l			;9218	2d 	- 
	ld a,(03634h)		;9219	3a 34 36 	: 4 6 
	add hl,hl			;921c	29 	) 
	add hl,hl			;921d	29 	) 
	ld (hl),034h		;921e	36 34 	6 4 
	dec sp			;9220	3b 	; 
	ld b,c			;9221	41 	A 
	dec l			;9222	2d 	- 
	ld b,c			;9223	41 	A 
	dec l			;9224	2d 	- 
	ld b,c			;9225	41 	A 
l9226h:
	dec l			;9226	2d 	- 
	add hl,sp			;9227	39 	9 
	dec l			;9228	2d 	- 
	add hl,sp			;9229	39 	9 
	dec l			;922a	2d 	- 
	add hl,sp			;922b	39 	9 
	dec l			;922c	2d 	- 
	add hl,sp			;922d	39 	9 
	dec l			;922e	2d 	- 
l922fh:
	add hl,sp			;922f	39 	9 
	dec l			;9230	2d 	- 
	add hl,sp			;9231	39 	9 
	dec l			;9232	2d 	- 
	add hl,sp			;9233	39 	9 
	dec l			;9234	2d 	- 
	ld d,e			;9235	53 	S 
	ld d,h			;9236	54 	T 
	ld d,l			;9237	55 	U 
	dec l			;9238	2d 	- 
	dec sp			;9239	3b 	; 
	inc (hl)			;923a	34 	4 
	ld (hl),029h		;923b	36 29 	6 ) 
	add hl,hl			;923d	29 	) 
	ld (hl),03ch		;923e	36 3c 	6 < 
	dec a			;9240	3d 	= 
	ld b,e			;9241	43 	C 
	dec l			;9242	2d 	- 
	ld b,e			;9243	43 	C 
	dec l			;9244	2d 	- 
	ld b,e			;9245	43 	C 
	dec l			;9246	2d 	- 
	scf			;9247	37 	7 
	dec l			;9248	2d 	- 
	scf			;9249	37 	7 
	xor e			;924a	ab 	. 
	dec l			;924b	2d 	- 
	scf			;924c	37 	7 
	dec l			;924d	2d 	- 
	scf			;924e	37 	7 
	dec l			;924f	2d 	- 
	scf			;9250	37 	7 
	dec l			;9251	2d 	- 
	scf			;9252	37 	7 
	dec l			;9253	2d 	- 
	scf			;9254	37 	7 
	dec l			;9255	2d 	- 
	ld d,(hl)			;9256	56 	V 
	ld d,a			;9257	57 	W 
	ld e,b			;9258	58 	X 
	dec l			;9259	2d 	- 
	dec a			;925a	3d 	= 
	inc a			;925b	3c 	< 
	ld (hl),029h		;925c	36 29 	6 ) 
	add hl,hl			;925e	29 	) 
	ld (hl),03ch		;925f	36 3c 	6 < 
	dec a			;9261	3d 	= 
	ld b,h			;9262	44 	D 
	dec l			;9263	2d 	- 
	ld b,h			;9264	44 	D 
	dec l			;9265	2d 	- 
	ld b,h			;9266	44 	D 
	dec l			;9267	2d 	- 
	add hl,sp			;9268	39 	9 
	dec l			;9269	2d 	- 
	add hl,sp			;926a	39 	9 
	dec l			;926b	2d 	- 
	add hl,sp			;926c	39 	9 
	dec l			;926d	2d 	- 
	add hl,sp			;926e	39 	9 
	dec l			;926f	2d 	- 
	add hl,sp			;9270	39 	9 
	dec l			;9271	2d 	- 
	add hl,sp			;9272	39 	9 
	dec l			;9273	2d 	- 
	add hl,sp			;9274	39 	9 
	ld e,c			;9275	59 	Y 
	dec b			;9276	05 	. 
	ld e,d			;9277	5a 	Z 
	rst 30h			;9278	f7 	. 
	ld e,e			;9279	5b 	[ 
	ld (hl),029h		;927a	36 29 	6 ) 
	ld c,b			;927c	48 	H 
	ld c,c			;927d	49 	I 
	ld c,b			;927e	48 	H 
	ld c,c			;927f	49 	I 
	ld c,b			;9280	48 	H 
	ld c,c			;9281	49 	I 
	ld c,b			;9282	48 	H 
	ld c,c			;9283	49 	I 
	ld c,d			;9284	4a 	J 
	ld c,c			;9285	49 	I 
	ld c,b			;9286	48 	H 
	ld c,c			;9287	49 	I 
	ld c,b			;9288	48 	H 
	ld c,c			;9289	49 	I 
	ld c,b			;928a	48 	H 
	ld c,c			;928b	49 	I 
	ld c,b			;928c	48 	H 
	ld c,c			;928d	49 	I 
	ld c,b			;928e	48 	H 
	ld c,c			;928f	49 	I 
	ld c,b			;9290	48 	H 
	ld c,c			;9291	49 	I 
	ld c,b			;9292	48 	H 
	ld c,c			;9293	49 	I 
	ld c,b			;9294	48 	H 
	ld c,c			;9295	49 	I 
	ld c,b			;9296	48 	H 
	ld c,c			;9297	49 	I 
	ld c,b			;9298	48 	H 
	ld c,c			;9299	49 	I 
	ld c,b			;929a	48 	H 
	ld c,c			;929b	49 	I 
	ld c,e			;929c	4b 	K 
	ld c,h			;929d	4c 	L 
	ld c,e			;929e	4b 	K 
	ld c,h			;929f	4c 	L 
	ld c,e			;92a0	4b 	K 
	ld c,h			;92a1	4c 	L 
	ld c,e			;92a2	4b 	K 
	ld c,h			;92a3	4c 	L 
	ld c,e			;92a4	4b 	K 
	ld c,h			;92a5	4c 	L 
	ld c,e			;92a6	4b 	K 
	ld c,h			;92a7	4c 	L 
	ld c,e			;92a8	4b 	K 
	ld c,h			;92a9	4c 	L 
	ld c,e			;92aa	4b 	K 
	ld c,h			;92ab	4c 	L 
	ld c,e			;92ac	4b 	K 
	ld c,h			;92ad	4c 	L 
	ld c,e			;92ae	4b 	K 
	ld c,h			;92af	4c 	L 
	ld c,e			;92b0	4b 	K 
	ld c,h			;92b1	4c 	L 
	ld c,e			;92b2	4b 	K 
	ld c,h			;92b3	4c 	L 
	ld c,e			;92b4	4b 	K 
	ld c,h			;92b5	4c 	L 
	ld c,e			;92b6	4b 	K 
	ld c,h			;92b7	4c 	L 
	ld c,e			;92b8	4b 	K 
	ld c,h			;92b9	4c 	L 
	ld c,e			;92ba	4b 	K 
	ld c,h			;92bb	4c 	L 
	ld c,b			;92bc	48 	H 
	ld c,c			;92bd	49 	I 
	ld c,b			;92be	48 	H 
	ld c,c			;92bf	49 	I 
	ld c,b			;92c0	48 	H 
	ld c,c			;92c1	49 	I 
	ld c,b			;92c2	48 	H 
	ld c,c			;92c3	49 	I 
	ld c,b			;92c4	48 	H 
	ld c,c			;92c5	49 	I 
	ld c,b			;92c6	48 	H 
	ld c,c			;92c7	49 	I 
	ld c,b			;92c8	48 	H 
	ld c,c			;92c9	49 	I 
	ld c,b			;92ca	48 	H 
	ld c,c			;92cb	49 	I 
	ld c,b			;92cc	48 	H 
	ld c,c			;92cd	49 	I 
	ld c,b			;92ce	48 	H 
	ld c,c			;92cf	49 	I 
	ld c,b			;92d0	48 	H 
	ld c,c			;92d1	49 	I 
	ld c,b			;92d2	48 	H 
	ld c,c			;92d3	49 	I 
	ld c,b			;92d4	48 	H 
	ld c,c			;92d5	49 	I 
	ld c,b			;92d6	48 	H 
	ld c,c			;92d7	49 	I 
	ld c,b			;92d8	48 	H 
	ld c,c			;92d9	49 	I 
	ld c,b			;92da	48 	H 
	ld c,c			;92db	49 	I 
	ld c,e			;92dc	4b 	K 
	ld c,h			;92dd	4c 	L 
	ld c,e			;92de	4b 	K 
	ld c,h			;92df	4c 	L 
	ld c,e			;92e0	4b 	K 
	ld c,h			;92e1	4c 	L 
	ld c,e			;92e2	4b 	K 
	ld c,h			;92e3	4c 	L 
	ld c,e			;92e4	4b 	K 
	ld c,h			;92e5	4c 	L 
	ld c,e			;92e6	4b 	K 
	ld c,h			;92e7	4c 	L 
	ld c,e			;92e8	4b 	K 
	ld c,h			;92e9	4c 	L 
	ld c,e			;92ea	4b 	K 
	ld c,h			;92eb	4c 	L 
	ld c,e			;92ec	4b 	K 
	ld c,h			;92ed	4c 	L 
	ld c,e			;92ee	4b 	K 
	ld c,h			;92ef	4c 	L 
	adc a,h			;92f0	8c 	. 
	ld c,e			;92f1	4b 	K 
	ld c,h			;92f2	4c 	L 
	ld c,e			;92f3	4b 	K 
	ld c,h			;92f4	4c 	L 
	ld c,e			;92f5	4b 	K 
	ld c,h			;92f6	4c 	L 
	ld c,e			;92f7	4b 	K 
	ld c,h			;92f8	4c 	L 
	ld c,e			;92f9	4b 	K 
	ld c,h			;92fa	4c 	L 
	ld c,e			;92fb	4b 	K 
	ld c,h			;92fc	4c 	L 
	nop			;92fd	00 	. 
	add a,c			;92fe	81 	. 
	add a,b			;92ff	80 	. 
	jr l9302h		;9300	18 00 	. . 
l9302h:
	inc bc			;9302	03 	. 
	ld (bc),a			;9303	02 	. 
	inc bc			;9304	03 	. 
	nop			;9305	00 	. 
	add a,d			;9306	82 	. 
	add a,b			;9307	80 	. 
	add a,b			;9308	80 	. 
	ld a,(de)			;9309	1a 	. 
	nop			;930a	00 	. 
	add a,(hl)			;930b	86 	. 
	ld (bc),a			;930c	02 	. 
	ld (bc),a			;930d	02 	. 
	nop			;930e	00 	. 
	nop			;930f	00 	. 
	add a,b			;9310	80 	. 
	add a,b			;9311	80 	. 
	dec de			;9312	1b 	. 
	nop			;9313	00 	. 
	add a,l			;9314	85 	. 
	ld (bc),a			;9315	02 	. 
	ld (bc),a			;9316	02 	. 
	nop			;9317	00 	. 
	add a,b			;9318	80 	. 
	add a,b			;9319	80 	. 
	inc e			;931a	1c 	. 
	nop			;931b	00 	. 
	add a,h			;931c	84 	. 
	ld (bc),a			;931d	02 	. 
	ld (bc),a			;931e	02 	. 
	add a,b			;931f	80 	. 
	add a,b			;9320	80 	. 
	dec e			;9321	1d 	. 
	nop			;9322	00 	. 
	add a,e			;9323	83 	. 
	ld (bc),a			;9324	02 	. 
	add a,b			;9325	80 	. 
	add a,b			;9326	80 	. 
	dec de			;9327	1b 	. 
	nop			;9328	00 	. 
	add a,l			;9329	85 	. 
	ld (bc),a			;932a	02 	. 
	nop			;932b	00 	. 
	ld (bc),a			;932c	02 	. 
	add a,b			;932d	80 	. 
	add a,b			;932e	80 	. 
	inc bc			;932f	03 	. 
	nop			;9330	00 	. 
	sbc a,l			;9331	9d 	. 
	ld b,000h		;9332	06 00 	. . 
	ld b,000h		;9334	06 00 	. . 
	ld b,000h		;9336	06 00 	. . 
	ld b,000h		;9338	06 00 	. . 
	ld b,000h		;933a	06 00 	. . 
	ld b,000h		;933c	06 00 	. . 
	ld b,000h		;933e	06 00 	. . 
	ld b,000h		;9340	06 00 	. . 
	ld b,000h		;9342	06 00 	. . 
	ld b,000h		;9344	06 00 	. . 
	ld b,000h		;9346	06 00 	. . 
	ld b,000h		;9348	06 00 	. . 
	ld (bc),a			;934a	02 	. 
	nop			;934b	00 	. 
	ld (bc),a			;934c	02 	. 
	add a,b			;934d	80 	. 
	add a,b			;934e	80 	. 
	dec de			;934f	1b 	. 
	nop			;9350	00 	. 
	add a,l			;9351	85 	. 
	ld (bc),a			;9352	02 	. 
	nop			;9353	00 	. 
	ld (bc),a			;9354	02 	. 
	add a,b			;9355	80 	. 
	add a,b			;9356	80 	. 
	dec d			;9357	15 	. 
	nop			;9358	00 	. 
	add a,c			;9359	81 	. 
	ld (bc),a			;935a	02 	. 
	dec b			;935b	05 	. 
	nop			;935c	00 	. 
	inc bc			;935d	03 	. 
	ld (bc),a			;935e	02 	. 
	add a,l			;935f	85 	. 
	add a,b			;9360	80 	. 
	add a,b			;9361	80 	. 
	nop			;9362	00 	. 
	inc b			;9363	04 	. 
	inc b			;9364	04 	. 
	ld (de),a			;9365	12 	. 
	nop			;9366	00 	. 
	add a,c			;9367	81 	. 
	ld (bc),a			;9368	02 	. 
	dec b			;9369	05 	. 
	nop			;936a	00 	. 
	adc a,b			;936b	88 	. 
	ld b,006h		;936c	06 06 	. . 
	ld (bc),a			;936e	02 	. 
	add a,b			;936f	80 	. 
	add a,b			;9370	80 	. 
	nop			;9371	00 	. 
	nop			;9372	00 	. 
	inc b			;9373	04 	. 
	ld (de),a			;9374	12 	. 
	nop			;9375	00 	. 
	adc a,(hl)			;9376	8e 	. 
	ld (bc),a			;9377	02 	. 
	nop			;9378	00 	. 
	ld b,000h		;9379	06 00 	. . 
	ld b,000h		;937b	06 00 	. . 
	ld b,000h		;937d	06 00 	. . 
	ld (bc),a			;937f	02 	. 
	add a,b			;9380	80 	. 
	add a,b			;9381	80 	. 
	nop			;9382	00 	. 
	nop			;9383	00 	. 
	inc b			;9384	04 	. 
	ld (de),a			;9385	12 	. 
	nop			;9386	00 	. 
	add a,c			;9387	81 	. 
	ld (bc),a			;9388	02 	. 
	dec b			;9389	05 	. 
	nop			;938a	00 	. 
	adc a,b			;938b	88 	. 
	ld b,000h		;938c	06 00 	. . 
	ld (bc),a			;938e	02 	. 
	add a,b			;938f	80 	. 
	add a,b			;9390	80 	. 
	nop			;9391	00 	. 
	nop			;9392	00 	. 
	inc b			;9393	04 	. 
	ld (de),a			;9394	12 	. 
	nop			;9395	00 	. 
	add a,c			;9396	81 	. 
	ld (bc),a			;9397	02 	. 
	dec b			;9398	05 	. 
	nop			;9399	00 	. 
	add a,l			;939a	85 	. 
	ld b,000h		;939b	06 00 	. . 
	ld (bc),a			;939d	02 	. 
	add a,b			;939e	80 	. 
	add a,b			;939f	80 	. 
	dec d			;93a0	15 	. 
	nop			;93a1	00 	. 
	add a,c			;93a2	81 	. 
	ld (bc),a			;93a3	02 	. 
	rlca			;93a4	07 	. 
	nop			;93a5	00 	. 
	add a,e			;93a6	83 	. 
	ld (bc),a			;93a7	02 	. 
	add a,b			;93a8	80 	. 
	add a,b			;93a9	80 	. 
	dec d			;93aa	15 	. 
	nop			;93ab	00 	. 
	add a,l			;93ac	85 	. 
	ld (bc),a			;93ad	02 	. 
	nop			;93ae	00 	. 
	ld b,000h		;93af	06 00 	. . 
	ld b,003h		;93b1	06 03 	. . 
	nop			;93b3	00 	. 
	add a,e			;93b4	83 	. 
	ld (bc),a			;93b5	02 	. 
	add a,b			;93b6	80 	. 
	add a,b			;93b7	80 	. 
	dec de			;93b8	1b 	. 
	nop			;93b9	00 	. 
	add a,l			;93ba	85 	. 
	ld (bc),a			;93bb	02 	. 
	nop			;93bc	00 	. 
	ld (bc),a			;93bd	02 	. 
	add a,b			;93be	80 	. 
	add a,b			;93bf	80 	. 
	dec de			;93c0	1b 	. 
	nop			;93c1	00 	. 
	add a,l			;93c2	85 	. 
	ld (bc),a			;93c3	02 	. 
	nop			;93c4	00 	. 
	ld (bc),a			;93c5	02 	. 
	add a,b			;93c6	80 	. 
	add a,b			;93c7	80 	. 
	dec de			;93c8	1b 	. 
	nop			;93c9	00 	. 
	add a,l			;93ca	85 	. 
	ld (bc),a			;93cb	02 	. 
	nop			;93cc	00 	. 
	ld (bc),a			;93cd	02 	. 
	add a,b			;93ce	80 	. 
	add a,b			;93cf	80 	. 
	add hl,bc			;93d0	09 	. 
	nop			;93d1	00 	. 
	adc a,l			;93d2	8d 	. 
	ld b,000h		;93d3	06 00 	. . 
	ld b,000h		;93d5	06 00 	. . 
	ld b,000h		;93d7	06 00 	. . 
	ld b,000h		;93d9	06 00 	. . 
	ld b,000h		;93db	06 00 	. . 
	ld b,000h		;93dd	06 00 	. . 
	ld b,005h		;93df	06 05 	. . 
	nop			;93e1	00 	. 
	inc bc			;93e2	03 	. 
	ld (bc),a			;93e3	02 	. 
	add a,l			;93e4	85 	. 
	add a,b			;93e5	80 	. 
	add a,b			;93e6	80 	. 
	nop			;93e7	00 	. 
	inc b			;93e8	04 	. 
	inc b			;93e9	04 	. 
	ld a,(de)			;93ea	1a 	. 
	nop			;93eb	00 	. 
	add a,c			;93ec	81 	. 
	ld (bc),a			;93ed	02 	. 
	ld (hl),a			;93ee	77 	w 
	add a,b			;93ef	80 	. 
	ld a,(bc)			;93f0	0a 	. 
	add a,b			;93f1	80 	. 
	nop			;93f2	00 	. 
	inc c			;93f3	0c 	. 
	nop			;93f4	00 	. 
	add a,a			;93f5	87 	. 
	inc bc			;93f6	03 	. 
	rlca			;93f7	07 	. 
	rra			;93f8	1f 	. 
	ccf			;93f9	3f 	? 
	inc bc			;93fa	03 	. 
	rrca			;93fb	0f 	. 
	ccf			;93fc	3f 	? 
	dec d			;93fd	15 	. 
	rst 38h			;93fe	ff 	. 
	add a,a			;93ff	87 	. 
	nop			;9400	00 	. 
	ld bc,00f07h		;9401	01 07 0f 	. . . 
	rra			;9404	1f 	. 
	ccf			;9405	3f 	? 
	ld a,a			;9406	7f 	 
	add hl,bc			;9407	09 	. 
	rst 38h			;9408	ff 	. 
	ld (bc),a			;9409	02 	. 
	ld bc,00386h		;940a	01 86 03 	. . . 
	rlca			;940d	07 	. 
	rrca			;940e	0f 	. 
	rrca			;940f	0f 	. 
	rra			;9410	1f 	. 
	ccf			;9411	3f 	? 
	ex af,af'			;9412	08 	. 
	rst 38h			;9413	ff 	. 
	inc bc			;9414	03 	. 
	nop			;9415	00 	. 
	ld (bc),a			;9416	02 	. 
	ld bc,00302h		;9417	01 02 03 	. . . 
	add a,l			;941a	85 	. 
	rlca			;941b	07 	. 
	ld a,b			;941c	78 	x 
	ld (hl),b			;941d	70 	p 
	ret p			;941e	f0 	. 
	ret po			;941f	e0 	. 
	ld (bc),a			;9420	02 	. 
	ret nz			;9421	c0 	. 
	ld (bc),a			;9422	02 	. 
	add a,b			;9423	80 	. 
	ld a,(bc)			;9424	0a 	. 
	nop			;9425	00 	. 
	inc b			;9426	04 	. 
	rst 38h			;9427	ff 	. 
	ld (bc),a			;9428	02 	. 
	nop			;9429	00 	. 
	ex af,af'			;942a	08 	. 
	rlca			;942b	07 	. 
	adc a,b			;942c	88 	. 
	rst 38h			;942d	ff 	. 
	rst 28h			;942e	ef 	. 
	ld a,a			;942f	7f 	 
	cp a			;9430	bf 	. 
	and e			;9431	a3 	. 
	defb 0ddh,0bfh,07fh	;illegal sequence		;9432	dd bf 7f 	. .  
	inc b			;9435	04 	. 
	nop			;9436	00 	. 
	inc b			;9437	04 	. 
	ld bc,0ff88h		;9438	01 88 ff 	. . . 
	cp l			;943b	bd 	. 
	rst 20h			;943c	e7 	. 
	in a,(0dbh)		;943d	db db 	. . 
	rst 20h			;943f	e7 	. 
	cp l			;9440	bd 	. 
	rst 38h			;9441	ff 	. 
	ld (bc),a			;9442	02 	. 
	ld bc,00303h		;9443	01 03 03 	. . . 
	inc bc			;9446	03 	. 
	rlca			;9447	07 	. 
	inc bc			;9448	03 	. 
	rrca			;9449	0f 	. 
	inc bc			;944a	03 	. 
	rra			;944b	1f 	. 
	ld (bc),a			;944c	02 	. 
	ccf			;944d	3f 	? 
	dec b			;944e	05 	. 
	nop			;944f	00 	. 
	add a,h			;9450	84 	. 
	ld bc,l8f03h		;9451	01 03 8f 	. . . 
	ccf			;9454	3f 	? 
	ld (bc),a			;9455	02 	. 
	ld a,a			;9456	7f 	 
	dec b			;9457	05 	. 
	rst 38h			;9458	ff 	. 
	adc a,b			;9459	88 	. 
	ld h,(hl)			;945a	66 	f 
	rst 38h			;945b	ff 	. 
	rst 28h			;945c	ef 	. 
	ld a,a			;945d	7f 	 
	cp a			;945e	bf 	. 
	and e			;945f	a3 	. 
	defb 0ddh,0bfh,004h	;illegal sequence		;9460	dd bf 04 	. . . 
	rst 38h			;9463	ff 	. 
	inc b			;9464	04 	. 
	ret p			;9465	f0 	. 
	inc b			;9466	04 	. 
	rst 38h			;9467	ff 	. 
	inc b			;9468	04 	. 
	nop			;9469	00 	. 
	adc a,b			;946a	88 	. 
	ld a,a			;946b	7f 	 
	rst 38h			;946c	ff 	. 
	cp l			;946d	bd 	. 
	rst 20h			;946e	e7 	. 
	in a,(0dbh)		;946f	db db 	. . 
	rst 20h			;9471	e7 	. 
	cp l			;9472	bd 	. 
	ex af,af'			;9473	08 	. 
	ret p			;9474	f0 	. 
	sbc a,b			;9475	98 	. 
	rst 38h			;9476	ff 	. 
	cp 0fdh		;9477	fe fd 	. . 
	cp e			;9479	bb 	. 
	push bc			;947a	c5 	. 
	defb 0fdh,0feh,0f7h	;illegal sequence		;947b	fd fe f7 	. . . 
	rst 38h			;947e	ff 	. 
	rst 38h			;947f	ff 	. 
	cp l			;9480	bd 	. 
	rst 20h			;9481	e7 	. 
	in a,(0dbh)		;9482	db db 	. . 
	rst 20h			;9484	e7 	. 
	cp l			;9485	bd 	. 
	rst 38h			;9486	ff 	. 
	rst 38h			;9487	ff 	. 
	rst 28h			;9488	ef 	. 
	ld a,a			;9489	7f 	 
	cp a			;948a	bf 	. 
	and e			;948b	a3 	. 
	defb 0ddh,0bfh,004h	;illegal sequence		;948c	dd bf 04 	. . . 
	rst 38h			;948f	ff 	. 
	add a,h			;9490	84 	. 
	nop			;9491	00 	. 
	add a,b			;9492	80 	. 
	ret nz			;9493	c0 	. 
	ret po			;9494	e0 	. 
	inc b			;9495	04 	. 
	rst 38h			;9496	ff 	. 
	inc b			;9497	04 	. 
	nop			;9498	00 	. 
	add a,d			;9499	82 	. 
	inc e			;949a	1c 	. 
	ccf			;949b	3f 	? 
	inc b			;949c	04 	. 
	ld a,a			;949d	7f 	 
	adc a,h			;949e	8c 	. 
	ccf			;949f	3f 	? 
	ld bc,03f1eh		;94a0	01 1e 3f 	. . ? 
	cp a			;94a3	bf 	. 
l94a4h:
	cp a			;94a4	bf 	. 
	rst 18h			;94a5	df 	. 
	sbc a,0deh		;94a6	de de 	. . 
	add a,b			;94a8	80 	. 
	rst 38h			;94a9	ff 	. 
	ccf			;94aa	3f 	? 
	inc b			;94ab	04 	. 
	ld a,a			;94ac	7f 	 
	add a,h			;94ad	84 	. 
	ccf			;94ae	3f 	? 
	ld bc,07f3eh		;94af	01 3e 7f 	. >  
	inc b			;94b2	04 	. 
	rst 38h			;94b3	ff 	. 
	add a,h			;94b4	84 	. 
	ld a,(hl)			;94b5	7e 	~ 
	jr c,l94f4h		;94b6	38 3c 	8 < 
	ld a,003h		;94b8	3e 03 	> . 
	ld a,(hl)			;94ba	7e 	~ 
	or e			;94bb	b3 	. 
	inc a			;94bc	3c 	< 
	inc e			;94bd	1c 	. 
	nop			;94be	00 	. 
	rst 38h			;94bf	ff 	. 
	cp h			;94c0	bc 	. 
	push hl			;94c1	e5 	. 
	in a,(0cah)		;94c2	db ca 	. . 
	rst 10h			;94c4	d7 	. 
	sub a			;94c5	97 	. 
	rst 10h			;94c6	d7 	. 
	add a,e			;94c7	83 	. 
	ld a,h			;94c8	7c 	| 
	rst 38h			;94c9	ff 	. 
	rst 38h			;94ca	ff 	. 
	jr c,l94a4h		;94cb	38 d7 	8 . 
	add hl,sp			;94cd	39 	9 
	ld a,l			;94ce	7d 	} 
	rst 38h			;94cf	ff 	. 
	cp l			;94d0	bd 	. 
	ld h,a			;94d1	67 	g 
	sbc a,e			;94d2	9b 	. 
	adc a,e			;94d3	8b 	. 
	rst 10h			;94d4	d7 	. 
	push de			;94d5	d5 	. 
	rst 10h			;94d6	d7 	. 
	rst 28h			;94d7	ef 	. 
	ex de,hl			;94d8	eb 	. 
	ld l,h			;94d9	6c 	l 
	or (hl)			;94da	b6 	. 
	and c			;94db	a1 	. 
	pop bc			;94dc	c1 	. 
	add a,b			;94dd	80 	. 
	nop			;94de	00 	. 
	rst 38h			;94df	ff 	. 
	sub e			;94e0	93 	. 
	nop			;94e1	00 	. 
	jr c,$+1		;94e2	38 ff 	8 . 
	rst 28h			;94e4	ef 	. 
	add a,028h		;94e5	c6 28 	. ( 
	rst 28h			;94e7	ef 	. 
	xor a			;94e8	af 	. 
	ld l,a			;94e9	6f 	o 
	rst 18h			;94ea	df 	. 
	inc hl			;94eb	23 	# 
	dec c			;94ec	0d 	. 
	rlca			;94ed	07 	. 
	inc bc			;94ee	03 	. 
	ld (bc),a			;94ef	02 	. 
	add a,b			;94f0	80 	. 
	ld (bc),a			;94f1	02 	. 
	ret nz			;94f2	c0 	. 
	adc a,b			;94f3	88 	. 
l94f4h:
	ret nc			;94f4	d0 	. 
	ret po			;94f5	e0 	. 
	or b			;94f6	b0 	. 
	ret p			;94f7	f0 	. 
	ld (hl),h			;94f8	74 	t 
	or 0f6h		;94f9	f6 f6 	. . 
	xor 004h		;94fb	ee 04 	. . 
	nop			;94fd	00 	. 
	adc a,(hl)			;94fe	8e 	. 
	inc bc			;94ff	03 	. 
	ld bc,00b07h		;9500	01 07 0b 	. . . 
	dec de			;9503	1b 	. 
	rlca			;9504	07 	. 
	dec e			;9505	1d 	. 
	rra			;9506	1f 	. 
	ret p			;9507	f0 	. 
	ret p			;9508	f0 	. 
	or b			;9509	b0 	. 
	push bc			;950a	c5 	. 
	jp p,002fbh		;950b	f2 fb 02 	. . . 
	ret p			;950e	f0 	. 
	inc bc			;950f	03 	. 
	nop			;9510	00 	. 
	adc a,l			;9511	8d 	. 
	ld d,l			;9512	55 	U 
	xor d			;9513	aa 	. 
	ld bc,00000h		;9514	01 00 00 	. . . 
	ld e,01dh		;9517	1e 1d 	. . 
	dec de			;9519	1b 	. 
	ld b,l			;951a	45 	E 
	sbc a,l			;951b	9d 	. 
	cp (hl)			;951c	be 	. 
	rla			;951d	17 	. 
	rra			;951e	1f 	. 
	inc b			;951f	04 	. 
	rst 38h			;9520	ff 	. 
	add a,h			;9521	84 	. 
	cp e			;9522	bb 	. 
	inc sp			;9523	33 	3 
	nop			;9524	00 	. 
	inc sp			;9525	33 	3 
	inc b			;9526	04 	. 
	rst 38h			;9527	ff 	. 
	adc a,h			;9528	8c 	. 
	cp e			;9529	bb 	. 
	inc sp			;952a	33 	3 
	nop			;952b	00 	. 
	inc sp			;952c	33 	3 
	call m,0fefeh		;952d	fc fe fe 	. . . 
	rst 38h			;9530	ff 	. 
	cp e			;9531	bb 	. 
	inc sp			;9532	33 	3 
	nop			;9533	00 	. 
	inc sp			;9534	33 	3 
	nop			;9535	00 	. 
	inc c			;9536	0c 	. 
	nop			;9537	00 	. 
	add a,a			;9538	87 	. 
	inc bc			;9539	03 	. 
	rlca			;953a	07 	. 
	rra			;953b	1f 	. 
	ccf			;953c	3f 	? 
	inc bc			;953d	03 	. 
	rrca			;953e	0f 	. 
	ccf			;953f	3f 	? 
	dec d			;9540	15 	. 
	rst 38h			;9541	ff 	. 
	add a,a			;9542	87 	. 
	nop			;9543	00 	. 
	ld bc,00f07h		;9544	01 07 0f 	. . . 
	rra			;9547	1f 	. 
	ccf			;9548	3f 	? 
	ld a,a			;9549	7f 	 
	add hl,bc			;954a	09 	. 
	rst 38h			;954b	ff 	. 
	ld (bc),a			;954c	02 	. 
	ld bc,00386h		;954d	01 86 03 	. . . 
	rlca			;9550	07 	. 
	rrca			;9551	0f 	. 
	rrca			;9552	0f 	. 
	rra			;9553	1f 	. 
	ccf			;9554	3f 	? 
	ex af,af'			;9555	08 	. 
	rst 38h			;9556	ff 	. 
	inc bc			;9557	03 	. 
	nop			;9558	00 	. 
	ld (bc),a			;9559	02 	. 
	ld bc,00302h		;955a	01 02 03 	. . . 
	add a,a			;955d	87 	. 
l955eh:
	rlca			;955e	07 	. 
	ld a,d			;955f	7a 	z 
	ld a,d			;9560	7a 	z 
	jp m,0d4f2h		;9561	fa f2 d4 	. . . 
	call po,sub_8002h		;9564	e4 02 80 	. . . 
	ex af,af'			;9567	08 	. 
	nop			;9568	00 	. 
	inc bc			;9569	03 	. 
	rst 38h			;956a	ff 	. 
	add a,c			;956b	81 	. 
	nop			;956c	00 	. 
	inc b			;956d	04 	. 
	rst 38h			;956e	ff 	. 
	ex af,af'			;956f	08 	. 
	rlca			;9570	07 	. 
	adc a,b			;9571	88 	. 
	rst 38h			;9572	ff 	. 
	rst 20h			;9573	e7 	. 
	ld h,a			;9574	67 	g 
	ccf			;9575	3f 	? 
	and e			;9576	a3 	. 
	add a,c			;9577	81 	. 
	sbc a,l			;9578	9d 	. 
	ccf			;9579	3f 	? 
	inc b			;957a	04 	. 
	nop			;957b	00 	. 
	inc b			;957c	04 	. 
	ld bc,lbd88h		;957d	01 88 bd 	. . . 
	and l			;9580	a5 	. 
	rst 20h			;9581	e7 	. 
	sbc a,c			;9582	99 	. 
	sbc a,c			;9583	99 	. 
	rst 20h			;9584	e7 	. 
	and l			;9585	a5 	. 
	cp l			;9586	bd 	. 
	ld (bc),a			;9587	02 	. 
	ld bc,00303h		;9588	01 03 03 	. . . 
	inc bc			;958b	03 	. 
	rlca			;958c	07 	. 
	inc bc			;958d	03 	. 
	rrca			;958e	0f 	. 
	inc bc			;958f	03 	. 
	rra			;9590	1f 	. 
	ld (bc),a			;9591	02 	. 
	ccf			;9592	3f 	? 
	ld (bc),a			;9593	02 	. 
	ld (bc),a			;9594	02 	. 
	ld (bc),a			;9595	02 	. 
	inc h			;9596	24 	$ 
	add a,l			;9597	85 	. 
	ld c,b			;9598	48 	H 
	ld c,c			;9599	49 	I 
	or e			;959a	b3 	. 
	rlca			;959b	07 	. 
	ccf			;959c	3f 	? 
	ld (bc),a			;959d	02 	. 
	ld a,a			;959e	7f 	 
	dec b			;959f	05 	. 
	rst 38h			;95a0	ff 	. 
	adc a,h			;95a1	8c 	. 
	inc h			;95a2	24 	$ 
	rst 38h			;95a3	ff 	. 
	rst 20h			;95a4	e7 	. 
	ld h,a			;95a5	67 	g 
	ccf			;95a6	3f 	? 
	and e			;95a7	a3 	. 
	add a,c			;95a8	81 	. 
	sbc a,l			;95a9	9d 	. 
	add a,b			;95aa	80 	. 
	ld b,b			;95ab	40 	@ 
	jr nz,l95cdh		;95ac	20 1f 	  . 
	inc b			;95ae	04 	. 
	djnz l95b4h		;95af	10 03 	. . 
	nop			;95b1	00 	. 
	add a,c			;95b2	81 	. 
	rst 38h			;95b3	ff 	. 
l95b4h:
	inc b			;95b4	04 	. 
	nop			;95b5	00 	. 
	adc a,b			;95b6	88 	. 
	ccf			;95b7	3f 	? 
	cp l			;95b8	bd 	. 
	and l			;95b9	a5 	. 
	rst 20h			;95ba	e7 	. 
	sbc a,c			;95bb	99 	. 
	sbc a,c			;95bc	99 	. 
	rst 20h			;95bd	e7 	. 
	and l			;95be	a5 	. 
	ex af,af'			;95bf	08 	. 
	djnz l955eh		;95c0	10 9c 	. . 
	cp l			;95c2	bd 	. 
	call m,sub_81b9h		;95c3	fc b9 81 	. . . 
	push bc			;95c6	c5 	. 
	call m,0e7e6h		;95c7	fc e6 e7 	. . . 
	rst 38h			;95ca	ff 	. 
	cp l			;95cb	bd 	. 
	and l			;95cc	a5 	. 
l95cdh:
	rst 20h			;95cd	e7 	. 
	sbc a,c			;95ce	99 	. 
	sbc a,c			;95cf	99 	. 
	rst 20h			;95d0	e7 	. 
	and l			;95d1	a5 	. 
	cp l			;95d2	bd 	. 
	rst 38h			;95d3	ff 	. 
	rst 20h			;95d4	e7 	. 
	ld h,a			;95d5	67 	g 
	ccf			;95d6	3f 	? 
	and e			;95d7	a3 	. 
	add a,c			;95d8	81 	. 
	sbc a,l			;95d9	9d 	. 
	rra			;95da	1f 	. 
	jr nz,l961dh		;95db	20 40 	  @ 
	add a,b			;95dd	80 	. 
	dec b			;95de	05 	. 
l95dfh:
	rst 38h			;95df	ff 	. 
	inc bc			;95e0	03 	. 
	nop			;95e1	00 	. 
	inc b			;95e2	04 	. 
	rst 38h			;95e3	ff 	. 
	add a,d			;95e4	82 	. 
	ex (sp),hl			;95e5	e3 	. 
l95e6h:
	ret nz			;95e6	c0 	. 
	inc b			;95e7	04 	. 
	add a,b			;95e8	80 	. 
	adc a,h			;95e9	8c 	. 
	ret nz			;95ea	c0 	. 
	cp 0e1h		;95eb	fe e1 	. . 
	ret nz			;95ed	c0 	. 
	ld b,b			;95ee	40 	@ 
	ld b,b			;95ef	40 	@ 
	jr nz,l9613h		;95f0	20 21 	  ! 
	ld hl,lbd7fh		;95f2	21 7f bd 	!  . 
	ret nz			;95f5	c0 	. 
	inc b			;95f6	04 	. 
	add a,b			;95f7	80 	. 
	add a,h			;95f8	84 	. 
	ret nz			;95f9	c0 	. 
	cp 0c1h		;95fa	fe c1 	. . 
	add a,b			;95fc	80 	. 
	inc b			;95fd	04 	. 
	nop			;95fe	00 	. 
	add a,h			;95ff	84 	. 
	add a,c			;9600	81 	. 
	rst 0			;9601	c7 	. 
	jp 003c1h		;9602	c3 c1 03 	. . . 
	add a,c			;9605	81 	. 
	or d			;9606	b2 	. 
	jp 0ffe3h		;9607	c3 e3 ff 	. . . 
	cp l			;960a	bd 	. 
	and l			;960b	a5 	. 
	and 09ch		;960c	e6 9c 	. . 
	sbc a,l			;960e	9d 	. 
	ret pe			;960f	e8 	. 
	xor b			;9610	a8 	. 
	xor b			;9611	a8 	. 
	rst 38h			;9612	ff 	. 
l9613h:
	add a,e			;9613	83 	. 
	nop			;9614	00 	. 
	nop			;9615	00 	. 
	rst 0			;9616	c7 	. 
	jr z,l95dfh		;9617	28 c6 	( . 
	add a,d			;9619	82 	. 
	cp l			;961a	bd 	. 
	and l			;961b	a5 	. 
	rst 20h			;961c	e7 	. 
l961dh:
	ld e,c			;961d	59 	Y 
	ld e,c			;961e	59 	Y 
	cpl			;961f	2f 	/ 
	dec l			;9620	2d 	- 
	dec l			;9621	2d 	- 
	ret p			;9622	f0 	. 
	call p,03973h		;9623	f4 73 39 	. s 9 
	and (hl)			;9626	a6 	. 
	sbc a,(hl)			;9627	9e 	. 
	cp a			;9628	bf 	. 
	ld a,a			;9629	7f 	 
	nop			;962a	00 	. 
	ld l,h			;962b	6c 	l 
	rst 38h			;962c	ff 	. 
	rst 0			;962d	c7 	. 
	nop			;962e	00 	. 
	djnz l966ah		;962f	10 39 	. 9 
	rst 10h			;9631	d7 	. 
	rra			;9632	1f 	. 
	ld d,a			;9633	57 	W 
	sub a			;9634	97 	. 
	ccf			;9635	3f 	? 
	ex (sp),hl			;9636	e3 	. 
	pop af			;9637	f1 	. 
	defb 0fdh,004h,0ffh	;illegal sequence		;9638	fd 04 ff 	. . . 
	ld (bc),a			;963b	02 	. 
	sbc a,a			;963c	9f 	. 
	add a,a			;963d	87 	. 
	rst 28h			;963e	ef 	. 
	xor a			;963f	af 	. 
	cp a			;9640	bf 	. 
	adc a,e			;9641	8b 	. 
	add hl,bc			;9642	09 	. 
	add hl,bc			;9643	09 	. 
	ld de,0ff04h		;9644	11 04 ff 	. . . 
	ld (bc),a			;9647	02 	. 
	defb 0fdh,08dh	;adc a,iyl		;9648	fd 8d 	. . 
	rst 38h			;964a	ff 	. 
	ld sp,hl			;964b	f9 	. 
	ld sp,hl			;964c	f9 	. 
	rst 20h			;964d	e7 	. 
	push hl			;964e	e5 	. 
	defb 0fdh,0ffh,0bfh	;illegal sequence		;964f	fd ff bf 	. . . 
	adc a,a			;9652	8f 	. 
	rst 8			;9653	cf 	. 
	rst 38h			;9654	ff 	. 
	call po,006e8h		;9655	e4 e8 06 	. . . 
	rst 38h			;9658	ff 	. 
	ld (bc),a			;9659	02 	. 
	jr c,l95e6h		;965a	38 8a 	8 . 
	rst 38h			;965c	ff 	. 
	call m,0e1f9h		;965d	fc f9 e1 	. . . 
	push hl			;9660	e5 	. 
	call m,02766h		;9661	fc 66 27 	. f ' 
	rst 38h			;9664	ff 	. 
	ret nz			;9665	c0 	. 
	ld (bc),a			;9666	02 	. 
	add a,b			;9667	80 	. 
	dec d			;9668	15 	. 
	nop			;9669	00 	. 
l966ah:
	nop			;966a	00 	. 
	rrca			;966b	0f 	. 
	nop			;966c	00 	. 
	adc a,e			;966d	8b 	. 
	ld bc,00000h		;966e	01 00 00 	. . . 
	ld bc,01f07h		;9671	01 07 1f 	. . . 
	ccf			;9674	3f 	? 
	rst 38h			;9675	ff 	. 
	rst 38h			;9676	ff 	. 
	rra			;9677	1f 	. 
	ld a,a			;9678	7f 	 
	ld c,0ffh		;9679	0e ff 	. . 
	inc b			;967b	04 	. 
	nop			;967c	00 	. 
	add a,a			;967d	87 	. 
	ld bc,00703h		;967e	01 03 07 	. . . 
	rrca			;9681	0f 	. 
	rlca			;9682	07 	. 
	rrca			;9683	0f 	. 
	ccf			;9684	3f 	? 
	dec b			;9685	05 	. 
	rst 38h			;9686	ff 	. 
	dec b			;9687	05 	. 
	nop			;9688	00 	. 
	ld (bc),a			;9689	02 	. 
	ld bc,00383h		;968a	01 83 03 	. . . 
	rra			;968d	1f 	. 
	ccf			;968e	3f 	? 
	ld (bc),a			;968f	02 	. 
	ld a,a			;9690	7f 	 
	inc b			;9691	04 	. 
	rst 38h			;9692	ff 	. 
	ex af,af'			;9693	08 	. 
	nop			;9694	00 	. 
	add a,h			;9695	84 	. 
	rlca			;9696	07 	. 
	rrca			;9697	0f 	. 
	rrca			;9698	0f 	. 
	rra			;9699	1f 	. 
	ld (bc),a			;969a	02 	. 
	ccf			;969b	3f 	? 
	ld (bc),a			;969c	02 	. 
	ld a,a			;969d	7f 	 
	ex af,af'			;969e	08 	. 
	rst 38h			;969f	ff 	. 
	ld (bc),a			;96a0	02 	. 
	nop			;96a1	00 	. 
	inc b			;96a2	04 	. 
	rst 38h			;96a3	ff 	. 
	ld a,(bc)			;96a4	0a 	. 
	nop			;96a5	00 	. 
	ld b,h			;96a6	44 	D 
	rst 38h			;96a7	ff 	. 
	inc b			;96a8	04 	. 
	ret p			;96a9	f0 	. 
	inc b			;96aa	04 	. 
	rst 38h			;96ab	ff 	. 
	inc b			;96ac	04 	. 
	nop			;96ad	00 	. 
	ex af,af'			;96ae	08 	. 
	rst 38h			;96af	ff 	. 
	ex af,af'			;96b0	08 	. 
	ret p			;96b1	f0 	. 
	inc e			;96b2	1c 	. 
	rst 38h			;96b3	ff 	. 
	add a,h			;96b4	84 	. 
	nop			;96b5	00 	. 
	add a,b			;96b6	80 	. 
	ret nz			;96b7	c0 	. 
	ret po			;96b8	e0 	. 
	inc b			;96b9	04 	. 
	rst 38h			;96ba	ff 	. 
	inc b			;96bb	04 	. 
	nop			;96bc	00 	. 
	add a,d			;96bd	82 	. 
	ex (sp),hl			;96be	e3 	. 
	ret nz			;96bf	c0 	. 
	inc b			;96c0	04 	. 
	add a,b			;96c1	80 	. 
	adc a,h			;96c2	8c 	. 
	ret nz			;96c3	c0 	. 
	cp 0e1h		;96c4	fe e1 	. . 
	ret nz			;96c6	c0 	. 
	ld b,b			;96c7	40 	@ 
	ld b,b			;96c8	40 	@ 
	jr nz,$+35		;96c9	20 21 	  ! 
	ld hl,0ff7fh		;96cb	21 7f ff 	!  . 
	ret nz			;96ce	c0 	. 
	inc b			;96cf	04 	. 
	add a,b			;96d0	80 	. 
	add a,h			;96d1	84 	. 
	ret nz			;96d2	c0 	. 
	cp 0c1h		;96d3	fe c1 	. . 
	add a,b			;96d5	80 	. 
	inc b			;96d6	04 	. 
	nop			;96d7	00 	. 
	add a,h			;96d8	84 	. 
	add a,c			;96d9	81 	. 
	rst 0			;96da	c7 	. 
	jp 003c1h		;96db	c3 c1 03 	. . . 
	add a,c			;96de	81 	. 
	add a,d			;96df	82 	. 
	jp 003e3h		;96e0	c3 e3 03 	. . . 
	rst 38h			;96e3	ff 	. 
	adc a,(hl)			;96e4	8e 	. 
	cp 0fch		;96e5	fe fc 	. . 
	rst 38h			;96e7	ff 	. 
	cp 0fch		;96e8	fe fc 	. . 
	call m,sub_83ffh		;96ea	fc ff 83 	. . . 
	nop			;96ed	00 	. 
	nop			;96ee	00 	. 
	rst 38h			;96ef	ff 	. 
	ld a,h			;96f0	7c 	| 
	cp 0bah		;96f1	fe ba 	. . 
	inc bc			;96f3	03 	. 
	rst 38h			;96f4	ff 	. 
	add a,c			;96f5	81 	. 
	ld a,a			;96f6	7f 	 
	ld (bc),a			;96f7	02 	. 
	rst 38h			;96f8	ff 	. 
	ld (bc),a			;96f9	02 	. 
	ld a,a			;96fa	7f 	 
	add a,c			;96fb	81 	. 
	cp 004h		;96fc	fe 04 	. . 
	rst 38h			;96fe	ff 	. 
	add a,h			;96ff	84 	. 
	cp 0ffh		;9700	fe ff 	. . 
	rst 38h			;9702	ff 	. 
	ld a,h			;9703	7c 	| 
	inc b			;9704	04 	. 
	rst 38h			;9705	ff 	. 
	add a,d			;9706	82 	. 
	djnz l9742h		;9707	10 39 	. 9 
	ld (de),a			;9709	12 	. 
	rst 38h			;970a	ff 	. 
	inc bc			;970b	03 	. 
	ld a,l			;970c	7d 	} 
	rrca			;970d	0f 	. 
	rst 38h			;970e	ff 	. 
	ld (bc),a			;970f	02 	. 
	ret m			;9710	f8 	. 
	add a,d			;9711	82 	. 
	rst 38h			;9712	ff 	. 
	ret m			;9713	f8 	. 
	inc b			;9714	04 	. 
	rst 38h			;9715	ff 	. 
	ld (bc),a			;9716	02 	. 
	nop			;9717	00 	. 
	add a,d			;9718	82 	. 
	add hl,sp			;9719	39 	9 
	jr c,l9720h		;971a	38 04 	8 . 
	rst 38h			;971c	ff 	. 
	ld (bc),a			;971d	02 	. 
	ccf			;971e	3f 	? 
	add a,d			;971f	82 	. 
l9720h:
	rst 38h			;9720	ff 	. 
	ccf			;9721	3f 	? 
	add hl,de			;9722	19 	. 
	rst 38h			;9723	ff 	. 
	nop			;9724	00 	. 
	inc c			;9725	0c 	. 
	nop			;9726	00 	. 
	adc a,(hl)			;9727	8e 	. 
	inc bc			;9728	03 	. 
	rlca			;9729	07 	. 
	rra			;972a	1f 	. 
	ld a,003h		;972b	3e 03 	> . 
	rrca			;972d	0f 	. 
	ld a,0f8h		;972e	3e f8 	> . 
	ret po			;9730	e0 	. 
	ret nz			;9731	c0 	. 
	nop			;9732	00 	. 
	nop			;9733	00 	. 
	ret po			;9734	e0 	. 
	add a,b			;9735	80 	. 
	rrca			;9736	0f 	. 
	nop			;9737	00 	. 
	adc a,d			;9738	8a 	. 
	ld bc,00f07h		;9739	01 07 0f 	. . . 
	ld e,03ch		;973c	1e 3c 	. < 
	ld a,b			;973e	78 	x 
	ret p			;973f	f0 	. 
	ret m			;9740	f8 	. 
	ret p			;9741	f0 	. 
l9742h:
	ret nz			;9742	c0 	. 
	dec b			;9743	05 	. 
	nop			;9744	00 	. 
	ld (bc),a			;9745	02 	. 
	ld bc,00388h		;9746	01 88 03 	. . . 
	rlca			;9749	07 	. 
	rrca			;974a	0f 	. 
	ld c,01eh		;974b	0e 1e 	. . 
	inc a			;974d	3c 	< 
	ret po			;974e	e0 	. 
	ret nz			;974f	c0 	. 
	ld (bc),a			;9750	02 	. 
	add a,b			;9751	80 	. 
	rlca			;9752	07 	. 
	nop			;9753	00 	. 
	ld (bc),a			;9754	02 	. 
	ld bc,00302h		;9755	01 02 03 	. . . 
	add a,a			;9758	87 	. 
	rlca			;9759	07 	. 
	ld a,l			;975a	7d 	} 
	ld (hl),l			;975b	75 	u 
	push af			;975c	f5 	. 
	defb 0edh;next byte illegal after ed		;975d	ed 	. 
	ex de,hl			;975e	eb 	. 
	in a,(00ch)		;975f	db 0c 	. . 
	rst 38h			;9761	ff 	. 
	inc b			;9762	04 	. 
	nop			;9763	00 	. 
	ld (bc),a			;9764	02 	. 
	rst 38h			;9765	ff 	. 
	ex af,af'			;9766	08 	. 
	rlca			;9767	07 	. 
	ex af,af'			;9768	08 	. 
	nop			;9769	00 	. 
	inc b			;976a	04 	. 
	rst 38h			;976b	ff 	. 
	inc b			;976c	04 	. 
	cp 008h		;976d	fe 08 	. . 
	nop			;976f	00 	. 
	ld (bc),a			;9770	02 	. 
	cp 003h		;9771	fe 03 	. . 
	call m,0f803h		;9773	fc 03 f8 	. . . 
	inc bc			;9776	03 	. 
	ret p			;9777	f0 	. 
	inc bc			;9778	03 	. 
	ret po			;9779	e0 	. 
	ld (bc),a			;977a	02 	. 
	ret nz			;977b	c0 	. 
	ld (bc),a			;977c	02 	. 
	defb 0fdh,002h,0dbh	;illegal sequence		;977d	fd 02 db 	. . . 
	add a,l			;9780	85 	. 
	or a			;9781	b7 	. 
	or (hl)			;9782	b6 	. 
	ld c,h			;9783	4c 	L 
	nop			;9784	00 	. 
	ret nz			;9785	c0 	. 
	ld (bc),a			;9786	02 	. 
	add a,b			;9787	80 	. 
	ld c,c			;9788	49 	I 
	nop			;9789	00 	. 
	add a,h			;978a	84 	. 
	rst 38h			;978b	ff 	. 
	ld a,a			;978c	7f 	 
	ccf			;978d	3f 	? 
	rra			;978e	1f 	. 
	inc b			;978f	04 	. 
	nop			;9790	00 	. 
	inc b			;9791	04 	. 
	rst 38h			;9792	ff 	. 
	and a			;9793	a7 	. 
	inc e			;9794	1c 	. 
	ccf			;9795	3f 	? 
	ld (hl),l			;9796	75 	u 
	ld h,e			;9797	63 	c 
	ld (hl),l			;9798	75 	u 
	ld a,a			;9799	7f 	 
	ccf			;979a	3f 	? 
	ld bc,0331eh		;979b	01 1e 33 	. . 3 
	or a			;979e	b7 	. 
	xor e			;979f	ab 	. 
	rst 10h			;97a0	d7 	. 
	sbc a,0deh		;97a1	de de 	. . 
	add a,b			;97a3	80 	. 
	nop			;97a4	00 	. 
	ccf			;97a5	3f 	? 
	ld (hl),l			;97a6	75 	u 
	ld h,e			;97a7	63 	c 
	ld (hl),l			;97a8	75 	u 
	ld a,a			;97a9	7f 	 
	ccf			;97aa	3f 	? 
	ld bc,06b3eh		;97ab	01 3e 6b 	. > k 
	rst 0			;97ae	c7 	. 
	ex de,hl			;97af	eb 	. 
	rst 10h			;97b0	d7 	. 
	rst 38h			;97b1	ff 	. 
	ld a,(hl)			;97b2	7e 	~ 
	jr c,l97e9h		;97b3	38 34 	8 4 
	ld (06a56h),hl		;97b5	22 56 6a 	" V j 
	halt			;97b8	76 	v 
	inc a			;97b9	3c 	< 
	inc e			;97ba	1c 	. 
	ld e,000h		;97bb	1e 00 	. . 
	add a,e			;97bd	83 	. 
	inc b			;97be	04 	. 
	ld e,03bh		;97bf	1e 3b 	. ; 
	rlca			;97c1	07 	. 
	nop			;97c2	00 	. 
	add a,c			;97c3	81 	. 
	ld bc,00005h		;97c4	01 05 00 	. . . 
	adc a,b			;97c7	88 	. 
	ld b,b			;97c8	40 	@ 
	ret p			;97c9	f0 	. 
	cp b			;97ca	b8 	. 
	jr c,l980ch		;97cb	38 3f 	8 ? 
	rra			;97cd	1f 	. 
	rlca			;97ce	07 	. 
	nop			;97cf	00 	. 
	inc bc			;97d0	03 	. 
	rlca			;97d1	07 	. 
	add a,c			;97d2	81 	. 
	nop			;97d3	00 	. 
	inc bc			;97d4	03 	. 
l97d5h:
	ld bc,01081h		;97d5	01 81 10 	. . . 
	inc bc			;97d8	03 	. 
	rst 38h			;97d9	ff 	. 
	add a,l			;97da	85 	. 
	jr c,l97d5h		;97db	38 f8 	8 . 
	ret p			;97dd	f0 	. 
	ret nz			;97de	c0 	. 
	nop			;97df	00 	. 
	inc bc			;97e0	03 	. 
	ret nz			;97e1	c0 	. 
	inc bc			;97e2	03 	. 
	rlca			;97e3	07 	. 
	inc bc			;97e4	03 	. 
	nop			;97e5	00 	. 
	add a,d			;97e6	82 	. 
	rlca			;97e7	07 	. 
	nop			;97e8	00 	. 
l97e9h:
	inc bc			;97e9	03 	. 
	rst 38h			;97ea	ff 	. 
	ld (bc),a			;97eb	02 	. 
	nop			;97ec	00 	. 
	add a,e			;97ed	83 	. 
	add a,0c7h		;97ee	c6 c7 	. . 
	nop			;97f0	00 	. 
	inc bc			;97f1	03 	. 
	ret nz			;97f2	c0 	. 
	inc bc			;97f3	03 	. 
	nop			;97f4	00 	. 
	add a,c			;97f5	81 	. 
	ret nz			;97f6	c0 	. 
	ld de,l8100h		;97f7	11 00 81 	. . . 
	inc bc			;97fa	03 	. 
	ld (bc),a			;97fb	02 	. 
	ld bc,00005h		;97fc	01 05 00 	. . . 
	nop			;97ff	00 	. 
l9800h:
	ld (hl),c			;9800	71 	q 
	ld h,b			;9801	60 	` 
	ld (hl),d			;9802	72 	r 
	ld h,b			;9803	60 	` 
	ld (hl),e			;9804	73 	s 
	ld h,b			;9805	60 	` 
	ld (hl),c			;9806	71 	q 
	ld h,d			;9807	62 	b 
	ld (hl),h			;9808	74 	t 
	ld h,b			;9809	60 	` 
	ld (hl),l			;980a	75 	u 
	ld h,b			;980b	60 	` 
l980ch:
	halt			;980c	76 	v 
	ld h,b			;980d	60 	` 
	ld (hl),a			;980e	77 	w 
	ld h,b			;980f	60 	` 
	ld a,b			;9810	78 	x 
	ld h,b			;9811	60 	` 
	ld a,c			;9812	79 	y 
	ld h,b			;9813	60 	` 
	ld a,d			;9814	7a 	z 
	ld h,b			;9815	60 	` 
	ld a,b			;9816	78 	x 
	ld h,d			;9817	62 	b 
	ld a,e			;9818	7b 	{ 
	ld h,b			;9819	60 	` 
	ld (hl),b			;981a	70 	p 
	ld h,b			;981b	60 	` 
	ld (hl),b			;981c	70 	p 
	ld h,b			;981d	60 	` 
	ld a,e			;981e	7b 	{ 
	ld h,d			;981f	62 	b 
	ld a,h			;9820	7c 	| 
	ld h,b			;9821	60 	` 
	ld (hl),b			;9822	70 	p 
	ld h,b			;9823	60 	` 
	ld (hl),b			;9824	70 	p 
	ld h,b			;9825	60 	` 
	ld a,h			;9826	7c 	| 
	ld h,d			;9827	62 	b 
	ld a,h			;9828	7c 	| 
	ld h,b			;9829	60 	` 
	ld (hl),b			;982a	70 	p 
	ld h,b			;982b	60 	` 
	ld (hl),b			;982c	70 	p 
	ld h,b			;982d	60 	` 
	ld a,h			;982e	7c 	| 
	ld h,d			;982f	62 	b 
	ld a,h			;9830	7c 	| 
	ld h,b			;9831	60 	` 
	ld (hl),b			;9832	70 	p 
	ld h,b			;9833	60 	` 
	ld (hl),b			;9834	70 	p 
	ld h,b			;9835	60 	` 
	ld a,h			;9836	7c 	| 
	ld h,d			;9837	62 	b 
	ld a,h			;9838	7c 	| 
	ld h,b			;9839	60 	` 
	ld (hl),b			;983a	70 	p 
	ld h,b			;983b	60 	` 
	ld (hl),b			;983c	70 	p 
	ld h,b			;983d	60 	` 
	ld a,h			;983e	7c 	| 
	ld h,d			;983f	62 	b 
	add hl,bc			;9840	09 	. 
	nop			;9841	00 	. 
	ld (bc),a			;9842	02 	. 
	ld a,a			;9843	7f 	 
	dec b			;9844	05 	. 
	ld h,b			;9845	60 	` 
	add a,c			;9846	81 	. 
	nop			;9847	00 	. 
	ld (bc),a			;9848	02 	. 
	rst 38h			;9849	ff 	. 
	ld b,000h		;984a	06 00 	. . 
	ld (bc),a			;984c	02 	. 
	rst 38h			;984d	ff 	. 
	dec b			;984e	05 	. 
	nop			;984f	00 	. 
	ex af,af'			;9850	08 	. 
	ld h,b			;9851	60 	` 
	djnz l9854h		;9852	10 00 	. . 
l9854h:
	ex af,af'			;9854	08 	. 
	ld b,008h		;9855	06 08 	. . 
	ld h,b			;9857	60 	` 
	djnz l985ah		;9858	10 00 	. . 
l985ah:
	djnz l98bch		;985a	10 60 	. ` 
	nop			;985c	00 	. 
	ex af,af'			;985d	08 	. 
	nop			;985e	00 	. 
	add a,h			;985f	84 	. 
	rst 38h			;9860	ff 	. 
	add a,b			;9861	80 	. 
	add a,b			;9862	80 	. 
	sbc a,a			;9863	9f 	. 
	inc b			;9864	04 	. 
	sub b			;9865	90 	. 
	add a,h			;9866	84 	. 
	rst 38h			;9867	ff 	. 
	nop			;9868	00 	. 
	nop			;9869	00 	. 
	rst 38h			;986a	ff 	. 
	inc b			;986b	04 	. 
	nop			;986c	00 	. 
	add a,h			;986d	84 	. 
	rst 38h			;986e	ff 	. 
	nop			;986f	00 	. 
	nop			;9870	00 	. 
	rst 38h			;9871	ff 	. 
	inc b			;9872	04 	. 
	inc b			;9873	04 	. 
	ex af,af'			;9874	08 	. 
	sub b			;9875	90 	. 
	rlca			;9876	07 	. 
	nop			;9877	00 	. 
	add a,c			;9878	81 	. 
	ld (bc),a			;9879	02 	. 
	inc b			;987a	04 	. 
	ex af,af'			;987b	08 	. 
	inc bc			;987c	03 	. 
	djnz l9800h		;987d	10 81 	. . 
	jr nz,l9889h		;987f	20 08 	  . 
	add hl,bc			;9881	09 	. 
	add a,c			;9882	81 	. 
	sub b			;9883	90 	. 
	inc bc			;9884	03 	. 
	sub h			;9885	94 	. 
	sub h			;9886	94 	. 
	sub l			;9887	95 	. 
	sub d			;9888	92 	. 
l9889h:
	sub c			;9889	91 	. 
	sbc a,a			;988a	9f 	. 
	inc b			;988b	04 	. 
	inc b			;988c	04 	. 
	adc a,b			;988d	88 	. 
	sub c			;988e	91 	. 
	ld h,d			;988f	62 	b 
	adc a,h			;9890	8c 	. 
	ret p			;9891	f0 	. 
	nop			;9892	00 	. 
	ld (0e142h),hl		;9893	22 42 e1 	" B . 
	ld de,00408h		;9896	11 08 04 	. . . 
	inc bc			;9899	03 	. 
	nop			;989a	00 	. 
	inc b			;989b	04 	. 
	sub c			;989c	91 	. 
	ld (bc),a			;989d	02 	. 
	sub d			;989e	92 	. 
	add a,d			;989f	82 	. 
	sub h			;98a0	94 	. 
	sbc a,b			;98a1	98 	. 
	ex af,af'			;98a2	08 	. 
	sub b			;98a3	90 	. 
	nop			;98a4	00 	. 
	add hl,bc			;98a5	09 	. 
	nop			;98a6	00 	. 
	ld (bc),a			;98a7	02 	. 
	ld a,a			;98a8	7f 	 
	add a,c			;98a9	81 	. 
	ld h,b			;98aa	60 	` 
	inc b			;98ab	04 	. 
	ld l,a			;98ac	6f 	o 
	add a,h			;98ad	84 	. 
	nop			;98ae	00 	. 
	rst 38h			;98af	ff 	. 
	rst 38h			;98b0	ff 	. 
	nop			;98b1	00 	. 
	inc b			;98b2	04 	. 
	rst 38h			;98b3	ff 	. 
	add a,h			;98b4	84 	. 
	nop			;98b5	00 	. 
	rst 38h			;98b6	ff 	. 
	rst 38h			;98b7	ff 	. 
	nop			;98b8	00 	. 
	inc b			;98b9	04 	. 
	rst 38h			;98ba	ff 	. 
	rlca			;98bb	07 	. 
l98bch:
	ld l,a			;98bc	6f 	o 
	add a,c			;98bd	81 	. 
	ld a,a			;98be	7f 	 
	djnz $+1		;98bf	10 ff 	. . 
	ex af,af'			;98c1	08 	. 
	or 008h		;98c2	f6 08 	. . 
	ld l,a			;98c4	6f 	o 
	inc b			;98c5	04 	. 
	rst 38h			;98c6	ff 	. 
	add a,h			;98c7	84 	. 
	cp 0fch		;98c8	fe fc 	. . 
	ret p			;98ca	f0 	. 
	nop			;98cb	00 	. 
	inc bc			;98cc	03 	. 
	rst 38h			;98cd	ff 	. 
	add a,l			;98ce	85 	. 
	rra			;98cf	1f 	. 
	rrca			;98d0	0f 	. 
	rlca			;98d1	07 	. 
	inc bc			;98d2	03 	. 
	nop			;98d3	00 	. 
	inc b			;98d4	04 	. 
	ld l,a			;98d5	6f 	o 
	ld (bc),a			;98d6	02 	. 
	ld l,(hl)			;98d7	6e 	n 
	add a,d			;98d8	82 	. 
	ld l,h			;98d9	6c 	l 
	ld l,b			;98da	68 	h 
	ex af,af'			;98db	08 	. 
	ld h,b			;98dc	60 	` 
	nop			;98dd	00 	. 
	ex af,af'			;98de	08 	. 
	nop			;98df	00 	. 
	add a,c			;98e0	81 	. 
	rst 38h			;98e1	ff 	. 
	ld (bc),a			;98e2	02 	. 
	add a,b			;98e3	80 	. 
	dec b			;98e4	05 	. 
	sbc a,a			;98e5	9f 	. 
	add a,c			;98e6	81 	. 
	rst 38h			;98e7	ff 	. 
	ld (bc),a			;98e8	02 	. 
	nop			;98e9	00 	. 
	ld b,0ffh		;98ea	06 ff 	. . 
	ld (bc),a			;98ec	02 	. 
	nop			;98ed	00 	. 
	add a,c			;98ee	81 	. 
	rst 38h			;98ef	ff 	. 
	inc b			;98f0	04 	. 
	ei			;98f1	fb 	. 
	rlca			;98f2	07 	. 
	sbc a,a			;98f3	9f 	. 
	add a,c			;98f4	81 	. 
	adc a,a			;98f5	8f 	. 
	rlca			;98f6	07 	. 
	rst 38h			;98f7	ff 	. 
	add a,c			;98f8	81 	. 
	defb 0fdh,004h,0f7h	;illegal sequence		;98f9	fd 04 f7 	. . . 
	inc bc			;98fc	03 	. 
	rst 28h			;98fd	ef 	. 
	add a,c			;98fe	81 	. 
	rst 18h			;98ff	df 	. 
	ex af,af'			;9900	08 	. 
	ld sp,hl			;9901	f9 	. 
	add a,c			;9902	81 	. 
	sbc a,a			;9903	9f 	. 
	inc bc			;9904	03 	. 
	sbc a,e			;9905	9b 	. 
	sub d			;9906	92 	. 
	sbc a,d			;9907	9a 	. 
	sbc a,l			;9908	9d 	. 
	sbc a,(hl)			;9909	9e 	. 
	sub b			;990a	90 	. 
	ei			;990b	fb 	. 
	ei			;990c	fb 	. 
	ld (hl),a			;990d	77 	w 
	ld l,(hl)			;990e	6e 	n 
	sbc a,h			;990f	9c 	. 
	ld (hl),b			;9910	70 	p 
	nop			;9911	00 	. 
	nop			;9912	00 	. 
	defb 0ddh,0bdh	;cp ixl		;9913	dd bd 	. . 
	ld e,00eh		;9915	1e 0e 	. . 
	rlca			;9917	07 	. 
	inc bc			;9918	03 	. 
	ld (bc),a			;9919	02 	. 
	nop			;991a	00 	. 
	inc b			;991b	04 	. 
	sbc a,(hl)			;991c	9e 	. 
	ld (bc),a			;991d	02 	. 
	sbc a,h			;991e	9c 	. 
	add a,c			;991f	81 	. 
	sbc a,b			;9920	98 	. 
	add hl,bc			;9921	09 	. 
	sub b			;9922	90 	. 
	nop			;9923	00 	. 
	nop			;9924	00 	. 
	nop			;9925	00 	. 
	nop			;9926	00 	. 
	nop			;9927	00 	. 
	nop			;9928	00 	. 
	nop			;9929	00 	. 
	nop			;992a	00 	. 
	nop			;992b	00 	. 
	nop			;992c	00 	. 
	nop			;992d	00 	. 
	ld bc,00000h		;992e	01 00 00 	. . . 
	nop			;9931	00 	. 
	nop			;9932	00 	. 
	nop			;9933	00 	. 
	ld (bc),a			;9934	02 	. 
	nop			;9935	00 	. 
	inc bc			;9936	03 	. 
	nop			;9937	00 	. 
	inc b			;9938	04 	. 
l9939h:
	nop			;9939	00 	. 
	nop			;993a	00 	. 
	nop			;993b	00 	. 
	nop			;993c	00 	. 
	nop			;993d	00 	. 
	nop			;993e	00 	. 
	nop			;993f	00 	. 
	nop			;9940	00 	. 
	nop			;9941	00 	. 
	ld (bc),a			;9942	02 	. 
	nop			;9943	00 	. 
	inc bc			;9944	03 	. 
	nop			;9945	00 	. 
	dec b			;9946	05 	. 
	nop			;9947	00 	. 
	ld b,000h		;9948	06 00 	. . 
	rlca			;994a	07 	. 
	nop			;994b	00 	. 
	ex af,af'			;994c	08 	. 
	nop			;994d	00 	. 
	dec b			;994e	05 	. 
	nop			;994f	00 	. 
	add hl,bc			;9950	09 	. 
	nop			;9951	00 	. 
	ld a,(bc)			;9952	0a 	. 
	nop			;9953	00 	. 
	nop			;9954	00 	. 
	nop			;9955	00 	. 
	nop			;9956	00 	. 
	nop			;9957	00 	. 
	rlca			;9958	07 	. 
	nop			;9959	00 	. 
	ex af,af'			;995a	08 	. 
	nop			;995b	00 	. 
	dec b			;995c	05 	. 
	nop			;995d	00 	. 
	dec b			;995e	05 	. 
	nop			;995f	00 	. 
	dec b			;9960	05 	. 
	nop			;9961	00 	. 
	dec b			;9962	05 	. 
	nop			;9963	00 	. 
	dec b			;9964	05 	. 
	nop			;9965	00 	. 
	dec b			;9966	05 	. 
	nop			;9967	00 	. 
	dec b			;9968	05 	. 
	nop			;9969	00 	. 
	dec bc			;996a	0b 	. 
	nop			;996b	00 	. 
	nop			;996c	00 	. 
	nop			;996d	00 	. 
	ld b,002h		;996e	06 02 	. . 
	dec b			;9970	05 	. 
	nop			;9971	00 	. 
	dec b			;9972	05 	. 
	nop			;9973	00 	. 
	dec b			;9974	05 	. 
	nop			;9975	00 	. 
	dec b			;9976	05 	. 
	nop			;9977	00 	. 
	dec b			;9978	05 	. 
	nop			;9979	00 	. 
	dec b			;997a	05 	. 
	nop			;997b	00 	. 
	inc c			;997c	0c 	. 
	nop			;997d	00 	. 
	dec c			;997e	0d 	. 
	nop			;997f	00 	. 
	dec b			;9980	05 	. 
	nop			;9981	00 	. 
	ld c,000h		;9982	0e 00 	. . 
	inc b			;9984	04 	. 
	ld (bc),a			;9985	02 	. 
	dec b			;9986	05 	. 
	nop			;9987	00 	. 
	rrca			;9988	0f 	. 
	nop			;9989	00 	. 
	djnz l998ch		;998a	10 00 	. . 
l998ch:
	dec b			;998c	05 	. 
	nop			;998d	00 	. 
	dec b			;998e	05 	. 
	nop			;998f	00 	. 
	dec b			;9990	05 	. 
	nop			;9991	00 	. 
	dec b			;9992	05 	. 
	nop			;9993	00 	. 
	ld de,01200h		;9994	11 00 12 	. . . 
	nop			;9997	00 	. 
	dec b			;9998	05 	. 
	nop			;9999	00 	. 
	ld c,000h		;999a	0e 00 	. . 
	inc de			;999c	13 	. 
	nop			;999d	00 	. 
	dec b			;999e	05 	. 
	nop			;999f	00 	. 
	inc d			;99a0	14 	. 
	nop			;99a1	00 	. 
	dec d			;99a2	15 	. 
	nop			;99a3	00 	. 
	dec b			;99a4	05 	. 
	nop			;99a5	00 	. 
	inc c			;99a6	0c 	. 
	nop			;99a7	00 	. 
	dec c			;99a8	0d 	. 
	nop			;99a9	00 	. 
	dec b			;99aa	05 	. 
	nop			;99ab	00 	. 
	dec b			;99ac	05 	. 
	nop			;99ad	00 	. 
	dec b			;99ae	05 	. 
	nop			;99af	00 	. 
	dec b			;99b0	05 	. 
	nop			;99b1	00 	. 
	ld d,000h		;99b2	16 00 	. . 
	ld c,002h		;99b4	0e 02 	. . 
	dec b			;99b6	05 	. 
	nop			;99b7	00 	. 
	dec b			;99b8	05 	. 
	nop			;99b9	00 	. 
	dec b			;99ba	05 	. 
	nop			;99bb	00 	. 
	dec b			;99bc	05 	. 
	nop			;99bd	00 	. 
	ld de,01200h		;99be	11 00 12 	. . . 
	nop			;99c1	00 	. 
	dec b			;99c2	05 	. 
	nop			;99c3	00 	. 
	rla			;99c4	17 	. 
	nop			;99c5	00 	. 
	rla			;99c6	17 	. 
	ld (bc),a			;99c7	02 	. 
	dec b			;99c8	05 	. 
	nop			;99c9	00 	. 
	jr l99cch		;99ca	18 00 	. . 
l99cch:
	ld c,002h		;99cc	0e 02 	. . 
	dec b			;99ce	05 	. 
	nop			;99cf	00 	. 
	add hl,de			;99d0	19 	. 
	nop			;99d1	00 	. 
	ld a,(de)			;99d2	1a 	. 
	nop			;99d3	00 	. 
	dec b			;99d4	05 	. 
	nop			;99d5	00 	. 
	dec b			;99d6	05 	. 
	nop			;99d7	00 	. 
	dec b			;99d8	05 	. 
	nop			;99d9	00 	. 
	dec b			;99da	05 	. 
	nop			;99db	00 	. 
	dec de			;99dc	1b 	. 
	nop			;99dd	00 	. 
	dec de			;99de	1b 	. 
	ld (bc),a			;99df	02 	. 
	dec b			;99e0	05 	. 
	nop			;99e1	00 	. 
	inc b			;99e2	04 	. 
	nop			;99e3	00 	. 
	inc e			;99e4	1c 	. 
	nop			;99e5	00 	. 
	dec b			;99e6	05 	. 
	nop			;99e7	00 	. 
	dec e			;99e8	1d 	. 
	nop			;99e9	00 	. 
	ld e,000h		;99ea	1e 00 	. . 
	dec b			;99ec	05 	. 
	nop			;99ed	00 	. 
	rra			;99ee	1f 	. 
	nop			;99ef	00 	. 
	jr nz,l99f2h		;99f0	20 00 	  . 
l99f2h:
	dec b			;99f2	05 	. 
	nop			;99f3	00 	. 
	dec b			;99f4	05 	. 
	nop			;99f5	00 	. 
	dec b			;99f6	05 	. 
	nop			;99f7	00 	. 
	dec b			;99f8	05 	. 
	nop			;99f9	00 	. 
	ld hl,02200h		;99fa	21 00 22 	! . " 
	nop			;99fd	00 	. 
	dec b			;99fe	05 	. 
	nop			;99ff	00 	. 
	dec b			;9a00	05 	. 
	nop			;9a01	00 	. 
	dec b			;9a02	05 	. 
	nop			;9a03	00 	. 
	dec b			;9a04	05 	. 
	nop			;9a05	00 	. 
	inc hl			;9a06	23 	# 
	nop			;9a07	00 	. 
	inc h			;9a08	24 	$ 
	nop			;9a09	00 	. 
	dec b			;9a0a	05 	. 
	nop			;9a0b	00 	. 
	rra			;9a0c	1f 	. 
	nop			;9a0d	00 	. 
	jr nz,l9a10h		;9a0e	20 00 	  . 
l9a10h:
	dec b			;9a10	05 	. 
	nop			;9a11	00 	. 
	ld hl,00400h		;9a12	21 00 04 	! . . 
	ld (bc),a			;9a15	02 	. 
	dec b			;9a16	05 	. 
	nop			;9a17	00 	. 
	rrca			;9a18	0f 	. 
	nop			;9a19	00 	. 
	djnz l9a1ch		;9a1a	10 00 	. . 
l9a1ch:
	dec b			;9a1c	05 	. 
	nop			;9a1d	00 	. 
	dec b			;9a1e	05 	. 
	nop			;9a1f	00 	. 
	dec b			;9a20	05 	. 
	nop			;9a21	00 	. 
	dec b			;9a22	05 	. 
	nop			;9a23	00 	. 
	inc hl			;9a24	23 	# 
	nop			;9a25	00 	. 
	inc h			;9a26	24 	$ 
	nop			;9a27	00 	. 
	dec b			;9a28	05 	. 
	nop			;9a29	00 	. 
	dec h			;9a2a	25 	% 
	nop			;9a2b	00 	. 
	ld hl,00502h		;9a2c	21 02 05 	! . . 
	nop			;9a2f	00 	. 
	inc d			;9a30	14 	. 
	nop			;9a31	00 	. 
	dec d			;9a32	15 	. 
	nop			;9a33	00 	. 
	dec b			;9a34	05 	. 
	nop			;9a35	00 	. 
	rla			;9a36	17 	. 
	nop			;9a37	00 	. 
	rla			;9a38	17 	. 
	ld (bc),a			;9a39	02 	. 
	dec b			;9a3a	05 	. 
	nop			;9a3b	00 	. 
	dec b			;9a3c	05 	. 
	nop			;9a3d	00 	. 
	dec b			;9a3e	05 	. 
	nop			;9a3f	00 	. 
	dec b			;9a40	05 	. 
	nop			;9a41	00 	. 
	ld c,000h		;9a42	0e 00 	. . 
	dec h			;9a44	25 	% 
	ld (bc),a			;9a45	02 	. 
	dec b			;9a46	05 	. 
	nop			;9a47	00 	. 
	dec b			;9a48	05 	. 
	nop			;9a49	00 	. 
	dec b			;9a4a	05 	. 
	nop			;9a4b	00 	. 
	dec b			;9a4c	05 	. 
	nop			;9a4d	00 	. 
	dec de			;9a4e	1b 	. 
	nop			;9a4f	00 	. 
	dec de			;9a50	1b 	. 
	ld (bc),a			;9a51	02 	. 
	dec b			;9a52	05 	. 
	nop			;9a53	00 	. 
	add hl,de			;9a54	19 	. 
	nop			;9a55	00 	. 
	ld a,(de)			;9a56	1a 	. 
	nop			;9a57	00 	. 
	dec b			;9a58	05 	. 
	nop			;9a59	00 	. 
	ld c,000h		;9a5a	0e 00 	. . 
	ld c,002h		;9a5c	0e 02 	. . 
	dec b			;9a5e	05 	. 
	nop			;9a5f	00 	. 
	ld h,000h		;9a60	26 00 	& . 
	daa			;9a62	27 	' 
	nop			;9a63	00 	. 
	dec b			;9a64	05 	. 
	nop			;9a65	00 	. 
	dec b			;9a66	05 	. 
	nop			;9a67	00 	. 
	dec b			;9a68	05 	. 
	nop			;9a69	00 	. 
	dec b			;9a6a	05 	. 
	nop			;9a6b	00 	. 
	dec e			;9a6c	1d 	. 
	nop			;9a6d	00 	. 
	ld e,000h		;9a6e	1e 00 	. . 
	dec b			;9a70	05 	. 
	nop			;9a71	00 	. 
	ld c,000h		;9a72	0e 00 	. . 
	dec bc			;9a74	0b 	. 
	ld b,005h		;9a75	06 05 	. . 
	nop			;9a77	00 	. 
	jr z,l9a7ah		;9a78	28 00 	( . 
l9a7ah:
	add hl,hl			;9a7a	29 	) 
	nop			;9a7b	00 	. 
	dec b			;9a7c	05 	. 
	nop			;9a7d	00 	. 
	dec b			;9a7e	05 	. 
	nop			;9a7f	00 	. 
	dec b			;9a80	05 	. 
	nop			;9a81	00 	. 
	dec b			;9a82	05 	. 
	nop			;9a83	00 	. 
	dec b			;9a84	05 	. 
	nop			;9a85	00 	. 
	dec b			;9a86	05 	. 
	nop			;9a87	00 	. 
	dec b			;9a88	05 	. 
	nop			;9a89	00 	. 
	dec bc			;9a8a	0b 	. 
	inc b			;9a8b	04 	. 
	ld a,(bc)			;9a8c	0a 	. 
	ld b,009h		;9a8d	06 09 	. . 
	ld b,005h		;9a8f	06 05 	. . 
	nop			;9a91	00 	. 
	dec b			;9a92	05 	. 
	nop			;9a93	00 	. 
	dec b			;9a94	05 	. 
	nop			;9a95	00 	. 
	dec b			;9a96	05 	. 
	nop			;9a97	00 	. 
	ld hl,(02b00h)		;9a98	2a 00 2b 	* . + 
	nop			;9a9b	00 	. 
	inc l			;9a9c	2c 	, 
	nop			;9a9d	00 	. 
	dec l			;9a9e	2d 	- 
	nop			;9a9f	00 	. 
	add hl,bc			;9aa0	09 	. 
	inc b			;9aa1	04 	. 
	ld a,(bc)			;9aa2	0a 	. 
	inc b			;9aa3	04 	. 
	nop			;9aa4	00 	. 
	nop			;9aa5	00 	. 
	inc b			;9aa6	04 	. 
	ld b,005h		;9aa7	06 05 	. . 
	nop			;9aa9	00 	. 
	ld l,000h		;9aaa	2e 00 	. . 
	cpl			;9aac	2f 	/ 
	nop			;9aad	00 	. 
	jr nc,l9ab0h		;9aae	30 00 	0 . 
l9ab0h:
	ld sp,00000h		;9ab0	31 00 00 	1 . . 
	nop			;9ab3	00 	. 
	nop			;9ab4	00 	. 
	nop			;9ab5	00 	. 
	ld (03300h),a		;9ab6	32 00 33 	2 . 3 
	nop			;9ab9	00 	. 
	nop			;9aba	00 	. 
	nop			;9abb	00 	. 
	nop			;9abc	00 	. 
	nop			;9abd	00 	. 
	nop			;9abe	00 	. 
	nop			;9abf	00 	. 
	inc (hl)			;9ac0	34 	4 
	nop			;9ac1	00 	. 
	dec (hl)			;9ac2	35 	5 
	nop			;9ac3	00 	. 
	ld (hl),000h		;9ac4	36 00 	6 . 
	nop			;9ac6	00 	. 
	nop			;9ac7	00 	. 
	nop			;9ac8	00 	. 
	nop			;9ac9	00 	. 
	nop			;9aca	00 	. 
	nop			;9acb	00 	. 
	nop			;9acc	00 	. 
	nop			;9acd	00 	. 
	nop			;9ace	00 	. 
	nop			;9acf	00 	. 
	nop			;9ad0	00 	. 
	nop			;9ad1	00 	. 
	nop			;9ad2	00 	. 
	nop			;9ad3	00 	. 
	dec c			;9ad4	0d 	. 
	nop			;9ad5	00 	. 
	add a,e			;9ad6	83 	. 
	ex af,af'			;9ad7	08 	. 
	inc e			;9ad8	1c 	. 
	rst 38h			;9ad9	ff 	. 
	dec b			;9ada	05 	. 
	nop			;9adb	00 	. 
	add a,a			;9adc	87 	. 
	ld bc,00f07h		;9add	01 07 0f 	. . . 
	inc bc			;9ae0	03 	. 
	rlca			;9ae1	07 	. 
	rra			;9ae2	1f 	. 
	ccf			;9ae3	3f 	? 
	inc b			;9ae4	04 	. 
	rst 38h			;9ae5	ff 	. 
	adc a,b			;9ae6	88 	. 
	add a,b			;9ae7	80 	. 
	ret nz			;9ae8	c0 	. 
	ret nz			;9ae9	c0 	. 
	ret po			;9aea	e0 	. 
	ret p			;9aeb	f0 	. 
	ret p			;9aec	f0 	. 
	ret m			;9aed	f8 	. 
	call m,0ff08h		;9aee	fc 08 ff 	. . . 
	sub d			;9af1	92 	. 
	add a,b			;9af2	80 	. 
	ret nz			;9af3	c0 	. 
	ret po			;9af4	e0 	. 
	ret p			;9af5	f0 	. 
	ret m			;9af6	f8 	. 
	call m,0fffeh		;9af7	fc fe ff 	. . . 
	nop			;9afa	00 	. 
	nop			;9afb	00 	. 
	ld bc,00f03h		;9afc	01 03 0f 	. . . 
	rra			;9aff	1f 	. 
	ld a,a			;9b00	7f 	 
	rst 38h			;9b01	ff 	. 
	ccf			;9b02	3f 	? 
	ld a,a			;9b03	7f 	 
	ld b,0ffh		;9b04	06 ff 	. . 
	add a,d			;9b06	82 	. 
	call m,006feh		;9b07	fc fe 06 	. . . 
	rst 38h			;9b0a	ff 	. 
	inc b			;9b0b	04 	. 
	nop			;9b0c	00 	. 
	adc a,d			;9b0d	8a 	. 
	add a,b			;9b0e	80 	. 
	ret nz			;9b0f	c0 	. 
	ret nz			;9b10	c0 	. 
	ret po			;9b11	e0 	. 
	ret p			;9b12	f0 	. 
	ret p			;9b13	f0 	. 
	ret m			;9b14	f8 	. 
	call m,0fefch		;9b15	fc fc fe 	. . . 
	ld a,(l82ffh)		;9b18	3a ff 82 	: . . 
	ccf			;9b1b	3f 	? 
	ld a,a			;9b1c	7f 	 
	add hl,de			;9b1d	19 	. 
	rst 38h			;9b1e	ff 	. 
	ld (bc),a			;9b1f	02 	. 
	defb 0fdh,083h,0f9h	;illegal sequence		;9b20	fd 83 f9 	. . . 
	pop af			;9b23	f1 	. 
	jp p,0ff08h		;9b24	f2 08 ff 	. . . 
	add a,h			;9b27	84 	. 
	call po,0c8c8h		;9b28	e4 c8 c8 	. . . 
	sub b			;9b2b	90 	. 
	ld (bc),a			;9b2c	02 	. 
	and b			;9b2d	a0 	. 
	ld (bc),a			;9b2e	02 	. 
	ret nz			;9b2f	c0 	. 
	add hl,de			;9b30	19 	. 
	rst 38h			;9b31	ff 	. 
	add a,l			;9b32	85 	. 
	cp a			;9b33	bf 	. 
	ld e,a			;9b34	5f 	_ 
	ld c,a			;9b35	4f 	O 
	daa			;9b36	27 	' 
	inc de			;9b37	13 	. 
	ld (bc),a			;9b38	02 	. 
	add hl,bc			;9b39	09 	. 
	jr nz,$+1		;9b3a	20 ff 	  . 
	ex af,af'			;9b3c	08 	. 
	call m,00502h		;9b3d	fc 02 05 	. . . 
	ld (bc),a			;9b40	02 	. 
	inc bc			;9b41	03 	. 
	inc b			;9b42	04 	. 
l9b43h:
	ld bc,0ff10h		;9b43	01 10 ff 	. . . 
	ex af,af'			;9b46	08 	. 
	cp 081h		;9b47	fe 81 	. . 
	rst 38h			;9b49	ff 	. 
	ld (bc),a			;9b4a	02 	. 
	cp 006h		;9b4b	fe 06 	. . 
	rst 38h			;9b4d	ff 	. 
	ld (bc),a			;9b4e	02 	. 
	ld a,a			;9b4f	7f 	 
	rlca			;9b50	07 	. 
	rst 38h			;9b51	ff 	. 
	ld (bc),a			;9b52	02 	. 
	cp 082h		;9b53	fe 82 	. . 
	rst 38h			;9b55	ff 	. 
	ret p			;9b56	f0 	. 
	inc b			;9b57	04 	. 
	rst 38h			;9b58	ff 	. 
	ld (bc),a			;9b59	02 	. 
	ld a,a			;9b5a	7f 	 
	add a,d			;9b5b	82 	. 
	rst 38h			;9b5c	ff 	. 
	rrca			;9b5d	0f 	. 
	dec b			;9b5e	05 	. 
	rst 38h			;9b5f	ff 	. 
	sub l			;9b60	95 	. 
	call m,0e0f8h		;9b61	fc f8 e0 	. . . 
	ret nz			;9b64	c0 	. 
	add a,b			;9b65	80 	. 
	rst 38h			;9b66	ff 	. 
	ret m			;9b67	f8 	. 
	add a,b			;9b68	80 	. 
	nop			;9b69	00 	. 
	ld bc,03806h		;9b6a	01 06 38 	. . 8 
	ret nz			;9b6d	c0 	. 
	rst 38h			;9b6e	ff 	. 
	rra			;9b6f	1f 	. 
	inc de			;9b70	13 	. 
	djnz l9b43h		;9b71	10 d0 	. . 
	jr nc,$+14		;9b73	30 0c 	0 . 
	inc bc			;9b75	03 	. 
	inc b			;9b76	04 	. 
	rst 38h			;9b77	ff 	. 
	add a,h			;9b78	84 	. 
	ld a,a			;9b79	7f 	 
	ccf			;9b7a	3f 	? 
	rra			;9b7b	1f 	. 
	rrca			;9b7c	0f 	. 
	dec b			;9b7d	05 	. 
	rst 38h			;9b7e	ff 	. 
	add a,e			;9b7f	83 	. 
	cp 0f8h		;9b80	fe f8 	. . 
	ret po			;9b82	e0 	. 
	inc bc			;9b83	03 	. 
	rst 38h			;9b84	ff 	. 
	add a,d			;9b85	82 	. 
	ret p			;9b86	f0 	. 
	add a,b			;9b87	80 	. 
	inc bc			;9b88	03 	. 
	nop			;9b89	00 	. 
	or e			;9b8a	b3 	. 
	rst 38h			;9b8b	ff 	. 
	ret m			;9b8c	f8 	. 
	ret z			;9b8d	c8 	. 
	ex af,af'			;9b8e	08 	. 
	inc b			;9b8f	04 	. 
	dec b			;9b90	05 	. 
	ld (bc),a			;9b91	02 	. 
	call m,00601h		;9b92	fc 01 06 	. . . 
	ex af,af'			;9b95	08 	. 
	jr nc,l9bd8h		;9b96	30 40 	0 @ 
	add a,b			;9b98	80 	. 
	nop			;9b99	00 	. 
	nop			;9b9a	00 	. 
	add a,e			;9b9b	83 	. 
	ld b,c			;9b9c	41 	A 
	jr nz,l9bafh		;9b9d	20 10 	  . 
	ex af,af'			;9b9f	08 	. 
	inc b			;9ba0	04 	. 
	ld (bc),a			;9ba1	02 	. 
	ld bc,0f8fch		;9ba2	01 fc f8 	. . . 
	ret p			;9ba5	f0 	. 
	ld (hl),b			;9ba6	70 	p 
	jr nz,$+66		;9ba7	20 40 	  @ 
	ld b,b			;9ba9	40 	@ 
	add a,b			;9baa	80 	. 
	rst 38h			;9bab	ff 	. 
	ld a,a			;9bac	7f 	 
	ld a,01ch		;9bad	3e 1c 	> . 
l9bafh:
	ex af,af'			;9baf	08 	. 
	inc b			;9bb0	04 	. 
	ld (bc),a			;9bb1	02 	. 
	ld bc,00080h		;9bb2	01 80 00 	. . . 
	nop			;9bb5	00 	. 
	inc bc			;9bb6	03 	. 
	inc b			;9bb7	04 	. 
	jr l9bdah		;9bb8	18 20 	.   
	ret nz			;9bba	c0 	. 
	rra			;9bbb	1f 	. 
	ld h,b			;9bbc	60 	` 
	add a,b			;9bbd	80 	. 
	dec b			;9bbe	05 	. 
	nop			;9bbf	00 	. 
	nop			;9bc0	00 	. 
	rrca			;9bc1	0f 	. 
	nop			;9bc2	00 	. 
	add a,c			;9bc3	81 	. 
	inc e			;9bc4	1c 	. 
	ld b,000h		;9bc5	06 00 	. . 
	add a,a			;9bc7	87 	. 
	ld bc,00007h		;9bc8	01 07 00 	. . . 
	inc bc			;9bcb	03 	. 
	rlca			;9bcc	07 	. 
	rra			;9bcd	1f 	. 
	ccf			;9bce	3f 	? 
	inc bc			;9bcf	03 	. 
	rst 38h			;9bd0	ff 	. 
	adc a,b			;9bd1	88 	. 
	nop			;9bd2	00 	. 
	add a,b			;9bd3	80 	. 
	add a,b			;9bd4	80 	. 
	ret nz			;9bd5	c0 	. 
	ret po			;9bd6	e0 	. 
	ret po			;9bd7	e0 	. 
l9bd8h:
	ret p			;9bd8	f0 	. 
	ret m			;9bd9	f8 	. 
l9bdah:
	ex af,af'			;9bda	08 	. 
	rst 38h			;9bdb	ff 	. 
	adc a,b			;9bdc	88 	. 
	nop			;9bdd	00 	. 
	add a,b			;9bde	80 	. 
	ret nz			;9bdf	c0 	. 
	ret po			;9be0	e0 	. 
	ret p			;9be1	f0 	. 
	ret m			;9be2	f8 	. 
	call m,003feh		;9be3	fc fe 03 	. . . 
	nop			;9be6	00 	. 
	adc a,b			;9be7	88 	. 
	ld bc,00f03h		;9be8	01 03 0f 	. . . 
	rra			;9beb	1f 	. 
	ld a,a			;9bec	7f 	 
	rrca			;9bed	0f 	. 
	ccf			;9bee	3f 	? 
	ld a,a			;9bef	7f 	 
	dec b			;9bf0	05 	. 
	rst 38h			;9bf1	ff 	. 
	add a,d			;9bf2	82 	. 
	ret m			;9bf3	f8 	. 
	call m,0fe02h		;9bf4	fc 02 fe 	. . . 
	inc b			;9bf7	04 	. 
	rst 38h			;9bf8	ff 	. 
	dec b			;9bf9	05 	. 
	nop			;9bfa	00 	. 
	ld (bc),a			;9bfb	02 	. 
	add a,b			;9bfc	80 	. 
	sbc a,c			;9bfd	99 	. 
	ret nz			;9bfe	c0 	. 
	ret po			;9bff	e0 	. 
	ret po			;9c00	e0 	. 
	ret p			;9c01	f0 	. 
	ret m			;9c02	f8 	. 
	ret m			;9c03	f8 	. 
	call m,0fefeh		;9c04	fc fe fe 	. . . 
	call m,sub_8f9ch		;9c07	fc 9c 8f 	. . . 
	rst 8			;9c0a	cf 	. 
	call m,030f8h		;9c0b	fc f8 30 	. . 0 
	jr nc,l9c8fh		;9c0e	30 7f 	0  
	ld (hl),e			;9c10	73 	s 
	ex (sp),hl			;9c11	e3 	. 
	rst 30h			;9c12	f7 	. 
	ccf			;9c13	3f 	? 
	rra			;9c14	1f 	. 
	ld c,h			;9c15	4c 	L 
	xor h			;9c16	ac 	. 
	ex af,af'			;9c17	08 	. 
	cp 003h		;9c18	fe 03 	. . 
	rst 38h			;9c1a	ff 	. 
l9c1bh:
	add a,l			;9c1b	85 	. 
	ret p			;9c1c	f0 	. 
	ret po			;9c1d	e0 	. 
	ret nz			;9c1e	c0 	. 
	ret nz			;9c1f	c0 	. 
	add a,b			;9c20	80 	. 
	inc bc			;9c21	03 	. 
	rst 38h			;9c22	ff 	. 
	sub a			;9c23	97 	. 
	ld a,a			;9c24	7f 	 
	add hl,sp			;9c25	39 	9 
	ld de,08121h		;9c26	11 21 81 	. ! . 
	jr nc,l9c1bh		;9c29	30 f0 	0 . 
	ld sp,hl			;9c2b	f9 	. 
	call m,08fcfh		;9c2c	fc cf 8f 	. . . 
	call c,06cfch		;9c2f	dc fc 6c 	. . l 
	adc a,a			;9c32	8f 	. 
	rra			;9c33	1f 	. 
	dec sp			;9c34	3b 	; 
	pop af			;9c35	f1 	. 
	ld sp,hl			;9c36	f9 	. 
	ld a,a			;9c37	7f 	 
	ld a,a			;9c38	7f 	 
	rra			;9c39	1f 	. 
	ccf			;9c3a	3f 	? 
	ld b,07fh		;9c3b	06 7f 	.  
	add a,l			;9c3d	85 	. 
	add a,l			;9c3e	85 	. 
	ret z			;9c3f	c8 	. 
	call nc,0f0ebh		;9c40	d4 eb f0 	. . . 
	inc bc			;9c43	03 	. 
	rst 38h			;9c44	ff 	. 
	add a,l			;9c45	85 	. 
	ld b,l			;9c46	45 	E 
	ld hl,lb955h		;9c47	21 55 b9 	! U . 
	ld a,a			;9c4a	7f 	 
	inc bc			;9c4b	03 	. 
	rst 38h			;9c4c	ff 	. 
	ld (bc),a			;9c4d	02 	. 
	cp 084h		;9c4e	fe 84 	. . 
	call m,0f8f8h		;9c50	fc f8 f8 	. . . 
	ret p			;9c53	f0 	. 
	ld (bc),a			;9c54	02 	. 
	ret po			;9c55	e0 	. 
	ld (bc),a			;9c56	02 	. 
	rst 38h			;9c57	ff 	. 
	add a,a			;9c58	87 	. 
	di			;9c59	f3 	. 
	pop hl			;9c5a	e1 	. 
	add a,b			;9c5b	80 	. 
	adc a,h			;9c5c	8c 	. 
	sbc a,(hl)			;9c5d	9e 	. 
	rst 38h			;9c5e	ff 	. 
	ret nz			;9c5f	c0 	. 
	ld (bc),a			;9c60	02 	. 
	add a,b			;9c61	80 	. 
	dec b			;9c62	05 	. 
	nop			;9c63	00 	. 
	ld (bc),a			;9c64	02 	. 
	rst 38h			;9c65	ff 	. 
	add a,(hl)			;9c66	86 	. 
	cp 0fch		;9c67	fe fc 	. . 
	call m,sub_80f8h		;9c69	fc f8 80 	. . . 
	ret nz			;9c6c	c0 	. 
	inc bc			;9c6d	03 	. 
	rst 38h			;9c6e	ff 	. 
	ld (bc),a			;9c6f	02 	. 
	ld a,a			;9c70	7f 	 
	adc a,b			;9c71	88 	. 
	ccf			;9c72	3f 	? 
	inc bc			;9c73	03 	. 
	rla			;9c74	17 	. 
	di			;9c75	f3 	. 
	pop hl			;9c76	e1 	. 
	add a,b			;9c77	80 	. 
	adc a,h			;9c78	8c 	. 
	sbc a,(hl)			;9c79	9e 	. 
	inc bc			;9c7a	03 	. 
	rst 38h			;9c7b	ff 	. 
	sub (hl)			;9c7c	96 	. 
	ccf			;9c7d	3f 	? 
	rra			;9c7e	1f 	. 
	rrca			;9c7f	0f 	. 
	rlca			;9c80	07 	. 
	inc bc			;9c81	03 	. 
	ld bc,00000h		;9c82	01 00 00 	. . . 
	ret po			;9c85	e0 	. 
	push af			;9c86	f5 	. 
	jp po,0c3e4h		;9c87	e2 e4 c3 	. . . 
	rst 8			;9c8a	cf 	. 
	rst 38h			;9c8b	ff 	. 
	rst 38h			;9c8c	ff 	. 
	xor a			;9c8d	af 	. 
	ld e,a			;9c8e	5f 	_ 
l9c8fh:
	xor a			;9c8f	af 	. 
	rrca			;9c90	0f 	. 
	sub a			;9c91	97 	. 
	rst 20h			;9c92	e7 	. 
	inc b			;9c93	04 	. 
	rst 38h			;9c94	ff 	. 
	add a,c			;9c95	81 	. 
	call m,0fe02h		;9c96	fc 02 fe 	. . . 
	dec b			;9c99	05 	. 
	rst 38h			;9c9a	ff 	. 
	add a,d			;9c9b	82 	. 
	ld a,a			;9c9c	7f 	 
	rra			;9c9d	1f 	. 
	ld (bc),a			;9c9e	02 	. 
	cpl			;9c9f	2f 	/ 
	ld (bc),a			;9ca0	02 	. 
	rla			;9ca1	17 	. 
	ex af,af'			;9ca2	08 	. 
	ret m			;9ca3	f8 	. 
	ex af,af'			;9ca4	08 	. 
	nop			;9ca5	00 	. 
	sub b			;9ca6	90 	. 
	rst 38h			;9ca7	ff 	. 
	cp 0feh		;9ca8	fe fe 	. . 
	call m,0e1c0h		;9caa	fc c0 e1 	. . . 
	ret p			;9cad	f0 	. 
	rst 38h			;9cae	ff 	. 
	daa			;9caf	27 	' 
	rla			;9cb0	17 	. 
	ld b,a			;9cb1	47 	G 
	ld l,a			;9cb2	6f 	o 
	adc a,a			;9cb3	8f 	. 
	rra			;9cb4	1f 	. 
	ld a,a			;9cb5	7f 	 
	rst 38h			;9cb6	ff 	. 
	ex af,af'			;9cb7	08 	. 
	call m,0fe84h		;9cb8	fc 84 fe 	. . . 
	defb 0fdh,0e0h,0dah	;illegal sequence		;9cbb	fd e0 da 	. . . 
	inc bc			;9cbe	03 	. 
	and h			;9cbf	a4 	. 
	sub a			;9cc0	97 	. 
	or (hl)			;9cc1	b6 	. 
	ld a,a			;9cc2	7f 	 
	ccf			;9cc3	3f 	? 
	rlca			;9cc4	07 	. 
	ld e,e			;9cc5	5b 	[ 
	dec h			;9cc6	25 	% 
	dec h			;9cc7	25 	% 
	ld l,l			;9cc8	6d 	m 
	dec h			;9cc9	25 	% 
	and h			;9cca	a4 	. 
	and (hl)			;9ccb	a6 	. 
	push bc			;9ccc	c5 	. 
	call nc,0efe0h		;9ccd	d4 e0 ef 	. . . 
	ret po			;9cd0	e0 	. 
	ret po			;9cd1	e0 	. 
	dec h			;9cd2	25 	% 
	ld l,l			;9cd3	6d 	m 
	dec hl			;9cd4	2b 	+ 
	dec hl			;9cd5	2b 	+ 
	rlca			;9cd6	07 	. 
	rst 30h			;9cd7	f7 	. 
	ld (bc),a			;9cd8	02 	. 
	rlca			;9cd9	07 	. 
	ld (bc),a			;9cda	02 	. 
	rst 38h			;9cdb	ff 	. 
	adc a,b			;9cdc	88 	. 
	call m,0e0f8h		;9cdd	fc f8 e0 	. . . 
	ret nz			;9ce0	c0 	. 
	add a,b			;9ce1	80 	. 
	nop			;9ce2	00 	. 
	ret m			;9ce3	f8 	. 
	add a,b			;9ce4	80 	. 
	ld b,000h		;9ce5	06 00 	. . 
	add a,d			;9ce7	82 	. 
	rrca			;9ce8	0f 	. 
	inc bc			;9ce9	03 	. 
	ld b,000h		;9cea	06 00 	. . 
	inc bc			;9cec	03 	. 
	rst 38h			;9ced	ff 	. 
	add a,l			;9cee	85 	. 
	ld a,a			;9cef	7f 	 
	ccf			;9cf0	3f 	? 
	rra			;9cf1	1f 	. 
	rrca			;9cf2	0f 	. 
	inc bc			;9cf3	03 	. 
	inc b			;9cf4	04 	. 
	rst 38h			;9cf5	ff 	. 
	adc a,b			;9cf6	88 	. 
	cp 0f8h		;9cf7	fe f8 	. . 
	ret po			;9cf9	e0 	. 
	add a,b			;9cfa	80 	. 
	rst 38h			;9cfb	ff 	. 
	rst 38h			;9cfc	ff 	. 
	ret p			;9cfd	f0 	. 
	add a,b			;9cfe	80 	. 
	inc b			;9cff	04 	. 
	nop			;9d00	00 	. 
	add a,d			;9d01	82 	. 
	ret m			;9d02	f8 	. 
	ret nz			;9d03	c0 	. 
	ld c,000h		;9d04	0e 00 	. . 
	add a,c			;9d06	81 	. 
	ld bc,00007h		;9d07	01 07 00 	. . . 
	add a,h			;9d0a	84 	. 
	ret m			;9d0b	f8 	. 
	ret p			;9d0c	f0 	. 
	ld h,b			;9d0d	60 	` 
	jr nz,$+6		;9d0e	20 04 	  . 
	nop			;9d10	00 	. 
	add a,h			;9d11	84 	. 
	ld a,a			;9d12	7f 	 
	ld a,01ch		;9d13	3e 1c 	> . 
	ex af,af'			;9d15	08 	. 
	inc d			;9d16	14 	. 
	nop			;9d17	00 	. 
	nop			;9d18	00 	. 
	ld h,b			;9d19	60 	` 
	nop			;9d1a	00 	. 
	sub b			;9d1b	90 	. 
	ld (bc),a			;9d1c	02 	. 
	ld h,d			;9d1d	62 	b 
	djnz l9d20h		;9d1e	10 00 	. . 
l9d20h:
	nop			;9d20	00 	. 
	ld bc,007c3h		;9d21	01 c3 07 	. . . 
	nop			;9d24	00 	. 
	ex af,af'			;9d25	08 	. 
	djnz l9d28h		;9d26	10 00 	. . 
l9d28h:
	nop			;9d28	00 	. 
	add a,b			;9d29	80 	. 
	add a,e			;9d2a	83 	. 
	ld b,b			;9d2b	40 	@ 
	inc c			;9d2c	0c 	. 
	nop			;9d2d	00 	. 
	add a,h			;9d2e	84 	. 
	dec bc			;9d2f	0b 	. 
	dec e			;9d30	1d 	. 
	dec e			;9d31	1d 	. 
	dec (hl)			;9d32	35 	5 
	inc b			;9d33	04 	. 
	nop			;9d34	00 	. 
	sub c			;9d35	91 	. 
	add a,b			;9d36	80 	. 
	call nz,06ccch		;9d37	c4 cc 6c 	. . l 
	rlca			;9d3a	07 	. 
	inc bc			;9d3b	03 	. 
	nop			;9d3c	00 	. 
	nop			;9d3d	00 	. 
	jr nz,l9d80h		;9d3e	20 40 	  @ 
	ld (bc),a			;9d40	02 	. 
	ld (bc),a			;9d41	02 	. 
	add a,b			;9d42	80 	. 
	ld b,b			;9d43	40 	@ 
	add a,b			;9d44	80 	. 
	inc b			;9d45	04 	. 
	ld (bc),a			;9d46	02 	. 
	dec bc			;9d47	0b 	. 
	nop			;9d48	00 	. 
	add a,e			;9d49	83 	. 
	jr c,l9d61h		;9d4a	38 15 	8 . 
	add hl,bc			;9d4c	09 	. 
	dec b			;9d4d	05 	. 
	nop			;9d4e	00 	. 
	add a,e			;9d4f	83 	. 
	xor b			;9d50	a8 	. 
	call z,00880h		;9d51	cc 80 08 	. . . 
	nop			;9d54	00 	. 
	ld (bc),a			;9d55	02 	. 
	ld (bc),a			;9d56	02 	. 
	adc a,b			;9d57	88 	. 
	ld b,00eh		;9d58	06 0e 	. . 
	inc c			;9d5a	0c 	. 
	nop			;9d5b	00 	. 
	nop			;9d5c	00 	. 
	inc c			;9d5d	0c 	. 
	ld (de),a			;9d5e	12 	. 
	ld h,c			;9d5f	61 	a 
	inc bc			;9d60	03 	. 
l9d61h:
	nop			;9d61	00 	. 
	add a,h			;9d62	84 	. 
	jr l9d95h		;9d63	18 30 	. 0 
	jr nc,l9dc7h		;9d65	30 60 	0 ` 
	ld (bc),a			;9d67	02 	. 
	ld b,b			;9d68	40 	@ 
	dec b			;9d69	05 	. 
	nop			;9d6a	00 	. 
	ld (bc),a			;9d6b	02 	. 
	ld bc,00302h		;9d6c	01 02 03 	. . . 
	add a,c			;9d6f	81 	. 
	rra			;9d70	1f 	. 
	dec b			;9d71	05 	. 
	nop			;9d72	00 	. 
	ld (bc),a			;9d73	02 	. 
	add a,b			;9d74	80 	. 
	add a,h			;9d75	84 	. 
	ret po			;9d76	e0 	. 
	inc c			;9d77	0c 	. 
	ld (de),a			;9d78	12 	. 
	ld h,c			;9d79	61 	a 
	ld b,000h		;9d7a	06 00 	. . 
	adc a,h			;9d7c	8c 	. 
	ld b,b			;9d7d	40 	@ 
	jr nz,l9db0h		;9d7e	20 30 	  0 
l9d80h:
	jr l9d8eh		;9d80	18 0c 	. . 
	ld b,006h		;9d82	06 06 	. . 
	rrca			;9d84	0f 	. 
	ld (bc),a			;9d85	02 	. 
	dec c			;9d86	0d 	. 
	ex af,af'			;9d87	08 	. 
	djnz l9d8dh		;9d88	10 03 	. . 
	nop			;9d8a	00 	. 
	add a,h			;9d8b	84 	. 
	ld b,b			;9d8c	40 	@ 
l9d8dh:
	add a,b			;9d8d	80 	. 
l9d8eh:
	ld b,b			;9d8e	40 	@ 
	ld h,b			;9d8f	60 	` 
	rrca			;9d90	0f 	. 
	nop			;9d91	00 	. 
	add a,e			;9d92	83 	. 
	add a,b			;9d93	80 	. 
	ret nz			;9d94	c0 	. 
l9d95h:
	ld b,b			;9d95	40 	@ 
	ld (bc),a			;9d96	02 	. 
	ld h,b			;9d97	60 	` 
	ex af,af'			;9d98	08 	. 
	nop			;9d99	00 	. 
	ld (bc),a			;9d9a	02 	. 
	ld (bc),a			;9d9b	02 	. 
	add hl,bc			;9d9c	09 	. 
	nop			;9d9d	00 	. 
	adc a,d			;9d9e	8a 	. 
	ld bc,00e03h		;9d9f	01 03 0e 	. . . 
	nop			;9da2	00 	. 
	nop			;9da3	00 	. 
	ld d,b			;9da4	50 	P 
	ret po			;9da5	e0 	. 
	and b			;9da6	a0 	. 
	add a,b			;9da7	80 	. 
	ld b,b			;9da8	40 	@ 
	ld c,000h		;9da9	0e 00 	. . 
	add a,c			;9dab	81 	. 
	ld a,(de)			;9dac	1a 	. 
	inc bc			;9dad	03 	. 
	ld (hl),081h		;9dae	36 81 	6 . 
l9db0h:
	inc h			;9db0	24 	$ 
	inc bc			;9db1	03 	. 
	nop			;9db2	00 	. 
	sub e			;9db3	93 	. 
	ld e,b			;9db4	58 	X 
	ld l,h			;9db5	6c 	l 
	ld l,h			;9db6	6c 	l 
	inc h			;9db7	24 	$ 
	ld l,h			;9db8	6c 	l 
	ld (hl),034h		;9db9	36 34 	6 4 
	inc d			;9dbb	14 	. 
	inc d			;9dbc	14 	. 
	nop			;9dbd	00 	. 
	rrca			;9dbe	0f 	. 
	nop			;9dbf	00 	. 
	nop			;9dc0	00 	. 
	ld l,h			;9dc1	6c 	l 
	inc h			;9dc2	24 	$ 
	jr nz,l9dedh		;9dc3	20 28 	  ( 
	nop			;9dc5	00 	. 
	ret p			;9dc6	f0 	. 
l9dc7h:
	dec b			;9dc7	05 	. 
	nop			;9dc8	00 	. 
	sub h			;9dc9	94 	. 
	inc bc			;9dca	03 	. 
	rlca			;9dcb	07 	. 
	rra			;9dcc	1f 	. 
	ccf			;9dcd	3f 	? 
	ld a,a			;9dce	7f 	 
	nop			;9dcf	00 	. 
	rlca			;9dd0	07 	. 
	ld a,a			;9dd1	7f 	 
	rst 38h			;9dd2	ff 	. 
	cp 0f8h		;9dd3	fe f8 	. . 
	ret nz			;9dd5	c0 	. 
	nop			;9dd6	00 	. 
	nop			;9dd7	00 	. 
	ret po			;9dd8	e0 	. 
	call pe,02fefh		;9dd9	ec ef 2f 	. . / 
	rrca			;9ddc	0f 	. 
	inc bc			;9ddd	03 	. 
	dec b			;9dde	05 	. 
	nop			;9ddf	00 	. 
	add a,h			;9de0	84 	. 
	add a,b			;9de1	80 	. 
	ret nz			;9de2	c0 	. 
	ret po			;9de3	e0 	. 
	ret p			;9de4	f0 	. 
	dec b			;9de5	05 	. 
	nop			;9de6	00 	. 
	add a,e			;9de7	83 	. 
	ld bc,01f07h		;9de8	01 07 1f 	. . . 
	inc bc			;9deb	03 	. 
	nop			;9dec	00 	. 
l9dedh:
	add a,d			;9ded	82 	. 
	rrca			;9dee	0f 	. 
	ld a,a			;9def	7f 	 
	inc bc			;9df0	03 	. 
	rst 38h			;9df1	ff 	. 
	adc a,l			;9df2	8d 	. 
	nop			;9df3	00 	. 
	rlca			;9df4	07 	. 
	scf			;9df5	37 	7 
	rst 30h			;9df6	f7 	. 
	ei			;9df7	fb 	. 
	jp m,000fch		;9df8	fa fc 00 	. . . 
	cp 0f8h		;9dfb	fe f8 	. . 
	ret p			;9dfd	f0 	. 
	ret nz			;9dfe	c0 	. 
	add a,b			;9dff	80 	. 
	inc bc			;9e00	03 	. 
	nop			;9e01	00 	. 
	add a,a			;9e02	87 	. 
	ld a,h			;9e03	7c 	| 
	ld a,01fh		;9e04	3e 1f 	> . 
	rrca			;9e06	0f 	. 
	rlca			;9e07	07 	. 
	inc bc			;9e08	03 	. 
	ld bc,00004h		;9e09	01 04 00 	. . . 
	add a,d			;9e0c	82 	. 
	add a,b			;9e0d	80 	. 
	ret nz			;9e0e	c0 	. 
	ld (bc),a			;9e0f	02 	. 
	add a,b			;9e10	80 	. 
	inc bc			;9e11	03 	. 
	nop			;9e12	00 	. 
	sub b			;9e13	90 	. 
	ld bc,00703h		;9e14	01 03 07 	. . . 
	inc bc			;9e17	03 	. 
	ld bc,07f00h		;9e18	01 00 7f 	. .  
	rst 38h			;9e1b	ff 	. 
	rst 38h			;9e1c	ff 	. 
	call m,0e0f8h		;9e1d	fc f8 e0 	. . . 
	ret nz			;9e20	c0 	. 
	nop			;9e21	00 	. 
	ret po			;9e22	e0 	. 
	add a,b			;9e23	80 	. 
	ld b,000h		;9e24	06 00 	. . 
	nop			;9e26	00 	. 
	ld a,a			;9e27	7f 	 
	nop			;9e28	00 	. 
	ld a,a			;9e29	7f 	 
	nop			;9e2a	00 	. 
	inc (hl)			;9e2b	34 	4 
	nop			;9e2c	00 	. 
	add a,c			;9e2d	81 	. 
	ld bc,00006h		;9e2e	01 06 00 	. . . 
	ld (bc),a			;9e31	02 	. 
	add a,b			;9e32	80 	. 
	ex af,af'			;9e33	08 	. 
	nop			;9e34	00 	. 
	add a,h			;9e35	84 	. 
	ld bc,00000h		;9e36	01 00 00 	. . . 
	rrca			;9e39	0f 	. 
	inc bc			;9e3a	03 	. 
	nop			;9e3b	00 	. 
	ld (bc),a			;9e3c	02 	. 
	add a,b			;9e3d	80 	. 
	ld (bc),a			;9e3e	02 	. 
	nop			;9e3f	00 	. 
	add a,c			;9e40	81 	. 
	ret p			;9e41	f0 	. 
	ld l,c			;9e42	69 	i 
	nop			;9e43	00 	. 
	nop			;9e44	00 	. 
	ld (hl),l			;9e45	75 	u 
	sbc a,(hl)			;9e46	9e 	. 
	sbc a,c			;9e47	99 	. 
	sbc a,(hl)			;9e48	9e 	. 
	cp l			;9e49	bd 	. 
	sbc a,(hl)			;9e4a	9e 	. 
	pop hl			;9e4b	e1 	. 
	sbc a,(hl)			;9e4c	9e 	. 
	dec b			;9e4d	05 	. 
	sbc a,a			;9e4e	9f 	. 
	add hl,hl			;9e4f	29 	) 
	sbc a,a			;9e50	9f 	. 
	ld c,l			;9e51	4d 	M 
	sbc a,a			;9e52	9f 	. 
	ld (hl),c			;9e53	71 	q 
	sbc a,a			;9e54	9f 	. 
	sub l			;9e55	95 	. 
	sbc a,a			;9e56	9f 	. 
	cp c			;9e57	b9 	. 
	sbc a,a			;9e58	9f 	. 
	defb 0ddh,09fh,001h	;illegal sequence		;9e59	dd 9f 01 	. . . 
	and b			;9e5c	a0 	. 
	dec h			;9e5d	25 	% 
	and b			;9e5e	a0 	. 
	ld c,c			;9e5f	49 	I 
	and b			;9e60	a0 	. 
	ld l,l			;9e61	6d 	m 
	and b			;9e62	a0 	. 
	sub c			;9e63	91 	. 
	and b			;9e64	a0 	. 
	or l			;9e65	b5 	. 
	and b			;9e66	a0 	. 
	exx			;9e67	d9 	. 
	and b			;9e68	a0 	. 
	defb 0fdh,0a0h,021h	;illegal sequence		;9e69	fd a0 21 	. . ! 
	and c			;9e6c	a1 	. 
	ld b,l			;9e6d	45 	E 
	and c			;9e6e	a1 	. 
	ld l,c			;9e6f	69 	i 
	and c			;9e70	a1 	. 
	adc a,l			;9e71	8d 	. 
	and c			;9e72	a1 	. 
	or c			;9e73	b1 	. 
	and c			;9e74	a1 	. 
	ld bc,00800h		;9e75	01 00 08 	. . . 
	nop			;9e78	00 	. 
	ex af,af'			;9e79	08 	. 
	nop			;9e7a	00 	. 
	ex af,af'			;9e7b	08 	. 
	nop			;9e7c	00 	. 
	ex af,af'			;9e7d	08 	. 
	nop			;9e7e	00 	. 
	ex af,af'			;9e7f	08 	. 
	nop			;9e80	00 	. 
	ex af,af'			;9e81	08 	. 
	nop			;9e82	00 	. 
	ex af,af'			;9e83	08 	. 
	nop			;9e84	00 	. 
	ex af,af'			;9e85	08 	. 
	nop			;9e86	00 	. 
	ex af,af'			;9e87	08 	. 
	nop			;9e88	00 	. 
	ex af,af'			;9e89	08 	. 
	nop			;9e8a	00 	. 
	ex af,af'			;9e8b	08 	. 
	nop			;9e8c	00 	. 
	ex af,af'			;9e8d	08 	. 
	nop			;9e8e	00 	. 
	ex af,af'			;9e8f	08 	. 
	nop			;9e90	00 	. 
	ex af,af'			;9e91	08 	. 
	nop			;9e92	00 	. 
	ex af,af'			;9e93	08 	. 
	nop			;9e94	00 	. 
	ld h,e			;9e95	63 	c 
	nop			;9e96	00 	. 
	ld h,l			;9e97	65 	e 
	nop			;9e98	00 	. 
	ld (bc),a			;9e99	02 	. 
	nop			;9e9a	00 	. 
	add hl,bc			;9e9b	09 	. 
	nop			;9e9c	00 	. 
	add hl,bc			;9e9d	09 	. 
	nop			;9e9e	00 	. 
	add hl,bc			;9e9f	09 	. 
	nop			;9ea0	00 	. 
	add hl,bc			;9ea1	09 	. 
	nop			;9ea2	00 	. 
	add hl,bc			;9ea3	09 	. 
	nop			;9ea4	00 	. 
	add hl,bc			;9ea5	09 	. 
	nop			;9ea6	00 	. 
	add hl,bc			;9ea7	09 	. 
	nop			;9ea8	00 	. 
	add hl,bc			;9ea9	09 	. 
	nop			;9eaa	00 	. 
	add hl,bc			;9eab	09 	. 
	nop			;9eac	00 	. 
	add hl,bc			;9ead	09 	. 
	nop			;9eae	00 	. 
	add hl,bc			;9eaf	09 	. 
	nop			;9eb0	00 	. 
	add hl,bc			;9eb1	09 	. 
	nop			;9eb2	00 	. 
	add hl,bc			;9eb3	09 	. 
	nop			;9eb4	00 	. 
	add hl,bc			;9eb5	09 	. 
	nop			;9eb6	00 	. 
	add hl,bc			;9eb7	09 	. 
	nop			;9eb8	00 	. 
	ld h,h			;9eb9	64 	d 
	nop			;9eba	00 	. 
	ld h,(hl)			;9ebb	66 	f 
	nop			;9ebc	00 	. 
	inc bc			;9ebd	03 	. 
	nop			;9ebe	00 	. 
	ld a,(bc)			;9ebf	0a 	. 
	nop			;9ec0	00 	. 
	ld (de),a			;9ec1	12 	. 
	nop			;9ec2	00 	. 
	inc e			;9ec3	1c 	. 
	nop			;9ec4	00 	. 
	inc h			;9ec5	24 	$ 
	nop			;9ec6	00 	. 
	ld a,(bc)			;9ec7	0a 	. 
	nop			;9ec8	00 	. 
	ld a,(bc)			;9ec9	0a 	. 
	nop			;9eca	00 	. 
	jr nz,l9ecdh		;9ecb	20 00 	  . 
l9ecdh:
	djnz l9ed1h		;9ecd	10 02 	. . 
	jr l9ed3h		;9ecf	18 02 	. . 
l9ed1h:
	ld c,000h		;9ed1	0e 00 	. . 
l9ed3h:
	ld d,000h		;9ed3	16 00 	. . 
	ld a,(bc)			;9ed5	0a 	. 
	nop			;9ed6	00 	. 
	ld a,(bc)			;9ed7	0a 	. 
	nop			;9ed8	00 	. 
	ld a,(bc)			;9ed9	0a 	. 
	nop			;9eda	00 	. 
	ld h,c			;9edb	61 	a 
	nop			;9edc	00 	. 
	inc bc			;9edd	03 	. 
	inc b			;9ede	04 	. 
	nop			;9edf	00 	. 
	nop			;9ee0	00 	. 
	inc b			;9ee1	04 	. 
	nop			;9ee2	00 	. 
	dec bc			;9ee3	0b 	. 
	nop			;9ee4	00 	. 
	inc de			;9ee5	13 	. 
	nop			;9ee6	00 	. 
	dec e			;9ee7	1d 	. 
	nop			;9ee8	00 	. 
	dec h			;9ee9	25 	% 
	nop			;9eea	00 	. 
	ld a,(bc)			;9eeb	0a 	. 
	nop			;9eec	00 	. 
	jr nz,l9eefh		;9eed	20 00 	  . 
l9eefh:
	jr nz,l9ef1h		;9eef	20 00 	  . 
l9ef1h:
	rrca			;9ef1	0f 	. 
	ld (bc),a			;9ef2	02 	. 
	rla			;9ef3	17 	. 
	ld (bc),a			;9ef4	02 	. 
	rrca			;9ef5	0f 	. 
	nop			;9ef6	00 	. 
	rla			;9ef7	17 	. 
	nop			;9ef8	00 	. 
	ld de,00a00h		;9ef9	11 00 0a 	. . . 
	nop			;9efc	00 	. 
	djnz l9f01h		;9efd	10 02 	. . 
	ld h,d			;9eff	62 	b 
	nop			;9f00	00 	. 
l9f01h:
	inc b			;9f01	04 	. 
	inc b			;9f02	04 	. 
	nop			;9f03	00 	. 
	nop			;9f04	00 	. 
	dec b			;9f05	05 	. 
	nop			;9f06	00 	. 
	inc c			;9f07	0c 	. 
	nop			;9f08	00 	. 
	inc d			;9f09	14 	. 
	nop			;9f0a	00 	. 
	ld e,000h		;9f0b	1e 00 	. . 
	ld h,000h		;9f0d	26 00 	& . 
	dec hl			;9f0f	2b 	+ 
	nop			;9f10	00 	. 
	jr nc,l9f13h		;9f11	30 00 	0 . 
l9f13h:
	ld (hl),000h		;9f13	36 00 	6 . 
	ld c,002h		;9f15	0e 02 	. . 
	ld d,002h		;9f17	16 02 	. . 
	djnz l9f1bh		;9f19	10 00 	. . 
l9f1bh:
	jr l9f1dh		;9f1b	18 00 	. . 
l9f1dh:
	ld d,b			;9f1d	50 	P 
	nop			;9f1e	00 	. 
	ld d,(hl)			;9f1f	56 	V 
	nop			;9f20	00 	. 
	ld e,l			;9f21	5d 	] 
	nop			;9f22	00 	. 
	rla			;9f23	17 	. 
	ld (bc),a			;9f24	02 	. 
	inc bc			;9f25	03 	. 
	inc b			;9f26	04 	. 
	nop			;9f27	00 	. 
	nop			;9f28	00 	. 
	ld b,000h		;9f29	06 00 	. . 
	dec c			;9f2b	0d 	. 
	nop			;9f2c	00 	. 
	dec d			;9f2d	15 	. 
	nop			;9f2e	00 	. 
	rra			;9f2f	1f 	. 
	nop			;9f30	00 	. 
	ld de,02c00h		;9f31	11 00 2c 	. . , 
	nop			;9f34	00 	. 
	ld sp,03700h		;9f35	31 00 37 	1 . 7 
	nop			;9f38	00 	. 
	inc a			;9f39	3c 	< 
	nop			;9f3a	00 	. 
	ld b,c			;9f3b	41 	A 
	nop			;9f3c	00 	. 
	ld b,(hl)			;9f3d	46 	F 
	nop			;9f3e	00 	. 
	ld c,e			;9f3f	4b 	K 
	nop			;9f40	00 	. 
	ld d,c			;9f41	51 	Q 
	nop			;9f42	00 	. 
	ld d,a			;9f43	57 	W 
	nop			;9f44	00 	. 
	ld c,002h		;9f45	0e 02 	. . 
	ld d,002h		;9f47	16 02 	. . 
	inc b			;9f49	04 	. 
	inc b			;9f4a	04 	. 
	nop			;9f4b	00 	. 
	nop			;9f4c	00 	. 
	rlca			;9f4d	07 	. 
	nop			;9f4e	00 	. 
	ld c,000h		;9f4f	0e 00 	. . 
	ld d,000h		;9f51	16 00 	. . 
	jr nz,l9f55h		;9f53	20 00 	  . 
l9f55h:
	ld de,02d00h		;9f55	11 00 2d 	. . - 
	nop			;9f58	00 	. 
	ld (03800h),a		;9f59	32 00 38 	2 . 8 
	nop			;9f5c	00 	. 
	dec a			;9f5d	3d 	= 
	nop			;9f5e	00 	. 
	ld b,d			;9f5f	42 	B 
	nop			;9f60	00 	. 
	ld b,a			;9f61	47 	G 
	nop			;9f62	00 	. 
	ld c,h			;9f63	4c 	L 
	nop			;9f64	00 	. 
	ld d,d			;9f65	52 	R 
	nop			;9f66	00 	. 
	ld e,b			;9f67	58 	X 
	nop			;9f68	00 	. 
	djnz l9f6dh		;9f69	10 02 	. . 
	jr l9f6fh		;9f6b	18 02 	. . 
l9f6dh:
	rlca			;9f6d	07 	. 
	nop			;9f6e	00 	. 
l9f6fh:
	nop			;9f6f	00 	. 
	nop			;9f70	00 	. 
	rlca			;9f71	07 	. 
	nop			;9f72	00 	. 
	rrca			;9f73	0f 	. 
	nop			;9f74	00 	. 
	rla			;9f75	17 	. 
	nop			;9f76	00 	. 
	ld de,02000h		;9f77	11 00 20 	. .   
	nop			;9f7a	00 	. 
	ld l,000h		;9f7b	2e 00 	. . 
	inc sp			;9f7d	33 	3 
	nop			;9f7e	00 	. 
	add hl,sp			;9f7f	39 	9 
	nop			;9f80	00 	. 
	ld a,000h		;9f81	3e 00 	> . 
	ld b,e			;9f83	43 	C 
	nop			;9f84	00 	. 
	ld c,b			;9f85	48 	H 
	nop			;9f86	00 	. 
	ld c,l			;9f87	4d 	M 
	nop			;9f88	00 	. 
	jr nz,l9f8bh		;9f89	20 00 	  . 
l9f8bh:
	ld e,c			;9f8b	59 	Y 
	nop			;9f8c	00 	. 
	rrca			;9f8d	0f 	. 
	ld (bc),a			;9f8e	02 	. 
	rla			;9f8f	17 	. 
	ld (bc),a			;9f90	02 	. 
	rlca			;9f91	07 	. 
	nop			;9f92	00 	. 
	nop			;9f93	00 	. 
	nop			;9f94	00 	. 
	inc b			;9f95	04 	. 
	ld (bc),a			;9f96	02 	. 
	djnz l9f99h		;9f97	10 00 	. . 
l9f99h:
	jr l9f9bh		;9f99	18 00 	. . 
l9f9bh:
	ld hl,02700h		;9f9b	21 00 27 	! . ' 
	nop			;9f9e	00 	. 
	ld a,(bc)			;9f9f	0a 	. 
	nop			;9fa0	00 	. 
	inc (hl)			;9fa1	34 	4 
	nop			;9fa2	00 	. 
	ld a,(03f00h)		;9fa3	3a 00 3f 	: . ? 
	nop			;9fa6	00 	. 
	ld b,h			;9fa7	44 	D 
	nop			;9fa8	00 	. 
	ld c,c			;9fa9	49 	I 
	nop			;9faa	00 	. 
	ld c,(hl)			;9fab	4e 	N 
	nop			;9fac	00 	. 
	dec de			;9fad	1b 	. 
	nop			;9fae	00 	. 
	dec de			;9faf	1b 	. 
	nop			;9fb0	00 	. 
	ld c,002h		;9fb1	0e 02 	. . 
	ld d,002h		;9fb3	16 02 	. . 
	rlca			;9fb5	07 	. 
	nop			;9fb6	00 	. 
	nop			;9fb7	00 	. 
	nop			;9fb8	00 	. 
	inc bc			;9fb9	03 	. 
	ld (bc),a			;9fba	02 	. 
	ld a,(bc)			;9fbb	0a 	. 
	nop			;9fbc	00 	. 
	add hl,de			;9fbd	19 	. 
	nop			;9fbe	00 	. 
	ld (02800h),hl		;9fbf	22 00 28 	" . ( 
	nop			;9fc2	00 	. 
	cpl			;9fc3	2f 	/ 
	nop			;9fc4	00 	. 
	dec (hl)			;9fc5	35 	5 
	nop			;9fc6	00 	. 
	dec sp			;9fc7	3b 	; 
	nop			;9fc8	00 	. 
	ld b,b			;9fc9	40 	@ 
	nop			;9fca	00 	. 
	ld b,l			;9fcb	45 	E 
	nop			;9fcc	00 	. 
	ld c,d			;9fcd	4a 	J 
	nop			;9fce	00 	. 
	ld c,a			;9fcf	4f 	O 
	nop			;9fd0	00 	. 
	ld d,e			;9fd1	53 	S 
	nop			;9fd2	00 	. 
	ld e,d			;9fd3	5a 	Z 
	nop			;9fd4	00 	. 
	ld e,(hl)			;9fd5	5e 	^ 
	nop			;9fd6	00 	. 
	ld de,00300h		;9fd7	11 00 03 	. . . 
	inc b			;9fda	04 	. 
	nop			;9fdb	00 	. 
	nop			;9fdc	00 	. 
	rlca			;9fdd	07 	. 
	nop			;9fde	00 	. 
	ld a,(bc)			;9fdf	0a 	. 
	nop			;9fe0	00 	. 
	ld a,(de)			;9fe1	1a 	. 
	nop			;9fe2	00 	. 
	inc hl			;9fe3	23 	# 
	nop			;9fe4	00 	. 
	add hl,hl			;9fe5	29 	) 
	nop			;9fe6	00 	. 
	cpl			;9fe7	2f 	/ 
	ld (bc),a			;9fe8	02 	. 
	dec (hl)			;9fe9	35 	5 
	nop			;9fea	00 	. 
	dec (hl)			;9feb	35 	5 
	nop			;9fec	00 	. 
	cpl			;9fed	2f 	/ 
	nop			;9fee	00 	. 
	jr nz,l9ff1h		;9fef	20 00 	  . 
l9ff1h:
	rrca			;9ff1	0f 	. 
	ld (bc),a			;9ff2	02 	. 
	rla			;9ff3	17 	. 
	ld (bc),a			;9ff4	02 	. 
	ld d,h			;9ff5	54 	T 
	nop			;9ff6	00 	. 
	ld e,e			;9ff7	5b 	[ 
	nop			;9ff8	00 	. 
	ld e,a			;9ff9	5f 	_ 
	nop			;9ffa	00 	. 
	dec de			;9ffb	1b 	. 
	nop			;9ffc	00 	. 
	inc b			;9ffd	04 	. 
	inc b			;9ffe	04 	. 
	nop			;9fff	00 	. 
	nop			;a000	00 	. 
	rlca			;a001	07 	. 
	nop			;a002	00 	. 
	ld de,01b00h		;a003	11 00 1b 	. . . 
	nop			;a006	00 	. 
	dec de			;a007	1b 	. 
	nop			;a008	00 	. 
	ld hl,(01000h)		;a009	2a 00 10 	* . . 
	ld (bc),a			;a00c	02 	. 
	jr la011h		;a00d	18 02 	. . 
	ld a,(bc)			;a00f	0a 	. 
	nop			;a010	00 	. 
la011h:
	cpl			;a011	2f 	/ 
	ld (bc),a			;a012	02 	. 
	jr nz,la015h		;a013	20 00 	  . 
la015h:
	ld c,002h		;a015	0e 02 	. . 
	ld d,002h		;a017	16 02 	. . 
	ld d,l			;a019	55 	U 
	nop			;a01a	00 	. 
	ld e,h			;a01b	5c 	\ 
	nop			;a01c	00 	. 
	ld h,b			;a01d	60 	` 
	nop			;a01e	00 	. 
	dec de			;a01f	1b 	. 
	nop			;a020	00 	. 
	inc b			;a021	04 	. 
	ld b,000h		;a022	06 00 	. . 
	nop			;a024	00 	. 
	inc bc			;a025	03 	. 
	nop			;a026	00 	. 
	dec de			;a027	1b 	. 
	nop			;a028	00 	. 
	dec de			;a029	1b 	. 
	nop			;a02a	00 	. 
	dec de			;a02b	1b 	. 
	nop			;a02c	00 	. 
	dec de			;a02d	1b 	. 
	nop			;a02e	00 	. 
	rrca			;a02f	0f 	. 
	ld (bc),a			;a030	02 	. 
	rla			;a031	17 	. 
	ld (bc),a			;a032	02 	. 
	djnz la037h		;a033	10 02 	. . 
	jr la039h		;a035	18 02 	. . 
la037h:
	ld a,(bc)			;a037	0a 	. 
	nop			;a038	00 	. 
la039h:
	ld (de),a			;a039	12 	. 
	nop			;a03a	00 	. 
	inc e			;a03b	1c 	. 
	nop			;a03c	00 	. 
	inc h			;a03d	24 	$ 
	nop			;a03e	00 	. 
	djnz la043h		;a03f	10 02 	. . 
	jr la045h		;a041	18 02 	. . 
la043h:
	dec de			;a043	1b 	. 
	nop			;a044	00 	. 
la045h:
	inc bc			;a045	03 	. 
	ld b,000h		;a046	06 00 	. . 
	nop			;a048	00 	. 
	inc b			;a049	04 	. 
	nop			;a04a	00 	. 
	ld l,b			;a04b	68 	h 
	nop			;a04c	00 	. 
	ld l,l			;a04d	6d 	m 
	nop			;a04e	00 	. 
	ld (hl),e			;a04f	73 	s 
	nop			;a050	00 	. 
	dec de			;a051	1b 	. 
	nop			;a052	00 	. 
	ld c,002h		;a053	0e 02 	. . 
	ld d,002h		;a055	16 02 	. . 
	rrca			;a057	0f 	. 
	ld (bc),a			;a058	02 	. 
	rla			;a059	17 	. 
	ld (bc),a			;a05a	02 	. 
	dec bc			;a05b	0b 	. 
	nop			;a05c	00 	. 
	inc de			;a05d	13 	. 
	nop			;a05e	00 	. 
	dec e			;a05f	1d 	. 
	nop			;a060	00 	. 
	dec h			;a061	25 	% 
	nop			;a062	00 	. 
	rrca			;a063	0f 	. 
	ld (bc),a			;a064	02 	. 
	rla			;a065	17 	. 
	ld (bc),a			;a066	02 	. 
	dec de			;a067	1b 	. 
	nop			;a068	00 	. 
	rlca			;a069	07 	. 
	nop			;a06a	00 	. 
	nop			;a06b	00 	. 
	nop			;a06c	00 	. 
	rlca			;a06d	07 	. 
	nop			;a06e	00 	. 
	ld l,c			;a06f	69 	i 
	nop			;a070	00 	. 
	ld l,(hl)			;a071	6e 	n 
	nop			;a072	00 	. 
	ld (hl),h			;a073	74 	t 
	nop			;a074	00 	. 
	ld a,e			;a075	7b 	{ 
	nop			;a076	00 	. 
	ld a,(hl)			;a077	7e 	~ 
	nop			;a078	00 	. 
	jr nz,la07bh		;a079	20 00 	  . 
la07bh:
	ld c,002h		;a07b	0e 02 	. . 
	ld d,002h		;a07d	16 02 	. . 
	add a,h			;a07f	84 	. 
	nop			;a080	00 	. 
	add a,a			;a081	87 	. 
	nop			;a082	00 	. 
	ld e,000h		;a083	1e 00 	. . 
	ld h,000h		;a085	26 00 	& . 
	ld c,002h		;a087	0e 02 	. . 
	ld d,002h		;a089	16 02 	. . 
	sub a			;a08b	97 	. 
	nop			;a08c	00 	. 
	sbc a,e			;a08d	9b 	. 
	nop			;a08e	00 	. 
	nop			;a08f	00 	. 
	nop			;a090	00 	. 
	ld h,a			;a091	67 	g 
	nop			;a092	00 	. 
	ld l,d			;a093	6a 	j 
	nop			;a094	00 	. 
	ld l,a			;a095	6f 	o 
	nop			;a096	00 	. 
	ld (hl),l			;a097	75 	u 
	nop			;a098	00 	. 
	ld a,h			;a099	7c 	| 
	nop			;a09a	00 	. 
	ld a,a			;a09b	7f 	 
	nop			;a09c	00 	. 
	add a,b			;a09d	80 	. 
	nop			;a09e	00 	. 
	add a,c			;a09f	81 	. 
	nop			;a0a0	00 	. 
	ld a,(bc)			;a0a1	0a 	. 
	nop			;a0a2	00 	. 
	ld a,(bc)			;a0a3	0a 	. 
	nop			;a0a4	00 	. 
	dec d			;a0a5	15 	. 
	nop			;a0a6	00 	. 
	rra			;a0a7	1f 	. 
	nop			;a0a8	00 	. 
	ld a,(bc)			;a0a9	0a 	. 
	nop			;a0aa	00 	. 
	ld a,(bc)			;a0ab	0a 	. 
	nop			;a0ac	00 	. 
	djnz la0b1h		;a0ad	10 02 	. . 
	jr la0b3h		;a0af	18 02 	. . 
la0b1h:
	rlca			;a0b1	07 	. 
	nop			;a0b2	00 	. 
la0b3h:
	nop			;a0b3	00 	. 
	nop			;a0b4	00 	. 
	inc bc			;a0b5	03 	. 
	nop			;a0b6	00 	. 
	ld l,e			;a0b7	6b 	k 
	nop			;a0b8	00 	. 
	ld (hl),b			;a0b9	70 	p 
	nop			;a0ba	00 	. 
	halt			;a0bb	76 	v 
	nop			;a0bc	00 	. 
	ld de,01000h		;a0bd	11 00 10 	. . . 
	ld (bc),a			;a0c0	02 	. 
	jr la0c5h		;a0c1	18 02 	. . 
	add a,d			;a0c3	82 	. 
	nop			;a0c4	00 	. 
la0c5h:
	add a,e			;a0c5	83 	. 
	nop			;a0c6	00 	. 
	add a,l			;a0c7	85 	. 
	nop			;a0c8	00 	. 
	ld a,(bc)			;a0c9	0a 	. 
	nop			;a0ca	00 	. 
	dec de			;a0cb	1b 	. 
	nop			;a0cc	00 	. 
	dec de			;a0cd	1b 	. 
	nop			;a0ce	00 	. 
	ld a,(bc)			;a0cf	0a 	. 
	nop			;a0d0	00 	. 
	rrca			;a0d1	0f 	. 
	ld (bc),a			;a0d2	02 	. 
	rla			;a0d3	17 	. 
	ld (bc),a			;a0d4	02 	. 
	inc bc			;a0d5	03 	. 
	inc b			;a0d6	04 	. 
	nop			;a0d7	00 	. 
	nop			;a0d8	00 	. 
	inc b			;a0d9	04 	. 
	nop			;a0da	00 	. 
	ld l,h			;a0db	6c 	l 
	nop			;a0dc	00 	. 
	ld (hl),c			;a0dd	71 	q 
	nop			;a0de	00 	. 
	ld (hl),a			;a0df	77 	w 
	nop			;a0e0	00 	. 
	ld de,00f00h		;a0e1	11 00 0f 	. . . 
	ld (bc),a			;a0e4	02 	. 
	rla			;a0e5	17 	. 
	ld (bc),a			;a0e6	02 	. 
	ld de,00a00h		;a0e7	11 00 0a 	. . . 
	nop			;a0ea	00 	. 
	add a,(hl)			;a0eb	86 	. 
	nop			;a0ec	00 	. 
	adc a,b			;a0ed	88 	. 
	nop			;a0ee	00 	. 
	adc a,e			;a0ef	8b 	. 
	nop			;a0f0	00 	. 
	adc a,a			;a0f1	8f 	. 
	nop			;a0f2	00 	. 
	sub e			;a0f3	93 	. 
	nop			;a0f4	00 	. 
	sub (hl)			;a0f5	96 	. 
	nop			;a0f6	00 	. 
	sbc a,b			;a0f7	98 	. 
	nop			;a0f8	00 	. 
	inc b			;a0f9	04 	. 
	inc b			;a0fa	04 	. 
	nop			;a0fb	00 	. 
	nop			;a0fc	00 	. 
	inc bc			;a0fd	03 	. 
	nop			;a0fe	00 	. 
	ld l,h			;a0ff	6c 	l 
	ld (bc),a			;a100	02 	. 
	ld (hl),c			;a101	71 	q 
	ld (bc),a			;a102	02 	. 
	ld a,b			;a103	78 	x 
	nop			;a104	00 	. 
	dec de			;a105	1b 	. 
	nop			;a106	00 	. 
	ld c,002h		;a107	0e 02 	. . 
	ld d,002h		;a109	16 02 	. . 
	ld a,(bc)			;a10b	0a 	. 
	nop			;a10c	00 	. 
	ld a,(bc)			;a10d	0a 	. 
	nop			;a10e	00 	. 
	ld a,(bc)			;a10f	0a 	. 
	nop			;a110	00 	. 
	adc a,c			;a111	89 	. 
	nop			;a112	00 	. 
	adc a,h			;a113	8c 	. 
	nop			;a114	00 	. 
	sub b			;a115	90 	. 
	nop			;a116	00 	. 
	sub h			;a117	94 	. 
	nop			;a118	00 	. 
	jr la11dh		;a119	18 02 	. . 
	sbc a,c			;a11b	99 	. 
	nop			;a11c	00 	. 
la11dh:
	inc bc			;a11d	03 	. 
	inc b			;a11e	04 	. 
	nop			;a11f	00 	. 
	nop			;a120	00 	. 
	inc b			;a121	04 	. 
	nop			;a122	00 	. 
	ld de,07000h		;a123	11 00 70 	. . p 
	ld (bc),a			;a126	02 	. 
	halt			;a127	76 	v 
	ld (bc),a			;a128	02 	. 
	ld a,c			;a129	79 	y 
	nop			;a12a	00 	. 
	dec de			;a12b	1b 	. 
	nop			;a12c	00 	. 
	djnz la131h		;a12d	10 02 	. . 
	jr la133h		;a12f	18 02 	. . 
la131h:
	dec de			;a131	1b 	. 
	nop			;a132	00 	. 
la133h:
	dec de			;a133	1b 	. 
	nop			;a134	00 	. 
	adc a,d			;a135	8a 	. 
	nop			;a136	00 	. 
	adc a,l			;a137	8d 	. 
	nop			;a138	00 	. 
	sub c			;a139	91 	. 
	nop			;a13a	00 	. 
	sub l			;a13b	95 	. 
	nop			;a13c	00 	. 
	rla			;a13d	17 	. 
	ld (bc),a			;a13e	02 	. 
	sbc a,d			;a13f	9a 	. 
	nop			;a140	00 	. 
	inc b			;a141	04 	. 
	inc b			;a142	04 	. 
	nop			;a143	00 	. 
	nop			;a144	00 	. 
	rlca			;a145	07 	. 
	nop			;a146	00 	. 
	ld a,(bc)			;a147	0a 	. 
	nop			;a148	00 	. 
	ld (hl),d			;a149	72 	r 
	nop			;a14a	00 	. 
	ld a,c			;a14b	79 	y 
	nop			;a14c	00 	. 
	ld a,l			;a14d	7d 	} 
	nop			;a14e	00 	. 
	ld (hl),d			;a14f	72 	r 
	nop			;a150	00 	. 
	rrca			;a151	0f 	. 
	ld (bc),a			;a152	02 	. 
	rla			;a153	17 	. 
	ld (bc),a			;a154	02 	. 
	ld a,(bc)			;a155	0a 	. 
	nop			;a156	00 	. 
	dec de			;a157	1b 	. 
	nop			;a158	00 	. 
	ld a,(bc)			;a159	0a 	. 
	nop			;a15a	00 	. 
	adc a,(hl)			;a15b	8e 	. 
	nop			;a15c	00 	. 
	sub d			;a15d	92 	. 
	nop			;a15e	00 	. 
	ld c,002h		;a15f	0e 02 	. . 
	ld d,002h		;a161	16 02 	. . 
	dec de			;a163	1b 	. 
	nop			;a164	00 	. 
	rlca			;a165	07 	. 
	nop			;a166	00 	. 
	nop			;a167	00 	. 
	nop			;a168	00 	. 
	rlca			;a169	07 	. 
	nop			;a16a	00 	. 
	ld a,(bc)			;a16b	0a 	. 
	nop			;a16c	00 	. 
	ld a,(bc)			;a16d	0a 	. 
	nop			;a16e	00 	. 
	ld a,d			;a16f	7a 	z 
	nop			;a170	00 	. 
	ld a,d			;a171	7a 	z 
	nop			;a172	00 	. 
	dec de			;a173	1b 	. 
	nop			;a174	00 	. 
	ld c,002h		;a175	0e 02 	. . 
	ld d,002h		;a177	16 02 	. . 
	dec de			;a179	1b 	. 
	nop			;a17a	00 	. 
	ld a,(bc)			;a17b	0a 	. 
	nop			;a17c	00 	. 
	ld a,(bc)			;a17d	0a 	. 
	nop			;a17e	00 	. 
	ld a,(bc)			;a17f	0a 	. 
	nop			;a180	00 	. 
	ld a,(bc)			;a181	0a 	. 
	nop			;a182	00 	. 
	ld a,(bc)			;a183	0a 	. 
	nop			;a184	00 	. 
	ld de,01b00h		;a185	11 00 1b 	. . . 
	nop			;a188	00 	. 
	rlca			;a189	07 	. 
	nop			;a18a	00 	. 
	nop			;a18b	00 	. 
	nop			;a18c	00 	. 
	ld (bc),a			;a18d	02 	. 
	ld (bc),a			;a18e	02 	. 
	add hl,bc			;a18f	09 	. 
	ld (bc),a			;a190	02 	. 
	add hl,bc			;a191	09 	. 
	ld (bc),a			;a192	02 	. 
	add hl,bc			;a193	09 	. 
	ld (bc),a			;a194	02 	. 
	add hl,bc			;a195	09 	. 
	ld (bc),a			;a196	02 	. 
	add hl,bc			;a197	09 	. 
	ld (bc),a			;a198	02 	. 
	add hl,bc			;a199	09 	. 
	ld (bc),a			;a19a	02 	. 
	add hl,bc			;a19b	09 	. 
	ld (bc),a			;a19c	02 	. 
	add hl,bc			;a19d	09 	. 
	ld (bc),a			;a19e	02 	. 
	add hl,bc			;a19f	09 	. 
	ld (bc),a			;a1a0	02 	. 
	add hl,bc			;a1a1	09 	. 
	ld (bc),a			;a1a2	02 	. 
	add hl,bc			;a1a3	09 	. 
	ld (bc),a			;a1a4	02 	. 
	add hl,bc			;a1a5	09 	. 
	ld (bc),a			;a1a6	02 	. 
	add hl,bc			;a1a7	09 	. 
	ld (bc),a			;a1a8	02 	. 
	add hl,bc			;a1a9	09 	. 
	ld (bc),a			;a1aa	02 	. 
	add hl,bc			;a1ab	09 	. 
	ld (bc),a			;a1ac	02 	. 
	ld h,h			;a1ad	64 	d 
	ld (bc),a			;a1ae	02 	. 
	ld h,(hl)			;a1af	66 	f 
	ld (bc),a			;a1b0	02 	. 
	ld bc,00802h		;a1b1	01 02 08 	. . . 
	ld (bc),a			;a1b4	02 	. 
	ex af,af'			;a1b5	08 	. 
	ld (bc),a			;a1b6	02 	. 
	ex af,af'			;a1b7	08 	. 
	ld (bc),a			;a1b8	02 	. 
	ex af,af'			;a1b9	08 	. 
	ld (bc),a			;a1ba	02 	. 
	ex af,af'			;a1bb	08 	. 
	ld (bc),a			;a1bc	02 	. 
	ex af,af'			;a1bd	08 	. 
	ld (bc),a			;a1be	02 	. 
	ex af,af'			;a1bf	08 	. 
	ld (bc),a			;a1c0	02 	. 
	ex af,af'			;a1c1	08 	. 
	ld (bc),a			;a1c2	02 	. 
	ex af,af'			;a1c3	08 	. 
	ld (bc),a			;a1c4	02 	. 
	ex af,af'			;a1c5	08 	. 
	ld (bc),a			;a1c6	02 	. 
	ex af,af'			;a1c7	08 	. 
	ld (bc),a			;a1c8	02 	. 
	ex af,af'			;a1c9	08 	. 
	ld (bc),a			;a1ca	02 	. 
	ex af,af'			;a1cb	08 	. 
	ld (bc),a			;a1cc	02 	. 
	ex af,af'			;a1cd	08 	. 
	ld (bc),a			;a1ce	02 	. 
	ex af,af'			;a1cf	08 	. 
	ld (bc),a			;a1d0	02 	. 
	ld h,e			;a1d1	63 	c 
	ld (bc),a			;a1d2	02 	. 
	ld h,l			;a1d3	65 	e 
	ld (bc),a			;a1d4	02 	. 
	ex af,af'			;a1d5	08 	. 
	nop			;a1d6	00 	. 
	add a,d			;a1d7	82 	. 
	rra			;a1d8	1f 	. 
	ld (hl),h			;a1d9	74 	t 
	inc b			;a1da	04 	. 
	rst 38h			;a1db	ff 	. 
	add a,d			;a1dc	82 	. 
	cp a			;a1dd	bf 	. 
	sbc a,a			;a1de	9f 	. 
	jr nc,$+1		;a1df	30 ff 	0 . 
	adc a,b			;a1e1	88 	. 
	cp a			;a1e2	bf 	. 
	sbc a,a			;a1e3	9f 	. 
	cp a			;a1e4	bf 	. 
	sbc a,a			;a1e5	9f 	. 
	cp a			;a1e6	bf 	. 
	sbc a,a			;a1e7	9f 	. 
	cp a			;a1e8	bf 	. 
	sbc a,a			;a1e9	9f 	. 
	ex af,af'			;a1ea	08 	. 
	rst 38h			;a1eb	ff 	. 
	adc a,b			;a1ec	88 	. 
	ld a,(de)			;a1ed	1a 	. 
	sbc a,b			;a1ee	98 	. 
	xor e			;a1ef	ab 	. 
	ld h,e			;a1f0	63 	c 
	ld l,l			;a1f1	6d 	m 
	inc c			;a1f2	0c 	. 
	ld d,l			;a1f3	55 	U 
	ld (de),a			;a1f4	12 	. 
	inc bc			;a1f5	03 	. 
	nop			;a1f6	00 	. 
	sub l			;a1f7	95 	. 
	rrca			;a1f8	0f 	. 
	rra			;a1f9	1f 	. 
	ccf			;a1fa	3f 	? 
	ld a,a			;a1fb	7f 	 
	ei			;a1fc	fb 	. 
	rrca			;a1fd	0f 	. 
	rrca			;a1fe	0f 	. 
	rra			;a1ff	1f 	. 
	sbc a,a			;a200	9f 	. 
	sbc a,0feh		;a201	de fe 	. . 
	cp b			;a203	b8 	. 
	cp b			;a204	b8 	. 
	sbc a,d			;a205	9a 	. 
	sbc a,b			;a206	98 	. 
	xor e			;a207	ab 	. 
	ld h,e			;a208	63 	c 
	ld l,l			;a209	6d 	m 
	inc c			;a20a	0c 	. 
	ld d,l			;a20b	55 	U 
	ld (de),a			;a20c	12 	. 
	dec b			;a20d	05 	. 
	nop			;a20e	00 	. 
	sub e			;a20f	93 	. 
	ld b,00dh		;a210	06 0d 	. . 
	inc e			;a212	1c 	. 
	nop			;a213	00 	. 
	nop			;a214	00 	. 
	ld bc,00603h		;a215	01 03 06 	. . . 
	ld c,00eh		;a218	0e 0e 	. . 
	sbc a,h			;a21a	9c 	. 
	nop			;a21b	00 	. 
	nop			;a21c	00 	. 
	add a,b			;a21d	80 	. 
	ret nz			;a21e	c0 	. 
	ret po			;a21f	e0 	. 
	ret p			;a220	f0 	. 
	ret nc			;a221	d0 	. 
	ld e,b			;a222	58 	X 
	add hl,bc			;a223	09 	. 
	nop			;a224	00 	. 
	add a,c			;a225	81 	. 
	ld bc,00302h		;a226	01 02 03 	. . . 
	ld (bc),a			;a229	02 	. 
	rlca			;a22a	07 	. 
	sbc a,b			;a22b	98 	. 
	ld c,00fh		;a22c	0e 0f 	. . 
	ei			;a22e	fb 	. 
	jp p,la3b2h		;a22f	f2 b2 a3 	. . . 
	ld h,a			;a232	67 	g 
	ld b,e			;a233	43 	C 
	add a,e			;a234	83 	. 
	rst 38h			;a235	ff 	. 
	ret m			;a236	f8 	. 
	call pe,0efefh		;a237	ec ef ef 	. . . 
	rst 38h			;a23a	ff 	. 
	ld e,09eh		;a23b	1e 9e 	. . 
	ret m			;a23d	f8 	. 
	nop			;a23e	00 	. 
	nop			;a23f	00 	. 
	ret po			;a240	e0 	. 
	ret p			;a241	f0 	. 
	ret m			;a242	f8 	. 
	ret pe			;a243	e8 	. 
	ld (bc),a			;a244	02 	. 
	and h			;a245	a4 	. 
	ld (bc),a			;a246	02 	. 
	ld a,(07502h)		;a247	3a 02 75 	: . u 
	sbc a,h			;a24a	9c 	. 
	ld h,l			;a24b	65 	e 
	adc a,h			;a24c	8c 	. 
	call z,0ecffh		;a24d	cc ff ec 	. . . 
	call pe,05b69h		;a250	ec 69 5b 	. i [ 
	di			;a253	f3 	. 
	or e			;a254	b3 	. 
	ret po			;a255	e0 	. 
	rst 38h			;a256	ff 	. 
	ld l,b			;a257	68 	h 
	ld l,h			;a258	6c 	l 
	inc (hl)			;a259	34 	4 
	ld a,d			;a25a	7a 	z 
	ld a,(de)			;a25b	1a 	. 
	add a,c			;a25c	81 	. 
	add a,c			;a25d	81 	. 
	rst 38h			;a25e	ff 	. 
	ld c,01ah		;a25f	0e 1a 	. . 
	cpl			;a261	2f 	/ 
	ccf			;a262	3f 	? 
	ld e,l			;a263	5d 	] 
	cp l			;a264	bd 	. 
	rst 38h			;a265	ff 	. 
	rst 18h			;a266	df 	. 
	inc b			;a267	04 	. 
	nop			;a268	00 	. 
	inc bc			;a269	03 	. 
	add a,b			;a26a	80 	. 
	adc a,c			;a26b	89 	. 
	ret nz			;a26c	c0 	. 
	inc a			;a26d	3c 	< 
	ld e,d			;a26e	5a 	Z 
	ld a,(hl)			;a26f	7e 	~ 
	rst 38h			;a270	ff 	. 
	in a,(0b7h)		;a271	db b7 	. . 
	ld c,d			;a273	4a 	J 
	inc h			;a274	24 	$ 
	inc b			;a275	04 	. 
	nop			;a276	00 	. 
	ld (bc),a			;a277	02 	. 
	ld bc,00302h		;a278	01 02 03 	. . . 
	and c			;a27b	a1 	. 
	nop			;a27c	00 	. 
	ld a,07fh		;a27d	3e 7f 	>  
	rst 38h			;a27f	ff 	. 
	rst 30h			;a280	f7 	. 
	or 0a6h		;a281	f6 a6 	. . 
	rst 8			;a283	cf 	. 
	dec a			;a284	3d 	= 
	dec sp			;a285	3b 	; 
	ld a,d			;a286	7a 	z 
	jp po,0e8c4h		;a287	e2 c4 e8 	. . . 
	ex de,hl			;a28a	eb 	. 
	ld a,a			;a28b	7f 	 
	sub d			;a28c	92 	. 
	ld (de),a			;a28d	12 	. 
	ld (de),a			;a28e	12 	. 
	ld c,d			;a28f	4a 	J 
	ld c,l			;a290	4d 	M 
	ld h,l			;a291	65 	e 
	and l			;a292	a5 	. 
	rst 38h			;a293	ff 	. 
	nop			;a294	00 	. 
	jr la2d3h		;a295	18 3c 	. < 
	halt			;a297	76 	v 
	ld d,(hl)			;a298	56 	V 
	xor e			;a299	ab 	. 
	add a,e			;a29a	83 	. 
	rst 38h			;a29b	ff 	. 
	ld bc,00303h		;a29c	01 03 03 	. . . 
	ld (bc),a			;a29f	02 	. 
	rlca			;a2a0	07 	. 
	ld (bc),a			;a2a1	02 	. 
	rrca			;a2a2	0f 	. 
	ret nz			;a2a3	c0 	. 
	rst 18h			;a2a4	df 	. 
	cp a			;a2a5	bf 	. 
	ld a,(07dbdh)		;a2a6	3a bd 7d 	: . } 
	defb 0fdh,0fdh,07eh	;illegal sequence		;a2a9	fd fd 7e 	. . ~ 
	ret po			;a2ac	e0 	. 
	ret po			;a2ad	e0 	. 
	ret p			;a2ae	f0 	. 
	ld (hl),b			;a2af	70 	p 
	ld a,b			;a2b0	78 	x 
	ret m			;a2b1	f8 	. 
	cp h			;a2b2	bc 	. 
	cp h			;a2b3	bc 	. 
	rlca			;a2b4	07 	. 
	ld b,00dh		;a2b5	06 0d 	. . 
	dec c			;a2b7	0d 	. 
	add hl,de			;a2b8	19 	. 
	ld a,(de)			;a2b9	1a 	. 
	ld (hl),03fh		;a2ba	36 3f 	6 ? 
	ld b,e			;a2bc	43 	C 
	ld d,e			;a2bd	53 	S 
	adc a,b			;a2be	88 	. 
	cp c			;a2bf	b9 	. 
	jr la2dah		;a2c0	18 18 	. . 
	dec e			;a2c2	1d 	. 
	rst 38h			;a2c3	ff 	. 
	ld (hl),b			;a2c4	70 	p 
	sbc a,b			;a2c5	98 	. 
	sbc a,h			;a2c6	9c 	. 
	call z,0634eh		;a2c7	cc 4e 63 	. N c 
	ld (hl),a			;a2ca	77 	w 
	rst 38h			;a2cb	ff 	. 
	rra			;a2cc	1f 	. 
	ld e,03eh		;a2cd	1e 3e 	. > 
	inc a			;a2cf	3c 	< 
	ld a,c			;a2d0	79 	y 
	ld (hl),c			;a2d1	71 	q 
	rst 20h			;a2d2	e7 	. 
la2d3h:
	rst 38h			;a2d3	ff 	. 
	ld l,(hl)			;a2d4	6e 	n 
	ld c,(hl)			;a2d5	4e 	N 
	defb 0edh;next byte illegal after ed		;a2d6	ed 	. 
	cp 09fh		;a2d7	fe 9f 	. . 
	ccf			;a2d9	3f 	? 
la2dah:
	ccf			;a2da	3f 	? 
	rst 38h			;a2db	ff 	. 
	adc a,(hl)			;a2dc	8e 	. 
	rst 18h			;a2dd	df 	. 
	ld b,a			;a2de	47 	G 
	ld l,a			;a2df	6f 	o 
	cpl			;a2e0	2f 	/ 
	rst 28h			;a2e1	ef 	. 
	rst 30h			;a2e2	f7 	. 
	rst 38h			;a2e3	ff 	. 
	inc bc			;a2e4	03 	. 
	nop			;a2e5	00 	. 
	add a,l			;a2e6	85 	. 
	add a,b			;a2e7	80 	. 
	ret nz			;a2e8	c0 	. 
	ret po			;a2e9	e0 	. 
	ret nc			;a2ea	d0 	. 
	ret m			;a2eb	f8 	. 
	rrca			;a2ec	0f 	. 
	nop			;a2ed	00 	. 
	add a,c			;a2ee	81 	. 
	ld bc,00007h		;a2ef	01 07 00 	. . . 
	add a,a			;a2f2	87 	. 
	ret po			;a2f3	e0 	. 
	inc b			;a2f4	04 	. 
	ld (bc),a			;a2f5	02 	. 
	ld a,(bc)			;a2f6	0a 	. 
	ex af,af'			;a2f7	08 	. 
	dec b			;a2f8	05 	. 
	ld bc,00004h		;a2f9	01 04 00 	. . . 
	add a,c			;a2fc	81 	. 
	inc bc			;a2fd	03 	. 
	inc b			;a2fe	04 	. 
	rlca			;a2ff	07 	. 
	add hl,bc			;a300	09 	. 
	nop			;a301	00 	. 
	sub b			;a302	90 	. 
	inc bc			;a303	03 	. 
	rlca			;a304	07 	. 
	rrca			;a305	0f 	. 
	dec bc			;a306	0b 	. 
	ld de,0371ch		;a307	11 1c 37 	. . 7 
	ex af,af'			;a30a	08 	. 
	ret p			;a30b	f0 	. 
	ret m			;a30c	f8 	. 
	ret m			;a30d	f8 	. 
	ld l,h			;a30e	6c 	l 
	ld b,d			;a30f	42 	B 
	dec c			;a310	0d 	. 
	ld sp,hl			;a311	f9 	. 
	ld b,004h		;a312	06 04 	. . 
	nop			;a314	00 	. 
	adc a,d			;a315	8a 	. 
	add a,b			;a316	80 	. 
	nop			;a317	00 	. 
	add a,b			;a318	80 	. 
	nop			;a319	00 	. 
	add hl,bc			;a31a	09 	. 
	dec de			;a31b	1b 	. 
la31ch:
	ld (bc),a			;a31c	02 	. 
	dec b			;a31d	05 	. 
	inc bc			;a31e	03 	. 
	ld (bc),a			;a31f	02 	. 
	inc b			;a320	04 	. 
	nop			;a321	00 	. 
	add a,c			;a322	81 	. 
	inc a			;a323	3c 	< 
	inc b			;a324	04 	. 
	ld a,(hl)			;a325	7e 	~ 
	add hl,bc			;a326	09 	. 
	nop			;a327	00 	. 
	add a,c			;a328	81 	. 
	rlca			;a329	07 	. 
la32ah:
	rlca			;a32a	07 	. 
	nop			;a32b	00 	. 
	sub b			;a32c	90 	. 
	jp m,00010h		;a32d	fa 10 00 	. . . 
	ld bc,00703h		;a330	01 03 07 	. . . 
	rlca			;a333	07 	. 
	ld c,000h		;a334	0e 00 	. . 
	ld a,b			;a336	78 	x 
	call m,0fffeh		;a337	fc fe ff 	. . . 
	ld l,l			;a33a	6d 	m 
	or l			;a33b	b5 	. 
	sub e			;a33c	93 	. 
	inc b			;a33d	04 	. 
	nop			;a33e	00 	. 
	add a,h			;a33f	84 	. 
	ld b,b			;a340	40 	@ 
	add a,b			;a341	80 	. 
	add a,b			;a342	80 	. 
	ld l,b			;a343	68 	h 
	djnz la346h		;a344	10 00 	. . 
la346h:
	add a,l			;a346	85 	. 
	add hl,bc			;a347	09 	. 
	djnz la379h		;a348	10 2f 	. / 
	ld d,c			;a34a	51 	Q 
	rrca			;a34b	0f 	. 
	inc bc			;a34c	03 	. 
	nop			;a34d	00 	. 
	adc a,l			;a34e	8d 	. 
	ld sp,00300h		;a34f	31 00 03 	1 . . 
	cp 0ffh		;a352	fe ff 	. . 
	djnz la356h		;a354	10 00 	. . 
la356h:
	jr nz,la398h		;a356	20 40 	  @ 
	jr nz,la32ah		;a358	20 d0 	  . 
	jr nc,la31ch		;a35a	30 c0 	0 . 
	ld e,000h		;a35c	1e 00 	. . 
	add a,l			;a35e	85 	. 
	ld bc,00703h		;a35f	01 03 07 	. . . 
	rlca			;a362	07 	. 
	inc c			;a363	0c 	. 
	inc bc			;a364	03 	. 
	nop			;a365	00 	. 
	add a,l			;a366	85 	. 
	ret p			;a367	f0 	. 
	ret m			;a368	f8 	. 
	rst 18h			;a369	df 	. 
	res 6,e		;a36a	cb b3 	. . 
	ld b,000h		;a36c	06 00 	. . 
	add a,d			;a36e	82 	. 
	add a,b			;a36f	80 	. 
	ret nz			;a370	c0 	. 
	djnz la373h		;a371	10 00 	. . 
la373h:
	add a,h			;a373	84 	. 
	inc c			;a374	0c 	. 
	jr z,la385h		;a375	28 0e 	( . 
	inc bc			;a377	03 	. 
	dec b			;a378	05 	. 
la379h:
	nop			;a379	00 	. 
	add a,e			;a37a	83 	. 
	call m,0fd03h		;a37b	fc 03 fd 	. . . 
	inc b			;a37e	04 	. 
	nop			;a37f	00 	. 
	sbc a,b			;a380	98 	. 
	ld (hl),b			;a381	70 	p 
	ld b,b			;a382	40 	@ 
	pop bc			;a383	c1 	. 
	inc bc			;a384	03 	. 
la385h:
	rlca			;a385	07 	. 
	rrca			;a386	0f 	. 
	dec bc			;a387	0b 	. 
	ld a,(de)			;a388	1a 	. 
	inc bc			;a389	03 	. 
	rlca			;a38a	07 	. 
	rrca			;a38b	0f 	. 
	rra			;a38c	1f 	. 
	ld e,01ah		;a38d	1e 1a 	. . 
	cpl			;a38f	2f 	/ 
	inc (hl)			;a390	34 	4 
	ret m			;a391	f8 	. 
	call m,0eefeh		;a392	fc fe ee 	. . . 
	ei			;a395	fb 	. 
	in a,(00dh)		;a396	db 0d 	. . 
la398h:
	add a,c			;a398	81 	. 
	djnz la39bh		;a399	10 00 	. . 
la39bh:
	adc a,b			;a39b	88 	. 
	ld d,036h		;a39c	16 36 	. 6 
	inc l			;a39e	2c 	, 
	ld e,(hl)			;a39f	5e 	^ 
	ld e,b			;a3a0	58 	X 
	add a,c			;a3a1	81 	. 
	add a,c			;a3a2	81 	. 
	rst 38h			;a3a3	ff 	. 
	ex af,af'			;a3a4	08 	. 
	nop			;a3a5	00 	. 
	sub b			;a3a6	90 	. 
	inc l			;a3a7	2c 	, 
	ld (00024h),a		;a3a8	32 24 00 	2 $ . 
	inc e			;a3ab	1c 	. 
	dec de			;a3ac	1b 	. 
	ld a,(de)			;a3ad	1a 	. 
	rla			;a3ae	17 	. 
	ld d,c			;a3af	51 	Q 
	ld e,a			;a3b0	5f 	_ 
	dec b			;a3b1	05 	. 
la3b2h:
	nop			;a3b2	00 	. 
	rrca			;a3b3	0f 	. 
	rst 38h			;a3b4	ff 	. 
	ld a,a			;a3b5	7f 	 
	cp a			;a3b6	bf 	. 
	inc b			;a3b7	04 	. 
	nop			;a3b8	00 	. 
	sub d			;a3b9	92 	. 
	ld c,01bh		;a3ba	0e 1b 	. . 
	ld sp,00331h		;a3bc	31 31 03 	1 1 . 
	ld b,00ch		;a3bf	06 0c 	. . 
	inc c			;a3c1	0c 	. 
	ld c,00fh		;a3c2	0e 0f 	. . 
	adc a,b			;a3c4	88 	. 
	adc a,b			;a3c5	88 	. 
	add a,b			;a3c6	80 	. 
	ret nz			;a3c7	c0 	. 
	ld h,b			;a3c8	60 	` 
	ld h,b			;a3c9	60 	` 
	call m,002f6h		;a3ca	fc f6 02 	. . . 
	ld h,e			;a3cd	63 	c 
	ex af,af'			;a3ce	08 	. 
	nop			;a3cf	00 	. 
	sub b			;a3d0	90 	. 
	rla			;a3d1	17 	. 
	cpl			;a3d2	2f 	/ 
	cpl			;a3d3	2f 	/ 
	ld l,05eh		;a3d4	2e 5e 	. ^ 
	ld e,(hl)			;a3d6	5e 	^ 
	ld a,h			;a3d7	7c 	| 
	nop			;a3d8	00 	. 
	cp e			;a3d9	bb 	. 
	jp (hl)			;a3da	e9 	. 
	ld d,d			;a3db	52 	R 
	nop			;a3dc	00 	. 
	ld e,(hl)			;a3dd	5e 	^ 
	ld a,a			;a3de	7f 	 
	cp e			;a3df	bb 	. 
	nop			;a3e0	00 	. 
	ld (bc),a			;a3e1	02 	. 
	add a,b			;a3e2	80 	. 
	ld b,000h		;a3e3	06 00 	. . 
	add a,(hl)			;a3e5	86 	. 
	dec sp			;a3e6	3b 	; 
	ccf			;a3e7	3f 	? 
	jr nz,$+34		;a3e8	20 20 	    
	dec sp			;a3ea	3b 	; 
	inc h			;a3eb	24 	$ 
	ld (bc),a			;a3ec	02 	. 
	jr nz,la3f3h		;a3ed	20 04 	  . 
	adc a,b			;a3ef	88 	. 
	adc a,c			;a3f0	89 	. 
	defb 0edh;next byte illegal after ed		;a3f1	ed 	. 
	sub d			;a3f2	92 	. 
la3f3h:
	nop			;a3f3	00 	. 
	nop			;a3f4	00 	. 
	ld (hl),a			;a3f5	77 	w 
	ld a,a			;a3f6	7f 	 
	ld b,c			;a3f7	41 	A 
	ld b,c			;a3f8	41 	A 
	pop bc			;a3f9	c1 	. 
	inc bc			;a3fa	03 	. 
	ld b,c			;a3fb	41 	A 
	ld (bc),a			;a3fc	02 	. 
	nop			;a3fd	00 	. 
	add a,(hl)			;a3fe	86 	. 
	add a,b			;a3ff	80 	. 
	ret nz			;a400	c0 	. 
	ld h,b			;a401	60 	` 
	ld (hl),b			;a402	70 	p 
	ld (hl),b			;a403	70 	p 
	add hl,sp			;a404	39 	9 
	ld (bc),a			;a405	02 	. 
	jr nz,la40dh		;a406	20 05 	  . 
	ld hl,03f84h		;a408	21 84 3f 	! . ? 
	ld a,b			;a40b	78 	x 
	add a,h			;a40c	84 	. 
la40dh:
	or h			;a40d	b4 	. 
	inc b			;a40e	04 	. 
	ld a,d			;a40f	7a 	z 
	add a,c			;a410	81 	. 
	rst 38h			;a411	ff 	. 
	rlca			;a412	07 	. 
	ld b,c			;a413	41 	A 
	add a,c			;a414	81 	. 
	rst 38h			;a415	ff 	. 
	ex af,af'			;a416	08 	. 
	nop			;a417	00 	. 
	sub b			;a418	90 	. 
	ld d,036h		;a419	16 36 	. 6 
	inc l			;a41b	2c 	, 
	ld e,(hl)			;a41c	5e 	^ 
	ld e,b			;a41d	58 	X 
	add a,c			;a41e	81 	. 
	add a,c			;a41f	81 	. 
	rst 38h			;a420	ff 	. 
	cp a			;a421	bf 	. 
	sbc a,a			;a422	9f 	. 
	cp a			;a423	bf 	. 
	sbc a,a			;a424	9f 	. 
	cp a			;a425	bf 	. 
	sbc a,a			;a426	9f 	. 
	ld a,a			;a427	7f 	 
	ld e,a			;a428	5f 	_ 
	ex af,af'			;a429	08 	. 
	rst 38h			;a42a	ff 	. 
	add a,d			;a42b	82 	. 
	ccf			;a42c	3f 	? 
	rrca			;a42d	0f 	. 
	ld b,000h		;a42e	06 00 	. . 
	add a,d			;a430	82 	. 
	ret po			;a431	e0 	. 
	add a,b			;a432	80 	. 
	ld b,000h		;a433	06 00 	. . 
	ex af,af'			;a435	08 	. 
	rst 38h			;a436	ff 	. 
	ex af,af'			;a437	08 	. 
	nop			;a438	00 	. 
	rlca			;a439	07 	. 
	ld a,a			;a43a	7f 	 
	add a,c			;a43b	81 	. 
	ccf			;a43c	3f 	? 
	ld a,(bc)			;a43d	0a 	. 
	rst 38h			;a43e	ff 	. 
	add a,(hl)			;a43f	86 	. 
	cp 0fch		;a440	fe fc 	. . 
	ret m			;a442	f8 	. 
	ret po			;a443	e0 	. 
	ret nz			;a444	c0 	. 
	add a,b			;a445	80 	. 
	inc bc			;a446	03 	. 
	nop			;a447	00 	. 
	add a,l			;a448	85 	. 
	inc bc			;a449	03 	. 
	inc b			;a44a	04 	. 
	ex af,af'			;a44b	08 	. 
	ex af,af'			;a44c	08 	. 
	djnz la457h		;a44d	10 08 	. . 
	nop			;a44f	00 	. 
	inc bc			;a450	03 	. 
	ccf			;a451	3f 	? 
	dec b			;a452	05 	. 
	rra			;a453	1f 	. 
	ld (bc),a			;a454	02 	. 
	rst 38h			;a455	ff 	. 
	inc bc			;a456	03 	. 
la457h:
	cp 002h		;a457	fe 02 	. . 
	ret m			;a459	f8 	. 
	add a,c			;a45a	81 	. 
	ret p			;a45b	f0 	. 
	inc bc			;a45c	03 	. 
	nop			;a45d	00 	. 
	add a,d			;a45e	82 	. 
	ld bc,00302h		;a45f	01 02 03 	. . . 
	inc b			;a462	04 	. 
	adc a,e			;a463	8b 	. 
	djnz la479h		;a464	10 13 	. . 
	rla			;a466	17 	. 
	call m,01038h		;a467	fc 38 10 	. 8 . 
	jr nc,la49ch		;a46a	30 30 	0 0 
	ld e,016h		;a46c	1e 16 	. . 
	jp m,0ff05h		;a46e	fa 05 ff 	. . . 
	ex af,af'			;a471	08 	. 
	nop			;a472	00 	. 
	ld (bc),a			;a473	02 	. 
	rra			;a474	1f 	. 
	dec b			;a475	05 	. 
	rrca			;a476	0f 	. 
	add a,c			;a477	81 	. 
	rlca			;a478	07 	. 
la479h:
	dec b			;a479	05 	. 
	ret p			;a47a	f0 	. 
	add a,l			;a47b	85 	. 
	ret m			;a47c	f8 	. 
	call m,004fch		;a47d	fc fc 04 	. . . 
	rlca			;a480	07 	. 
	dec b			;a481	05 	. 
	inc b			;a482	04 	. 
	sub c			;a483	91 	. 
	rlca			;a484	07 	. 
	dec d			;a485	15 	. 
	rst 38h			;a486	ff 	. 
	ld a,h			;a487	7c 	| 
	ld sp,hl			;a488	f9 	. 
	ld a,c			;a489	79 	y 
	ld sp,hl			;a48a	f9 	. 
	ld a,c			;a48b	79 	y 
	rst 38h			;a48c	ff 	. 
	ld d,h			;a48d	54 	T 
	rst 38h			;a48e	ff 	. 
	ld a,09fh		;a48f	3e 9f 	> . 
	sbc a,(hl)			;a491	9e 	. 
	sbc a,a			;a492	9f 	. 
	sbc a,(hl)			;a493	9e 	. 
	rst 38h			;a494	ff 	. 
	ld (bc),a			;a495	02 	. 
	ld bc,00f06h		;a496	01 06 0f 	. . . 
	add a,e			;a499	83 	. 
	ret po			;a49a	e0 	. 
	ld h,b			;a49b	60 	` 
la49ch:
	and b			;a49c	a0 	. 
	dec b			;a49d	05 	. 
	ret p			;a49e	f0 	. 
	dec b			;a49f	05 	. 
	rlca			;a4a0	07 	. 
	ld (bc),a			;a4a1	02 	. 
	inc bc			;a4a2	03 	. 
	add a,d			;a4a3	82 	. 
	ld bc,004fch		;a4a4	01 fc 04 	. . . 
	cp 003h		;a4a7	fe 03 	. . 
	call m,0e183h		;a4a9	fc 83 e1 	. . . 
	ld h,c			;a4ac	61 	a 
	xor a			;a4ad	af 	. 
	dec b			;a4ae	05 	. 
	rst 38h			;a4af	ff 	. 
	ex af,af'			;a4b0	08 	. 
	nop			;a4b1	00 	. 
	add a,a			;a4b2	87 	. 
	cp 0ffh		;a4b3	fe ff 	. . 
	ld a,a			;a4b5	7f 	 
	ccf			;a4b6	3f 	? 
	ccf			;a4b7	3f 	? 
	rra			;a4b8	1f 	. 
	ld b,024h		;a4b9	06 24 	. $ 
	nop			;a4bb	00 	. 
	add a,l			;a4bc	85 	. 
	add a,b			;a4bd	80 	. 
	ret nz			;a4be	c0 	. 
	ret po			;a4bf	e0 	. 
	or b			;a4c0	b0 	. 
	cp b			;a4c1	b8 	. 
	djnz la4c4h		;a4c2	10 00 	. . 
la4c4h:
	adc a,b			;a4c4	88 	. 
	sbc a,b			;a4c5	98 	. 
	call z,06fefh		;a4c6	cc ef 6f 	. . o 
	ld a,a			;a4c9	7f 	 
	ld e,09eh		;a4ca	1e 9e 	. . 
	ret m			;a4cc	f8 	. 
	dec e			;a4cd	1d 	. 
	nop			;a4ce	00 	. 
	add a,h			;a4cf	84 	. 
	ld (bc),a			;a4d0	02 	. 
	nop			;a4d1	00 	. 
	nop			;a4d2	00 	. 
	ld b,b			;a4d3	40 	@ 
	inc bc			;a4d4	03 	. 
	nop			;a4d5	00 	. 
	add a,c			;a4d6	81 	. 
	add a,b			;a4d7	80 	. 
	inc b			;a4d8	04 	. 
	nop			;a4d9	00 	. 
	add a,d			;a4da	82 	. 
	ld b,b			;a4db	40 	@ 
	inc b			;a4dc	04 	. 
	add hl,bc			;a4dd	09 	. 
	nop			;a4de	00 	. 
	add a,c			;a4df	81 	. 
	jr nz,$+13		;a4e0	20 0b 	  . 
	nop			;a4e2	00 	. 
	add a,h			;a4e3	84 	. 
	ld bc,00000h		;a4e4	01 00 00 	. . . 
	jr nz,la4eeh		;a4e7	20 05 	  . 
	nop			;a4e9	00 	. 
	add a,c			;a4ea	81 	. 
	ld (bc),a			;a4eb	02 	. 
	jr la4eeh		;a4ec	18 00 	. . 
la4eeh:
	adc a,(hl)			;a4ee	8e 	. 
	ld bc,00703h		;a4ef	01 03 07 	. . . 
	rrca			;a4f2	0f 	. 
	dec bc			;a4f3	0b 	. 
	ld a,(de)			;a4f4	1a 	. 
	nop			;a4f5	00 	. 
	nop			;a4f6	00 	. 
	add a,b			;a4f7	80 	. 
	ret nz			;a4f8	c0 	. 
	ld h,b			;a4f9	60 	` 
	ld (hl),b			;a4fa	70 	p 
	ld (hl),b			;a4fb	70 	p 
	add hl,sp			;a4fc	39 	9 
	dec b			;a4fd	05 	. 
	nop			;a4fe	00 	. 
	add a,e			;a4ff	83 	. 
	ld h,b			;a500	60 	` 
	or b			;a501	b0 	. 
	jr c,la507h		;a502	38 03 	8 . 
	inc b			;a504	04 	. 
	inc bc			;a505	03 	. 
	inc c			;a506	0c 	. 
la507h:
	add a,d			;a507	82 	. 
	inc e			;a508	1c 	. 
	ld e,002h		;a509	1e 02 	. . 
	ld e,h			;a50b	5c 	\ 
	ld (bc),a			;a50c	02 	. 
	xor (hl)			;a50d	ae 	. 
	add a,h			;a50e	84 	. 
	and (hl)			;a50f	a6 	. 
	ld sp,0ff33h		;a510	31 33 ff 	1 3 . 
	djnz la515h		;a513	10 00 	. . 
la515h:
	ex af,af'			;a515	08 	. 
	rst 38h			;a516	ff 	. 
	nop			;a517	00 	. 
	add hl,bc			;a518	09 	. 
	nop			;a519	00 	. 
	add a,a			;a51a	87 	. 
	rra			;a51b	1f 	. 
	ld (hl),b			;a51c	70 	p 
	ld b,a			;a51d	47 	G 
	ld b,b			;a51e	40 	@ 
	nop			;a51f	00 	. 
	ld b,b			;a520	40 	@ 
	ld h,b			;a521	60 	` 
	inc bc			;a522	03 	. 
	nop			;a523	00 	. 
	add a,h			;a524	84 	. 
	ret nz			;a525	c0 	. 
	ld h,b			;a526	60 	` 
	ld h,b			;a527	60 	` 
	ld b,b			;a528	40 	@ 
	add hl,hl			;a529	29 	) 
	nop			;a52a	00 	. 
	adc a,b			;a52b	88 	. 
	ld b,b			;a52c	40 	@ 
	ld h,b			;a52d	60 	` 
	ld b,b			;a52e	40 	@ 
	ld h,b			;a52f	60 	` 
	ld b,b			;a530	40 	@ 
	ld h,b			;a531	60 	` 
	ld b,b			;a532	40 	@ 
	ld h,b			;a533	60 	` 
	ex af,af'			;a534	08 	. 
	nop			;a535	00 	. 
	adc a,b			;a536	88 	. 
	push af			;a537	f5 	. 
	ld (hl),a			;a538	77 	w 
	ld d,(hl)			;a539	56 	V 
	sbc a,0dah		;a53a	de da 	. . 
	ei			;a53c	fb 	. 
	xor e			;a53d	ab 	. 
	defb 0edh;next byte illegal after ed		;a53e	ed 	. 
	inc bc			;a53f	03 	. 
	rst 38h			;a540	ff 	. 
	sub l			;a541	95 	. 
	ret p			;a542	f0 	. 
	ret po			;a543	e0 	. 
	ret nz			;a544	c0 	. 
	add a,b			;a545	80 	. 
	inc b			;a546	04 	. 
	ret p			;a547	f0 	. 
	ret p			;a548	f0 	. 
	ret po			;a549	e0 	. 
	ld h,b			;a54a	60 	` 
	ld hl,04701h		;a54b	21 01 47 	! . G 
	ld b,a			;a54e	47 	G 
	ld (hl),l			;a54f	75 	u 
	ld (hl),a			;a550	77 	w 
	ld d,(hl)			;a551	56 	V 
	sbc a,0dah		;a552	de da 	. . 
	ei			;a554	fb 	. 
	xor e			;a555	ab 	. 
	defb 0edh;next byte illegal after ed		;a556	ed 	. 
	dec b			;a557	05 	. 
	rst 38h			;a558	ff 	. 
	sub e			;a559	93 	. 
	ld sp,hl			;a55a	f9 	. 
	jp p,0ffe3h		;a55b	f2 e3 ff 	. . . 
	rst 38h			;a55e	ff 	. 
	cp 0fch		;a55f	fe fc 	. . 
	ld sp,hl			;a561	f9 	. 
	pop af			;a562	f1 	. 
	pop af			;a563	f1 	. 
	ld h,e			;a564	63 	c 
	rst 38h			;a565	ff 	. 
	rst 38h			;a566	ff 	. 
	ld a,a			;a567	7f 	 
	ccf			;a568	3f 	? 
	rra			;a569	1f 	. 
	rrca			;a56a	0f 	. 
	cpl			;a56b	2f 	/ 
	and a			;a56c	a7 	. 
	add hl,bc			;a56d	09 	. 
	rst 38h			;a56e	ff 	. 
	add a,c			;a56f	81 	. 
	cp 002h		;a570	fe 02 	. . 
	call m,0f802h		;a572	fc 02 f8 	. . . 
	sbc a,b			;a575	98 	. 
	pop af			;a576	f1 	. 
	ret p			;a577	f0 	. 
	inc b			;a578	04 	. 
	dec c			;a579	0d 	. 
	ld c,l			;a57a	4d 	M 
	ld e,h			;a57b	5c 	\ 
	sbc a,b			;a57c	98 	. 
	cp h			;a57d	bc 	. 
	ld a,h			;a57e	7c 	| 
	nop			;a57f	00 	. 
	rlca			;a580	07 	. 
	inc de			;a581	13 	. 
	djnz la594h		;a582	10 10 	. . 
	nop			;a584	00 	. 
	pop hl			;a585	e1 	. 
	ld h,c			;a586	61 	a 
	rlca			;a587	07 	. 
	rst 38h			;a588	ff 	. 
	rst 38h			;a589	ff 	. 
	rra			;a58a	1f 	. 
	rrca			;a58b	0f 	. 
	rlca			;a58c	07 	. 
	rla			;a58d	17 	. 
	ld (bc),a			;a58e	02 	. 
	ld e,e			;a58f	5b 	[ 
la590h:
	ld (bc),a			;a590	02 	. 
	push bc			;a591	c5 	. 
	ld (bc),a			;a592	02 	. 
	adc a,d			;a593	8a 	. 
la594h:
	sbc a,h			;a594	9c 	. 
	sbc a,d			;a595	9a 	. 
	ld (hl),e			;a596	73 	s 
	inc sp			;a597	33 	3 
	nop			;a598	00 	. 
	inc de			;a599	13 	. 
	inc de			;a59a	13 	. 
	sub (hl)			;a59b	96 	. 
	and h			;a59c	a4 	. 
	inc c			;a59d	0c 	. 
	ld c,h			;a59e	4c 	L 
	rra			;a59f	1f 	. 
	nop			;a5a0	00 	. 
	sub a			;a5a1	97 	. 
	sub e			;a5a2	93 	. 
	res 0,l		;a5a3	cb 85 	. . 
	push hl			;a5a5	e5 	. 
	ld a,(hl)			;a5a6	7e 	~ 
	ld a,(hl)			;a5a7	7e 	~ 
	nop			;a5a8	00 	. 
	pop af			;a5a9	f1 	. 
	push hl			;a5aa	e5 	. 
	jp nc,lb7cah		;a5ab	d2 ca b7 	. . . 
	ld (hl),a			;a5ae	77 	w 
	dec h			;a5af	25 	% 
	ld l,l			;a5b0	6d 	m 
	inc b			;a5b1	04 	. 
	rst 38h			;a5b2	ff 	. 
	inc bc			;a5b3	03 	. 
	ld a,a			;a5b4	7f 	 
	adc a,b			;a5b5	88 	. 
	cp a			;a5b6	bf 	. 
	jp l81a5h		;a5b7	c3 a5 81 	. . . 
	nop			;a5ba	00 	. 
	inc h			;a5bb	24 	$ 
	ld c,b			;a5bc	48 	H 
	or l			;a5bd	b5 	. 
	dec b			;a5be	05 	. 
	rst 38h			;a5bf	ff 	. 
	ld (bc),a			;a5c0	02 	. 
	cp 002h		;a5c1	fe 02 	. . 
	call m,0ffa2h		;a5c3	fc a2 ff 	. . . 
	pop bc			;a5c6	c1 	. 
	add a,b			;a5c7	80 	. 
	nop			;a5c8	00 	. 
	ex af,af'			;a5c9	08 	. 
	add hl,bc			;a5ca	09 	. 
	ld e,c			;a5cb	59 	Y 
	jr nc,la590h		;a5cc	30 c2 	0 . 
	call nz,01d85h		;a5ce	c4 85 1d 	. . . 
	dec sp			;a5d1	3b 	; 
	rla			;a5d2	17 	. 
	inc d			;a5d3	14 	. 
	add a,b			;a5d4	80 	. 
	ld l,l			;a5d5	6d 	m 
	defb 0edh;next byte illegal after ed		;a5d6	ed 	. 
	defb 0edh;next byte illegal after ed		;a5d7	ed 	. 
	or l			;a5d8	b5 	. 
	or d			;a5d9	b2 	. 
	sbc a,d			;a5da	9a 	. 
	ld e,d			;a5db	5a 	Z 
	nop			;a5dc	00 	. 
	rst 38h			;a5dd	ff 	. 
	rst 20h			;a5de	e7 	. 
	jp la989h		;a5df	c3 89 a9 	. . . 
	ld d,h			;a5e2	54 	T 
	ld a,h			;a5e3	7c 	| 
	nop			;a5e4	00 	. 
	cp 0fch		;a5e5	fe fc 	. . 
	ld (bc),a			;a5e7	02 	. 
	defb 0fdh,002h,0f9h	;illegal sequence		;a5e8	fd 02 f9 	. . . 
	adc a,(hl)			;a5eb	8e 	. 
	pop af			;a5ec	f1 	. 
	di			;a5ed	f3 	. 
	ld l,(hl)			;a5ee	6e 	n 
	sbc a,0dfh		;a5ef	de df 	. . 
	in a,(09bh)		;a5f1	db 9b 	. . 
	sbc a,e			;a5f3	9b 	. 
	or e			;a5f4	b3 	. 
	ld sp,hl			;a5f5	f9 	. 
	sbc a,a			;a5f6	9f 	. 
	sbc a,a			;a5f7	9f 	. 
	ld l,a			;a5f8	6f 	o 
	xor a			;a5f9	af 	. 
	ld (bc),a			;a5fa	02 	. 
	or a			;a5fb	b7 	. 
	ld (bc),a			;a5fc	02 	. 
	out (0a3h),a		;a5fd	d3 a3 	. . 
	ret m			;a5ff	f8 	. 
	ld sp,hl			;a600	f9 	. 
	jp p,0e6f2h		;a601	f2 f2 e6 	. . . 
	push hl			;a604	e5 	. 
	ret			;a605	c9 	. 
	ret nz			;a606	c0 	. 
	cp h			;a607	bc 	. 
	xor h			;a608	ac 	. 
	ld (hl),a			;a609	77 	w 
	ld b,(hl)			;a60a	46 	F 
	rst 20h			;a60b	e7 	. 
	rst 20h			;a60c	e7 	. 
	jp po,l8f00h		;a60d	e2 00 8f 	. . . 
	ld h,a			;a610	67 	g 
	ld h,e			;a611	63 	c 
	inc sp			;a612	33 	3 
	or c			;a613	b1 	. 
	sbc a,h			;a614	9c 	. 
	adc a,b			;a615	88 	. 
	nop			;a616	00 	. 
	rst 20h			;a617	e7 	. 
	push hl			;a618	e5 	. 
	exx			;a619	d9 	. 
	out (0a6h),a		;a61a	d3 a6 	. . 
	adc a,(hl)			;a61c	8e 	. 
	ld e,(hl)			;a61d	5e 	^ 
	nop			;a61e	00 	. 
	ld sp,hl			;a61f	f9 	. 
	ld sp,hl			;a620	f9 	. 
	sbc a,002h		;a621	de 02 	. . 
	inc bc			;a623	03 	. 
	ld (bc),a			;a624	02 	. 
	ld bc,00089h		;a625	01 89 00 	. . . 
	ld sp,hl			;a628	f9 	. 
	ret pe			;a629	e8 	. 
	call m,0f2f4h		;a62a	fc f4 f2 	. . . 
	ei			;a62d	fb 	. 
	defb 0fdh,000h,003h	;illegal sequence		;a62e	fd 00 03 	. . . 
	rst 38h			;a631	ff 	. 
	add a,l			;a632	85 	. 
	ld a,a			;a633	7f 	 
	ccf			;a634	3f 	? 
	rra			;a635	1f 	. 
	xor a			;a636	af 	. 
	rlca			;a637	07 	. 
	inc b			;a638	04 	. 
	rst 38h			;a639	ff 	. 
	adc a,b			;a63a	88 	. 
	cp 0fch		;a63b	fe fc 	. . 
	ret m			;a63d	f8 	. 
	ret p			;a63e	f0 	. 
	rst 38h			;a63f	ff 	. 
	call m,080e0h		;a640	fc e0 80 	. . . 
	inc b			;a643	04 	. 
	nop			;a644	00 	. 
	add a,d			;a645	82 	. 
	rst 38h			;a646	ff 	. 
	inc bc			;a647	03 	. 
	ld b,000h		;a648	06 00 	. . 
	ld (bc),a			;a64a	02 	. 
	rst 38h			;a64b	ff 	. 
	adc a,d			;a64c	8a 	. 
	rst 30h			;a64d	f7 	. 
	ld (hl),a			;a64e	77 	w 
	ld e,006h		;a64f	1e 06 	. . 
	inc bc			;a651	03 	. 
	nop			;a652	00 	. 
	rst 38h			;a653	ff 	. 
	call m,0f7f9h		;a654	fc f9 f7 	. . . 
	inc bc			;a657	03 	. 
	jp p,0f084h		;a658	f2 84 f0 	. . . 
	ret po			;a65b	e0 	. 
	ret po			;a65c	e0 	. 
	ret nz			;a65d	c0 	. 
	dec b			;a65e	05 	. 
	add a,b			;a65f	80 	. 
	inc bc			;a660	03 	. 
	nop			;a661	00 	. 
	add a,l			;a662	85 	. 
	inc b			;a663	04 	. 
	ld c,003h		;a664	0e 03 	. . 
	ex af,af'			;a666	08 	. 
	rlca			;a667	07 	. 
	inc bc			;a668	03 	. 
	nop			;a669	00 	. 
	add a,l			;a66a	85 	. 
	sub b			;a66b	90 	. 
	cp h			;a66c	bc 	. 
	jp p,0f806h		;a66d	f2 06 f8 	. . . 
	ex af,af'			;a670	08 	. 
	nop			;a671	00 	. 
	adc a,h			;a672	8c 	. 
	scf			;a673	37 	7 
	dec d			;a674	15 	. 
	dec e			;a675	1d 	. 
	rrca			;a676	0f 	. 
	dec b			;a677	05 	. 
	ld bc,00303h		;a678	01 03 03 	. . . 
	rst 38h			;a67b	ff 	. 
la67ch:
	jp 07e99h		;a67c	c3 99 7e 	. . ~ 
	inc bc			;a67f	03 	. 
	inc h			;a680	24 	$ 
	add a,d			;a681	82 	. 
	nop			;a682	00 	. 
	add a,b			;a683	80 	. 
	inc bc			;a684	03 	. 
	ret nz			;a685	c0 	. 
	ld (bc),a			;a686	02 	. 
	ret po			;a687	e0 	. 
	add a,d			;a688	82 	. 
	ret p			;a689	f0 	. 
	call m,0000fh		;a68a	fc 0f 00 	. . . 
	add a,c			;a68d	81 	. 
	ld bc,00005h		;a68e	01 05 00 	. . . 
	add a,e			;a691	83 	. 
	sub d			;a692	92 	. 
	ld c,d			;a693	4a 	J 
	ld l,h			;a694	6c 	l 
	inc bc			;a695	03 	. 
	ld bc,00004h		;a696	01 04 00 	. . . 
	add a,c			;a699	81 	. 
	add a,b			;a69a	80 	. 
	dec b			;a69b	05 	. 
	rst 38h			;a69c	ff 	. 
	add a,e			;a69d	83 	. 
	ccf			;a69e	3f 	? 
	rrca			;a69f	0f 	. 
	rlca			;a6a0	07 	. 
	inc bc			;a6a1	03 	. 
	nop			;a6a2	00 	. 
	inc bc			;a6a3	03 	. 
	add a,b			;a6a4	80 	. 
	ld (bc),a			;a6a5	02 	. 
	ret nz			;a6a6	c0 	. 
	sub (hl)			;a6a7	96 	. 
	ld b,00fh		;a6a8	06 0f 	. . 
	djnz la6bah		;a6aa	10 0e 	. . 
	nop			;a6ac	00 	. 
	ld b,000h		;a6ad	06 00 	. . 
	nop			;a6af	00 	. 
	adc a,0ffh		;a6b0	ce ff 	. . 
	call m,00001h		;a6b2	fc 01 00 	. . . 
	inc bc			;a6b5	03 	. 
	nop			;a6b6	00 	. 
	nop			;a6b7	00 	. 
	add a,b			;a6b8	80 	. 
	ret nz			;a6b9	c0 	. 
la6bah:
	jr z,la67ch		;a6ba	28 c0 	( . 
	nop			;a6bc	00 	. 
	ld (hl),b			;a6bd	70 	p 
	ld (bc),a			;a6be	02 	. 
	nop			;a6bf	00 	. 
	ld (bc),a			;a6c0	02 	. 
	inc bc			;a6c1	03 	. 
	inc bc			;a6c2	03 	. 
	ld bc,00002h		;a6c3	01 02 00 	. . . 
	add a,d			;a6c6	82 	. 
	ld bc,002c0h		;a6c7	01 c0 02 	. . . 
	ret po			;a6ca	e0 	. 
	ld (bc),a			;a6cb	02 	. 
	ret p			;a6cc	f0 	. 
	inc bc			;a6cd	03 	. 
	ret m			;a6ce	f8 	. 
	rrca			;a6cf	0f 	. 
	nop			;a6d0	00 	. 
	add a,c			;a6d1	81 	. 
	inc bc			;a6d2	03 	. 
	dec b			;a6d3	05 	. 
	nop			;a6d4	00 	. 
	add a,e			;a6d5	83 	. 
	jr nz,la70ch		;a6d6	20 34 	  4 
	ld c,h			;a6d8	4c 	L 
	ld (bc),a			;a6d9	02 	. 
	nop			;a6da	00 	. 
	inc b			;a6db	04 	. 
	ld bc,00302h		;a6dc	01 02 03 	. . . 
	add a,d			;a6df	82 	. 
	call m,006feh		;a6e0	fc fe 06 	. . . 
	rst 38h			;a6e3	ff 	. 
	ld (bc),a			;a6e4	02 	. 
	nop			;a6e5	00 	. 
	adc a,c			;a6e6	89 	. 
	add a,b			;a6e7	80 	. 
	ret po			;a6e8	e0 	. 
	ret m			;a6e9	f8 	. 
	call m,0f8f8h		;a6ea	fc f8 f8 	. . . 
	inc bc			;a6ed	03 	. 
	rlca			;a6ee	07 	. 
	ld bc,00005h		;a6ef	01 05 00 	. . . 
	add a,e			;a6f2	83 	. 
	rst 38h			;a6f3	ff 	. 
	inc bc			;a6f4	03 	. 
	call m,00005h		;a6f5	fc 05 00 	. . . 
	sub b			;a6f8	90 	. 
	add a,e			;a6f9	83 	. 
	add a,a			;a6fa	87 	. 
	ld c,00ch		;a6fb	0e 0c 	. . 
	jr $+50		;a6fd	18 30 	. 0 
	inc (hl)			;a6ff	34 	4 
	ld h,l			;a700	65 	e 
	call m,0f0f8h		;a701	fc f8 f0 	. . . 
	ret po			;a704	e0 	. 
	pop hl			;a705	e1 	. 
	push hl			;a706	e5 	. 
	ret nc			;a707	d0 	. 
	rlc e		;a708	cb 03 	. . 
	nop			;a70a	00 	. 
	add a,l			;a70b	85 	. 
la70ch:
	djnz la712h		;a70c	10 04 	. . 
	inc h			;a70e	24 	$ 
	jp p,0047eh		;a70f	f2 7e 04 	. ~ . 
la712h:
	nop			;a712	00 	. 
	add a,c			;a713	81 	. 
	ret m			;a714	f8 	. 
	inc bc			;a715	03 	. 
	rst 38h			;a716	ff 	. 
	add a,l			;a717	85 	. 
	nop			;a718	00 	. 
	ld bc,00703h		;a719	01 03 07 	. . . 
	rra			;a71c	1f 	. 
	inc bc			;a71d	03 	. 
	rst 38h			;a71e	ff 	. 
	adc a,b			;a71f	88 	. 
	ld l,c			;a720	69 	i 
	ret			;a721	c9 	. 
	out (0a1h),a		;a722	d3 a1 	. . 
	and a			;a724	a7 	. 
	ld a,(hl)			;a725	7e 	~ 
	ld a,(hl)			;a726	7e 	~ 
	nop			;a727	00 	. 
	dec b			;a728	05 	. 
	rst 38h			;a729	ff 	. 
	add a,(hl)			;a72a	86 	. 
	call m,0c0f0h		;a72b	fc f0 c0 	. . . 
	out (0cdh),a		;a72e	d3 cd 	. . 
	in a,(002h)		;a730	db 02 	. . 
	rst 18h			;a732	df 	. 
	ld (bc),a			;a733	02 	. 
	rla			;a734	17 	. 
	adc a,c			;a735	89 	. 
	ld c,0aeh		;a736	0e ae 	. . 
	and b			;a738	a0 	. 
	jp m,0f3feh		;a739	fa fe f3 	. . . 
	pop bc			;a73c	c1 	. 
	add a,b			;a73d	80 	. 
	ld b,b			;a73e	40 	@ 
	inc b			;a73f	04 	. 
	rst 38h			;a740	ff 	. 
	sub a			;a741	97 	. 
	pop af			;a742	f1 	. 
	xor 0dbh		;a743	ee db 	. . 
	in a,(0fch)		;a745	db fc 	. . 
	ei			;a747	fb 	. 
	or 0f6h		;a748	f6 f6 	. . 
	rst 30h			;a74a	f7 	. 
	ret p			;a74b	f0 	. 
	ld (hl),a			;a74c	77 	w 
	ld (hl),a			;a74d	77 	w 
	ld a,a			;a74e	7f 	 
	cp a			;a74f	bf 	. 
	rst 18h			;a750	df 	. 
	rst 18h			;a751	df 	. 
	jp lb61dh		;a752	c3 1d b6 	. . . 
	or (hl)			;a755	b6 	. 
	add a,e			;a756	83 	. 
	adc a,a			;a757	8f 	. 
	rra			;a758	1f 	. 
	inc b			;a759	04 	. 
	ccf			;a75a	3f 	? 
	sub c			;a75b	91 	. 
	rra			;a75c	1f 	. 
	adc a,09ch		;a75d	ce 9c 	. . 
	sbc a,h			;a75f	9c 	. 
	sbc a,l			;a760	9d 	. 
	add hl,sp			;a761	39 	9 
	add hl,sp			;a762	39 	9 
	ld a,(04400h)		;a763	3a 00 44 	: . D 
	ld d,0ach		;a766	16 ac 	. . 
	cp (hl)			;a768	be 	. 
	ld (hl),037h		;a769	36 37 	6 7 
	ld h,a			;a76b	67 	g 
	nop			;a76c	00 	. 
	ld (bc),a			;a76d	02 	. 
	ccf			;a76e	3f 	? 
	ld (bc),a			;a76f	02 	. 
	cp a			;a770	bf 	. 
	adc a,d			;a771	8a 	. 
	rst 18h			;a772	df 	. 
	ld e,a			;a773	5f 	_ 
	ld e,a			;a774	5f 	_ 
	rra			;a775	1f 	. 
	rst 18h			;a776	df 	. 
	ret nz			;a777	c0 	. 
	rst 18h			;a778	df 	. 
	rst 18h			;a779	df 	. 
	call nz,002dbh		;a77a	c4 db 02 	. . . 
	rst 18h			;a77d	df 	. 
	inc b			;a77e	04 	. 
	ld (hl),a			;a77f	77 	w 
	adc a,d			;a780	8a 	. 
	ld (de),a			;a781	12 	. 
	ld l,l			;a782	6d 	m 
	rst 38h			;a783	ff 	. 
	rst 38h			;a784	ff 	. 
	cp (hl)			;a785	be 	. 
	add a,b			;a786	80 	. 
	cp (hl)			;a787	be 	. 
	cp (hl)			;a788	be 	. 
	ld a,0beh		;a789	3e be 	> . 
	ld (bc),a			;a78b	02 	. 
	cp 002h		;a78c	fe 02 	. . 
	sbc a,a			;a78e	9f 	. 
	ld (bc),a			;a78f	02 	. 
	rra			;a790	1f 	. 
	add a,h			;a791	84 	. 
	sbc a,a			;a792	9f 	. 
	adc a,a			;a793	8f 	. 
	adc a,a			;a794	8f 	. 
	add a,003h		;a795	c6 03 	. . 
	rst 18h			;a797	df 	. 
	inc b			;a798	04 	. 
	sbc a,084h		;a799	de 84 	. . 
	ret nz			;a79b	c0 	. 
	add a,a			;a79c	87 	. 
	ld a,e			;a79d	7b 	{ 
	ld c,e			;a79e	4b 	K 
	inc b			;a79f	04 	. 
	add a,l			;a7a0	85 	. 
	add a,c			;a7a1	81 	. 
	nop			;a7a2	00 	. 
	rlca			;a7a3	07 	. 
	cp 081h		;a7a4	fe 81 	. . 
	nop			;a7a6	00 	. 
	inc bc			;a7a7	03 	. 
	rst 38h			;a7a8	ff 	. 
	ld (bc),a			;a7a9	02 	. 
	nop			;a7aa	00 	. 
	inc bc			;a7ab	03 	. 
	rst 38h			;a7ac	ff 	. 
	sub b			;a7ad	90 	. 
	jp (hl)			;a7ae	e9 	. 
	ret			;a7af	c9 	. 
	sub e			;a7b0	93 	. 
	ld hl,07e27h		;a7b1	21 27 7e 	! ' ~ 
	ld a,(hl)			;a7b4	7e 	~ 
	nop			;a7b5	00 	. 
	ld b,b			;a7b6	40 	@ 
	ld h,b			;a7b7	60 	` 
	ld b,b			;a7b8	40 	@ 
	ld h,b			;a7b9	60 	` 
	ld b,b			;a7ba	40 	@ 
	ld h,b			;a7bb	60 	` 
	nop			;a7bc	00 	. 
	jr nz,la7dfh		;a7bd	20 20 	    
	nop			;a7bf	00 	. 
	ld b,0f3h		;a7c0	06 f3 	. . 
	sbc a,d			;a7c2	9a 	. 
	pop af			;a7c3	f1 	. 
	ld sp,hl			;a7c4	f9 	. 
	xor d			;a7c5	aa 	. 
	push de			;a7c6	d5 	. 
	xor d			;a7c7	aa 	. 
	push de			;a7c8	d5 	. 
	xor d			;a7c9	aa 	. 
	push de			;a7ca	d5 	. 
	xor d			;a7cb	aa 	. 
	push de			;a7cc	d5 	. 
	and b			;a7cd	a0 	. 
	ld b,c			;a7ce	41 	A 
	and b			;a7cf	a0 	. 
	ld d,c			;a7d0	51 	Q 
	and d			;a7d1	a2 	. 
	ld d,c			;a7d2	51 	Q 
	and d			;a7d3	a2 	. 
	ld d,c			;a7d4	51 	Q 
	xor d			;a7d5	aa 	. 
	ld d,l			;a7d6	55 	U 
	xor e			;a7d7	ab 	. 
	ld d,a			;a7d8	57 	W 
	xor a			;a7d9	af 	. 
	ld e,a			;a7da	5f 	_ 
	cp a			;a7db	bf 	. 
	ld a,a			;a7dc	7f 	 
	inc bc			;a7dd	03 	. 
	rst 38h			;a7de	ff 	. 
la7dfh:
	add a,l			;a7df	85 	. 
	call m,0f6fbh		;a7e0	fc fb f6 	. . . 
	or 0eeh		;a7e3	f6 ee 	. . 
	inc b			;a7e5	04 	. 
	ld sp,hl			;a7e6	f9 	. 
	ld (bc),a			;a7e7	02 	. 
	ret m			;a7e8	f8 	. 
	ld (bc),a			;a7e9	02 	. 
	call m,0ea90h		;a7ea	fc 90 ea 	. . . 
	push de			;a7ed	d5 	. 
	jp pe,0eaf5h		;a7ee	ea f5 ea 	. . . 
	push af			;a7f1	f5 	. 
	jp pe,0a8f5h		;a7f2	ea f5 a8 	. . . 
	ld d,c			;a7f5	51 	Q 
	xor c			;a7f6	a9 	. 
	ld d,l			;a7f7	55 	U 
	xor c			;a7f8	a9 	. 
	ld d,a			;a7f9	57 	W 
	xor a			;a7fa	af 	. 
	ld e,a			;a7fb	5f 	_ 
	inc bc			;a7fc	03 	. 
	rst 38h			;a7fd	ff 	. 
	add a,d			;a7fe	82 	. 
	cp 0fdh		;a7ff	fe fd 	. . 
	inc bc			;a801	03 	. 
	ei			;a802	fb 	. 
	sub b			;a803	90 	. 
	rst 28h			;a804	ef 	. 
	call pe,007e8h		;a805	ec e8 07 	. . . 
	xor 06eh		;a808	ee 6e 	. n 
	ld e,(hl)			;a80a	5e 	^ 
	rst 18h			;a80b	df 	. 
	pop hl			;a80c	e1 	. 
	defb 0edh;next byte illegal after ed		;a80d	ed 	. 
	dec c			;a80e	0d 	. 
	ld d,h			;a80f	54 	T 
	ld hl,(02a54h)		;a810	2a 54 2a 	* T * 
	nop			;a813	00 	. 
	ld (bc),a			;a814	02 	. 
	call m,0fe03h		;a815	fc 03 fe 	. . . 
	inc bc			;a818	03 	. 
	rst 38h			;a819	ff 	. 
	sub d			;a81a	92 	. 
	jp pe,07a75h		;a81b	ea 75 7a 	. u z 
	ld (hl),l			;a81e	75 	u 
	ld a,(03a35h)		;a81f	3a 35 3a 	: 5 : 
	dec a			;a822	3d 	= 
	xor a			;a823	af 	. 
	ld e,a			;a824	5f 	_ 
	xor a			;a825	af 	. 
	ld e,a			;a826	5f 	_ 
	xor a			;a827	af 	. 
	ld d,a			;a828	57 	W 
	xor e			;a829	ab 	. 
	ld d,a			;a82a	57 	W 
	ld sp,hl			;a82b	f9 	. 
	ret m			;a82c	f8 	. 
	dec b			;a82d	05 	. 
	ld sp,hl			;a82e	f9 	. 
	call 0eaf8h		;a82f	cd f8 ea 	. . . 
	nop			;a832	00 	. 
	add a,b			;a833	80 	. 
	nop			;a834	00 	. 
	add a,b			;a835	80 	. 
	nop			;a836	00 	. 
	add a,b			;a837	80 	. 
	nop			;a838	00 	. 
	xor e			;a839	ab 	. 
	nop			;a83a	00 	. 
la83bh:
	ld bc,00100h		;a83b	01 00 01 	. . . 
	nop			;a83e	00 	. 
	ld bc,0fe00h		;a83f	01 00 fe 	. . . 
	cp 0f0h		;a842	fe f0 	. . 
	push af			;a844	f5 	. 
	jp p,0f2f5h		;a845	f2 f5 f2 	. . . 
	ret p			;a848	f0 	. 
	rra			;a849	1f 	. 
	rst 18h			;a84a	df 	. 
	rst 18h			;a84b	df 	. 
	ld c,a			;a84c	4f 	O 
	xor a			;a84d	af 	. 
	ld c,a			;a84e	4f 	O 
	xor a			;a84f	af 	. 
	rrca			;a850	0f 	. 
	sbc a,d			;a851	9a 	. 
	sbc a,l			;a852	9d 	. 
	sbc a,d			;a853	9a 	. 
	sbc a,l			;a854	9d 	. 
	sbc a,d			;a855	9a 	. 
	sbc a,l			;a856	9d 	. 
	adc a,0cfh		;a857	ce cf 	. . 
	xor e			;a859	ab 	. 
	ld d,l			;a85a	55 	U 
	xor e			;a85b	ab 	. 
	ld d,l			;a85c	55 	U 
	xor e			;a85d	ab 	. 
	ld d,a			;a85e	57 	W 
	xor e			;a85f	ab 	. 
	ld d,a			;a860	57 	W 
	ld e,0deh		;a861	1e de 	. . 
	ret nc			;a863	d0 	. 
	ld b,l			;a864	45 	E 
	and d			;a865	a2 	. 
	ld b,l			;a866	45 	E 
	and d			;a867	a2 	. 
	nop			;a868	00 	. 
	rst 20h			;a869	e7 	. 
	ex (sp),hl			;a86a	e3 	. 
	di			;a86b	f3 	. 
	ld sp,hl			;a86c	f9 	. 
	ret m			;a86d	f8 	. 
	call m,0fffeh		;a86e	fc fe ff 	. . . 
	xor e			;a871	ab 	. 
	ld d,l			;a872	55 	U 
	xor d			;a873	aa 	. 
	push de			;a874	d5 	. 
	jp pe,03b75h		;a875	ea 75 3b 	. u ; 
	rra			;a878	1f 	. 
	adc a,a			;a879	8f 	. 
	rst 0			;a87a	c7 	. 
	rst 20h			;a87b	e7 	. 
	ex (sp),hl			;a87c	e3 	. 
	inc b			;a87d	04 	. 
	di			;a87e	f3 	. 
	add a,h			;a87f	84 	. 
	pop af			;a880	f1 	. 
	ld sp,hl			;a881	f9 	. 
	ret m			;a882	f8 	. 
	call m,0fe02h		;a883	fc 02 fe 	. . . 
	dec b			;a886	05 	. 
	rst 38h			;a887	ff 	. 
	ld (bc),a			;a888	02 	. 
	ld a,a			;a889	7f 	 
	adc a,e			;a88a	8b 	. 
	ccf			;a88b	3f 	? 
	rra			;a88c	1f 	. 
	adc a,a			;a88d	8f 	. 
	rst 0			;a88e	c7 	. 
	ex (sp),hl			;a88f	e3 	. 
	di			;a890	f3 	. 
	di			;a891	f3 	. 
	pop af			;a892	f1 	. 
	ld sp,hl			;a893	f9 	. 
	ld sp,hl			;a894	f9 	. 
	ret m			;a895	f8 	. 
	inc bc			;a896	03 	. 
	rst 38h			;a897	ff 	. 
	add a,l			;a898	85 	. 
	ld a,a			;a899	7f 	 
	ccf			;a89a	3f 	? 
	rra			;a89b	1f 	. 
	ld c,a			;a89c	4f 	O 
	ld b,a			;a89d	47 	G 
	inc b			;a89e	04 	. 
	call m,0fe04h		;a89f	fc 04 fe 	. . . 
	inc b			;a8a2	04 	. 
	rst 38h			;a8a3	ff 	. 
	inc b			;a8a4	04 	. 
	ld a,a			;a8a5	7f 	 
	adc a,b			;a8a6	88 	. 
	ld h,a			;a8a7	67 	g 
	inc sp			;a8a8	33 	3 
	djnz la83bh		;a8a9	10 90 	. . 
	add a,b			;a8ab	80 	. 
	pop hl			;a8ac	e1 	. 
	ld h,c			;a8ad	61 	a 
	rlca			;a8ae	07 	. 
	inc b			;a8af	04 	. 
	ccf			;a8b0	3f 	? 
	add a,d			;a8b1	82 	. 
	inc a			;a8b2	3c 	< 
	jr nz,la8b7h		;a8b3	20 02 	  . 
	nop			;a8b5	00 	. 
	inc bc			;a8b6	03 	. 
la8b7h:
	rst 38h			;a8b7	ff 	. 
	add a,c			;a8b8	81 	. 
	rrca			;a8b9	0f 	. 
	inc b			;a8ba	04 	. 
	nop			;a8bb	00 	. 
	inc b			;a8bc	04 	. 
	rst 38h			;a8bd	ff 	. 
	add a,e			;a8be	83 	. 
	ld a,a			;a8bf	7f 	 
	rrca			;a8c0	0f 	. 
	ld bc,00004h		;a8c1	01 04 00 	. . . 
	dec b			;a8c4	05 	. 
	add a,b			;a8c5	80 	. 
	rlca			;a8c6	07 	. 
	nop			;a8c7	00 	. 
	add a,c			;a8c8	81 	. 
	djnz $+6		;a8c9	10 04 	. . 
	nop			;a8cb	00 	. 
	sub h			;a8cc	94 	. 
	inc b			;a8cd	04 	. 
	jr nz,la8d0h		;a8ce	20 00 	  . 
la8d0h:
	jr nc,la951h		;a8d0	30 7f 	0  
	ccf			;a8d2	3f 	? 
	rra			;a8d3	1f 	. 
	rra			;a8d4	1f 	. 
	ld c,a			;a8d5	4f 	O 
	rrca			;a8d6	0f 	. 
	rlca			;a8d7	07 	. 
	ld b,a			;a8d8	47 	G 
	ret nz			;a8d9	c0 	. 
	pop bc			;a8da	c1 	. 
	ret nz			;a8db	c0 	. 
	ret po			;a8dc	e0 	. 
	ret p			;a8dd	f0 	. 
	ret m			;a8de	f8 	. 
	cp 0ffh		;a8df	fe ff 	. . 
	rlca			;a8e1	07 	. 
	nop			;a8e2	00 	. 
	add a,d			;a8e3	82 	. 
	ret nz			;a8e4	c0 	. 
	djnz la8eah		;a8e5	10 03 	. . 
	nop			;a8e7	00 	. 
	add a,c			;a8e8	81 	. 
	ex af,af'			;a8e9	08 	. 
la8eah:
	inc bc			;a8ea	03 	. 
	nop			;a8eb	00 	. 
	inc bc			;a8ec	03 	. 
	rlca			;a8ed	07 	. 
	ld (bc),a			;a8ee	02 	. 
	rrca			;a8ef	0f 	. 
	add a,e			;a8f0	83 	. 
	rra			;a8f1	1f 	. 
	ccf			;a8f2	3f 	? 
	ld a,a			;a8f3	7f 	 
	ld b,0ffh		;a8f4	06 ff 	. . 
	sbc a,d			;a8f6	9a 	. 
	cp 0f8h		;a8f7	fe f8 	. . 
	rst 38h			;a8f9	ff 	. 
	rst 38h			;a8fa	ff 	. 
	cp 0fch		;a8fb	fe fc 	. . 
	ret m			;a8fd	f8 	. 
	add a,b			;a8fe	80 	. 
	inc b			;a8ff	04 	. 
	dec b			;a900	05 	. 
	ret m			;a901	f8 	. 
	ld sp,hl			;a902	f9 	. 
	ld (hl),c			;a903	71 	q 
	inc bc			;a904	03 	. 
	add a,a			;a905	87 	. 
	adc a,a			;a906	8f 	. 
	adc a,a			;a907	8f 	. 
	add a,0f0h		;a908	c6 f0 	. . 
	ex (sp),hl			;a90a	e3 	. 
	rst 20h			;a90b	e7 	. 
	rst 0			;a90c	c7 	. 
	rst 8			;a90d	cf 	. 
	adc a,a			;a90e	8f 	. 
	ld c,a			;a90f	4f 	O 
	rst 0			;a910	c7 	. 
	inc bc			;a911	03 	. 
	ei			;a912	fb 	. 
	inc bc			;a913	03 	. 
	di			;a914	f3 	. 
	sub b			;a915	90 	. 
	ex (sp),hl			;a916	e3 	. 
	pop hl			;a917	e1 	. 
	and e			;a918	a3 	. 
	and b			;a919	a0 	. 
	ld d,b			;a91a	50 	P 
	ld d,b			;a91b	50 	P 
	ld e,c			;a91c	59 	Y 
	adc a,0cch		;a91d	ce cc 	. . 
	nop			;a91f	00 	. 
	rst 38h			;a920	ff 	. 
	rst 38h			;a921	ff 	. 
	rra			;a922	1f 	. 
	ld bc,0fcc0h		;a923	01 c0 fc 	. . . 
	ld b,0ffh		;a926	06 ff 	. . 
	add a,h			;a928	84 	. 
	ccf			;a929	3f 	? 
	rrca			;a92a	0f 	. 
	add a,a			;a92b	87 	. 
	ex (sp),hl			;a92c	e3 	. 
	ex af,af'			;a92d	08 	. 
	nop			;a92e	00 	. 
	nop			;a92f	00 	. 
	ex af,af'			;a930	08 	. 
	nop			;a931	00 	. 
	sbc a,a			;a932	9f 	. 
	rra			;a933	1f 	. 
	ld h,b			;a934	60 	` 
	adc a,a			;a935	8f 	. 
	xor b			;a936	a8 	. 
	and a			;a937	a7 	. 
	ret po			;a938	e0 	. 
	cp b			;a939	b8 	. 
	adc a,a			;a93a	8f 	. 
	rst 38h			;a93b	ff 	. 
	nop			;a93c	00 	. 
	ret nz			;a93d	c0 	. 
	jr nz,la8d0h		;a93e	20 90 	  . 
	sub b			;a940	90 	. 
	or b			;a941	b0 	. 
	pop de			;a942	d1 	. 
	rst 38h			;a943	ff 	. 
	ccf			;a944	3f 	? 
	rra			;a945	1f 	. 
	ld c,006h		;a946	0e 06 	. . 
	inc b			;a948	04 	. 
	nop			;a949	00 	. 
	rst 38h			;a94a	ff 	. 
	rst 38h			;a94b	ff 	. 
	sbc a,a			;a94c	9f 	. 
	ld b,004h		;a94d	06 04 	. . 
	ex af,af'			;a94f	08 	. 
	ex af,af'			;a950	08 	. 
la951h:
	nop			;a951	00 	. 
	ld (bc),a			;a952	02 	. 
	rst 38h			;a953	ff 	. 
	dec b			;a954	05 	. 
	rlca			;a955	07 	. 
	adc a,c			;a956	89 	. 
	rrca			;a957	0f 	. 
	rst 38h			;a958	ff 	. 
	rst 38h			;a959	ff 	. 
	cp 0fch		;a95a	fe fc 	. . 
	ret m			;a95c	f8 	. 
	ret p			;a95d	f0 	. 
	ret p			;a95e	f0 	. 
	ret po			;a95f	e0 	. 
	ld (bc),a			;a960	02 	. 
	rst 38h			;a961	ff 	. 
	ld b,000h		;a962	06 00 	. . 
	add a,c			;a964	81 	. 
	rst 38h			;a965	ff 	. 
	ex af,af'			;a966	08 	. 
	add a,b			;a967	80 	. 
	ex af,af'			;a968	08 	. 
	ld de,0ff79h		;a969	11 79 ff 	. y . 
	add a,h			;a96c	84 	. 
	di			;a96d	f3 	. 
	pop hl			;a96e	e1 	. 
	pop hl			;a96f	e1 	. 
	ret nz			;a970	c0 	. 
	inc bc			;a971	03 	. 
	add a,b			;a972	80 	. 
	rlca			;a973	07 	. 
	rst 38h			;a974	ff 	. 
	add a,c			;a975	81 	. 
	ld a,a			;a976	7f 	 
	rlca			;a977	07 	. 
	rst 38h			;a978	ff 	. 
	add a,c			;a979	81 	. 
	jp 0ff29h		;a97a	c3 29 ff 	. ) . 
	inc bc			;a97d	03 	. 
	cp 002h		;a97e	fe 02 	. . 
	call m,0f802h		;a980	fc 02 f8 	. . . 
	ex af,af'			;a983	08 	. 
	nop			;a984	00 	. 
	ld (bc),a			;a985	02 	. 
	ccf			;a986	3f 	? 
	ld (bc),a			;a987	02 	. 
	rra			;a988	1f 	. 
la989h:
	ld (bc),a			;a989	02 	. 
	rrca			;a98a	0f 	. 
	ld (bc),a			;a98b	02 	. 
	rlca			;a98c	07 	. 
	jr $+1		;a98d	18 ff 	. . 
	ld (bc),a			;a98f	02 	. 
	ret p			;a990	f0 	. 
	ld (bc),a			;a991	02 	. 
	ret po			;a992	e0 	. 
	ld (bc),a			;a993	02 	. 
	ret nz			;a994	c0 	. 
	add a,d			;a995	82 	. 
	add a,b			;a996	80 	. 
	rst 38h			;a997	ff 	. 
	inc b			;a998	04 	. 
	nop			;a999	00 	. 
	add a,l			;a99a	85 	. 
	ld (hl),b			;a99b	70 	p 
	ret m			;a99c	f8 	. 
	ret m			;a99d	f8 	. 
	rst 38h			;a99e	ff 	. 
	inc bc			;a99f	03 	. 
	ld (bc),a			;a9a0	02 	. 
	ld bc,00004h		;a9a1	01 04 00 	. . . 
	dec b			;a9a4	05 	. 
	rst 38h			;a9a5	ff 	. 
	add a,e			;a9a6	83 	. 
	ld a,a			;a9a7	7f 	 
	ccf			;a9a8	3f 	? 
	rra			;a9a9	1f 	. 
	inc hl			;a9aa	23 	# 
	rst 38h			;a9ab	ff 	. 
	add a,c			;a9ac	81 	. 
	call m,0f804h		;a9ad	fc 04 f8 	. . . 
	ld c,0ffh		;a9b0	0e ff 	. . 
	add a,e			;a9b2	83 	. 
	di			;a9b3	f3 	. 
	ret nc			;a9b4	d0 	. 
	ret m			;a9b5	f8 	. 
	dec b			;a9b6	05 	. 
	rst 38h			;a9b7	ff 	. 
	add a,e			;a9b8	83 	. 
	pop af			;a9b9	f1 	. 
	ld bc,00407h		;a9ba	01 07 04 	. . . 
	rst 38h			;a9bd	ff 	. 
	add a,e			;a9be	83 	. 
	ld a,a			;a9bf	7f 	 
	rst 38h			;a9c0	ff 	. 
	ld a,a			;a9c1	7f 	 
	dec bc			;a9c2	0b 	. 
	rst 38h			;a9c3	ff 	. 
	add a,c			;a9c4	81 	. 
	jp l8104h		;a9c5	c3 04 81 	. . . 
	ld de,l82ffh		;a9c8	11 ff 82 	. . . 
	defb 0fdh,0efh,012h	;illegal sequence		;a9cb	fd ef 12 	. . . 
	rst 38h			;a9ce	ff 	. 
	add a,h			;a9cf	84 	. 
	cp a			;a9d0	bf 	. 
	rst 38h			;a9d1	ff 	. 
	rst 38h			;a9d2	ff 	. 
	rst 10h			;a9d3	d7 	. 
	ld de,085ffh		;a9d4	11 ff 85 	. . . 
	di			;a9d7	f3 	. 
	ret po			;a9d8	e0 	. 
	or b			;a9d9	b0 	. 
	rst 38h			;a9da	ff 	. 
	ld sp,hl			;a9db	f9 	. 
	inc b			;a9dc	04 	. 
	rst 38h			;a9dd	ff 	. 
	adc a,h			;a9de	8c 	. 
	call m,0ff00h		;a9df	fc 00 ff 	. . . 
	call pe,0dfffh		;a9e2	ec ff df 	. . . 
	rst 38h			;a9e5	ff 	. 
	cp a			;a9e6	bf 	. 
	rla			;a9e7	17 	. 
	cpl			;a9e8	2f 	/ 
	rst 38h			;a9e9	ff 	. 
	adc a,a			;a9ea	8f 	. 
	ld b,d			;a9eb	42 	B 
	rst 38h			;a9ec	ff 	. 
	add a,h			;a9ed	84 	. 
	ei			;a9ee	fb 	. 
	ret c			;a9ef	d8 	. 
	or 0fdh		;a9f0	f6 fd 	. . 
	dec b			;a9f2	05 	. 
	rst 38h			;a9f3	ff 	. 
	add a,e			;a9f4	83 	. 
	nop			;a9f5	00 	. 
	inc bc			;a9f6	03 	. 
	cp 004h		;a9f7	fe 04 	. . 
	rst 38h			;a9f9	ff 	. 
	add a,e			;a9fa	83 	. 
	rst 8			;a9fb	cf 	. 
	ld a,a			;a9fc	7f 	 
	cp a			;a9fd	bf 	. 
	add hl,sp			;a9fe	39 	9 
	rst 38h			;a9ff	ff 	. 
	add a,c			;aa00	81 	. 
	ex (sp),hl			;aa01	e3 	. 
	inc bc			;aa02	03 	. 
	ret po			;aa03	e0 	. 
	inc b			;aa04	04 	. 
	rst 38h			;aa05	ff 	. 
	add a,e			;aa06	83 	. 
	call m,07f3eh		;aa07	fc 3e 7f 	. >  
	ld b,0ffh		;aa0a	06 ff 	. . 
	add a,l			;aa0c	85 	. 
	pop af			;aa0d	f1 	. 
	ret po			;aa0e	e0 	. 
	ret po			;aa0f	e0 	. 
	rst 38h			;aa10	ff 	. 
	call m,0f803h		;aa11	fc 03 f8 	. . . 
	add a,l			;aa14	85 	. 
	rst 38h			;aa15	ff 	. 
	ei			;aa16	fb 	. 
	ei			;aa17	fb 	. 
	rst 38h			;aa18	ff 	. 
	ld a,a			;aa19	7f 	 
	inc bc			;aa1a	03 	. 
	ccf			;aa1b	3f 	? 
	add a,c			;aa1c	81 	. 
	ex (sp),hl			;aa1d	e3 	. 
	ld (bc),a			;aa1e	02 	. 
	ld b,c			;aa1f	41 	A 
	ex af,af'			;aa20	08 	. 
	rst 38h			;aa21	ff 	. 
	add a,c			;aa22	81 	. 
	ret po			;aa23	e0 	. 
	inc bc			;aa24	03 	. 
	ret nz			;aa25	c0 	. 
	ld (bc),a			;aa26	02 	. 
	add a,b			;aa27	80 	. 
	add a,c			;aa28	81 	. 
	add a,c			;aa29	81 	. 
	inc bc			;aa2a	03 	. 
	rst 38h			;aa2b	ff 	. 
	ld (bc),a			;aa2c	02 	. 
	ld a,a			;aa2d	7f 	 
	add a,e			;aa2e	83 	. 
	add a,c			;aa2f	81 	. 
	add a,b			;aa30	80 	. 
	nop			;aa31	00 	. 
	inc bc			;aa32	03 	. 
	rst 38h			;aa33	ff 	. 
	ld (bc),a			;aa34	02 	. 
	ld a,a			;aa35	7f 	 
	add a,(hl)			;aa36	86 	. 
	ccf			;aa37	3f 	? 
	cp a			;aa38	bf 	. 
	cp a			;aa39	bf 	. 
	rst 38h			;aa3a	ff 	. 
	ret po			;aa3b	e0 	. 
	rst 38h			;aa3c	ff 	. 
	ld (bc),a			;aa3d	02 	. 
	call pe,0ff02h		;aa3e	ec 02 ff 	. . . 
	add a,d			;aa41	82 	. 
	and 0f9h		;aa42	e6 f9 	. . 
	inc b			;aa44	04 	. 
	ei			;aa45	fb 	. 
	ld (bc),a			;aa46	02 	. 
	rst 38h			;aa47	ff 	. 
	add a,h			;aa48	84 	. 
	ld h,(hl)			;aa49	66 	f 
	sbc a,c			;aa4a	99 	. 
	ld b,c			;aa4b	41 	A 
	ld a,a			;aa4c	7f 	 
	ld (bc),a			;aa4d	02 	. 
	ld e,c			;aa4e	59 	Y 
	ld (bc),a			;aa4f	02 	. 
	exx			;aa50	d9 	. 
	add a,d			;aa51	82 	. 
	add hl,de			;aa52	19 	. 
	sbc a,c			;aa53	99 	. 
	ex af,af'			;aa54	08 	. 
	rst 38h			;aa55	ff 	. 
	sub a			;aa56	97 	. 
	and 0f9h		;aa57	e6 f9 	. . 
	and 0f9h		;aa59	e6 f9 	. . 
	rst 20h			;aa5b	e7 	. 
	ld sp,hl			;aa5c	f9 	. 
	rst 20h			;aa5d	e7 	. 
	rst 38h			;aa5e	ff 	. 
	ld a,(hl)			;aa5f	7e 	~ 
	defb 0fdh,0feh,0ffh	;illegal sequence		;aa60	fd fe ff 	. . . 
	cp 0ffh		;aa63	fe ff 	. . 
	cp 0ffh		;aa65	fe ff 	. . 
	add hl,de			;aa67	19 	. 
	sbc a,c			;aa68	99 	. 
	add hl,de			;aa69	19 	. 
	sbc a,c			;aa6a	99 	. 
	add hl,de			;aa6b	19 	. 
	sbc a,c			;aa6c	99 	. 
	add hl,de			;aa6d	19 	. 
	ld de,006ffh		;aa6e	11 ff 06 	. . . 
	add a,b			;aa71	80 	. 
	ld (bc),a			;aa72	02 	. 
	ld b,b			;aa73	40 	@ 
	add a,c			;aa74	81 	. 
	ld de,01006h		;aa75	11 06 10 	. . . 
	add a,e			;aa78	83 	. 
	rra			;aa79	1f 	. 
	jr nc,$+17		;aa7a	30 0f 	0 . 
	ld b,000h		;aa7c	06 00 	. . 
	add a,d			;aa7e	82 	. 
	ld h,b			;aa7f	60 	` 
	add a,b			;aa80	80 	. 
	ld b,000h		;aa81	06 00 	. . 
	add a,c			;aa83	81 	. 
	rst 38h			;aa84	ff 	. 
	ld (bc),a			;aa85	02 	. 
	ld a,a			;aa86	7f 	 
	ld (bc),a			;aa87	02 	. 
	ccf			;aa88	3f 	? 
	add a,d			;aa89	82 	. 
	ld a,01eh		;aa8a	3e 1e 	> . 
	add hl,bc			;aa8c	09 	. 
	rst 38h			;aa8d	ff 	. 
	rlca			;aa8e	07 	. 
	add a,b			;aa8f	80 	. 
	add a,c			;aa90	81 	. 
	ret nz			;aa91	c0 	. 
	inc bc			;aa92	03 	. 
	ld e,081h		;aa93	1e 81 	. . 
	ld c,003h		;aa95	0e 03 	. . 
	inc c			;aa97	0c 	. 
	adc a,c			;aa98	89 	. 
	ld b,000h		;aa99	06 00 	. . 
	nop			;aa9b	00 	. 
	ld bc,00703h		;aa9c	01 03 07 	. . . 
	rra			;aa9f	1f 	. 
	ccf			;aaa0	3f 	? 
	ld a,a			;aaa1	7f 	 
	inc b			;aaa2	04 	. 
	rst 38h			;aaa3	ff 	. 
	add a,h			;aaa4	84 	. 
	defb 0fdh,0fah,0fah	;illegal sequence		;aaa5	fd fa fa 	. . . 
	jp p,0ff08h		;aaa8	f2 08 ff 	. . . 
	inc bc			;aaab	03 	. 
	ret nz			;aaac	c0 	. 
	dec b			;aaad	05 	. 
	ret po			;aaae	e0 	. 
	ld (bc),a			;aaaf	02 	. 
	ld b,003h		;aab0	06 03 	. . 
	inc bc			;aab2	03 	. 
	ld (bc),a			;aab3	02 	. 
	rlca			;aab4	07 	. 
	add a,c			;aab5	81 	. 
	rrca			;aab6	0f 	. 
	inc b			;aab7	04 	. 
	rst 38h			;aab8	ff 	. 
	adc a,l			;aab9	8d 	. 
	cp 0fdh		;aaba	fe fd 	. . 
	defb 0fdh,0fch,0f1h	;illegal sequence		;aabc	fd fc f1 	. . . 
	ret p			;aabf	f0 	. 
	rst 30h			;aac0	f7 	. 
	ld sp,hl			;aac1	f9 	. 
	sub d			;aac2	92 	. 
	ld d,d			;aac3	52 	R 
	ld h,d			;aac4	62 	b 
	and c			;aac5	a1 	. 
	rst 38h			;aac6	ff 	. 
	ld (bc),a			;aac7	02 	. 
	di			;aac8	f3 	. 
	inc b			;aac9	04 	. 
	add a,c			;aaca	81 	. 
	add hl,bc			;aacb	09 	. 
	rst 38h			;aacc	ff 	. 
	ld (bc),a			;aacd	02 	. 
	ret po			;aace	e0 	. 
	dec b			;aacf	05 	. 
	ret p			;aad0	f0 	. 
	add a,c			;aad1	81 	. 
	ret m			;aad2	f8 	. 
	dec b			;aad3	05 	. 
	rrca			;aad4	0f 	. 
	add a,l			;aad5	85 	. 
	rlca			;aad6	07 	. 
	inc bc			;aad7	03 	. 
	inc bc			;aad8	03 	. 
	cp 0ffh		;aad9	fe ff 	. . 
	dec b			;aadb	05 	. 
	cp 084h		;aadc	fe 84 	. . 
	rst 38h			;aade	ff 	. 
	nop			;aadf	00 	. 
	rst 38h			;aae0	ff 	. 
	ld (bc),a			;aae1	02 	. 
	inc b			;aae2	04 	. 
	dec b			;aae3	05 	. 
	add a,h			;aae4	84 	. 
	rst 38h			;aae5	ff 	. 
	nop			;aae6	00 	. 
	rst 38h			;aae7	ff 	. 
	ld b,b			;aae8	40 	@ 
	inc b			;aae9	04 	. 
laaeah:
	and b			;aaea	a0 	. 
	inc b			;aaeb	04 	. 
	rst 38h			;aaec	ff 	. 
	inc b			;aaed	04 	. 
	ret m			;aaee	f8 	. 
	ld (bc),a			;aaef	02 	. 
	rst 38h			;aaf0	ff 	. 
	ld (bc),a			;aaf1	02 	. 
	ccf			;aaf2	3f 	? 
	inc b			;aaf3	04 	. 
	rra			;aaf4	1f 	. 
	add a,c			;aaf5	81 	. 
	rst 38h			;aaf6	ff 	. 
	dec b			;aaf7	05 	. 
	ret m			;aaf8	f8 	. 
	ld (bc),a			;aaf9	02 	. 
	call m,0fe82h		;aafa	fc 82 fe 	. . . 
	inc bc			;aafd	03 	. 
	inc b			;aafe	04 	. 
	ld bc,00303h		;aaff	01 03 03 	. . . 
	add a,c			;ab02	81 	. 
	rst 38h			;ab03	ff 	. 
	ld (bc),a			;ab04	02 	. 
	ccf			;ab05	3f 	? 
	inc b			;ab06	04 	. 
	jr lab12h		;ab07	18 09 	. . 
	rst 38h			;ab09	ff 	. 
	add a,a			;ab0a	87 	. 
	ld bc,l8000h		;ab0b	01 00 80 	. . . 
	ret nz			;ab0e	c0 	. 
	ret nz			;ab0f	c0 	. 
	ret po			;ab10	e0 	. 
	ld sp,hl			;ab11	f9 	. 
lab12h:
	ld e,(hl)			;ab12	5e 	^ 
	rst 38h			;ab13	ff 	. 
	add a,h			;ab14	84 	. 
	defb 0fdh,0ffh,0ffh	;illegal sequence		;ab15	fd ff ff 	. . . 
	cp a			;ab18	bf 	. 
	inc bc			;ab19	03 	. 
	rst 38h			;ab1a	ff 	. 
	adc a,h			;ab1b	8c 	. 
	ld a,a			;ab1c	7f 	 
	rst 38h			;ab1d	ff 	. 
	rst 38h			;ab1e	ff 	. 
	rst 28h			;ab1f	ef 	. 
	rst 38h			;ab20	ff 	. 
	cp a			;ab21	bf 	. 
	ei			;ab22	fb 	. 
	rst 38h			;ab23	ff 	. 
	ei			;ab24	fb 	. 
	rst 18h			;ab25	df 	. 
	rst 38h			;ab26	ff 	. 
	rst 8			;ab27	cf 	. 
	inc b			;ab28	04 	. 
	rst 38h			;ab29	ff 	. 
	add a,(hl)			;ab2a	86 	. 
	sbc a,a			;ab2b	9f 	. 
	rst 38h			;ab2c	ff 	. 
	rst 38h			;ab2d	ff 	. 
	cp a			;ab2e	bf 	. 
	rst 38h			;ab2f	ff 	. 
	cp 006h		;ab30	fe 06 	. . 
	rst 38h			;ab32	ff 	. 
	add a,h			;ab33	84 	. 
	cp 0ffh		;ab34	fe ff 	. . 
	rst 38h			;ab36	ff 	. 
	rst 18h			;ab37	df 	. 
	inc b			;ab38	04 	. 
	rst 38h			;ab39	ff 	. 
	add a,l			;ab3a	85 	. 
	rst 28h			;ab3b	ef 	. 
	defb 0fdh,0ffh,0ffh	;illegal sequence		;ab3c	fd ff ff 	. . . 
	rst 30h			;ab3f	f7 	. 
	ld c,h			;ab40	4c 	L 
	rst 38h			;ab41	ff 	. 
	inc bc			;ab42	03 	. 
	ld a,082h		;ab43	3e 82 	> . 
	ld a,(hl)			;ab45	7e 	~ 
	ld a,a			;ab46	7f 	 
	ld (bc),a			;ab47	02 	. 
	rst 38h			;ab48	ff 	. 
	nop			;ab49	00 	. 
	ex af,af'			;ab4a	08 	. 
	nop			;ab4b	00 	. 
	sbc a,a			;ab4c	9f 	. 
	rra			;ab4d	1f 	. 
	ld h,b			;ab4e	60 	` 
	adc a,a			;ab4f	8f 	. 
	xor b			;ab50	a8 	. 
	and a			;ab51	a7 	. 
	ret po			;ab52	e0 	. 
	cp b			;ab53	b8 	. 
	adc a,a			;ab54	8f 	. 
	rst 38h			;ab55	ff 	. 
	nop			;ab56	00 	. 
	ret nz			;ab57	c0 	. 
	jr nz,laaeah		;ab58	20 90 	  . 
	sub b			;ab5a	90 	. 
	or b			;ab5b	b0 	. 
	pop de			;ab5c	d1 	. 
	rst 38h			;ab5d	ff 	. 
	ccf			;ab5e	3f 	? 
	rra			;ab5f	1f 	. 
	ld c,006h		;ab60	0e 06 	. . 
	inc b			;ab62	04 	. 
	nop			;ab63	00 	. 
	rst 38h			;ab64	ff 	. 
	rst 38h			;ab65	ff 	. 
	sbc a,a			;ab66	9f 	. 
	ld b,004h		;ab67	06 04 	. . 
	ex af,af'			;ab69	08 	. 
	ex af,af'			;ab6a	08 	. 
	nop			;ab6b	00 	. 
	ld (bc),a			;ab6c	02 	. 
	rst 38h			;ab6d	ff 	. 
	dec b			;ab6e	05 	. 
	rlca			;ab6f	07 	. 
	adc a,c			;ab70	89 	. 
	rrca			;ab71	0f 	. 
	rst 38h			;ab72	ff 	. 
	rst 38h			;ab73	ff 	. 
	cp 0fch		;ab74	fe fc 	. . 
	ret m			;ab76	f8 	. 
	ret p			;ab77	f0 	. 
	ret p			;ab78	f0 	. 
	ret po			;ab79	e0 	. 
	ld (bc),a			;ab7a	02 	. 
	rst 38h			;ab7b	ff 	. 
	ld b,000h		;ab7c	06 00 	. . 
	add a,c			;ab7e	81 	. 
	rst 38h			;ab7f	ff 	. 
	ex af,af'			;ab80	08 	. 
	add a,b			;ab81	80 	. 
	ex af,af'			;ab82	08 	. 
	ld de,0000bh		;ab83	11 0b 00 	. . . 
	adc a,e			;ab86	8b 	. 
	rrca			;ab87	0f 	. 
	djnz labaah		;ab88	10 20 	.   
	ld b,b			;ab8a	40 	@ 
	add a,b			;ab8b	80 	. 
	rrca			;ab8c	0f 	. 
	rrca			;ab8d	0f 	. 
	rra			;ab8e	1f 	. 
	sbc a,a			;ab8f	9f 	. 
lab90h:
	ld e,(hl)			;ab90	5e 	^ 
	ld a,002h		;ab91	3e 02 	> . 
	jr c,lab98h		;ab93	38 03 	8 . 
	add a,b			;ab95	80 	. 
	ld a,(bc)			;ab96	0a 	. 
	nop			;ab97	00 	. 
lab98h:
	sub e			;ab98	93 	. 
	ld b,009h		;ab99	06 09 	. . 
	djnz lab9dh		;ab9b	10 00 	. . 
lab9dh:
	nop			;ab9d	00 	. 
	ld bc,00402h		;ab9e	01 02 04 	. . . 
	ex af,af'			;aba1	08 	. 
	ex af,af'			;aba2	08 	. 
	sub b			;aba3	90 	. 
	nop			;aba4	00 	. 
	nop			;aba5	00 	. 
	add a,b			;aba6	80 	. 
	ld b,b			;aba7	40 	@ 
	jr nz,labbah		;aba8	20 10 	  . 
labaah:
	djnz labb4h		;abaa	10 08 	. . 
	add hl,bc			;abac	09 	. 
	nop			;abad	00 	. 
	add a,c			;abae	81 	. 
	ld bc,00202h		;abaf	01 02 02 	. . . 
	ld (bc),a			;abb2	02 	. 
	inc b			;abb3	04 	. 
labb4h:
	add a,e			;abb4	83 	. 
	ex af,af'			;abb5	08 	. 
	rrca			;abb6	0f 	. 
labb7h:
	add a,b			;abb7	80 	. 
	ld b,000h		;abb8	06 00 	. . 
labbah:
	adc a,l			;abba	8d 	. 
	rst 38h			;abbb	ff 	. 
	ld a,b			;abbc	78 	x 
	ld h,h			;abbd	64 	d 
	rst 20h			;abbe	e7 	. 
	adc a,h			;abbf	8c 	. 
	adc a,b			;abc0	88 	. 
	djnz labd3h		;abc1	10 10 	. . 
	ret po			;abc3	e0 	. 
	nop			;abc4	00 	. 
	nop			;abc5	00 	. 
	ret po			;abc6	e0 	. 
	djnz labcbh		;abc7	10 02 	. . 
	ex af,af'			;abc9	08 	. 
	ld (bc),a			;abca	02 	. 
labcbh:
	inc b			;abcb	04 	. 
	ld (bc),a			;abcc	02 	. 
	jr nz,labd2h		;abcd	20 03 	  . 
	ld b,b			;abcf	40 	@ 
	ld (bc),a			;abd0	02 	. 
	add a,b			;abd1	80 	. 
labd2h:
	add a,h			;abd2	84 	. 
labd3h:
	rst 38h			;abd3	ff 	. 
	ld h,b			;abd4	60 	` 
	ld h,b			;abd5	60 	` 
	jr nz,labdah		;abd6	20 02 	  . 
	ld b,b			;abd8	40 	@ 
	ld (bc),a			;abd9	02 	. 
labdah:
	add a,b			;abda	80 	. 
	add a,d			;abdb	82 	. 
	rst 38h			;abdc	ff 	. 
	ex af,af'			;abdd	08 	. 
	ld (bc),a			;abde	02 	. 
	inc b			;abdf	04 	. 
	ld (bc),a			;abe0	02 	. 
	ld (bc),a			;abe1	02 	. 
	ld (bc),a			;abe2	02 	. 
	ld bc,0ff86h		;abe3	01 86 ff 	. . . 
	ld c,012h		;abe6	0e 12 	. . 
	ld hl,04021h		;abe8	21 21 40 	! ! @ 
	inc bc			;abeb	03 	. 
	add a,b			;abec	80 	. 
	inc b			;abed	04 	. 
	nop			;abee	00 	. 
	inc bc			;abef	03 	. 
	add a,b			;abf0	80 	. 
	add a,d			;abf1	82 	. 
	ld b,b			;abf2	40 	@ 
	inc a			;abf3	3c 	< 
	ld (bc),a			;abf4	02 	. 
	ld b,d			;abf5	42 	B 
	inc bc			;abf6	03 	. 
	add a,c			;abf7	81 	. 
	add a,c			;abf8	81 	. 
	ld b,d			;abf9	42 	B 
	dec b			;abfa	05 	. 
	nop			;abfb	00 	. 
	ld (bc),a			;abfc	02 	. 
	ld bc,00202h		;abfd	01 02 02 	. . . 
	add a,h			;ac00	84 	. 
	nop			;ac01	00 	. 
	ld a,041h		;ac02	3e 41 	> A 
	add a,b			;ac04	80 	. 
	inc b			;ac05	04 	. 
	nop			;ac06	00 	. 
	ld (bc),a			;ac07	02 	. 
	jr nz,lab90h		;ac08	20 86 	  . 
	ld b,b			;ac0a	40 	@ 
	ret nz			;ac0b	c0 	. 
	ld b,b			;ac0c	40 	@ 
	jr nz,lac2fh		;ac0d	20 20 	    
	rra			;ac0f	1f 	. 
	inc b			;ac10	04 	. 
	ld (bc),a			;ac11	02 	. 
	inc bc			;ac12	03 	. 
	ld bc,0ff84h		;ac13	01 84 ff 	. . . 
	nop			;ac16	00 	. 
	jr lac3dh		;ac17	18 24 	. $ 
	ld (bc),a			;ac19	02 	. 
	ld b,d			;ac1a	42 	B 
	ld (bc),a			;ac1b	02 	. 
	add a,c			;ac1c	81 	. 
	add a,d			;ac1d	82 	. 
	rst 38h			;ac1e	ff 	. 
	ld bc,00203h		;ac1f	01 03 02 	. . . 
	ld (bc),a			;ac22	02 	. 
	inc b			;ac23	04 	. 
	ld (bc),a			;ac24	02 	. 
	ex af,af'			;ac25	08 	. 
	ex af,af'			;ac26	08 	. 
	nop			;ac27	00 	. 
	ld (bc),a			;ac28	02 	. 
	jr nz,lac2dh		;ac29	20 02 	  . 
	djnz lac2fh		;ac2b	10 02 	. . 
lac2dh:
	ex af,af'			;ac2d	08 	. 
	inc b			;ac2e	04 	. 
lac2fh:
	inc b			;ac2f	04 	. 
	ld (bc),a			;ac30	02 	. 
	ex af,af'			;ac31	08 	. 
	ld (bc),a			;ac32	02 	. 
	djnz labb7h		;ac33	10 82 	. . 
	jr nz,lac76h		;ac35	20 3f 	  ? 
	rlca			;ac37	07 	. 
	nop			;ac38	00 	. 
	adc a,c			;ac39	89 	. 
	rst 38h			;ac3a	ff 	. 
	djnz $+10		;ac3b	10 08 	. . 
lac3dh:
	inc b			;ac3d	04 	. 
	inc b			;ac3e	04 	. 
	ld (bc),a			;ac3f	02 	. 
	ld bc,0ff01h		;ac40	01 01 ff 	. . . 
	ld (bc),a			;ac43	02 	. 
	djnz lac48h		;ac44	10 02 	. . 
	jr nz,lac4ah		;ac46	20 02 	  . 
lac48h:
	ld b,b			;ac48	40 	@ 
	add a,d			;ac49	82 	. 
lac4ah:
	add a,b			;ac4a	80 	. 
	rst 38h			;ac4b	ff 	. 
	inc b			;ac4c	04 	. 
	nop			;ac4d	00 	. 
	add a,l			;ac4e	85 	. 
	djnz lac89h		;ac4f	10 38 	. 8 
	jr c,$+1		;ac51	38 ff 	8 . 
	ld (bc),a			;ac53	02 	. 
	ld (bc),a			;ac54	02 	. 
	ld bc,00004h		;ac55	01 04 00 	. . . 
	add a,c			;ac58	81 	. 
	rst 38h			;ac59	ff 	. 
	inc bc			;ac5a	03 	. 
	nop			;ac5b	00 	. 
	add a,l			;ac5c	85 	. 
	add a,b			;ac5d	80 	. 
	ld b,b			;ac5e	40 	@ 
	jr nz,lac71h		;ac5f	20 10 	  . 
	ret m			;ac61	f8 	. 
	inc b			;ac62	04 	. 
	nop			;ac63	00 	. 
	adc a,b			;ac64	88 	. 
	ld bc,00703h		;ac65	01 03 07 	. . . 
	rrca			;ac68	0f 	. 
	nop			;ac69	00 	. 
	inc bc			;ac6a	03 	. 
	rra			;ac6b	1f 	. 
	ld a,a			;ac6c	7f 	 
	inc b			;ac6d	04 	. 
	rst 38h			;ac6e	ff 	. 
	add a,d			;ac6f	82 	. 
	nop			;ac70	00 	. 
lac71h:
	call m,0ff06h		;ac71	fc 06 ff 	. . . 
	inc bc			;ac74	03 	. 
	nop			;ac75	00 	. 
lac76h:
	add a,l			;ac76	85 	. 
	add a,b			;ac77	80 	. 
	ret po			;ac78	e0 	. 
	ret m			;ac79	f8 	. 
	call m,008ffh		;ac7a	fc ff 08 	. . . 
	nop			;ac7d	00 	. 
	ld (bc),a			;ac7e	02 	. 
	rra			;ac7f	1f 	. 
	add a,c			;ac80	81 	. 
	ccf			;ac81	3f 	? 
	dec b			;ac82	05 	. 
	ld a,a			;ac83	7f 	 
	add a,d			;ac84	82 	. 
	cp 0fch		;ac85	fe fc 	. . 
	ld (bc),a			;ac87	02 	. 
	ret m			;ac88	f8 	. 
lac89h:
	inc bc			;ac89	03 	. 
	ret p			;ac8a	f0 	. 
	adc a,c			;ac8b	89 	. 
	ret m			;ac8c	f8 	. 
	rra			;ac8d	1f 	. 
	rrca			;ac8e	0f 	. 
	rrca			;ac8f	0f 	. 
	rlca			;ac90	07 	. 
	inc bc			;ac91	03 	. 
	ld bc,00701h		;ac92	01 01 07 	. . . 
	ex af,af'			;ac95	08 	. 
	rst 38h			;ac96	ff 	. 
	add a,l			;ac97	85 	. 
	ret nz			;ac98	c0 	. 
	ret po			;ac99	e0 	. 
	ret po			;ac9a	e0 	. 
	ret p			;ac9b	f0 	. 
	ret m			;ac9c	f8 	. 
	inc bc			;ac9d	03 	. 
	call m,00008h		;ac9e	fc 08 00 	. . . 
	add a,c			;aca1	81 	. 
	ld a,a			;aca2	7f 	 
	inc bc			;aca3	03 	. 
	ccf			;aca4	3f 	? 
	ld (bc),a			;aca5	02 	. 
	rra			;aca6	1f 	. 
	add a,d			;aca7	82 	. 
	rrca			;aca8	0f 	. 
	inc bc			;aca9	03 	. 
	inc c			;acaa	0c 	. 
	rst 38h			;acab	ff 	. 
lacach:
	adc a,c			;acac	89 	. 
	cp 0fch		;acad	fe fc 	. . 
	call m,0fff8h		;acaf	fc f8 ff 	. . . 
	rst 38h			;acb2	ff 	. 
	add a,a			;acb3	87 	. 
	inc bc			;acb4	03 	. 
	ld bc,00003h		;acb5	01 03 00 	. . . 
	inc bc			;acb8	03 	. 
	cp 004h		;acb9	fe 04 	. . 
	rst 38h			;acbb	ff 	. 
	add a,c			;acbc	81 	. 
	ld a,a			;acbd	7f 	 
	dec b			;acbe	05 	. 
	nop			;acbf	00 	. 
	add a,e			;acc0	83 	. 
	ret nz			;acc1	c0 	. 
	ret p			;acc2	f0 	. 
	ret m			;acc3	f8 	. 
	inc bc			;acc4	03 	. 
	rst 38h			;acc5	ff 	. 
	inc bc			;acc6	03 	. 
	ld a,a			;acc7	7f 	 
	ld (bc),a			;acc8	02 	. 
	ccf			;acc9	3f 	? 
	add a,h			;acca	84 	. 
	ret m			;accb	f8 	. 
	ret p			;accc	f0 	. 
	ret po			;accd	e0 	. 
	ret p			;acce	f0 	. 
	inc b			;accf	04 	. 
	rst 38h			;acd0	ff 	. 
	inc b			;acd1	04 	. 
	nop			;acd2	00 	. 
	inc b			;acd3	04 	. 
	rst 38h			;acd4	ff 	. 
	add a,h			;acd5	84 	. 
	ld a,a			;acd6	7f 	 
	ccf			;acd7	3f 	? 
	rra			;acd8	1f 	. 
	ccf			;acd9	3f 	? 
	inc b			;acda	04 	. 
	rst 38h			;acdb	ff 	. 
	ld (bc),a			;acdc	02 	. 
	call m,0fe03h		;acdd	fc 03 fe 	. . . 
	ld (bc),a			;ace0	02 	. 
	rst 38h			;ace1	ff 	. 
	add a,d			;ace2	82 	. 
	cp 03fh		;ace3	fe 3f 	. ? 
	ld (bc),a			;ace5	02 	. 
	rra			;ace6	1f 	. 
	ld (bc),a			;ace7	02 	. 
	rrca			;ace8	0f 	. 
	inc bc			;ace9	03 	. 
	rlca			;acea	07 	. 
	inc c			;aceb	0c 	. 
	rst 38h			;acec	ff 	. 
	add a,h			;aced	84 	. 
	cp 0fch		;acee	fe fc 	. . 
	call m,004f8h		;acf0	fc f8 04 	. . . 
	rst 38h			;acf3	ff 	. 
	add a,d			;acf4	82 	. 
	rrca			;acf5	0f 	. 
	rlca			;acf6	07 	. 
	ld (bc),a			;acf7	02 	. 
	nop			;acf8	00 	. 
	ld (bc),a			;acf9	02 	. 
	rst 38h			;acfa	ff 	. 
	inc b			;acfb	04 	. 
	cp 084h		;acfc	fe 84 	. . 
	call m,0037ch		;acfe	fc 7c 03 	. | . 
	ld bc,00006h		;ad01	01 06 00 	. . . 
	ld (bc),a			;ad04	02 	. 
	rst 38h			;ad05	ff 	. 
	add a,h			;ad06	84 	. 
	ld a,a			;ad07	7f 	 
	rra			;ad08	1f 	. 
	rlca			;ad09	07 	. 
	inc bc			;ad0a	03 	. 
	ld (bc),a			;ad0b	02 	. 
	rlca			;ad0c	07 	. 
	ld (bc),a			;ad0d	02 	. 
	ret m			;ad0e	f8 	. 
	add a,c			;ad0f	81 	. 
	cp 005h		;ad10	fe 05 	. . 
	rst 38h			;ad12	ff 	. 
	ld (bc),a			;ad13	02 	. 
	nop			;ad14	00 	. 
	add a,c			;ad15	81 	. 
	inc bc			;ad16	03 	. 
	dec b			;ad17	05 	. 
	rst 38h			;ad18	ff 	. 
	adc a,e			;ad19	8b 	. 
	ld a,h			;ad1a	7c 	| 
	ld a,b			;ad1b	78 	x 
	pop af			;ad1c	f1 	. 
	jp p,0c8e4h		;ad1d	f2 e4 c8 	. . . 
	ret z			;ad20	c8 	. 
	sub b			;ad21	90 	. 
	inc bc			;ad22	03 	. 
	inc b			;ad23	04 	. 
	ex af,af'			;ad24	08 	. 
	inc bc			;ad25	03 	. 
	djnz lad2ah		;ad26	10 02 	. . 
	jr nz,lacach		;ad28	20 82 	  . 
lad2ah:
	rst 38h			;ad2a	ff 	. 
	rlca			;ad2b	07 	. 
	ld (bc),a			;ad2c	02 	. 
	inc bc			;ad2d	03 	. 
	inc b			;ad2e	04 	. 
	ld bc,0ff04h		;ad2f	01 04 ff 	. . . 
	add a,c			;ad32	81 	. 
	rlca			;ad33	07 	. 
	inc bc			;ad34	03 	. 
	nop			;ad35	00 	. 
	add a,l			;ad36	85 	. 
	rst 38h			;ad37	ff 	. 
	cp 0fch		;ad38	fe fc 	. . 
	ret m			;ad3a	f8 	. 
	ret po			;ad3b	e0 	. 
	inc bc			;ad3c	03 	. 
	nop			;ad3d	00 	. 
	add a,c			;ad3e	81 	. 
	sub b			;ad3f	90 	. 
	ld (bc),a			;ad40	02 	. 
	jr nz,lad45h		;ad41	20 02 	  . 
	ld b,b			;ad43	40 	@ 
	ld (bc),a			;ad44	02 	. 
lad45h:
	add a,b			;ad45	80 	. 
	add a,c			;ad46	81 	. 
	rst 38h			;ad47	ff 	. 
	dec b			;ad48	05 	. 
	nop			;ad49	00 	. 
	add a,e			;ad4a	83 	. 
	inc bc			;ad4b	03 	. 
	rrca			;ad4c	0f 	. 
	ccf			;ad4d	3f 	? 
	inc bc			;ad4e	03 	. 
	jr nz,lad53h		;ad4f	20 02 	  . 
	nop			;ad51	00 	. 
	inc bc			;ad52	03 	. 
lad53h:
	ret nz			;ad53	c0 	. 
	inc bc			;ad54	03 	. 
	ld bc,00085h		;ad55	01 85 00 	. . . 
	inc c			;ad58	0c 	. 
	ld (l8141h),a		;ad59	32 41 81 	2 A . 
	inc b			;ad5c	04 	. 
	nop			;ad5d	00 	. 
	sub a			;ad5e	97 	. 
	ld c,01bh		;ad5f	0e 1b 	. . 
	dec (hl)			;ad61	35 	5 
	dec (hl)			;ad62	35 	5 
	inc bc			;ad63	03 	. 
	ld b,00dh		;ad64	06 0d 	. . 
	dec c			;ad66	0d 	. 
	ld c,00fh		;ad67	0e 0f 	. . 
	adc a,e			;ad69	8b 	. 
	adc a,e			;ad6a	8b 	. 
	add a,b			;ad6b	80 	. 
	ret nz			;ad6c	c0 	. 
	ld h,b			;ad6d	60 	` 
	ld h,b			;ad6e	60 	` 
	call m,06bf6h		;ad6f	fc f6 6b 	. . k 
	ld l,e			;ad72	6b 	k 
	ld a,h			;ad73	7c 	| 
	ld (hl),b			;ad74	70 	p 
	ret po			;ad75	e0 	. 
	inc b			;ad76	04 	. 
	ret nz			;ad77	c0 	. 
	add a,c			;ad78	81 	. 
	ret po			;ad79	e0 	. 
	ex af,af'			;ad7a	08 	. 
	nop			;ad7b	00 	. 
	ld (bc),a			;ad7c	02 	. 
	add a,b			;ad7d	80 	. 
	add a,c			;ad7e	81 	. 
	ld b,b			;ad7f	40 	@ 
	dec b			;ad80	05 	. 
	nop			;ad81	00 	. 
	ld (bc),a			;ad82	02 	. 
	add a,b			;ad83	80 	. 
	ld b,000h		;ad84	06 00 	. . 
	add a,d			;ad86	82 	. 
	dec sp			;ad87	3b 	; 
	ccf			;ad88	3f 	? 
	ld (bc),a			;ad89	02 	. 
	inc l			;ad8a	2c 	, 
	ld (bc),a			;ad8b	02 	. 
	ccf			;ad8c	3f 	? 
	add a,d			;ad8d	82 	. 
	ld h,039h		;ad8e	26 39 	& 9 
	inc b			;ad90	04 	. 
	adc a,e			;ad91	8b 	. 
	add a,(hl)			;ad92	86 	. 
	rst 28h			;ad93	ef 	. 
	rst 38h			;ad94	ff 	. 
	ld h,(hl)			;ad95	66 	f 
	sbc a,c			;ad96	99 	. 
	ld (hl),a			;ad97	77 	w 
	ld a,a			;ad98	7f 	 
	ld (bc),a			;ad99	02 	. 
	ld e,c			;ad9a	59 	Y 
	ld (bc),a			;ad9b	02 	. 
	exx			;ad9c	d9 	. 
	and d			;ad9d	a2 	. 
	add hl,de			;ad9e	19 	. 
	sbc a,c			;ad9f	99 	. 
	ld h,b			;ada0	60 	` 
	ld h,b			;ada1	60 	` 
	ret po			;ada2	e0 	. 
	ld h,b			;ada3	60 	` 
	jr nz,ladb6h		;ada4	20 10 	  . 
	djnz ladb1h		;ada6	10 09 	. . 
	ld h,039h		;ada8	26 39 	& 9 
	ld h,039h		;adaa	26 39 	& 9 
	daa			;adac	27 	' 
	add hl,sp			;adad	39 	9 
	daa			;adae	27 	' 
	ccf			;adaf	3f 	? 
	ld a,(hl)			;adb0	7e 	~ 
ladb1h:
	defb 0fdh,0feh,0ffh	;illegal sequence		;adb1	fd fe ff 	. . . 
	cp 0ffh		;adb4	fe ff 	. . 
ladb6h:
	cp 0ffh		;adb6	fe ff 	. . 
	add hl,de			;adb8	19 	. 
	sbc a,c			;adb9	99 	. 
	add hl,de			;adba	19 	. 
	sbc a,c			;adbb	99 	. 
	add hl,de			;adbc	19 	. 
	sbc a,c			;adbd	99 	. 
	add hl,de			;adbe	19 	. 
	rst 38h			;adbf	ff 	. 
	inc bc			;adc0	03 	. 
	nop			;adc1	00 	. 
	ld (bc),a			;adc2	02 	. 
	rst 38h			;adc3	ff 	. 
	inc bc			;adc4	03 	. 
	nop			;adc5	00 	. 
ladc6h:
	add a,e			;adc6	83 	. 
	djnz lade9h		;adc7	10 20 	.   
	ld h,b			;adc9	60 	` 
	ld (bc),a			;adca	02 	. 
	ret nz			;adcb	c0 	. 
	ld (bc),a			;adcc	02 	. 
	add a,b			;adcd	80 	. 
	add a,c			;adce	81 	. 
	rst 38h			;adcf	ff 	. 
	ld b,080h		;add0	06 80 	. . 
	ld (bc),a			;add2	02 	. 
	ld b,b			;add3	40 	@ 
	add a,c			;add4	81 	. 
	ld de,01006h		;add5	11 06 10 	. . . 
	add a,e			;add8	83 	. 
	rra			;add9	1f 	. 
	jr nc,$+17		;adda	30 0f 	0 . 
	ld b,000h		;addc	06 00 	. . 
	add a,d			;adde	82 	. 
	ld h,b			;addf	60 	` 
	add a,b			;ade0	80 	. 
	ld b,000h		;ade1	06 00 	. . 
	add a,c			;ade3	81 	. 
	rst 38h			;ade4	ff 	. 
	ld (bc),a			;ade5	02 	. 
	ld a,a			;ade6	7f 	 
	ld (bc),a			;ade7	02 	. 
	ccf			;ade8	3f 	? 
lade9h:
	add a,e			;ade9	83 	. 
	ld a,01eh		;adea	3e 1e 	> . 
	rst 38h			;adec	ff 	. 
	ld b,00ch		;aded	06 0c 	. . 
	add a,d			;adef	82 	. 
	ld c,006h		;adf0	0e 06 	. . 
	ex af,af'			;adf2	08 	. 
	nop			;adf3	00 	. 
	inc bc			;adf4	03 	. 
	ld e,081h		;adf5	1e 81 	. . 
	ld c,003h		;adf7	0e 03 	. . 
	inc c			;adf9	0c 	. 
	add a,c			;adfa	81 	. 
	ld b,00bh		;adfb	06 0b 	. . 
	nop			;adfd	00 	. 
	add a,l			;adfe	85 	. 
	inc bc			;adff	03 	. 
	dec b			;ae00	05 	. 
	dec bc			;ae01	0b 	. 
	dec bc			;ae02	0b 	. 
	inc de			;ae03	13 	. 
	inc b			;ae04	04 	. 
	ld b,002h		;ae05	06 02 	. . 
	rlca			;ae07	07 	. 
	ld (bc),a			;ae08	02 	. 
	inc bc			;ae09	03 	. 
	ex af,af'			;ae0a	08 	. 
	nop			;ae0b	00 	. 
	ld (bc),a			;ae0c	02 	. 
	ld b,003h		;ae0d	06 03 	. . 
	ld (bc),a			;ae0f	02 	. 
	ld b,000h		;ae10	06 00 	. . 
	sub b			;ae12	90 	. 
	ld bc,00502h		;ae13	01 02 05 	. . . 
	dec b			;ae16	05 	. 
	inc b			;ae17	04 	. 
	ld de,01f1fh		;ae18	11 1f 1f 	. . . 
	ld sp,hl			;ae1b	f9 	. 
	sub e			;ae1c	93 	. 
	out (0e3h),a		;ae1d	d3 e3 	. . 
	and c			;ae1f	a1 	. 
	ld e,012h		;ae20	1e 12 	. . 
	jp p,l8104h		;ae22	f2 04 81 	. . . 
	add a,c			;ae25	81 	. 
	rst 38h			;ae26	ff 	. 
	ld (bc),a			;ae27	02 	. 
	inc bc			;ae28	03 	. 
	inc bc			;ae29	03 	. 
	ld bc,00004h		;ae2a	01 04 00 	. . . 
	inc bc			;ae2d	03 	. 
	add a,b			;ae2e	80 	. 
	inc b			;ae2f	04 	. 
	ret nz			;ae30	c0 	. 
	ex af,af'			;ae31	08 	. 
	nop			;ae32	00 	. 
	ex af,af'			;ae33	08 	. 
	rlca			;ae34	07 	. 
	djnz $+1		;ae35	10 ff 	. . 
	ld (bc),a			;ae37	02 	. 
	ld bc,00f81h		;ae38	01 81 0f 	. . . 
	inc b			;ae3b	04 	. 
	ex af,af'			;ae3c	08 	. 
	add a,d			;ae3d	82 	. 
	rrca			;ae3e	0f 	. 
	ret po			;ae3f	e0 	. 
	ld (bc),a			;ae40	02 	. 
	jr nz,$+6		;ae41	20 04 	  . 
	djnz ladc6h		;ae43	10 81 	. . 
	ret p			;ae45	f0 	. 
	ld b,060h		;ae46	06 60 	. ` 
	ld (bc),a			;ae48	02 	. 
	jr nc,lae53h		;ae49	30 08 	0 . 
	nop			;ae4b	00 	. 
	add a,e			;ae4c	83 	. 
	pop hl			;ae4d	e1 	. 
	ld hl,0042fh		;ae4e	21 2f 04 	! / . 
	jr $-118		;ae51	18 88 	. . 
lae53h:
	rst 38h			;ae53	ff 	. 
	jr lae72h		;ae54	18 1c 	. . 
	inc c			;ae56	0c 	. 
	ld b,007h		;ae57	06 07 	. . 
	inc bc			;ae59	03 	. 
	ld bc,00006h		;ae5a	01 06 00 	. . . 
	add a,a			;ae5d	87 	. 
	add a,b			;ae5e	80 	. 
	ret nz			;ae5f	c0 	. 
	ret po			;ae60	e0 	. 
	ld (hl),b			;ae61	70 	p 
	jr c,lae7ch		;ae62	38 18 	8 . 
	inc e			;ae64	1c 	. 
	inc b			;ae65	04 	. 
	inc c			;ae66	0c 	. 
	add a,h			;ae67	84 	. 
	ld c,006h		;ae68	0e 06 	. . 
	rlca			;ae6a	07 	. 
	inc bc			;ae6b	03 	. 
	ld (bc),a			;ae6c	02 	. 
	ld bc,00005h		;ae6d	01 05 00 	. . . 
	ld (bc),a			;ae70	02 	. 
	add a,b			;ae71	80 	. 
lae72h:
	adc a,e			;ae72	8b 	. 
	ret nz			;ae73	c0 	. 
	ret po			;ae74	e0 	. 
	ld (hl),b			;ae75	70 	p 
	jr c,lae94h		;ae76	38 1c 	8 . 
	inc c			;ae78	0c 	. 
	inc c			;ae79	0c 	. 
	ld c,006h		;ae7a	0e 06 	. . 
lae7ch:
	ld b,007h		;ae7c	06 07 	. . 
	inc bc			;ae7e	03 	. 
	nop			;ae7f	00 	. 
	add a,l			;ae80	85 	. 
	add a,b			;ae81	80 	. 
	ld b,b			;ae82	40 	@ 
	jr nz,$+18		;ae83	20 10 	  . 
	ex af,af'			;ae85	08 	. 
	inc b			;ae86	04 	. 
	inc bc			;ae87	03 	. 
	inc b			;ae88	04 	. 
	ld bc,00004h		;ae89	01 04 00 	. . . 
	inc b			;ae8c	04 	. 
	add a,b			;ae8d	80 	. 
	adc a,b			;ae8e	88 	. 
	ex af,af'			;ae8f	08 	. 
	inc b			;ae90	04 	. 
	rlca			;ae91	07 	. 
	inc c			;ae92	0c 	. 
	ex af,af'			;ae93	08 	. 
lae94h:
	djnz laea6h		;ae94	10 10 	. . 
	ret po			;ae96	e0 	. 
	inc b			;ae97	04 	. 
	ret nz			;ae98	c0 	. 
	add a,d			;ae99	82 	. 
	jp 002dfh		;ae9a	c3 df 02 	. . . 
	rst 38h			;ae9d	ff 	. 
	inc bc			;ae9e	03 	. 
	nop			;ae9f	00 	. 
	add a,c			;aea0	81 	. 
	ret p			;aea1	f0 	. 
	inc b			;aea2	04 	. 
	rst 38h			;aea3	ff 	. 
	inc b			;aea4	04 	. 
	nop			;aea5	00 	. 
laea6h:
	add a,e			;aea6	83 	. 
	add a,b			;aea7	80 	. 
	ret p			;aea8	f0 	. 
	cp 004h		;aea9	fe 04 	. . 
	rst 38h			;aeab	ff 	. 
	dec b			;aeac	05 	. 
	ld a,a			;aead	7f 	 
	djnz $+1		;aeae	10 ff 	. . 
	add a,d			;aeb0	82 	. 
	add a,b			;aeb1	80 	. 
	ret nz			;aeb2	c0 	. 
	ld (bc),a			;aeb3	02 	. 
	ret po			;aeb4	e0 	. 
	ld (bc),a			;aeb5	02 	. 
	ret p			;aeb6	f0 	. 
	ld (bc),a			;aeb7	02 	. 
	ret m			;aeb8	f8 	. 
	inc bc			;aeb9	03 	. 
	ccf			;aeba	3f 	? 
	add a,l			;aebb	85 	. 
	rra			;aebc	1f 	. 
	rrca			;aebd	0f 	. 
	rlca			;aebe	07 	. 
	ld bc,00700h		;aebf	01 00 07 	. . . 
	rst 38h			;aec2	ff 	. 
	add a,c			;aec3	81 	. 
	ccf			;aec4	3f 	? 
	ex af,af'			;aec5	08 	. 
	rst 38h			;aec6	ff 	. 
	inc bc			;aec7	03 	. 
	ret m			;aec8	f8 	. 
	ld (bc),a			;aec9	02 	. 
	ret p			;aeca	f0 	. 
	add a,e			;aecb	83 	. 
	ret po			;aecc	e0 	. 
	ret nz			;aecd	c0 	. 
	add a,b			;aece	80 	. 
	ld b,000h		;aecf	06 00 	. . 
	sbc a,d			;aed1	9a 	. 
	ld bc,00007h		;aed2	01 07 00 	. . . 
	nop			;aed5	00 	. 
	ld bc,00402h		;aed6	01 02 04 	. . . 
	ld a,b			;aed9	78 	x 
	ret m			;aeda	f8 	. 
	ret p			;aedb	f0 	. 
	rlca			;aedc	07 	. 
	ld b,08eh		;aedd	06 8e 	. . 
	ld a,h			;aedf	7c 	| 
	jr c,laef2h		;aee0	38 10 	8 . 
	djnz laeedh		;aee2	10 09 	. . 
	rrca			;aee4	0f 	. 
	inc e			;aee5	1c 	. 
	jr $+58		;aee6	18 38 	. 8 
	jr nc,laf5ah		;aee8	30 70 	0 p 
	sub b			;aeea	90 	. 
	ex af,af'			;aeeb	08 	. 
	inc bc			;aeec	03 	. 
laeedh:
	inc b			;aeed	04 	. 
	inc bc			;aeee	03 	. 
	inc c			;aeef	0c 	. 
	sub b			;aef0	90 	. 
	inc e			;aef1	1c 	. 
laef2h:
	ld e,004h		;aef2	1e 04 	. . 
	rlca			;aef4	07 	. 
	inc bc			;aef5	03 	. 
	inc bc			;aef6	03 	. 
	ld (bc),a			;aef7	02 	. 
	ld bc,0ff01h		;aef8	01 01 ff 	. . . 
	nop			;aefb	00 	. 
	nop			;aefc	00 	. 
	ret po			;aefd	e0 	. 
	cp 03fh		;aefe	fe 3f 	. ? 
	inc bc			;af00	03 	. 
	ld b,000h		;af01	06 00 	. . 
	add a,l			;af03	85 	. 
	ret nz			;af04	c0 	. 
	ret p			;af05	f0 	. 
	ld a,b			;af06	78 	x 
	inc e			;af07	1c 	. 
	rst 38h			;af08	ff 	. 
	inc bc			;af09	03 	. 
	ld a,082h		;af0a	3e 82 	> . 
	ld a,(hl)			;af0c	7e 	~ 
	ld a,a			;af0d	7f 	 
	ld (bc),a			;af0e	02 	. 
	rst 38h			;af0f	ff 	. 
	nop			;af10	00 	. 
	nop			;af11	00 	. 
	jr c,laf4ch		;af12	38 38 	8 8 
	nop			;af14	00 	. 
	nop			;af15	00 	. 
	ld b,h			;af16	44 	D 
	ld a,h			;af17	7c 	| 
	jr c,laf1ah		;af18	38 00 	8 . 
laf1ah:
	sub d			;af1a	92 	. 
	cp 06ch		;af1b	fe 6c 	. l 
	nop			;af1d	00 	. 
	xor d			;af1e	aa 	. 
	xor 044h		;af1f	ee 44 	. D 
	nop			;af21	00 	. 
	sub d			;af22	92 	. 
	cp 06ch		;af23	fe 6c 	. l 
	nop			;af25	00 	. 
	ld (hl),h			;af26	74 	t 
	ld a,h			;af27	7c 	| 
	ex af,af'			;af28	08 	. 
	nop			;af29	00 	. 
	inc h			;af2a	24 	$ 
	inc a			;af2b	3c 	< 
	jr laf2eh		;af2c	18 00 	. . 
laf2eh:
	jr z,laf68h		;af2e	28 38 	( 8 
	djnz laf32h		;af30	10 00 	. . 
laf32h:
	jr z,laf6ch		;af32	28 38 	( 8 
	djnz laf36h		;af34	10 00 	. . 
laf36h:
	jr z,laf70h		;af36	28 38 	( 8 
	djnz laf3ah		;af38	10 00 	. . 
laf3ah:
	jr z,laf74h		;af3a	28 38 	( 8 
	djnz laf3eh		;af3c	10 00 	. . 
laf3eh:
	jr z,laf78h		;af3e	28 38 	( 8 
	djnz laf42h		;af40	10 00 	. . 
laf42h:
	jr z,laf7ch		;af42	28 38 	( 8 
	djnz laf46h		;af44	10 00 	. . 
laf46h:
	jr z,laf80h		;af46	28 38 	( 8 
	djnz laf4ah		;af48	10 00 	. . 
laf4ah:
	jr z,laf84h		;af4a	28 38 	( 8 
laf4ch:
	djnz laf4eh		;af4c	10 00 	. . 
laf4eh:
	jr c,laf88h		;af4e	38 38 	8 8 
	nop			;af50	00 	. 
	rlca			;af51	07 	. 
	ld bc,00000h		;af52	01 00 00 	. . . 
	ccf			;af55	3f 	? 
	ld bc,00000h		;af56	01 00 00 	. . . 
	ld a,a			;af59	7f 	 
laf5ah:
	ld bc,00000h		;af5a	01 00 00 	. . . 
	ccf			;af5d	3f 	? 
	pop bc			;af5e	c1 	. 
	add a,b			;af5f	80 	. 
	ld b,b			;af60	40 	@ 
	rlca			;af61	07 	. 
	ld sp,hl			;af62	f9 	. 
	ret nz			;af63	c0 	. 
	jr c,lafa6h		;af64	38 40 	8 @ 
	cp a			;af66	bf 	. 
	cp c			;af67	b9 	. 
laf68h:
	rlca			;af68	07 	. 
	ld a,b			;af69	78 	x 
	add a,a			;af6a	87 	. 
	add a,a			;af6b	87 	. 
laf6ch:
	nop			;af6c	00 	. 
	ld a,h			;af6d	7c 	| 
	add a,e			;af6e	83 	. 
	add a,e			;af6f	83 	. 
laf70h:
	inc bc			;af70	03 	. 
	ld a,c			;af71	79 	y 
	add a,(hl)			;af72	86 	. 
	add a,(hl)			;af73	86 	. 
laf74h:
	ld b,079h		;af74	06 79 	. y 
	add a,(hl)			;af76	86 	. 
	add a,(hl)			;af77	86 	. 
laf78h:
	ld b,07fh		;af78	06 7f 	.  
	add a,b			;af7a	80 	. 
	add a,b			;af7b	80 	. 
laf7ch:
	nop			;af7c	00 	. 
	ld a,(hl)			;af7d	7e 	~ 
	add a,c			;af7e	81 	. 
	add a,c			;af7f	81 	. 
laf80h:
	ld bc,l807fh		;af80	01 7f 80 	.  . 
	add a,b			;af83	80 	. 
laf84h:
	nop			;af84	00 	. 
	ld a,041h		;af85	3e 41 	> A 
	ld b,c			;af87	41 	A 
laf88h:
	ld bc,03906h		;af88	01 06 39 	. . 9 
	add hl,sp			;af8b	39 	9 
	ld bc,00700h		;af8c	01 00 07 	. . . 
	rlca			;af8f	07 	. 
	nop			;af90	00 	. 
	sbc a,(hl)			;af91	9e 	. 
	ld h,c			;af92	61 	a 
	ld h,c			;af93	61 	a 
	ld h,b			;af94	60 	` 
	sbc a,(hl)			;af95	9e 	. 
	ld h,c			;af96	61 	a 
	ld h,c			;af97	61 	a 
	ld h,b			;af98	60 	` 
	ld a,0c1h		;af99	3e c1 	> . 
	pop bc			;af9b	c1 	. 
	ret nz			;af9c	c0 	. 
	ld a,(hl)			;af9d	7e 	~ 
	add a,c			;af9e	81 	. 
	add a,c			;af9f	81 	. 
	add a,b			;afa0	80 	. 
	cp 001h		;afa1	fe 01 	. . 
	ld bc,07c00h		;afa3	01 00 7c 	. . | 
lafa6h:
	add a,d			;afa6	82 	. 
	add a,d			;afa7	82 	. 
	add a,b			;afa8	80 	. 
	ld h,b			;afa9	60 	` 
	sbc a,h			;afaa	9c 	. 
	sbc a,h			;afab	9c 	. 
	add a,b			;afac	80 	. 
	nop			;afad	00 	. 
	ret po			;afae	e0 	. 
	ret po			;afaf	e0 	. 
	nop			;afb0	00 	. 
	nop			;afb1	00 	. 
	nop			;afb2	00 	. 
	nop			;afb3	00 	. 
	nop			;afb4	00 	. 
	nop			;afb5	00 	. 
	nop			;afb6	00 	. 
	nop			;afb7	00 	. 
	nop			;afb8	00 	. 
	nop			;afb9	00 	. 
	inc bc			;afba	03 	. 
	inc bc			;afbb	03 	. 
	nop			;afbc	00 	. 
	nop			;afbd	00 	. 
	inc c			;afbe	0c 	. 
	inc c			;afbf	0c 	. 
	inc bc			;afc0	03 	. 
	ld b,010h		;afc1	06 10 	. . 
	djnz $+11		;afc3	10 09 	. . 
	add hl,bc			;afc5	09 	. 
	ld hl,01621h		;afc6	21 21 16 	! ! . 
	inc de			;afc9	13 	. 
	inc hl			;afca	23 	# 
	inc hl			;afcb	23 	# 
	inc c			;afcc	0c 	. 
	ld d,046h		;afcd	16 46 	. F 
	ld b,(hl)			;afcf	46 	F 
	add hl,hl			;afd0	29 	) 
	nop			;afd1	00 	. 
	nop			;afd2	00 	. 
	nop			;afd3	00 	. 
	nop			;afd4	00 	. 
	nop			;afd5	00 	. 
	nop			;afd6	00 	. 
	nop			;afd7	00 	. 
	nop			;afd8	00 	. 
	nop			;afd9	00 	. 
	add a,b			;afda	80 	. 
	add a,b			;afdb	80 	. 
	nop			;afdc	00 	. 
	nop			;afdd	00 	. 
	ld h,b			;afde	60 	` 
	ld h,b			;afdf	60 	` 
	add a,b			;afe0	80 	. 
	nop			;afe1	00 	. 
	djnz laff4h		;afe2	10 10 	. . 
	ret po			;afe4	e0 	. 
	nop			;afe5	00 	. 
	ex af,af'			;afe6	08 	. 
	ex af,af'			;afe7	08 	. 
	ret p			;afe8	f0 	. 
	add a,b			;afe9	80 	. 
	adc a,b			;afea	88 	. 
	adc a,b			;afeb	88 	. 
	ld (hl),b			;afec	70 	p 
	ret nz			;afed	c0 	. 
	call nz,038c4h		;afee	c4 c4 38 	. . 8 
	ld b,046h		;aff1	06 46 	. F 
	ld b,(hl)			;aff3	46 	F 
laff4h:
	add hl,sp			;aff4	39 	9 
	rrca			;aff5	0f 	. 
	ld c,a			;aff6	4f 	O 
	ld c,a			;aff7	4f 	O 
	jr nc,lb006h		;aff8	30 0c 	0 . 
	inc l			;affa	2c 	, 
	inc l			;affb	2c 	, 
	inc de			;affc	13 	. 
	nop			;affd	00 	. 
	jr nz,lb020h		;affe	20 20 	    
	rra			;b000	1f 	. 
	jr nz,$+18		;b001	20 10 	  . 
	djnz $+17		;b003	10 0f 	. . 
	ld a,h			;b005	7c 	| 
lb006h:
	nop			;b006	00 	. 
	nop			;b007	00 	. 
	inc bc			;b008	03 	. 
	ld a,a			;b009	7f 	 
	nop			;b00a	00 	. 
	nop			;b00b	00 	. 
	nop			;b00c	00 	. 
	ccf			;b00d	3f 	? 
	nop			;b00e	00 	. 
	nop			;b00f	00 	. 
	nop			;b010	00 	. 
	ret nz			;b011	c0 	. 
	call nz,038c4h		;b012	c4 c4 38 	. . 8 
	ret po			;b015	e0 	. 
	call po,018e4h		;b016	e4 e4 18 	. . . 
	ld h,b			;b019	60 	` 
	ld l,b			;b01a	68 	h 
	ld l,b			;b01b	68 	h 
	sub b			;b01c	90 	. 
	nop			;b01d	00 	. 
	ex af,af'			;b01e	08 	. 
	ex af,af'			;b01f	08 	. 
lb020h:
	ret p			;b020	f0 	. 
	ex af,af'			;b021	08 	. 
	djnz lb034h		;b022	10 10 	. . 
	ret po			;b024	e0 	. 
	ld a,h			;b025	7c 	| 
	nop			;b026	00 	. 
	nop			;b027	00 	. 
	add a,b			;b028	80 	. 
	call m,00000h		;b029	fc 00 00 	. . . 
	nop			;b02c	00 	. 
	ret m			;b02d	f8 	. 
	nop			;b02e	00 	. 
	nop			;b02f	00 	. 
	nop			;b030	00 	. 
	nop			;b031	00 	. 
	nop			;b032	00 	. 
	nop			;b033	00 	. 
lb034h:
	nop			;b034	00 	. 
	nop			;b035	00 	. 
	nop			;b036	00 	. 
	nop			;b037	00 	. 
	nop			;b038	00 	. 
	nop			;b039	00 	. 
	inc bc			;b03a	03 	. 
	inc bc			;b03b	03 	. 
	nop			;b03c	00 	. 
	nop			;b03d	00 	. 
	rrca			;b03e	0f 	. 
	inc c			;b03f	0c 	. 
	inc bc			;b040	03 	. 
	ld b,019h		;b041	06 19 	. . 
	djnz $+11		;b043	10 09 	. . 
lb045h:
	ex af,af'			;b045	08 	. 
	scf			;b046	37 	7 
	daa			;b047	27 	' 
	rla			;b048	17 	. 
	djnz lb07ah		;b049	10 2f 	. / 
	ld h,00fh		;b04b	26 0f 	& . 
	djnz lb0beh		;b04d	10 6f 	. o 
	ld b,(hl)			;b04f	46 	F 
	cpl			;b050	2f 	/ 
	nop			;b051	00 	. 
	nop			;b052	00 	. 
	nop			;b053	00 	. 
	nop			;b054	00 	. 
	nop			;b055	00 	. 
	nop			;b056	00 	. 
	nop			;b057	00 	. 
	nop			;b058	00 	. 
	nop			;b059	00 	. 
	add a,b			;b05a	80 	. 
	add a,b			;b05b	80 	. 
	nop			;b05c	00 	. 
	nop			;b05d	00 	. 
	ret po			;b05e	e0 	. 
	ld h,b			;b05f	60 	` 
	add a,b			;b060	80 	. 
	nop			;b061	00 	. 
	ret p			;b062	f0 	. 
	djnz lb045h		;b063	10 e0 	. . 
	nop			;b065	00 	. 
	ret m			;b066	f8 	. 
	ret z			;b067	c8 	. 
	ret p			;b068	f0 	. 
	nop			;b069	00 	. 
	ret m			;b06a	f8 	. 
	ld l,b			;b06b	68 	h 
	ret p			;b06c	f0 	. 
	nop			;b06d	00 	. 
	call m,0f864h		;b06e	fc 64 f8 	. d . 
	nop			;b071	00 	. 
	ld a,a			;b072	7f 	 
	ld b,a			;b073	47 	G 
	ccf			;b074	3f 	? 
	nop			;b075	00 	. 
	ld a,a			;b076	7f 	 
	ld b,(hl)			;b077	46 	F 
	ccf			;b078	3f 	? 
	nop			;b079	00 	. 
lb07ah:
	ccf			;b07a	3f 	? 
	ld h,01fh		;b07b	26 1f 	& . 
	nop			;b07d	00 	. 
	ccf			;b07e	3f 	? 
	daa			;b07f	27 	' 
	rra			;b080	1f 	. 
	jr nz,lb0a2h		;b081	20 1f 	  . 
	djnz $+17		;b083	10 0f 	. . 
lb085h:
	ld a,h			;b085	7c 	| 
	inc bc			;b086	03 	. 
	nop			;b087	00 	. 
	inc bc			;b088	03 	. 
	ld a,a			;b089	7f 	 
	nop			;b08a	00 	. 
	nop			;b08b	00 	. 
	nop			;b08c	00 	. 
	ccf			;b08d	3f 	? 
	nop			;b08e	00 	. 
	nop			;b08f	00 	. 
	nop			;b090	00 	. 
	nop			;b091	00 	. 
	call m,0f8c4h		;b092	fc c4 f8 	. . . 
	nop			;b095	00 	. 
	call m,0f864h		;b096	fc 64 f8 	. d . 
	nop			;b099	00 	. 
	ret m			;b09a	f8 	. 
	ld l,b			;b09b	68 	h 
	ret p			;b09c	f0 	. 
	nop			;b09d	00 	. 
	ret m			;b09e	f8 	. 
	ret z			;b09f	c8 	. 
	ret p			;b0a0	f0 	. 
	ex af,af'			;b0a1	08 	. 
lb0a2h:
	ret p			;b0a2	f0 	. 
	djnz lb085h		;b0a3	10 e0 	. . 
	ld a,h			;b0a5	7c 	| 
	add a,b			;b0a6	80 	. 
	nop			;b0a7	00 	. 
	add a,b			;b0a8	80 	. 
	call m,00000h		;b0a9	fc 00 00 	. . . 
	nop			;b0ac	00 	. 
	ret m			;b0ad	f8 	. 
	nop			;b0ae	00 	. 
	nop			;b0af	00 	. 
	nop			;b0b0	00 	. 
	nop			;b0b1	00 	. 
	inc bc			;b0b2	03 	. 
	inc bc			;b0b3	03 	. 
	nop			;b0b4	00 	. 
	inc bc			;b0b5	03 	. 
	inc b			;b0b6	04 	. 
	inc b			;b0b7	04 	. 
	nop			;b0b8	00 	. 
	inc b			;b0b9	04 	. 
	dec bc			;b0ba	0b 	. 
	dec bc			;b0bb	0b 	. 
	inc bc			;b0bc	03 	. 
	ex af,af'			;b0bd	08 	. 
lb0beh:
	rla			;b0be	17 	. 
	ld d,007h		;b0bf	16 07 	. . 
	djnz lb0f2h		;b0c1	10 2f 	. / 
	inc l			;b0c3	2c 	, 
	rrca			;b0c4	0f 	. 
	jr c,lb11eh		;b0c5	38 57 	8 W 
lb0c7h:
	ld d,(hl)			;b0c7	56 	V 
	rlca			;b0c8	07 	. 
	inc a			;b0c9	3c 	< 
	ld e,e			;b0ca	5b 	[ 
	ld e,e			;b0cb	5b 	[ 
	inc bc			;b0cc	03 	. 
	ld a,a			;b0cd	7f 	 
	cp b			;b0ce	b8 	. 
	cp b			;b0cf	b8 	. 
	nop			;b0d0	00 	. 
	nop			;b0d1	00 	. 
	ret nz			;b0d2	c0 	. 
	ret nz			;b0d3	c0 	. 
	nop			;b0d4	00 	. 
	ret nz			;b0d5	c0 	. 
	jr nz,lb0f8h		;b0d6	20 20 	    
	nop			;b0d8	00 	. 
	jr nz,$-46		;b0d9	20 d0 	  . 
	ret nc			;b0db	d0 	. 
	ret nz			;b0dc	c0 	. 
	djnz lb0c7h		;b0dd	10 e8 	. . 
	ld l,b			;b0df	68 	h 
	ret po			;b0e0	e0 	. 
	ex af,af'			;b0e1	08 	. 
	call p,0f034h		;b0e2	f4 34 f0 	. 4 . 
	inc e			;b0e5	1c 	. 
	jp pe,0e06ah		;b0e6	ea 6a e0 	. j . 
	inc e			;b0e9	1c 	. 
	jp m,0e0fah		;b0ea	fa fa e0 	. . . 
	cp 01dh		;b0ed	fe 1d 	. . 
	dec e			;b0ef	1d 	. 
	nop			;b0f0	00 	. 
	ld a,b			;b0f1	78 	x 
lb0f2h:
	or a			;b0f2	b7 	. 
	or a			;b0f3	b7 	. 
	nop			;b0f4	00 	. 
	ld (hl),b			;b0f5	70 	p 
	xor b			;b0f6	a8 	. 
	xor b			;b0f7	a8 	. 
lb0f8h:
	nop			;b0f8	00 	. 
	jr nc,lb143h		;b0f9	30 48 	0 H 
	ld c,b			;b0fb	48 	H 
	nop			;b0fc	00 	. 
	jr nc,lb147h		;b0fd	30 48 	0 H 
	ld c,b			;b0ff	48 	H 
	nop			;b100	00 	. 
	jr lb129h		;b101	18 26 	. & 
	ld h,000h		;b103	26 00 	& . 
	ld c,011h		;b105	0e 11 	. . 
	ld de,00300h		;b107	11 00 03 	. . . 
	inc c			;b10a	0c 	. 
	inc c			;b10b	0c 	. 
	nop			;b10c	00 	. 
	nop			;b10d	00 	. 
	inc bc			;b10e	03 	. 
	inc bc			;b10f	03 	. 
	nop			;b110	00 	. 
	nop			;b111	00 	. 
	nop			;b112	00 	. 
	nop			;b113	00 	. 
	nop			;b114	00 	. 
	nop			;b115	00 	. 
	nop			;b116	00 	. 
	nop			;b117	00 	. 
	nop			;b118	00 	. 
	nop			;b119	00 	. 
	nop			;b11a	00 	. 
	nop			;b11b	00 	. 
	nop			;b11c	00 	. 
	nop			;b11d	00 	. 
lb11eh:
	nop			;b11e	00 	. 
	nop			;b11f	00 	. 
	nop			;b120	00 	. 
	nop			;b121	00 	. 
	ld b,006h		;b122	06 06 	. . 
	nop			;b124	00 	. 
	ld b,00fh		;b125	06 0f 	. . 
	rrca			;b127	0f 	. 
	nop			;b128	00 	. 
lb129h:
	ld c,01fh		;b129	0e 1f 	. . 
	rra			;b12b	1f 	. 
	nop			;b12c	00 	. 
	djnz $+49		;b12d	10 2f 	. / 
	cpl			;b12f	2f 	/ 
	nop			;b130	00 	. 
	nop			;b131	00 	. 
	nop			;b132	00 	. 
	nop			;b133	00 	. 
	nop			;b134	00 	. 
	nop			;b135	00 	. 
	nop			;b136	00 	. 
lb137h:
	nop			;b137	00 	. 
	nop			;b138	00 	. 
	nop			;b139	00 	. 
	nop			;b13a	00 	. 
	nop			;b13b	00 	. 
	nop			;b13c	00 	. 
	nop			;b13d	00 	. 
	nop			;b13e	00 	. 
	nop			;b13f	00 	. 
	nop			;b140	00 	. 
	nop			;b141	00 	. 
	nop			;b142	00 	. 
lb143h:
	nop			;b143	00 	. 
	nop			;b144	00 	. 
	nop			;b145	00 	. 
	nop			;b146	00 	. 
lb147h:
	nop			;b147	00 	. 
	nop			;b148	00 	. 
lb149h:
	nop			;b149	00 	. 
	ret po			;b14a	e0 	. 
	ret po			;b14b	e0 	. 
	nop			;b14c	00 	. 
	ret po			;b14d	e0 	. 
	call m,000fch		;b14e	fc fc 00 	. . . 
	djnz $+49		;b151	10 2f 	. / 
	cpl			;b153	2f 	/ 
	rlca			;b154	07 	. 
	nop			;b155	00 	. 
	ccf			;b156	3f 	? 
	ccf			;b157	3f 	? 
	rra			;b158	1f 	. 
	djnz lb1cah		;b159	10 6f 	. o 
	ld l,a			;b15b	6f 	o 
	add hl,bc			;b15c	09 	. 
	ld (hl),0c9h		;b15d	36 c9 	6 . 
	ret			;b15f	c9 	. 
	nop			;b160	00 	. 
	ld c,e			;b161	4b 	K 
	add a,h			;b162	84 	. 
	add a,h			;b163	84 	. 
	nop			;b164	00 	. 
	ld c,b			;b165	48 	H 
	add a,a			;b166	87 	. 
	add a,a			;b167	87 	. 
	nop			;b168	00 	. 
	jr nc,lb137h		;b169	30 cc 	0 . 
	call z,00000h		;b16b	cc 00 00 	. . . 
	ld a,b			;b16e	78 	x 
	ld a,b			;b16f	78 	x 
	nop			;b170	00 	. 
	nop			;b171	00 	. 
	cp 0feh		;b172	fe fe 	. . 
	inc a			;b174	3c 	< 
	ld e,0e1h		;b175	1e e1 	. . 
	pop hl			;b177	e1 	. 
	ret nz			;b178	c0 	. 
	jr nc,lb149h		;b179	30 ce 	0 . 
	adc a,080h		;b17b	ce 80 	. . 
	inc l			;b17d	2c 	, 
	out (0d3h),a		;b17e	d3 d3 	. . 
	add a,b			;b180	80 	. 
	ld a,(0c1c1h)		;b181	3a c1 c1 	: . . 
	nop			;b184	00 	. 
	ld (de),a			;b185	12 	. 
	ld hl,00021h		;b186	21 21 00 	! ! . 
	inc c			;b189	0c 	. 
	inc sp			;b18a	33 	3 
	inc sp			;b18b	33 	3 
	nop			;b18c	00 	. 
	nop			;b18d	00 	. 
	ld e,01eh		;b18e	1e 1e 	. . 
	nop			;b190	00 	. 
	nop			;b191	00 	. 
	ld bc,00001h		;b192	01 01 00 	. . . 
	nop			;b195	00 	. 
	rlca			;b196	07 	. 
	ld b,000h		;b197	06 00 	. . 
	nop			;b199	00 	. 
	rrca			;b19a	0f 	. 
	ex af,af'			;b19b	08 	. 
	nop			;b19c	00 	. 
	nop			;b19d	00 	. 
	rra			;b19e	1f 	. 
	djnz lb1a1h		;b19f	10 00 	. . 
lb1a1h:
	add hl,bc			;b1a1	09 	. 
	rra			;b1a2	1f 	. 
	djnz lb1a5h		;b1a3	10 00 	. . 
lb1a5h:
	dec bc			;b1a5	0b 	. 
	inc e			;b1a6	1c 	. 
	djnz lb1a9h		;b1a7	10 00 	. . 
lb1a9h:
	ld a,(bc)			;b1a9	0a 	. 
	dec e			;b1aa	1d 	. 
	ld de,00700h		;b1ab	11 00 07 	. . . 
	rrca			;b1ae	0f 	. 
	nop			;b1af	00 	. 
	nop			;b1b0	00 	. 
	nop			;b1b1	00 	. 
	ret nz			;b1b2	c0 	. 
	ret nz			;b1b3	c0 	. 
	nop			;b1b4	00 	. 
	nop			;b1b5	00 	. 
	ret p			;b1b6	f0 	. 
	jr nc,lb1b9h		;b1b7	30 00 	0 . 
lb1b9h:
	nop			;b1b9	00 	. 
	ret m			;b1ba	f8 	. 
	ex af,af'			;b1bb	08 	. 
	nop			;b1bc	00 	. 
	add a,b			;b1bd	80 	. 
	call m,00004h		;b1be	fc 04 00 	. . . 
	ret z			;b1c1	c8 	. 
	call m,00004h		;b1c2	fc 04 00 	. . . 
	ret pe			;b1c5	e8 	. 
	sbc a,h			;b1c6	9c 	. 
	inc b			;b1c7	04 	. 
	nop			;b1c8	00 	. 
	xor b			;b1c9	a8 	. 
lb1cah:
	call c,00044h		;b1ca	dc 44 00 	. D . 
	ret p			;b1cd	f0 	. 
	ld a,b			;b1ce	78 	x 
	adc a,b			;b1cf	88 	. 
	nop			;b1d0	00 	. 
	inc bc			;b1d1	03 	. 
	rlca			;b1d2	07 	. 
	inc b			;b1d3	04 	. 
	nop			;b1d4	00 	. 
	ld b,008h		;b1d5	06 08 	. . 
	add hl,bc			;b1d7	09 	. 
	nop			;b1d8	00 	. 
	ex af,af'			;b1d9	08 	. 
	djnz lb1f3h		;b1da	10 17 	. . 
	nop			;b1dc	00 	. 
	ex af,af'			;b1dd	08 	. 
	inc d			;b1de	14 	. 
	rla			;b1df	17 	. 
	nop			;b1e0	00 	. 
	ex af,af'			;b1e1	08 	. 
	inc e			;b1e2	1c 	. 
	rla			;b1e3	17 	. 
	nop			;b1e4	00 	. 
	nop			;b1e5	00 	. 
	inc c			;b1e6	0c 	. 
	rrca			;b1e7	0f 	. 
	nop			;b1e8	00 	. 
	inc bc			;b1e9	03 	. 
	rlca			;b1ea	07 	. 
	rlca			;b1eb	07 	. 
	nop			;b1ec	00 	. 
	nop			;b1ed	00 	. 
	rlca			;b1ee	07 	. 
	rlca			;b1ef	07 	. 
	nop			;b1f0	00 	. 
	ret po			;b1f1	e0 	. 
	ret p			;b1f2	f0 	. 
lb1f3h:
	djnz lb1f5h		;b1f3	10 00 	. . 
lb1f5h:
	or b			;b1f5	b0 	. 
	adc a,b			;b1f6	88 	. 
	ret z			;b1f7	c8 	. 
	nop			;b1f8	00 	. 
	ex af,af'			;b1f9	08 	. 
	inc b			;b1fa	04 	. 
	call p,00800h		;b1fb	f4 00 08 	. . . 
	inc d			;b1fe	14 	. 
	call p,00800h		;b1ff	f4 00 08 	. . . 
	sbc a,h			;b202	9c 	. 
	call p,00000h		;b203	f4 00 00 	. . . 
	sbc a,b			;b206	98 	. 
	ret m			;b207	f8 	. 
	nop			;b208	00 	. 
	ld h,b			;b209	60 	` 
	ret p			;b20a	f0 	. 
	ret p			;b20b	f0 	. 
	nop			;b20c	00 	. 
	nop			;b20d	00 	. 
	ld (hl),b			;b20e	70 	p 
	ld (hl),b			;b20f	70 	p 
	nop			;b210	00 	. 
	ld a,(hl)			;b211	7e 	~ 
	ld bc,00001h		;b212	01 01 00 	. . . 
	nop			;b215	00 	. 
	inc bc			;b216	03 	. 
	inc bc			;b217	03 	. 
	nop			;b218	00 	. 
	nop			;b219	00 	. 
	inc c			;b21a	0c 	. 
	inc c			;b21b	0c 	. 
	nop			;b21c	00 	. 
	nop			;b21d	00 	. 
	djnz lb230h		;b21e	10 10 	. . 
	nop			;b220	00 	. 
	ex af,af'			;b221	08 	. 
	jr nz,lb244h		;b222	20 20 	    
	nop			;b224	00 	. 
	nop			;b225	00 	. 
	jr nz,lb248h		;b226	20 20 	    
	nop			;b228	00 	. 
	jr nz,lb29bh		;b229	20 70 	  p 
	ld d,b			;b22b	50 	P 
	nop			;b22c	00 	. 
	jr nz,lb2aeh		;b22d	20 7f 	   
	ld e,a			;b22f	5f 	_ 
lb230h:
	nop			;b230	00 	. 
	ld a,(hl)			;b231	7e 	~ 
	add a,b			;b232	80 	. 
	add a,b			;b233	80 	. 
	nop			;b234	00 	. 
	nop			;b235	00 	. 
	ret nz			;b236	c0 	. 
	ret nz			;b237	c0 	. 
	nop			;b238	00 	. 
lb239h:
	ret nz			;b239	c0 	. 
	jr nc,lb26ch		;b23a	30 30 	0 0 
	nop			;b23c	00 	. 
	jr nz,lb247h		;b23d	20 08 	  . 
	ex af,af'			;b23f	08 	. 
	nop			;b240	00 	. 
	djnz lb247h		;b241	10 04 	. . 
	inc b			;b243	04 	. 
lb244h:
	nop			;b244	00 	. 
	djnz lb24bh		;b245	10 04 	. . 
lb247h:
	inc b			;b247	04 	. 
lb248h:
	nop			;b248	00 	. 
	djnz lb259h		;b249	10 0e 	. . 
lb24bh:
	ld c,004h		;b24b	0e 04 	. . 
	ex af,af'			;b24d	08 	. 
	cp 0f6h		;b24e	fe f6 	. . 
	inc b			;b250	04 	. 
	rra			;b251	1f 	. 
	ld a,a			;b252	7f 	 
	ld a,a			;b253	7f 	 
	nop			;b254	00 	. 
	jr c,lb2ceh		;b255	38 77 	8 w 
	ld (hl),a			;b257	77 	w 
	nop			;b258	00 	. 
lb259h:
	jr nc,lb2a6h		;b259	30 4b 	0 K 
	ld c,e			;b25b	4b 	K 
	nop			;b25c	00 	. 
	add hl,bc			;b25d	09 	. 
	ld (hl),036h		;b25e	36 36 	6 6 
	nop			;b260	00 	. 
	ld (bc),a			;b261	02 	. 
	inc h			;b262	24 	$ 
	inc h			;b263	24 	$ 
	nop			;b264	00 	. 
	ld (bc),a			;b265	02 	. 
	inc b			;b266	04 	. 
	inc b			;b267	04 	. 
	nop			;b268	00 	. 
	ld bc,00606h		;b269	01 06 06 	. . . 
lb26ch:
	nop			;b26c	00 	. 
	nop			;b26d	00 	. 
lb26eh:
	inc bc			;b26e	03 	. 
	inc bc			;b26f	03 	. 
	nop			;b270	00 	. 
	call pe,0f2feh		;b271	ec fe f2 	. . . 
	nop			;b274	00 	. 
	nop			;b275	00 	. 
	cp 0feh		;b276	fe fe 	. . 
	nop			;b278	00 	. 
	djnz $-62		;b279	10 c0 	. . 
	ret nz			;b27b	c0 	. 
	nop			;b27c	00 	. 
	and b			;b27d	a0 	. 
	ld b,b			;b27e	40 	@ 
	ld b,b			;b27f	40 	@ 
	nop			;b280	00 	. 
lb281h:
	ld b,b			;b281	40 	@ 
	jr nz,lb2a4h		;b282	20 20 	    
	nop			;b284	00 	. 
	ld b,b			;b285	40 	@ 
	jr nz,lb2a8h		;b286	20 20 	    
	nop			;b288	00 	. 
	add a,b			;b289	80 	. 
lb28ah:
	ld h,b			;b28a	60 	` 
	ld h,b			;b28b	60 	` 
	nop			;b28c	00 	. 
	nop			;b28d	00 	. 
	ret nz			;b28e	c0 	. 
	ret nz			;b28f	c0 	. 
	nop			;b290	00 	. 
	nop			;b291	00 	. 
	nop			;b292	00 	. 
	nop			;b293	00 	. 
	nop			;b294	00 	. 
	ld h,(hl)			;b295	66 	f 
	nop			;b296	00 	. 
	nop			;b297	00 	. 
	nop			;b298	00 	. 
	rst 38h			;b299	ff 	. 
	nop			;b29a	00 	. 
lb29bh:
	nop			;b29b	00 	. 
	nop			;b29c	00 	. 
	ld h,(hl)			;b29d	66 	f 
lb29eh:
	nop			;b29e	00 	. 
	nop			;b29f	00 	. 
	nop			;b2a0	00 	. 
	rst 38h			;b2a1	ff 	. 
	nop			;b2a2	00 	. 
	nop			;b2a3	00 	. 
lb2a4h:
	nop			;b2a4	00 	. 
	ld h,(hl)			;b2a5	66 	f 
lb2a6h:
	nop			;b2a6	00 	. 
	nop			;b2a7	00 	. 
lb2a8h:
	nop			;b2a8	00 	. 
	ld h,(hl)			;b2a9	66 	f 
	nop			;b2aa	00 	. 
	nop			;b2ab	00 	. 
	nop			;b2ac	00 	. 
	inc a			;b2ad	3c 	< 
lb2aeh:
	nop			;b2ae	00 	. 
	nop			;b2af	00 	. 
	nop			;b2b0	00 	. 
	ex af,af'			;b2b1	08 	. 
	nop			;b2b2	00 	. 
	dec b			;b2b3	05 	. 
	jr lb239h		;b2b4	18 83 	. . 
	nop			;b2b6	00 	. 
	jr lb2b9h		;b2b7	18 00 	. . 
lb2b9h:
	inc bc			;b2b9	03 	. 
	ld l,h			;b2ba	6c 	l 
	dec b			;b2bb	05 	. 
	nop			;b2bc	00 	. 
	ld (bc),a			;b2bd	02 	. 
	ld l,h			;b2be	6c 	l 
	and c			;b2bf	a1 	. 
	cp 06ch		;b2c0	fe 6c 	. l 
	cp 06ch		;b2c2	fe 6c 	. l 
	ld l,h			;b2c4	6c 	l 
	nop			;b2c5	00 	. 
	jr lb304h		;b2c6	18 3c 	. < 
	ld e,b			;b2c8	58 	X 
	inc a			;b2c9	3c 	< 
	ld a,(de)			;b2ca	1a 	. 
	ld a,h			;b2cb	7c 	| 
	jr lb2ceh		;b2cc	18 00 	. . 
lb2ceh:
	ld h,d			;b2ce	62 	b 
	ld h,(hl)			;b2cf	66 	f 
	inc c			;b2d0	0c 	. 
	jr $+50		;b2d1	18 30 	. 0 
	ld h,(hl)			;b2d3	66 	f 
	ld b,(hl)			;b2d4	46 	F 
	nop			;b2d5	00 	. 
	ld (hl),b			;b2d6	70 	p 
lb2d7h:
	ret z			;b2d7	c8 	. 
	ret z			;b2d8	c8 	. 
	ld (hl),b			;b2d9	70 	p 
	sbc a,d			;b2da	9a 	. 
	adc a,h			;b2db	8c 	. 
	halt			;b2dc	76 	v 
	nop			;b2dd	00 	. 
	jr $+26		;b2de	18 18 	. . 
	djnz lb2e7h		;b2e0	10 05 	. . 
	nop			;b2e2	00 	. 
	add a,d			;b2e3	82 	. 
	inc c			;b2e4	0c 	. 
	jr $+5		;b2e5	18 03 	. . 
lb2e7h:
	jr nc,lb26eh		;b2e7	30 85 	0 . 
	jr lb2f7h		;b2e9	18 0c 	. . 
	nop			;b2eb	00 	. 
	jr nc,lb306h		;b2ec	30 18 	0 . 
	inc bc			;b2ee	03 	. 
	inc c			;b2ef	0c 	. 
lb2f0h:
	adc a,d			;b2f0	8a 	. 
	jr $+50		;b2f1	18 30 	. 0 
	nop			;b2f3	00 	. 
	jr $+92		;b2f4	18 5a 	. Z 
	inc a			;b2f6	3c 	< 
lb2f7h:
	jr lb335h		;b2f7	18 3c 	. < 
	ld e,d			;b2f9	5a 	Z 
	jr lb2feh		;b2fa	18 02 	. . 
	nop			;b2fc	00 	. 
	ld (bc),a			;b2fd	02 	. 
lb2feh:
	jr lb281h		;b2fe	18 81 	. . 
	ld a,(hl)			;b300	7e 	~ 
	ld (bc),a			;b301	02 	. 
	jr $+8		;b302	18 06 	. . 
lb304h:
	nop			;b304	00 	. 
	ld (bc),a			;b305	02 	. 
lb306h:
	jr lb28ah		;b306	18 82 	. . 
	ex af,af'			;b308	08 	. 
	djnz lb30eh		;b309	10 03 	. . 
	nop			;b30b	00 	. 
	add a,c			;b30c	81 	. 
	ld a,h			;b30d	7c 	| 
lb30eh:
	add hl,bc			;b30e	09 	. 
	nop			;b30f	00 	. 
	ld (bc),a			;b310	02 	. 
	jr nc,lb29eh		;b311	30 8b 	0 . 
	nop			;b313	00 	. 
	ld (bc),a			;b314	02 	. 
	ld b,00ch		;b315	06 0c 	. . 
	jr $+50		;b317	18 30 	. 0 
	ld h,b			;b319	60 	` 
	ld b,b			;b31a	40 	@ 
	nop			;b31b	00 	. 
	jr c,lb36ah		;b31c	38 4c 	8 L 
	inc bc			;b31e	03 	. 
	add a,085h		;b31f	c6 85 	. . 
	ld h,h			;b321	64 	d 
	jr c,lb324h		;b322	38 00 	8 . 
lb324h:
	jr lb35eh		;b324	18 38 	. 8 
	inc b			;b326	04 	. 
	jr lb2d7h		;b327	18 ae 	. . 
	ld a,(hl)			;b329	7e 	~ 
	nop			;b32a	00 	. 
	ld a,h			;b32b	7c 	| 
	add a,00eh		;b32c	c6 0e 	. . 
	inc a			;b32e	3c 	< 
	ld a,b			;b32f	78 	x 
	ret po			;b330	e0 	. 
	cp 000h		;b331	fe 00 	. . 
	ld a,(hl)			;b333	7e 	~ 
	inc c			;b334	0c 	. 
lb335h:
	jr lb373h		;b335	18 3c 	. < 
	ld b,0c6h		;b337	06 c6 	. . 
	ld a,h			;b339	7c 	| 
	nop			;b33a	00 	. 
	inc e			;b33b	1c 	. 
	inc a			;b33c	3c 	< 
	ld l,h			;b33d	6c 	l 
	call z,00cfeh		;b33e	cc fe 0c 	. . . 
	inc c			;b341	0c 	. 
	nop			;b342	00 	. 
	call m,0fcc0h		;b343	fc c0 fc 	. . . 
	ld b,006h		;b346	06 06 	. . 
	add a,07ch		;b348	c6 7c 	. | 
	nop			;b34a	00 	. 
	inc a			;b34b	3c 	< 
	ld h,b			;b34c	60 	` 
	ret nz			;b34d	c0 	. 
	call m,0c6c6h		;b34e	fc c6 c6 	. . . 
	ld a,h			;b351	7c 	| 
	nop			;b352	00 	. 
	cp 0c6h		;b353	fe c6 	. . 
	inc c			;b355	0c 	. 
	jr lb35bh		;b356	18 03 	. . 
	jr nc,$-110		;b358	30 90 	0 . 
	nop			;b35a	00 	. 
lb35bh:
	ld a,h			;b35b	7c 	| 
	add a,0c6h		;b35c	c6 c6 	. . 
lb35eh:
	ld a,h			;b35e	7c 	| 
	add a,0c6h		;b35f	c6 c6 	. . 
	ld a,h			;b361	7c 	| 
	nop			;b362	00 	. 
	ld a,h			;b363	7c 	| 
	add a,0c6h		;b364	c6 c6 	. . 
	ld a,(hl)			;b366	7e 	~ 
	ld b,00ch		;b367	06 0c 	. . 
	ld a,b			;b369	78 	x 
lb36ah:
	ld (bc),a			;b36a	02 	. 
	nop			;b36b	00 	. 
	ld (bc),a			;b36c	02 	. 
	jr lb2f0h		;b36d	18 81 	. . 
	nop			;b36f	00 	. 
	ld (bc),a			;b370	02 	. 
	jr $+5		;b371	18 03 	. . 
lb373h:
	nop			;b373	00 	. 
	ld (bc),a			;b374	02 	. 
	jr $-114		;b375	18 8c 	. . 
	nop			;b377	00 	. 
	jr lb392h		;b378	18 18 	. . 
	ex af,af'			;b37a	08 	. 
	djnz $+8		;b37b	10 06 	. . 
	inc c			;b37d	0c 	. 
	jr $+50		;b37e	18 30 	. 0 
	jr $+14		;b380	18 0c 	. . 
	ld b,003h		;b382	06 03 	. . 
	nop			;b384	00 	. 
	add a,e			;b385	83 	. 
	ld a,h			;b386	7c 	| 
	nop			;b387	00 	. 
	ld a,h			;b388	7c 	| 
	inc bc			;b389	03 	. 
	nop			;b38a	00 	. 
	xor d			;b38b	aa 	. 
	ld h,b			;b38c	60 	` 
	jr nc,$+26		;b38d	30 18 	0 . 
	inc c			;b38f	0c 	. 
	jr $+50		;b390	18 30 	. 0 
lb392h:
	ld h,b			;b392	60 	` 
	nop			;b393	00 	. 
	ld a,h			;b394	7c 	| 
	add a,006h		;b395	c6 06 	. . 
	inc e			;b397	1c 	. 
	jr nc,lb39ah		;b398	30 00 	0 . 
lb39ah:
	jr nc,lb39ch		;b39a	30 00 	0 . 
lb39ch:
	ld a,h			;b39c	7c 	| 
	add a,006h		;b39d	c6 06 	. . 
	halt			;b39f	76 	v 
	sub 0d6h		;b3a0	d6 d6 	. . 
	ld a,h			;b3a2	7c 	| 
	nop			;b3a3	00 	. 
	jr c,lb412h		;b3a4	38 6c 	8 l 
	add a,0c6h		;b3a6	c6 c6 	. . 
	cp 0c6h		;b3a8	fe c6 	. . 
	add a,000h		;b3aa	c6 00 	. . 
	call m,0c6c6h		;b3ac	fc c6 c6 	. . . 
	call m,0c6c6h		;b3af	fc c6 c6 	. . . 
	call m,03c00h		;b3b2	fc 00 3c 	. . < 
	ld h,(hl)			;b3b5	66 	f 
	inc bc			;b3b6	03 	. 
	ret nz			;b3b7	c0 	. 
	add a,l			;b3b8	85 	. 
	ld h,(hl)			;b3b9	66 	f 
	inc a			;b3ba	3c 	< 
	nop			;b3bb	00 	. 
	ret m			;b3bc	f8 	. 
	call z,0c603h		;b3bd	cc 03 c6 	. . . 
	adc a,a			;b3c0	8f 	. 
	call z,000f8h		;b3c1	cc f8 00 	. . . 
	cp 0c0h		;b3c4	fe c0 	. . 
	ret nz			;b3c6	c0 	. 
	ret m			;b3c7	f8 	. 
	ret nz			;b3c8	c0 	. 
	ret nz			;b3c9	c0 	. 
	cp 000h		;b3ca	fe 00 	. . 
	cp 0c0h		;b3cc	fe c0 	. . 
	ret nz			;b3ce	c0 	. 
	ret m			;b3cf	f8 	. 
	inc bc			;b3d0	03 	. 
	ret nz			;b3d1	c0 	. 
	adc a,c			;b3d2	89 	. 
	nop			;b3d3	00 	. 
	ld a,060h		;b3d4	3e 60 	> ` 
	ret nz			;b3d6	c0 	. 
	adc a,0c6h		;b3d7	ce c6 	. . 
	ld h,(hl)			;b3d9	66 	f 
	ld a,000h		;b3da	3e 00 	> . 
	inc bc			;b3dc	03 	. 
	add a,081h		;b3dd	c6 81 	. . 
	cp 003h		;b3df	fe 03 	. . 
	add a,082h		;b3e1	c6 82 	. . 
	nop			;b3e3	00 	. 
	ld a,(hl)			;b3e4	7e 	~ 
	dec b			;b3e5	05 	. 
	jr lb36ah		;b3e6	18 82 	. . 
	ld a,(hl)			;b3e8	7e 	~ 
	nop			;b3e9	00 	. 
	dec b			;b3ea	05 	. 
	ld b,08bh		;b3eb	06 8b 	. . 
	add a,07ch		;b3ed	c6 7c 	. | 
	nop			;b3ef	00 	. 
	add a,0cch		;b3f0	c6 cc 	. . 
	ret c			;b3f2	d8 	. 
	ret p			;b3f3	f0 	. 
	ret m			;b3f4	f8 	. 
	call c,000ceh		;b3f5	dc ce 00 	. . . 
	ld b,0c0h		;b3f8	06 c0 	. . 
	sub e			;b3fa	93 	. 
	cp 000h		;b3fb	fe 00 	. . 
	add a,0eeh		;b3fd	c6 ee 	. . 
	cp 0feh		;b3ff	fe fe 	. . 
	sub 0c6h		;b401	d6 c6 	. . 
	add a,000h		;b403	c6 00 	. . 
	add a,0e6h		;b405	c6 e6 	. . 
	or 0feh		;b407	f6 fe 	. . 
	sbc a,0ceh		;b409	de ce 	. . 
	add a,000h		;b40b	c6 00 	. . 
lb40dh:
	ld a,h			;b40d	7c 	| 
	dec b			;b40e	05 	. 
	add a,083h		;b40f	c6 83 	. . 
	ld a,h			;b411	7c 	| 
lb412h:
	nop			;b412	00 	. 
	call m,0c603h		;b413	fc 03 c6 	. . . 
	add a,l			;b416	85 	. 
	call m,0c0c0h		;b417	fc c0 c0 	. . . 
	nop			;b41a	00 	. 
	ld a,h			;b41b	7c 	| 
	inc bc			;b41c	03 	. 
	add a,095h		;b41d	c6 95 	. . 
	sbc a,0cch		;b41f	de cc 	. . 
	halt			;b421	76 	v 
	nop			;b422	00 	. 
	call m,0c6c6h		;b423	fc c6 c6 	. . . 
	adc a,0f8h		;b426	ce f8 	. . 
	call c,000ceh		;b428	dc ce 00 	. . . 
	ld a,b			;b42b	78 	x 
	call z,07cc0h		;b42c	cc c0 7c 	. . | 
	ld b,0c6h		;b42f	06 c6 	. . 
	ld a,h			;b431	7c 	| 
	nop			;b432	00 	. 
	ld a,(hl)			;b433	7e 	~ 
	ld b,018h		;b434	06 18 	. . 
	add a,c			;b436	81 	. 
	nop			;b437	00 	. 
	ld b,0c6h		;b438	06 c6 	. . 
	add a,d			;b43a	82 	. 
	ld a,h			;b43b	7c 	| 
	nop			;b43c	00 	. 
	inc bc			;b43d	03 	. 
	add a,095h		;b43e	c6 95 	. . 
	xor 07ch		;b440	ee 7c 	. | 
	jr c,lb454h		;b442	38 10 	8 . 
	nop			;b444	00 	. 
	add a,0c6h		;b445	c6 c6 	. . 
	sub 0feh		;b447	d6 fe 	. . 
	cp 06ch		;b449	fe 6c 	. l 
	ld b,h			;b44b	44 	D 
	nop			;b44c	00 	. 
	add a,0eeh		;b44d	c6 ee 	. . 
	ld a,h			;b44f	7c 	| 
	jr c,lb4ceh		;b450	38 7c 	8 | 
	xor 0c6h		;b452	ee c6 	. . 
lb454h:
	nop			;b454	00 	. 
	inc bc			;b455	03 	. 
	ld h,(hl)			;b456	66 	f 
	add a,c			;b457	81 	. 
	inc a			;b458	3c 	< 
	inc bc			;b459	03 	. 
	jr lb40dh		;b45a	18 b1 	. . 
	nop			;b45c	00 	. 
	cp 00eh		;b45d	fe 0e 	. . 
	inc e			;b45f	1c 	. 
	jr c,lb4d2h		;b460	38 70 	8 p 
	ret po			;b462	e0 	. 
	cp 000h		;b463	fe 00 	. . 
	inc a			;b465	3c 	< 
	ld b,d			;b466	42 	B 
	sbc a,c			;b467	99 	. 
	and c			;b468	a1 	. 
	and c			;b469	a1 	. 
	sbc a,c			;b46a	99 	. 
	ld b,d			;b46b	42 	B 
	inc a			;b46c	3c 	< 
	ccf			;b46d	3f 	? 
	ld a,a			;b46e	7f 	 
	ld h,b			;b46f	60 	` 
	ld a,(hl)			;b470	7e 	~ 
	ccf			;b471	3f 	? 
	inc bc			;b472	03 	. 
	ld a,a			;b473	7f 	 
	ld a,(hl)			;b474	7e 	~ 
	ccf			;b475	3f 	? 
	ld a,a			;b476	7f 	 
	ld h,b			;b477	60 	` 
	ld a,(hl)			;b478	7e 	~ 
	ld a,(hl)			;b479	7e 	~ 
	ld h,b			;b47a	60 	` 
	ld a,a			;b47b	7f 	 
	ccf			;b47c	3f 	? 
	ccf			;b47d	3f 	? 
	ld a,a			;b47e	7f 	 
	ld h,b			;b47f	60 	` 
	ld l,a			;b480	6f 	o 
	ld l,a			;b481	6f 	o 
	ld h,e			;b482	63 	c 
	ld a,a			;b483	7f 	 
	ccf			;b484	3f 	? 
	inc e			;b485	1c 	. 
	inc e			;b486	1c 	. 
	ld a,036h		;b487	3e 36 	> 6 
	ld (hl),063h		;b489	36 63 	6 c 
	ld l,a			;b48b	6f 	o 
	rst 28h			;b48c	ef 	. 
	nop			;b48d	00 	. 
	ex af,af'			;b48e	08 	. 
	rst 38h			;b48f	ff 	. 
	dec b			;b490	05 	. 
	rst 20h			;b491	e7 	. 
	add a,e			;b492	83 	. 
	rst 38h			;b493	ff 	. 
	rst 20h			;b494	e7 	. 
	rst 38h			;b495	ff 	. 
	inc bc			;b496	03 	. 
	sub e			;b497	93 	. 
	dec b			;b498	05 	. 
	rst 38h			;b499	ff 	. 
	ld (bc),a			;b49a	02 	. 
	sub e			;b49b	93 	. 
	and c			;b49c	a1 	. 
	ld bc,00193h		;b49d	01 93 01 	. . . 
	sub e			;b4a0	93 	. 
	sub e			;b4a1	93 	. 
	rst 38h			;b4a2	ff 	. 
	rst 20h			;b4a3	e7 	. 
	jp 0c3a7h		;b4a4	c3 a7 c3 	. . . 
	push hl			;b4a7	e5 	. 
	add a,e			;b4a8	83 	. 
	rst 20h			;b4a9	e7 	. 
	rst 38h			;b4aa	ff 	. 
	sbc a,l			;b4ab	9d 	. 
	sbc a,c			;b4ac	99 	. 
	di			;b4ad	f3 	. 
	rst 20h			;b4ae	e7 	. 
	rst 8			;b4af	cf 	. 
	sbc a,c			;b4b0	99 	. 
	cp c			;b4b1	b9 	. 
	rst 38h			;b4b2	ff 	. 
	adc a,a			;b4b3	8f 	. 
	scf			;b4b4	37 	7 
	scf			;b4b5	37 	7 
	adc a,a			;b4b6	8f 	. 
	ld h,l			;b4b7	65 	e 
	ld (hl),e			;b4b8	73 	s 
	adc a,c			;b4b9	89 	. 
	rst 38h			;b4ba	ff 	. 
	rst 20h			;b4bb	e7 	. 
	rst 20h			;b4bc	e7 	. 
	rst 28h			;b4bd	ef 	. 
	dec b			;b4be	05 	. 
	rst 38h			;b4bf	ff 	. 
	add a,d			;b4c0	82 	. 
	di			;b4c1	f3 	. 
	rst 20h			;b4c2	e7 	. 
	inc bc			;b4c3	03 	. 
	rst 8			;b4c4	cf 	. 
	add a,l			;b4c5	85 	. 
	rst 20h			;b4c6	e7 	. 
	di			;b4c7	f3 	. 
	rst 38h			;b4c8	ff 	. 
	rst 8			;b4c9	cf 	. 
	rst 20h			;b4ca	e7 	. 
	inc bc			;b4cb	03 	. 
	di			;b4cc	f3 	. 
	adc a,d			;b4cd	8a 	. 
lb4ceh:
	rst 20h			;b4ce	e7 	. 
	rst 8			;b4cf	cf 	. 
	rst 38h			;b4d0	ff 	. 
	rst 20h			;b4d1	e7 	. 
lb4d2h:
	and l			;b4d2	a5 	. 
	jp 0c3e7h		;b4d3	c3 e7 c3 	. . . 
	and l			;b4d6	a5 	. 
	rst 20h			;b4d7	e7 	. 
	ld (bc),a			;b4d8	02 	. 
	rst 38h			;b4d9	ff 	. 
	ld (bc),a			;b4da	02 	. 
	rst 20h			;b4db	e7 	. 
	add a,c			;b4dc	81 	. 
	add a,c			;b4dd	81 	. 
	ld (bc),a			;b4de	02 	. 
	rst 20h			;b4df	e7 	. 
	ld b,0ffh		;b4e0	06 ff 	. . 
	ld (bc),a			;b4e2	02 	. 
	rst 20h			;b4e3	e7 	. 
	add a,d			;b4e4	82 	. 
	rst 30h			;b4e5	f7 	. 
	rst 28h			;b4e6	ef 	. 
	inc bc			;b4e7	03 	. 
	rst 38h			;b4e8	ff 	. 
	add a,c			;b4e9	81 	. 
	add a,e			;b4ea	83 	. 
	add hl,bc			;b4eb	09 	. 
	rst 38h			;b4ec	ff 	. 
	ld (bc),a			;b4ed	02 	. 
	rst 8			;b4ee	cf 	. 
	adc a,e			;b4ef	8b 	. 
	rst 38h			;b4f0	ff 	. 
	ld sp,iy		;b4f1	fd f9 	. . 
	di			;b4f3	f3 	. 
	rst 20h			;b4f4	e7 	. 
	rst 8			;b4f5	cf 	. 
	sbc a,a			;b4f6	9f 	. 
	cp a			;b4f7	bf 	. 
	rst 38h			;b4f8	ff 	. 
	rst 0			;b4f9	c7 	. 
	or e			;b4fa	b3 	. 
	inc bc			;b4fb	03 	. 
	add hl,sp			;b4fc	39 	9 
	add a,l			;b4fd	85 	. 
	sbc a,e			;b4fe	9b 	. 
	rst 0			;b4ff	c7 	. 
	rst 38h			;b500	ff 	. 
	rst 20h			;b501	e7 	. 
	rst 0			;b502	c7 	. 
	inc b			;b503	04 	. 
	rst 20h			;b504	e7 	. 
	xor (hl)			;b505	ae 	. 
	add a,c			;b506	81 	. 
	rst 38h			;b507	ff 	. 
	add a,e			;b508	83 	. 
	add hl,sp			;b509	39 	9 
	pop af			;b50a	f1 	. 
	jp 01f87h		;b50b	c3 87 1f 	. . . 
	ld bc,l81ffh		;b50e	01 ff 81 	. . . 
	di			;b511	f3 	. 
	rst 20h			;b512	e7 	. 
	jp 039f9h		;b513	c3 f9 39 	. . 9 
	add a,e			;b516	83 	. 
	rst 38h			;b517	ff 	. 
	ex (sp),hl			;b518	e3 	. 
	jp 03393h		;b519	c3 93 33 	. . 3 
	ld bc,0f3f3h		;b51c	01 f3 f3 	. . . 
	rst 38h			;b51f	ff 	. 
	inc bc			;b520	03 	. 
	ccf			;b521	3f 	? 
	inc bc			;b522	03 	. 
	ld sp,hl			;b523	f9 	. 
	ld sp,hl			;b524	f9 	. 
	add hl,sp			;b525	39 	9 
	add a,e			;b526	83 	. 
	rst 38h			;b527	ff 	. 
	jp 03f9fh		;b528	c3 9f 3f 	. . ? 
	inc bc			;b52b	03 	. 
	add hl,sp			;b52c	39 	9 
	add hl,sp			;b52d	39 	9 
	add a,e			;b52e	83 	. 
	rst 38h			;b52f	ff 	. 
	ld bc,0f339h		;b530	01 39 f3 	. 9 . 
	rst 20h			;b533	e7 	. 
	inc bc			;b534	03 	. 
	rst 8			;b535	cf 	. 
	sub b			;b536	90 	. 
	rst 38h			;b537	ff 	. 
	add a,e			;b538	83 	. 
	add hl,sp			;b539	39 	9 
	add hl,sp			;b53a	39 	9 
	add a,e			;b53b	83 	. 
	add hl,sp			;b53c	39 	9 
	add hl,sp			;b53d	39 	9 
	add a,e			;b53e	83 	. 
	rst 38h			;b53f	ff 	. 
	add a,e			;b540	83 	. 
	add hl,sp			;b541	39 	9 
	add hl,sp			;b542	39 	9 
	add a,c			;b543	81 	. 
	ld sp,hl			;b544	f9 	. 
	di			;b545	f3 	. 
	add a,a			;b546	87 	. 
	ld (bc),a			;b547	02 	. 
	rst 38h			;b548	ff 	. 
	ld (bc),a			;b549	02 	. 
	rst 20h			;b54a	e7 	. 
	add a,c			;b54b	81 	. 
	rst 38h			;b54c	ff 	. 
	ld (bc),a			;b54d	02 	. 
	rst 20h			;b54e	e7 	. 
	inc bc			;b54f	03 	. 
	rst 38h			;b550	ff 	. 
	ld (bc),a			;b551	02 	. 
	rst 20h			;b552	e7 	. 
	adc a,h			;b553	8c 	. 
	rst 38h			;b554	ff 	. 
	rst 20h			;b555	e7 	. 
	rst 20h			;b556	e7 	. 
	rst 30h			;b557	f7 	. 
	rst 28h			;b558	ef 	. 
	ld sp,hl			;b559	f9 	. 
	di			;b55a	f3 	. 
	rst 20h			;b55b	e7 	. 
	rst 8			;b55c	cf 	. 
	rst 20h			;b55d	e7 	. 
	di			;b55e	f3 	. 
	ld sp,hl			;b55f	f9 	. 
	inc bc			;b560	03 	. 
	rst 38h			;b561	ff 	. 
	add a,e			;b562	83 	. 
	add a,e			;b563	83 	. 
	rst 38h			;b564	ff 	. 
	add a,e			;b565	83 	. 
	inc bc			;b566	03 	. 
	rst 38h			;b567	ff 	. 
	xor d			;b568	aa 	. 
	sbc a,a			;b569	9f 	. 
	rst 8			;b56a	cf 	. 
	rst 20h			;b56b	e7 	. 
	di			;b56c	f3 	. 
	rst 20h			;b56d	e7 	. 
	rst 8			;b56e	cf 	. 
	sbc a,a			;b56f	9f 	. 
	rst 38h			;b570	ff 	. 
	add a,e			;b571	83 	. 
	add hl,sp			;b572	39 	9 
	ld sp,hl			;b573	f9 	. 
	ex (sp),hl			;b574	e3 	. 
	rst 8			;b575	cf 	. 
	rst 38h			;b576	ff 	. 
	rst 8			;b577	cf 	. 
	rst 38h			;b578	ff 	. 
	add a,e			;b579	83 	. 
	add hl,sp			;b57a	39 	9 
	ld sp,hl			;b57b	f9 	. 
	adc a,c			;b57c	89 	. 
	add hl,hl			;b57d	29 	) 
	add hl,hl			;b57e	29 	) 
	add a,e			;b57f	83 	. 
	rst 38h			;b580	ff 	. 
	rst 0			;b581	c7 	. 
	sub e			;b582	93 	. 
	add hl,sp			;b583	39 	9 
	add hl,sp			;b584	39 	9 
	ld bc,03939h		;b585	01 39 39 	. 9 9 
	rst 38h			;b588	ff 	. 
	inc bc			;b589	03 	. 
	add hl,sp			;b58a	39 	9 
	add hl,sp			;b58b	39 	9 
	inc bc			;b58c	03 	. 
	add hl,sp			;b58d	39 	9 
	add hl,sp			;b58e	39 	9 
	inc bc			;b58f	03 	. 
	rst 38h			;b590	ff 	. 
	jp 00399h		;b591	c3 99 03 	. . . 
	ccf			;b594	3f 	? 
	add a,l			;b595	85 	. 
	sbc a,c			;b596	99 	. 
	jp 007ffh		;b597	c3 ff 07 	. . . 
	inc sp			;b59a	33 	3 
	inc bc			;b59b	03 	. 
	add hl,sp			;b59c	39 	9 
	adc a,a			;b59d	8f 	. 
	inc sp			;b59e	33 	3 
	rlca			;b59f	07 	. 
	rst 38h			;b5a0	ff 	. 
	ld bc,03f3fh		;b5a1	01 3f 3f 	. ? ? 
	rlca			;b5a4	07 	. 
	ccf			;b5a5	3f 	? 
	ccf			;b5a6	3f 	? 
	ld bc,001ffh		;b5a7	01 ff 01 	. . . 
	ccf			;b5aa	3f 	? 
	ccf			;b5ab	3f 	? 
	rlca			;b5ac	07 	. 
	inc bc			;b5ad	03 	. 
	ccf			;b5ae	3f 	? 
	adc a,c			;b5af	89 	. 
	rst 38h			;b5b0	ff 	. 
	pop bc			;b5b1	c1 	. 
	sbc a,a			;b5b2	9f 	. 
	ccf			;b5b3	3f 	? 
	ld sp,l9939h		;b5b4	31 39 99 	1 9 . 
	pop bc			;b5b7	c1 	. 
	rst 38h			;b5b8	ff 	. 
	inc bc			;b5b9	03 	. 
	add hl,sp			;b5ba	39 	9 
	add a,c			;b5bb	81 	. 
	ld bc,03903h		;b5bc	01 03 39 	. . 9 
	add a,d			;b5bf	82 	. 
	rst 38h			;b5c0	ff 	. 
	add a,c			;b5c1	81 	. 
	dec b			;b5c2	05 	. 
	rst 20h			;b5c3	e7 	. 
	add a,d			;b5c4	82 	. 
	add a,c			;b5c5	81 	. 
	rst 38h			;b5c6	ff 	. 
	dec b			;b5c7	05 	. 
	ld sp,hl			;b5c8	f9 	. 
	adc a,e			;b5c9	8b 	. 
	add hl,sp			;b5ca	39 	9 
	add a,e			;b5cb	83 	. 
	rst 38h			;b5cc	ff 	. 
	add hl,sp			;b5cd	39 	9 
	inc sp			;b5ce	33 	3 
	daa			;b5cf	27 	' 
	rrca			;b5d0	0f 	. 
	rlca			;b5d1	07 	. 
	inc hl			;b5d2	23 	# 
	ld sp,006ffh		;b5d3	31 ff 06 	1 . . 
	ccf			;b5d6	3f 	? 
	sub e			;b5d7	93 	. 
	ld bc,039ffh		;b5d8	01 ff 39 	. . 9 
	ld de,00101h		;b5db	11 01 01 	. . . 
	add hl,hl			;b5de	29 	) 
	add hl,sp			;b5df	39 	9 
	add hl,sp			;b5e0	39 	9 
	rst 38h			;b5e1	ff 	. 
	add hl,sp			;b5e2	39 	9 
	add hl,de			;b5e3	19 	. 
	add hl,bc			;b5e4	09 	. 
	ld bc,03121h		;b5e5	01 21 31 	. ! 1 
	add hl,sp			;b5e8	39 	9 
	rst 38h			;b5e9	ff 	. 
	add a,e			;b5ea	83 	. 
	dec b			;b5eb	05 	. 
	add hl,sp			;b5ec	39 	9 
	add a,e			;b5ed	83 	. 
	add a,e			;b5ee	83 	. 
	rst 38h			;b5ef	ff 	. 
	inc bc			;b5f0	03 	. 
	inc bc			;b5f1	03 	. 
	add hl,sp			;b5f2	39 	9 
	add a,l			;b5f3	85 	. 
	inc bc			;b5f4	03 	. 
	ccf			;b5f5	3f 	? 
	ccf			;b5f6	3f 	? 
	rst 38h			;b5f7	ff 	. 
	add a,e			;b5f8	83 	. 
	inc bc			;b5f9	03 	. 
	add hl,sp			;b5fa	39 	9 
	sub l			;b5fb	95 	. 
	ld hl,l8933h		;b5fc	21 33 89 	! 3 . 
	rst 38h			;b5ff	ff 	. 
	inc bc			;b600	03 	. 
	add hl,sp			;b601	39 	9 
	add hl,sp			;b602	39 	9 
	ld sp,02307h		;b603	31 07 23 	1 . # 
	ld sp,l87ffh		;b606	31 ff 87 	1 . . 
	inc sp			;b609	33 	3 
	ccf			;b60a	3f 	? 
	add a,e			;b60b	83 	. 
	ld sp,hl			;b60c	f9 	. 
	add hl,sp			;b60d	39 	9 
	add a,e			;b60e	83 	. 
	rst 38h			;b60f	ff 	. 
	add a,c			;b610	81 	. 
	ld b,0e7h		;b611	06 e7 	. . 
	add a,c			;b613	81 	. 
	rst 38h			;b614	ff 	. 
	ld b,039h		;b615	06 39 	. 9 
	add a,d			;b617	82 	. 
	add a,e			;b618	83 	. 
	rst 38h			;b619	ff 	. 
	inc bc			;b61a	03 	. 
	add hl,sp			;b61b	39 	9 
	sub l			;b61c	95 	. 
lb61dh:
	ld de,0c783h		;b61d	11 83 c7 	. . . 
	rst 28h			;b620	ef 	. 
	rst 38h			;b621	ff 	. 
	add hl,sp			;b622	39 	9 
	add hl,sp			;b623	39 	9 
	add hl,hl			;b624	29 	) 
	ld bc,09301h		;b625	01 01 93 	. . . 
	cp e			;b628	bb 	. 
	rst 38h			;b629	ff 	. 
	add hl,sp			;b62a	39 	9 
	ld de,0c783h		;b62b	11 83 c7 	. . . 
	add a,e			;b62e	83 	. 
	ld de,0ff39h		;b62f	11 39 ff 	. 9 . 
	inc bc			;b632	03 	. 
	sbc a,c			;b633	99 	. 
	add a,c			;b634	81 	. 
	jp 0e703h		;b635	c3 03 e7 	. . . 
	or c			;b638	b1 	. 
	rst 38h			;b639	ff 	. 
	ld bc,0e3f1h		;b63a	01 f1 e3 	. . . 
	rst 0			;b63d	c7 	. 
	adc a,a			;b63e	8f 	. 
	rra			;b63f	1f 	. 
	ld bc,0c3ffh		;b640	01 ff c3 	. . . 
	cp l			;b643	bd 	. 
	ld h,(hl)			;b644	66 	f 
	ld e,(hl)			;b645	5e 	^ 
	ld e,(hl)			;b646	5e 	^ 
	ld h,(hl)			;b647	66 	f 
	cp l			;b648	bd 	. 
	jp l80c0h		;b649	c3 c0 80 	. . . 
	sbc a,a			;b64c	9f 	. 
	add a,c			;b64d	81 	. 
	ret nz			;b64e	c0 	. 
	call m,sub_8180h		;b64f	fc 80 81 	. . . 
	ret nz			;b652	c0 	. 
	add a,b			;b653	80 	. 
	sbc a,a			;b654	9f 	. 
	add a,c			;b655	81 	. 
	add a,c			;b656	81 	. 
	sbc a,a			;b657	9f 	. 
	add a,b			;b658	80 	. 
	ret nz			;b659	c0 	. 
	ret nz			;b65a	c0 	. 
	add a,b			;b65b	80 	. 
	sbc a,a			;b65c	9f 	. 
	sub b			;b65d	90 	. 
	sub b			;b65e	90 	. 
	sbc a,h			;b65f	9c 	. 
	add a,b			;b660	80 	. 
	ret nz			;b661	c0 	. 
	ex (sp),hl			;b662	e3 	. 
	ex (sp),hl			;b663	e3 	. 
	pop bc			;b664	c1 	. 
	ret			;b665	c9 	. 
	ret			;b666	c9 	. 
	sbc a,h			;b667	9c 	. 
	sub b			;b668	90 	. 
	djnz lb66bh		;b669	10 00 	. . 
lb66bh:
	ex af,af'			;b66b	08 	. 
	rst 38h			;b66c	ff 	. 
	dec b			;b66d	05 	. 
	rst 20h			;b66e	e7 	. 
	add a,e			;b66f	83 	. 
	rst 38h			;b670	ff 	. 
	rst 20h			;b671	e7 	. 
	rst 38h			;b672	ff 	. 
	inc bc			;b673	03 	. 
	sub e			;b674	93 	. 
	dec b			;b675	05 	. 
	rst 38h			;b676	ff 	. 
	ld (bc),a			;b677	02 	. 
	sub e			;b678	93 	. 
	and c			;b679	a1 	. 
	ld bc,00193h		;b67a	01 93 01 	. . . 
	sub e			;b67d	93 	. 
	sub e			;b67e	93 	. 
	rst 38h			;b67f	ff 	. 
	rst 20h			;b680	e7 	. 
	jp 0c3a7h		;b681	c3 a7 c3 	. . . 
	push hl			;b684	e5 	. 
	add a,e			;b685	83 	. 
	rst 20h			;b686	e7 	. 
	rst 38h			;b687	ff 	. 
	sbc a,l			;b688	9d 	. 
	sbc a,c			;b689	99 	. 
	di			;b68a	f3 	. 
	rst 20h			;b68b	e7 	. 
	rst 8			;b68c	cf 	. 
	sbc a,c			;b68d	99 	. 
	cp c			;b68e	b9 	. 
	rst 38h			;b68f	ff 	. 
	adc a,a			;b690	8f 	. 
	scf			;b691	37 	7 
	scf			;b692	37 	7 
	adc a,a			;b693	8f 	. 
	ld h,l			;b694	65 	e 
	ld (hl),e			;b695	73 	s 
	adc a,c			;b696	89 	. 
	rst 38h			;b697	ff 	. 
	rst 20h			;b698	e7 	. 
	rst 20h			;b699	e7 	. 
	rst 28h			;b69a	ef 	. 
	dec b			;b69b	05 	. 
	rst 38h			;b69c	ff 	. 
	add a,d			;b69d	82 	. 
	di			;b69e	f3 	. 
	rst 20h			;b69f	e7 	. 
	inc bc			;b6a0	03 	. 
	rst 8			;b6a1	cf 	. 
	add a,l			;b6a2	85 	. 
	rst 20h			;b6a3	e7 	. 
	di			;b6a4	f3 	. 
	rst 38h			;b6a5	ff 	. 
	rst 8			;b6a6	cf 	. 
	rst 20h			;b6a7	e7 	. 
	inc bc			;b6a8	03 	. 
	di			;b6a9	f3 	. 
	adc a,d			;b6aa	8a 	. 
	rst 20h			;b6ab	e7 	. 
	rst 8			;b6ac	cf 	. 
	rst 38h			;b6ad	ff 	. 
	rst 20h			;b6ae	e7 	. 
	and l			;b6af	a5 	. 
	jp 0c3e7h		;b6b0	c3 e7 c3 	. . . 
	and l			;b6b3	a5 	. 
	rst 20h			;b6b4	e7 	. 
	ld (bc),a			;b6b5	02 	. 
	rst 38h			;b6b6	ff 	. 
	ld (bc),a			;b6b7	02 	. 
	rst 20h			;b6b8	e7 	. 
	add a,c			;b6b9	81 	. 
	add a,c			;b6ba	81 	. 
	ld (bc),a			;b6bb	02 	. 
	rst 20h			;b6bc	e7 	. 
	ld b,0ffh		;b6bd	06 ff 	. . 
	ld (bc),a			;b6bf	02 	. 
	rst 20h			;b6c0	e7 	. 
	add a,d			;b6c1	82 	. 
	rst 30h			;b6c2	f7 	. 
	rst 28h			;b6c3	ef 	. 
	inc bc			;b6c4	03 	. 
	rst 38h			;b6c5	ff 	. 
	add a,c			;b6c6	81 	. 
	add a,e			;b6c7	83 	. 
	add hl,bc			;b6c8	09 	. 
	rst 38h			;b6c9	ff 	. 
	ld (bc),a			;b6ca	02 	. 
	rst 8			;b6cb	cf 	. 
	adc a,e			;b6cc	8b 	. 
	rst 38h			;b6cd	ff 	. 
	ld sp,iy		;b6ce	fd f9 	. . 
	di			;b6d0	f3 	. 
	rst 20h			;b6d1	e7 	. 
	rst 8			;b6d2	cf 	. 
	sbc a,a			;b6d3	9f 	. 
	cp a			;b6d4	bf 	. 
	rst 38h			;b6d5	ff 	. 
	rst 0			;b6d6	c7 	. 
	or e			;b6d7	b3 	. 
	inc bc			;b6d8	03 	. 
	add hl,sp			;b6d9	39 	9 
	add a,l			;b6da	85 	. 
	sbc a,e			;b6db	9b 	. 
	rst 0			;b6dc	c7 	. 
	rst 38h			;b6dd	ff 	. 
	rst 20h			;b6de	e7 	. 
	rst 0			;b6df	c7 	. 
	inc b			;b6e0	04 	. 
	rst 20h			;b6e1	e7 	. 
	xor (hl)			;b6e2	ae 	. 
	add a,c			;b6e3	81 	. 
	rst 38h			;b6e4	ff 	. 
	add a,e			;b6e5	83 	. 
	add hl,sp			;b6e6	39 	9 
	pop af			;b6e7	f1 	. 
	jp 01f87h		;b6e8	c3 87 1f 	. . . 
	ld bc,l81ffh		;b6eb	01 ff 81 	. . . 
	di			;b6ee	f3 	. 
	rst 20h			;b6ef	e7 	. 
	jp 039f9h		;b6f0	c3 f9 39 	. . 9 
	add a,e			;b6f3	83 	. 
	rst 38h			;b6f4	ff 	. 
	ex (sp),hl			;b6f5	e3 	. 
	jp 03393h		;b6f6	c3 93 33 	. . 3 
	ld bc,0f3f3h		;b6f9	01 f3 f3 	. . . 
	rst 38h			;b6fc	ff 	. 
	inc bc			;b6fd	03 	. 
	ccf			;b6fe	3f 	? 
	inc bc			;b6ff	03 	. 
	ld sp,hl			;b700	f9 	. 
	ld sp,hl			;b701	f9 	. 
	add hl,sp			;b702	39 	9 
	add a,e			;b703	83 	. 
	rst 38h			;b704	ff 	. 
	jp 03f9fh		;b705	c3 9f 3f 	. . ? 
	inc bc			;b708	03 	. 
	add hl,sp			;b709	39 	9 
	add hl,sp			;b70a	39 	9 
	add a,e			;b70b	83 	. 
	rst 38h			;b70c	ff 	. 
	ld bc,0f339h		;b70d	01 39 f3 	. 9 . 
	rst 20h			;b710	e7 	. 
	inc bc			;b711	03 	. 
	rst 8			;b712	cf 	. 
	sub b			;b713	90 	. 
	rst 38h			;b714	ff 	. 
	add a,e			;b715	83 	. 
	add hl,sp			;b716	39 	9 
	add hl,sp			;b717	39 	9 
	add a,e			;b718	83 	. 
	add hl,sp			;b719	39 	9 
	add hl,sp			;b71a	39 	9 
	add a,e			;b71b	83 	. 
	rst 38h			;b71c	ff 	. 
	add a,e			;b71d	83 	. 
	add hl,sp			;b71e	39 	9 
	add hl,sp			;b71f	39 	9 
	add a,c			;b720	81 	. 
	ld sp,hl			;b721	f9 	. 
	di			;b722	f3 	. 
	add a,a			;b723	87 	. 
	ld (bc),a			;b724	02 	. 
	rst 38h			;b725	ff 	. 
	ld (bc),a			;b726	02 	. 
	rst 20h			;b727	e7 	. 
	add a,c			;b728	81 	. 
	rst 38h			;b729	ff 	. 
	ld (bc),a			;b72a	02 	. 
	rst 20h			;b72b	e7 	. 
	inc bc			;b72c	03 	. 
	rst 38h			;b72d	ff 	. 
	ld (bc),a			;b72e	02 	. 
	rst 20h			;b72f	e7 	. 
	adc a,h			;b730	8c 	. 
	rst 38h			;b731	ff 	. 
	rst 20h			;b732	e7 	. 
	rst 20h			;b733	e7 	. 
	rst 30h			;b734	f7 	. 
	rst 28h			;b735	ef 	. 
	ld sp,hl			;b736	f9 	. 
	di			;b737	f3 	. 
	rst 20h			;b738	e7 	. 
	rst 8			;b739	cf 	. 
	rst 20h			;b73a	e7 	. 
	di			;b73b	f3 	. 
	ld sp,hl			;b73c	f9 	. 
	inc bc			;b73d	03 	. 
	rst 38h			;b73e	ff 	. 
	add a,e			;b73f	83 	. 
	add a,e			;b740	83 	. 
	rst 38h			;b741	ff 	. 
	add a,e			;b742	83 	. 
	inc bc			;b743	03 	. 
	rst 38h			;b744	ff 	. 
	xor d			;b745	aa 	. 
	sbc a,a			;b746	9f 	. 
	rst 8			;b747	cf 	. 
	rst 20h			;b748	e7 	. 
	di			;b749	f3 	. 
	rst 20h			;b74a	e7 	. 
	rst 8			;b74b	cf 	. 
	sbc a,a			;b74c	9f 	. 
	rst 38h			;b74d	ff 	. 
	add a,e			;b74e	83 	. 
	add hl,sp			;b74f	39 	9 
	ld sp,hl			;b750	f9 	. 
	ex (sp),hl			;b751	e3 	. 
	rst 8			;b752	cf 	. 
	rst 38h			;b753	ff 	. 
	rst 8			;b754	cf 	. 
	rst 38h			;b755	ff 	. 
	add a,e			;b756	83 	. 
	add hl,sp			;b757	39 	9 
	ld sp,hl			;b758	f9 	. 
	adc a,c			;b759	89 	. 
	add hl,hl			;b75a	29 	) 
	add hl,hl			;b75b	29 	) 
	add a,e			;b75c	83 	. 
	rst 38h			;b75d	ff 	. 
	rst 0			;b75e	c7 	. 
	sub e			;b75f	93 	. 
	add hl,sp			;b760	39 	9 
	add hl,sp			;b761	39 	9 
	ld bc,03939h		;b762	01 39 39 	. 9 9 
	rst 38h			;b765	ff 	. 
	inc bc			;b766	03 	. 
	add hl,sp			;b767	39 	9 
	add hl,sp			;b768	39 	9 
	inc bc			;b769	03 	. 
	add hl,sp			;b76a	39 	9 
	add hl,sp			;b76b	39 	9 
	inc bc			;b76c	03 	. 
	rst 38h			;b76d	ff 	. 
	jp 00399h		;b76e	c3 99 03 	. . . 
	ccf			;b771	3f 	? 
	add a,l			;b772	85 	. 
	sbc a,c			;b773	99 	. 
	jp 007ffh		;b774	c3 ff 07 	. . . 
	inc sp			;b777	33 	3 
	inc bc			;b778	03 	. 
	add hl,sp			;b779	39 	9 
	adc a,a			;b77a	8f 	. 
	inc sp			;b77b	33 	3 
	rlca			;b77c	07 	. 
	rst 38h			;b77d	ff 	. 
	ld bc,03f3fh		;b77e	01 3f 3f 	. ? ? 
	rlca			;b781	07 	. 
	ccf			;b782	3f 	? 
	ccf			;b783	3f 	? 
	ld bc,001ffh		;b784	01 ff 01 	. . . 
	ccf			;b787	3f 	? 
	ccf			;b788	3f 	? 
	rlca			;b789	07 	. 
	inc bc			;b78a	03 	. 
	ccf			;b78b	3f 	? 
	adc a,c			;b78c	89 	. 
	rst 38h			;b78d	ff 	. 
	pop bc			;b78e	c1 	. 
	sbc a,a			;b78f	9f 	. 
	ccf			;b790	3f 	? 
	ld sp,l9939h		;b791	31 39 99 	1 9 . 
	pop bc			;b794	c1 	. 
	rst 38h			;b795	ff 	. 
	inc bc			;b796	03 	. 
	add hl,sp			;b797	39 	9 
	add a,c			;b798	81 	. 
	ld bc,03903h		;b799	01 03 39 	. . 9 
	add a,d			;b79c	82 	. 
	rst 38h			;b79d	ff 	. 
	add a,c			;b79e	81 	. 
	dec b			;b79f	05 	. 
	rst 20h			;b7a0	e7 	. 
	add a,d			;b7a1	82 	. 
	add a,c			;b7a2	81 	. 
	rst 38h			;b7a3	ff 	. 
	dec b			;b7a4	05 	. 
	ld sp,hl			;b7a5	f9 	. 
	adc a,e			;b7a6	8b 	. 
	add hl,sp			;b7a7	39 	9 
	add a,e			;b7a8	83 	. 
	rst 38h			;b7a9	ff 	. 
	add hl,sp			;b7aa	39 	9 
	inc sp			;b7ab	33 	3 
	daa			;b7ac	27 	' 
	rrca			;b7ad	0f 	. 
	rlca			;b7ae	07 	. 
	inc hl			;b7af	23 	# 
	ld sp,006ffh		;b7b0	31 ff 06 	1 . . 
	ccf			;b7b3	3f 	? 
	sub e			;b7b4	93 	. 
	ld bc,039ffh		;b7b5	01 ff 39 	. . 9 
	ld de,00101h		;b7b8	11 01 01 	. . . 
	add hl,hl			;b7bb	29 	) 
	add hl,sp			;b7bc	39 	9 
	add hl,sp			;b7bd	39 	9 
	rst 38h			;b7be	ff 	. 
	add hl,sp			;b7bf	39 	9 
	add hl,de			;b7c0	19 	. 
	add hl,bc			;b7c1	09 	. 
	ld bc,03121h		;b7c2	01 21 31 	. ! 1 
	add hl,sp			;b7c5	39 	9 
	rst 38h			;b7c6	ff 	. 
	add a,e			;b7c7	83 	. 
	dec b			;b7c8	05 	. 
	add hl,sp			;b7c9	39 	9 
lb7cah:
	add a,e			;b7ca	83 	. 
	add a,e			;b7cb	83 	. 
	rst 38h			;b7cc	ff 	. 
	inc bc			;b7cd	03 	. 
	inc bc			;b7ce	03 	. 
	add hl,sp			;b7cf	39 	9 
	add a,l			;b7d0	85 	. 
	inc bc			;b7d1	03 	. 
	ccf			;b7d2	3f 	? 
	ccf			;b7d3	3f 	? 
	rst 38h			;b7d4	ff 	. 
	add a,e			;b7d5	83 	. 
	inc bc			;b7d6	03 	. 
	add hl,sp			;b7d7	39 	9 
	sub l			;b7d8	95 	. 
	ld hl,l8933h		;b7d9	21 33 89 	! 3 . 
	rst 38h			;b7dc	ff 	. 
	inc bc			;b7dd	03 	. 
	add hl,sp			;b7de	39 	9 
	add hl,sp			;b7df	39 	9 
	ld sp,02307h		;b7e0	31 07 23 	1 . # 
	ld sp,l87ffh		;b7e3	31 ff 87 	1 . . 
	inc sp			;b7e6	33 	3 
	ccf			;b7e7	3f 	? 
	add a,e			;b7e8	83 	. 
	ld sp,hl			;b7e9	f9 	. 
	add hl,sp			;b7ea	39 	9 
	add a,e			;b7eb	83 	. 
	rst 38h			;b7ec	ff 	. 
	add a,c			;b7ed	81 	. 
	ld b,0e7h		;b7ee	06 e7 	. . 
	add a,c			;b7f0	81 	. 
	rst 38h			;b7f1	ff 	. 
	ld b,039h		;b7f2	06 39 	. 9 
	add a,d			;b7f4	82 	. 
	add a,e			;b7f5	83 	. 
	rst 38h			;b7f6	ff 	. 
	inc bc			;b7f7	03 	. 
	add hl,sp			;b7f8	39 	9 
	sub l			;b7f9	95 	. 
	ld de,0c783h		;b7fa	11 83 c7 	. . . 
	rst 28h			;b7fd	ef 	. 
	rst 38h			;b7fe	ff 	. 
	add hl,sp			;b7ff	39 	9 
	add hl,sp			;b800	39 	9 
	add hl,hl			;b801	29 	) 
	ld bc,09301h		;b802	01 01 93 	. . . 
	cp e			;b805	bb 	. 
	rst 38h			;b806	ff 	. 
	add hl,sp			;b807	39 	9 
	ld de,0c783h		;b808	11 83 c7 	. . . 
	add a,e			;b80b	83 	. 
	ld de,0ff39h		;b80c	11 39 ff 	. 9 . 
	inc bc			;b80f	03 	. 
	sbc a,c			;b810	99 	. 
	add a,c			;b811	81 	. 
	jp 0e703h		;b812	c3 03 e7 	. . . 
	or c			;b815	b1 	. 
	rst 38h			;b816	ff 	. 
	ld bc,0e3f1h		;b817	01 f1 e3 	. . . 
	rst 0			;b81a	c7 	. 
	adc a,a			;b81b	8f 	. 
	rra			;b81c	1f 	. 
	ld bc,0c3ffh		;b81d	01 ff c3 	. . . 
	cp l			;b820	bd 	. 
	ld h,(hl)			;b821	66 	f 
	ld e,(hl)			;b822	5e 	^ 
	ld e,(hl)			;b823	5e 	^ 
	ld h,(hl)			;b824	66 	f 
	cp l			;b825	bd 	. 
	jp l80c0h		;b826	c3 c0 80 	. . . 
	sbc a,a			;b829	9f 	. 
	add a,c			;b82a	81 	. 
	ret nz			;b82b	c0 	. 
	call m,sub_8180h		;b82c	fc 80 81 	. . . 
	ret nz			;b82f	c0 	. 
	add a,b			;b830	80 	. 
	sbc a,a			;b831	9f 	. 
	add a,c			;b832	81 	. 
	add a,c			;b833	81 	. 
	sbc a,a			;b834	9f 	. 
	add a,b			;b835	80 	. 
	ret nz			;b836	c0 	. 
	ret nz			;b837	c0 	. 
	add a,b			;b838	80 	. 
	sbc a,a			;b839	9f 	. 
	sub b			;b83a	90 	. 
	sub b			;b83b	90 	. 
	sbc a,h			;b83c	9c 	. 
	add a,b			;b83d	80 	. 
	ret nz			;b83e	c0 	. 
	ex (sp),hl			;b83f	e3 	. 
	ex (sp),hl			;b840	e3 	. 
	pop bc			;b841	c1 	. 
	ret			;b842	c9 	. 
	ret			;b843	c9 	. 
	sbc a,h			;b844	9c 	. 
	sub b			;b845	90 	. 
	djnz lb848h		;b846	10 00 	. . 
lb848h:
	ld a,a			;b848	7f 	 
	nop			;b849	00 	. 
	ld a,a			;b84a	7f 	 
	nop			;b84b	00 	. 
	ld a,a			;b84c	7f 	 
	nop			;b84d	00 	. 
	ld a,a			;b84e	7f 	 
	nop			;b84f	00 	. 
	inc b			;b850	04 	. 
	nop			;b851	00 	. 
	nop			;b852	00 	. 
	nop			;b853	00 	. 
	nop			;b854	00 	. 
	nop			;b855	00 	. 
	nop			;b856	00 	. 
	nop			;b857	00 	. 
	nop			;b858	00 	. 
	nop			;b859	00 	. 
	nop			;b85a	00 	. 
	dec b			;b85b	05 	. 
	dec b			;b85c	05 	. 
	add a,d			;b85d	82 	. 
	add a,a			;b85e	87 	. 
	nop			;b85f	00 	. 
	nop			;b860	00 	. 
	rst 38h			;b861	ff 	. 
	rst 38h			;b862	ff 	. 
	ld (0dd22h),hl		;b863	22 22 dd 	" " . 
	rst 38h			;b866	ff 	. 
	nop			;b867	00 	. 
	nop			;b868	00 	. 
	rst 38h			;b869	ff 	. 
	rst 38h			;b86a	ff 	. 
	nop			;b86b	00 	. 
	nop			;b86c	00 	. 
	rst 38h			;b86d	ff 	. 
	rst 38h			;b86e	ff 	. 
	nop			;b86f	00 	. 
	nop			;b870	00 	. 
	rst 38h			;b871	ff 	. 
	rst 38h			;b872	ff 	. 
	jr lb885h		;b873	18 10 	. . 
	nop			;b875	00 	. 
	djnz $+100		;b876	10 62 	. b 
	ld (lbe9ch),hl		;b878	22 9c be 	" . . 
	ex af,af'			;b87b	08 	. 
	ex af,af'			;b87c	08 	. 
	rst 30h			;b87d	f7 	. 
	rst 38h			;b87e	ff 	. 
	nop			;b87f	00 	. 
	nop			;b880	00 	. 
	rst 38h			;b881	ff 	. 
	rst 38h			;b882	ff 	. 
	nop			;b883	00 	. 
	nop			;b884	00 	. 
lb885h:
	rst 38h			;b885	ff 	. 
	rst 38h			;b886	ff 	. 
	nop			;b887	00 	. 
	nop			;b888	00 	. 
	rst 38h			;b889	ff 	. 
	rst 38h			;b88a	ff 	. 
	djnz lb89dh		;b88b	10 10 	. . 
	rst 28h			;b88d	ef 	. 
	rst 38h			;b88e	ff 	. 
	nop			;b88f	00 	. 
	nop			;b890	00 	. 
	rst 38h			;b891	ff 	. 
	rst 38h			;b892	ff 	. 
	nop			;b893	00 	. 
	nop			;b894	00 	. 
	nop			;b895	00 	. 
	nop			;b896	00 	. 
	nop			;b897	00 	. 
	nop			;b898	00 	. 
	ld bc,01401h		;b899	01 01 14 	. . . 
	inc d			;b89c	14 	. 
lb89dh:
	dec bc			;b89d	0b 	. 
	rra			;b89e	1f 	. 
	nop			;b89f	00 	. 
	nop			;b8a0	00 	. 
	rst 38h			;b8a1	ff 	. 
	rst 38h			;b8a2	ff 	. 
	inc b			;b8a3	04 	. 
	inc b			;b8a4	04 	. 
	ei			;b8a5	fb 	. 
	rst 38h			;b8a6	ff 	. 
	nop			;b8a7	00 	. 
	nop			;b8a8	00 	. 
	rst 38h			;b8a9	ff 	. 
	rst 38h			;b8aa	ff 	. 
	nop			;b8ab	00 	. 
	nop			;b8ac	00 	. 
	rst 38h			;b8ad	ff 	. 
	rst 38h			;b8ae	ff 	. 
	nop			;b8af	00 	. 
	nop			;b8b0	00 	. 
	rst 38h			;b8b1	ff 	. 
	rst 38h			;b8b2	ff 	. 
	jr nz,lb8b5h		;b8b3	20 00 	  . 
lb8b5h:
	ld b,b			;b8b5	40 	@ 
	ld b,b			;b8b6	40 	@ 
	sbc a,b			;b8b7	98 	. 
	sub b			;b8b8	90 	. 
	ld h,b			;b8b9	60 	` 
	ret p			;b8ba	f0 	. 
	ld (0dc22h),hl		;b8bb	22 22 dc 	" " . 
	cp 008h		;b8be	fe 08 	. . 
	ex af,af'			;b8c0	08 	. 
	rst 30h			;b8c1	f7 	. 
	rst 38h			;b8c2	ff 	. 
	nop			;b8c3	00 	. 
	nop			;b8c4	00 	. 
	rst 38h			;b8c5	ff 	. 
	rst 38h			;b8c6	ff 	. 
	jr nz,lb8e9h		;b8c7	20 20 	    
	rst 18h			;b8c9	df 	. 
	rst 38h			;b8ca	ff 	. 
	nop			;b8cb	00 	. 
	nop			;b8cc	00 	. 
	rst 38h			;b8cd	ff 	. 
	rst 38h			;b8ce	ff 	. 
	nop			;b8cf	00 	. 
	nop			;b8d0	00 	. 
	rst 38h			;b8d1	ff 	. 
	rst 38h			;b8d2	ff 	. 
	inc b			;b8d3	04 	. 
	nop			;b8d4	00 	. 
	ld (bc),a			;b8d5	02 	. 
	ld (bc),a			;b8d6	02 	. 
	add hl,de			;b8d7	19 	. 
	add hl,bc			;b8d8	09 	. 
	ld b,00fh		;b8d9	06 0f 	. . 
	ld b,h			;b8db	44 	D 
	ld b,h			;b8dc	44 	D 
	dec sp			;b8dd	3b 	; 
	ld a,a			;b8de	7f 	 
	djnz lb8f1h		;b8df	10 10 	. . 
	rst 28h			;b8e1	ef 	. 
	rst 38h			;b8e2	ff 	. 
	nop			;b8e3	00 	. 
	nop			;b8e4	00 	. 
	rst 38h			;b8e5	ff 	. 
	rst 38h			;b8e6	ff 	. 
	nop			;b8e7	00 	. 
	nop			;b8e8	00 	. 
lb8e9h:
	rst 38h			;b8e9	ff 	. 
	rst 38h			;b8ea	ff 	. 
	ld (bc),a			;b8eb	02 	. 
	ld (bc),a			;b8ec	02 	. 
	defb 0fdh,0ffh,000h	;illegal sequence		;b8ed	fd ff 00 	. . . 
	nop			;b8f0	00 	. 
lb8f1h:
	rst 38h			;b8f1	ff 	. 
	rst 38h			;b8f2	ff 	. 
	nop			;b8f3	00 	. 
	nop			;b8f4	00 	. 
	nop			;b8f5	00 	. 
	nop			;b8f6	00 	. 
	nop			;b8f7	00 	. 
	nop			;b8f8	00 	. 
	ret po			;b8f9	e0 	. 
	ret po			;b8fa	e0 	. 
	jr z,lb925h		;b8fb	28 28 	( ( 
	ret nc			;b8fd	d0 	. 
	ret m			;b8fe	f8 	. 
	nop			;b8ff	00 	. 
	nop			;b900	00 	. 
	rst 38h			;b901	ff 	. 
	rst 38h			;b902	ff 	. 
	jr nz,lb925h		;b903	20 20 	    
	rst 18h			;b905	df 	. 
	rst 38h			;b906	ff 	. 
	nop			;b907	00 	. 
	nop			;b908	00 	. 
	rst 38h			;b909	ff 	. 
	rst 38h			;b90a	ff 	. 
	nop			;b90b	00 	. 
	nop			;b90c	00 	. 
	rst 38h			;b90d	ff 	. 
	rst 38h			;b90e	ff 	. 
	nop			;b90f	00 	. 
	nop			;b910	00 	. 
	rst 38h			;b911	ff 	. 
	rst 38h			;b912	ff 	. 
	jr lb91dh		;b913	18 08 	. . 
	nop			;b915	00 	. 
	ex af,af'			;b916	08 	. 
	ld b,(hl)			;b917	46 	F 
	ld b,h			;b918	44 	D 
	add hl,sp			;b919	39 	9 
	ld a,l			;b91a	7d 	} 
	djnz lb92dh		;b91b	10 10 	. . 
lb91dh:
	rst 28h			;b91d	ef 	. 
	rst 38h			;b91e	ff 	. 
	nop			;b91f	00 	. 
	nop			;b920	00 	. 
	rst 38h			;b921	ff 	. 
	rst 38h			;b922	ff 	. 
	nop			;b923	00 	. 
	nop			;b924	00 	. 
lb925h:
	rst 38h			;b925	ff 	. 
	rst 38h			;b926	ff 	. 
	nop			;b927	00 	. 
	nop			;b928	00 	. 
	rst 38h			;b929	ff 	. 
	rst 38h			;b92a	ff 	. 
	inc b			;b92b	04 	. 
	inc b			;b92c	04 	. 
lb92dh:
	ei			;b92d	fb 	. 
	rst 38h			;b92e	ff 	. 
	nop			;b92f	00 	. 
	nop			;b930	00 	. 
	rst 38h			;b931	ff 	. 
	rst 38h			;b932	ff 	. 
	nop			;b933	00 	. 
	nop			;b934	00 	. 
	nop			;b935	00 	. 
	nop			;b936	00 	. 
	nop			;b937	00 	. 
	nop			;b938	00 	. 
	nop			;b939	00 	. 
	nop			;b93a	00 	. 
	and b			;b93b	a0 	. 
	and b			;b93c	a0 	. 
	ld b,c			;b93d	41 	A 
	pop hl			;b93e	e1 	. 
	nop			;b93f	00 	. 
	nop			;b940	00 	. 
	rst 38h			;b941	ff 	. 
	rst 38h			;b942	ff 	. 
	ld b,h			;b943	44 	D 
	ld b,h			;b944	44 	D 
	cp e			;b945	bb 	. 
	rst 38h			;b946	ff 	. 
	nop			;b947	00 	. 
	nop			;b948	00 	. 
	rst 38h			;b949	ff 	. 
	rst 38h			;b94a	ff 	. 
	nop			;b94b	00 	. 
	nop			;b94c	00 	. 
	rst 38h			;b94d	ff 	. 
	rst 38h			;b94e	ff 	. 
	nop			;b94f	00 	. 
	nop			;b950	00 	. 
	rst 38h			;b951	ff 	. 
	rst 38h			;b952	ff 	. 
	nop			;b953	00 	. 
	nop			;b954	00 	. 
lb955h:
	nop			;b955	00 	. 
	nop			;b956	00 	. 
	nop			;b957	00 	. 
	nop			;b958	00 	. 
	nop			;b959	00 	. 
	nop			;b95a	00 	. 
	nop			;b95b	00 	. 
	nop			;b95c	00 	. 
	nop			;b95d	00 	. 
	nop			;b95e	00 	. 
	nop			;b95f	00 	. 
	nop			;b960	00 	. 
	nop			;b961	00 	. 
	nop			;b962	00 	. 
	nop			;b963	00 	. 
	nop			;b964	00 	. 
	nop			;b965	00 	. 
	nop			;b966	00 	. 
	add a,e			;b967	83 	. 
	add a,a			;b968	87 	. 
	add a,e			;b969	83 	. 
	inc b			;b96a	04 	. 
	call z,0feffh		;b96b	cc ff fe 	. . . 
	inc sp			;b96e	33 	3 
	sub a			;b96f	97 	. 
	rst 38h			;b970	ff 	. 
	sbc a,a			;b971	9f 	. 
	ld l,b			;b972	68 	h 
	nop			;b973	00 	. 
	nop			;b974	00 	. 
	nop			;b975	00 	. 
	nop			;b976	00 	. 
	nop			;b977	00 	. 
	nop			;b978	00 	. 
	nop			;b979	00 	. 
	nop			;b97a	00 	. 
	nop			;b97b	00 	. 
	nop			;b97c	00 	. 
	nop			;b97d	00 	. 
	nop			;b97e	00 	. 
	jr lb991h		;b97f	18 10 	. . 
	jr lb98bh		;b981	18 08 	. . 
	jp z,0fa7eh		;b983	ca 7e fa 	. ~ . 
	or h			;b986	b4 	. 
	sbc a,c			;b987	99 	. 
	cp 09fh		;b988	fe 9f 	. . 
	ld h,a			;b98a	67 	g 
lb98bh:
	dec (hl)			;b98b	35 	5 
	rst 38h			;b98c	ff 	. 
	ld a,l			;b98d	7d 	} 
	jp z,0ffceh		;b98e	ca ce ff 	. . . 
lb991h:
	rst 38h			;b991	ff 	. 
	ld sp,00000h		;b992	31 00 00 	1 . . 
	nop			;b995	00 	. 
	nop			;b996	00 	. 
	nop			;b997	00 	. 
	nop			;b998	00 	. 
	nop			;b999	00 	. 
	nop			;b99a	00 	. 
	nop			;b99b	00 	. 
	nop			;b99c	00 	. 
	nop			;b99d	00 	. 
	nop			;b99e	00 	. 
	nop			;b99f	00 	. 
	nop			;b9a0	00 	. 
	nop			;b9a1	00 	. 
	nop			;b9a2	00 	. 
	ld bc,00100h		;b9a3	01 00 01 	. . . 
	ld bc,0131dh		;b9a6	01 1d 13 	. . . 
	dec e			;b9a9	1d 	. 
	ld c,0a2h		;b9aa	0e a2 	. . 
	rst 38h			;b9ac	ff 	. 
	cp e			;b9ad	bb 	. 
	ld e,l			;b9ae	5d 	] 
	adc a,c			;b9af	89 	. 
	rst 38h			;b9b0	ff 	. 
	rst 8			;b9b1	cf 	. 
	halt			;b9b2	76 	v 
	nop			;b9b3	00 	. 
	nop			;b9b4	00 	. 
	nop			;b9b5	00 	. 
	nop			;b9b6	00 	. 
	nop			;b9b7	00 	. 
	nop			;b9b8	00 	. 
	nop			;b9b9	00 	. 
	nop			;b9ba	00 	. 
	nop			;b9bb	00 	. 
	nop			;b9bc	00 	. 
lb9bdh:
	nop			;b9bd	00 	. 
	nop			;b9be	00 	. 
	ld h,b			;b9bf	60 	` 
	jr nz,$+98		;b9c0	20 60 	  ` 
	ld b,b			;b9c2	40 	@ 
	jr nc,lb9bdh		;b9c3	30 f8 	0 . 
	ret m			;b9c5	f8 	. 
	ret z			;b9c6	c8 	. 
	adc a,0fch		;b9c7	ce fc 	. . 
	cp 032h		;b9c9	fe 32 	. 2 
	ld b,b			;b9cb	40 	@ 
	rst 38h			;b9cc	ff 	. 
	adc a,0bfh		;b9cd	ce bf 	. . 
	xor a			;b9cf	af 	. 
	rst 38h			;b9d0	ff 	. 
	cp a			;b9d1	bf 	. 
	ld d,b			;b9d2	50 	P 
	nop			;b9d3	00 	. 
	nop			;b9d4	00 	. 
	nop			;b9d5	00 	. 
	nop			;b9d6	00 	. 
	nop			;b9d7	00 	. 
	nop			;b9d8	00 	. 
	nop			;b9d9	00 	. 
	nop			;b9da	00 	. 
	nop			;b9db	00 	. 
	nop			;b9dc	00 	. 
	nop			;b9dd	00 	. 
	nop			;b9de	00 	. 
	ld b,004h		;b9df	06 04 	. . 
	ld b,002h		;b9e1	06 02 	. . 
	inc c			;b9e3	0c 	. 
	rra			;b9e4	1f 	. 
	rra			;b9e5	1f 	. 
	inc de			;b9e6	13 	. 
	ld (hl),e			;b9e7	73 	s 
	ccf			;b9e8	3f 	? 
	ld a,a			;b9e9	7f 	 
	ld c,h			;b9ea	4c 	L 
	ld (bc),a			;b9eb	02 	. 
	rst 38h			;b9ec	ff 	. 
	ld (hl),e			;b9ed	73 	s 
	defb 0fdh,0f5h,0ffh	;illegal sequence		;b9ee	fd f5 ff 	. . . 
	defb 0fdh,00ah,000h	;illegal sequence		;b9f1	fd 0a 00 	. . . 
	nop			;b9f4	00 	. 
	nop			;b9f5	00 	. 
	nop			;b9f6	00 	. 
	nop			;b9f7	00 	. 
	nop			;b9f8	00 	. 
	nop			;b9f9	00 	. 
	nop			;b9fa	00 	. 
	nop			;b9fb	00 	. 
	nop			;b9fc	00 	. 
	nop			;b9fd	00 	. 
	nop			;b9fe	00 	. 
	nop			;b9ff	00 	. 
	nop			;ba00	00 	. 
	nop			;ba01	00 	. 
	nop			;ba02	00 	. 
	add a,b			;ba03	80 	. 
	nop			;ba04	00 	. 
	add a,b			;ba05	80 	. 
	add a,b			;ba06	80 	. 
	cp b			;ba07	b8 	. 
	ret z			;ba08	c8 	. 
	cp b			;ba09	b8 	. 
	ld (hl),b			;ba0a	70 	p 
	ld b,l			;ba0b	45 	E 
	rst 38h			;ba0c	ff 	. 
	defb 0ddh,0bah,091h	;illegal sequence		;ba0d	dd ba 91 	. . . 
	rst 38h			;ba10	ff 	. 
	di			;ba11	f3 	. 
	ld l,(hl)			;ba12	6e 	n 
	nop			;ba13	00 	. 
	nop			;ba14	00 	. 
	nop			;ba15	00 	. 
	nop			;ba16	00 	. 
	nop			;ba17	00 	. 
	nop			;ba18	00 	. 
	nop			;ba19	00 	. 
	nop			;ba1a	00 	. 
	nop			;ba1b	00 	. 
	nop			;ba1c	00 	. 
	nop			;ba1d	00 	. 
	nop			;ba1e	00 	. 
	jr lba29h		;ba1f	18 08 	. . 
	jr lba33h		;ba21	18 10 	. . 
	ld d,e			;ba23	53 	S 
	ld a,(hl)			;ba24	7e 	~ 
	ld e,a			;ba25	5f 	_ 
	dec l			;ba26	2d 	- 
	sbc a,c			;ba27	99 	. 
	ld a,a			;ba28	7f 	 
lba29h:
	ld sp,hl			;ba29	f9 	. 
	and 0ach		;ba2a	e6 ac 	. . 
	rst 38h			;ba2c	ff 	. 
	cp (hl)			;ba2d	be 	. 
	ld d,e			;ba2e	53 	S 
	ld (hl),e			;ba2f	73 	s 
	rst 38h			;ba30	ff 	. 
	rst 38h			;ba31	ff 	. 
	adc a,h			;ba32	8c 	. 
lba33h:
	nop			;ba33	00 	. 
	nop			;ba34	00 	. 
	nop			;ba35	00 	. 
	nop			;ba36	00 	. 
	nop			;ba37	00 	. 
	nop			;ba38	00 	. 
	nop			;ba39	00 	. 
	nop			;ba3a	00 	. 
	nop			;ba3b	00 	. 
	nop			;ba3c	00 	. 
	nop			;ba3d	00 	. 
	nop			;ba3e	00 	. 
	nop			;ba3f	00 	. 
	nop			;ba40	00 	. 
	nop			;ba41	00 	. 
	nop			;ba42	00 	. 
	nop			;ba43	00 	. 
	nop			;ba44	00 	. 
	nop			;ba45	00 	. 
	nop			;ba46	00 	. 
	pop bc			;ba47	c1 	. 
	pop hl			;ba48	e1 	. 
	pop bc			;ba49	c1 	. 
	jr nz,lba7fh		;ba4a	20 33 	  3 
	rst 38h			;ba4c	ff 	. 
	ld a,a			;ba4d	7f 	 
	call z,0ffe9h		;ba4e	cc e9 ff 	. . . 
	ld sp,hl			;ba51	f9 	. 
	ld d,000h		;ba52	16 00 	. . 
	nop			;ba54	00 	. 
	nop			;ba55	00 	. 
lba56h:
	nop			;ba56	00 	. 
	nop			;ba57	00 	. 
	nop			;ba58	00 	. 
	nop			;ba59	00 	. 
lba5ah:
	nop			;ba5a	00 	. 
	nop			;ba5b	00 	. 
	nop			;ba5c	00 	. 
	nop			;ba5d	00 	. 
	nop			;ba5e	00 	. 
	nop			;ba5f	00 	. 
	nop			;ba60	00 	. 
	nop			;ba61	00 	. 
	nop			;ba62	00 	. 
	nop			;ba63	00 	. 
	nop			;ba64	00 	. 
	nop			;ba65	00 	. 
	nop			;ba66	00 	. 
	nop			;ba67	00 	. 
	nop			;ba68	00 	. 
	nop			;ba69	00 	. 
	nop			;ba6a	00 	. 
	inc bc			;ba6b	03 	. 
	rlca			;ba6c	07 	. 
	nop			;ba6d	00 	. 
	rlca			;ba6e	07 	. 
	rlca			;ba6f	07 	. 
	ld c,001h		;ba70	0e 01 	. . 
	ld c,007h		;ba72	0e 07 	. . 
	inc c			;ba74	0c 	. 
	inc bc			;ba75	03 	. 
	inc c			;ba76	0c 	. 
	ld c,01ch		;ba77	0e 1c 	. . 
	inc bc			;ba79	03 	. 
	inc e			;ba7a	1c 	. 
	rst 38h			;ba7b	ff 	. 
	rst 38h			;ba7c	ff 	. 
	nop			;ba7d	00 	. 
	rst 38h			;ba7e	ff 	. 
lba7fh:
	rst 30h			;ba7f	f7 	. 
	rst 38h			;ba80	ff 	. 
	nop			;ba81	00 	. 
	rst 38h			;ba82	ff 	. 
	rst 38h			;ba83	ff 	. 
	rst 38h			;ba84	ff 	. 
	nop			;ba85	00 	. 
	rst 38h			;ba86	ff 	. 
	ld e,l			;ba87	5d 	] 
lba88h:
	rst 38h			;ba88	ff 	. 
	nop			;ba89	00 	. 
	rst 38h			;ba8a	ff 	. 
	jp pe,000ffh		;ba8b	ea ff 00 	. . . 
	rst 38h			;ba8e	ff 	. 
	ld d,l			;ba8f	55 	U 
	rst 38h			;ba90	ff 	. 
	nop			;ba91	00 	. 
	rst 38h			;ba92	ff 	. 
	ld h,b			;ba93	60 	` 
	jr nc,lba56h		;ba94	30 c0 	0 . 
	jr nc,lba88h		;ba96	30 f0 	0 . 
	jr c,lba5ah		;ba98	38 c0 	8 . 
	jr c,$+1		;ba9a	38 ff 	8 . 
	rst 38h			;ba9c	ff 	. 
	nop			;ba9d	00 	. 
	rst 38h			;ba9e	ff 	. 
	cp a			;ba9f	bf 	. 
	rst 38h			;baa0	ff 	. 
	nop			;baa1	00 	. 
	rst 38h			;baa2	ff 	. 
	rst 28h			;baa3	ef 	. 
	rst 38h			;baa4	ff 	. 
	nop			;baa5	00 	. 
	rst 38h			;baa6	ff 	. 
	ld d,l			;baa7	55 	U 
	rst 38h			;baa8	ff 	. 
	nop			;baa9	00 	. 
	rst 38h			;baaa	ff 	. 
	cp d			;baab	ba 	. 
	rst 38h			;baac	ff 	. 
	nop			;baad	00 	. 
	rst 38h			;baae	ff 	. 
	push de			;baaf	d5 	. 
	rst 38h			;bab0	ff 	. 
	nop			;bab1	00 	. 
	rst 38h			;bab2	ff 	. 
	nop			;bab3	00 	. 
	nop			;bab4	00 	. 
	nop			;bab5	00 	. 
	nop			;bab6	00 	. 
	nop			;bab7	00 	. 
	nop			;bab8	00 	. 
	nop			;bab9	00 	. 
	nop			;baba	00 	. 
	ld bc,00003h		;babb	01 03 00 	. . . 
	inc bc			;babe	03 	. 
	rlca			;babf	07 	. 
	inc c			;bac0	0c 	. 
	inc bc			;bac1	03 	. 
	inc c			;bac2	0c 	. 
	rrca			;bac3	0f 	. 
	ex af,af'			;bac4	08 	. 
	rlca			;bac5	07 	. 
	ex af,af'			;bac6	08 	. 
	ld c,018h		;bac7	0e 18 	. . 
	rlca			;bac9	07 	. 
	jr lbad8h		;baca	18 0c 	. . 
	djnz lbaddh		;bacc	10 0f 	. . 
	djnz lbadch		;bace	10 0c 	. . 
	djnz lbae1h		;bad0	10 0f 	. . 
	djnz lbaf2h		;bad2	10 1e 	. . 
	jr c,lbaddh		;bad4	38 07 	8 . 
	jr c,$+1		;bad6	38 ff 	8 . 
lbad8h:
	call m,0fc03h		;bad8	fc 03 fc 	. . . 
	rst 38h			;badb	ff 	. 
lbadch:
	rst 38h			;badc	ff 	. 
lbaddh:
	nop			;badd	00 	. 
	rst 38h			;bade	ff 	. 
	rst 30h			;badf	f7 	. 
	rst 38h			;bae0	ff 	. 
lbae1h:
	nop			;bae1	00 	. 
	rst 38h			;bae2	ff 	. 
	rst 38h			;bae3	ff 	. 
	rst 38h			;bae4	ff 	. 
	nop			;bae5	00 	. 
	rst 38h			;bae6	ff 	. 
	ld e,l			;bae7	5d 	] 
	rst 38h			;bae8	ff 	. 
	nop			;bae9	00 	. 
	rst 38h			;baea	ff 	. 
	jp pe,000ffh		;baeb	ea ff 00 	. . . 
	rst 38h			;baee	ff 	. 
	ld d,l			;baef	55 	U 
	rst 38h			;baf0	ff 	. 
	nop			;baf1	00 	. 
lbaf2h:
	rst 38h			;baf2	ff 	. 
	ld a,b			;baf3	78 	x 
	inc e			;baf4	1c 	. 
	ret po			;baf5	e0 	. 
	inc e			;baf6	1c 	. 
	rst 38h			;baf7	ff 	. 
	ccf			;baf8	3f 	? 
	ret nz			;baf9	c0 	. 
	ccf			;bafa	3f 	? 
	rst 38h			;bafb	ff 	. 
	rst 38h			;bafc	ff 	. 
	nop			;bafd	00 	. 
	rst 38h			;bafe	ff 	. 
	cp a			;baff	bf 	. 
	rst 38h			;bb00	ff 	. 
	nop			;bb01	00 	. 
	rst 38h			;bb02	ff 	. 
	rst 28h			;bb03	ef 	. 
	rst 38h			;bb04	ff 	. 
	nop			;bb05	00 	. 
	rst 38h			;bb06	ff 	. 
	ld d,l			;bb07	55 	U 
	rst 38h			;bb08	ff 	. 
	nop			;bb09	00 	. 
	rst 38h			;bb0a	ff 	. 
	cp d			;bb0b	ba 	. 
	rst 38h			;bb0c	ff 	. 
	nop			;bb0d	00 	. 
	rst 38h			;bb0e	ff 	. 
	push de			;bb0f	d5 	. 
	rst 38h			;bb10	ff 	. 
	nop			;bb11	00 	. 
	rst 38h			;bb12	ff 	. 
	ld bc,00003h		;bb13	01 03 00 	. . . 
	inc bc			;bb16	03 	. 
	rlca			;bb17	07 	. 
	ld c,001h		;bb18	0e 01 	. . 
	ld c,00fh		;bb1a	0e 0f 	. . 
	ex af,af'			;bb1c	08 	. 
	rlca			;bb1d	07 	. 
	ex af,af'			;bb1e	08 	. 
	ld c,010h		;bb1f	0e 10 	. . 
	rrca			;bb21	0f 	. 
	djnz lbb40h		;bb22	10 1c 	. . 
	djnz $+17		;bb24	10 0f 	. . 
	djnz lbb44h		;bb26	10 1c 	. . 
	djnz lbb39h		;bb28	10 0f 	. . 
	djnz lbb4ah		;bb2a	10 1e 	. . 
	jr nc,lbb3dh		;bb2c	30 0f 	0 . 
	jr nc,lbb6fh		;bb2e	30 3f 	0 ? 
	jr c,lbb39h		;bb30	38 07 	8 . 
	jr c,$+1		;bb32	38 ff 	8 . 
	call m,0fc03h		;bb34	fc 03 fc 	. . . 
	rst 38h			;bb37	ff 	. 
	rst 38h			;bb38	ff 	. 
lbb39h:
	nop			;bb39	00 	. 
	rst 38h			;bb3a	ff 	. 
	rst 38h			;bb3b	ff 	. 
	rst 38h			;bb3c	ff 	. 
lbb3dh:
	nop			;bb3d	00 	. 
	rst 38h			;bb3e	ff 	. 
	rst 30h			;bb3f	f7 	. 
lbb40h:
	rst 38h			;bb40	ff 	. 
	nop			;bb41	00 	. 
	rst 38h			;bb42	ff 	. 
	rst 38h			;bb43	ff 	. 
lbb44h:
	rst 38h			;bb44	ff 	. 
	nop			;bb45	00 	. 
	rst 38h			;bb46	ff 	. 
	ld e,l			;bb47	5d 	] 
	rst 38h			;bb48	ff 	. 
	nop			;bb49	00 	. 
lbb4ah:
	rst 38h			;bb4a	ff 	. 
	jp pe,000ffh		;bb4b	ea ff 00 	. . . 
	rst 38h			;bb4e	ff 	. 
	ld d,l			;bb4f	55 	U 
	rst 38h			;bb50	ff 	. 
	nop			;bb51	00 	. 
	rst 38h			;bb52	ff 	. 
	rst 38h			;bb53	ff 	. 
	ccf			;bb54	3f 	? 
	ret nz			;bb55	c0 	. 
	ccf			;bb56	3f 	? 
	rst 38h			;bb57	ff 	. 
	rst 38h			;bb58	ff 	. 
	nop			;bb59	00 	. 
	rst 38h			;bb5a	ff 	. 
	rst 38h			;bb5b	ff 	. 
	rst 38h			;bb5c	ff 	. 
	nop			;bb5d	00 	. 
	rst 38h			;bb5e	ff 	. 
	cp a			;bb5f	bf 	. 
	rst 38h			;bb60	ff 	. 
	nop			;bb61	00 	. 
	rst 38h			;bb62	ff 	. 
	rst 28h			;bb63	ef 	. 
	rst 38h			;bb64	ff 	. 
	nop			;bb65	00 	. 
	rst 38h			;bb66	ff 	. 
	ld d,l			;bb67	55 	U 
	rst 38h			;bb68	ff 	. 
	nop			;bb69	00 	. 
	rst 38h			;bb6a	ff 	. 
	cp d			;bb6b	ba 	. 
	rst 38h			;bb6c	ff 	. 
	nop			;bb6d	00 	. 
	rst 38h			;bb6e	ff 	. 
lbb6fh:
	push de			;bb6f	d5 	. 
	rst 38h			;bb70	ff 	. 
	nop			;bb71	00 	. 
	rst 38h			;bb72	ff 	. 
	nop			;bb73	00 	. 
	nop			;bb74	00 	. 
	nop			;bb75	00 	. 
lbb76h:
	nop			;bb76	00 	. 
	nop			;bb77	00 	. 
	nop			;bb78	00 	. 
	nop			;bb79	00 	. 
	nop			;bb7a	00 	. 
	ld c,b			;bb7b	48 	H 
	ld c,b			;bb7c	48 	H 
	inc h			;bb7d	24 	$ 
	ld c,b			;bb7e	48 	H 
	inc (hl)			;bb7f	34 	4 
	inc h			;bb80	24 	$ 
	ld (de),a			;bb81	12 	. 
	inc h			;bb82	24 	$ 
	ld d,016h		;bb83	16 16 	. . 
	nop			;bb85	00 	. 
	ld d,002h		;bb86	16 02 	. . 
	ld (bc),a			;bb88	02 	. 
	nop			;bb89	00 	. 
	ld (bc),a			;bb8a	02 	. 
	nop			;bb8b	00 	. 
	nop			;bb8c	00 	. 
	nop			;bb8d	00 	. 
	nop			;bb8e	00 	. 
	ld a,(de)			;bb8f	1a 	. 
	ex af,af'			;bb90	08 	. 
	ld (de),a			;bb91	12 	. 
	ex af,af'			;bb92	08 	. 
	rrca			;bb93	0f 	. 
	inc e			;bb94	1c 	. 
	inc bc			;bb95	03 	. 
	inc e			;bb96	1c 	. 
	rlca			;bb97	07 	. 
lbb98h:
	ld c,001h		;bb98	0e 01 	. . 
	ld c,0ffh		;bb9a	0e ff 	. . 
	rst 38h			;bb9c	ff 	. 
	nop			;bb9d	00 	. 
	rst 38h			;bb9e	ff 	. 
	rst 30h			;bb9f	f7 	. 
	rst 38h			;bba0	ff 	. 
	nop			;bba1	00 	. 
	rst 38h			;bba2	ff 	. 
	rst 38h			;bba3	ff 	. 
	rst 38h			;bba4	ff 	. 
	nop			;bba5	00 	. 
	rst 38h			;bba6	ff 	. 
	ld e,l			;bba7	5d 	] 
	rst 38h			;bba8	ff 	. 
	nop			;bba9	00 	. 
	rst 38h			;bbaa	ff 	. 
	jp pe,000ffh		;bbab	ea ff 00 	. . . 
	rst 38h			;bbae	ff 	. 
	ld d,l			;bbaf	55 	U 
	rst 38h			;bbb0	ff 	. 
	nop			;bbb1	00 	. 
	rst 38h			;bbb2	ff 	. 
	ret p			;bbb3	f0 	. 
	jr c,lbb76h		;bbb4	38 c0 	8 . 
	jr c,lbb98h		;bbb6	38 e0 	8 . 
	ld (hl),b			;bbb8	70 	p 
	add a,b			;bbb9	80 	. 
	ld (hl),b			;bbba	70 	p 
	rst 38h			;bbbb	ff 	. 
	rst 38h			;bbbc	ff 	. 
	nop			;bbbd	00 	. 
	rst 38h			;bbbe	ff 	. 
	cp a			;bbbf	bf 	. 
	rst 38h			;bbc0	ff 	. 
	nop			;bbc1	00 	. 
	rst 38h			;bbc2	ff 	. 
	rst 28h			;bbc3	ef 	. 
	rst 38h			;bbc4	ff 	. 
	nop			;bbc5	00 	. 
	rst 38h			;bbc6	ff 	. 
	ld d,l			;bbc7	55 	U 
	rst 38h			;bbc8	ff 	. 
	nop			;bbc9	00 	. 
	rst 38h			;bbca	ff 	. 
	cp d			;bbcb	ba 	. 
	rst 38h			;bbcc	ff 	. 
	nop			;bbcd	00 	. 
	rst 38h			;bbce	ff 	. 
	push de			;bbcf	d5 	. 
	rst 38h			;bbd0	ff 	. 
	nop			;bbd1	00 	. 
	rst 38h			;bbd2	ff 	. 
	nop			;bbd3	00 	. 
	nop			;bbd4	00 	. 
	nop			;bbd5	00 	. 
	nop			;bbd6	00 	. 
	nop			;bbd7	00 	. 
	nop			;bbd8	00 	. 
	nop			;bbd9	00 	. 
	nop			;bbda	00 	. 
	nop			;bbdb	00 	. 
	nop			;bbdc	00 	. 
	nop			;bbdd	00 	. 
	nop			;bbde	00 	. 
	nop			;bbdf	00 	. 
	nop			;bbe0	00 	. 
	nop			;bbe1	00 	. 
	nop			;bbe2	00 	. 
	nop			;bbe3	00 	. 
	nop			;bbe4	00 	. 
	nop			;bbe5	00 	. 
	nop			;bbe6	00 	. 
	nop			;bbe7	00 	. 
	nop			;bbe8	00 	. 
	nop			;bbe9	00 	. 
	nop			;bbea	00 	. 
	nop			;bbeb	00 	. 
	inc bc			;bbec	03 	. 
	inc b			;bbed	04 	. 
	rlca			;bbee	07 	. 
	ld bc,00806h		;bbef	01 06 08 	. . . 
	rrca			;bbf2	0f 	. 
	inc bc			;bbf3	03 	. 
	inc b			;bbf4	04 	. 
	ex af,af'			;bbf5	08 	. 
	rrca			;bbf6	0f 	. 
	inc bc			;bbf7	03 	. 
	inc c			;bbf8	0c 	. 
	djnz $+32		;bbf9	10 1e 	. . 
	nop			;bbfb	00 	. 
	rst 38h			;bbfc	ff 	. 
	nop			;bbfd	00 	. 
	rst 38h			;bbfe	ff 	. 
	nop			;bbff	00 	. 
	rst 30h			;bc00	f7 	. 
	ex af,af'			;bc01	08 	. 
	rst 38h			;bc02	ff 	. 
	nop			;bc03	00 	. 
	rst 38h			;bc04	ff 	. 
	nop			;bc05	00 	. 
	rst 38h			;bc06	ff 	. 
	nop			;bc07	00 	. 
	ld e,l			;bc08	5d 	] 
	and d			;bc09	a2 	. 
	rst 38h			;bc0a	ff 	. 
	nop			;bc0b	00 	. 
	jp pe,0ff15h		;bc0c	ea 15 ff 	. . . 
	nop			;bc0f	00 	. 
	ld d,l			;bc10	55 	U 
	xor d			;bc11	aa 	. 
	rst 38h			;bc12	ff 	. 
	ret nz			;bc13	c0 	. 
	jr nz,$+18		;bc14	20 10 	  . 
	ld (hl),b			;bc16	70 	p 
	ret nz			;bc17	c0 	. 
	jr nc,lbc22h		;bc18	30 08 	0 . 
	ret m			;bc1a	f8 	. 
	nop			;bc1b	00 	. 
	rst 38h			;bc1c	ff 	. 
	nop			;bc1d	00 	. 
	rst 38h			;bc1e	ff 	. 
	nop			;bc1f	00 	. 
	cp a			;bc20	bf 	. 
	ld b,b			;bc21	40 	@ 
lbc22h:
	rst 38h			;bc22	ff 	. 
	nop			;bc23	00 	. 
	rst 28h			;bc24	ef 	. 
	djnz $+1		;bc25	10 ff 	. . 
	nop			;bc27	00 	. 
	ld d,l			;bc28	55 	U 
	xor d			;bc29	aa 	. 
	rst 38h			;bc2a	ff 	. 
	nop			;bc2b	00 	. 
	cp d			;bc2c	ba 	. 
	ld b,l			;bc2d	45 	E 
	rst 38h			;bc2e	ff 	. 
	nop			;bc2f	00 	. 
	push de			;bc30	d5 	. 
	ld hl,(000ffh)		;bc31	2a ff 00 	* . . 
	nop			;bc34	00 	. 
	nop			;bc35	00 	. 
	nop			;bc36	00 	. 
	nop			;bc37	00 	. 
	nop			;bc38	00 	. 
	nop			;bc39	00 	. 
	nop			;bc3a	00 	. 
	nop			;bc3b	00 	. 
	ld bc,00302h		;bc3c	01 02 03 	. . . 
	inc bc			;bc3f	03 	. 
	inc b			;bc40	04 	. 
	ex af,af'			;bc41	08 	. 
	rrca			;bc42	0f 	. 
	rlca			;bc43	07 	. 
	ex af,af'			;bc44	08 	. 
	nop			;bc45	00 	. 
	rrca			;bc46	0f 	. 
	rlca			;bc47	07 	. 
	ex af,af'			;bc48	08 	. 
	djnz lbc69h		;bc49	10 1e 	. . 
	rrca			;bc4b	0f 	. 
	nop			;bc4c	00 	. 
	djnz lbc6bh		;bc4d	10 1c 	. . 
	rrca			;bc4f	0f 	. 
	nop			;bc50	00 	. 
	djnz lbc6fh		;bc51	10 1c 	. . 
	rlca			;bc53	07 	. 
	jr lbc76h		;bc54	18 20 	.   
	ld a,003h		;bc56	3e 03 	> . 
	call m,0ff00h		;bc58	fc 00 ff 	. . . 
	nop			;bc5b	00 	. 
	rst 38h			;bc5c	ff 	. 
	nop			;bc5d	00 	. 
	rst 38h			;bc5e	ff 	. 
	nop			;bc5f	00 	. 
	rst 30h			;bc60	f7 	. 
	ex af,af'			;bc61	08 	. 
	rst 38h			;bc62	ff 	. 
	nop			;bc63	00 	. 
	rst 38h			;bc64	ff 	. 
	nop			;bc65	00 	. 
	rst 38h			;bc66	ff 	. 
	nop			;bc67	00 	. 
	ld e,l			;bc68	5d 	] 
lbc69h:
	and d			;bc69	a2 	. 
	rst 38h			;bc6a	ff 	. 
lbc6bh:
	nop			;bc6b	00 	. 
	jp pe,0ff15h		;bc6c	ea 15 ff 	. . . 
lbc6fh:
	nop			;bc6f	00 	. 
	ld d,l			;bc70	55 	U 
	xor d			;bc71	aa 	. 
	rst 38h			;bc72	ff 	. 
	ret po			;bc73	e0 	. 
	jr lbc7ah		;bc74	18 04 	. . 
lbc76h:
	ld a,h			;bc76	7c 	| 
	ret nz			;bc77	c0 	. 
	ccf			;bc78	3f 	? 
	nop			;bc79	00 	. 
lbc7ah:
	rst 38h			;bc7a	ff 	. 
	nop			;bc7b	00 	. 
	rst 38h			;bc7c	ff 	. 
	nop			;bc7d	00 	. 
	rst 38h			;bc7e	ff 	. 
	nop			;bc7f	00 	. 
	cp a			;bc80	bf 	. 
	ld b,b			;bc81	40 	@ 
	rst 38h			;bc82	ff 	. 
	nop			;bc83	00 	. 
	rst 28h			;bc84	ef 	. 
	djnz $+1		;bc85	10 ff 	. . 
	nop			;bc87	00 	. 
	ld d,l			;bc88	55 	U 
	xor d			;bc89	aa 	. 
	rst 38h			;bc8a	ff 	. 
	nop			;bc8b	00 	. 
	cp d			;bc8c	ba 	. 
	ld b,l			;bc8d	45 	E 
	rst 38h			;bc8e	ff 	. 
	nop			;bc8f	00 	. 
	push de			;bc90	d5 	. 
	ld hl,(000ffh)		;bc91	2a ff 00 	* . . 
	ld bc,00302h		;bc94	01 02 03 	. . . 
	ld bc,00806h		;bc97	01 06 08 	. . . 
	rrca			;bc9a	0f 	. 
	rlca			;bc9b	07 	. 
	ex af,af'			;bc9c	08 	. 
	nop			;bc9d	00 	. 
	rrca			;bc9e	0f 	. 
	rrca			;bc9f	0f 	. 
	nop			;bca0	00 	. 
	djnz lbcc1h		;bca1	10 1e 	. . 
	rrca			;bca3	0f 	. 
	djnz lbca6h		;bca4	10 00 	. . 
lbca6h:
	inc e			;bca6	1c 	. 
	rrca			;bca7	0f 	. 
	djnz lbcaah		;bca8	10 00 	. . 
lbcaah:
	inc e			;bcaa	1c 	. 
	rrca			;bcab	0f 	. 
	djnz $+34		;bcac	10 20 	.   
	ld a,007h		;bcae	3e 07 	> . 
	jr c,lbcb2h		;bcb0	38 00 	8 . 
lbcb2h:
	ccf			;bcb2	3f 	? 
	inc bc			;bcb3	03 	. 
	call m,0ff00h		;bcb4	fc 00 ff 	. . . 
	nop			;bcb7	00 	. 
	rst 38h			;bcb8	ff 	. 
	nop			;bcb9	00 	. 
	rst 38h			;bcba	ff 	. 
	nop			;bcbb	00 	. 
	rst 38h			;bcbc	ff 	. 
	nop			;bcbd	00 	. 
	rst 38h			;bcbe	ff 	. 
	nop			;bcbf	00 	. 
	rst 30h			;bcc0	f7 	. 
lbcc1h:
	ex af,af'			;bcc1	08 	. 
	rst 38h			;bcc2	ff 	. 
	nop			;bcc3	00 	. 
	rst 38h			;bcc4	ff 	. 
	nop			;bcc5	00 	. 
	rst 38h			;bcc6	ff 	. 
	nop			;bcc7	00 	. 
	ld e,l			;bcc8	5d 	] 
	and d			;bcc9	a2 	. 
	rst 38h			;bcca	ff 	. 
	nop			;bccb	00 	. 
	jp pe,0ff15h		;bccc	ea 15 ff 	. . . 
	nop			;bccf	00 	. 
	ld d,l			;bcd0	55 	U 
	xor d			;bcd1	aa 	. 
	rst 38h			;bcd2	ff 	. 
	ret nz			;bcd3	c0 	. 
	ccf			;bcd4	3f 	? 
	nop			;bcd5	00 	. 
	rst 38h			;bcd6	ff 	. 
	nop			;bcd7	00 	. 
	rst 38h			;bcd8	ff 	. 
	nop			;bcd9	00 	. 
	rst 38h			;bcda	ff 	. 
	nop			;bcdb	00 	. 
	rst 38h			;bcdc	ff 	. 
	nop			;bcdd	00 	. 
	rst 38h			;bcde	ff 	. 
	nop			;bcdf	00 	. 
	cp a			;bce0	bf 	. 
	ld b,b			;bce1	40 	@ 
	rst 38h			;bce2	ff 	. 
	nop			;bce3	00 	. 
	rst 28h			;bce4	ef 	. 
	djnz $+1		;bce5	10 ff 	. . 
	nop			;bce7	00 	. 
	ld d,l			;bce8	55 	U 
	xor d			;bce9	aa 	. 
	rst 38h			;bcea	ff 	. 
	nop			;bceb	00 	. 
	cp d			;bcec	ba 	. 
	ld b,l			;bced	45 	E 
	rst 38h			;bcee	ff 	. 
	nop			;bcef	00 	. 
	push de			;bcf0	d5 	. 
	ld hl,(000ffh)		;bcf1	2a ff 00 	* . . 
	nop			;bcf4	00 	. 
	nop			;bcf5	00 	. 
	nop			;bcf6	00 	. 
	ld (de),a			;bcf7	12 	. 
	inc h			;bcf8	24 	$ 
	nop			;bcf9	00 	. 
	inc h			;bcfa	24 	$ 
	ld (bc),a			;bcfb	02 	. 
	inc h			;bcfc	24 	$ 
	nop			;bcfd	00 	. 
	ld h,000h		;bcfe	26 00 	& . 
	inc bc			;bd00	03 	. 
	nop			;bd01	00 	. 
	inc bc			;bd02	03 	. 
	djnz lbd28h		;bd03	10 23 	. # 
	nop			;bd05	00 	. 
	inc hl			;bd06	23 	# 
	ex af,af'			;bd07	08 	. 
	djnz lbd0ah		;bd08	10 00 	. . 
lbd0ah:
	jr lbd0ch		;bd0a	18 00 	. . 
lbd0ch:
	nop			;bd0c	00 	. 
	nop			;bd0d	00 	. 
	nop			;bd0e	00 	. 
	add hl,bc			;bd0f	09 	. 
	inc b			;bd10	04 	. 
	nop			;bd11	00 	. 
	dec c			;bd12	0d 	. 
	ld bc,00806h		;bd13	01 06 08 	. . . 
	rrca			;bd16	0f 	. 
	nop			;bd17	00 	. 
	inc bc			;bd18	03 	. 
	inc b			;bd19	04 	. 
	rlca			;bd1a	07 	. 
	nop			;bd1b	00 	. 
	rst 38h			;bd1c	ff 	. 
	nop			;bd1d	00 	. 
	rst 38h			;bd1e	ff 	. 
	nop			;bd1f	00 	. 
	rst 30h			;bd20	f7 	. 
	ex af,af'			;bd21	08 	. 
	rst 38h			;bd22	ff 	. 
	nop			;bd23	00 	. 
	rst 38h			;bd24	ff 	. 
	nop			;bd25	00 	. 
	rst 38h			;bd26	ff 	. 
	nop			;bd27	00 	. 
lbd28h:
	ld e,l			;bd28	5d 	] 
	and d			;bd29	a2 	. 
	rst 38h			;bd2a	ff 	. 
lbd2bh:
	nop			;bd2b	00 	. 
	jp pe,0ff15h		;bd2c	ea 15 ff 	. . . 
	nop			;bd2f	00 	. 
	ld d,l			;bd30	55 	U 
	xor d			;bd31	aa 	. 
	rst 38h			;bd32	ff 	. 
	ret nz			;bd33	c0 	. 
	jr nc,lbd3eh		;bd34	30 08 	0 . 
	ret m			;bd36	f8 	. 
	add a,b			;bd37	80 	. 
	ld h,b			;bd38	60 	` 
	djnz lbd2bh		;bd39	10 f0 	. . 
	nop			;bd3b	00 	. 
	rst 38h			;bd3c	ff 	. 
	nop			;bd3d	00 	. 
lbd3eh:
	rst 38h			;bd3e	ff 	. 
	nop			;bd3f	00 	. 
	cp a			;bd40	bf 	. 
	ld b,b			;bd41	40 	@ 
	rst 38h			;bd42	ff 	. 
	nop			;bd43	00 	. 
	rst 28h			;bd44	ef 	. 
	djnz $+1		;bd45	10 ff 	. . 
	nop			;bd47	00 	. 
	ld d,l			;bd48	55 	U 
	xor d			;bd49	aa 	. 
	rst 38h			;bd4a	ff 	. 
	nop			;bd4b	00 	. 
	cp d			;bd4c	ba 	. 
	ld b,l			;bd4d	45 	E 
	rst 38h			;bd4e	ff 	. 
	nop			;bd4f	00 	. 
	push de			;bd50	d5 	. 
	ld hl,(000ffh)		;bd51	2a ff 00 	* . . 
	nop			;bd54	00 	. 
	nop			;bd55	00 	. 
	nop			;bd56	00 	. 
	nop			;bd57	00 	. 
	nop			;bd58	00 	. 
	nop			;bd59	00 	. 
	nop			;bd5a	00 	. 
	nop			;bd5b	00 	. 
	nop			;bd5c	00 	. 
	nop			;bd5d	00 	. 
	nop			;bd5e	00 	. 
	nop			;bd5f	00 	. 
	nop			;bd60	00 	. 
	nop			;bd61	00 	. 
	nop			;bd62	00 	. 
	nop			;bd63	00 	. 
	nop			;bd64	00 	. 
	nop			;bd65	00 	. 
	nop			;bd66	00 	. 
	nop			;bd67	00 	. 
	nop			;bd68	00 	. 
	nop			;bd69	00 	. 
	nop			;bd6a	00 	. 
	inc bc			;bd6b	03 	. 
	inc b			;bd6c	04 	. 
	rlca			;bd6d	07 	. 
	rlca			;bd6e	07 	. 
	rlca			;bd6f	07 	. 
	ex af,af'			;bd70	08 	. 
	rrca			;bd71	0f 	. 
	ld c,007h		;bd72	0e 07 	. . 
	ex af,af'			;bd74	08 	. 
	rrca			;bd75	0f 	. 
	inc c			;bd76	0c 	. 
	ld c,010h		;bd77	0e 10 	. . 
	rra			;bd79	1f 	. 
	inc e			;bd7a	1c 	. 
	rst 38h			;bd7b	ff 	. 
	nop			;bd7c	00 	. 
	rst 38h			;bd7d	ff 	. 
	rst 38h			;bd7e	ff 	. 
lbd7fh:
	rst 30h			;bd7f	f7 	. 
	ex af,af'			;bd80	08 	. 
	rst 38h			;bd81	ff 	. 
	rst 38h			;bd82	ff 	. 
	rst 38h			;bd83	ff 	. 
	nop			;bd84	00 	. 
	rst 38h			;bd85	ff 	. 
lbd86h:
	rst 38h			;bd86	ff 	. 
	ld e,l			;bd87	5d 	] 
lbd88h:
	and d			;bd88	a2 	. 
	rst 38h			;bd89	ff 	. 
	rst 38h			;bd8a	ff 	. 
	jp pe,0ff15h		;bd8b	ea 15 ff 	. . . 
	rst 38h			;bd8e	ff 	. 
	ld d,l			;bd8f	55 	U 
	xor d			;bd90	aa 	. 
	rst 38h			;bd91	ff 	. 
	rst 38h			;bd92	ff 	. 
	ld h,b			;bd93	60 	` 
	djnz lbd86h		;bd94	10 f0 	. . 
	jr nc,lbd88h		;bd96	30 f0 	0 . 
	ex af,af'			;bd98	08 	. 
	ret m			;bd99	f8 	. 
	jr c,$+1		;bd9a	38 ff 	8 . 
	nop			;bd9c	00 	. 
	rst 38h			;bd9d	ff 	. 
	rst 38h			;bd9e	ff 	. 
	cp a			;bd9f	bf 	. 
	ld b,b			;bda0	40 	@ 
	rst 38h			;bda1	ff 	. 
	rst 38h			;bda2	ff 	. 
	rst 28h			;bda3	ef 	. 
	djnz $+1		;bda4	10 ff 	. . 
	rst 38h			;bda6	ff 	. 
	ld d,l			;bda7	55 	U 
	xor d			;bda8	aa 	. 
	rst 38h			;bda9	ff 	. 
	rst 38h			;bdaa	ff 	. 
	cp d			;bdab	ba 	. 
	ld b,l			;bdac	45 	E 
	rst 38h			;bdad	ff 	. 
	rst 38h			;bdae	ff 	. 
	push de			;bdaf	d5 	. 
	ld hl,(0ffffh)		;bdb0	2a ff ff 	* . . 
	nop			;bdb3	00 	. 
	nop			;bdb4	00 	. 
	nop			;bdb5	00 	. 
	nop			;bdb6	00 	. 
	nop			;bdb7	00 	. 
	nop			;bdb8	00 	. 
	nop			;bdb9	00 	. 
	nop			;bdba	00 	. 
	ld bc,00302h		;bdbb	01 02 03 	. . . 
	inc bc			;bdbe	03 	. 
	rlca			;bdbf	07 	. 
	ex af,af'			;bdc0	08 	. 
	rrca			;bdc1	0f 	. 
	inc c			;bdc2	0c 	. 
	rrca			;bdc3	0f 	. 
	nop			;bdc4	00 	. 
	rrca			;bdc5	0f 	. 
	ex af,af'			;bdc6	08 	. 
	ld c,010h		;bdc7	0e 10 	. . 
	rra			;bdc9	1f 	. 
	jr lbdd8h		;bdca	18 0c 	. . 
	djnz $+33		;bdcc	10 1f 	. . 
	djnz $+14		;bdce	10 0c 	. . 
	djnz lbdf1h		;bdd0	10 1f 	. . 
	djnz lbdf2h		;bdd2	10 1e 	. . 
	jr nz,$+65		;bdd4	20 3f 	  ? 
	jr c,$+1		;bdd6	38 ff 	8 . 
lbdd8h:
	nop			;bdd8	00 	. 
	rst 38h			;bdd9	ff 	. 
	call m,000ffh		;bdda	fc ff 00 	. . . 
	rst 38h			;bddd	ff 	. 
	rst 38h			;bdde	ff 	. 
	rst 30h			;bddf	f7 	. 
	ex af,af'			;bde0	08 	. 
	rst 38h			;bde1	ff 	. 
	rst 38h			;bde2	ff 	. 
	rst 38h			;bde3	ff 	. 
	nop			;bde4	00 	. 
	rst 38h			;bde5	ff 	. 
	rst 38h			;bde6	ff 	. 
	ld e,l			;bde7	5d 	] 
	and d			;bde8	a2 	. 
	rst 38h			;bde9	ff 	. 
	rst 38h			;bdea	ff 	. 
	jp pe,0ff15h		;bdeb	ea 15 ff 	. . . 
	rst 38h			;bdee	ff 	. 
	ld d,l			;bdef	55 	U 
	xor d			;bdf0	aa 	. 
lbdf1h:
	rst 38h			;bdf1	ff 	. 
lbdf2h:
	rst 38h			;bdf2	ff 	. 
	ld a,b			;bdf3	78 	x 
	inc b			;bdf4	04 	. 
	call m,0ff1ch		;bdf5	fc 1c ff 	. . . 
	nop			;bdf8	00 	. 
	rst 38h			;bdf9	ff 	. 
	ccf			;bdfa	3f 	? 
	rst 38h			;bdfb	ff 	. 
	nop			;bdfc	00 	. 
	rst 38h			;bdfd	ff 	. 
	rst 38h			;bdfe	ff 	. 
	cp a			;bdff	bf 	. 
	ld b,b			;be00	40 	@ 
	rst 38h			;be01	ff 	. 
	rst 38h			;be02	ff 	. 
	rst 28h			;be03	ef 	. 
	djnz $+1		;be04	10 ff 	. . 
	rst 38h			;be06	ff 	. 
	ld d,l			;be07	55 	U 
	xor d			;be08	aa 	. 
	rst 38h			;be09	ff 	. 
	rst 38h			;be0a	ff 	. 
	cp d			;be0b	ba 	. 
	ld b,l			;be0c	45 	E 
	rst 38h			;be0d	ff 	. 
	rst 38h			;be0e	ff 	. 
	push de			;be0f	d5 	. 
	ld hl,(0ffffh)		;be10	2a ff ff 	* . . 
	ld bc,00302h		;be13	01 02 03 	. . . 
	inc bc			;be16	03 	. 
	rlca			;be17	07 	. 
	ex af,af'			;be18	08 	. 
	rrca			;be19	0f 	. 
	ld c,00fh		;be1a	0e 0f 	. . 
	nop			;be1c	00 	. 
	rrca			;be1d	0f 	. 
	ex af,af'			;be1e	08 	. 
	ld c,010h		;be1f	0e 10 	. . 
	rra			;be21	1f 	. 
	djnz lbe40h		;be22	10 1c 	. . 
	nop			;be24	00 	. 
	rra			;be25	1f 	. 
	djnz lbe44h		;be26	10 1c 	. . 
	nop			;be28	00 	. 
	rra			;be29	1f 	. 
	djnz lbe4ah		;be2a	10 1e 	. . 
	jr nz,lbe6dh		;be2c	20 3f 	  ? 
	jr nc,lbe6fh		;be2e	30 3f 	0 ? 
	nop			;be30	00 	. 
	ccf			;be31	3f 	? 
	jr c,$+1		;be32	38 ff 	8 . 
	nop			;be34	00 	. 
	rst 38h			;be35	ff 	. 
	call m,000ffh		;be36	fc ff 00 	. . . 
	rst 38h			;be39	ff 	. 
	rst 38h			;be3a	ff 	. 
	rst 38h			;be3b	ff 	. 
	nop			;be3c	00 	. 
	rst 38h			;be3d	ff 	. 
	rst 38h			;be3e	ff 	. 
	rst 30h			;be3f	f7 	. 
lbe40h:
	ex af,af'			;be40	08 	. 
	rst 38h			;be41	ff 	. 
	rst 38h			;be42	ff 	. 
	rst 38h			;be43	ff 	. 
lbe44h:
	nop			;be44	00 	. 
	rst 38h			;be45	ff 	. 
	rst 38h			;be46	ff 	. 
	ld e,l			;be47	5d 	] 
	and d			;be48	a2 	. 
	rst 38h			;be49	ff 	. 
lbe4ah:
	rst 38h			;be4a	ff 	. 
	jp pe,0ff15h		;be4b	ea 15 ff 	. . . 
	rst 38h			;be4e	ff 	. 
	ld d,l			;be4f	55 	U 
	xor d			;be50	aa 	. 
	rst 38h			;be51	ff 	. 
	rst 38h			;be52	ff 	. 
	rst 38h			;be53	ff 	. 
	nop			;be54	00 	. 
	rst 38h			;be55	ff 	. 
	ccf			;be56	3f 	? 
	rst 38h			;be57	ff 	. 
	nop			;be58	00 	. 
	rst 38h			;be59	ff 	. 
	rst 38h			;be5a	ff 	. 
	rst 38h			;be5b	ff 	. 
	nop			;be5c	00 	. 
	rst 38h			;be5d	ff 	. 
	rst 38h			;be5e	ff 	. 
	cp a			;be5f	bf 	. 
	ld b,b			;be60	40 	@ 
	rst 38h			;be61	ff 	. 
	rst 38h			;be62	ff 	. 
	rst 28h			;be63	ef 	. 
	djnz $+1		;be64	10 ff 	. . 
	rst 38h			;be66	ff 	. 
	ld d,l			;be67	55 	U 
	xor d			;be68	aa 	. 
	rst 38h			;be69	ff 	. 
	rst 38h			;be6a	ff 	. 
	cp d			;be6b	ba 	. 
	ld b,l			;be6c	45 	E 
lbe6dh:
	rst 38h			;be6d	ff 	. 
	rst 38h			;be6e	ff 	. 
lbe6fh:
	push de			;be6f	d5 	. 
	ld hl,(0ffffh)		;be70	2a ff ff 	* . . 
	nop			;be73	00 	. 
	nop			;be74	00 	. 
	nop			;be75	00 	. 
	nop			;be76	00 	. 
	nop			;be77	00 	. 
	nop			;be78	00 	. 
	nop			;be79	00 	. 
	nop			;be7a	00 	. 
	ld c,b			;be7b	48 	H 
	nop			;be7c	00 	. 
	ld l,h			;be7d	6c 	l 
	ld c,b			;be7e	48 	H 
	inc (hl)			;be7f	34 	4 
	nop			;be80	00 	. 
	ld (hl),024h		;be81	36 24 	6 $ 
	ld d,000h		;be83	16 00 	. . 
	ld d,016h		;be85	16 16 	. . 
	ld (bc),a			;be87	02 	. 
	nop			;be88	00 	. 
	ld (bc),a			;be89	02 	. 
	ld (bc),a			;be8a	02 	. 
	nop			;be8b	00 	. 
	nop			;be8c	00 	. 
	nop			;be8d	00 	. 
	nop			;be8e	00 	. 
	ld a,(de)			;be8f	1a 	. 
	nop			;be90	00 	. 
	ld a,(de)			;be91	1a 	. 
	ex af,af'			;be92	08 	. 
	rrca			;be93	0f 	. 
	djnz lbeb5h		;be94	10 1f 	. . 
	inc e			;be96	1c 	. 
	rlca			;be97	07 	. 
lbe98h:
	ex af,af'			;be98	08 	. 
	rrca			;be99	0f 	. 
	ld c,0ffh		;be9a	0e ff 	. . 
lbe9ch:
	nop			;be9c	00 	. 
	rst 38h			;be9d	ff 	. 
	rst 38h			;be9e	ff 	. 
	rst 30h			;be9f	f7 	. 
	ex af,af'			;bea0	08 	. 
	rst 38h			;bea1	ff 	. 
	rst 38h			;bea2	ff 	. 
	rst 38h			;bea3	ff 	. 
	nop			;bea4	00 	. 
	rst 38h			;bea5	ff 	. 
	rst 38h			;bea6	ff 	. 
	ld e,l			;bea7	5d 	] 
	and d			;bea8	a2 	. 
	rst 38h			;bea9	ff 	. 
lbeaah:
	rst 38h			;beaa	ff 	. 
	jp pe,0ff15h		;beab	ea 15 ff 	. . . 
	rst 38h			;beae	ff 	. 
	ld d,l			;beaf	55 	U 
	xor d			;beb0	aa 	. 
	rst 38h			;beb1	ff 	. 
	rst 38h			;beb2	ff 	. 
	ret p			;beb3	f0 	. 
	ex af,af'			;beb4	08 	. 
lbeb5h:
	ret m			;beb5	f8 	. 
	jr c,lbe98h		;beb6	38 e0 	8 . 
	djnz lbeaah		;beb8	10 f0 	. . 
	ld (hl),b			;beba	70 	p 
	rst 38h			;bebb	ff 	. 
	nop			;bebc	00 	. 
	rst 38h			;bebd	ff 	. 
	rst 38h			;bebe	ff 	. 
	cp a			;bebf	bf 	. 
	ld b,b			;bec0	40 	@ 
	rst 38h			;bec1	ff 	. 
	rst 38h			;bec2	ff 	. 
	rst 28h			;bec3	ef 	. 
	djnz $+1		;bec4	10 ff 	. . 
	rst 38h			;bec6	ff 	. 
	ld d,l			;bec7	55 	U 
	xor d			;bec8	aa 	. 
	rst 38h			;bec9	ff 	. 
	rst 38h			;beca	ff 	. 
	cp d			;becb	ba 	. 
	ld b,l			;becc	45 	E 
	rst 38h			;becd	ff 	. 
	rst 38h			;bece	ff 	. 
	push de			;becf	d5 	. 
	ld hl,(0ffffh)		;bed0	2a ff ff 	* . . 
	ld hl,lbf14h		;bed3	21 14 bf 	! . . 
	ld de,0c700h		;bed6	11 00 c7 	. . . 
	ld bc,000e8h		;bed9	01 e8 00 	. . . 
	ldir		;bedc	ed b0 	. . 
	call 0c700h		;bede	cd 00 c7 	. . . 
	ld a,(0c112h)		;bee1	3a 12 c1 	: . . 
	or a			;bee4	b7 	. 
	jp z,00085h		;bee5	ca 85 00 	. . . 
	ld hl,(0c100h)		;bee8	2a 00 c1 	* . . 
	ld de,(0c10ch)		;beeb	ed 5b 0c c1 	. [ . . 
	or a			;beef	b7 	. 
	sbc hl,de		;bef0	ed 52 	. R 
	jp z,0c7d9h		;bef2	ca d9 c7 	. . . 
	call 0014eh		;bef5	cd 4e 01 	. N . 
	ld hl,lbf06h		;bef8	21 06 bf 	! . . 
	ld de,07ad0h		;befb	11 d0 7a 	. . z 
	ld b,00eh		;befe	06 0e 	. . 
	xor a			;bf00	af 	. 
	call 0013ch		;bf01	cd 3c 01 	. < . 
lbf04h:
	jr lbf04h		;bf04	18 fe 	. . 
lbf06h:
	ld d,e			;bf06	53 	S 
	ld c,a			;bf07	4f 	O 
	ld b,(hl)			;bf08	46 	F 
	ld d,h			;bf09	54 	T 
	ld d,a			;bf0a	57 	W 
	ld b,c			;bf0b	41 	A 
	ld d,d			;bf0c	52 	R 
	ld b,l			;bf0d	45 	E 
	jr nz,lbf55h		;bf0e	20 45 	  E 
	ld d,d			;bf10	52 	R 
	ld d,d			;bf11	52 	R 
	ld c,a			;bf12	4f 	O 
	ld d,d			;bf13	52 	R 
lbf14h:
	ld a,(0ffffh)		;bf14	3a ff ff 	: . . 
	push af			;bf17	f5 	. 
	in a,(0dch)		;bf18	db dc 	. . 
	ld hl,0c766h		;bf1a	21 66 c7 	! f . 
	ld b,003h		;bf1d	06 03 	. . 
lbf1fh:
	ld a,0ebh		;bf1f	3e eb 	> . 
	out (03eh),a		;bf21	d3 3e 	. > 
	ld a,(hl)			;bf23	7e 	~ 
	ld (0c112h),a		;bf24	32 12 c1 	2 . . 
	out (03eh),a		;bf27	d3 3e 	. > 
	exx			;bf29	d9 	. 
	call 0c73eh		;bf2a	cd 3e c7 	. > . 
	call 0c739h		;bf2d	cd 39 c7 	. 9 . 
	call 0c734h		;bf30	cd 34 c7 	. 4 . 
	exx			;bf33	d9 	. 
	inc hl			;bf34	23 	# 
	djnz lbf1fh		;bf35	10 e8 	. . 
	xor a			;bf37	af 	. 
	ld (0c112h),a		;bf38	32 12 c1 	2 . . 
lbf3bh:
	ld a,0ebh		;bf3b	3e eb 	> . 
	out (03eh),a		;bf3d	d3 3e 	. > 
	ld a,0e3h		;bf3f	3e e3 	> . 
	out (03eh),a		;bf41	d3 3e 	. > 
	pop af			;bf43	f1 	. 
	ld (0ffffh),a		;bf44	32 ff ff 	2 . . 
	ret			;bf47	c9 	. 
	ld hl,01ff0h		;bf48	21 f0 1f 	! . . 
	jr lbf55h		;bf4b	18 08 	. . 
	ld hl,03ff0h		;bf4d	21 f0 3f 	! . ? 
	jr lbf55h		;bf50	18 03 	. . 
	ld hl,07ff0h		;bf52	21 f0 7f 	! .  
lbf55h:
	ld de,0c102h		;bf55	11 02 c1 	. . . 
	ld bc,00010h		;bf58	01 10 00 	. . . 
	ldir		;bf5b	ed b0 	. . 
	ld hl,0c75eh		;bf5d	21 5e c7 	! ^ . 
	ld de,0c102h		;bf60	11 02 c1 	. . . 
	ld b,008h		;bf63	06 08 	. . 
lbf65h:
	ld a,(de)			;bf65	1a 	. 
	cp (hl)			;bf66	be 	. 
	ret nz			;bf67	c0 	. 
	inc hl			;bf68	23 	# 
	inc de			;bf69	13 	. 
	djnz lbf65h		;bf6a	10 f9 	. . 
	call 0c769h		;bf6c	cd 69 c7 	. i . 
	pop af			;bf6f	f1 	. 
	jr lbf3bh		;bf70	18 c9 	. . 
	ld d,h			;bf72	54 	T 
	ld c,l			;bf73	4d 	M 
	ld d,d			;bf74	52 	R 
	jr nz,$+85		;bf75	20 53 	  S 
	ld b,l			;bf77	45 	E 
	ld b,a			;bf78	47 	G 
	ld b,c			;bf79	41 	A 
	res 5,e		;bf7a	cb ab 	. . 
	ld l,e			;bf7c	6b 	k 
	ld de,00000h		;bf7d	11 00 00 	. . . 
	ld a,(0c111h)		;bf80	3a 11 c1 	: . . 
	ld c,a			;bf83	4f 	O 
	and 0f0h		;bf84	e6 f0 	. . 
	cp 040h		;bf86	fe 40 	. @ 
	jr z,lbf92h		;bf88	28 08 	( . 
	ld hl,(0c100h)		;bf8a	2a 00 c1 	* . . 
	inc hl			;bf8d	23 	# 
	ld (0c10ch),hl		;bf8e	22 0c c1 	" . . 
	ret			;bf91	c9 	. 
lbf92h:
	ld a,c			;bf92	79 	y 
	sub 00ah		;bf93	d6 0a 	. . 
	and 00fh		;bf95	e6 0f 	. . 
	push af			;bf97	f5 	. 
	ld hl,0c7cch		;bf98	21 cc c7 	! . . 
	ld c,a			;bf9b	4f 	O 
	ld b,000h		;bf9c	06 00 	. . 
	add hl,bc			;bf9e	09 	. 
	ld c,(hl)			;bf9f	4e 	N 
	ld b,0f0h		;bfa0	06 f0 	. . 
	ld hl,00000h		;bfa2	21 00 00 	! . . 
	call 0c7beh		;bfa5	cd be c7 	. . . 
	ld (0c100h),de		;bfa8	ed 53 00 c1 	. S . . 
	pop af			;bfac	f1 	. 
	sub 004h		;bfad	d6 04 	. . 
	ret c			;bfaf	d8 	. 
	ld c,a			;bfb0	4f 	O 
	ld b,000h		;bfb1	06 00 	. . 
	ld hl,0c7d5h		;bfb3	21 d5 c7 	! . . 
	add hl,bc			;bfb6	09 	. 
	ld b,(hl)			;bfb7	46 	F 
	ld a,002h		;bfb8	3e 02 	> . 
lbfbah:
	push bc			;bfba	c5 	. 
	ld (0ffffh),a		;bfbb	32 ff ff 	2 . . 
	inc a			;bfbe	3c 	< 
	push af			;bfbf	f5 	. 
	call 0c7b8h		;bfc0	cd b8 c7 	. . . 
	pop af			;bfc3	f1 	. 
	pop bc			;bfc4	c1 	. 
	djnz lbfbah		;bfc5	10 f3 	. . 
	ld (0c100h),de		;bfc7	ed 53 00 c1 	. S . . 
	ret			;bfcb	c9 	. 
	ld bc,00040h		;bfcc	01 40 00 	. @ . 
	ld hl,l8000h		;bfcf	21 00 80 	! . . 
lbfd2h:
	ld a,e			;bfd2	7b 	{ 
	add a,(hl)			;bfd3	86 	. 
	ld e,a			;bfd4	5f 	_ 
	adc a,d			;bfd5	8a 	. 
	sub e			;bfd6	93 	. 
	ld d,a			;bfd7	57 	W 
	inc hl			;bfd8	23 	# 
	djnz lbfd2h		;bfd9	10 f7 	. . 
	dec c			;bfdb	0d 	. 
	jp nz,0c7beh		;bfdc	c2 be c7 	. . . 
	ret			;bfdf	c9 	. 
	jr nz,$+66		;bfe0	20 40 	  @ 
	add a,b			;bfe2	80 	. 
	ret nz			;bfe3	c0 	. 
	add a,b			;bfe4	80 	. 
	add a,b			;bfe5	80 	. 
	add a,b			;bfe6	80 	. 
	add a,b			;bfe7	80 	. 
	add a,b			;bfe8	80 	. 
	ld (bc),a			;bfe9	02 	. 
	ld b,00eh		;bfea	06 0e 	. . 
	ld e,03eh		;bfec	1e 3e 	. > 
	ex de,hl			;bfee	eb 	. 
	out (03eh),a		;bfef	d3 3e 	. > 
	ld a,(0c112h)		;bff1	3a 12 c1 	: . . 
	ld (0c000h),a		;bff4	32 00 c0 	2 . . 
	out (03eh),a		;bff7	d3 3e 	. > 
	jp 00000h		;bff9	c3 00 00 	. . . 
	rst 38h			;bffc	ff 	. 
	rst 38h			;bffd	ff 	. 
	rst 38h			;bffe	ff 	. 
	rst 38h			;bfff	ff 	. 
