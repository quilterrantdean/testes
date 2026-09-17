; ============================================================
; Banco 4 do ROM (offset no ficheiro: 0x10000 - 0x13FFF)
; Endereco de origem assumido no mapa do Z80: 8000h (assumido: banco paginavel para o slot 2 via porta FFFFh)
; Gerado com z80dasm 1.1.6 (-a enderecos, -t bytes originais, -l labels)
; NOTA: saltos/chamadas absolutos (JP/CALL) so sao validos quando
; este banco estiver de facto paginado no slot indicado acima.
; Zonas de dados (graficos, tabelas, musica) podem surgir desmontadas
; incorrectamente como instrucoes -- ver aviso Self-modifying-code
; nos ficheiros onde a heuristica do z80dasm o assinalou.
; ============================================================

; z80dasm 1.1.6
; command line: z80dasm -a -t -l -g 0x8000 -s /home/claude/out/bank4.sym -o /home/claude/out/bank4.asm bank4.bin

	org	08000h

sub_8000h:
	ld h,b			;8000	60 	` 
	add a,b			;8001	80 	. 
	ld l,e			;8002	6b 	k 
	add a,b			;8003	80 	. 
sub_8004h:
	ld a,b			;8004	78 	x 
	add a,b			;8005	80 	. 
	add a,l			;8006	85 	. 
	add a,b			;8007	80 	. 
	sub b			;8008	90 	. 
	add a,b			;8009	80 	. 
l800ah:
	sbc a,l			;800a	9d 	. 
	add a,b			;800b	80 	. 
sub_800ch:
	xor d			;800c	aa 	. 
	add a,b			;800d	80 	. 
	or a			;800e	b7 	. 
	add a,b			;800f	80 	. 
	call nz,0d380h		;8010	c4 80 d3 	. . . 
	add a,b			;8013	80 	. 
	jp po,0ed80h		;8014	e2 80 ed 	. . . 
	add a,b			;8017	80 	. 
	ret m			;8018	f8 	. 
	add a,b			;8019	80 	. 
	inc bc			;801a	03 	. 
	add a,c			;801b	81 	. 
	ld c,081h		;801c	0e 81 	. . 
	dec de			;801e	1b 	. 
	add a,c			;801f	81 	. 
	jr z,$-125		;8020	28 81 	( . 
	dec (hl)			;8022	35 	5 
	add a,c			;8023	81 	. 
	ld b,d			;8024	42 	B 
	add a,c			;8025	81 	. 
	ld d,a			;8026	57 	W 
	add a,c			;8027	81 	. 
	ld l,h			;8028	6c 	l 
	add a,c			;8029	81 	. 
	add a,c			;802a	81 	. 
	add a,c			;802b	81 	. 
	adc a,(hl)			;802c	8e 	. 
	add a,c			;802d	81 	. 
	sbc a,e			;802e	9b 	. 
	add a,c			;802f	81 	. 
	xor h			;8030	ac 	. 
	add a,c			;8031	81 	. 
	cp l			;8032	bd 	. 
	add a,c			;8033	81 	. 
	adc a,081h		;8034	ce 81 	. . 
	rst 18h			;8036	df 	. 
	add a,c			;8037	81 	. 
	ret p			;8038	f0 	. 
	add a,c			;8039	81 	. 
	ld bc,01882h		;803a	01 82 18 	. . . 
	add a,d			;803d	82 	. 
	ld sp,04882h		;803e	31 82 48 	1 . H 
l8041h:
	add a,d			;8041	82 	. 
l8042h:
	ld h,c			;8042	61 	a 
	add a,d			;8043	82 	. 
	ld a,b			;8044	78 	x 
	add a,d			;8045	82 	. 
	sub c			;8046	91 	. 
	add a,d			;8047	82 	. 
	xor b			;8048	a8 	. 
	add a,d			;8049	82 	. 
	pop bc			;804a	c1 	. 
	add a,d			;804b	82 	. 
	adc a,082h		;804c	ce 82 	. . 
	in a,(082h)		;804e	db 82 	. . 
	in a,(082h)		;8050	db 82 	. . 
	and 082h		;8052	e6 82 	. . 
	di			;8054	f3 	. 
	add a,d			;8055	82 	. 
	nop			;8056	00 	. 
	add a,e			;8057	83 	. 
	dec c			;8058	0d 	. 
	add a,e			;8059	83 	. 
	ld a,(de)			;805a	1a 	. 
	add a,e			;805b	83 	. 
	daa			;805c	27 	' 
	add a,e			;805d	83 	. 
	inc (hl)			;805e	34 	4 
	add a,e			;805f	83 	. 
	dec b			;8060	05 	. 
	ld b,c			;8061	41 	A 
	add a,e			;8062	83 	. 
	ld e,c			;8063	59 	Y 
	add a,e			;8064	83 	. 
	ld (hl),c			;8065	71 	q 
	add a,e			;8066	83 	. 
	adc a,c			;8067	89 	. 
	add a,e			;8068	83 	. 
	and c			;8069	a1 	. 
	add a,e			;806a	83 	. 
	ld b,041h		;806b	06 41 	. A 
	add a,e			;806d	83 	. 
	ld e,c			;806e	59 	Y 
	add a,e			;806f	83 	. 
	cp c			;8070	b9 	. 
	add a,e			;8071	83 	. 
	pop de			;8072	d1 	. 
	add a,e			;8073	83 	. 
	jp (hl)			;8074	e9 	. 
	add a,e			;8075	83 	. 
	ld bc,00684h		;8076	01 84 06 	. . . 
	ld b,c			;8079	41 	A 
	add a,e			;807a	83 	. 
	ld e,c			;807b	59 	Y 
	add a,e			;807c	83 	. 
	add hl,de			;807d	19 	. 
l807eh:
	add a,h			;807e	84 	. 
	ld sp,04984h		;807f	31 84 49 	1 . I 
	add a,h			;8082	84 	. 
	ld h,c			;8083	61 	a 
	add a,h			;8084	84 	. 
	dec b			;8085	05 	. 
	ld a,c			;8086	79 	y 
	add a,h			;8087	84 	. 
	sub c			;8088	91 	. 
	add a,h			;8089	84 	. 
	xor c			;808a	a9 	. 
	add a,h			;808b	84 	. 
	pop bc			;808c	c1 	. 
	add a,h			;808d	84 	. 
	exx			;808e	d9 	. 
	add a,h			;808f	84 	. 
	ld b,079h		;8090	06 79 	. y 
	add a,h			;8092	84 	. 
	sub c			;8093	91 	. 
	add a,h			;8094	84 	. 
	pop af			;8095	f1 	. 
	add a,h			;8096	84 	. 
	add hl,bc			;8097	09 	. 
	add a,l			;8098	85 	. 
	ld hl,03985h		;8099	21 85 39 	! . 9 
	add a,l			;809c	85 	. 
	ld b,079h		;809d	06 79 	. y 
	add a,h			;809f	84 	. 
	sub c			;80a0	91 	. 
	add a,h			;80a1	84 	. 
	ld d,c			;80a2	51 	Q 
	add a,l			;80a3	85 	. 
	ld l,c			;80a4	69 	i 
	add a,l			;80a5	85 	. 
	add a,c			;80a6	81 	. 
	add a,l			;80a7	85 	. 
	sbc a,c			;80a8	99 	. 
	add a,l			;80a9	85 	. 
	ld b,041h		;80aa	06 41 	. A 
	add a,e			;80ac	83 	. 
	ld e,c			;80ad	59 	Y 
	add a,e			;80ae	83 	. 
	or c			;80af	b1 	. 
	add a,l			;80b0	85 	. 
	ret			;80b1	c9 	. 
	add a,l			;80b2	85 	. 
	pop hl			;80b3	e1 	. 
	add a,l			;80b4	85 	. 
	ld sp,hl			;80b5	f9 	. 
	add a,l			;80b6	85 	. 
	ld b,079h		;80b7	06 79 	. y 
	add a,h			;80b9	84 	. 
	sub c			;80ba	91 	. 
	add a,h			;80bb	84 	. 
	ld de,02986h		;80bc	11 86 29 	. . ) 
	add a,(hl)			;80bf	86 	. 
	ld b,c			;80c0	41 	A 
	add a,(hl)			;80c1	86 	. 
	ld e,c			;80c2	59 	Y 
	add a,(hl)			;80c3	86 	. 
	rlca			;80c4	07 	. 
	ld b,c			;80c5	41 	A 
	add a,e			;80c6	83 	. 
	ld e,c			;80c7	59 	Y 
	add a,e			;80c8	83 	. 
	ld (hl),c			;80c9	71 	q 
	add a,(hl)			;80ca	86 	. 
	adc a,c			;80cb	89 	. 
	add a,(hl)			;80cc	86 	. 
	and c			;80cd	a1 	. 
	add a,(hl)			;80ce	86 	. 
	cp c			;80cf	b9 	. 
	add a,(hl)			;80d0	86 	. 
	pop de			;80d1	d1 	. 
	add a,(hl)			;80d2	86 	. 
	rlca			;80d3	07 	. 
	ld a,c			;80d4	79 	y 
	add a,h			;80d5	84 	. 
	sub c			;80d6	91 	. 
	add a,h			;80d7	84 	. 
	jp (hl)			;80d8	e9 	. 
	add a,(hl)			;80d9	86 	. 
	ld bc,01987h		;80da	01 87 19 	. . . 
	add a,a			;80dd	87 	. 
	ld sp,04987h		;80de	31 87 49 	1 . I 
	add a,a			;80e1	87 	. 
	dec b			;80e2	05 	. 
	ld b,c			;80e3	41 	A 
	add a,e			;80e4	83 	. 
	ld e,c			;80e5	59 	Y 
	add a,e			;80e6	83 	. 
	ld h,c			;80e7	61 	a 
	add a,a			;80e8	87 	. 
	ld a,c			;80e9	79 	y 
	add a,a			;80ea	87 	. 
	sub c			;80eb	91 	. 
	add a,a			;80ec	87 	. 
	dec b			;80ed	05 	. 
	ld b,c			;80ee	41 	A 
	add a,e			;80ef	83 	. 
	ld e,c			;80f0	59 	Y 
	add a,e			;80f1	83 	. 
	ld h,c			;80f2	61 	a 
	add a,a			;80f3	87 	. 
	xor c			;80f4	a9 	. 
	add a,a			;80f5	87 	. 
	pop bc			;80f6	c1 	. 
	add a,a			;80f7	87 	. 
	dec b			;80f8	05 	. 
	ld a,c			;80f9	79 	y 
	add a,h			;80fa	84 	. 
	sub c			;80fb	91 	. 
	add a,h			;80fc	84 	. 
	exx			;80fd	d9 	. 
	add a,a			;80fe	87 	. 
l80ffh:
	pop af			;80ff	f1 	. 
l8100h:
	add a,a			;8100	87 	. 
l8101h:
	add hl,bc			;8101	09 	. 
	adc a,b			;8102	88 	. 
	dec b			;8103	05 	. 
	ld a,c			;8104	79 	y 
l8105h:
	add a,h			;8105	84 	. 
	sub c			;8106	91 	. 
	add a,h			;8107	84 	. 
	ld hl,03988h		;8108	21 88 39 	! . 9 
	adc a,b			;810b	88 	. 
	add hl,bc			;810c	09 	. 
	adc a,b			;810d	88 	. 
	ld b,041h		;810e	06 41 	. A 
	add a,e			;8110	83 	. 
	ld e,c			;8111	59 	Y 
	add a,e			;8112	83 	. 
	ld (hl),c			;8113	71 	q 
	add a,(hl)			;8114	86 	. 
	ld d,c			;8115	51 	Q 
	adc a,b			;8116	88 	. 
	ld l,c			;8117	69 	i 
	adc a,b			;8118	88 	. 
	sub c			;8119	91 	. 
	add a,a			;811a	87 	. 
	ld b,079h		;811b	06 79 	. y 
	add a,h			;811d	84 	. 
	sub c			;811e	91 	. 
	add a,h			;811f	84 	. 
	exx			;8120	d9 	. 
	add a,a			;8121	87 	. 
	add a,c			;8122	81 	. 
	adc a,b			;8123	88 	. 
	sbc a,c			;8124	99 	. 
	adc a,b			;8125	88 	. 
	add hl,de			;8126	19 	. 
	add a,a			;8127	87 	. 
	ld b,0a1h		;8128	06 a1 	. . 
	adc a,c			;812a	89 	. 
	cp c			;812b	b9 	. 
	adc a,c			;812c	89 	. 
	pop de			;812d	d1 	. 
	adc a,c			;812e	89 	. 
	jp (hl)			;812f	e9 	. 
	adc a,c			;8130	89 	. 
	ld sp,00187h		;8131	31 87 01 	1 . . 
	adc a,d			;8134	8a 	. 
	ld b,0a1h		;8135	06 a1 	. . 
	adc a,c			;8137	89 	. 
	add hl,de			;8138	19 	. 
	adc a,d			;8139	8a 	. 
	ld sp,0498ah		;813a	31 8a 49 	1 . I 
	adc a,d			;813d	8a 	. 
	ld h,c			;813e	61 	a 
	adc a,d			;813f	8a 	. 
	ld a,c			;8140	79 	y 
	adc a,d			;8141	8a 	. 
	ld a,(bc)			;8142	0a 	. 
	ld a,c			;8143	79 	y 
	add a,h			;8144	84 	. 
	sub c			;8145	91 	. 
	add a,h			;8146	84 	. 
	jp (hl)			;8147	e9 	. 
	add a,(hl)			;8148	86 	. 
	ld bc,03187h		;8149	01 87 31 	. . 1 
	add a,a			;814c	87 	. 
	ld c,c			;814d	49 	I 
	add a,a			;814e	87 	. 
	sub c			;814f	91 	. 
	adc a,d			;8150	8a 	. 
	xor c			;8151	a9 	. 
	adc a,d			;8152	8a 	. 
	pop bc			;8153	c1 	. 
	adc a,d			;8154	8a 	. 
	exx			;8155	d9 	. 
	adc a,d			;8156	8a 	. 
	ld a,(bc)			;8157	0a 	. 
	ld a,c			;8158	79 	y 
	add a,h			;8159	84 	. 
	sub c			;815a	91 	. 
	add a,h			;815b	84 	. 
	jp (hl)			;815c	e9 	. 
	add a,(hl)			;815d	86 	. 
	ld bc,03187h		;815e	01 87 31 	. . 1 
	add a,a			;8161	87 	. 
	ld c,c			;8162	49 	I 
	add a,a			;8163	87 	. 
	pop af			;8164	f1 	. 
	adc a,d			;8165	8a 	. 
	add hl,bc			;8166	09 	. 
	adc a,e			;8167	8b 	. 
	ld hl,0398bh		;8168	21 8b 39 	! . 9 
	adc a,e			;816b	8b 	. 
	ld a,(bc)			;816c	0a 	. 
	ld a,c			;816d	79 	y 
	add a,h			;816e	84 	. 
	sub c			;816f	91 	. 
	add a,h			;8170	84 	. 
	jp (hl)			;8171	e9 	. 
	add a,(hl)			;8172	86 	. 
	ld bc,03187h		;8173	01 87 31 	. . 1 
	add a,a			;8176	87 	. 
	ld c,c			;8177	49 	I 
	add a,a			;8178	87 	. 
	ld d,c			;8179	51 	Q 
	adc a,e			;817a	8b 	. 
	ld l,c			;817b	69 	i 
	adc a,e			;817c	8b 	. 
	add a,c			;817d	81 	. 
	adc a,e			;817e	8b 	. 
	sbc a,c			;817f	99 	. 
	adc a,e			;8180	8b 	. 
	ld b,041h		;8181	06 41 	. A 
	add a,e			;8183	83 	. 
	ld e,c			;8184	59 	Y 
	add a,e			;8185	83 	. 
	or c			;8186	b1 	. 
	adc a,e			;8187	8b 	. 
	ret			;8188	c9 	. 
	adc a,e			;8189	8b 	. 
	pop hl			;818a	e1 	. 
	adc a,e			;818b	8b 	. 
	ld sp,hl			;818c	f9 	. 
	adc a,e			;818d	8b 	. 
	ld b,079h		;818e	06 79 	. y 
	add a,h			;8190	84 	. 
	sub c			;8191	91 	. 
	add a,h			;8192	84 	. 
	ld de,0298ch		;8193	11 8c 29 	. . ) 
	adc a,h			;8196	8c 	. 
	ld b,c			;8197	41 	A 
	adc a,h			;8198	8c 	. 
	ld e,c			;8199	59 	Y 
	adc a,h			;819a	8c 	. 
	ex af,af'			;819b	08 	. 
	ld a,c			;819c	79 	y 
	add a,h			;819d	84 	. 
	sub c			;819e	91 	. 
	add a,h			;819f	84 	. 
	ld (hl),c			;81a0	71 	q 
	adc a,h			;81a1	8c 	. 
	adc a,c			;81a2	89 	. 
	adc a,h			;81a3	8c 	. 
	and c			;81a4	a1 	. 
	adc a,h			;81a5	8c 	. 
	cp c			;81a6	b9 	. 
	adc a,h			;81a7	8c 	. 
	pop de			;81a8	d1 	. 
	adc a,h			;81a9	8c 	. 
	jp (hl)			;81aa	e9 	. 
	adc a,h			;81ab	8c 	. 
	ex af,af'			;81ac	08 	. 
	ld a,c			;81ad	79 	y 
	add a,h			;81ae	84 	. 
	sub c			;81af	91 	. 
	add a,h			;81b0	84 	. 
	ld (hl),c			;81b1	71 	q 
	adc a,h			;81b2	8c 	. 
	adc a,c			;81b3	89 	. 
	adc a,h			;81b4	8c 	. 
	and c			;81b5	a1 	. 
	adc a,h			;81b6	8c 	. 
	ld bc,0d18dh		;81b7	01 8d d1 	. . . 
	adc a,h			;81ba	8c 	. 
	add hl,de			;81bb	19 	. 
	adc a,l			;81bc	8d 	. 
	ex af,af'			;81bd	08 	. 
	ld sp,0498dh		;81be	31 8d 49 	1 . I 
	adc a,l			;81c1	8d 	. 
	ld h,c			;81c2	61 	a 
	adc a,l			;81c3	8d 	. 
	ld a,c			;81c4	79 	y 
	adc a,l			;81c5	8d 	. 
	sub c			;81c6	91 	. 
	adc a,l			;81c7	8d 	. 
	xor c			;81c8	a9 	. 
	adc a,l			;81c9	8d 	. 
	pop bc			;81ca	c1 	. 
	adc a,l			;81cb	8d 	. 
	exx			;81cc	d9 	. 
	adc a,l			;81cd	8d 	. 
	ex af,af'			;81ce	08 	. 
	ld a,c			;81cf	79 	y 
	add a,h			;81d0	84 	. 
	sub c			;81d1	91 	. 
	add a,h			;81d2	84 	. 
	ld a,c			;81d3	79 	y 
	sub (hl)			;81d4	96 	. 
	sub c			;81d5	91 	. 
	sub (hl)			;81d6	96 	. 
	xor c			;81d7	a9 	. 
	sub (hl)			;81d8	96 	. 
	pop bc			;81d9	c1 	. 
	sub (hl)			;81da	96 	. 
	exx			;81db	d9 	. 
	sub (hl)			;81dc	96 	. 
	pop af			;81dd	f1 	. 
	sub (hl)			;81de	96 	. 
	ex af,af'			;81df	08 	. 
	ld a,c			;81e0	79 	y 
	add a,h			;81e1	84 	. 
	sub c			;81e2	91 	. 
	add a,h			;81e3	84 	. 
	ld a,c			;81e4	79 	y 
	sub (hl)			;81e5	96 	. 
	sub c			;81e6	91 	. 
	sub (hl)			;81e7	96 	. 
	xor c			;81e8	a9 	. 
	sub (hl)			;81e9	96 	. 
	add hl,bc			;81ea	09 	. 
	sub a			;81eb	97 	. 
	ld hl,03997h		;81ec	21 97 39 	! . 9 
	sub a			;81ef	97 	. 
	ex af,af'			;81f0	08 	. 
	ld a,c			;81f1	79 	y 
	add a,h			;81f2	84 	. 
	sub c			;81f3	91 	. 
	add a,h			;81f4	84 	. 
	ld a,c			;81f5	79 	y 
	sub (hl)			;81f6	96 	. 
	sub c			;81f7	91 	. 
	sub (hl)			;81f8	96 	. 
	xor c			;81f9	a9 	. 
	sub (hl)			;81fa	96 	. 
	ld d,c			;81fb	51 	Q 
	sub a			;81fc	97 	. 
	ld l,c			;81fd	69 	i 
	sub a			;81fe	97 	. 
	add a,c			;81ff	81 	. 
l8200h:
	sub a			;8200	97 	. 
	dec bc			;8201	0b 	. 
	ld a,c			;8202	79 	y 
	sub b			;8203	90 	. 
	sub c			;8204	91 	. 
	sub b			;8205	90 	. 
	xor c			;8206	a9 	. 
	sub b			;8207	90 	. 
	pop bc			;8208	c1 	. 
	sub b			;8209	90 	. 
	exx			;820a	d9 	. 
	sub b			;820b	90 	. 
	pop af			;820c	f1 	. 
	sub b			;820d	90 	. 
	add hl,bc			;820e	09 	. 
	sub c			;820f	91 	. 
	ld hl,03991h		;8210	21 91 39 	! . 9 
	sub c			;8213	91 	. 
	ld d,c			;8214	51 	Q 
	sub c			;8215	91 	. 
	ld l,c			;8216	69 	i 
	sub c			;8217	91 	. 
	inc c			;8218	0c 	. 
	add a,c			;8219	81 	. 
	sub c			;821a	91 	. 
	sbc a,c			;821b	99 	. 
	sub c			;821c	91 	. 
	or c			;821d	b1 	. 
	sub c			;821e	91 	. 
	pop bc			;821f	c1 	. 
	sub b			;8220	90 	. 
	exx			;8221	d9 	. 
	sub b			;8222	90 	. 
	pop af			;8223	f1 	. 
	sub b			;8224	90 	. 
	add hl,bc			;8225	09 	. 
	sub c			;8226	91 	. 
	ret			;8227	c9 	. 
	sub c			;8228	91 	. 
	add hl,sp			;8229	39 	9 
	sub c			;822a	91 	. 
	pop hl			;822b	e1 	. 
	sub c			;822c	91 	. 
	ld sp,hl			;822d	f9 	. 
	sub c			;822e	91 	. 
	ld de,00b92h		;822f	11 92 0b 	. . . 
	add hl,hl			;8232	29 	) 
	sub d			;8233	92 	. 
	ld b,c			;8234	41 	A 
	sub d			;8235	92 	. 
	or c			;8236	b1 	. 
	sub c			;8237	91 	. 
	pop bc			;8238	c1 	. 
	sub b			;8239	90 	. 
	exx			;823a	d9 	. 
	sub b			;823b	90 	. 
	pop af			;823c	f1 	. 
	sub b			;823d	90 	. 
	add hl,bc			;823e	09 	. 
	sub c			;823f	91 	. 
	ld e,c			;8240	59 	Y 
	sub d			;8241	92 	. 
	add hl,sp			;8242	39 	9 
	sub c			;8243	91 	. 
	pop hl			;8244	e1 	. 
	sub c			;8245	91 	. 
	ld (hl),c			;8246	71 	q 
	sub d			;8247	92 	. 
	inc c			;8248	0c 	. 
	add a,c			;8249	81 	. 
	sub c			;824a	91 	. 
	sbc a,c			;824b	99 	. 
	sub c			;824c	91 	. 
	or c			;824d	b1 	. 
	sub c			;824e	91 	. 
	pop bc			;824f	c1 	. 
	sub b			;8250	90 	. 
	exx			;8251	d9 	. 
	sub b			;8252	90 	. 
	pop af			;8253	f1 	. 
	sub b			;8254	90 	. 
	add hl,bc			;8255	09 	. 
	sub c			;8256	91 	. 
	adc a,c			;8257	89 	. 
	sub d			;8258	92 	. 
	and c			;8259	a1 	. 
	sub d			;825a	92 	. 
	pop hl			;825b	e1 	. 
	sub c			;825c	91 	. 
	cp c			;825d	b9 	. 
	sub d			;825e	92 	. 
	pop de			;825f	d1 	. 
	sub d			;8260	92 	. 
	dec bc			;8261	0b 	. 
	jp (hl)			;8262	e9 	. 
	sub d			;8263	92 	. 
	ld bc,01993h		;8264	01 93 19 	. . . 
	sub e			;8267	93 	. 
	ld sp,04993h		;8268	31 93 49 	1 . I 
	sub e			;826b	93 	. 
	ld h,c			;826c	61 	a 
	sub e			;826d	93 	. 
	ld a,c			;826e	79 	y 
	sub e			;826f	93 	. 
	sub c			;8270	91 	. 
	sub e			;8271	93 	. 
	xor c			;8272	a9 	. 
	sub e			;8273	93 	. 
	pop bc			;8274	c1 	. 
	sub e			;8275	93 	. 
	exx			;8276	d9 	. 
	sub e			;8277	93 	. 
	inc c			;8278	0c 	. 
	pop af			;8279	f1 	. 
	sub e			;827a	93 	. 
	add hl,bc			;827b	09 	. 
	sub h			;827c	94 	. 
	ld hl,03194h		;827d	21 94 31 	! . 1 
	sub e			;8280	93 	. 
	ld c,c			;8281	49 	I 
	sub e			;8282	93 	. 
l8283h:
	ld h,c			;8283	61 	a 
	sub e			;8284	93 	. 
	ld a,c			;8285	79 	y 
	sub e			;8286	93 	. 
	add hl,sp			;8287	39 	9 
	sub h			;8288	94 	. 
	xor c			;8289	a9 	. 
	sub e			;828a	93 	. 
	ld d,c			;828b	51 	Q 
	sub h			;828c	94 	. 
	ld l,c			;828d	69 	i 
	sub h			;828e	94 	. 
	pop de			;828f	d1 	. 
	sub d			;8290	92 	. 
	dec bc			;8291	0b 	. 
	add a,c			;8292	81 	. 
	sub h			;8293	94 	. 
sub_8294h:
	sbc a,c			;8294	99 	. 
	sub h			;8295	94 	. 
	ld hl,03194h		;8296	21 94 31 	! . 1 
	sub e			;8299	93 	. 
	ld c,c			;829a	49 	I 
	sub e			;829b	93 	. 
	ld h,c			;829c	61 	a 
	sub e			;829d	93 	. 
	ld a,c			;829e	79 	y 
	sub e			;829f	93 	. 
	or c			;82a0	b1 	. 
	sub h			;82a1	94 	. 
	xor c			;82a2	a9 	. 
	sub e			;82a3	93 	. 
	ret			;82a4	c9 	. 
	sub h			;82a5	94 	. 
	pop hl			;82a6	e1 	. 
	sub h			;82a7	94 	. 
	inc c			;82a8	0c 	. 
	pop af			;82a9	f1 	. 
	sub e			;82aa	93 	. 
	add hl,bc			;82ab	09 	. 
	sub h			;82ac	94 	. 
	ld hl,03194h		;82ad	21 94 31 	! . 1 
	sub e			;82b0	93 	. 
	ld c,c			;82b1	49 	I 
	sub e			;82b2	93 	. 
	ld h,c			;82b3	61 	a 
	sub e			;82b4	93 	. 
	ld sp,hl			;82b5	f9 	. 
	sub h			;82b6	94 	. 
	ld de,la995h		;82b7	11 95 a9 	. . . 
	sub e			;82ba	93 	. 
	add hl,hl			;82bb	29 	) 
	sub l			;82bc	95 	. 
	ld b,c			;82bd	41 	A 
	sub l			;82be	95 	. 
	pop de			;82bf	d1 	. 
	sub d			;82c0	92 	. 
	ld b,0b1h		;82c1	06 b1 	. . 
	adc a,b			;82c3	88 	. 
	ret			;82c4	c9 	. 
	adc a,b			;82c5	88 	. 
	pop af			;82c6	f1 	. 
	adc a,l			;82c7	8d 	. 
	add hl,bc			;82c8	09 	. 
	adc a,(hl)			;82c9	8e 	. 
	ld hl,0398eh		;82ca	21 8e 39 	! . 9 
	adc a,(hl)			;82cd	8e 	. 
	ld b,0a1h		;82ce	06 a1 	. . 
	adc a,c			;82d0	89 	. 
	cp c			;82d1	b9 	. 
	adc a,c			;82d2	89 	. 
	ld d,c			;82d3	51 	Q 
	adc a,(hl)			;82d4	8e 	. 
	ld l,c			;82d5	69 	i 
	adc a,(hl)			;82d6	8e 	. 
	add a,c			;82d7	81 	. 
	adc a,(hl)			;82d8	8e 	. 
	sbc a,c			;82d9	99 	. 
	adc a,(hl)			;82da	8e 	. 
	dec b			;82db	05 	. 
	or c			;82dc	b1 	. 
	adc a,(hl)			;82dd	8e 	. 
	ret			;82de	c9 	. 
	adc a,(hl)			;82df	8e 	. 
	pop hl			;82e0	e1 	. 
	adc a,(hl)			;82e1	8e 	. 
	ld sp,hl			;82e2	f9 	. 
	adc a,(hl)			;82e3	8e 	. 
	ld de,0068fh		;82e4	11 8f 06 	. . . 
	add hl,hl			;82e7	29 	) 
	adc a,a			;82e8	8f 	. 
	ld b,c			;82e9	41 	A 
	adc a,a			;82ea	8f 	. 
	ld e,c			;82eb	59 	Y 
	adc a,a			;82ec	8f 	. 
	ld (hl),c			;82ed	71 	q 
	adc a,a			;82ee	8f 	. 
	adc a,c			;82ef	89 	. 
	adc a,a			;82f0	8f 	. 
	and c			;82f1	a1 	. 
	adc a,a			;82f2	8f 	. 
	ld b,029h		;82f3	06 29 	. ) 
	adc a,a			;82f5	8f 	. 
	ld b,c			;82f6	41 	A 
	adc a,a			;82f7	8f 	. 
	cp c			;82f8	b9 	. 
	adc a,a			;82f9	8f 	. 
	pop de			;82fa	d1 	. 
	adc a,a			;82fb	8f 	. 
	jp (hl)			;82fc	e9 	. 
	adc a,a			;82fd	8f 	. 
	ld bc,00690h		;82fe	01 90 06 	. . . 
	add hl,hl			;8301	29 	) 
	adc a,a			;8302	8f 	. 
	ld b,c			;8303	41 	A 
	adc a,a			;8304	8f 	. 
	add hl,de			;8305	19 	. 
	sub b			;8306	90 	. 
	ld sp,04990h		;8307	31 90 49 	1 . I 
	sub b			;830a	90 	. 
	ld h,c			;830b	61 	a 
	sub b			;830c	90 	. 
	ld b,059h		;830d	06 59 	. Y 
	sub l			;830f	95 	. 
	ld (hl),c			;8310	71 	q 
	sub l			;8311	95 	. 
	adc a,c			;8312	89 	. 
	sub l			;8313	95 	. 
	and c			;8314	a1 	. 
	sub l			;8315	95 	. 
l8316h:
	cp c			;8316	b9 	. 
	sub l			;8317	95 	. 
	pop de			;8318	d1 	. 
	sub l			;8319	95 	. 
	ld b,099h		;831a	06 99 	. . 
	sub a			;831c	97 	. 
	or c			;831d	b1 	. 
	sub a			;831e	97 	. 
	ret			;831f	c9 	. 
	sub a			;8320	97 	. 
	pop hl			;8321	e1 	. 
	sub a			;8322	97 	. 
	ld sp,hl			;8323	f9 	. 
	sub a			;8324	97 	. 
	ld de,00698h		;8325	11 98 06 	. . . 
	sbc a,c			;8328	99 	. 
	sub a			;8329	97 	. 
	or c			;832a	b1 	. 
	sub a			;832b	97 	. 
	add hl,hl			;832c	29 	) 
	sbc a,b			;832d	98 	. 
	ld b,c			;832e	41 	A 
	sbc a,b			;832f	98 	. 
	ld e,c			;8330	59 	Y 
	sbc a,b			;8331	98 	. 
	ld (hl),c			;8332	71 	q 
	sbc a,b			;8333	98 	. 
	ld b,099h		;8334	06 99 	. . 
	sub a			;8336	97 	. 
	or c			;8337	b1 	. 
	sub a			;8338	97 	. 
	adc a,c			;8339	89 	. 
	sbc a,b			;833a	98 	. 
	and c			;833b	a1 	. 
	sbc a,b			;833c	98 	. 
	cp c			;833d	b9 	. 
	sbc a,b			;833e	98 	. 
	pop de			;833f	d1 	. 
	sbc a,b			;8340	98 	. 
	nop			;8341	00 	. 
	rlca			;8342	07 	. 
	rlca			;8343	07 	. 
	nop			;8344	00 	. 
	ccf			;8345	3f 	? 
	jr c,l8348h		;8346	38 00 	8 . 
l8348h:
	ld a,a			;8348	7f 	 
	ld b,b			;8349	40 	@ 
	nop			;834a	00 	. 
	ld a,a			;834b	7f 	 
	ld b,b			;834c	40 	@ 
	jr nz,$+1		;834d	20 ff 	  . 
	add a,b			;834f	80 	. 
	ld sp,l80ffh		;8350	31 ff 80 	1 . . 
	inc a			;8353	3c 	< 
	ld h,a			;8354	67 	g 
	ld b,b			;8355	40 	@ 
	ld l,073h		;8356	2e 73 	. s 
	ld d,b			;8358	50 	P 
	nop			;8359	00 	. 
	ret nz			;835a	c0 	. 
	ret nz			;835b	c0 	. 
	nop			;835c	00 	. 
	ret p			;835d	f0 	. 
l835eh:
	jr nc,l8360h		;835e	30 00 	0 . 
l8360h:
	ret m			;8360	f8 	. 
	ex af,af'			;8361	08 	. 
	nop			;8362	00 	. 
	call m,0c004h		;8363	fc 04 c0 	. . . 
	call m,0e004h		;8366	fc 04 e0 	. . . 
	ld a,(hl)			;8369	7e 	~ 
	add a,d			;836a	82 	. 
	ret po			;836b	e0 	. 
	cp (hl)			;836c	be 	. 
	ld b,d			;836d	42 	B 
	ret po			;836e	e0 	. 
	cp (hl)			;836f	be 	. 
	ld b,d			;8370	42 	B 
	ld l,073h		;8371	2e 73 	. s 
	ld d,b			;8373	50 	P 
	ld a,(hl)			;8374	7e 	~ 
	ex (sp),hl			;8375	e3 	. 
	add a,b			;8376	80 	. 
	ld a,(hl)			;8377	7e 	~ 
	rst 38h			;8378	ff 	. 
	add a,b			;8379	80 	. 
	ld a,07fh		;837a	3e 7f 	>  
	ld b,b			;837c	40 	@ 
	ld bc,03e3eh		;837d	01 3e 3e 	. > > 
	ld (bc),a			;8380	02 	. 
	ld b,007h		;8381	06 07 	. . 
l8383h:
	inc b			;8383	04 	. 
	ld c,00fh		;8384	0e 0f 	. . 
	nop			;8386	00 	. 
	ld a,(bc)			;8387	0a 	. 
	rrca			;8388	0f 	. 
	ret po			;8389	e0 	. 
	cp h			;838a	bc 	. 
	ld b,h			;838b	44 	D 
l838ch:
	ret nz			;838c	c0 	. 
	ld a,(hl)			;838d	7e 	~ 
	add a,d			;838e	82 	. 
	add a,b			;838f	80 	. 
	call m,0000ch		;8390	fc 0c 00 	. . . 
	ret p			;8393	f0 	. 
	jr nc,l8316h		;8394	30 80 	0 . 
l8396h:
	ld b,b			;8396	40 	@ 
	ld b,b			;8397	40 	@ 
	add a,b			;8398	80 	. 
	jr nz,l83fbh		;8399	20 60 	  ` 
	add a,b			;839b	80 	. 
	jr nz,$+98		;839c	20 60 	  ` 
	add a,b			;839e	80 	. 
	jr nz,l8401h		;839f	20 60 	  ` 
	inc e			;83a1	1c 	. 
	and d			;83a2	a2 	. 
	jp po,0fe3ch		;83a3	e2 3c fe 	. < . 
	jp nz,lbe1ch		;83a6	c2 1c be 	. . . 
	jp po,05c00h		;83a9	e2 00 5c 	. . \ 
	ld a,h			;83ac	7c 	| 
	nop			;83ad	00 	. 
	inc h			;83ae	24 	$ 
	inc a			;83af	3c 	< 
	jr c,l842eh		;83b0	38 7c 	8 | 
	ld a,h			;83b2	7c 	| 
	ld a,b			;83b3	78 	x 
	call m,000fch		;83b4	fc fc 00 	. . . 
	call m,02efch		;83b7	fc fc 2e 	. . . 
	ld (hl),e			;83ba	73 	s 
	ld d,b			;83bb	50 	P 
	ld a,(hl)			;83bc	7e 	~ 
	ex (sp),hl			;83bd	e3 	. 
l83beh:
	add a,b			;83be	80 	. 
	ld a,(hl)			;83bf	7e 	~ 
	rst 38h			;83c0	ff 	. 
	add a,b			;83c1	80 	. 
	ld a,07fh		;83c2	3e 7f 	>  
	ld b,b			;83c4	40 	@ 
	ld bc,03e3eh		;83c5	01 3e 3e 	. > > 
	ld (bc),a			;83c8	02 	. 
	ld b,007h		;83c9	06 07 	. . 
	inc b			;83cb	04 	. 
	inc c			;83cc	0c 	. 
	rrca			;83cd	0f 	. 
	nop			;83ce	00 	. 
	add hl,de			;83cf	19 	. 
	rra			;83d0	1f 	. 
	ret po			;83d1	e0 	. 
	cp h			;83d2	bc 	. 
	ld b,h			;83d3	44 	D 
	ret nz			;83d4	c0 	. 
	ld a,(hl)			;83d5	7e 	~ 
	add a,d			;83d6	82 	. 
	add a,b			;83d7	80 	. 
	call m,0000ch		;83d8	fc 0c 00 	. . . 
	ret p			;83db	f0 	. 
	jr nc,l835eh		;83dc	30 80 	0 . 
	ld b,b			;83de	40 	@ 
	ld b,b			;83df	40 	@ 
	add a,b			;83e0	80 	. 
	jr nz,l8443h		;83e1	20 60 	  ` 
	ld b,b			;83e3	40 	@ 
	djnz l8396h		;83e4	10 b0 	. . 
	jr nc,l83f0h		;83e6	30 08 	0 . 
	ret z			;83e8	c8 	. 
	jr nz,$+115		;83e9	20 71 	  q 
	ld e,a			;83eb	5f 	_ 
	jr nc,l8466h		;83ec	30 78 	0 x 
	ld c,a			;83ee	4f 	O 
	nop			;83ef	00 	. 
l83f0h:
	ld (hl),b			;83f0	70 	p 
	ld a,a			;83f1	7f 	 
	ld h,b			;83f2	60 	` 
	pop hl			;83f3	e1 	. 
	rst 38h			;83f4	ff 	. 
	ld (hl),b			;83f5	70 	p 
	rst 30h			;83f6	f7 	. 
	rst 38h			;83f7	ff 	. 
	jr c,l8476h		;83f8	38 7c 	8 | 
	ld a,h			;83fa	7c 	| 
l83fbh:
	djnz l8435h		;83fb	10 38 	. 8 
	jr c,l83ffh		;83fd	38 00 	8 . 
l83ffh:
	djnz l8411h		;83ff	10 10 	. . 
l8401h:
	ld (hl),b			;8401	70 	p 
	jr c,l838ch		;8402	38 88 	8 . 
	ld (hl),b			;8404	70 	p 
	ret m			;8405	f8 	. 
	adc a,b			;8406	88 	. 
	nop			;8407	00 	. 
	ld (hl),b			;8408	70 	p 
	ret p			;8409	f0 	. 
	ld h,b			;840a	60 	` 
	ret p			;840b	f0 	. 
	ret p			;840c	f0 	. 
	ret po			;840d	e0 	. 
	ret p			;840e	f0 	. 
	ret p			;840f	f0 	. 
	ld h,b			;8410	60 	` 
l8411h:
	ret p			;8411	f0 	. 
	ret p			;8412	f0 	. 
	jr nz,l8485h		;8413	20 70 	  p 
	ld (hl),b			;8415	70 	p 
	nop			;8416	00 	. 
	jr nc,l8449h		;8417	30 30 	0 0 
	ld l,073h		;8419	2e 73 	. s 
	ld d,b			;841b	50 	P 
	ld a,(hl)			;841c	7e 	~ 
	ex (sp),hl			;841d	e3 	. 
	add a,b			;841e	80 	. 
	ld a,(hl)			;841f	7e 	~ 
	rst 38h			;8420	ff 	. 
	add a,b			;8421	80 	. 
	ld a,07fh		;8422	3e 7f 	>  
	ld b,b			;8424	40 	@ 
	ld bc,03e3eh		;8425	01 3e 3e 	. > > 
	dec b			;8428	05 	. 
	inc c			;8429	0c 	. 
	ld c,00ah		;842a	0e 0a 	. . 
	jr l844bh		;842c	18 1d 	. . 
l842eh:
	inc c			;842e	0c 	. 
	djnz l8444h		;842f	10 13 	. . 
	ret po			;8431	e0 	. 
	cp h			;8432	bc 	. 
	ld b,h			;8433	44 	D 
	ret nz			;8434	c0 	. 
l8435h:
	ld a,(hl)			;8435	7e 	~ 
	add a,d			;8436	82 	. 
	add a,b			;8437	80 	. 
	call m,0000ch		;8438	fc 0c 00 	. . . 
	ret p			;843b	f0 	. 
	jr nc,l83beh		;843c	30 80 	0 . 
	ld b,b			;843e	40 	@ 
	ld b,b			;843f	40 	@ 
	nop			;8440	00 	. 
	jr nz,$-30		;8441	20 e0 	  . 
l8443h:
	nop			;8443	00 	. 
l8444h:
	jr nz,$-30		;8444	20 e0 	  . 
	nop			;8446	00 	. 
	or b			;8447	b0 	. 
	ret p			;8448	f0 	. 
l8449h:
	inc e			;8449	1c 	. 
	add hl,sp			;844a	39 	9 
l844bh:
	inc hl			;844b	23 	# 
	inc e			;844c	1c 	. 
	ld a,023h		;844d	3e 23 	> # 
	ex af,af'			;844f	08 	. 
	inc e			;8450	1c 	. 
	rla			;8451	17 	. 
	nop			;8452	00 	. 
	ld a,h			;8453	7c 	| 
	ld a,a			;8454	7f 	 
	ld a,b			;8455	78 	x 
	rst 38h			;8456	ff 	. 
	rst 38h			;8457	ff 	. 
	jr c,l84d6h		;8458	38 7c 	8 | 
l845ah:
	ld a,h			;845a	7c 	| 
	djnz l8495h		;845b	10 38 	. 8 
l845dh:
	jr c,l845fh		;845d	38 00 	8 . 
l845fh:
	djnz l8471h		;845f	10 10 	. . 
	djnz l849bh		;8461	10 38 	. 8 
	ret pe			;8463	e8 	. 
	djnz l849eh		;8464	10 38 	. 8 
l8466h:
	ret pe			;8466	e8 	. 
	nop			;8467	00 	. 
	djnz l845ah		;8468	10 f0 	. . 
	nop			;846a	00 	. 
	djnz l845dh		;846b	10 f0 	. . 
	jr nc,l84a7h		;846d	30 38 	0 8 
	ret m			;846f	f8 	. 
	ld a,b			;8470	78 	x 
l8471h:
	call m,070fch		;8471	fc fc 70 	. . p 
	ret m			;8474	f8 	. 
	ret m			;8475	f8 	. 
l8476h:
	nop			;8476	00 	. 
	ret p			;8477	f0 	. 
	ret p			;8478	f0 	. 
	nop			;8479	00 	. 
	rlca			;847a	07 	. 
	rlca			;847b	07 	. 
	nop			;847c	00 	. 
	rra			;847d	1f 	. 
	jr l8480h		;847e	18 00 	. . 
l8480h:
	ccf			;8480	3f 	? 
	jr nz,l8483h		;8481	20 00 	  . 
l8483h:
	ld a,a			;8483	7f 	 
	ld b,b			;8484	40 	@ 
l8485h:
	ld b,07fh		;8485	06 7f 	.  
	ld b,b			;8487	40 	@ 
	rrca			;8488	0f 	. 
	defb 0fdh,082h,00eh	;illegal sequence		;8489	fd 82 0e 	. . . 
	ei			;848c	fb 	. 
	add a,h			;848d	84 	. 
	ld c,0fbh		;848e	0e fb 	. . 
	add a,h			;8490	84 	. 
	nop			;8491	00 	. 
	ret nz			;8492	c0 	. 
	ret nz			;8493	c0 	. 
	nop			;8494	00 	. 
l8495h:
	ret m			;8495	f8 	. 
	jr c,l8498h		;8496	38 00 	8 . 
l8498h:
	call m,00004h		;8498	fc 04 00 	. . . 
l849bh:
	call m,00804h		;849b	fc 04 08 	. . . 
l849eh:
	cp 002h		;849e	fe 02 	. . 
l84a0h:
	jr l84a0h		;84a0	18 fe 	. . 
	ld (bc),a			;84a2	02 	. 
	ld a,b			;84a3	78 	x 
	call z,0e804h		;84a4	cc 04 e8 	. . . 
l84a7h:
	sbc a,h			;84a7	9c 	. 
	inc d			;84a8	14 	. 
	ld c,07bh		;84a9	0e 7b 	. { 
	ld b,h			;84ab	44 	D 
	ld b,0fdh		;84ac	06 fd 	. . 
	add a,d			;84ae	82 	. 
	ld (bc),a			;84af	02 	. 
	ld a,a			;84b0	7f 	 
	ld h,b			;84b1	60 	` 
	nop			;84b2	00 	. 
	rra			;84b3	1f 	. 
	jr l84b9h		;84b4	18 03 	. . 
	inc b			;84b6	04 	. 
	inc b			;84b7	04 	. 
	ld (bc),a			;84b8	02 	. 
l84b9h:
	ex af,af'			;84b9	08 	. 
	dec c			;84ba	0d 	. 
	ld (bc),a			;84bb	02 	. 
	ex af,af'			;84bc	08 	. 
	dec c			;84bd	0d 	. 
	ld (bc),a			;84be	02 	. 
	ex af,af'			;84bf	08 	. 
	dec c			;84c0	0d 	. 
	ret pe			;84c1	e8 	. 
	sbc a,h			;84c2	9c 	. 
	inc d			;84c3	14 	. 
	call m,0028eh		;84c4	fc 8e 02 	. . . 
	call m,002feh		;84c7	fc fe 02 	. . . 
	ret m			;84ca	f8 	. 
	call m,00004h		;84cb	fc 04 00 	. . . 
	ret m			;84ce	f8 	. 
	ret m			;84cf	f8 	. 
	add a,b			;84d0	80 	. 
	ret nz			;84d1	c0 	. 
	ret nz			;84d2	c0 	. 
	ld b,b			;84d3	40 	@ 
	ret po			;84d4	e0 	. 
	ret po			;84d5	e0 	. 
l84d6h:
	nop			;84d6	00 	. 
	and b			;84d7	a0 	. 
	ret po			;84d8	e0 	. 
	ld (hl),b			;84d9	70 	p 
	adc a,d			;84da	8a 	. 
	adc a,(hl)			;84db	8e 	. 
	ld a,b			;84dc	78 	x 
	cp 086h		;84dd	fe 86 	. . 
	ld (hl),b			;84df	70 	p 
	jp m,0008eh		;84e0	fa 8e 00 	. . . 
	ld (hl),h			;84e3	74 	t 
	ld a,h			;84e4	7c 	| 
	nop			;84e5	00 	. 
	ld c,b			;84e6	48 	H 
	ld a,b			;84e7	78 	x 
	jr c,l8566h		;84e8	38 7c 	8 | 
	ld a,h			;84ea	7c 	| 
	inc a			;84eb	3c 	< 
	ld a,(hl)			;84ec	7e 	~ 
	ld a,(hl)			;84ed	7e 	~ 
	nop			;84ee	00 	. 
	ld a,(hl)			;84ef	7e 	~ 
	ld a,(hl)			;84f0	7e 	~ 
	ld c,07bh		;84f1	0e 7b 	. { 
	ld b,h			;84f3	44 	D 
sub_84f4h:
	ld b,0fdh		;84f4	06 fd 	. . 
	add a,d			;84f6	82 	. 
	ld (bc),a			;84f7	02 	. 
	ld a,a			;84f8	7f 	 
	ld h,b			;84f9	60 	` 
	nop			;84fa	00 	. 
	rra			;84fb	1f 	. 
	jr l8501h		;84fc	18 03 	. . 
	inc b			;84fe	04 	. 
	inc b			;84ff	04 	. 
	ld (bc),a			;8500	02 	. 
l8501h:
	ex af,af'			;8501	08 	. 
	dec c			;8502	0d 	. 
	inc b			;8503	04 	. 
	djnz l8521h		;8504	10 1b 	. . 
	jr l8529h		;8506	18 21 	. ! 
	daa			;8508	27 	' 
	ret pe			;8509	e8 	. 
	sbc a,h			;850a	9c 	. 
	inc d			;850b	14 	. 
	call m,0028eh		;850c	fc 8e 02 	. . . 
	call m,002feh		;850f	fc fe 02 	. . . 
	ret m			;8512	f8 	. 
	call m,00004h		;8513	fc 04 00 	. . . 
	ret m			;8516	f8 	. 
	ret m			;8517	f8 	. 
	add a,b			;8518	80 	. 
	ret nz			;8519	c0 	. 
	ret nz			;851a	c0 	. 
	ld b,b			;851b	40 	@ 
	ld h,b			;851c	60 	` 
	ret po			;851d	e0 	. 
	nop			;851e	00 	. 
	jr nc,$-14		;851f	30 f0 	0 . 
l8521h:
	ld (hl),b			;8521	70 	p 
	call po,0708fh		;8522	e4 8f 70 	. . p 
	ret m			;8525	f8 	. 
	adc a,a			;8526	8f 	. 
	nop			;8527	00 	. 
	ld (hl),b			;8528	70 	p 
l8529h:
	ld a,a			;8529	7f 	 
	jr nc,$+126		;852a	30 7c 	0 | 
	ld a,a			;852c	7f 	 
	jr c,l85aeh		;852d	38 7f 	8  
	ld a,a			;852f	7f 	 
	jr nc,l85abh		;8530	30 79 	0 y 
	ld a,c			;8532	79 	y 
	jr nz,l85a5h		;8533	20 70 	  p 
	ld (hl),b			;8535	70 	p 
	nop			;8536	00 	. 
	ld h,b			;8537	60 	` 
	ld h,b			;8538	60 	` 
	jr nz,l85abh		;8539	20 70 	  p 
	ret nc			;853b	d0 	. 
	ld h,b			;853c	60 	` 
	ret p			;853d	f0 	. 
l853eh:
	sub b			;853e	90 	. 
	nop			;853f	00 	. 
	ld (hl),b			;8540	70 	p 
	ret p			;8541	f0 	. 
	jr nc,l857ch		;8542	30 38 	0 8 
	ret m			;8544	f8 	. 
	ld (hl),b			;8545	70 	p 
	ld a,b			;8546	78 	x 
	ret m			;8547	f8 	. 
	ret po			;8548	e0 	. 
	ret p			;8549	f0 	. 
	ret p			;854a	f0 	. 
	ld b,b			;854b	40 	@ 
	ret po			;854c	e0 	. 
	ret po			;854d	e0 	. 
	nop			;854e	00 	. 
	ld b,b			;854f	40 	@ 
	ld b,b			;8550	40 	@ 
	ld c,07bh		;8551	0e 7b 	. { 
	ld b,h			;8553	44 	D 
	ld b,0fdh		;8554	06 fd 	. . 
	add a,d			;8556	82 	. 
	ld (bc),a			;8557	02 	. 
	ld a,a			;8558	7f 	 
	ld h,b			;8559	60 	` 
	nop			;855a	00 	. 
	rra			;855b	1f 	. 
	jr $+5		;855c	18 03 	. . 
	inc b			;855e	04 	. 
	inc b			;855f	04 	. 
	ld bc,00e08h		;8560	01 08 0e 	. . . 
	nop			;8563	00 	. 
	ex af,af'			;8564	08 	. 
	rrca			;8565	0f 	. 
l8566h:
	nop			;8566	00 	. 
	ld a,(de)			;8567	1a 	. 
	rra			;8568	1f 	. 
	ret pe			;8569	e8 	. 
	sbc a,h			;856a	9c 	. 
	inc d			;856b	14 	. 
	call m,0028eh		;856c	fc 8e 02 	. . . 
	call m,002feh		;856f	fc fe 02 	. . . 
	ret m			;8572	f8 	. 
	call m,00004h		;8573	fc 04 00 	. . . 
	ret m			;8576	f8 	. 
	ret m			;8577	f8 	. 
	ld b,b			;8578	40 	@ 
	ld h,b			;8579	60 	` 
	ret po			;857a	e0 	. 
	and b			;857b	a0 	. 
l857ch:
	jr nc,l85eeh		;857c	30 70 	0 p 
	ld h,b			;857e	60 	` 
	djnz $-110		;857f	10 90 	. . 
	jr nz,l85f5h		;8581	20 72 	  r 
	ld e,a			;8583	5f 	_ 
	jr nz,l85f7h		;8584	20 71 	  q 
	ld e,a			;8586	5f 	_ 
	nop			;8587	00 	. 
	jr nz,l85c9h		;8588	20 3f 	  ? 
	nop			;858a	00 	. 
	jr nz,l85cch		;858b	20 3f 	  ? 
	jr nc,l8602h		;858d	30 73 	0 s 
	ld a,a			;858f	7f 	 
	ld a,b			;8590	78 	x 
	call m,038fch		;8591	fc fc 38 	. . 8 
	ld a,h			;8594	7c 	| 
	ld a,h			;8595	7c 	| 
l8596h:
	nop			;8596	00 	. 
	inc a			;8597	3c 	< 
	inc a			;8598	3c 	< 
	ret po			;8599	e0 	. 
	ld (hl),b			;859a	70 	p 
	djnz $-30		;859b	10 e0 	. . 
	ret p			;859d	f0 	. 
	djnz l85e0h		;859e	10 40 	. @ 
	ret po			;85a0	e0 	. 
	and b			;85a1	a0 	. 
	nop			;85a2	00 	. 
	ret m			;85a3	f8 	. 
	ret m			;85a4	f8 	. 
l85a5h:
	ld a,b			;85a5	78 	x 
	call m,070fch		;85a6	fc fc 70 	. . p 
	ret m			;85a9	f8 	. 
	ret m			;85aa	f8 	. 
l85abh:
	jr nz,$+114		;85ab	20 70 	  p 
	ld (hl),b			;85ad	70 	p 
l85aeh:
	nop			;85ae	00 	. 
	jr nz,$+34		;85af	20 20 	    
	ld l,073h		;85b1	2e 73 	. s 
	ld d,b			;85b3	50 	P 
	ld a,(hl)			;85b4	7e 	~ 
	ex (sp),hl			;85b5	e3 	. 
	add a,b			;85b6	80 	. 
	ld a,(hl)			;85b7	7e 	~ 
	rst 38h			;85b8	ff 	. 
	add a,b			;85b9	80 	. 
	ld a,07fh		;85ba	3e 7f 	>  
	ld b,b			;85bc	40 	@ 
	inc bc			;85bd	03 	. 
	ccf			;85be	3f 	? 
	ccf			;85bf	3f 	? 
	inc bc			;85c0	03 	. 
	rlca			;85c1	07 	. 
	rlca			;85c2	07 	. 
	nop			;85c3	00 	. 
	inc c			;85c4	0c 	. 
	rrca			;85c5	0f 	. 
	ex af,af'			;85c6	08 	. 
	inc d			;85c7	14 	. 
	rla			;85c8	17 	. 
l85c9h:
	ret po			;85c9	e0 	. 
	cp h			;85ca	bc 	. 
	ld b,h			;85cb	44 	D 
l85cch:
	ret nz			;85cc	c0 	. 
	ld a,(hl)			;85cd	7e 	~ 
	add a,d			;85ce	82 	. 
	add a,b			;85cf	80 	. 
	call m,0000ch		;85d0	fc 0c 00 	. . . 
	ret p			;85d3	f0 	. 
	jr nc,l8596h		;85d4	30 c0 	0 . 
	jr nc,l8608h		;85d6	30 30 	0 0 
	jr nc,$+10		;85d8	30 08 	0 . 
	ret z			;85da	c8 	. 
	ex af,af'			;85db	08 	. 
	inc b			;85dc	04 	. 
	call p,02e1ch		;85dd	f4 1c 2e 	. . . 
l85e0h:
	jp po,0e040h		;85e0	e2 40 e0 	. @ . 
	cp a			;85e3	bf 	. 
	inc c			;85e4	0c 	. 
	ld c,h			;85e5	4c 	L 
	ld a,a			;85e6	7f 	 
	jr c,l8665h		;85e7	38 7c 	8 | 
	ld a,a			;85e9	7f 	 
	nop			;85ea	00 	. 
	dec sp			;85eb	3b 	; 
	dec sp			;85ec	3b 	; 
	nop			;85ed	00 	. 
l85eeh:
	nop			;85ee	00 	. 
	nop			;85ef	00 	. 
	nop			;85f0	00 	. 
	nop			;85f1	00 	. 
	nop			;85f2	00 	. 
	nop			;85f3	00 	. 
	nop			;85f4	00 	. 
l85f5h:
	nop			;85f5	00 	. 
	nop			;85f6	00 	. 
l85f7h:
	nop			;85f7	00 	. 
	nop			;85f8	00 	. 
	ld (hl),b			;85f9	70 	p 
	ret m			;85fa	f8 	. 
	ret z			;85fb	c8 	. 
	ld h,b			;85fc	60 	` 
	ld (hl),b			;85fd	70 	p 
	ret p			;85fe	f0 	. 
	ret po			;85ff	e0 	. 
	ret p			;8600	f0 	. 
	ret p			;8601	f0 	. 
l8602h:
	nop			;8602	00 	. 
	ret po			;8603	e0 	. 
	ret po			;8604	e0 	. 
	nop			;8605	00 	. 
	nop			;8606	00 	. 
	nop			;8607	00 	. 
l8608h:
	nop			;8608	00 	. 
	nop			;8609	00 	. 
	nop			;860a	00 	. 
	nop			;860b	00 	. 
	nop			;860c	00 	. 
	nop			;860d	00 	. 
	nop			;860e	00 	. 
	nop			;860f	00 	. 
	nop			;8610	00 	. 
	ld c,07bh		;8611	0e 7b 	. { 
	ld b,h			;8613	44 	D 
	ld b,0fdh		;8614	06 fd 	. . 
	add a,d			;8616	82 	. 
	ld (bc),a			;8617	02 	. 
	ld a,a			;8618	7f 	 
	ld h,b			;8619	60 	` 
	nop			;861a	00 	. 
	rra			;861b	1f 	. 
	jr l8625h		;861c	18 07 	. . 
	add hl,de			;861e	19 	. 
	add hl,de			;861f	19 	. 
	add hl,de			;8620	19 	. 
	ld hl,02027h		;8621	21 27 20 	! '   
	ld b,b			;8624	40 	@ 
l8625h:
	ld e,a			;8625	5f 	_ 
	ld (hl),b			;8626	70 	p 
	ret pe			;8627	e8 	. 
	adc a,a			;8628	8f 	. 
	ret pe			;8629	e8 	. 
	sbc a,h			;862a	9c 	. 
	inc d			;862b	14 	. 
	call m,0028eh		;862c	fc 8e 02 	. . . 
	call m,002feh		;862f	fc fe 02 	. . . 
	ret m			;8632	f8 	. 
	call m,sub_8004h		;8633	fc 04 80 	. . . 
	ret m			;8636	f8 	. 
	ret m			;8637	f8 	. 
	add a,b			;8638	80 	. 
	ret nz			;8639	c0 	. 
	ret nz			;863a	c0 	. 
	nop			;863b	00 	. 
	ld h,b			;863c	60 	` 
	ret po			;863d	e0 	. 
	jr nz,l8690h		;863e	20 50 	  P 
	ret nc			;8640	d0 	. 
	ld (hl),b			;8641	70 	p 
	ret m			;8642	f8 	. 
	sbc a,a			;8643	9f 	. 
	ld sp,07f71h		;8644	31 71 7f 	1 q  
	jr c,l86c2h		;8647	38 79 	8 y 
	ld a,a			;8649	7f 	 
	nop			;864a	00 	. 
	ld a,03eh		;864b	3e 3e 	> > 
	nop			;864d	00 	. 
	nop			;864e	00 	. 
	nop			;864f	00 	. 
	nop			;8650	00 	. 
	nop			;8651	00 	. 
	nop			;8652	00 	. 
	nop			;8653	00 	. 
	nop			;8654	00 	. 
	nop			;8655	00 	. 
	nop			;8656	00 	. 
	nop			;8657	00 	. 
	nop			;8658	00 	. 
	djnz l8693h		;8659	10 38 	. 8 
	ret pe			;865b	e8 	. 
	add a,b			;865c	80 	. 
	sub b			;865d	90 	. 
	ret p			;865e	f0 	. 
	ret po			;865f	e0 	. 
	ret p			;8660	f0 	. 
	ret p			;8661	f0 	. 
	nop			;8662	00 	. 
	ret po			;8663	e0 	. 
	ret po			;8664	e0 	. 
l8665h:
	nop			;8665	00 	. 
	nop			;8666	00 	. 
	nop			;8667	00 	. 
	nop			;8668	00 	. 
	nop			;8669	00 	. 
	nop			;866a	00 	. 
	nop			;866b	00 	. 
	nop			;866c	00 	. 
	nop			;866d	00 	. 
	nop			;866e	00 	. 
	nop			;866f	00 	. 
	nop			;8670	00 	. 
	nop			;8671	00 	. 
	ccf			;8672	3f 	? 
	ccf			;8673	3f 	? 
	ccf			;8674	3f 	? 
	ld a,a			;8675	7f 	 
	ld b,b			;8676	40 	@ 
	ld a,a			;8677	7f 	 
	rst 38h			;8678	ff 	. 
	add a,b			;8679	80 	. 
	ld a,a			;867a	7f 	 
	rst 38h			;867b	ff 	. 
	add a,b			;867c	80 	. 
	ld h,a			;867d	67 	g 
	rst 38h			;867e	ff 	. 
	sbc a,b			;867f	98 	. 
	ld a,d			;8680	7a 	z 
	rst 38h			;8681	ff 	. 
	add a,l			;8682	85 	. 
	ld (hl),07eh		;8683	36 7e 	6 ~ 
	ld c,b			;8685	48 	H 
	nop			;8686	00 	. 
	ld a,03eh		;8687	3e 3e 	> > 
	ld l,073h		;8689	2e 73 	. s 
	ld d,b			;868b	50 	P 
	ld a,(hl)			;868c	7e 	~ 
	ex (sp),hl			;868d	e3 	. 
	add a,b			;868e	80 	. 
	ld a,(hl)			;868f	7e 	~ 
l8690h:
	rst 38h			;8690	ff 	. 
	add a,b			;8691	80 	. 
	cp (hl)			;8692	be 	. 
l8693h:
	ld a,a			;8693	7f 	 
	ld b,b			;8694	40 	@ 
	add a,b			;8695	80 	. 
	ld a,07fh		;8696	3e 7f 	>  
	inc bc			;8698	03 	. 
	jp 003ffh		;8699	c3 ff 03 	. . . 
	inc sp			;869c	33 	3 
	ccf			;869d	3f 	? 
	nop			;869e	00 	. 
	ex af,af'			;869f	08 	. 
	rrca			;86a0	0f 	. 
	ret po			;86a1	e0 	. 
	cp h			;86a2	bc 	. 
	ld b,h			;86a3	44 	D 
	ret nz			;86a4	c0 	. 
	ld a,(hl)			;86a5	7e 	~ 
	add a,d			;86a6	82 	. 
	add a,b			;86a7	80 	. 
	call m,0000ch		;86a8	fc 0c 00 	. . . 
	ret p			;86ab	f0 	. 
	jr nc,l870eh		;86ac	30 60 	0 ` 
	ex af,af'			;86ae	08 	. 
	sbc a,b			;86af	98 	. 
	djnz $+6		;86b0	10 04 	. . 
	call pe,04438h		;86b2	ec 38 44 	. 8 D 
	call nz,07c38h		;86b5	c4 38 7c 	. 8 | 
	call nz,01000h		;86b8	c4 00 10 	. . . 
	rra			;86bb	1f 	. 
	nop			;86bc	00 	. 
l86bdh:
	djnz l86deh		;86bd	10 1f 	. . 
	nop			;86bf	00 	. 
	jr nz,l8701h		;86c0	20 3f 	  ? 
l86c2h:
	nop			;86c2	00 	. 
	ld (0383fh),hl		;86c3	22 3f 38 	" ? 8 
	ld a,l			;86c6	7d 	} 
	ld a,l			;86c7	7d 	} 
	ld a,b			;86c8	78 	x 
	defb 0fdh,0fdh,000h	;illegal sequence		;86c9	fd fd 00 	. . . 
	ret m			;86cc	f8 	. 
	ret m			;86cd	f8 	. 
	nop			;86ce	00 	. 
	nop			;86cf	00 	. 
	nop			;86d0	00 	. 
	ld (hl),b			;86d1	70 	p 
	ret m			;86d2	f8 	. 
	adc a,b			;86d3	88 	. 
	nop			;86d4	00 	. 
	ld (hl),b			;86d5	70 	p 
	ret p			;86d6	f0 	. 
	nop			;86d7	00 	. 
	jr nz,$-30		;86d8	20 e0 	  . 
	nop			;86da	00 	. 
	jr nz,l86bdh		;86db	20 e0 	  . 
	ret po			;86dd	e0 	. 
l86deh:
	ret p			;86de	f0 	. 
	ret p			;86df	f0 	. 
	ret p			;86e0	f0 	. 
	ret m			;86e1	f8 	. 
	ret m			;86e2	f8 	. 
	nop			;86e3	00 	. 
	ret m			;86e4	f8 	. 
	ret m			;86e5	f8 	. 
	nop			;86e6	00 	. 
	nop			;86e7	00 	. 
	nop			;86e8	00 	. 
	ld c,07bh		;86e9	0e 7b 	. { 
	ld b,h			;86eb	44 	D 
	ld b,0fdh		;86ec	06 fd 	. . 
	add a,d			;86ee	82 	. 
	ld (bc),a			;86ef	02 	. 
	ld a,a			;86f0	7f 	 
	ld h,b			;86f1	60 	` 
	nop			;86f2	00 	. 
	rra			;86f3	1f 	. 
	jr l8702h		;86f4	18 0c 	. . 
	jr nz,l872bh		;86f6	20 33 	  3 
	ld de,06f41h		;86f8	11 41 6f 	. A o 
	add hl,sp			;86fb	39 	9 
	ld b,l			;86fc	45 	E 
	ld b,a			;86fd	47 	G 
	jr c,l877ch		;86fe	38 7c 	8 | 
	ld b,a			;8700	47 	G 
l8701h:
	ret pe			;8701	e8 	. 
l8702h:
	sbc a,l			;8702	9d 	. 
	dec d			;8703	15 	. 
	defb 0fdh,08fh,002h	;illegal sequence		;8704	fd 8f 02 	. . . 
	defb 0fdh,0ffh,002h	;illegal sequence		;8707	fd ff 02 	. . . 
	ei			;870a	fb 	. 
	defb 0fdh,004h,003h	;illegal sequence		;870b	fd 04 03 	. . . 
l870eh:
	ld sp,hl			;870e	f9 	. 
	call m,sub_8780h		;870f	fc 80 87 	. . . 
	rst 38h			;8712	ff 	. 
	add a,b			;8713	80 	. 
	sbc a,b			;8714	98 	. 
	ret m			;8715	f8 	. 
	nop			;8716	00 	. 
	jr nz,$-30		;8717	20 e0 	  . 
	nop			;8719	00 	. 
	ret m			;871a	f8 	. 
	ret m			;871b	f8 	. 
	ret m			;871c	f8 	. 
	call m,0fc04h		;871d	fc 04 fc 	. . . 
	cp 002h		;8720	fe 02 	. . 
	call m,002feh		;8722	fc fe 02 	. . . 
	call z,032feh		;8725	cc fe 32 	. . 2 
	cp h			;8728	bc 	. 
	cp 042h		;8729	fe 42 	. B 
l872bh:
	ret c			;872b	d8 	. 
	call m,00024h		;872c	fc 24 00 	. $ . 
	ret m			;872f	f8 	. 
	ret m			;8730	f8 	. 
	ld (hl),b			;8731	70 	p 
l8732h:
	ret m			;8732	f8 	. 
	adc a,a			;8733	8f 	. 
	nop			;8734	00 	. 
l8735h:
	ld (hl),b			;8735	70 	p 
	ld a,a			;8736	7f 	 
	nop			;8737	00 	. 
	jr nz,l8779h		;8738	20 3f 	  ? 
	nop			;873a	00 	. 
	ld (0383fh),hl		;873b	22 3f 38 	" ? 8 
	ld a,l			;873e	7d 	} 
	ld a,l			;873f	7d 	} 
	ld a,b			;8740	78 	x 
	defb 0fdh,0fdh,000h	;illegal sequence		;8741	fd fd 00 	. . . 
	ret m			;8744	f8 	. 
	ret m			;8745	f8 	. 
	nop			;8746	00 	. 
	nop			;8747	00 	. 
	nop			;8748	00 	. 
	nop			;8749	00 	. 
	ld b,b			;874a	40 	@ 
	ret nz			;874b	c0 	. 
	nop			;874c	00 	. 
	ld b,b			;874d	40 	@ 
	ret nz			;874e	c0 	. 
	nop			;874f	00 	. 
	jr nz,l8732h		;8750	20 e0 	  . 
	nop			;8752	00 	. 
	jr nz,l8735h		;8753	20 e0 	  . 
	ret po			;8755	e0 	. 
	ret p			;8756	f0 	. 
	ret p			;8757	f0 	. 
	ret p			;8758	f0 	. 
	ret m			;8759	f8 	. 
	ret m			;875a	f8 	. 
	nop			;875b	00 	. 
	ret m			;875c	f8 	. 
	ret m			;875d	f8 	. 
	nop			;875e	00 	. 
	nop			;875f	00 	. 
	nop			;8760	00 	. 
	ld l,073h		;8761	2e 73 	. s 
	ld d,b			;8763	50 	P 
	ld a,(hl)			;8764	7e 	~ 
	ex (sp),hl			;8765	e3 	. 
	add a,b			;8766	80 	. 
	ld a,(hl)			;8767	7e 	~ 
	rst 38h			;8768	ff 	. 
	add a,b			;8769	80 	. 
	ld a,07fh		;876a	3e 7f 	>  
	ld b,b			;876c	40 	@ 
	ld bc,03e3eh		;876d	01 3e 3e 	. > > 
	inc e			;8770	1c 	. 
	jr c,l8796h		;8771	38 23 	8 # 
	nop			;8773	00 	. 
	rra			;8774	1f 	. 
	rra			;8775	1f 	. 
	nop			;8776	00 	. 
	nop			;8777	00 	. 
	nop			;8778	00 	. 
l8779h:
	ret po			;8779	e0 	. 
	cp h			;877a	bc 	. 
	ld b,h			;877b	44 	D 
l877ch:
	ret nz			;877c	c0 	. 
	ld a,(hl)			;877d	7e 	~ 
	add a,d			;877e	82 	. 
	add a,b			;877f	80 	. 
sub_8780h:
	rst 38h			;8780	ff 	. 
	rrca			;8781	0f 	. 
	nop			;8782	00 	. 
	ret p			;8783	f0 	. 
	ccf			;8784	3f 	? 
	add a,b			;8785	80 	. 
	nop			;8786	00 	. 
	ld a,a			;8787	7f 	 
	nop			;8788	00 	. 
	nop			;8789	00 	. 
	rst 38h			;878a	ff 	. 
	nop			;878b	00 	. 
	add a,e			;878c	83 	. 
	rst 38h			;878d	ff 	. 
	nop			;878e	00 	. 
	ld a,h			;878f	7c 	| 
	ld a,h			;8790	7c 	| 
	nop			;8791	00 	. 
	nop			;8792	00 	. 
	nop			;8793	00 	. 
	nop			;8794	00 	. 
	nop			;8795	00 	. 
l8796h:
	nop			;8796	00 	. 
	nop			;8797	00 	. 
	ret p			;8798	f0 	. 
	ret p			;8799	f0 	. 
	jr nc,l87d8h		;879a	30 3c 	0 < 
	call m,01e1ch		;879c	fc 1c 1e 	. . . 
	cp 000h		;879f	fe 00 	. . 
	call m,000fch		;87a1	fc fc 00 	. . . 
	nop			;87a4	00 	. 
	nop			;87a5	00 	. 
	nop			;87a6	00 	. 
	nop			;87a7	00 	. 
	nop			;87a8	00 	. 
	ret po			;87a9	e0 	. 
	cp (hl)			;87aa	be 	. 
	ld b,(hl)			;87ab	46 	F 
	ret nz			;87ac	c0 	. 
	ld a,a			;87ad	7f 	 
	add a,e			;87ae	83 	. 
	add a,b			;87af	80 	. 
	call m,0000fh		;87b0	fc 0f 00 	. . . 
	ret p			;87b3	f0 	. 
	ccf			;87b4	3f 	? 
	add a,b			;87b5	80 	. 
	nop			;87b6	00 	. 
	ld a,a			;87b7	7f 	 
	nop			;87b8	00 	. 
	nop			;87b9	00 	. 
	rst 38h			;87ba	ff 	. 
	nop			;87bb	00 	. 
	add a,e			;87bc	83 	. 
	rst 38h			;87bd	ff 	. 
	nop			;87be	00 	. 
	ld a,h			;87bf	7c 	| 
	ld a,h			;87c0	7c 	| 
	nop			;87c1	00 	. 
	ret po			;87c2	e0 	. 
	ret po			;87c3	e0 	. 
	ld h,b			;87c4	60 	` 
	ld a,b			;87c5	78 	x 
	ret m			;87c6	f8 	. 
	jr c,l8805h		;87c7	38 3c 	8 < 
	call m,0f800h		;87c9	fc 00 f8 	. . . 
	ret m			;87cc	f8 	. 
	ld h,b			;87cd	60 	` 
	ld a,b			;87ce	78 	x 
	ret m			;87cf	f8 	. 
	ld a,b			;87d0	78 	x 
	ld a,h			;87d1	7c 	| 
	call m,0f800h		;87d2	fc 00 f8 	. . . 
	ret m			;87d5	f8 	. 
	nop			;87d6	00 	. 
	nop			;87d7	00 	. 
l87d8h:
	nop			;87d8	00 	. 
	nop			;87d9	00 	. 
	nop			;87da	00 	. 
	nop			;87db	00 	. 
	nop			;87dc	00 	. 
	nop			;87dd	00 	. 
	nop			;87de	00 	. 
	nop			;87df	00 	. 
	rra			;87e0	1f 	. 
	rra			;87e1	1f 	. 
	jr l885ch		;87e2	18 78 	. x 
	ld a,a			;87e4	7f 	 
	ld (hl),b			;87e5	70 	p 
	ret p			;87e6	f0 	. 
	rst 38h			;87e7	ff 	. 
	nop			;87e8	00 	. 
	ld a,(hl)			;87e9	7e 	~ 
	ld a,a			;87ea	7f 	 
	nop			;87eb	00 	. 
	ld bc,00001h		;87ec	01 01 00 	. . . 
	nop			;87ef	00 	. 
	nop			;87f0	00 	. 
	ld c,07bh		;87f1	0e 7b 	. { 
	ld b,h			;87f3	44 	D 
	ld b,0fdh		;87f4	06 fd 	. . 
	add a,d			;87f6	82 	. 
	ld (bc),a			;87f7	02 	. 
	rst 38h			;87f8	ff 	. 
	ret po			;87f9	e0 	. 
	nop			;87fa	00 	. 
	rra			;87fb	1f 	. 
	ret m			;87fc	f8 	. 
	inc bc			;87fd	03 	. 
	nop			;87fe	00 	. 
	call m,00000h		;87ff	fc 00 00 	. . . 
	rst 38h			;8802	ff 	. 
	nop			;8803	00 	. 
	add a,e			;8804	83 	. 
l8805h:
	rst 38h			;8805	ff 	. 
	nop			;8806	00 	. 
	ld a,h			;8807	7c 	| 
	ld a,h			;8808	7c 	| 
	ret pe			;8809	e8 	. 
	sbc a,h			;880a	9c 	. 
	inc d			;880b	14 	. 
	call m,0028eh		;880c	fc 8e 02 	. . . 
	call m,002feh		;880f	fc fe 02 	. . . 
	ret m			;8812	f8 	. 
	call m,00004h		;8813	fc 04 00 	. . . 
	ret m			;8816	f8 	. 
	ret m			;8817	f8 	. 
	ld (hl),b			;8818	70 	p 
	jr c,$-118		;8819	38 88 	8 . 
	nop			;881b	00 	. 
	ret p			;881c	f0 	. 
	ret p			;881d	f0 	. 
	nop			;881e	00 	. 
	nop			;881f	00 	. 
	nop			;8820	00 	. 
	nop			;8821	00 	. 
l8822h:
	dec e			;8822	1d 	. 
	dec e			;8823	1d 	. 
sub_8824h:
	jr $+125		;8824	18 7b 	. { 
	ld a,a			;8826	7f 	 
	ld (hl),b			;8827	70 	p 
	ret p			;8828	f0 	. 
	rst 38h			;8829	ff 	. 
	nop			;882a	00 	. 
	ld a,h			;882b	7c 	| 
	ld a,a			;882c	7f 	 
	jr l88a7h		;882d	18 78 	. x 
	ld a,a			;882f	7f 	 
	ld a,b			;8830	78 	x 
	ret m			;8831	f8 	. 
	rst 38h			;8832	ff 	. 
	nop			;8833	00 	. 
	ld a,a			;8834	7f 	 
	ld a,a			;8835	7f 	 
	nop			;8836	00 	. 
	nop			;8837	00 	. 
	nop			;8838	00 	. 
	dec e			;8839	1d 	. 
	rst 30h			;883a	f7 	. 
	adc a,b			;883b	88 	. 
	dec c			;883c	0d 	. 
	ei			;883d	fb 	. 
	inc b			;883e	04 	. 
	dec b			;883f	05 	. 
	rst 38h			;8840	ff 	. 
	ret nz			;8841	c0 	. 
	ld bc,0f03fh		;8842	01 3f f0 	. ? . 
	ld b,001h		;8845	06 01 	. . 
	ld sp,hl			;8847	f9 	. 
	nop			;8848	00 	. 
	nop			;8849	00 	. 
	rst 38h			;884a	ff 	. 
	nop			;884b	00 	. 
	rlca			;884c	07 	. 
	rst 38h			;884d	ff 	. 
	nop			;884e	00 	. 
	ret m			;884f	f8 	. 
	ret m			;8850	f8 	. 
	ld l,073h		;8851	2e 73 	. s 
	ld d,b			;8853	50 	P 
	ld a,(hl)			;8854	7e 	~ 
	ex (sp),hl			;8855	e3 	. 
	add a,b			;8856	80 	. 
	ld a,(hl)			;8857	7e 	~ 
	rst 38h			;8858	ff 	. 
	add a,b			;8859	80 	. 
	cp (hl)			;885a	be 	. 
	ld a,a			;885b	7f 	 
l885ch:
	ld b,b			;885c	40 	@ 
	add a,b			;885d	80 	. 
	ccf			;885e	3f 	? 
	ld a,a			;885f	7f 	 
	inc bc			;8860	03 	. 
	rst 38h			;8861	ff 	. 
	call m,00703h		;8862	fc 03 07 	. . . 
	inc b			;8865	04 	. 
	nop			;8866	00 	. 
	inc bc			;8867	03 	. 
	inc bc			;8868	03 	. 
	ret po			;8869	e0 	. 
	cp h			;886a	bc 	. 
	ld b,h			;886b	44 	D 
	ret nz			;886c	c0 	. 
	ld a,(hl)			;886d	7e 	~ 
	add a,d			;886e	82 	. 
	add a,b			;886f	80 	. 
l8870h:
	rst 38h			;8870	ff 	. 
	rrca			;8871	0f 	. 
	nop			;8872	00 	. 
	ret p			;8873	f0 	. 
	ccf			;8874	3f 	? 
	and b			;8875	a0 	. 
	nop			;8876	00 	. 
	ld e,a			;8877	5f 	_ 
	ret nz			;8878	c0 	. 
	nop			;8879	00 	. 
	ccf			;887a	3f 	? 
	add a,b			;887b	80 	. 
	inc bc			;887c	03 	. 
	ld a,a			;887d	7f 	 
	nop			;887e	00 	. 
	call m,00efch		;887f	fc fc 0e 	. . . 
	ld a,e			;8882	7b 	{ 
	ld b,h			;8883	44 	D 
	ld b,0fdh		;8884	06 fd 	. . 
	add a,d			;8886	82 	. 
	ld (bc),a			;8887	02 	. 
	rst 38h			;8888	ff 	. 
	ret po			;8889	e0 	. 
	nop			;888a	00 	. 
	rra			;888b	1f 	. 
	ret m			;888c	f8 	. 
	ld a,(bc)			;888d	0a 	. 
	ld bc,007f5h		;888e	01 f5 07 	. . . 
	ld bc,003f8h		;8891	01 f8 03 	. . . 
	add a,c			;8894	81 	. 
	call m,07f00h		;8895	fc 00 7f 	. .  
	ld a,a			;8898	7f 	 
	ret pe			;8899	e8 	. 
	sbc a,h			;889a	9c 	. 
	inc d			;889b	14 	. 
	call m,0038fh		;889c	fc 8f 03 	. . . 
	defb 0fdh,0ffh,002h	;illegal sequence		;889f	fd ff 02 	. . . 
	ei			;88a2	fb 	. 
	defb 0fdh,004h,003h	;illegal sequence		;88a3	fd 04 03 	. . . 
	ld sp,hl			;88a6	f9 	. 
l88a7h:
	call m,0ff81h		;88a7	fc 81 ff 	. . . 
	ld a,(hl)			;88aa	7e 	~ 
	add a,b			;88ab	80 	. 
	pop bc			;88ac	c1 	. 
	ld b,c			;88ad	41 	A 
	nop			;88ae	00 	. 
	add a,b			;88af	80 	. 
	add a,b			;88b0	80 	. 
	nop			;88b1	00 	. 
	rlca			;88b2	07 	. 
	rlca			;88b3	07 	. 
	nop			;88b4	00 	. 
	rra			;88b5	1f 	. 
	jr l88b8h		;88b6	18 00 	. . 
l88b8h:
	ccf			;88b8	3f 	? 
	jr nz,l88bbh		;88b9	20 00 	  . 
l88bbh:
	ld a,a			;88bb	7f 	 
	ld b,b			;88bc	40 	@ 
	inc c			;88bd	0c 	. 
	ld a,a			;88be	7f 	 
	ld b,b			;88bf	40 	@ 
	rra			;88c0	1f 	. 
	rst 38h			;88c1	ff 	. 
	add a,b			;88c2	80 	. 
	ccf			;88c3	3f 	? 
	call pe,01d80h		;88c4	ec 80 1d 	. . . 
	ld l,(hl)			;88c7	6e 	n 
l88c8h:
	ld h,d			;88c8	62 	b 
	nop			;88c9	00 	. 
	ret po			;88ca	e0 	. 
	ret po			;88cb	e0 	. 
	nop			;88cc	00 	. 
	ret m			;88cd	f8 	. 
	jr l88d0h		;88ce	18 00 	. . 
l88d0h:
	call m,00004h		;88d0	fc 04 00 	. . . 
	call m,01804h		;88d3	fc 04 18 	. . . 
	cp 006h		;88d6	fe 06 	. . 
	jr c,l88c8h		;88d8	38 ee 	8 . 
	ld (de),a			;88da	12 	. 
	sbc a,b			;88db	98 	. 
	xor 012h		;88dc	ee 12 	. . 
	ret c			;88de	d8 	. 
	ld l,(hl)			;88df	6e 	n 
	ld (de),a			;88e0	12 	. 
	ld c,037h		;88e1	0e 37 	. 7 
	ld sp,0663fh		;88e3	31 3f 66 	1 ? f 
	ld b,b			;88e6	40 	@ 
	ccf			;88e7	3f 	? 
	ld (hl),e			;88e8	73 	s 
	ld c,h			;88e9	4c 	L 
	ld e,a			;88ea	5f 	_ 
	rst 38h			;88eb	ff 	. 
	and b			;88ec	a0 	. 
	ld h,b			;88ed	60 	` 
	rst 38h			;88ee	ff 	. 
	sbc a,a			;88ef	9f 	. 
	ld (hl),e			;88f0	73 	s 
	ex (sp),hl			;88f1	e3 	. 
	adc a,a			;88f2	8f 	. 
	inc bc			;88f3	03 	. 
	ld a,e			;88f4	7b 	{ 
	ld a,a			;88f5	7f 	 
	nop			;88f6	00 	. 
	ex af,af'			;88f7	08 	. 
	rrca			;88f8	0f 	. 
	call pe,00937h		;88f9	ec 37 09 	. 7 . 
	ret pe			;88fc	e8 	. 
	ccf			;88fd	3f 	? 
	ld bc,0ffe0h		;88fe	01 e0 ff 	. . . 
	ld bc,0fec0h		;8901	01 c0 fe 	. . . 
	ld b,030h		;8904	06 30 	. 0 
	call nz,008cch		;8906	c4 cc 08 	. . . 
	ld (bc),a			;8909	02 	. 
	or 01ch		;890a	f6 1c 	. . 
	ld (01ce2h),hl		;890c	22 e2 1c 	" . . 
	ld a,0e2h		;890f	3e e2 	> . 
	nop			;8911	00 	. 
	jr nz,l8953h		;8912	20 3f 	  ? 
	nop			;8914	00 	. 
	jr nz,$+65		;8915	20 3f 	  ? 
	nop			;8917	00 	. 
	inc h			;8918	24 	$ 
	ccf			;8919	3f 	? 
	nop			;891a	00 	. 
	ld h,03fh		;891b	26 3f 	& ? 
	jr c,l899ch		;891d	38 7d 	8 } 
	ld a,l			;891f	7d 	} 
	ld a,b			;8920	78 	x 
	defb 0fdh,0fdh,000h	;illegal sequence		;8921	fd fd 00 	. . . 
	ret m			;8924	f8 	. 
	ret m			;8925	f8 	. 
	nop			;8926	00 	. 
	nop			;8927	00 	. 
	nop			;8928	00 	. 
	nop			;8929	00 	. 
	rlca			;892a	07 	. 
	rlca			;892b	07 	. 
	nop			;892c	00 	. 
	rra			;892d	1f 	. 
	jr l8930h		;892e	18 00 	. . 
l8930h:
	ccf			;8930	3f 	? 
	jr nz,l8933h		;8931	20 00 	  . 
l8933h:
	ld a,a			;8933	7f 	 
	ld b,b			;8934	40 	@ 
	inc c			;8935	0c 	. 
	ld a,a			;8936	7f 	 
	ld b,b			;8937	40 	@ 
	rra			;8938	1f 	. 
	rst 38h			;8939	ff 	. 
	add a,b			;893a	80 	. 
	ccf			;893b	3f 	? 
	call pe,03f80h		;893c	ec 80 3f 	. . ? 
	ld c,h			;893f	4c 	L 
	ld b,b			;8940	40 	@ 
	ld c,037h		;8941	0e 37 	. 7 
	ld sp,0772eh		;8943	31 2e 77 	1 . w 
	ld d,c			;8946	51 	Q 
	ccf			;8947	3f 	? 
	ld (hl),e			;8948	73 	s 
	ld c,h			;8949	4c 	L 
	rra			;894a	1f 	. 
	ccf			;894b	3f 	? 
	jr nz,l894eh		;894c	20 00 	  . 
l894eh:
	rra			;894e	1f 	. 
	rra			;894f	1f 	. 
	dec bc			;8950	0b 	. 
	ld (hl),e			;8951	73 	s 
	ld (hl),a			;8952	77 	w 
l8953h:
	ld (hl),e			;8953	73 	s 
	jp 0708fh		;8954	c3 8f 70 	. . p 
	ret pe			;8957	e8 	. 
	adc a,a			;8958	8f 	. 
	call pe,00937h		;8959	ec 37 09 	. 7 . 
	ret pe			;895c	e8 	. 
	ccf			;895d	3f 	? 
	ld bc,0ffe0h		;895e	01 e0 ff 	. . . 
	ld bc,0fec0h		;8961	01 c0 fe 	. . . 
	ld b,018h		;8964	06 18 	. . 
	call nz,004e4h		;8966	c4 e4 04 	. . . 
	ld (bc),a			;8969	02 	. 
	jp m,06208h		;896a	fa 08 62 	. . b 
	or 070h		;896d	f6 70 	. p 
	jp po,0708eh		;896f	e2 8e 70 	. . p 
	ret pe			;8972	e8 	. 
	adc a,a			;8973	8f 	. 
	nop			;8974	00 	. 
	ld a,b			;8975	78 	x 
	ld a,a			;8976	7f 	 
	nop			;8977	00 	. 
	add hl,bc			;8978	09 	. 
	rrca			;8979	0f 	. 
	nop			;897a	00 	. 
	add hl,bc			;897b	09 	. 
	rrca			;897c	0f 	. 
	ld c,01fh		;897d	0e 1f 	. . 
	rra			;897f	1f 	. 
	ld e,03fh		;8980	1e 3f 	. ? 
	ccf			;8982	3f 	? 
	nop			;8983	00 	. 
	ld a,03eh		;8984	3e 3e 	> > 
	nop			;8986	00 	. 
	nop			;8987	00 	. 
	nop			;8988	00 	. 
	ld a,b			;8989	78 	x 
l898ah:
	call p,03084h		;898a	f4 84 30 	. . 0 
	ld a,b			;898d	78 	x 
	ret z			;898e	c8 	. 
	nop			;898f	00 	. 
	jr c,l898ah		;8990	38 f8 	8 . 
	nop			;8992	00 	. 
	adc a,b			;8993	88 	. 
	ret m			;8994	f8 	. 
	jr c,l8a13h		;8995	38 7c 	8 | 
	ld a,h			;8997	7c 	| 
	inc a			;8998	3c 	< 
	ld a,(hl)			;8999	7e 	~ 
	ld a,(hl)			;899a	7e 	~ 
	nop			;899b	00 	. 
l899ch:
	ld a,03eh		;899c	3e 3e 	> > 
	nop			;899e	00 	. 
	nop			;899f	00 	. 
	nop			;89a0	00 	. 
	nop			;89a1	00 	. 
	rrca			;89a2	0f 	. 
	rrca			;89a3	0f 	. 
	nop			;89a4	00 	. 
	ccf			;89a5	3f 	? 
	jr nc,l89a8h		;89a6	30 00 	0 . 
l89a8h:
	ld a,a			;89a8	7f 	 
	ld b,b			;89a9	40 	@ 
	nop			;89aa	00 	. 
	ld a,a			;89ab	7f 	 
	ld b,b			;89ac	40 	@ 
	jr nc,$+1		;89ad	30 ff 	0 . 
	ret nz			;89af	c0 	. 
	add hl,sp			;89b0	39 	9 
	rst 28h			;89b1	ef 	. 
	sub b			;89b2	90 	. 
	inc sp			;89b3	33 	3 
	xor 090h		;89b4	ee 90 	. . 
	scf			;89b6	37 	7 
	call pe,00090h		;89b7	ec 90 00 	. . . 
	ret nz			;89ba	c0 	. 
	ret nz			;89bb	c0 	. 
	nop			;89bc	00 	. 
	ret p			;89bd	f0 	. 
	jr nc,l89c0h		;89be	30 00 	0 . 
l89c0h:
	ret m			;89c0	f8 	. 
	ex af,af'			;89c1	08 	. 
	nop			;89c2	00 	. 
	call m,06004h		;89c3	fc 04 60 	. . ` 
	call m,0f004h		;89c6	fc 04 f0 	. . . 
	cp 002h		;89c9	fe 02 	. . 
	ret m			;89cb	f8 	. 
	ld l,(hl)			;89cc	6e 	n 
	ld (bc),a			;89cd	02 	. 
	ld (hl),b			;89ce	70 	p 
	call pe,0378ch		;89cf	ec 8c 37 	. . 7 
	call pe,01790h		;89d2	ec 90 17 	. . . 
	call m,00780h		;89d5	fc 80 07 	. . . 
	rst 38h			;89d8	ff 	. 
	add a,b			;89d9	80 	. 
	inc bc			;89da	03 	. 
	ld a,a			;89db	7f 	 
	ld h,b			;89dc	60 	` 
	inc c			;89dd	0c 	. 
	inc hl			;89de	23 	# 
	inc sp			;89df	33 	3 
	djnz l8a22h		;89e0	10 40 	. @ 
	ld l,a			;89e2	6f 	o 
	jr c,l8a29h		;89e3	38 44 	8 D 
	ld b,a			;89e5	47 	G 
	jr c,l8a64h		;89e6	38 7c 	8 | 
	ld b,a			;89e8	47 	G 
	ld (hl),b			;89e9	70 	p 
l89eah:
	call pe,0fc8ch		;89ea	ec 8c fc 	. . . 
l89edh:
	ld h,(hl)			;89ed	66 	f 
	ld (bc),a			;89ee	02 	. 
	call m,032ceh		;89ef	fc ce 32 	. . 2 
	jp m,005ffh		;89f2	fa ff 05 	. . . 
	ld b,0ffh		;89f5	06 ff 	. . 
	ld sp,hl			;89f7	f9 	. 
	adc a,0c7h		;89f8	ce c7 	. . 
	pop af			;89fa	f1 	. 
	ret nz			;89fb	c0 	. 
	sbc a,0feh		;89fc	de fe 	. . 
	nop			;89fe	00 	. 
	djnz $-14		;89ff	10 f0 	. . 
	nop			;8a01	00 	. 
	jr nz,$-30		;8a02	20 e0 	  . 
	nop			;8a04	00 	. 
	jr nz,$-30		;8a05	20 e0 	  . 
	nop			;8a07	00 	. 
	jr nz,l89eah		;8a08	20 e0 	  . 
	nop			;8a0a	00 	. 
	jr nz,l89edh		;8a0b	20 e0 	  . 
	ret po			;8a0d	e0 	. 
	ret p			;8a0e	f0 	. 
	ret p			;8a0f	f0 	. 
	ret p			;8a10	f0 	. 
	ret m			;8a11	f8 	. 
	ret m			;8a12	f8 	. 
l8a13h:
	nop			;8a13	00 	. 
	ret m			;8a14	f8 	. 
	ret m			;8a15	f8 	. 
	nop			;8a16	00 	. 
	nop			;8a17	00 	. 
	nop			;8a18	00 	. 
	nop			;8a19	00 	. 
	ret nz			;8a1a	c0 	. 
	ret nz			;8a1b	c0 	. 
	nop			;8a1c	00 	. 
	ret p			;8a1d	f0 	. 
	jr nc,l8a20h		;8a1e	30 00 	0 . 
l8a20h:
	ret m			;8a20	f8 	. 
	ex af,af'			;8a21	08 	. 
l8a22h:
	nop			;8a22	00 	. 
	call m,06004h		;8a23	fc 04 60 	. . ` 
	call m,0f004h		;8a26	fc 04 f0 	. . . 
l8a29h:
	cp 002h		;8a29	fe 02 	. . 
	ret m			;8a2b	f8 	. 
	ld l,(hl)			;8a2c	6e 	n 
	ld (bc),a			;8a2d	02 	. 
	ret m			;8a2e	f8 	. 
	ld h,h			;8a2f	64 	d 
	inc b			;8a30	04 	. 
	scf			;8a31	37 	7 
	call pe,01790h		;8a32	ec 90 17 	. . . 
	call m,00780h		;8a35	fc 80 07 	. . . 
	rst 38h			;8a38	ff 	. 
	add a,b			;8a39	80 	. 
	inc bc			;8a3a	03 	. 
	ld a,a			;8a3b	7f 	 
l8a3ch:
	ld h,b			;8a3c	60 	` 
	jr l8a62h		;8a3d	18 23 	. # 
	daa			;8a3f	27 	' 
	jr nz,l8a82h		;8a40	20 40 	  @ 
	ld e,a			;8a42	5f 	_ 
	djnz l8a8bh		;8a43	10 46 	. F 
	ld l,a			;8a45	6f 	o 
	ld c,047h		;8a46	0e 47 	. G 
	ld (hl),c			;8a48	71 	q 
	ld (hl),b			;8a49	70 	p 
	call pe,0748ch		;8a4a	ec 8c 74 	. . t 
	xor 08ah		;8a4d	ee 8a 	. . 
	call m,032ceh		;8a4f	fc ce 32 	. . 2 
	ret m			;8a52	f8 	. 
	call m,00004h		;8a53	fc 04 00 	. . . 
	ret m			;8a56	f8 	. 
	ret m			;8a57	f8 	. 
	ret nc			;8a58	d0 	. 
	adc a,0eeh		;8a59	ce ee 	. . 
	adc a,0c3h		;8a5b	ce c3 	. . 
	pop af			;8a5d	f1 	. 
	ld c,017h		;8a5e	0e 17 	. . 
	pop af			;8a60	f1 	. 
	inc a			;8a61	3c 	< 
l8a62h:
	ld e,(hl)			;8a62	5e 	^ 
	ld b,e			;8a63	43 	C 
l8a64h:
	jr l8aa2h		;8a64	18 3c 	. < 
	daa			;8a66	27 	' 
	nop			;8a67	00 	. 
	add hl,sp			;8a68	39 	9 
	ccf			;8a69	3f 	? 
	nop			;8a6a	00 	. 
	inc hl			;8a6b	23 	# 
	ccf			;8a6c	3f 	? 
	jr c,l8aech		;8a6d	38 7d 	8 } 
	ld a,l			;8a6f	7d 	} 
	ld a,b			;8a70	78 	x 
	defb 0fdh,0fdh,000h	;illegal sequence		;8a71	fd fd 00 	. . . 
	ret m			;8a74	f8 	. 
	ret m			;8a75	f8 	. 
	nop			;8a76	00 	. 
	nop			;8a77	00 	. 
	nop			;8a78	00 	. 
	inc e			;8a79	1c 	. 
	ld l,0e2h		;8a7a	2e e2 	. . 
	nop			;8a7c	00 	. 
	inc a			;8a7d	3c 	< 
	call m,02000h		;8a7e	fc 00 20 	. .   
	ret po			;8a81	e0 	. 
l8a82h:
	nop			;8a82	00 	. 
	jr nz,$-30		;8a83	20 e0 	  . 
	ret po			;8a85	e0 	. 
	ret p			;8a86	f0 	. 
	ret p			;8a87	f0 	. 
	ret p			;8a88	f0 	. 
	ret m			;8a89	f8 	. 
	ret m			;8a8a	f8 	. 
l8a8bh:
	nop			;8a8b	00 	. 
	ret m			;8a8c	f8 	. 
	ret m			;8a8d	f8 	. 
	nop			;8a8e	00 	. 
	nop			;8a8f	00 	. 
	nop			;8a90	00 	. 
	nop			;8a91	00 	. 
	nop			;8a92	00 	. 
	nop			;8a93	00 	. 
	nop			;8a94	00 	. 
	nop			;8a95	00 	. 
	nop			;8a96	00 	. 
	nop			;8a97	00 	. 
	ld c,00eh		;8a98	0e 0e 	. . 
	ld c,03fh		;8a9a	0e 3f 	. ? 
	ld sp,07f3fh		;8a9c	31 3f 7f 	1 ?  
	ld b,b			;8a9f	40 	@ 
	ld a,a			;8aa0	7f 	 
	rst 38h			;8aa1	ff 	. 
l8aa2h:
	add a,b			;8aa2	80 	. 
l8aa3h:
	rst 38h			;8aa3	ff 	. 
	rst 38h			;8aa4	ff 	. 
	nop			;8aa5	00 	. 
	rst 38h			;8aa6	ff 	. 
	rst 38h			;8aa7	ff 	. 
	nop			;8aa8	00 	. 
	nop			;8aa9	00 	. 
	nop			;8aaa	00 	. 
	nop			;8aab	00 	. 
	nop			;8aac	00 	. 
	nop			;8aad	00 	. 
	nop			;8aae	00 	. 
	nop			;8aaf	00 	. 
	nop			;8ab0	00 	. 
	nop			;8ab1	00 	. 
	nop			;8ab2	00 	. 
	add a,b			;8ab3	80 	. 
	add a,b			;8ab4	80 	. 
l8ab5h:
	add a,b			;8ab5	80 	. 
	ret nz			;8ab6	c0 	. 
	ld b,b			;8ab7	40 	@ 
	ret nz			;8ab8	c0 	. 
	ret po			;8ab9	e0 	. 
	jr nz,l8a3ch		;8aba	20 80 	  . 
	ret po			;8abc	e0 	. 
l8abdh:
	ld h,b			;8abd	60 	` 
l8abeh:
	ret nz			;8abe	c0 	. 
	ret p			;8abf	f0 	. 
l8ac0h:
	jr nc,l8ab5h		;8ac0	30 f3 	0 . 
	rst 38h			;8ac2	ff 	. 
	inc c			;8ac3	0c 	. 
	call pe,013ffh		;8ac4	ec ff 13 	. . . 
	rst 28h			;8ac7	ef 	. 
	rst 38h			;8ac8	ff 	. 
	djnz l8abeh		;8ac9	10 f3 	. . 
	rst 38h			;8acb	ff 	. 
	inc c			;8acc	0c 	. 
	ld a,h			;8acd	7c 	| 
	rst 38h			;8ace	ff 	. 
	add a,e			;8acf	83 	. 
	inc e			;8ad0	1c 	. 
	ld a,(hl)			;8ad1	7e 	~ 
	ld h,d			;8ad2	62 	b 
	nop			;8ad3	00 	. 
	inc e			;8ad4	1c 	. 
	inc e			;8ad5	1c 	. 
	nop			;8ad6	00 	. 
	nop			;8ad7	00 	. 
	nop			;8ad8	00 	. 
	ret po			;8ad9	e0 	. 
	ret p			;8ada	f0 	. 
	djnz l8abdh		;8adb	10 e0 	. . 
	ret p			;8add	f0 	. 
	djnz l8ac0h		;8ade	10 e0 	. . 
	ret p			;8ae0	f0 	. 
	djnz l8aa3h		;8ae1	10 c0 	. . 
	ret po			;8ae3	e0 	. 
	jr nz,l8ae6h		;8ae4	20 00 	  . 
l8ae6h:
	ret nz			;8ae6	c0 	. 
	ret nz			;8ae7	c0 	. 
	nop			;8ae8	00 	. 
	nop			;8ae9	00 	. 
	nop			;8aea	00 	. 
	nop			;8aeb	00 	. 
l8aech:
	nop			;8aec	00 	. 
	nop			;8aed	00 	. 
	nop			;8aee	00 	. 
	nop			;8aef	00 	. 
	nop			;8af0	00 	. 
	nop			;8af1	00 	. 
	nop			;8af2	00 	. 
	nop			;8af3	00 	. 
	nop			;8af4	00 	. 
	nop			;8af5	00 	. 
l8af6h:
	nop			;8af6	00 	. 
	nop			;8af7	00 	. 
	rrca			;8af8	0f 	. 
	rrca			;8af9	0f 	. 
	rrca			;8afa	0f 	. 
	ccf			;8afb	3f 	? 
	jr nc,l8b3dh		;8afc	30 3f 	0 ? 
	ld a,a			;8afe	7f 	 
	ld b,b			;8aff	40 	@ 
	ld a,a			;8b00	7f 	 
	rst 38h			;8b01	ff 	. 
	add a,b			;8b02	80 	. 
	rst 38h			;8b03	ff 	. 
	rst 38h			;8b04	ff 	. 
	nop			;8b05	00 	. 
	rst 38h			;8b06	ff 	. 
	rst 38h			;8b07	ff 	. 
	nop			;8b08	00 	. 
	nop			;8b09	00 	. 
	nop			;8b0a	00 	. 
	nop			;8b0b	00 	. 
	nop			;8b0c	00 	. 
	nop			;8b0d	00 	. 
	nop			;8b0e	00 	. 
	nop			;8b0f	00 	. 
	nop			;8b10	00 	. 
	nop			;8b11	00 	. 
	nop			;8b12	00 	. 
	add a,b			;8b13	80 	. 
	add a,b			;8b14	80 	. 
	add a,b			;8b15	80 	. 
	cp 07eh		;8b16	fe 7e 	. ~ 
	cp 0ffh		;8b18	fe ff 	. . 
	ld bc,0fffeh		;8b1a	01 fe ff 	. . . 
	ld bc,0fe80h		;8b1d	01 80 fe 	. . . 
	ld a,(hl)			;8b20	7e 	~ 
	rst 38h			;8b21	ff 	. 
	rst 38h			;8b22	ff 	. 
	nop			;8b23	00 	. 
	ex (sp),hl			;8b24	e3 	. 
	rst 38h			;8b25	ff 	. 
	inc e			;8b26	1c 	. 
	call pe,013ffh		;8b27	ec ff 13 	. . . 
	jp p,00dffh		;8b2a	f2 ff 0d 	. . . 
	ld a,h			;8b2d	7c 	| 
	cp 082h		;8b2e	fe 82 	. . 
	inc e			;8b30	1c 	. 
	ld a,(hl)			;8b31	7e 	~ 
	ld h,d			;8b32	62 	b 
	nop			;8b33	00 	. 
	inc e			;8b34	1c 	. 
l8b35h:
	inc e			;8b35	1c 	. 
	nop			;8b36	00 	. 
	nop			;8b37	00 	. 
	nop			;8b38	00 	. 
	ret po			;8b39	e0 	. 
	ret m			;8b3a	f8 	. 
	jr l8b35h		;8b3b	18 f8 	. . 
l8b3dh:
	cp 006h		;8b3d	fe 06 	. . 
	ld a,(hl)			;8b3f	7e 	~ 
	rst 38h			;8b40	ff 	. 
	add a,c			;8b41	81 	. 
	ld c,07fh		;8b42	0e 7f 	.  
	ld (hl),c			;8b44	71 	q 
	nop			;8b45	00 	. 
	ld c,00eh		;8b46	0e 0e 	. . 
	nop			;8b48	00 	. 
	nop			;8b49	00 	. 
	nop			;8b4a	00 	. 
	nop			;8b4b	00 	. 
	nop			;8b4c	00 	. 
	nop			;8b4d	00 	. 
	nop			;8b4e	00 	. 
	nop			;8b4f	00 	. 
	nop			;8b50	00 	. 
	nop			;8b51	00 	. 
	jr l8b6ch		;8b52	18 18 	. . 
	jr l8b92h		;8b54	18 3c 	. < 
	inc h			;8b56	24 	$ 
	jr l8b98h		;8b57	18 3f 	. ? 
	daa			;8b59	27 	' 
	ld sp,04e7fh		;8b5a	31 7f 4e 	1  N 
	scf			;8b5d	37 	7 
	ld a,a			;8b5e	7f 	 
	ld c,b			;8b5f	48 	H 
	ld a,(hl)			;8b60	7e 	~ 
	rst 38h			;8b61	ff 	. 
	add a,c			;8b62	81 	. 
	rst 38h			;8b63	ff 	. 
	rst 38h			;8b64	ff 	. 
	nop			;8b65	00 	. 
l8b66h:
	rst 38h			;8b66	ff 	. 
	rst 38h			;8b67	ff 	. 
	nop			;8b68	00 	. 
	nop			;8b69	00 	. 
	jr nc,l8b9ch		;8b6a	30 30 	0 0 
l8b6ch:
	jr nc,l8b66h		;8b6c	30 f8 	0 . 
	ret z			;8b6e	c8 	. 
	ret p			;8b6f	f0 	. 
	ret m			;8b70	f8 	. 
	ex af,af'			;8b71	08 	. 
	ret nz			;8b72	c0 	. 
	ret p			;8b73	f0 	. 
	jr nc,l8af6h		;8b74	30 80 	0 . 
	call c,01c5ch		;8b76	dc 5c 1c 	. \ . 
	cp 0e2h		;8b79	fe e2 	. . 
	call m,002feh		;8b7b	fc fe 02 	. . . 
	ret po			;8b7e	e0 	. 
	call m,0fe1ch		;8b7f	fc 1c fe 	. . . 
	rst 38h			;8b82	ff 	. 
	ld bc,0ffffh		;8b83	01 ff ff 	. . . 
	nop			;8b86	00 	. 
	rst 38h			;8b87	ff 	. 
	rst 38h			;8b88	ff 	. 
	nop			;8b89	00 	. 
	pop af			;8b8a	f1 	. 
	rst 38h			;8b8b	ff 	. 
	ld c,078h		;8b8c	0e 78 	. x 
	defb 0fdh,085h	;add a,iyl		;8b8e	fd 85 	. . 
	inc a			;8b90	3c 	< 
	ld a,(hl)			;8b91	7e 	~ 
l8b92h:
	ld b,d			;8b92	42 	B 
	inc e			;8b93	1c 	. 
	ld a,022h		;8b94	3e 22 	> " 
	nop			;8b96	00 	. 
	inc e			;8b97	1c 	. 
l8b98h:
	inc e			;8b98	1c 	. 
	nop			;8b99	00 	. 
	ret po			;8b9a	e0 	. 
l8b9bh:
	ret po			;8b9b	e0 	. 
l8b9ch:
	nop			;8b9c	00 	. 
	ret nz			;8b9d	c0 	. 
	ret nz			;8b9e	c0 	. 
	ret nz			;8b9f	c0 	. 
	ret m			;8ba0	f8 	. 
	jr c,l8b9bh		;8ba1	38 f8 	8 . 
	call m,03804h		;8ba3	fc 04 38 	. . 8 
	call m,000c4h		;8ba6	fc c4 00 	. . . 
	jr c,l8be3h		;8ba9	38 38 	8 8 
	nop			;8bab	00 	. 
	nop			;8bac	00 	. 
	nop			;8bad	00 	. 
	nop			;8bae	00 	. 
	nop			;8baf	00 	. 
	nop			;8bb0	00 	. 
	rla			;8bb1	17 	. 
	add hl,sp			;8bb2	39 	9 
	jr z,l8bf4h		;8bb3	28 3f 	( ? 
	ld (hl),c			;8bb5	71 	q 
	ld b,b			;8bb6	40 	@ 
	ccf			;8bb7	3f 	? 
	ld a,a			;8bb8	7f 	 
	ld b,b			;8bb9	40 	@ 
	rra			;8bba	1f 	. 
	ld a,a			;8bbb	7f 	 
	ld h,b			;8bbc	60 	` 
	ld h,b			;8bbd	60 	` 
	rst 38h			;8bbe	ff 	. 
	sbc a,a			;8bbf	9f 	. 
	ld (hl),c			;8bc0	71 	q 
	ex (sp),hl			;8bc1	e3 	. 
	adc a,a			;8bc2	8f 	. 
	ld (bc),a			;8bc3	02 	. 
	ld a,(hl)			;8bc4	7e 	~ 
	ld a,a			;8bc5	7f 	 
	nop			;8bc6	00 	. 
	ld h,h			;8bc7	64 	d 
	ld h,a			;8bc8	67 	g 
	ld (hl),b			;8bc9	70 	p 
	sbc a,022h		;8bca	de 22 	. " 
	ld h,b			;8bcc	60 	` 
	cp a			;8bcd	bf 	. 
	ld b,c			;8bce	41 	A 
	ld b,b			;8bcf	40 	@ 
	cp 03eh		;8bd0	fe 3e 	. > 
	inc c			;8bd2	0c 	. 
	add a,0f2h		;8bd3	c6 f2 	. . 
	cp 007h		;8bd5	fe 07 	. . 
	ld bc,0070eh		;8bd7	01 0e 07 	. . . 
	pop af			;8bda	f1 	. 
	nop			;8bdb	00 	. 
	ld a,0feh		;8bdc	3e fe 	> . 
	nop			;8bde	00 	. 
	ex af,af'			;8bdf	08 	. 
	ret m			;8be0	f8 	. 
	ld b,b			;8be1	40 	@ 
	ret m			;8be2	f8 	. 
l8be3h:
	rst 38h			;8be3	ff 	. 
	ld h,b			;8be4	60 	` 
	ret po			;8be5	e0 	. 
	rst 38h			;8be6	ff 	. 
	ld h,b			;8be7	60 	` 
	ret po			;8be8	e0 	. 
	rst 38h			;8be9	ff 	. 
	ld h,b			;8bea	60 	` 
	ex (sp),hl			;8beb	e3 	. 
	rst 38h			;8bec	ff 	. 
	nop			;8bed	00 	. 
	ld a,h			;8bee	7c 	| 
	ld a,h			;8bef	7c 	| 
	nop			;8bf0	00 	. 
	nop			;8bf1	00 	. 
	nop			;8bf2	00 	. 
	nop			;8bf3	00 	. 
l8bf4h:
	nop			;8bf4	00 	. 
	nop			;8bf5	00 	. 
	nop			;8bf6	00 	. 
	nop			;8bf7	00 	. 
	nop			;8bf8	00 	. 
	nop			;8bf9	00 	. 
	jr l8bf4h		;8bfa	18 f8 	. . 
	ex af,af'			;8bfc	08 	. 
	inc a			;8bfd	3c 	< 
	call m,07c18h		;8bfe	fc 18 7c 	. . | 
	call m,09c18h		;8c01	fc 18 9c 	. . . 
	call m,07c08h		;8c04	fc 08 7c 	. . | 
	ld a,h			;8c07	7c 	| 
	nop			;8c08	00 	. 
	inc c			;8c09	0c 	. 
	inc c			;8c0a	0c 	. 
	nop			;8c0b	00 	. 
	nop			;8c0c	00 	. 
	nop			;8c0d	00 	. 
	nop			;8c0e	00 	. 
	nop			;8c0f	00 	. 
	nop			;8c10	00 	. 
	ld c,07bh		;8c11	0e 7b 	. { 
	ld b,h			;8c13	44 	D 
	ld b,0fdh		;8c14	06 fd 	. . 
	add a,d			;8c16	82 	. 
	ld (bc),a			;8c17	02 	. 
	ld a,a			;8c18	7f 	 
	ld a,h			;8c19	7c 	| 
	jr nc,$+101		;8c1a	30 63 	0 c 
	ld c,a			;8c1c	4f 	O 
	ld a,a			;8c1d	7f 	 
	ret po			;8c1e	e0 	. 
	add a,b			;8c1f	80 	. 
	ld (hl),b			;8c20	70 	p 
	ret po			;8c21	e0 	. 
	adc a,a			;8c22	8f 	. 
	nop			;8c23	00 	. 
	ld a,h			;8c24	7c 	| 
	ld a,a			;8c25	7f 	 
	nop			;8c26	00 	. 
	djnz l8c48h		;8c27	10 1f 	. . 
	ret pe			;8c29	e8 	. 
	sbc a,h			;8c2a	9c 	. 
	inc d			;8c2b	14 	. 
	call m,0028eh		;8c2c	fc 8e 02 	. . . 
	call m,002feh		;8c2f	fc fe 02 	. . . 
	ret m			;8c32	f8 	. 
	cp 006h		;8c33	fe 06 	. . 
	ld b,0ffh		;8c35	06 ff 	. . 
	ld sp,hl			;8c37	f9 	. 
	adc a,(hl)			;8c38	8e 	. 
	rst 0			;8c39	c7 	. 
	pop af			;8c3a	f1 	. 
	ld b,b			;8c3b	40 	@ 
	ld a,(hl)			;8c3c	7e 	~ 
	cp 000h		;8c3d	fe 00 	. . 
	ld h,0e6h		;8c3f	26 e6 	& . 
	nop			;8c41	00 	. 
	ld h,b			;8c42	60 	` 
l8c43h:
	ld a,a			;8c43	7f 	 
	ld b,b			;8c44	40 	@ 
	ret p			;8c45	f0 	. 
l8c46h:
	rst 38h			;8c46	ff 	. 
	ld h,b			;8c47	60 	` 
l8c48h:
	ret m			;8c48	f8 	. 
	rst 38h			;8c49	ff 	. 
	ld h,b			;8c4a	60 	` 
	rst 20h			;8c4b	e7 	. 
	rst 38h			;8c4c	ff 	. 
	ld b,b			;8c4d	40 	@ 
	ret m			;8c4e	f8 	. 
	ret m			;8c4f	f8 	. 
	nop			;8c50	00 	. 
	ret nz			;8c51	c0 	. 
	ret nz			;8c52	c0 	. 
	nop			;8c53	00 	. 
	nop			;8c54	00 	. 
	nop			;8c55	00 	. 
	nop			;8c56	00 	. 
	nop			;8c57	00 	. 
	nop			;8c58	00 	. 
	ex af,af'			;8c59	08 	. 
	ld a,h			;8c5a	7c 	| 
	call m,01c18h		;8c5b	fc 18 1c 	. . . 
	call m,01c18h		;8c5e	fc 18 1c 	. . . 
	call m,01c18h		;8c61	fc 18 1c 	. . . 
	call m,0f800h		;8c64	fc 00 f8 	. . . 
	ret m			;8c67	f8 	. 
	nop			;8c68	00 	. 
	nop			;8c69	00 	. 
	nop			;8c6a	00 	. 
	nop			;8c6b	00 	. 
	nop			;8c6c	00 	. 
	nop			;8c6d	00 	. 
	nop			;8c6e	00 	. 
	nop			;8c6f	00 	. 
	nop			;8c70	00 	. 
	rlca			;8c71	07 	. 
	dec a			;8c72	3d 	= 
	ld (07e03h),hl		;8c73	22 03 7e 	" . ~ 
	ld b,c			;8c76	41 	A 
	ld bc,0303fh		;8c77	01 3f 30 	. ? 0 
	nop			;8c7a	00 	. 
	rrca			;8c7b	0f 	. 
	dec c			;8c7c	0d 	. 
	ld bc,00202h		;8c7d	01 02 02 	. . . 
	nop			;8c80	00 	. 
	inc a			;8c81	3c 	< 
	ccf			;8c82	3f 	? 
	jr c,l8ccah		;8c83	38 45 	8 E 
	ld a,a			;8c85	7f 	 
	ld a,b			;8c86	78 	x 
	add a,h			;8c87	84 	. 
	rst 0			;8c88	c7 	. 
	ld (hl),h			;8c89	74 	t 
	adc a,00ah		;8c8a	ce 0a 	. . 
	ld a,(hl)			;8c8c	7e 	~ 
	rst 0			;8c8d	c7 	. 
	ld bc,0ff7eh		;8c8e	01 7e ff 	. ~ . 
	ld bc,0ff1dh		;8c91	01 1d ff 	. . . 
	ex (sp),hl			;8c94	e3 	. 
	add a,e			;8c95	83 	. 
	rra			;8c96	1f 	. 
	ld a,a			;8c97	7f 	 
	ld l,l			;8c98	6d 	m 
l8c99h:
	ld b,093h		;8c99	06 93 	. . 
	ld e,087h		;8c9b	1e 87 	. . 
	pop hl			;8c9d	e1 	. 
	ld a,(bc)			;8c9e	0a 	. 
	ld h,a			;8c9f	67 	g 
	push af			;8ca0	f5 	. 
	nop			;8ca1	00 	. 
	nop			;8ca2	00 	. 
	nop			;8ca3	00 	. 
	nop			;8ca4	00 	. 
	nop			;8ca5	00 	. 
	nop			;8ca6	00 	. 
	nop			;8ca7	00 	. 
l8ca8h:
	add a,b			;8ca8	80 	. 
	add a,b			;8ca9	80 	. 
	add a,b			;8caa	80 	. 
	ret nz			;8cab	c0 	. 
	ret nz			;8cac	c0 	. 
	ret nz			;8cad	c0 	. 
	ret po			;8cae	e0 	. 
	ret po			;8caf	e0 	. 
	ret po			;8cb0	e0 	. 
l8cb1h:
	djnz l8c43h		;8cb1	10 90 	. . 
	ret po			;8cb3	e0 	. 
	djnz l8c46h		;8cb4	10 90 	. . 
	ret nz			;8cb6	c0 	. 
	jr nz,l8c99h		;8cb7	20 e0 	  . 
	inc c			;8cb9	0c 	. 
	ld (00233h),a		;8cba	32 33 02 	2 3 . 
	ld a,l			;8cbd	7d 	} 
	ld a,l			;8cbe	7d 	} 
	jr l8ca8h		;8cbf	18 e7 	. . 
	rst 20h			;8cc1	e7 	. 
	ld h,0c1h		;8cc2	26 c1 	& . 
	pop bc			;8cc4	c1 	. 
	daa			;8cc5	27 	' 
	ret nz			;8cc6	c0 	. 
	ret nz			;8cc7	c0 	. 
	jr l8cb1h		;8cc8	18 e7 	. . 
l8ccah:
	rst 20h			;8cca	e7 	. 
	nop			;8ccb	00 	. 
	ld a,(hl)			;8ccc	7e 	~ 
	ld a,(hl)			;8ccd	7e 	~ 
	nop			;8cce	00 	. 
	inc a			;8ccf	3c 	< 
	inc a			;8cd0	3c 	< 
	nop			;8cd1	00 	. 
	rrca			;8cd2	0f 	. 
	rst 38h			;8cd3	ff 	. 
	ld bc,0ff02h		;8cd4	01 02 ff 	. . . 
	ld h,e			;8cd7	63 	c 
	call po,0f7fch		;8cd8	e4 fc f7 	. . . 
	ret m			;8cdb	f8 	. 
	ret m			;8cdc	f8 	. 
	ld a,e			;8cdd	7b 	{ 
	call m,003fch		;8cde	fc fc 03 	. . . 
	ld a,h			;8ce1	7c 	| 
	ld a,h			;8ce2	7c 	| 
	nop			;8ce3	00 	. 
	inc bc			;8ce4	03 	. 
	inc bc			;8ce5	03 	. 
	nop			;8ce6	00 	. 
	nop			;8ce7	00 	. 
	nop			;8ce8	00 	. 
	call z,0f030h		;8ce9	cc 30 f0 	. 0 . 
	and d			;8cec	a2 	. 
	ld e,h			;8ced	5c 	\ 
	call c,0e718h		;8cee	dc 18 e7 	. . . 
	rst 20h			;8cf1	e7 	. 
	inc h			;8cf2	24 	$ 
	jp 024c3h		;8cf3	c3 c3 24 	. . $ 
	jp 018c3h		;8cf6	c3 c3 18 	. . . 
l8cf9h:
	rst 20h			;8cf9	e7 	. 
	rst 20h			;8cfa	e7 	. 
	nop			;8cfb	00 	. 
	ld a,(hl)			;8cfc	7e 	~ 
	ld a,(hl)			;8cfd	7e 	~ 
	nop			;8cfe	00 	. 
	inc a			;8cff	3c 	< 
	inc a			;8d00	3c 	< 
	nop			;8d01	00 	. 
	ld a,03fh		;8d02	3e 3f 	> ? 
	nop			;8d04	00 	. 
	ld a,a			;8d05	7f 	 
	ld a,a			;8d06	7f 	 
	add hl,de			;8d07	19 	. 
	and 0e6h		;8d08	e6 e6 	. . 
	daa			;8d0a	27 	' 
	ret nz			;8d0b	c0 	. 
	ret nz			;8d0c	c0 	. 
	daa			;8d0d	27 	' 
	ret nz			;8d0e	c0 	. 
	ret nz			;8d0f	c0 	. 
	jr l8cf9h		;8d10	18 e7 	. . 
	rst 20h			;8d12	e7 	. 
	nop			;8d13	00 	. 
	ld a,(hl)			;8d14	7e 	~ 
	ld a,(hl)			;8d15	7e 	~ 
	nop			;8d16	00 	. 
	inc a			;8d17	3c 	< 
	inc a			;8d18	3c 	< 
	ret nz			;8d19	c0 	. 
	inc a			;8d1a	3c 	< 
	call m,05ea0h		;8d1b	fc a0 5e 	. . ^ 
	sbc a,019h		;8d1e	de 19 	. . 
	and 0e6h		;8d20	e6 e6 	. . 
	dec h			;8d22	25 	% 
	jp nz,025c2h		;8d23	c2 c2 25 	. . % 
	jp nz,018c2h		;8d26	c2 c2 18 	. . . 
	rst 20h			;8d29	e7 	. 
	rst 20h			;8d2a	e7 	. 
	nop			;8d2b	00 	. 
	ld a,(hl)			;8d2c	7e 	~ 
	ld a,(hl)			;8d2d	7e 	~ 
	nop			;8d2e	00 	. 
	inc a			;8d2f	3c 	< 
	inc a			;8d30	3c 	< 
	nop			;8d31	00 	. 
	rlca			;8d32	07 	. 
	rlca			;8d33	07 	. 
	nop			;8d34	00 	. 
	rra			;8d35	1f 	. 
	jr l8d38h		;8d36	18 00 	. . 
l8d38h:
	ccf			;8d38	3f 	? 
	jr nz,l8d3bh		;8d39	20 00 	  . 
l8d3bh:
	ld a,a			;8d3b	7f 	 
	ld b,b			;8d3c	40 	@ 
l8d3dh:
	nop			;8d3d	00 	. 
	ld a,a			;8d3e	7f 	 
	ld b,b			;8d3f	40 	@ 
	ex af,af'			;8d40	08 	. 
	rst 38h			;8d41	ff 	. 
	add a,b			;8d42	80 	. 
	dec e			;8d43	1d 	. 
	di			;8d44	f3 	. 
	adc a,h			;8d45	8c 	. 
	dec e			;8d46	1d 	. 
	rst 30h			;8d47	f7 	. 
	adc a,b			;8d48	88 	. 
	nop			;8d49	00 	. 
	ret nz			;8d4a	c0 	. 
	ret nz			;8d4b	c0 	. 
l8d4ch:
	nop			;8d4c	00 	. 
	ret p			;8d4d	f0 	. 
	jr nc,l8d50h		;8d4e	30 00 	0 . 
l8d50h:
	ret m			;8d50	f8 	. 
	ex af,af'			;8d51	08 	. 
	jr nz,l8d4ch		;8d52	20 f8 	  . 
	ex af,af'			;8d54	08 	. 
	ld (hl),b			;8d55	70 	p 
	ret m			;8d56	f8 	. 
	ex af,af'			;8d57	08 	. 
	ld (hl),b			;8d58	70 	p 
	sbc a,b			;8d59	98 	. 
	ex af,af'			;8d5a	08 	. 
	ret c			;8d5b	d8 	. 
	inc a			;8d5c	3c 	< 
	inc h			;8d5d	24 	$ 
	call z,0323eh		;8d5e	cc 3e 32 	. > 2 
	dec e			;8d61	1d 	. 
	rst 30h			;8d62	f7 	. 
	adc a,b			;8d63	88 	. 
	ld c,079h		;8d64	0e 79 	. y 
	ld b,(hl)			;8d66	46 	F 
	ld b,07fh		;8d67	06 7f 	.  
	ld b,b			;8d69	40 	@ 
	nop			;8d6a	00 	. 
	ccf			;8d6b	3f 	? 
	scf			;8d6c	37 	7 
	inc bc			;8d6d	03 	. 
	inc e			;8d6e	1c 	. 
	inc e			;8d6f	1c 	. 
	nop			;8d70	00 	. 
	jr c,l8db2h		;8d71	38 3f 	8 ? 
l8d73h:
	jr nc,l8dbdh		;8d73	30 48 	0 H 
	ld a,a			;8d75	7f 	 
	ld (hl),b			;8d76	70 	p 
	adc a,h			;8d77	8c 	. 
	rst 8			;8d78	cf 	. 
	call m,0039fh		;8d79	fc 9f 03 	. . . 
	ei			;8d7c	fb 	. 
	rst 38h			;8d7d	ff 	. 
	rlca			;8d7e	07 	. 
	rst 20h			;8d7f	e7 	. 
	rst 38h			;8d80	ff 	. 
	rra			;8d81	1f 	. 
	rlca			;8d82	07 	. 
	call m,0fbffh		;8d83	fc ff fb 	. . . 
	inc e			;8d86	1c 	. 
	rlca			;8d87	07 	. 
	dec sp			;8d88	3b 	; 
	inc e			;8d89	1c 	. 
	rst 0			;8d8a	c7 	. 
	ld b,0f9h		;8d8b	06 f9 	. . 
	rst 38h			;8d8d	ff 	. 
	ld c,011h		;8d8e	0e 11 	. . 
	rst 38h			;8d90	ff 	. 
	nop			;8d91	00 	. 
	add a,b			;8d92	80 	. 
	add a,b			;8d93	80 	. 
	add a,b			;8d94	80 	. 
	ret nz			;8d95	c0 	. 
	ret nz			;8d96	c0 	. 
	ret nz			;8d97	c0 	. 
l8d98h:
	jr nz,l8dbah		;8d98	20 20 	    
	ret nz			;8d9a	c0 	. 
	jr nz,l8d3dh		;8d9b	20 a0 	  . 
	sbc a,b			;8d9d	98 	. 
	ld h,b			;8d9e	60 	` 
	ret po			;8d9f	e0 	. 
	call nz,03838h		;8da0	c4 38 38 	. 8 8 
	jr nc,l8d73h		;8da3	30 ce 	0 . 
	adc a,048h		;8da5	ce 48 	. H 
	add a,(hl)			;8da7	86 	. 
	add a,(hl)			;8da8	86 	. 
	inc c			;8da9	0c 	. 
	ld (00233h),a		;8daa	32 33 02 	2 3 . 
	ld a,l			;8dad	7d 	} 
	ld a,l			;8dae	7d 	} 
	jr l8d98h		;8daf	18 e7 	. . 
	rst 20h			;8db1	e7 	. 
l8db2h:
	daa			;8db2	27 	' 
	ret nz			;8db3	c0 	. 
	ret nz			;8db4	c0 	. 
	ld h,0c1h		;8db5	26 c1 	& . 
	pop bc			;8db7	c1 	. 
	jr $-23		;8db8	18 e7 	. . 
l8dbah:
	rst 20h			;8dba	e7 	. 
	nop			;8dbb	00 	. 
	ld a,(hl)			;8dbc	7e 	~ 
l8dbdh:
	ld a,(hl)			;8dbd	7e 	~ 
	nop			;8dbe	00 	. 
	inc a			;8dbf	3c 	< 
	inc a			;8dc0	3c 	< 
	inc bc			;8dc1	03 	. 
	inc c			;8dc2	0c 	. 
	call m,sub_981fh		;8dc3	fc 1f 98 	. . . 
	ret m			;8dc6	f8 	. 
	ld a,e			;8dc7	7b 	{ 
	call m,063fch		;8dc8	fc fc 63 	. . c 
	call m,000fch		;8dcb	fc fc 00 	. . . 
	ex (sp),hl			;8dce	e3 	. 
	ex (sp),hl			;8dcf	e3 	. 
	nop			;8dd0	00 	. 
	nop			;8dd1	00 	. 
	nop			;8dd2	00 	. 
	nop			;8dd3	00 	. 
	nop			;8dd4	00 	. 
	nop			;8dd5	00 	. 
	nop			;8dd6	00 	. 
	nop			;8dd7	00 	. 
	nop			;8dd8	00 	. 
	inc h			;8dd9	24 	$ 
	jp 018c3h		;8dda	c3 c3 18 	. . . 
	rst 20h			;8ddd	e7 	. 
	rst 20h			;8dde	e7 	. 
	add a,b			;8ddf	80 	. 
	ld a,(hl)			;8de0	7e 	~ 
	ld a,(hl)			;8de1	7e 	~ 
	nop			;8de2	00 	. 
	cp h			;8de3	bc 	. 
	cp h			;8de4	bc 	. 
	nop			;8de5	00 	. 
	nop			;8de6	00 	. 
	nop			;8de7	00 	. 
	nop			;8de8	00 	. 
	nop			;8de9	00 	. 
	nop			;8dea	00 	. 
	nop			;8deb	00 	. 
	nop			;8dec	00 	. 
	nop			;8ded	00 	. 
	nop			;8dee	00 	. 
	nop			;8def	00 	. 
	nop			;8df0	00 	. 
	dec e			;8df1	1d 	. 
	ld l,(hl)			;8df2	6e 	n 
	ld h,d			;8df3	62 	b 
	ld a,a			;8df4	7f 	 
	call z,07f80h		;8df5	cc 80 7f 	. .  
	rst 20h			;8df8	e7 	. 
	sbc a,b			;8df9	98 	. 
	ccf			;8dfa	3f 	? 
	ld a,a			;8dfb	7f 	 
	ld b,b			;8dfc	40 	@ 
	nop			;8dfd	00 	. 
	ccf			;8dfe	3f 	? 
	ccf			;8dff	3f 	? 
	ld b,026h		;8e00	06 26 	. & 
	ccf			;8e02	3f 	? 
	ld h,046h		;8e03	26 46 	& F 
	ld e,a			;8e05	5f 	_ 
	ld b,b			;8e06	40 	@ 
	sub b			;8e07	90 	. 
	cp a			;8e08	bf 	. 
	ret c			;8e09	d8 	. 
	ld l,(hl)			;8e0a	6e 	n 
	ld (de),a			;8e0b	12 	. 
	ret nc			;8e0c	d0 	. 
	ld a,(hl)			;8e0d	7e 	~ 
	ld (bc),a			;8e0e	02 	. 
	ret nz			;8e0f	c0 	. 
	cp 002h		;8e10	fe 02 	. . 
	add a,b			;8e12	80 	. 
	call m,0300ch		;8e13	fc 0c 30 	. . 0 
	adc a,b			;8e16	88 	. 
	ret z			;8e17	c8 	. 
	ex af,af'			;8e18	08 	. 
	inc b			;8e19	04 	. 
	call p,04408h		;8e1a	f4 08 44 	. . D 
	call p,02204h		;8e1d	f4 04 22 	. . " 
	jp m,l8870h		;8e20	fa 70 88 	. p . 
	adc a,a			;8e23	8f 	. 
	ld h,b			;8e24	60 	` 
	ret m			;8e25	f8 	. 
	sbc a,a			;8e26	9f 	. 
	nop			;8e27	00 	. 
	ld l,c			;8e28	69 	i 
	ld l,a			;8e29	6f 	o 
	nop			;8e2a	00 	. 
	add hl,bc			;8e2b	09 	. 
	rrca			;8e2c	0f 	. 
	nop			;8e2d	00 	. 
	add hl,bc			;8e2e	09 	. 
	rrca			;8e2f	0f 	. 
	ld c,01fh		;8e30	0e 1f 	. . 
	rra			;8e32	1f 	. 
	ld e,03fh		;8e33	1e 3f 	. ? 
	ccf			;8e35	3f 	? 
	nop			;8e36	00 	. 
	ccf			;8e37	3f 	? 
	ccf			;8e38	3f 	? 
	ld c,011h		;8e39	0e 11 	. . 
	pop af			;8e3b	f1 	. 
	ld c,01fh		;8e3c	0e 1f 	. . 
	pop af			;8e3e	f1 	. 
	nop			;8e3f	00 	. 
	ld c,0feh		;8e40	0e fe 	. . 
	nop			;8e42	00 	. 
	adc a,b			;8e43	88 	. 
	ret m			;8e44	f8 	. 
	nop			;8e45	00 	. 
	adc a,b			;8e46	88 	. 
	ret m			;8e47	f8 	. 
	ld (hl),b			;8e48	70 	p 
	ret m			;8e49	f8 	. 
	ret m			;8e4a	f8 	. 
	ld a,b			;8e4b	78 	x 
	call m,000fch		;8e4c	fc fc 00 	. . . 
	call m,037fch		;8e4f	fc fc 37 	. . 7 
	call pe,01790h		;8e52	ec 90 17 	. . . 
	call m,00780h		;8e55	fc 80 07 	. . . 
	rst 38h			;8e58	ff 	. 
	add a,b			;8e59	80 	. 
	inc bc			;8e5a	03 	. 
	ld a,a			;8e5b	7f 	 
	ld h,b			;8e5c	60 	` 
	jr $+37		;8e5d	18 23 	. # 
	daa			;8e5f	27 	' 
	jr nz,$+66		;8e60	20 40 	  @ 
	ld e,a			;8e62	5f 	_ 
	jr nz,l8ea9h		;8e63	20 44 	  D 
	ld e,a			;8e65	5f 	_ 
	ld b,b			;8e66	40 	@ 
	adc a,b			;8e67	88 	. 
	cp a			;8e68	bf 	. 
	ld (hl),b			;8e69	70 	p 
	call pe,0fc8ch		;8e6a	ec 8c fc 	. . . 
	ld h,(hl)			;8e6d	66 	f 
	ld (bc),a			;8e6e	02 	. 
	call m,032ceh		;8e6f	fc ce 32 	. . 2 
	ret m			;8e72	f8 	. 
	call m,00004h		;8e73	fc 04 00 	. . . 
	ret m			;8e76	f8 	. 
	ret m			;8e77	f8 	. 
	ret nz			;8e78	c0 	. 
	ret z			;8e79	c8 	. 
	ret m			;8e7a	f8 	. 
	ret z			;8e7b	c8 	. 
	call nz,004f4h		;8e7c	c4 f4 04 	. . . 
	ld (de),a			;8e7f	12 	. 
	jp m,l8870h		;8e80	fa 70 88 	. p . 
	adc a,a			;8e83	8f 	. 
	ld (hl),b			;8e84	70 	p 
	ret m			;8e85	f8 	. 
	adc a,a			;8e86	8f 	. 
	nop			;8e87	00 	. 
	ld (hl),b			;8e88	70 	p 
l8e89h:
	ld a,a			;8e89	7f 	 
	nop			;8e8a	00 	. 
	ld de,0001fh		;8e8b	11 1f 00 	. . . 
	ld de,00e1fh		;8e8e	11 1f 0e 	. . . 
	rra			;8e91	1f 	. 
	rra			;8e92	1f 	. 
	ld e,03fh		;8e93	1e 3f 	. ? 
	ccf			;8e95	3f 	? 
	nop			;8e96	00 	. 
	ccf			;8e97	3f 	? 
	ccf			;8e98	3f 	? 
	ld c,011h		;8e99	0e 11 	. . 
	pop af			;8e9b	f1 	. 
	ld b,01fh		;8e9c	06 1f 	. . 
	ld sp,hl			;8e9e	f9 	. 
	nop			;8e9f	00 	. 
	sub (hl)			;8ea0	96 	. 
	or 000h		;8ea1	f6 00 	. . 
	sub b			;8ea3	90 	. 
	ret p			;8ea4	f0 	. 
	nop			;8ea5	00 	. 
	sub b			;8ea6	90 	. 
	ret p			;8ea7	f0 	. 
	ld (hl),b			;8ea8	70 	p 
l8ea9h:
	ret m			;8ea9	f8 	. 
	ret m			;8eaa	f8 	. 
	ld a,b			;8eab	78 	x 
	call m,000fch		;8eac	fc fc 00 	. . . 
	call m,000fch		;8eaf	fc fc 00 	. . . 
	rlca			;8eb2	07 	. 
	rlca			;8eb3	07 	. 
	rlca			;8eb4	07 	. 
	jr l8ecfh		;8eb5	18 18 	. . 
	ld e,021h		;8eb7	1e 21 	. ! 
	jr nz,l8ef2h		;8eb9	20 37 	  7 
	ld c,b			;8ebb	48 	H 
	ld b,b			;8ebc	40 	@ 
	add hl,sp			;8ebd	39 	9 
	ld b,(hl)			;8ebe	46 	F 
	ld b,b			;8ebf	40 	@ 
	ld (hl),d			;8ec0	72 	r 
	adc a,l			;8ec1	8d 	. 
	add a,b			;8ec2	80 	. 
	ld d,h			;8ec3	54 	T 
	xor e			;8ec4	ab 	. 
	add a,b			;8ec5	80 	. 
	ld (hl),h			;8ec6	74 	t 
	adc a,e			;8ec7	8b 	. 
	add a,b			;8ec8	80 	. 
	nop			;8ec9	00 	. 
	ret nz			;8eca	c0 	. 
	ret nz			;8ecb	c0 	. 
	ret nz			;8ecc	c0 	. 
	jr c,l8f07h		;8ecd	38 38 	8 8 
l8ecfh:
	ret m			;8ecf	f8 	. 
	inc b			;8ed0	04 	. 
	inc b			;8ed1	04 	. 
	or b			;8ed2	b0 	. 
	ld c,h			;8ed3	4c 	L 
	inc b			;8ed4	04 	. 
	call pe,00212h		;8ed5	ec 12 02 	. . . 
	sub h			;8ed8	94 	. 
	ld l,d			;8ed9	6a 	j 
	ld (bc),a			;8eda	02 	. 
	ld c,b			;8edb	48 	H 
	or h			;8edc	b4 	. 
	inc b			;8edd	04 	. 
	xor b			;8ede	a8 	. 
	ld d,h			;8edf	54 	T 
	inc b			;8ee0	04 	. 
	inc (hl)			;8ee1	34 	4 
	ld c,e			;8ee2	4b 	K 
	ld b,b			;8ee3	40 	@ 
	ld l,d			;8ee4	6a 	j 
	sub l			;8ee5	95 	. 
	add a,b			;8ee6	80 	. 
	inc e			;8ee7	1c 	. 
	ld h,e			;8ee8	63 	c 
	ld h,b			;8ee9	60 	` 
	dec b			;8eea	05 	. 
	ld a,(de)			;8eeb	1a 	. 
	jr l8ef1h		;8eec	18 03 	. . 
	inc b			;8eee	04 	. 
	inc b			;8eef	04 	. 
	rlca			;8ef0	07 	. 
l8ef1h:
	ex af,af'			;8ef1	08 	. 
l8ef2h:
	ex af,af'			;8ef2	08 	. 
	ld b,009h		;8ef3	06 09 	. . 
	ex af,af'			;8ef5	08 	. 
	rlca			;8ef6	07 	. 
	ex af,af'			;8ef7	08 	. 
	ex af,af'			;8ef8	08 	. 
	xor b			;8ef9	a8 	. 
	ld d,h			;8efa	54 	T 
	inc b			;8efb	04 	. 
	adc a,h			;8efc	8c 	. 
	ld (hl),d			;8efd	72 	r 
	ld (bc),a			;8efe	02 	. 
	call p,0020ah		;8eff	f4 0a 02 	. . . 
	ret c			;8f02	d8 	. 
	inc h			;8f03	24 	$ 
	inc b			;8f04	04 	. 
	ld b,b			;8f05	40 	@ 
	cp b			;8f06	b8 	. 
l8f07h:
	jr c,l8e89h		;8f07	38 80 	8 . 
	ld b,b			;8f09	40 	@ 
	ld b,b			;8f0a	40 	@ 
	ret nz			;8f0b	c0 	. 
	jr nz,l8f2eh		;8f0c	20 20 	    
	add a,b			;8f0e	80 	. 
	ld h,b			;8f0f	60 	` 
	jr nz,l8f4eh		;8f10	20 3c 	  < 
	jp nz,07482h		;8f12	c2 82 74 	. . t 
	adc a,d			;8f15	8a 	. 
	add a,d			;8f16	82 	. 
	ld e,h			;8f17	5c 	\ 
	and d			;8f18	a2 	. 
	add a,d			;8f19	82 	. 
	jr c,l8f60h		;8f1a	38 44 	8 D 
	ld b,h			;8f1c	44 	D 
	jr nc,l8f67h		;8f1d	30 48 	0 H 
	ld c,b			;8f1f	48 	H 
	jr z,l8f76h		;8f20	28 54 	( T 
	ld b,h			;8f22	44 	D 
	inc a			;8f23	3c 	< 
	ld b,d			;8f24	42 	B 
	ld b,d			;8f25	42 	B 
	nop			;8f26	00 	. 
	ld a,(hl)			;8f27	7e 	~ 
	ld a,(hl)			;8f28	7e 	~ 
	rlca			;8f29	07 	. 
	nop			;8f2a	00 	. 
	nop			;8f2b	00 	. 
	jr l8f2eh		;8f2c	18 00 	. . 
l8f2eh:
	nop			;8f2e	00 	. 
	jr nz,l8f31h		;8f2f	20 00 	  . 
l8f31h:
	nop			;8f31	00 	. 
	ld h,c			;8f32	61 	a 
	nop			;8f33	00 	. 
	nop			;8f34	00 	. 
	sub (hl)			;8f35	96 	. 
	nop			;8f36	00 	. 
	nop			;8f37	00 	. 
	xor b			;8f38	a8 	. 
	nop			;8f39	00 	. 
	nop			;8f3a	00 	. 
	or (hl)			;8f3b	b6 	. 
	nop			;8f3c	00 	. 
	nop			;8f3d	00 	. 
	xor d			;8f3e	aa 	. 
	nop			;8f3f	00 	. 
	nop			;8f40	00 	. 
	ret po			;8f41	e0 	. 
	nop			;8f42	00 	. 
	nop			;8f43	00 	. 
	jr l8f46h		;8f44	18 00 	. . 
l8f46h:
	nop			;8f46	00 	. 
	inc b			;8f47	04 	. 
	nop			;8f48	00 	. 
	nop			;8f49	00 	. 
	add a,(hl)			;8f4a	86 	. 
	nop			;8f4b	00 	. 
	nop			;8f4c	00 	. 
	ld l,c			;8f4d	69 	i 
l8f4eh:
	nop			;8f4e	00 	. 
	nop			;8f4f	00 	. 
	dec d			;8f50	15 	. 
	nop			;8f51	00 	. 
	nop			;8f52	00 	. 
	ld l,l			;8f53	6d 	m 
	nop			;8f54	00 	. 
	nop			;8f55	00 	. 
	ld d,l			;8f56	55 	U 
	nop			;8f57	00 	. 
	nop			;8f58	00 	. 
	xor d			;8f59	aa 	. 
	nop			;8f5a	00 	. 
	nop			;8f5b	00 	. 
	xor 000h		;8f5c	ee 00 	. . 
	nop			;8f5e	00 	. 
	ld h,c			;8f5f	61 	a 
l8f60h:
	nop			;8f60	00 	. 
	nop			;8f61	00 	. 
	jr nc,l8f64h		;8f62	30 00 	0 . 
l8f64h:
	nop			;8f64	00 	. 
	rrca			;8f65	0f 	. 
	nop			;8f66	00 	. 
l8f67h:
	nop			;8f67	00 	. 
	ld de,00000h		;8f68	11 00 00 	. . . 
	ld hl,00000h		;8f6b	21 00 00 	! . . 
	ld c,b			;8f6e	48 	H 
	nop			;8f6f	00 	. 
	nop			;8f70	00 	. 
	ld d,l			;8f71	55 	U 
	nop			;8f72	00 	. 
	nop			;8f73	00 	. 
	ld (hl),a			;8f74	77 	w 
	nop			;8f75	00 	. 
l8f76h:
	nop			;8f76	00 	. 
	add a,(hl)			;8f77	86 	. 
	nop			;8f78	00 	. 
	nop			;8f79	00 	. 
	inc c			;8f7a	0c 	. 
	nop			;8f7b	00 	. 
	nop			;8f7c	00 	. 
	ret p			;8f7d	f0 	. 
l8f7eh:
	nop			;8f7e	00 	. 
	nop			;8f7f	00 	. 
	adc a,b			;8f80	88 	. 
	nop			;8f81	00 	. 
	nop			;8f82	00 	. 
	add a,h			;8f83	84 	. 
	nop			;8f84	00 	. 
	nop			;8f85	00 	. 
	ld (de),a			;8f86	12 	. 
	nop			;8f87	00 	. 
	nop			;8f88	00 	. 
	ret p			;8f89	f0 	. 
	nop			;8f8a	00 	. 
	nop			;8f8b	00 	. 
	sub b			;8f8c	90 	. 
	nop			;8f8d	00 	. 
	nop			;8f8e	00 	. 
	cp e			;8f8f	bb 	. 
	nop			;8f90	00 	. 
	nop			;8f91	00 	. 
	ld c,e			;8f92	4b 	K 
	nop			;8f93	00 	. 
	nop			;8f94	00 	. 
	rra			;8f95	1f 	. 
	nop			;8f96	00 	. 
	nop			;8f97	00 	. 
	inc hl			;8f98	23 	# 
	nop			;8f99	00 	. 
	nop			;8f9a	00 	. 
	ld b,e			;8f9b	43 	C 
	nop			;8f9c	00 	. 
	nop			;8f9d	00 	. 
	ld a,a			;8f9e	7f 	 
	nop			;8f9f	00 	. 
	nop			;8fa0	00 	. 
	inc a			;8fa1	3c 	< 
	nop			;8fa2	00 	. 
	nop			;8fa3	00 	. 
	inc h			;8fa4	24 	$ 
	nop			;8fa5	00 	. 
	nop			;8fa6	00 	. 
	ld (hl),h			;8fa7	74 	t 
	nop			;8fa8	00 	. 
	nop			;8fa9	00 	. 
	ld c,b			;8faa	48 	H 
	nop			;8fab	00 	. 
	nop			;8fac	00 	. 
	ret po			;8fad	e0 	. 
	nop			;8fae	00 	. 
	nop			;8faf	00 	. 
	djnz l8fb2h		;8fb0	10 00 	. . 
l8fb2h:
	nop			;8fb2	00 	. 
	ex af,af'			;8fb3	08 	. 
	nop			;8fb4	00 	. 
	nop			;8fb5	00 	. 
	ret m			;8fb6	f8 	. 
	nop			;8fb7	00 	. 
	nop			;8fb8	00 	. 
	xor d			;8fb9	aa 	. 
	nop			;8fba	00 	. 
	nop			;8fbb	00 	. 
	xor 000h		;8fbc	ee 00 	. . 
	nop			;8fbe	00 	. 
	ld h,c			;8fbf	61 	a 
	nop			;8fc0	00 	. 
	nop			;8fc1	00 	. 
	jr nc,l8fc4h		;8fc2	30 00 	0 . 
l8fc4h:
	nop			;8fc4	00 	. 
	rrca			;8fc5	0f 	. 
	nop			;8fc6	00 	. 
	nop			;8fc7	00 	. 
	ld sp,00000h		;8fc8	31 00 00 	1 . . 
	pop hl			;8fcb	e1 	. 
sub_8fcch:
	nop			;8fcc	00 	. 
	nop			;8fcd	00 	. 
	sbc a,b			;8fce	98 	. 
	nop			;8fcf	00 	. 
	nop			;8fd0	00 	. 
	ld d,l			;8fd1	55 	U 
	nop			;8fd2	00 	. 
	nop			;8fd3	00 	. 
	ld (hl),a			;8fd4	77 	w 
	nop			;8fd5	00 	. 
	nop			;8fd6	00 	. 
	add a,(hl)			;8fd7	86 	. 
	nop			;8fd8	00 	. 
	nop			;8fd9	00 	. 
	inc c			;8fda	0c 	. 
	nop			;8fdb	00 	. 
	nop			;8fdc	00 	. 
	ret p			;8fdd	f0 	. 
	nop			;8fde	00 	. 
	nop			;8fdf	00 	. 
	adc a,h			;8fe0	8c 	. 
	nop			;8fe1	00 	. 
	nop			;8fe2	00 	. 
	add a,a			;8fe3	87 	. 
	nop			;8fe4	00 	. 
	nop			;8fe5	00 	. 
	add hl,de			;8fe6	19 	. 
	nop			;8fe7	00 	. 
	nop			;8fe8	00 	. 
	ret nc			;8fe9	d0 	. 
	nop			;8fea	00 	. 
	nop			;8feb	00 	. 
	djnz l8feeh		;8fec	10 00 	. . 
l8feeh:
	nop			;8fee	00 	. 
	dec bc			;8fef	0b 	. 
	nop			;8ff0	00 	. 
	nop			;8ff1	00 	. 
	dec bc			;8ff2	0b 	. 
	nop			;8ff3	00 	. 
	nop			;8ff4	00 	. 
	rra			;8ff5	1f 	. 
	nop			;8ff6	00 	. 
	nop			;8ff7	00 	. 
	inc hl			;8ff8	23 	# 
	nop			;8ff9	00 	. 
	nop			;8ffa	00 	. 
	ld b,e			;8ffb	43 	C 
	nop			;8ffc	00 	. 
	nop			;8ffd	00 	. 
	ld a,a			;8ffe	7f 	 
	nop			;8fff	00 	. 
	nop			;9000	00 	. 
	inc l			;9001	2c 	, 
	nop			;9002	00 	. 
	nop			;9003	00 	. 
	jr nz,l9006h		;9004	20 00 	  . 
l9006h:
	nop			;9006	00 	. 
	ld b,b			;9007	40 	@ 
	nop			;9008	00 	. 
	nop			;9009	00 	. 
	ld b,b			;900a	40 	@ 
	nop			;900b	00 	. 
	nop			;900c	00 	. 
	ret po			;900d	e0 	. 
	nop			;900e	00 	. 
	nop			;900f	00 	. 
	djnz l9012h		;9010	10 00 	. . 
l9012h:
	nop			;9012	00 	. 
	ex af,af'			;9013	08 	. 
	nop			;9014	00 	. 
	nop			;9015	00 	. 
	ret m			;9016	f8 	. 
	nop			;9017	00 	. 
	nop			;9018	00 	. 
	xor d			;9019	aa 	. 
	nop			;901a	00 	. 
	nop			;901b	00 	. 
	xor 000h		;901c	ee 00 	. . 
	nop			;901e	00 	. 
	pop hl			;901f	e1 	. 
	nop			;9020	00 	. 
	nop			;9021	00 	. 
	or b			;9022	b0 	. 
	nop			;9023	00 	. 
	nop			;9024	00 	. 
	adc a,a			;9025	8f 	. 
	nop			;9026	00 	. 
	nop			;9027	00 	. 
	ld d,c			;9028	51 	Q 
	nop			;9029	00 	. 
	nop			;902a	00 	. 
	ld hl,00000h		;902b	21 00 00 	! . . 
	djnz l9030h		;902e	10 00 	. . 
l9030h:
	nop			;9030	00 	. 
	ld d,l			;9031	55 	U 
	nop			;9032	00 	. 
	nop			;9033	00 	. 
	ld (hl),a			;9034	77 	w 
	nop			;9035	00 	. 
	nop			;9036	00 	. 
	add a,a			;9037	87 	. 
	nop			;9038	00 	. 
	nop			;9039	00 	. 
	dec c			;903a	0d 	. 
	nop			;903b	00 	. 
	nop			;903c	00 	. 
	ld sp,hl			;903d	f9 	. 
	nop			;903e	00 	. 
	nop			;903f	00 	. 
	add a,(hl)			;9040	86 	. 
	nop			;9041	00 	. 
	nop			;9042	00 	. 
	add a,h			;9043	84 	. 
	nop			;9044	00 	. 
	nop			;9045	00 	. 
	ex af,af'			;9046	08 	. 
	nop			;9047	00 	. 
	nop			;9048	00 	. 
	jr nz,l904bh		;9049	20 00 	  . 
l904bh:
	nop			;904b	00 	. 
	jr nz,l904eh		;904c	20 00 	  . 
l904eh:
	nop			;904e	00 	. 
	ld d,000h		;904f	16 00 	. . 
	nop			;9051	00 	. 
	ld d,000h		;9052	16 00 	. . 
	nop			;9054	00 	. 
	ccf			;9055	3f 	? 
	nop			;9056	00 	. 
	nop			;9057	00 	. 
	ld b,(hl)			;9058	46 	F 
	nop			;9059	00 	. 
	nop			;905a	00 	. 
	add a,(hl)			;905b	86 	. 
	nop			;905c	00 	. 
	nop			;905d	00 	. 
	rst 38h			;905e	ff 	. 
	nop			;905f	00 	. 
	nop			;9060	00 	. 
	ld b,b			;9061	40 	@ 
	nop			;9062	00 	. 
	nop			;9063	00 	. 
	ld b,b			;9064	40 	@ 
	nop			;9065	00 	. 
	nop			;9066	00 	. 
	add a,b			;9067	80 	. 
	nop			;9068	00 	. 
	nop			;9069	00 	. 
	add a,b			;906a	80 	. 
	nop			;906b	00 	. 
	nop			;906c	00 	. 
	ret nz			;906d	c0 	. 
	nop			;906e	00 	. 
	nop			;906f	00 	. 
	jr nz,l9072h		;9070	20 00 	  . 
l9072h:
	nop			;9072	00 	. 
	djnz l9075h		;9073	10 00 	. . 
l9075h:
	nop			;9075	00 	. 
	ret p			;9076	f0 	. 
	nop			;9077	00 	. 
	nop			;9078	00 	. 
	rst 38h			;9079	ff 	. 
	nop			;907a	00 	. 
	nop			;907b	00 	. 
	nop			;907c	00 	. 
	nop			;907d	00 	. 
	nop			;907e	00 	. 
	nop			;907f	00 	. 
	nop			;9080	00 	. 
	nop			;9081	00 	. 
	nop			;9082	00 	. 
	ld bc,00001h		;9083	01 01 00 	. . . 
	ld b,006h		;9086	06 06 	. . 
	nop			;9088	00 	. 
	add hl,bc			;9089	09 	. 
	add hl,bc			;908a	09 	. 
	nop			;908b	00 	. 
	inc de			;908c	13 	. 
	ld (de),a			;908d	12 	. 
	ex af,af'			;908e	08 	. 
	inc hl			;908f	23 	# 
	ld (018e7h),hl		;9090	22 e7 18 	" . . 
	jr l9095h		;9093	18 00 	. . 
l9095h:
	jr l90afh		;9095	18 18 	. . 
	nop			;9097	00 	. 
	inc a			;9098	3c 	< 
	inc a			;9099	3c 	< 
	inc e			;909a	1c 	. 
	jp 001c3h		;909b	c3 c3 01 	. . . 
	ld a,03eh		;909e	3e 3e 	> > 
	nop			;90a0	00 	. 
	rst 38h			;90a1	ff 	. 
	pop bc			;90a2	c1 	. 
	nop			;90a3	00 	. 
l90a4h:
	rst 38h			;90a4	ff 	. 
	nop			;90a5	00 	. 
	nop			;90a6	00 	. 
	rst 38h			;90a7	ff 	. 
	nop			;90a8	00 	. 
	rst 38h			;90a9	ff 	. 
	nop			;90aa	00 	. 
	nop			;90ab	00 	. 
	nop			;90ac	00 	. 
	nop			;90ad	00 	. 
	nop			;90ae	00 	. 
l90afh:
	nop			;90af	00 	. 
	nop			;90b0	00 	. 
	nop			;90b1	00 	. 
	nop			;90b2	00 	. 
	add a,b			;90b3	80 	. 
	add a,b			;90b4	80 	. 
	add a,b			;90b5	80 	. 
	ld h,b			;90b6	60 	` 
	ld h,b			;90b7	60 	` 
	ld b,b			;90b8	40 	@ 
	sub b			;90b9	90 	. 
	sub b			;90ba	90 	. 
	jr nz,$-54		;90bb	20 c8 	  . 
	ld c,b			;90bd	48 	H 
	djnz l90a4h		;90be	10 e4 	. . 
	inc h			;90c0	24 	$ 
	ld de,02427h		;90c1	11 27 24 	. ' $ 
	ld de,04447h		;90c4	11 47 44 	. G D 
	ld de,04243h		;90c7	11 43 42 	. C B 
	ld bc,04243h		;90ca	01 43 42 	. C B 
	ld bc,l8283h		;90cd	01 83 82 	. . . 
	inc bc			;90d0	03 	. 
	add a,a			;90d1	87 	. 
	add a,h			;90d2	84 	. 
	inc bc			;90d3	03 	. 
	add a,a			;90d4	87 	. 
	add a,h			;90d5	84 	. 
	ld bc,0c2c3h		;90d6	01 c3 c2 	. . . 
	ld b,0ffh		;90d9	06 ff 	. . 
	nop			;90db	00 	. 
	adc a,a			;90dc	8f 	. 
	ei			;90dd	fb 	. 
	inc b			;90de	04 	. 
	rst 20h			;90df	e7 	. 
	dec a			;90e0	3d 	= 
	ld (bc),a			;90e1	02 	. 
	ld (hl),a			;90e2	77 	w 
	sbc a,l			;90e3	9d 	. 
	add a,d			;90e4	82 	. 
	ld (hl),a			;90e5	77 	w 
	sbc a,l			;90e6	9d 	. 
	add a,d			;90e7	82 	. 
	or 01bh		;90e8	f6 1b 	. . 
	inc b			;90ea	04 	. 
	call p,000ffh		;90eb	f4 ff 00 	. . . 
	ret p			;90ee	f0 	. 
	rst 38h			;90ef	ff 	. 
	ld bc,0e410h		;90f0	01 10 e4 	. . . 
	inc h			;90f3	24 	$ 
l90f4h:
	ex af,af'			;90f4	08 	. 
	jp p,00812h		;90f5	f2 12 08 	. . . 
	jp p,00812h		;90f8	f2 12 08 	. . . 
	jp p,00a12h		;90fb	f2 12 0a 	. . . 
	push hl			;90fe	e5 	. 
	daa			;90ff	27 	' 
	ld b,0f9h		;9100	06 f9 	. . 
	rra			;9102	1f 	. 
	ld c,0f1h		;9103	0e f1 	. . 
	ld a,a			;9105	7f 	 
	ld e,0a1h		;9106	1e a1 	. . 
	cp a			;9108	bf 	. 
	ld b,b			;9109	40 	@ 
l910ah:
	pop hl			;910a	e1 	. 
	and c			;910b	a1 	. 
	ld h,b			;910c	60 	` 
	rst 38h			;910d	ff 	. 
	sbc a,a			;910e	9f 	. 
	ld l,a			;910f	6f 	o 
	rst 38h			;9110	ff 	. 
	sbc a,a			;9111	9f 	. 
	ld l,a			;9112	6f 	o 
	rst 38h			;9113	ff 	. 
	sbc a,a			;9114	9f 	. 
	ld e,a			;9115	5f 	_ 
	rst 38h			;9116	ff 	. 
	cp a			;9117	bf 	. 
	ccf			;9118	3f 	? 
	ld a,a			;9119	7f 	 
	ld a,a			;911a	7f 	 
	inc e			;911b	1c 	. 
	ld a,a			;911c	7f 	 
	ld a,a			;911d	7f 	 
	inc bc			;911e	03 	. 
	inc a			;911f	3c 	< 
	inc a			;9120	3c 	< 
	inc c			;9121	0c 	. 
	jp p,000f2h		;9122	f2 f2 00 	. . . 
	rst 38h			;9125	ff 	. 
	rst 38h			;9126	ff 	. 
l9127h:
	rst 38h			;9127	ff 	. 
	rst 38h			;9128	ff 	. 
	rst 38h			;9129	ff 	. 
	ret p			;912a	f0 	. 
	rst 38h			;912b	ff 	. 
	rst 38h			;912c	ff 	. 
	ret nz			;912d	c0 	. 
	ret p			;912e	f0 	. 
	rst 38h			;912f	ff 	. 
	nop			;9130	00 	. 
	pop hl			;9131	e1 	. 
	rst 38h			;9132	ff 	. 
	add a,b			;9133	80 	. 
	ld b,a			;9134	47 	G 
	ld a,a			;9135	7f 	 
	ld (hl),b			;9136	70 	p 
	rst 38h			;9137	ff 	. 
	rst 38h			;9138	ff 	. 
	ld a,061h		;9139	3e 61 	> a 
	ld e,a			;913b	5f 	_ 
	ld a,(hl)			;913c	7e 	~ 
	pop af			;913d	f1 	. 
	adc a,a			;913e	8f 	. 
	cp (hl)			;913f	be 	. 
	rst 38h			;9140	ff 	. 
	pop bc			;9141	c1 	. 
	nop			;9142	00 	. 
	rst 38h			;9143	ff 	. 
	rst 38h			;9144	ff 	. 
	djnz l9187h		;9145	10 40 	. @ 
	ret nz			;9147	c0 	. 
	jr nz,l910ah		;9148	20 c0 	  . 
	ret nz			;914a	c0 	. 
	ld b,b			;914b	40 	@ 
	add a,b			;914c	80 	. 
	add a,b			;914d	80 	. 
	add a,b			;914e	80 	. 
	nop			;914f	00 	. 
	nop			;9150	00 	. 
	ld a,e			;9151	7b 	{ 
	add a,a			;9152	87 	. 
	add a,a			;9153	87 	. 
	jr nc,l91a5h		;9154	30 4f 	0 O 
	ld c,a			;9156	4f 	O 
	jr nz,$+83		;9157	20 51 	  Q 
	ld d,c			;9159	51 	Q 
	nop			;915a	00 	. 
	ld hl,00021h		;915b	21 21 00 	! ! . 
	ld bc,00101h		;915e	01 01 01 	. . . 
	nop			;9161	00 	. 
	nop			;9162	00 	. 
	nop			;9163	00 	. 
	nop			;9164	00 	. 
	nop			;9165	00 	. 
	nop			;9166	00 	. 
	nop			;9167	00 	. 
	nop			;9168	00 	. 
	ret nz			;9169	c0 	. 
	cp 0feh		;916a	fe fe 	. . 
	ret po			;916c	e0 	. 
	rlca			;916d	07 	. 
	rra			;916e	1f 	. 
	jr nz,l90f4h		;916f	20 83 	  . 
	sbc a,a			;9171	9f 	. 
	djnz $-123		;9172	10 83 	. . 
	adc a,a			;9174	8f 	. 
	inc b			;9175	04 	. 
	adc a,a			;9176	8f 	. 
	add a,a			;9177	87 	. 
	ex af,af'			;9178	08 	. 
	rst 18h			;9179	df 	. 
	rst 18h			;917a	df 	. 
	add a,b			;917b	80 	. 
	ld a,(hl)			;917c	7e 	~ 
	ld a,(hl)			;917d	7e 	~ 
	nop			;917e	00 	. 
	ld a,h			;917f	7c 	| 
	ld a,h			;9180	7c 	| 
	rlca			;9181	07 	. 
	nop			;9182	00 	. 
	nop			;9183	00 	. 
	nop			;9184	00 	. 
	nop			;9185	00 	. 
	nop			;9186	00 	. 
l9187h:
	nop			;9187	00 	. 
	nop			;9188	00 	. 
	nop			;9189	00 	. 
	nop			;918a	00 	. 
	rlca			;918b	07 	. 
	rlca			;918c	07 	. 
	nop			;918d	00 	. 
	jr l91a8h		;918e	18 18 	. . 
	nop			;9190	00 	. 
	daa			;9191	27 	' 
sub_9192h:
	daa			;9192	27 	' 
	nop			;9193	00 	. 
	ld c,a			;9194	4f 	O 
	ld c,b			;9195	48 	H 
	jr nz,l9127h		;9196	20 8f 	  . 
	adc a,b			;9198	88 	. 
	cp 000h		;9199	fe 00 	. . 
	nop			;919b	00 	. 
	nop			;919c	00 	. 
	ld h,b			;919d	60 	` 
	ld h,b			;919e	60 	` 
	nop			;919f	00 	. 
	ret p			;91a0	f0 	. 
	ret p			;91a1	f0 	. 
	ld (hl),b			;91a2	70 	p 
	ld c,00eh		;91a3	0e 0e 	. . 
l91a5h:
	ld b,0f9h		;91a5	06 f9 	. . 
	ld sp,hl			;91a7	f9 	. 
l91a8h:
	ld bc,006feh		;91a8	01 fe 06 	. . . 
	nop			;91ab	00 	. 
	rst 38h			;91ac	ff 	. 
	ld bc,0ff00h		;91ad	01 00 ff 	. . . 
	nop			;91b0	00 	. 
	nop			;91b1	00 	. 
	nop			;91b2	00 	. 
	nop			;91b3	00 	. 
	nop			;91b4	00 	. 
	nop			;91b5	00 	. 
	nop			;91b6	00 	. 
	nop			;91b7	00 	. 
	nop			;91b8	00 	. 
	nop			;91b9	00 	. 
	nop			;91ba	00 	. 
	nop			;91bb	00 	. 
	nop			;91bc	00 	. 
	nop			;91bd	00 	. 
	add a,b			;91be	80 	. 
	add a,b			;91bf	80 	. 
	nop			;91c0	00 	. 
	ld b,b			;91c1	40 	@ 
	ld b,b			;91c2	40 	@ 
	add a,b			;91c3	80 	. 
	jr nz,$+34		;91c4	20 20 	    
	ld b,b			;91c6	40 	@ 
	sub b			;91c7	90 	. 
	sub b			;91c8	90 	. 
	inc c			;91c9	0c 	. 
	jp p,000f2h		;91ca	f2 f2 00 	. . . 
	rst 38h			;91cd	ff 	. 
	rst 38h			;91ce	ff 	. 
l91cfh:
	rst 38h			;91cf	ff 	. 
	rst 38h			;91d0	ff 	. 
	rst 38h			;91d1	ff 	. 
	ret p			;91d2	f0 	. 
	rst 38h			;91d3	ff 	. 
	rst 38h			;91d4	ff 	. 
	ret nz			;91d5	c0 	. 
	ret p			;91d6	f0 	. 
	rst 38h			;91d7	ff 	. 
	nop			;91d8	00 	. 
	ret p			;91d9	f0 	. 
	rst 38h			;91da	ff 	. 
	add a,b			;91db	80 	. 
	ld h,c			;91dc	61 	a 
	ld a,a			;91dd	7f 	 
	nop			;91de	00 	. 
	and c			;91df	a1 	. 
	cp a			;91e0	bf 	. 
	ld a,b			;91e1	78 	x 
	add a,h			;91e2	84 	. 
	add a,h			;91e3	84 	. 
	ld (04949h),a		;91e4	32 49 49 	2 I I 
	jr nz,l923ah		;91e7	20 51 	  Q 
	ld d,c			;91e9	51 	Q 
l91eah:
	nop			;91ea	00 	. 
	ld hl,00021h		;91eb	21 21 00 	! ! . 
	ld bc,00001h		;91ee	01 01 00 	. . . 
	ld bc,00001h		;91f1	01 01 00 	. . . 
	nop			;91f4	00 	. 
	nop			;91f5	00 	. 
	nop			;91f6	00 	. 
	nop			;91f7	00 	. 
	nop			;91f8	00 	. 
	nop			;91f9	00 	. 
	adc a,a			;91fa	8f 	. 
	rst 38h			;91fb	ff 	. 
	nop			;91fc	00 	. 
	adc a,a			;91fd	8f 	. 
	rst 38h			;91fe	ff 	. 
	ld (hl),h			;91ff	74 	t 
	rst 38h			;9200	ff 	. 
	rst 38h			;9201	ff 	. 
	ret p			;9202	f0 	. 
	ei			;9203	fb 	. 
	ei			;9204	fb 	. 
	jr l91eah		;9205	18 e3 	. . 
	ex (sp),hl			;9207	e3 	. 
	nop			;9208	00 	. 
	rst 0			;9209	c7 	. 
	rst 0			;920a	c7 	. 
	ld (bc),a			;920b	02 	. 
	call m,004fch		;920c	fc fc 04 	. . . 
	ld a,b			;920f	78 	x 
	ld a,b			;9210	78 	x 
	nop			;9211	00 	. 
	nop			;9212	00 	. 
	nop			;9213	00 	. 
	nop			;9214	00 	. 
	add a,b			;9215	80 	. 
	add a,b			;9216	80 	. 
	nop			;9217	00 	. 
	add a,b			;9218	80 	. 
	add a,b			;9219	80 	. 
	nop			;921a	00 	. 
	nop			;921b	00 	. 
	nop			;921c	00 	. 
	nop			;921d	00 	. 
	nop			;921e	00 	. 
	nop			;921f	00 	. 
	nop			;9220	00 	. 
	nop			;9221	00 	. 
	nop			;9222	00 	. 
	nop			;9223	00 	. 
	nop			;9224	00 	. 
	nop			;9225	00 	. 
	nop			;9226	00 	. 
	nop			;9227	00 	. 
	nop			;9228	00 	. 
	nop			;9229	00 	. 
	nop			;922a	00 	. 
	nop			;922b	00 	. 
	nop			;922c	00 	. 
	nop			;922d	00 	. 
	nop			;922e	00 	. 
	nop			;922f	00 	. 
	nop			;9230	00 	. 
	nop			;9231	00 	. 
	nop			;9232	00 	. 
	rlca			;9233	07 	. 
	rlca			;9234	07 	. 
	nop			;9235	00 	. 
	jr l9250h		;9236	18 18 	. . 
	nop			;9238	00 	. 
	daa			;9239	27 	' 
l923ah:
	daa			;923a	27 	' 
	nop			;923b	00 	. 
	ld c,a			;923c	4f 	O 
	ld c,b			;923d	48 	H 
	jr nz,l91cfh		;923e	20 8f 	  . 
	adc a,b			;9240	88 	. 
	ret p			;9241	f0 	. 
	nop			;9242	00 	. 
	nop			;9243	00 	. 
	nop			;9244	00 	. 
	ld h,b			;9245	60 	` 
	ld h,b			;9246	60 	` 
	nop			;9247	00 	. 
	ret p			;9248	f0 	. 
	ret p			;9249	f0 	. 
	ld (hl),b			;924a	70 	p 
	ld c,00eh		;924b	0e 0e 	. . 
	ld b,0f9h		;924d	06 f9 	. . 
	ld sp,hl			;924f	f9 	. 
l9250h:
	ld bc,006feh		;9250	01 fe 06 	. . . 
	nop			;9253	00 	. 
	rst 38h			;9254	ff 	. 
	ld bc,0ff00h		;9255	01 00 ff 	. . . 
	nop			;9258	00 	. 
	inc c			;9259	0c 	. 
	jp p,000f2h		;925a	f2 f2 00 	. . . 
	rst 38h			;925d	ff 	. 
	rst 38h			;925e	ff 	. 
	rst 38h			;925f	ff 	. 
	rst 38h			;9260	ff 	. 
	rst 38h			;9261	ff 	. 
	ret p			;9262	f0 	. 
	rst 38h			;9263	ff 	. 
	rst 38h			;9264	ff 	. 
	ret nz			;9265	c0 	. 
	ret p			;9266	f0 	. 
	rst 38h			;9267	ff 	. 
	nop			;9268	00 	. 
	ret p			;9269	f0 	. 
	rst 38h			;926a	ff 	. 
	add a,b			;926b	80 	. 
	ld (hl),b			;926c	70 	p 
	ld a,a			;926d	7f 	 
	nop			;926e	00 	. 
	cp b			;926f	b8 	. 
	cp a			;9270	bf 	. 
	ld (bc),a			;9271	02 	. 
l9272h:
	ret po			;9272	e0 	. 
	call m,0e201h		;9273	fc 01 e2 	. . . 
	cp 000h		;9276	fe 00 	. . 
	and e			;9278	a3 	. 
	cp a			;9279	bf 	. 
	inc e			;927a	1c 	. 
	cp a			;927b	bf 	. 
	cp a			;927c	bf 	. 
	inc a			;927d	3c 	< 
	rst 38h			;927e	ff 	. 
	rst 38h			;927f	ff 	. 
	inc e			;9280	1c 	. 
	jp 000c3h		;9281	c3 c3 00 	. . . 
	cp 0feh		;9284	fe fe 	. . 
	nop			;9286	00 	. 
	ld a,h			;9287	7c 	| 
	ld a,h			;9288	7c 	| 
	inc c			;9289	0c 	. 
	jp p,000f2h		;928a	f2 f2 00 	. . . 
	rst 38h			;928d	ff 	. 
	rst 38h			;928e	ff 	. 
	rst 38h			;928f	ff 	. 
	rst 38h			;9290	ff 	. 
	rst 38h			;9291	ff 	. 
	ret p			;9292	f0 	. 
	rst 38h			;9293	ff 	. 
	rst 38h			;9294	ff 	. 
	ret nz			;9295	c0 	. 
	ret m			;9296	f8 	. 
	rst 38h			;9297	ff 	. 
	nop			;9298	00 	. 
	ret p			;9299	f0 	. 
	rst 38h			;929a	ff 	. 
	add a,b			;929b	80 	. 
	ld a,b			;929c	78 	x 
	ld a,a			;929d	7f 	 
	ld bc,lbfafh		;929e	01 af bf 	. . . 
	ld a,061h		;92a1	3e 61 	> a 
	ld e,a			;92a3	5f 	_ 
	ld a,(hl)			;92a4	7e 	~ 
	pop af			;92a5	f1 	. 
	adc a,a			;92a6	8f 	. 
	cp (hl)			;92a7	be 	. 
	rst 38h			;92a8	ff 	. 
	pop bc			;92a9	c1 	. 
	nop			;92aa	00 	. 
	rst 38h			;92ab	ff 	. 
	rst 38h			;92ac	ff 	. 
	djnz l92efh		;92ad	10 40 	. @ 
	ret nz			;92af	c0 	. 
	jr nz,l9272h		;92b0	20 c0 	  . 
	ret nz			;92b2	c0 	. 
	ld b,b			;92b3	40 	@ 
	nop			;92b4	00 	. 
	add a,b			;92b5	80 	. 
	ret nz			;92b6	c0 	. 
	ret po			;92b7	e0 	. 
	ret po			;92b8	e0 	. 
	rrca			;92b9	0f 	. 
	rst 38h			;92ba	ff 	. 
	rst 38h			;92bb	ff 	. 
	rlca			;92bc	07 	. 
	ret z			;92bd	c8 	. 
	ret m			;92be	f8 	. 
	ex af,af'			;92bf	08 	. 
	sub a			;92c0	97 	. 
	rst 30h			;92c1	f7 	. 
	ld d,b			;92c2	50 	P 
	jp 060e3h		;92c3	c3 e3 60 	. . ` 
	di			;92c6	f3 	. 
	di			;92c7	f3 	. 
	nop			;92c8	00 	. 
	rst 20h			;92c9	e7 	. 
	rst 20h			;92ca	e7 	. 
	nop			;92cb	00 	. 
	cp 0feh		;92cc	fe fe 	. . 
	nop			;92ce	00 	. 
l92cfh:
	ld a,h			;92cf	7c 	| 
	ld a,h			;92d0	7c 	| 
	nop			;92d1	00 	. 
	add a,b			;92d2	80 	. 
	add a,b			;92d3	80 	. 
	nop			;92d4	00 	. 
	nop			;92d5	00 	. 
	nop			;92d6	00 	. 
	nop			;92d7	00 	. 
	nop			;92d8	00 	. 
	nop			;92d9	00 	. 
	nop			;92da	00 	. 
	nop			;92db	00 	. 
	nop			;92dc	00 	. 
	nop			;92dd	00 	. 
	nop			;92de	00 	. 
	nop			;92df	00 	. 
	nop			;92e0	00 	. 
	nop			;92e1	00 	. 
	nop			;92e2	00 	. 
	nop			;92e3	00 	. 
	nop			;92e4	00 	. 
	nop			;92e5	00 	. 
	nop			;92e6	00 	. 
	nop			;92e7	00 	. 
	nop			;92e8	00 	. 
	rst 38h			;92e9	ff 	. 
	nop			;92ea	00 	. 
	nop			;92eb	00 	. 
	nop			;92ec	00 	. 
	nop			;92ed	00 	. 
	nop			;92ee	00 	. 
l92efh:
	nop			;92ef	00 	. 
	nop			;92f0	00 	. 
	nop			;92f1	00 	. 
	nop			;92f2	00 	. 
	ld bc,00101h		;92f3	01 01 01 	. . . 
	ld b,006h		;92f6	06 06 	. . 
	ld (bc),a			;92f8	02 	. 
	add hl,bc			;92f9	09 	. 
	add hl,bc			;92fa	09 	. 
	inc b			;92fb	04 	. 
	inc de			;92fc	13 	. 
	ld (de),a			;92fd	12 	. 
	ex af,af'			;92fe	08 	. 
	daa			;92ff	27 	' 
	inc h			;9300	24 	$ 
	rst 20h			;9301	e7 	. 
	jr l931ch		;9302	18 18 	. . 
	nop			;9304	00 	. 
	jr l931fh		;9305	18 18 	. . 
	nop			;9307	00 	. 
	inc a			;9308	3c 	< 
	inc a			;9309	3c 	< 
	jr c,l92cfh		;930a	38 c3 	8 . 
	jp 07c80h		;930c	c3 80 7c 	. . | 
	ld a,h			;930f	7c 	| 
	nop			;9310	00 	. 
	rst 38h			;9311	ff 	. 
	add a,e			;9312	83 	. 
	nop			;9313	00 	. 
	rst 38h			;9314	ff 	. 
	nop			;9315	00 	. 
	nop			;9316	00 	. 
	rst 38h			;9317	ff 	. 
	nop			;9318	00 	. 
	rst 38h			;9319	ff 	. 
	nop			;931a	00 	. 
	nop			;931b	00 	. 
l931ch:
	nop			;931c	00 	. 
	nop			;931d	00 	. 
	nop			;931e	00 	. 
l931fh:
	nop			;931f	00 	. 
	nop			;9320	00 	. 
	nop			;9321	00 	. 
	nop			;9322	00 	. 
	add a,b			;9323	80 	. 
	add a,b			;9324	80 	. 
	nop			;9325	00 	. 
	ld h,b			;9326	60 	` 
	ld h,b			;9327	60 	` 
	nop			;9328	00 	. 
	sub b			;9329	90 	. 
	sub b			;932a	90 	. 
	nop			;932b	00 	. 
	ret z			;932c	c8 	. 
	ld c,b			;932d	48 	H 
	djnz $-58		;932e	10 c4 	. . 
	ld b,h			;9330	44 	D 
	ex af,af'			;9331	08 	. 
	daa			;9332	27 	' 
	inc h			;9333	24 	$ 
	djnz l9385h		;9334	10 4f 	. O 
	ld c,b			;9336	48 	H 
l9337h:
	djnz l9388h		;9337	10 4f 	. O 
	ld c,b			;9339	48 	H 
	djnz l938bh		;933a	10 4f 	. O 
	ld c,b			;933c	48 	H 
	ld d,b			;933d	50 	P 
	and a			;933e	a7 	. 
	call po,sub_9f60h		;933f	e4 60 9f 	. ` . 
	ret m			;9342	f8 	. 
	ld (hl),b			;9343	70 	p 
	adc a,a			;9344	8f 	. 
	cp 078h		;9345	fe 78 	. x 
	add a,l			;9347	85 	. 
	defb 0fdh,060h	;ld iyh,b		;9348	fd 60 	. ` 
	rst 38h			;934a	ff 	. 
	nop			;934b	00 	. 
	pop af			;934c	f1 	. 
	rst 18h			;934d	df 	. 
	jr nz,l9337h		;934e	20 e7 	  . 
	cp h			;9350	bc 	. 
	ld b,b			;9351	40 	@ 
	xor 0b9h		;9352	ee b9 	. . 
	ld b,c			;9354	41 	A 
	xor 0b9h		;9355	ee b9 	. . 
	ld b,c			;9357	41 	A 
	ld l,a			;9358	6f 	o 
	ret c			;9359	d8 	. 
	jr nz,l938bh		;935a	20 2f 	  / 
	rst 38h			;935c	ff 	. 
	nop			;935d	00 	. 
	rrca			;935e	0f 	. 
	rst 38h			;935f	ff 	. 
	add a,b			;9360	80 	. 
	adc a,b			;9361	88 	. 
	call po,sub_8824h		;9362	e4 24 88 	. $ . 
	jp po,l8822h		;9365	e2 22 88 	. " . 
	jp nz,l8042h		;9368	c2 42 80 	. B . 
	jp nz,l8042h		;936b	c2 42 80 	. B . 
	pop bc			;936e	c1 	. 
	ld b,c			;936f	41 	A 
	ret nz			;9370	c0 	. 
	pop hl			;9371	e1 	. 
	ld hl,0e1c0h		;9372	21 c0 e1 	! . . 
	ld hl,0c380h		;9375	21 80 c3 	! . . 
	ld b,e			;9378	43 	C 
	ld a,h			;9379	7c 	| 
	add a,(hl)			;937a	86 	. 
	jp m,l8f7eh		;937b	fa 7e 8f 	. ~ . 
	pop af			;937e	f1 	. 
	ld a,l			;937f	7d 	} 
	rst 38h			;9380	ff 	. 
	add a,e			;9381	83 	. 
	nop			;9382	00 	. 
	rst 38h			;9383	ff 	. 
	rst 38h			;9384	ff 	. 
l9385h:
	ex af,af'			;9385	08 	. 
	ld (bc),a			;9386	02 	. 
	inc bc			;9387	03 	. 
l9388h:
	inc b			;9388	04 	. 
	inc bc			;9389	03 	. 
	inc bc			;938a	03 	. 
l938bh:
	ld (bc),a			;938b	02 	. 
	ld bc,00101h		;938c	01 01 01 	. . . 
	nop			;938f	00 	. 
	nop			;9390	00 	. 
	jr nc,l93e2h		;9391	30 4f 	0 O 
	ld c,a			;9393	4f 	O 
	nop			;9394	00 	. 
	rst 38h			;9395	ff 	. 
	rst 38h			;9396	ff 	. 
	rst 38h			;9397	ff 	. 
	rst 38h			;9398	ff 	. 
	rst 38h			;9399	ff 	. 
	rrca			;939a	0f 	. 
	rst 38h			;939b	ff 	. 
	rst 38h			;939c	ff 	. 
	inc bc			;939d	03 	. 
	rrca			;939e	0f 	. 
	rst 38h			;939f	ff 	. 
	nop			;93a0	00 	. 
	add a,a			;93a1	87 	. 
	rst 38h			;93a2	ff 	. 
	ld bc,0fee2h		;93a3	01 e2 fe 	. . . 
	ld c,0ffh		;93a6	0e ff 	. . 
	rst 38h			;93a8	ff 	. 
	ld (bc),a			;93a9	02 	. 
	add a,a			;93aa	87 	. 
	add a,l			;93ab	85 	. 
	ld b,0ffh		;93ac	06 ff 	. . 
	ld sp,hl			;93ae	f9 	. 
	or 0ffh		;93af	f6 ff 	. . 
	ld sp,hl			;93b1	f9 	. 
	or 0ffh		;93b2	f6 ff 	. . 
	ld sp,hl			;93b4	f9 	. 
	jp m,0fdffh		;93b5	fa ff fd 	. . . 
	call m,0fefeh		;93b8	fc fe fe 	. . . 
l93bbh:
	jr c,l93bbh		;93bb	38 fe 	8 . 
	cp 0c0h		;93bd	fe c0 	. . 
	inc a			;93bf	3c 	< 
l93c0h:
	inc a			;93c0	3c 	< 
	inc bc			;93c1	03 	. 
	ld a,a			;93c2	7f 	 
	ld a,a			;93c3	7f 	 
	rlca			;93c4	07 	. 
	ret po			;93c5	e0 	. 
	ret m			;93c6	f8 	. 
	inc b			;93c7	04 	. 
	pop bc			;93c8	c1 	. 
	ld sp,hl			;93c9	f9 	. 
	ex af,af'			;93ca	08 	. 
	pop bc			;93cb	c1 	. 
	pop af			;93cc	f1 	. 
l93cdh:
	jr nz,l93c0h		;93cd	20 f1 	  . 
	pop hl			;93cf	e1 	. 
	djnz l93cdh		;93d0	10 fb 	. . 
	ei			;93d2	fb 	. 
	ld bc,07e7eh		;93d3	01 7e 7e 	. ~ ~ 
	nop			;93d6	00 	. 
	ld a,03eh		;93d7	3e 3e 	> > 
	sbc a,0e1h		;93d9	de e1 	. . 
	pop hl			;93db	e1 	. 
	inc c			;93dc	0c 	. 
	jp p,004f2h		;93dd	f2 f2 04 	. . . 
	adc a,d			;93e0	8a 	. 
	adc a,d			;93e1	8a 	. 
l93e2h:
	nop			;93e2	00 	. 
	add a,h			;93e3	84 	. 
	add a,h			;93e4	84 	. 
	nop			;93e5	00 	. 
	add a,b			;93e6	80 	. 
	add a,b			;93e7	80 	. 
	add a,b			;93e8	80 	. 
	nop			;93e9	00 	. 
	nop			;93ea	00 	. 
	nop			;93eb	00 	. 
	nop			;93ec	00 	. 
	nop			;93ed	00 	. 
	nop			;93ee	00 	. 
	nop			;93ef	00 	. 
	nop			;93f0	00 	. 
	rlca			;93f1	07 	. 
	nop			;93f2	00 	. 
	nop			;93f3	00 	. 
	nop			;93f4	00 	. 
	nop			;93f5	00 	. 
	nop			;93f6	00 	. 
	nop			;93f7	00 	. 
	nop			;93f8	00 	. 
	nop			;93f9	00 	. 
	nop			;93fa	00 	. 
	rlca			;93fb	07 	. 
	rlca			;93fc	07 	. 
	ld b,019h		;93fd	06 19 	. . 
	add hl,de			;93ff	19 	. 
	ex af,af'			;9400	08 	. 
	daa			;9401	27 	' 
	ld h,010h		;9402	26 10 	& . 
	ld c,a			;9404	4f 	O 
	ld c,b			;9405	48 	H 
	jr nz,$-95		;9406	20 9f 	  . 
	sub b			;9408	90 	. 
	cp 000h		;9409	fe 00 	. . 
	nop			;940b	00 	. 
	nop			;940c	00 	. 
	ld h,b			;940d	60 	` 
	ld h,b			;940e	60 	` 
	nop			;940f	00 	. 
	ret p			;9410	f0 	. 
	ret p			;9411	f0 	. 
	ret po			;9412	e0 	. 
	ld c,00eh		;9413	0e 0e 	. . 
	nop			;9415	00 	. 
	pop af			;9416	f1 	. 
	pop af			;9417	f1 	. 
	nop			;9418	00 	. 
	cp 00eh		;9419	fe 0e 	. . 
	nop			;941b	00 	. 
	rst 38h			;941c	ff 	. 
	ld bc,0ff00h		;941d	01 00 ff 	. . . 
	ld bc,00000h		;9420	01 00 00 	. . . 
	nop			;9423	00 	. 
	nop			;9424	00 	. 
	nop			;9425	00 	. 
	nop			;9426	00 	. 
	nop			;9427	00 	. 
	nop			;9428	00 	. 
	nop			;9429	00 	. 
	nop			;942a	00 	. 
	nop			;942b	00 	. 
	nop			;942c	00 	. 
	nop			;942d	00 	. 
	add a,b			;942e	80 	. 
	add a,b			;942f	80 	. 
	nop			;9430	00 	. 
	ld b,b			;9431	40 	@ 
	ld b,b			;9432	40 	@ 
	nop			;9433	00 	. 
	jr nz,l9456h		;9434	20 20 	    
	ld b,b			;9436	40 	@ 
l9437h:
	djnz l9449h		;9437	10 10 	. . 
	jr nc,l948ah		;9439	30 4f 	0 O 
	ld c,a			;943b	4f 	O 
	nop			;943c	00 	. 
	rst 38h			;943d	ff 	. 
	rst 38h			;943e	ff 	. 
	rst 38h			;943f	ff 	. 
	rst 38h			;9440	ff 	. 
	rst 38h			;9441	ff 	. 
	rrca			;9442	0f 	. 
	rst 38h			;9443	ff 	. 
	rst 38h			;9444	ff 	. 
	inc bc			;9445	03 	. 
	rrca			;9446	0f 	. 
	rst 38h			;9447	ff 	. 
	nop			;9448	00 	. 
l9449h:
	rrca			;9449	0f 	. 
	rst 38h			;944a	ff 	. 
	ld bc,0fe86h		;944b	01 86 fe 	. . . 
	nop			;944e	00 	. 
	add a,l			;944f	85 	. 
	defb 0fdh,000h,078h	;illegal sequence		;9450	fd 00 78 	. . x 
	ld a,a			;9453	7f 	 
	nop			;9454	00 	. 
	ret m			;9455	f8 	. 
l9456h:
	rst 38h			;9456	ff 	. 
	rla			;9457	17 	. 
	rst 38h			;9458	ff 	. 
	rst 38h			;9459	ff 	. 
	rlca			;945a	07 	. 
	ld l,a			;945b	6f 	o 
	ld l,a			;945c	6f 	o 
	inc c			;945d	0c 	. 
	ld h,e			;945e	63 	c 
	ld h,e			;945f	63 	c 
	nop			;9460	00 	. 
	ld (hl),c			;9461	71 	q 
	ld (hl),c			;9462	71 	q 
	jr nz,l9484h		;9463	20 1f 	  . 
	rra			;9465	1f 	. 
	djnz l9477h		;9466	10 0f 	. . 
	rrca			;9468	0f 	. 
	rrca			;9469	0f 	. 
	sub b			;946a	90 	. 
	sub b			;946b	90 	. 
	ld h,0c9h		;946c	26 c9 	& . 
	ret			;946e	c9 	. 
	ld (bc),a			;946f	02 	. 
	push bc			;9470	c5 	. 
	push bc			;9471	c5 	. 
	add a,b			;9472	80 	. 
	jp nz,000c2h		;9473	c2 c2 00 	. . . 
	ret nz			;9476	c0 	. 
l9477h:
	ret nz			;9477	c0 	. 
	nop			;9478	00 	. 
	ret nz			;9479	c0 	. 
	ret nz			;947a	c0 	. 
	nop			;947b	00 	. 
	add a,b			;947c	80 	. 
	add a,b			;947d	80 	. 
	nop			;947e	00 	. 
	nop			;947f	00 	. 
	nop			;9480	00 	. 
	nop			;9481	00 	. 
	nop			;9482	00 	. 
	nop			;9483	00 	. 
l9484h:
	nop			;9484	00 	. 
	nop			;9485	00 	. 
	nop			;9486	00 	. 
	nop			;9487	00 	. 
	nop			;9488	00 	. 
	nop			;9489	00 	. 
l948ah:
	nop			;948a	00 	. 
	rlca			;948b	07 	. 
	rlca			;948c	07 	. 
	ld b,019h		;948d	06 19 	. . 
	add hl,de			;948f	19 	. 
	ex af,af'			;9490	08 	. 
	daa			;9491	27 	' 
	ld h,010h		;9492	26 10 	& . 
	ld c,a			;9494	4f 	O 
	ld c,b			;9495	48 	H 
	jr nz,l9437h		;9496	20 9f 	  . 
	sub b			;9498	90 	. 
	ret p			;9499	f0 	. 
	nop			;949a	00 	. 
	nop			;949b	00 	. 
	nop			;949c	00 	. 
l949dh:
	ld h,b			;949d	60 	` 
	ld h,b			;949e	60 	` 
	nop			;949f	00 	. 
	ret p			;94a0	f0 	. 
	ret p			;94a1	f0 	. 
	ret po			;94a2	e0 	. 
	ld c,00eh		;94a3	0e 0e 	. . 
	nop			;94a5	00 	. 
	pop af			;94a6	f1 	. 
	pop af			;94a7	f1 	. 
	nop			;94a8	00 	. 
	cp 00eh		;94a9	fe 0e 	. . 
	nop			;94ab	00 	. 
	rst 38h			;94ac	ff 	. 
	ld bc,0ff00h		;94ad	01 00 ff 	. . . 
	ld bc,04f30h		;94b0	01 30 4f 	. 0 O 
	ld c,a			;94b3	4f 	O 
	nop			;94b4	00 	. 
	rst 38h			;94b5	ff 	. 
	rst 38h			;94b6	ff 	. 
	rst 38h			;94b7	ff 	. 
	rst 38h			;94b8	ff 	. 
	rst 38h			;94b9	ff 	. 
	rrca			;94ba	0f 	. 
	rst 38h			;94bb	ff 	. 
	rst 38h			;94bc	ff 	. 
	inc bc			;94bd	03 	. 
	rrca			;94be	0f 	. 
	rst 38h			;94bf	ff 	. 
	nop			;94c0	00 	. 
	rrca			;94c1	0f 	. 
	rst 38h			;94c2	ff 	. 
	ld bc,0fe0eh		;94c3	01 0e fe 	. . . 
	nop			;94c6	00 	. 
	dec e			;94c7	1d 	. 
	defb 0fdh,040h,007h	;illegal sequence		;94c8	fd 40 07 	. @ . 
	ccf			;94cb	3f 	? 
	add a,b			;94cc	80 	. 
	ld b,a			;94cd	47 	G 
	ld a,a			;94ce	7f 	 
	nop			;94cf	00 	. 
	push bc			;94d0	c5 	. 
	defb 0fdh,038h,0fdh	;illegal sequence		;94d1	fd 38 fd 	. 8 . 
sub_94d4h:
	defb 0fdh,03ch,0ffh	;illegal sequence		;94d4	fd 3c ff 	. < . 
	rst 38h			;94d7	ff 	. 
	jr c,l949dh		;94d8	38 c3 	8 . 
	jp 07f00h		;94da	c3 00 7f 	. .  
	ld a,a			;94dd	7f 	 
	nop			;94de	00 	. 
	ld a,03eh		;94df	3e 3e 	> > 
	ld e,021h		;94e1	1e 21 	. ! 
	ld hl,0924ch		;94e3	21 4c 92 	! L . 
	sub d			;94e6	92 	. 
	inc b			;94e7	04 	. 
	adc a,d			;94e8	8a 	. 
	adc a,d			;94e9	8a 	. 
	nop			;94ea	00 	. 
	add a,h			;94eb	84 	. 
	add a,h			;94ec	84 	. 
	nop			;94ed	00 	. 
	add a,b			;94ee	80 	. 
	add a,b			;94ef	80 	. 
	nop			;94f0	00 	. 
	add a,b			;94f1	80 	. 
	add a,b			;94f2	80 	. 
	nop			;94f3	00 	. 
	nop			;94f4	00 	. 
	nop			;94f5	00 	. 
	nop			;94f6	00 	. 
	nop			;94f7	00 	. 
	nop			;94f8	00 	. 
	ld a,h			;94f9	7c 	| 
	add a,(hl)			;94fa	86 	. 
	jp m,l8f7eh		;94fb	fa 7e 8f 	. ~ . 
	pop af			;94fe	f1 	. 
	ld a,l			;94ff	7d 	} 
	rst 38h			;9500	ff 	. 
	add a,e			;9501	83 	. 
	nop			;9502	00 	. 
	rst 38h			;9503	ff 	. 
	rst 38h			;9504	ff 	. 
	ex af,af'			;9505	08 	. 
	ld (bc),a			;9506	02 	. 
	inc bc			;9507	03 	. 
	inc b			;9508	04 	. 
	inc bc			;9509	03 	. 
	inc bc			;950a	03 	. 
	ld (bc),a			;950b	02 	. 
	nop			;950c	00 	. 
	ld bc,00703h		;950d	01 03 07 	. . . 
	rlca			;9510	07 	. 
	jr nc,$+81		;9511	30 4f 	0 O 
	ld c,a			;9513	4f 	O 
	nop			;9514	00 	. 
	rst 38h			;9515	ff 	. 
	rst 38h			;9516	ff 	. 
	rst 38h			;9517	ff 	. 
	rst 38h			;9518	ff 	. 
	rst 38h			;9519	ff 	. 
	rrca			;951a	0f 	. 
	rst 38h			;951b	ff 	. 
	rst 38h			;951c	ff 	. 
	inc bc			;951d	03 	. 
	rra			;951e	1f 	. 
	rst 38h			;951f	ff 	. 
	nop			;9520	00 	. 
	rrca			;9521	0f 	. 
	rst 38h			;9522	ff 	. 
	ld bc,0fe1eh		;9523	01 1e fe 	. . . 
	add a,b			;9526	80 	. 
	push af			;9527	f5 	. 
	defb 0fdh,078h,0ffh	;illegal sequence		;9528	fd 78 ff 	. x . 
	rst 38h			;952b	ff 	. 
	ld (hl),b			;952c	70 	p 
	add hl,bc			;952d	09 	. 
	rrca			;952e	0f 	. 
	ex af,af'			;952f	08 	. 
	ld (hl),h			;9530	74 	t 
	ld (hl),a			;9531	77 	w 
	dec b			;9532	05 	. 
	ld h,c			;9533	61 	a 
	ld h,e			;9534	63 	c 
	inc bc			;9535	03 	. 
	ld h,a			;9536	67 	g 
	ld h,a			;9537	67 	g 
	nop			;9538	00 	. 
	ld (hl),e			;9539	73 	s 
	ld (hl),e			;953a	73 	s 
	nop			;953b	00 	. 
	ccf			;953c	3f 	? 
	ccf			;953d	3f 	? 
	nop			;953e	00 	. 
	rra			;953f	1f 	. 
	rra			;9540	1f 	. 
	rrca			;9541	0f 	. 
	sub b			;9542	90 	. 
	sub b			;9543	90 	. 
	ld h,0c9h		;9544	26 c9 	& . 
	ret			;9546	c9 	. 
	ld (bc),a			;9547	02 	. 
	push bc			;9548	c5 	. 
	push bc			;9549	c5 	. 
	nop			;954a	00 	. 
	jp nz,000c2h		;954b	c2 c2 00 	. . . 
	ret nz			;954e	c0 	. 
	ret nz			;954f	c0 	. 
	nop			;9550	00 	. 
	ret nz			;9551	c0 	. 
	ret nz			;9552	c0 	. 
	nop			;9553	00 	. 
	add a,b			;9554	80 	. 
	add a,b			;9555	80 	. 
	nop			;9556	00 	. 
	nop			;9557	00 	. 
	nop			;9558	00 	. 
	nop			;9559	00 	. 
	rlca			;955a	07 	. 
	rlca			;955b	07 	. 
	nop			;955c	00 	. 
	rra			;955d	1f 	. 
	jr l9560h		;955e	18 00 	. . 
l9560h:
	ccf			;9560	3f 	? 
	jr nz,l9563h		;9561	20 00 	  . 
l9563h:
	ld a,a			;9563	7f 	 
	ld h,b			;9564	60 	` 
	ld h,c			;9565	61 	a 
	rst 38h			;9566	ff 	. 
	add a,b			;9567	80 	. 
	ld b,a			;9568	47 	G 
	rst 38h			;9569	ff 	. 
	add a,b			;956a	80 	. 
	ld c,l			;956b	4d 	M 
	ei			;956c	fb 	. 
	add a,d			;956d	82 	. 
	ld e,l			;956e	5d 	] 
	di			;956f	f3 	. 
	add a,d			;9570	82 	. 
	nop			;9571	00 	. 
	ret po			;9572	e0 	. 
	ret po			;9573	e0 	. 
	nop			;9574	00 	. 
	ret m			;9575	f8 	. 
	jr l9578h		;9576	18 00 	. . 
l9578h:
	call m,00004h		;9578	fc 04 00 	. . . 
	cp 006h		;957b	fe 06 	. . 
	add a,(hl)			;957d	86 	. 
	rst 38h			;957e	ff 	. 
	ld bc,0ffe2h		;957f	01 e2 ff 	. . . 
	ld bc,0dfb2h		;9582	01 b2 df 	. . . 
	ld b,c			;9585	41 	A 
	cp d			;9586	ba 	. 
	rst 8			;9587	cf 	. 
	ld b,c			;9588	41 	A 
	ld e,a			;9589	5f 	_ 
	pop af			;958a	f1 	. 
	add a,b			;958b	80 	. 
	rra			;958c	1f 	. 
	ret p			;958d	f0 	. 
	add a,c			;958e	81 	. 
	ld e,07eh		;958f	1e 7e 	. ~ 
	ld h,c			;9591	61 	a 
	ld l,h			;9592	6c 	l 
	call m,07093h		;9593	fc 93 70 	. . p 
	rst 28h			;9596	ef 	. 
	adc a,a			;9597	8f 	. 
	ld l,a			;9598	6f 	o 
	add a,c			;9599	81 	. 
	sub c			;959a	91 	. 
	ld sp,07f71h		;959b	31 71 7f 	1 q  
	ld a,b			;959e	78 	x 
	ret m			;959f	f8 	. 
	rst 38h			;95a0	ff 	. 
	jp m,0018fh		;95a1	fa 8f 01 	. . . 
	ret m			;95a4	f8 	. 
	rrca			;95a5	0f 	. 
	add a,c			;95a6	81 	. 
	ld a,b			;95a7	78 	x 
	ld a,(hl)			;95a8	7e 	~ 
	add a,(hl)			;95a9	86 	. 
	ld (hl),03fh		;95aa	36 3f 	6 ? 
	ret			;95ac	c9 	. 
	ld c,0f7h		;95ad	0e f7 	. . 
	pop af			;95af	f1 	. 
	or 081h		;95b0	f6 81 	. . 
	adc a,c			;95b2	89 	. 
	adc a,h			;95b3	8c 	. 
	adc a,(hl)			;95b4	8e 	. 
	cp 01eh		;95b5	fe 1e 	. . 
	rra			;95b7	1f 	. 
	rst 38h			;95b8	ff 	. 
	ld a,b			;95b9	78 	x 
	ret m			;95ba	f8 	. 
	rst 38h			;95bb	ff 	. 
	inc a			;95bc	3c 	< 
	ld a,l			;95bd	7d 	} 
	ld a,a			;95be	7f 	 
	inc c			;95bf	0c 	. 
	ld a,03eh		;95c0	3e 3e 	> > 
	nop			;95c2	00 	. 
	inc c			;95c3	0c 	. 
	inc c			;95c4	0c 	. 
	nop			;95c5	00 	. 
	nop			;95c6	00 	. 
	nop			;95c7	00 	. 
	nop			;95c8	00 	. 
	nop			;95c9	00 	. 
	nop			;95ca	00 	. 
	nop			;95cb	00 	. 
	nop			;95cc	00 	. 
	nop			;95cd	00 	. 
	nop			;95ce	00 	. 
	nop			;95cf	00 	. 
	nop			;95d0	00 	. 
	ld e,01fh		;95d1	1e 1f 	. . 
	rst 38h			;95d3	ff 	. 
	inc a			;95d4	3c 	< 
	cp (hl)			;95d5	be 	. 
	cp 030h		;95d6	fe 30 	. 0 
	ld a,h			;95d8	7c 	| 
	ld a,h			;95d9	7c 	| 
	nop			;95da	00 	. 
	jr nc,l960dh		;95db	30 30 	0 0 
	nop			;95dd	00 	. 
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
	ex af,af'			;95ec	08 	. 
	nop			;95ed	00 	. 
	nop			;95ee	00 	. 
	add a,b			;95ef	80 	. 
	nop			;95f0	00 	. 
	nop			;95f1	00 	. 
	ex af,af'			;95f2	08 	. 
	nop			;95f3	00 	. 
	nop			;95f4	00 	. 
	adc a,b			;95f5	88 	. 
	rlca			;95f6	07 	. 
	rlca			;95f7	07 	. 
	adc a,b			;95f8	88 	. 
	scf			;95f9	37 	7 
	jr nc,$-118		;95fa	30 88 	0 . 
	ld (hl),a			;95fc	77 	w 
	ld b,b			;95fd	40 	@ 
	add a,b			;95fe	80 	. 
	ld a,a			;95ff	7f 	 
	ld b,b			;9600	40 	@ 
	ld b,b			;9601	40 	@ 
	nop			;9602	00 	. 
	nop			;9603	00 	. 
	ld b,b			;9604	40 	@ 
	nop			;9605	00 	. 
	nop			;9606	00 	. 
	ld c,b			;9607	48 	H 
	nop			;9608	00 	. 
	nop			;9609	00 	. 
	ld c,b			;960a	48 	H 
	nop			;960b	00 	. 
	nop			;960c	00 	. 
l960dh:
	ld c,b			;960d	48 	H 
	add a,b			;960e	80 	. 
	add a,b			;960f	80 	. 
	ex af,af'			;9610	08 	. 
	ret p			;9611	f0 	. 
	jr nc,l9654h		;9612	30 40 	0 @ 
	cp b			;9614	b8 	. 
	ex af,af'			;9615	08 	. 
	ld c,b			;9616	48 	H 
	or h			;9617	b4 	. 
	inc b			;9618	04 	. 
	ld h,c			;9619	61 	a 
	rst 38h			;961a	ff 	. 
	add a,b			;961b	80 	. 
	ld b,a			;961c	47 	G 
	rst 38h			;961d	ff 	. 
	add a,b			;961e	80 	. 
	ld c,l			;961f	4d 	M 
	cp e			;9620	bb 	. 
	add a,d			;9621	82 	. 
	ld e,l			;9622	5d 	] 
	di			;9623	f3 	. 
	add a,d			;9624	82 	. 
	ld e,a			;9625	5f 	_ 
	pop af			;9626	f1 	. 
	add a,b			;9627	80 	. 
	rra			;9628	1f 	. 
	ret p			;9629	f0 	. 
	add a,c			;962a	81 	. 
	ld e,07eh		;962b	1e 7e 	. ~ 
	ld h,c			;962d	61 	a 
	ld l,h			;962e	6c 	l 
	call m,l8693h		;962f	fc 93 86 	. . . 
	rst 38h			;9632	ff 	. 
	ld bc,0fbe6h		;9633	01 e6 fb 	. . . 
	ld bc,0dbb6h		;9636	01 b6 db 	. . . 
	ld b,c			;9639	41 	A 
	cp d			;963a	ba 	. 
	rst 8			;963b	cf 	. 
	ld b,c			;963c	41 	A 
	jp m,0018fh		;963d	fa 8f 01 	. . . 
	ret m			;9640	f8 	. 
	rrca			;9641	0f 	. 
	add a,c			;9642	81 	. 
	ld a,b			;9643	78 	x 
	ld a,(hl)			;9644	7e 	~ 
	add a,(hl)			;9645	86 	. 
	ld (hl),03fh		;9646	36 3f 	6 ? 
	ret			;9648	c9 	. 
	ld (hl),b			;9649	70 	p 
	rst 28h			;964a	ef 	. 
	adc a,a			;964b	8f 	. 
	ld l,a			;964c	6f 	o 
	add a,c			;964d	81 	. 
	sub c			;964e	91 	. 
	ld sp,07f71h		;964f	31 71 7f 	1 q  
	ld a,b			;9652	78 	x 
	ret m			;9653	f8 	. 
l9654h:
	rst 38h			;9654	ff 	. 
	ld a,b			;9655	78 	x 
	ret m			;9656	f8 	. 
	rst 38h			;9657	ff 	. 
	inc a			;9658	3c 	< 
	ld a,l			;9659	7d 	} 
	ld a,a			;965a	7f 	 
	inc c			;965b	0c 	. 
	ld a,03eh		;965c	3e 3e 	> > 
	nop			;965e	00 	. 
	inc c			;965f	0c 	. 
	inc c			;9660	0c 	. 
	ld c,0f7h		;9661	0e f7 	. . 
	pop af			;9663	f1 	. 
	or 081h		;9664	f6 81 	. . 
	adc a,c			;9666	89 	. 
	adc a,h			;9667	8c 	. 
	adc a,(hl)			;9668	8e 	. 
	cp 01eh		;9669	fe 1e 	. . 
	rra			;966b	1f 	. 
	rst 38h			;966c	ff 	. 
	ld e,01fh		;966d	1e 1f 	. . 
	rst 38h			;966f	ff 	. 
	inc a			;9670	3c 	< 
	cp (hl)			;9671	be 	. 
	cp 030h		;9672	fe 30 	. 0 
	ld a,h			;9674	7c 	| 
	ld a,h			;9675	7c 	| 
	nop			;9676	00 	. 
	jr nc,$+50		;9677	30 30 	0 0 
	ld c,07bh		;9679	0e 7b 	. { 
	ld b,h			;967b	44 	D 
	ld b,0fdh		;967c	06 fd 	. . 
	add a,d			;967e	82 	. 
	ld (bc),a			;967f	02 	. 
	ld a,a			;9680	7f 	 
	ld h,b			;9681	60 	` 
	nop			;9682	00 	. 
	rra			;9683	1f 	. 
	jr l9689h		;9684	18 03 	. . 
	inc b			;9686	04 	. 
	inc b			;9687	04 	. 
	nop			;9688	00 	. 
l9689h:
	jr z,$+49		;9689	28 2f 	( / 
	nop			;968b	00 	. 
	ld a,e			;968c	7b 	{ 
	ld e,a			;968d	5f 	_ 
l968eh:
	nop			;968e	00 	. 
	ld a,b			;968f	78 	x 
	ld e,a			;9690	5f 	_ 
	ret pe			;9691	e8 	. 
	sbc a,h			;9692	9c 	. 
	inc d			;9693	14 	. 
	call m,0028eh		;9694	fc 8e 02 	. . . 
	call m,003ffh		;9697	fc ff 03 	. . . 
	ret m			;969a	f8 	. 
	defb 0fdh,005h,000h	;illegal sequence		;969b	fd 05 00 	. . . 
	ld sp,hl			;969e	f9 	. 
	ld sp,hl			;969f	f9 	. 
	ret z			;96a0	c8 	. 
	dec c			;96a1	0d 	. 
	dec (hl)			;96a2	35 	5 
	dec a			;96a3	3d 	= 
	ld c,0c2h		;96a4	0e c2 	. . 
	dec bc			;96a6	0b 	. 
	call 000f5h		;96a7	cd f5 00 	. . . 
	nop			;96aa	00 	. 
	nop			;96ab	00 	. 
	nop			;96ac	00 	. 
	nop			;96ad	00 	. 
	nop			;96ae	00 	. 
	nop			;96af	00 	. 
	ret po			;96b0	e0 	. 
	ret po			;96b1	e0 	. 
	ret po			;96b2	e0 	. 
	ld a,b			;96b3	78 	x 
	ld a,b			;96b4	78 	x 
	ret m			;96b5	f8 	. 
	ld a,h			;96b6	7c 	| 
	ld a,h			;96b7	7c 	| 
	call m,07e7eh		;96b8	fc 7e 7e 	. ~ ~ 
	cp 0ffh		;96bb	fe ff 	. . 
	rst 38h			;96bd	ff 	. 
	cp 0ffh		;96be	fe ff 	. . 
	rst 38h			;96c0	ff 	. 
	nop			;96c1	00 	. 
	ld a,a			;96c2	7f 	 
	ld a,a			;96c3	7f 	 
	ccf			;96c4	3f 	? 
	ld b,b			;96c5	40 	@ 
	ld b,b			;96c6	40 	@ 
	ld e,a			;96c7	5f 	_ 
	ccf			;96c8	3f 	? 
	jr nz,$-15		;96c9	20 ef 	  . 
	rra			;96cb	1f 	. 
	djnz l968eh		;96cc	10 c0 	. . 
	rrca			;96ce	0f 	. 
	rrca			;96cf	0f 	. 
	nop			;96d0	00 	. 
	nop			;96d1	00 	. 
	nop			;96d2	00 	. 
	nop			;96d3	00 	. 
	nop			;96d4	00 	. 
	nop			;96d5	00 	. 
	nop			;96d6	00 	. 
	nop			;96d7	00 	. 
	nop			;96d8	00 	. 
	rlca			;96d9	07 	. 
	ret m			;96da	f8 	. 
	ret m			;96db	f8 	. 
	rst 38h			;96dc	ff 	. 
	rlca			;96dd	07 	. 
	nop			;96de	00 	. 
	rst 38h			;96df	ff 	. 
	rst 38h			;96e0	ff 	. 
	nop			;96e1	00 	. 
	rst 38h			;96e2	ff 	. 
	rst 38h			;96e3	ff 	. 
	nop			;96e4	00 	. 
	nop			;96e5	00 	. 
	rst 38h			;96e6	ff 	. 
	rst 38h			;96e7	ff 	. 
	nop			;96e8	00 	. 
	nop			;96e9	00 	. 
	nop			;96ea	00 	. 
	nop			;96eb	00 	. 
	nop			;96ec	00 	. 
	nop			;96ed	00 	. 
	nop			;96ee	00 	. 
	nop			;96ef	00 	. 
	nop			;96f0	00 	. 
	cp 001h		;96f1	fe 01 	. . 
	ld bc,0fefch		;96f3	01 fc fe 	. . . 
	ld (bc),a			;96f6	02 	. 
	ret p			;96f7	f0 	. 
	call m,sub_800ch		;96f8	fc 0c 80 	. . . 
	ret p			;96fb	f0 	. 
	ld (hl),b			;96fc	70 	p 
	nop			;96fd	00 	. 
	add a,b			;96fe	80 	. 
	add a,b			;96ff	80 	. 
	nop			;9700	00 	. 
	nop			;9701	00 	. 
	nop			;9702	00 	. 
	nop			;9703	00 	. 
	nop			;9704	00 	. 
	nop			;9705	00 	. 
	nop			;9706	00 	. 
	nop			;9707	00 	. 
	nop			;9708	00 	. 
	ld c,b			;9709	48 	H 
	scf			;970a	37 	7 
	scf			;970b	37 	7 
	cp a			;970c	bf 	. 
	ld b,b			;970d	40 	@ 
	ld b,b			;970e	40 	@ 
	ld e,a			;970f	5f 	_ 
	ld (bc),a			;9710	02 	. 
	nop			;9711	00 	. 
	cp a			;9712	bf 	. 
	nop			;9713	00 	. 
	nop			;9714	00 	. 
	ld (hl),a			;9715	77 	w 
	nop			;9716	00 	. 
	nop			;9717	00 	. 
	inc c			;9718	0c 	. 
	nop			;9719	00 	. 
	nop			;971a	00 	. 
	nop			;971b	00 	. 
	nop			;971c	00 	. 
	nop			;971d	00 	. 
	nop			;971e	00 	. 
	nop			;971f	00 	. 
	nop			;9720	00 	. 
	rlca			;9721	07 	. 
	ret m			;9722	f8 	. 
	ret m			;9723	f8 	. 
	rst 38h			;9724	ff 	. 
	rlca			;9725	07 	. 
	nop			;9726	00 	. 
	rst 38h			;9727	ff 	. 
	rst 38h			;9728	ff 	. 
	nop			;9729	00 	. 
	rst 38h			;972a	ff 	. 
	rra			;972b	1f 	. 
	nop			;972c	00 	. 
	rst 38h			;972d	ff 	. 
	nop			;972e	00 	. 
	nop			;972f	00 	. 
	and b			;9730	a0 	. 
	nop			;9731	00 	. 
	nop			;9732	00 	. 
	nop			;9733	00 	. 
	nop			;9734	00 	. 
	nop			;9735	00 	. 
	nop			;9736	00 	. 
	nop			;9737	00 	. 
	nop			;9738	00 	. 
	cp 001h		;9739	fe 01 	. . 
	ld bc,0fefch		;973b	01 fc fe 	. . . 
	ld (bc),a			;973e	02 	. 
	ret p			;973f	f0 	. 
	call m,sub_800ch		;9740	fc 0c 80 	. . . 
	ret p			;9743	f0 	. 
	ld (hl),b			;9744	70 	p 
	ret nz			;9745	c0 	. 
	nop			;9746	00 	. 
	nop			;9747	00 	. 
	nop			;9748	00 	. 
	nop			;9749	00 	. 
	nop			;974a	00 	. 
	nop			;974b	00 	. 
	nop			;974c	00 	. 
	nop			;974d	00 	. 
	nop			;974e	00 	. 
	nop			;974f	00 	. 
	nop			;9750	00 	. 
	add a,b			;9751	80 	. 
	ld a,a			;9752	7f 	 
	ld a,a			;9753	7f 	 
	ccf			;9754	3f 	? 
	ld b,b			;9755	40 	@ 
	ld b,b			;9756	40 	@ 
	ld e,a			;9757	5f 	_ 
	ccf			;9758	3f 	? 
	jr nz,$+1		;9759	20 ff 	  . 
	ld a,(bc)			;975b	0a 	. 
	nop			;975c	00 	. 
	rst 38h			;975d	ff 	. 
	nop			;975e	00 	. 
	nop			;975f	00 	. 
	add hl,de			;9760	19 	. 
	nop			;9761	00 	. 
	nop			;9762	00 	. 
	nop			;9763	00 	. 
	nop			;9764	00 	. 
	nop			;9765	00 	. 
	nop			;9766	00 	. 
	nop			;9767	00 	. 
	nop			;9768	00 	. 
	rlca			;9769	07 	. 
	ret m			;976a	f8 	. 
	ret m			;976b	f8 	. 
	rst 38h			;976c	ff 	. 
	rlca			;976d	07 	. 
	nop			;976e	00 	. 
	rst 38h			;976f	ff 	. 
	rst 38h			;9770	ff 	. 
	nop			;9771	00 	. 
	rst 38h			;9772	ff 	. 
	ld a,h			;9773	7c 	| 
	nop			;9774	00 	. 
	rst 38h			;9775	ff 	. 
	nop			;9776	00 	. 
	nop			;9777	00 	. 
	ret nz			;9778	c0 	. 
	nop			;9779	00 	. 
	nop			;977a	00 	. 
	nop			;977b	00 	. 
	nop			;977c	00 	. 
	nop			;977d	00 	. 
	nop			;977e	00 	. 
	nop			;977f	00 	. 
	nop			;9780	00 	. 
	cp 001h		;9781	fe 01 	. . 
	ld bc,0fefch		;9783	01 fc fe 	. . . 
	ld (bc),a			;9786	02 	. 
	ret p			;9787	f0 	. 
	call m,0d80ch		;9788	fc 0c d8 	. . . 
	jr nz,l97adh		;978b	20 20 	    
	call m,00000h		;978d	fc 00 00 	. . . 
	nop			;9790	00 	. 
	nop			;9791	00 	. 
	nop			;9792	00 	. 
	nop			;9793	00 	. 
	nop			;9794	00 	. 
	nop			;9795	00 	. 
	nop			;9796	00 	. 
	nop			;9797	00 	. 
	nop			;9798	00 	. 
	nop			;9799	00 	. 
	rlca			;979a	07 	. 
	rlca			;979b	07 	. 
	nop			;979c	00 	. 
	rra			;979d	1f 	. 
	jr l97a0h		;979e	18 00 	. . 
l97a0h:
	ccf			;97a0	3f 	? 
	jr nz,l97a3h		;97a1	20 00 	  . 
l97a3h:
	ld a,a			;97a3	7f 	 
	ld b,b			;97a4	40 	@ 
	ld b,b			;97a5	40 	@ 
	rst 38h			;97a6	ff 	. 
	add a,b			;97a7	80 	. 
	ld b,b			;97a8	40 	@ 
	rst 38h			;97a9	ff 	. 
	add a,b			;97aa	80 	. 
	ld b,b			;97ab	40 	@ 
	rst 38h			;97ac	ff 	. 
l97adh:
	add a,b			;97ad	80 	. 
	ld b,b			;97ae	40 	@ 
	rst 38h			;97af	ff 	. 
	add a,b			;97b0	80 	. 
	nop			;97b1	00 	. 
	ret po			;97b2	e0 	. 
	ret po			;97b3	e0 	. 
	nop			;97b4	00 	. 
	ret m			;97b5	f8 	. 
	jr l97b8h		;97b6	18 00 	. . 
l97b8h:
	call m,00004h		;97b8	fc 04 00 	. . . 
	cp 002h		;97bb	fe 02 	. . 
	ld (bc),a			;97bd	02 	. 
	rst 38h			;97be	ff 	. 
	ld bc,0ff02h		;97bf	01 02 ff 	. . . 
	ld bc,0ff02h		;97c2	01 02 ff 	. . . 
	ld bc,0ff02h		;97c5	01 02 ff 	. . . 
	ld bc,0ff40h		;97c8	01 40 ff 	. @ . 
	add a,b			;97cb	80 	. 
	nop			;97cc	00 	. 
	rst 38h			;97cd	ff 	. 
	add a,b			;97ce	80 	. 
	nop			;97cf	00 	. 
	ld a,a			;97d0	7f 	 
	ld b,b			;97d1	40 	@ 
	nop			;97d2	00 	. 
	ccf			;97d3	3f 	? 
	jr nc,l97d6h		;97d4	30 00 	0 . 
l97d6h:
	rra			;97d6	1f 	. 
	rra			;97d7	1f 	. 
	rrca			;97d8	0f 	. 
	jr nz,l980bh		;97d9	20 30 	  0 
	nop			;97db	00 	. 
	ld b,b			;97dc	40 	@ 
	ld a,a			;97dd	7f 	 
	nop			;97de	00 	. 
	ld b,b			;97df	40 	@ 
	ld a,a			;97e0	7f 	 
	ld (bc),a			;97e1	02 	. 
	rst 38h			;97e2	ff 	. 
	ld bc,0ff00h		;97e3	01 00 ff 	. . . 
	ld bc,0fe00h		;97e6	01 00 fe 	. . . 
	ld (bc),a			;97e9	02 	. 
	nop			;97ea	00 	. 
	call m,0000ch		;97eb	fc 0c 00 	. . . 
	ret m			;97ee	f8 	. 
	ret m			;97ef	f8 	. 
	ret p			;97f0	f0 	. 
	inc b			;97f1	04 	. 
	inc c			;97f2	0c 	. 
	nop			;97f3	00 	. 
	ld (bc),a			;97f4	02 	. 
	cp 000h		;97f5	fe 00 	. . 
l97f7h:
	ld (bc),a			;97f7	02 	. 
	cp 000h		;97f8	fe 00 	. . 
	ret nz			;97fa	c0 	. 
	rst 38h			;97fb	ff 	. 
	nop			;97fc	00 	. 
	ld b,b			;97fd	40 	@ 
	ld a,a			;97fe	7f 	 
	nop			;97ff	00 	. 
	jr nz,l9841h		;9800	20 3f 	  ? 
	nop			;9802	00 	. 
	ld h,03fh		;9803	26 3f 	& ? 
	nop			;9805	00 	. 
	ld h,03fh		;9806	26 3f 	& ? 
	add hl,de			;9808	19 	. 
	ccf			;9809	3f 	? 
	ccf			;980a	3f 	? 
l980bh:
	add hl,de			;980b	19 	. 
	ccf			;980c	3f 	? 
	ccf			;980d	3f 	? 
	nop			;980e	00 	. 
	ccf			;980f	3f 	? 
	ccf			;9810	3f 	? 
	nop			;9811	00 	. 
	jr nc,$-14		;9812	30 f0 	0 . 
	nop			;9814	00 	. 
	jr nz,l97f7h		;9815	20 e0 	  . 
	nop			;9817	00 	. 
	ld b,b			;9818	40 	@ 
	ret nz			;9819	c0 	. 
	nop			;981a	00 	. 
	ld b,b			;981b	40 	@ 
	ret nz			;981c	c0 	. 
	nop			;981d	00 	. 
	ld b,b			;981e	40 	@ 
sub_981fh:
	ret nz			;981f	c0 	. 
	add a,b			;9820	80 	. 
	ret nz			;9821	c0 	. 
	ret nz			;9822	c0 	. 
	add a,b			;9823	80 	. 
	ret nz			;9824	c0 	. 
	ret nz			;9825	c0 	. 
	nop			;9826	00 	. 
	ret nz			;9827	c0 	. 
	ret nz			;9828	c0 	. 
	ld b,b			;9829	40 	@ 
	rst 38h			;982a	ff 	. 
	add a,b			;982b	80 	. 
	nop			;982c	00 	. 
	rst 38h			;982d	ff 	. 
	add a,b			;982e	80 	. 
	nop			;982f	00 	. 
	ld a,a			;9830	7f 	 
	ld b,b			;9831	40 	@ 
	nop			;9832	00 	. 
	ccf			;9833	3f 	? 
	jr nc,l9836h		;9834	30 00 	0 . 
l9836h:
	rrca			;9836	0f 	. 
	rrca			;9837	0f 	. 
	rrca			;9838	0f 	. 
	djnz l984bh		;9839	10 10 	. . 
	nop			;983b	00 	. 
	jr nz,l987dh		;983c	20 3f 	  ? 
	nop			;983e	00 	. 
	ld b,b			;983f	40 	@ 
	ld a,a			;9840	7f 	 
l9841h:
	ld (bc),a			;9841	02 	. 
	rst 38h			;9842	ff 	. 
	ld bc,0ff00h		;9843	01 00 ff 	. . . 
	ld bc,0fe00h		;9846	01 00 fe 	. . . 
	ld (bc),a			;9849	02 	. 
	ld (bc),a			;984a	02 	. 
l984bh:
	rst 38h			;984b	ff 	. 
	dec c			;984c	0d 	. 
	ld b,0f1h		;984d	06 f1 	. . 
	ld sp,hl			;984f	f9 	. 
	ret p			;9850	f0 	. 
	ld (bc),a			;9851	02 	. 
	ld c,000h		;9852	0e 00 	. . 
	inc b			;9854	04 	. 
	call m,00800h		;9855	fc 00 08 	. . . 
	ret m			;9858	f8 	. 
	ld h,b			;9859	60 	` 
	add a,b			;985a	80 	. 
	sbc a,a			;985b	9f 	. 
	ld h,b			;985c	60 	` 
	ret p			;985d	f0 	. 
	sbc a,a			;985e	9f 	. 
	nop			;985f	00 	. 
	ld (hl),c			;9860	71 	q 
	ld a,a			;9861	7f 	 
	nop			;9862	00 	. 
	ld (de),a			;9863	12 	. 
l9864h:
	ld e,000h		;9864	1e 00 	. . 
	ld (de),a			;9866	12 	. 
l9867h:
	ld e,00ch		;9867	1e 0c 	. . 
	ld e,01eh		;9869	1e 1e 	. . 
	inc c			;986b	0c 	. 
	ld e,01eh		;986c	1e 1e 	. . 
	nop			;986e	00 	. 
	ld e,01eh		;986f	1e 1e 	. . 
	nop			;9871	00 	. 
	djnz l9864h		;9872	10 f0 	. . 
	nop			;9874	00 	. 
	djnz l9867h		;9875	10 f0 	. . 
	nop			;9877	00 	. 
	djnz $-14		;9878	10 f0 	. . 
	ld h,b			;987a	60 	` 
	ret p			;987b	f0 	. 
	ret p			;987c	f0 	. 
l987dh:
	nop			;987d	00 	. 
	ret p			;987e	f0 	. 
	ret p			;987f	f0 	. 
	nop			;9880	00 	. 
	nop			;9881	00 	. 
	nop			;9882	00 	. 
	nop			;9883	00 	. 
	nop			;9884	00 	. 
	nop			;9885	00 	. 
	nop			;9886	00 	. 
	nop			;9887	00 	. 
	nop			;9888	00 	. 
	ld b,b			;9889	40 	@ 
	rst 38h			;988a	ff 	. 
	add a,b			;988b	80 	. 
	nop			;988c	00 	. 
	rst 38h			;988d	ff 	. 
	add a,b			;988e	80 	. 
	nop			;988f	00 	. 
	ld a,a			;9890	7f 	 
	ld b,b			;9891	40 	@ 
	ld b,b			;9892	40 	@ 
	rst 38h			;9893	ff 	. 
	or b			;9894	b0 	. 
	ld h,b			;9895	60 	` 
	adc a,a			;9896	8f 	. 
	sbc a,a			;9897	9f 	. 
	rrca			;9898	0f 	. 
	ld b,b			;9899	40 	@ 
	ld (hl),b			;989a	70 	p 
	nop			;989b	00 	. 
	jr nz,l98ddh		;989c	20 3f 	  ? 
	nop			;989e	00 	. 
	djnz l98c0h		;989f	10 1f 	. . 
	ld (bc),a			;98a1	02 	. 
	rst 38h			;98a2	ff 	. 
	ld bc,0ff00h		;98a3	01 00 ff 	. . . 
	ld bc,0fe00h		;98a6	01 00 fe 	. . . 
	ld (bc),a			;98a9	02 	. 
	nop			;98aa	00 	. 
	call m,0000ch		;98ab	fc 0c 00 	. . . 
	ret p			;98ae	f0 	. 
	ret p			;98af	f0 	. 
	ret p			;98b0	f0 	. 
	ex af,af'			;98b1	08 	. 
	ex af,af'			;98b2	08 	. 
	nop			;98b3	00 	. 
	inc b			;98b4	04 	. 
	call m,00200h		;98b5	fc 00 02 	. . . 
	cp 000h		;98b8	fe 00 	. . 
	add a,b			;98ba	80 	. 
	rst 38h			;98bb	ff 	. 
	nop			;98bc	00 	. 
	add a,b			;98bd	80 	. 
	rst 38h			;98be	ff 	. 
	nop			;98bf	00 	. 
l98c0h:
	adc a,b			;98c0	88 	. 
	rst 38h			;98c1	ff 	. 
	ld h,b			;98c2	60 	` 
	call p,000f7h		;98c3	f4 f7 00 	. . . 
	call p,003f7h		;98c6	f4 f7 03 	. . . 
	rlca			;98c9	07 	. 
	rlca			;98ca	07 	. 
	inc bc			;98cb	03 	. 
	rlca			;98cc	07 	. 
	rlca			;98cd	07 	. 
	nop			;98ce	00 	. 
	rlca			;98cf	07 	. 
	rlca			;98d0	07 	. 
	ld h,b			;98d1	60 	` 
	djnz l9864h		;98d2	10 90 	. . 
	ld h,b			;98d4	60 	` 
	ret p			;98d5	f0 	. 
	sub b			;98d6	90 	. 
	nop			;98d7	00 	. 
	ret po			;98d8	e0 	. 
	ret po			;98d9	e0 	. 
	nop			;98da	00 	. 
	add a,b			;98db	80 	. 
	add a,b			;98dc	80 	. 
l98ddh:
	nop			;98dd	00 	. 
	add a,b			;98de	80 	. 
	add a,b			;98df	80 	. 
	nop			;98e0	00 	. 
	add a,b			;98e1	80 	. 
	add a,b			;98e2	80 	. 
	nop			;98e3	00 	. 
	add a,b			;98e4	80 	. 
	add a,b			;98e5	80 	. 
	nop			;98e6	00 	. 
	add a,b			;98e7	80 	. 
	add a,b			;98e8	80 	. 
	ld (bc),a			;98e9	02 	. 
	nop			;98ea	00 	. 
	add a,d			;98eb	82 	. 
	rlca			;98ec	07 	. 
	rra			;98ed	1f 	. 
	ld (bc),a			;98ee	02 	. 
	ccf			;98ef	3f 	? 
	ld (bc),a			;98f0	02 	. 
	ld a,a			;98f1	7f 	 
	add a,h			;98f2	84 	. 
	ld bc,l8f07h		;98f3	01 07 8f 	. . . 
	rst 28h			;98f6	ef 	. 
	inc b			;98f7	04 	. 
	rst 38h			;98f8	ff 	. 
	add a,e			;98f9	83 	. 
	ret po			;98fa	e0 	. 
	ret m			;98fb	f8 	. 
	call m,0ff05h		;98fc	fc 05 ff 	. . . 
	ld (bc),a			;98ff	02 	. 
	nop			;9900	00 	. 
	add a,e			;9901	83 	. 
	ret po			;9902	e0 	. 
	ret m			;9903	f8 	. 
	call m,0fe02h		;9904	fc 02 fe 	. . . 
	ex af,af'			;9907	08 	. 
	rst 38h			;9908	ff 	. 
	add a,c			;9909	81 	. 
	ld a,a			;990a	7f 	 
	dec b			;990b	05 	. 
	rst 38h			;990c	ff 	. 
	ld (bc),a			;990d	02 	. 
	cp 083h		;990e	fe 83 	. . 
	call m,03f7fh		;9910	fc 7f 3f 	.  ? 
	ld (bc),a			;9913	02 	. 
	rra			;9914	1f 	. 
	ld (bc),a			;9915	02 	. 
	ccf			;9916	3f 	? 
	ld (bc),a			;9917	02 	. 
	ld a,a			;9918	7f 	 
	add a,d			;9919	82 	. 
sub_991ah:
	ret m			;991a	f8 	. 
	call m,0fe02h		;991b	fc 02 fe 	. . . 
	inc b			;991e	04 	. 
	rst 38h			;991f	ff 	. 
	inc bc			;9920	03 	. 
	ld a,a			;9921	7f 	 
	ld (bc),a			;9922	02 	. 
	ccf			;9923	3f 	? 
	add a,e			;9924	83 	. 
	rra			;9925	1f 	. 
	rlca			;9926	07 	. 
	nop			;9927	00 	. 
	inc b			;9928	04 	. 
	rst 38h			;9929	ff 	. 
	add a,h			;992a	84 	. 
	ld sp,hl			;992b	f9 	. 
	ret p			;992c	f0 	. 
	ret nz			;992d	c0 	. 
	nop			;992e	00 	. 
	inc b			;992f	04 	. 
	rst 38h			;9930	ff 	. 
	adc a,c			;9931	89 	. 
	call m,070f8h		;9932	fc f8 70 	. . p 
	jr nz,$+1		;9935	20 ff 	  . 
	cp 0feh		;9937	fe fe 	. . 
	call m,003f0h		;9939	fc f0 03 	. . . 
	nop			;993c	00 	. 
	ld (bc),a			;993d	02 	. 
	rst 38h			;993e	ff 	. 
	sub h			;993f	94 	. 
	ret m			;9940	f8 	. 
	rst 30h			;9941	f7 	. 
	rst 28h			;9942	ef 	. 
	rst 28h			;9943	ef 	. 
	defb 0edh;next byte illegal after ed		;9944	ed 	. 
	call 0ffffh		;9945	cd ff ff 	. . . 
	ld a,a			;9948	7f 	 
	rra			;9949	1f 	. 
	xor a			;994a	af 	. 
	rst 30h			;994b	f7 	. 
	rst 30h			;994c	f7 	. 
	ei			;994d	fb 	. 
	or (hl)			;994e	b6 	. 
	or (hl)			;994f	b6 	. 
	cp c			;9950	b9 	. 
	rst 18h			;9951	df 	. 
	rst 18h			;9952	df 	. 
	rst 28h			;9953	ef 	. 
	ld (bc),a			;9954	02 	. 
	rst 38h			;9955	ff 	. 
	ld (bc),a			;9956	02 	. 
	ei			;9957	fb 	. 
	ld (bc),a			;9958	02 	. 
	rst 30h			;9959	f7 	. 
	adc a,l			;995a	8d 	. 
	rst 28h			;995b	ef 	. 
	rst 18h			;995c	df 	. 
	rst 38h			;995d	ff 	. 
	rst 38h			;995e	ff 	. 
	di			;995f	f3 	. 
	defb 0edh;next byte illegal after ed		;9960	ed 	. 
	defb 0edh;next byte illegal after ed		;9961	ed 	. 
	xor 0f6h		;9962	ee f6 	. . 
	rst 30h			;9964	f7 	. 
	rst 30h			;9965	f7 	. 
	ei			;9966	fb 	. 
	sbc a,a			;9967	9f 	. 
	ld b,06fh		;9968	06 6f 	. o 
	adc a,c			;996a	89 	. 
	rst 30h			;996b	f7 	. 
	di			;996c	f3 	. 
	res 6,l		;996d	cb b5 	. . 
	or l			;996f	b5 	. 
	cp c			;9970	b9 	. 
	rst 18h			;9971	df 	. 
	rst 18h			;9972	df 	. 
	rst 28h			;9973	ef 	. 
	inc b			;9974	04 	. 
	ei			;9975	fb 	. 
	ld (bc),a			;9976	02 	. 
	rst 30h			;9977	f7 	. 
	and d			;9978	a2 	. 
	rst 28h			;9979	ef 	. 
	rst 18h			;997a	df 	. 
	rst 38h			;997b	ff 	. 
	rst 38h			;997c	ff 	. 
	rst 20h			;997d	e7 	. 
	in a,(0dbh)		;997e	db db 	. . 
	jp c,0ecech		;9980	da ec ec 	. . . 
	rst 38h			;9983	ff 	. 
	sbc a,a			;9984	9f 	. 
	ld l,a			;9985	6f 	o 
	ld l,c			;9986	69 	i 
	ld h,(hl)			;9987	66 	f 
	sub 0cdh		;9988	d6 cd 	. . 
	defb 0ddh,0eeh,097h	;illegal sequence		;998a	dd ee 97 	. . . 
	ld h,a			;998d	67 	g 
	ld (hl),a			;998e	77 	w 
	ld a,a			;998f	7f 	 
	cp a			;9990	bf 	. 
	rst 18h			;9991	df 	. 
sub_9992h:
	rst 28h			;9992	ef 	. 
	in a,(0f3h)		;9993	db f3 	. . 
	pop af			;9995	f1 	. 
	and 0feh		;9996	e6 fe 	. . 
	ld sp,hl			;9998	f9 	. 
	rst 20h			;9999	e7 	. 
	rst 18h			;999a	df 	. 
	inc b			;999b	04 	. 
	nop			;999c	00 	. 
	add a,h			;999d	84 	. 
	ld bc,00103h		;999e	01 03 01 	. . . 
	inc bc			;99a1	03 	. 
	inc bc			;99a2	03 	. 
	nop			;99a3	00 	. 
	add a,e			;99a4	83 	. 
	ld (hl),b			;99a5	70 	p 
	call m,002feh		;99a6	fc fe 02 	. . . 
	rst 38h			;99a9	ff 	. 
	inc bc			;99aa	03 	. 
	rlca			;99ab	07 	. 
	add a,c			;99ac	81 	. 
	inc bc			;99ad	03 	. 
	inc b			;99ae	04 	. 
	nop			;99af	00 	. 
	add a,(hl)			;99b0	86 	. 
	rst 8			;99b1	cf 	. 
	scf			;99b2	37 	7 
	rst 30h			;99b3	f7 	. 
	rst 8			;99b4	cf 	. 
	ld a,038h		;99b5	3e 38 	> 8 
	ld b,000h		;99b7	06 00 	. . 
	add a,h			;99b9	84 	. 
	ld bc,07f7fh		;99ba	01 7f 7f 	.   
	ld bc,00003h		;99bd	01 03 00 	. . . 
	adc a,c			;99c0	89 	. 
	ret p			;99c1	f0 	. 
	call m,0fffeh		;99c2	fc fe ff 	. . . 
	rst 38h			;99c5	ff 	. 
	rlca			;99c6	07 	. 
	rra			;99c7	1f 	. 
	ld a,(hl)			;99c8	7e 	~ 
	ld (hl),b			;99c9	70 	p 
	inc b			;99ca	04 	. 
	nop			;99cb	00 	. 
	add a,(hl)			;99cc	86 	. 
	rst 38h			;99cd	ff 	. 
	rst 0			;99ce	c7 	. 
	scf			;99cf	37 	7 
	ld c,a			;99d0	4f 	O 
	ld a,038h		;99d1	3e 38 	> 8 
	inc bc			;99d3	03 	. 
	nop			;99d4	00 	. 
	adc a,l			;99d5	8d 	. 
	inc c			;99d6	0c 	. 
	rrca			;99d7	0f 	. 
	inc bc			;99d8	03 	. 
	ld bc,03f38h		;99d9	01 38 3f 	. 8 ? 
	rlca			;99dc	07 	. 
	nop			;99dd	00 	. 
	jr l99f8h		;99de	18 18 	. . 
	adc a,h			;99e0	8c 	. 
	call pe,0027eh		;99e1	ec 7e 02 	. ~ . 
	rst 38h			;99e4	ff 	. 
	ld (bc),a			;99e5	02 	. 
	nop			;99e6	00 	. 
	add a,e			;99e7	83 	. 
	inc bc			;99e8	03 	. 
	rra			;99e9	1f 	. 
	inc e			;99ea	1c 	. 
	inc bc			;99eb	03 	. 
	nop			;99ec	00 	. 
	add a,a			;99ed	87 	. 
	ld a,a			;99ee	7f 	 
	rst 38h			;99ef	ff 	. 
	rst 38h			;99f0	ff 	. 
	adc a,a			;99f1	8f 	. 
	ld e,03ch		;99f2	1e 3c 	. < 
	jr c,l9a07h		;99f4	38 11 	8 . 
	nop			;99f6	00 	. 
	adc a,b			;99f7	88 	. 
l99f8h:
	ex af,af'			;99f8	08 	. 
	jr nc,l9a21h		;99f9	30 26 	0 & 
	sbc a,d			;99fb	9a 	. 
	ld e,c			;99fc	59 	Y 
	ld h,h			;99fd	64 	d 
	inc c			;99fe	0c 	. 
	djnz l9a01h		;99ff	10 00 	. . 
l9a01h:
	ld h,d			;9a01	62 	b 
	nop			;9a02	00 	. 
	add a,d			;9a03	82 	. 
	rlca			;9a04	07 	. 
	rrca			;9a05	0f 	. 
	inc bc			;9a06	03 	. 
l9a07h:
	rra			;9a07	1f 	. 
	adc a,c			;9a08	89 	. 
	ccf			;9a09	3f 	? 
	nop			;9a0a	00 	. 
	nop			;9a0b	00 	. 
	add a,b			;9a0c	80 	. 
	ret po			;9a0d	e0 	. 
	ret p			;9a0e	f0 	. 
	ret m			;9a0f	f8 	. 
	ret m			;9a10	f8 	. 
	call m,07f03h		;9a11	fc 03 7f 	. .  
	ld (bc),a			;9a14	02 	. 
	ccf			;9a15	3f 	? 
	add a,c			;9a16	81 	. 
	rra			;9a17	1f 	. 
	ld (bc),a			;9a18	02 	. 
	nop			;9a19	00 	. 
	ld (bc),a			;9a1a	02 	. 
	call m,0f802h		;9a1b	fc 02 f8 	. . . 
	adc a,b			;9a1e	88 	. 
	ret p			;9a1f	f0 	. 
	ret po			;9a20	e0 	. 
l9a21h:
	nop			;9a21	00 	. 
	nop			;9a22	00 	. 
	inc c			;9a23	0c 	. 
	ld e,01eh		;9a24	1e 1e 	. . 
	rra			;9a26	1f 	. 
	inc bc			;9a27	03 	. 
	rrca			;9a28	0f 	. 
	add a,d			;9a29	82 	. 
	rlca			;9a2a	07 	. 
	ld h,b			;9a2b	60 	` 
	ld b,0f0h		;9a2c	06 f0 	. . 
	add a,e			;9a2e	83 	. 
	ret m			;9a2f	f8 	. 
	rrca			;9a30	0f 	. 
	ccf			;9a31	3f 	? 
	inc bc			;9a32	03 	. 
	ld a,a			;9a33	7f 	 
	ld (bc),a			;9a34	02 	. 
	ccf			;9a35	3f 	? 
	add a,c			;9a36	81 	. 
	rra			;9a37	1f 	. 
	inc b			;9a38	04 	. 
	call m,0f802h		;9a39	fc 02 f8 	. . . 
	sub h			;9a3c	94 	. 
	ret p			;9a3d	f0 	. 
	ret po			;9a3e	e0 	. 
	nop			;9a3f	00 	. 
	nop			;9a40	00 	. 
	jr $+62		;9a41	18 3c 	. < 
	inc a			;9a43	3c 	< 
	dec a			;9a44	3d 	= 
	rra			;9a45	1f 	. 
	rra			;9a46	1f 	. 
	nop			;9a47	00 	. 
	ld h,b			;9a48	60 	` 
	ret p			;9a49	f0 	. 
	or 0ffh		;9a4a	f6 ff 	. . 
	rst 28h			;9a4c	ef 	. 
	cp 0feh		;9a4d	fe fe 	. . 
	rra			;9a4f	1f 	. 
	ld l,a			;9a50	6f 	o 
	inc bc			;9a51	03 	. 
	rst 38h			;9a52	ff 	. 
	adc a,e			;9a53	8b 	. 
	ld a,a			;9a54	7f 	 
	ccf			;9a55	3f 	? 
	rra			;9a56	1f 	. 
	call m,0fefch		;9a57	fc fc fe 	. . . 
	rst 38h			;9a5a	ff 	. 
	rst 38h			;9a5b	ff 	. 
	cp 0f8h		;9a5c	fe f8 	. . 
	ret po			;9a5e	e0 	. 
	inc bc			;9a5f	03 	. 
	nop			;9a60	00 	. 
	adc a,d			;9a61	8a 	. 
	ld bc,00703h		;9a62	01 03 07 	. . . 
	rlca			;9a65	07 	. 
	rrca			;9a66	0f 	. 
	nop			;9a67	00 	. 
	nop			;9a68	00 	. 
	ld (hl),b			;9a69	70 	p 
	call m,003feh		;9a6a	fc fe 03 	. . . 
	rst 38h			;9a6d	ff 	. 
	inc bc			;9a6e	03 	. 
	rrca			;9a6f	0f 	. 
	add a,d			;9a70	82 	. 
	rlca			;9a71	07 	. 
	inc bc			;9a72	03 	. 
	inc bc			;9a73	03 	. 
	nop			;9a74	00 	. 
	dec b			;9a75	05 	. 
	rst 38h			;9a76	ff 	. 
	add a,d			;9a77	82 	. 
	ld a,(hl)			;9a78	7e 	~ 
	jr c,$+6		;9a79	38 04 	8 . 
	nop			;9a7b	00 	. 
	adc a,d			;9a7c	8a 	. 
	ld bc,0ff7fh		;9a7d	01 7f ff 	.  . 
	rst 38h			;9a80	ff 	. 
	ld a,a			;9a81	7f 	 
	nop			;9a82	00 	. 
	nop			;9a83	00 	. 
	ret p			;9a84	f0 	. 
	call m,003feh		;9a85	fc fe 03 	. . . 
	rst 38h			;9a88	ff 	. 
	add a,l			;9a89	85 	. 
	rra			;9a8a	1f 	. 
	ld a,a			;9a8b	7f 	 
	rst 38h			;9a8c	ff 	. 
	cp 070h		;9a8d	fe 70 	. p 
	inc bc			;9a8f	03 	. 
	nop			;9a90	00 	. 
	inc b			;9a91	04 	. 
	rst 38h			;9a92	ff 	. 
	adc a,a			;9a93	8f 	. 
	ld a,a			;9a94	7f 	 
	ld a,(hl)			;9a95	7e 	~ 
	jr c,l9a98h		;9a96	38 00 	8 . 
l9a98h:
	inc c			;9a98	0c 	. 
	rra			;9a99	1f 	. 
	rra			;9a9a	1f 	. 
	rrca			;9a9b	0f 	. 
	dec sp			;9a9c	3b 	; 
	ld a,a			;9a9d	7f 	 
	ld a,a			;9a9e	7f 	 
	ccf			;9a9f	3f 	? 
	jr l9adeh		;9aa0	18 3c 	. < 
	call m,0fe02h		;9aa2	fc 02 fe 	. . . 
	inc bc			;9aa5	03 	. 
	rst 38h			;9aa6	ff 	. 
	add a,(hl)			;9aa7	86 	. 
	rlca			;9aa8	07 	. 
	inc bc			;9aa9	03 	. 
	rra			;9aaa	1f 	. 
	ccf			;9aab	3f 	? 
	ccf			;9aac	3f 	? 
	inc e			;9aad	1c 	. 
	ld (bc),a			;9aae	02 	. 
	nop			;9aaf	00 	. 
	inc b			;9ab0	04 	. 
	rst 38h			;9ab1	ff 	. 
	sbc a,h			;9ab2	9c 	. 
	cp a			;9ab3	bf 	. 
	ld a,(hl)			;9ab4	7e 	~ 
	ld a,h			;9ab5	7c 	| 
	jr c,l9af4h		;9ab6	38 3c 	8 < 
	ld a,(hl)			;9ab8	7e 	~ 
	rst 20h			;9ab9	e7 	. 
	jp 0e7c3h		;9aba	c3 c3 e7 	. . . 
	ld a,(hl)			;9abd	7e 	~ 
	inc a			;9abe	3c 	< 
	ld b,d			;9abf	42 	B 
	rst 20h			;9ac0	e7 	. 
	ld a,(hl)			;9ac1	7e 	~ 
	inc a			;9ac2	3c 	< 
	inc a			;9ac3	3c 	< 
	ld a,(hl)			;9ac4	7e 	~ 
	rst 20h			;9ac5	e7 	. 
	ld b,d			;9ac6	42 	B 
	ex af,af'			;9ac7	08 	. 
	djnz l9aeeh		;9ac8	10 24 	. $ 
	sbc a,d			;9aca	9a 	. 
	ld e,c			;9acb	59 	Y 
	inc h			;9acc	24 	$ 
	ex af,af'			;9acd	08 	. 
	djnz l9ad0h		;9ace	10 00 	. . 
l9ad0h:
	ld h,d			;9ad0	62 	b 
	nop			;9ad1	00 	. 
	sub h			;9ad2	94 	. 
	rlca			;9ad3	07 	. 
	ex af,af'			;9ad4	08 	. 
	djnz $+18		;9ad5	10 10 	. . 
	ld (de),a			;9ad7	12 	. 
	ld (00000h),a		;9ad8	32 00 00 	2 . . 
	add a,b			;9adb	80 	. 
	ret po			;9adc	e0 	. 
	ld d,b			;9add	50 	P 
l9adeh:
	ex af,af'			;9ade	08 	. 
	ex af,af'			;9adf	08 	. 
	inc b			;9ae0	04 	. 
	ld c,c			;9ae1	49 	I 
	ld c,c			;9ae2	49 	I 
	ld b,(hl)			;9ae3	46 	F 
	jr nz,l9b06h		;9ae4	20 20 	    
	djnz l9aeah		;9ae6	10 02 	. . 
	nop			;9ae8	00 	. 
	ld (bc),a			;9ae9	02 	. 
l9aeah:
	inc b			;9aea	04 	. 
	ld (bc),a			;9aeb	02 	. 
	ex af,af'			;9aec	08 	. 
	adc a,l			;9aed	8d 	. 
l9aeeh:
	djnz l9b10h		;9aee	10 20 	.   
	nop			;9af0	00 	. 
	nop			;9af1	00 	. 
	inc c			;9af2	0c 	. 
	ld (de),a			;9af3	12 	. 
l9af4h:
	ld (de),a			;9af4	12 	. 
	ld de,00809h		;9af5	11 09 08 	. . . 
	ex af,af'			;9af8	08 	. 
	inc b			;9af9	04 	. 
	ld h,b			;9afa	60 	` 
	ld b,090h		;9afb	06 90 	. . 
	adc a,c			;9afd	89 	. 
	ex af,af'			;9afe	08 	. 
	inc c			;9aff	0c 	. 
	inc (hl)			;9b00	34 	4 
	ld c,d			;9b01	4a 	J 
	ld c,d			;9b02	4a 	J 
	ld b,(hl)			;9b03	46 	F 
	jr nz,l9b26h		;9b04	20 20 	    
l9b06h:
	djnz l9b0ch		;9b06	10 04 	. . 
	inc b			;9b08	04 	. 
	ld (bc),a			;9b09	02 	. 
	ex af,af'			;9b0a	08 	. 
	and d			;9b0b	a2 	. 
l9b0ch:
	djnz $+34		;9b0c	10 20 	.   
	nop			;9b0e	00 	. 
	nop			;9b0f	00 	. 
l9b10h:
	jr l9b36h		;9b10	18 24 	. $ 
	inc h			;9b12	24 	$ 
	dec h			;9b13	25 	% 
	inc de			;9b14	13 	. 
	inc de			;9b15	13 	. 
	nop			;9b16	00 	. 
	ld h,b			;9b17	60 	` 
	sub b			;9b18	90 	. 
	sub (hl)			;9b19	96 	. 
	sbc a,c			;9b1a	99 	. 
	add hl,hl			;9b1b	29 	) 
	ld (01122h),a		;9b1c	32 22 11 	2 " . 
	ld l,b			;9b1f	68 	h 
	sbc a,b			;9b20	98 	. 
	adc a,b			;9b21	88 	. 
	add a,b			;9b22	80 	. 
	ld b,b			;9b23	40 	@ 
	jr nz,l9b36h		;9b24	20 10 	  . 
l9b26h:
	inc h			;9b26	24 	$ 
	inc c			;9b27	0c 	. 
	ld c,019h		;9b28	0e 19 	. . 
	ld bc,01806h		;9b2a	01 06 18 	. . . 
	jr nz,$+5		;9b2d	20 03 	  . 
l9b2fh:
	nop			;9b2f	00 	. 
	adc a,e			;9b30	8b 	. 
	ld bc,00402h		;9b31	01 02 04 	. . . 
	ld b,00ch		;9b34	06 0c 	. . 
l9b36h:
	nop			;9b36	00 	. 
	nop			;9b37	00 	. 
	ld (hl),b			;9b38	70 	p 
	adc a,h			;9b39	8c 	. 
	ld (bc),a			;9b3a	02 	. 
	ld bc,00002h		;9b3b	01 02 00 	. . . 
	inc bc			;9b3e	03 	. 
	ex af,af'			;9b3f	08 	. 
	add a,d			;9b40	82 	. 
	inc b			;9b41	04 	. 
	inc bc			;9b42	03 	. 
	inc bc			;9b43	03 	. 
	nop			;9b44	00 	. 
	add a,a			;9b45	87 	. 
	jr nc,l9b10h		;9b46	30 c8 	0 . 
	ex af,af'			;9b48	08 	. 
	jr nc,l9b0ch		;9b49	30 c1 	0 . 
	ld b,(hl)			;9b4b	46 	F 
	jr c,$+6		;9b4c	38 04 	8 . 
	nop			;9b4e	00 	. 
	sub d			;9b4f	92 	. 
	ld bc,l807eh		;9b50	01 7e 80 	. ~ . 
	add a,b			;9b53	80 	. 
	ld a,(hl)			;9b54	7e 	~ 
	nop			;9b55	00 	. 
	nop			;9b56	00 	. 
	ret p			;9b57	f0 	. 
	inc c			;9b58	0c 	. 
	ld (bc),a			;9b59	02 	. 
	ld bc,00000h		;9b5a	01 00 00 	. . . 
	jr l9bbfh		;9b5d	18 60 	. ` 
	add a,c			;9b5f	81 	. 
	adc a,(hl)			;9b60	8e 	. 
	ld (hl),b			;9b61	70 	p 
	inc b			;9b62	04 	. 
	nop			;9b63	00 	. 
	cp a			;9b64	bf 	. 
	jr c,l9b2fh		;9b65	38 c8 	8 . 
	or b			;9b67	b0 	. 
	ld b,c			;9b68	41 	A 
	ld b,(hl)			;9b69	46 	F 
	jr c,l9b6ch		;9b6a	38 00 	8 . 
l9b6ch:
	inc c			;9b6c	0c 	. 
	inc de			;9b6d	13 	. 
	djnz l9b7ch		;9b6e	10 0c 	. . 
	ld a,(04047h)		;9b70	3a 47 40 	: G @ 
	jr c,l9b8dh		;9b73	38 18 	8 . 
	inc h			;9b75	24 	$ 
	call po,01272h		;9b76	e4 72 12 	. r . 
	add a,c			;9b79	81 	. 
	nop			;9b7a	00 	. 
	nop			;9b7b	00 	. 
l9b7ch:
	rlca			;9b7c	07 	. 
	inc bc			;9b7d	03 	. 
	inc e			;9b7e	1c 	. 
	jr nz,l9ba4h		;9b7f	20 23 	  # 
	inc e			;9b81	1c 	. 
	nop			;9b82	00 	. 
	nop			;9b83	00 	. 
	add a,b			;9b84	80 	. 
	nop			;9b85	00 	. 
	nop			;9b86	00 	. 
	ld (hl),b			;9b87	70 	p 
	and c			;9b88	a1 	. 
	ld b,d			;9b89	42 	B 
	ld b,h			;9b8a	44 	D 
	jr c,l9bc9h		;9b8b	38 3c 	8 < 
l9b8dh:
	ld a,(hl)			;9b8d	7e 	~ 
	rst 20h			;9b8e	e7 	. 
	jp 0e7c3h		;9b8f	c3 c3 e7 	. . . 
	ld a,(hl)			;9b92	7e 	~ 
	inc a			;9b93	3c 	< 
	ld b,d			;9b94	42 	B 
	rst 20h			;9b95	e7 	. 
	ld a,(hl)			;9b96	7e 	~ 
	inc a			;9b97	3c 	< 
	inc a			;9b98	3c 	< 
	ld a,(hl)			;9b99	7e 	~ 
	rst 20h			;9b9a	e7 	. 
	ld b,d			;9b9b	42 	B 
	ld c,(hl)			;9b9c	4e 	N 
	sbc a,c			;9b9d	99 	. 
	or h			;9b9e	b4 	. 
	sbc a,07bh		;9b9f	de 7b 	. { 
	dec l			;9ba1	2d 	- 
	sbc a,c			;9ba2	99 	. 
	ld (hl),d			;9ba3	72 	r 
l9ba4h:
	nop			;9ba4	00 	. 
	ld a,a			;9ba5	7f 	 
	nop			;9ba6	00 	. 
	ld a,a			;9ba7	7f 	 
	nop			;9ba8	00 	. 
	ld (08800h),a		;9ba9	32 00 88 	2 . . 
	halt			;9bac	76 	v 
	rst 8			;9bad	cf 	. 
	exx			;9bae	d9 	. 
	ld h,l			;9baf	65 	e 
	and (hl)			;9bb0	a6 	. 
	sbc a,e			;9bb1	9b 	. 
	di			;9bb2	f3 	. 
	ld l,(hl)			;9bb3	6e 	n 
	nop			;9bb4	00 	. 
	inc bc			;9bb5	03 	. 
	nop			;9bb6	00 	. 
	adc a,b			;9bb7	88 	. 
	rlca			;9bb8	07 	. 
	rra			;9bb9	1f 	. 
	ccf			;9bba	3f 	? 
	ccf			;9bbb	3f 	? 
	ld a,a			;9bbc	7f 	 
	nop			;9bbd	00 	. 
	nop			;9bbe	00 	. 
l9bbfh:
	ret p			;9bbf	f0 	. 
	ld (bc),a			;9bc0	02 	. 
	call m,0fe03h		;9bc1	fc 03 fe 	. . . 
	ld (bc),a			;9bc4	02 	. 
	ld a,a			;9bc5	7f 	 
	add a,(hl)			;9bc6	86 	. 
	ld h,c			;9bc7	61 	a 
	inc hl			;9bc8	23 	# 
l9bc9h:
	ccf			;9bc9	3f 	? 
	ld e,001h		;9bca	1e 01 	. . 
	rra			;9bcc	1f 	. 
	ld (bc),a			;9bcd	02 	. 
	adc a,002h		;9bce	ce 02 	. . 
	call m,0f886h		;9bd0	fc 86 f8 	. . . 
	ret p			;9bd3	f0 	. 
	nop			;9bd4	00 	. 
	ret m			;9bd5	f8 	. 
	rra			;9bd6	1f 	. 
	ld e,a			;9bd7	5f 	_ 
	inc bc			;9bd8	03 	. 
l9bd9h:
	ld l,a			;9bd9	6f 	o 
	adc a,e			;9bda	8b 	. 
	ld a,h			;9bdb	7c 	| 
	ld a,b			;9bdc	78 	x 
	jr nz,l9bd9h		;9bdd	20 fa 	  . 
	jp p,0f6f6h		;9bdf	f2 f6 f6 	. . . 
	xor 0feh		;9be2	ee fe 	. . 
	ld a,(hl)			;9be4	7e 	~ 
	inc c			;9be5	0c 	. 
	inc bc			;9be6	03 	. 
	nop			;9be7	00 	. 
	ld (bc),a			;9be8	02 	. 
	inc e			;9be9	1c 	. 
	ld (bc),a			;9bea	02 	. 
	ld a,004h		;9beb	3e 04 	> . 
	nop			;9bed	00 	. 
	ld (bc),a			;9bee	02 	. 
	ld (hl),b			;9bef	70 	p 
	ld (bc),a			;9bf0	02 	. 
	ret m			;9bf1	f8 	. 
	sub b			;9bf2	90 	. 
	nop			;9bf3	00 	. 
	rra			;9bf4	1f 	. 
	ld e,a			;9bf5	5f 	_ 
	ld l,a			;9bf6	6f 	o 
	ld a,a			;9bf7	7f 	 
	ld a,a			;9bf8	7f 	 
	inc a			;9bf9	3c 	< 
	ex af,af'			;9bfa	08 	. 
	nop			;9bfb	00 	. 
	jp m,0f6f2h		;9bfc	fa f2 f6 	. . . 
	cp 0fch		;9bff	fe fc 	. . 
	ret m			;9c01	f8 	. 
sub_9c02h:
	ld h,b			;9c02	60 	` 
	inc bc			;9c03	03 	. 
	nop			;9c04	00 	. 
	ld (bc),a			;9c05	02 	. 
	jr c,l9c0ah		;9c06	38 02 	8 . 
	ld a,b			;9c08	78 	x 
	inc b			;9c09	04 	. 
l9c0ah:
	nop			;9c0a	00 	. 
	ld (bc),a			;9c0b	02 	. 
	jr c,l9c10h		;9c0c	38 02 	8 . 
l9c0eh:
	inc a			;9c0e	3c 	< 
	ld (bc),a			;9c0f	02 	. 
l9c10h:
	nop			;9c10	00 	. 
	ld (bc),a			;9c11	02 	. 
	ld a,a			;9c12	7f 	 
	add a,l			;9c13	85 	. 
	ld h,c			;9c14	61 	a 
	inc hl			;9c15	23 	# 
	ccf			;9c16	3f 	? 
	ld e,001h		;9c17	1e 01 	. . 
	inc bc			;9c19	03 	. 
	cp a			;9c1a	bf 	. 
	add a,l			;9c1b	85 	. 
	rst 18h			;9c1c	df 	. 
	rra			;9c1d	1f 	. 
	rra			;9c1e	1f 	. 
	inc e			;9c1f	1c 	. 
	jr l9c25h		;9c20	18 03 	. . 
	nop			;9c22	00 	. 
	adc a,c			;9c23	89 	. 
	inc e			;9c24	1c 	. 
l9c25h:
	ld a,03eh		;9c25	3e 3e 	> > 
	inc a			;9c27	3c 	< 
	inc e			;9c28	1c 	. 
	rra			;9c29	1f 	. 
	rra			;9c2a	1f 	. 
	rrca			;9c2b	0f 	. 
	inc bc			;9c2c	03 	. 
	rlca			;9c2d	07 	. 
	nop			;9c2e	00 	. 
	add a,c			;9c2f	81 	. 
	jr c,$+5		;9c30	38 03 	8 . 
	ld a,a			;9c32	7f 	 
	add a,c			;9c33	81 	. 
	jr c,l9c3bh		;9c34	38 05 	8 . 
	nop			;9c36	00 	. 
	add a,d			;9c37	82 	. 
	rlca			;9c38	07 	. 
	rra			;9c39	1f 	. 
	ld (bc),a			;9c3a	02 	. 
l9c3bh:
	ccf			;9c3b	3f 	? 
	inc bc			;9c3c	03 	. 
	nop			;9c3d	00 	. 
	add a,c			;9c3e	81 	. 
	ret p			;9c3f	f0 	. 
	ld (bc),a			;9c40	02 	. 
	call m,0fe02h		;9c41	fc 02 fe 	. . . 
	inc bc			;9c44	03 	. 
	ld a,a			;9c45	7f 	 
	add a,(hl)			;9c46	86 	. 
	ld h,c			;9c47	61 	a 
	inc hl			;9c48	23 	# 
	ccf			;9c49	3f 	? 
	ld e,001h		;9c4a	1e 01 	. . 
	cp 002h		;9c4c	fe 02 	. . 
	adc a,002h		;9c4e	ce 02 	. . 
	call m,0f891h		;9c50	fc 91 f8 	. . . 
	ret p			;9c53	f0 	. 
	nop			;9c54	00 	. 
	ld a,(bc)			;9c55	0a 	. 
	ld a,(de)			;9c56	1a 	. 
	ld h,(hl)			;9c57	66 	f 
	ld a,(hl)			;9c58	7e 	~ 
	ld a,002h		;9c59	3e 02 	> . 
	inc e			;9c5b	1c 	. 
	jr l9c0eh		;9c5c	18 b0 	. . 
	cp d			;9c5e	ba 	. 
	add a,0feh		;9c5f	c6 fe 	. . 
	call m,00280h		;9c61	fc 80 02 	. . . 
	ld (hl),b			;9c64	70 	p 
	inc bc			;9c65	03 	. 
	nop			;9c66	00 	. 
	ld (bc),a			;9c67	02 	. 
	jr c,l9c6ch		;9c68	38 02 	8 . 
	ld a,b			;9c6a	78 	x 
	inc b			;9c6b	04 	. 
l9c6ch:
	nop			;9c6c	00 	. 
	ld (bc),a			;9c6d	02 	. 
	jr c,l9c72h		;9c6e	38 02 	8 . 
	inc a			;9c70	3c 	< 
	add a,c			;9c71	81 	. 
l9c72h:
	nop			;9c72	00 	. 
	nop			;9c73	00 	. 
	ld (bc),a			;9c74	02 	. 
	nop			;9c75	00 	. 
	sbc a,l			;9c76	9d 	. 
	rlca			;9c77	07 	. 
	ld a,(de)			;9c78	1a 	. 
	ld h,056h		;9c79	26 56 	& V 
	ld d,(hl)			;9c7b	56 	V 
	rst 10h			;9c7c	d7 	. 
	nop			;9c7d	00 	. 
	ret p			;9c7e	f0 	. 
	ld a,h			;9c7f	7c 	| 
	cp 0deh		;9c80	fe de 	. . 
	rst 18h			;9c82	df 	. 
	add a,a			;9c83	87 	. 
	ld c,e			;9c84	4b 	K 
	rst 10h			;9c85	d7 	. 
	ret nc			;9c86	d0 	. 
	rst 38h			;9c87	ff 	. 
	ld e,(hl)			;9c88	5e 	^ 
	ld a,(hl)			;9c89	7e 	~ 
	ccf			;9c8a	3f 	? 
	ccf			;9c8b	3f 	? 
	ld a,(hl)			;9c8c	7e 	~ 
	scf			;9c8d	37 	7 
	scf			;9c8e	37 	7 
	ld c,(hl)			;9c8f	4e 	N 
	adc a,(hl)			;9c90	8e 	. 
	call m,0fc78h		;9c91	fc 78 fc 	. x . 
	inc bc			;9c94	03 	. 
	cp 081h		;9c95	fe 81 	. . 
	defb 0fdh,004h,0ffh	;illegal sequence		;9c97	fd 04 ff 	. . . 
	add a,h			;9c9a	84 	. 
	ld (hl),e			;9c9b	73 	s 
	rst 38h			;9c9c	ff 	. 
	rst 38h			;9c9d	ff 	. 
	ld a,a			;9c9e	7f 	 
	inc b			;9c9f	04 	. 
	rst 38h			;9ca0	ff 	. 
	add a,e			;9ca1	83 	. 
	ld e,020h		;9ca2	1e 20 	.   
	ld hl,02203h		;9ca4	21 03 22 	! . " 
	ld (bc),a			;9ca7	02 	. 
	ld b,c			;9ca8	41 	A 
	add a,e			;9ca9	83 	. 
	ld a,a			;9caa	7f 	 
	inc c			;9cab	0c 	. 
	ex af,af'			;9cac	08 	. 
	inc bc			;9cad	03 	. 
	adc a,b			;9cae	88 	. 
	ld (bc),a			;9caf	02 	. 
	inc b			;9cb0	04 	. 
	sub e			;9cb1	93 	. 
	call m,0fefeh		;9cb2	fc fe fe 	. . . 
	defb 0fdh,0ffh,0ffh	;illegal sequence		;9cb5	fd ff ff 	. . . 
	ld a,a			;9cb8	7f 	 
	ccf			;9cb9	3f 	? 
	inc hl			;9cba	23 	# 
	rst 38h			;9cbb	ff 	. 
	rst 38h			;9cbc	ff 	. 
	ld a,a			;9cbd	7f 	 
	rst 38h			;9cbe	ff 	. 
	cp 0fch		;9cbf	fe fc 	. . 
	ret m			;9cc1	f8 	. 
	ex af,af'			;9cc2	08 	. 
	ld hl,00242h		;9cc3	21 42 02 	! B . 
	ld b,h			;9cc6	44 	D 
	ld (bc),a			;9cc7	02 	. 
	add a,h			;9cc8	84 	. 
	add a,h			;9cc9	84 	. 
	call m,00800h		;9cca	fc 00 08 	. . . 
	add a,h			;9ccd	84 	. 
	ld (bc),a			;9cce	02 	. 
	ld b,h			;9ccf	44 	D 
	ld (bc),a			;9cd0	02 	. 
	ld b,d			;9cd1	42 	B 
	adc a,c			;9cd2	89 	. 
	ld a,(hl)			;9cd3	7e 	~ 
	nop			;9cd4	00 	. 
	rst 10h			;9cd5	d7 	. 
	ret nc			;9cd6	d0 	. 
	rst 38h			;9cd7	ff 	. 
	ld e,(hl)			;9cd8	5e 	^ 
	ld a,(hl)			;9cd9	7e 	~ 
	ccf			;9cda	3f 	? 
	rst 38h			;9cdb	ff 	. 
	inc bc			;9cdc	03 	. 
	cp 082h		;9cdd	fe 82 	. . 
	defb 0fdh,0ffh,003h	;illegal sequence		;9cdf	fd ff 03 	. . . 
	ccf			;9ce2	3f 	? 
	add a,a			;9ce3	87 	. 
	inc hl			;9ce4	23 	# 
	nop			;9ce5	00 	. 
	inc e			;9ce6	1c 	. 
	ld a,07fh		;9ce7	3e 7f 	>  
	ld a,a			;9ce9	7f 	 
	ld a,(hl)			;9cea	7e 	~ 
	inc bc			;9ceb	03 	. 
	ccf			;9cec	3f 	? 
	add a,e			;9ced	83 	. 
	rra			;9cee	1f 	. 
	rrca			;9cef	0f 	. 
	inc bc			;9cf0	03 	. 
	dec b			;9cf1	05 	. 
	nop			;9cf2	00 	. 
	add a,d			;9cf3	82 	. 
	jr c,l9d75h		;9cf4	38 7f 	8  
	inc bc			;9cf6	03 	. 
	rst 38h			;9cf7	ff 	. 
	add a,d			;9cf8	82 	. 
	ld a,a			;9cf9	7f 	 
	jr c,l9cffh		;9cfa	38 03 	8 . 
	nop			;9cfc	00 	. 
	add a,e			;9cfd	83 	. 
	rlca			;9cfe	07 	. 
l9cffh:
	ld a,(de)			;9cff	1a 	. 
	ld h,002h		;9d00	26 02 	& . 
	ld d,(hl)			;9d02	56 	V 
	ld (bc),a			;9d03	02 	. 
	nop			;9d04	00 	. 
	sub a			;9d05	97 	. 
	ret p			;9d06	f0 	. 
	ld a,h			;9d07	7c 	| 
	cp 0deh		;9d08	fe de 	. . 
	rst 18h			;9d0a	df 	. 
	add a,a			;9d0b	87 	. 
	rst 10h			;9d0c	d7 	. 
	rst 10h			;9d0d	d7 	. 
	ret nc			;9d0e	d0 	. 
	rst 38h			;9d0f	ff 	. 
	ld e,(hl)			;9d10	5e 	^ 
	ld a,(hl)			;9d11	7e 	~ 
	ccf			;9d12	3f 	? 
	ccf			;9d13	3f 	? 
	ld c,e			;9d14	4b 	K 
	scf			;9d15	37 	7 
	scf			;9d16	37 	7 
	ld c,(hl)			;9d17	4e 	N 
	adc a,(hl)			;9d18	8e 	. 
	call m,0fc78h		;9d19	fc 78 fc 	. x . 
	ld a,a			;9d1c	7f 	 
	inc bc			;9d1d	03 	. 
	rst 38h			;9d1e	ff 	. 
	add a,c			;9d1f	81 	. 
	ld a,a			;9d20	7f 	 
	inc bc			;9d21	03 	. 
	ccf			;9d22	3f 	? 
	add a,c			;9d23	81 	. 
	cp 003h		;9d24	fe 03 	. . 
	rst 38h			;9d26	ff 	. 
	add a,a			;9d27	87 	. 
	cp 0fch		;9d28	fe fc 	. . 
	ret m			;9d2a	f8 	. 
	ret m			;9d2b	f8 	. 
	inc hl			;9d2c	23 	# 
	ld hl,00242h		;9d2d	21 42 02 	! B . 
	ld b,h			;9d30	44 	D 
	ld (bc),a			;9d31	02 	. 
	add a,h			;9d32	84 	. 
	add a,h			;9d33	84 	. 
	call m,00808h		;9d34	fc 08 08 	. . . 
	add a,h			;9d37	84 	. 
	ld (bc),a			;9d38	02 	. 
	ld b,h			;9d39	44 	D 
	ld (bc),a			;9d3a	02 	. 
	ld b,d			;9d3b	42 	B 
	add a,c			;9d3c	81 	. 
	ld a,(hl)			;9d3d	7e 	~ 
	nop			;9d3e	00 	. 
	ld (bc),a			;9d3f	02 	. 
	nop			;9d40	00 	. 
	xor (hl)			;9d41	ae 	. 
	rlca			;9d42	07 	. 
	dec e			;9d43	1d 	. 
	add hl,sp			;9d44	39 	9 
	ld l,c			;9d45	69 	i 
	ld l,c			;9d46	69 	i 
	xor b			;9d47	a8 	. 
	nop			;9d48	00 	. 
	ret p			;9d49	f0 	. 
	adc a,h			;9d4a	8c 	. 
	ld (bc),a			;9d4b	02 	. 
	ld (07921h),hl		;9d4c	22 21 79 	" ! y 
	add a,l			;9d4f	85 	. 
	xor b			;9d50	a8 	. 
	xor a			;9d51	af 	. 
	sbc a,(hl)			;9d52	9e 	. 
	ld a,l			;9d53	7d 	} 
	ld b,c			;9d54	41 	A 
	ld hl,0593eh		;9d55	21 3e 59 	! > Y 
	or c			;9d58	b1 	. 
	or c			;9d59	b1 	. 
	add a,d			;9d5a	82 	. 
	ld (hl),d			;9d5b	72 	r 
	inc b			;9d5c	04 	. 
	adc a,b			;9d5d	88 	. 
	call m,sub_991ah		;9d5e	fc 1a 99 	. . . 
	sbc a,l			;9d61	9d 	. 
	adc a,(hl)			;9d62	8e 	. 
	adc a,h			;9d63	8c 	. 
	sbc a,a			;9d64	9f 	. 
	adc a,h			;9d65	8c 	. 
	adc a,b			;9d66	88 	. 
	ld e,h			;9d67	5c 	\ 
	add hl,sp			;9d68	39 	9 
	ld sp,071f1h		;9d69	31 f1 71 	1 . q 
	pop af			;9d6c	f1 	. 
	pop hl			;9d6d	e1 	. 
	ld h,c			;9d6e	61 	a 
	jp p,03f02h		;9d6f	f2 02 3f 	. . ? 
	inc bc			;9d72	03 	. 
	ld a,003h		;9d73	3e 03 	> . 
l9d75h:
	ld a,a			;9d75	7f 	 
	add a,c			;9d76	81 	. 
	call m,0f804h		;9d77	fc 04 f8 	. . . 
	inc bc			;9d7a	03 	. 
	call m,sub_9992h		;9d7b	fc 92 99 	. . . 
	sbc a,l			;9d7e	9d 	. 
	adc a,(hl)			;9d7f	8e 	. 
	add a,h			;9d80	84 	. 
	add a,a			;9d81	87 	. 
	ld b,h			;9d82	44 	D 
	jr c,l9dc1h		;9d83	38 3c 	8 < 
	add hl,sp			;9d85	39 	9 
	ld sp,041f1h		;9d86	31 f1 41 	1 . A 
	jp nz,078c4h		;9d89	c2 c4 78 	. . x 
	ret m			;9d8c	f8 	. 
	ccf			;9d8d	3f 	? 
	ld a,(hl)			;9d8e	7e 	~ 
	ld (bc),a			;9d8f	02 	. 
	ld a,h			;9d90	7c 	| 
	inc bc			;9d91	03 	. 
	call m,00083h		;9d92	fc 83 00 	. . . 
	ret m			;9d95	f8 	. 
	call m,07c02h		;9d96	fc 02 7c 	. . | 
	inc bc			;9d99	03 	. 
	ld a,(hl)			;9d9a	7e 	~ 
	sbc a,l			;9d9b	9d 	. 
	nop			;9d9c	00 	. 
	xor b			;9d9d	a8 	. 
	xor a			;9d9e	af 	. 
	sbc a,(hl)			;9d9f	9e 	. 
	ld a,l			;9da0	7d 	} 
	ld b,c			;9da1	41 	A 
	ld hl,039feh		;9da2	21 fe 39 	! . 9 
	add hl,sp			;9da5	39 	9 
	dec a			;9da6	3d 	= 
	ld e,0dch		;9da7	1e dc 	. . 
	ccf			;9da9	3f 	? 
	inc a			;9daa	3c 	< 
	jr c,l9de9h		;9dab	38 3c 	8 < 
	nop			;9dad	00 	. 
	inc e			;9dae	1c 	. 
	ld (04141h),hl		;9daf	22 41 41 	" A A 
	ld b,d			;9db2	42 	B 
	inc hl			;9db3	23 	# 
	jr nz,l9dd6h		;9db4	20 20 	    
	djnz l9dc4h		;9db6	10 0c 	. . 
	inc bc			;9db8	03 	. 
	dec b			;9db9	05 	. 
	nop			;9dba	00 	. 
	add a,d			;9dbb	82 	. 
	jr c,l9e05h		;9dbc	38 47 	8 G 
	inc bc			;9dbe	03 	. 
	add a,b			;9dbf	80 	. 
	add a,d			;9dc0	82 	. 
l9dc1h:
	ld b,a			;9dc1	47 	G 
	jr c,l9dc7h		;9dc2	38 03 	8 . 
l9dc4h:
	nop			;9dc4	00 	. 
	add a,e			;9dc5	83 	. 
	rlca			;9dc6	07 	. 
l9dc7h:
	dec e			;9dc7	1d 	. 
	add hl,sp			;9dc8	39 	9 
	ld (bc),a			;9dc9	02 	. 
	ld l,c			;9dca	69 	i 
l9dcbh:
	ld (bc),a			;9dcb	02 	. 
	nop			;9dcc	00 	. 
	xor c			;9dcd	a9 	. 
	ret p			;9dce	f0 	. 
	adc a,h			;9dcf	8c 	. 
	ld (bc),a			;9dd0	02 	. 
	ld (07921h),hl		;9dd1	22 21 79 	" ! y 
	xor b			;9dd4	a8 	. 
	xor b			;9dd5	a8 	. 
l9dd6h:
	xor a			;9dd6	af 	. 
	sbc a,(hl)			;9dd7	9e 	. 
	ld a,l			;9dd8	7d 	} 
	ld b,c			;9dd9	41 	A 
	ld hl,l853eh		;9dda	21 3e 85 	! > . 
	or c			;9ddd	b1 	. 
	or c			;9dde	b1 	. 
	add a,d			;9ddf	82 	. 
	ld (hl),d			;9de0	72 	r 
	inc b			;9de1	04 	. 
	adc a,b			;9de2	88 	. 
	call m,09d4dh		;9de3	fc 4d 9d 	. M . 
	sbc a,c			;9de6	99 	. 
	add a,c			;9de7	81 	. 
	ld b,c			;9de8	41 	A 
l9de9h:
	dec a			;9de9	3d 	= 
	ld a,038h		;9dea	3e 38 	> 8 
	ld d,d			;9dec	52 	R 
	ld a,c			;9ded	79 	y 
	add hl,sp			;9dee	39 	9 
	ld bc,07c02h		;9def	01 02 7c 	. . | 
	ret m			;9df2	f8 	. 
	ld a,b			;9df3	78 	x 
	inc a			;9df4	3c 	< 
	ccf			;9df5	3f 	? 
	ld a,(hl)			;9df6	7e 	~ 
	ld (bc),a			;9df7	02 	. 
	ld a,h			;9df8	7c 	| 
	inc bc			;9df9	03 	. 
	call m,0f802h		;9dfa	fc 02 f8 	. . . 
	add a,c			;9dfd	81 	. 
	call m,07c02h		;9dfe	fc 02 7c 	. . | 
	inc bc			;9e01	03 	. 
	ld a,(hl)			;9e02	7e 	~ 
	nop			;9e03	00 	. 
	rla			;9e04	17 	. 
l9e05h:
	nop			;9e05	00 	. 
	add a,c			;9e06	81 	. 
	jr nz,$+9		;9e07	20 07 	  . 
	nop			;9e09	00 	. 
	adc a,e			;9e0a	8b 	. 
	inc b			;9e0b	04 	. 
	ld h,b			;9e0c	60 	` 
	jr nz,$+18		;9e0d	20 10 	  . 
	djnz l9e11h		;9e0f	10 00 	. . 
l9e11h:
	inc bc			;9e11	03 	. 
	rlca			;9e12	07 	. 
	rrca			;9e13	0f 	. 
	inc b			;9e14	04 	. 
	inc c			;9e15	0c 	. 
	ld (bc),a			;9e16	02 	. 
	ex af,af'			;9e17	08 	. 
	ld (bc),a			;9e18	02 	. 
	nop			;9e19	00 	. 
	add a,l			;9e1a	85 	. 
	add a,b			;9e1b	80 	. 
	ret po			;9e1c	e0 	. 
	rra			;9e1d	1f 	. 
	ld e,01ch		;9e1e	1e 1c 	. . 
	dec b			;9e20	05 	. 
	nop			;9e21	00 	. 
	ld (bc),a			;9e22	02 	. 
	ret p			;9e23	f0 	. 
	add a,c			;9e24	81 	. 
	ld (hl),b			;9e25	70 	p 
	dec b			;9e26	05 	. 
	nop			;9e27	00 	. 
	adc a,e			;9e28	8b 	. 
	ld h,b			;9e29	60 	` 
	jr nz,$+18		;9e2a	20 10 	  . 
	nop			;9e2c	00 	. 
	nop			;9e2d	00 	. 
	inc bc			;9e2e	03 	. 
	rlca			;9e2f	07 	. 
	rra			;9e30	1f 	. 
	inc b			;9e31	04 	. 
	inc c			;9e32	0c 	. 
	ex af,af'			;9e33	08 	. 
	inc bc			;9e34	03 	. 
	nop			;9e35	00 	. 
	add a,h			;9e36	84 	. 
	add a,b			;9e37	80 	. 
	ret p			;9e38	f0 	. 
	ld e,03ch		;9e39	1e 3c 	. < 
	ld b,000h		;9e3b	06 00 	. . 
	add a,d			;9e3d	82 	. 
	ret p			;9e3e	f0 	. 
	ld a,b			;9e3f	78 	x 
	dec c			;9e40	0d 	. 
	nop			;9e41	00 	. 
	inc bc			;9e42	03 	. 
	ld b,b			;9e43	40 	@ 
	ld (bc),a			;9e44	02 	. 
	jr nz,l9dcbh		;9e45	20 84 	  . 
	nop			;9e47	00 	. 
	inc bc			;9e48	03 	. 
	rlca			;9e49	07 	. 
	rra			;9e4a	1f 	. 
	jr c,l9e4dh		;9e4b	38 00 	8 . 
l9e4dh:
	add a,d			;9e4d	82 	. 
	jr nc,$+98		;9e4e	30 60 	0 ` 
	inc b			;9e50	04 	. 
	nop			;9e51	00 	. 
	add a,h			;9e52	84 	. 
	ld bc,00c07h		;9e53	01 07 0c 	. . . 
	inc b			;9e56	04 	. 
	dec b			;9e57	05 	. 
	nop			;9e58	00 	. 
	add a,h			;9e59	84 	. 
	add a,b			;9e5a	80 	. 
	rra			;9e5b	1f 	. 
	ld e,03ch		;9e5c	1e 3c 	. < 
	dec b			;9e5e	05 	. 
	nop			;9e5f	00 	. 
	ld (bc),a			;9e60	02 	. 
	ret p			;9e61	f0 	. 
	add a,c			;9e62	81 	. 
	ld a,b			;9e63	78 	x 
	dec b			;9e64	05 	. 
	nop			;9e65	00 	. 
	nop			;9e66	00 	. 
	adc a,(hl)			;9e67	8e 	. 
	nop			;9e68	00 	. 
	inc e			;9e69	1c 	. 
	ld a,032h		;9e6a	3e 32 	> 2 
	ld d,01eh		;9e6c	16 1e 	. . 
	ld c,03fh		;9e6e	0e 3f 	. ? 
	nop			;9e70	00 	. 
	jr c,l9eefh		;9e71	38 7c 	8 | 
	ld c,h			;9e73	4c 	L 
	ld l,h			;9e74	6c 	l 
	ret m			;9e75	f8 	. 
	ld (bc),a			;9e76	02 	. 
	ret p			;9e77	f0 	. 
	dec b			;9e78	05 	. 
	ld a,a			;9e79	7f 	 
	add a,e			;9e7a	83 	. 
	ccf			;9e7b	3f 	? 
	rrca			;9e7c	0f 	. 
	nop			;9e7d	00 	. 
	ld (bc),a			;9e7e	02 	. 
	ret m			;9e7f	f8 	. 
	inc bc			;9e80	03 	. 
	call m,0f883h		;9e81	fc 83 f8 	. . . 
	ld (hl),b			;9e84	70 	p 
	nop			;9e85	00 	. 
	ld (bc),a			;9e86	02 	. 
	ex af,af'			;9e87	08 	. 
	ld (bc),a			;9e88	02 	. 
	inc c			;9e89	0c 	. 
l9e8ah:
	add a,h			;9e8a	84 	. 
	ld e,07fh		;9e8b	1e 7f 	.  
	ld a,(hl)			;9e8d	7e 	~ 
	ld a,h			;9e8e	7c 	| 
	ld (bc),a			;9e8f	02 	. 
	jr nz,l9e94h		;9e90	20 02 	  . 
	ld h,b			;9e92	60 	` 
	add a,(hl)			;9e93	86 	. 
l9e94h:
	ret p			;9e94	f0 	. 
	call m,07cfch		;9e95	fc fc 7c 	. . | 
	ld a,b			;9e98	78 	x 
	jr nc,l9ea1h		;9e99	30 06 	0 . 
	nop			;9e9b	00 	. 
	add a,d			;9e9c	82 	. 
	inc a			;9e9d	3c 	< 
	jr l9ea6h		;9e9e	18 06 	. . 
	nop			;9ea0	00 	. 
l9ea1h:
	ld (bc),a			;9ea1	02 	. 
	ex af,af'			;9ea2	08 	. 
	sub b			;9ea3	90 	. 
	inc c			;9ea4	0c 	. 
	inc a			;9ea5	3c 	< 
l9ea6h:
	ld a,(hl)			;9ea6	7e 	~ 
	ld a,01eh		;9ea7	3e 1e 	> . 
	inc e			;9ea9	1c 	. 
	jr nz,l9ecch		;9eaa	20 20 	    
	ld h,b			;9eac	60 	` 
	ld a,b			;9ead	78 	x 
	call m,0f0f8h		;9eae	fc f8 f0 	. . . 
	ld (hl),b			;9eb1	70 	p 
	jr l9ed4h		;9eb2	18 20 	.   
	ld b,000h		;9eb4	06 00 	. . 
	add a,d			;9eb6	82 	. 
	jr nc,l9ec1h		;9eb7	30 08 	0 . 
	ld b,000h		;9eb9	06 00 	. . 
	dec b			;9ebb	05 	. 
	ld a,a			;9ebc	7f 	 
	adc a,l			;9ebd	8d 	. 
	ccf			;9ebe	3f 	? 
	rrca			;9ebf	0f 	. 
	add a,b			;9ec0	80 	. 
l9ec1h:
	adc a,b			;9ec1	88 	. 
	adc a,b			;9ec2	88 	. 
	adc a,h			;9ec3	8c 	. 
	inc e			;9ec4	1c 	. 
	ld e,01fh		;9ec5	1e 1f 	. . 
	ld e,01ch		;9ec7	1e 1c 	. . 
	jr $+18		;9ec9	18 10 	. . 
	ex af,af'			;9ecb	08 	. 
l9ecch:
	nop			;9ecc	00 	. 
	adc a,c			;9ecd	89 	. 
	inc e			;9ece	1c 	. 
	ld a,03eh		;9ecf	3e 3e 	> > 
	inc a			;9ed1	3c 	< 
	inc e			;9ed2	1c 	. 
	rra			;9ed3	1f 	. 
l9ed4h:
	rra			;9ed4	1f 	. 
	rrca			;9ed5	0f 	. 
	inc bc			;9ed6	03 	. 
	rlca			;9ed7	07 	. 
	nop			;9ed8	00 	. 
	add a,c			;9ed9	81 	. 
	jr c,$+5		;9eda	38 03 	8 . 
	ld a,a			;9edc	7f 	 
	sub h			;9edd	94 	. 
	jr c,l9ee0h		;9ede	38 00 	8 . 
l9ee0h:
	ex af,af'			;9ee0	08 	. 
	dec bc			;9ee1	0b 	. 
	inc de			;9ee2	13 	. 
	ld e,01ch		;9ee3	1e 1c 	. . 
	dec bc			;9ee5	0b 	. 
	ld d,01ch		;9ee6	16 1c 	. . 
	jr nz,l9e8ah		;9ee8	20 a0 	  . 
	sub b			;9eea	90 	. 
	ret p			;9eeb	f0 	. 
	ld (hl),b			;9eec	70 	p 
	and b			;9eed	a0 	. 
	ret nc			;9eee	d0 	. 
l9eefh:
	ld (hl),b			;9eef	70 	p 
	jr nc,l9f02h		;9ef0	30 10 	0 . 
	ld b,000h		;9ef2	06 00 	. . 
	nop			;9ef4	00 	. 
	and l			;9ef5	a5 	. 
	inc e			;9ef6	1c 	. 
	ld a,067h		;9ef7	3e 67 	> g 
	ld l,a			;9ef9	6f 	o 
	dec sp			;9efa	3b 	; 
	ccf			;9efb	3f 	? 
	ccf			;9efc	3f 	? 
	ld c,a			;9efd	4f 	O 
	jr c,l9f7ch		;9efe	38 7c 	8 | 
	and 0f6h		;9f00	e6 f6 	. . 
l9f02h:
	sbc a,0fch		;9f02	de fc 	. . 
	ret m			;9f04	f8 	. 
	ret m			;9f05	f8 	. 
	sbc a,a			;9f06	9f 	. 
	in a,(0dah)		;9f07	db da 	. . 
	and 09fh		;9f09	e6 9f 	. . 
	ld a,c			;9f0b	79 	y 
	ccf			;9f0c	3f 	? 
	rra			;9f0d	1f 	. 
	call m,0fe3ch		;9f0e	fc 3c fe 	. < . 
	cp 01eh		;9f11	fe 1e 	. . 
	ld a,h			;9f13	7c 	| 
l9f14h:
	cp b			;9f14	b8 	. 
	ret p			;9f15	f0 	. 
	jr z,l9f77h		;9f16	28 5f 	( _ 
	ld a,a			;9f18	7f 	 
	ld a,a			;9f19	7f 	 
	sbc a,a			;9f1a	9f 	. 
	inc bc			;9f1b	03 	. 
	rst 38h			;9f1c	ff 	. 
	add a,l			;9f1d	85 	. 
	jr z,l9f14h		;9f1e	28 f4 	( . 
	call m,0f2fch		;9f20	fc fc f2 	. . . 
	inc bc			;9f23	03 	. 
	cp 0b7h		;9f24	fe b7 	. . 
	rst 38h			;9f26	ff 	. 
	ld a,a			;9f27	7f 	 
	ccf			;9f28	3f 	? 
	scf			;9f29	37 	7 
	inc hl			;9f2a	23 	# 
	ld b,c			;9f2b	41 	A 
	ld b,c			;9f2c	41 	A 
	ld a,a			;9f2d	7f 	 
	cp 0fch		;9f2e	fe fc 	. . 
	ret m			;9f30	f8 	. 
	ret c			;9f31	d8 	. 
	adc a,b			;9f32	88 	. 
	inc b			;9f33	04 	. 
	inc b			;9f34	04 	. 
	call m,07f3fh		;9f35	fc 3f 7f 	. ?  
	ld e,a			;9f38	5f 	_ 
	cp a			;9f39	bf 	. 
	rst 38h			;9f3a	ff 	. 
	ld a,a			;9f3b	7f 	 
	ccf			;9f3c	3f 	? 
	ccf			;9f3d	3f 	? 
	ret m			;9f3e	f8 	. 
	call m,0faf4h		;9f3f	fc f4 fa 	. . . 
	cp 0fch		;9f42	fe fc 	. . 
	ret m			;9f44	f8 	. 
	ret m			;9f45	f8 	. 
	ccf			;9f46	3f 	? 
	ld a,a			;9f47	7f 	 
	ld l,a			;9f48	6f 	o 
	ld b,(hl)			;9f49	46 	F 
	add a,d			;9f4a	82 	. 
	add a,d			;9f4b	82 	. 
	cp 000h		;9f4c	fe 00 	. . 
	ret m			;9f4e	f8 	. 
	call m,0c4ech		;9f4f	fc ec c4 	. . . 
	add a,d			;9f52	82 	. 
	add a,d			;9f53	82 	. 
	cp 000h		;9f54	fe 00 	. . 
	sbc a,a			;9f56	9f 	. 
	in a,(0dah)		;9f57	db da 	. . 
	and 09fh		;9f59	e6 9f 	. . 
	ld a,c			;9f5b	79 	y 
	rst 38h			;9f5c	ff 	. 
	inc b			;9f5d	04 	. 
	cp a			;9f5e	bf 	. 
	add a,c			;9f5f	81 	. 
sub_9f60h:
	rst 38h			;9f60	ff 	. 
	rlca			;9f61	07 	. 
	ccf			;9f62	3f 	? 
	adc a,e			;9f63	8b 	. 
	scf			;9f64	37 	7 
	inc hl			;9f65	23 	# 
	ld b,c			;9f66	41 	A 
	ld b,c			;9f67	41 	A 
	ld a,a			;9f68	7f 	 
	nop			;9f69	00 	. 
	inc e			;9f6a	1c 	. 
	ld a,07fh		;9f6b	3e 7f 	>  
	ld a,a			;9f6d	7f 	 
	ld a,(hl)			;9f6e	7e 	~ 
	inc bc			;9f6f	03 	. 
	ccf			;9f70	3f 	? 
	add a,e			;9f71	83 	. 
	rra			;9f72	1f 	. 
	rrca			;9f73	0f 	. 
	inc bc			;9f74	03 	. 
	dec b			;9f75	05 	. 
	nop			;9f76	00 	. 
l9f77h:
	add a,d			;9f77	82 	. 
	jr c,l9ff9h		;9f78	38 7f 	8  
	inc bc			;9f7a	03 	. 
	rst 38h			;9f7b	ff 	. 
l9f7ch:
	add a,h			;9f7c	84 	. 
	ld a,a			;9f7d	7f 	 
	jr c,$+49		;9f7e	38 2f 	8 / 
	ld c,a			;9f80	4f 	O 
	ld (bc),a			;9f81	02 	. 
	ld e,a			;9f82	5f 	_ 
	inc b			;9f83	04 	. 
	ccf			;9f84	3f 	? 
	add a,d			;9f85	82 	. 
	ret pe			;9f86	e8 	. 
	call po,0f402h		;9f87	e4 02 f4 	. . . 
	rlca			;9f8a	07 	. 
	ret m			;9f8b	f8 	. 
	add a,l			;9f8c	85 	. 
	ret c			;9f8d	d8 	. 
	adc a,b			;9f8e	88 	. 
	inc b			;9f8f	04 	. 
	inc b			;9f90	04 	. 
	call m,sub_aa00h		;9f91	fc 00 aa 	. . . 
	inc e			;9f94	1c 	. 
	ld (04d41h),hl		;9f95	22 41 4d 	" A M 
	add hl,hl			;9f98	29 	) 
	ld hl,07031h		;9f99	21 31 70 	! 1 p 
	jr c,l9fe2h		;9f9c	38 44 	8 D 
	add a,d			;9f9e	82 	. 
	or d			;9f9f	b2 	. 
	sub d			;9fa0	92 	. 
	inc b			;9fa1	04 	. 
	ex af,af'			;9fa2	08 	. 
	ex af,af'			;9fa3	08 	. 
	ret po			;9fa4	e0 	. 
	and h			;9fa5	a4 	. 
	and l			;9fa6	a5 	. 
	sbc a,c			;9fa7	99 	. 
	ret po			;9fa8	e0 	. 
	ld b,(hl)			;9fa9	46 	F 
	jr nc,l9fcbh		;9faa	30 1f 	0 . 
	inc b			;9fac	04 	. 
	call nz,00202h		;9fad	c4 02 02 	. . . 
	jp po,0c884h		;9fb0	e2 84 c8 	. . . 
	ret p			;9fb3	f0 	. 
	scf			;9fb4	37 	7 
	ld (hl),a			;9fb5	77 	w 
	ld (hl),e			;9fb6	73 	s 
	ld (hl),e			;9fb7	73 	s 
	add a,c			;9fb8	81 	. 
	add a,b			;9fb9	80 	. 
l9fbah:
	add a,c			;9fba	81 	. 
	add a,e			;9fbb	83 	. 
	ret c			;9fbc	d8 	. 
	call c,sub_9c02h		;9fbd	dc 02 9c 	. . . 
	inc bc			;9fc0	03 	. 
	ld (bc),a			;9fc1	02 	. 
	push de			;9fc2	d5 	. 
	add a,d			;9fc3	82 	. 
	add a,a			;9fc4	87 	. 
	ld c,a			;9fc5	4f 	O 
	ccf			;9fc6	3f 	? 
	scf			;9fc7	37 	7 
	inc hl			;9fc8	23 	# 
	ld b,c			;9fc9	41 	A 
	ld b,c			;9fca	41 	A 
l9fcbh:
	ld a,a			;9fcb	7f 	 
	jp nz,0f8e4h		;9fcc	c2 e4 f8 	. . . 
	ret c			;9fcf	d8 	. 
	adc a,b			;9fd0	88 	. 
	inc b			;9fd1	04 	. 
	inc b			;9fd2	04 	. 
	call m,07737h		;9fd3	fc 37 77 	. 7 w 
	ld d,e			;9fd6	53 	S 
	add a,e			;9fd7	83 	. 
	add a,c			;9fd8	81 	. 
	ld b,c			;9fd9	41 	A 
	ld hl,0d823h		;9fda	21 23 d8 	! # . 
	call c,sub_8294h		;9fdd	dc 94 82 	. . . 
	ld (bc),a			;9fe0	02 	. 
	inc b			;9fe1	04 	. 
l9fe2h:
	ex af,af'			;9fe2	08 	. 
sub_9fe3h:
	adc a,b			;9fe3	88 	. 
	daa			;9fe4	27 	' 
	ld e,a			;9fe5	5f 	_ 
	ld l,a			;9fe6	6f 	o 
	ld b,(hl)			;9fe7	46 	F 
	add a,d			;9fe8	82 	. 
	add a,d			;9fe9	82 	. 
	cp 000h		;9fea	fe 00 	. . 
	ret z			;9fec	c8 	. 
	call p,0c4ech		;9fed	f4 ec c4 	. . . 
	add a,d			;9ff0	82 	. 
	add a,d			;9ff1	82 	. 
	cp 000h		;9ff2	fe 00 	. . 
	ret po			;9ff4	e0 	. 
	and h			;9ff5	a4 	. 
	and l			;9ff6	a5 	. 
	sbc a,c			;9ff7	99 	. 
	ret po			;9ff8	e0 	. 
l9ff9h:
	ld b,(hl)			;9ff9	46 	F 
	ret p			;9ffa	f0 	. 
	ccf			;9ffb	3f 	? 
	scf			;9ffc	37 	7 
	scf			;9ffd	37 	7 
	inc sp			;9ffe	33 	3 
	ex (sp),hl			;9fff	e3 	. 
	ld hl,02120h		;a000	21 20 21 	!   ! 
	inc hl			;a003	23 	# 
	daa			;a004	27 	' 
	cpl			;a005	2f 	/ 
	ccf			;a006	3f 	? 
la007h:
	scf			;a007	37 	7 
	inc hl			;a008	23 	# 
	ld b,c			;a009	41 	A 
	ld b,c			;a00a	41 	A 
	ld a,a			;a00b	7f 	 
	nop			;a00c	00 	. 
	inc e			;a00d	1c 	. 
	ld (04141h),hl		;a00e	22 41 41 	" A A 
	ld b,d			;a011	42 	B 
	inc hl			;a012	23 	# 
	jr nz,la035h		;a013	20 20 	    
	djnz la023h		;a015	10 0c 	. . 
	inc bc			;a017	03 	. 
	dec b			;a018	05 	. 
	nop			;a019	00 	. 
	add a,d			;a01a	82 	. 
	jr c,la064h		;a01b	38 47 	8 G 
	inc bc			;a01d	03 	. 
	add a,b			;a01e	80 	. 
	sbc a,d			;a01f	9a 	. 
	ld b,a			;a020	47 	G 
	jr c,la05ah		;a021	38 37 	8 7 
la023h:
	ld h,h			;a023	64 	d 
	ld c,h			;a024	4c 	L 
	ld b,c			;a025	41 	A 
	inc hl			;a026	23 	# 
	inc (hl)			;a027	34 	4 
	add hl,hl			;a028	29 	) 
	inc hl			;a029	23 	# 
	ret c			;a02a	d8 	. 
	ld c,h			;a02b	4c 	L 
	ld h,h			;a02c	64 	d 
	inc b			;a02d	04 	. 
	adc a,b			;a02e	88 	. 
	ld e,b			;a02f	58 	X 
	jr z,l9fbah		;a030	28 88 	( . 
	ret z			;a032	c8 	. 
	ret pe			;a033	e8 	. 
	ret m			;a034	f8 	. 
la035h:
	ret c			;a035	d8 	. 
	adc a,b			;a036	88 	. 
	inc b			;a037	04 	. 
la038h:
	inc b			;a038	04 	. 
	call m,02000h		;a039	fc 00 20 	. .   
	nop			;a03c	00 	. 
	sub c			;a03d	91 	. 
	ex af,af'			;a03e	08 	. 
	rra			;a03f	1f 	. 
	ld a,03ch		;a040	3e 3c 	> < 
	ld a,(hl)			;a042	7e 	~ 
	rra			;a043	1f 	. 
	ld e,01ch		;a044	1e 1c 	. . 
	jr nz,la038h		;a046	20 f0 	  . 
	ret m			;a048	f8 	. 
	ld a,b			;a049	78 	x 
	call m,0f0f0h		;a04a	fc f0 f0 	. . . 
	ld (hl),b			;a04d	70 	p 
	ld e,003h		;a04e	1e 03 	. . 
	rra			;a050	1f 	. 
	add a,h			;a051	84 	. 
	ld e,03eh		;a052	1e 3e 	. > 
	ld a,000h		;a054	3e 00 	> . 
	dec b			;a056	05 	. 
	ret p			;a057	f0 	. 
	ld (bc),a			;a058	02 	. 
	ret m			;a059	f8 	. 
la05ah:
	sub l			;a05a	95 	. 
	nop			;a05b	00 	. 
	rra			;a05c	1f 	. 
	ccf			;a05d	3f 	? 
	ld a,05ch		;a05e	3e 5c 	> \ 
	ld c,002h		;a060	0e 02 	. . 
	ld (bc),a			;a062	02 	. 
	inc e			;a063	1c 	. 
la064h:
	ret p			;a064	f0 	. 
	ret m			;a065	f8 	. 
	ret m			;a066	f8 	. 
	ld (hl),h			;a067	74 	t 
	ret po			;a068	e0 	. 
	add a,b			;a069	80 	. 
	add a,b			;a06a	80 	. 
	ld (hl),b			;a06b	70 	p 
	ld e,03fh		;a06c	1e 3f 	. ? 
	ld a,03ch		;a06e	3e 3c 	> < 
	ld (bc),a			;a070	02 	. 
	ld a,h			;a071	7c 	| 
	ld (bc),a			;a072	02 	. 
	nop			;a073	00 	. 
	add a,h			;a074	84 	. 
	ret p			;a075	f0 	. 
	ret m			;a076	f8 	. 
	ret m			;a077	f8 	. 
	ld a,b			;a078	78 	x 
	ld (bc),a			;a079	02 	. 
	ld a,h			;a07a	7c 	| 
	add hl,bc			;a07b	09 	. 
	nop			;a07c	00 	. 
	adc a,d			;a07d	8a 	. 
	ld (hl),b			;a07e	70 	p 
	ld a,a			;a07f	7f 	 
	ld a,a			;a080	7f 	 
	ld a,(hl)			;a081	7e 	~ 
	inc a			;a082	3c 	< 
	ld e,01fh		;a083	1e 1f 	. . 
	ld e,01ch		;a085	1e 1c 	. . 
	ld e,003h		;a087	1e 03 	. . 
	rra			;a089	1f 	. 
	add a,c			;a08a	81 	. 
	ld e,002h		;a08b	1e 02 	. . 
	ld a,019h		;a08d	3e 19 	> . 
	nop			;a08f	00 	. 
	sub b			;a090	90 	. 
	ex af,af'			;a091	08 	. 
	jr la0b4h		;a092	18 20 	.   
	jr nz,la096h		;a094	20 00 	  . 
la096h:
	inc bc			;a096	03 	. 
	ld d,01ch		;a097	16 1c 	. . 
	jr nz,la0cbh		;a099	20 30 	  0 
	ex af,af'			;a09b	08 	. 
	ex af,af'			;a09c	08 	. 
	nop			;a09d	00 	. 
	add a,b			;a09e	80 	. 
	ret nc			;a09f	d0 	. 
	ld (hl),b			;a0a0	70 	p 
	dec b			;a0a1	05 	. 
	ret p			;a0a2	f0 	. 
	ld (bc),a			;a0a3	02 	. 
	ret m			;a0a4	f8 	. 
	add a,c			;a0a5	81 	. 
	nop			;a0a6	00 	. 
	nop			;a0a7	00 	. 
	sub d			;a0a8	92 	. 
	nop			;a0a9	00 	. 
	inc bc			;a0aa	03 	. 
	inc sp			;a0ab	33 	3 
	dec sp			;a0ac	3b 	; 
	add hl,de			;a0ad	19 	. 
	dec e			;a0ae	1d 	. 
	ld l,l			;a0af	6d 	m 
	ld h,e			;a0b0	63 	c 
	nop			;a0b1	00 	. 
	inc c			;a0b2	0c 	. 
	sbc a,h			;a0b3	9c 	. 
la0b4h:
	sbc a,b			;a0b4	98 	. 
	cp b			;a0b5	b8 	. 
	or b			;a0b6	b0 	. 
	or b			;a0b7	b0 	. 
	adc a,(hl)			;a0b8	8e 	. 
	dec a			;a0b9	3d 	= 
	dec de			;a0ba	1b 	. 
	inc bc			;a0bb	03 	. 
	rra			;a0bc	1f 	. 
	adc a,e			;a0bd	8b 	. 
	ld c,031h		;a0be	0e 31 	. 1 
	ld a,a			;a0c0	7f 	 
	ld a,(hl)			;a0c1	7e 	~ 
	cp h			;a0c2	bc 	. 
	call m,0f8f8h		;a0c3	fc f8 f8 	. . . 
	ret p			;a0c6	f0 	. 
	inc c			;a0c7	0c 	. 
	cp 003h		;a0c8	fe 03 	. . 
	ld a,a			;a0ca	7f 	 
la0cbh:
	add a,l			;a0cb	85 	. 
	ld l,a			;a0cc	6f 	o 
	ld (hl),b			;a0cd	70 	p 
	ld (hl),b			;a0ce	70 	p 
	ld l,a			;a0cf	6f 	o 
	rrca			;a0d0	0f 	. 
	inc bc			;a0d1	03 	. 
	cp 085h		;a0d2	fe 85 	. . 
	xor 01eh		;a0d4	ee 1e 	. . 
	ld e,0eeh		;a0d6	1e ee 	. . 
	ret p			;a0d8	f0 	. 
	inc bc			;a0d9	03 	. 
	ld c,005h		;a0da	0e 05 	. . 
	nop			;a0dc	00 	. 
	inc bc			;a0dd	03 	. 
	ret p			;a0de	f0 	. 
	dec b			;a0df	05 	. 
	nop			;a0e0	00 	. 
	sub d			;a0e1	92 	. 
	ld l,a			;a0e2	6f 	o 
	ld d,a			;a0e3	57 	W 
	ld a,e			;a0e4	7b 	{ 
	ld a,e			;a0e5	7b 	{ 
	jr nc,la0e8h		;a0e6	30 00 	0 . 
la0e8h:
	rrca			;a0e8	0f 	. 
	rra			;a0e9	1f 	. 
	and 0dah		;a0ea	e6 da 	. . 
	cp (hl)			;a0ec	be 	. 
	cp (hl)			;a0ed	be 	. 
	inc e			;a0ee	1c 	. 
	nop			;a0ef	00 	. 
	ret p			;a0f0	f0 	. 
	ret m			;a0f1	f8 	. 
	ld e,03ch		;a0f2	1e 3c 	. < 
	ld b,000h		;a0f4	06 00 	. . 
	add a,d			;a0f6	82 	. 
	ret m			;a0f7	f8 	. 
	ld a,h			;a0f8	7c 	| 
	ld b,000h		;a0f9	06 00 	. . 
	add a,d			;a0fb	82 	. 
	dec a			;a0fc	3d 	= 
	dec de			;a0fd	1b 	. 
	inc bc			;a0fe	03 	. 
	rra			;a0ff	1f 	. 
	add a,d			;a100	82 	. 
	ld c,031h		;a101	0e 31 	. 1 
	inc bc			;a103	03 	. 
	rst 38h			;a104	ff 	. 
	ld (bc),a			;a105	02 	. 
	rra			;a106	1f 	. 
	ld (bc),a			;a107	02 	. 
	nop			;a108	00 	. 
	ld (bc),a			;a109	02 	. 
	rrca			;a10a	0f 	. 
	ld (bc),a			;a10b	02 	. 
	nop			;a10c	00 	. 
	adc a,c			;a10d	89 	. 
	inc e			;a10e	1c 	. 
	ld a,03eh		;a10f	3e 3e 	> > 
	inc a			;a111	3c 	< 
	inc e			;a112	1c 	. 
	rra			;a113	1f 	. 
	rra			;a114	1f 	. 
	rrca			;a115	0f 	. 
	inc bc			;a116	03 	. 
	ld b,000h		;a117	06 00 	. . 
	add a,c			;a119	81 	. 
	jr c,$+5		;a11a	38 03 	8 . 
	ld a,a			;a11c	7f 	 
	add a,c			;a11d	81 	. 
	jr c,la124h		;a11e	38 04 	8 . 
	nop			;a120	00 	. 
	sub c			;a121	91 	. 
	inc bc			;a122	03 	. 
	inc sp			;a123	33 	3 
la124h:
	dec sp			;a124	3b 	; 
	add hl,de			;a125	19 	. 
	dec e			;a126	1d 	. 
	ld l,l			;a127	6d 	m 
	nop			;a128	00 	. 
	nop			;a129	00 	. 
	inc c			;a12a	0c 	. 
	sbc a,h			;a12b	9c 	. 
	sbc a,b			;a12c	98 	. 
	cp b			;a12d	b8 	. 
la12eh:
	or b			;a12e	b0 	. 
	or b			;a12f	b0 	. 
	ld h,e			;a130	63 	c 
	dec a			;a131	3d 	= 
	dec de			;a132	1b 	. 
	inc bc			;a133	03 	. 
	rra			;a134	1f 	. 
	sbc a,l			;a135	9d 	. 
	ld c,001h		;a136	0e 01 	. . 
	adc a,(hl)			;a138	8e 	. 
	ld a,(hl)			;a139	7e 	~ 
	cp h			;a13a	bc 	. 
	call m,0f8f8h		;a13b	fc f8 f8 	. . . 
	ret p			;a13e	f0 	. 
	nop			;a13f	00 	. 
	jr $+40		;a140	18 26 	. & 
	ld a,(hl)			;a142	7e 	~ 
	ld a,h			;a143	7c 	| 
	inc sp			;a144	33 	3 
	nop			;a145	00 	. 
	nop			;a146	00 	. 
	rrca			;a147	0f 	. 
	jr la12eh		;a148	18 e4 	. . 
	cp 07eh		;a14a	fe 7e 	. ~ 
	sbc a,h			;a14c	9c 	. 
	nop			;a14d	00 	. 
	nop			;a14e	00 	. 
	ret p			;a14f	f0 	. 
	rra			;a150	1f 	. 
	ld e,03ch		;a151	1e 3c 	. < 
	dec b			;a153	05 	. 
	nop			;a154	00 	. 
	ld (bc),a			;a155	02 	. 
	ret m			;a156	f8 	. 
	add a,c			;a157	81 	. 
	ld a,h			;a158	7c 	| 
	dec b			;a159	05 	. 
	nop			;a15a	00 	. 
	nop			;a15b	00 	. 
	or b			;a15c	b0 	. 
	inc bc			;a15d	03 	. 
	scf			;a15e	37 	7 
	ld a,a			;a15f	7f 	 
	ld a,a			;a160	7f 	 
	ccf			;a161	3f 	? 
	ld a,a			;a162	7f 	 
	rst 38h			;a163	ff 	. 
	rst 38h			;a164	ff 	. 
	inc c			;a165	0c 	. 
	sbc a,(hl)			;a166	9e 	. 
	cp 0fch		;a167	fe fc 	. . 
	call m,0fef8h		;a169	fc f8 fe 	. . . 
	rst 38h			;a16c	ff 	. 
	ld h,e			;a16d	63 	c 
	dec h			;a16e	25 	% 
	ld sp,03e3fh		;a16f	31 3f 3e 	1 ? > 
	ccf			;a172	3f 	? 
	ld c,a			;a173	4f 	O 
	add a,(hl)			;a174	86 	. 
	adc a,a			;a175	8f 	. 
	ld c,(hl)			;a176	4e 	N 
	ld e,07ch		;a177	1e 7c 	. | 
	call m,0f2fch		;a179	fc fc f2 	. . . 
	pop bc			;a17c	c1 	. 
	add a,0e6h		;a17d	c6 e6 	. . 
	pop hl			;a17f	e1 	. 
	ret p			;a180	f0 	. 
	ei			;a181	fb 	. 
	ei			;a182	fb 	. 
	ret p			;a183	f0 	. 
	ld (hl),b			;a184	70 	p 
	jp 007c7h		;a185	c3 c7 07 	. . . 
	rra			;a188	1f 	. 
	ccf			;a189	3f 	? 
	ccf			;a18a	3f 	? 
	rra			;a18b	1f 	. 
	ld c,005h		;a18c	0e 05 	. . 
	ld de,02102h		;a18e	11 02 21 	. . ! 
	add a,c			;a191	81 	. 
	ccf			;a192	3f 	? 
	dec b			;a193	05 	. 
	ex af,af'			;a194	08 	. 
	ld (bc),a			;a195	02 	. 
	inc b			;a196	04 	. 
	sub e			;a197	93 	. 
	call m,0fedeh		;a198	fc de fe 	. . . 
	defb 0fdh,0fch,07bh	;illegal sequence		;a19b	fd fc 7b 	. . { 
	dec sp			;a19e	3b 	; 
	djnz la1c1h		;a19f	10 20 	.   
	in a,(0ffh)		;a1a1	db ff 	. . 
	ld a,a			;a1a3	7f 	 
	ld a,a			;a1a4	7f 	 
	ld a,03ch		;a1a5	3e 3c 	> < 
	ex af,af'			;a1a7	08 	. 
	inc b			;a1a8	04 	. 
	ld hl,00242h		;a1a9	21 42 02 	! B . 
	ld b,h			;a1ac	44 	D 
	ld (bc),a			;a1ad	02 	. 
	add a,h			;a1ae	84 	. 
	add a,h			;a1af	84 	. 
	call m,00400h		;a1b0	fc 00 04 	. . . 
	add a,d			;a1b3	82 	. 
	ld (bc),a			;a1b4	02 	. 
	ld b,d			;a1b5	42 	B 
	ld (bc),a			;a1b6	02 	. 
	ld b,c			;a1b7	41 	A 
	adc a,c			;a1b8	89 	. 
	ld a,a			;a1b9	7f 	 
	nop			;a1ba	00 	. 
	ld h,e			;a1bb	63 	c 
	dec h			;a1bc	25 	% 
	ld sp,03e3fh		;a1bd	31 3f 3e 	1 ? > 
	ccf			;a1c0	3f 	? 
la1c1h:
	rst 8			;a1c1	cf 	. 
	inc bc			;a1c2	03 	. 
	add a,082h		;a1c3	c6 82 	. . 
	pop hl			;a1c5	e1 	. 
	jr nz,la1cah		;a1c6	20 02 	  . 
	inc de			;a1c8	13 	. 
	ld (bc),a			;a1c9	02 	. 
la1cah:
	djnz $-120		;a1ca	10 86 	. . 
	nop			;a1cc	00 	. 
	inc e			;a1cd	1c 	. 
	ld a,07fh		;a1ce	3e 7f 	>  
	ld a,a			;a1d0	7f 	 
	ld a,(hl)			;a1d1	7e 	~ 
	inc bc			;a1d2	03 	. 
	ccf			;a1d3	3f 	? 
	add a,e			;a1d4	83 	. 
	rra			;a1d5	1f 	. 
	rrca			;a1d6	0f 	. 
	inc bc			;a1d7	03 	. 
	inc b			;a1d8	04 	. 
	nop			;a1d9	00 	. 
	add a,d			;a1da	82 	. 
	jr c,la25ch		;a1db	38 7f 	8  
	inc bc			;a1dd	03 	. 
	rst 38h			;a1de	ff 	. 
	or (hl)			;a1df	b6 	. 
	ld a,a			;a1e0	7f 	 
	jr c,la1e3h		;a1e1	38 00 	8 . 
la1e3h:
	nop			;a1e3	00 	. 
	inc bc			;a1e4	03 	. 
	scf			;a1e5	37 	7 
	ld a,a			;a1e6	7f 	 
	ld a,a			;a1e7	7f 	 
	ccf			;a1e8	3f 	? 
	ld a,a			;a1e9	7f 	 
	rst 38h			;a1ea	ff 	. 
	nop			;a1eb	00 	. 
	inc c			;a1ec	0c 	. 
	sbc a,(hl)			;a1ed	9e 	. 
	cp 0fch		;a1ee	fe fc 	. . 
la1f0h:
	call m,0fef8h		;a1f0	fc f8 fe 	. . . 
	rst 38h			;a1f3	ff 	. 
	ld h,e			;a1f4	63 	c 
	dec h			;a1f5	25 	% 
	ld sp,03e3fh		;a1f6	31 3f 3e 	1 ? > 
	ccf			;a1f9	3f 	? 
	rra			;a1fa	1f 	. 
	rst 38h			;a1fb	ff 	. 
	adc a,a			;a1fc	8f 	. 
	ld c,(hl)			;a1fd	4e 	N 
	ld e,07ch		;a1fe	1e 7c 	. | 
	call m,0f8f8h		;a200	fc f8 f8 	. . . 
	daa			;a203	27 	' 
	ld a,a			;a204	7f 	 
	rst 38h			;a205	ff 	. 
	rst 38h			;a206	ff 	. 
	ld a,h			;a207	7c 	| 
	inc sp			;a208	33 	3 
	inc de			;a209	13 	. 
	djnz la1f0h		;a20a	10 e4 	. . 
	cp 0ffh		;a20c	fe ff 	. . 
	rst 38h			;a20e	ff 	. 
	ld a,(hl)			;a20f	7e 	~ 
	inc e			;a210	1c 	. 
	ex af,af'			;a211	08 	. 
	ex af,af'			;a212	08 	. 
	jr nz,la236h		;a213	20 21 	  ! 
	ld b,d			;a215	42 	B 
	ld (bc),a			;a216	02 	. 
	ld b,h			;a217	44 	D 
	ld (bc),a			;a218	02 	. 
	add a,h			;a219	84 	. 
	add a,h			;a21a	84 	. 
	call m,00404h		;a21b	fc 04 04 	. . . 
	add a,d			;a21e	82 	. 
	ld (bc),a			;a21f	02 	. 
	ld b,d			;a220	42 	B 
la221h:
	ld (bc),a			;a221	02 	. 
	ld b,c			;a222	41 	A 
	add a,c			;a223	81 	. 
	ld a,a			;a224	7f 	 
	nop			;a225	00 	. 
	or b			;a226	b0 	. 
	inc bc			;a227	03 	. 
	inc (hl)			;a228	34 	4 
	ld c,h			;a229	4c 	L 
	ld b,h			;a22a	44 	D 
	ld h,062h		;a22b	26 62 	& b 
	sub d			;a22d	92 	. 
	sbc a,h			;a22e	9c 	. 
	inc c			;a22f	0c 	. 
	sub d			;a230	92 	. 
	ld h,d			;a231	62 	b 
	ld h,h			;a232	64 	d 
	ld b,h			;a233	44 	D 
	ld c,b			;a234	48 	H 
	ld c,(hl)			;a235	4e 	N 
la236h:
	ld (hl),c			;a236	71 	q 
	ld b,d			;a237	42 	B 
	inc h			;a238	24 	$ 
	jr nz,la25bh		;a239	20 20 	    
	ld hl,04e31h		;a23b	21 31 4e 	! 1 N 
	add a,c			;a23e	81 	. 
	add a,c			;a23f	81 	. 
	ld b,d			;a240	42 	B 
	ld (bc),a			;a241	02 	. 
	add a,h			;a242	84 	. 
	inc b			;a243	04 	. 
	inc c			;a244	0c 	. 
	jp p,l8101h		;a245	f2 01 81 	. . . 
	add a,c			;a248	81 	. 
	add a,(hl)			;a249	86 	. 
	sub b			;a24a	90 	. 
	adc a,a			;a24b	8f 	. 
	adc a,a			;a24c	8f 	. 
	sub b			;a24d	90 	. 
	ld (hl),b			;a24e	70 	p 
	ld bc,0c101h		;a24f	01 01 c1 	. . . 
	ld de,0e1e1h		;a252	11 e1 e1 	. . . 
	ld de,0030eh		;a255	11 0e 03 	. . . 
	ld de,01f02h		;a258	11 02 1f 	. . . 
la25bh:
	inc bc			;a25b	03 	. 
la25ch:
	ccf			;a25c	3f 	? 
	inc bc			;a25d	03 	. 
	ex af,af'			;a25e	08 	. 
	ld (bc),a			;a25f	02 	. 
	ret m			;a260	f8 	. 
	inc bc			;a261	03 	. 
	call m,sub_9192h		;a262	fc 92 91 	. . . 
	xor c			;a265	a9 	. 
	add a,(hl)			;a266	86 	. 
	add a,h			;a267	84 	. 
	ld c,a			;a268	4f 	O 
	ccf			;a269	3f 	? 
	djnz la28ch		;a26a	10 20 	.   
	add hl,de			;a26c	19 	. 
	dec h			;a26d	25 	% 
	pop bc			;a26e	c1 	. 
	ld b,c			;a26f	41 	A 
	jp po,008fch		;a270	e2 fc 08 	. . . 
	inc b			;a273	04 	. 
	ld hl,00242h		;a274	21 42 02 	! B . 
	ld a,h			;a277	7c 	| 
	inc bc			;a278	03 	. 
	call m,00083h		;a279	fc 83 00 	. . . 
	inc b			;a27c	04 	. 
	add a,d			;a27d	82 	. 
	ld (bc),a			;a27e	02 	. 
	ld a,(hl)			;a27f	7e 	~ 
	inc bc			;a280	03 	. 
	ld a,a			;a281	7f 	 
	adc a,b			;a282	88 	. 
	nop			;a283	00 	. 
	ld b,d			;a284	42 	B 
	inc h			;a285	24 	$ 
	jr nz,la2a8h		;a286	20 20 	    
	ld hl,0ce31h		;a288	21 31 ce 	! 1 . 
	inc bc			;a28b	03 	. 
la28ch:
	ld bc,0e682h		;a28c	01 82 e6 	. . . 
	jr nz,la293h		;a28f	20 02 	  . 
	rra			;a291	1f 	. 
	ld (bc),a			;a292	02 	. 
la293h:
	djnz la221h		;a293	10 8c 	. . 
	nop			;a295	00 	. 
	inc e			;a296	1c 	. 
	ld (04141h),hl		;a297	22 41 41 	" A A 
	ld b,d			;a29a	42 	B 
	inc hl			;a29b	23 	# 
	jr nz,la2beh		;a29c	20 20 	    
	djnz la2ach		;a29e	10 0c 	. . 
	inc bc			;a2a0	03 	. 
	inc b			;a2a1	04 	. 
	nop			;a2a2	00 	. 
	add a,d			;a2a3	82 	. 
	jr c,la2edh		;a2a4	38 47 	8 G 
	inc bc			;a2a6	03 	. 
	add a,b			;a2a7	80 	. 
la2a8h:
	or (hl)			;a2a8	b6 	. 
	ld b,a			;a2a9	47 	G 
	jr c,la2ach		;a2aa	38 00 	8 . 
la2ach:
	nop			;a2ac	00 	. 
	inc bc			;a2ad	03 	. 
	inc (hl)			;a2ae	34 	4 
	ld c,h			;a2af	4c 	L 
	ld b,h			;a2b0	44 	D 
	ld h,062h		;a2b1	26 62 	& b 
	sub d			;a2b3	92 	. 
la2b4h:
	nop			;a2b4	00 	. 
	inc c			;a2b5	0c 	. 
	sub d			;a2b6	92 	. 
	ld h,d			;a2b7	62 	b 
	ld h,h			;a2b8	64 	d 
la2b9h:
	ld b,h			;a2b9	44 	D 
	ld c,b			;a2ba	48 	H 
	ld c,(hl)			;a2bb	4e 	N 
	sbc a,h			;a2bc	9c 	. 
	ld b,d			;a2bd	42 	B 
la2beh:
	inc h			;a2be	24 	$ 
	jr nz,la2e1h		;a2bf	20 20 	    
	ld hl,01e31h		;a2c1	21 31 1e 	! 1 . 
	ld (hl),c			;a2c4	71 	q 
	add a,c			;a2c5	81 	. 
	ld b,d			;a2c6	42 	B 
	ld (bc),a			;a2c7	02 	. 
	add a,h			;a2c8	84 	. 
	inc b			;a2c9	04 	. 
	ex af,af'			;a2ca	08 	. 
	ret m			;a2cb	f8 	. 
	daa			;a2cc	27 	' 
	ld e,c			;a2cd	59 	Y 
	add a,c			;a2ce	81 	. 
	add a,e			;a2cf	83 	. 
	ld c,h			;a2d0	4c 	L 
	ccf			;a2d1	3f 	? 
	rra			;a2d2	1f 	. 
	djnz la2b9h		;a2d3	10 e4 	. . 
	ld a,(de)			;a2d5	1a 	. 
	ld bc,06281h		;a2d6	01 81 62 	. . b 
	call m,008f8h		;a2d9	fc f8 08 	. . . 
	jr nz,la2ffh		;a2dc	20 21 	  ! 
	ld b,d			;a2de	42 	B 
	ld (bc),a			;a2df	02 	. 
	ld a,h			;a2e0	7c 	| 
la2e1h:
	inc bc			;a2e1	03 	. 
	call m,00402h		;a2e2	fc 02 04 	. . . 
	add a,c			;a2e5	81 	. 
	add a,d			;a2e6	82 	. 
	ld (bc),a			;a2e7	02 	. 
	ld a,(hl)			;a2e8	7e 	~ 
	inc bc			;a2e9	03 	. 
	ld a,a			;a2ea	7f 	 
	nop			;a2eb	00 	. 
	rla			;a2ec	17 	. 
la2edh:
	nop			;a2ed	00 	. 
	add a,c			;a2ee	81 	. 
	ex af,af'			;a2ef	08 	. 
	rlca			;a2f0	07 	. 
	nop			;a2f1	00 	. 
	add a,l			;a2f2	85 	. 
	jr nc,la2fdh		;a2f3	30 08 	0 . 
	jr la30fh		;a2f5	18 18 	. . 
	rrca			;a2f7	0f 	. 
	ld (bc),a			;a2f8	02 	. 
	rlca			;a2f9	07 	. 
	ld (bc),a			;a2fa	02 	. 
	nop			;a2fb	00 	. 
	add a,h			;a2fc	84 	. 
la2fdh:
	jr nc,$+58		;a2fd	30 38 	0 8 
la2ffh:
	jr c,la2e1h		;a2ff	38 e0 	8 . 
	ld (bc),a			;a301	02 	. 
	ret nz			;a302	c0 	. 
	dec b			;a303	05 	. 
	nop			;a304	00 	. 
	ld (bc),a			;a305	02 	. 
	ld c,002h		;a306	0e 02 	. . 
	ld e,004h		;a308	1e 04 	. . 
	nop			;a30a	00 	. 
	ld (bc),a			;a30b	02 	. 
	ret p			;a30c	f0 	. 
	ld (bc),a			;a30d	02 	. 
	ret m			;a30e	f8 	. 
la30fh:
	add a,l			;a30f	85 	. 
	nop			;a310	00 	. 
	ex af,af'			;a311	08 	. 
	nop			;a312	00 	. 
	nop			;a313	00 	. 
	inc bc			;a314	03 	. 
	ld (bc),a			;a315	02 	. 
	rlca			;a316	07 	. 
	ld (bc),a			;a317	02 	. 
	nop			;a318	00 	. 
	add a,h			;a319	84 	. 
	jr nz,la31ch		;a31a	20 00 	  . 
la31ch:
	nop			;a31c	00 	. 
	add a,b			;a31d	80 	. 
	ld (bc),a			;a31e	02 	. 
	ret nz			;a31f	c0 	. 
	inc b			;a320	04 	. 
	nop			;a321	00 	. 
	ld (bc),a			;a322	02 	. 
	jr c,la327h		;a323	38 02 	8 . 
	ld a,b			;a325	78 	x 
	inc b			;a326	04 	. 
la327h:
	nop			;a327	00 	. 
	ld (bc),a			;a328	02 	. 
	inc a			;a329	3c 	< 
	ld (bc),a			;a32a	02 	. 
	ld a,009h		;a32b	3e 09 	> . 
	nop			;a32d	00 	. 
	ld (bc),a			;a32e	02 	. 
	ex af,af'			;a32f	08 	. 
	ld (bc),a			;a330	02 	. 
	jr la2b4h		;a331	18 81 	. . 
	rra			;a333	1f 	. 
	ld (bc),a			;a334	02 	. 
	rrca			;a335	0f 	. 
	ld a,(l8100h)		;a336	3a 00 81 	: . . 
	ex af,af'			;a339	08 	. 
	inc bc			;a33a	03 	. 
	nop			;a33b	00 	. 
	add a,l			;a33c	85 	. 
	inc bc			;a33d	03 	. 
	rrca			;a33e	0f 	. 
	rrca			;a33f	0f 	. 
	nop			;a340	00 	. 
	djnz la346h		;a341	10 03 	. . 
	nop			;a343	00 	. 
	add a,e			;a344	83 	. 
	add a,b			;a345	80 	. 
la346h:
	ret po			;a346	e0 	. 
	ret p			;a347	f0 	. 
	inc b			;a348	04 	. 
	nop			;a349	00 	. 
	ld (bc),a			;a34a	02 	. 
	jr c,la34fh		;a34b	38 02 	8 . 
	ld a,b			;a34d	78 	x 
	inc b			;a34e	04 	. 
la34fh:
	nop			;a34f	00 	. 
	ld (bc),a			;a350	02 	. 
	inc a			;a351	3c 	< 
	ld (bc),a			;a352	02 	. 
	ld a,081h		;a353	3e 81 	> . 
	nop			;a355	00 	. 
	nop			;a356	00 	. 
	adc a,b			;a357	88 	. 
	nop			;a358	00 	. 
	inc b			;a359	04 	. 
	inc b			;a35a	04 	. 
	ld b,007h		;a35b	06 07 	. . 
	rlca			;a35d	07 	. 
	ld c,a			;a35e	4f 	O 
	ld c,e			;a35f	4b 	K 
	inc b			;a360	04 	. 
	nop			;a361	00 	. 
	add a,h			;a362	84 	. 
	add a,b			;a363	80 	. 
	ret nz			;a364	c0 	. 
	and b			;a365	a0 	. 
	jr nz,la36dh		;a366	20 05 	  . 
	nop			;a368	00 	. 
	ld (bc),a			;a369	02 	. 
	jr nz,la2fdh		;a36a	20 91 	  . 
	ld (hl),b			;a36c	70 	p 
la36dh:
	ld h,h			;a36d	64 	d 
	ld h,b			;a36e	60 	` 
	ld a,a			;a36f	7f 	 
	ld h,e			;a370	63 	c 
	ld h,c			;a371	61 	a 
	ld sp,03d3fh		;a372	31 3f 3d 	1 ? = 
	djnz la377h		;a375	10 00 	. . 
la377h:
	rst 38h			;a377	ff 	. 
	pop hl			;a378	e1 	. 
	pop bc			;a379	c1 	. 
	jp 0dfffh		;a37a	c3 ff df 	. . . 
	ld (bc),a			;a37d	02 	. 
	jr c,la385h		;a37e	38 05 	8 . 
	ret m			;a380	f8 	. 
	add a,a			;a381	87 	. 
	ret p			;a382	f0 	. 
	rra			;a383	1f 	. 
	rra			;a384	1f 	. 
la385h:
	rrca			;a385	0f 	. 
	inc bc			;a386	03 	. 
	nop			;a387	00 	. 
	inc bc			;a388	03 	. 
	ld (bc),a			;a389	02 	. 
	rlca			;a38a	07 	. 
	inc b			;a38b	04 	. 
	rst 38h			;a38c	ff 	. 
	adc a,d			;a38d	8a 	. 
	nop			;a38e	00 	. 
	ret nz			;a38f	c0 	. 
	ret po			;a390	e0 	. 
	ret po			;a391	e0 	. 
	ret p			;a392	f0 	. 
	pop af			;a393	f1 	. 
	ex (sp),hl			;a394	e3 	. 
	add a,e			;a395	83 	. 
	inc bc			;a396	03 	. 
	ld bc,00003h		;a397	01 03 00 	. . . 
	add a,c			;a39a	81 	. 
	ret po			;a39b	e0 	. 
	inc b			;a39c	04 	. 
	ret p			;a39d	f0 	. 
	add a,h			;a39e	84 	. 
	ret po			;a39f	e0 	. 
	nop			;a3a0	00 	. 
	inc bc			;a3a1	03 	. 
	ld bc,00006h		;a3a2	01 06 00 	. . . 
	ld (bc),a			;a3a5	02 	. 
	ret p			;a3a6	f0 	. 
	add a,c			;a3a7	81 	. 
	ret pe			;a3a8	e8 	. 
	ld (bc),a			;a3a9	02 	. 
	djnz la3aeh		;a3aa	10 02 	. . 
	sub b			;a3ac	90 	. 
	add a,c			;a3ad	81 	. 
la3aeh:
	ld h,b			;a3ae	60 	` 
	rla			;a3af	17 	. 
	nop			;a3b0	00 	. 
	add a,c			;a3b1	81 	. 
	rra			;a3b2	1f 	. 
	rlca			;a3b3	07 	. 
	nop			;a3b4	00 	. 
	add a,c			;a3b5	81 	. 
	add a,b			;a3b6	80 	. 
	djnz la3b9h		;a3b7	10 00 	. . 
la3b9h:
	ld (bc),a			;a3b9	02 	. 
	ccf			;a3ba	3f 	? 
	inc bc			;a3bb	03 	. 
	nop			;a3bc	00 	. 
	add a,e			;a3bd	83 	. 
	ld a,a			;a3be	7f 	 
	ccf			;a3bf	3f 	? 
	nop			;a3c0	00 	. 
	inc bc			;a3c1	03 	. 
	rst 28h			;a3c2	ef 	. 
	adc a,b			;a3c3	88 	. 
	jr nz,la3c6h		;a3c4	20 00 	  . 
la3c6h:
	add a,b			;a3c6	80 	. 
	ret nz			;a3c7	c0 	. 
	nop			;a3c8	00 	. 
	call m,0f8fch		;a3c9	fc fc f8 	. . . 
	ld b,000h		;a3cc	06 00 	. . 
	ld (bc),a			;a3ce	02 	. 
	ld b,b			;a3cf	40 	@ 
	add a,l			;a3d0	85 	. 
	ld h,b			;a3d1	60 	` 
	ld a,(hl)			;a3d2	7e 	~ 
	dec a			;a3d3	3d 	= 
	inc a			;a3d4	3c 	< 
	jr c,la3ddh		;a3d5	38 06 	8 . 
	nop			;a3d7	00 	. 
	add a,d			;a3d8	82 	. 
	add a,b			;a3d9	80 	. 
	add a,c			;a3da	81 	. 
	dec b			;a3db	05 	. 
	nop			;a3dc	00 	. 
la3ddh:
	ld (bc),a			;a3dd	02 	. 
	add a,b			;a3de	80 	. 
	adc a,a			;a3df	8f 	. 
	ret nz			;a3e0	c0 	. 
	jr nz,la3e3h		;a3e1	20 00 	  . 
la3e3h:
	ccf			;a3e3	3f 	? 
	rra			;a3e4	1f 	. 
	ld c,00eh		;a3e5	0e 0e 	. . 
	ld a,a			;a3e7	7f 	 
	ld l,(hl)			;a3e8	6e 	n 
	add a,c			;a3e9	81 	. 
	ld bc,00fffh		;a3ea	01 ff 0f 	. . . 
	rrca			;a3ed	0f 	. 
	rra			;a3ee	1f 	. 
	ld (bc),a			;a3ef	02 	. 
	rst 38h			;a3f0	ff 	. 
	ex af,af'			;a3f1	08 	. 
	ret nz			;a3f2	c0 	. 
	add a,(hl)			;a3f3	86 	. 
	ld bc,07e3dh		;a3f4	01 3d 7e 	. = ~ 
	ld a,(hl)			;a3f7	7e 	~ 
	ld a,h			;a3f8	7c 	| 
	ld (hl),b			;a3f9	70 	p 
	ld (bc),a			;a3fa	02 	. 
	nop			;a3fb	00 	. 
	inc bc			;a3fc	03 	. 
	rst 38h			;a3fd	ff 	. 
	add a,d			;a3fe	82 	. 
	ccf			;a3ff	3f 	? 
	nop			;a400	00 	. 
	inc bc			;a401	03 	. 
	ld bc,0fe02h		;a402	01 02 fe 	. . . 
	add a,d			;a405	82 	. 
	call m,00308h		;a406	fc 08 03 	. . . 
	ret p			;a409	f0 	. 
	add a,c			;a40a	81 	. 
	ret po			;a40b	e0 	. 
	djnz la40eh		;a40c	10 00 	. . 
la40eh:
	add a,e			;a40e	83 	. 
	rlca			;a40f	07 	. 
	inc bc			;a410	03 	. 
	inc a			;a411	3c 	< 
	ld (bc),a			;a412	02 	. 
	ex af,af'			;a413	08 	. 
	ld (bc),a			;a414	02 	. 
	ld c,b			;a415	48 	H 
	add a,c			;a416	81 	. 
	jr nc,la41bh		;a417	30 02 	0 . 
	add a,b			;a419	80 	. 
	dec e			;a41a	1d 	. 
la41bh:
	nop			;a41b	00 	. 
	add a,c			;a41c	81 	. 
	inc bc			;a41d	03 	. 
	rlca			;a41e	07 	. 
	nop			;a41f	00 	. 
	add a,h			;a420	84 	. 
	ret m			;a421	f8 	. 
	ccf			;a422	3f 	? 
	ccf			;a423	3f 	? 
	rra			;a424	1f 	. 
	dec b			;a425	05 	. 
	nop			;a426	00 	. 
	ld (bc),a			;a427	02 	. 
	rst 28h			;a428	ef 	. 
	sub d			;a429	92 	. 
	ret pe			;a42a	e8 	. 
	nop			;a42b	00 	. 
	nop			;a42c	00 	. 
	rrca			;a42d	0f 	. 
	rlca			;a42e	07 	. 
	nop			;a42f	00 	. 
	call m,01cfch		;a430	fc fc 1c 	. . . 
	inc b			;a433	04 	. 
	nop			;a434	00 	. 
	ret p			;a435	f0 	. 
	ret m			;a436	f8 	. 
	nop			;a437	00 	. 
	ld a,a			;a438	7f 	 
	ld a,a			;a439	7f 	 
	ccf			;a43a	3f 	? 
	rrca			;a43b	0f 	. 
	inc b			;a43c	04 	. 
	nop			;a43d	00 	. 
	inc bc			;a43e	03 	. 
	rst 38h			;a43f	ff 	. 
	add a,c			;a440	81 	. 
	cp 004h		;a441	fe 04 	. . 
	nop			;a443	00 	. 
	ld (bc),a			;a444	02 	. 
	add a,b			;a445	80 	. 
	ex af,af'			;a446	08 	. 
	nop			;a447	00 	. 
	add a,c			;a448	81 	. 
	inc bc			;a449	03 	. 
	ld (bc),a			;a44a	02 	. 
	nop			;a44b	00 	. 
	ld (bc),a			;a44c	02 	. 
	inc b			;a44d	04 	. 
	adc a,c			;a44e	89 	. 
	inc bc			;a44f	03 	. 
	nop			;a450	00 	. 
	nop			;a451	00 	. 
	ret nz			;a452	c0 	. 
	add a,(hl)			;a453	86 	. 
	sbc a,(hl)			;a454	9e 	. 
	sbc a,a			;a455	9f 	. 
	sbc a,a			;a456	9f 	. 
	rrca			;a457	0f 	. 
	rlca			;a458	07 	. 
	nop			;a459	00 	. 
	add a,c			;a45a	81 	. 
	add a,b			;a45b	80 	. 
	djnz la45eh		;a45c	10 00 	. . 
la45eh:
	add a,c			;a45e	81 	. 
	ret p			;a45f	f0 	. 
	rrca			;a460	0f 	. 
	nop			;a461	00 	. 
	add a,d			;a462	82 	. 
	rrca			;a463	0f 	. 
	rra			;a464	1f 	. 
	ld b,000h		;a465	06 00 	. . 
	ld (bc),a			;a467	02 	. 
	ret m			;a468	f8 	. 
	ld b,000h		;a469	06 00 	. . 
	ld (bc),a			;a46b	02 	. 
	rst 38h			;a46c	ff 	. 
	ld b,000h		;a46d	06 00 	. . 
	add a,d			;a46f	82 	. 
	ret nz			;a470	c0 	. 
	ret po			;a471	e0 	. 
	rrca			;a472	0f 	. 
	nop			;a473	00 	. 
	add a,(hl)			;a474	86 	. 
	ld a,06dh		;a475	3e 6d 	> m 
	ld l,l			;a477	6d 	m 
	ld (hl),e			;a478	73 	s 
	ld a,e			;a479	7b 	{ 
	ld (hl),00ah		;a47a	36 0a 	6 . 
	nop			;a47c	00 	. 
	add a,(hl)			;a47d	86 	. 
	ld e,03bh		;a47e	1e 3b 	. ; 
	ld (hl),a			;a480	77 	w 
	ld (hl),l			;a481	75 	u 
	ld l,d			;a482	6a 	j 
	jr la496h		;a483	18 11 	. . 
	nop			;a485	00 	. 
	ld (bc),a			;a486	02 	. 
	rrca			;a487	0f 	. 
	add a,d			;a488	82 	. 
	rlca			;a489	07 	. 
	inc bc			;a48a	03 	. 
	inc b			;a48b	04 	. 
	nop			;a48c	00 	. 
	dec b			;a48d	05 	. 
	rst 38h			;a48e	ff 	. 
	inc bc			;a48f	03 	. 
	nop			;a490	00 	. 
	ld (bc),a			;a491	02 	. 
	ret m			;a492	f8 	. 
	add a,e			;a493	83 	. 
	ret p			;a494	f0 	. 
	ret po			;a495	e0 	. 
la496h:
	add a,b			;a496	80 	. 
	ld (de),a			;a497	12 	. 
	nop			;a498	00 	. 
	add a,h			;a499	84 	. 
	ld (hl),b			;a49a	70 	p 
	nop			;a49b	00 	. 
	nop			;a49c	00 	. 
	inc a			;a49d	3c 	< 
	ld (bc),a			;a49e	02 	. 
	ex af,af'			;a49f	08 	. 
	ld (bc),a			;a4a0	02 	. 
	ld c,b			;a4a1	48 	H 
	add a,c			;a4a2	81 	. 
	jr nc,la4ach		;a4a3	30 07 	0 . 
	nop			;a4a5	00 	. 
	add a,c			;a4a6	81 	. 
	ld bc,00007h		;a4a7	01 07 00 	. . . 
	add a,l			;a4aa	85 	. 
	ret p			;a4ab	f0 	. 
la4ach:
	ld a,b			;a4ac	78 	x 
	ld a,b			;a4ad	78 	x 
	jr c,$+10		;a4ae	38 08 	8 . 
	inc c			;a4b0	0c 	. 
	nop			;a4b1	00 	. 
	ld (bc),a			;a4b2	02 	. 
	ld bc,00006h		;a4b3	01 06 00 	. . . 
	ld (bc),a			;a4b6	02 	. 
	call m,0f882h		;a4b7	fc 82 f8 	. . . 
	ret nz			;a4ba	c0 	. 
	inc b			;a4bb	04 	. 
	nop			;a4bc	00 	. 
	inc bc			;a4bd	03 	. 
	rst 28h			;a4be	ef 	. 
	dec b			;a4bf	05 	. 
	nop			;a4c0	00 	. 
	nop			;a4c1	00 	. 
	sub b			;a4c2	90 	. 
	inc b			;a4c3	04 	. 
	ld a,(bc)			;a4c4	0a 	. 
	dec bc			;a4c5	0b 	. 
	ex af,af'			;a4c6	08 	. 
	ld de,0e860h		;a4c7	11 60 e8 	. ` . 
	call z,00000h		;a4ca	cc 00 00 	. . . 
	ret m			;a4cd	f8 	. 
	ld b,081h		;a4ce	06 81 	. . 
	ld b,b			;a4d0	40 	@ 
	ld h,b			;a4d1	60 	` 
	ret po			;a4d2	e0 	. 
	inc b			;a4d3	04 	. 
	nop			;a4d4	00 	. 
	add a,l			;a4d5	85 	. 
	jr nz,$-14		;a4d6	20 f0 	  . 
	ret p			;a4d8	f0 	. 
	ld a,b			;a4d9	78 	x 
	rst 20h			;a4da	e7 	. 
	inc b			;a4db	04 	. 
	rst 18h			;a4dc	df 	. 
	add a,h			;a4dd	84 	. 
	ld e,a			;a4de	5f 	_ 
	ld a,a			;a4df	7f 	 
la4e0h:
	ld a,a			;a4e0	7f 	 
	ret p			;a4e1	f0 	. 
	rlca			;a4e2	07 	. 
	rst 38h			;a4e3	ff 	. 
	add a,d			;a4e4	82 	. 
	inc l			;a4e5	2c 	, 
	call pe,0cc02h		;a4e6	ec 02 cc 	. . . 
	inc bc			;a4e9	03 	. 
	call pe,0d88bh		;a4ea	ec 8b d8 	. . . 
	ccf			;a4ed	3f 	? 
	jr nc,la50fh		;a4ee	30 1f 	0 . 
	rra			;a4f0	1f 	. 
	daa			;a4f1	27 	' 
	ld c,a			;a4f2	4f 	O 
	ld c,a			;a4f3	4f 	O 
	sub a			;a4f4	97 	. 
	rst 38h			;a4f5	ff 	. 
	nop			;a4f6	00 	. 
	ld (bc),a			;a4f7	02 	. 
	rst 38h			;a4f8	ff 	. 
	ld (bc),a			;a4f9	02 	. 
	cp 002h		;a4fa	fe 02 	. . 
	defb 0fdh,08ah,0f9h	;illegal sequence		;a4fc	fd 8a f9 	. . . 
	dec sp			;a4ff	3b 	; 
	rst 30h			;a500	f7 	. 
	rst 8			;a501	cf 	. 
	add a,a			;a502	87 	. 
	adc a,c			;a503	89 	. 
	add a,b			;a504	80 	. 
	add a,b			;a505	80 	. 
	ret po			;a506	e0 	. 
	ret p			;a507	f0 	. 
	inc b			;a508	04 	. 
	ret m			;a509	f8 	. 
	adc a,l			;a50a	8d 	. 
	ret p			;a50b	f0 	. 
	jr nz,la551h		;a50c	20 43 	  C 
	add a,c			;a50e	81 	. 
la50fh:
	add a,b			;a50f	80 	. 
	add a,c			;a510	81 	. 
	ld b,a			;a511	47 	G 
	dec a			;a512	3d 	= 
	dec e			;a513	1d 	. 
	ld e,0f8h		;a514	1e f8 	. . 
	ei			;a516	fb 	. 
	push af			;a517	f5 	. 
	ld (bc),a			;a518	02 	. 
	xor 002h		;a519	ee 02 	. . 
	ld l,(hl)			;a51b	6e 	n 
	add a,d			;a51c	82 	. 
	sbc a,l			;a51d	9d 	. 
	ret nz			;a51e	c0 	. 
	ld (bc),a			;a51f	02 	. 
	ret po			;a520	e0 	. 
	ld (bc),a			;a521	02 	. 
	ret p			;a522	f0 	. 
	add a,c			;a523	81 	. 
	rst 38h			;a524	ff 	. 
	ld (bc),a			;a525	02 	. 
	call m,02002h		;a526	fc 02 20 	. .   
	ld (bc),a			;a529	02 	. 
	ld b,b			;a52a	40 	@ 
	add a,c			;a52b	81 	. 
	add a,b			;a52c	80 	. 
la52dh:
	inc bc			;a52d	03 	. 
	nop			;a52e	00 	. 
	sub b			;a52f	90 	. 
	ld a,03fh		;a530	3e 3f 	> ? 
	ccf			;a532	3f 	? 
	dec sp			;a533	3b 	; 
	scf			;a534	37 	7 
	ld l,a			;a535	6f 	o 
	ld b,b			;a536	40 	@ 
	add a,b			;a537	80 	. 
	rst 30h			;a538	f7 	. 
	rrca			;a539	0f 	. 
	rst 38h			;a53a	ff 	. 
	defb 0fdh,0fdh,0beh	;illegal sequence		;a53b	fd fd be 	. . . 
	ld (hl),000h		;a53e	36 00 	6 . 
	inc bc			;a540	03 	. 
	ret m			;a541	f8 	. 
	add a,h			;a542	84 	. 
	cp b			;a543	b8 	. 
	call c,0f7eeh		;a544	dc ee f7 	. . . 
	ex af,af'			;a547	08 	. 
	nop			;a548	00 	. 
	adc a,c			;a549	89 	. 
	add a,b			;a54a	80 	. 
	ret nz			;a54b	c0 	. 
	ld b,b			;a54c	40 	@ 
	ccf			;a54d	3f 	? 
	ld a,a			;a54e	7f 	 
	rst 38h			;a54f	ff 	. 
	add a,b			;a550	80 	. 
la551h:
	ld b,b			;a551	40 	@ 
	ccf			;a552	3f 	? 
	inc bc			;a553	03 	. 
	djnz la4e0h		;a554	10 8a 	. . 
	rst 18h			;a556	df 	. 
	rst 38h			;a557	ff 	. 
	ld a,a			;a558	7f 	 
	ccf			;a559	3f 	? 
	rst 28h			;a55a	ef 	. 
	inc bc			;a55b	03 	. 
	ld (bc),a			;a55c	02 	. 
	inc b			;a55d	04 	. 
	call m,003feh		;a55e	fc fe 03 	. . . 
	rst 38h			;a561	ff 	. 
	sub b			;a562	90 	. 
	ld b,b			;a563	40 	@ 
	and b			;a564	a0 	. 
	and e			;a565	a3 	. 
	sbc a,h			;a566	9c 	. 
	add a,(hl)			;a567	86 	. 
	ld b,c			;a568	41 	A 
	ld b,b			;a569	40 	@ 
	ld h,b			;a56a	60 	` 
	nop			;a56b	00 	. 
	nop			;a56c	00 	. 
	ret m			;a56d	f8 	. 
	ld b,001h		;a56e	06 01 	. . 
	nop			;a570	00 	. 
	add a,b			;a571	80 	. 
	add a,c			;a572	81 	. 
	inc b			;a573	04 	. 
	nop			;a574	00 	. 
	add a,l			;a575	85 	. 
	add a,b			;a576	80 	. 
	ret nz			;a577	c0 	. 
	ret nz			;a578	c0 	. 
	ld h,b			;a579	60 	` 
	ld h,a			;a57a	67 	g 
	dec b			;a57b	05 	. 
	ld a,a			;a57c	7f 	 
	ld (bc),a			;a57d	02 	. 
	rst 38h			;a57e	ff 	. 
	add a,c			;a57f	81 	. 
	add a,c			;a580	81 	. 
	ld b,0ffh		;a581	06 ff 	. . 
	add a,c			;a583	81 	. 
	cp 007h		;a584	fe 07 	. . 
	ld h,b			;a586	60 	` 
la587h:
	adc a,e			;a587	8b 	. 
	ret po			;a588	e0 	. 
	ccf			;a589	3f 	? 
	ld a,(hl)			;a58a	7e 	~ 
	rst 38h			;a58b	ff 	. 
	rst 38h			;a58c	ff 	. 
	call m,040f0h		;a58d	fc f0 40 	. . @ 
	ld b,b			;a590	40 	@ 
	rst 38h			;a591	ff 	. 
	nop			;a592	00 	. 
	ld (bc),a			;a593	02 	. 
	rst 38h			;a594	ff 	. 
	ld (bc),a			;a595	02 	. 
	rst 18h			;a596	df 	. 
	ld (bc),a			;a597	02 	. 
	cp a			;a598	bf 	. 
	adc a,b			;a599	88 	. 
	rst 38h			;a59a	ff 	. 
	rra			;a59b	1f 	. 
	cp 0ffh		;a59c	fe ff 	. . 
	ret m			;a59e	f8 	. 
	call p,0e0f0h		;a59f	f4 f0 e0 	. . . 
	inc bc			;a5a2	03 	. 
	nop			;a5a3	00 	. 
	sub b			;a5a4	90 	. 
	add a,b			;a5a5	80 	. 
	ld b,b			;a5a6	40 	@ 
	jr nz,la5c9h		;a5a7	20 20 	    
	djnz la52dh		;a5a9	10 82 	. . 
	add a,a			;a5ab	87 	. 
	ld c,a			;a5ac	4f 	O 
	ld c,(hl)			;a5ad	4e 	N 
	ld a,01eh		;a5ae	3e 1e 	> . 
	ld e,01fh		;a5b0	1e 1f 	. . 
	rrca			;a5b2	0f 	. 
	cp a			;a5b3	bf 	. 
	ld b,e			;a5b4	43 	C 
	ld (bc),a			;a5b5	02 	. 
	rst 30h			;a5b6	f7 	. 
	ld (bc),a			;a5b7	02 	. 
	or a			;a5b8	b7 	. 
	add a,c			;a5b9	81 	. 
	ld c,(hl)			;a5ba	4e 	N 
	inc bc			;a5bb	03 	. 
	add a,b			;a5bc	80 	. 
	add a,l			;a5bd	85 	. 
	ld h,b			;a5be	60 	` 
	ld a,a			;a5bf	7f 	 
	ld a,h			;a5c0	7c 	| 
	ld a,h			;a5c1	7c 	| 
	call m,04003h		;a5c2	fc 03 40 	. . @ 
	add a,c			;a5c5	81 	. 
	add a,b			;a5c6	80 	. 
	inc b			;a5c7	04 	. 
	nop			;a5c8	00 	. 
la5c9h:
	inc bc			;a5c9	03 	. 
	rra			;a5ca	1f 	. 
	adc a,l			;a5cb	8d 	. 
	ld e,01dh		;a5cc	1e 1d 	. . 
	dec sp			;a5ce	3b 	; 
	ld (hl),a			;a5cf	77 	w 
	add a,b			;a5d0	80 	. 
	cp l			;a5d1	bd 	. 
	jp lbfffh		;a5d2	c3 ff bf 	. . . 
	rst 38h			;a5d5	ff 	. 
	rst 28h			;a5d6	ef 	. 
	ld l,b			;a5d7	68 	h 
	nop			;a5d8	00 	. 
	inc bc			;a5d9	03 	. 
	call m,06c8ah		;a5da	fc 8a 6c 	. . l 
	halt			;a5dd	76 	v 
	cp e			;a5de	bb 	. 
	dec b			;a5df	05 	. 
	nop			;a5e0	00 	. 
	ret nz			;a5e1	c0 	. 
	ld b,b			;a5e2	40 	@ 
	jr nz,$+65		;a5e3	20 3f 	  ? 
	ld a,a			;a5e5	7f 	 
	inc bc			;a5e6	03 	. 
	rst 38h			;a5e7	ff 	. 
	ld (bc),a			;a5e8	02 	. 
	djnz la587h		;a5e9	10 9c 	. . 
	rla			;a5eb	17 	. 
	rst 38h			;a5ec	ff 	. 
	rst 38h			;a5ed	ff 	. 
	ret p			;a5ee	f0 	. 
	ret m			;a5ef	f8 	. 
	rst 30h			;a5f0	f7 	. 
	inc bc			;a5f1	03 	. 
	ld (bc),a			;a5f2	02 	. 
	jp po,0fefah		;a5f3	e2 fa fe 	. . . 
	ld c,006h		;a5f6	0e 06 	. . 
	call m,l80ffh		;a5f8	fc ff 80 	. . . 
	ld a,a			;a5fb	7f 	 
	ccf			;a5fc	3f 	? 
	rst 10h			;a5fd	d7 	. 
	scf			;a5fe	37 	7 
	cpl			;a5ff	2f 	/ 
	cpl			;a600	2f 	/ 
	rst 38h			;a601	ff 	. 
	rlca			;a602	07 	. 
	rst 38h			;a603	ff 	. 
	rst 38h			;a604	ff 	. 
	ei			;a605	fb 	. 
	jp m,0f602h		;a606	fa 02 f6 	. . . 
	ld (bc),a			;a609	02 	. 
	ret nz			;a60a	c0 	. 
	adc a,c			;a60b	89 	. 
	add a,b			;a60c	80 	. 
	ret p			;a60d	f0 	. 
	ex af,af'			;a60e	08 	. 
	inc b			;a60f	04 	. 
	ld (bc),a			;a610	02 	. 
	ld (bc),a			;a611	02 	. 
	jr nz,la68fh		;a612	20 7b 	  { 
	call p,0ef02h		;a614	f4 02 ef 	. . . 
	ld (bc),a			;a617	02 	. 
	ex de,hl			;a618	eb 	. 
	sub c			;a619	91 	. 
	call p,0df06h		;a61a	f4 06 df 	. . . 
	cpl			;a61d	2f 	/ 
	ld (hl),a			;a61e	77 	w 
	ld a,(hl)			;a61f	7e 	~ 
	ld a,a			;a620	7f 	 
	ld a,a			;a621	7f 	 
	rst 28h			;a622	ef 	. 
	ld bc,l8101h		;a623	01 01 81 	. . . 
	ld bc,00201h		;a626	01 01 02 	. . . 
	inc b			;a629	04 	. 
	sbc a,b			;a62a	98 	. 
	inc bc			;a62b	03 	. 
	rra			;a62c	1f 	. 
	adc a,l			;a62d	8d 	. 
	dec c			;a62e	0d 	. 
	dec de			;a62f	1b 	. 
	scf			;a630	37 	7 
	ld l,(hl)			;a631	6e 	n 
	add a,b			;a632	80 	. 
	ld a,e			;a633	7b 	{ 
	add a,a			;a634	87 	. 
	rst 38h			;a635	ff 	. 
	cp 0feh		;a636	fe fe 	. . 
	rst 18h			;a638	df 	. 
	in a,(000h)		;a639	db 00 	. . 
	inc bc			;a63b	03 	. 
	call m,0dc84h		;a63c	fc 84 dc 	. . . 
	xor 077h		;a63f	ee 77 	. w 
	ld a,e			;a641	7b 	{ 
	rlca			;a642	07 	. 
	nop			;a643	00 	. 
	add a,(hl)			;a644	86 	. 
	add a,b			;a645	80 	. 
	ld b,b			;a646	40 	@ 
	djnz la669h		;a647	10 20 	.   
	ccf			;a649	3f 	? 
	ld a,a			;a64a	7f 	 
	inc bc			;a64b	03 	. 
	rst 38h			;a64c	ff 	. 
	add a,e			;a64d	83 	. 
	nop			;a64e	00 	. 
	rlca			;a64f	07 	. 
	dec b			;a650	05 	. 
	ld (bc),a			;a651	02 	. 
	ret m			;a652	f8 	. 
	inc bc			;a653	03 	. 
	ret p			;a654	f0 	. 
	inc bc			;a655	03 	. 
	nop			;a656	00 	. 
	ld (bc),a			;a657	02 	. 
	rst 38h			;a658	ff 	. 
	inc bc			;a659	03 	. 
	ld a,a			;a65a	7f 	 
	add a,l			;a65b	85 	. 
	nop			;a65c	00 	. 
	jr nz,la66fh		;a65d	20 10 	  . 
	ret p			;a65f	f0 	. 
	ret m			;a660	f8 	. 
	inc bc			;a661	03 	. 
	call m,00006h		;a662	fc 06 00 	. . . 
	add a,l			;a665	85 	. 
	jr nc,la6a8h		;a666	30 40 	0 @ 
	add a,b			;a668	80 	. 
la669h:
	ld a,07fh		;a669	3e 7f 	>  
	inc b			;a66b	04 	. 
	rst 38h			;a66c	ff 	. 
	sub d			;a66d	92 	. 
	ld a,a			;a66e	7f 	 
la66fh:
	ld a,0e0h		;a66f	3e e0 	> . 
	nop			;a671	00 	. 
	ld (bc),a			;a672	02 	. 
	ld b,006h		;a673	06 06 	. . 
	ld c,03eh		;a675	0e 3e 	. > 
	adc a,01eh		;a677	ce 1e 	. . 
	ccf			;a679	3f 	? 
	ld a,a			;a67a	7f 	 
	rst 38h			;a67b	ff 	. 
	rst 38h			;a67c	ff 	. 
	cp 078h		;a67d	fe 78 	. x 
	jr nc,la683h		;a67f	30 02 	0 . 
	nop			;a681	00 	. 
	inc bc			;a682	03 	. 
la683h:
	add a,b			;a683	80 	. 
	adc a,b			;a684	88 	. 
	or b			;a685	b0 	. 
	ld b,b			;a686	40 	@ 
	nop			;a687	00 	. 
	add a,b			;a688	80 	. 
	add a,b			;a689	80 	. 
	ld b,c			;a68a	41 	A 
	ld b,e			;a68b	43 	C 
	ccf			;a68c	3f 	? 
	inc bc			;a68d	03 	. 
	inc bc			;a68e	03 	. 
la68fh:
	adc a,h			;a68f	8c 	. 
	inc e			;a690	1c 	. 
	jr la69fh		;a691	18 0c 	. . 
	ld c,033h		;a693	0e 33 	. 3 
	ld b,a			;a695	47 	G 
	add a,l			;a696	85 	. 
	add a,l			;a697	85 	. 
	ld (hl),b			;a698	70 	p 
	nop			;a699	00 	. 
	nop			;a69a	00 	. 
	ld (hl),b			;a69b	70 	p 
	ld (bc),a			;a69c	02 	. 
	rst 38h			;a69d	ff 	. 
	ld (bc),a			;a69e	02 	. 
la69fh:
	cp 086h		;a69f	fe 86 	. . 
	inc a			;a6a1	3c 	< 
	inc e			;a6a2	1c 	. 
	jr la6e3h		;a6a3	18 3e 	. > 
	pop hl			;a6a5	e1 	. 
	ld b,b			;a6a6	40 	@ 
	ld (bc),a			;a6a7	02 	. 
la6a8h:
	ret nz			;a6a8	c0 	. 
	inc b			;a6a9	04 	. 
	nop			;a6aa	00 	. 
	add a,a			;a6ab	87 	. 
	add a,b			;a6ac	80 	. 
	ld b,b			;a6ad	40 	@ 
	jr nz,$+34		;a6ae	20 20 	    
	add a,d			;a6b0	82 	. 
	add a,a			;a6b1	87 	. 
la6b2h:
	adc a,a			;a6b2	8f 	. 
	inc b			;a6b3	04 	. 
	adc a,(hl)			;a6b4	8e 	. 
	add a,h			;a6b5	84 	. 
	rst 38h			;a6b6	ff 	. 
	nop			;a6b7	00 	. 
	cp l			;a6b8	bd 	. 
	ld b,d			;a6b9	42 	B 
	ld (bc),a			;a6ba	02 	. 
	rst 30h			;a6bb	f7 	. 
	ld (bc),a			;a6bc	02 	. 
	or a			;a6bd	b7 	. 
	add a,h			;a6be	84 	. 
	ld c,(hl)			;a6bf	4e 	N 
	ld h,b			;a6c0	60 	` 
	ret p			;a6c1	f0 	. 
	call m,07e04h		;a6c2	fc 04 7e 	. . ~ 
	add a,c			;a6c5	81 	. 
	rst 38h			;a6c6	ff 	. 
	rlca			;a6c7	07 	. 
	ex af,af'			;a6c8	08 	. 
	sub c			;a6c9	91 	. 
	ret m			;a6ca	f8 	. 
	rst 38h			;a6cb	ff 	. 
	rst 38h			;a6cc	ff 	. 
	ld a,a			;a6cd	7f 	 
	ccf			;a6ce	3f 	? 
	ld c,00dh		;a6cf	0e 0d 	. . 
	dec de			;a6d1	1b 	. 
	jr nz,la6b2h		;a6d2	20 de 	  . 
	pop hl			;a6d4	e1 	. 
la6d5h:
	rst 38h			;a6d5	ff 	. 
	ld a,a			;a6d6	7f 	 
	rst 38h			;a6d7	ff 	. 
	rst 30h			;a6d8	f7 	. 
	or (hl)			;a6d9	b6 	. 
	nop			;a6da	00 	. 
	inc bc			;a6db	03 	. 
	rst 38h			;a6dc	ff 	. 
	adc a,h			;a6dd	8c 	. 
	or a			;a6de	b7 	. 
	cp e			;a6df	bb 	. 
	defb 0ddh,0deh,000h	;illegal sequence		;a6e0	dd de 00 	. . . 
la6e3h:
	cp 0feh		;a6e3	fe fe 	. . 
	call m,0c0f8h		;a6e5	fc f8 c0 	. . . 
	ret nz			;a6e8	c0 	. 
	ret po			;a6e9	e0 	. 
	inc b			;a6ea	04 	. 
	djnz la6f2h		;a6eb	10 05 	. . 
	rst 38h			;a6ed	ff 	. 
	nop			;a6ee	00 	. 
	sub b			;a6ef	90 	. 
	inc b			;a6f0	04 	. 
	ld a,(bc)			;a6f1	0a 	. 
la6f2h:
	dec bc			;a6f2	0b 	. 
	add hl,bc			;a6f3	09 	. 
	add hl,de			;a6f4	19 	. 
	ld a,b			;a6f5	78 	x 
	cp b			;a6f6	b8 	. 
	cp h			;a6f7	bc 	. 
	nop			;a6f8	00 	. 
	nop			;a6f9	00 	. 
	ret m			;a6fa	f8 	. 
	cp 0ffh		;a6fb	fe ff 	. . 
	ld a,a			;a6fd	7f 	 
	ld a,a			;a6fe	7f 	 
	rst 38h			;a6ff	ff 	. 
	inc b			;a700	04 	. 
	nop			;a701	00 	. 
	or (hl)			;a702	b6 	. 
	jr nz,la6d5h		;a703	20 d0 	  . 
	ret nc			;a705	d0 	. 
	adc a,b			;a706	88 	. 
	sbc a,a			;a707	9f 	. 
	and b			;a708	a0 	. 
	cp a			;a709	bf 	. 
	and e			;a70a	a3 	. 
	and c			;a70b	a1 	. 
	ld (hl),c			;a70c	71 	q 
	ld c,a			;a70d	4f 	O 
	ld b,d			;a70e	42 	B 
	rst 38h			;a70f	ff 	. 
	nop			;a710	00 	. 
	rst 38h			;a711	ff 	. 
	pop hl			;a712	e1 	. 
	pop bc			;a713	c1 	. 
	jp 0207eh		;a714	c3 7e 20 	. ~   
	call nc,0f414h		;a717	d4 14 f4 	. . . 
	call p,sub_94d4h		;a71a	f4 d4 94 	. . . 
	inc d			;a71d	14 	. 
la71eh:
	jr z,$+34		;a71e	28 20 	(   
	dec hl			;a720	2b 	+ 
	djnz la73fh		;a721	10 1c 	. . 
	ccf			;a723	3f 	? 
	ld a,h			;a724	7c 	| 
	ld a,b			;a725	78 	x 
	ret m			;a726	f8 	. 
	nop			;a727	00 	. 
	cp 000h		;a728	fe 00 	. . 
	nop			;a72a	00 	. 
	pop bc			;a72b	c1 	. 
	ld hl,01313h		;a72c	21 13 13 	! . . 
	add hl,bc			;a72f	09 	. 
	jp z,07c14h		;a730	ca 14 7c 	. . | 
	call m,0fffeh		;a733	fc fe ff 	. . . 
	rst 38h			;a736	ff 	. 
	ret po			;a737	e0 	. 
	djnz la73eh		;a738	10 04 	. . 
	ex af,af'			;a73a	08 	. 
	adc a,b			;a73b	88 	. 
	djnz la71eh		;a73c	10 e0 	. . 
la73eh:
	ld a,h			;a73e	7c 	| 
la73fh:
	cp 0ffh		;a73f	fe ff 	. . 
	rst 38h			;a741	ff 	. 
	ld a,a			;a742	7f 	 
	ccf			;a743	3f 	? 
	ld (bc),a			;a744	02 	. 
	rra			;a745	1f 	. 
	ld (bc),a			;a746	02 	. 
	rrca			;a747	0f 	. 
	add a,c			;a748	81 	. 
	rla			;a749	17 	. 
	ld (bc),a			;a74a	02 	. 
	rst 28h			;a74b	ef 	. 
	ld (bc),a			;a74c	02 	. 
	ld l,a			;a74d	6f 	o 
	add a,c			;a74e	81 	. 
	sbc a,a			;a74f	9f 	. 
	ld b,0ffh		;a750	06 ff 	. . 
	ld (bc),a			;a752	02 	. 
	call m,0e002h		;a753	fc 02 e0 	. . . 
	ld (bc),a			;a756	02 	. 
	ret nz			;a757	c0 	. 
	add a,c			;a758	81 	. 
	add a,b			;a759	80 	. 
	inc bc			;a75a	03 	. 
	nop			;a75b	00 	. 
	ld (bc),a			;a75c	02 	. 
	ccf			;a75d	3f 	? 
	sub h			;a75e	94 	. 
	jr nz,la7a0h		;a75f	20 3f 	  ? 
	inc a			;a761	3c 	< 
	ld a,h			;a762	7c 	| 
	ld a,a			;a763	7f 	 
	ret po			;a764	e0 	. 
	rst 38h			;a765	ff 	. 
	rst 38h			;a766	ff 	. 
	nop			;a767	00 	. 
	rra			;a768	1f 	. 
	rlca			;a769	07 	. 
	rst 20h			;a76a	e7 	. 
	rst 38h			;a76b	ff 	. 
	ld a,a			;a76c	7f 	 
	ret m			;a76d	f8 	. 
	ret m			;a76e	f8 	. 
	ex af,af'			;a76f	08 	. 
	ret m			;a770	f8 	. 
	call m,002feh		;a771	fc fe 02 	. . . 
	rst 38h			;a774	ff 	. 
	rlca			;a775	07 	. 
	nop			;a776	00 	. 
	adc a,c			;a777	89 	. 
	add a,b			;a778	80 	. 
	ret nz			;a779	c0 	. 
	ld b,b			;a77a	40 	@ 
	jr nz,la7bdh		;a77b	20 40 	  @ 
	add a,b			;a77d	80 	. 
	rst 38h			;a77e	ff 	. 
	ld a,a			;a77f	7f 	 
	ccf			;a780	3f 	? 
	dec b			;a781	05 	. 
	djnz $-103		;a782	10 97 	. . 
	sub b			;a784	90 	. 
	ret nc			;a785	d0 	. 
	rst 28h			;a786	ef 	. 
	inc bc			;a787	03 	. 
	ld (bc),a			;a788	02 	. 
	inc b			;a789	04 	. 
	inc b			;a78a	04 	. 
	ld (bc),a			;a78b	02 	. 
	ld bc,0ff01h		;a78c	01 01 ff 	. . . 
	ld b,b			;a78f	40 	@ 
	and b			;a790	a0 	. 
	and e			;a791	a3 	. 
	sbc a,a			;a792	9f 	. 
	add a,a			;a793	87 	. 
	ld b,e			;a794	43 	C 
	ld b,e			;a795	43 	C 
	ld h,a			;a796	67 	g 
	nop			;a797	00 	. 
	nop			;a798	00 	. 
	ret m			;a799	f8 	. 
	cp 003h		;a79a	fe 03 	. . 
	rst 38h			;a79c	ff 	. 
	add a,c			;a79d	81 	. 
	cp 004h		;a79e	fe 04 	. . 
la7a0h:
	nop			;a7a0	00 	. 
	sub h			;a7a1	94 	. 
	add a,b			;a7a2	80 	. 
	ld b,b			;a7a3	40 	@ 
	ld b,b			;a7a4	40 	@ 
	and b			;a7a5	a0 	. 
	ld a,a			;a7a6	7f 	 
	ld b,b			;a7a7	40 	@ 
	ld a,a			;a7a8	7f 	 
	ld e,a			;a7a9	5f 	_ 
	ld c,(hl)			;a7aa	4e 	N 
	ld c,(hl)			;a7ab	4e 	N 
	cp e			;a7ac	bb 	. 
	sub c			;a7ad	91 	. 
	cp 000h		;a7ae	fe 00 	. . 
	cp 00eh		;a7b0	fe 0e 	. . 
	ld c,01ch		;a7b2	0e 1c 	. . 
	ret p			;a7b4	f0 	. 
	ld bc,la007h		;a7b5	01 07 a0 	. . . 
	sub l			;a7b8	95 	. 
	jr nz,la7f9h		;a7b9	20 3e 	  > 
	ld b,d			;a7bb	42 	B 
	add a,c			;a7bc	81 	. 
la7bdh:
	add a,c			;a7bd	81 	. 
	add a,e			;a7be	83 	. 
	adc a,a			;a7bf	8f 	. 
	ld a,a			;a7c0	7f 	 
	ld a,a			;a7c1	7f 	 
	nop			;a7c2	00 	. 
	rst 38h			;a7c3	ff 	. 
	nop			;a7c4	00 	. 
	ret nz			;a7c5	c0 	. 
	pop hl			;a7c6	e1 	. 
	jp po,0c2c2h		;a7c7	e2 c2 c2 	. . . 
	ld bc,00261h		;a7ca	01 61 02 	. a . 
	rst 30h			;a7cd	f7 	. 
	inc bc			;a7ce	03 	. 
	rrca			;a7cf	0f 	. 
	add a,c			;a7d0	81 	. 
	rra			;a7d1	1f 	. 
	inc bc			;a7d2	03 	. 
	nop			;a7d3	00 	. 
	add a,l			;a7d4	85 	. 
	add a,b			;a7d5	80 	. 
	ret nz			;a7d6	c0 	. 
	ret po			;a7d7	e0 	. 
	ret po			;a7d8	e0 	. 
	ret p			;a7d9	f0 	. 
	ld (bc),a			;a7da	02 	. 
	rst 38h			;a7db	ff 	. 
	ld (bc),a			;a7dc	02 	. 
	ld a,a			;a7dd	7f 	 
	add a,c			;a7de	81 	. 
	ccf			;a7df	3f 	? 
	inc bc			;a7e0	03 	. 
	rra			;a7e1	1f 	. 
	add a,e			;a7e2	83 	. 
	ret m			;a7e3	f8 	. 
	call m,002c3h		;a7e4	fc c3 02 	. . . 
	rst 30h			;a7e7	f7 	. 
	ld (bc),a			;a7e8	02 	. 
	or a			;a7e9	b7 	. 
	add a,c			;a7ea	81 	. 
	rst 8			;a7eb	cf 	. 
	ld (bc),a			;a7ec	02 	. 
	ld a,a			;a7ed	7f 	 
	inc bc			;a7ee	03 	. 
	rst 38h			;a7ef	ff 	. 
	inc bc			;a7f0	03 	. 
	call m,0c003h		;a7f1	fc 03 c0 	. . . 
	add a,c			;a7f4	81 	. 
	add a,b			;a7f5	80 	. 
	inc b			;a7f6	04 	. 
	nop			;a7f7	00 	. 
	ld (bc),a			;a7f8	02 	. 
la7f9h:
	rra			;a7f9	1f 	. 
	add a,l			;a7fa	85 	. 
	djnz la81ch		;a7fb	10 1f 	. . 
	rra			;a7fd	1f 	. 
	ccf			;a7fe	3f 	? 
	ld a,a			;a7ff	7f 	 
	inc bc			;a800	03 	. 
	rst 38h			;a801	ff 	. 
	add a,l			;a802	85 	. 
	nop			;a803	00 	. 
la804h:
	rst 0			;a804	c7 	. 
	ld bc,0ff39h		;a805	01 39 ff 	. 9 . 
	inc bc			;a808	03 	. 
	call m,0048eh		;a809	fc 8e 04 	. . . 
	call m,0fffeh		;a80c	fc fe ff 	. . . 
	rst 38h			;a80f	ff 	. 
	rlca			;a810	07 	. 
	ret nz			;a811	c0 	. 
	ld b,b			;a812	40 	@ 
	jr nz,la835h		;a813	20 20 	    
	ld b,b			;a815	40 	@ 
	add a,b			;a816	80 	. 
	add a,b			;a817	80 	. 
	rst 38h			;a818	ff 	. 
	dec b			;a819	05 	. 
	djnz la81eh		;a81a	10 02 	. . 
la81ch:
	rra			;a81c	1f 	. 
	add a,d			;a81d	82 	. 
la81eh:
	rst 30h			;a81e	f7 	. 
	inc bc			;a81f	03 	. 
	inc b			;a820	04 	. 
	ld (bc),a			;a821	02 	. 
	add a,a			;a822	87 	. 
	jp p,0fcfah		;a823	f2 fa fc 	. . . 
	add a,b			;a826	80 	. 
	cp a			;a827	bf 	. 
	ld b,b			;a828	40 	@ 
	jr nc,la82dh		;a829	30 02 	0 . 
	ret m			;a82b	f8 	. 
	ld (bc),a			;a82c	02 	. 
la82dh:
	ret p			;a82d	f0 	. 
	add a,h			;a82e	84 	. 
	nop			;a82f	00 	. 
	ret c			;a830	d8 	. 
	nop			;a831	00 	. 
	ld bc,00702h		;a832	01 02 07 	. . . 
la835h:
	ld (bc),a			;a835	02 	. 
	rrca			;a836	0f 	. 
	ld (bc),a			;a837	02 	. 
	ld b,b			;a838	40 	@ 
	add a,h			;a839	84 	. 
	add a,b			;a83a	80 	. 
	ret p			;a83b	f0 	. 
	ret m			;a83c	f8 	. 
	call m,0fe02h		;a83d	fc 02 fe 	. . . 
	ld (bc),a			;a840	02 	. 
	rst 38h			;a841	ff 	. 
	add a,c			;a842	81 	. 
	call m,0ff02h		;a843	fc 02 ff 	. . . 
	ld (bc),a			;a846	02 	. 
	ei			;a847	fb 	. 
	adc a,c			;a848	89 	. 
	call m,0ffffh		;a849	fc ff ff 	. . . 
	ccf			;a84c	3f 	? 
	ld a,c			;a84d	79 	y 
	ld h,c			;a84e	61 	a 
	ld h,b			;a84f	60 	` 
	ld h,b			;a850	60 	` 
	ret p			;a851	f0 	. 
	dec b			;a852	05 	. 
	rst 38h			;a853	ff 	. 
	adc a,d			;a854	8a 	. 
	cp 0fch		;a855	fe fc 	. . 
	ld a,b			;a857	78 	x 
	rra			;a858	1f 	. 
	rra			;a859	1f 	. 
	djnz $+17		;a85a	10 0f 	. . 
	ld e,03eh		;a85c	1e 3e 	. > 
	ld a,a			;a85e	7f 	 
	inc bc			;a85f	03 	. 
	rst 38h			;a860	ff 	. 
	adc a,e			;a861	8b 	. 
	nop			;a862	00 	. 
	adc a,a			;a863	8f 	. 
	inc bc			;a864	03 	. 
	ld (hl),e			;a865	73 	s 
	rst 38h			;a866	ff 	. 
	rst 38h			;a867	ff 	. 
	inc c			;a868	0c 	. 
	call m,0fc04h		;a869	fc 04 fc 	. . . 
	cp 003h		;a86c	fe 03 	. . 
	rst 38h			;a86e	ff 	. 
	ld b,000h		;a86f	06 00 	. . 
	adc a,h			;a871	8c 	. 
	add a,b			;a872	80 	. 
	ret nz			;a873	c0 	. 
	djnz la896h		;a874	10 20 	.   
	jr nz,la8b8h		;a876	20 40 	  @ 
	add a,b			;a878	80 	. 
	add a,b			;a879	80 	. 
	rst 38h			;a87a	ff 	. 
	nop			;a87b	00 	. 
	rlca			;a87c	07 	. 
	dec b			;a87d	05 	. 
	ld (bc),a			;a87e	02 	. 
	ex af,af'			;a87f	08 	. 
	ld (bc),a			;a880	02 	. 
	djnz la804h		;a881	10 81 	. . 
	ret p			;a883	f0 	. 
	inc bc			;a884	03 	. 
	nop			;a885	00 	. 
	ld (bc),a			;a886	02 	. 
	add a,b			;a887	80 	. 
	ld (bc),a			;a888	02 	. 
	ld b,b			;a889	40 	@ 
	adc a,c			;a88a	89 	. 
	ld a,a			;a88b	7f 	 
	nop			;a88c	00 	. 
	jr nz,la89fh		;a88d	20 10 	  . 
	djnz la899h		;a88f	10 08 	. . 
	inc b			;a891	04 	. 
	inc b			;a892	04 	. 
	call m,00006h		;a893	fc 06 00 	. . . 
la896h:
	adc a,e			;a896	8b 	. 
	jr nc,la909h		;a897	30 70 	0 p 
la899h:
	ret p			;a899	f0 	. 
	ld a,041h		;a89a	3e 41 	> A 
	sub d			;a89c	92 	. 
	sub d			;a89d	92 	. 
	adc a,h			;a89e	8c 	. 
la89fh:
	add a,h			;a89f	84 	. 
	ld c,c			;a8a0	49 	I 
	ld a,007h		;a8a1	3e 07 	> . 
	cp 089h		;a8a3	fe 89 	. . 
	adc a,01eh		;a8a5	ce 1e 	. . 
	ld hl,08844h		;a8a7	21 44 88 	! D . 
	adc a,d			;a8aa	8a 	. 
	sub l			;a8ab	95 	. 
	ld h,a			;a8ac	67 	g 
	ccf			;a8ad	3f 	? 
	ld (bc),a			;a8ae	02 	. 
	nop			;a8af	00 	. 
	inc bc			;a8b0	03 	. 
	add a,b			;a8b1	80 	. 
	add a,c			;a8b2	81 	. 
	or b			;a8b3	b0 	. 
	ld (bc),a			;a8b4	02 	. 
	ret p			;a8b5	f0 	. 
	ld (bc),a			;a8b6	02 	. 
	rst 38h			;a8b7	ff 	. 
la8b8h:
	ld (bc),a			;a8b8	02 	. 
	ld a,a			;a8b9	7f 	 
	add a,c			;a8ba	81 	. 
	ccf			;a8bb	3f 	? 
	inc bc			;a8bc	03 	. 
	inc bc			;a8bd	03 	. 
	adc a,h			;a8be	8c 	. 
	djnz la8d6h		;a8bf	10 15 	. . 
	dec bc			;a8c1	0b 	. 
	dec c			;a8c2	0d 	. 
	ccf			;a8c3	3f 	? 
	ld a,(hl)			;a8c4	7e 	~ 
	cp 0feh		;a8c5	fe fe 	. . 
	adc a,(hl)			;a8c7	8e 	. 
	rst 38h			;a8c8	ff 	. 
	rst 38h			;a8c9	ff 	. 
	adc a,a			;a8ca	8f 	. 
	ld (bc),a			;a8cb	02 	. 
	nop			;a8cc	00 	. 
	ld (bc),a			;a8cd	02 	. 
	ld bc,04485h		;a8ce	01 85 44 	. . D 
	ld h,h			;a8d1	64 	d 
	ret pe			;a8d2	e8 	. 
	sbc a,07fh		;a8d3	de 7f 	.  
	inc bc			;a8d5	03 	. 
la8d6h:
	rst 38h			;a8d6	ff 	. 
	inc b			;a8d7	04 	. 
	nop			;a8d8	00 	. 
	add a,d			;a8d9	82 	. 
	add a,b			;a8da	80 	. 
	ret nz			;a8db	c0 	. 
	ld (bc),a			;a8dc	02 	. 
	ret po			;a8dd	e0 	. 
	rlca			;a8de	07 	. 
	rst 38h			;a8df	ff 	. 
	add a,h			;a8e0	84 	. 
	adc a,a			;a8e1	8f 	. 
	rst 38h			;a8e2	ff 	. 
	rst 38h			;a8e3	ff 	. 
	jp 0f702h		;a8e4	c3 02 f7 	. . . 
	ld (bc),a			;a8e7	02 	. 
	or a			;a8e8	b7 	. 
	add a,c			;a8e9	81 	. 
	rst 8			;a8ea	cf 	. 
	rlca			;a8eb	07 	. 
	rst 38h			;a8ec	ff 	. 
	add a,c			;a8ed	81 	. 
	cp 007h		;a8ee	fe 07 	. . 
	ret m			;a8f0	f8 	. 
	adc a,a			;a8f1	8f 	. 
	ex af,af'			;a8f2	08 	. 
	add a,a			;a8f3	87 	. 
	add a,a			;a8f4	87 	. 
	ld b,h			;a8f5	44 	D 
	scf			;a8f6	37 	7 
	rrca			;a8f7	0f 	. 
	rrca			;a8f8	0f 	. 
	rra			;a8f9	1f 	. 
	ccf			;a8fa	3f 	? 
	rst 38h			;a8fb	ff 	. 
	rst 38h			;a8fc	ff 	. 
	nop			;a8fd	00 	. 
	ex (sp),hl			;a8fe	e3 	. 
	add a,b			;a8ff	80 	. 
	sbc a,h			;a900	9c 	. 
	ld (bc),a			;a901	02 	. 
	rst 38h			;a902	ff 	. 
	ld (bc),a			;a903	02 	. 
	cp 081h		;a904	fe 81 	. . 
	ld bc,0ff05h		;a906	01 05 ff 	. . . 
la909h:
	ld (bc),a			;a909	02 	. 
	ld (bc),a			;a90a	02 	. 
	add a,(hl)			;a90b	86 	. 
	inc b			;a90c	04 	. 
	jr c,$-62		;a90d	38 c0 	8 . 
	ret nz			;a90f	c0 	. 
	ret po			;a910	e0 	. 
	ret p			;a911	f0 	. 
	rlca			;a912	07 	. 
	djnz la896h		;a913	10 81 	. . 
	rst 38h			;a915	ff 	. 
	nop			;a916	00 	. 
	inc bc			;a917	03 	. 
	nop			;a918	00 	. 
	add a,l			;a919	85 	. 
	ld bc,01808h		;a91a	01 08 18 	. . . 
	djnz la953h		;a91d	10 34 	. 4 
	inc bc			;a91f	03 	. 
	nop			;a920	00 	. 
	add a,l			;a921	85 	. 
	ret m			;a922	f8 	. 
	ld a,(hl)			;a923	7e 	~ 
	ccf			;a924	3f 	? 
	ld e,a			;a925	5f 	_ 
	rst 18h			;a926	df 	. 
	rlca			;a927	07 	. 
	nop			;a928	00 	. 
	adc a,a			;a929	8f 	. 
	add a,b			;a92a	80 	. 
	dec de			;a92b	1b 	. 
	rra			;a92c	1f 	. 
	nop			;a92d	00 	. 
	inc e			;a92e	1c 	. 
	ld e,00eh		;a92f	1e 0e 	. . 
	nop			;a931	00 	. 
	nop			;a932	00 	. 
	rst 28h			;a933	ef 	. 
	rst 38h			;a934	ff 	. 
	nop			;a935	00 	. 
	ld e,03eh		;a936	1e 3e 	. > 
	inc a			;a938	3c 	< 
	ld (bc),a			;a939	02 	. 
	nop			;a93a	00 	. 
	ld (bc),a			;a93b	02 	. 
	ret nz			;a93c	c0 	. 
	ld a,(bc)			;a93d	0a 	. 
	nop			;a93e	00 	. 
	add a,h			;a93f	84 	. 
	jr la972h		;a940	18 30 	. 0 
	jr nc,$+106		;a942	30 68 	0 h 
	inc b			;a944	04 	. 
	nop			;a945	00 	. 
	add a,d			;a946	82 	. 
	ccf			;a947	3f 	? 
	rra			;a948	1f 	. 
	ld (bc),a			;a949	02 	. 
	ld c,003h		;a94a	0e 03 	. . 
	nop			;a94c	00 	. 
	add a,e			;a94d	83 	. 
	jr nc,la9c8h		;a94e	30 78 	0 x 
	halt			;a950	76 	v 
	ld (bc),a			;a951	02 	. 
	ld a,a			;a952	7f 	 
la953h:
	rlca			;a953	07 	. 
	nop			;a954	00 	. 
	adc a,h			;a955	8c 	. 
	ret nz			;a956	c0 	. 
	inc a			;a957	3c 	< 
	ld a,(hl)			;a958	7e 	~ 
	ld a,a			;a959	7f 	 
	ld a,(hl)			;a95a	7e 	~ 
	jr c,$+4		;a95b	38 02 	8 . 
	ld (bc),a			;a95d	02 	. 
	ld bc,00407h		;a95e	01 07 04 	. . . 
	ld (bc),a			;a961	02 	. 
	inc b			;a962	04 	. 
	ld bc,00282h		;a963	01 82 02 	. . . 
	ccf			;a966	3f 	? 
	ld (bc),a			;a967	02 	. 
	rra			;a968	1f 	. 
	ld (bc),a			;a969	02 	. 
	rrca			;a96a	0f 	. 
	inc bc			;a96b	03 	. 
	nop			;a96c	00 	. 
	ld (bc),a			;a96d	02 	. 
	ret nz			;a96e	c0 	. 
	ld (bc),a			;a96f	02 	. 
	add a,b			;a970	80 	. 
	inc b			;a971	04 	. 
la972h:
	nop			;a972	00 	. 
	sbc a,b			;a973	98 	. 
	ld bc,01f00h		;a974	01 00 1f 	. . . 
	inc b			;a977	04 	. 
	dec bc			;a978	0b 	. 
	inc de			;a979	13 	. 
	ccf			;a97a	3f 	? 
	ld h,b			;a97b	60 	` 
	ex af,af'			;a97c	08 	. 
	ret p			;a97d	f0 	. 
	rst 38h			;a97e	ff 	. 
	jp po,059fah		;a97f	e2 fa 59 	. . Y 
	ret			;a982	c9 	. 
	ld a,a			;a983	7f 	 
	nop			;a984	00 	. 
	nop			;a985	00 	. 
	ret p			;a986	f0 	. 
	ld b,b			;a987	40 	@ 
	jr nz,la99ah		;a988	20 10 	  . 
	ex af,af'			;a98a	08 	. 
	rst 38h			;a98b	ff 	. 
	dec c			;a98c	0d 	. 
	nop			;a98d	00 	. 
	add a,d			;a98e	82 	. 
	ld a,a			;a98f	7f 	 
	ccf			;a990	3f 	? 
	ld b,000h		;a991	06 00 	. . 
	add a,d			;a993	82 	. 
	add a,b			;a994	80 	. 
la995h:
	ret nz			;a995	c0 	. 
	inc c			;a996	0c 	. 
	nop			;a997	00 	. 
	add a,d			;a998	82 	. 
	inc bc			;a999	03 	. 
la99ah:
	ld bc,00006h		;a99a	01 06 00 	. . . 
	add a,l			;a99d	85 	. 
	ret m			;a99e	f8 	. 
	cp 0ffh		;a99f	fe ff 	. . 
	ld a,a			;a9a1	7f 	 
	ld a,(hl)			;a9a2	7e 	~ 
	ex af,af'			;a9a3	08 	. 
	nop			;a9a4	00 	. 
	add a,h			;a9a5	84 	. 
	rlca			;a9a6	07 	. 
	ccf			;a9a7	3f 	? 
	nop			;a9a8	00 	. 
	jr nz,$+4		;a9a9	20 02 	  . 
	ld sp,00002h		;a9ab	31 02 00 	1 . . 
	add a,(hl)			;a9ae	86 	. 
	ld a,(hl)			;a9af	7e 	~ 
	cp 000h		;a9b0	fe 00 	. . 
	ret p			;a9b2	f0 	. 
	ret p			;a9b3	f0 	. 
	ret po			;a9b4	e0 	. 
	ld c,000h		;a9b5	0e 00 	. . 
	add a,d			;a9b7	82 	. 
	inc bc			;a9b8	03 	. 
	rrca			;a9b9	0f 	. 
	ld (bc),a			;a9ba	02 	. 
	ccf			;a9bb	3f 	? 
	inc b			;a9bc	04 	. 
	nop			;a9bd	00 	. 
	add a,d			;a9be	82 	. 
	ld a,03ch		;a9bf	3e 3c 	> < 
	ld (bc),a			;a9c1	02 	. 
	ld a,h			;a9c2	7c 	| 
	inc b			;a9c3	04 	. 
	nop			;a9c4	00 	. 
	add a,h			;a9c5	84 	. 
	rlca			;a9c6	07 	. 
	dec bc			;a9c7	0b 	. 
la9c8h:
	rrca			;a9c8	0f 	. 
	rra			;a9c9	1f 	. 
	inc b			;a9ca	04 	. 
	nop			;a9cb	00 	. 
	adc a,b			;a9cc	88 	. 
	add a,b			;a9cd	80 	. 
	ret nz			;a9ce	c0 	. 
	ret nz			;a9cf	c0 	. 
	ret po			;a9d0	e0 	. 
la9d1h:
	ld a,l			;a9d1	7d 	} 
	ld a,b			;a9d2	78 	x 
	jr nc,laa06h		;a9d3	30 31 	0 1 
	inc bc			;a9d5	03 	. 
	ld bc,00084h		;a9d6	01 84 00 	. . . 
	ret p			;a9d9	f0 	. 
	ld b,b			;a9da	40 	@ 
	add a,b			;a9db	80 	. 
	inc b			;a9dc	04 	. 
	nop			;a9dd	00 	. 
	add a,c			;a9de	81 	. 
	add a,c			;a9df	81 	. 
	inc bc			;a9e0	03 	. 
	ld a,a			;a9e1	7f 	 
	add a,c			;a9e2	81 	. 
	sbc a,a			;a9e3	9f 	. 
	inc bc			;a9e4	03 	. 
	add a,b			;a9e5	80 	. 
	add a,c			;a9e6	81 	. 
	nop			;a9e7	00 	. 
	inc bc			;a9e8	03 	. 
	add a,b			;a9e9	80 	. 
	rlca			;a9ea	07 	. 
	nop			;a9eb	00 	. 
	sub (hl)			;a9ec	96 	. 
	rrca			;a9ed	0f 	. 
	ld bc,00402h		;a9ee	01 02 04 	. . . 
	ex af,af'			;a9f1	08 	. 
	ld a,a			;a9f2	7f 	 
	ld b,d			;a9f3	42 	B 
	inc a			;a9f4	3c 	< 
	rst 38h			;a9f5	ff 	. 
	ld a,b			;a9f6	78 	x 
	cp 0d6h		;a9f7	fe d6 	. . 
	sub a			;a9f9	97 	. 
	call m,00000h		;a9fa	fc 00 00 	. . . 
	ret m			;a9fd	f8 	. 
	sub b			;a9fe	90 	. 
	adc a,b			;a9ff	88 	. 
sub_aa00h:
	ld b,h			;aa00	44 	D 
	jp m,00d07h		;aa01	fa 07 0d 	. . . 
	nop			;aa04	00 	. 
	add a,d			;aa05	82 	. 
laa06h:
	rrca			;aa06	0f 	. 
	rlca			;aa07	07 	. 
	ld b,000h		;aa08	06 00 	. . 
	add a,d			;aa0a	82 	. 
	ret p			;aa0b	f0 	. 
	ret m			;aa0c	f8 	. 
	dec b			;aa0d	05 	. 
	nop			;aa0e	00 	. 
	add a,d			;aa0f	82 	. 
	cpl			;aa10	2f 	/ 
	rst 8			;aa11	cf 	. 
	ld (bc),a			;aa12	02 	. 
	rst 18h			;aa13	df 	. 
	inc b			;aa14	04 	. 
	nop			;aa15	00 	. 
	add a,d			;aa16	82 	. 
	call m,002fdh		;aa17	fc fd 02 	. . . 
	ld sp,hl			;aa1a	f9 	. 
	inc b			;aa1b	04 	. 
	nop			;aa1c	00 	. 
	add a,a			;aa1d	87 	. 
	ret p			;aa1e	f0 	. 
	ret m			;aa1f	f8 	. 
	call m,0dffch		;aa20	fc fc df 	. . . 
	add a,h			;aa23	84 	. 
	ex af,af'			;aa24	08 	. 
	inc b			;aa25	04 	. 
	djnz la9d1h		;aa26	10 a9 	. . 
	ex af,af'			;aa28	08 	. 
	ld sp,hl			;aa29	f9 	. 
	jr nz,laa3ch		;aa2a	20 10 	  . 
	ex af,af'			;aa2c	08 	. 
	ld bc,00000h		;aa2d	01 00 00 	. . . 
laa30h:
	djnz laa30h		;aa30	10 fe 	. . 
	cp 07eh		;aa32	fe 7e 	. ~ 
	cp 0feh		;aa34	fe fe 	. . 
	call m,060f8h		;aa36	fc f8 60 	. . ` 
	nop			;aa39	00 	. 
	nop			;aa3a	00 	. 
	rrca			;aa3b	0f 	. 
laa3ch:
	ld (bc),a			;aa3c	02 	. 
	dec b			;aa3d	05 	. 
	add hl,bc			;aa3e	09 	. 
	ld de,0847fh		;aa3f	11 7f 84 	.  . 
	ld a,b			;aa42	78 	x 
	rst 38h			;aa43	ff 	. 
	ld (hl),c			;aa44	71 	q 
	defb 0fdh,0ach	;xor iyh		;aa45	fd ac 	. . 
	inc h			;aa47	24 	$ 
	rst 38h			;aa48	ff 	. 
	nop			;aa49	00 	. 
	nop			;aa4a	00 	. 
	ret m			;aa4b	f8 	. 
	jr nz,$+18		;aa4c	20 10 	  . 
	adc a,b			;aa4e	88 	. 
	add a,h			;aa4f	84 	. 
	rst 38h			;aa50	ff 	. 
	rlca			;aa51	07 	. 
	nop			;aa52	00 	. 
	add a,c			;aa53	81 	. 
	add a,b			;aa54	80 	. 
	ld h,000h		;aa55	26 00 	& . 
	add a,d			;aa57	82 	. 
	jr nc,laacah		;aa58	30 70 	0 p 
	ex af,af'			;aa5a	08 	. 
	nop			;aa5b	00 	. 
	add a,a			;aa5c	87 	. 
	ld e,0feh		;aa5d	1e fe 	. . 
	call m,0f8f8h		;aa5f	fc f8 f8 	. . . 
	ret p			;aa62	f0 	. 
	ret nz			;aa63	c0 	. 
	ld b,000h		;aa64	06 00 	. . 
	add a,e			;aa66	83 	. 
	ld bc,00f07h		;aa67	01 07 0f 	. . . 
	ld b,000h		;aa6a	06 00 	. . 
	add a,(hl)			;aa6c	86 	. 
	or b			;aa6d	b0 	. 
	ret p			;aa6e	f0 	. 
	ld a,a			;aa6f	7f 	 
	ld a,a			;aa70	7f 	 
	ld a,03ch		;aa71	3e 3c 	> < 
	ex af,af'			;aa73	08 	. 
	nop			;aa74	00 	. 
	add a,d			;aa75	82 	. 
	inc c			;aa76	0c 	. 
	add hl,sp			;aa77	39 	9 
	ld (bc),a			;aa78	02 	. 
	ld a,e			;aa79	7b 	{ 
	dec b			;aa7a	05 	. 
	nop			;aa7b	00 	. 
	inc bc			;aa7c	03 	. 
	rst 38h			;aa7d	ff 	. 
	inc b			;aa7e	04 	. 
	nop			;aa7f	00 	. 
	add a,d			;aa80	82 	. 
	ld e,0bfh		;aa81	1e bf 	. . 
	ld (bc),a			;aa83	02 	. 
	ccf			;aa84	3f 	? 
	dec b			;aa85	05 	. 
	nop			;aa86	00 	. 
	add a,(hl)			;aa87	86 	. 
	add a,b			;aa88	80 	. 
	ret nz			;aa89	c0 	. 
	ret nz			;aa8a	c0 	. 
	ld a,l			;aa8b	7d 	} 
	ld a,b			;aa8c	78 	x 
	ld (hl),b			;aa8d	70 	p 
	inc b			;aa8e	04 	. 
	ld (hl),c			;aa8f	71 	q 
	add a,h			;aa90	84 	. 
	nop			;aa91	00 	. 
	rst 38h			;aa92	ff 	. 
	ld b,d			;aa93	42 	B 
	add a,c			;aa94	81 	. 
	inc b			;aa95	04 	. 
	nop			;aa96	00 	. 
	add a,h			;aa97	84 	. 
	add a,c			;aa98	81 	. 
	sbc a,a			;aa99	9f 	. 
	rrca			;aa9a	0f 	. 
	inc bc			;aa9b	03 	. 
	inc b			;aa9c	04 	. 
	add a,c			;aa9d	81 	. 
	add a,c			;aa9e	81 	. 
	nop			;aa9f	00 	. 
	rlca			;aaa0	07 	. 
	ret p			;aaa1	f0 	. 
	inc bc			;aaa2	03 	. 
	nop			;aaa3	00 	. 
	sub (hl)			;aaa4	96 	. 
	inc bc			;aaa5	03 	. 
	nop			;aaa6	00 	. 
	ld bc,00402h		;aaa7	01 02 04 	. . . 
	rra			;aaaa	1f 	. 
	ld hl,0ff1eh		;aaab	21 1e ff 	! . . 
	sbc a,h			;aaae	9c 	. 
	ld a,a			;aaaf	7f 	 
	ld l,e			;aab0	6b 	k 
	ld c,c			;aab1	49 	I 
	rst 38h			;aab2	ff 	. 
	nop			;aab3	00 	. 
	nop			;aab4	00 	. 
	cp 048h		;aab5	fe 48 	. H 
	ld b,h			;aab7	44 	D 
	ld (0ff21h),hl		;aab8	22 21 ff 	" ! . 
	rlca			;aabb	07 	. 
	nop			;aabc	00 	. 
	add a,c			;aabd	81 	. 
	ret po			;aabe	e0 	. 
	ex af,af'			;aabf	08 	. 
	nop			;aac0	00 	. 
	nop			;aac1	00 	. 
	adc a,0aah		;aac2	ce aa 	. . 
	push de			;aac4	d5 	. 
	xor d			;aac5	aa 	. 
	call c,0e5aah		;aac6	dc aa e5 	. . . 
	xor d			;aac9	aa 	. 
laacah:
	xor 0aah		;aaca	ee aa 	. . 
	rst 30h			;aacc	f7 	. 
	xor d			;aacd	aa 	. 
	inc bc			;aace	03 	. 
	nop			;aacf	00 	. 
	ld h,h			;aad0	64 	d 
	jr nz,lab37h		;aad1	20 64 	  d 
	ld b,b			;aad3	40 	@ 
	ld h,h			;aad4	64 	d 
	inc bc			;aad5	03 	. 
	ld h,b			;aad6	60 	` 
	ld h,h			;aad7	64 	d 
	add a,b			;aad8	80 	. 
	ld h,h			;aad9	64 	d 
	and b			;aada	a0 	. 
	ld h,h			;aadb	64 	d 
	inc b			;aadc	04 	. 
	and b			;aadd	a0 	. 
	ld l,e			;aade	6b 	k 
	ret nz			;aadf	c0 	. 
	ld l,e			;aae0	6b 	k 
	ret po			;aae1	e0 	. 
	ld l,e			;aae2	6b 	k 
	nop			;aae3	00 	. 
	ld l,h			;aae4	6c 	l 
	inc b			;aae5	04 	. 
	jr nz,lab54h		;aae6	20 6c 	  l 
	ld b,b			;aae8	40 	@ 
	ld l,h			;aae9	6c 	l 
	ld h,b			;aaea	60 	` 
	ld l,h			;aaeb	6c 	l 
	add a,b			;aaec	80 	. 
	ld l,h			;aaed	6c 	l 
	inc b			;aaee	04 	. 
	and b			;aaef	a0 	. 
	ld l,h			;aaf0	6c 	l 
	ret nz			;aaf1	c0 	. 
	ld l,h			;aaf2	6c 	l 
	ret po			;aaf3	e0 	. 
	ld l,h			;aaf4	6c 	l 
	nop			;aaf5	00 	. 
	ld l,l			;aaf6	6d 	m 
	inc bc			;aaf7	03 	. 
	ret nz			;aaf8	c0 	. 
	ld l,b			;aaf9	68 	h 
	jr nz,lab69h		;aafa	20 6d 	  m 
	add a,b			;aafc	80 	. 
	ld h,(hl)			;aafd	66 	f 
	nop			;aafe	00 	. 
	inc b			;aaff	04 	. 
	inc b			;ab00	04 	. 
	nop			;ab01	00 	. 
	nop			;ab02	00 	. 
	nop			;ab03	00 	. 
	nop			;ab04	00 	. 
	nop			;ab05	00 	. 
	nop			;ab06	00 	. 
	nop			;ab07	00 	. 
	nop			;ab08	00 	. 
	nop			;ab09	00 	. 
	inc b			;ab0a	04 	. 
	ld a,(bc)			;ab0b	0a 	. 
	ld a,(bc)			;ab0c	0a 	. 
	nop			;ab0d	00 	. 
	nop			;ab0e	00 	. 
	nop			;ab0f	00 	. 
	nop			;ab10	00 	. 
	nop			;ab11	00 	. 
	nop			;ab12	00 	. 
	nop			;ab13	00 	. 
lab14h:
	nop			;ab14	00 	. 
	nop			;ab15	00 	. 
	inc b			;ab16	04 	. 
	dec bc			;ab17	0b 	. 
	dec bc			;ab18	0b 	. 
	nop			;ab19	00 	. 
	nop			;ab1a	00 	. 
	ret m			;ab1b	f8 	. 
	ret m			;ab1c	f8 	. 
	nop			;ab1d	00 	. 
	nop			;ab1e	00 	. 
	nop			;ab1f	00 	. 
lab20h:
	nop			;ab20	00 	. 
	nop			;ab21	00 	. 
	rlca			;ab22	07 	. 
	ex af,af'			;ab23	08 	. 
	add hl,bc			;ab24	09 	. 
	ld bc,006f8h		;ab25	01 f8 06 	. . . 
	ld b,000h		;ab28	06 00 	. . 
	nop			;ab2a	00 	. 
	nop			;ab2b	00 	. 
	nop			;ab2c	00 	. 
	nop			;ab2d	00 	. 
	rrca			;ab2e	0f 	. 
	djnz lab49h		;ab2f	10 18 	. . 
	ex af,af'			;ab31	08 	. 
	cp 001h		;ab32	fe 01 	. . 
	sub c			;ab34	91 	. 
	sub b			;ab35	90 	. 
	nop			;ab36	00 	. 
lab37h:
	jr nz,lab59h		;ab37	20 20 	    
	nop			;ab39	00 	. 
	rra			;ab3a	1f 	. 
	ld h,b			;ab3b	60 	` 
	ld l,d			;ab3c	6a 	j 
	ld a,(bc)			;ab3d	0a 	. 
	rst 38h			;ab3e	ff 	. 
	nop			;ab3f	00 	. 
	ld b,b			;ab40	40 	@ 
	ld b,b			;ab41	40 	@ 
	jr nz,lab14h		;ab42	20 d0 	  . 
	ret nc			;ab44	d0 	. 
	nop			;ab45	00 	. 
	ld e,a			;ab46	5f 	_ 
	and b			;ab47	a0 	. 
	xor b			;ab48	a8 	. 
lab49h:
	ex af,af'			;ab49	08 	. 
	rst 38h			;ab4a	ff 	. 
	nop			;ab4b	00 	. 
	ld h,h			;ab4c	64 	d 
	ld h,h			;ab4d	64 	d 
	jr nz,lab20h		;ab4e	20 d0 	  . 
	ret nc			;ab50	d0 	. 
	nop			;ab51	00 	. 
	ld a,a			;ab52	7f 	 
	add a,b			;ab53	80 	. 
lab54h:
	xor h			;ab54	ac 	. 
	inc l			;ab55	2c 	, 
	rst 38h			;ab56	ff 	. 
	nop			;ab57	00 	. 
	and b			;ab58	a0 	. 
lab59h:
	and b			;ab59	a0 	. 
	ret p			;ab5a	f0 	. 
	ex af,af'			;ab5b	08 	. 
	adc a,b			;ab5c	88 	. 
	add a,b			;ab5d	80 	. 
	ld a,a			;ab5e	7f 	 
	add a,b			;ab5f	80 	. 
	sub l			;ab60	95 	. 
	dec d			;ab61	15 	. 
	rst 38h			;ab62	ff 	. 
	nop			;ab63	00 	. 
	sub b			;ab64	90 	. 
	sub b			;ab65	90 	. 
	ret m			;ab66	f8 	. 
	inc b			;ab67	04 	. 
	ld d,h			;ab68	54 	T 
lab69h:
	ld d,b			;ab69	50 	P 
	ld a,a			;ab6a	7f 	 
	add a,b			;ab6b	80 	. 
	cp a			;ab6c	bf 	. 
	ccf			;ab6d	3f 	? 
	rst 38h			;ab6e	ff 	. 
	nop			;ab6f	00 	. 
	rst 38h			;ab70	ff 	. 
	rst 38h			;ab71	ff 	. 
	ret m			;ab72	f8 	. 
	inc b			;ab73	04 	. 
	call nc,07fd0h		;ab74	d4 d0 7f 	. .  
	add a,b			;ab77	80 	. 
	and b			;ab78	a0 	. 
	jr nz,$+1		;ab79	20 ff 	  . 
	nop			;ab7b	00 	. 
	nop			;ab7c	00 	. 
	nop			;ab7d	00 	. 
	ret m			;ab7e	f8 	. 
	inc b			;ab7f	04 	. 
	inc (hl)			;ab80	34 	4 
	jr nc,lac02h		;ab81	30 7f 	0  
	add a,b			;ab83	80 	. 
	cp l			;ab84	bd 	. 
	dec a			;ab85	3d 	= 
	rst 38h			;ab86	ff 	. 
	nop			;ab87	00 	. 
	ld e,01eh		;ab88	1e 1e 	. . 
	ret m			;ab8a	f8 	. 
	inc b			;ab8b	04 	. 
	or h			;ab8c	b4 	. 
	or b			;ab8d	b0 	. 
	ld a,a			;ab8e	7f 	 
	add a,b			;ab8f	80 	. 
	and d			;ab90	a2 	. 
	ld (000ffh),hl		;ab91	22 ff 00 	" . . 
	ld (0f822h),hl		;ab94	22 22 f8 	" " . 
	inc b			;ab97	04 	. 
	ld d,h			;ab98	54 	T 
	ld d,b			;ab99	50 	P 
	ccf			;ab9a	3f 	? 
	ld b,b			;ab9b	40 	@ 
	ld (hl),d			;ab9c	72 	r 
	ld (000ffh),a		;ab9d	32 ff 00 	2 . . 
	and l			;aba0	a5 	. 
	and l			;aba1	a5 	. 
	ret m			;aba2	f8 	. 
	inc b			;aba3	04 	. 
	sub h			;aba4	94 	. 
	sub b			;aba5	90 	. 
	ccf			;aba6	3f 	? 
	ld b,b			;aba7	40 	@ 
	ld c,a			;aba8	4f 	O 
	rrca			;aba9	0f 	. 
	rst 38h			;abaa	ff 	. 
	nop			;abab	00 	. 
	ld a,(hl)			;abac	7e 	~ 
	ld a,(hl)			;abad	7e 	~ 
	ret m			;abae	f8 	. 
	inc b			;abaf	04 	. 
	inc d			;abb0	14 	. 
	djnz labf2h		;abb1	10 3f 	. ? 
	ld b,b			;abb3	40 	@ 
	ld h,d			;abb4	62 	b 
	ld (000ffh),hl		;abb5	22 ff 00 	" . . 
	jr nz,$+34		;abb8	20 20 	    
	ret p			;abba	f0 	. 
	ex af,af'			;abbb	08 	. 
	xor b			;abbc	a8 	. 
	and b			;abbd	a0 	. 
	rrca			;abbe	0f 	. 
	djnz labd1h		;abbf	10 10 	. . 
	nop			;abc1	00 	. 
	rst 38h			;abc2	ff 	. 
	nop			;abc3	00 	. 
	nop			;abc4	00 	. 
	nop			;abc5	00 	. 
	ret m			;abc6	f8 	. 
	inc b			;abc7	04 	. 
	inc b			;abc8	04 	. 
	nop			;abc9	00 	. 
	nop			;abca	00 	. 
	nop			;abcb	00 	. 
	nop			;abcc	00 	. 
	nop			;abcd	00 	. 
	rrca			;abce	0f 	. 
	djnz labe8h		;abcf	10 17 	. . 
labd1h:
	rlca			;abd1	07 	. 
	rst 38h			;abd2	ff 	. 
	nop			;abd3	00 	. 
	rst 38h			;abd4	ff 	. 
	rst 38h			;abd5	ff 	. 
	ret m			;abd6	f8 	. 
	inc b			;abd7	04 	. 
	call po,000e0h		;abd8	e4 e0 00 	. . . 
	nop			;abdb	00 	. 
	nop			;abdc	00 	. 
	nop			;abdd	00 	. 
	rlca			;abde	07 	. 
	ex af,af'			;abdf	08 	. 
	ex af,af'			;abe0	08 	. 
	nop			;abe1	00 	. 
	rst 38h			;abe2	ff 	. 
	nop			;abe3	00 	. 
	ld bc,0f001h		;abe4	01 01 f0 	. . . 
	ex af,af'			;abe7	08 	. 
labe8h:
	ex af,af'			;abe8	08 	. 
	nop			;abe9	00 	. 
	nop			;abea	00 	. 
	nop			;abeb	00 	. 
	nop			;abec	00 	. 
	nop			;abed	00 	. 
	inc bc			;abee	03 	. 
	inc c			;abef	0c 	. 
	ld c,002h		;abf0	0e 02 	. . 
labf2h:
	rst 38h			;abf2	ff 	. 
	nop			;abf3	00 	. 
	ld b,b			;abf4	40 	@ 
	ld b,b			;abf5	40 	@ 
	ret po			;abf6	e0 	. 
	ld e,07eh		;abf7	1e 7e 	. ~ 
	ld h,b			;abf9	60 	` 
	nop			;abfa	00 	. 
	nop			;abfb	00 	. 
	nop			;abfc	00 	. 
	nop			;abfd	00 	. 
	rrca			;abfe	0f 	. 
	jr nc,lac36h		;abff	30 35 	0 5 
	dec b			;ac01	05 	. 
lac02h:
	rst 38h			;ac02	ff 	. 
	nop			;ac03	00 	. 
	rst 38h			;ac04	ff 	. 
	rst 38h			;ac05	ff 	. 
	cp 001h		;ac06	fe 01 	. . 
	sub c			;ac08	91 	. 
	sub b			;ac09	90 	. 
	nop			;ac0a	00 	. 
	add a,b			;ac0b	80 	. 
	add a,b			;ac0c	80 	. 
	nop			;ac0d	00 	. 
	ccf			;ac0e	3f 	? 
	ld b,b			;ac0f	40 	@ 
	ld c,c			;ac10	49 	I 
	add hl,bc			;ac11	09 	. 
	rst 38h			;ac12	ff 	. 
	nop			;ac13	00 	. 
	nop			;ac14	00 	. 
	nop			;ac15	00 	. 
	rst 38h			;ac16	ff 	. 
	nop			;ac17	00 	. 
	and b			;ac18	a0 	. 
	and b			;ac19	a0 	. 
	add a,b			;ac1a	80 	. 
	ld b,b			;ac1b	40 	@ 
	ld b,b			;ac1c	40 	@ 
	nop			;ac1d	00 	. 
	ld a,a			;ac1e	7f 	 
	add a,b			;ac1f	80 	. 
	adc a,d			;ac20	8a 	. 
	ld a,(bc)			;ac21	0a 	. 
	rst 38h			;ac22	ff 	. 
	nop			;ac23	00 	. 
	add hl,bc			;ac24	09 	. 
	add hl,bc			;ac25	09 	. 
	rst 38h			;ac26	ff 	. 
	nop			;ac27	00 	. 
	jr nz,lac4ah		;ac28	20 20 	    
	ret nz			;ac2a	c0 	. 
	jr nz,lac4dh		;ac2b	20 20 	    
	nop			;ac2d	00 	. 
	ld a,a			;ac2e	7f 	 
	add a,b			;ac2f	80 	. 
	xor d			;ac30	aa 	. 
	ld hl,(000ffh)		;ac31	2a ff 00 	* . . 
	ld b,c			;ac34	41 	A 
	ld b,c			;ac35	41 	A 
lac36h:
	rst 38h			;ac36	ff 	. 
	nop			;ac37	00 	. 
	inc h			;ac38	24 	$ 
	inc h			;ac39	24 	$ 
	ret nz			;ac3a	c0 	. 
	jr nz,lac5dh		;ac3b	20 20 	    
	nop			;ac3d	00 	. 
	ld a,a			;ac3e	7f 	 
	add a,b			;ac3f	80 	. 
	add a,l			;ac40	85 	. 
	dec b			;ac41	05 	. 
	rst 38h			;ac42	ff 	. 
	nop			;ac43	00 	. 
	rst 38h			;ac44	ff 	. 
	rst 38h			;ac45	ff 	. 
	rst 38h			;ac46	ff 	. 
	nop			;ac47	00 	. 
	sub b			;ac48	90 	. 
	sub b			;ac49	90 	. 
lac4ah:
	ret p			;ac4a	f0 	. 
	ex af,af'			;ac4b	08 	. 
	ld c,b			;ac4c	48 	H 
lac4dh:
	ld b,b			;ac4d	40 	@ 
	ld a,a			;ac4e	7f 	 
	add a,b			;ac4f	80 	. 
	adc a,b			;ac50	88 	. 
	ex af,af'			;ac51	08 	. 
	rst 38h			;ac52	ff 	. 
	nop			;ac53	00 	. 
	ld b,d			;ac54	42 	B 
	ld b,d			;ac55	42 	B 
	rst 38h			;ac56	ff 	. 
	nop			;ac57	00 	. 
	inc c			;ac58	0c 	. 
	inc c			;ac59	0c 	. 
	ret p			;ac5a	f0 	. 
	ex af,af'			;ac5b	08 	. 
	ex af,af'			;ac5c	08 	. 
lac5dh:
	nop			;ac5d	00 	. 
	ld a,a			;ac5e	7f 	 
	add a,b			;ac5f	80 	. 
	ret nc			;ac60	d0 	. 
	ld d,b			;ac61	50 	P 
	rst 38h			;ac62	ff 	. 
	nop			;ac63	00 	. 
	cp l			;ac64	bd 	. 
	cp l			;ac65	bd 	. 
	rst 38h			;ac66	ff 	. 
	nop			;ac67	00 	. 
	ld b,d			;ac68	42 	B 
	ld b,d			;ac69	42 	B 
	ret p			;ac6a	f0 	. 
	ex af,af'			;ac6b	08 	. 
	ex af,af'			;ac6c	08 	. 
	nop			;ac6d	00 	. 
	ld a,a			;ac6e	7f 	 
	add a,b			;ac6f	80 	. 
	sub l			;ac70	95 	. 
	dec d			;ac71	15 	. 
	rst 38h			;ac72	ff 	. 
	nop			;ac73	00 	. 
	ex af,af'			;ac74	08 	. 
	ex af,af'			;ac75	08 	. 
	rst 38h			;ac76	ff 	. 
	nop			;ac77	00 	. 
	sub c			;ac78	91 	. 
	sub c			;ac79	91 	. 
	ret p			;ac7a	f0 	. 
	ex af,af'			;ac7b	08 	. 
	jr z,lac9eh		;ac7c	28 20 	(   
	ld a,a			;ac7e	7f 	 
	add a,b			;ac7f	80 	. 
	sub c			;ac80	91 	. 
	ld de,000ffh		;ac81	11 ff 00 	. . . 
	ex af,af'			;ac84	08 	. 
	ex af,af'			;ac85	08 	. 
	rst 38h			;ac86	ff 	. 
	nop			;ac87	00 	. 
	add a,c			;ac88	81 	. 
	add a,c			;ac89	81 	. 
	ret p			;ac8a	f0 	. 
	ex af,af'			;ac8b	08 	. 
	ex af,af'			;ac8c	08 	. 
	nop			;ac8d	00 	. 
	ld a,a			;ac8e	7f 	 
	add a,b			;ac8f	80 	. 
	sub c			;ac90	91 	. 
	ld de,000ffh		;ac91	11 ff 00 	. . . 
	ld c,d			;ac94	4a 	J 
	ld c,d			;ac95	4a 	J 
	rst 38h			;ac96	ff 	. 
	nop			;ac97	00 	. 
	add a,l			;ac98	85 	. 
	add a,l			;ac99	85 	. 
	ret p			;ac9a	f0 	. 
	ex af,af'			;ac9b	08 	. 
	ex af,af'			;ac9c	08 	. 
	nop			;ac9d	00 	. 
lac9eh:
	ld a,a			;ac9e	7f 	 
	add a,b			;ac9f	80 	. 
	pop af			;aca0	f1 	. 
	ld (hl),c			;aca1	71 	q 
	rst 38h			;aca2	ff 	. 
	nop			;aca3	00 	. 
	ld c,b			;aca4	48 	H 
	ld c,b			;aca5	48 	H 
	rst 38h			;aca6	ff 	. 
	nop			;aca7	00 	. 
	sub c			;aca8	91 	. 
	sub c			;aca9	91 	. 
	ret p			;acaa	f0 	. 
	ex af,af'			;acab	08 	. 
	ret m			;acac	f8 	. 
	ret p			;acad	f0 	. 
	ld a,a			;acae	7f 	 
	add a,b			;acaf	80 	. 
	sub b			;acb0	90 	. 
	djnz $+1		;acb1	10 ff 	. . 
	nop			;acb3	00 	. 
	or c			;acb4	b1 	. 
	or c			;acb5	b1 	. 
	rst 38h			;acb6	ff 	. 
	nop			;acb7	00 	. 
	ld bc,0f001h		;acb8	01 01 f0 	. . . 
	ex af,af'			;acbb	08 	. 
	ex af,af'			;acbc	08 	. 
	nop			;acbd	00 	. 
	ld a,a			;acbe	7f 	 
	add a,b			;acbf	80 	. 
	adc a,c			;acc0	89 	. 
	add hl,bc			;acc1	09 	. 
	rst 38h			;acc2	ff 	. 
	nop			;acc3	00 	. 
	ld hl,0ff21h		;acc4	21 21 ff 	! ! . 
	nop			;acc7	00 	. 
	ld hl,0fc21h		;acc8	21 21 fc 	! ! . 
	ld (bc),a			;accb	02 	. 
	ld (bc),a			;accc	02 	. 
	nop			;accd	00 	. 
	ld a,a			;acce	7f 	 
	add a,b			;accf	80 	. 
	adc a,b			;acd0	88 	. 
	ex af,af'			;acd1	08 	. 
	rst 38h			;acd2	ff 	. 
	nop			;acd3	00 	. 
	ld e,01eh		;acd4	1e 1e 	. . 
	rst 38h			;acd6	ff 	. 
	nop			;acd7	00 	. 
	ld bc,0fc01h		;acd8	01 01 fc 	. . . 
	ld (bc),a			;acdb	02 	. 
	ld (03f20h),hl		;acdc	22 20 3f 	"   ? 
	ld b,b			;acdf	40 	@ 
	ld c,a			;ace0	4f 	O 
	rrca			;ace1	0f 	. 
	rst 38h			;ace2	ff 	. 
	nop			;ace3	00 	. 
	rst 38h			;ace4	ff 	. 
	rst 38h			;ace5	ff 	. 
	rst 38h			;ace6	ff 	. 
	nop			;ace7	00 	. 
	ld a,a			;ace8	7f 	 
	ld a,a			;ace9	7f 	 
	rst 38h			;acea	ff 	. 
	nop			;aceb	00 	. 
	ld b,h			;acec	44 	D 
	ld b,h			;aced	44 	D 
	rrca			;acee	0f 	. 
	jr nc,lad29h		;acef	30 38 	0 8 
	ex af,af'			;acf1	08 	. 
	rst 38h			;acf2	ff 	. 
	nop			;acf3	00 	. 
	sbc a,h			;acf4	9c 	. 
	sbc a,h			;acf5	9c 	. 
	rst 38h			;acf6	ff 	. 
	nop			;acf7	00 	. 
	ld l,e			;acf8	6b 	k 
	ld l,e			;acf9	6b 	k 
	rst 38h			;acfa	ff 	. 
	nop			;acfb	00 	. 
	ld (00722h),hl		;acfc	22 22 07 	" " . 
	ex af,af'			;acff	08 	. 
	add hl,bc			;ad00	09 	. 
	ld bc,000ffh		;ad01	01 ff 00 	. . . 
	ld e,c			;ad04	59 	Y 
	ld e,c			;ad05	59 	Y 
	rst 38h			;ad06	ff 	. 
	nop			;ad07	00 	. 
	ld hl,08021h		;ad08	21 21 80 	! ! . 
	ld b,b			;ad0b	40 	@ 
	ld b,b			;ad0c	40 	@ 
	nop			;ad0d	00 	. 
	rlca			;ad0e	07 	. 
	ex af,af'			;ad0f	08 	. 
	ld a,(bc)			;ad10	0a 	. 
	ld (bc),a			;ad11	02 	. 
	rst 38h			;ad12	ff 	. 
	nop			;ad13	00 	. 
	rst 38h			;ad14	ff 	. 
	rst 38h			;ad15	ff 	. 
	rst 38h			;ad16	ff 	. 
	nop			;ad17	00 	. 
	rst 38h			;ad18	ff 	. 
	rst 38h			;ad19	ff 	. 
	add a,b			;ad1a	80 	. 
	ld b,b			;ad1b	40 	@ 
	ld b,b			;ad1c	40 	@ 
	nop			;ad1d	00 	. 
	rrca			;ad1e	0f 	. 
	djnz lad35h		;ad1f	10 14 	. . 
	inc b			;ad21	04 	. 
	rst 38h			;ad22	ff 	. 
	nop			;ad23	00 	. 
	cp 0feh		;ad24	fe fe 	. . 
	ret m			;ad26	f8 	. 
	inc b			;ad27	04 	. 
	add a,h			;ad28	84 	. 
lad29h:
	add a,b			;ad29	80 	. 
	ret nz			;ad2a	c0 	. 
	jr nz,lad4dh		;ad2b	20 20 	    
lad2dh:
	nop			;ad2d	00 	. 
	rra			;ad2e	1f 	. 
	jr nz,lad70h		;ad2f	20 3f 	  ? 
	rra			;ad31	1f 	. 
	rst 38h			;ad32	ff 	. 
	nop			;ad33	00 	. 
	ld c,b			;ad34	48 	H 
lad35h:
	ld c,b			;ad35	48 	H 
	ret nz			;ad36	c0 	. 
	jr c,$+122		;ad37	38 78 	8 x 
	ld b,b			;ad39	40 	@ 
	ret po			;ad3a	e0 	. 
	djnz lad2dh		;ad3b	10 f0 	. . 
	ret po			;ad3d	e0 	. 
	ccf			;ad3e	3f 	? 
	ret nz			;ad3f	c0 	. 
	ret nz			;ad40	c0 	. 
	nop			;ad41	00 	. 
	rst 38h			;ad42	ff 	. 
	nop			;ad43	00 	. 
	djnz lad56h		;ad44	10 10 	. . 
	call m,01303h		;ad46	fc 03 13 	. . . 
	djnz lad8ah		;ad49	10 3f 	. ? 
	ld b,b			;ad4b	40 	@ 
	ld d,d			;ad4c	52 	R 
lad4dh:
	ld (de),a			;ad4d	12 	. 
	rst 38h			;ad4e	ff 	. 
	nop			;ad4f	00 	. 
	ld (de),a			;ad50	12 	. 
	ld (de),a			;ad51	12 	. 
	call m,00202h		;ad52	fc 02 02 	. . . 
	nop			;ad55	00 	. 
lad56h:
	rra			;ad56	1f 	. 
	jr nz,lad79h		;ad57	20 20 	    
	nop			;ad59	00 	. 
	rst 38h			;ad5a	ff 	. 
	nop			;ad5b	00 	. 
	ld d,b			;ad5c	50 	P 
	ld d,b			;ad5d	50 	P 
	ret m			;ad5e	f8 	. 
	inc b			;ad5f	04 	. 
	inc b			;ad60	04 	. 
	nop			;ad61	00 	. 
	rra			;ad62	1f 	. 
	jr nz,lada4h		;ad63	20 3f 	  ? 
	rra			;ad65	1f 	. 
	rst 38h			;ad66	ff 	. 
	nop			;ad67	00 	. 
	rst 38h			;ad68	ff 	. 
	rst 38h			;ad69	ff 	. 
	ret m			;ad6a	f8 	. 
	inc b			;ad6b	04 	. 
	call m,03ff8h		;ad6c	fc f8 3f 	. . ? 
	ld b,b			;ad6f	40 	@ 
lad70h:
	ld b,b			;ad70	40 	@ 
	nop			;ad71	00 	. 
	rst 38h			;ad72	ff 	. 
	nop			;ad73	00 	. 
	inc d			;ad74	14 	. 
	inc d			;ad75	14 	. 
	call m,00202h		;ad76	fc 02 02 	. . . 
lad79h:
	nop			;ad79	00 	. 
	ld a,a			;ad7a	7f 	 
	add a,b			;ad7b	80 	. 
	add a,h			;ad7c	84 	. 
	inc b			;ad7d	04 	. 
	rst 38h			;ad7e	ff 	. 
	nop			;ad7f	00 	. 
	djnz $+18		;ad80	10 10 	. . 
	cp 001h		;ad82	fe 01 	. . 
	ld bc,07f00h		;ad84	01 00 7f 	. .  
	add a,b			;ad87	80 	. 
	add a,b			;ad88	80 	. 
	nop			;ad89	00 	. 
lad8ah:
	rst 38h			;ad8a	ff 	. 
	nop			;ad8b	00 	. 
	sub b			;ad8c	90 	. 
	sub b			;ad8d	90 	. 
	cp 001h		;ad8e	fe 01 	. . 
	ld de,00010h		;ad90	11 10 00 	. . . 
	rst 38h			;ad93	ff 	. 
	rst 38h			;ad94	ff 	. 
	nop			;ad95	00 	. 
	nop			;ad96	00 	. 
	rst 38h			;ad97	ff 	. 
	rst 38h			;ad98	ff 	. 
	nop			;ad99	00 	. 
	nop			;ad9a	00 	. 
	rst 38h			;ad9b	ff 	. 
	rst 38h			;ad9c	ff 	. 
	nop			;ad9d	00 	. 
	jr nz,lada0h		;ad9e	20 00 	  . 
lada0h:
	jr nz,lada2h		;ada0	20 00 	  . 
lada2h:
	ld b,d			;ada2	42 	B 
	nop			;ada3	00 	. 
lada4h:
	ld b,e			;ada4	43 	C 
	nop			;ada5	00 	. 
	ld b,h			;ada6	44 	D 
	nop			;ada7	00 	. 
	jr nz,ladaah		;ada8	20 00 	  . 
ladaah:
	ld b,l			;adaa	45 	E 
	nop			;adab	00 	. 
	ld b,(hl)			;adac	46 	F 
	nop			;adad	00 	. 
	ld b,a			;adae	47 	G 
	nop			;adaf	00 	. 
	jr nz,ladb2h		;adb0	20 00 	  . 
ladb2h:
	ld c,b			;adb2	48 	H 
	nop			;adb3	00 	. 
	ld bc,02002h		;adb4	01 02 20 	. .   
	nop			;adb7	00 	. 
	jr nz,ladbah		;adb8	20 00 	  . 
ladbah:
	jr nz,ladbch		;adba	20 00 	  . 
ladbch:
	ld c,c			;adbc	49 	I 
	nop			;adbd	00 	. 
	ld c,d			;adbe	4a 	J 
	nop			;adbf	00 	. 
	ld c,e			;adc0	4b 	K 
	nop			;adc1	00 	. 
	ld c,h			;adc2	4c 	L 
	nop			;adc3	00 	. 
	ld c,l			;adc4	4d 	M 
	nop			;adc5	00 	. 
	ld c,(hl)			;adc6	4e 	N 
	nop			;adc7	00 	. 
	ld c,a			;adc8	4f 	O 
	nop			;adc9	00 	. 
	ld d,b			;adca	50 	P 
	nop			;adcb	00 	. 
	ld d,c			;adcc	51 	Q 
	nop			;adcd	00 	. 
	ld d,d			;adce	52 	R 
	nop			;adcf	00 	. 
	ld d,e			;add0	53 	S 
	nop			;add1	00 	. 
	jr nz,ladd4h		;add2	20 00 	  . 
ladd4h:
	jr nz,ladd6h		;add4	20 00 	  . 
ladd6h:
	jr nz,ladd8h		;add6	20 00 	  . 
ladd8h:
	ld d,h			;add8	54 	T 
	nop			;add9	00 	. 
	ld d,l			;adda	55 	U 
	nop			;addb	00 	. 
	ld d,(hl)			;addc	56 	V 
	nop			;addd	00 	. 
	ld d,a			;adde	57 	W 
	nop			;addf	00 	. 
	ld e,b			;ade0	58 	X 
	nop			;ade1	00 	. 
	ld e,c			;ade2	59 	Y 
	nop			;ade3	00 	. 
	ld e,d			;ade4	5a 	Z 
	nop			;ade5	00 	. 
	ld e,e			;ade6	5b 	[ 
	nop			;ade7	00 	. 
	ld e,h			;ade8	5c 	\ 
	nop			;ade9	00 	. 
	ld e,l			;adea	5d 	] 
	nop			;adeb	00 	. 
	ld e,(hl)			;adec	5e 	^ 
	nop			;aded	00 	. 
	jr nz,ladf0h		;adee	20 00 	  . 
ladf0h:
	jr nz,ladf2h		;adf0	20 00 	  . 
ladf2h:
	jr nz,ladf4h		;adf2	20 00 	  . 
ladf4h:
	ld e,a			;adf4	5f 	_ 
	nop			;adf5	00 	. 
	ld h,b			;adf6	60 	` 
	nop			;adf7	00 	. 
	ld h,c			;adf8	61 	a 
	nop			;adf9	00 	. 
	ld h,d			;adfa	62 	b 
	nop			;adfb	00 	. 
	ld h,e			;adfc	63 	c 
	nop			;adfd	00 	. 
	ld h,h			;adfe	64 	d 
	nop			;adff	00 	. 
	ld h,l			;ae00	65 	e 
	nop			;ae01	00 	. 
	ld h,(hl)			;ae02	66 	f 
	nop			;ae03	00 	. 
	ld h,a			;ae04	67 	g 
	nop			;ae05	00 	. 
	ld l,b			;ae06	68 	h 
	nop			;ae07	00 	. 
	ld bc,02002h		;ae08	01 02 20 	. .   
	nop			;ae0b	00 	. 
	jr nz,lae0eh		;ae0c	20 00 	  . 
lae0eh:
	ld c,c			;ae0e	49 	I 
	nop			;ae0f	00 	. 
	ld l,c			;ae10	69 	i 
	nop			;ae11	00 	. 
	ld l,d			;ae12	6a 	j 
	nop			;ae13	00 	. 
	ld l,e			;ae14	6b 	k 
	nop			;ae15	00 	. 
	ld l,h			;ae16	6c 	l 
	nop			;ae17	00 	. 
	ld l,l			;ae18	6d 	m 
	nop			;ae19	00 	. 
	ld l,(hl)			;ae1a	6e 	n 
	nop			;ae1b	00 	. 
	ld l,a			;ae1c	6f 	o 
	nop			;ae1d	00 	. 
	ld (hl),b			;ae1e	70 	p 
	nop			;ae1f	00 	. 
	ld (hl),c			;ae20	71 	q 
	nop			;ae21	00 	. 
	ld (hl),d			;ae22	72 	r 
	nop			;ae23	00 	. 
	ld (hl),e			;ae24	73 	s 
	nop			;ae25	00 	. 
	ld (hl),h			;ae26	74 	t 
	nop			;ae27	00 	. 
	ld (hl),l			;ae28	75 	u 
	nop			;ae29	00 	. 
	halt			;ae2a	76 	v 
	nop			;ae2b	00 	. 
	ld (hl),a			;ae2c	77 	w 
	nop			;ae2d	00 	. 
	ld a,b			;ae2e	78 	x 
	nop			;ae2f	00 	. 
	ld a,c			;ae30	79 	y 
	nop			;ae31	00 	. 
	ld a,d			;ae32	7a 	z 
	nop			;ae33	00 	. 
	ld a,e			;ae34	7b 	{ 
	nop			;ae35	00 	. 
	ld a,h			;ae36	7c 	| 
	nop			;ae37	00 	. 
	ld a,l			;ae38	7d 	} 
	nop			;ae39	00 	. 
	ld a,(hl)			;ae3a	7e 	~ 
	nop			;ae3b	00 	. 
	ld a,a			;ae3c	7f 	 
	nop			;ae3d	00 	. 
	add a,b			;ae3e	80 	. 
	nop			;ae3f	00 	. 
	add a,b			;ae40	80 	. 
	ld (bc),a			;ae41	02 	. 
	add a,c			;ae42	81 	. 
	nop			;ae43	00 	. 
	add a,d			;ae44	82 	. 
	nop			;ae45	00 	. 
	ld a,h			;ae46	7c 	| 
	nop			;ae47	00 	. 
	ld a,l			;ae48	7d 	} 
	nop			;ae49	00 	. 
	ld a,(hl)			;ae4a	7e 	~ 
	nop			;ae4b	00 	. 
	ld a,a			;ae4c	7f 	 
	nop			;ae4d	00 	. 
	add a,b			;ae4e	80 	. 
	nop			;ae4f	00 	. 
	add a,b			;ae50	80 	. 
	ld (bc),a			;ae51	02 	. 
	add a,c			;ae52	81 	. 
	nop			;ae53	00 	. 
	add a,d			;ae54	82 	. 
	nop			;ae55	00 	. 
	add a,e			;ae56	83 	. 
	nop			;ae57	00 	. 
	add a,h			;ae58	84 	. 
	nop			;ae59	00 	. 
	add a,l			;ae5a	85 	. 
	nop			;ae5b	00 	. 
	add a,(hl)			;ae5c	86 	. 
	nop			;ae5d	00 	. 
	jr nz,lae60h		;ae5e	20 00 	  . 
lae60h:
	add a,a			;ae60	87 	. 
	nop			;ae61	00 	. 
	adc a,b			;ae62	88 	. 
	nop			;ae63	00 	. 
	adc a,c			;ae64	89 	. 
	nop			;ae65	00 	. 
	adc a,d			;ae66	8a 	. 
	nop			;ae67	00 	. 
	jr nz,lae6ah		;ae68	20 00 	  . 
lae6ah:
	jr nz,lae6ch		;ae6a	20 00 	  . 
lae6ch:
	adc a,e			;ae6c	8b 	. 
	nop			;ae6d	00 	. 
	adc a,h			;ae6e	8c 	. 
	nop			;ae6f	00 	. 
	adc a,l			;ae70	8d 	. 
	nop			;ae71	00 	. 
	adc a,(hl)			;ae72	8e 	. 
	nop			;ae73	00 	. 
	adc a,a			;ae74	8f 	. 
	nop			;ae75	00 	. 
	sub b			;ae76	90 	. 
	nop			;ae77	00 	. 
	sub c			;ae78	91 	. 
	nop			;ae79	00 	. 
	sub d			;ae7a	92 	. 
	nop			;ae7b	00 	. 
	sub e			;ae7c	93 	. 
	nop			;ae7d	00 	. 
	sub h			;ae7e	94 	. 
	nop			;ae7f	00 	. 
	sub l			;ae80	95 	. 
	nop			;ae81	00 	. 
	sub (hl)			;ae82	96 	. 
	nop			;ae83	00 	. 
	sub a			;ae84	97 	. 
	nop			;ae85	00 	. 
	sbc a,b			;ae86	98 	. 
	nop			;ae87	00 	. 
	sbc a,c			;ae88	99 	. 
	nop			;ae89	00 	. 
	sbc a,d			;ae8a	9a 	. 
	nop			;ae8b	00 	. 
	sbc a,e			;ae8c	9b 	. 
	nop			;ae8d	00 	. 
	sbc a,h			;ae8e	9c 	. 
	nop			;ae8f	00 	. 
	sbc a,l			;ae90	9d 	. 
	nop			;ae91	00 	. 
	sub c			;ae92	91 	. 
	inc b			;ae93	04 	. 
	ld l,e			;ae94	6b 	k 
	inc b			;ae95	04 	. 
	sbc a,(hl)			;ae96	9e 	. 
	nop			;ae97	00 	. 
	sbc a,a			;ae98	9f 	. 
	nop			;ae99	00 	. 
	and b			;ae9a	a0 	. 
	nop			;ae9b	00 	. 
	and c			;ae9c	a1 	. 
	nop			;ae9d	00 	. 
	ld l,l			;ae9e	6d 	m 
	inc b			;ae9f	04 	. 
	and d			;aea0	a2 	. 
	nop			;aea1	00 	. 
	and e			;aea2	a3 	. 
	nop			;aea3	00 	. 
	and h			;aea4	a4 	. 
	nop			;aea5	00 	. 
	and l			;aea6	a5 	. 
	nop			;aea7	00 	. 
	and (hl)			;aea8	a6 	. 
	nop			;aea9	00 	. 
	jr nz,laeach		;aeaa	20 00 	  . 
laeach:
	jr nz,laeaeh		;aeac	20 00 	  . 
laeaeh:
	and a			;aeae	a7 	. 
	nop			;aeaf	00 	. 
	xor b			;aeb0	a8 	. 
	nop			;aeb1	00 	. 
	xor c			;aeb2	a9 	. 
	nop			;aeb3	00 	. 
	xor d			;aeb4	aa 	. 
	nop			;aeb5	00 	. 
	xor e			;aeb6	ab 	. 
	nop			;aeb7	00 	. 
	xor h			;aeb8	ac 	. 
	nop			;aeb9	00 	. 
	xor l			;aeba	ad 	. 
	nop			;aebb	00 	. 
	xor (hl)			;aebc	ae 	. 
	nop			;aebd	00 	. 
	xor a			;aebe	af 	. 
	nop			;aebf	00 	. 
	or b			;aec0	b0 	. 
	nop			;aec1	00 	. 
	or c			;aec2	b1 	. 
	nop			;aec3	00 	. 
	jr nz,laec6h		;aec4	20 00 	  . 
laec6h:
	jr nz,laec8h		;aec6	20 00 	  . 
laec8h:
	or d			;aec8	b2 	. 
	nop			;aec9	00 	. 
	or e			;aeca	b3 	. 
	nop			;aecb	00 	. 
	or h			;aecc	b4 	. 
	nop			;aecd	00 	. 
	or l			;aece	b5 	. 
	nop			;aecf	00 	. 
	or (hl)			;aed0	b6 	. 
	nop			;aed1	00 	. 
	or a			;aed2	b7 	. 
	nop			;aed3	00 	. 
	cp b			;aed4	b8 	. 
	nop			;aed5	00 	. 
	cp c			;aed6	b9 	. 
	nop			;aed7	00 	. 
	cp d			;aed8	ba 	. 
	nop			;aed9	00 	. 
	cp e			;aeda	bb 	. 
	nop			;aedb	00 	. 
	cp h			;aedc	bc 	. 
	nop			;aedd	00 	. 
	jr nz,laee0h		;aede	20 00 	  . 
laee0h:
	jr nz,laee2h		;aee0	20 00 	  . 
laee2h:
	cp l			;aee2	bd 	. 
	nop			;aee3	00 	. 
	cp (hl)			;aee4	be 	. 
	nop			;aee5	00 	. 
	cp a			;aee6	bf 	. 
	nop			;aee7	00 	. 
	ret nz			;aee8	c0 	. 
	nop			;aee9	00 	. 
	pop bc			;aeea	c1 	. 
	nop			;aeeb	00 	. 
	jp nz,0c300h		;aeec	c2 00 c3 	. . . 
	nop			;aeef	00 	. 
	call nz,0c500h		;aef0	c4 00 c5 	. . . 
	nop			;aef3	00 	. 
	add a,000h		;aef4	c6 00 	. . 
	jr nz,laef8h		;aef6	20 00 	  . 
laef8h:
	jr nz,laefah		;aef8	20 00 	  . 
laefah:
	jr nz,laefch		;aefa	20 00 	  . 
laefch:
	ld bc,00200h		;aefc	01 00 02 	. . . 
	nop			;aeff	00 	. 
	ld (bc),a			;af00	02 	. 
	nop			;af01	00 	. 
	ld (bc),a			;af02	02 	. 
	nop			;af03	00 	. 
	ld (bc),a			;af04	02 	. 
	nop			;af05	00 	. 
	ld (bc),a			;af06	02 	. 
	nop			;af07	00 	. 
	ld (bc),a			;af08	02 	. 
	nop			;af09	00 	. 
	ld (bc),a			;af0a	02 	. 
	nop			;af0b	00 	. 
	ld (bc),a			;af0c	02 	. 
	nop			;af0d	00 	. 
	ld (bc),a			;af0e	02 	. 
	nop			;af0f	00 	. 
	ld (bc),a			;af10	02 	. 
	nop			;af11	00 	. 
	ld bc,00302h		;af12	01 02 03 	. . . 
	nop			;af15	00 	. 
	ld d,000h		;af16	16 00 	. . 
	ld d,002h		;af18	16 02 	. . 
	ld d,002h		;af1a	16 02 	. . 
	ld d,002h		;af1c	16 02 	. . 
	ld d,002h		;af1e	16 02 	. . 
	ld d,000h		;af20	16 00 	. . 
	ld d,002h		;af22	16 02 	. . 
	ld d,002h		;af24	16 02 	. . 
	ld d,000h		;af26	16 00 	. . 
	ld d,002h		;af28	16 02 	. . 
	inc bc			;af2a	03 	. 
	ld (bc),a			;af2b	02 	. 
	inc bc			;af2c	03 	. 
	nop			;af2d	00 	. 
	ld d,002h		;af2e	16 02 	. . 
	ld d,000h		;af30	16 00 	. . 
	ld d,000h		;af32	16 00 	. . 
	ld d,000h		;af34	16 00 	. . 
	ld d,002h		;af36	16 02 	. . 
	ld d,002h		;af38	16 02 	. . 
	ld d,002h		;af3a	16 02 	. . 
	ld d,002h		;af3c	16 02 	. . 
	ld d,002h		;af3e	16 02 	. . 
	ld d,002h		;af40	16 02 	. . 
	inc bc			;af42	03 	. 
	ld (bc),a			;af43	02 	. 
	inc bc			;af44	03 	. 
	nop			;af45	00 	. 
	ld d,002h		;af46	16 02 	. . 
	ld d,002h		;af48	16 02 	. . 
	ld d,002h		;af4a	16 02 	. . 
	ld d,002h		;af4c	16 02 	. . 
	ld d,002h		;af4e	16 02 	. . 
	ld d,002h		;af50	16 02 	. . 
	ld d,002h		;af52	16 02 	. . 
	ld d,000h		;af54	16 00 	. . 
	ld d,002h		;af56	16 02 	. . 
	ld d,000h		;af58	16 00 	. . 
	inc bc			;af5a	03 	. 
	ld (bc),a			;af5b	02 	. 
	inc bc			;af5c	03 	. 
	nop			;af5d	00 	. 
	ld d,000h		;af5e	16 00 	. . 
	rla			;af60	17 	. 
	nop			;af61	00 	. 
	rla			;af62	17 	. 
	nop			;af63	00 	. 
	rla			;af64	17 	. 
	nop			;af65	00 	. 
	rla			;af66	17 	. 
	nop			;af67	00 	. 
	ld d,000h		;af68	16 00 	. . 
	rla			;af6a	17 	. 
	nop			;af6b	00 	. 
	ld d,002h		;af6c	16 02 	. . 
	rla			;af6e	17 	. 
	nop			;af6f	00 	. 
	ld d,002h		;af70	16 02 	. . 
	inc bc			;af72	03 	. 
	ld (bc),a			;af73	02 	. 
	inc bc			;af74	03 	. 
	nop			;af75	00 	. 
	ld d,002h		;af76	16 02 	. . 
	jr laf7ah		;af78	18 00 	. . 
laf7ah:
	jr laf7ch		;af7a	18 00 	. . 
laf7ch:
	jr laf7eh		;af7c	18 00 	. . 
laf7eh:
	jr laf80h		;af7e	18 00 	. . 
laf80h:
	ld d,002h		;af80	16 02 	. . 
	jr laf84h		;af82	18 00 	. . 
laf84h:
	ld d,000h		;af84	16 00 	. . 
	jr laf88h		;af86	18 00 	. . 
laf88h:
	ld d,000h		;af88	16 00 	. . 
	inc bc			;af8a	03 	. 
	ld (bc),a			;af8b	02 	. 
	add hl,de			;af8c	19 	. 
	nop			;af8d	00 	. 
	ld (bc),a			;af8e	02 	. 
	inc b			;af8f	04 	. 
	ld (bc),a			;af90	02 	. 
	inc b			;af91	04 	. 
	ld (bc),a			;af92	02 	. 
	inc b			;af93	04 	. 
	ld (bc),a			;af94	02 	. 
	inc b			;af95	04 	. 
	ld (bc),a			;af96	02 	. 
	inc b			;af97	04 	. 
	ld (bc),a			;af98	02 	. 
	inc b			;af99	04 	. 
	ld (bc),a			;af9a	02 	. 
	inc b			;af9b	04 	. 
	ld (bc),a			;af9c	02 	. 
	inc b			;af9d	04 	. 
	ld (bc),a			;af9e	02 	. 
	inc b			;af9f	04 	. 
	ld (bc),a			;afa0	02 	. 
	inc b			;afa1	04 	. 
	ld bc,00106h		;afa2	01 06 01 	. . . 
	nop			;afa5	00 	. 
	ld (bc),a			;afa6	02 	. 
	nop			;afa7	00 	. 
	ld (bc),a			;afa8	02 	. 
	nop			;afa9	00 	. 
	ld (bc),a			;afaa	02 	. 
	nop			;afab	00 	. 
	ld (bc),a			;afac	02 	. 
	nop			;afad	00 	. 
	ld (bc),a			;afae	02 	. 
	nop			;afaf	00 	. 
	ld bc,00302h		;afb0	01 02 03 	. . . 
	nop			;afb3	00 	. 
	inc b			;afb4	04 	. 
	nop			;afb5	00 	. 
	dec b			;afb6	05 	. 
	nop			;afb7	00 	. 
	ld b,000h		;afb8	06 00 	. . 
	rlca			;afba	07 	. 
	nop			;afbb	00 	. 
	ex af,af'			;afbc	08 	. 
	nop			;afbd	00 	. 
	inc bc			;afbe	03 	. 
	ld (bc),a			;afbf	02 	. 
	inc bc			;afc0	03 	. 
	nop			;afc1	00 	. 
	add hl,bc			;afc2	09 	. 
	nop			;afc3	00 	. 
	add hl,bc			;afc4	09 	. 
	nop			;afc5	00 	. 
	ld a,(bc)			;afc6	0a 	. 
	nop			;afc7	00 	. 
	dec bc			;afc8	0b 	. 
	nop			;afc9	00 	. 
	inc c			;afca	0c 	. 
	nop			;afcb	00 	. 
	inc bc			;afcc	03 	. 
	ld (bc),a			;afcd	02 	. 
	inc bc			;afce	03 	. 
	nop			;afcf	00 	. 
	dec c			;afd0	0d 	. 
	nop			;afd1	00 	. 
	ld c,000h		;afd2	0e 00 	. . 
	add hl,bc			;afd4	09 	. 
	nop			;afd5	00 	. 
	add hl,bc			;afd6	09 	. 
	nop			;afd7	00 	. 
	rrca			;afd8	0f 	. 
	nop			;afd9	00 	. 
	inc bc			;afda	03 	. 
	ld (bc),a			;afdb	02 	. 
	inc bc			;afdc	03 	. 
	nop			;afdd	00 	. 
	djnz lafe0h		;afde	10 00 	. . 
lafe0h:
	ld de,00900h		;afe0	11 00 09 	. . . 
	nop			;afe3	00 	. 
	add hl,bc			;afe4	09 	. 
	nop			;afe5	00 	. 
	rrca			;afe6	0f 	. 
	nop			;afe7	00 	. 
	inc bc			;afe8	03 	. 
	ld (bc),a			;afe9	02 	. 
	inc bc			;afea	03 	. 
	nop			;afeb	00 	. 
	add hl,bc			;afec	09 	. 
	nop			;afed	00 	. 
	add hl,bc			;afee	09 	. 
	nop			;afef	00 	. 
	add hl,bc			;aff0	09 	. 
	nop			;aff1	00 	. 
	add hl,bc			;aff2	09 	. 
	nop			;aff3	00 	. 
	rrca			;aff4	0f 	. 
	nop			;aff5	00 	. 
	inc bc			;aff6	03 	. 
	ld (bc),a			;aff7	02 	. 
	inc bc			;aff8	03 	. 
	nop			;aff9	00 	. 
	add hl,bc			;affa	09 	. 
	nop			;affb	00 	. 
	add hl,bc			;affc	09 	. 
	nop			;affd	00 	. 
	add hl,bc			;affe	09 	. 
	nop			;afff	00 	. 
	add hl,bc			;b000	09 	. 
	nop			;b001	00 	. 
	rrca			;b002	0f 	. 
	nop			;b003	00 	. 
	inc bc			;b004	03 	. 
	ld (bc),a			;b005	02 	. 
	ld bc,00204h		;b006	01 04 02 	. . . 
	inc b			;b009	04 	. 
	ld (bc),a			;b00a	02 	. 
	inc b			;b00b	04 	. 
	ld (bc),a			;b00c	02 	. 
	inc b			;b00d	04 	. 
	ld (bc),a			;b00e	02 	. 
	inc b			;b00f	04 	. 
	ld (bc),a			;b010	02 	. 
	inc b			;b011	04 	. 
	ld bc,00106h		;b012	01 06 01 	. . . 
	nop			;b015	00 	. 
	ld (bc),a			;b016	02 	. 
	nop			;b017	00 	. 
	ld (bc),a			;b018	02 	. 
	nop			;b019	00 	. 
	ld (bc),a			;b01a	02 	. 
	nop			;b01b	00 	. 
	ld (bc),a			;b01c	02 	. 
	nop			;b01d	00 	. 
	ld bc,00302h		;b01e	01 02 03 	. . . 
	nop			;b021	00 	. 
	add hl,bc			;b022	09 	. 
	nop			;b023	00 	. 
	add hl,bc			;b024	09 	. 
	nop			;b025	00 	. 
	add hl,bc			;b026	09 	. 
	nop			;b027	00 	. 
	add hl,bc			;b028	09 	. 
	nop			;b029	00 	. 
	inc bc			;b02a	03 	. 
	ld (bc),a			;b02b	02 	. 
	inc bc			;b02c	03 	. 
	nop			;b02d	00 	. 
	add hl,bc			;b02e	09 	. 
	nop			;b02f	00 	. 
	add hl,bc			;b030	09 	. 
	nop			;b031	00 	. 
	add hl,bc			;b032	09 	. 
	nop			;b033	00 	. 
	add hl,bc			;b034	09 	. 
	nop			;b035	00 	. 
	inc bc			;b036	03 	. 
	ld (bc),a			;b037	02 	. 
	inc bc			;b038	03 	. 
	nop			;b039	00 	. 
	add hl,bc			;b03a	09 	. 
	nop			;b03b	00 	. 
	add hl,bc			;b03c	09 	. 
	nop			;b03d	00 	. 
	add hl,bc			;b03e	09 	. 
	nop			;b03f	00 	. 
	add hl,bc			;b040	09 	. 
	nop			;b041	00 	. 
	inc bc			;b042	03 	. 
	ld (bc),a			;b043	02 	. 
	inc bc			;b044	03 	. 
	nop			;b045	00 	. 
	add hl,bc			;b046	09 	. 
	nop			;b047	00 	. 
	add hl,bc			;b048	09 	. 
	nop			;b049	00 	. 
	add hl,bc			;b04a	09 	. 
	nop			;b04b	00 	. 
	add hl,bc			;b04c	09 	. 
	nop			;b04d	00 	. 
	inc bc			;b04e	03 	. 
	ld (bc),a			;b04f	02 	. 
	inc bc			;b050	03 	. 
	nop			;b051	00 	. 
	add hl,bc			;b052	09 	. 
	nop			;b053	00 	. 
	add hl,bc			;b054	09 	. 
	nop			;b055	00 	. 
	add hl,bc			;b056	09 	. 
	nop			;b057	00 	. 
	add hl,bc			;b058	09 	. 
	nop			;b059	00 	. 
	inc bc			;b05a	03 	. 
	ld (bc),a			;b05b	02 	. 
	inc bc			;b05c	03 	. 
	nop			;b05d	00 	. 
	ld (de),a			;b05e	12 	. 
	nop			;b05f	00 	. 
	inc de			;b060	13 	. 
	nop			;b061	00 	. 
	add hl,bc			;b062	09 	. 
	nop			;b063	00 	. 
	add hl,bc			;b064	09 	. 
	nop			;b065	00 	. 
	inc bc			;b066	03 	. 
	ld (bc),a			;b067	02 	. 
	inc bc			;b068	03 	. 
	nop			;b069	00 	. 
	inc d			;b06a	14 	. 
	nop			;b06b	00 	. 
	dec d			;b06c	15 	. 
	nop			;b06d	00 	. 
	add hl,bc			;b06e	09 	. 
	nop			;b06f	00 	. 
	add hl,bc			;b070	09 	. 
	nop			;b071	00 	. 
	inc bc			;b072	03 	. 
	ld (bc),a			;b073	02 	. 
	inc bc			;b074	03 	. 
	nop			;b075	00 	. 
	add hl,bc			;b076	09 	. 
	nop			;b077	00 	. 
	add hl,bc			;b078	09 	. 
	nop			;b079	00 	. 
	inc de			;b07a	13 	. 
	ld (bc),a			;b07b	02 	. 
	ld (de),a			;b07c	12 	. 
	ld (bc),a			;b07d	02 	. 
	inc bc			;b07e	03 	. 
	ld (bc),a			;b07f	02 	. 
	inc bc			;b080	03 	. 
	nop			;b081	00 	. 
	inc de			;b082	13 	. 
	nop			;b083	00 	. 
	add hl,bc			;b084	09 	. 
	nop			;b085	00 	. 
	dec d			;b086	15 	. 
	ld (bc),a			;b087	02 	. 
	inc d			;b088	14 	. 
	ld (bc),a			;b089	02 	. 
	inc bc			;b08a	03 	. 
	ld (bc),a			;b08b	02 	. 
	inc bc			;b08c	03 	. 
	nop			;b08d	00 	. 
	dec d			;b08e	15 	. 
	nop			;b08f	00 	. 
	add hl,bc			;b090	09 	. 
	nop			;b091	00 	. 
	add hl,bc			;b092	09 	. 
	nop			;b093	00 	. 
	add hl,bc			;b094	09 	. 
	nop			;b095	00 	. 
	inc bc			;b096	03 	. 
	ld (bc),a			;b097	02 	. 
	ld bc,00204h		;b098	01 04 02 	. . . 
	inc b			;b09b	04 	. 
	ld (bc),a			;b09c	02 	. 
	inc b			;b09d	04 	. 
	ld (bc),a			;b09e	02 	. 
	inc b			;b09f	04 	. 
	ld (bc),a			;b0a0	02 	. 
	inc b			;b0a1	04 	. 
	ld bc,00106h		;b0a2	01 06 01 	. . . 
	nop			;b0a5	00 	. 
	ld (bc),a			;b0a6	02 	. 
	nop			;b0a7	00 	. 
	ld (bc),a			;b0a8	02 	. 
	nop			;b0a9	00 	. 
	ld (bc),a			;b0aa	02 	. 
	nop			;b0ab	00 	. 
	ld (bc),a			;b0ac	02 	. 
	nop			;b0ad	00 	. 
	ld (bc),a			;b0ae	02 	. 
	nop			;b0af	00 	. 
	ld (bc),a			;b0b0	02 	. 
	nop			;b0b1	00 	. 
	ld (bc),a			;b0b2	02 	. 
	nop			;b0b3	00 	. 
	ld (bc),a			;b0b4	02 	. 
	nop			;b0b5	00 	. 
	ld (bc),a			;b0b6	02 	. 
	nop			;b0b7	00 	. 
	ld (bc),a			;b0b8	02 	. 
	nop			;b0b9	00 	. 
	ld (bc),a			;b0ba	02 	. 
	nop			;b0bb	00 	. 
	ld (bc),a			;b0bc	02 	. 
	nop			;b0bd	00 	. 
	ld bc,00302h		;b0be	01 02 03 	. . . 
	nop			;b0c1	00 	. 
	add hl,bc			;b0c2	09 	. 
	nop			;b0c3	00 	. 
	add hl,bc			;b0c4	09 	. 
	nop			;b0c5	00 	. 
	add hl,bc			;b0c6	09 	. 
	nop			;b0c7	00 	. 
	add hl,bc			;b0c8	09 	. 
	nop			;b0c9	00 	. 
	add hl,bc			;b0ca	09 	. 
	nop			;b0cb	00 	. 
	add hl,bc			;b0cc	09 	. 
	nop			;b0cd	00 	. 
	add hl,bc			;b0ce	09 	. 
	nop			;b0cf	00 	. 
	add hl,bc			;b0d0	09 	. 
	nop			;b0d1	00 	. 
	add hl,bc			;b0d2	09 	. 
	nop			;b0d3	00 	. 
	add hl,bc			;b0d4	09 	. 
	nop			;b0d5	00 	. 
	add hl,bc			;b0d6	09 	. 
	nop			;b0d7	00 	. 
	add hl,bc			;b0d8	09 	. 
	nop			;b0d9	00 	. 
	inc bc			;b0da	03 	. 
	ld (bc),a			;b0db	02 	. 
	inc bc			;b0dc	03 	. 
	nop			;b0dd	00 	. 
	add hl,bc			;b0de	09 	. 
	nop			;b0df	00 	. 
	add hl,bc			;b0e0	09 	. 
	nop			;b0e1	00 	. 
	add hl,bc			;b0e2	09 	. 
	nop			;b0e3	00 	. 
	add hl,bc			;b0e4	09 	. 
	nop			;b0e5	00 	. 
	add hl,bc			;b0e6	09 	. 
	nop			;b0e7	00 	. 
	add hl,bc			;b0e8	09 	. 
	nop			;b0e9	00 	. 
	add hl,bc			;b0ea	09 	. 
	nop			;b0eb	00 	. 
	add hl,bc			;b0ec	09 	. 
	nop			;b0ed	00 	. 
	add hl,bc			;b0ee	09 	. 
	nop			;b0ef	00 	. 
	add hl,bc			;b0f0	09 	. 
	nop			;b0f1	00 	. 
	add hl,bc			;b0f2	09 	. 
	nop			;b0f3	00 	. 
	add hl,bc			;b0f4	09 	. 
	nop			;b0f5	00 	. 
	inc bc			;b0f6	03 	. 
	ld (bc),a			;b0f7	02 	. 
	inc bc			;b0f8	03 	. 
	nop			;b0f9	00 	. 
	ld a,(de)			;b0fa	1a 	. 
	nop			;b0fb	00 	. 
	ld a,(de)			;b0fc	1a 	. 
	ld (bc),a			;b0fd	02 	. 
	ld a,(de)			;b0fe	1a 	. 
	nop			;b0ff	00 	. 
	ld a,(de)			;b100	1a 	. 
	ld (bc),a			;b101	02 	. 
	ld a,(de)			;b102	1a 	. 
	nop			;b103	00 	. 
	ld a,(de)			;b104	1a 	. 
	ld (bc),a			;b105	02 	. 
	ld a,(de)			;b106	1a 	. 
	nop			;b107	00 	. 
	ld a,(de)			;b108	1a 	. 
	ld (bc),a			;b109	02 	. 
	ld a,(de)			;b10a	1a 	. 
	nop			;b10b	00 	. 
	ld a,(de)			;b10c	1a 	. 
	ld (bc),a			;b10d	02 	. 
	ld a,(de)			;b10e	1a 	. 
	nop			;b10f	00 	. 
	ld a,(de)			;b110	1a 	. 
	ld (bc),a			;b111	02 	. 
	inc bc			;b112	03 	. 
	ld (bc),a			;b113	02 	. 
	inc bc			;b114	03 	. 
	nop			;b115	00 	. 
	dec de			;b116	1b 	. 
	nop			;b117	00 	. 
	dec de			;b118	1b 	. 
	ld (bc),a			;b119	02 	. 
	dec de			;b11a	1b 	. 
	nop			;b11b	00 	. 
	dec de			;b11c	1b 	. 
	ld (bc),a			;b11d	02 	. 
	dec de			;b11e	1b 	. 
	nop			;b11f	00 	. 
	dec de			;b120	1b 	. 
	ld (bc),a			;b121	02 	. 
	dec de			;b122	1b 	. 
	nop			;b123	00 	. 
	dec de			;b124	1b 	. 
	ld (bc),a			;b125	02 	. 
	dec de			;b126	1b 	. 
	nop			;b127	00 	. 
	dec de			;b128	1b 	. 
	ld (bc),a			;b129	02 	. 
	dec de			;b12a	1b 	. 
	nop			;b12b	00 	. 
	dec de			;b12c	1b 	. 
	ld (bc),a			;b12d	02 	. 
	inc bc			;b12e	03 	. 
	ld (bc),a			;b12f	02 	. 
	ld bc,00204h		;b130	01 04 02 	. . . 
	inc b			;b133	04 	. 
	ld (bc),a			;b134	02 	. 
	inc b			;b135	04 	. 
	ld (bc),a			;b136	02 	. 
	inc b			;b137	04 	. 
	ld (bc),a			;b138	02 	. 
	inc b			;b139	04 	. 
	ld (bc),a			;b13a	02 	. 
	inc b			;b13b	04 	. 
	ld (bc),a			;b13c	02 	. 
	inc b			;b13d	04 	. 
	ld (bc),a			;b13e	02 	. 
	inc b			;b13f	04 	. 
	ld (bc),a			;b140	02 	. 
	inc b			;b141	04 	. 
	ld (bc),a			;b142	02 	. 
	inc b			;b143	04 	. 
	ld (bc),a			;b144	02 	. 
	inc b			;b145	04 	. 
	ld (bc),a			;b146	02 	. 
	inc b			;b147	04 	. 
	ld (bc),a			;b148	02 	. 
	inc b			;b149	04 	. 
	ld bc,01c06h		;b14a	01 06 1c 	. . . 
	nop			;b14d	00 	. 
	dec e			;b14e	1d 	. 
	nop			;b14f	00 	. 
	ld e,000h		;b150	1e 00 	. . 
	rra			;b152	1f 	. 
	nop			;b153	00 	. 
	jr nz,lb156h		;b154	20 00 	  . 
lb156h:
	ld hl,02200h		;b156	21 00 22 	! . " 
	nop			;b159	00 	. 
	inc hl			;b15a	23 	# 
	nop			;b15b	00 	. 
	inc h			;b15c	24 	$ 
	nop			;b15d	00 	. 
	ld (02000h),hl		;b15e	22 00 20 	" .   
	nop			;b161	00 	. 
	dec h			;b162	25 	% 
	nop			;b163	00 	. 
	dec e			;b164	1d 	. 
	nop			;b165	00 	. 
	ld (02200h),hl		;b166	22 00 22 	" . " 
	nop			;b169	00 	. 
	ld h,000h		;b16a	26 00 	& . 
	daa			;b16c	27 	' 
	nop			;b16d	00 	. 
	jr nz,lb170h		;b16e	20 00 	  . 
lb170h:
	jr nz,lb172h		;b170	20 00 	  . 
lb172h:
	jr nz,lb174h		;b172	20 00 	  . 
lb174h:
	jr nz,lb176h		;b174	20 00 	  . 
lb176h:
	jr nz,lb178h		;b176	20 00 	  . 
lb178h:
	jr nz,lb17ah		;b178	20 00 	  . 
lb17ah:
	jr nz,lb17ch		;b17a	20 00 	  . 
lb17ch:
	jr nz,lb17eh		;b17c	20 00 	  . 
lb17eh:
	jr nz,lb180h		;b17e	20 00 	  . 
lb180h:
	jr nz,lb182h		;b180	20 00 	  . 
lb182h:
	jr nz,lb184h		;b182	20 00 	  . 
lb184h:
	jr nz,lb186h		;b184	20 00 	  . 
lb186h:
	jr nz,lb188h		;b186	20 00 	  . 
lb188h:
	jr nz,lb18ah		;b188	20 00 	  . 
lb18ah:
	jr nz,lb18ch		;b18a	20 00 	  . 
lb18ch:
	jr nz,lb18eh		;b18c	20 00 	  . 
lb18eh:
	jr nz,lb190h		;b18e	20 00 	  . 
lb190h:
	jr nz,lb192h		;b190	20 00 	  . 
lb192h:
	jr nz,lb194h		;b192	20 00 	  . 
lb194h:
	jr nz,lb196h		;b194	20 00 	  . 
lb196h:
	jr z,lb198h		;b196	28 00 	( . 
lb198h:
	jr nz,lb19ah		;b198	20 00 	  . 
lb19ah:
	add hl,hl			;b19a	29 	) 
	nop			;b19b	00 	. 
	ld hl,(02b00h)		;b19c	2a 00 2b 	* . + 
	nop			;b19f	00 	. 
	inc l			;b1a0	2c 	, 
	nop			;b1a1	00 	. 
	jr nz,lb1a4h		;b1a2	20 00 	  . 
lb1a4h:
	dec l			;b1a4	2d 	- 
	nop			;b1a5	00 	. 
	ld l,000h		;b1a6	2e 00 	. . 
	ld l,000h		;b1a8	2e 00 	. . 
	ld h,002h		;b1aa	26 02 	& . 
	jr nz,lb1aeh		;b1ac	20 00 	  . 
lb1aeh:
	jr nz,lb1b0h		;b1ae	20 00 	  . 
lb1b0h:
	jr nz,lb1b2h		;b1b0	20 00 	  . 
lb1b2h:
	ld bc,00200h		;b1b2	01 00 02 	. . . 
	nop			;b1b5	00 	. 
	ld (bc),a			;b1b6	02 	. 
	nop			;b1b7	00 	. 
	ld (bc),a			;b1b8	02 	. 
	nop			;b1b9	00 	. 
	ld (bc),a			;b1ba	02 	. 
	nop			;b1bb	00 	. 
	ld (bc),a			;b1bc	02 	. 
	nop			;b1bd	00 	. 
	ld (bc),a			;b1be	02 	. 
	nop			;b1bf	00 	. 
	ld (bc),a			;b1c0	02 	. 
	nop			;b1c1	00 	. 
	ld (bc),a			;b1c2	02 	. 
	nop			;b1c3	00 	. 
	ld (bc),a			;b1c4	02 	. 
	nop			;b1c5	00 	. 
	ld (bc),a			;b1c6	02 	. 
	nop			;b1c7	00 	. 
	ld bc,00302h		;b1c8	01 02 03 	. . . 
	nop			;b1cb	00 	. 
	add hl,bc			;b1cc	09 	. 
	nop			;b1cd	00 	. 
	add hl,bc			;b1ce	09 	. 
	nop			;b1cf	00 	. 
	add hl,bc			;b1d0	09 	. 
	nop			;b1d1	00 	. 
	add hl,bc			;b1d2	09 	. 
	nop			;b1d3	00 	. 
	ld sp,03200h		;b1d4	31 00 32 	1 . 2 
	nop			;b1d7	00 	. 
	inc sp			;b1d8	33 	3 
	nop			;b1d9	00 	. 
	ld (03300h),a		;b1da	32 00 33 	2 . 3 
	nop			;b1dd	00 	. 
	ld (00300h),a		;b1de	32 00 03 	2 . . 
	ld (bc),a			;b1e1	02 	. 
	inc bc			;b1e2	03 	. 
	nop			;b1e3	00 	. 
	add hl,bc			;b1e4	09 	. 
	nop			;b1e5	00 	. 
	add hl,bc			;b1e6	09 	. 
	nop			;b1e7	00 	. 
	add hl,bc			;b1e8	09 	. 
	nop			;b1e9	00 	. 
	add hl,bc			;b1ea	09 	. 
	nop			;b1eb	00 	. 
	add hl,bc			;b1ec	09 	. 
	nop			;b1ed	00 	. 
	add hl,bc			;b1ee	09 	. 
	nop			;b1ef	00 	. 
	add hl,bc			;b1f0	09 	. 
	nop			;b1f1	00 	. 
	add hl,bc			;b1f2	09 	. 
	nop			;b1f3	00 	. 
	inc (hl)			;b1f4	34 	4 
	nop			;b1f5	00 	. 
	add hl,bc			;b1f6	09 	. 
	nop			;b1f7	00 	. 
	inc bc			;b1f8	03 	. 
	ld (bc),a			;b1f9	02 	. 
	inc bc			;b1fa	03 	. 
	nop			;b1fb	00 	. 
	add hl,bc			;b1fc	09 	. 
	nop			;b1fd	00 	. 
	add hl,bc			;b1fe	09 	. 
	nop			;b1ff	00 	. 
	add hl,bc			;b200	09 	. 
	nop			;b201	00 	. 
	add hl,bc			;b202	09 	. 
	nop			;b203	00 	. 
	add hl,bc			;b204	09 	. 
	nop			;b205	00 	. 
	add hl,bc			;b206	09 	. 
	nop			;b207	00 	. 
	add hl,bc			;b208	09 	. 
	nop			;b209	00 	. 
	dec (hl)			;b20a	35 	5 
	nop			;b20b	00 	. 
	ld (hl),000h		;b20c	36 00 	6 . 
	ld (hl),000h		;b20e	36 00 	6 . 
	inc bc			;b210	03 	. 
	ld (bc),a			;b211	02 	. 
	inc bc			;b212	03 	. 
	nop			;b213	00 	. 
	scf			;b214	37 	7 
	nop			;b215	00 	. 
	jr c,lb218h		;b216	38 00 	8 . 
lb218h:
	add hl,bc			;b218	09 	. 
	nop			;b219	00 	. 
	add hl,bc			;b21a	09 	. 
	nop			;b21b	00 	. 
	add hl,bc			;b21c	09 	. 
	nop			;b21d	00 	. 
	add hl,bc			;b21e	09 	. 
	nop			;b21f	00 	. 
	inc (hl)			;b220	34 	4 
	nop			;b221	00 	. 
	add hl,bc			;b222	09 	. 
	nop			;b223	00 	. 
	add hl,bc			;b224	09 	. 
	nop			;b225	00 	. 
	add hl,sp			;b226	39 	9 
	nop			;b227	00 	. 
	inc bc			;b228	03 	. 
	ld (bc),a			;b229	02 	. 
	inc bc			;b22a	03 	. 
	nop			;b22b	00 	. 
	ld a,(00900h)		;b22c	3a 00 09 	: . . 
	nop			;b22f	00 	. 
	add hl,bc			;b230	09 	. 
	nop			;b231	00 	. 
	add hl,bc			;b232	09 	. 
	nop			;b233	00 	. 
	add hl,bc			;b234	09 	. 
	nop			;b235	00 	. 
	dec (hl)			;b236	35 	5 
	nop			;b237	00 	. 
	add hl,bc			;b238	09 	. 
	nop			;b239	00 	. 
	add hl,bc			;b23a	09 	. 
	nop			;b23b	00 	. 
	add hl,bc			;b23c	09 	. 
	nop			;b23d	00 	. 
	add hl,sp			;b23e	39 	9 
	ld b,003h		;b23f	06 03 	. . 
	ld (bc),a			;b241	02 	. 
	inc bc			;b242	03 	. 
	nop			;b243	00 	. 
	add hl,bc			;b244	09 	. 
	nop			;b245	00 	. 
	add hl,bc			;b246	09 	. 
	nop			;b247	00 	. 
	add hl,bc			;b248	09 	. 
	nop			;b249	00 	. 
	add hl,bc			;b24a	09 	. 
	nop			;b24b	00 	. 
	add hl,bc			;b24c	09 	. 
	nop			;b24d	00 	. 
	inc (hl)			;b24e	34 	4 
	nop			;b24f	00 	. 
	add hl,bc			;b250	09 	. 
	nop			;b251	00 	. 
	add hl,bc			;b252	09 	. 
	nop			;b253	00 	. 
	add hl,sp			;b254	39 	9 
	nop			;b255	00 	. 
	add hl,bc			;b256	09 	. 
	nop			;b257	00 	. 
	inc bc			;b258	03 	. 
	ld (bc),a			;b259	02 	. 
	inc bc			;b25a	03 	. 
	nop			;b25b	00 	. 
	add hl,bc			;b25c	09 	. 
	nop			;b25d	00 	. 
	add hl,bc			;b25e	09 	. 
	nop			;b25f	00 	. 
	add hl,bc			;b260	09 	. 
	nop			;b261	00 	. 
	add hl,bc			;b262	09 	. 
	nop			;b263	00 	. 
	inc (hl)			;b264	34 	4 
	nop			;b265	00 	. 
	add hl,bc			;b266	09 	. 
	nop			;b267	00 	. 
	add hl,bc			;b268	09 	. 
	nop			;b269	00 	. 
	add hl,bc			;b26a	09 	. 
	nop			;b26b	00 	. 
	dec sp			;b26c	3b 	; 
	nop			;b26d	00 	. 
	add hl,bc			;b26e	09 	. 
	nop			;b26f	00 	. 
	inc bc			;b270	03 	. 
	ld (bc),a			;b271	02 	. 
	inc bc			;b272	03 	. 
	nop			;b273	00 	. 
	add hl,bc			;b274	09 	. 
	nop			;b275	00 	. 
	add hl,bc			;b276	09 	. 
	nop			;b277	00 	. 
	add hl,bc			;b278	09 	. 
	nop			;b279	00 	. 
	inc (hl)			;b27a	34 	4 
	nop			;b27b	00 	. 
	add hl,bc			;b27c	09 	. 
	nop			;b27d	00 	. 
	add hl,bc			;b27e	09 	. 
	nop			;b27f	00 	. 
	add hl,bc			;b280	09 	. 
	nop			;b281	00 	. 
	add hl,bc			;b282	09 	. 
	nop			;b283	00 	. 
	add hl,sp			;b284	39 	9 
	nop			;b285	00 	. 
	add hl,bc			;b286	09 	. 
	nop			;b287	00 	. 
	inc bc			;b288	03 	. 
	ld (bc),a			;b289	02 	. 
	inc bc			;b28a	03 	. 
	nop			;b28b	00 	. 
	add hl,bc			;b28c	09 	. 
	nop			;b28d	00 	. 
	add hl,bc			;b28e	09 	. 
	nop			;b28f	00 	. 
	dec (hl)			;b290	35 	5 
	nop			;b291	00 	. 
	add hl,bc			;b292	09 	. 
	nop			;b293	00 	. 
	add hl,bc			;b294	09 	. 
	nop			;b295	00 	. 
	add hl,bc			;b296	09 	. 
	nop			;b297	00 	. 
	add hl,bc			;b298	09 	. 
	nop			;b299	00 	. 
	add hl,bc			;b29a	09 	. 
	nop			;b29b	00 	. 
	add hl,sp			;b29c	39 	9 
	ld b,009h		;b29d	06 09 	. . 
	nop			;b29f	00 	. 
	inc bc			;b2a0	03 	. 
	ld (bc),a			;b2a1	02 	. 
	inc bc			;b2a2	03 	. 
	nop			;b2a3	00 	. 
	add hl,bc			;b2a4	09 	. 
	nop			;b2a5	00 	. 
	add hl,bc			;b2a6	09 	. 
	nop			;b2a7	00 	. 
	inc (hl)			;b2a8	34 	4 
	nop			;b2a9	00 	. 
	add hl,bc			;b2aa	09 	. 
	nop			;b2ab	00 	. 
	add hl,bc			;b2ac	09 	. 
	nop			;b2ad	00 	. 
	add hl,bc			;b2ae	09 	. 
	nop			;b2af	00 	. 
	add hl,bc			;b2b0	09 	. 
	nop			;b2b1	00 	. 
	add hl,sp			;b2b2	39 	9 
	nop			;b2b3	00 	. 
	add hl,bc			;b2b4	09 	. 
	nop			;b2b5	00 	. 
	add hl,bc			;b2b6	09 	. 
	nop			;b2b7	00 	. 
	inc bc			;b2b8	03 	. 
	ld (bc),a			;b2b9	02 	. 
	inc bc			;b2ba	03 	. 
	nop			;b2bb	00 	. 
	add hl,bc			;b2bc	09 	. 
	nop			;b2bd	00 	. 
	inc (hl)			;b2be	34 	4 
	nop			;b2bf	00 	. 
	add hl,bc			;b2c0	09 	. 
	nop			;b2c1	00 	. 
	add hl,bc			;b2c2	09 	. 
	nop			;b2c3	00 	. 
	add hl,bc			;b2c4	09 	. 
	nop			;b2c5	00 	. 
	add hl,bc			;b2c6	09 	. 
	nop			;b2c7	00 	. 
	add hl,bc			;b2c8	09 	. 
	nop			;b2c9	00 	. 
	add hl,sp			;b2ca	39 	9 
	ld b,009h		;b2cb	06 09 	. . 
	nop			;b2cd	00 	. 
	add hl,bc			;b2ce	09 	. 
	nop			;b2cf	00 	. 
	inc bc			;b2d0	03 	. 
	ld (bc),a			;b2d1	02 	. 
	inc bc			;b2d2	03 	. 
	nop			;b2d3	00 	. 
	inc (hl)			;b2d4	34 	4 
	nop			;b2d5	00 	. 
	add hl,bc			;b2d6	09 	. 
	nop			;b2d7	00 	. 
	add hl,bc			;b2d8	09 	. 
	nop			;b2d9	00 	. 
	add hl,bc			;b2da	09 	. 
	nop			;b2db	00 	. 
	add hl,bc			;b2dc	09 	. 
	nop			;b2dd	00 	. 
	add hl,bc			;b2de	09 	. 
	nop			;b2df	00 	. 
	add hl,sp			;b2e0	39 	9 
	nop			;b2e1	00 	. 
	add hl,bc			;b2e2	09 	. 
	nop			;b2e3	00 	. 
	add hl,bc			;b2e4	09 	. 
	nop			;b2e5	00 	. 
	inc a			;b2e6	3c 	< 
	nop			;b2e7	00 	. 
	inc bc			;b2e8	03 	. 
	ld (bc),a			;b2e9	02 	. 
	inc bc			;b2ea	03 	. 
	nop			;b2eb	00 	. 
	add hl,bc			;b2ec	09 	. 
	nop			;b2ed	00 	. 
	add hl,bc			;b2ee	09 	. 
	nop			;b2ef	00 	. 
	dec a			;b2f0	3d 	= 
	nop			;b2f1	00 	. 
	dec a			;b2f2	3d 	= 
	ld (bc),a			;b2f3	02 	. 
	inc a			;b2f4	3c 	< 
	nop			;b2f5	00 	. 
	ld a,000h		;b2f6	3e 00 	> . 
	ld a,000h		;b2f8	3e 00 	> . 
	ld a,000h		;b2fa	3e 00 	> . 
	ccf			;b2fc	3f 	? 
	nop			;b2fd	00 	. 
	ld b,b			;b2fe	40 	@ 
	nop			;b2ff	00 	. 
	inc bc			;b300	03 	. 
	ld (bc),a			;b301	02 	. 
	inc bc			;b302	03 	. 
	nop			;b303	00 	. 
	inc a			;b304	3c 	< 
	nop			;b305	00 	. 
	ld a,000h		;b306	3e 00 	> . 
	ld b,c			;b308	41 	A 
	nop			;b309	00 	. 
	ld b,b			;b30a	40 	@ 
	nop			;b30b	00 	. 
	ld b,c			;b30c	41 	A 
	nop			;b30d	00 	. 
	ld b,b			;b30e	40 	@ 
	nop			;b30f	00 	. 
	ld b,b			;b310	40 	@ 
	nop			;b311	00 	. 
	ld b,c			;b312	41 	A 
	ld (bc),a			;b313	02 	. 
	ld b,b			;b314	40 	@ 
	nop			;b315	00 	. 
	ld b,b			;b316	40 	@ 
	nop			;b317	00 	. 
	inc bc			;b318	03 	. 
	ld (bc),a			;b319	02 	. 
	ld bc,00204h		;b31a	01 04 02 	. . . 
	inc b			;b31d	04 	. 
	ld (bc),a			;b31e	02 	. 
	inc b			;b31f	04 	. 
	ld (bc),a			;b320	02 	. 
	inc b			;b321	04 	. 
	ld (bc),a			;b322	02 	. 
	inc b			;b323	04 	. 
	ld (bc),a			;b324	02 	. 
	inc b			;b325	04 	. 
	ld (bc),a			;b326	02 	. 
	inc b			;b327	04 	. 
	ld (bc),a			;b328	02 	. 
	inc b			;b329	04 	. 
	ld (bc),a			;b32a	02 	. 
	inc b			;b32b	04 	. 
	ld (bc),a			;b32c	02 	. 
	inc b			;b32d	04 	. 
	ld (bc),a			;b32e	02 	. 
	inc b			;b32f	04 	. 
	ld bc,00706h		;b330	01 06 07 	. . . 
	nop			;b333	00 	. 
	add a,c			;b334	81 	. 
	ld bc,00007h		;b335	01 07 00 	. . . 
	add a,c			;b338	81 	. 
	rst 38h			;b339	ff 	. 
	ex af,af'			;b33a	08 	. 
	ld bc,0299ch		;b33b	01 9c 29 	. . ) 
	rst 0			;b33e	c7 	. 
	ld c,a			;b33f	4f 	O 
	ld d,a			;b340	57 	W 
	rst 20h			;b341	e7 	. 
	inc bc			;b342	03 	. 
	inc bc			;b343	03 	. 
	ld bc,0fffeh		;b344	01 fe ff 	. . . 
	rst 38h			;b347	ff 	. 
	rst 28h			;b348	ef 	. 
	ex (sp),hl			;b349	e3 	. 
	ret po			;b34a	e0 	. 
	ret nz			;b34b	c0 	. 
	add a,b			;b34c	80 	. 
	ld a,a			;b34d	7f 	 
	xor 0d5h		;b34e	ee d5 	. . 
	ret			;b350	c9 	. 
	push hl			;b351	e5 	. 
	jp m,01e61h		;b352	fa 61 1e 	. a . 
	and a			;b355	a7 	. 
	ld l,a			;b356	6f 	o 
	or a			;b357	b7 	. 
	cp a			;b358	bf 	. 
	inc bc			;b359	03 	. 
	ld a,a			;b35a	7f 	 
	adc a,c			;b35b	89 	. 
	cp a			;b35c	bf 	. 
	rst 10h			;b35d	d7 	. 
	rst 10h			;b35e	d7 	. 
	cp e			;b35f	bb 	. 
	ex (sp),hl			;b360	e3 	. 
	cp d			;b361	ba 	. 
	call sub_b6fdh		;b362	cd fd b6 	. . . 
	ex af,af'			;b365	08 	. 
	nop			;b366	00 	. 
	add a,h			;b367	84 	. 
	inc c			;b368	0c 	. 
	inc bc			;b369	03 	. 
	rrca			;b36a	0f 	. 
	ccf			;b36b	3f 	? 
	inc bc			;b36c	03 	. 
	ld a,a			;b36d	7f 	 
	and c			;b36e	a1 	. 
	ld e,07eh		;b36f	1e 7e 	. ~ 
	cp 0fdh		;b371	fe fd 	. . 
	defb 0fdh,0eah,0d5h	;illegal sequence		;b373	fd ea d5 	. . . 
	sbc a,b			;b376	98 	. 
	rra			;b377	1f 	. 
	and l			;b378	a5 	. 
	ld e,d			;b379	5a 	Z 
	adc a,l			;b37a	8d 	. 
	ld a,a			;b37b	7f 	 
	rra			;b37c	1f 	. 
	sbc a,a			;b37d	9f 	. 
	ld a,a			;b37e	7f 	 
	rst 38h			;b37f	ff 	. 
	rlca			;b380	07 	. 
	jr lb3a6h		;b381	18 23 	. # 
	ld c,a			;b383	4f 	O 
lb384h:
	ld e,h			;b384	5c 	\ 
	sbc a,b			;b385	98 	. 
	cp b			;b386	b8 	. 
	or b			;b387	b0 	. 
	ret po			;b388	e0 	. 
	jr $+6		;b389	18 04 	. . 
	ld (bc),a			;b38b	02 	. 
	ld (bc),a			;b38c	02 	. 
	ld bc,01d0dh		;b38d	01 0d 1d 	. . . 
	ex af,af'			;b390	08 	. 
	rst 38h			;b391	ff 	. 
	add a,c			;b392	81 	. 
	add a,b			;b393	80 	. 
	ld (bc),a			;b394	02 	. 
	or b			;b395	b0 	. 
	ld (bc),a			;b396	02 	. 
	ld b,e			;b397	43 	C 
	adc a,(hl)			;b398	8e 	. 
	ld hl,00718h		;b399	21 18 07 	! . . 
	dec e			;b39c	1d 	. 
	add hl,sp			;b39d	39 	9 
	ld sp,hl			;b39e	f9 	. 
	jp p,084e2h		;b39f	f2 e2 84 	. . . 
	jr lb384h		;b3a2	18 e0 	. . 
	nop			;b3a4	00 	. 
	ret p			;b3a5	f0 	. 
lb3a6h:
	call m,0fe02h		;b3a6	fc 02 fe 	. . . 
	inc bc			;b3a9	03 	. 
	rst 38h			;b3aa	ff 	. 
	inc b			;b3ab	04 	. 
	nop			;b3ac	00 	. 
	add a,c			;b3ad	81 	. 
	ret p			;b3ae	f0 	. 
	inc bc			;b3af	03 	. 
	ret m			;b3b0	f8 	. 
	dec b			;b3b1	05 	. 
	rst 38h			;b3b2	ff 	. 
	add a,e			;b3b3	83 	. 
	cp 070h		;b3b4	fe 70 	. p 
	nop			;b3b6	00 	. 
	inc bc			;b3b7	03 	. 
	call m,07881h		;b3b8	fc 81 78 	. . x 
	inc b			;b3bb	04 	. 
	nop			;b3bc	00 	. 
	ld (bc),a			;b3bd	02 	. 
	rst 38h			;b3be	ff 	. 
	adc a,h			;b3bf	8c 	. 
	rst 18h			;b3c0	df 	. 
	rst 38h			;b3c1	ff 	. 
	defb 0fdh,0ffh,0dfh	;illegal sequence		;b3c2	fd ff df 	. . . 
	rst 38h			;b3c5	ff 	. 
	rst 30h			;b3c6	f7 	. 
	sub 0f5h		;b3c7	d6 f5 	. . 
	push af			;b3c9	f5 	. 
	ld a,e			;b3ca	7b 	{ 
	sbc a,e			;b3cb	9b 	. 
	inc bc			;b3cc	03 	. 
	ex de,hl			;b3cd	eb 	. 
	ld (bc),a			;b3ce	02 	. 
	rst 30h			;b3cf	f7 	. 
	add a,(hl)			;b3d0	86 	. 
	rst 10h			;b3d1	d7 	. 
	rst 20h			;b3d2	e7 	. 
	ret pe			;b3d3	e8 	. 
	rst 20h			;b3d4	e7 	. 
	rst 28h			;b3d5	ef 	. 
	ld bc,0000dh		;b3d6	01 0d 00 	. . . 
	add a,e			;b3d9	83 	. 
	ld bc,06912h		;b3da	01 12 69 	. . i 
	rlca			;b3dd	07 	. 
	rst 38h			;b3de	ff 	. 
	add a,d			;b3df	82 	. 
	nop			;b3e0	00 	. 
	call m,0c203h		;b3e1	fc 03 c2 	. . . 
	add a,h			;b3e4	84 	. 
	call m,0c0c0h		;b3e5	fc c0 c0 	. . . 
	nop			;b3e8	00 	. 
	ld b,0c2h		;b3e9	06 c2 	. . 
	adc a,d			;b3eb	8a 	. 
	ld a,h			;b3ec	7c 	| 
	nop			;b3ed	00 	. 
	ld a,h			;b3ee	7c 	| 
	ret nz			;b3ef	c0 	. 
	ret nz			;b3f0	c0 	. 
	ld a,h			;b3f1	7c 	| 
	ld b,006h		;b3f2	06 06 	. . 
	call m,00300h		;b3f4	fc 00 03 	. . . 
	jp nz,0fe81h		;b3f7	c2 81 fe 	. . . 
	inc bc			;b3fa	03 	. 
	jp nz,00009h		;b3fb	c2 09 00 	. . . 
	adc a,c			;b3fe	89 	. 
	ld a,(hl)			;b3ff	7e 	~ 
	ret nz			;b400	c0 	. 
	ret nz			;b401	c0 	. 
	ld a,h			;b402	7c 	| 
	ld b,006h		;b403	06 06 	. . 
	call m,0ff00h		;b405	fc 00 ff 	. . . 
	ld b,018h		;b408	06 18 	. . 
	sbc a,d			;b40a	9a 	. 
	nop			;b40b	00 	. 
	jr c,lb472h		;b40c	38 64 	8 d 
	ld h,h			;b40e	64 	d 
	ld a,h			;b40f	7c 	| 
	cp 0c2h		;b410	fe c2 	. . 
	jp nz,0fc00h		;b412	c2 00 fc 	. . . 
	add a,0c6h		;b415	c6 c6 	. . 
	call m,0c6cch		;b417	fc cc c6 	. . . 
	add a,000h		;b41a	c6 00 	. . 
	call m,0c2c2h		;b41c	fc c2 c2 	. . . 
	call m,0c2c2h		;b41f	fc c2 c2 	. . . 
	call m,07c00h		;b422	fc 00 7c 	. . | 
	dec b			;b425	05 	. 
	jp nz,07c91h		;b426	c2 91 7c 	. . | 
	nop			;b429	00 	. 
	jp nz,0f2e2h		;b42a	c2 e2 f2 	. . . 
	jp c,0c6ceh		;b42d	da ce c6 	. . . 
lb430h:
	jp nz,0423ch		;b430	c2 3c 42 	. < B 
	sbc a,l			;b433	9d 	. 
lb434h:
	and c			;b434	a1 	. 
	and c			;b435	a1 	. 
	sbc a,l			;b436	9d 	. 
	ld b,d			;b437	42 	B 
lb438h:
	inc a			;b438	3c 	< 
	ld hl,l8200h		;b439	21 00 82 	! . . 
	inc c			;b43c	0c 	. 
	inc e			;b43d	1c 	. 
	inc b			;b43e	04 	. 
	inc c			;b43f	0c 	. 
	add a,e			;b440	83 	. 
	ld e,000h		;b441	1e 00 	. . 
	ld a,h			;b443	7c 	| 
	inc bc			;b444	03 	. 
	add a,08fh		;b445	c6 8f 	. . 
	ld a,(hl)			;b447	7e 	~ 
	ld b,006h		;b448	06 06 	. . 
	nop			;b44a	00 	. 
	ld a,h			;b44b	7c 	| 
	jp nz,07cc2h		;b44c	c2 c2 7c 	. . | 
	jp nz,07cc2h		;b44f	c2 c2 7c 	. . | 
	nop			;b452	00 	. 
	ld a,h			;b453	7c 	| 
	ret nz			;b454	c0 	. 
	call m,0c603h		;b455	fc 03 c6 	. . . 
	add a,c			;b458	81 	. 
	ld a,h			;b459	7c 	| 
	ld (bc),a			;b45a	02 	. 
	rst 38h			;b45b	ff 	. 
	ld (bc),a			;b45c	02 	. 
	ld a,a			;b45d	7f 	 
	add a,h			;b45e	84 	. 
	ccf			;b45f	3f 	? 
	rra			;b460	1f 	. 
	rlca			;b461	07 	. 
	nop			;b462	00 	. 
	dec c			;b463	0d 	. 
	rst 38h			;b464	ff 	. 
	add a,e			;b465	83 	. 
	rst 28h			;b466	ef 	. 
	rst 0			;b467	c7 	. 
	ld bc,0001ch		;b468	01 1c 00 	. . . 
	adc a,h			;b46b	8c 	. 
	inc bc			;b46c	03 	. 
	inc c			;b46d	0c 	. 
	jr nc,lb430h		;b46e	30 c0 	0 . 
	nop			;b470	00 	. 
	nop			;b471	00 	. 
lb472h:
	ld c,070h		;b472	0e 70 	. p 
	add a,e			;b474	83 	. 
	inc c			;b475	0c 	. 
	jr nc,lb438h		;b476	30 c0 	0 . 
	ex af,af'			;b478	08 	. 
	nop			;b479	00 	. 
	add a,(hl)			;b47a	86 	. 
	ld bc,00806h		;b47b	01 06 08 	. . . 
	jr nc,lb4c0h		;b47e	30 40 	0 @ 
	add a,b			;b480	80 	. 
	dec bc			;b481	0b 	. 
	nop			;b482	00 	. 
	add a,a			;b483	87 	. 
	inc bc			;b484	03 	. 
	rlca			;b485	07 	. 
	rrca			;b486	0f 	. 
	rrca			;b487	0f 	. 
	rra			;b488	1f 	. 
	ld a,a			;b489	7f 	 
	rst 38h			;b48a	ff 	. 
	inc b			;b48b	04 	. 
	nop			;b48c	00 	. 
	add a,e			;b48d	83 	. 
	inc bc			;b48e	03 	. 
	rra			;b48f	1f 	. 
	ld a,a			;b490	7f 	 
	ld hl,082ffh		;b491	21 ff 82 	! . . 
	rrca			;b494	0f 	. 
	djnz lb499h		;b495	10 02 	. . 
	jr nz,lb49bh		;b497	20 02 	  . 
lb499h:
	ld b,b			;b499	40 	@ 
	ld (bc),a			;b49a	02 	. 
lb49bh:
	add a,b			;b49b	80 	. 
	add a,d			;b49c	82 	. 
	ret m			;b49d	f8 	. 
	ld c,002h		;b49e	0e 02 	. . 
	rlca			;b4a0	07 	. 
	inc bc			;b4a1	03 	. 
	inc bc			;b4a2	03 	. 
	add a,c			;b4a3	81 	. 
lb4a4h:
	ld bc,00003h		;b4a4	01 03 00 	. . . 
	ld (bc),a			;b4a7	02 	. 
	add a,b			;b4a8	80 	. 
	inc bc			;b4a9	03 	. 
	ret nz			;b4aa	c0 	. 
	add a,e			;b4ab	83 	. 
	nop			;b4ac	00 	. 
	inc bc			;b4ad	03 	. 
	inc e			;b4ae	1c 	. 
	dec b			;b4af	05 	. 
	djnz lb434h		;b4b0	10 82 	. . 
	rra			;b4b2	1f 	. 
	ret po			;b4b3	e0 	. 
	inc b			;b4b4	04 	. 
	nop			;b4b5	00 	. 
	sub e			;b4b6	93 	. 
	inc bc			;b4b7	03 	. 
	ld a,h			;b4b8	7c 	| 
	ret p			;b4b9	f0 	. 
	jr lb4d8h		;b4ba	18 1c 	. . 
	ld e,01fh		;b4bc	1e 1f 	. . 
	rra			;b4be	1f 	. 
	rst 38h			;b4bf	ff 	. 
lb4c0h:
	rrca			;b4c0	0f 	. 
	nop			;b4c1	00 	. 
	nop			;b4c2	00 	. 
	jr nc,lb50dh		;b4c3	30 48 	0 H 
	ld b,h			;b4c5	44 	D 
	add a,d			;b4c6	82 	. 
	add a,c			;b4c7	81 	. 
	add a,b			;b4c8	80 	. 
	nop			;b4c9	00 	. 
	inc bc			;b4ca	03 	. 
	ld bc,00203h		;b4cb	01 03 02 	. . . 
	add a,d			;b4ce	82 	. 
	inc b			;b4cf	04 	. 
	add a,b			;b4d0	80 	. 
	ld (bc),a			;b4d1	02 	. 
	nop			;b4d2	00 	. 
	inc bc			;b4d3	03 	. 
	ld bc,00302h		;b4d4	01 02 03 	. . . 
	inc bc			;b4d7	03 	. 
lb4d8h:
	ld bc,00003h		;b4d8	01 03 00 	. . . 
	ld (bc),a			;b4db	02 	. 
	add a,b			;b4dc	80 	. 
	inc bc			;b4dd	03 	. 
	ret po			;b4de	e0 	. 
	inc b			;b4df	04 	. 
	ret p			;b4e0	f0 	. 
	add a,h			;b4e1	84 	. 
	ret m			;b4e2	f8 	. 
	ld a,b			;b4e3	78 	x 
	ld b,(hl)			;b4e4	46 	F 
	ld b,c			;b4e5	41 	A 
	inc bc			;b4e6	03 	. 
	ld b,b			;b4e7	40 	@ 
	ld (bc),a			;b4e8	02 	. 
	add a,b			;b4e9	80 	. 
	ld (bc),a			;b4ea	02 	. 
	djnz $-124		;b4eb	10 82 	. . 
	ret nc			;b4ed	d0 	. 
	ld d,b			;b4ee	50 	P 
	ld (bc),a			;b4ef	02 	. 
	ld l,b			;b4f0	68 	h 
	ld (bc),a			;b4f1	02 	. 
	ret m			;b4f2	f8 	. 
	add a,e			;b4f3	83 	. 
	ld h,b			;b4f4	60 	` 
	ld (hl),a			;b4f5	77 	w 
	ld a,b			;b4f6	78 	x 
	inc b			;b4f7	04 	. 
	nop			;b4f8	00 	. 
	adc a,c			;b4f9	89 	. 
	ld bc,0ff07h		;b4fa	01 07 ff 	. . . 
	jr lb51bh		;b4fd	18 1c 	. . 
	rra			;b4ff	1f 	. 
	ld e,01eh		;b500	1e 1e 	. . 
	call m,00102h		;b502	fc 02 01 	. . . 
	ld (bc),a			;b505	02 	. 
	ld (bc),a			;b506	02 	. 
	add a,h			;b507	84 	. 
	add a,d			;b508	82 	. 
	ld b,h			;b509	44 	D 
	inc h			;b50a	24 	$ 
	jr $+5		;b50b	18 03 	. . 
lb50dh:
	nop			;b50d	00 	. 
	ld (bc),a			;b50e	02 	. 
	ld bc,00302h		;b50f	01 02 03 	. . . 
	add a,e			;b512	83 	. 
	rlca			;b513	07 	. 
	ld b,b			;b514	40 	@ 
	ret nz			;b515	c0 	. 
	ld (bc),a			;b516	02 	. 
	ret po			;b517	e0 	. 
	ld (bc),a			;b518	02 	. 
	ret p			;b519	f0 	. 
	ld (bc),a			;b51a	02 	. 
lb51bh:
	ret po			;b51b	e0 	. 
	ld (bc),a			;b51c	02 	. 
	inc b			;b51d	04 	. 
	inc bc			;b51e	03 	. 
	ex af,af'			;b51f	08 	. 
	inc bc			;b520	03 	. 
	djnz lb4a4h		;b521	10 81 	. . 
	inc bc			;b523	03 	. 
	inc bc			;b524	03 	. 
	rlca			;b525	07 	. 
	ld (bc),a			;b526	02 	. 
	rrca			;b527	0f 	. 
	ld (bc),a			;b528	02 	. 
	nop			;b529	00 	. 
	ld b,080h		;b52a	06 80 	. . 
	ld (bc),a			;b52c	02 	. 
	nop			;b52d	00 	. 
	add a,c			;b52e	81 	. 
	ret m			;b52f	f8 	. 
	inc bc			;b530	03 	. 
	ld a,b			;b531	78 	x 
	inc b			;b532	04 	. 
	ld a,l			;b533	7d 	} 
	inc b			;b534	04 	. 
	add a,b			;b535	80 	. 
	inc b			;b536	04 	. 
	ld bc,0f804h		;b537	01 04 f8 	. . . 
	inc b			;b53a	04 	. 
	call p,01e91h		;b53b	f4 91 1e 	. . . 
	jr lb55ch		;b53e	18 1c 	. . 
	ld e,01fh		;b540	1e 1f 	. . 
	jr lb544h		;b542	18 00 	. . 
lb544h:
	nop			;b544	00 	. 
	inc c			;b545	0c 	. 
	ex af,af'			;b546	08 	. 
	ex af,af'			;b547	08 	. 
	ld a,b			;b548	78 	x 
	adc a,h			;b549	8c 	. 
	ld b,006h		;b54a	06 06 	. . 
	rlca			;b54c	07 	. 
	ex af,af'			;b54d	08 	. 
	rlca			;b54e	07 	. 
	nop			;b54f	00 	. 
	add a,c			;b550	81 	. 
	rlca			;b551	07 	. 
	ld (bc),a			;b552	02 	. 
	rrca			;b553	0f 	. 
	ld (bc),a			;b554	02 	. 
	rra			;b555	1f 	. 
	add a,c			;b556	81 	. 
	ccf			;b557	3f 	? 
	ld (bc),a			;b558	02 	. 
	ld a,002h		;b559	3e 02 	> . 
	ret nz			;b55b	c0 	. 
lb55ch:
	ld (bc),a			;b55c	02 	. 
	add a,b			;b55d	80 	. 
	inc b			;b55e	04 	. 
	nop			;b55f	00 	. 
	inc bc			;b560	03 	. 
	jr nz,lb566h		;b561	20 03 	  . 
	ld b,b			;b563	40 	@ 
	ld (bc),a			;b564	02 	. 
	add a,b			;b565	80 	. 
lb566h:
	ld b,000h		;b566	06 00 	. . 
	add a,d			;b568	82 	. 
	rst 38h			;b569	ff 	. 
	ret m			;b56a	f8 	. 
	ld b,000h		;b56b	06 00 	. . 
	add a,d			;b56d	82 	. 
	ret po			;b56e	e0 	. 
	jr nz,$+5		;b56f	20 03 	  . 
	ccf			;b571	3f 	? 
	dec b			;b572	05 	. 
	ld a,002h		;b573	3e 02 	> . 
	ld bc,00306h		;b575	01 06 03 	. . . 
	ld (bc),a			;b578	02 	. 
	call p,0e402h		;b579	f4 02 e4 	. . . 
	add a,h			;b57c	84 	. 
	jp po,0efe3h		;b57d	e2 e3 ef 	. . . 
	ret p			;b580	f0 	. 
	inc b			;b581	04 	. 
	nop			;b582	00 	. 
	adc a,(hl)			;b583	8e 	. 
	rrca			;b584	0f 	. 
	ret p			;b585	f0 	. 
	ret nz			;b586	c0 	. 
	ret p			;b587	f0 	. 
	rlca			;b588	07 	. 
	rlca			;b589	07 	. 
	rrca			;b58a	0f 	. 
	di			;b58b	f3 	. 
	ld (bc),a			;b58c	02 	. 
	ld (bc),a			;b58d	02 	. 
	inc c			;b58e	0c 	. 
	call p,sub_8000h		;b58f	f4 00 80 	. . . 
	inc b			;b592	04 	. 
	nop			;b593	00 	. 
	adc a,e			;b594	8b 	. 
	inc b			;b595	04 	. 
	ld b,01ch		;b596	06 1c 	. . 
	inc e			;b598	1c 	. 
	ex af,af'			;b599	08 	. 
	inc b			;b59a	04 	. 
	inc b			;b59b	04 	. 
	ld (bc),a			;b59c	02 	. 
	ld bc,sub_8000h		;b59d	01 00 80 	. . . 
	inc bc			;b5a0	03 	. 
	ld bc,00304h		;b5a1	01 04 03 	. . . 
	add a,c			;b5a4	81 	. 
	ret m			;b5a5	f8 	. 
	inc bc			;b5a6	03 	. 
	ret p			;b5a7	f0 	. 
	inc b			;b5a8	04 	. 
	ret po			;b5a9	e0 	. 
	ld b,020h		;b5aa	06 20 	.   
	ld (bc),a			;b5ac	02 	. 
	djnz lb5b1h		;b5ad	10 02 	. . 
	ld e,006h		;b5af	1e 06 	. . 
lb5b1h:
	inc e			;b5b1	1c 	. 
	add a,c			;b5b2	81 	. 
	inc bc			;b5b3	03 	. 
	ld c,000h		;b5b4	0e 00 	. . 
	add a,d			;b5b6	82 	. 
	rrca			;b5b7	0f 	. 
	rst 38h			;b5b8	ff 	. 
	rlca			;b5b9	07 	. 
	ret m			;b5ba	f8 	. 
	ld (bc),a			;b5bb	02 	. 
	ex af,af'			;b5bc	08 	. 
	add a,(hl)			;b5bd	86 	. 
	djnz lb5e0h		;b5be	10 20 	.   
	jr nz,$+66		;b5c0	20 40 	  @ 
	add a,b			;b5c2	80 	. 
	rst 38h			;b5c3	ff 	. 
	ld (bc),a			;b5c4	02 	. 
	rrca			;b5c5	0f 	. 
	ld (bc),a			;b5c6	02 	. 
	rra			;b5c7	1f 	. 
	ld (bc),a			;b5c8	02 	. 
	ld a,092h		;b5c9	3e 92 	> . 
	ld a,h			;b5cb	7c 	| 
	call m,sub_8000h		;b5cc	fc 00 80 	. . . 
	add a,b			;b5cf	80 	. 
	ld b,b			;b5d0	40 	@ 
	jr nz,lb5f3h		;b5d1	20 20 	    
	ld de,l800ah		;b5d3	11 0a 80 	. . . 
	ld b,b			;b5d6	40 	@ 
lb5d7h:
	jr nz,lb5f9h		;b5d7	20 20 	    
	ld d,b			;b5d9	50 	P 
	adc a,b			;b5da	88 	. 
	ex af,af'			;b5db	08 	. 
	djnz lb5eeh		;b5dc	10 10 	. . 
	nop			;b5de	00 	. 
	ld (bc),a			;b5df	02 	. 
lb5e0h:
	inc b			;b5e0	04 	. 
	add a,e			;b5e1	83 	. 
	rlca			;b5e2	07 	. 
	ld (bc),a			;b5e3	02 	. 
	ld bc,00003h		;b5e4	01 03 00 	. . . 
	inc bc			;b5e7	03 	. 
	rlca			;b5e8	07 	. 
	add a,l			;b5e9	85 	. 
	rst 8			;b5ea	cf 	. 
	dec sp			;b5eb	3b 	; 
	add a,c			;b5ec	81 	. 
	ld (hl),b			;b5ed	70 	p 
lb5eeh:
	rra			;b5ee	1f 	. 
	inc b			;b5ef	04 	. 
	ret nz			;b5f0	c0 	. 
	inc b			;b5f1	04 	. 
	add a,b			;b5f2	80 	. 
lb5f3h:
	inc b			;b5f3	04 	. 
	djnz $-122		;b5f4	10 84 	. . 
	rra			;b5f6	1f 	. 
	ex af,af'			;b5f7	08 	. 
	inc b			;b5f8	04 	. 
lb5f9h:
	inc bc			;b5f9	03 	. 
	ld (bc),a			;b5fa	02 	. 
	inc e			;b5fb	1c 	. 
	ld (bc),a			;b5fc	02 	. 
	rra			;b5fd	1f 	. 
	and a			;b5fe	a7 	. 
	cp 00eh		;b5ff	fe 0e 	. . 
	ld b,0feh		;b601	06 fe 	. . 
	ld bc,0c03eh		;b603	01 3e c0 	. > . 
	nop			;b606	00 	. 
	add a,c			;b607	81 	. 
	ld e,(hl)			;b608	5e 	^ 
	jr nz,lb60bh		;b609	20 00 	  . 
lb60bh:
	ret p			;b60b	f0 	. 
	nop			;b60c	00 	. 
	nop			;b60d	00 	. 
	rrca			;b60e	0f 	. 
	ld sp,hl			;b60f	f9 	. 
	ld bc,00202h		;b610	01 02 02 	. . . 
	ld a,b			;b613	78 	x 
	jr c,lb61eh		;b614	38 08 	8 . 
lb616h:
	ret m			;b616	f8 	. 
	ret m			;b617	f8 	. 
	ld b,001h		;b618	06 01 	. . 
	ld bc,02040h		;b61a	01 40 20 	. @   
	rra			;b61d	1f 	. 
lb61eh:
	nop			;b61e	00 	. 
	nop			;b61f	00 	. 
	ld b,009h		;b620	06 09 	. . 
	djnz lb65ch		;b622	10 38 	. 8 
	jr lb616h		;b624	18 f0 	. . 
	inc bc			;b626	03 	. 
	nop			;b627	00 	. 
	add a,l			;b628	85 	. 
	add a,b			;b629	80 	. 
	ld h,b			;b62a	60 	` 
	inc b			;b62b	04 	. 
	ld (bc),a			;b62c	02 	. 
	ld bc,00035h		;b62d	01 35 00 	. 5 . 
	ld (bc),a			;b630	02 	. 
	ld (bc),a			;b631	02 	. 
	inc b			;b632	04 	. 
	inc b			;b633	04 	. 
	ld (bc),a			;b634	02 	. 
	ex af,af'			;b635	08 	. 
	inc b			;b636	04 	. 
	inc bc			;b637	03 	. 
	inc bc			;b638	03 	. 
	rlca			;b639	07 	. 
	add a,(hl)			;b63a	86 	. 
	ld b,0a0h		;b63b	06 a0 	. . 
	ret po			;b63d	e0 	. 
	ret nz			;b63e	c0 	. 
	ret nz			;b63f	c0 	. 
	add a,b			;b640	80 	. 
	inc bc			;b641	03 	. 
	nop			;b642	00 	. 
	adc a,b			;b643	88 	. 
	djnz lb64eh		;b644	10 08 	. . 
	ex af,af'			;b646	08 	. 
	jr lb685h		;b647	18 3c 	. < 
	inc a			;b649	3c 	< 
	ld a,h			;b64a	7c 	| 
	ei			;b64b	fb 	. 
	jr c,lb64eh		;b64c	38 00 	8 . 
lb64eh:
	inc bc			;b64e	03 	. 
	ex af,af'			;b64f	08 	. 
	dec b			;b650	05 	. 
	djnz lb5d7h		;b651	10 84 	. . 
	ld c,00ch		;b653	0e 0c 	. . 
	inc c			;b655	0c 	. 
	ex af,af'			;b656	08 	. 
	ld (bc),a			;b657	02 	. 
	djnz $+5		;b658	10 03 	. . 
	nop			;b65a	00 	. 
	add a,c			;b65b	81 	. 
lb65ch:
	ld bc,00302h		;b65c	01 02 03 	. . . 
	ld (bc),a			;b65f	02 	. 
	rlca			;b660	07 	. 
	ld (bc),a			;b661	02 	. 
	rrca			;b662	0f 	. 
	add a,d			;b663	82 	. 
	call m,006e0h		;b664	fc e0 06 	. . . 
	add a,b			;b667	80 	. 
	add a,(hl)			;b668	86 	. 
	ret nz			;b669	c0 	. 
	ret po			;b66a	e0 	. 
	ret p			;b66b	f0 	. 
	ret m			;b66c	f8 	. 
	ret m			;b66d	f8 	. 
	ld a,b			;b66e	78 	x 
lb66fh:
	ld (bc),a			;b66f	02 	. 
	ld a,l			;b670	7d 	} 
	ld b,000h		;b671	06 00 	. . 
	add a,c			;b673	81 	. 
	rst 38h			;b674	ff 	. 
	rlca			;b675	07 	. 
	nop			;b676	00 	. 
	add a,d			;b677	82 	. 
	ret po			;b678	e0 	. 
	jr lb681h		;b679	18 06 	. . 
	nop			;b67b	00 	. 
	add a,d			;b67c	82 	. 
	rrca			;b67d	0f 	. 
	ex af,af'			;b67e	08 	. 
	ld b,000h		;b67f	06 00 	. . 
lb681h:
	add a,c			;b681	81 	. 
	rst 38h			;b682	ff 	. 
	ex af,af'			;b683	08 	. 
	nop			;b684	00 	. 
lb685h:
	add a,c			;b685	81 	. 
	ret nz			;b686	c0 	. 
	jr lb689h		;b687	18 00 	. . 
lb689h:
	ld (bc),a			;b689	02 	. 
	rra			;b68a	1f 	. 
	add a,a			;b68b	87 	. 
	ld a,07eh		;b68c	3e 7e 	> ~ 
	ld a,h			;b68e	7c 	| 
	call m,078f8h		;b68f	fc f8 78 	. . x 
	add a,b			;b692	80 	. 
	ld b,040h		;b693	06 40 	. @ 
	add a,c			;b695	81 	. 
	jr nz,lb69bh		;b696	20 03 	  . 
	ld a,l			;b698	7d 	} 
	add a,c			;b699	81 	. 
	ccf			;b69a	3f 	? 
lb69bh:
	inc b			;b69b	04 	. 
	ld a,081h		;b69c	3e 81 	> . 
	ld b,002h		;b69e	06 02 	. . 
	ld bc,00004h		;b6a0	01 04 00 	. . . 
	add a,l			;b6a3	85 	. 
	ret nz			;b6a4	c0 	. 
	ex af,af'			;b6a5	08 	. 
	adc a,b			;b6a6	88 	. 
	ret z			;b6a7	c8 	. 
	ret m			;b6a8	f8 	. 
	ld (bc),a			;b6a9	02 	. 
	ld (hl),b			;b6aa	70 	p 
	ld (bc),a			;b6ab	02 	. 
	jr nc,lb6b5h		;b6ac	30 07 	0 . 
	nop			;b6ae	00 	. 
	add a,l			;b6af	85 	. 
	ld e,030h		;b6b0	1e 30 	. 0 
	inc c			;b6b2	0c 	. 
	ld c,007h		;b6b3	0e 07 	. . 
lb6b5h:
	ld (bc),a			;b6b5	02 	. 
	inc bc			;b6b6	03 	. 
	ld (bc),a			;b6b7	02 	. 
	ld bc,00004h		;b6b8	01 04 00 	. . . 
	add a,h			;b6bb	84 	. 
	add a,b			;b6bc	80 	. 
	ret nz			;b6bd	c0 	. 
	ret nz			;b6be	c0 	. 
	ret po			;b6bf	e0 	. 
	ld (bc),a			;b6c0	02 	. 
	jr nz,lb6c9h		;b6c1	20 06 	  . 
	ld b,b			;b6c3	40 	@ 
	inc b			;b6c4	04 	. 
	nop			;b6c5	00 	. 
	add a,c			;b6c6	81 	. 
	ld b,b			;b6c7	40 	@ 
	ld (bc),a			;b6c8	02 	. 
lb6c9h:
	ld h,b			;b6c9	60 	` 
	ld (bc),a			;b6ca	02 	. 
	ld (hl),b			;b6cb	70 	p 
	add a,a			;b6cc	87 	. 
	jr nc,lb6dfh		;b6cd	30 10 	0 . 
	ex af,af'			;b6cf	08 	. 
	ex af,af'			;b6d0	08 	. 
	inc b			;b6d1	04 	. 
	ld (bc),a			;b6d2	02 	. 
	ld bc,02007h		;b6d3	01 07 20 	. .   
	add a,c			;b6d6	81 	. 
	djnz lb6dbh		;b6d7	10 02 	. . 
	ld a,005h		;b6d9	3e 05 	> . 
lb6dbh:
	ld e,081h		;b6db	1e 81 	. . 
	inc e			;b6dd	1c 	. 
	inc b			;b6de	04 	. 
lb6dfh:
	inc bc			;b6df	03 	. 
	inc b			;b6e0	04 	. 
	rlca			;b6e1	07 	. 
	add a,c			;b6e2	81 	. 
	ret po			;b6e3	e0 	. 
	inc bc			;b6e4	03 	. 
	ret nc			;b6e5	d0 	. 
	ld (bc),a			;b6e6	02 	. 
	sub b			;b6e7	90 	. 
	ld (bc),a			;b6e8	02 	. 
	and b			;b6e9	a0 	. 
	rlca			;b6ea	07 	. 
	jr nc,lb66fh		;b6eb	30 82 	0 . 
	ld h,b			;b6ed	60 	` 
	rra			;b6ee	1f 	. 
	inc bc			;b6ef	03 	. 
	ld e,002h		;b6f0	1e 02 	. . 
	inc a			;b6f2	3c 	< 
	ld (bc),a			;b6f3	02 	. 
	dec a			;b6f4	3d 	= 
	add a,c			;b6f5	81 	. 
	ld bc,l8105h		;b6f6	01 05 81 	. . . 
	add a,d			;b6f9	82 	. 
	ld bc,00803h		;b6fa	01 03 08 	. . . 
sub_b6fdh:
	ret po			;b6fd	e0 	. 
	ex af,af'			;b6fe	08 	. 
	add a,b			;b6ff	80 	. 
	add a,l			;b700	85 	. 
	ld a,b			;b701	78 	x 
	ld a,h			;b702	7c 	| 
	ld a,h			;b703	7c 	| 
	ld a,(hl)			;b704	7e 	~ 
	defb 0fdh,003h,0f8h	;illegal sequence		;b705	fd 03 f8 	. . . 
	add a,c			;b708	81 	. 
	ld bc,00004h		;b709	01 04 00 	. . . 
	ld (bc),a			;b70c	02 	. 
	add a,b			;b70d	80 	. 
	adc a,c			;b70e	89 	. 
	ld b,b			;b70f	40 	@ 
lb710h:
	djnz $-110		;b710	10 90 	. . 
	ld d,b			;b712	50 	P 
	ld d,b			;b713	50 	P 
	jr nc,lb74eh		;b714	30 38 	0 8 
	ld c,b			;b716	48 	H 
	adc a,c			;b717	89 	. 
	ld b,00ch		;b718	06 0c 	. . 
	add a,l			;b71a	85 	. 
	inc a			;b71b	3c 	< 
	call nz,00707h		;b71c	c4 07 07 	. . . 
	ld b,005h		;b71f	06 05 	. . 
	nop			;b721	00 	. 
	sub e			;b722	93 	. 
	ret nz			;b723	c0 	. 
	add a,b			;b724	80 	. 
	nop			;b725	00 	. 
	ld bc,00301h		;b726	01 01 03 	. . . 
	inc b			;b729	04 	. 
	ex af,af'			;b72a	08 	. 
	ld h,b			;b72b	60 	` 
	and b			;b72c	a0 	. 
	ret po			;b72d	e0 	. 
	jr nz,lb710h		;b72e	20 e0 	  . 
	jr nz,lb792h		;b730	20 60 	  ` 
	ld h,b			;b732	60 	` 
	ld a,03ch		;b733	3e 3c 	> < 
	jr nc,lb73ch		;b735	30 05 	0 . 
	nop			;b737	00 	. 
	adc a,e			;b738	8b 	. 
	inc bc			;b739	03 	. 
	inc b			;b73a	04 	. 
lb73bh:
	rlca			;b73b	07 	. 
lb73ch:
	ex af,af'			;b73c	08 	. 
	rrca			;b73d	0f 	. 
	add hl,de			;b73e	19 	. 
	inc hl			;b73f	23 	# 
	ld b,d			;b740	42 	B 
	ret po			;b741	e0 	. 
	ld b,b			;b742	40 	@ 
lb743h:
	ret nz			;b743	c0 	. 
	ld (bc),a			;b744	02 	. 
	add a,b			;b745	80 	. 
	inc bc			;b746	03 	. 
	nop			;b747	00 	. 
	add a,(hl)			;b748	86 	. 
	ret po			;b749	e0 	. 
	ld e,h			;b74a	5c 	\ 
	inc hl			;b74b	23 	# 
	djnz lb75ch		;b74c	10 0e 	. . 
lb74eh:
	ld bc,00002h		;b74e	01 02 00 	. . . 
	inc bc			;b751	03 	. 
	ret m			;b752	f8 	. 
	adc a,d			;b753	8a 	. 
	jr c,lb76eh		;b754	38 18 	8 . 
	ret m			;b756	f8 	. 
	nop			;b757	00 	. 
	nop			;b758	00 	. 
	ld hl,00c12h		;b759	21 12 0c 	! . . 
lb75ch:
	ld (bc),a			;b75c	02 	. 
	ld bc,00003h		;b75d	01 03 00 	. . . 
	add a,l			;b760	85 	. 
	ld c,014h		;b761	0e 14 	. . 
	ld (l8041h),hl		;b763	22 41 80 	" A . 
	inc bc			;b766	03 	. 
	nop			;b767	00 	. 
	add a,(hl)			;b768	86 	. 
	inc b			;b769	04 	. 
	inc e			;b76a	1c 	. 
	ld h,h			;b76b	64 	d 
	add a,a			;b76c	87 	. 
	ld (bc),a			;b76d	02 	. 
lb76eh:
	ld bc,00004h		;b76e	01 04 00 	. . . 
	and e			;b771	a3 	. 
	rlca			;b772	07 	. 
	ret m			;b773	f8 	. 
	nop			;b774	00 	. 
	nop			;b775	00 	. 
	add a,e			;b776	83 	. 
	ld a,h			;b777	7c 	| 
	jr nc,lb73bh		;b778	30 c1 	0 . 
	ld (bc),a			;b77a	02 	. 
	inc b			;b77b	04 	. 
	jr lb7deh		;b77c	18 60 	. ` 
	add a,b			;b77e	80 	. 
	nop			;b77f	00 	. 
	and b			;b780	a0 	. 
	jr nz,$+34		;b781	20 20 	    
	ccf			;b783	3f 	? 
	djnz lb78eh		;b784	10 08 	. . 
	inc b			;b786	04 	. 
	inc bc			;b787	03 	. 
	ld bc,03806h		;b788	01 06 38 	. . 8 
	ret nz			;b78b	c0 	. 
	nop			;b78c	00 	. 
	inc bc			;b78d	03 	. 
lb78eh:
	inc e			;b78e	1c 	. 
	ret po			;b78f	e0 	. 
	add a,h			;b790	84 	. 
	ex af,af'			;b791	08 	. 
lb792h:
	djnz lb7b4h		;b792	10 20 	.   
	ret nz			;b794	c0 	. 
	inc bc			;b795	03 	. 
	nop			;b796	00 	. 
	nop			;b797	00 	. 
	jr lb79ah		;b798	18 00 	. . 
lb79ah:
	sub h			;b79a	94 	. 
	ld bc,00d03h		;b79b	01 03 0d 	. . . 
	rla			;b79e	17 	. 
	push hl			;b79f	e5 	. 
	inc bc			;b7a0	03 	. 
	ld (bc),a			;b7a1	02 	. 
	ld bc,00000h		;b7a2	01 00 00 	. . . 
	add a,b			;b7a5	80 	. 
	ld h,b			;b7a6	60 	` 
	jr nz,lb7c9h		;b7a7	20 20 	    
	ret nz			;b7a9	c0 	. 
	add a,b			;b7aa	80 	. 
	ld (hl),c			;b7ab	71 	q 
	ld c,(hl)			;b7ac	4e 	N 
	ld b,c			;b7ad	41 	A 
	ld b,b			;b7ae	40 	@ 
	inc bc			;b7af	03 	. 
	jr nz,lb743h		;b7b0	20 91 	  . 
	djnz lb7b8h		;b7b2	10 04 	. . 
lb7b4h:
	dec b			;b7b4	05 	. 
	add a,a			;b7b5	87 	. 
	adc a,c			;b7b6	89 	. 
	ld d,d			;b7b7	52 	R 
lb7b8h:
	dec hl			;b7b8	2b 	+ 
	inc h			;b7b9	24 	$ 
	dec sp			;b7ba	3b 	; 
	ld b,h			;b7bb	44 	D 
	add a,h			;b7bc	84 	. 
	add a,d			;b7bd	82 	. 
	add a,e			;b7be	83 	. 
	add a,d			;b7bf	82 	. 
	call z,sub_84f4h		;b7c0	cc f4 84 	. . . 
	ex af,af'			;b7c3	08 	. 
	nop			;b7c4	00 	. 
	sbc a,e			;b7c5	9b 	. 
	inc c			;b7c6	0c 	. 
	inc bc			;b7c7	03 	. 
	dec c			;b7c8	0d 	. 
lb7c9h:
	inc (hl)			;b7c9	34 	4 
	ld c,a			;b7ca	4f 	O 
	ld e,d			;b7cb	5a 	Z 
	ld h,l			;b7cc	65 	e 
	ld e,02ah		;b7cd	1e 2a 	. * 
	call p,0d834h		;b7cf	f4 34 d8 	. 4 . 
	jr z,$+82		;b7d2	28 50 	( P 
	sub b			;b7d4	90 	. 
	rra			;b7d5	1f 	. 
	inc b			;b7d6	04 	. 
	ex af,af'			;b7d7	08 	. 
	inc c			;b7d8	0c 	. 
	dec bc			;b7d9	0b 	. 
	inc d			;b7da	14 	. 
	add hl,de			;b7db	19 	. 
	ld (hl),d			;b7dc	72 	r 
	adc a,h			;b7dd	8c 	. 
lb7deh:
	nop			;b7de	00 	. 
	rlca			;b7df	07 	. 
	rra			;b7e0	1f 	. 
	ld (bc),a			;b7e1	02 	. 
	ccf			;b7e2	3f 	? 
	inc bc			;b7e3	03 	. 
	ld a,a			;b7e4	7f 	 
	adc a,b			;b7e5	88 	. 
	nop			;b7e6	00 	. 
	ret po			;b7e7	e0 	. 
	ret m			;b7e8	f8 	. 
	call m,0fefch		;b7e9	fc fc fe 	. . . 
	jp p,008e2h		;b7ec	f2 e2 08 	. . . 
	nop			;b7ef	00 	. 
	inc bc			;b7f0	03 	. 
	ld a,a			;b7f1	7f 	 
	ld (bc),a			;b7f2	02 	. 
	inc a			;b7f3	3c 	< 
	adc a,h			;b7f4	8c 	. 
	ld e,007h		;b7f5	1e 07 	. . 
	nop			;b7f7	00 	. 
	jp po,006c6h		;b7f8	e2 c6 06 	. . . 
	inc c			;b7fb	0c 	. 
	inc e			;b7fc	1c 	. 
	ld a,b			;b7fd	78 	x 
	ret po			;b7fe	e0 	. 
	nop			;b7ff	00 	. 
	call m,0ff07h		;b800	fc 07 ff 	. . . 
	ld (bc),a			;b803	02 	. 
	nop			;b804	00 	. 
	add a,e			;b805	83 	. 
	add a,b			;b806	80 	. 
	ret p			;b807	f0 	. 
	ret m			;b808	f8 	. 
	inc bc			;b809	03 	. 
	call m,0ff06h		;b80a	fc 06 ff 	. . . 
	add a,d			;b80d	82 	. 
	cp 0f8h		;b80e	fe f8 	. . 
lb810h:
	inc bc			;b810	03 	. 
	cp 082h		;b811	fe 82 	. . 
	call m,005f8h		;b813	fc f8 05 	. . . 
	nop			;b816	00 	. 
	adc a,b			;b817	88 	. 
lb818h:
	jr nz,lb81ah		;b818	20 00 	  . 
lb81ah:
	ld (bc),a			;b81a	02 	. 
	nop			;b81b	00 	. 
	jr nz,lb81eh		;b81c	20 00 	  . 
lb81eh:
	nop			;b81e	00 	. 
	jr nz,lb82ah		;b81f	20 09 	  . 
	nop			;b821	00 	. 
	add a,c			;b822	81 	. 
	jr nz,lb829h		;b823	20 04 	  . 
	nop			;b825	00 	. 
	rlca			;b826	07 	. 
	ret nz			;b827	c0 	. 
	add a,c			;b828	81 	. 
lb829h:
	ld b,b			;b829	40 	@ 
lb82ah:
	ld b,000h		;b82a	06 00 	. . 
	add a,e			;b82c	83 	. 
	inc bc			;b82d	03 	. 
	rra			;b82e	1f 	. 
	sbc a,07fh		;b82f	de 7f 	.  
	nop			;b831	00 	. 
	ld c,b			;b832	48 	H 
	nop			;b833	00 	. 
	sub b			;b834	90 	. 
	ld bc,00402h		;b835	01 02 04 	. . . 
	ex af,af'			;b838	08 	. 
	djnz $+34		;b839	10 20 	.   
	ld b,b			;b83b	40 	@ 
	add a,b			;b83c	80 	. 
	ld bc,00402h		;b83d	01 02 04 	. . . 
	ex af,af'			;b840	08 	. 
	djnz $+34		;b841	10 20 	.   
	ld b,b			;b843	40 	@ 
	rst 38h			;b844	ff 	. 
	rlca			;b845	07 	. 
	nop			;b846	00 	. 
	add a,c			;b847	81 	. 
	rst 38h			;b848	ff 	. 
	inc b			;b849	04 	. 
	nop			;b84a	00 	. 
	adc a,h			;b84b	8c 	. 
	inc bc			;b84c	03 	. 
	inc c			;b84d	0c 	. 
	jr nc,lb810h		;b84e	30 c0 	0 . 
	nop			;b850	00 	. 
	nop			;b851	00 	. 
	ld c,070h		;b852	0e 70 	. p 
	add a,e			;b854	83 	. 
	inc c			;b855	0c 	. 
	jr nc,lb818h		;b856	30 c0 	0 . 
	ld (bc),a			;b858	02 	. 
	ld bc,00202h		;b859	01 02 02 	. . . 
	ld (bc),a			;b85c	02 	. 
	inc b			;b85d	04 	. 
	ld (bc),a			;b85e	02 	. 
	ex af,af'			;b85f	08 	. 
	add a,(hl)			;b860	86 	. 
	ld bc,00806h		;b861	01 06 08 	. . . 
	jr nc,lb8a6h		;b864	30 40 	0 @ 
	add a,b			;b866	80 	. 
	ld (bc),a			;b867	02 	. 
	nop			;b868	00 	. 
	ld (bc),a			;b869	02 	. 
	djnz lb86eh		;b86a	10 02 	. . 
	jr nz,lb870h		;b86c	20 02 	  . 
lb86eh:
	ld b,b			;b86e	40 	@ 
	add a,d			;b86f	82 	. 
lb870h:
	add a,b			;b870	80 	. 
	rst 38h			;b871	ff 	. 
	ld sp,l8100h		;b872	31 00 81 	1 . . 
	rrca			;b875	0f 	. 
	ld (bc),a			;b876	02 	. 
	rra			;b877	1f 	. 
	ld (bc),a			;b878	02 	. 
	ccf			;b879	3f 	? 
	ld (bc),a			;b87a	02 	. 
	ld a,a			;b87b	7f 	 
	add a,d			;b87c	82 	. 
	nop			;b87d	00 	. 
	ret p			;b87e	f0 	. 
	ld (bc),a			;b87f	02 	. 
	ret m			;b880	f8 	. 
	inc bc			;b881	03 	. 
	call m,0fe81h		;b882	fc 81 fe 	. . . 
	ld a,(bc)			;b885	0a 	. 
	nop			;b886	00 	. 
	add a,c			;b887	81 	. 
	inc bc			;b888	03 	. 
	dec b			;b889	05 	. 
	rrca			;b88a	0f 	. 
	add a,d			;b88b	82 	. 
	nop			;b88c	00 	. 
	rra			;b88d	1f 	. 
	inc b			;b88e	04 	. 
	rst 38h			;b88f	ff 	. 
	add a,e			;b890	83 	. 
	call m,00080h		;b891	fc 80 00 	. . . 
	dec b			;b894	05 	. 
	ret po			;b895	e0 	. 
	dec b			;b896	05 	. 
	nop			;b897	00 	. 
	add a,l			;b898	85 	. 
	jr nc,lb8d3h		;b899	30 38 	0 8 
	ld a,h			;b89b	7c 	| 
	ld a,(hl)			;b89c	7e 	~ 
	ld a,a			;b89d	7f 	 
	inc b			;b89e	04 	. 
	nop			;b89f	00 	. 
	inc bc			;b8a0	03 	. 
	ld bc,00382h		;b8a1	01 82 03 	. . . 
	ld a,a			;b8a4	7f 	 
	ld (bc),a			;b8a5	02 	. 
lb8a6h:
	rst 38h			;b8a6	ff 	. 
	inc bc			;b8a7	03 	. 
	cp 002h		;b8a8	fe 02 	. . 
	call m,0fe03h		;b8aa	fc 03 fe 	. . . 
	inc bc			;b8ad	03 	. 
	rst 38h			;b8ae	ff 	. 
	ld (bc),a			;b8af	02 	. 
	ld a,a			;b8b0	7f 	 
	add hl,bc			;b8b1	09 	. 
	nop			;b8b2	00 	. 
	add a,d			;b8b3	82 	. 
	jr c,$+64		;b8b4	38 3e 	8 > 
	inc bc			;b8b6	03 	. 
	ccf			;b8b7	3f 	? 
	ld (bc),a			;b8b8	02 	. 
	ld a,a			;b8b9	7f 	 
	inc bc			;b8ba	03 	. 
	rrca			;b8bb	0f 	. 
	add a,c			;b8bc	81 	. 
	adc a,a			;b8bd	8f 	. 
	ld (bc),a			;b8be	02 	. 
	add a,a			;b8bf	87 	. 
	ld (bc),a			;b8c0	02 	. 
	rlca			;b8c1	07 	. 
	ld (bc),a			;b8c2	02 	. 
	add a,b			;b8c3	80 	. 
	add a,c			;b8c4	81 	. 
	add a,a			;b8c5	87 	. 
	inc b			;b8c6	04 	. 
	rst 38h			;b8c7	ff 	. 
	add a,c			;b8c8	81 	. 
	cp 002h		;b8c9	fe 02 	. . 
	nop			;b8cb	00 	. 
	inc bc			;b8cc	03 	. 
	ret po			;b8cd	e0 	. 
	ld (bc),a			;b8ce	02 	. 
	pop hl			;b8cf	e1 	. 
	add a,c			;b8d0	81 	. 
	inc bc			;b8d1	03 	. 
	ld (bc),a			;b8d2	02 	. 
lb8d3h:
	nop			;b8d3	00 	. 
	inc bc			;b8d4	03 	. 
	ld bc,l8383h		;b8d5	01 83 83 	. . . 
	jp 003e7h		;b8d8	c3 e7 03 	. . . 
	rst 38h			;b8db	ff 	. 
	ld (bc),a			;b8dc	02 	. 
	cp 002h		;b8dd	fe 02 	. . 
	call m,0f882h		;b8df	fc 82 f8 	. . . 
	add a,b			;b8e2	80 	. 
	rlca			;b8e3	07 	. 
	nop			;b8e4	00 	. 
	ld (bc),a			;b8e5	02 	. 
	inc bc			;b8e6	03 	. 
	inc bc			;b8e7	03 	. 
	rlca			;b8e8	07 	. 
	inc bc			;b8e9	03 	. 
	rrca			;b8ea	0f 	. 
	add a,c			;b8eb	81 	. 
	call m,0f803h		;b8ec	fc 03 f8 	. . . 
	ld (bc),a			;b8ef	02 	. 
	ret p			;b8f0	f0 	. 
	ld (bc),a			;b8f1	02 	. 
	rst 38h			;b8f2	ff 	. 
	ld b,07fh		;b8f3	06 7f 	.  
	ld (bc),a			;b8f5	02 	. 
	rst 38h			;b8f6	ff 	. 
	add a,c			;b8f7	81 	. 
	nop			;b8f8	00 	. 
	rlca			;b8f9	07 	. 
	add a,b			;b8fa	80 	. 
	inc b			;b8fb	04 	. 
	ld a,a			;b8fc	7f 	 
	inc b			;b8fd	04 	. 
	cp 004h		;b8fe	fe 04 	. . 
	rlca			;b900	07 	. 
	inc b			;b901	04 	. 
	inc bc			;b902	03 	. 
	dec b			;b903	05 	. 
	ret po			;b904	e0 	. 
	add a,h			;b905	84 	. 
	rst 20h			;b906	e7 	. 
	rst 38h			;b907	ff 	. 
	rst 38h			;b908	ff 	. 
	inc bc			;b909	03 	. 
	inc bc			;b90a	03 	. 
	rlca			;b90b	07 	. 
	add a,l			;b90c	85 	. 
	ld (hl),e			;b90d	73 	s 
	ld sp,hl			;b90e	f9 	. 
	ld sp,hl			;b90f	f9 	. 
	ret m			;b910	f8 	. 
	rst 30h			;b911	f7 	. 
	rlca			;b912	07 	. 
	rst 38h			;b913	ff 	. 
	add a,c			;b914	81 	. 
	ret m			;b915	f8 	. 
	ld (bc),a			;b916	02 	. 
	ret p			;b917	f0 	. 
	ld (bc),a			;b918	02 	. 
	ret po			;b919	e0 	. 
	inc bc			;b91a	03 	. 
	ret nz			;b91b	c0 	. 
	ex af,af'			;b91c	08 	. 
	nop			;b91d	00 	. 
	inc bc			;b91e	03 	. 
	rra			;b91f	1f 	. 
	inc bc			;b920	03 	. 
	ccf			;b921	3f 	? 
	ld (bc),a			;b922	02 	. 
	ld a,a			;b923	7f 	 
	ld b,0ffh		;b924	06 ff 	. . 
	ld (bc),a			;b926	02 	. 
	nop			;b927	00 	. 
	ld b,0ffh		;b928	06 ff 	. . 
	ld (bc),a			;b92a	02 	. 
	rra			;b92b	1f 	. 
	inc bc			;b92c	03 	. 
	ret nz			;b92d	c0 	. 
	dec b			;b92e	05 	. 
	pop bc			;b92f	c1 	. 
	ld (bc),a			;b930	02 	. 
	cp 006h		;b931	fe 06 	. . 
	call m,00304h		;b933	fc 04 03 	. . . 
	add a,h			;b936	84 	. 
	ld bc,00000h		;b937	01 00 00 	. . . 
	rrca			;b93a	0f 	. 
	inc b			;b93b	04 	. 
	rst 38h			;b93c	ff 	. 
	add a,c			;b93d	81 	. 
	ret p			;b93e	f0 	. 
	inc bc			;b93f	03 	. 
	nop			;b940	00 	. 
	ld (bc),a			;b941	02 	. 
	ret m			;b942	f8 	. 
	add a,d			;b943	82 	. 
	ret p			;b944	f0 	. 
	nop			;b945	00 	. 
	ld (bc),a			;b946	02 	. 
	ld bc,00302h		;b947	01 02 03 	. . . 
	add a,d			;b94a	82 	. 
	rst 38h			;b94b	ff 	. 
	ld a,a			;b94c	7f 	 
	inc b			;b94d	04 	. 
	rst 38h			;b94e	ff 	. 
	adc a,e			;b94f	8b 	. 
	ei			;b950	fb 	. 
	ld sp,hl			;b951	f9 	. 
	ret po			;b952	e0 	. 
	ret po			;b953	e0 	. 
	ret p			;b954	f0 	. 
	ret m			;b955	f8 	. 
	ret m			;b956	f8 	. 
	call m,0fffeh		;b957	fc fe ff 	. . . 
	ld a,a			;b95a	7f 	 
	inc bc			;b95b	03 	. 
	cp 004h		;b95c	fe 04 	. . 
	call m,00008h		;b95e	fc 08 00 	. . . 
	ld b,01fh		;b961	06 1f 	. . 
	ld (bc),a			;b963	02 	. 
	rrca			;b964	0f 	. 
	ld (bc),a			;b965	02 	. 
	pop hl			;b966	e1 	. 
	ld b,0e3h		;b967	06 e3 	. . 
	add a,c			;b969	81 	. 
	call m,0ff0eh		;b96a	fc 0e ff 	. . . 
	add a,c			;b96d	81 	. 
	ret p			;b96e	f0 	. 
	ex af,af'			;b96f	08 	. 
	nop			;b970	00 	. 
	ld (bc),a			;b971	02 	. 
	rlca			;b972	07 	. 
	add a,(hl)			;b973	86 	. 
	rrca			;b974	0f 	. 
	rra			;b975	1f 	. 
	rra			;b976	1f 	. 
	ccf			;b977	3f 	? 
	ld a,a			;b978	7f 	 
	nop			;b979	00 	. 
	ld (bc),a			;b97a	02 	. 
	ret p			;b97b	f0 	. 
	ld (bc),a			;b97c	02 	. 
	ret po			;b97d	e0 	. 
	ld (bc),a			;b97e	02 	. 
	ret nz			;b97f	c0 	. 
	adc a,a			;b980	8f 	. 
	add a,b			;b981	80 	. 
	nop			;b982	00 	. 
	rst 38h			;b983	ff 	. 
	ld a,a			;b984	7f 	 
	ld a,a			;b985	7f 	 
	ccf			;b986	3f 	? 
	rra			;b987	1f 	. 
	rra			;b988	1f 	. 
	ld c,004h		;b989	0e 04 	. . 
	nop			;b98b	00 	. 
	add a,b			;b98c	80 	. 
	ret nz			;b98d	c0 	. 
	ret nz			;b98e	c0 	. 
	add a,b			;b98f	80 	. 
	inc bc			;b990	03 	. 
	nop			;b991	00 	. 
	add a,(hl)			;b992	86 	. 
	ret z			;b993	c8 	. 
	call z,0cfceh		;b994	cc ce cf 	. . . 
	rst 8			;b997	cf 	. 
	call 0cc02h		;b998	cd 02 cc 	. . . 
	rlca			;b99b	07 	. 
	ret nz			;b99c	c0 	. 
	add a,c			;b99d	81 	. 
	ld b,b			;b99e	40 	@ 
	ld (bc),a			;b99f	02 	. 
	inc bc			;b9a0	03 	. 
	ld b,000h		;b9a1	06 00 	. . 
	inc bc			;b9a3	03 	. 
	ret m			;b9a4	f8 	. 
	add a,c			;b9a5	81 	. 
	jr nc,lb9b4h		;b9a6	30 0c 	0 . 
	nop			;b9a8	00 	. 
	inc b			;b9a9	04 	. 
	rrca			;b9aa	0f 	. 
	inc b			;b9ab	04 	. 
	nop			;b9ac	00 	. 
	ld (bc),a			;b9ad	02 	. 
	ex (sp),hl			;b9ae	e3 	. 
	ld (bc),a			;b9af	02 	. 
	ret po			;b9b0	e0 	. 
	inc b			;b9b1	04 	. 
	nop			;b9b2	00 	. 
	add a,d			;b9b3	82 	. 
lb9b4h:
	cp 0c0h		;b9b4	fe c0 	. . 
	inc c			;b9b6	0c 	. 
	nop			;b9b7	00 	. 
	ld (bc),a			;b9b8	02 	. 
	ld bc,00005h		;b9b9	01 05 00 	. . . 
	add a,c			;b9bc	81 	. 
	ret m			;b9bd	f8 	. 
	ld (bc),a			;b9be	02 	. 
	cp 006h		;b9bf	fe 06 	. . 
	nop			;b9c1	00 	. 
	add a,d			;b9c2	82 	. 
	ld b,00fh		;b9c3	06 0f 	. . 
	rlca			;b9c5	07 	. 
	nop			;b9c6	00 	. 
	add a,c			;b9c7	81 	. 
	add a,b			;b9c8	80 	. 
	dec bc			;b9c9	0b 	. 
	nop			;b9ca	00 	. 
	ld (bc),a			;b9cb	02 	. 
	ex (sp),hl			;b9cc	e3 	. 
	add a,e			;b9cd	83 	. 
	rst 30h			;b9ce	f7 	. 
	push de			;b9cf	d5 	. 
	defb 0ddh,003h,000h	;illegal sequence		;b9d0	dd 03 00 	. . . 
	dec b			;b9d3	05 	. 
	sbc a,c			;b9d4	99 	. 
	inc bc			;b9d5	03 	. 
	nop			;b9d6	00 	. 
	add a,l			;b9d7	85 	. 
	ret p			;b9d8	f0 	. 
	ret m			;b9d9	f8 	. 
	sbc a,c			;b9da	99 	. 
	sbc a,c			;b9db	99 	. 
	ld sp,hl			;b9dc	f9 	. 
	inc bc			;b9dd	03 	. 
	nop			;b9de	00 	. 
	add a,d			;b9df	82 	. 
	pop hl			;b9e0	e1 	. 
	ex (sp),hl			;b9e1	e3 	. 
	inc bc			;b9e2	03 	. 
	or e			;b9e3	b3 	. 
	inc bc			;b9e4	03 	. 
	nop			;b9e5	00 	. 
	add a,e			;b9e6	83 	. 
	and 0f6h		;b9e7	e6 f6 	. . 
	ld (hl),002h		;b9e9	36 02 	6 . 
	ld b,003h		;b9eb	06 03 	. . 
	nop			;b9ed	00 	. 
	ld (bc),a			;b9ee	02 	. 
	rra			;b9ef	1f 	. 
	add a,c			;b9f0	81 	. 
	jr lb9f5h		;b9f1	18 02 	. . 
	rra			;b9f3	1f 	. 
	ld (bc),a			;b9f4	02 	. 
lb9f5h:
	ld bc,00304h		;b9f5	01 04 03 	. . . 
	ld (bc),a			;b9f8	02 	. 
	rlca			;b9f9	07 	. 
	inc b			;b9fa	04 	. 
	call m,0f803h		;b9fb	fc 03 f8 	. . . 
	add a,c			;b9fe	81 	. 
	ld sp,hl			;b9ff	f9 	. 
	ld (bc),a			;ba00	02 	. 
	rra			;ba01	1f 	. 
	ld (bc),a			;ba02	02 	. 
	ccf			;ba03	3f 	? 
	add a,c			;ba04	81 	. 
	ld a,a			;ba05	7f 	 
	inc bc			;ba06	03 	. 
	rst 38h			;ba07	ff 	. 
	adc a,e			;ba08	8b 	. 
	ret po			;ba09	e0 	. 
	ret p			;ba0a	f0 	. 
	ret p			;ba0b	f0 	. 
	ret po			;ba0c	e0 	. 
	ret nz			;ba0d	c0 	. 
	ret nz			;ba0e	c0 	. 
	add a,b			;ba0f	80 	. 
	nop			;ba10	00 	. 
	ret			;ba11	c9 	. 
	ret			;ba12	c9 	. 
	pop bc			;ba13	c1 	. 
lba14h:
	dec b			;ba14	05 	. 
	nop			;ba15	00 	. 
	inc bc			;ba16	03 	. 
	sbc a,c			;ba17	99 	. 
	dec b			;ba18	05 	. 
	nop			;ba19	00 	. 
	add a,h			;ba1a	84 	. 
	di			;ba1b	f3 	. 
	sbc a,e			;ba1c	9b 	. 
	sbc a,e			;ba1d	9b 	. 
	nop			;ba1e	00 	. 
	inc bc			;ba1f	03 	. 
	ld h,(hl)			;ba20	66 	f 
	sub (hl)			;ba21	96 	. 
	ld (hl),0fbh		;ba22	36 fb 	6 . 
	dec de			;ba24	1b 	. 
	add hl,de			;ba25	19 	. 
	nop			;ba26	00 	. 
	ld h,a			;ba27	67 	g 
	ld l,a			;ba28	6f 	o 
	ld l,h			;ba29	6c 	l 
	call z,0f736h		;ba2a	cc 36 f7 	. 6 . 
	rst 20h			;ba2d	e7 	. 
	nop			;ba2e	00 	. 
	sbc a,a			;ba2f	9f 	. 
	rst 18h			;ba30	df 	. 
	exx			;ba31	d9 	. 
	exx			;ba32	d9 	. 
	jr lba14h		;ba33	18 df 	. . 
	rst 18h			;ba35	df 	. 
	nop			;ba36	00 	. 
	jr nc,lba3ch		;ba37	30 03 	0 . 
	or b			;ba39	b0 	. 
	inc b			;ba3a	04 	. 
	nop			;ba3b	00 	. 
lba3ch:
	add a,d			;ba3c	82 	. 
	ret m			;ba3d	f8 	. 
	call m,0cc02h		;ba3e	fc 02 cc 	. . . 
	inc bc			;ba41	03 	. 
	rlca			;ba42	07 	. 
	dec b			;ba43	05 	. 
	rrca			;ba44	0f 	. 
	add a,h			;ba45	84 	. 
	pop af			;ba46	f1 	. 
	di			;ba47	f3 	. 
	di			;ba48	f3 	. 
	rst 30h			;ba49	f7 	. 
	ld (bc),a			;ba4a	02 	. 
	rst 28h			;ba4b	ef 	. 
	inc bc			;ba4c	03 	. 
	rst 38h			;ba4d	ff 	. 
	add a,c			;ba4e	81 	. 
	cp 002h		;ba4f	fe 02 	. . 
	call m,0f802h		;ba51	fc 02 f8 	. . . 
	ld (bc),a			;ba54	02 	. 
	ret p			;ba55	f0 	. 
	add a,d			;ba56	82 	. 
	inc bc			;ba57	03 	. 
	rra			;ba58	1f 	. 
	ld b,07fh		;ba59	06 7f 	.  
	dec b			;ba5b	05 	. 
	nop			;ba5c	00 	. 
	inc bc			;ba5d	03 	. 
	add a,b			;ba5e	80 	. 
	rlca			;ba5f	07 	. 
	nop			;ba60	00 	. 
	add a,c			;ba61	81 	. 
	rst 38h			;ba62	ff 	. 
	rlca			;ba63	07 	. 
	nop			;ba64	00 	. 
	add a,c			;ba65	81 	. 
	ret po			;ba66	e0 	. 
	rlca			;ba67	07 	. 
	nop			;ba68	00 	. 
	add a,c			;ba69	81 	. 
	rlca			;ba6a	07 	. 
	ld (bc),a			;ba6b	02 	. 
	ccf			;ba6c	3f 	? 
	ld (bc),a			;ba6d	02 	. 
	add hl,de			;ba6e	19 	. 
	inc bc			;ba6f	03 	. 
	nop			;ba70	00 	. 
	add a,l			;ba71	85 	. 
	rst 38h			;ba72	ff 	. 
	call z,sub_8fcch		;ba73	cc cc 8f 	. . . 
	add a,a			;ba76	87 	. 
	inc b			;ba77	04 	. 
	nop			;ba78	00 	. 
	ld (bc),a			;ba79	02 	. 
	rst 18h			;ba7a	df 	. 
	add a,d			;ba7b	82 	. 
	exx			;ba7c	d9 	. 
	sbc a,c			;ba7d	99 	. 
	inc b			;ba7e	04 	. 
	nop			;ba7f	00 	. 
	ld (bc),a			;ba80	02 	. 
	jr nc,lba85h		;ba81	30 02 	0 . 
	cp (hl)			;ba83	be 	. 
	inc b			;ba84	04 	. 
lba85h:
	nop			;ba85	00 	. 
	ex af,af'			;ba86	08 	. 
	rst 38h			;ba87	ff 	. 
	ld (bc),a			;ba88	02 	. 
	ret po			;ba89	e0 	. 
	add a,c			;ba8a	81 	. 
	ret nz			;ba8b	c0 	. 
	ld (bc),a			;ba8c	02 	. 
	add a,b			;ba8d	80 	. 
	ld (bc),a			;ba8e	02 	. 
	nop			;ba8f	00 	. 
	add a,d			;ba90	82 	. 
	add a,b			;ba91	80 	. 
	ld a,a			;ba92	7f 	 
	ld b,03fh		;ba93	06 3f 	. ? 
	add a,c			;ba95	81 	. 
	rra			;ba96	1f 	. 
	inc bc			;ba97	03 	. 
	add a,b			;ba98	80 	. 
	add a,c			;ba99	81 	. 
	ret nz			;ba9a	c0 	. 
	inc b			;ba9b	04 	. 
	pop bc			;ba9c	c1 	. 
	add a,c			;ba9d	81 	. 
	ret m			;ba9e	f8 	. 
	ld (bc),a			;ba9f	02 	. 
	cp 004h		;baa0	fe 04 	. . 
	rst 38h			;baa2	ff 	. 
	add a,c			;baa3	81 	. 
	ccf			;baa4	3f 	? 
	inc b			;baa5	04 	. 
	rlca			;baa6	07 	. 
	ld (bc),a			;baa7	02 	. 
	adc a,a			;baa8	8f 	. 
	ld (bc),a			;baa9	02 	. 
	rst 8			;baaa	cf 	. 
	rlca			;baab	07 	. 
	rst 38h			;baac	ff 	. 
	add a,l			;baad	85 	. 
	pop hl			;baae	e1 	. 
	ret nz			;baaf	c0 	. 
	ret p			;bab0	f0 	. 
	ret p			;bab1	f0 	. 
	ret m			;bab2	f8 	. 
	ld (bc),a			;bab3	02 	. 
	call m,0fe02h		;bab4	fc 02 fe 	. . . 
	ex af,af'			;bab7	08 	. 
	nop			;bab8	00 	. 
	ld (bc),a			;bab9	02 	. 
	rra			;baba	1f 	. 
	ld b,03fh		;babb	06 3f 	. ? 
	inc b			;babd	04 	. 
	rst 38h			;babe	ff 	. 
	adc a,h			;babf	8c 	. 
	cp a			;bac0	bf 	. 
	sbc a,a			;bac1	9f 	. 
	sbc a,a			;bac2	9f 	. 
	adc a,a			;bac3	8f 	. 
	add a,b			;bac4	80 	. 
	ret nz			;bac5	c0 	. 
	ret po			;bac6	e0 	. 
	ret p			;bac7	f0 	. 
	ret p			;bac8	f0 	. 
	ret m			;bac9	f8 	. 
	call m,007feh		;baca	fc fe 07 	. . . 
	rra			;bacd	1f 	. 
	add a,c			;bace	81 	. 
	rrca			;bacf	0f 	. 
	ld (bc),a			;bad0	02 	. 
	pop bc			;bad1	c1 	. 
	dec b			;bad2	05 	. 
	pop hl			;bad3	e1 	. 
	add a,c			;bad4	81 	. 
	ex (sp),hl			;bad5	e3 	. 
	inc b			;bad6	04 	. 
	call m,0f804h		;bad7	fc 04 f8 	. . . 
	add a,c			;bada	81 	. 
	rra			;badb	1f 	. 
	dec b			;badc	05 	. 
	rrca			;badd	0f 	. 
	ld (bc),a			;bade	02 	. 
	rra			;badf	1f 	. 
	rlca			;bae0	07 	. 
	rst 8			;bae1	cf 	. 
	add a,c			;bae2	81 	. 
	sbc a,a			;bae3	9f 	. 
	inc b			;bae4	04 	. 
	ret po			;bae5	e0 	. 
	inc b			;bae6	04 	. 
	ret nz			;bae7	c0 	. 
	add a,c			;bae8	81 	. 
	cp 005h		;bae9	fe 05 	. . 
	ld a,(hl)			;baeb	7e 	~ 
	add a,d			;baec	82 	. 
	cp 0fch		;baed	fe fc 	. . 
	ex af,af'			;baef	08 	. 
	nop			;baf0	00 	. 
	ex af,af'			;baf1	08 	. 
	ld a,a			;baf2	7f 	 
	add a,h			;baf3	84 	. 
	add a,a			;baf4	87 	. 
	add a,e			;baf5	83 	. 
	add a,e			;baf6	83 	. 
	add a,c			;baf7	81 	. 
	inc b			;baf8	04 	. 
	nop			;baf9	00 	. 
	add a,c			;bafa	81 	. 
	cp 004h		;bafb	fe 04 	. . 
	rst 38h			;bafd	ff 	. 
	ld (bc),a			;bafe	02 	. 
	ld a,a			;baff	7f 	 
	add a,c			;bb00	81 	. 
	ccf			;bb01	3f 	? 
	ld (bc),a			;bb02	02 	. 
	rrca			;bb03	0f 	. 
	ld (bc),a			;bb04	02 	. 
	adc a,a			;bb05	8f 	. 
	add a,h			;bb06	84 	. 
	rst 8			;bb07	cf 	. 
	rst 0			;bb08	c7 	. 
	add a,a			;bb09	87 	. 
	ld b,006h		;bb0a	06 06 	. . 
	di			;bb0c	f3 	. 
	add a,l			;bb0d	85 	. 
	jp 0f803h		;bb0e	c3 03 f8 	. . . 
	ret m			;bb11	f8 	. 
	ld sp,hl			;bb12	f9 	. 
	dec b			;bb13	05 	. 
	rst 38h			;bb14	ff 	. 
	adc a,c			;bb15	89 	. 
	ccf			;bb16	3f 	? 
	ld a,a			;bb17	7f 	 
	rst 38h			;bb18	ff 	. 
	cp 0feh		;bb19	fe fe 	. . 
	call m,0f0f8h		;bb1b	fc f8 f0 	. . . 
	sbc a,a			;bb1e	9f 	. 
	rlca			;bb1f	07 	. 
	rra			;bb20	1f 	. 
	add a,e			;bb21	83 	. 
	pop bc			;bb22	c1 	. 
	jp 005cfh		;bb23	c3 cf 05 	. . . 
	rst 38h			;bb26	ff 	. 
	add a,c			;bb27	81 	. 
	call m,0f802h		;bb28	fc 02 f8 	. . . 
	ld (bc),a			;bb2b	02 	. 
	ret p			;bb2c	f0 	. 
	add a,e			;bb2d	83 	. 
	ret po			;bb2e	e0 	. 
	ret nz			;bb2f	c0 	. 
	add a,b			;bb30	80 	. 
	ex af,af'			;bb31	08 	. 
	nop			;bb32	00 	. 
	add a,d			;bb33	82 	. 
	rra			;bb34	1f 	. 
	inc bc			;bb35	03 	. 
	ld c,000h		;bb36	0e 00 	. . 
	add a,d			;bb38	82 	. 
	ld e,00ch		;bb39	1e 0c 	. . 
	ld c,000h		;bb3b	0e 00 	. . 
	inc bc			;bb3d	03 	. 
	inc bc			;bb3e	03 	. 
	dec b			;bb3f	05 	. 
	nop			;bb40	00 	. 
	ld (bc),a			;bb41	02 	. 
	rst 38h			;bb42	ff 	. 
	add a,c			;bb43	81 	. 
	ret m			;bb44	f8 	. 
	dec b			;bb45	05 	. 
	nop			;bb46	00 	. 
	add a,c			;bb47	81 	. 
	ret nz			;bb48	c0 	. 
	rlca			;bb49	07 	. 
	nop			;bb4a	00 	. 
	inc bc			;bb4b	03 	. 
	rra			;bb4c	1f 	. 
	dec b			;bb4d	05 	. 
	nop			;bb4e	00 	. 
	add a,e			;bb4f	83 	. 
	cp 0f8h		;bb50	fe f8 	. . 
	ret nz			;bb52	c0 	. 
	dec c			;bb53	0d 	. 
	nop			;bb54	00 	. 
	nop			;bb55	00 	. 
	jr lbb58h		;bb56	18 00 	. . 
lbb58h:
	adc a,h			;bb58	8c 	. 
	cp 0fch		;bb59	fe fc 	. . 
	jp p,002e0h		;bb5b	f2 e0 02 	. . . 
	nop			;bb5e	00 	. 
	ld bc,07800h		;bb5f	01 00 78 	. . x 
	cp (hl)			;bb62	be 	. 
	ld c,a			;bb63	4f 	O 
	add a,e			;bb64	83 	. 
	ld (bc),a			;bb65	02 	. 
	ret nz			;bb66	c0 	. 
	ld (bc),a			;bb67	02 	. 
	nop			;bb68	00 	. 
	sbc a,b			;bb69	98 	. 
	ld c,031h		;bb6a	0e 31 	. 1 
	cp (hl)			;bb6c	be 	. 
	cp a			;bb6d	bf 	. 
	rst 18h			;bb6e	df 	. 
	ld e,a			;bb6f	5f 	_ 
	rra			;bb70	1f 	. 
	rrca			;bb71	0f 	. 
	ei			;bb72	fb 	. 
	jp m,07678h		;bb73	fa 78 76 	. x v 
	xor l			;bb76	ad 	. 
	call nc,0c4dbh		;bb77	d4 db c4 	. . . 
	cp e			;bb7a	bb 	. 
	ld a,e			;bb7b	7b 	{ 
	ld a,l			;bb7c	7d 	} 
	ld a,h			;bb7d	7c 	| 
	ld a,l			;bb7e	7d 	} 
	inc sp			;bb7f	33 	3 
	dec bc			;bb80	0b 	. 
	ld a,e			;bb81	7b 	{ 
	ex af,af'			;bb82	08 	. 
	nop			;bb83	00 	. 
	sbc a,b			;bb84	98 	. 
	inc bc			;bb85	03 	. 
	nop			;bb86	00 	. 
	ld (bc),a			;bb87	02 	. 
	dec bc			;bb88	0b 	. 
	jr nc,lbbb0h		;bb89	30 25 	0 % 
	ld a,(de)			;bb8b	1a 	. 
	nop			;bb8c	00 	. 
	push de			;bb8d	d5 	. 
	dec bc			;bb8e	0b 	. 
	sla a		;bb8f	cb 27 	. ' 
	rst 0			;bb91	c7 	. 
	adc a,a			;bb92	8f 	. 
	rrca			;bb93	0f 	. 
	nop			;bb94	00 	. 
	ei			;bb95	fb 	. 
	rst 30h			;bb96	f7 	. 
	di			;bb97	f3 	. 
	call p,0e6ebh		;bb98	f4 eb e6 	. . . 
	adc a,l			;bb9b	8d 	. 
	ld (hl),e			;bb9c	73 	s 
	djnz lbb9fh		;bb9d	10 00 	. . 
lbb9fh:
	adc a,b			;bb9f	88 	. 
	ld (hl),a			;bba0	77 	w 
	ld a,a			;bba1	7f 	 
	ld e,a			;bba2	5f 	_ 
	ld e,a			;bba3	5f 	_ 
	ld e,l			;bba4	5d 	] 
	ld a,l			;bba5	7d 	} 
	ld a,a			;bba6	7f 	 
	ld (hl),a			;bba7	77 	w 
	jr c,lbbaah		;bba8	38 00 	8 . 
lbbaah:
	sub b			;bbaa	90 	. 
	inc c			;bbab	0c 	. 
	dec c			;bbac	0d 	. 
	rrca			;bbad	0f 	. 
	rrca			;bbae	0f 	. 
	add a,(hl)			;bbaf	86 	. 
lbbb0h:
	and 076h		;bbb0	e6 76 	. v 
	ld (hl),036h		;bbb2	36 36 	6 6 
	inc e			;bbb4	1c 	. 
	inc c			;bbb5	0c 	. 
	inc c			;bbb6	0c 	. 
	inc e			;bbb7	1c 	. 
	rra			;bbb8	1f 	. 
	rra			;bbb9	1f 	. 
	jr $+129		;bbba	18 7f 	.  
	nop			;bbbc	00 	. 
	ld e,c			;bbbd	59 	Y 
	nop			;bbbe	00 	. 
	sub b			;bbbf	90 	. 
	ld bc,00402h		;bbc0	01 02 04 	. . . 
	ex af,af'			;bbc3	08 	. 
	djnz lbbe6h		;bbc4	10 20 	.   
	ld b,b			;bbc6	40 	@ 
	add a,b			;bbc7	80 	. 
	ld bc,00402h		;bbc8	01 02 04 	. . . 
	ex af,af'			;bbcb	08 	. 
	djnz lbbeeh		;bbcc	10 20 	.   
	ld b,b			;bbce	40 	@ 
	rst 38h			;bbcf	ff 	. 
	rlca			;bbd0	07 	. 
	nop			;bbd1	00 	. 
	add a,c			;bbd2	81 	. 
	rst 38h			;bbd3	ff 	. 
	djnz lbbd6h		;bbd4	10 00 	. . 
lbbd6h:
	ld (bc),a			;bbd6	02 	. 
	ld bc,00202h		;bbd7	01 02 02 	. . . 
	ld (bc),a			;bbda	02 	. 
	inc b			;bbdb	04 	. 
	ld (bc),a			;bbdc	02 	. 
	ex af,af'			;bbdd	08 	. 
	ex af,af'			;bbde	08 	. 
	nop			;bbdf	00 	. 
	ld (bc),a			;bbe0	02 	. 
	djnz lbbe5h		;bbe1	10 02 	. . 
	jr nz,lbbe7h		;bbe3	20 02 	  . 
lbbe5h:
	ld b,b			;bbe5	40 	@ 
lbbe6h:
	adc a,d			;bbe6	8a 	. 
lbbe7h:
	add a,b			;bbe7	80 	. 
	rst 38h			;bbe8	ff 	. 
	nop			;bbe9	00 	. 
	nop			;bbea	00 	. 
	inc bc			;bbeb	03 	. 
	rlca			;bbec	07 	. 
	rlca			;bbed	07 	. 
lbbeeh:
	rrca			;bbee	0f 	. 
	rra			;bbef	1f 	. 
	ld a,a			;bbf0	7f 	 
	dec b			;bbf1	05 	. 
	nop			;bbf2	00 	. 
	add a,h			;bbf3	84 	. 
	inc bc			;bbf4	03 	. 
	rra			;bbf5	1f 	. 
	ld a,a			;bbf6	7f 	 
	nop			;bbf7	00 	. 
	rlca			;bbf8	07 	. 
	rst 38h			;bbf9	ff 	. 
	add a,(hl)			;bbfa	86 	. 
	nop			;bbfb	00 	. 
	di			;bbfc	f3 	. 
	rst 28h			;bbfd	ef 	. 
	rst 18h			;bbfe	df 	. 
	rst 18h			;bbff	df 	. 
	cp a			;bc00	bf 	. 
	ld (bc),a			;bc01	02 	. 
	ld a,a			;bc02	7f 	 
	ex af,af'			;bc03	08 	. 
	rst 38h			;bc04	ff 	. 
	add a,h			;bc05	84 	. 
	ld a,a			;bc06	7f 	 
	cp a			;bc07	bf 	. 
	rst 8			;bc08	cf 	. 
	di			;bc09	f3 	. 
	ld (bc),a			;bc0a	02 	. 
	defb 0fdh,002h,0feh	;illegal sequence		;bc0b	fd 02 fe 	. . . 
	ld a,(bc)			;bc0e	0a 	. 
	nop			;bc0f	00 	. 
	add a,c			;bc10	81 	. 
	ld (bc),a			;bc11	02 	. 
	inc b			;bc12	04 	. 
	ld bc,00006h		;bc13	01 06 00 	. . . 
	inc bc			;bc16	03 	. 
	add a,b			;bc17	80 	. 
	rrca			;bc18	0f 	. 
	nop			;bc19	00 	. 
	add a,l			;bc1a	85 	. 
	inc bc			;bc1b	03 	. 
	nop			;bc1c	00 	. 
	nop			;bc1d	00 	. 
	ex af,af'			;bc1e	08 	. 
	inc c			;bc1f	0c 	. 
	inc bc			;bc20	03 	. 
	ld c,081h		;bc21	0e 81 	. . 
	or 016h		;bc23	f6 16 	. . 
	nop			;bc25	00 	. 
	ld (bc),a			;bc26	02 	. 
	ld bc,00008h		;bc27	01 08 00 	. . . 
	inc bc			;bc2a	03 	. 
	ret nz			;bc2b	c0 	. 
	inc b			;bc2c	04 	. 
	ld h,b			;bc2d	60 	` 
	add a,c			;bc2e	81 	. 
	ld (hl),b			;bc2f	70 	p 
	ld c,000h		;bc30	0e 00 	. . 
	ld (bc),a			;bc32	02 	. 
	ld h,b			;bc33	60 	` 
	add a,d			;bc34	82 	. 
	rra			;bc35	1f 	. 
	jr z,lbc3eh		;bc36	28 06 	( . 
	nop			;bc38	00 	. 
	add a,h			;bc39	84 	. 
	jp m,00000h		;bc3a	fa 00 00 	. . . 
	ex af,af'			;bc3d	08 	. 
lbc3eh:
	inc bc			;bc3e	03 	. 
	inc c			;bc3f	0c 	. 
	add a,c			;bc40	81 	. 
	ex af,af'			;bc41	08 	. 
	dec c			;bc42	0d 	. 
	nop			;bc43	00 	. 
	ld (bc),a			;bc44	02 	. 
	ld bc,00385h		;bc45	01 85 03 	. . . 
	nop			;bc48	00 	. 
	nop			;bc49	00 	. 
	ld b,b			;bc4a	40 	@ 
	ret nz			;bc4b	c0 	. 
	ld (bc),a			;bc4c	02 	. 
	ret po			;bc4d	e0 	. 
	ld (bc),a			;bc4e	02 	. 
	ret nz			;bc4f	c0 	. 
	ex af,af'			;bc50	08 	. 
	nop			;bc51	00 	. 
	add a,c			;bc52	81 	. 
	ld bc,00303h		;bc53	01 03 03 	. . . 
	add a,c			;bc56	81 	. 
	rlca			;bc57	07 	. 
	dec bc			;bc58	0b 	. 
	nop			;bc59	00 	. 
	add a,c			;bc5a	81 	. 
	ld (hl),b			;bc5b	70 	p 
	inc bc			;bc5c	03 	. 
	jr nc,lbc63h		;bc5d	30 04 	0 . 
	jr c,$+10		;bc5f	38 08 	8 . 
	nop			;bc61	00 	. 
	inc b			;bc62	04 	. 
lbc63h:
	ld (hl),b			;bc63	70 	p 
	inc b			;bc64	04 	. 
	ret po			;bc65	e0 	. 
	add a,l			;bc66	85 	. 
	ld bc,00b07h		;bc67	01 07 0b 	. . . 
	dec c			;bc6a	0d 	. 
	ex af,af'			;bc6b	08 	. 
	inc bc			;bc6c	03 	. 
	nop			;bc6d	00 	. 
	inc bc			;bc6e	03 	. 
	ret p			;bc6f	f0 	. 
	add a,c			;bc70	81 	. 
	add a,b			;bc71	80 	. 
	inc bc			;bc72	03 	. 
	nop			;bc73	00 	. 
	add a,c			;bc74	81 	. 
	ld (bc),a			;bc75	02 	. 
	ex af,af'			;bc76	08 	. 
	nop			;bc77	00 	. 
	add a,(hl)			;bc78	86 	. 
	inc bc			;bc79	03 	. 
	rlca			;bc7a	07 	. 
	rlca			;bc7b	07 	. 
	rrca			;bc7c	0f 	. 
	ld c,01eh		;bc7d	0e 1e 	. . 
	ld (bc),a			;bc7f	02 	. 
	inc e			;bc80	1c 	. 
	ld (bc),a			;bc81	02 	. 
	add a,b			;bc82	80 	. 
	dec d			;bc83	15 	. 
	nop			;bc84	00 	. 
	add a,c			;bc85	81 	. 
	ld (hl),b			;bc86	70 	p 
	ex af,af'			;bc87	08 	. 
	nop			;bc88	00 	. 
	ex af,af'			;bc89	08 	. 
	inc e			;bc8a	1c 	. 
	ld (bc),a			;bc8b	02 	. 
	nop			;bc8c	00 	. 
	ld b,001h		;bc8d	06 01 	. . 
	ld (bc),a			;bc8f	02 	. 
	ret po			;bc90	e0 	. 
	dec b			;bc91	05 	. 
	ret nz			;bc92	c0 	. 
	ld b,000h		;bc93	06 00 	. . 
	adc a,d			;bc95	8a 	. 
	rrca			;bc96	0f 	. 
	ccf			;bc97	3f 	? 
	ld c,a			;bc98	4f 	O 
	ld (bc),a			;bc99	02 	. 
	inc bc			;bc9a	03 	. 
	ld (bc),a			;bc9b	02 	. 
	inc c			;bc9c	0c 	. 
	call m,0f0fch		;bc9d	fc fc f0 	. . . 
	add hl,bc			;bca0	09 	. 
	nop			;bca1	00 	. 
	ld (bc),a			;bca2	02 	. 
	ex af,af'			;bca3	08 	. 
	ld a,(bc)			;bca4	0a 	. 
	nop			;bca5	00 	. 
	inc b			;bca6	04 	. 
	ld bc,07081h		;bca7	01 81 70 	. . p 
	inc bc			;bcaa	03 	. 
	ret po			;bcab	e0 	. 
	inc b			;bcac	04 	. 
	ret nz			;bcad	c0 	. 
	ex af,af'			;bcae	08 	. 
	nop			;bcaf	00 	. 
	ld (bc),a			;bcb0	02 	. 
	inc c			;bcb1	0c 	. 
	ld b,008h		;bcb2	06 08 	. . 
	djnz lbcb6h		;bcb4	10 00 	. . 
lbcb6h:
	ex af,af'			;bcb6	08 	. 
	ld (hl),b			;bcb7	70 	p 
	ex af,af'			;bcb8	08 	. 
	nop			;bcb9	00 	. 
	add a,d			;bcba	82 	. 
	ld b,007h		;bcbb	06 07 	. . 
	ld (bc),a			;bcbd	02 	. 
	ld c,002h		;bcbe	0e 02 	. . 
	inc e			;bcc0	1c 	. 
	ld (bc),a			;bcc1	02 	. 
	jr c,$+9		;bcc2	38 07 	8 . 
	nop			;bcc4	00 	. 
	add a,c			;bcc5	81 	. 
	ld bc,00004h		;bcc6	01 04 00 	. . . 
	add a,h			;bcc9	84 	. 
	jr nz,lbd3ch		;bcca	20 70 	  p 
	ret p			;bccc	f0 	. 
	ret po			;bccd	e0 	. 
	inc de			;bcce	13 	. 
	nop			;bccf	00 	. 
	add a,c			;bcd0	81 	. 
	ld bc,00004h		;bcd1	01 04 00 	. . . 
	inc b			;bcd4	04 	. 
	inc bc			;bcd5	03 	. 
	add a,h			;bcd6	84 	. 
	push bc			;bcd7	c5 	. 
	ld a,(hl)			;bcd8	7e 	~ 
	rrca			;bcd9	0f 	. 
	nop			;bcda	00 	. 
	inc b			;bcdb	04 	. 
	add a,b			;bcdc	80 	. 
	add hl,bc			;bcdd	09 	. 
	nop			;bcde	00 	. 
	add a,e			;bcdf	83 	. 
	rlca			;bce0	07 	. 
	inc bc			;bce1	03 	. 
	nop			;bce2	00 	. 
	inc bc			;bce3	03 	. 
	ex af,af'			;bce4	08 	. 
	ld (bc),a			;bce5	02 	. 
	inc c			;bce6	0c 	. 
	adc a,a			;bce7	8f 	. 
	call p,000f8h		;bce8	f4 f8 00 	. . . 
	nop			;bceb	00 	. 
	ld bc,0ff3fh		;bcec	01 3f ff 	. ? . 
	ld a,(hl)			;bcef	7e 	~ 
	jr nz,lbcf2h		;bcf0	20 00 	  . 
lbcf2h:
	nop			;bcf2	00 	. 
	rrca			;bcf3	0f 	. 
	rst 38h			;bcf4	ff 	. 
	rst 38h			;bcf5	ff 	. 
	ret p			;bcf6	f0 	. 
	inc b			;bcf7	04 	. 
	nop			;bcf8	00 	. 
	add a,e			;bcf9	83 	. 
	or b			;bcfa	b0 	. 
	ret nz			;bcfb	c0 	. 
	ret p			;bcfc	f0 	. 
	dec b			;bcfd	05 	. 
	nop			;bcfe	00 	. 
	add a,d			;bcff	82 	. 
	ccf			;bd00	3f 	? 
	rra			;bd01	1f 	. 
	ld b,000h		;bd02	06 00 	. . 
	add a,d			;bd04	82 	. 
	ret nc			;bd05	d0 	. 
lbd06h:
	ret po			;bd06	e0 	. 
	ld b,000h		;bd07	06 00 	. . 
	add a,d			;bd09	82 	. 
	inc bc			;bd0a	03 	. 
	ld bc,0003eh		;bd0b	01 3e 00 	. > . 
	inc b			;bd0e	04 	. 
	ld bc,00381h		;bd0f	01 81 03 	. . . 
	ld (bc),a			;bd12	02 	. 
	ld (bc),a			;bd13	02 	. 
	ld (bc),a			;bd14	02 	. 
	nop			;bd15	00 	. 
	inc bc			;bd16	03 	. 
	add a,b			;bd17	80 	. 
	ex af,af'			;bd18	08 	. 
	nop			;bd19	00 	. 
	ld (bc),a			;bd1a	02 	. 
	jr $-124		;bd1b	18 82 	. . 
	jr c,lbd8fh		;bd1d	38 70 	8 p 
	ld b,b			;bd1f	40 	@ 
	nop			;bd20	00 	. 
	add a,c			;bd21	81 	. 
	inc b			;bd22	04 	. 
	add hl,bc			;bd23	09 	. 
	nop			;bd24	00 	. 
	ld (bc),a			;bd25	02 	. 
	ld bc,00302h		;bd26	01 02 03 	. . . 
	ld (bc),a			;bd29	02 	. 
	rlca			;bd2a	07 	. 
	add a,c			;bd2b	81 	. 
	ld h,b			;bd2c	60 	` 
	ex af,af'			;bd2d	08 	. 
	nop			;bd2e	00 	. 
	add a,l			;bd2f	85 	. 
	ld b,b			;bd30	40 	@ 
	ld h,b			;bd31	60 	` 
	ld (hl),b			;bd32	70 	p 
	ld (hl),b			;bd33	70 	p 
	jr nc,lbd38h		;bd34	30 02 	0 . 
	jr c,$+66		;bd36	38 40 	8 @ 
lbd38h:
	nop			;bd38	00 	. 
	ld (bc),a			;bd39	02 	. 
	ld c,086h		;bd3a	0e 86 	. . 
lbd3ch:
	inc e			;bd3c	1c 	. 
	inc a			;bd3d	3c 	< 
	jr c,$+122		;bd3e	38 78 	8 x 
	ld (hl),b			;bd40	70 	p 
	jr nc,lbd4bh		;bd41	30 08 	0 . 
	nop			;bd43	00 	. 
	inc bc			;bd44	03 	. 
	jr c,lbd4ch		;bd45	38 05 	8 . 
	inc e			;bd47	1c 	. 
	ld a,(bc)			;bd48	0a 	. 
	nop			;bd49	00 	. 
	add a,d			;bd4a	82 	. 
lbd4bh:
	add a,b			;bd4b	80 	. 
lbd4ch:
	ld b,b			;bd4c	40 	@ 
	ld (bc),a			;bd4d	02 	. 
	jr nz,lbd5ch		;bd4e	20 0c 	  . 
	nop			;bd50	00 	. 
	add a,d			;bd51	82 	. 
	inc b			;bd52	04 	. 
	ld (bc),a			;bd53	02 	. 
	ld (bc),a			;bd54	02 	. 
	ld bc,00007h		;bd55	01 07 00 	. . . 
	ld (bc),a			;bd58	02 	. 
	add a,b			;bd59	80 	. 
	add a,c			;bd5a	81 	. 
	ret nz			;bd5b	c0 	. 
lbd5ch:
	rrca			;bd5c	0f 	. 
	nop			;bd5d	00 	. 
	ld (bc),a			;bd5e	02 	. 
	jr nz,lbd70h		;bd5f	20 0f 	  . 
	nop			;bd61	00 	. 
	ld (bc),a			;bd62	02 	. 
	inc e			;bd63	1c 	. 
	dec b			;bd64	05 	. 
	inc c			;bd65	0c 	. 
	add a,c			;bd66	81 	. 
	ex af,af'			;bd67	08 	. 
	inc b			;bd68	04 	. 
	ld bc,00304h		;bd69	01 04 03 	. . . 
	add a,c			;bd6c	81 	. 
	ret nz			;bd6d	c0 	. 
	inc bc			;bd6e	03 	. 
	add a,b			;bd6f	80 	. 
lbd70h:
	inc c			;bd70	0c 	. 
	nop			;bd71	00 	. 
	add a,c			;bd72	81 	. 
	ld c,003h		;bd73	0e 03 	. . 
	inc c			;bd75	0c 	. 
	inc b			;bd76	04 	. 
	jr lbd80h		;bd77	18 07 	. . 
	nop			;bd79	00 	. 
	add a,c			;bd7a	81 	. 
	ld bc,0c008h		;bd7b	01 08 c0 	. . . 
	ex af,af'			;bd7e	08 	. 
	nop			;bd7f	00 	. 
lbd80h:
	add a,c			;bd80	81 	. 
	jr nc,lbd86h		;bd81	30 03 	0 . 
	jr c,lbd06h		;bd83	38 81 	8 . 
	ld a,b			;bd85	78 	x 
lbd86h:
	inc bc			;bd86	03 	. 
	ld (hl),b			;bd87	70 	p 
	ld c,000h		;bd88	0e 00 	. . 
	add a,d			;bd8a	82 	. 
	jr nc,lbdfdh		;bd8b	30 70 	0 p 
	rlca			;bd8d	07 	. 
	nop			;bd8e	00 	. 
lbd8fh:
	add a,e			;bd8f	83 	. 
	jr c,lbd95h		;bd90	38 03 	8 . 
	ld (bc),a			;bd92	02 	. 
	dec bc			;bd93	0b 	. 
	nop			;bd94	00 	. 
lbd95h:
	add a,h			;bd95	84 	. 
	ld bc,00703h		;bd96	01 03 07 	. . . 
	nop			;bd99	00 	. 
	ld (bc),a			;bd9a	02 	. 
	ld b,b			;bd9b	40 	@ 
	inc b			;bd9c	04 	. 
	ret nz			;bd9d	c0 	. 
	add a,e			;bd9e	83 	. 
	add a,b			;bd9f	80 	. 
	jr $+18		;bda0	18 10 	. . 
	ld b,000h		;bda2	06 00 	. . 
	add a,c			;bda4	81 	. 
	ld bc,00302h		;bda5	01 02 03 	. . . 
	ld (bc),a			;bda8	02 	. 
	rlca			;bda9	07 	. 
	add a,h			;bdaa	84 	. 
	ld c,01eh		;bdab	0e 1e 	. . 
	inc a			;bdad	3c 	< 
	ret nz			;bdae	c0 	. 
	ld (bc),a			;bdaf	02 	. 
	add a,b			;bdb0	80 	. 
	ld b,000h		;bdb1	06 00 	. . 
	add a,h			;bdb3	84 	. 
	jr nz,lbdd2h		;bdb4	20 1c 	  . 
	rrca			;bdb6	0f 	. 
	ld bc,00003h		;bdb7	01 03 00 	. . . 
	ld (bc),a			;bdba	02 	. 
	ld (hl),b			;bdbb	70 	p 
	add a,e			;bdbc	83 	. 
	jr nc,lbd8fh		;bdbd	30 d0 	0 . 
	ret po			;bdbf	e0 	. 
	inc b			;bdc0	04 	. 
	nop			;bdc1	00 	. 
	add a,e			;bdc2	83 	. 
	ld bc,00103h		;bdc3	01 03 01 	. . . 
	inc b			;bdc6	04 	. 
	nop			;bdc7	00 	. 
	add a,h			;bdc8	84 	. 
	pop af			;bdc9	f1 	. 
	ex (sp),hl			;bdca	e3 	. 
	pop bc			;bdcb	c1 	. 
	add a,b			;bdcc	80 	. 
	inc b			;bdcd	04 	. 
	nop			;bdce	00 	. 
	add a,l			;bdcf	85 	. 
	ret m			;bdd0	f8 	. 
	ret po			;bdd1	e0 	. 
lbdd2h:
	add a,b			;bdd2	80 	. 
	nop			;bdd3	00 	. 
	ld bc,00006h		;bdd4	01 06 00 	. . . 
	adc a,e			;bdd7	8b 	. 
	rlca			;bdd8	07 	. 
	rst 38h			;bdd9	ff 	. 
	rst 38h			;bdda	ff 	. 
	ld a,h			;bddb	7c 	| 
	nop			;bddc	00 	. 
	rrca			;bddd	0f 	. 
	ld a,0fch		;bdde	3e fc 	> . 
	ret m			;bde0	f8 	. 
	ret po			;bde1	e0 	. 
	add a,b			;bde2	80 	. 
	ld b,000h		;bde3	06 00 	. . 
	sub b			;bde5	90 	. 
	rrca			;bde6	0f 	. 
	rlca			;bde7	07 	. 
	inc bc			;bde8	03 	. 
	nop			;bde9	00 	. 
	nop			;bdea	00 	. 
	ld bc,03f07h		;bdeb	01 07 3f 	. . ? 
	rst 38h			;bdee	ff 	. 
	call m,000e0h		;bdef	fc e0 00 	. . . 
	ld a,b			;bdf2	78 	x 
	ret p			;bdf3	f0 	. 
	ret po			;bdf4	e0 	. 
	ret nz			;bdf5	c0 	. 
	inc b			;bdf6	04 	. 
	nop			;bdf7	00 	. 
	nop			;bdf8	00 	. 
	dec de			;bdf9	1b 	. 
	nop			;bdfa	00 	. 
lbdfbh:
	sub l			;bdfb	95 	. 
	ex af,af'			;bdfc	08 	. 
lbdfdh:
	jr lbdfbh		;bdfd	18 fc 	. . 
	call m,079feh		;bdff	fc fe 79 	. . y 
	ld a,00fh		;be02	3e 0f 	> . 
	inc de			;be04	13 	. 
	inc e			;be05	1c 	. 
	rra			;be06	1f 	. 
	ccf			;be07	3f 	? 
	ld a,a			;be08	7f 	 
	add a,b			;be09	80 	. 
	nop			;be0a	00 	. 
	add a,b			;be0b	80 	. 
	add a,b			;be0c	80 	. 
	ret nz			;be0d	c0 	. 
	ld b,b			;be0e	40 	@ 
	add a,b			;be0f	80 	. 
	ret po			;be10	e0 	. 
	djnz lbe13h		;be11	10 00 	. . 
lbe13h:
	ex af,af'			;be13	08 	. 
	rst 38h			;be14	ff 	. 
	add a,h			;be15	84 	. 
	ret p			;be16	f0 	. 
	call m,0c0f0h		;be17	fc f0 c0 	. . . 
	inc bc			;be1a	03 	. 
	add a,b			;be1b	80 	. 
lbe1ch:
	add a,c			;be1c	81 	. 
	pop hl			;be1d	e1 	. 
	inc b			;be1e	04 	. 
	nop			;be1f	00 	. 
	add a,h			;be20	84 	. 
	djnz lbe43h		;be21	10 20 	.   
	ld h,b			;be23	60 	` 
	ret po			;be24	e0 	. 
	ld b,000h		;be25	06 00 	. . 
	add a,l			;be27	85 	. 
	ld bc,0f873h		;be28	01 73 f8 	. s . 
	rst 20h			;be2b	e7 	. 
	rst 18h			;be2c	df 	. 
	ld (bc),a			;be2d	02 	. 
	cp a			;be2e	bf 	. 
	inc bc			;be2f	03 	. 
	ld a,a			;be30	7f 	 
	add a,e			;be31	83 	. 
	rra			;be32	1f 	. 
	rst 20h			;be33	e7 	. 
	ei			;be34	fb 	. 
	ld (bc),a			;be35	02 	. 
	defb 0fdh,003h,0feh	;illegal sequence		;be36	fd 03 fe 	. . . 
	adc a,b			;be39	88 	. 
	ld (hl),a			;be3a	77 	w 
	ld a,a			;be3b	7f 	 
	ld e,a			;be3c	5f 	_ 
	ld e,a			;be3d	5f 	_ 
	ld e,l			;be3e	5d 	] 
	ld a,l			;be3f	7d 	} 
	ld a,a			;be40	7f 	 
	ld (hl),a			;be41	77 	w 
	inc bc			;be42	03 	. 
lbe43h:
	ld a,a			;be43	7f 	 
	ld (bc),a			;be44	02 	. 
	cp a			;be45	bf 	. 
	add a,e			;be46	83 	. 
	rst 18h			;be47	df 	. 
	rst 20h			;be48	e7 	. 
	ret m			;be49	f8 	. 
	inc bc			;be4a	03 	. 
	cp 002h		;be4b	fe 02 	. . 
	defb 0fdh,083h,0fbh	;illegal sequence		;be4d	fd 83 fb 	. . . 
	rst 20h			;be50	e7 	. 
	rra			;be51	1f 	. 
	jr z,$+1		;be52	28 ff 	( . 
	sub b			;be54	90 	. 
	di			;be55	f3 	. 
	jp p,0f0f0h		;be56	f2 f0 f0 	. . . 
	ld a,c			;be59	79 	y 
	add hl,de			;be5a	19 	. 
	adc a,c			;be5b	89 	. 
	ret			;be5c	c9 	. 
	ret			;be5d	c9 	. 
	ex (sp),hl			;be5e	e3 	. 
	di			;be5f	f3 	. 
	di			;be60	f3 	. 
	ex (sp),hl			;be61	e3 	. 
	ret po			;be62	e0 	. 
	ret po			;be63	e0 	. 
	rst 20h			;be64	e7 	. 
	ex af,af'			;be65	08 	. 
	nop			;be66	00 	. 
	djnz $+1		;be67	10 ff 	. . 
	ld l,c			;be69	69 	i 
	nop			;be6a	00 	. 
	sbc a,l			;be6b	9d 	. 
	ld a,(hl)			;be6c	7e 	~ 
	ret nz			;be6d	c0 	. 
	ret nz			;be6e	c0 	. 
	ld a,h			;be6f	7c 	| 
	ld b,006h		;be70	06 06 	. . 
	call m,0fe00h		;be72	fc 00 fe 	. . . 
	ret nz			;be75	c0 	. 
	ret nz			;be76	c0 	. 
	cp 0c0h		;be77	fe c0 	. . 
	ret nz			;be79	c0 	. 
	cp 000h		;be7a	fe 00 	. . 
	ld a,h			;be7c	7c 	| 
	jp nz,0cec0h		;be7d	c2 c0 ce 	. . . 
	jp nz,07ec2h		;be80	c2 c2 7e 	. . ~ 
	nop			;be83	00 	. 
	jr c,lbeeah		;be84	38 64 	8 d 
	ld h,h			;be86	64 	d 
	ld a,h			;be87	7c 	| 
	cp 002h		;be88	fe 02 	. . 
	jp nz,00020h		;be8a	c2 20 00 	.   . 
	ld (bc),a			;be8d	02 	. 
	ld a,a			;be8e	7f 	 
	ld (bc),a			;be8f	02 	. 
	cp a			;be90	bf 	. 
	add a,e			;be91	83 	. 
	rst 18h			;be92	df 	. 
	rst 20h			;be93	e7 	. 
	ret m			;be94	f8 	. 
	ex af,af'			;be95	08 	. 
	rst 38h			;be96	ff 	. 
	add a,c			;be97	81 	. 
	nop			;be98	00 	. 
	inc b			;be99	04 	. 
	rst 38h			;be9a	ff 	. 
	add a,h			;be9b	84 	. 
	rst 28h			;be9c	ef 	. 
	rst 10h			;be9d	d7 	. 
	add hl,sp			;be9e	39 	9 
	cp 041h		;be9f	fe 41 	. A 
	rst 38h			;bea1	ff 	. 
	add a,a			;bea2	87 	. 
	call m,0f7fbh		;bea3	fc fb f7 	. . . 
	rst 30h			;bea6	f7 	. 
	rst 28h			;bea7	ef 	. 
	sbc a,a			;bea8	9f 	. 
	ld a,a			;bea9	7f 	 
	inc b			;beaa	04 	. 
	rst 38h			;beab	ff 	. 
	add a,l			;beac	85 	. 
	call m,sub_9fe3h		;bead	fc e3 9f 	. . . 
	ld a,a			;beb0	7f 	 
	nop			;beb1	00 	. 
	rlca			;beb2	07 	. 
	rst 38h			;beb3	ff 	. 
	add a,(hl)			;beb4	86 	. 
	nop			;beb5	00 	. 
	di			;beb6	f3 	. 
	rst 28h			;beb7	ef 	. 
	rst 18h			;beb8	df 	. 
	rst 18h			;beb9	df 	. 
	cp a			;beba	bf 	. 
	ld (bc),a			;bebb	02 	. 
	ld a,a			;bebc	7f 	 
	ex af,af'			;bebd	08 	. 
	rst 38h			;bebe	ff 	. 
	add a,h			;bebf	84 	. 
	ld a,a			;bec0	7f 	 
	cp a			;bec1	bf 	. 
	rst 8			;bec2	cf 	. 
	di			;bec3	f3 	. 
	ld (bc),a			;bec4	02 	. 
	defb 0fdh,002h,0feh	;illegal sequence		;bec5	fd 02 fe 	. . . 
	ld a,a			;bec8	7f 	 
	nop			;bec9	00 	. 
	ld a,a			;beca	7f 	 
	nop			;becb	00 	. 
	ld a,a			;becc	7f 	 
	nop			;becd	00 	. 
	ld a,a			;bece	7f 	 
	nop			;becf	00 	. 
	ld a,a			;bed0	7f 	 
	nop			;bed1	00 	. 
	ld a,a			;bed2	7f 	 
	nop			;bed3	00 	. 
	ld a,a			;bed4	7f 	 
	nop			;bed5	00 	. 
	ld a,a			;bed6	7f 	 
	nop			;bed7	00 	. 
	jr nc,lbedah		;bed8	30 00 	0 . 
lbedah:
	nop			;beda	00 	. 
	nop			;bedb	00 	. 
	ccf			;bedc	3f 	? 
	jr nc,lbf3fh		;bedd	30 60 	0 ` 
	ld h,c			;bedf	61 	a 
	ld h,c			;bee0	61 	a 
	ld h,d			;bee1	62 	b 
	ld h,c			;bee2	61 	a 
	ld h,e			;bee3	63 	c 
	ld h,h			;bee4	64 	d 
	ld h,c			;bee5	61 	a 
	ld h,l			;bee6	65 	e 
	ld h,(hl)			;bee7	66 	f 
	ld h,a			;bee8	67 	g 
lbee9h:
	ld l,b			;bee9	68 	h 
lbeeah:
	ld l,c			;beea	69 	i 
	ld l,d			;beeb	6a 	j 
	ld l,e			;beec	6b 	k 
	ld l,h			;beed	6c 	l 
	ld l,l			;beee	6d 	m 
	ld l,(hl)			;beef	6e 	n 
	ld l,a			;bef0	6f 	o 
	ld (hl),b			;bef1	70 	p 
	ld (hl),c			;bef2	71 	q 
	ld (hl),d			;bef3	72 	r 
	ld (hl),e			;bef4	73 	s 
	ld (hl),h			;bef5	74 	t 
	ld (hl),l			;bef6	75 	u 
	halt			;bef7	76 	v 
	ld (hl),a			;bef8	77 	w 
	ld a,b			;bef9	78 	x 
	ld a,c			;befa	79 	y 
	ld a,d			;befb	7a 	z 
	ld a,e			;befc	7b 	{ 
	ld a,h			;befd	7c 	| 
	ld a,l			;befe	7d 	} 
	ld a,(hl)			;beff	7e 	~ 
	ld a,a			;bf00	7f 	 
	add a,b			;bf01	80 	. 
	add a,c			;bf02	81 	. 
	add a,d			;bf03	82 	. 
	add a,e			;bf04	83 	. 
	add a,h			;bf05	84 	. 
	add a,d			;bf06	82 	. 
	add a,l			;bf07	85 	. 
	add a,(hl)			;bf08	86 	. 
	add a,a			;bf09	87 	. 
	adc a,b			;bf0a	88 	. 
	adc a,c			;bf0b	89 	. 
	adc a,d			;bf0c	8a 	. 
	adc a,e			;bf0d	8b 	. 
	ld b,000h		;bf0e	06 00 	. . 
	add a,d			;bf10	82 	. 
	inc bc			;bf11	03 	. 
	inc b			;bf12	04 	. 
	dec b			;bf13	05 	. 
	nop			;bf14	00 	. 
	add a,c			;bf15	81 	. 
	rst 38h			;bf16	ff 	. 
	rlca			;bf17	07 	. 
	nop			;bf18	00 	. 
	add a,e			;bf19	83 	. 
	jp 0504ch		;bf1a	c3 4c 50 	. L P 
	dec b			;bf1d	05 	. 
	nop			;bf1e	00 	. 
	add a,e			;bf1f	83 	. 
	cp 002h		;bf20	fe 02 	. . 
	ld (bc),a			;bf22	02 	. 
	dec b			;bf23	05 	. 
	nop			;bf24	00 	. 
	add a,e			;bf25	83 	. 
	rra			;bf26	1f 	. 
	jr nz,lbee9h		;bf27	20 c0 	  . 
lbf29h:
	dec b			;bf29	05 	. 
lbf2ah:
	nop			;bf2a	00 	. 
	add a,e			;bf2b	83 	. 
	ret p			;bf2c	f0 	. 
	djnz lbf3fh		;bf2d	10 10 	. . 
	dec b			;bf2f	05 	. 
	nop			;bf30	00 	. 
	add a,e			;bf31	83 	. 
	rlca			;bf32	07 	. 
	inc c			;bf33	0c 	. 
	djnz lbf3bh		;bf34	10 05 	. . 
	nop			;bf36	00 	. 
	add a,e			;bf37	83 	. 
	ret nz			;bf38	c0 	. 
	ld h,e			;bf39	63 	c 
	ld (de),a			;bf3a	12 	. 
lbf3bh:
	dec b			;bf3b	05 	. 
	nop			;bf3c	00 	. 
	add a,(hl)			;bf3d	86 	. 
	ret po			;bf3e	e0 	. 
lbf3fh:
	jr lbf29h		;bf3f	18 e8 	. . 
	ex af,af'			;bf41	08 	. 
	ex af,af'			;bf42	08 	. 
	djnz lbf4ah		;bf43	10 05 	. . 
	ld de,0008ah		;bf45	11 8a 00 	. . . 
	ld a,a			;bf48	7f 	 
	add a,b			;bf49	80 	. 
lbf4ah:
	nop			;bf4a	00 	. 
	nop			;bf4b	00 	. 
	rrca			;bf4c	0f 	. 
	rrca			;bf4d	0f 	. 
	nop			;bf4e	00 	. 
	nop			;bf4f	00 	. 
	rst 38h			;bf50	ff 	. 
	inc bc			;bf51	03 	. 
	nop			;bf52	00 	. 
	adc a,l			;bf53	8d 	. 
	rst 38h			;bf54	ff 	. 
	ret m			;bf55	f8 	. 
	ld b,060h		;bf56	06 60 	. ` 
	pop hl			;bf58	e1 	. 
	ld b,d			;bf59	42 	B 
	ld b,h			;bf5a	44 	D 
	ld b,h			;bf5b	44 	D 
	call nz,04444h		;bf5c	c4 44 44 	. D D 
	nop			;bf5f	00 	. 
	rst 38h			;bf60	ff 	. 
	inc bc			;bf61	03 	. 
	nop			;bf62	00 	. 
	add a,l			;bf63	85 	. 
	ccf			;bf64	3f 	? 
	ld a,a			;bf65	7f 	 
lbf66h:
	nop			;bf66	00 	. 
	inc bc			;bf67	03 	. 
	rst 38h			;bf68	ff 	. 
	inc bc			;bf69	03 	. 
	ld (bc),a			;bf6a	02 	. 
	ld (bc),a			;bf6b	02 	. 
	cp 08bh		;bf6c	fe 8b 	. . 
	ld b,000h		;bf6e	06 00 	. . 
	rrca			;bf70	0f 	. 
lbf71h:
	djnz lbf93h		;bf71	10 20 	.   
	jr nz,lbf98h		;bf73	20 23 	  # 
	inc hl			;bf75	23 	# 
	ld (0ff00h),hl		;bf76	22 00 ff 	" . . 
	inc bc			;bf79	03 	. 
	nop			;bf7a	00 	. 
	ld (bc),a			;bf7b	02 	. 
	rst 38h			;bf7c	ff 	. 
	add a,e			;bf7d	83 	. 
lbf7eh:
	nop			;bf7e	00 	. 
	djnz lbf71h		;bf7f	10 f0 	. . 
	inc bc			;bf81	03 	. 
	djnz lbf2ah		;bf82	10 a6 	. . 
	ret p			;bf84	f0 	. 
	pop af			;bf85	f1 	. 
	ld de,02120h		;bf86	11 20 21 	.   ! 
	ld b,d			;bf89	42 	B 
	ld b,d			;bf8a	42 	B 
	add a,h			;bf8b	84 	. 
	add a,h			;bf8c	84 	. 
	ex af,af'			;bf8d	08 	. 
	ex af,af'			;bf8e	08 	. 
	dec c			;bf8f	0d 	. 
	dec c			;bf90	0d 	. 
	add a,l			;bf91	85 	. 
	add a,l			;bf92	85 	. 
lbf93h:
	ld b,d			;bf93	42 	B 
	ld b,e			;bf94	43 	C 
	ld hl,01421h		;bf95	21 21 14 	! ! . 
lbf98h:
	ld d,h			;bf98	54 	T 
	inc (hl)			;bf99	34 	4 
	ld d,h			;bf9a	54 	T 
	ret pe			;bf9b	e8 	. 
	jr lbf7eh		;bf9c	18 e0 	. . 
	nop			;bf9e	00 	. 
	ld de,01010h		;bf9f	11 10 10 	. . . 
	ex af,af'			;bfa2	08 	. 
	inc b			;bfa3	04 	. 
	inc bc			;bfa4	03 	. 
	nop			;bfa5	00 	. 
	rra			;bfa6	1f 	. 
	nop			;bfa7	00 	. 
	add a,b			;bfa8	80 	. 
	ld a,a			;bfa9	7f 	 
	inc bc			;bfaa	03 	. 
	nop			;bfab	00 	. 
	ld (bc),a			;bfac	02 	. 
	rst 38h			;bfad	ff 	. 
	adc a,e			;bfae	8b 	. 
lbfafh:
	ld bc,0f000h		;bfaf	01 00 f0 	. . . 
	ex af,af'			;bfb2	08 	. 
	inc b			;bfb3	04 	. 
	inc b			;bfb4	04 	. 
	call nz,044c4h		;bfb5	c4 c4 44 	. . D 
	call nz,00547h		;bfb8	c4 47 05 	. G . 
	ld b,h			;bfbb	44 	D 
	ld (bc),a			;bfbc	02 	. 
	nop			;bfbd	00 	. 
	add a,c			;bfbe	81 	. 
	rst 38h			;bfbf	ff 	. 
	inc bc			;bfc0	03 	. 
	nop			;bfc1	00 	. 
	ld (bc),a			;bfc2	02 	. 
	ld a,a			;bfc3	7f 	 
	ld (bc),a			;bfc4	02 	. 
	ld b,081h		;bfc5	06 81 	. . 
	cp 003h		;bfc7	fe 03 	. . 
	ld b,002h		;bfc9	06 02 	. . 
	cp 002h		;bfcb	fe 02 	. . 
	ld (02381h),hl		;bfcd	22 81 23 	" . # 
	inc bc			;bfd0	03 	. 
	ld (02302h),hl		;bfd1	22 02 23 	" . # 
	ld (bc),a			;bfd4	02 	. 
	nop			;bfd5	00 	. 
	add a,c			;bfd6	81 	. 
	rst 38h			;bfd7	ff 	. 
	inc bc			;bfd8	03 	. 
	ld bc,0f102h		;bfd9	01 02 f1 	. . . 
	add a,c			;bfdc	81 	. 
	ld de,01203h		;bfdd	11 03 12 	. . . 
	ld (bc),a			;bfe0	02 	. 
	inc d			;bfe1	14 	. 
	ld (bc),a			;bfe2	02 	. 
	jr lbf66h		;bfe3	18 81 	. . 
	ex af,af'			;bfe5	08 	. 
	inc bc			;bfe6	03 	. 
	djnz $+4		;bfe7	10 02 	. . 
	ld hl,04302h		;bfe9	21 02 43 	! . C 
	add a,c			;bfec	81 	. 
	ld hl,01003h		;bfed	21 03 10 	! . . 
	ld (bc),a			;bff0	02 	. 
	ex af,af'			;bff1	08 	. 
	ld (bc),a			;bff2	02 	. 
	add a,h			;bff3	84 	. 
	add a,c			;bff4	81 	. 
	nop			;bff5	00 	. 
	inc bc			;bff6	03 	. 
	add a,b			;bff7	80 	. 
	ld (bc),a			;bff8	02 	. 
	ld b,b			;bff9	40 	@ 
	ld (bc),a			;bffa	02 	. 
	jr nz,$+5		;bffb	20 03 	  . 
	djnz $-125		;bffd	10 81 	. . 
lbfffh:
	rra			;bfff	1f 	. 
