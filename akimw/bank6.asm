; ============================================================
; Banco 6 do ROM (offset no ficheiro: 0x18000 - 0x1BFFF)
; Endereco de origem assumido no mapa do Z80: 8000h (assumido: banco paginavel para o slot 2 via porta FFFFh)
; Gerado com z80dasm 1.1.6 (-a enderecos, -t bytes originais, -l labels)
; NOTA: saltos/chamadas absolutos (JP/CALL) so sao validos quando
; este banco estiver de facto paginado no slot indicado acima.
; Zonas de dados (graficos, tabelas, musica) podem surgir desmontadas
; incorrectamente como instrucoes -- ver aviso Self-modifying-code
; nos ficheiros onde a heuristica do z80dasm o assinalou.
; ============================================================

; z80dasm 1.1.6
; command line: z80dasm -a -t -l -g 0x8000 -s /home/claude/out/bank6.sym -o /home/claude/out/bank6.asm bank6.bin

	org	08000h

	ld b,080h		;8000	06 80 	. . 
	inc c			;8002	0c 	. 
	add a,b			;8003	80 	. 
	ld c,080h		;8004	0e 80 	. . 
	ld d,(hl)			;8006	56 	V 
	add a,h			;8007	84 	. 
	call nc,03d84h		;8008	d4 84 3d 	. . = 
	add a,l			;800b	85 	. 
	ld (02280h),hl		;800c	22 80 22 	" . " 
	add a,b			;800f	80 	. 
	ld (hl),a			;8010	77 	w 
	add a,b			;8011	80 	. 
	ret m			;8012	f8 	. 
	add a,b			;8013	80 	. 
	sub e			;8014	93 	. 
	add a,c			;8015	81 	. 
	inc h			;8016	24 	$ 
	add a,d			;8017	82 	. 
	sbc a,h			;8018	9c 	. 
	add a,d			;8019	82 	. 
	ld c,083h		;801a	0e 83 	. . 
	ld a,b			;801c	78 	x 
	add a,e			;801d	83 	. 
	ld sp,hl			;801e	f9 	. 
	add a,e			;801f	83 	. 
	ld d,(hl)			;8020	56 	V 
	add a,h			;8021	84 	. 
	inc de			;8022	13 	. 
	nop			;8023	00 	. 
	add a,d			;8024	82 	. 
	dec bc			;8025	0b 	. 
	inc c			;8026	0c 	. 
	rla			;8027	17 	. 
	nop			;8028	00 	. 
	add a,d			;8029	82 	. 
	dec bc			;802a	0b 	. 
	inc c			;802b	0c 	. 
	dec de			;802c	1b 	. 
	nop			;802d	00 	. 
	add a,d			;802e	82 	. 
	dec bc			;802f	0b 	. 
	inc c			;8030	0c 	. 
	rlca			;8031	07 	. 
	nop			;8032	00 	. 
	add a,c			;8033	81 	. 
	jr nz,l8050h		;8034	20 1a 	  . 
	nop			;8036	00 	. 
	add a,c			;8037	81 	. 
	inc bc			;8038	03 	. 
	ld (bc),a			;8039	02 	. 
	nop			;803a	00 	. 
	dec b			;803b	05 	. 
	ld d,c			;803c	51 	Q 
	add a,c			;803d	81 	. 
	ld d,e			;803e	53 	S 
	dec b			;803f	05 	. 
	nop			;8040	00 	. 
	add a,c			;8041	81 	. 
	ld d,d			;8042	52 	R 
	inc b			;8043	04 	. 
	ld d,c			;8044	51 	Q 
	inc b			;8045	04 	. 
	ld d,b			;8046	50 	P 
	add a,c			;8047	81 	. 
	ld d,l			;8048	55 	U 
	inc bc			;8049	03 	. 
	nop			;804a	00 	. 
	ld (bc),a			;804b	02 	. 
	jr nz,l8050h		;804c	20 02 	  . 
	nop			;804e	00 	. 
	add a,c			;804f	81 	. 
l8050h:
	ld d,h			;8050	54 	T 
	ld b,050h		;8051	06 50 	. P 
	add a,c			;8053	81 	. 
	ld d,a			;8054	57 	W 
	add hl,bc			;8055	09 	. 
	nop			;8056	00 	. 
	add a,c			;8057	81 	. 
	ld d,h			;8058	54 	T 
	dec b			;8059	05 	. 
	ld d,b			;805a	50 	P 
	add a,h			;805b	84 	. 
	inc bc			;805c	03 	. 
	nop			;805d	00 	. 
	nop			;805e	00 	. 
	ld d,d			;805f	52 	R 
	inc bc			;8060	03 	. 
	ld d,c			;8061	51 	Q 
	add a,c			;8062	81 	. 
	ld d,e			;8063	53 	S 
	inc bc			;8064	03 	. 
	nop			;8065	00 	. 
	add a,c			;8066	81 	. 
	ld d,h			;8067	54 	T 
	inc b			;8068	04 	. 
	ld d,b			;8069	50 	P 
	add a,c			;806a	81 	. 
	inc bc			;806b	03 	. 
	inc bc			;806c	03 	. 
	nop			;806d	00 	. 
	add a,e			;806e	83 	. 
	ld d,h			;806f	54 	T 
	ld d,b			;8070	50 	P 
	ld d,l			;8071	55 	U 
	dec b			;8072	05 	. 
	nop			;8073	00 	. 
	add a,c			;8074	81 	. 
	ld d,(hl)			;8075	56 	V 
	nop			;8076	00 	. 
	inc bc			;8077	03 	. 
	ld d,b			;8078	50 	P 
	add a,c			;8079	81 	. 
	djnz l8082h		;807a	10 06 	. . 
	nop			;807c	00 	. 
	ld (bc),a			;807d	02 	. 
	jr nz,l8083h		;807e	20 03 	  . 
	nop			;8080	00 	. 
	inc b			;8081	04 	. 
l8082h:
	ld d,b			;8082	50 	P 
l8083h:
	add a,d			;8083	82 	. 
	ld d,c			;8084	51 	Q 
	ld d,e			;8085	53 	S 
	ex af,af'			;8086	08 	. 
	nop			;8087	00 	. 
	add a,d			;8088	82 	. 
	djnz l808dh		;8089	10 02 	. . 
	inc b			;808b	04 	. 
	ld d,b			;808c	50 	P 
l808dh:
	add a,c			;808d	81 	. 
	ld d,a			;808e	57 	W 
	dec b			;808f	05 	. 
	nop			;8090	00 	. 
	add a,c			;8091	81 	. 
	ld d,d			;8092	52 	R 
	dec b			;8093	05 	. 
	ld d,c			;8094	51 	Q 
	inc b			;8095	04 	. 
	ld d,b			;8096	50 	P 
	add a,c			;8097	81 	. 
	ld d,a			;8098	57 	W 
	inc b			;8099	04 	. 
	nop			;809a	00 	. 
	add a,e			;809b	83 	. 
	djnz l809eh		;809c	10 00 	. . 
l809eh:
	ld d,h			;809e	54 	T 
	ex af,af'			;809f	08 	. 
	ld d,b			;80a0	50 	P 
	add a,c			;80a1	81 	. 
	ld d,a			;80a2	57 	W 
	inc b			;80a3	04 	. 
	nop			;80a4	00 	. 
	add a,h			;80a5	84 	. 
	djnz l80a8h		;80a6	10 00 	. . 
l80a8h:
	nop			;80a8	00 	. 
	ld d,h			;80a9	54 	T 
	rlca			;80aa	07 	. 
	ld d,b			;80ab	50 	P 
	add a,(hl)			;80ac	86 	. 
	ld d,a			;80ad	57 	W 
	nop			;80ae	00 	. 
	ld d,d			;80af	52 	R 
	ld d,c			;80b0	51 	Q 
	ld d,c			;80b1	51 	Q 
	ld d,e			;80b2	53 	S 
	inc bc			;80b3	03 	. 
	nop			;80b4	00 	. 
	add a,c			;80b5	81 	. 
	ld d,h			;80b6	54 	T 
	ld b,050h		;80b7	06 50 	. P 
	adc a,e			;80b9	8b 	. 
	ld d,l			;80ba	55 	U 
	nop			;80bb	00 	. 
	nop			;80bc	00 	. 
	ld d,h			;80bd	54 	T 
	ld d,l			;80be	55 	U 
	nop			;80bf	00 	. 
	nop			;80c0	00 	. 
	dec bc			;80c1	0b 	. 
	inc c			;80c2	0c 	. 
	nop			;80c3	00 	. 
	ld d,h			;80c4	54 	T 
	inc b			;80c5	04 	. 
	ld d,b			;80c6	50 	P 
	add a,c			;80c7	81 	. 
	ld d,l			;80c8	55 	U 
	dec bc			;80c9	0b 	. 
	nop			;80ca	00 	. 
	add a,h			;80cb	84 	. 
	ld d,h			;80cc	54 	T 
	ld d,b			;80cd	50 	P 
	ld d,b			;80ce	50 	P 
	ld d,a			;80cf	57 	W 
	dec c			;80d0	0d 	. 
	nop			;80d1	00 	. 
	ld (bc),a			;80d2	02 	. 
	ld d,b			;80d3	50 	P 
	add a,c			;80d4	81 	. 
	ld d,a			;80d5	57 	W 
	inc c			;80d6	0c 	. 
	nop			;80d7	00 	. 
	add a,h			;80d8	84 	. 
	inc bc			;80d9	03 	. 
	ld d,b			;80da	50 	P 
	ld d,b			;80db	50 	P 
	ld d,a			;80dc	57 	W 
	dec b			;80dd	05 	. 
	nop			;80de	00 	. 
	add a,d			;80df	82 	. 
	djnz l8134h		;80e0	10 52 	. R 
	inc bc			;80e2	03 	. 
	ld d,c			;80e3	51 	Q 
	add a,(hl)			;80e4	86 	. 
	ld d,e			;80e5	53 	S 
	nop			;80e6	00 	. 
	inc bc			;80e7	03 	. 
	ld d,b			;80e8	50 	P 
	ld d,b			;80e9	50 	P 
	inc bc			;80ea	03 	. 
	dec b			;80eb	05 	. 
	nop			;80ec	00 	. 
	adc a,c			;80ed	89 	. 
	djnz l8110h		;80ee	10 20 	.   
	ld d,h			;80f0	54 	T 
	ld d,b			;80f1	50 	P 
	ld d,l			;80f2	55 	U 
	djnz l80f5h		;80f3	10 00 	. . 
l80f5h:
	nop			;80f5	00 	. 
	ld d,b			;80f6	50 	P 
	nop			;80f7	00 	. 
	add a,c			;80f8	81 	. 
	ld d,b			;80f9	50 	P 
	ld (bc),a			;80fa	02 	. 
	djnz l8107h		;80fb	10 0a 	. . 
	nop			;80fd	00 	. 
	add a,(hl)			;80fe	86 	. 
	djnz l8101h		;80ff	10 00 	. . 
l8101h:
	ld d,(hl)			;8101	56 	V 
	ld d,b			;8102	50 	P 
	ld d,c			;8103	51 	Q 
	ld d,e			;8104	53 	S 
	dec bc			;8105	0b 	. 
	nop			;8106	00 	. 
l8107h:
	add a,d			;8107	82 	. 
	djnz l8160h		;8108	10 56 	. V 
	ld (bc),a			;810a	02 	. 
	ld d,b			;810b	50 	P 
	inc b			;810c	04 	. 
	ld d,c			;810d	51 	Q 
	add a,c			;810e	81 	. 
	ld d,e			;810f	53 	S 
l8110h:
	inc b			;8110	04 	. 
	nop			;8111	00 	. 
	add a,c			;8112	81 	. 
	inc bc			;8113	03 	. 
	inc bc			;8114	03 	. 
	nop			;8115	00 	. 
	add a,c			;8116	81 	. 
	ld d,(hl)			;8117	56 	V 
	dec b			;8118	05 	. 
	ld d,b			;8119	50 	P 
	add a,c			;811a	81 	. 
	ld d,l			;811b	55 	U 
	inc bc			;811c	03 	. 
	nop			;811d	00 	. 
	add a,c			;811e	81 	. 
	ld d,d			;811f	52 	R 
	dec b			;8120	05 	. 
l8121h:
	ld d,c			;8121	51 	Q 
	add a,c			;8122	81 	. 
	ld d,(hl)			;8123	56 	V 
	inc bc			;8124	03 	. 
	ld d,b			;8125	50 	P 
	add a,d			;8126	82 	. 
	inc bc			;8127	03 	. 
l8128h:
	djnz l812fh		;8128	10 05 	. . 
	nop			;812a	00 	. 
	add a,c			;812b	81 	. 
	ld d,h			;812c	54 	T 
	inc b			;812d	04 	. 
	ld d,b			;812e	50 	P 
l812fh:
	add a,c			;812f	81 	. 
	ld d,(hl)			;8130	56 	V 
	inc bc			;8131	03 	. 
	ld d,b			;8132	50 	P 
	add a,l			;8133	85 	. 
l8134h:
	djnz l8136h		;8134	10 00 	. . 
l8136h:
	nop			;8136	00 	. 
	dec bc			;8137	0b 	. 
	inc c			;8138	0c 	. 
	inc bc			;8139	03 	. 
	nop			;813a	00 	. 
	add a,c			;813b	81 	. 
	ld d,h			;813c	54 	T 
	inc bc			;813d	03 	. 
	ld d,b			;813e	50 	P 
	add a,(hl)			;813f	86 	. 
	ld d,(hl)			;8140	56 	V 
	ld d,b			;8141	50 	P 
	ld d,b			;8142	50 	P 
	ld d,l			;8143	55 	U 
	nop			;8144	00 	. 
	djnz l814eh		;8145	10 07 	. . 
	nop			;8147	00 	. 
	add a,c			;8148	81 	. 
	ld d,h			;8149	54 	T 
	inc b			;814a	04 	. 
	ld d,b			;814b	50 	P 
	add a,h			;814c	84 	. 
	ld d,l			;814d	55 	U 
l814eh:
	djnz l8150h		;814e	10 00 	. . 
l8150h:
	djnz $+10		;8150	10 08 	. . 
	nop			;8152	00 	. 
	adc a,b			;8153	88 	. 
	ld d,h			;8154	54 	T 
	ld d,b			;8155	50 	P 
	ld d,b			;8156	50 	P 
	ld d,a			;8157	57 	W 
	nop			;8158	00 	. 
	djnz $+5		;8159	10 03 	. . 
	nop			;815b	00 	. 
	ld (bc),a			;815c	02 	. 
	djnz $+9		;815d	10 07 	. . 
	nop			;815f	00 	. 
l8160h:
	add a,l			;8160	85 	. 
	ld d,(hl)			;8161	56 	V 
	ld d,b			;8162	50 	P 
	ld d,a			;8163	57 	W 
	nop			;8164	00 	. 
	djnz $+5		;8165	10 03 	. . 
	nop			;8167	00 	. 
	add a,c			;8168	81 	. 
	djnz l816fh		;8169	10 04 	. . 
	nop			;816b	00 	. 
	adc a,b			;816c	88 	. 
	ld (bc),a			;816d	02 	. 
	nop			;816e	00 	. 
l816fh:
	nop			;816f	00 	. 
	ld d,(hl)			;8170	56 	V 
	ld d,b			;8171	50 	P 
	ld d,a			;8172	57 	W 
	nop			;8173	00 	. 
	inc bc			;8174	03 	. 
	inc bc			;8175	03 	. 
	nop			;8176	00 	. 
	ld (bc),a			;8177	02 	. 
	inc bc			;8178	03 	. 
	adc a,e			;8179	8b 	. 
	ld d,d			;817a	52 	R 
	ld d,c			;817b	51 	Q 
	ld d,c			;817c	51 	Q 
	ld d,e			;817d	53 	S 
	nop			;817e	00 	. 
	nop			;817f	00 	. 
	ld d,(hl)			;8180	56 	V 
	ld d,b			;8181	50 	P 
	ld d,a			;8182	57 	W 
	nop			;8183	00 	. 
	djnz l8189h		;8184	10 03 	. . 
	nop			;8186	00 	. 
	add a,l			;8187	85 	. 
	inc bc			;8188	03 	. 
l8189h:
	nop			;8189	00 	. 
	nop			;818a	00 	. 
	ld d,h			;818b	54 	T 
	ld d,l			;818c	55 	U 
	inc bc			;818d	03 	. 
	nop			;818e	00 	. 
	add a,d			;818f	82 	. 
	ld d,(hl)			;8190	56 	V 
	ld d,b			;8191	50 	P 
	nop			;8192	00 	. 
	add a,e			;8193	83 	. 
	ld d,a			;8194	57 	W 
	nop			;8195	00 	. 
	ld d,d			;8196	52 	R 
	inc bc			;8197	03 	. 
	ld d,c			;8198	51 	Q 
	add a,c			;8199	81 	. 
	ld d,e			;819a	53 	S 
	rlca			;819b	07 	. 
	nop			;819c	00 	. 
	add a,e			;819d	83 	. 
	inc bc			;819e	03 	. 
	ld d,b			;819f	50 	P 
	ld d,a			;81a0	57 	W 
	inc c			;81a1	0c 	. 
	nop			;81a2	00 	. 
	ld (bc),a			;81a3	02 	. 
	djnz l8128h		;81a4	10 82 	. . 
	ld d,b			;81a6	50 	P 
	ld d,a			;81a7	57 	W 
	rlca			;81a8	07 	. 
	nop			;81a9	00 	. 
	add a,c			;81aa	81 	. 
	ld d,d			;81ab	52 	R 
	ld b,051h		;81ac	06 51 	. Q 
	add a,d			;81ae	82 	. 
	ld d,b			;81af	50 	P 
	ld d,a			;81b0	57 	W 
	inc b			;81b1	04 	. 
	djnz l81b8h		;81b2	10 04 	. . 
	nop			;81b4	00 	. 
	add a,c			;81b5	81 	. 
	ld d,h			;81b6	54 	T 
	inc b			;81b7	04 	. 
l81b8h:
	ld d,b			;81b8	50 	P 
	add a,a			;81b9	87 	. 
	ld d,(hl)			;81ba	56 	V 
	ld d,b			;81bb	50 	P 
	ld d,a			;81bc	57 	W 
	inc bc			;81bd	03 	. 
	nop			;81be	00 	. 
	nop			;81bf	00 	. 
	djnz l81c7h		;81c0	10 05 	. . 
	nop			;81c2	00 	. 
	add a,c			;81c3	81 	. 
	ld d,h			;81c4	54 	T 
	inc bc			;81c5	03 	. 
	ld d,b			;81c6	50 	P 
l81c7h:
	add a,a			;81c7	87 	. 
	ld d,(hl)			;81c8	56 	V 
	ld d,b			;81c9	50 	P 
	ld d,a			;81ca	57 	W 
	ld bc,00000h		;81cb	01 00 00 	. . . 
	djnz l81d6h		;81ce	10 06 	. . 
	nop			;81d0	00 	. 
	adc a,d			;81d1	8a 	. 
	ld d,h			;81d2	54 	T 
	ld d,b			;81d3	50 	P 
	ld d,b			;81d4	50 	P 
	ld d,(hl)			;81d5	56 	V 
l81d6h:
	ld d,b			;81d6	50 	P 
	ld d,a			;81d7	57 	W 
	inc bc			;81d8	03 	. 
	nop			;81d9	00 	. 
	nop			;81da	00 	. 
	djnz l81e0h		;81db	10 03 	. . 
	nop			;81dd	00 	. 
	add a,d			;81de	82 	. 
	dec bc			;81df	0b 	. 
l81e0h:
	inc c			;81e0	0c 	. 
	inc b			;81e1	04 	. 
	nop			;81e2	00 	. 
	add a,c			;81e3	81 	. 
	ld d,h			;81e4	54 	T 
	ld (bc),a			;81e5	02 	. 
	ld d,b			;81e6	50 	P 
	ld b,051h		;81e7	06 51 	. Q 
	add a,c			;81e9	81 	. 
	ld d,e			;81ea	53 	S 
	ld b,000h		;81eb	06 00 	. . 
	add a,d			;81ed	82 	. 
	djnz l8246h		;81ee	10 56 	. V 
	dec b			;81f0	05 	. 
	ld d,b			;81f1	50 	P 
	add a,c			;81f2	81 	. 
	ld d,l			;81f3	55 	U 
	rlca			;81f4	07 	. 
	nop			;81f5	00 	. 
	add a,e			;81f6	83 	. 
	djnz l81f9h		;81f7	10 00 	. . 
l81f9h:
	ld d,(hl)			;81f9	56 	V 
	inc b			;81fa	04 	. 
	ld d,b			;81fb	50 	P 
	add a,h			;81fc	84 	. 
	ld d,l			;81fd	55 	U 
	nop			;81fe	00 	. 
	nop			;81ff	00 	. 
l8200h:
	ld a,(bc)			;8200	0a 	. 
	inc b			;8201	04 	. 
	nop			;8202	00 	. 
	add a,h			;8203	84 	. 
	djnz l8206h		;8204	10 00 	. . 
l8206h:
	nop			;8206	00 	. 
	ld d,(hl)			;8207	56 	V 
	inc b			;8208	04 	. 
	ld d,b			;8209	50 	P 
	inc b			;820a	04 	. 
	nop			;820b	00 	. 
	add a,c			;820c	81 	. 
	ld d,d			;820d	52 	R 
	inc bc			;820e	03 	. 
	ld d,c			;820f	51 	Q 
	add a,h			;8210	84 	. 
	ld d,e			;8211	53 	S 
	nop			;8212	00 	. 
	nop			;8213	00 	. 
	ld d,(hl)			;8214	56 	V 
	inc bc			;8215	03 	. 
	ld d,b			;8216	50 	P 
	add a,c			;8217	81 	. 
	ld d,l			;8218	55 	U 
	dec b			;8219	05 	. 
	nop			;821a	00 	. 
	add a,e			;821b	83 	. 
	ld d,h			;821c	54 	T 
	ld d,b			;821d	50 	P 
	ld d,l			;821e	55 	U 
	inc bc			;821f	03 	. 
	nop			;8220	00 	. 
	add a,c			;8221	81 	. 
	ld d,(hl)			;8222	56 	V 
	nop			;8223	00 	. 
	add a,e			;8224	83 	. 
	ld d,b			;8225	50 	P 
	ld d,l			;8226	55 	U 
	ld a,(bc)			;8227	0a 	. 
	inc c			;8228	0c 	. 
	nop			;8229	00 	. 
	add a,d			;822a	82 	. 
	ld d,(hl)			;822b	56 	V 
	ld d,a			;822c	57 	W 
	ld c,000h		;822d	0e 00 	. . 
	add a,d			;822f	82 	. 
	ld d,(hl)			;8230	56 	V 
	ld d,a			;8231	57 	W 
	ld c,000h		;8232	0e 00 	. . 
	add a,l			;8234	85 	. 
	ld d,(hl)			;8235	56 	V 
	ld d,a			;8236	57 	W 
	nop			;8237	00 	. 
	nop			;8238	00 	. 
	ld d,d			;8239	52 	R 
	inc bc			;823a	03 	. 
	ld d,c			;823b	51 	Q 
	add a,c			;823c	81 	. 
	ex af,af'			;823d	08 	. 
	dec b			;823e	05 	. 
	ld d,c			;823f	51 	Q 
	add a,h			;8240	84 	. 
	ld d,e			;8241	53 	S 
	nop			;8242	00 	. 
	ld d,(hl)			;8243	56 	V 
	ld d,a			;8244	57 	W 
	inc bc			;8245	03 	. 
l8246h:
	nop			;8246	00 	. 
	add a,c			;8247	81 	. 
	ld d,h			;8248	54 	T 
	rlca			;8249	07 	. 
	ld d,b			;824a	50 	P 
	add a,l			;824b	85 	. 
	ld d,l			;824c	55 	U 
	nop			;824d	00 	. 
	inc bc			;824e	03 	. 
	ld d,(hl)			;824f	56 	V 
	ld d,a			;8250	57 	W 
	inc b			;8251	04 	. 
	nop			;8252	00 	. 
	add a,c			;8253	81 	. 
	ld d,h			;8254	54 	T 
	dec b			;8255	05 	. 
	ld d,b			;8256	50 	P 
	add a,(hl)			;8257	86 	. 
	ld d,l			;8258	55 	U 
	nop			;8259	00 	. 
	nop			;825a	00 	. 
	inc bc			;825b	03 	. 
	ld d,(hl)			;825c	56 	V 
	ld d,a			;825d	57 	W 
	ld c,000h		;825e	0e 00 	. . 
	add a,l			;8260	85 	. 
	ld d,(hl)			;8261	56 	V 
	ld d,a			;8262	57 	W 
	djnz l8275h		;8263	10 10 	. . 
	inc bc			;8265	03 	. 
	dec bc			;8266	0b 	. 
	nop			;8267	00 	. 
	add a,d			;8268	82 	. 
	ld d,(hl)			;8269	56 	V 
	ld d,a			;826a	57 	W 
	inc bc			;826b	03 	. 
	nop			;826c	00 	. 
	add a,c			;826d	81 	. 
	djnz l8275h		;826e	10 05 	. . 
	nop			;8270	00 	. 
	add a,c			;8271	81 	. 
	ld d,d			;8272	52 	R 
	inc b			;8273	04 	. 
	ld d,c			;8274	51 	Q 
l8275h:
	add a,d			;8275	82 	. 
	ld d,b			;8276	50 	P 
	ld d,a			;8277	57 	W 
	inc bc			;8278	03 	. 
	nop			;8279	00 	. 
	add a,c			;827a	81 	. 
	djnz l8283h		;827b	10 06 	. . 
	nop			;827d	00 	. 
	add a,c			;827e	81 	. 
	ld d,h			;827f	54 	T 
	inc bc			;8280	03 	. 
	ld d,b			;8281	50 	P 
	add a,d			;8282	82 	. 
l8283h:
	ld d,(hl)			;8283	56 	V 
	ld d,b			;8284	50 	P 
	dec b			;8285	05 	. 
	ld d,c			;8286	51 	Q 
	adc a,d			;8287	8a 	. 
	ld d,e			;8288	53 	S 
	nop			;8289	00 	. 
	nop			;828a	00 	. 
	dec bc			;828b	0b 	. 
	inc c			;828c	0c 	. 
	nop			;828d	00 	. 
	nop			;828e	00 	. 
	ld d,h			;828f	54 	T 
	ld d,b			;8290	50 	P 
	ld d,(hl)			;8291	56 	V 
	dec b			;8292	05 	. 
	ld d,b			;8293	50 	P 
	add a,c			;8294	81 	. 
	ld d,l			;8295	55 	U 
	ex af,af'			;8296	08 	. 
	nop			;8297	00 	. 
	add a,d			;8298	82 	. 
	ld d,h			;8299	54 	T 
	ld d,(hl)			;829a	56 	V 
	nop			;829b	00 	. 
	inc b			;829c	04 	. 
	ld d,b			;829d	50 	P 
	add a,c			;829e	81 	. 
	ld d,l			;829f	55 	U 
	ld a,(bc)			;82a0	0a 	. 
	nop			;82a1	00 	. 
	add a,c			;82a2	81 	. 
	ld d,(hl)			;82a3	56 	V 
	inc bc			;82a4	03 	. 
	ld d,b			;82a5	50 	P 
	add a,l			;82a6	85 	. 
	ld d,l			;82a7	55 	U 
	nop			;82a8	00 	. 
	nop			;82a9	00 	. 
	dec bc			;82aa	0b 	. 
	inc c			;82ab	0c 	. 
	ld b,000h		;82ac	06 00 	. . 
	add a,l			;82ae	85 	. 
	djnz l8307h		;82af	10 56 	. V 
	ld d,b			;82b1	50 	P 
	inc bc			;82b2	03 	. 
	djnz l82bah		;82b3	10 05 	. . 
	nop			;82b5	00 	. 
	add a,c			;82b6	81 	. 
	ld a,(bc)			;82b7	0a 	. 
	inc b			;82b8	04 	. 
	nop			;82b9	00 	. 
l82bah:
	add a,h			;82ba	84 	. 
	djnz l82bdh		;82bb	10 00 	. . 
l82bdh:
	ld d,(hl)			;82bd	56 	V 
	ld d,b			;82be	50 	P 
	ld (bc),a			;82bf	02 	. 
	djnz l82ceh		;82c0	10 0c 	. . 
	nop			;82c2	00 	. 
	add a,h			;82c3	84 	. 
	ld d,(hl)			;82c4	56 	V 
	ld d,a			;82c5	57 	W 
	ld d,c			;82c6	51 	Q 
	ld d,e			;82c7	53 	S 
	add hl,bc			;82c8	09 	. 
	nop			;82c9	00 	. 
	inc bc			;82ca	03 	. 
	inc bc			;82cb	03 	. 
	add a,e			;82cc	83 	. 
	ld d,(hl)			;82cd	56 	V 
l82ceh:
	ld d,a			;82ce	57 	W 
	ld d,l			;82cf	55 	U 
	ld a,(bc)			;82d0	0a 	. 
	nop			;82d1	00 	. 
	add a,l			;82d2	85 	. 
	djnz l82d5h		;82d3	10 00 	. . 
l82d5h:
	nop			;82d5	00 	. 
	ld d,(hl)			;82d6	56 	V 
	ld d,a			;82d7	57 	W 
	dec bc			;82d8	0b 	. 
	nop			;82d9	00 	. 
	adc a,b			;82da	88 	. 
	djnz l82ddh		;82db	10 00 	. . 
l82ddh:
	djnz l8335h		;82dd	10 56 	. V 
	ld d,a			;82df	57 	W 
	nop			;82e0	00 	. 
	nop			;82e1	00 	. 
	ld d,d			;82e2	52 	R 
	dec bc			;82e3	0b 	. 
	ld d,c			;82e4	51 	Q 
	add a,d			;82e5	82 	. 
	ld d,b			;82e6	50 	P 
	ld d,a			;82e7	57 	W 
	inc bc			;82e8	03 	. 
	nop			;82e9	00 	. 
	add a,c			;82ea	81 	. 
	ld d,h			;82eb	54 	T 
	dec bc			;82ec	0b 	. 
	ld d,b			;82ed	50 	P 
	add a,c			;82ee	81 	. 
	ld d,a			;82ef	57 	W 
	dec b			;82f0	05 	. 
	nop			;82f1	00 	. 
	add a,c			;82f2	81 	. 
	ld d,h			;82f3	54 	T 
	ld a,(bc)			;82f4	0a 	. 
	ld d,b			;82f5	50 	P 
	add a,d			;82f6	82 	. 
	ld d,c			;82f7	51 	Q 
	ld d,e			;82f8	53 	S 
	ld b,000h		;82f9	06 00 	. . 
	add a,d			;82fb	82 	. 
	inc bc			;82fc	03 	. 
	ld d,h			;82fd	54 	T 
	dec b			;82fe	05 	. 
	ld d,b			;82ff	50 	P 
l8300h:
	add a,(hl)			;8300	86 	. 
	ld d,a			;8301	57 	W 
	ld d,l			;8302	55 	U 
	nop			;8303	00 	. 
	nop			;8304	00 	. 
	dec bc			;8305	0b 	. 
	inc c			;8306	0c 	. 
l8307h:
	rlca			;8307	07 	. 
	nop			;8308	00 	. 
	add a,c			;8309	81 	. 
	ld d,h			;830a	54 	T 
	ld (bc),a			;830b	02 	. 
	ld d,b			;830c	50 	P 
	nop			;830d	00 	. 
	add a,d			;830e	82 	. 
	ld d,a			;830f	57 	W 
	inc bc			;8310	03 	. 
	inc c			;8311	0c 	. 
	nop			;8312	00 	. 
	add a,e			;8313	83 	. 
	ld d,h			;8314	54 	T 
	ld d,b			;8315	50 	P 
	ld d,a			;8316	57 	W 
	ld b,000h		;8317	06 00 	. . 
	add a,h			;8319	84 	. 
	ld d,d			;831a	52 	R 
	ld d,c			;831b	51 	Q 
	ld d,c			;831c	51 	Q 
	ld d,e			;831d	53 	S 
	inc b			;831e	04 	. 
	nop			;831f	00 	. 
	add a,d			;8320	82 	. 
l8321h:
	ld d,(hl)			;8321	56 	V 
	ld d,a			;8322	57 	W 
	ld c,000h		;8323	0e 00 	. . 
	add a,a			;8325	87 	. 
	ld d,(hl)			;8326	56 	V 
	ld d,a			;8327	57 	W 
	nop			;8328	00 	. 
	ld d,d			;8329	52 	R 
	ld d,c			;832a	51 	Q 
	ld d,c			;832b	51 	Q 
	ld d,e			;832c	53 	S 
	add hl,bc			;832d	09 	. 
	nop			;832e	00 	. 
	add a,d			;832f	82 	. 
	ld d,(hl)			;8330	56 	V 
	ld d,a			;8331	57 	W 
	dec bc			;8332	0b 	. 
	nop			;8333	00 	. 
	add a,l			;8334	85 	. 
l8335h:
	inc bc			;8335	03 	. 
	nop			;8336	00 	. 
	nop			;8337	00 	. 
	ld d,(hl)			;8338	56 	V 
	ld d,a			;8339	57 	W 
	rlca			;833a	07 	. 
	nop			;833b	00 	. 
	adc a,e			;833c	8b 	. 
	dec bc			;833d	0b 	. 
	inc c			;833e	0c 	. 
	nop			;833f	00 	. 
	ld d,d			;8340	52 	R 
	ld d,e			;8341	53 	S 
	nop			;8342	00 	. 
	nop			;8343	00 	. 
	ld d,(hl)			;8344	56 	V 
	ld d,a			;8345	57 	W 
	nop			;8346	00 	. 
	ld a,(bc)			;8347	0a 	. 
	inc c			;8348	0c 	. 
	nop			;8349	00 	. 
	add a,h			;834a	84 	. 
	ld d,(hl)			;834b	56 	V 
	ld d,a			;834c	57 	W 
	nop			;834d	00 	. 
	ld a,(bc)			;834e	0a 	. 
	dec bc			;834f	0b 	. 
	nop			;8350	00 	. 
	add a,h			;8351	84 	. 
	inc bc			;8352	03 	. 
	ld d,(hl)			;8353	56 	V 
	ld d,b			;8354	50 	P 
	ld d,e			;8355	53 	S 
	dec c			;8356	0d 	. 
	nop			;8357	00 	. 
	add a,d			;8358	82 	. 
	ld d,(hl)			;8359	56 	V 
	ld d,a			;835a	57 	W 
	inc b			;835b	04 	. 
	nop			;835c	00 	. 
	add a,e			;835d	83 	. 
	ld d,d			;835e	52 	R 
	ld d,c			;835f	51 	Q 
	ld d,e			;8360	53 	S 
	rlca			;8361	07 	. 
	nop			;8362	00 	. 
	add a,l			;8363	85 	. 
	ld d,(hl)			;8364	56 	V 
	ld d,a			;8365	57 	W 
	nop			;8366	00 	. 
	dec bc			;8367	0b 	. 
	inc c			;8368	0c 	. 
	rlca			;8369	07 	. 
	nop			;836a	00 	. 
	add a,(hl)			;836b	86 	. 
	ld d,d			;836c	52 	R 
	ld d,e			;836d	53 	S 
	nop			;836e	00 	. 
	nop			;836f	00 	. 
	ld d,(hl)			;8370	56 	V 
	ld d,a			;8371	57 	W 
	dec c			;8372	0d 	. 
	nop			;8373	00 	. 
	add a,d			;8374	82 	. 
	ld d,d			;8375	52 	R 
	ld d,(hl)			;8376	56 	V 
	nop			;8377	00 	. 
	add a,c			;8378	81 	. 
	ld d,a			;8379	57 	W 
	ld c,000h		;837a	0e 00 	. . 
	add a,d			;837c	82 	. 
	ld d,(hl)			;837d	56 	V 
	ld d,a			;837e	57 	W 
	ld c,000h		;837f	0e 00 	. . 
	sub d			;8381	92 	. 
	ld d,(hl)			;8382	56 	V 
	ld d,a			;8383	57 	W 
	nop			;8384	00 	. 
	ld d,d			;8385	52 	R 
	ld d,c			;8386	51 	Q 
	ld d,e			;8387	53 	S 
	nop			;8388	00 	. 
	ld d,d			;8389	52 	R 
	ld d,c			;838a	51 	Q 
	ld d,e			;838b	53 	S 
	nop			;838c	00 	. 
	ld d,d			;838d	52 	R 
	ld d,c			;838e	51 	Q 
	ld d,e			;838f	53 	S 
	nop			;8390	00 	. 
	ld d,d			;8391	52 	R 
	ld d,(hl)			;8392	56 	V 
	ld d,a			;8393	57 	W 
	ld c,000h		;8394	0e 00 	. . 
	add a,d			;8396	82 	. 
	ld d,(hl)			;8397	56 	V 
	ld d,a			;8398	57 	W 
	inc bc			;8399	03 	. 
	nop			;839a	00 	. 
	adc a,l			;839b	8d 	. 
	djnz l83a8h		;839c	10 0a 	. . 
	nop			;839e	00 	. 
	ld d,d			;839f	52 	R 
	ld d,e			;83a0	53 	S 
	nop			;83a1	00 	. 
	inc bc			;83a2	03 	. 
	nop			;83a3	00 	. 
	djnz l83b0h		;83a4	10 0a 	. . 
	nop			;83a6	00 	. 
	ld d,(hl)			;83a7	56 	V 
l83a8h:
	ld d,a			;83a8	57 	W 
	inc bc			;83a9	03 	. 
	nop			;83aa	00 	. 
	add a,d			;83ab	82 	. 
	djnz l83b8h		;83ac	10 0a 	. . 
	inc b			;83ae	04 	. 
	nop			;83af	00 	. 
l83b0h:
	add a,a			;83b0	87 	. 
	djnz l83b3h		;83b1	10 00 	. . 
l83b3h:
	djnz l83bfh		;83b3	10 0a 	. . 
	nop			;83b5	00 	. 
	ld d,(hl)			;83b6	56 	V 
	ld d,a			;83b7	57 	W 
l83b8h:
	inc bc			;83b8	03 	. 
	nop			;83b9	00 	. 
	adc a,l			;83ba	8d 	. 
	djnz l83bdh		;83bb	10 00 	. . 
l83bdh:
	ld d,d			;83bd	52 	R 
	ld d,c			;83be	51 	Q 
l83bfh:
	ld d,e			;83bf	53 	S 
	nop			;83c0	00 	. 
	inc bc			;83c1	03 	. 
	nop			;83c2	00 	. 
	djnz l83c5h		;83c3	10 00 	. . 
l83c5h:
	nop			;83c5	00 	. 
	ld d,(hl)			;83c6	56 	V 
	ld d,a			;83c7	57 	W 
	inc bc			;83c8	03 	. 
	nop			;83c9	00 	. 
	add a,c			;83ca	81 	. 
	djnz $+7		;83cb	10 05 	. . 
	nop			;83cd	00 	. 
	sbc a,b			;83ce	98 	. 
	djnz l83d1h		;83cf	10 00 	. . 
l83d1h:
	djnz l83d3h		;83d1	10 00 	. . 
l83d3h:
	nop			;83d3	00 	. 
	ld d,(hl)			;83d4	56 	V 
	ld d,b			;83d5	50 	P 
	ld d,c			;83d6	51 	Q 
	ld d,e			;83d7	53 	S 
	nop			;83d8	00 	. 
	ld d,d			;83d9	52 	R 
	ld d,c			;83da	51 	Q 
	ld d,e			;83db	53 	S 
	nop			;83dc	00 	. 
	ld d,d			;83dd	52 	R 
	ld d,c			;83de	51 	Q 
	ld d,e			;83df	53 	S 
	nop			;83e0	00 	. 
	ld d,d			;83e1	52 	R 
	ld d,c			;83e2	51 	Q 
	ld d,c			;83e3	51 	Q 
	ld d,(hl)			;83e4	56 	V 
	ld d,a			;83e5	57 	W 
	ld d,l			;83e6	55 	U 
	dec bc			;83e7	0b 	. 
	nop			;83e8	00 	. 
	add a,h			;83e9	84 	. 
	ld d,h			;83ea	54 	T 
	ld d,b			;83eb	50 	P 
	ld d,(hl)			;83ec	56 	V 
	ld d,a			;83ed	57 	W 
	dec c			;83ee	0d 	. 
	nop			;83ef	00 	. 
	add a,e			;83f0	83 	. 
	ld d,h			;83f1	54 	T 
	ld d,(hl)			;83f2	56 	V 
	ld d,a			;83f3	57 	W 
	ld c,000h		;83f4	0e 00 	. . 
	add a,c			;83f6	81 	. 
	ld d,(hl)			;83f7	56 	V 
	nop			;83f8	00 	. 
	add a,h			;83f9	84 	. 
	ld d,a			;83fa	57 	W 
	nop			;83fb	00 	. 
	nop			;83fc	00 	. 
	ld a,(bc)			;83fd	0a 	. 
	dec b			;83fe	05 	. 
	nop			;83ff	00 	. 
	add a,d			;8400	82 	. 
	dec bc			;8401	0b 	. 
	inc c			;8402	0c 	. 
	inc b			;8403	04 	. 
	nop			;8404	00 	. 
	add a,l			;8405	85 	. 
	ld d,(hl)			;8406	56 	V 
	ld d,a			;8407	57 	W 
	nop			;8408	00 	. 
	nop			;8409	00 	. 
	ld a,(bc)			;840a	0a 	. 
	dec bc			;840b	0b 	. 
	nop			;840c	00 	. 
	add a,l			;840d	85 	. 
	ld d,(hl)			;840e	56 	V 
	ld d,a			;840f	57 	W 
	nop			;8410	00 	. 
	nop			;8411	00 	. 
	ld a,(bc)			;8412	0a 	. 
	dec bc			;8413	0b 	. 
	nop			;8414	00 	. 
	add a,(hl)			;8415	86 	. 
	ld d,(hl)			;8416	56 	V 
	ld d,a			;8417	57 	W 
	nop			;8418	00 	. 
	nop			;8419	00 	. 
	dec bc			;841a	0b 	. 
	inc c			;841b	0c 	. 
	ld a,(bc)			;841c	0a 	. 
	nop			;841d	00 	. 
	add a,d			;841e	82 	. 
	ld d,(hl)			;841f	56 	V 
	ld d,a			;8420	57 	W 
	ld c,000h		;8421	0e 00 	. . 
	add a,d			;8423	82 	. 
	ld d,(hl)			;8424	56 	V 
	ld d,a			;8425	57 	W 
	add hl,bc			;8426	09 	. 
	nop			;8427	00 	. 
	add a,d			;8428	82 	. 
	dec bc			;8429	0b 	. 
	inc c			;842a	0c 	. 
	inc bc			;842b	03 	. 
	nop			;842c	00 	. 
	add a,d			;842d	82 	. 
	ld d,(hl)			;842e	56 	V 
	ld d,a			;842f	57 	W 
	ld c,000h		;8430	0e 00 	. . 
	add a,d			;8432	82 	. 
	ld d,(hl)			;8433	56 	V 
	ld d,a			;8434	57 	W 
	ld c,000h		;8435	0e 00 	. . 
	add a,d			;8437	82 	. 
	ld d,(hl)			;8438	56 	V 
	ld d,a			;8439	57 	W 
	dec bc			;843a	0b 	. 
	nop			;843b	00 	. 
	add a,l			;843c	85 	. 
	ld a,(bc)			;843d	0a 	. 
	nop			;843e	00 	. 
	nop			;843f	00 	. 
	ld d,(hl)			;8440	56 	V 
	ld d,a			;8441	57 	W 
	ld c,000h		;8442	0e 00 	. . 
	add a,a			;8444	87 	. 
	ld d,(hl)			;8445	56 	V 
	ld d,a			;8446	57 	W 
	nop			;8447	00 	. 
	dec bc			;8448	0b 	. 
	inc c			;8449	0c 	. 
	nop			;844a	00 	. 
	ld a,(bc)			;844b	0a 	. 
	add hl,bc			;844c	09 	. 
	nop			;844d	00 	. 
	add a,d			;844e	82 	. 
	ld d,(hl)			;844f	56 	V 
	ld d,b			;8450	50 	P 
	ld c,000h		;8451	0e 00 	. . 
	add a,c			;8453	81 	. 
	ld d,h			;8454	54 	T 
	nop			;8455	00 	. 
	add a,c			;8456	81 	. 
	ld d,b			;8457	50 	P 
	rrca			;8458	0f 	. 
	dec a			;8459	3d 	= 
	add a,c			;845a	81 	. 
	ld d,b			;845b	50 	P 
	ld a,(bc)			;845c	0a 	. 
	ld hl,03e81h		;845d	21 81 3e 	! . > 
	inc b			;8460	04 	. 
	ld hl,05081h		;8461	21 81 50 	! . P 
	ld a,(bc)			;8464	0a 	. 
	ld hl,03f81h		;8465	21 81 3f 	! . ? 
	inc b			;8468	04 	. 
	ld hl,05081h		;8469	21 81 50 	! . P 
	inc b			;846c	04 	. 
	ld d,c			;846d	51 	Q 
	add a,c			;846e	81 	. 
	jr l8475h		;846f	18 04 	. . 
	ld hl,01682h		;8471	21 82 16 	! . . 
	ld b,b			;8474	40 	@ 
l8475h:
	inc b			;8475	04 	. 
	ld hl,05081h		;8476	21 81 50 	! . P 
	dec b			;8479	05 	. 
	ld d,004h		;847a	16 04 	. . 
	ld hl,01a83h		;847c	21 83 1a 	! . . 
	ld d,018h		;847f	16 18 	. . 
	inc bc			;8481	03 	. 
	ld hl,05082h		;8482	21 82 50 	! . P 
	ld bc,02102h		;8485	01 02 21 	. . ! 
	ld (bc),a			;8488	02 	. 
	ld d,006h		;8489	16 06 	. . 
	ld hl,01681h		;848b	21 81 16 	! . . 
	inc bc			;848e	03 	. 
	ld hl,05086h		;848f	21 86 50 	! . P 
	inc bc			;8492	03 	. 
	ld hl,01a21h		;8493	21 21 1a 	! ! . 
	ld d,004h		;8496	16 04 	. . 
	ld hl,01783h		;8498	21 83 17 	! . . 
	ld d,019h		;849b	16 19 	. . 
	inc bc			;849d	03 	. 
	ld hl,05082h		;849e	21 82 50 	! . P 
	ld d,003h		;84a1	16 03 	. . 
	ld hl,01686h		;84a3	21 86 16 	! . . 
	ld hl,0213eh		;84a6	21 3e 21 	! > ! 
	ld hl,00311h		;84a9	21 11 03 	! . . 
	ld hl,03e02h		;84ac	21 02 3e 	! . > 
	adc a,b			;84af	88 	. 
	ld d,b			;84b0	50 	P 
	ld d,018h		;84b1	16 18 	. . 
	ld hl,01621h		;84b3	21 21 16 	! ! . 
	ld hl,0063fh		;84b6	21 3f 06 	! ? . 
	ld hl,03f02h		;84b9	21 02 3f 	! . ? 
	add a,c			;84bc	81 	. 
	ld d,b			;84bd	50 	P 
	ld (bc),a			;84be	02 	. 
	ld d,002h		;84bf	16 02 	. . 
	ld hl,01183h		;84c1	21 83 11 	! . . 
	ld hl,00340h		;84c4	21 40 03 	! @ . 
	ld hl,00302h		;84c7	21 02 03 	! . . 
	add a,h			;84ca	84 	. 
	ld hl,04040h		;84cb	21 40 40 	! @ @ 
	ld d,b			;84ce	50 	P 
	rrca			;84cf	0f 	. 
	ld d,c			;84d0	51 	Q 
	djnz $+82		;84d1	10 50 	. P 
	nop			;84d3	00 	. 
	djnz l8513h		;84d4	10 3d 	. = 
	add a,c			;84d6	81 	. 
	ld hl,05106h		;84d7	21 06 51 	! . Q 
	inc bc			;84da	03 	. 
	ld hl,01a82h		;84db	21 82 1a 	! . . 
	ld d,005h		;84de	16 05 	. . 
	ld hl,01606h		;84e0	21 06 16 	! . . 
	inc b			;84e3	04 	. 
	ld hl,01681h		;84e4	21 81 16 	! . . 
	dec b			;84e7	05 	. 
	ld hl,01a81h		;84e8	21 81 1a 	! . . 
	inc b			;84eb	04 	. 
	ld d,081h		;84ec	16 81 	. . 
	add hl,de			;84ee	19 	. 
	inc b			;84ef	04 	. 
	ld hl,01681h		;84f0	21 81 16 	! . . 
	rlca			;84f3	07 	. 
	ld hl,01a83h		;84f4	21 83 1a 	! . . 
	add hl,de			;84f7	19 	. 
	inc bc			;84f8	03 	. 
	dec b			;84f9	05 	. 
	ld hl,01602h		;84fa	21 02 16 	! . . 
	add a,l			;84fd	85 	. 
	jr $+35		;84fe	18 21 	. ! 
	ld hl,0113eh		;8500	21 3e 11 	! > . 
	inc b			;8503	04 	. 
	ld hl,01181h		;8504	21 81 11 	! . . 
	add hl,bc			;8507	09 	. 
	ld hl,03f81h		;8508	21 81 3f 	! . ? 
	ld b,051h		;850b	06 51 	. Q 
	inc b			;850d	04 	. 
	ld hl,01602h		;850e	21 02 16 	! . . 
	add a,h			;8511	84 	. 
	add hl,de			;8512	19 	. 
l8513h:
	ld hl,04021h		;8513	21 21 40 	! ! @ 
	ld b,050h		;8516	06 50 	. P 
	inc b			;8518	04 	. 
	ld hl,01681h		;8519	21 81 16 	! . . 
	ld (bc),a			;851c	02 	. 
	ld a,002h		;851d	3e 02 	> . 
	ld hl,05181h		;851f	21 81 51 	! . Q 
	ld b,050h		;8522	06 50 	. P 
	inc b			;8524	04 	. 
	ld hl,01681h		;8525	21 81 16 	! . . 
	ld (bc),a			;8528	02 	. 
	ccf			;8529	3f 	? 
	ld (bc),a			;852a	02 	. 
	ld hl,05007h		;852b	21 07 50 	! . P 
	inc b			;852e	04 	. 
	ld hl,01681h		;852f	21 81 16 	! . . 
	ld (bc),a			;8532	02 	. 
	ld b,b			;8533	40 	@ 
	ld (bc),a			;8534	02 	. 
	ld hl,05007h		;8535	21 07 50 	! . P 
	add hl,bc			;8538	09 	. 
	ld d,c			;8539	51 	Q 
	djnz $+82		;853a	10 50 	. P 
	nop			;853c	00 	. 
	rrca			;853d	0f 	. 
	dec a			;853e	3d 	= 
	add a,e			;853f	83 	. 
	ld d,021h		;8540	16 21 	. ! 
	rla			;8542	17 	. 
	inc bc			;8543	03 	. 
	ld d,081h		;8544	16 81 	. . 
	jr $+10		;8546	18 08 	. . 
	ld hl,01602h		;8548	21 02 16 	! . . 
	add a,d			;854b	82 	. 
	ld hl,00316h		;854c	21 16 03 	! . . 
	ld hl,01181h		;854f	21 81 11 	! . . 
	rlca			;8552	07 	. 
	ld hl,01603h		;8553	21 03 16 	! . . 
	add a,d			;8556	82 	. 
	ld hl,00316h		;8557	21 16 03 	! . . 
	ld hl,01181h		;855a	21 81 11 	! . . 
	rlca			;855d	07 	. 
	ld hl,01102h		;855e	21 02 11 	! . . 
	add a,e			;8561	83 	. 
	ld d,021h		;8562	16 21 	. ! 
	ld d,003h		;8564	16 03 	. . 
	ld hl,01181h		;8566	21 81 11 	! . . 
	rlca			;8569	07 	. 
	ld hl,01185h		;856a	21 85 11 	! . . 
	inc bc			;856d	03 	. 
	ld d,021h		;856e	16 21 	. ! 
	ld d,003h		;8570	16 03 	. . 
	ld hl,01181h		;8572	21 81 11 	! . . 
	ld b,021h		;8575	06 21 	. ! 
	ld (bc),a			;8577	02 	. 
	ld de,00384h		;8578	11 84 03 	. . . 
	ld d,021h		;857b	16 21 	. ! 
	ld bc,02103h		;857d	01 03 21 	. . ! 
	add a,c			;8580	81 	. 
	ld de,03e03h		;8581	11 03 3e 	. . > 
	adc a,l			;8584	8d 	. 
	rla			;8585	17 	. 
	ld d,018h		;8586	16 18 	. . 
	ld hl,00221h		;8588	21 21 02 	! ! . 
	ld d,021h		;858b	16 21 	. ! 
	ld de,0213eh		;858d	11 3e 21 	. > ! 
	ld hl,00311h		;8590	21 11 03 	! . . 
	ccf			;8593	3f 	? 
	adc a,l			;8594	8d 	. 
	ld d,011h		;8595	16 11 	. . 
	ld de,03e21h		;8597	11 21 3e 	. ! > 
	ld de,02116h		;859a	11 16 21 	. . ! 
	ld de,0213fh		;859d	11 3f 21 	. ? ! 
	ld hl,00316h		;85a0	21 16 03 	! . . 
	ld b,b			;85a3	40 	@ 
	adc a,l			;85a4	8d 	. 
	ld d,011h		;85a5	16 11 	. . 
	ld de,03f21h		;85a7	11 21 3f 	. ! ? 
	ld de,02116h		;85aa	11 16 21 	. . ! 
	ld d,040h		;85ad	16 40 	. @ 
	ld hl,01a21h		;85af	21 21 1a 	! ! . 
	inc b			;85b2	04 	. 
	ld d,086h		;85b3	16 86 	. . 
	inc bc			;85b5	03 	. 
	ld de,04021h		;85b6	11 21 40 	. ! @ 
	ld de,01016h		;85b9	11 16 10 	. . . 
	ld d,c			;85bc	51 	Q 
	djnz $+82		;85bd	10 50 	. P 
	nop			;85bf	00 	. 
	jp nz,l9885h		;85c0	c2 85 98 	. . . 
	add a,(hl)			;85c3	86 	. 
	and 085h		;85c4	e6 85 	. . 
	and 085h		;85c6	e6 85 	. . 
	ld c,(hl)			;85c8	4e 	N 
	add a,(hl)			;85c9	86 	. 
	ld c,(hl)			;85ca	4e 	N 
	add a,(hl)			;85cb	86 	. 
	inc hl			;85cc	23 	# 
	add a,(hl)			;85cd	86 	. 
	inc hl			;85ce	23 	# 
	add a,(hl)			;85cf	86 	. 
	ld c,(hl)			;85d0	4e 	N 
	add a,(hl)			;85d1	86 	. 
	ld c,(hl)			;85d2	4e 	N 
	add a,(hl)			;85d3	86 	. 
	inc hl			;85d4	23 	# 
	add a,(hl)			;85d5	86 	. 
	and 085h		;85d6	e6 85 	. . 
	and 085h		;85d8	e6 85 	. . 
	inc hl			;85da	23 	# 
	add a,(hl)			;85db	86 	. 
	inc hl			;85dc	23 	# 
	add a,(hl)			;85dd	86 	. 
	ld c,(hl)			;85de	4e 	N 
	add a,(hl)			;85df	86 	. 
	inc hl			;85e0	23 	# 
	add a,(hl)			;85e1	86 	. 
	call 0e686h		;85e2	cd 86 e6 	. . . 
	add a,l			;85e5	85 	. 
	ld (de),a			;85e6	12 	. 
	nop			;85e7	00 	. 
	add a,d			;85e8	82 	. 
	dec bc			;85e9	0b 	. 
	inc c			;85ea	0c 	. 
	inc hl			;85eb	23 	# 
	nop			;85ec	00 	. 
	add a,d			;85ed	82 	. 
	dec bc			;85ee	0b 	. 
	inc c			;85ef	0c 	. 
	add hl,sp			;85f0	39 	9 
l85f1h:
	nop			;85f1	00 	. 
	adc a,h			;85f2	8c 	. 
	ld (02423h),hl		;85f3	22 23 24 	" # $ 
	nop			;85f6	00 	. 
	nop			;85f7	00 	. 
	ld (02423h),hl		;85f8	22 23 24 	" # $ 
	nop			;85fb	00 	. 
	ld (02423h),hl		;85fc	22 23 24 	" # $ 
	inc b			;85ff	04 	. 
	nop			;8600	00 	. 
	adc a,l			;8601	8d 	. 
	dec h			;8602	25 	% 
	ld h,027h		;8603	26 27 	& ' 
	jr z,l8607h		;8605	28 00 	( . 
l8607h:
	dec h			;8607	25 	% 
	ld h,027h		;8608	26 27 	& ' 
	jr z,l8631h		;860a	28 25 	( % 
	ld h,027h		;860c	26 27 	& ' 
	jr z,l8613h		;860e	28 03 	( . 
	nop			;8610	00 	. 
	adc a,(hl)			;8611	8e 	. 
	add hl,hl			;8612	29 	) 
l8613h:
	ld hl,(02c2bh)		;8613	2a 2b 2c 	* + , 
	nop			;8616	00 	. 
	add hl,hl			;8617	29 	) 
	ld hl,(02c2bh)		;8618	2a 2b 2c 	* + , 
	add hl,hl			;861b	29 	) 
	ld hl,(02c2bh)		;861c	2a 2b 2c 	* + , 
	nop			;861f	00 	. 
	jr nz,$+23		;8620	20 15 	  . 
	nop			;8622	00 	. 
	ld (de),a			;8623	12 	. 
	nop			;8624	00 	. 
	add a,d			;8625	82 	. 
	dec bc			;8626	0b 	. 
	inc c			;8627	0c 	. 
	ld a,(bc)			;8628	0a 	. 
	nop			;8629	00 	. 
	add a,d			;862a	82 	. 
	dec bc			;862b	0b 	. 
	inc c			;862c	0c 	. 
	jr l862fh		;862d	18 00 	. . 
l862fh:
	add a,d			;862f	82 	. 
	dec bc			;8630	0b 	. 
l8631h:
	inc c			;8631	0c 	. 
	ld b,c			;8632	41 	A 
	nop			;8633	00 	. 
	add a,e			;8634	83 	. 
	ld (02423h),hl		;8635	22 23 24 	" # $ 
	ex af,af'			;8638	08 	. 
	nop			;8639	00 	. 
	add a,c			;863a	81 	. 
	inc d			;863b	14 	. 
	inc b			;863c	04 	. 
	nop			;863d	00 	. 
	add a,h			;863e	84 	. 
	dec h			;863f	25 	% 
	ld h,027h		;8640	26 27 	& ' 
	jr z,l8650h		;8642	28 0c 	( . 
	nop			;8644	00 	. 
	add a,l			;8645	85 	. 
	add hl,hl			;8646	29 	) 
	ld hl,(02c2bh)		;8647	2a 2b 2c 	* + , 
	nop			;864a	00 	. 
	jr nz,l8662h		;864b	20 15 	  . 
	nop			;864d	00 	. 
	ld c,000h		;864e	0e 00 	. . 
l8650h:
	add a,l			;8650	85 	. 
	dec bc			;8651	0b 	. 
	inc c			;8652	0c 	. 
	nop			;8653	00 	. 
	dec bc			;8654	0b 	. 
	inc c			;8655	0c 	. 
	ld d,000h		;8656	16 00 	. . 
	add a,d			;8658	82 	. 
	dec bc			;8659	0b 	. 
	inc c			;865a	0c 	. 
	inc l			;865b	2c 	, 
	nop			;865c	00 	. 
	ld (bc),a			;865d	02 	. 
	djnz l866dh		;865e	10 0d 	. . 
	nop			;8660	00 	. 
	inc b			;8661	04 	. 
l8662h:
	djnz $+13		;8662	10 0b 	. . 
	nop			;8664	00 	. 
	ld b,010h		;8665	06 10 	. . 
	inc b			;8667	04 	. 
	nop			;8668	00 	. 
	add a,c			;8669	81 	. 
	ld a,(bc)			;866a	0a 	. 
	inc b			;866b	04 	. 
	nop			;866c	00 	. 
l866dh:
	ld (bc),a			;866d	02 	. 
	djnz l85f1h		;866e	10 81 	. . 
	ld a,(bc)			;8670	0a 	. 
	dec b			;8671	05 	. 
	djnz $+9		;8672	10 07 	. . 
	nop			;8674	00 	. 
	dec b			;8675	05 	. 
	djnz $-125		;8676	10 81 	. . 
	ld a,(bc)			;8678	0a 	. 
	inc b			;8679	04 	. 
	djnz l867fh		;867a	10 03 	. . 
	nop			;867c	00 	. 
	ld (bc),a			;867d	02 	. 
	dec d			;867e	15 	. 
l867fh:
	add a,e			;867f	83 	. 
	ld l,c			;8680	69 	i 
	dec d			;8681	15 	. 
	ld l,c			;8682	69 	i 
	dec b			;8683	05 	. 
	dec d			;8684	15 	. 
	add a,e			;8685	83 	. 
	ld l,c			;8686	69 	i 
	dec d			;8687	15 	. 
	ld l,c			;8688	69 	i 
	dec b			;8689	05 	. 
	dec d			;868a	15 	. 
	add a,e			;868b	83 	. 
	ld l,b			;868c	68 	h 
	dec d			;868d	15 	. 
	ld l,b			;868e	68 	h 
	dec b			;868f	05 	. 
	dec d			;8690	15 	. 
	add a,e			;8691	83 	. 
	ld l,b			;8692	68 	h 
	dec d			;8693	15 	. 
	ld l,b			;8694	68 	h 
	inc bc			;8695	03 	. 
	dec d			;8696	15 	. 
	nop			;8697	00 	. 
	dec de			;8698	1b 	. 
	nop			;8699	00 	. 
	add a,d			;869a	82 	. 
	dec bc			;869b	0b 	. 
	inc c			;869c	0c 	. 
	ld b,000h		;869d	06 00 	. . 
	add a,d			;869f	82 	. 
	dec bc			;86a0	0b 	. 
	inc c			;86a1	0c 	. 
	jr nc,l86a4h		;86a2	30 00 	0 . 
l86a4h:
	add a,e			;86a4	83 	. 
	dec l			;86a5	2d 	- 
	ld l,02fh		;86a6	2e 2f 	. / 
	inc c			;86a8	0c 	. 
	nop			;86a9	00 	. 
	add a,l			;86aa	85 	. 
	jr nc,l86deh		;86ab	30 31 	0 1 
	ld (03433h),a		;86ad	32 33 34 	2 3 4 
	dec bc			;86b0	0b 	. 
	nop			;86b1	00 	. 
	add a,l			;86b2	85 	. 
	dec (hl)			;86b3	35 	5 
	ld (hl),037h		;86b4	36 37 	6 7 
	jr c,l86f1h		;86b6	38 39 	8 9 
	dec bc			;86b8	0b 	. 
	nop			;86b9	00 	. 
	add a,l			;86ba	85 	. 
	dec (hl)			;86bb	35 	5 
	ld a,(03c3bh)		;86bc	3a 3b 3c 	: ; < 
	add hl,sp			;86bf	39 	9 
	dec bc			;86c0	0b 	. 
	nop			;86c1	00 	. 
	add a,l			;86c2	85 	. 
	dec (hl)			;86c3	35 	5 
	ld a,(03c3bh)		;86c4	3a 3b 3c 	: ; < 
	add hl,sp			;86c7	39 	9 
	rlca			;86c8	07 	. 
	nop			;86c9	00 	. 
	jr nz,l86e1h		;86ca	20 15 	  . 
	nop			;86cc	00 	. 
	dec c			;86cd	0d 	. 
	nop			;86ce	00 	. 
	add a,c			;86cf	81 	. 
	inc d			;86d0	14 	. 
	inc b			;86d1	04 	. 
	nop			;86d2	00 	. 
	add a,d			;86d3	82 	. 
	dec bc			;86d4	0b 	. 
	inc c			;86d5	0c 	. 
	add hl,bc			;86d6	09 	. 
	nop			;86d7	00 	. 
	add a,c			;86d8	81 	. 
	inc d			;86d9	14 	. 
	inc c			;86da	0c 	. 
	nop			;86db	00 	. 
	add a,h			;86dc	84 	. 
	dec bc			;86dd	0b 	. 
l86deh:
	inc c			;86de	0c 	. 
	nop			;86df	00 	. 
	inc d			;86e0	14 	. 
l86e1h:
	rrca			;86e1	0f 	. 
	nop			;86e2	00 	. 
	add a,c			;86e3	81 	. 
	inc d			;86e4	14 	. 
	rrca			;86e5	0f 	. 
	nop			;86e6	00 	. 
	add a,c			;86e7	81 	. 
	inc d			;86e8	14 	. 
	rrca			;86e9	0f 	. 
	nop			;86ea	00 	. 
	add a,c			;86eb	81 	. 
	inc d			;86ec	14 	. 
	rrca			;86ed	0f 	. 
	nop			;86ee	00 	. 
	add a,c			;86ef	81 	. 
	inc d			;86f0	14 	. 
l86f1h:
	inc b			;86f1	04 	. 
	nop			;86f2	00 	. 
	add a,l			;86f3	85 	. 
	ld (02423h),hl		;86f4	22 23 24 	" # $ 
	nop			;86f7	00 	. 
	ld a,(bc)			;86f8	0a 	. 
	inc b			;86f9	04 	. 
	nop			;86fa	00 	. 
	add a,e			;86fb	83 	. 
	inc d			;86fc	14 	. 
	nop			;86fd	00 	. 
	inc d			;86fe	14 	. 
	inc b			;86ff	04 	. 
	nop			;8700	00 	. 
	add a,h			;8701	84 	. 
	dec h			;8702	25 	% 
	ld h,027h		;8703	26 27 	& ' 
	jr z,l870ch		;8705	28 05 	( . 
	nop			;8707	00 	. 
	add a,c			;8708	81 	. 
	inc d			;8709	14 	. 
	inc bc			;870a	03 	. 
	nop			;870b	00 	. 
l870ch:
	add a,a			;870c	87 	. 
	inc d			;870d	14 	. 
	nop			;870e	00 	. 
	nop			;870f	00 	. 
	add hl,hl			;8710	29 	) 
	ld hl,(02c2bh)		;8711	2a 2b 2c 	* + , 
	dec b			;8714	05 	. 
	nop			;8715	00 	. 
	add a,c			;8716	81 	. 
	inc d			;8717	14 	. 
	inc bc			;8718	03 	. 
	nop			;8719	00 	. 
	add a,c			;871a	81 	. 
	inc d			;871b	14 	. 
	jr nz,l8733h		;871c	20 15 	  . 
	nop			;871e	00 	. 
	dec h			;871f	25 	% 
	add a,a			;8720	87 	. 
	ld sp,03587h		;8721	31 87 35 	1 . 5 
	add a,a			;8724	87 	. 
	add hl,sp			;8725	39 	9 
	add a,a			;8726	87 	. 
	xor b			;8727	a8 	. 
	add a,a			;8728	87 	. 
	inc c			;8729	0c 	. 
	adc a,b			;872a	88 	. 
	ld e,b			;872b	58 	X 
	adc a,b			;872c	88 	. 
	or a			;872d	b7 	. 
	adc a,b			;872e	88 	. 
	dec (hl)			;872f	35 	5 
	adc a,c			;8730	89 	. 
	xor d			;8731	aa 	. 
	adc a,c			;8732	89 	. 
l8733h:
	ld b,(hl)			;8733	46 	F 
	adc a,d			;8734	8a 	. 
	add hl,sp			;8735	39 	9 
	add a,a			;8736	87 	. 
	xor d			;8737	aa 	. 
	adc a,c			;8738	89 	. 
	djnz l873bh		;8739	10 00 	. . 
l873bh:
	add a,c			;873b	81 	. 
	ld c,b			;873c	48 	H 
	rrca			;873d	0f 	. 
	dec a			;873e	3d 	= 
	add a,d			;873f	82 	. 
	ld b,a			;8740	47 	G 
	jr $+16		;8741	18 0e 	. . 
	ld hl,04783h		;8743	21 83 47 	! . G 
	ld d,018h		;8746	16 18 	. . 
	ex af,af'			;8748	08 	. 
	ld hl,03e02h		;8749	21 02 3e 	! . > 
	inc bc			;874c	03 	. 
	ld hl,04784h		;874d	21 84 47 	! . G 
	ld d,016h		;8750	16 16 	. . 
	jr l875bh		;8752	18 07 	. . 
	ld hl,03f02h		;8754	21 02 3f 	! . ? 
	inc bc			;8757	03 	. 
	ld hl,04781h		;8758	21 81 47 	! . G 
l875bh:
	inc bc			;875b	03 	. 
	ld d,081h		;875c	16 81 	. . 
	jr $+8		;875e	18 06 	. . 
	ld hl,04002h		;8760	21 02 40 	! . @ 
	inc bc			;8763	03 	. 
	ld hl,04781h		;8764	21 81 47 	! . G 
	inc b			;8767	04 	. 
	ld hl,01881h		;8768	21 81 18 	! . . 
	inc bc			;876b	03 	. 
	ld hl,04804h		;876c	21 04 48 	! . H 
	inc bc			;876f	03 	. 
	ld hl,04782h		;8770	21 82 47 	! . G 
	ld (bc),a			;8773	02 	. 
	inc bc			;8774	03 	. 
	ld hl,0168ch		;8775	21 8c 16 	! . . 
	ld hl,03e3eh		;8778	21 3e 3e 	! > > 
	ld a,(de)			;877b	1a 	. 
	ld d,016h		;877c	16 16 	. . 
	add hl,de			;877e	19 	. 
	ld hl,01721h		;877f	21 21 17 	! ! . 
	ld b,a			;8782	47 	G 
	ld (bc),a			;8783	02 	. 
	ld d,003h		;8784	16 03 	. . 
	ld de,02181h		;8786	11 81 21 	. . ! 
	ld (bc),a			;8789	02 	. 
	ccf			;878a	3f 	? 
	inc b			;878b	04 	. 
	ld hl,01102h		;878c	21 02 11 	! . . 
	add a,d			;878f	82 	. 
	ld d,047h		;8790	16 47 	. G 
	inc bc			;8792	03 	. 
	ld d,002h		;8793	16 02 	. . 
	ld de,02181h		;8795	11 81 21 	. . ! 
	ld (bc),a			;8798	02 	. 
	ld b,b			;8799	40 	@ 
	ld (bc),a			;879a	02 	. 
	inc bc			;879b	03 	. 
	ld (bc),a			;879c	02 	. 
	ld hl,01102h		;879d	21 02 11 	! . . 
	add a,d			;87a0	82 	. 
	ld d,047h		;87a1	16 47 	. G 
	rrca			;87a3	0f 	. 
	ld c,b			;87a4	48 	H 
	djnz $+73		;87a5	10 47 	. G 
	nop			;87a7	00 	. 
	djnz l87aah		;87a8	10 00 	. . 
l87aah:
	dec b			;87aa	05 	. 
	dec a			;87ab	3d 	= 
	ld b,048h		;87ac	06 48 	. H 
	dec b			;87ae	05 	. 
	dec a			;87af	3d 	= 
	dec b			;87b0	05 	. 
	ld hl,01606h		;87b1	21 06 16 	! . . 
	ld a,(bc)			;87b4	0a 	. 
	ld hl,01a81h		;87b5	21 81 1a 	! . . 
	inc b			;87b8	04 	. 
	ld d,081h		;87b9	16 81 	. . 
	add hl,de			;87bb	19 	. 
	dec bc			;87bc	0b 	. 
	ld hl,01a85h		;87bd	21 85 1a 	! . . 
	ld d,016h		;87c0	16 16 	. . 
	add hl,de			;87c2	19 	. 
	inc bc			;87c3	03 	. 
	dec b			;87c4	05 	. 
	ld hl,04803h		;87c5	21 03 48 	! . H 
	inc b			;87c8	04 	. 
	ld hl,01a82h		;87c9	21 82 1a 	! . . 
	add hl,de			;87cc	19 	. 
	rlca			;87cd	07 	. 
	ld hl,01602h		;87ce	21 02 16 	! . . 
	add a,c			;87d1	81 	. 
	add hl,de			;87d2	19 	. 
	dec c			;87d3	0d 	. 
	ld hl,01681h		;87d4	21 81 16 	! . . 
	ld c,021h		;87d7	0e 21 	. ! 
	add a,e			;87d9	83 	. 
	rla			;87da	17 	. 
	ld d,003h		;87db	16 03 	. . 
	dec b			;87dd	05 	. 
	ld hl,04182h		;87de	21 82 41 	! . A 
	ld b,d			;87e1	42 	B 
	ld (bc),a			;87e2	02 	. 
	ld hl,03e02h		;87e3	21 02 3e 	! . > 
	add a,d			;87e6	82 	. 
	ld hl,00417h		;87e7	21 17 04 	! . . 
	ld d,004h		;87ea	16 04 	. . 
	ld hl,04382h		;87ec	21 82 43 	! . C 
	ld b,h			;87ef	44 	D 
	ld (bc),a			;87f0	02 	. 
	ld hl,03f02h		;87f1	21 02 3f 	! . ? 
	add a,c			;87f4	81 	. 
	rla			;87f5	17 	. 
	ld (bc),a			;87f6	02 	. 
	ld d,003h		;87f7	16 03 	. . 
	ld c,b			;87f9	48 	H 
	inc b			;87fa	04 	. 
	ld hl,04582h		;87fb	21 82 45 	! . E 
	ld b,(hl)			;87fe	46 	F 
	ld (bc),a			;87ff	02 	. 
	ld hl,04002h		;8800	21 02 40 	! . @ 
	inc bc			;8803	03 	. 
	ld c,b			;8804	48 	H 
	inc bc			;8805	03 	. 
	ld b,a			;8806	47 	G 
	ld a,(bc)			;8807	0a 	. 
	ld c,b			;8808	48 	H 
	inc bc			;8809	03 	. 
	ld b,a			;880a	47 	G 
	nop			;880b	00 	. 
	djnz l880eh		;880c	10 00 	. . 
l880eh:
	djnz $+63		;880e	10 3d 	. = 
	ld de,l8121h		;8810	11 21 81 	. ! . 
	ld a,00fh		;8813	3e 0f 	> . 
	ld hl,03f81h		;8815	21 81 3f 	! . ? 
	ld a,(bc)			;8818	0a 	. 
	ld hl,01786h		;8819	21 86 17 	! . . 
	ld d,016h		;881c	16 16 	. . 
	jr $+35		;881e	18 21 	. ! 
	ld b,b			;8820	40 	@ 
	ld a,(bc)			;8821	0a 	. 
	ld hl,01687h		;8822	21 87 16 	! . . 
	ld hl,01621h		;8825	21 21 16 	! ! . 
	rla			;8828	17 	. 
	ld d,018h		;8829	16 18 	. . 
	add hl,bc			;882b	09 	. 
	ld hl,01183h		;882c	21 83 11 	! . . 
	ld hl,00403h		;882f	21 03 04 	! . . 
	ld d,081h		;8832	16 81 	. . 
	jr l883ah		;8834	18 04 	. . 
	ld hl,03e03h		;8836	21 03 3e 	! . > 
	add a,l			;8839	85 	. 
l883ah:
	ld hl,0161ah		;883a	21 1a 16 	! . . 
	ld d,019h		;883d	16 19 	. . 
	inc b			;883f	04 	. 
	ld d,081h		;8840	16 81 	. . 
	jr l8847h		;8842	18 03 	. . 
	ld hl,03f03h		;8844	21 03 3f 	! . ? 
l8847h:
	dec b			;8847	05 	. 
	ld hl,01605h		;8848	21 05 16 	! . . 
	add a,c			;884b	81 	. 
	jr $+4		;884c	18 02 	. . 
	ld hl,04003h		;884e	21 03 40 	! . @ 
	dec b			;8851	05 	. 
	ld hl,04810h		;8852	21 10 48 	! . H 
	djnz $+73		;8855	10 47 	. G 
	nop			;8857	00 	. 
	djnz l885ah		;8858	10 00 	. . 
l885ah:
	inc b			;885a	04 	. 
	dec a			;885b	3d 	= 
	inc b			;885c	04 	. 
	ld c,b			;885d	48 	H 
	ex af,af'			;885e	08 	. 
	dec a			;885f	3d 	= 
	inc b			;8860	04 	. 
	ld hl,01604h		;8861	21 04 16 	! . . 
	inc c			;8864	0c 	. 
	ld hl,01604h		;8865	21 04 16 	! . . 
	inc c			;8868	0c 	. 
	ld hl,01682h		;8869	21 82 16 	! . . 
	inc bc			;886c	03 	. 
	ld (bc),a			;886d	02 	. 
	ld de,02104h		;886e	11 04 21 	. . ! 
	add a,c			;8871	81 	. 
	ld a,007h		;8872	3e 07 	> . 
	ld hl,01a84h		;8874	21 84 1a 	! . . 
	ld d,016h		;8877	16 16 	. . 
	add hl,de			;8879	19 	. 
	inc b			;887a	04 	. 
	ld hl,03f81h		;887b	21 81 3f 	! . ? 
	ex af,af'			;887e	08 	. 
	ld hl,01103h		;887f	21 03 11 	! . . 
	inc b			;8882	04 	. 
	ld hl,04081h		;8883	21 81 40 	! . @ 
	inc bc			;8886	03 	. 
	ld c,b			;8887	48 	H 
	add a,d			;8888	82 	. 
	ld hl,0033eh		;8889	21 3e 03 	! > . 
	ld hl,01103h		;888c	21 03 11 	! . . 
	inc bc			;888f	03 	. 
	ld hl,03e82h		;8890	21 82 3e 	! . > 
	ld c,b			;8893	48 	H 
	inc bc			;8894	03 	. 
	ld b,a			;8895	47 	G 
	add a,d			;8896	82 	. 
	ld hl,0053fh		;8897	21 3f 05 	! ? . 
	ld c,b			;889a	48 	H 
	inc b			;889b	04 	. 
	ld hl,03f81h		;889c	21 81 3f 	! . ? 
	inc b			;889f	04 	. 
	ld b,a			;88a0	47 	G 
	add a,d			;88a1	82 	. 
	ld hl,00540h		;88a2	21 40 05 	! @ . 
	ld b,a			;88a5	47 	G 
	add a,c			;88a6	81 	. 
	inc bc			;88a7	03 	. 
	inc bc			;88a8	03 	. 
	ld hl,04081h		;88a9	21 81 40 	! . @ 
	inc b			;88ac	04 	. 
	ld b,a			;88ad	47 	G 
	ld (bc),a			;88ae	02 	. 
	ld c,b			;88af	48 	H 
	dec b			;88b0	05 	. 
	ld b,a			;88b1	47 	G 
	dec b			;88b2	05 	. 
	ld c,b			;88b3	48 	H 
	inc d			;88b4	14 	. 
	ld b,a			;88b5	47 	G 
	nop			;88b6	00 	. 
	djnz l88b9h		;88b7	10 00 	. . 
l88b9h:
	add a,d			;88b9	82 	. 
	dec a			;88ba	3d 	= 
	ld d,00bh		;88bb	16 0b 	. . 
	dec a			;88bd	3d 	= 
	adc a,d			;88be	8a 	. 
	ld d,03dh		;88bf	16 3d 	. = 
	dec a			;88c1	3d 	= 
	ld hl,0161ah		;88c2	21 1a 16 	! . . 
	inc bc			;88c5	03 	. 
	ld hl,03e21h		;88c6	21 21 3e 	! ! > 
	dec b			;88c9	05 	. 
	ld hl,01682h		;88ca	21 82 16 	! . . 
	add hl,de			;88cd	19 	. 
	inc b			;88ce	04 	. 
	ld hl,01a8bh		;88cf	21 8b 1a 	! . . 
	ld d,003h		;88d2	16 03 	. . 
	ld hl,0163fh		;88d4	21 3f 16 	! ? . 
	ld de,02121h		;88d7	11 21 21 	. ! ! 
	ld d,019h		;88da	16 19 	. . 
	ld b,021h		;88dc	06 21 	. ! 
	adc a,c			;88de	89 	. 
	ld a,(de)			;88df	1a 	. 
	inc bc			;88e0	03 	. 
	ld hl,01140h		;88e1	21 40 11 	! @ . 
	ld hl,01121h		;88e4	21 21 11 	! ! . 
	add hl,de			;88e7	19 	. 
	ex af,af'			;88e8	08 	. 
	ld hl,01a81h		;88e9	21 81 1a 	! . . 
	ld (bc),a			;88ec	02 	. 
	ld d,002h		;88ed	16 02 	. . 
	ld hl,01102h		;88ef	21 02 11 	! . . 
	ld a,(bc)			;88f2	0a 	. 
	ld hl,01a82h		;88f3	21 82 1a 	! . . 
	ld d,002h		;88f6	16 02 	. . 
	ld de,02107h		;88f8	11 07 21 	. . ! 
	add a,c			;88fb	81 	. 
	ld c,b			;88fc	48 	H 
	dec bc			;88fd	0b 	. 
	ld hl,03e02h		;88fe	21 02 3e 	! . > 
	ld (bc),a			;8901	02 	. 
	ld hl,04781h		;8902	21 81 47 	! . G 
	ld (bc),a			;8905	02 	. 
	ld a,003h		;8906	3e 03 	> . 
	ld hl,04182h		;8908	21 82 41 	! . A 
	ld b,d			;890b	42 	B 
	inc b			;890c	04 	. 
	ld hl,03f02h		;890d	21 02 3f 	! . ? 
	ld (bc),a			;8910	02 	. 
	ld hl,04781h		;8911	21 81 47 	! . G 
	ld (bc),a			;8914	02 	. 
	ccf			;8915	3f 	? 
	inc bc			;8916	03 	. 
	ld hl,04382h		;8917	21 82 43 	! . C 
	ld b,h			;891a	44 	D 
	inc b			;891b	04 	. 
	ld hl,04002h		;891c	21 02 40 	! . @ 
	ld (bc),a			;891f	02 	. 
	ld hl,04781h		;8920	21 81 47 	! . G 
	ld (bc),a			;8923	02 	. 
	ld b,b			;8924	40 	@ 
	inc bc			;8925	03 	. 
	ld hl,04582h		;8926	21 82 45 	! . E 
	ld b,(hl)			;8929	46 	F 
	inc bc			;892a	03 	. 
	ld hl,04805h		;892b	21 05 48 	! . H 
	add a,c			;892e	81 	. 
	ld b,a			;892f	47 	G 
	ld a,(bc)			;8930	0a 	. 
	ld c,b			;8931	48 	H 
	dec b			;8932	05 	. 
	ld b,a			;8933	47 	G 
	nop			;8934	00 	. 
	djnz l8937h		;8935	10 00 	. . 
l8937h:
	add a,c			;8937	81 	. 
	dec a			;8938	3d 	= 
	ld (bc),a			;8939	02 	. 
	ld d,00ch		;893a	16 0c 	. . 
	dec a			;893c	3d 	= 
	add a,d			;893d	82 	. 
	ld c,b			;893e	48 	H 
	ld hl,01102h		;893f	21 02 11 	! . . 
	dec bc			;8942	0b 	. 
	ld hl,04882h		;8943	21 82 48 	! . H 
	ld b,a			;8946	47 	G 
	inc b			;8947	04 	. 
	ld c,b			;8948	48 	H 
	ld (bc),a			;8949	02 	. 
	ld hl,03e02h		;894a	21 02 3e 	! . > 
	ld b,021h		;894d	06 21 	. ! 
	ld (bc),a			;894f	02 	. 
	ld b,a			;8950	47 	G 
	add a,h			;8951	84 	. 
	ld a,(de)			;8952	1a 	. 
	ld d,016h		;8953	16 16 	. . 
	add hl,de			;8955	19 	. 
	ld (bc),a			;8956	02 	. 
	ld hl,03f02h		;8957	21 02 3f 	! . ? 
	dec b			;895a	05 	. 
	ld hl,04881h		;895b	21 81 48 	! . H 
	ld (bc),a			;895e	02 	. 
	ld b,a			;895f	47 	G 
	inc b			;8960	04 	. 
	ld hl,01182h		;8961	21 82 11 	! . . 
	ld hl,04002h		;8964	21 02 40 	! . @ 
	inc bc			;8967	03 	. 
	ld hl,03e82h		;8968	21 82 3e 	! . > 
	ld hl,04703h		;896b	21 03 47 	! . G 
	inc b			;896e	04 	. 
	ld hl,04804h		;896f	21 04 48 	! . H 
	inc bc			;8972	03 	. 
	ld hl,03f82h		;8973	21 82 3f 	! . ? 
	ld c,b			;8976	48 	H 
	inc bc			;8977	03 	. 
	ld b,a			;8978	47 	G 
	ld (bc),a			;8979	02 	. 
	ld hl,03e8ah		;897a	21 8a 3e 	! . > 
	ld hl,0161ah		;897d	21 1a 16 	! . . 
	ld d,019h		;8980	16 19 	. . 
	ld hl,03e21h		;8982	21 21 3e 	! ! > 
	ld b,b			;8985	40 	@ 
	inc b			;8986	04 	. 
	ld b,a			;8987	47 	G 
	ld (bc),a			;8988	02 	. 
	ld hl,03f81h		;8989	21 81 3f 	! . ? 
	inc bc			;898c	03 	. 
	ld hl,01181h		;898d	21 81 11 	! . . 
	inc bc			;8990	03 	. 
	ld hl,03f82h		;8991	21 82 3f 	! . ? 
	ld c,b			;8994	48 	H 
	inc b			;8995	04 	. 
	ld b,a			;8996	47 	G 
	ld (bc),a			;8997	02 	. 
	ld hl,04081h		;8998	21 81 40 	! . @ 
	inc bc			;899b	03 	. 
	ld hl,01181h		;899c	21 81 11 	! . . 
	inc bc			;899f	03 	. 
	ld hl,04081h		;89a0	21 81 40 	! . @ 
	dec b			;89a3	05 	. 
	ld b,a			;89a4	47 	G 
	dec bc			;89a5	0b 	. 
	ld c,b			;89a6	48 	H 
	dec d			;89a7	15 	. 
	ld b,a			;89a8	47 	G 
	nop			;89a9	00 	. 
	rrca			;89aa	0f 	. 
	ld hl,06d81h		;89ab	21 81 6d 	! . m 
	rrca			;89ae	0f 	. 
	ld hl,06f83h		;89af	21 83 6f 	! . o 
	ld l,e			;89b2	6b 	k 
	ld l,h			;89b3	6c 	l 
	ld (bc),a			;89b4	02 	. 
	ld hl,07502h		;89b5	21 02 75 	! . u 
	add a,d			;89b8	82 	. 
	ld (hl),h			;89b9	74 	t 
	ld (hl),l			;89ba	75 	u 
	ld (bc),a			;89bb	02 	. 
	ld (hl),h			;89bc	74 	t 
	ld (bc),a			;89bd	02 	. 
	ld (hl),l			;89be	75 	u 
	add a,(hl)			;89bf	86 	. 
	ld (hl),h			;89c0	74 	t 
	ld hl,06f21h		;89c1	21 21 6f 	! ! o 
	ld l,e			;89c4	6b 	k 
	ld l,h			;89c5	6c 	l 
	rlca			;89c6	07 	. 
	ld hl,07581h		;89c7	21 81 75 	! . u 
	dec b			;89ca	05 	. 
	ld hl,06da3h		;89cb	21 a3 6d 	! . m 
	ld l,d			;89ce	6a 	j 
	ld l,e			;89cf	6b 	k 
	ld (hl),c			;89d0	71 	q 
	ld (hl),e			;89d1	73 	s 
	ld (hl),c			;89d2	71 	q 
	ld (hl),e			;89d3	73 	s 
	ld (hl),c			;89d4	71 	q 
	ld hl,07421h		;89d5	21 21 74 	! ! t 
	ld hl,07521h		;89d8	21 21 75 	! ! u 
	ld hl,06d21h		;89db	21 21 6d 	! ! m 
	ld l,e			;89de	6b 	k 
	ld l,d			;89df	6a 	j 
	ld (hl),b			;89e0	70 	p 
	ld (hl),b			;89e1	70 	p 
	ld (hl),d			;89e2	72 	r 
	ld (hl),b			;89e3	70 	p 
	ld (hl),h			;89e4	74 	t 
	ld hl,07521h		;89e5	21 21 75 	! ! u 
	ld hl,07421h		;89e8	21 21 74 	! ! t 
	ld hl,06f21h		;89eb	21 21 6f 	! ! o 
	ld l,d			;89ee	6a 	j 
	ld l,(hl)			;89ef	6e 	n 
	rlca			;89f0	07 	. 
	ld hl,0758dh		;89f1	21 8d 75 	! . u 
	ld hl,07421h		;89f4	21 21 74 	! ! t 
	ld hl,06d21h		;89f7	21 21 6d 	! ! m 
	ld l,e			;89fa	6b 	k 
	ld a,03eh		;89fb	3e 3e 	> > 
	ld hl,07375h		;89fd	21 75 73 	! u s 
	inc bc			;8a00	03 	. 
	ld (hl),c			;8a01	71 	q 
	sbc a,b			;8a02	98 	. 
	ld (hl),h			;8a03	74 	t 
	ld hl,0753eh		;8a04	21 3e 75 	! > u 
	ld a,021h		;8a07	3e 21 	> ! 
	ld l,a			;8a09	6f 	o 
	ld l,d			;8a0a	6a 	j 
	ccf			;8a0b	3f 	? 
	ccf			;8a0c	3f 	? 
	ld hl,07274h		;8a0d	21 74 72 	! t r 
	ld (hl),b			;8a10	70 	p 
	ld (hl),d			;8a11	72 	r 
	ld (hl),d			;8a12	72 	r 
	ld (hl),h			;8a13	74 	t 
	ld hl,0743fh		;8a14	21 3f 74 	! ? t 
	ccf			;8a17	3f 	? 
	ld hl,06a6fh		;8a18	21 6f 6a 	! o j 
	ld (bc),a			;8a1b	02 	. 
	ld b,b			;8a1c	40 	@ 
	ex af,af'			;8a1d	08 	. 
	ld hl,040a5h		;8a1e	21 a5 40 	! . @ 
	ld hl,02140h		;8a21	21 40 21 	! @ ! 
	ld hl,06b6ah		;8a24	21 6a 6b 	! j k 
	ld (hl),c			;8a27	71 	q 
	ld (hl),c			;8a28	71 	q 
	ld (hl),e			;8a29	73 	s 
	ld (hl),c			;8a2a	71 	q 
	ld (hl),e			;8a2b	73 	s 
	ld (hl),e			;8a2c	73 	s 
	ld (hl),c			;8a2d	71 	q 
	ld (hl),e			;8a2e	73 	s 
	ld (hl),c			;8a2f	71 	q 
	ld (hl),c			;8a30	71 	q 
	ld (hl),e			;8a31	73 	s 
	ld (hl),c			;8a32	71 	q 
	ld (hl),e			;8a33	73 	s 
	ld (hl),c			;8a34	71 	q 
	ld l,e			;8a35	6b 	k 
	ld l,d			;8a36	6a 	j 
	ld l,e			;8a37	6b 	k 
	ld l,d			;8a38	6a 	j 
	ld l,e			;8a39	6b 	k 
	ld l,e			;8a3a	6b 	k 
	ld l,d			;8a3b	6a 	j 
	ld l,e			;8a3c	6b 	k 
	ld l,d			;8a3d	6a 	j 
	ld l,e			;8a3e	6b 	k 
	ld l,d			;8a3f	6a 	j 
	ld l,e			;8a40	6b 	k 
	ld l,e			;8a41	6b 	k 
	ld l,d			;8a42	6a 	j 
	ld l,e			;8a43	6b 	k 
	ld l,d			;8a44	6a 	j 
	nop			;8a45	00 	. 
	adc a,d			;8a46	8a 	. 
	ld l,e			;8a47	6b 	k 
	ld l,d			;8a48	6a 	j 
	ld l,e			;8a49	6b 	k 
	ld l,d			;8a4a	6a 	j 
	ld l,e			;8a4b	6b 	k 
	ld l,e			;8a4c	6b 	k 
	ld l,d			;8a4d	6a 	j 
	ld l,e			;8a4e	6b 	k 
	ld l,d			;8a4f	6a 	j 
	ld l,e			;8a50	6b 	k 
	ld (bc),a			;8a51	02 	. 
	ld l,d			;8a52	6a 	j 
	ld (bc),a			;8a53	02 	. 
	ld (hl),b			;8a54	70 	p 
	ld (bc),a			;8a55	02 	. 
	ld hl,06a8ch		;8a56	21 8c 6a 	! . j 
	ld (hl),b			;8a59	70 	p 
	ld (hl),b			;8a5a	70 	p 
	ld (hl),d			;8a5b	72 	r 
	ld (hl),b			;8a5c	70 	p 
	ld (hl),d			;8a5d	72 	r 
	ld (hl),d			;8a5e	72 	r 
	ld (hl),b			;8a5f	70 	p 
	ld (hl),d			;8a60	72 	r 
	ld (hl),b			;8a61	70 	p 
	ld (hl),b			;8a62	70 	p 
	ld (hl),d			;8a63	72 	r 
	inc b			;8a64	04 	. 
	ld hl,06c81h		;8a65	21 81 6c 	! . l 
	ld c,021h		;8a68	0e 21 	. ! 
	add a,d			;8a6a	82 	. 
	halt			;8a6b	76 	v 
	ld l,h			;8a6c	6c 	l 
	dec c			;8a6d	0d 	. 
	ld hl,07783h		;8a6e	21 83 77 	! . w 
	ld l,e			;8a71	6b 	k 
	ld l,(hl)			;8a72	6e 	n 
	dec c			;8a73	0d 	. 
	ld hl,07883h		;8a74	21 83 78 	! . x 
	ld l,d			;8a77	6a 	j 
	ld l,h			;8a78	6c 	l 
	inc c			;8a79	0c 	. 
	ld hl,07684h		;8a7a	21 84 76 	! . v 
	ld l,d			;8a7d	6a 	j 
	ld l,e			;8a7e	6b 	k 
	ld l,(hl)			;8a7f	6e 	n 
	dec bc			;8a80	0b 	. 
	ld hl,07786h		;8a81	21 86 77 	! . w 
	ld l,e			;8a84	6b 	k 
	ld l,d			;8a85	6a 	j 
	ld l,d			;8a86	6a 	j 
	ld l,h			;8a87	6c 	l 
	ld hl,03e02h		;8a88	21 02 3e 	! . > 
	inc bc			;8a8b	03 	. 
	ld hl,03e03h		;8a8c	21 03 3e 	! . > 
	ld (bc),a			;8a8f	02 	. 
	ld hl,07886h		;8a90	21 86 78 	! . x 
	ld l,d			;8a93	6a 	j 
	ld l,e			;8a94	6b 	k 
	ld l,e			;8a95	6b 	k 
	ld l,(hl)			;8a96	6e 	n 
	ld hl,03f02h		;8a97	21 02 3f 	! . ? 
	inc bc			;8a9a	03 	. 
	ld hl,03f03h		;8a9b	21 03 3f 	! . ? 
	add a,(hl)			;8a9e	86 	. 
	ld hl,06b76h		;8a9f	21 76 6b 	! v k 
	ld l,e			;8aa2	6b 	k 
	ld l,d			;8aa3	6a 	j 
	ld l,e			;8aa4	6b 	k 
	ld (bc),a			;8aa5	02 	. 
	ld hl,04002h		;8aa6	21 02 40 	! . @ 
	inc bc			;8aa9	03 	. 
	ld hl,04003h		;8aaa	21 03 40 	! . @ 
	add a,h			;8aad	84 	. 
	halt			;8aae	76 	v 
	ld l,e			;8aaf	6b 	k 
	ld l,d			;8ab0	6a 	j 
	ld l,e			;8ab1	6b 	k 
	ld (bc),a			;8ab2	02 	. 
	ld l,d			;8ab3	6a 	j 
	and b			;8ab4	a0 	. 
	ld (hl),c			;8ab5	71 	q 
	ld (hl),e			;8ab6	73 	s 
	ld (hl),c			;8ab7	71 	q 
	ld (hl),c			;8ab8	71 	q 
	ld (hl),e			;8ab9	73 	s 
	ld (hl),c			;8aba	71 	q 
	ld (hl),e			;8abb	73 	s 
	ld (hl),e			;8abc	73 	s 
	ld (hl),c			;8abd	71 	q 
	ld (hl),e			;8abe	73 	s 
	ld l,d			;8abf	6a 	j 
	ld l,d			;8ac0	6a 	j 
	ld l,e			;8ac1	6b 	k 
	ld l,d			;8ac2	6a 	j 
	ld l,e			;8ac3	6b 	k 
	ld l,d			;8ac4	6a 	j 
	ld l,e			;8ac5	6b 	k 
	ld l,d			;8ac6	6a 	j 
	ld l,e			;8ac7	6b 	k 
	ld l,d			;8ac8	6a 	j 
	ld l,e			;8ac9	6b 	k 
	ld l,e			;8aca	6b 	k 
	ld l,d			;8acb	6a 	j 
	ld l,e			;8acc	6b 	k 
l8acdh:
	ld l,d			;8acd	6a 	j 
	ld l,e			;8ace	6b 	k 
	ld l,d			;8acf	6a 	j 
	ld l,e			;8ad0	6b 	k 
	ld l,e			;8ad1	6b 	k 
	ld l,d			;8ad2	6a 	j 
	ld l,e			;8ad3	6b 	k 
	ld l,d			;8ad4	6a 	j 
	nop			;8ad5	00 	. 
	ret c			;8ad6	d8 	. 
	adc a,d			;8ad7	8a 	. 
	ret pe			;8ad8	e8 	. 
	adc a,d			;8ad9	8a 	. 
	ld d,d			;8ada	52 	R 
	adc a,e			;8adb	8b 	. 
	call nz,0428bh		;8adc	c4 8b 42 	. . B 
	adc a,h			;8adf	8c 	. 
	adc a,l			;8ae0	8d 	. 
	adc a,h			;8ae1	8c 	. 
	ei			;8ae2	fb 	. 
	adc a,h			;8ae3	8c 	. 
	ld a,(07d8dh)		;8ae4	3a 8d 7d 	: . } 
	adc a,l			;8ae7	8d 	. 
l8ae8h:
	ld de,l8200h		;8ae8	11 00 82 	. . . 
	dec bc			;8aeb	0b 	. 
	inc c			;8aec	0c 	. 
	ld b,000h		;8aed	06 00 	. . 
	add a,c			;8aef	81 	. 
	inc bc			;8af0	03 	. 
	dec bc			;8af1	0b 	. 
	nop			;8af2	00 	. 
	add a,c			;8af3	81 	. 
	inc bc			;8af4	03 	. 
	ld b,000h		;8af5	06 00 	. . 
	add a,d			;8af7	82 	. 
	dec bc			;8af8	0b 	. 
	inc c			;8af9	0c 	. 
	dec c			;8afa	0d 	. 
	nop			;8afb	00 	. 
	add a,c			;8afc	81 	. 
	inc d			;8afd	14 	. 
	dec b			;8afe	05 	. 
	nop			;8aff	00 	. 
	add a,c			;8b00	81 	. 
	ld a,d			;8b01	7a 	z 
	rrca			;8b02	0f 	. 
	nop			;8b03	00 	. 
	add a,d			;8b04	82 	. 
	ld a,e			;8b05	7b 	{ 
	ld a,d			;8b06	7a 	z 
	ld b,000h		;8b07	06 00 	. . 
	add a,c			;8b09	81 	. 
	ld a,d			;8b0a	7a 	z 
	dec b			;8b0b	05 	. 
	nop			;8b0c	00 	. 
	add a,d			;8b0d	82 	. 
	djnz l8b10h		;8b0e	10 00 	. . 
l8b10h:
	ld (bc),a			;8b10	02 	. 
	ld a,e			;8b11	7b 	{ 
	ld b,000h		;8b12	06 00 	. . 
	adc a,b			;8b14	88 	. 
	ld a,e			;8b15	7b 	{ 
	nop			;8b16	00 	. 
	djnz l8b29h		;8b17	10 10 	. . 
	nop			;8b19	00 	. 
	ld a,d			;8b1a	7a 	z 
	djnz l8b1dh		;8b1b	10 00 	. . 
l8b1dh:
	ld (bc),a			;8b1d	02 	. 
	ld a,e			;8b1e	7b 	{ 
	inc b			;8b1f	04 	. 
	nop			;8b20	00 	. 
	ld (bc),a			;8b21	02 	. 
	djnz $-118		;8b22	10 88 	. . 
	ld a,e			;8b24	7b 	{ 
	nop			;8b25	00 	. 
	djnz $+18		;8b26	10 10 	. . 
	nop			;8b28	00 	. 
l8b29h:
	ld a,e			;8b29	7b 	{ 
	djnz l8b2ch		;8b2a	10 00 	. . 
l8b2ch:
	ld (bc),a			;8b2c	02 	. 
	ld a,h			;8b2d	7c 	| 
	ld (bc),a			;8b2e	02 	. 
	djnz l8b33h		;8b2f	10 02 	. . 
	nop			;8b31	00 	. 
	adc a,d			;8b32	8a 	. 
l8b33h:
	djnz l8b36h		;8b33	10 01 	. . 
	ld a,h			;8b35	7c 	| 
l8b36h:
	nop			;8b36	00 	. 
	ld bc,00014h		;8b37	01 14 00 	. . . 
	ld a,e			;8b3a	7b 	{ 
	djnz l8b3dh		;8b3b	10 00 	. . 
l8b3dh:
	ld (bc),a			;8b3d	02 	. 
	ld a,h			;8b3e	7c 	| 
	ld (bc),a			;8b3f	02 	. 
	djnz l8b44h		;8b40	10 02 	. . 
	nop			;8b42	00 	. 
	ld (bc),a			;8b43	02 	. 
l8b44h:
	djnz l8acdh		;8b44	10 87 	. . 
	ld a,h			;8b46	7c 	| 
	nop			;8b47	00 	. 
	djnz l8b5eh		;8b48	10 14 	. . 
	nop			;8b4a	00 	. 
	ld a,h			;8b4b	7c 	| 
	inc d			;8b4c	14 	. 
	djnz $+128		;8b4d	10 7e 	. ~ 
	djnz l8bceh		;8b4f	10 7d 	. } 
	nop			;8b51	00 	. 
	add a,e			;8b52	83 	. 
	nop			;8b53	00 	. 
	dec bc			;8b54	0b 	. 
	inc c			;8b55	0c 	. 
	dec bc			;8b56	0b 	. 
	nop			;8b57	00 	. 
	add a,d			;8b58	82 	. 
	dec bc			;8b59	0b 	. 
	inc c			;8b5a	0c 	. 
	dec b			;8b5b	05 	. 
	nop			;8b5c	00 	. 
	add a,d			;8b5d	82 	. 
l8b5eh:
	dec bc			;8b5e	0b 	. 
	inc c			;8b5f	0c 	. 
	rrca			;8b60	0f 	. 
	nop			;8b61	00 	. 
	ld (bc),a			;8b62	02 	. 
	djnz l8ae8h		;8b63	10 83 	. . 
	nop			;8b65	00 	. 
	dec bc			;8b66	0b 	. 
	inc c			;8b67	0c 	. 
	inc b			;8b68	04 	. 
	nop			;8b69	00 	. 
	add a,h			;8b6a	84 	. 
	inc d			;8b6b	14 	. 
	nop			;8b6c	00 	. 
	nop			;8b6d	00 	. 
	djnz $+5		;8b6e	10 03 	. . 
	nop			;8b70	00 	. 
	ld (bc),a			;8b71	02 	. 
	djnz $+5		;8b72	10 03 	. . 
	nop			;8b74	00 	. 
	add a,c			;8b75	81 	. 
	djnz l8b82h		;8b76	10 0a 	. . 
	nop			;8b78	00 	. 
	add a,d			;8b79	82 	. 
	ld bc,00803h		;8b7a	01 03 08 	. . . 
	nop			;8b7d	00 	. 
	add a,c			;8b7e	81 	. 
	inc bc			;8b7f	03 	. 
	dec b			;8b80	05 	. 
	nop			;8b81	00 	. 
l8b82h:
	add a,d			;8b82	82 	. 
	inc d			;8b83	14 	. 
	djnz l8b8dh		;8b84	10 07 	. . 
	nop			;8b86	00 	. 
	add a,d			;8b87	82 	. 
	ld a,d			;8b88	7a 	z 
	inc bc			;8b89	03 	. 
	inc bc			;8b8a	03 	. 
	nop			;8b8b	00 	. 
	add a,d			;8b8c	82 	. 
l8b8dh:
	djnz l8b8fh		;8b8d	10 00 	. . 
l8b8fh:
	ld (bc),a			;8b8f	02 	. 
	djnz l8b98h		;8b90	10 06 	. . 
	nop			;8b92	00 	. 
	add a,e			;8b93	83 	. 
	inc d			;8b94	14 	. 
	ld a,e			;8b95	7b 	{ 
	inc d			;8b96	14 	. 
	inc bc			;8b97	03 	. 
l8b98h:
	nop			;8b98	00 	. 
	add a,c			;8b99	81 	. 
	djnz l8ba0h		;8b9a	10 04 	. . 
	nop			;8b9c	00 	. 
	add a,c			;8b9d	81 	. 
	djnz l8ba4h		;8b9e	10 04 	. . 
l8ba0h:
	nop			;8ba0	00 	. 
	add a,a			;8ba1	87 	. 
	ld a,d			;8ba2	7a 	z 
	ld a,e			;8ba3	7b 	{ 
l8ba4h:
	ld bc,00100h		;8ba4	01 00 01 	. . . 
	nop			;8ba7	00 	. 
	inc d			;8ba8	14 	. 
	add hl,bc			;8ba9	09 	. 
	nop			;8baa	00 	. 
	add a,e			;8bab	83 	. 
	ld a,e			;8bac	7b 	{ 
	ld a,h			;8bad	7c 	| 
	djnz $+5		;8bae	10 03 	. . 
	nop			;8bb0	00 	. 
	add a,c			;8bb1	81 	. 
	djnz l8bbdh		;8bb2	10 09 	. . 
	nop			;8bb4	00 	. 
	ld (bc),a			;8bb5	02 	. 
	ld a,h			;8bb6	7c 	| 
	add hl,bc			;8bb7	09 	. 
	ld a,(hl)			;8bb8	7e 	~ 
	inc b			;8bb9	04 	. 
	ld a,a			;8bba	7f 	 
	inc bc			;8bbb	03 	. 
	ld a,(hl)			;8bbc	7e 	~ 
l8bbdh:
	add hl,bc			;8bbd	09 	. 
	ld a,l			;8bbe	7d 	} 
	inc b			;8bbf	04 	. 
	add a,b			;8bc0	80 	. 
	inc bc			;8bc1	03 	. 
	ld a,l			;8bc2	7d 	} 
	nop			;8bc3	00 	. 
	dec c			;8bc4	0d 	. 
	nop			;8bc5	00 	. 
	add a,d			;8bc6	82 	. 
	dec bc			;8bc7	0b 	. 
	inc c			;8bc8	0c 	. 
	ld (de),a			;8bc9	12 	. 
	nop			;8bca	00 	. 
	add a,d			;8bcb	82 	. 
	djnz l8bceh		;8bcc	10 00 	. . 
l8bceh:
	ld (bc),a			;8bce	02 	. 
	djnz l8bd4h		;8bcf	10 03 	. . 
	nop			;8bd1	00 	. 
	add a,d			;8bd2	82 	. 
	dec bc			;8bd3	0b 	. 
l8bd4h:
	inc c			;8bd4	0c 	. 
	ex af,af'			;8bd5	08 	. 
	nop			;8bd6	00 	. 
	add a,e			;8bd7	83 	. 
	ld a,d			;8bd8	7a 	z 
	inc bc			;8bd9	03 	. 
	djnz l8be6h		;8bda	10 0a 	. . 
	nop			;8bdc	00 	. 
	add a,h			;8bdd	84 	. 
	ld a,d			;8bde	7a 	z 
	nop			;8bdf	00 	. 
	nop			;8be0	00 	. 
	ld a,e			;8be1	7b 	{ 
	ld (bc),a			;8be2	02 	. 
	djnz l8bebh		;8be3	10 06 	. . 
	nop			;8be5	00 	. 
l8be6h:
	adc a,d			;8be6	8a 	. 
	inc d			;8be7	14 	. 
	ld a,d			;8be8	7a 	z 
	nop			;8be9	00 	. 
	nop			;8bea	00 	. 
l8bebh:
	ld a,e			;8beb	7b 	{ 
	nop			;8bec	00 	. 
	nop			;8bed	00 	. 
	ld a,e			;8bee	7b 	{ 
	inc d			;8bef	14 	. 
	djnz $+5		;8bf0	10 03 	. . 
	nop			;8bf2	00 	. 
	adc a,e			;8bf3	8b 	. 
	djnz l8bf9h		;8bf4	10 03 	. . 
l8bf6h:
	nop			;8bf6	00 	. 
	djnz $+125		;8bf7	10 7b 	. { 
l8bf9h:
	nop			;8bf9	00 	. 
	djnz l8c77h		;8bfa	10 7b 	. { 
	nop			;8bfc	00 	. 
	nop			;8bfd	00 	. 
	ld a,e			;8bfe	7b 	{ 
	ld (bc),a			;8bff	02 	. 
	djnz $+5		;8c00	10 03 	. . 
	nop			;8c02	00 	. 
	sub b			;8c03	90 	. 
l8c04h:
	djnz l8c09h		;8c04	10 03 	. . 
	nop			;8c06	00 	. 
	nop			;8c07	00 	. 
	ld a,e			;8c08	7b 	{ 
l8c09h:
	nop			;8c09	00 	. 
	inc d			;8c0a	14 	. 
	ld a,e			;8c0b	7b 	{ 
	nop			;8c0c	00 	. 
	djnz $+126		;8c0d	10 7c 	. | 
	djnz l8c12h		;8c0f	10 01 	. . 
	nop			;8c11	00 	. 
l8c12h:
	djnz l8c14h		;8c12	10 00 	. . 
l8c14h:
	ld (bc),a			;8c14	02 	. 
	djnz l8c19h		;8c15	10 02 	. . 
	nop			;8c17	00 	. 
	adc a,c			;8c18	89 	. 
l8c19h:
	ld a,e			;8c19	7b 	{ 
	nop			;8c1a	00 	. 
	nop			;8c1b	00 	. 
	ld a,h			;8c1c	7c 	| 
	nop			;8c1d	00 	. 
	inc d			;8c1e	14 	. 
	ld a,h			;8c1f	7c 	| 
	djnz l8c36h		;8c20	10 14 	. . 
	rlca			;8c22	07 	. 
	nop			;8c23	00 	. 
	add a,a			;8c24	87 	. 
	ld a,h			;8c25	7c 	| 
	nop			;8c26	00 	. 
	nop			;8c27	00 	. 
	ld a,h			;8c28	7c 	| 
	nop			;8c29	00 	. 
	nop			;8c2a	00 	. 
	ld a,h			;8c2b	7c 	| 
	ld (bc),a			;8c2c	02 	. 
	djnz l8c36h		;8c2d	10 07 	. . 
	nop			;8c2f	00 	. 
	add a,h			;8c30	84 	. 
	ld a,h			;8c31	7c 	| 
	nop			;8c32	00 	. 
	nop			;8c33	00 	. 
	ld a,h			;8c34	7c 	| 
	dec b			;8c35	05 	. 
l8c36h:
	ld a,(hl)			;8c36	7e 	~ 
	inc b			;8c37	04 	. 
	ld a,a			;8c38	7f 	 
	rlca			;8c39	07 	. 
	ld a,(hl)			;8c3a	7e 	~ 
	dec b			;8c3b	05 	. 
	ld a,l			;8c3c	7d 	} 
	inc b			;8c3d	04 	. 
	add a,b			;8c3e	80 	. 
	rlca			;8c3f	07 	. 
	ld a,l			;8c40	7d 	} 
	nop			;8c41	00 	. 
	dec de			;8c42	1b 	. 
	nop			;8c43	00 	. 
	add a,d			;8c44	82 	. 
	dec bc			;8c45	0b 	. 
	inc c			;8c46	0c 	. 
	ld b,000h		;8c47	06 00 	. . 
	add a,l			;8c49	85 	. 
	dec bc			;8c4a	0b 	. 
	inc c			;8c4b	0c 	. 
	nop			;8c4c	00 	. 
	nop			;8c4d	00 	. 
	djnz l8c79h		;8c4e	10 29 	. ) 
	nop			;8c50	00 	. 
	add a,d			;8c51	82 	. 
	djnz l8cceh		;8c52	10 7a 	. z 
	ld b,000h		;8c54	06 00 	. . 
	rlca			;8c56	07 	. 
	inc d			;8c57	14 	. 
	ld (bc),a			;8c58	02 	. 
	nop			;8c59	00 	. 
	add a,c			;8c5a	81 	. 
	ld a,e			;8c5b	7b 	{ 
	ld b,000h		;8c5c	06 00 	. . 
	rlca			;8c5e	07 	. 
	djnz l8c63h		;8c5f	10 02 	. . 
	nop			;8c61	00 	. 
	add a,d			;8c62	82 	. 
l8c63h:
	ld a,e			;8c63	7b 	{ 
	inc d			;8c64	14 	. 
	inc b			;8c65	04 	. 
	nop			;8c66	00 	. 
	ld (bc),a			;8c67	02 	. 
	djnz l8c6fh		;8c68	10 05 	. . 
	nop			;8c6a	00 	. 
	add a,h			;8c6b	84 	. 
	djnz l8c6eh		;8c6c	10 00 	. . 
l8c6eh:
	nop			;8c6e	00 	. 
l8c6fh:
	ld a,h			;8c6f	7c 	| 
	inc b			;8c70	04 	. 
	nop			;8c71	00 	. 
	inc bc			;8c72	03 	. 
	djnz l8bf6h		;8c73	10 81 	. . 
	nop			;8c75	00 	. 
	inc bc			;8c76	03 	. 
l8c77h:
	inc bc			;8c77	03 	. 
	add a,l			;8c78	85 	. 
l8c79h:
	nop			;8c79	00 	. 
	inc d			;8c7a	14 	. 
	nop			;8c7b	00 	. 
	nop			;8c7c	00 	. 
	ld a,h			;8c7d	7c 	| 
	inc bc			;8c7e	03 	. 
	nop			;8c7f	00 	. 
	inc bc			;8c80	03 	. 
	djnz l8c04h		;8c81	10 81 	. . 
	inc d			;8c83	14 	. 
	dec b			;8c84	05 	. 
	nop			;8c85	00 	. 
	add a,c			;8c86	81 	. 
	inc d			;8c87	14 	. 
	djnz l8d08h		;8c88	10 7e 	. ~ 
	djnz l8d09h		;8c8a	10 7d 	. } 
	nop			;8c8c	00 	. 
	dec c			;8c8d	0d 	. 
	nop			;8c8e	00 	. 
	add a,d			;8c8f	82 	. 
	dec bc			;8c90	0b 	. 
	inc c			;8c91	0c 	. 
	ld b,000h		;8c92	06 00 	. . 
	add a,d			;8c94	82 	. 
	dec bc			;8c95	0b 	. 
	inc c			;8c96	0c 	. 
	inc de			;8c97	13 	. 
	nop			;8c98	00 	. 
	add a,d			;8c99	82 	. 
	dec bc			;8c9a	0b 	. 
	inc c			;8c9b	0c 	. 
	inc b			;8c9c	04 	. 
	nop			;8c9d	00 	. 
	add a,d			;8c9e	82 	. 
	dec bc			;8c9f	0b 	. 
	inc c			;8ca0	0c 	. 
	dec bc			;8ca1	0b 	. 
	nop			;8ca2	00 	. 
	add a,c			;8ca3	81 	. 
	ld a,d			;8ca4	7a 	z 
	dec bc			;8ca5	0b 	. 
	nop			;8ca6	00 	. 
	adc a,d			;8ca7	8a 	. 
	add a,c			;8ca8	81 	. 
	add a,d			;8ca9	82 	. 
	nop			;8caa	00 	. 
	nop			;8cab	00 	. 
	ld a,e			;8cac	7b 	{ 
	nop			;8cad	00 	. 
	nop			;8cae	00 	. 
	ld a,d			;8caf	7a 	z 
	nop			;8cb0	00 	. 
	ld a,d			;8cb1	7a 	z 
	ld b,000h		;8cb2	06 00 	. . 
	adc a,d			;8cb4	8a 	. 
l8cb5h:
	add a,e			;8cb5	83 	. 
	add a,h			;8cb6	84 	. 
	nop			;8cb7	00 	. 
	nop			;8cb8	00 	. 
	ld a,e			;8cb9	7b 	{ 
	nop			;8cba	00 	. 
	nop			;8cbb	00 	. 
	ld a,e			;8cbc	7b 	{ 
	ld a,d			;8cbd	7a 	z 
	ld a,e			;8cbe	7b 	{ 
	dec b			;8cbf	05 	. 
	nop			;8cc0	00 	. 
	adc a,b			;8cc1	88 	. 
	add a,l			;8cc2	85 	. 
	add a,(hl)			;8cc3	86 	. 
	add a,a			;8cc4	87 	. 
	adc a,b			;8cc5	88 	. 
	nop			;8cc6	00 	. 
	ld a,e			;8cc7	7b 	{ 
	ld a,d			;8cc8	7a 	z 
	nop			;8cc9	00 	. 
	inc bc			;8cca	03 	. 
	ld a,e			;8ccb	7b 	{ 
	dec b			;8ccc	05 	. 
	nop			;8ccd	00 	. 
l8cceh:
	adc a,e			;8cce	8b 	. 
	adc a,c			;8ccf	89 	. 
	adc a,d			;8cd0	8a 	. 
	adc a,e			;8cd1	8b 	. 
	adc a,h			;8cd2	8c 	. 
	nop			;8cd3	00 	. 
	ld a,h			;8cd4	7c 	| 
	ld a,e			;8cd5	7b 	{ 
l8cd6h:
	nop			;8cd6	00 	. 
	ld a,h			;8cd7	7c 	| 
	ld a,e			;8cd8	7b 	{ 
	ld a,h			;8cd9	7c 	| 
	dec b			;8cda	05 	. 
	nop			;8cdb	00 	. 
	adc a,b			;8cdc	88 	. 
	adc a,c			;8cdd	89 	. 
	adc a,l			;8cde	8d 	. 
	adc a,(hl)			;8cdf	8e 	. 
	adc a,h			;8ce0	8c 	. 
	nop			;8ce1	00 	. 
	ld a,h			;8ce2	7c 	| 
	ld a,e			;8ce3	7b 	{ 
	nop			;8ce4	00 	. 
	inc bc			;8ce5	03 	. 
	ld a,h			;8ce6	7c 	| 
	dec b			;8ce7	05 	. 
	nop			;8ce8	00 	. 
	adc a,b			;8ce9	88 	. 
	adc a,c			;8cea	89 	. 
	adc a,l			;8ceb	8d 	. 
	adc a,(hl)			;8cec	8e 	. 
	adc a,h			;8ced	8c 	. 
	nop			;8cee	00 	. 
	ld a,h			;8cef	7c 	| 
	ld a,h			;8cf0	7c 	| 
	nop			;8cf1	00 	. 
	ex af,af'			;8cf2	08 	. 
	ld a,(hl)			;8cf3	7e 	~ 
	inc b			;8cf4	04 	. 
	adc a,a			;8cf5	8f 	. 
	inc b			;8cf6	04 	. 
	ld a,(hl)			;8cf7	7e 	~ 
	djnz l8d77h		;8cf8	10 7d 	. } 
	nop			;8cfa	00 	. 
	ld de,l8200h		;8cfb	11 00 82 	. . . 
	dec bc			;8cfe	0b 	. 
	inc c			;8cff	0c 	. 
	add hl,de			;8d00	19 	. 
	nop			;8d01	00 	. 
	add a,d			;8d02	82 	. 
	dec bc			;8d03	0b 	. 
	inc c			;8d04	0c 	. 
	ld a,(bc)			;8d05	0a 	. 
	nop			;8d06	00 	. 
	add a,c			;8d07	81 	. 
l8d08h:
	inc d			;8d08	14 	. 
l8d09h:
	ld c,000h		;8d09	0e 00 	. . 
	add a,e			;8d0b	83 	. 
	inc bc			;8d0c	03 	. 
	djnz l8d12h		;8d0d	10 03 	. . 
	inc c			;8d0f	0c 	. 
	nop			;8d10	00 	. 
	ld (bc),a			;8d11	02 	. 
l8d12h:
	inc bc			;8d12	03 	. 
	add a,c			;8d13	81 	. 
	djnz l8d18h		;8d14	10 02 	. . 
	inc bc			;8d16	03 	. 
	ld a,(bc)			;8d17	0a 	. 
l8d18h:
	nop			;8d18	00 	. 
	inc bc			;8d19	03 	. 
	inc bc			;8d1a	03 	. 
	add a,c			;8d1b	81 	. 
	djnz l8d21h		;8d1c	10 03 	. . 
	inc bc			;8d1e	03 	. 
	ex af,af'			;8d1f	08 	. 
	nop			;8d20	00 	. 
l8d21h:
	add hl,bc			;8d21	09 	. 
	djnz l8d2ah		;8d22	10 06 	. . 
	nop			;8d24	00 	. 
	dec bc			;8d25	0b 	. 
	djnz l8d2ch		;8d26	10 04 	. . 
	nop			;8d28	00 	. 
	inc bc			;8d29	03 	. 
l8d2ah:
	djnz $+5		;8d2a	10 03 	. . 
l8d2ch:
	inc bc			;8d2c	03 	. 
	add a,c			;8d2d	81 	. 
	djnz $+5		;8d2e	10 03 	. . 
	inc bc			;8d30	03 	. 
	inc bc			;8d31	03 	. 
	djnz l8cb5h		;8d32	10 81 	. . 
	nop			;8d34	00 	. 
	djnz l8db5h		;8d35	10 7e 	. ~ 
	djnz l8db6h		;8d37	10 7d 	. } 
	nop			;8d39	00 	. 
	ex af,af'			;8d3a	08 	. 
	nop			;8d3b	00 	. 
	add a,d			;8d3c	82 	. 
	dec bc			;8d3d	0b 	. 
	inc c			;8d3e	0c 	. 
	inc d			;8d3f	14 	. 
	nop			;8d40	00 	. 
	add a,l			;8d41	85 	. 
	dec bc			;8d42	0b 	. 
l8d43h:
	inc c			;8d43	0c 	. 
	nop			;8d44	00 	. 
	dec bc			;8d45	0b 	. 
	inc c			;8d46	0c 	. 
	ld de,00500h		;8d47	11 00 05 	. . . 
	ld a,(bc)			;8d4a	0a 	. 
	add a,c			;8d4b	81 	. 
	nop			;8d4c	00 	. 
	dec b			;8d4d	05 	. 
	ld a,(bc)			;8d4e	0a 	. 
	dec b			;8d4f	05 	. 
	nop			;8d50	00 	. 
	inc b			;8d51	04 	. 
	djnz l8cd6h		;8d52	10 82 	. . 
	inc d			;8d54	14 	. 
	nop			;8d55	00 	. 
	inc bc			;8d56	03 	. 
	djnz $+4		;8d57	10 02 	. . 
	inc d			;8d59	14 	. 
	ld de,00300h		;8d5a	11 00 03 	. . . 
	ld a,d			;8d5d	7a 	z 
	dec c			;8d5e	0d 	. 
	nop			;8d5f	00 	. 
	inc bc			;8d60	03 	. 
	ld a,e			;8d61	7b 	{ 
	ld b,000h		;8d62	06 00 	. . 
	add a,c			;8d64	81 	. 
	djnz l8d6dh		;8d65	10 06 	. . 
	nop			;8d67	00 	. 
	inc bc			;8d68	03 	. 
	ld a,e			;8d69	7b 	{ 
	ld b,000h		;8d6a	06 00 	. . 
	add a,c			;8d6c	81 	. 
l8d6dh:
	djnz l8d75h		;8d6d	10 06 	. . 
	nop			;8d6f	00 	. 
	inc bc			;8d70	03 	. 
	ld a,h			;8d71	7c 	| 
	ld b,000h		;8d72	06 00 	. . 
	add a,c			;8d74	81 	. 
l8d75h:
	djnz l8d7dh		;8d75	10 06 	. . 
l8d77h:
	nop			;8d77	00 	. 
	djnz l8df8h		;8d78	10 7e 	. ~ 
	djnz l8df9h		;8d7a	10 7d 	. } 
	nop			;8d7c	00 	. 
l8d7dh:
	dec b			;8d7d	05 	. 
	nop			;8d7e	00 	. 
	add a,h			;8d7f	84 	. 
	inc d			;8d80	14 	. 
	djnz l8d93h		;8d81	10 10 	. . 
	inc d			;8d83	14 	. 
	inc c			;8d84	0c 	. 
	nop			;8d85	00 	. 
	add a,c			;8d86	81 	. 
	inc d			;8d87	14 	. 
	inc bc			;8d88	03 	. 
	nop			;8d89	00 	. 
	add a,c			;8d8a	81 	. 
	djnz l8d97h		;8d8b	10 0a 	. . 
	nop			;8d8d	00 	. 
	add a,d			;8d8e	82 	. 
	inc bc			;8d8f	03 	. 
	inc d			;8d90	14 	. 
	inc bc			;8d91	03 	. 
	nop			;8d92	00 	. 
l8d93h:
	add a,c			;8d93	81 	. 
	djnz l8da0h		;8d94	10 0a 	. . 
	nop			;8d96	00 	. 
l8d97h:
	add a,c			;8d97	81 	. 
	inc bc			;8d98	03 	. 
	inc bc			;8d99	03 	. 
	inc d			;8d9a	14 	. 
	ld (bc),a			;8d9b	02 	. 
	djnz l8da6h		;8d9c	10 08 	. . 
	nop			;8d9e	00 	. 
	ld (bc),a			;8d9f	02 	. 
l8da0h:
	djnz $-125		;8da0	10 81 	. . 
	inc bc			;8da2	03 	. 
	inc bc			;8da3	03 	. 
	nop			;8da4	00 	. 
	add a,c			;8da5	81 	. 
l8da6h:
	djnz l8db2h		;8da6	10 0a 	. . 
	nop			;8da8	00 	. 
	inc bc			;8da9	03 	. 
	djnz l8daeh		;8daa	10 02 	. . 
	nop			;8dac	00 	. 
	add a,c			;8dad	81 	. 
l8daeh:
	djnz l8dbch		;8dae	10 0c 	. . 
	nop			;8db0	00 	. 
	add a,c			;8db1	81 	. 
l8db2h:
	djnz l8dc1h		;8db2	10 0d 	. . 
	nop			;8db4	00 	. 
l8db5h:
	inc b			;8db5	04 	. 
l8db6h:
	djnz l8dbah		;8db6	10 02 	. . 
	nop			;8db8	00 	. 
	add a,d			;8db9	82 	. 
l8dbah:
	djnz $+22		;8dba	10 14 	. . 
l8dbch:
	ld a,(bc)			;8dbc	0a 	. 
	nop			;8dbd	00 	. 
	ld (bc),a			;8dbe	02 	. 
	djnz l8d43h		;8dbf	10 82 	. . 
l8dc1h:
	nop			;8dc1	00 	. 
	djnz l8dd1h		;8dc2	10 0d 	. . 
	nop			;8dc4	00 	. 
	ld (bc),a			;8dc5	02 	. 
	djnz $+10		;8dc6	10 08 	. . 
	nop			;8dc8	00 	. 
	djnz l8e49h		;8dc9	10 7e 	. ~ 
	djnz l8e4ah		;8dcb	10 7d 	. } 
	nop			;8dcd	00 	. 
	jp c,0fa8dh		;8dce	da 8d fa 	. . . 
l8dd1h:
	adc a,l			;8dd1	8d 	. 
	ld (bc),a			;8dd2	02 	. 
	adc a,(hl)			;8dd3	8e 	. 
	ld b,08eh		;8dd4	06 8e 	. . 
	ld a,(bc)			;8dd6	0a 	. 
	adc a,(hl)			;8dd7	8e 	. 
	ld c,08eh		;8dd8	0e 8e 	. . 
	ld (de),a			;8dda	12 	. 
	adc a,(hl)			;8ddb	8e 	. 
	ld (0638eh),a		;8ddc	32 8e 63 	2 . c 
	adc a,(hl)			;8ddf	8e 	. 
	sub e			;8de0	93 	. 
	adc a,(hl)			;8de1	8e 	. 
	ld (de),a			;8de2	12 	. 
	adc a,(hl)			;8de3	8e 	. 
	ld (0638eh),a		;8de4	32 8e 63 	2 . c 
	adc a,(hl)			;8de7	8e 	. 
	sub e			;8de8	93 	. 
	adc a,(hl)			;8de9	8e 	. 
	ld (de),a			;8dea	12 	. 
	adc a,(hl)			;8deb	8e 	. 
	ld (0638eh),a		;8dec	32 8e 63 	2 . c 
	adc a,(hl)			;8def	8e 	. 
	sub e			;8df0	93 	. 
	adc a,(hl)			;8df1	8e 	. 
	ld (de),a			;8df2	12 	. 
	adc a,(hl)			;8df3	8e 	. 
	ld (0638eh),a		;8df4	32 8e 63 	2 . c 
	adc a,(hl)			;8df7	8e 	. 
l8df8h:
	sub e			;8df8	93 	. 
l8df9h:
	adc a,(hl)			;8df9	8e 	. 
	out (08eh),a		;8dfa	d3 8e 	. . 
	scf			;8dfc	37 	7 
	adc a,a			;8dfd	8f 	. 
	adc a,e			;8dfe	8b 	. 
	adc a,a			;8dff	8f 	. 
	defb 0edh;next byte illegal after ed		;8e00	ed 	. 
	adc a,a			;8e01	8f 	. 
	ld (de),a			;8e02	12 	. 
	adc a,(hl)			;8e03	8e 	. 
	out (08eh),a		;8e04	d3 8e 	. . 
	ld (de),a			;8e06	12 	. 
	adc a,(hl)			;8e07	8e 	. 
	scf			;8e08	37 	7 
	adc a,a			;8e09	8f 	. 
	ld (de),a			;8e0a	12 	. 
	adc a,(hl)			;8e0b	8e 	. 
	adc a,e			;8e0c	8b 	. 
	adc a,a			;8e0d	8f 	. 
	ld (de),a			;8e0e	12 	. 
	adc a,(hl)			;8e0f	8e 	. 
	defb 0edh;next byte illegal after ed		;8e10	ed 	. 
	adc a,a			;8e11	8f 	. 
	dec d			;8e12	15 	. 
	nop			;8e13	00 	. 
	add a,d			;8e14	82 	. 
	dec bc			;8e15	0b 	. 
	inc c			;8e16	0c 	. 
	ld a,(de)			;8e17	1a 	. 
	nop			;8e18	00 	. 
	add a,d			;8e19	82 	. 
	dec bc			;8e1a	0b 	. 
	inc c			;8e1b	0c 	. 
	ld a,(bc)			;8e1c	0a 	. 
	nop			;8e1d	00 	. 
	add a,d			;8e1e	82 	. 
	dec bc			;8e1f	0b 	. 
	inc c			;8e20	0c 	. 
	scf			;8e21	37 	7 
	nop			;8e22	00 	. 
	ld (bc),a			;8e23	02 	. 
	ld a,(bc)			;8e24	0a 	. 
	ld (bc),a			;8e25	02 	. 
	inc d			;8e26	14 	. 
	ld b,000h		;8e27	06 00 	. . 
	inc bc			;8e29	03 	. 
	inc d			;8e2a	14 	. 
	dec e			;8e2b	1d 	. 
	nop			;8e2c	00 	. 
	djnz l8e6ch		;8e2d	10 3d 	. = 
	djnz l8e52h		;8e2f	10 21 	. ! 
	nop			;8e31	00 	. 
	ex af,af'			;8e32	08 	. 
	nop			;8e33	00 	. 
	inc b			;8e34	04 	. 
	inc d			;8e35	14 	. 
	ld b,000h		;8e36	06 00 	. . 
	ld (bc),a			;8e38	02 	. 
	inc d			;8e39	14 	. 
	inc b			;8e3a	04 	. 
	nop			;8e3b	00 	. 
	inc b			;8e3c	04 	. 
	ld a,(bc)			;8e3d	0a 	. 
	inc c			;8e3e	0c 	. 
	nop			;8e3f	00 	. 
	inc b			;8e40	04 	. 
	ld a,(bc)			;8e41	0a 	. 
	add a,e			;8e42	83 	. 
	nop			;8e43	00 	. 
	dec bc			;8e44	0b 	. 
	inc c			;8e45	0c 	. 
	jr z,l8e48h		;8e46	28 00 	( . 
l8e48h:
	add a,c			;8e48	81 	. 
l8e49h:
	inc d			;8e49	14 	. 
l8e4ah:
	dec d			;8e4a	15 	. 
	nop			;8e4b	00 	. 
	add a,c			;8e4c	81 	. 
	inc d			;8e4d	14 	. 
	inc c			;8e4e	0c 	. 
	nop			;8e4f	00 	. 
	ld (bc),a			;8e50	02 	. 
	ld a,(bc)			;8e51	0a 	. 
l8e52h:
	add a,c			;8e52	81 	. 
	inc d			;8e53	14 	. 
	rrca			;8e54	0f 	. 
	nop			;8e55	00 	. 
	add a,c			;8e56	81 	. 
	inc d			;8e57	14 	. 
	dec c			;8e58	0d 	. 
	nop			;8e59	00 	. 
	ld (bc),a			;8e5a	02 	. 
	inc d			;8e5b	14 	. 
	inc b			;8e5c	04 	. 
	nop			;8e5d	00 	. 
	djnz l8e9dh		;8e5e	10 3d 	. = 
	djnz l8e83h		;8e60	10 21 	. ! 
	nop			;8e62	00 	. 
	rla			;8e63	17 	. 
	nop			;8e64	00 	. 
	add a,d			;8e65	82 	. 
	dec bc			;8e66	0b 	. 
	inc c			;8e67	0c 	. 
	rla			;8e68	17 	. 
	nop			;8e69	00 	. 
	add a,h			;8e6a	84 	. 
	inc d			;8e6b	14 	. 
l8e6ch:
	ld a,(bc)			;8e6c	0a 	. 
	ld a,(bc)			;8e6d	0a 	. 
	inc d			;8e6e	14 	. 
	ld b,000h		;8e6f	06 00 	. . 
	dec b			;8e71	05 	. 
	inc d			;8e72	14 	. 
	ld a,(bc)			;8e73	0a 	. 
	nop			;8e74	00 	. 
	adc a,d			;8e75	8a 	. 
	inc d			;8e76	14 	. 
	nop			;8e77	00 	. 
	ld a,(bc)			;8e78	0a 	. 
	nop			;8e79	00 	. 
	ld a,(bc)			;8e7a	0a 	. 
	nop			;8e7b	00 	. 
	inc d			;8e7c	14 	. 
	nop			;8e7d	00 	. 
	dec bc			;8e7e	0b 	. 
	inc c			;8e7f	0c 	. 
	inc b			;8e80	04 	. 
	nop			;8e81	00 	. 
	ld (bc),a			;8e82	02 	. 
l8e83h:
	inc d			;8e83	14 	. 
	ld b,000h		;8e84	06 00 	. . 
	add a,c			;8e86	81 	. 
	inc d			;8e87	14 	. 
	rlca			;8e88	07 	. 
	nop			;8e89	00 	. 
	ld (bc),a			;8e8a	02 	. 
	ld a,(bc)			;8e8b	0a 	. 
	scf			;8e8c	37 	7 
	nop			;8e8d	00 	. 
	djnz l8ecdh		;8e8e	10 3d 	. = 
	djnz l8eb3h		;8e90	10 21 	. ! 
	nop			;8e92	00 	. 
	add hl,bc			;8e93	09 	. 
	nop			;8e94	00 	. 
	add a,c			;8e95	81 	. 
	inc d			;8e96	14 	. 
	ex af,af'			;8e97	08 	. 
	nop			;8e98	00 	. 
	add a,d			;8e99	82 	. 
	dec bc			;8e9a	0b 	. 
	inc c			;8e9b	0c 	. 
	ex af,af'			;8e9c	08 	. 
l8e9dh:
	nop			;8e9d	00 	. 
	add a,c			;8e9e	81 	. 
	ld a,(bc)			;8e9f	0a 	. 
	dec d			;8ea0	15 	. 
	nop			;8ea1	00 	. 
	ld b,014h		;8ea2	06 14 	. . 
	inc b			;8ea4	04 	. 
	nop			;8ea5	00 	. 
	add a,c			;8ea6	81 	. 
	inc d			;8ea7	14 	. 
	rlca			;8ea8	07 	. 
	nop			;8ea9	00 	. 
	ld (bc),a			;8eaa	02 	. 
	ld a,(bc)			;8eab	0a 	. 
	rlca			;8eac	07 	. 
	nop			;8ead	00 	. 
	add a,d			;8eae	82 	. 
	dec bc			;8eaf	0b 	. 
	inc c			;8eb0	0c 	. 
	dec b			;8eb1	05 	. 
	nop			;8eb2	00 	. 
l8eb3h:
	ld (bc),a			;8eb3	02 	. 
	ld a,(bc)			;8eb4	0a 	. 
	ld (bc),a			;8eb5	02 	. 
	nop			;8eb6	00 	. 
	add a,c			;8eb7	81 	. 
	ld a,(bc)			;8eb8	0a 	. 
	rlca			;8eb9	07 	. 
	nop			;8eba	00 	. 
	add a,d			;8ebb	82 	. 
	dec bc			;8ebc	0b 	. 
	inc c			;8ebd	0c 	. 
	ld (bc),a			;8ebe	02 	. 
	nop			;8ebf	00 	. 
	ld (bc),a			;8ec0	02 	. 
	ld a,(bc)			;8ec1	0a 	. 
	inc b			;8ec2	04 	. 
	nop			;8ec3	00 	. 
	add a,c			;8ec4	81 	. 
	inc d			;8ec5	14 	. 
	dec e			;8ec6	1d 	. 
	nop			;8ec7	00 	. 
	add a,c			;8ec8	81 	. 
	inc d			;8ec9	14 	. 
	dec d			;8eca	15 	. 
	nop			;8ecb	00 	. 
	ld (bc),a			;8ecc	02 	. 
l8ecdh:
	inc d			;8ecd	14 	. 
	djnz $+63		;8ece	10 3d 	. = 
	djnz $+35		;8ed0	10 21 	. ! 
	nop			;8ed2	00 	. 
	djnz l8ef6h		;8ed3	10 21 	. ! 
	djnz $+35		;8ed5	10 21 	. ! 
	add a,d			;8ed7	82 	. 
	ld d,018h		;8ed8	16 18 	. . 
	ld c,021h		;8eda	0e 21 	. ! 
	add a,(hl)			;8edc	86 	. 
	ld d,019h		;8edd	16 19 	. . 
	ld hl,01617h		;8edf	21 17 16 	! . . 
	jr l8ee9h		;8ee2	18 05 	. . 
	ld hl,0178bh		;8ee4	21 8b 17 	! . . 
	ld d,018h		;8ee7	16 18 	. . 
l8ee9h:
	ld hl,01621h		;8ee9	21 21 16 	! ! . 
	ld hl,01121h		;8eec	21 21 11 	! ! . 
	ld bc,00511h		;8eef	01 11 05 	. . . 
	ld hl,01603h		;8ef2	21 03 16 	! . . 
	ld (bc),a			;8ef5	02 	. 
l8ef6h:
	ld hl,01691h		;8ef6	21 91 16 	! . . 
	ld hl,01a21h		;8ef9	21 21 1a 	! ! . 
	ld d,019h		;8efc	16 19 	. . 
	ld hl,01617h		;8efe	21 17 16 	! . . 
	jr l8f24h		;8f01	18 21 	. ! 
	ld a,(de)			;8f03	1a 	. 
	ld d,019h		;8f04	16 19 	. . 
	ld hl,01621h		;8f06	21 21 16 	! ! . 
	ld b,021h		;8f09	06 21 	. ! 
	add a,e			;8f0b	83 	. 
	ld de,01603h		;8f0c	11 03 16 	. . . 
	ld b,021h		;8f0f	06 21 	. ! 
	add a,c			;8f11	81 	. 
	ld d,006h		;8f12	16 06 	. . 
	ld hl,01a8ah		;8f14	21 8a 1a 	! . . 
	ld d,019h		;8f17	16 19 	. . 
	ld hl,01617h		;8f19	21 17 16 	! . . 
	jr $+35		;8f1c	18 21 	. ! 
	ld hl,00a16h		;8f1e	21 16 0a 	! . . 
	ld hl,01186h		;8f21	21 86 11 	! . . 
l8f24h:
	ld bc,02111h		;8f24	01 11 21 	. . ! 
	ld hl,00a16h		;8f27	21 16 0a 	! . . 
	ld hl,01a86h		;8f2a	21 86 1a 	! . . 
	ld d,019h		;8f2d	16 19 	. . 
	ld hl,05121h		;8f2f	21 21 51 	! ! Q 
	rrca			;8f32	0f 	. 
	ld c,b			;8f33	48 	H 
	djnz $+73		;8f34	10 47 	. G 
	nop			;8f36	00 	. 
	jr z,$+35		;8f37	28 21 	( ! 
	add a,d			;8f39	82 	. 
	rla			;8f3a	17 	. 
	jr $+8		;8f3b	18 06 	. . 
	ld hl,01782h		;8f3d	21 82 17 	! . . 
	jr l8f48h		;8f40	18 06 	. . 
	ld hl,01a82h		;8f42	21 82 1a 	! . . 
	add hl,de			;8f45	19 	. 
	ld b,021h		;8f46	06 21 	. ! 
l8f48h:
	add a,(hl)			;8f48	86 	. 
	ld a,(de)			;8f49	1a 	. 
	add hl,de			;8f4a	19 	. 
	ld hl,01721h		;8f4b	21 21 17 	! ! . 
	jr $+8		;8f4e	18 06 	. . 
	ld hl,03e81h		;8f50	21 81 3e 	! . > 
	rlca			;8f53	07 	. 
	ld hl,01a82h		;8f54	21 82 1a 	! . . 
	add hl,de			;8f57	19 	. 
	dec b			;8f58	05 	. 
	ld hl,01783h		;8f59	21 83 17 	! . . 
	ccf			;8f5c	3f 	? 
	jr l8f6ch		;8f5d	18 0d 	. . 
	ld hl,01683h		;8f5f	21 83 16 	! . . 
	ld b,b			;8f62	40 	@ 
	ld d,002h		;8f63	16 02 	. . 
	ld hl,03e02h		;8f65	21 02 3e 	! . > 
	add hl,bc			;8f68	09 	. 
	ld hl,01a83h		;8f69	21 83 1a 	! . . 
l8f6ch:
	ld d,019h		;8f6c	16 19 	. . 
	ld (bc),a			;8f6e	02 	. 
	ld hl,03f02h		;8f6f	21 02 3f 	! . ? 
	ld (bc),a			;8f72	02 	. 
	ld hl,01782h		;8f73	21 82 17 	! . . 
	jr $+12		;8f76	18 0a 	. . 
	ld hl,04002h		;8f78	21 02 40 	! . @ 
	ld (bc),a			;8f7b	02 	. 
	ld hl,01a82h		;8f7c	21 82 1a 	! . . 
	add hl,de			;8f7f	19 	. 
	inc b			;8f80	04 	. 
	ld hl,00381h		;8f81	21 81 03 	! . . 
	dec b			;8f84	05 	. 
	ld hl,04810h		;8f85	21 10 48 	! . H 
	djnz l8fd1h		;8f88	10 47 	. G 
	nop			;8f8a	00 	. 
	ld de,l8321h		;8f8b	11 21 83 	. ! . 
	ld a,021h		;8f8e	3e 21 	> ! 
	ld a,00dh		;8f90	3e 0d 	> . 
	ld hl,03f83h		;8f92	21 83 3f 	! . ? 
	ld d,03fh		;8f95	16 3f 	. ? 
	inc b			;8f97	04 	. 
	ld hl,01781h		;8f98	21 81 17 	! . . 
	dec b			;8f9b	05 	. 
	ld d,086h		;8f9c	16 86 	. . 
	jr l8fc1h		;8f9e	18 21 	. ! 
	ld hl,01640h		;8fa0	21 40 16 	! @ . 
	ld b,b			;8fa3	40 	@ 
	dec b			;8fa4	05 	. 
	ld hl,01185h		;8fa5	21 85 11 	! . . 
	ld hl,02111h		;8fa8	21 11 21 	! . ! 
	ld de,02103h		;8fab	11 03 21 	. . ! 
	add a,e			;8fae	83 	. 
	ld a,(de)			;8faf	1a 	. 
	ld d,019h		;8fb0	16 19 	. . 
	inc b			;8fb2	04 	. 
	ld hl,01687h		;8fb3	21 87 16 	! . . 
	ld hl,02103h		;8fb6	21 03 21 	! . ! 
	ld de,01121h		;8fb9	11 21 11 	. ! . 
	add hl,bc			;8fbc	09 	. 
	ld hl,01a81h		;8fbd	21 81 1a 	! . . 
	dec b			;8fc0	05 	. 
l8fc1h:
	ld d,081h		;8fc1	16 81 	. . 
	add hl,de			;8fc3	19 	. 
	inc b			;8fc4	04 	. 
	ld hl,01783h		;8fc5	21 83 17 	! . . 
	ld d,018h		;8fc8	16 18 	. . 
	ld c,021h		;8fca	0e 21 	. ! 
	add a,c			;8fcc	81 	. 
	ld de,02104h		;8fcd	11 04 21 	. . ! 
	inc bc			;8fd0	03 	. 
l8fd1h:
	ld a,082h		;8fd1	3e 82 	> . 
	rla			;8fd3	17 	. 
	jr l8fdbh		;8fd4	18 05 	. . 
	ld hl,01a83h		;8fd6	21 83 1a 	! . . 
	ld d,019h		;8fd9	16 19 	. . 
l8fdbh:
	inc bc			;8fdb	03 	. 
	ld hl,03f03h		;8fdc	21 03 3f 	! . ? 
	add a,d			;8fdf	82 	. 
	ld a,(de)			;8fe0	1a 	. 
	add hl,de			;8fe1	19 	. 
	dec bc			;8fe2	0b 	. 
	ld hl,04003h		;8fe3	21 03 40 	! . @ 
	inc b			;8fe6	04 	. 
	ld hl,04810h		;8fe7	21 10 48 	! . H 
	djnz l9033h		;8fea	10 47 	. G 
	nop			;8fec	00 	. 
	rrca			;8fed	0f 	. 
	ld hl,04881h		;8fee	21 81 48 	! . H 
	ld c,021h		;8ff1	0e 21 	. ! 
	add a,h			;8ff3	84 	. 
	ld a,047h		;8ff4	3e 47 	> G 
	ld hl,00c16h		;8ff6	21 16 0c 	! . . 
	ld hl,03f84h		;8ff9	21 84 3f 	! . ? 
	ld b,a			;8ffc	47 	G 
	ld hl,00c16h		;8ffd	21 16 0c 	! . . 
	ld hl,04084h		;9000	21 84 40 	! . @ 
	ld b,a			;9003	47 	G 
	ld hl,00c16h		;9004	21 16 0c 	! . . 
	ld hl,04884h		;9007	21 84 48 	! . H 
	ld b,a			;900a	47 	G 
	ld hl,00616h		;900b	21 16 06 	! . . 
	ld hl,01181h		;900e	21 81 11 	! . . 
	dec b			;9011	05 	. 
	ld hl,04702h		;9012	21 02 47 	! . G 
	add a,d			;9015	82 	. 
	ld hl,00416h		;9016	21 16 04 	! . . 
	ld hl,03e02h		;9019	21 02 3e 	! . > 
	add a,c			;901c	81 	. 
	ld de,02104h		;901d	11 04 21 	. . ! 
	add a,l			;9020	85 	. 
	ld c,b			;9021	48 	H 
	ld b,a			;9022	47 	G 
	ld b,a			;9023	47 	G 
	ld hl,00416h		;9024	21 16 04 	! . . 
	ld hl,03f02h		;9027	21 02 3f 	! . ? 
	ld (bc),a			;902a	02 	. 
	ld hl,03e03h		;902b	21 03 3e 	! . > 
	inc bc			;902e	03 	. 
	ld b,a			;902f	47 	G 
	ld b,021h		;9030	06 21 	. ! 
	ld (bc),a			;9032	02 	. 
l9033h:
	ld b,b			;9033	40 	@ 
	ld (bc),a			;9034	02 	. 
	ld hl,03f03h		;9035	21 03 3f 	! . ? 
	inc bc			;9038	03 	. 
	ld b,a			;9039	47 	G 
	ld b,021h		;903a	06 21 	. ! 
	add a,d			;903c	82 	. 
	ld a,(de)			;903d	1a 	. 
	add hl,de			;903e	19 	. 
	ld (bc),a			;903f	02 	. 
	ld hl,04003h		;9040	21 03 40 	! . @ 
	inc bc			;9043	03 	. 
	ld b,a			;9044	47 	G 
	dec c			;9045	0d 	. 
	ld c,b			;9046	48 	H 
	inc de			;9047	13 	. 
	ld b,a			;9048	47 	G 
	nop			;9049	00 	. 
	ld c,h			;904a	4c 	L 
	sub b			;904b	90 	. 
	ld e,(hl)			;904c	5e 	^ 
	sub b			;904d	90 	. 
	sbc a,b			;904e	98 	. 
	sub b			;904f	90 	. 
	inc bc			;9050	03 	. 
	sub c			;9051	91 	. 
	ld l,d			;9052	6a 	j 
	sub c			;9053	91 	. 
	jp nz,01991h		;9054	c2 91 19 	. . . 
	sub d			;9057	92 	. 
	ld h,h			;9058	64 	d 
	sub d			;9059	92 	. 
	pop bc			;905a	c1 	. 
	sub d			;905b	92 	. 
	cpl			;905c	2f 	/ 
	sub e			;905d	93 	. 
	inc e			;905e	1c 	. 
	nop			;905f	00 	. 
	add a,d			;9060	82 	. 
	dec bc			;9061	0b 	. 
	inc c			;9062	0c 	. 
	inc bc			;9063	03 	. 
	nop			;9064	00 	. 
	add a,d			;9065	82 	. 
	dec bc			;9066	0b 	. 
	inc c			;9067	0c 	. 
	dec d			;9068	15 	. 
	nop			;9069	00 	. 
	add a,d			;906a	82 	. 
	dec bc			;906b	0b 	. 
	inc c			;906c	0c 	. 
	ld e,000h		;906d	1e 00 	. . 
	add a,e			;906f	83 	. 
	dec l			;9070	2d 	- 
	ld l,02fh		;9071	2e 2f 	. / 
	inc c			;9073	0c 	. 
	nop			;9074	00 	. 
	add a,l			;9075	85 	. 
	jr nc,l90a9h		;9076	30 31 	0 1 
	ld (03433h),a		;9078	32 33 34 	2 3 4 
	dec bc			;907b	0b 	. 
	nop			;907c	00 	. 
	add a,l			;907d	85 	. 
	dec (hl)			;907e	35 	5 
	ld (hl),037h		;907f	36 37 	6 7 
	jr c,l90bch		;9081	38 39 	8 9 
	dec bc			;9083	0b 	. 
	nop			;9084	00 	. 
	add a,l			;9085	85 	. 
	dec (hl)			;9086	35 	5 
	ld a,(03c3bh)		;9087	3a 3b 3c 	: ; < 
	add hl,sp			;908a	39 	9 
	dec bc			;908b	0b 	. 
	nop			;908c	00 	. 
	add a,l			;908d	85 	. 
	dec (hl)			;908e	35 	5 
	ld a,(03c3bh)		;908f	3a 3b 3c 	: ; < 
	add hl,sp			;9092	39 	9 
	inc b			;9093	04 	. 
	nop			;9094	00 	. 
	jr nz,$-84		;9095	20 aa 	  . 
	nop			;9097	00 	. 
	rlca			;9098	07 	. 
l9099h:
	nop			;9099	00 	. 
	add a,d			;909a	82 	. 
	dec bc			;909b	0b 	. 
	inc c			;909c	0c 	. 
	inc bc			;909d	03 	. 
	nop			;909e	00 	. 
	add a,c			;909f	81 	. 
	inc d			;90a0	14 	. 
l90a1h:
	inc bc			;90a1	03 	. 
	ld a,(bc)			;90a2	0a 	. 
	ld (bc),a			;90a3	02 	. 
	nop			;90a4	00 	. 
	add a,d			;90a5	82 	. 
	dec bc			;90a6	0b 	. 
	inc c			;90a7	0c 	. 
	ex af,af'			;90a8	08 	. 
l90a9h:
	nop			;90a9	00 	. 
	add a,c			;90aa	81 	. 
l90abh:
	inc d			;90ab	14 	. 
l90ach:
	inc bc			;90ac	03 	. 
	ld a,(bc)			;90ad	0a 	. 
	dec bc			;90ae	0b 	. 
	nop			;90af	00 	. 
	ld (bc),a			;90b0	02 	. 
	djnz l90b5h		;90b1	10 02 	. . 
	nop			;90b3	00 	. 
	add a,c			;90b4	81 	. 
l90b5h:
	ld a,(bc)			;90b5	0a 	. 
	rlca			;90b6	07 	. 
	nop			;90b7	00 	. 
	inc bc			;90b8	03 	. 
	djnz l90c0h		;90b9	10 05 	. . 
	nop			;90bb	00 	. 
l90bch:
	add a,c			;90bc	81 	. 
	ld a,(bc)			;90bd	0a 	. 
	dec bc			;90be	0b 	. 
	nop			;90bf	00 	. 
l90c0h:
	add a,l			;90c0	85 	. 
	dec bc			;90c1	0b 	. 
	inc c			;90c2	0c 	. 
l90c3h:
	nop			;90c3	00 	. 
	nop			;90c4	00 	. 
	ld a,(bc)			;90c5	0a 	. 
	inc b			;90c6	04 	. 
	nop			;90c7	00 	. 
	ld (bc),a			;90c8	02 	. 
	djnz l90d6h		;90c9	10 0b 	. . 
	nop			;90cb	00 	. 
	add a,e			;90cc	83 	. 
	djnz l90cfh		;90cd	10 00 	. . 
l90cfh:
	and a			;90cf	a7 	. 
	ld b,000h		;90d0	06 00 	. . 
	add a,c			;90d2	81 	. 
	and a			;90d3	a7 	. 
	rlca			;90d4	07 	. 
	nop			;90d5	00 	. 
l90d6h:
	add a,d			;90d6	82 	. 
	and a			;90d7	a7 	. 
	xor b			;90d8	a8 	. 
	ld b,000h		;90d9	06 00 	. . 
	add a,c			;90db	81 	. 
	xor b			;90dc	a8 	. 
	inc bc			;90dd	03 	. 
	nop			;90de	00 	. 
	adc a,b			;90df	88 	. 
	and a			;90e0	a7 	. 
	inc bc			;90e1	03 	. 
	sub b			;90e2	90 	. 
	sub c			;90e3	91 	. 
	xor b			;90e4	a8 	. 
	xor b			;90e5	a8 	. 
	nop			;90e6	00 	. 
	and a			;90e7	a7 	. 
	inc b			;90e8	04 	. 
	nop			;90e9	00 	. 
	adc a,h			;90ea	8c 	. 
	xor b			;90eb	a8 	. 
	nop			;90ec	00 	. 
	sub b			;90ed	90 	. 
	sub c			;90ee	91 	. 
	xor b			;90ef	a8 	. 
	nop			;90f0	00 	. 
	sub d			;90f1	92 	. 
	sub e			;90f2	93 	. 
	xor c			;90f3	a9 	. 
	xor c			;90f4	a9 	. 
	sub a			;90f5	97 	. 
	xor c			;90f6	a9 	. 
	inc b			;90f7	04 	. 
	nop			;90f8	00 	. 
	add a,(hl)			;90f9	86 	. 
	xor c			;90fa	a9 	. 
	sub h			;90fb	94 	. 
	sub l			;90fc	95 	. 
	sub (hl)			;90fd	96 	. 
	xor c			;90fe	a9 	. 
	nop			;90ff	00 	. 
	jr nz,l90ach		;9100	20 aa 	  . 
	nop			;9102	00 	. 
	add a,c			;9103	81 	. 
	ld a,(bc)			;9104	0a 	. 
	add hl,bc			;9105	09 	. 
	nop			;9106	00 	. 
	add a,d			;9107	82 	. 
	dec bc			;9108	0b 	. 
	inc c			;9109	0c 	. 
	inc b			;910a	04 	. 
	nop			;910b	00 	. 
	add a,c			;910c	81 	. 
	ld a,(bc)			;910d	0a 	. 
	djnz l9110h		;910e	10 00 	. . 
l9110h:
	add a,d			;9110	82 	. 
	dec bc			;9111	0b 	. 
	inc c			;9112	0c 	. 
	inc bc			;9113	03 	. 
	nop			;9114	00 	. 
	ld (bc),a			;9115	02 	. 
	djnz l9099h		;9116	10 81 	. . 
	inc bc			;9118	03 	. 
	djnz l911bh		;9119	10 00 	. . 
l911bh:
	inc bc			;911b	03 	. 
	djnz l90a1h		;911c	10 83 	. . 
	nop			;911e	00 	. 
	dec bc			;911f	0b 	. 
	inc c			;9120	0c 	. 
	ld b,000h		;9121	06 00 	. . 
	add a,c			;9123	81 	. 
	djnz l9135h		;9124	10 0f 	. . 
	nop			;9126	00 	. 
	inc bc			;9127	03 	. 
	djnz l90abh		;9128	10 81 	. . 
	inc bc			;912a	03 	. 
	ld b,000h		;912b	06 00 	. . 
	add a,c			;912d	81 	. 
	djnz $+9		;912e	10 07 	. . 
	nop			;9130	00 	. 
	add a,c			;9131	81 	. 
	and a			;9132	a7 	. 
	dec b			;9133	05 	. 
	nop			;9134	00 	. 
l9135h:
	add a,h			;9135	84 	. 
	djnz l9138h		;9136	10 00 	. . 
l9138h:
	nop			;9138	00 	. 
	ld bc,00002h		;9139	01 02 00 	. . . 
	ld (bc),a			;913c	02 	. 
	djnz l90c3h		;913d	10 84 	. . 
	nop			;913f	00 	. 
	and a			;9140	a7 	. 
	xor b			;9141	a8 	. 
	nop			;9142	00 	. 
	inc bc			;9143	03 	. 
	djnz l9150h		;9144	10 0a 	. . 
	nop			;9146	00 	. 
	ld (bc),a			;9147	02 	. 
	xor b			;9148	a8 	. 
	add a,c			;9149	81 	. 
	and a			;914a	a7 	. 
	inc bc			;914b	03 	. 
	nop			;914c	00 	. 
	add a,c			;914d	81 	. 
	and a			;914e	a7 	. 
	add hl,bc			;914f	09 	. 
l9150h:
	nop			;9150	00 	. 
	inc bc			;9151	03 	. 
	xor c			;9152	a9 	. 
	inc bc			;9153	03 	. 
	nop			;9154	00 	. 
	add a,c			;9155	81 	. 
	xor c			;9156	a9 	. 
	inc bc			;9157	03 	. 
	nop			;9158	00 	. 
	add a,c			;9159	81 	. 
	xor d			;915a	aa 	. 
	inc b			;915b	04 	. 
	ld l,c			;915c	69 	i 
	add hl,bc			;915d	09 	. 
	xor d			;915e	aa 	. 
	ld (bc),a			;915f	02 	. 
	ld l,c			;9160	69 	i 
	add a,c			;9161	81 	. 
	xor d			;9162	aa 	. 
	inc b			;9163	04 	. 
	ld l,b			;9164	68 	h 
	add hl,bc			;9165	09 	. 
	xor d			;9166	aa 	. 
	ld (bc),a			;9167	02 	. 
	ld l,b			;9168	68 	h 
	nop			;9169	00 	. 
	dec bc			;916a	0b 	. 
l916bh:
	nop			;916b	00 	. 
	add a,c			;916c	81 	. 
	ld a,(bc)			;916d	0a 	. 
	inc de			;916e	13 	. 
	nop			;916f	00 	. 
	add a,c			;9170	81 	. 
	dec bc			;9171	0b 	. 
	add hl,bc			;9172	09 	. 
	nop			;9173	00 	. 
	add a,c			;9174	81 	. 
	inc bc			;9175	03 	. 
	ld (bc),a			;9176	02 	. 
	nop			;9177	00 	. 
	ld (bc),a			;9178	02 	. 
	djnz l918eh		;9179	10 13 	. . 
	nop			;917b	00 	. 
	add a,c			;917c	81 	. 
	inc bc			;917d	03 	. 
	inc bc			;917e	03 	. 
	nop			;917f	00 	. 
	add a,d			;9180	82 	. 
	inc bc			;9181	03 	. 
	nop			;9182	00 	. 
	ld (bc),a			;9183	02 	. 
	djnz l9199h		;9184	10 13 	. . 
	nop			;9186	00 	. 
	add a,e			;9187	83 	. 
	djnz l918ah		;9188	10 00 	. . 
l918ah:
	inc bc			;918a	03 	. 
	rlca			;918b	07 	. 
	nop			;918c	00 	. 
	add a,c			;918d	81 	. 
l918eh:
	ld a,(bc)			;918e	0a 	. 
	rlca			;918f	07 	. 
	nop			;9190	00 	. 
	add a,c			;9191	81 	. 
	djnz $+5		;9192	10 03 	. . 
	nop			;9194	00 	. 
	inc bc			;9195	03 	. 
	djnz l919fh		;9196	10 07 	. . 
	nop			;9198	00 	. 
l9199h:
	ld (bc),a			;9199	02 	. 
	and a			;919a	a7 	. 
	ex af,af'			;919b	08 	. 
	nop			;919c	00 	. 
	add a,h			;919d	84 	. 
	and a			;919e	a7 	. 
l919fh:
	nop			;919f	00 	. 
	sub b			;91a0	90 	. 
	sub c			;91a1	91 	. 
	ld (bc),a			;91a2	02 	. 
	nop			;91a3	00 	. 
	ld (bc),a			;91a4	02 	. 
	xor b			;91a5	a8 	. 
	add a,d			;91a6	82 	. 
	sub b			;91a7	90 	. 
	sub c			;91a8	91 	. 
	inc b			;91a9	04 	. 
	nop			;91aa	00 	. 
	ld (bc),a			;91ab	02 	. 
	sub a			;91ac	97 	. 
	add a,h			;91ad	84 	. 
	xor c			;91ae	a9 	. 
	nop			;91af	00 	. 
	sub d			;91b0	92 	. 
	sub e			;91b1	93 	. 
	ld (bc),a			;91b2	02 	. 
	nop			;91b3	00 	. 
	ld (bc),a			;91b4	02 	. 
	xor c			;91b5	a9 	. 
	add a,d			;91b6	82 	. 
	sub l			;91b7	95 	. 
	sub (hl)			;91b8	96 	. 
	ld (bc),a			;91b9	02 	. 
	ld l,c			;91ba	69 	i 
	ld c,0aah		;91bb	0e aa 	. . 
	ld (bc),a			;91bd	02 	. 
	ld l,b			;91be	68 	h 
	ld c,0aah		;91bf	0e aa 	. . 
	nop			;91c1	00 	. 
	ex af,af'			;91c2	08 	. 
	nop			;91c3	00 	. 
	add a,d			;91c4	82 	. 
	dec bc			;91c5	0b 	. 
	inc c			;91c6	0c 	. 
	ld b,000h		;91c7	06 00 	. . 
	add a,d			;91c9	82 	. 
	inc c			;91ca	0c 	. 
	nop			;91cb	00 	. 
	ld (bc),a			;91cc	02 	. 
	ld a,(bc)			;91cd	0a 	. 
	jr nz,l91d0h		;91ce	20 00 	  . 
l91d0h:
	add a,(hl)			;91d0	86 	. 
	dec bc			;91d1	0b 	. 
	inc c			;91d2	0c 	. 
	nop			;91d3	00 	. 
	nop			;91d4	00 	. 
	djnz l91dah		;91d5	10 03 	. . 
	ld (bc),a			;91d7	02 	. 
	djnz l91dch		;91d8	10 02 	. . 
l91dah:
	nop			;91da	00 	. 
	add a,d			;91db	82 	. 
l91dch:
	dec bc			;91dc	0b 	. 
	inc c			;91dd	0c 	. 
	ld (l8200h),hl		;91de	22 00 82 	" . . 
	djnz l91e6h		;91e1	10 03 	. . 
	inc b			;91e3	04 	. 
	nop			;91e4	00 	. 
	add a,c			;91e5	81 	. 
l91e6h:
	inc d			;91e6	14 	. 
	inc bc			;91e7	03 	. 
	djnz l916bh		;91e8	10 81 	. . 
	inc bc			;91ea	03 	. 
	ld c,000h		;91eb	0e 00 	. . 
	add a,c			;91ed	81 	. 
	and a			;91ee	a7 	. 
	inc b			;91ef	04 	. 
	nop			;91f0	00 	. 
	adc a,b			;91f1	88 	. 
	ld bc,00310h		;91f2	01 10 03 	. . . 
	djnz l91f7h		;91f5	10 00 	. . 
l91f7h:
	and a			;91f7	a7 	. 
	nop			;91f8	00 	. 
	and a			;91f9	a7 	. 
	inc bc			;91fa	03 	. 
	nop			;91fb	00 	. 
	add a,l			;91fc	85 	. 
	xor b			;91fd	a8 	. 
	and a			;91fe	a7 	. 
	nop			;91ff	00 	. 
	nop			;9200	00 	. 
	djnz l9208h		;9201	10 05 	. . 
	nop			;9203	00 	. 
	adc a,c			;9204	89 	. 
	xor c			;9205	a9 	. 
	sub a			;9206	97 	. 
	xor c			;9207	a9 	. 
l9208h:
	sub a			;9208	97 	. 
	sub a			;9209	97 	. 
	nop			;920a	00 	. 
	xor c			;920b	a9 	. 
	xor c			;920c	a9 	. 
	sub a			;920d	97 	. 
	ld (bc),a			;920e	02 	. 
	nop			;920f	00 	. 
	rrca			;9210	0f 	. 
	xor d			;9211	aa 	. 
	add a,c			;9212	81 	. 
	ld l,c			;9213	69 	i 
	rrca			;9214	0f 	. 
	xor d			;9215	aa 	. 
	add a,c			;9216	81 	. 
	ld l,b			;9217	68 	h 
	nop			;9218	00 	. 
	ld c,000h		;9219	0e 00 	. . 
	add a,d			;921b	82 	. 
	dec bc			;921c	0b 	. 
	inc c			;921d	0c 	. 
	ld (bc),a			;921e	02 	. 
	nop			;921f	00 	. 
	inc bc			;9220	03 	. 
	ld a,(bc)			;9221	0a 	. 
	inc b			;9222	04 	. 
	nop			;9223	00 	. 
	ld (bc),a			;9224	02 	. 
	ld a,(bc)			;9225	0a 	. 
	add a,d			;9226	82 	. 
	nop			;9227	00 	. 
	ld a,(bc)			;9228	0a 	. 
	add hl,bc			;9229	09 	. 
	nop			;922a	00 	. 
	add a,d			;922b	82 	. 
	dec bc			;922c	0b 	. 
	inc c			;922d	0c 	. 
	dec b			;922e	05 	. 
	nop			;922f	00 	. 
	add a,c			;9230	81 	. 
	inc bc			;9231	03 	. 
	inc de			;9232	13 	. 
	nop			;9233	00 	. 
	add a,d			;9234	82 	. 
	dec bc			;9235	0b 	. 
	inc c			;9236	0c 	. 
	dec bc			;9237	0b 	. 
	nop			;9238	00 	. 
	add a,c			;9239	81 	. 
	ld bc,0000ah		;923a	01 0a 00 	. . . 
	ld (bc),a			;923d	02 	. 
	inc bc			;923e	03 	. 
	ld d,000h		;923f	16 00 	. . 
	add a,(hl)			;9241	86 	. 
	inc bc			;9242	03 	. 
	nop			;9243	00 	. 
	nop			;9244	00 	. 
	inc bc			;9245	03 	. 
	djnz l924bh		;9246	10 03 	. . 
	ld b,000h		;9248	06 00 	. . 
	add a,d			;924a	82 	. 
l924bh:
	ld (bc),a			;924b	02 	. 
	djnz $+10		;924c	10 08 	. . 
	nop			;924e	00 	. 
l924fh:
	ld b,0a7h		;924f	06 a7 	. . 
	rlca			;9251	07 	. 
	nop			;9252	00 	. 
	inc bc			;9253	03 	. 
	sub a			;9254	97 	. 
	ld b,0a9h		;9255	06 a9 	. . 
	add a,c			;9257	81 	. 
	nop			;9258	00 	. 
	ld (bc),a			;9259	02 	. 
	sub a			;925a	97 	. 
	inc bc			;925b	03 	. 
	ld l,c			;925c	69 	i 
	dec c			;925d	0d 	. 
	xor d			;925e	aa 	. 
	inc bc			;925f	03 	. 
	ld l,b			;9260	68 	h 
	dec c			;9261	0d 	. 
	xor d			;9262	aa 	. 
	nop			;9263	00 	. 
	ld b,000h		;9264	06 00 	. . 
	ld (bc),a			;9266	02 	. 
	ld a,(bc)			;9267	0a 	. 
	ex af,af'			;9268	08 	. 
	nop			;9269	00 	. 
	add a,d			;926a	82 	. 
	dec bc			;926b	0b 	. 
	inc c			;926c	0c 	. 
	ld a,(bc)			;926d	0a 	. 
	nop			;926e	00 	. 
	add a,d			;926f	82 	. 
	dec bc			;9270	0b 	. 
	inc c			;9271	0c 	. 
	inc bc			;9272	03 	. 
	nop			;9273	00 	. 
	inc bc			;9274	03 	. 
	djnz l927ah		;9275	10 03 	. . 
	nop			;9277	00 	. 
	add a,d			;9278	82 	. 
	dec bc			;9279	0b 	. 
l927ah:
	inc c			;927a	0c 	. 
	ex af,af'			;927b	08 	. 
	nop			;927c	00 	. 
	add a,c			;927d	81 	. 
	ld a,(bc)			;927e	0a 	. 
	rrca			;927f	0f 	. 
	nop			;9280	00 	. 
	add a,c			;9281	81 	. 
	ld a,(bc)			;9282	0a 	. 
	inc b			;9283	04 	. 
	nop			;9284	00 	. 
	add a,c			;9285	81 	. 
	djnz l9292h		;9286	10 0a 	. . 
	nop			;9288	00 	. 
	add a,c			;9289	81 	. 
	ld a,(bc)			;928a	0a 	. 
	inc bc			;928b	03 	. 
	djnz l9297h		;928c	10 09 	. . 
	nop			;928e	00 	. 
	add a,h			;928f	84 	. 
	djnz l92a6h		;9290	10 14 	. . 
l9292h:
	nop			;9292	00 	. 
	ld a,(bc)			;9293	0a 	. 
	ld a,(bc)			;9294	0a 	. 
	nop			;9295	00 	. 
	ld (bc),a			;9296	02 	. 
l9297h:
	and a			;9297	a7 	. 
	add a,d			;9298	82 	. 
	nop			;9299	00 	. 
	inc d			;929a	14 	. 
	ld a,(bc)			;929b	0a 	. 
	nop			;929c	00 	. 
	ld (bc),a			;929d	02 	. 
	djnz l92a2h		;929e	10 02 	. . 
	xor b			;92a0	a8 	. 
	add a,d			;92a1	82 	. 
l92a2h:
	ld a,(bc)			;92a2	0a 	. 
	inc d			;92a3	14 	. 
	dec b			;92a4	05 	. 
	nop			;92a5	00 	. 
l92a6h:
	add a,h			;92a6	84 	. 
	sub b			;92a7	90 	. 
	sub c			;92a8	91 	. 
	nop			;92a9	00 	. 
	djnz l92afh		;92aa	10 03 	. . 
	nop			;92ac	00 	. 
	ld (bc),a			;92ad	02 	. 
	xor b			;92ae	a8 	. 
l92afh:
	add a,d			;92af	82 	. 
	nop			;92b0	00 	. 
	djnz l92b8h		;92b1	10 05 	. . 
	nop			;92b3	00 	. 
	add a,d			;92b4	82 	. 
	sub d			;92b5	92 	. 
	sub e			;92b6	93 	. 
	dec b			;92b7	05 	. 
l92b8h:
	nop			;92b8	00 	. 
	ld (bc),a			;92b9	02 	. 
	xor c			;92ba	a9 	. 
	add a,d			;92bb	82 	. 
	nop			;92bc	00 	. 
	djnz l92dfh		;92bd	10 20 	.   
	xor d			;92bf	aa 	. 
	nop			;92c0	00 	. 
	add hl,bc			;92c1	09 	. 
	nop			;92c2	00 	. 
	add a,c			;92c3	81 	. 
	ld a,(bc)			;92c4	0a 	. 
	inc bc			;92c5	03 	. 
	nop			;92c6	00 	. 
	inc bc			;92c7	03 	. 
	inc d			;92c8	14 	. 
	inc b			;92c9	04 	. 
	nop			;92ca	00 	. 
	inc bc			;92cb	03 	. 
	djnz l924fh		;92cc	10 81 	. . 
	inc bc			;92ce	03 	. 
	rlca			;92cf	07 	. 
	nop			;92d0	00 	. 
	add a,h			;92d1	84 	. 
	inc d			;92d2	14 	. 
	nop			;92d3	00 	. 
	djnz l92d9h		;92d4	10 03 	. . 
	rlca			;92d6	07 	. 
	nop			;92d7	00 	. 
	inc bc			;92d8	03 	. 
l92d9h:
	djnz l92ddh		;92d9	10 02 	. . 
	nop			;92db	00 	. 
	add a,(hl)			;92dc	86 	. 
l92ddh:
	inc d			;92dd	14 	. 
	dec bc			;92de	0b 	. 
l92dfh:
	inc c			;92df	0c 	. 
	nop			;92e0	00 	. 
	nop			;92e1	00 	. 
	djnz l92eah		;92e2	10 06 	. . 
	nop			;92e4	00 	. 
	add a,l			;92e5	85 	. 
	ld a,(bc)			;92e6	0a 	. 
	djnz l92e9h		;92e7	10 00 	. . 
l92e9h:
	nop			;92e9	00 	. 
l92eah:
	inc d			;92ea	14 	. 
	rlca			;92eb	07 	. 
	nop			;92ec	00 	. 
	add a,c			;92ed	81 	. 
	djnz l92f6h		;92ee	10 06 	. . 
	nop			;92f0	00 	. 
	add a,d			;92f1	82 	. 
	inc bc			;92f2	03 	. 
	inc d			;92f3	14 	. 
	rlca			;92f4	07 	. 
	nop			;92f5	00 	. 
l92f6h:
	add a,h			;92f6	84 	. 
	inc bc			;92f7	03 	. 
	nop			;92f8	00 	. 
	nop			;92f9	00 	. 
	ld a,(bc)			;92fa	0a 	. 
	inc b			;92fb	04 	. 
	nop			;92fc	00 	. 
	add a,c			;92fd	81 	. 
	inc d			;92fe	14 	. 
	inc b			;92ff	04 	. 
	nop			;9300	00 	. 
	add a,c			;9301	81 	. 
	djnz $+5		;9302	10 03 	. . 
	nop			;9304	00 	. 
	inc b			;9305	04 	. 
	djnz l930bh		;9306	10 03 	. . 
	nop			;9308	00 	. 
	add a,d			;9309	82 	. 
	inc d			;930a	14 	. 
l930bh:
	nop			;930b	00 	. 
	ld (bc),a			;930c	02 	. 
	and a			;930d	a7 	. 
	ld a,(bc)			;930e	0a 	. 
	nop			;930f	00 	. 
	add a,h			;9310	84 	. 
	inc d			;9311	14 	. 
	nop			;9312	00 	. 
	inc d			;9313	14 	. 
	nop			;9314	00 	. 
	ld (bc),a			;9315	02 	. 
	xor b			;9316	a8 	. 
	ld (bc),a			;9317	02 	. 
	nop			;9318	00 	. 
	add a,e			;9319	83 	. 
	ld bc,00a00h		;931a	01 00 0a 	. . . 
	dec b			;931d	05 	. 
	nop			;931e	00 	. 
	add a,h			;931f	84 	. 
	inc d			;9320	14 	. 
	nop			;9321	00 	. 
	djnz l9324h		;9322	10 00 	. . 
l9324h:
	ld (bc),a			;9324	02 	. 
	xor c			;9325	a9 	. 
	ld a,(bc)			;9326	0a 	. 
	nop			;9327	00 	. 
	add a,e			;9328	83 	. 
	inc d			;9329	14 	. 
	nop			;932a	00 	. 
	djnz l934dh		;932b	10 20 	.   
	xor d			;932d	aa 	. 
	nop			;932e	00 	. 
	dec bc			;932f	0b 	. 
	nop			;9330	00 	. 
	add a,d			;9331	82 	. 
	dec bc			;9332	0b 	. 
	inc c			;9333	0c 	. 
	dec d			;9334	15 	. 
	nop			;9335	00 	. 
	add a,d			;9336	82 	. 
	dec bc			;9337	0b 	. 
	inc c			;9338	0c 	. 
	scf			;9339	37 	7 
	nop			;933a	00 	. 
	add a,e			;933b	83 	. 
	dec l			;933c	2d 	- 
	ld l,02fh		;933d	2e 2f 	. / 
	inc c			;933f	0c 	. 
	nop			;9340	00 	. 
	adc a,e			;9341	8b 	. 
	jr nc,$-83		;9342	30 ab 	0 . 
	xor h			;9344	ac 	. 
	xor l			;9345	ad 	. 
	inc (hl)			;9346	34 	4 
	nop			;9347	00 	. 
	and a			;9348	a7 	. 
	ld (02423h),hl		;9349	22 23 24 	" # $ 
	nop			;934c	00 	. 
l934dh:
	ld (bc),a			;934d	02 	. 
	and a			;934e	a7 	. 
l934fh:
	inc bc			;934f	03 	. 
	nop			;9350	00 	. 
	adc a,e			;9351	8b 	. 
	dec (hl)			;9352	35 	5 
	ld (hl),0aeh		;9353	36 ae 	6 . 
	jr c,l9390h		;9355	38 39 	8 9 
	and a			;9357	a7 	. 
	xor b			;9358	a8 	. 
	dec h			;9359	25 	% 
	ld h,027h		;935a	26 27 	& ' 
	jr z,l9360h		;935c	28 02 	( . 
	xor b			;935e	a8 	. 
	inc bc			;935f	03 	. 
l9360h:
	nop			;9360	00 	. 
	adc a,e			;9361	8b 	. 
	dec (hl)			;9362	35 	5 
	ld a,(03c4ah)		;9363	3a 4a 3c 	: J < 
	add hl,sp			;9366	39 	9 
	xor b			;9367	a8 	. 
	xor c			;9368	a9 	. 
	add hl,hl			;9369	29 	) 
	ld hl,(02c2bh)		;936a	2a 2b 2c 	* + , 
	ld (bc),a			;936d	02 	. 
	xor c			;936e	a9 	. 
	inc bc			;936f	03 	. 
	nop			;9370	00 	. 
	add a,(hl)			;9371	86 	. 
	dec (hl)			;9372	35 	5 
	ld a,(03c4ah)		;9373	3a 4a 3c 	: J < 
	add hl,sp			;9376	39 	9 
	xor c			;9377	a9 	. 
l9378h:
	jr nz,l9324h		;9378	20 aa 	  . 
	nop			;937a	00 	. 
	ld a,l			;937b	7d 	} 
	sub e			;937c	93 	. 
	adc a,a			;937d	8f 	. 
	sub e			;937e	93 	. 
	inc e			;937f	1c 	. 
	sub h			;9380	94 	. 
l9381h:
	sub a			;9381	97 	. 
	sub h			;9382	94 	. 
	inc d			;9383	14 	. 
	sub l			;9384	95 	. 
	and a			;9385	a7 	. 
l9386h:
	sub l			;9386	95 	. 
	inc sp			;9387	33 	3 
	sub (hl)			;9388	96 	. 
	and d			;9389	a2 	. 
	sub (hl)			;938a	96 	. 
	dec h			;938b	25 	% 
	sub a			;938c	97 	. 
l938dh:
	ld a,d			;938d	7a 	z 
	sub a			;938e	97 	. 
	inc bc			;938f	03 	. 
l9390h:
	add a,081h		;9390	c6 81 	. . 
l9392h:
	or e			;9392	b3 	. 
	inc bc			;9393	03 	. 
	pop bc			;9394	c1 	. 
	add a,(hl)			;9395	86 	. 
	ret nz			;9396	c0 	. 
l9397h:
	pop bc			;9397	c1 	. 
	ret nz			;9398	c0 	. 
	pop bc			;9399	c1 	. 
	ret nz			;939a	c0 	. 
	pop bc			;939b	c1 	. 
	inc bc			;939c	03 	. 
	ret nz			;939d	c0 	. 
l939eh:
	inc bc			;939e	03 	. 
	add a,08bh		;939f	c6 8b 	. . 
	or h			;93a1	b4 	. 
	ret nz			;93a2	c0 	. 
	pop bc			;93a3	c1 	. 
	ret nz			;93a4	c0 	. 
	jp 0c1c0h		;93a5	c3 c0 c1 	. . . 
	ret nz			;93a8	c0 	. 
	jp nz,lafc2h		;93a9	c2 c2 af 	. . . 
	ld (bc),a			;93ac	02 	. 
	pop bc			;93ad	c1 	. 
	ld (bc),a			;93ae	02 	. 
	add a,088h		;93af	c6 88 	. . 
	or e			;93b1	b3 	. 
	xor a			;93b2	af 	. 
	or b			;93b3	b0 	. 
	xor a			;93b4	af 	. 
	jp 02020h		;93b5	c3 20 20 	.     
	jp 02004h		;93b8	c3 04 20 	. .   
	ld (bc),a			;93bb	02 	. 
	jp nz,0c602h		;93bc	c2 02 c6 	. . . 
	add a,d			;93bf	82 	. 
	or h			;93c0	b4 	. 
	or b			;93c1	b0 	. 
	ld (bc),a			;93c2	02 	. 
	jp 02003h		;93c3	c3 03 20 	. .   
	dec b			;93c6	05 	. 
	djnz l93cbh		;93c7	10 02 	. . 
	jr nz,l934fh		;93c9	20 84 	  . 
l93cbh:
	add a,0b3h		;93cb	c6 b3 	. . 
	xor a			;93cd	af 	. 
	or d			;93ce	b2 	. 
	ld (bc),a			;93cf	02 	. 
	jr nz,l93d5h		;93d0	20 03 	  . 
	nop			;93d2	00 	. 
	adc a,d			;93d3	8a 	. 
	inc bc			;93d4	03 	. 
l93d5h:
	jr nz,l93f7h		;93d5	20 20 	    
	nop			;93d7	00 	. 
	inc bc			;93d8	03 	. 
	jr nz,l93fbh		;93d9	20 20 	    
	add a,0b4h		;93db	c6 b4 	. . 
	or b			;93dd	b0 	. 
	ld (bc),a			;93de	02 	. 
	jr nz,l93e3h		;93df	20 02 	  . 
	nop			;93e1	00 	. 
	ld (bc),a			;93e2	02 	. 
l93e3h:
	jr nz,l93e9h		;93e3	20 04 	  . 
	nop			;93e5	00 	. 
	add a,(hl)			;93e6	86 	. 
	djnz l9409h		;93e7	10 20 	.   
l93e9h:
	jr nz,l939eh		;93e9	20 b3 	  . 
	xor a			;93eb	af 	. 
	or d			;93ec	b2 	. 
	dec b			;93ed	05 	. 
l93eeh:
	jr nz,l93f4h		;93ee	20 04 	  . 
	nop			;93f0	00 	. 
	add a,c			;93f1	81 	. 
	djnz l93f7h		;93f2	10 03 	. . 
l93f4h:
	jr nz,l9378h		;93f4	20 82 	  . 
	or h			;93f6	b4 	. 
l93f7h:
	or b			;93f7	b0 	. 
	dec b			;93f8	05 	. 
	jr nz,l9381h		;93f9	20 86 	  . 
l93fbh:
	nop			;93fb	00 	. 
	jr nz,l93feh		;93fc	20 00 	  . 
l93feh:
	jr nz,l9410h		;93fe	20 10 	  . 
	nop			;9400	00 	. 
	inc bc			;9401	03 	. 
	jr nz,l9386h		;9402	20 82 	  . 
	xor a			;9404	af 	. 
	or d			;9405	b2 	. 
	rlca			;9406	07 	. 
	jr nz,l938dh		;9407	20 84 	  . 
l9409h:
	nop			;9409	00 	. 
	jr nz,l941ch		;940a	20 10 	  . 
	nop			;940c	00 	. 
	inc bc			;940d	03 	. 
	jr nz,l9392h		;940e	20 82 	  . 
l9410h:
	or b			;9410	b0 	. 
	nop			;9411	00 	. 
	ex af,af'			;9412	08 	. 
	jr nz,l9397h		;9413	20 82 	  . 
	nop			;9415	00 	. 
	djnz l941ch		;9416	10 04 	. . 
	jr nz,l943ah		;9418	20 20 	    
	cp e			;941a	bb 	. 
	nop			;941b	00 	. 
l941ch:
	ld (bc),a			;941c	02 	. 
	pop bc			;941d	c1 	. 
	adc a,l			;941e	8d 	. 
	ret nz			;941f	c0 	. 
	pop bc			;9420	c1 	. 
	ret nz			;9421	c0 	. 
	pop bc			;9422	c1 	. 
	ret nz			;9423	c0 	. 
	ret nz			;9424	c0 	. 
	pop bc			;9425	c1 	. 
	ret nz			;9426	c0 	. 
	pop bc			;9427	c1 	. 
	ret nz			;9428	c0 	. 
	pop bc			;9429	c1 	. 
	ret nz			;942a	c0 	. 
	pop bc			;942b	c1 	. 
	ld (bc),a			;942c	02 	. 
	ret nz			;942d	c0 	. 
	ld (bc),a			;942e	02 	. 
	pop bc			;942f	c1 	. 
	sub h			;9430	94 	. 
	ret nz			;9431	c0 	. 
	nop			;9432	00 	. 
	jp nz,0c2c0h		;9433	c2 c0 c2 	. . . 
	pop bc			;9436	c1 	. 
	ret nz			;9437	c0 	. 
	pop bc			;9438	c1 	. 
	ret nz			;9439	c0 	. 
l943ah:
	pop bc			;943a	c1 	. 
	ret nz			;943b	c0 	. 
	pop bc			;943c	c1 	. 
	jp 0c0c1h		;943d	c3 c1 c0 	. . . 
	pop bc			;9440	c1 	. 
	ret nz			;9441	c0 	. 
	nop			;9442	00 	. 
	nop			;9443	00 	. 
	jp 00004h		;9444	c3 04 00 	. . . 
	inc bc			;9447	03 	. 
	ld a,(bc)			;9448	0a 	. 
	ld (bc),a			;9449	02 	. 
	nop			;944a	00 	. 
	ld (bc),a			;944b	02 	. 
	ret nz			;944c	c0 	. 
	add a,d			;944d	82 	. 
	jp nz,007c3h		;944e	c2 c3 07 	. . . 
	nop			;9451	00 	. 
	inc bc			;9452	03 	. 
	djnz l9457h		;9453	10 02 	. . 
	nop			;9455	00 	. 
	add a,c			;9456	81 	. 
l9457h:
	jp nz,00007h		;9457	c2 07 00 	. . . 
	ex af,af'			;945a	08 	. 
	djnz $+8		;945b	10 06 	. . 
	nop			;945d	00 	. 
	add a,h			;945e	84 	. 
	djnz l9461h		;945f	10 00 	. . 
l9461h:
	inc bc			;9461	03 	. 
	djnz l9469h		;9462	10 05 	. . 
	nop			;9464	00 	. 
	add a,c			;9465	81 	. 
	djnz $+5		;9466	10 03 	. . 
	nop			;9468	00 	. 
l9469h:
	ld (bc),a			;9469	02 	. 
	djnz l93eeh		;946a	10 82 	. . 
	inc bc			;946c	03 	. 
	djnz l9477h		;946d	10 08 	. . 
	nop			;946f	00 	. 
	add a,c			;9470	81 	. 
	djnz $+5		;9471	10 03 	. . 
	nop			;9473	00 	. 
	inc bc			;9474	03 	. 
	djnz l947ch		;9475	10 05 	. . 
l9477h:
	nop			;9477	00 	. 
l9478h:
	ld (bc),a			;9478	02 	. 
	ld a,(bc)			;9479	0a 	. 
	ld b,000h		;947a	06 00 	. . 
l947ch:
	inc bc			;947c	03 	. 
	djnz l948ah		;947d	10 0b 	. . 
	nop			;947f	00 	. 
	add a,c			;9480	81 	. 
	cp l			;9481	bd 	. 
	dec b			;9482	05 	. 
l9483h:
	cp e			;9483	bb 	. 
	add a,c			;9484	81 	. 
	cp h			;9485	bc 	. 
	ex af,af'			;9486	08 	. 
	nop			;9487	00 	. 
	add hl,bc			;9488	09 	. 
	cp e			;9489	bb 	. 
l948ah:
	add a,c			;948a	81 	. 
	cp h			;948b	bc 	. 
	inc bc			;948c	03 	. 
	cp (hl)			;948d	be 	. 
	add a,c			;948e	81 	. 
	cp l			;948f	bd 	. 
	inc c			;9490	0c 	. 
	cp e			;9491	bb 	. 
	inc bc			;9492	03 	. 
	cp a			;9493	bf 	. 
	inc bc			;9494	03 	. 
	cp e			;9495	bb 	. 
	nop			;9496	00 	. 
	sub a			;9497	97 	. 
	pop bc			;9498	c1 	. 
	ret nz			;9499	c0 	. 
	pop bc			;949a	c1 	. 
	ret nz			;949b	c0 	. 
	pop bc			;949c	c1 	. 
	ret nz			;949d	c0 	. 
	pop bc			;949e	c1 	. 
	ret nz			;949f	c0 	. 
	ret nz			;94a0	c0 	. 
	pop bc			;94a1	c1 	. 
	ret nz			;94a2	c0 	. 
	pop bc			;94a3	c1 	. 
	ret nz			;94a4	c0 	. 
	pop bc			;94a5	c1 	. 
	ret nz			;94a6	c0 	. 
	pop bc			;94a7	c1 	. 
	pop bc			;94a8	c1 	. 
	jp 0c1c0h		;94a9	c3 c0 c1 	. . . 
	ret nz			;94ac	c0 	. 
	pop bc			;94ad	c1 	. 
	ret nz			;94ae	c0 	. 
	inc bc			;94af	03 	. 
	pop bc			;94b0	c1 	. 
	sub l			;94b1	95 	. 
	jp nz,0c0c1h		;94b2	c2 c1 c0 	. . . 
	pop bc			;94b5	c1 	. 
	ret nz			;94b6	c0 	. 
	pop bc			;94b7	c1 	. 
	nop			;94b8	00 	. 
	nop			;94b9	00 	. 
	jp 0c3c2h		;94ba	c3 c2 c3 	. . . 
	pop bc			;94bd	c1 	. 
	ret nz			;94be	c0 	. 
	ret nz			;94bf	c0 	. 
	pop bc			;94c0	c1 	. 
l94c1h:
	ret nz			;94c1	c0 	. 
	nop			;94c2	00 	. 
	nop			;94c3	00 	. 
	ret nz			;94c4	c0 	. 
	pop bc			;94c5	c1 	. 
	jp 00006h		;94c6	c3 06 00 	. . . 
	ld (bc),a			;94c9	02 	. 
	jp nz,0c102h		;94ca	c2 02 c1 	. . . 
	add a,a			;94cd	87 	. 
	jp nz,00000h		;94ce	c2 00 00 	. . . 
	jp 00000h		;94d1	c3 00 00 	. . . 
	ld bc,00007h		;94d4	01 07 00 	. . . 
	add a,c			;94d7	81 	. 
	jp 00006h		;94d8	c3 06 00 	. . . 
	inc b			;94db	04 	. 
	djnz l94e6h		;94dc	10 08 	. . 
	nop			;94de	00 	. 
	ld (bc),a			;94df	02 	. 
	djnz l94e6h		;94e0	10 04 	. . 
	nop			;94e2	00 	. 
	ld (bc),a			;94e3	02 	. 
	djnz $+8		;94e4	10 06 	. . 
l94e6h:
	nop			;94e6	00 	. 
	add a,h			;94e7	84 	. 
	djnz $+4		;94e8	10 02 	. . 
	inc bc			;94ea	03 	. 
	djnz l94f1h		;94eb	10 04 	. . 
	nop			;94ed	00 	. 
	ld (bc),a			;94ee	02 	. 
	inc bc			;94ef	03 	. 
	add a,c			;94f0	81 	. 
l94f1h:
	djnz l94f5h		;94f1	10 02 	. . 
	nop			;94f3	00 	. 
	ld (bc),a			;94f4	02 	. 
l94f5h:
	djnz l9478h		;94f5	10 81 	. . 
	nop			;94f7	00 	. 
	inc bc			;94f8	03 	. 
	djnz l9483h		;94f9	10 88 	. . 
	ld a,(bc)			;94fb	0a 	. 
	nop			;94fc	00 	. 
l94fdh:
	nop			;94fd	00 	. 
	cp l			;94fe	bd 	. 
	cp e			;94ff	bb 	. 
	nop			;9500	00 	. 
	nop			;9501	00 	. 
	djnz l9506h		;9502	10 02 	. . 
	nop			;9504	00 	. 
	ld (bc),a			;9505	02 	. 
l9506h:
	djnz l950dh		;9506	10 05 	. . 
	nop			;9508	00 	. 
	add a,c			;9509	81 	. 
	cp l			;950a	bd 	. 
	inc bc			;950b	03 	. 
	cp e			;950c	bb 	. 
l950dh:
	inc bc			;950d	03 	. 
	nop			;950e	00 	. 
	add a,c			;950f	81 	. 
	cp l			;9510	bd 	. 
	inc l			;9511	2c 	, 
	cp e			;9512	bb 	. 
	nop			;9513	00 	. 
	adc a,(hl)			;9514	8e 	. 
	ret nz			;9515	c0 	. 
	pop bc			;9516	c1 	. 
	ret nz			;9517	c0 	. 
	pop bc			;9518	c1 	. 
	ret nz			;9519	c0 	. 
	pop bc			;951a	c1 	. 
	ret nz			;951b	c0 	. 
	pop bc			;951c	c1 	. 
	ret nz			;951d	c0 	. 
	pop bc			;951e	c1 	. 
	ret nz			;951f	c0 	. 
	pop bc			;9520	c1 	. 
	ret nz			;9521	c0 	. 
	jp nz,0c002h		;9522	c2 02 c0 	. . . 
	ld (bc),a			;9525	02 	. 
	jp nz,0c08eh		;9526	c2 8e c0 	. . . 
	nop			;9529	00 	. 
	pop bc			;952a	c1 	. 
	nop			;952b	00 	. 
	pop bc			;952c	c1 	. 
	ret nz			;952d	c0 	. 
	ret nz			;952e	c0 	. 
	jp nz,0c1c0h		;952f	c2 c0 c1 	. . . 
	jp 00000h		;9532	c3 00 00 	. . . 
	ret nz			;9535	c0 	. 
	ld (bc),a			;9536	02 	. 
	nop			;9537	00 	. 
	inc bc			;9538	03 	. 
	djnz l94c1h		;9539	10 86 	. . 
	nop			;953b	00 	. 
	jp 000c1h		;953c	c3 c1 00 	. . . 
	nop			;953f	00 	. 
	jp nz,00004h		;9540	c2 04 00 	. . . 
	adc a,c			;9543	89 	. 
	jp nz,00000h		;9544	c2 00 00 	. . . 
	djnz l954ch		;9547	10 03 	. . 
	djnz l954bh		;9549	10 00 	. . 
l954bh:
	nop			;954b	00 	. 
l954ch:
	jp nz,00005h		;954c	c2 05 00 	. . . 
	add a,c			;954f	81 	. 
	ld a,(bc)			;9550	0a 	. 
	dec b			;9551	05 	. 
	nop			;9552	00 	. 
	add a,c			;9553	81 	. 
	djnz l955ah		;9554	10 04 	. . 
l9556h:
	nop			;9556	00 	. 
	add a,h			;9557	84 	. 
	djnz l955dh		;9558	10 03 	. . 
l955ah:
	djnz l955ch		;955a	10 00 	. . 
l955ch:
	inc bc			;955c	03 	. 
l955dh:
	ld a,(bc)			;955d	0a 	. 
	dec c			;955e	0d 	. 
	nop			;955f	00 	. 
	add a,c			;9560	81 	. 
	ld bc,01002h		;9561	01 02 10 	. . . 
	inc bc			;9564	03 	. 
	nop			;9565	00 	. 
	add a,d			;9566	82 	. 
	cp l			;9567	bd 	. 
	cp h			;9568	bc 	. 
	ex af,af'			;9569	08 	. 
	nop			;956a	00 	. 
	inc bc			;956b	03 	. 
	djnz l94f1h		;956c	10 83 	. . 
	nop			;956e	00 	. 
	cp h			;956f	bc 	. 
	nop			;9570	00 	. 
	inc bc			;9571	03 	. 
	cp e			;9572	bb 	. 
	add a,c			;9573	81 	. 
	cp h			;9574	bc 	. 
	ld b,000h		;9575	06 00 	. . 
l9577h:
	inc bc			;9577	03 	. 
	djnz l94fdh		;9578	10 83 	. . 
	nop			;957a	00 	. 
	cp e			;957b	bb 	. 
	nop			;957c	00 	. 
	ld b,0bbh		;957d	06 bb 	. . 
	add a,c			;957f	81 	. 
	cp h			;9580	bc 	. 
	rlca			;9581	07 	. 
	nop			;9582	00 	. 
	add a,c			;9583	81 	. 
	cp e			;9584	bb 	. 
	rlca			;9585	07 	. 
	nop			;9586	00 	. 
	inc bc			;9587	03 	. 
	cp e			;9588	bb 	. 
	add a,c			;9589	81 	. 
	cp h			;958a	bc 	. 
	inc b			;958b	04 	. 
	nop			;958c	00 	. 
	add a,c			;958d	81 	. 
	cp e			;958e	bb 	. 
	inc bc			;958f	03 	. 
l9590h:
	nop			;9590	00 	. 
	add a,c			;9591	81 	. 
	ld a,(bc)			;9592	0a 	. 
	inc bc			;9593	03 	. 
	nop			;9594	00 	. 
	inc b			;9595	04 	. 
	cp e			;9596	bb 	. 
	inc b			;9597	04 	. 
	cp (hl)			;9598	be 	. 
	add a,e			;9599	83 	. 
	cp e			;959a	bb 	. 
	cp (hl)			;959b	be 	. 
	cp l			;959c	bd 	. 
	inc bc			;959d	03 	. 
	cp e			;959e	bb 	. 
	add a,d			;959f	82 	. 
	cp h			;95a0	bc 	. 
	cp (hl)			;95a1	be 	. 
	inc b			;95a2	04 	. 
	cp e			;95a3	bb 	. 
	inc b			;95a4	04 	. 
	cp a			;95a5	bf 	. 
	nop			;95a6	00 	. 
	ld (bc),a			;95a7	02 	. 
	pop bc			;95a8	c1 	. 
	sbc a,(hl)			;95a9	9e 	. 
	ret nz			;95aa	c0 	. 
	jp 0c1c0h		;95ab	c3 c0 c1 	. . . 
	ret nz			;95ae	c0 	. 
	jp 0c1c0h		;95af	c3 c0 c1 	. . . 
	ret nz			;95b2	c0 	. 
	pop bc			;95b3	c1 	. 
	ret nz			;95b4	c0 	. 
	jp nz,0c1c0h		;95b5	c2 c0 c1 	. . . 
	jp 0c1c0h		;95b8	c3 c0 c1 	. . . 
	nop			;95bb	00 	. 
	jp 0c0c1h		;95bc	c3 c1 c0 	. . . 
	nop			;95bf	00 	. 
	ret nz			;95c0	c0 	. 
	pop bc			;95c1	c1 	. 
	jp nz,0c1c0h		;95c2	c2 c0 c1 	. . . 
	nop			;95c5	00 	. 
	ret nz			;95c6	c0 	. 
	pop bc			;95c7	c1 	. 
	dec b			;95c8	05 	. 
	nop			;95c9	00 	. 
	add a,h			;95ca	84 	. 
	jp nz,00000h		;95cb	c2 00 00 	. . . 
	jp nz,00002h		;95ce	c2 02 00 	. . . 
	inc bc			;95d1	03 	. 
	djnz l9556h		;95d2	10 82 	. . 
	nop			;95d4	00 	. 
	ret nz			;95d5	c0 	. 
	dec bc			;95d6	0b 	. 
	nop			;95d7	00 	. 
	inc bc			;95d8	03 	. 
	djnz l955dh		;95d9	10 82 	. . 
	nop			;95db	00 	. 
	jp nz,00009h		;95dc	c2 09 00 	. . . 
	dec b			;95df	05 	. 
	djnz l95e4h		;95e0	10 02 	. . 
	nop			;95e2	00 	. 
	ld (bc),a			;95e3	02 	. 
l95e4h:
	djnz l95e8h		;95e4	10 02 	. . 
	nop			;95e6	00 	. 
	ld (bc),a			;95e7	02 	. 
l95e8h:
	djnz $+5		;95e8	10 03 	. . 
	nop			;95ea	00 	. 
	ld (bc),a			;95eb	02 	. 
	djnz l95f0h		;95ec	10 02 	. . 
	inc bc			;95ee	03 	. 
	add a,c			;95ef	81 	. 
l95f0h:
	djnz l95f4h		;95f0	10 02 	. . 
	nop			;95f2	00 	. 
	ld (bc),a			;95f3	02 	. 
l95f4h:
	djnz l9577h		;95f4	10 81 	. . 
	nop			;95f6	00 	. 
	ld (bc),a			;95f7	02 	. 
	djnz l95feh		;95f8	10 04 	. . 
	nop			;95fa	00 	. 
	ld (bc),a			;95fb	02 	. 
	djnz l9600h		;95fc	10 02 	. . 
l95feh:
	ld a,(bc)			;95fe	0a 	. 
	add a,e			;95ff	83 	. 
l9600h:
	djnz l9602h		;9600	10 00 	. . 
l9602h:
	djnz $+5		;9602	10 03 	. . 
	nop			;9604	00 	. 
	add a,e			;9605	83 	. 
	djnz l9608h		;9606	10 00 	. . 
l9608h:
	djnz $+5		;9608	10 03 	. . 
	nop			;960a	00 	. 
	dec b			;960b	05 	. 
	djnz l9590h		;960c	10 82 	. . 
	nop			;960e	00 	. 
	djnz $+5		;960f	10 03 	. . 
	nop			;9611	00 	. 
	inc bc			;9612	03 	. 
	djnz l9627h		;9613	10 12 	. . 
	nop			;9615	00 	. 
	adc a,c			;9616	89 	. 
	cp l			;9617	bd 	. 
	cp e			;9618	bb 	. 
	cp (hl)			;9619	be 	. 
	cp e			;961a	bb 	. 
	cp (hl)			;961b	be 	. 
	cp e			;961c	bb 	. 
	cp e			;961d	bb 	. 
	cp (hl)			;961e	be 	. 
l961fh:
	cp l			;961f	bd 	. 
	add hl,bc			;9620	09 	. 
	cp e			;9621	bb 	. 
	add a,(hl)			;9622	86 	. 
	cp a			;9623	bf 	. 
	cp e			;9624	bb 	. 
	cp a			;9625	bf 	. 
	cp e			;9626	bb 	. 
l9627h:
	cp e			;9627	bb 	. 
	cp a			;9628	bf 	. 
	ld a,(bc)			;9629	0a 	. 
	cp e			;962a	bb 	. 
	add a,(hl)			;962b	86 	. 
	cp a			;962c	bf 	. 
	cp e			;962d	bb 	. 
	cp a			;962e	bf 	. 
	cp e			;962f	bb 	. 
	cp e			;9630	bb 	. 
	cp a			;9631	bf 	. 
	nop			;9632	00 	. 
	sub h			;9633	94 	. 
	jp nz,0c0c1h		;9634	c2 c1 c0 	. . . 
	pop bc			;9637	c1 	. 
	ret nz			;9638	c0 	. 
	jp nz,0c1c3h		;9639	c2 c3 c1 	. . . 
	ret nz			;963c	c0 	. 
	pop bc			;963d	c1 	. 
	ret nz			;963e	c0 	. 
	pop bc			;963f	c1 	. 
	ret nz			;9640	c0 	. 
	pop bc			;9641	c1 	. 
	ret nz			;9642	c0 	. 
	pop bc			;9643	c1 	. 
	nop			;9644	00 	. 
	nop			;9645	00 	. 
	jp 004c1h		;9646	c3 c1 04 	. . . 
	nop			;9649	00 	. 
	add a,e			;964a	83 	. 
	pop bc			;964b	c1 	. 
	ret nz			;964c	c0 	. 
	ld (bc),a			;964d	02 	. 
	inc b			;964e	04 	. 
	nop			;964f	00 	. 
	add a,c			;9650	81 	. 
	pop bc			;9651	c1 	. 
	inc bc			;9652	03 	. 
	nop			;9653	00 	. 
	add a,a			;9654	87 	. 
	jp nz,00000h		;9655	c2 00 00 	. . . 
	pop bc			;9658	c1 	. 
	ret nz			;9659	c0 	. 
	jp 004c1h		;965a	c3 c1 04 	. . . 
	ld a,(bc)			;965d	0a 	. 
	add a,d			;965e	82 	. 
	nop			;965f	00 	. 
	jp nz,00009h		;9660	c2 09 00 	. . . 
	add a,l			;9663	85 	. 
	jp 0c1c0h		;9664	c3 c0 c1 	. . . 
	ret nz			;9667	c0 	. 
	pop bc			;9668	c1 	. 
	ld b,000h		;9669	06 00 	. . 
	inc bc			;966b	03 	. 
	djnz l9675h		;966c	10 07 	. . 
	nop			;966e	00 	. 
	add a,d			;966f	82 	. 
	ret nz			;9670	c0 	. 
	nop			;9671	00 	. 
	ld (bc),a			;9672	02 	. 
	djnz l9677h		;9673	10 02 	. . 
l9675h:
	nop			;9675	00 	. 
	add a,e			;9676	83 	. 
l9677h:
	djnz l967bh		;9677	10 02 	. . 
	djnz l9684h		;9679	10 09 	. . 
l967bh:
	nop			;967b	00 	. 
	ld (bc),a			;967c	02 	. 
	djnz l9681h		;967d	10 02 	. . 
	nop			;967f	00 	. 
	inc bc			;9680	03 	. 
l9681h:
	djnz l9687h		;9681	10 04 	. . 
	nop			;9683	00 	. 
l9684h:
	add a,c			;9684	81 	. 
	inc b			;9685	04 	. 
	inc b			;9686	04 	. 
l9687h:
	ret nz			;9687	c0 	. 
	ld (bc),a			;9688	02 	. 
	djnz l9690h		;9689	10 05 	. . 
	nop			;968b	00 	. 
	add a,c			;968c	81 	. 
l968dh:
	djnz l9692h		;968d	10 03 	. . 
	ret nz			;968f	c0 	. 
l9690h:
	ex af,af'			;9690	08 	. 
	nop			;9691	00 	. 
l9692h:
	inc b			;9692	04 	. 
	ret nz			;9693	c0 	. 
l9694h:
	add hl,bc			;9694	09 	. 
	nop			;9695	00 	. 
	add a,d			;9696	82 	. 
	cp e			;9697	bb 	. 
	cp h			;9698	bc 	. 
	ld a,(bc)			;9699	0a 	. 
	nop			;969a	00 	. 
	inc bc			;969b	03 	. 
l969ch:
	djnz l961fh		;969c	10 81 	. . 
	nop			;969e	00 	. 
	jr nz,$-67		;969f	20 bb 	  . 
	nop			;96a1	00 	. 
	sub l			;96a2	95 	. 
	ret nz			;96a3	c0 	. 
	pop bc			;96a4	c1 	. 
	ret nz			;96a5	c0 	. 
	pop bc			;96a6	c1 	. 
	ret nz			;96a7	c0 	. 
	pop bc			;96a8	c1 	. 
	jp nz,0c0c2h		;96a9	c2 c2 c0 	. . . 
	pop bc			;96ac	c1 	. 
	ret nz			;96ad	c0 	. 
	pop bc			;96ae	c1 	. 
	ret nz			;96af	c0 	. 
	pop bc			;96b0	c1 	. 
	ret nz			;96b1	c0 	. 
	pop bc			;96b2	c1 	. 
	ret nz			;96b3	c0 	. 
	pop bc			;96b4	c1 	. 
	ret nz			;96b5	c0 	. 
	pop bc			;96b6	c1 	. 
	inc bc			;96b7	03 	. 
	inc bc			;96b8	03 	. 
	nop			;96b9	00 	. 
	add a,e			;96ba	83 	. 
	inc bc			;96bb	03 	. 
	ret nz			;96bc	c0 	. 
	pop bc			;96bd	c1 	. 
	inc b			;96be	04 	. 
	ret nz			;96bf	c0 	. 
	ld (bc),a			;96c0	02 	. 
	pop bc			;96c1	c1 	. 
	add a,h			;96c2	84 	. 
	ret nz			;96c3	c0 	. 
	pop bc			;96c4	c1 	. 
	ret nz			;96c5	c0 	. 
	djnz $+5		;96c6	10 03 	. . 
	nop			;96c8	00 	. 
	adc a,d			;96c9	8a 	. 
	djnz l968dh		;96ca	10 c1 	. . 
	call nz,0c200h		;96cc	c4 00 c2 	. . . 
	jp 0c2c4h		;96cf	c3 c4 c2 	. . . 
	nop			;96d2	00 	. 
	jp nz,00004h		;96d3	c2 04 00 	. . . 
l96d6h:
	add a,c			;96d6	81 	. 
	djnz l96dbh		;96d7	10 02 	. . 
	nop			;96d9	00 	. 
	ld (bc),a			;96da	02 	. 
l96dbh:
	ret nz			;96db	c0 	. 
	ld c,000h		;96dc	0e 00 	. . 
	add a,d			;96de	82 	. 
l96dfh:
	ret nz			;96df	c0 	. 
	pop bc			;96e0	c1 	. 
	ld c,000h		;96e1	0e 00 	. . 
	ld (bc),a			;96e3	02 	. 
	ret nz			;96e4	c0 	. 
	inc bc			;96e5	03 	. 
	nop			;96e6	00 	. 
	ld (bc),a			;96e7	02 	. 
	djnz l96ech		;96e8	10 02 	. . 
	nop			;96ea	00 	. 
	add a,c			;96eb	81 	. 
l96ech:
	cp l			;96ec	bd 	. 
	inc bc			;96ed	03 	. 
	cp e			;96ee	bb 	. 
	add a,l			;96ef	85 	. 
	cp h			;96f0	bc 	. 
	nop			;96f1	00 	. 
	nop			;96f2	00 	. 
	pop bc			;96f3	c1 	. 
	ret nz			;96f4	c0 	. 
	inc bc			;96f5	03 	. 
	nop			;96f6	00 	. 
	add a,d			;96f7	82 	. 
	inc bc			;96f8	03 	. 
	ld a,(bc)			;96f9	0a 	. 
	ld (bc),a			;96fa	02 	. 
	nop			;96fb	00 	. 
	dec b			;96fc	05 	. 
	cp e			;96fd	bb 	. 
	ld (bc),a			;96fe	02 	. 
	nop			;96ff	00 	. 
	adc a,c			;9700	89 	. 
	jp nz,000c3h		;9701	c2 c3 00 	. . . 
	nop			;9704	00 	. 
	djnz l9708h		;9705	10 01 	. . 
	nop			;9707	00 	. 
l9708h:
	nop			;9708	00 	. 
	cp l			;9709	bd 	. 
	dec b			;970a	05 	. 
	cp e			;970b	bb 	. 
	dec b			;970c	05 	. 
	nop			;970d	00 	. 
	ld (bc),a			;970e	02 	. 
	djnz l9694h		;970f	10 83 	. . 
	inc bc			;9711	03 	. 
	nop			;9712	00 	. 
	cp l			;9713	bd 	. 
	ld b,0bbh		;9714	06 bb 	. . 
	inc b			;9716	04 	. 
	nop			;9717	00 	. 
	ld (bc),a			;9718	02 	. 
	djnz l969ch		;9719	10 81 	. . 
	inc bc			;971b	03 	. 
	ld (bc),a			;971c	02 	. 
	nop			;971d	00 	. 
	rlca			;971e	07 	. 
	cp e			;971f	bb 	. 
	add a,c			;9720	81 	. 
	ex af,af'			;9721	08 	. 
	jr l96dfh		;9722	18 bb 	. . 
	nop			;9724	00 	. 
	and b			;9725	a0 	. 
	ret nz			;9726	c0 	. 
	pop bc			;9727	c1 	. 
	ret nz			;9728	c0 	. 
	jp nz,0c1c0h		;9729	c2 c0 c1 	. . . 
	ret nz			;972c	c0 	. 
	pop bc			;972d	c1 	. 
	ret nz			;972e	c0 	. 
	pop bc			;972f	c1 	. 
	ret nz			;9730	c0 	. 
	pop bc			;9731	c1 	. 
	ret nz			;9732	c0 	. 
	pop bc			;9733	c1 	. 
	ret nz			;9734	c0 	. 
	pop bc			;9735	c1 	. 
	ret nz			;9736	c0 	. 
	nop			;9737	00 	. 
	jp nz,00000h		;9738	c2 00 00 	. . . 
	jp 0c1c2h		;973b	c3 c2 c1 	. . . 
	nop			;973e	00 	. 
	jp 0c3c2h		;973f	c3 c2 c3 	. . . 
	nop			;9742	00 	. 
	ret nz			;9743	c0 	. 
	pop bc			;9744	c1 	. 
	ret nz			;9745	c0 	. 
	rlca			;9746	07 	. 
	nop			;9747	00 	. 
	add a,c			;9748	81 	. 
	jp nz,00005h		;9749	c2 05 00 	. . . 
	add a,e			;974c	83 	. 
	jp 0c2c4h		;974d	c3 c4 c2 	. . . 
	jr nz,l9752h		;9750	20 00 	  . 
l9752h:
	ld (bc),a			;9752	02 	. 
	djnz l96d6h		;9753	10 81 	. . 
	inc bc			;9755	03 	. 
	djnz l9758h		;9756	10 00 	. . 
l9758h:
	add a,c			;9758	81 	. 
	ld (bc),a			;9759	02 	. 
	rrca			;975a	0f 	. 
	nop			;975b	00 	. 
	add a,d			;975c	82 	. 
	djnz l9762h		;975d	10 03 	. . 
	ld c,000h		;975f	0e 00 	. . 
	ld (bc),a			;9761	02 	. 
l9762h:
	djnz l9772h		;9762	10 0e 	. . 
	nop			;9764	00 	. 
	add a,c			;9765	81 	. 
	djnz l9774h		;9766	10 0c 	. . 
	nop			;9768	00 	. 
	add a,d			;9769	82 	. 
	cp e			;976a	bb 	. 
	ex af,af'			;976b	08 	. 
	inc b			;976c	04 	. 
	cp e			;976d	bb 	. 
	add a,h			;976e	84 	. 
	cp h			;976f	bc 	. 
	cp (hl)			;9770	be 	. 
	cp (hl)			;9771	be 	. 
l9772h:
	cp l			;9772	bd 	. 
	dec c			;9773	0d 	. 
l9774h:
	cp e			;9774	bb 	. 
	ld (bc),a			;9775	02 	. 
	cp a			;9776	bf 	. 
	rlca			;9777	07 	. 
	cp e			;9778	bb 	. 
	nop			;9779	00 	. 
	adc a,l			;977a	8d 	. 
	ret nz			;977b	c0 	. 
	pop bc			;977c	c1 	. 
	ret nz			;977d	c0 	. 
	pop bc			;977e	c1 	. 
	ret nz			;977f	c0 	. 
	pop bc			;9780	c1 	. 
	ret nz			;9781	c0 	. 
	pop bc			;9782	c1 	. 
	ret nz			;9783	c0 	. 
	or b			;9784	b0 	. 
	ret nz			;9785	c0 	. 
	xor a			;9786	af 	. 
	or l			;9787	b5 	. 
	inc bc			;9788	03 	. 
	add a,08dh		;9789	c6 8d 	. . 
	pop bc			;978b	c1 	. 
	or c			;978c	b1 	. 
	jp 0c2c4h		;978d	c3 c4 c2 	. . . 
	nop			;9790	00 	. 
	jp nz,0c2c4h		;9791	c2 c4 c2 	. . . 
	or b			;9794	b0 	. 
	xor a			;9795	af 	. 
	or b			;9796	b0 	. 
	or (hl)			;9797	b6 	. 
	inc bc			;9798	03 	. 
	add a,081h		;9799	c6 81 	. . 
	pop bc			;979b	c1 	. 
	ld b,000h		;979c	06 00 	. . 
	adc a,d			;979e	8a 	. 
	jp nz,0c000h		;979f	c2 00 c0 	. . . 
	or b			;97a2	b0 	. 
	xor a			;97a3	af 	. 
	or b			;97a4	b0 	. 
	or l			;97a5	b5 	. 
	add a,0c6h		;97a6	c6 c6 	. . 
l97a8h:
	jp nz,00008h		;97a8	c2 08 00 	. . . 
	add a,l			;97ab	85 	. 
	or c			;97ac	b1 	. 
	nop			;97ad	00 	. 
	or c			;97ae	b1 	. 
	pop bc			;97af	c1 	. 
	or (hl)			;97b0	b6 	. 
	ld (bc),a			;97b1	02 	. 
	add a,009h		;97b2	c6 09 	. . 
	nop			;97b4	00 	. 
	add a,a			;97b5	87 	. 
	jr nz,l97b8h		;97b6	20 00 	  . 
l97b8h:
	nop			;97b8	00 	. 
	jp nz,lb5c0h		;97b9	c2 c0 b5 	. . . 
	add a,009h		;97bc	c6 09 	. . 
	nop			;97be	00 	. 
	add a,c			;97bf	81 	. 
	jr nz,l97c5h		;97c0	20 03 	  . 
	nop			;97c2	00 	. 
	add a,e			;97c3	83 	. 
	pop bc			;97c4	c1 	. 
l97c5h:
	or (hl)			;97c5	b6 	. 
	add a,007h		;97c6	c6 07 	. . 
	nop			;97c8	00 	. 
	inc bc			;97c9	03 	. 
	jr nz,$+5		;97ca	20 03 	  . 
	nop			;97cc	00 	. 
	add a,e			;97cd	83 	. 
	jp nz,lb5c0h		;97ce	c2 c0 b5 	. . . 
	ex af,af'			;97d1	08 	. 
	nop			;97d2	00 	. 
l97d3h:
	ld (bc),a			;97d3	02 	. 
	jr nz,l97dah		;97d4	20 04 	  . 
	nop			;97d6	00 	. 
	add a,d			;97d7	82 	. 
	pop bc			;97d8	c1 	. 
	or (hl)			;97d9	b6 	. 
l97dah:
	rlca			;97da	07 	. 
	nop			;97db	00 	. 
	inc b			;97dc	04 	. 
	jr nz,$+5		;97dd	20 03 	  . 
	nop			;97df	00 	. 
	add a,d			;97e0	82 	. 
	jp nz,007c0h		;97e1	c2 c0 07 	. . . 
	nop			;97e4	00 	. 
	inc b			;97e5	04 	. 
	jr nz,$+6		;97e6	20 04 	  . 
	nop			;97e8	00 	. 
	add a,c			;97e9	81 	. 
	pop bc			;97ea	c1 	. 
	jr nz,l97a8h		;97eb	20 bb 	  . 
	nop			;97ed	00 	. 
	ret p			;97ee	f0 	. 
	sub a			;97ef	97 	. 
	ex af,af'			;97f0	08 	. 
	sbc a,b			;97f1	98 	. 
	and c			;97f2	a1 	. 
	sbc a,b			;97f3	98 	. 
	add hl,hl			;97f4	29 	) 
	sbc a,c			;97f5	99 	. 
	and c			;97f6	a1 	. 
	sbc a,c			;97f7	99 	. 
	ld hl,0639ah		;97f8	21 9a 63 	! . c 
	sbc a,d			;97fb	9a 	. 
	sbc a,09ah		;97fc	de 9a 	. . 
	ld d,d			;97fe	52 	R 
	sbc a,e			;97ff	9b 	. 
	call z,02a9bh		;9800	cc 9b 2a 	. . * 
	sbc a,h			;9803	9c 	. 
	sub b			;9804	90 	. 
	sbc a,h			;9805	9c 	. 
	ei			;9806	fb 	. 
	sbc a,h			;9807	9c 	. 
l9808h:
	ld (bc),a			;9808	02 	. 
	nop			;9809	00 	. 
	sbc a,(hl)			;980a	9e 	. 
	rst 0			;980b	c7 	. 
	ret z			;980c	c8 	. 
	ret			;980d	c9 	. 
	ret z			;980e	c8 	. 
	ret			;980f	c9 	. 
	ret z			;9810	c8 	. 
	ret			;9811	c9 	. 
	ret z			;9812	c8 	. 
	ret			;9813	c9 	. 
	ret z			;9814	c8 	. 
	ret			;9815	c9 	. 
	ret z			;9816	c8 	. 
l9817h:
	ret			;9817	c9 	. 
	ret z			;9818	c8 	. 
	nop			;9819	00 	. 
	nop			;981a	00 	. 
	set 1,h		;981b	cb cc 	. . 
	call 0cdcfh		;981d	cd cf cd 	. . . 
	adc a,0cdh		;9820	ce cd 	. . 
	rst 8			;9822	cf 	. 
	call 0cdcfh		;9823	cd cf cd 	. . . 
	adc a,0cdh		;9826	ce cd 	. . 
	rst 8			;9828	cf 	. 
	inc bc			;9829	03 	. 
	nop			;982a	00 	. 
	add a,c			;982b	81 	. 
	ret nc			;982c	d0 	. 
	inc bc			;982d	03 	. 
	jr nz,$-119		;982e	20 87 	  . 
	pop de			;9830	d1 	. 
	jp nc,0d4d3h		;9831	d2 d3 d4 	. . . 
	jr nz,l9856h		;9834	20 20 	    
	pop de			;9836	d1 	. 
	ld (bc),a			;9837	02 	. 
	jr nz,$+6		;9838	20 04 	  . 
	nop			;983a	00 	. 
	adc a,d			;983b	8a 	. 
	push de			;983c	d5 	. 
	jr nz,l985fh		;983d	20 20 	    
	pop de			;983f	d1 	. 
	jr nz,l9862h		;9840	20 20 	    
	sub 0d7h		;9842	d6 d7 	. . 
	ret c			;9844	d8 	. 
	pop de			;9845	d1 	. 
	ld (bc),a			;9846	02 	. 
	jr nz,$+6		;9847	20 04 	  . 
	nop			;9849	00 	. 
	add a,h			;984a	84 	. 
	ret nc			;984b	d0 	. 
	jr nz,$+34		;984c	20 20 	    
	pop de			;984e	d1 	. 
	dec b			;984f	05 	. 
	jr nz,l97d3h		;9850	20 81 	  . 
	pop de			;9852	d1 	. 
	ld (bc),a			;9853	02 	. 
	jr nz,l9858h		;9854	20 02 	  . 
l9856h:
	nop			;9856	00 	. 
	add a,(hl)			;9857	86 	. 
l9858h:
	dec l			;9858	2d 	- 
l9859h:
	ld l,02fh		;9859	2e 2f 	. / 
	push de			;985b	d5 	. 
	jr nz,$-45		;985c	20 d1 	  . 
l985eh:
	dec b			;985e	05 	. 
l985fh:
	jr nz,$-115		;985f	20 8b 	  . 
	pop de			;9861	d1 	. 
l9862h:
	jr nz,$+34		;9862	20 20 	    
	nop			;9864	00 	. 
	jr nc,l9898h		;9865	30 31 	0 1 
	ld (03433h),a		;9867	32 33 34 	2 3 4 
l986ah:
	push de			;986a	d5 	. 
	pop de			;986b	d1 	. 
	dec b			;986c	05 	. 
	jr nz,$-115		;986d	20 8b 	  . 
	pop de			;986f	d1 	. 
	jr nz,$+34		;9870	20 20 	    
	nop			;9872	00 	. 
	dec (hl)			;9873	35 	5 
	ld (hl),037h		;9874	36 37 	6 7 
	jr c,l98b1h		;9876	38 39 	8 9 
	nop			;9878	00 	. 
	pop de			;9879	d1 	. 
	dec b			;987a	05 	. 
	jr nz,l9808h		;987b	20 8b 	  . 
	pop de			;987d	d1 	. 
	jr nz,$+34		;987e	20 20 	    
	nop			;9880	00 	. 
	dec (hl)			;9881	35 	5 
	ld a,(03c3bh)		;9882	3a 3b 3c 	: ; < 
l9885h:
	add hl,sp			;9885	39 	9 
	nop			;9886	00 	. 
	pop de			;9887	d1 	. 
	dec b			;9888	05 	. 
	jr nz,l9817h		;9889	20 8c 	  . 
	pop de			;988b	d1 	. 
	jr nz,l98aeh		;988c	20 20 	    
	nop			;988e	00 	. 
	dec (hl)			;988f	35 	5 
	ld a,(03c3bh)		;9890	3a 3b 3c 	: ; < 
	add hl,sp			;9893	39 	9 
	jp c,0dcdbh		;9894	da db dc 	. . . 
	inc bc			;9897	03 	. 
l9898h:
	jr nz,$-122		;9898	20 84 	  . 
	defb 0ddh,0dbh,0dch	;illegal sequence		;989a	dd db dc 	. . . 
	jr nz,$+34		;989d	20 20 	    
	sbc a,000h		;989f	de 00 	. . 
	xor d			;98a1	aa 	. 
	ret			;98a2	c9 	. 
	ret z			;98a3	c8 	. 
	ret			;98a4	c9 	. 
	ret z			;98a5	c8 	. 
	ret			;98a6	c9 	. 
	ret z			;98a7	c8 	. 
	ret			;98a8	c9 	. 
	ret z			;98a9	c8 	. 
	ret			;98aa	c9 	. 
	ret z			;98ab	c8 	. 
	ret			;98ac	c9 	. 
	ret z			;98ad	c8 	. 
l98aeh:
	ret			;98ae	c9 	. 
	ret z			;98af	c8 	. 
	ret			;98b0	c9 	. 
l98b1h:
	ret z			;98b1	c8 	. 
	call 0cdcfh		;98b2	cd cf cd 	. . . 
	rst 8			;98b5	cf 	. 
	call 0cdceh		;98b6	cd ce cd 	. . . 
	rst 8			;98b9	cf 	. 
	call 0cdceh		;98ba	cd ce cd 	. . . 
	rst 8			;98bd	cf 	. 
	call 0cdcfh		;98be	cd cf cd 	. . . 
	rst 8			;98c1	cf 	. 
	jr nz,$+34		;98c2	20 20 	    
	sub 0d7h		;98c4	d6 d7 	. . 
	ret c			;98c6	d8 	. 
	pop de			;98c7	d1 	. 
	sub 0d7h		;98c8	d6 d7 	. . 
	ret c			;98ca	d8 	. 
	pop de			;98cb	d1 	. 
	inc b			;98cc	04 	. 
	jr nz,$-124		;98cd	20 82 	  . 
	sub 0d7h		;98cf	d6 d7 	. . 
	dec b			;98d1	05 	. 
	jr nz,l9859h		;98d2	20 85 	  . 
	pop de			;98d4	d1 	. 
l98d5h:
	jp nc,0d4d3h		;98d5	d2 d3 d4 	. . . 
	pop de			;98d8	d1 	. 
l98d9h:
	inc b			;98d9	04 	. 
	jr nz,l985eh		;98da	20 82 	  . 
	sub 0d7h		;98dc	d6 d7 	. . 
	dec b			;98de	05 	. 
l98dfh:
	jr nz,l9862h		;98df	20 81 	  . 
	pop de			;98e1	d1 	. 
	inc bc			;98e2	03 	. 
	jr nz,$-125		;98e3	20 81 	  . 
l98e5h:
	pop de			;98e5	d1 	. 
	dec bc			;98e6	0b 	. 
	jr nz,l986ah		;98e7	20 81 	  . 
l98e9h:
	pop de			;98e9	d1 	. 
	inc bc			;98ea	03 	. 
	jr nz,$-122		;98eb	20 84 	  . 
	pop de			;98ed	d1 	. 
	jr nz,$+34		;98ee	20 20 	    
	ld bc,02008h		;98f0	01 08 20 	. .   
l98f3h:
	add a,c			;98f3	81 	. 
	pop de			;98f4	d1 	. 
	inc bc			;98f5	03 	. 
	jr nz,$-122		;98f6	20 84 	  . 
	pop de			;98f8	d1 	. 
l98f9h:
	jr nz,$+34		;98f9	20 20 	    
	ld bc,02008h		;98fb	01 08 20 	. .   
	adc a,b			;98fe	88 	. 
	pop de			;98ff	d1 	. 
	jr nz,$+5		;9900	20 03 	  . 
l9902h:
	jr nz,l98d5h		;9902	20 d1 	  . 
	jr nz,$+34		;9904	20 20 	    
	djnz $+10		;9906	10 08 	. . 
	jr nz,$-118		;9908	20 88 	  . 
	pop de			;990a	d1 	. 
	jr nz,$+18		;990b	20 10 	  . 
l990dh:
	jr nz,$-45		;990d	20 d1 	  . 
	jr nz,l9931h		;990f	20 20 	    
l9911h:
	djnz l991ah		;9911	10 07 	. . 
	jr nz,$-117		;9913	20 89 	  . 
	defb 0ddh,0dbh,0dch	;illegal sequence		;9915	dd db dc 	. . . 
	djnz $-33		;9918	10 dd 	. . 
l991ah:
	in a,(0dch)		;991a	db dc 	. . 
	jr nz,l9932h		;991c	20 14 	  . 
	inc bc			;991e	03 	. 
	jr nz,l992ch		;991f	20 0b 	  . 
	sbc a,005h		;9921	de 05 	. . 
	rst 18h			;9923	df 	. 
	dec bc			;9924	0b 	. 
	sbc a,005h		;9925	de 05 	. . 
	ret po			;9927	e0 	. 
	nop			;9928	00 	. 
	and l			;9929	a5 	. 
	ret			;992a	c9 	. 
	ret z			;992b	c8 	. 
l992ch:
	ret			;992c	c9 	. 
	ret z			;992d	c8 	. 
	ret			;992e	c9 	. 
	ret z			;992f	c8 	. 
l9930h:
	ret			;9930	c9 	. 
l9931h:
	ret z			;9931	c8 	. 
l9932h:
	ret			;9932	c9 	. 
	ret z			;9933	c8 	. 
	ret			;9934	c9 	. 
	ret z			;9935	c8 	. 
l9936h:
	ret			;9936	c9 	. 
	ret z			;9937	c8 	. 
	ret			;9938	c9 	. 
	ret z			;9939	c8 	. 
	call 0cdceh		;993a	cd ce cd 	. . . 
	rst 8			;993d	cf 	. 
	call 0cdcfh		;993e	cd cf cd 	. . . 
	rst 8			;9941	cf 	. 
	call 0cdcfh		;9942	cd cf cd 	. . . 
	rst 8			;9945	cf 	. 
	call 0cdcfh		;9946	cd cf cd 	. . . 
	adc a,0d8h		;9949	ce d8 	. . 
	pop de			;994b	d1 	. 
	jp nc,0d4d3h		;994c	d2 d3 d4 	. . . 
	ld a,(bc)			;994f	0a 	. 
	jr nz,l98d5h		;9950	20 83 	  . 
	pop de			;9952	d1 	. 
l9953h:
	ret c			;9953	d8 	. 
l9954h:
	pop de			;9954	d1 	. 
	ex af,af'			;9955	08 	. 
	jr nz,l98d9h		;9956	20 81 	  . 
l9958h:
	inc bc			;9958	03 	. 
	inc b			;9959	04 	. 
	jr nz,l98dfh		;995a	20 83 	  . 
l995ch:
	pop de			;995c	d1 	. 
	jr nz,l9930h		;995d	20 d1 	  . 
	dec c			;995f	0d 	. 
l9960h:
	jr nz,l98e5h		;9960	20 83 	  . 
	pop de			;9962	d1 	. 
	jr nz,l9936h		;9963	20 d1 	  . 
	ex af,af'			;9965	08 	. 
	jr nz,l98e9h		;9966	20 81 	  . 
l9968h:
	djnz $+6		;9968	10 04 	. . 
	jr nz,$-123		;996a	20 83 	  . 
l996ch:
	pop de			;996c	d1 	. 
	jr nz,$-45		;996d	20 d1 	  . 
	dec b			;996f	05 	. 
l9970h:
	jr nz,l98f3h		;9970	20 81 	  . 
	djnz $+9		;9972	10 07 	. . 
l9974h:
	jr nz,l98f9h		;9974	20 83 	  . 
	pop de			;9976	d1 	. 
	jr nz,$-45		;9977	20 d1 	  . 
	ld a,(bc)			;9979	0a 	. 
	jr nz,l9902h		;997a	20 86 	  . 
l997ch:
	djnz l999eh		;997c	10 20 	.   
	jr nz,$-45		;997e	20 d1 	  . 
l9980h:
	jr nz,l9953h		;9980	20 d1 	  . 
	dec c			;9982	0d 	. 
	jr nz,$-122		;9983	20 84 	  . 
	pop de			;9985	d1 	. 
	defb 0ddh,0dbh,0dch	;illegal sequence		;9986	dd db dc 	. . . 
	inc bc			;9989	03 	. 
	jr nz,l990dh		;998a	20 81 	  . 
	inc d			;998c	14 	. 
	inc bc			;998d	03 	. 
	jr nz,l9911h		;998e	20 81 	  . 
	inc d			;9990	14 	. 
l9991h:
	inc bc			;9991	03 	. 
	jr nz,$-124		;9992	20 82 	  . 
	defb 0ddh,0dbh,003h	;illegal sequence		;9994	dd db 03 	. . . 
	sbc a,00bh		;9997	de 0b 	. . 
	rst 18h			;9999	df 	. 
	dec b			;999a	05 	. 
	sbc a,00bh		;999b	de 0b 	. . 
	ret po			;999d	e0 	. 
l999eh:
	ld (bc),a			;999e	02 	. 
	sbc a,000h		;999f	de 00 	. . 
	and a			;99a1	a7 	. 
	ret			;99a2	c9 	. 
	ret z			;99a3	c8 	. 
	ret			;99a4	c9 	. 
	ret z			;99a5	c8 	. 
	ret			;99a6	c9 	. 
	ret z			;99a7	c8 	. 
	ret			;99a8	c9 	. 
	ret z			;99a9	c8 	. 
	ret			;99aa	c9 	. 
	ret z			;99ab	c8 	. 
	ret			;99ac	c9 	. 
	ret z			;99ad	c8 	. 
	ret			;99ae	c9 	. 
	ret z			;99af	c8 	. 
	ret			;99b0	c9 	. 
	ret z			;99b1	c8 	. 
	call 0cdcfh		;99b2	cd cf cd 	. . . 
	adc a,0cdh		;99b5	ce cd 	. . 
	rst 8			;99b7	cf 	. 
	call 0cdcfh		;99b8	cd cf cd 	. . . 
	rst 8			;99bb	cf 	. 
	call 0cdcfh		;99bc	cd cf cd 	. . . 
	rst 8			;99bf	cf 	. 
	call 0d2ceh		;99c0	cd ce d2 	. . . 
	out (0d4h),a		;99c3	d3 d4 	. . 
	pop de			;99c5	d1 	. 
	jp nc,0d4d3h		;99c6	d2 d3 d4 	. . . 
	dec b			;99c9	05 	. 
	jr nz,l9954h		;99ca	20 88 	  . 
	sub 0d7h		;99cc	d6 d7 	. . 
l99ceh:
	ret c			;99ce	d8 	. 
	pop de			;99cf	d1 	. 
	sub 0d7h		;99d0	d6 d7 	. . 
l99d2h:
	ret c			;99d2	d8 	. 
	pop de			;99d3	d1 	. 
	dec bc			;99d4	0b 	. 
	jr nz,l9958h		;99d5	20 81 	  . 
	pop de			;99d7	d1 	. 
	inc bc			;99d8	03 	. 
	jr nz,l995ch		;99d9	20 81 	  . 
	pop de			;99db	d1 	. 
	dec bc			;99dc	0b 	. 
	jr nz,l9960h		;99dd	20 81 	  . 
	pop de			;99df	d1 	. 
	inc bc			;99e0	03 	. 
	jr nz,$-125		;99e1	20 81 	  . 
	pop de			;99e3	d1 	. 
	dec b			;99e4	05 	. 
	jr nz,l9968h		;99e5	20 81 	  . 
	inc bc			;99e7	03 	. 
	dec b			;99e8	05 	. 
	jr nz,l996ch		;99e9	20 81 	  . 
	pop de			;99eb	d1 	. 
	inc bc			;99ec	03 	. 
	jr nz,l9970h		;99ed	20 81 	  . 
	pop de			;99ef	d1 	. 
	dec b			;99f0	05 	. 
	jr nz,l9974h		;99f1	20 81 	  . 
	djnz $+7		;99f3	10 05 	. . 
	jr nz,$-125		;99f5	20 81 	  . 
	pop de			;99f7	d1 	. 
	inc bc			;99f8	03 	. 
	jr nz,l997ch		;99f9	20 81 	  . 
	pop de			;99fb	d1 	. 
	dec bc			;99fc	0b 	. 
	jr nz,l9980h		;99fd	20 81 	  . 
	pop de			;99ff	d1 	. 
	inc bc			;9a00	03 	. 
	jr nz,$-125		;9a01	20 81 	  . 
	pop de			;9a03	d1 	. 
	inc b			;9a04	04 	. 
	jr nz,$-125		;9a05	20 81 	  . 
	djnz l9a0fh		;9a07	10 06 	. . 
	jr nz,l9991h		;9a09	20 86 	  . 
	pop de			;9a0b	d1 	. 
	call c,0dd20h		;9a0c	dc 20 dd 	.   . 
l9a0fh:
	in a,(0dch)		;9a0f	db dc 	. . 
	add hl,bc			;9a11	09 	. 
	jr nz,$-124		;9a12	20 82 	  . 
l9a14h:
	defb 0ddh,0dbh,00ah	;illegal sequence		;9a14	dd db 0a 	. . . 
	sbc a,002h		;9a17	de 02 	. . 
	rst 18h			;9a19	df 	. 
	ld c,0deh		;9a1a	0e de 	. . 
l9a1ch:
	ld (bc),a			;9a1c	02 	. 
	ret po			;9a1d	e0 	. 
	inc b			;9a1e	04 	. 
	sbc a,000h		;9a1f	de 00 	. . 
	and b			;9a21	a0 	. 
	ret			;9a22	c9 	. 
	ret z			;9a23	c8 	. 
l9a24h:
	ret			;9a24	c9 	. 
	ret z			;9a25	c8 	. 
	ret			;9a26	c9 	. 
	ret z			;9a27	c8 	. 
	ret			;9a28	c9 	. 
	ret z			;9a29	c8 	. 
l9a2ah:
	ret			;9a2a	c9 	. 
	ret z			;9a2b	c8 	. 
	ret			;9a2c	c9 	. 
	ret z			;9a2d	c8 	. 
l9a2eh:
	ret			;9a2e	c9 	. 
	ret z			;9a2f	c8 	. 
	ret			;9a30	c9 	. 
	ret z			;9a31	c8 	. 
	call 0cdcfh		;9a32	cd cf cd 	. . . 
	rst 8			;9a35	cf 	. 
	call 0cdcfh		;9a36	cd cf cd 	. . . 
	rst 8			;9a39	cf 	. 
	call 0cdcfh		;9a3a	cd cf cd 	. . . 
	rst 8			;9a3d	cf 	. 
	call 0cdcfh		;9a3e	cd cf cd 	. . . 
	rst 8			;9a41	cf 	. 
	add hl,sp			;9a42	39 	9 
	jr nz,$+4		;9a43	20 02 	  . 
	inc bc			;9a45	03 	. 
l9a46h:
	ld c,020h		;9a46	0e 20 	.   
	ld (bc),a			;9a48	02 	. 
	djnz l9a67h		;9a49	10 1c 	. . 
	jr nz,l99ceh		;9a4b	20 81 	  . 
	djnz l9a57h		;9a4d	10 08 	. . 
	jr nz,l99d2h		;9a4f	20 81 	  . 
	call c,0200fh		;9a51	dc 0f 20 	. .   
	dec bc			;9a54	0b 	. 
l9a55h:
	sbc a,003h		;9a55	de 03 	. . 
l9a57h:
	rst 18h			;9a57	df 	. 
	add a,d			;9a58	82 	. 
	sbc a,0dfh		;9a59	de df 	. . 
	dec bc			;9a5b	0b 	. 
	sbc a,003h		;9a5c	de 03 	. . 
	ret po			;9a5e	e0 	. 
	add a,d			;9a5f	82 	. 
	sbc a,0e0h		;9a60	de e0 	. . 
	nop			;9a62	00 	. 
	xor b			;9a63	a8 	. 
	ret			;9a64	c9 	. 
	ret z			;9a65	c8 	. 
	ret			;9a66	c9 	. 
l9a67h:
	ret z			;9a67	c8 	. 
	ret			;9a68	c9 	. 
	ret z			;9a69	c8 	. 
	ret			;9a6a	c9 	. 
	ret z			;9a6b	c8 	. 
	ret			;9a6c	c9 	. 
	ret z			;9a6d	c8 	. 
	ret			;9a6e	c9 	. 
	ret z			;9a6f	c8 	. 
	ret			;9a70	c9 	. 
	ret z			;9a71	c8 	. 
	ret			;9a72	c9 	. 
	ret z			;9a73	c8 	. 
	call 0cdcfh		;9a74	cd cf cd 	. . . 
	adc a,0cdh		;9a77	ce cd 	. . 
	rst 8			;9a79	cf 	. 
	call 0cdceh		;9a7a	cd ce cd 	. . . 
	rst 8			;9a7d	cf 	. 
	call 0cdcfh		;9a7e	cd cf cd 	. . . 
	rst 8			;9a81	cf 	. 
	call 0d6cfh		;9a82	cd cf d6 	. . . 
	rst 10h			;9a85	d7 	. 
l9a86h:
	ret c			;9a86	d8 	. 
	pop de			;9a87	d1 	. 
	sub 0d7h		;9a88	d6 d7 	. . 
	ret c			;9a8a	d8 	. 
	pop de			;9a8b	d1 	. 
	dec bc			;9a8c	0b 	. 
l9a8dh:
	jr nz,l9a14h		;9a8d	20 85 	  . 
	pop de			;9a8f	d1 	. 
	jp nc,0d4d3h		;9a90	d2 d3 d4 	. . . 
	pop de			;9a93	d1 	. 
	dec bc			;9a94	0b 	. 
l9a95h:
	jr nz,$-125		;9a95	20 81 	  . 
	pop de			;9a97	d1 	. 
	inc bc			;9a98	03 	. 
l9a99h:
	jr nz,l9a1ch		;9a99	20 81 	  . 
	pop de			;9a9b	d1 	. 
	inc b			;9a9c	04 	. 
l9a9dh:
	jr nz,$-125		;9a9d	20 81 	  . 
	djnz l9aa7h		;9a9f	10 06 	. . 
	jr nz,l9a24h		;9aa1	20 81 	  . 
	pop de			;9aa3	d1 	. 
	inc bc			;9aa4	03 	. 
l9aa5h:
	jr nz,l9a2ah		;9aa5	20 83 	  . 
l9aa7h:
	pop de			;9aa7	d1 	. 
	jr nz,$+18		;9aa8	20 10 	  . 
	add hl,bc			;9aaa	09 	. 
l9aabh:
	jr nz,l9a2eh		;9aab	20 81 	  . 
l9aadh:
	pop de			;9aad	d1 	. 
	inc bc			;9aae	03 	. 
	jr nz,$-123		;9aaf	20 83 	  . 
	pop de			;9ab1	d1 	. 
	jr nz,l9ac4h		;9ab2	20 10 	  . 
	add hl,bc			;9ab4	09 	. 
l9ab5h:
	jr nz,$-125		;9ab5	20 81 	  . 
	pop de			;9ab7	d1 	. 
	inc bc			;9ab8	03 	. 
	jr nz,$-125		;9ab9	20 81 	  . 
l9abbh:
	pop de			;9abb	d1 	. 
	dec bc			;9abc	0b 	. 
	jr nz,$-125		;9abd	20 81 	  . 
l9abfh:
	pop de			;9abf	d1 	. 
	inc bc			;9ac0	03 	. 
	jr nz,l9a46h		;9ac1	20 83 	  . 
	pop de			;9ac3	d1 	. 
l9ac4h:
	jr nz,l9adah		;9ac4	20 14 	  . 
	ex af,af'			;9ac6	08 	. 
	jr nz,$-119		;9ac7	20 87 	  . 
	defb 0ddh,0dbh,0dch	;illegal sequence		;9ac9	dd db dc 	. . . 
	jr nz,l9aabh		;9acc	20 dd 	  . 
	in a,(0dch)		;9ace	db dc 	. . 
	dec b			;9ad0	05 	. 
	jr nz,l9a55h		;9ad1	20 82 	  . 
	inc d			;9ad3	14 	. 
	jr nz,l9adfh		;9ad4	20 09 	  . 
	sbc a,007h		;9ad6	de 07 	. . 
	rst 18h			;9ad8	df 	. 
	add hl,bc			;9ad9	09 	. 
l9adah:
	sbc a,007h		;9ada	de 07 	. . 
	ret po			;9adc	e0 	. 
	nop			;9add	00 	. 
	and b			;9ade	a0 	. 
l9adfh:
	ret			;9adf	c9 	. 
	ret z			;9ae0	c8 	. 
	ret			;9ae1	c9 	. 
	ret z			;9ae2	c8 	. 
	ret			;9ae3	c9 	. 
	ret z			;9ae4	c8 	. 
	ret			;9ae5	c9 	. 
	ret z			;9ae6	c8 	. 
	ret			;9ae7	c9 	. 
	ret z			;9ae8	c8 	. 
	ret			;9ae9	c9 	. 
	ret z			;9aea	c8 	. 
	ret			;9aeb	c9 	. 
	ret z			;9aec	c8 	. 
	ret			;9aed	c9 	. 
	ret z			;9aee	c8 	. 
	call 0cdcfh		;9aef	cd cf cd 	. . . 
	adc a,0cdh		;9af2	ce cd 	. . 
	rst 8			;9af4	cf 	. 
	call 0cdcfh		;9af5	cd cf cd 	. . . 
	rst 8			;9af8	cf 	. 
	call 0cdcfh		;9af9	cd cf cd 	. . . 
	rst 8			;9afc	cf 	. 
	call 003cfh		;9afd	cd cf 03 	. . . 
	jr nz,l9a86h		;9b00	20 84 	  . 
	pop de			;9b02	d1 	. 
	jp nc,0d4d3h		;9b03	d2 d3 d4 	. . . 
	add hl,bc			;9b06	09 	. 
	jr nz,l9a8dh		;9b07	20 84 	  . 
l9b09h:
	sub 0d7h		;9b09	d6 d7 	. . 
	ret c			;9b0b	d8 	. 
	pop de			;9b0c	d1 	. 
l9b0dh:
	rrca			;9b0d	0f 	. 
	jr nz,$-125		;9b0e	20 81 	  . 
	pop de			;9b10	d1 	. 
l9b11h:
	ex af,af'			;9b11	08 	. 
	jr nz,l9a95h		;9b12	20 81 	  . 
	djnz l9b1ch		;9b14	10 06 	. . 
	jr nz,l9a99h		;9b16	20 81 	  . 
	pop de			;9b18	d1 	. 
l9b19h:
	ex af,af'			;9b19	08 	. 
	jr nz,l9a9dh		;9b1a	20 81 	  . 
l9b1ch:
	inc bc			;9b1c	03 	. 
l9b1dh:
	ld b,020h		;9b1d	06 20 	.   
	add a,c			;9b1f	81 	. 
	pop de			;9b20	d1 	. 
l9b21h:
	ex af,af'			;9b21	08 	. 
	jr nz,l9aa5h		;9b22	20 81 	  . 
	djnz l9b2ch		;9b24	10 06 	. . 
	jr nz,$-125		;9b26	20 81 	  . 
	pop de			;9b28	d1 	. 
l9b29h:
	ex af,af'			;9b29	08 	. 
	jr nz,l9aadh		;9b2a	20 81 	  . 
l9b2ch:
	inc bc			;9b2c	03 	. 
l9b2dh:
	ld b,020h		;9b2d	06 20 	.   
	add a,c			;9b2f	81 	. 
	pop de			;9b30	d1 	. 
l9b31h:
	ex af,af'			;9b31	08 	. 
	jr nz,l9ab5h		;9b32	20 81 	  . 
	djnz l9b3bh		;9b34	10 05 	. . 
	jr nz,l9abbh		;9b36	20 83 	  . 
	defb 0ddh,0dbh,0dch	;illegal sequence		;9b38	dd db dc 	. . . 
l9b3bh:
	rlca			;9b3b	07 	. 
	jr nz,l9abfh		;9b3c	20 81 	  . 
	djnz l9b43h		;9b3e	10 03 	. . 
	jr nz,l9b44h		;9b40	20 02 	  . 
	rst 18h			;9b42	df 	. 
l9b43h:
	dec bc			;9b43	0b 	. 
l9b44h:
	sbc a,002h		;9b44	de 02 	. . 
	rst 18h			;9b46	df 	. 
	add a,c			;9b47	81 	. 
	sbc a,002h		;9b48	de 02 	. . 
	ret po			;9b4a	e0 	. 
	dec bc			;9b4b	0b 	. 
	sbc a,002h		;9b4c	de 02 	. . 
	ret po			;9b4e	e0 	. 
	add a,c			;9b4f	81 	. 
	sbc a,000h		;9b50	de 00 	. . 
	and b			;9b52	a0 	. 
	ret			;9b53	c9 	. 
	ret z			;9b54	c8 	. 
	ret			;9b55	c9 	. 
	ret z			;9b56	c8 	. 
	ret			;9b57	c9 	. 
	ret z			;9b58	c8 	. 
	ret			;9b59	c9 	. 
	ret z			;9b5a	c8 	. 
	ret			;9b5b	c9 	. 
	ret z			;9b5c	c8 	. 
	ret			;9b5d	c9 	. 
	ret z			;9b5e	c8 	. 
	ret			;9b5f	c9 	. 
	ret z			;9b60	c8 	. 
	ret			;9b61	c9 	. 
	ret z			;9b62	c8 	. 
	call 0cdcfh		;9b63	cd cf cd 	. . . 
	adc a,0cdh		;9b66	ce cd 	. . 
	rst 8			;9b68	cf 	. 
	call 0cdceh		;9b69	cd ce cd 	. . . 
	rst 8			;9b6c	cf 	. 
	call 0cdcfh		;9b6d	cd cf cd 	. . . 
	rst 8			;9b70	cf 	. 
	call 003cfh		;9b71	cd cf 03 	. . . 
l9b74h:
	jr nz,$-118		;9b74	20 88 	  . 
	pop de			;9b76	d1 	. 
	jp nc,0d4d3h		;9b77	d2 d3 d4 	. . . 
	pop de			;9b7a	d1 	. 
l9b7bh:
	jp nc,0d4d3h		;9b7b	d2 d3 d4 	. . . 
	dec b			;9b7e	05 	. 
	jr nz,l9b09h		;9b7f	20 88 	  . 
l9b81h:
	sub 0d7h		;9b81	d6 d7 	. . 
	ret c			;9b83	d8 	. 
	pop de			;9b84	d1 	. 
l9b85h:
	sub 0d7h		;9b85	d6 d7 	. . 
	ret c			;9b87	d8 	. 
	pop de			;9b88	d1 	. 
l9b89h:
	dec bc			;9b89	0b 	. 
	jr nz,l9b0dh		;9b8a	20 81 	  . 
	pop de			;9b8c	d1 	. 
l9b8dh:
	inc bc			;9b8d	03 	. 
	jr nz,l9b11h		;9b8e	20 81 	  . 
	pop de			;9b90	d1 	. 
l9b91h:
	dec bc			;9b91	0b 	. 
	jr nz,$-125		;9b92	20 81 	  . 
	pop de			;9b94	d1 	. 
l9b95h:
	inc bc			;9b95	03 	. 
l9b96h:
	jr nz,l9b19h		;9b96	20 81 	  . 
	pop de			;9b98	d1 	. 
	dec bc			;9b99	0b 	. 
	jr nz,l9b1dh		;9b9a	20 81 	  . 
	pop de			;9b9c	d1 	. 
	inc bc			;9b9d	03 	. 
	jr nz,l9b21h		;9b9e	20 81 	  . 
	pop de			;9ba0	d1 	. 
	dec bc			;9ba1	0b 	. 
	jr nz,$-125		;9ba2	20 81 	  . 
	pop de			;9ba4	d1 	. 
	inc bc			;9ba5	03 	. 
	jr nz,l9b29h		;9ba6	20 81 	  . 
	pop de			;9ba8	d1 	. 
	dec bc			;9ba9	0b 	. 
	jr nz,l9b2dh		;9baa	20 81 	  . 
	pop de			;9bac	d1 	. 
	inc bc			;9bad	03 	. 
	jr nz,l9b31h		;9bae	20 81 	  . 
	pop de			;9bb0	d1 	. 
	ld a,(bc)			;9bb1	0a 	. 
	jr nz,l9b3bh		;9bb2	20 87 	  . 
	defb 0ddh,0dbh,0dch	;illegal sequence		;9bb4	dd db dc 	. . . 
	jr nz,l9b96h		;9bb7	20 dd 	  . 
	in a,(0dch)		;9bb9	db dc 	. . 
	inc bc			;9bbb	03 	. 
	jr nz,$-125		;9bbc	20 81 	  . 
	djnz $+5		;9bbe	10 03 	. . 
	jr nz,$+11		;9bc0	20 09 	  . 
	sbc a,006h		;9bc2	de 06 	. . 
	rst 18h			;9bc4	df 	. 
	ld a,(bc)			;9bc5	0a 	. 
	sbc a,006h		;9bc6	de 06 	. . 
	ret po			;9bc8	e0 	. 
	add a,c			;9bc9	81 	. 
	sbc a,000h		;9bca	de 00 	. . 
	and b			;9bcc	a0 	. 
	ret			;9bcd	c9 	. 
	ret z			;9bce	c8 	. 
	ret			;9bcf	c9 	. 
	ret z			;9bd0	c8 	. 
	ret			;9bd1	c9 	. 
	ret z			;9bd2	c8 	. 
	ret			;9bd3	c9 	. 
	ret z			;9bd4	c8 	. 
	ret			;9bd5	c9 	. 
	ret z			;9bd6	c8 	. 
	ret			;9bd7	c9 	. 
	ret z			;9bd8	c8 	. 
l9bd9h:
	ret			;9bd9	c9 	. 
	ret z			;9bda	c8 	. 
	ret			;9bdb	c9 	. 
	ret z			;9bdc	c8 	. 
	call 0cdcfh		;9bdd	cd cf cd 	. . . 
	rst 8			;9be0	cf 	. 
	call 0cdcfh		;9be1	cd cf cd 	. . . 
	rst 8			;9be4	cf 	. 
l9be5h:
	call 0cdceh		;9be5	cd ce cd 	. . . 
	rst 8			;9be8	cf 	. 
	call 0cdcfh		;9be9	cd cf cd 	. . . 
	rst 8			;9bec	cf 	. 
	add hl,bc			;9bed	09 	. 
	jr nz,l9b74h		;9bee	20 84 	  . 
	pop de			;9bf0	d1 	. 
l9bf1h:
	jp nc,0d4d3h		;9bf1	d2 d3 d4 	. . . 
	add hl,bc			;9bf4	09 	. 
	jr nz,l9b7bh		;9bf5	20 84 	  . 
l9bf7h:
	sub 0d7h		;9bf7	d6 d7 	. . 
	ret c			;9bf9	d8 	. 
	pop de			;9bfa	d1 	. 
	dec c			;9bfb	0d 	. 
	jr nz,l9b81h		;9bfc	20 83 	  . 
	djnz l9c20h		;9bfe	10 20 	.   
	pop de			;9c00	d1 	. 
l9c01h:
	rrca			;9c01	0f 	. 
	jr nz,l9b85h		;9c02	20 81 	  . 
	pop de			;9c04	d1 	. 
	ld a,(bc)			;9c05	0a 	. 
	jr nz,l9b89h		;9c06	20 81 	  . 
l9c08h:
	djnz l9c0eh		;9c08	10 04 	. . 
	jr nz,l9b8dh		;9c0a	20 81 	  . 
	pop de			;9c0c	d1 	. 
l9c0dh:
	rrca			;9c0d	0f 	. 
l9c0eh:
	jr nz,l9b91h		;9c0e	20 81 	  . 
	pop de			;9c10	d1 	. 
	ex af,af'			;9c11	08 	. 
	jr nz,l9b95h		;9c12	20 81 	  . 
	inc d			;9c14	14 	. 
	ld b,020h		;9c15	06 20 	.   
	add a,c			;9c17	81 	. 
	pop de			;9c18	d1 	. 
	ld c,020h		;9c19	0e 20 	.   
	add a,e			;9c1b	83 	. 
	defb 0ddh,0dbh,0dch	;illegal sequence		;9c1c	dd db dc 	. . . 
	dec b			;9c1f	05 	. 
l9c20h:
	jr nz,l9c2ah		;9c20	20 08 	  . 
	rst 18h			;9c22	df 	. 
	ex af,af'			;9c23	08 	. 
	sbc a,008h		;9c24	de 08 	. . 
	ret po			;9c26	e0 	. 
l9c27h:
	ex af,af'			;9c27	08 	. 
	sbc a,000h		;9c28	de 00 	. . 
l9c2ah:
	and d			;9c2a	a2 	. 
	ret			;9c2b	c9 	. 
	ret z			;9c2c	c8 	. 
	ret			;9c2d	c9 	. 
	ret z			;9c2e	c8 	. 
	ret			;9c2f	c9 	. 
l9c30h:
	ret z			;9c30	c8 	. 
	ret			;9c31	c9 	. 
	ret z			;9c32	c8 	. 
	ret			;9c33	c9 	. 
	ret z			;9c34	c8 	. 
	ret			;9c35	c9 	. 
l9c36h:
	ret z			;9c36	c8 	. 
	ret			;9c37	c9 	. 
	ret z			;9c38	c8 	. 
	ret			;9c39	c9 	. 
	ret z			;9c3a	c8 	. 
	call 0cdceh		;9c3b	cd ce cd 	. . . 
	rst 8			;9c3e	cf 	. 
	call 0cdcfh		;9c3f	cd cf cd 	. . . 
l9c42h:
	rst 8			;9c42	cf 	. 
	call 0cdcfh		;9c43	cd cf cd 	. . . 
	rst 8			;9c46	cf 	. 
	call 0cdcfh		;9c47	cd cf cd 	. . . 
	adc a,020h		;9c4a	ce 20 	.   
l9c4ch:
	pop de			;9c4c	d1 	. 
	ld a,(bc)			;9c4d	0a 	. 
	jr nz,l9bd9h		;9c4e	20 89 	  . 
l9c50h:
	sub 0d7h		;9c50	d6 d7 	. . 
	ret c			;9c52	d8 	. 
	pop de			;9c53	d1 	. 
	jr nz,l9c27h		;9c54	20 d1 	  . 
	jp nc,0d4d3h		;9c56	d2 d3 d4 	. . . 
	ld a,(bc)			;9c59	0a 	. 
	jr nz,$-123		;9c5a	20 83 	  . 
	pop de			;9c5c	d1 	. 
	jr nz,l9c30h		;9c5d	20 d1 	  . 
	dec c			;9c5f	0d 	. 
	jr nz,l9be5h		;9c60	20 83 	  . 
l9c62h:
	pop de			;9c62	d1 	. 
	jr nz,l9c36h		;9c63	20 d1 	  . 
	dec c			;9c65	0d 	. 
	jr nz,$-123		;9c66	20 83 	  . 
	pop de			;9c68	d1 	. 
	jr nz,$-45		;9c69	20 d1 	  . 
	dec c			;9c6b	0d 	. 
	jr nz,l9bf1h		;9c6c	20 83 	  . 
l9c6eh:
	pop de			;9c6e	d1 	. 
	jr nz,l9c42h		;9c6f	20 d1 	  . 
	dec c			;9c71	0d 	. 
	jr nz,l9bf7h		;9c72	20 83 	  . 
	pop de			;9c74	d1 	. 
	jr nz,$-45		;9c75	20 d1 	  . 
	inc bc			;9c77	03 	. 
	jr nz,l9c01h		;9c78	20 87 	  . 
	ld bc,00103h		;9c7a	01 03 01 	. . . 
	ld (bc),a			;9c7d	02 	. 
	ld bc,00103h		;9c7e	01 03 01 	. . . 
	inc bc			;9c81	03 	. 
	jr nz,l9c08h		;9c82	20 84 	  . 
	pop de			;9c84	d1 	. 
	defb 0ddh,0dbh,0dch	;illegal sequence		;9c85	dd db dc 	. . . 
	dec bc			;9c88	0b 	. 
	jr nz,l9c0dh		;9c89	20 82 	  . 
	defb 0ddh,0dbh,020h	;illegal sequence		;9c8b	dd db 20 	. .   
	sbc a,000h		;9c8e	de 00 	. . 
	and h			;9c90	a4 	. 
	ret			;9c91	c9 	. 
	ret z			;9c92	c8 	. 
	ret			;9c93	c9 	. 
	ret z			;9c94	c8 	. 
	ret			;9c95	c9 	. 
	ret z			;9c96	c8 	. 
	ret			;9c97	c9 	. 
	ret z			;9c98	c8 	. 
	ret			;9c99	c9 	. 
	ret z			;9c9a	c8 	. 
	ret			;9c9b	c9 	. 
	ret z			;9c9c	c8 	. 
	ret			;9c9d	c9 	. 
	ret z			;9c9e	c8 	. 
	ret			;9c9f	c9 	. 
	ret z			;9ca0	c8 	. 
	call 0cdcfh		;9ca1	cd cf cd 	. . . 
	adc a,0cdh		;9ca4	ce cd 	. . 
	rst 8			;9ca6	cf 	. 
l9ca7h:
	call 0cdcfh		;9ca7	cd cf cd 	. . . 
	rst 8			;9caa	cf 	. 
	call 0cdcfh		;9cab	cd cf cd 	. . . 
l9caeh:
	rst 8			;9cae	cf 	. 
	call 0d6cfh		;9caf	cd cf d6 	. . . 
l9cb2h:
	rst 10h			;9cb2	d7 	. 
	ret c			;9cb3	d8 	. 
	pop de			;9cb4	d1 	. 
	inc c			;9cb5	0c 	. 
l9cb6h:
	jr nz,$-122		;9cb6	20 84 	  . 
	jp nc,0d4d3h		;9cb8	d2 d3 d4 	. . . 
	pop de			;9cbb	d1 	. 
	rrca			;9cbc	0f 	. 
	jr nz,$-125		;9cbd	20 81 	  . 
	pop de			;9cbf	d1 	. 
	dec b			;9cc0	05 	. 
	jr nz,$-125		;9cc1	20 81 	  . 
	ld (bc),a			;9cc3	02 	. 
	add hl,bc			;9cc4	09 	. 
	jr nz,$-125		;9cc5	20 81 	  . 
	pop de			;9cc7	d1 	. 
	rrca			;9cc8	0f 	. 
	jr nz,l9c4ch		;9cc9	20 81 	  . 
	pop de			;9ccb	d1 	. 
	ld a,(bc)			;9ccc	0a 	. 
	jr nz,l9c50h		;9ccd	20 81 	  . 
	djnz $+6		;9ccf	10 04 	. . 
	jr nz,$-122		;9cd1	20 84 	  . 
	pop de			;9cd3	d1 	. 
	jr nz,l9cf6h		;9cd4	20 20 	    
l9cd6h:
	djnz l9cdfh		;9cd6	10 07 	. . 
	jr nz,$-125		;9cd8	20 81 	  . 
	djnz $+6		;9cda	10 04 	. . 
	jr nz,l9c62h		;9cdc	20 84 	  . 
	pop de			;9cde	d1 	. 
l9cdfh:
	jr nz,l9d01h		;9cdf	20 20 	    
	djnz l9ceah		;9ce1	10 07 	. . 
l9ce3h:
	jr nz,l9c6eh		;9ce3	20 89 	  . 
	djnz l9d07h		;9ce5	10 20 	.   
	call c,0dd20h		;9ce7	dc 20 dd 	.   . 
l9ceah:
	in a,(0dch)		;9cea	db dc 	. . 
	jr nz,l9cfeh		;9cec	20 10 	  . 
	add hl,bc			;9cee	09 	. 
	jr nz,l9cfbh		;9cef	20 0a 	  . 
	sbc a,002h		;9cf1	de 02 	. . 
	rst 18h			;9cf3	df 	. 
	ld c,0deh		;9cf4	0e de 	. . 
l9cf6h:
	ld (bc),a			;9cf6	02 	. 
	ret po			;9cf7	e0 	. 
	inc b			;9cf8	04 	. 
	sbc a,000h		;9cf9	de 00 	. . 
l9cfbh:
	and a			;9cfb	a7 	. 
	ret			;9cfc	c9 	. 
	ret z			;9cfd	c8 	. 
l9cfeh:
	ret			;9cfe	c9 	. 
	ret z			;9cff	c8 	. 
	ret			;9d00	c9 	. 
l9d01h:
	ret z			;9d01	c8 	. 
	ret			;9d02	c9 	. 
	ret z			;9d03	c8 	. 
	ret			;9d04	c9 	. 
	ret z			;9d05	c8 	. 
	ret			;9d06	c9 	. 
l9d07h:
	ret z			;9d07	c8 	. 
	ret			;9d08	c9 	. 
	ret z			;9d09	c8 	. 
	ret			;9d0a	c9 	. 
	ret z			;9d0b	c8 	. 
	call 0cdcfh		;9d0c	cd cf cd 	. . . 
	adc a,0cdh		;9d0f	ce cd 	. . 
	rst 8			;9d11	cf 	. 
	call 0cdcfh		;9d12	cd cf cd 	. . . 
	rst 8			;9d15	cf 	. 
	call 0cdcfh		;9d16	cd cf cd 	. . . 
	rst 8			;9d19	cf 	. 
	call 0d6cfh		;9d1a	cd cf d6 	. . . 
	rst 10h			;9d1d	d7 	. 
	ret c			;9d1e	d8 	. 
	pop de			;9d1f	d1 	. 
	jp nc,0d4d3h		;9d20	d2 d3 d4 	. . . 
	ex af,af'			;9d23	08 	. 
	jr nz,l9ca7h		;9d24	20 81 	  . 
	inc d			;9d26	14 	. 
	inc bc			;9d27	03 	. 
	jr nz,l9caeh		;9d28	20 84 	  . 
	pop de			;9d2a	d1 	. 
	jp nc,0d4d3h		;9d2b	d2 d3 d4 	. . . 
	ex af,af'			;9d2e	08 	. 
	jr nz,l9cb2h		;9d2f	20 81 	  . 
	inc d			;9d31	14 	. 
	inc bc			;9d32	03 	. 
	jr nz,l9cb6h		;9d33	20 81 	  . 
	pop de			;9d35	d1 	. 
	dec bc			;9d36	0b 	. 
	jr nz,$-125		;9d37	20 81 	  . 
	inc d			;9d39	14 	. 
	inc bc			;9d3a	03 	. 
	jr nz,$-125		;9d3b	20 81 	  . 
	pop de			;9d3d	d1 	. 
	dec bc			;9d3e	0b 	. 
	jr nz,$-125		;9d3f	20 81 	  . 
	inc d			;9d41	14 	. 
	inc bc			;9d42	03 	. 
l9d43h:
	jr nz,$-125		;9d43	20 81 	  . 
	pop de			;9d45	d1 	. 
	dec bc			;9d46	0b 	. 
	jr nz,$-125		;9d47	20 81 	  . 
	inc d			;9d49	14 	. 
	inc bc			;9d4a	03 	. 
	jr nz,$-125		;9d4b	20 81 	  . 
	pop de			;9d4d	d1 	. 
	dec bc			;9d4e	0b 	. 
	jr nz,$-125		;9d4f	20 81 	  . 
	inc d			;9d51	14 	. 
	inc bc			;9d52	03 	. 
	jr nz,l9cd6h		;9d53	20 81 	  . 
	pop de			;9d55	d1 	. 
	dec bc			;9d56	0b 	. 
	jr nz,l9cdfh		;9d57	20 86 	  . 
	inc d			;9d59	14 	. 
	jr nz,l9d7ch		;9d5a	20 20 	    
	defb 0ddh,0dbh,0dch	;illegal sequence		;9d5c	dd db dc 	. . . 
	ld a,(bc)			;9d5f	0a 	. 
	jr nz,l9ce3h		;9d60	20 81 	  . 
	inc d			;9d62	14 	. 
	jr nz,l9d43h		;9d63	20 de 	  . 
	nop			;9d65	00 	. 
	ld (hl),d			;9d66	72 	r 
	sbc a,l			;9d67	9d 	. 
	sub d			;9d68	92 	. 
	sbc a,l			;9d69	9d 	. 
	sbc a,d			;9d6a	9a 	. 
	sbc a,l			;9d6b	9d 	. 
	sbc a,(hl)			;9d6c	9e 	. 
	sbc a,l			;9d6d	9d 	. 
	and d			;9d6e	a2 	. 
	sbc a,l			;9d6f	9d 	. 
	and (hl)			;9d70	a6 	. 
	sbc a,l			;9d71	9d 	. 
	xor d			;9d72	aa 	. 
	sbc a,l			;9d73	9d 	. 
	cp a			;9d74	bf 	. 
	sbc a,l			;9d75	9d 	. 
	xor d			;9d76	aa 	. 
	sbc a,l			;9d77	9d 	. 
	call c,sub_aa9dh		;9d78	dc 9d aa 	. . . 
	sbc a,l			;9d7b	9d 	. 
l9d7ch:
	ld de,lbf9eh		;9d7c	11 9e bf 	. . . 
	sbc a,l			;9d7f	9d 	. 
	ld sp,hl			;9d80	f9 	. 
	sbc a,l			;9d81	9d 	. 
	ld de,0119eh		;9d82	11 9e 11 	. . . 
	sbc a,(hl)			;9d85	9e 	. 
	cp a			;9d86	bf 	. 
	sbc a,l			;9d87	9d 	. 
	ld (hl),09eh		;9d88	36 9e 	6 . 
	ld de,0369eh		;9d8a	11 9e 36 	. . 6 
	sbc a,(hl)			;9d8d	9e 	. 
	ld d,e			;9d8e	53 	S 
	sbc a,(hl)			;9d8f	9e 	. 
	ld l,a			;9d90	6f 	o 
	sbc a,(hl)			;9d91	9e 	. 
	and d			;9d92	a2 	. 
	sbc a,(hl)			;9d93	9e 	. 
	ld a,(de)			;9d94	1a 	. 
	sbc a,a			;9d95	9f 	. 
	and d			;9d96	a2 	. 
	sbc a,a			;9d97	9f 	. 
	ld b,0a0h		;9d98	06 a0 	. . 
	xor d			;9d9a	aa 	. 
	sbc a,l			;9d9b	9d 	. 
	and d			;9d9c	a2 	. 
	sbc a,(hl)			;9d9d	9e 	. 
	xor d			;9d9e	aa 	. 
	sbc a,l			;9d9f	9d 	. 
	ld a,(de)			;9da0	1a 	. 
	sbc a,a			;9da1	9f 	. 
	xor d			;9da2	aa 	. 
	sbc a,l			;9da3	9d 	. 
	and d			;9da4	a2 	. 
	sbc a,a			;9da5	9f 	. 
	xor d			;9da6	aa 	. 
	sbc a,l			;9da7	9d 	. 
	ld b,0a0h		;9da8	06 a0 	. . 
	inc e			;9daa	1c 	. 
	nop			;9dab	00 	. 
	add a,d			;9dac	82 	. 
	dec bc			;9dad	0b 	. 
	inc c			;9dae	0c 	. 
	inc b			;9daf	04 	. 
	nop			;9db0	00 	. 
	add a,d			;9db1	82 	. 
	dec bc			;9db2	0b 	. 
	inc c			;9db3	0c 	. 
	ld d,h			;9db4	54 	T 
	nop			;9db5	00 	. 
	ld (bc),a			;9db6	02 	. 
	ld a,(bc)			;9db7	0a 	. 
	ld h,000h		;9db8	26 00 	& . 
	djnz l9df9h		;9dba	10 3d 	. = 
	djnz l9ddfh		;9dbc	10 21 	. ! 
	nop			;9dbe	00 	. 
	ld hl,l8200h		;9dbf	21 00 82 	! . . 
	dec bc			;9dc2	0b 	. 
	inc c			;9dc3	0c 	. 
	add hl,de			;9dc4	19 	. 
	nop			;9dc5	00 	. 
	add a,d			;9dc6	82 	. 
	dec bc			;9dc7	0b 	. 
	inc c			;9dc8	0c 	. 
	add hl,hl			;9dc9	29 	) 
	nop			;9dca	00 	. 
	ld (bc),a			;9dcb	02 	. 
	ld a,(bc)			;9dcc	0a 	. 
	dec c			;9dcd	0d 	. 
	nop			;9dce	00 	. 
	add a,c			;9dcf	81 	. 
	ld a,(bc)			;9dd0	0a 	. 
	ld (bc),a			;9dd1	02 	. 
	nop			;9dd2	00 	. 
	add a,c			;9dd3	81 	. 
	ld a,(bc)			;9dd4	0a 	. 
	ld h,000h		;9dd5	26 00 	& . 
	djnz l9e16h		;9dd7	10 3d 	. = 
	djnz l9dfch		;9dd9	10 21 	. ! 
	nop			;9ddb	00 	. 
	jr z,l9ddeh		;9ddc	28 00 	( . 
l9ddeh:
	add a,d			;9dde	82 	. 
l9ddfh:
	dec bc			;9ddf	0b 	. 
	inc c			;9de0	0c 	. 
	ex af,af'			;9de1	08 	. 
	nop			;9de2	00 	. 
	add a,d			;9de3	82 	. 
	dec bc			;9de4	0b 	. 
	inc c			;9de5	0c 	. 
	ld d,b			;9de6	50 	P 
	nop			;9de7	00 	. 
	add a,c			;9de8	81 	. 
	inc d			;9de9	14 	. 
	ex af,af'			;9dea	08 	. 
	nop			;9deb	00 	. 
	ld (bc),a			;9dec	02 	. 
	ld a,(bc)			;9ded	0a 	. 
	dec b			;9dee	05 	. 
	nop			;9def	00 	. 
	add a,c			;9df0	81 	. 
	inc d			;9df1	14 	. 
	dec bc			;9df2	0b 	. 
	nop			;9df3	00 	. 
	djnz l9e33h		;9df4	10 3d 	. = 
	djnz l9e19h		;9df6	10 21 	. ! 
	nop			;9df8	00 	. 
l9df9h:
	ld d,000h		;9df9	16 00 	. . 
	add a,d			;9dfb	82 	. 
l9dfch:
	dec bc			;9dfc	0b 	. 
	inc c			;9dfd	0c 	. 
	ld d,l			;9dfe	55 	U 
	nop			;9dff	00 	. 
	add a,c			;9e00	81 	. 
	ld a,(bc)			;9e01	0a 	. 
	ld c,000h		;9e02	0e 00 	. . 
	add a,c			;9e04	81 	. 
	ld a,(bc)			;9e05	0a 	. 
	inc d			;9e06	14 	. 
	nop			;9e07	00 	. 
	ld (bc),a			;9e08	02 	. 
	inc d			;9e09	14 	. 
	dec c			;9e0a	0d 	. 
	nop			;9e0b	00 	. 
	djnz l9e4bh		;9e0c	10 3d 	. = 
	djnz l9e31h		;9e0e	10 21 	. ! 
	nop			;9e10	00 	. 
	inc de			;9e11	13 	. 
	nop			;9e12	00 	. 
	add a,d			;9e13	82 	. 
	dec bc			;9e14	0b 	. 
	inc c			;9e15	0c 	. 
l9e16h:
	rla			;9e16	17 	. 
	nop			;9e17	00 	. 
	add a,d			;9e18	82 	. 
l9e19h:
	dec bc			;9e19	0b 	. 
	inc c			;9e1a	0c 	. 
	ld c,c			;9e1b	49 	I 
	nop			;9e1c	00 	. 
	ld (bc),a			;9e1d	02 	. 
	ld a,(bc)			;9e1e	0a 	. 
	ld a,(bc)			;9e1f	0a 	. 
	nop			;9e20	00 	. 
	add a,c			;9e21	81 	. 
	inc d			;9e22	14 	. 
	ex af,af'			;9e23	08 	. 
	nop			;9e24	00 	. 
	add a,c			;9e25	81 	. 
	inc d			;9e26	14 	. 
	ld b,000h		;9e27	06 00 	. . 
	add a,c			;9e29	81 	. 
	inc d			;9e2a	14 	. 
	ex af,af'			;9e2b	08 	. 
	nop			;9e2c	00 	. 
	add a,c			;9e2d	81 	. 
	inc d			;9e2e	14 	. 
	inc bc			;9e2f	03 	. 
	nop			;9e30	00 	. 
l9e31h:
	djnz l9e70h		;9e31	10 3d 	. = 
l9e33h:
	djnz l9e56h		;9e33	10 21 	. ! 
	nop			;9e35	00 	. 
	dec de			;9e36	1b 	. 
	nop			;9e37	00 	. 
	add a,d			;9e38	82 	. 
	dec bc			;9e39	0b 	. 
	inc c			;9e3a	0c 	. 
	dec b			;9e3b	05 	. 
	nop			;9e3c	00 	. 
	add a,d			;9e3d	82 	. 
	dec bc			;9e3e	0b 	. 
	inc c			;9e3f	0c 	. 
	ld e,a			;9e40	5f 	_ 
	nop			;9e41	00 	. 
	add a,c			;9e42	81 	. 
	inc d			;9e43	14 	. 
	ld b,000h		;9e44	06 00 	. . 
	add a,c			;9e46	81 	. 
	ld a,(bc)			;9e47	0a 	. 
	rlca			;9e48	07 	. 
	nop			;9e49	00 	. 
	ld (bc),a			;9e4a	02 	. 
l9e4bh:
	inc d			;9e4b	14 	. 
	inc c			;9e4c	0c 	. 
	nop			;9e4d	00 	. 
	djnz l9e8dh		;9e4e	10 3d 	. = 
	djnz l9e73h		;9e50	10 21 	. ! 
	nop			;9e52	00 	. 
	inc de			;9e53	13 	. 
	nop			;9e54	00 	. 
	add a,d			;9e55	82 	. 
l9e56h:
	dec bc			;9e56	0b 	. 
	inc c			;9e57	0c 	. 
	inc de			;9e58	13 	. 
	nop			;9e59	00 	. 
	add a,d			;9e5a	82 	. 
	dec bc			;9e5b	0b 	. 
	inc c			;9e5c	0c 	. 
	ld c,h			;9e5d	4c 	L 
	nop			;9e5e	00 	. 
	add a,h			;9e5f	84 	. 
	ld a,(bc)			;9e60	0a 	. 
	nop			;9e61	00 	. 
	nop			;9e62	00 	. 
	ld a,(bc)			;9e63	0a 	. 
	dec e			;9e64	1d 	. 
	nop			;9e65	00 	. 
	ld (bc),a			;9e66	02 	. 
	inc d			;9e67	14 	. 
	rlca			;9e68	07 	. 
	nop			;9e69	00 	. 
	djnz l9ea9h		;9e6a	10 3d 	. = 
	djnz l9e8fh		;9e6c	10 21 	. ! 
	nop			;9e6e	00 	. 
	dec de			;9e6f	1b 	. 
l9e70h:
	nop			;9e70	00 	. 
	add a,d			;9e71	82 	. 
	dec bc			;9e72	0b 	. 
l9e73h:
	inc c			;9e73	0c 	. 
	dec b			;9e74	05 	. 
	nop			;9e75	00 	. 
	add a,d			;9e76	82 	. 
	dec bc			;9e77	0b 	. 
	inc c			;9e78	0c 	. 
	dec de			;9e79	1b 	. 
	nop			;9e7a	00 	. 
	add a,c			;9e7b	81 	. 
	inc d			;9e7c	14 	. 
	rrca			;9e7d	0f 	. 
	nop			;9e7e	00 	. 
	add a,c			;9e7f	81 	. 
	inc d			;9e80	14 	. 
	rrca			;9e81	0f 	. 
	nop			;9e82	00 	. 
	add a,c			;9e83	81 	. 
	inc d			;9e84	14 	. 
	rrca			;9e85	0f 	. 
	nop			;9e86	00 	. 
	add a,c			;9e87	81 	. 
	inc d			;9e88	14 	. 
	inc b			;9e89	04 	. 
	nop			;9e8a	00 	. 
	add a,c			;9e8b	81 	. 
	ld a,(bc)			;9e8c	0a 	. 
l9e8dh:
	ld a,(bc)			;9e8d	0a 	. 
	nop			;9e8e	00 	. 
l9e8fh:
	add a,c			;9e8f	81 	. 
	inc d			;9e90	14 	. 
	rrca			;9e91	0f 	. 
	nop			;9e92	00 	. 
	add a,c			;9e93	81 	. 
	inc d			;9e94	14 	. 
	inc b			;9e95	04 	. 
	nop			;9e96	00 	. 
	add a,c			;9e97	81 	. 
	inc d			;9e98	14 	. 
	ld a,(bc)			;9e99	0a 	. 
	nop			;9e9a	00 	. 
	add a,c			;9e9b	81 	. 
	inc d			;9e9c	14 	. 
	djnz $+63		;9e9d	10 3d 	. = 
	djnz l9ec2h		;9e9f	10 21 	. ! 
	nop			;9ea1	00 	. 
	djnz $+35		;9ea2	10 21 	. ! 
	djnz l9ec7h		;9ea4	10 21 	. ! 
	add a,c			;9ea6	81 	. 
	ld c,b			;9ea7	48 	H 
	rrca			;9ea8	0f 	. 
l9ea9h:
	ld hl,04783h		;9ea9	21 83 47 	! . G 
	ld de,00d18h		;9eac	11 18 0d 	. . . 
	ld hl,04784h		;9eaf	21 84 47 	! . G 
	ld hl,01816h		;9eb2	21 16 18 	! . . 
	ld a,(bc)			;9eb5	0a 	. 
	ld hl,01784h		;9eb6	21 84 17 	! . . 
	ld d,047h		;9eb9	16 47 	. G 
	ld hl,01602h		;9ebb	21 02 16 	! . . 
	dec b			;9ebe	05 	. 
	ld hl,00281h		;9ebf	21 81 02 	! . . 
l9ec2h:
	inc b			;9ec2	04 	. 
	ld hl,01a84h		;9ec3	21 84 1a 	! . . 
	add hl,de			;9ec6	19 	. 
l9ec7h:
	ld b,a			;9ec7	47 	G 
	ld hl,01602h		;9ec8	21 02 16 	! . . 
	dec b			;9ecb	05 	. 
	ld hl,01182h		;9ecc	21 82 11 	! . . 
	jr $+7		;9ecf	18 05 	. . 
	ld hl,04782h		;9ed1	21 82 47 	! . G 
	ld hl,01102h		;9ed4	21 02 11 	! . . 
	ld (bc),a			;9ed7	02 	. 
	ld hl,0178fh		;9ed8	21 8f 17 	! . . 
	ld de,01611h		;9edb	11 11 16 	. . . 
	add hl,de			;9ede	19 	. 
	ld hl,0213eh		;9edf	21 3e 21 	! > ! 
	ld d,021h		;9ee2	16 21 	. ! 
	ld b,a			;9ee4	47 	G 
	ld a,021h		;9ee5	3e 21 	> ! 
	ld hl,00217h		;9ee7	21 17 02 	! . . 
	ld d,002h		;9eea	16 02 	. . 
	ld hl,0118ah		;9eec	21 8a 11 	! . . 
	ld hl,03f21h		;9eef	21 21 3f 	! ! ? 
	ld a,021h		;9ef2	3e 21 	> ! 
	ld hl,03f47h		;9ef4	21 47 3f 	! G ? 
	ld hl,00302h		;9ef7	21 02 03 	! . . 
	ld (bc),a			;9efa	02 	. 
	ld hl,01102h		;9efb	21 02 11 	! . . 
	adc a,c			;9efe	89 	. 
	ld d,021h		;9eff	16 21 	. ! 
	ld hl,03f40h		;9f01	21 40 3f 	! @ ? 
	ld a,(de)			;9f04	1a 	. 
	ld hl,04047h		;9f05	21 47 40 	! G @ 
	rlca			;9f08	07 	. 
	ld hl,01681h		;9f09	21 81 16 	! . . 
	inc bc			;9f0c	03 	. 
	ld c,b			;9f0d	48 	H 
	add a,h			;9f0e	84 	. 
	ld b,b			;9f0f	40 	@ 
	ld hl,04721h		;9f10	21 21 47 	! ! G 
	add hl,bc			;9f13	09 	. 
	ld c,b			;9f14	48 	H 
	inc bc			;9f15	03 	. 
	ld b,a			;9f16	47 	G 
	inc bc			;9f17	03 	. 
	ld c,b			;9f18	48 	H 
	nop			;9f19	00 	. 
	djnz l9f3dh		;9f1a	10 21 	. ! 
	add a,c			;9f1c	81 	. 
	ld a,00fh		;9f1d	3e 0f 	> . 
	ld hl,03f85h		;9f1f	21 85 3f 	! . ? 
	ld hl,01721h		;9f22	21 21 17 	! ! . 
	jr $+4		;9f25	18 02 	. . 
	ld hl,00302h		;9f27	21 02 03 	! . . 
	adc a,b			;9f2a	88 	. 
	ld hl,02116h		;9f2b	21 16 21 	! . ! 
	ld hl,02118h		;9f2e	21 18 21 	! . ! 
	ld hl,00340h		;9f31	21 40 03 	! @ . 
	ld hl,016a1h		;9f34	21 a1 16 	! . . 
	ld hl,01621h		;9f37	21 21 16 	! ! . 
	ld hl,0163eh		;9f3a	21 3e 16 	! > . 
l9f3dh:
	ld a,021h		;9f3d	3e 21 	> ! 
	ld d,018h		;9f3f	16 18 	. . 
	ld hl,01816h		;9f41	21 16 18 	! . . 
	ld hl,01621h		;9f44	21 21 16 	! ! . 
	ld hl,01621h		;9f47	21 21 16 	! ! . 
	ld hl,0163fh		;9f4a	21 3f 16 	! ? . 
	ccf			;9f4d	3f 	? 
	ld hl,0161ah		;9f4e	21 1a 16 	! . . 
	jr l9f74h		;9f51	18 21 	. ! 
	ld d,021h		;9f53	16 21 	. ! 
	ld hl,00216h		;9f55	21 16 02 	! . . 
	ld a,002h		;9f58	3e 02 	> . 
	ld hl,04083h		;9f5a	21 83 40 	! . @ 
	ld d,040h		;9f5d	16 40 	. @ 
	dec b			;9f5f	05 	. 
	ld hl,01684h		;9f60	21 84 16 	! . . 
	ld hl,01621h		;9f63	21 21 16 	! ! . 
	ld (bc),a			;9f66	02 	. 
	ccf			;9f67	3f 	? 
	ld b,016h		;9f68	06 16 	. . 
	add a,c			;9f6a	81 	. 
	jr l9f70h		;9f6b	18 03 	. . 
	ld hl,01684h		;9f6d	21 84 16 	! . . 
l9f70h:
	ld hl,01621h		;9f70	21 21 16 	! ! . 
	ld (bc),a			;9f73	02 	. 
l9f74h:
	ld b,b			;9f74	40 	@ 
	ld b,021h		;9f75	06 21 	. ! 
	adc a,b			;9f77	88 	. 
	ld de,02121h		;9f78	11 21 21 	. ! ! 
	ld a,016h		;9f7b	3e 16 	> . 
	ld hl,01a21h		;9f7d	21 21 1a 	! ! . 
	dec b			;9f80	05 	. 
	ld d,088h		;9f81	16 88 	. . 
	jr l9fa6h		;9f83	18 21 	. ! 
	ld hl,02116h		;9f85	21 16 21 	! . ! 
	ld a,03fh		;9f88	3e 3f 	> ? 
	ld de,00302h		;9f8a	11 02 03 	. . . 
	add hl,bc			;9f8d	09 	. 
	ld hl,01685h		;9f8e	21 85 16 	! . . 
	ld hl,0403fh		;9f91	21 3f 40 	! ? @ 
	ld a,(de)			;9f94	1a 	. 
	ld (bc),a			;9f95	02 	. 
	inc bc			;9f96	03 	. 
	rlca			;9f97	07 	. 
	ld hl,00385h		;9f98	21 85 03 	! . . 
	rla			;9f9b	17 	. 
	ld d,018h		;9f9c	16 18 	. . 
	ld b,b			;9f9e	40 	@ 
	djnz $+74		;9f9f	10 48 	. H 
	nop			;9fa1	00 	. 
	dec h			;9fa2	25 	% 
	ld hl,01102h		;9fa3	21 02 11 	! . . 
l9fa6h:
	ld (bc),a			;9fa6	02 	. 
	inc bc			;9fa7	03 	. 
	add a,d			;9fa8	82 	. 
	ld de,00c16h		;9fa9	11 16 0c 	. . . 
	ld hl,01686h		;9fac	21 86 16 	! . . 
	ld hl,02116h		;9faf	21 16 21 	! . ! 
	ld hl,0093eh		;9fb2	21 3e 09 	! > . 
	ld hl,01681h		;9fb5	21 81 16 	! . . 
	inc bc			;9fb8	03 	. 
	ld hl,01683h		;9fb9	21 83 16 	! . . 
	ld hl,0053fh		;9fbc	21 3f 05 	! ? . 
	ld hl,03e84h		;9fbf	21 84 3e 	! . > 
	ld hl,01621h		;9fc2	21 21 16 	! ! . 
	dec b			;9fc5	05 	. 
	ld hl,01682h		;9fc6	21 82 16 	! . . 
	ld b,b			;9fc9	40 	@ 
	inc b			;9fca	04 	. 
	ld hl,03e84h		;9fcb	21 84 3e 	! . > 
	ccf			;9fce	3f 	? 
	ld hl,00716h		;9fcf	21 16 07 	! . . 
	ld hl,01681h		;9fd2	21 81 16 	! . . 
	inc b			;9fd5	04 	. 
	ld hl,03f83h		;9fd6	21 83 3f 	! . ? 
	ld b,b			;9fd9	40 	@ 
	ld d,009h		;9fda	16 09 	. . 
	ld hl,01681h		;9fdc	21 81 16 	! . . 
	inc bc			;9fdf	03 	. 
	ld hl,04083h		;9fe0	21 83 40 	! . @ 
	ld d,021h		;9fe3	16 21 	. ! 
	ld (bc),a			;9fe5	02 	. 
	ld a,004h		;9fe6	3e 04 	> . 
	ld hl,03e03h		;9fe8	21 03 3e 	! . > 
	add a,l			;9feb	85 	. 
	ld hl,02116h		;9fec	21 16 21 	! . ! 
	ld hl,00216h		;9fef	21 16 02 	! . . 
	ld hl,03f02h		;9ff2	21 02 3f 	! . ? 
	inc b			;9ff5	04 	. 
	ld hl,03f03h		;9ff6	21 03 3f 	! . ? 
	rlca			;9ff9	07 	. 
	ld hl,04002h		;9ffa	21 02 40 	! . @ 
	inc b			;9ffd	04 	. 
	ld hl,04003h		;9ffe	21 03 40 	! . @ 
	inc bc			;a001	03 	. 
	ld hl,04810h		;a002	21 10 48 	! . H 
	nop			;a005	00 	. 
	jr nz,la029h		;a006	20 21 	  ! 
	add a,c			;a008	81 	. 
	rla			;a009	17 	. 
	ld (bc),a			;a00a	02 	. 
	ld hl,01782h		;a00b	21 82 17 	! . . 
	jr $+12		;a00e	18 0a 	. . 
	ld hl,01681h		;a010	21 81 16 	! . . 
	inc bc			;a013	03 	. 
	ld hl,01a82h		;a014	21 82 1a 	! . . 
	ld d,00ah		;a017	16 0a 	. . 
	ld hl,01681h		;a019	21 81 16 	! . . 
	inc b			;a01c	04 	. 
	ld hl,01681h		;a01d	21 81 16 	! . . 
	ld a,(bc)			;a020	0a 	. 
	ld hl,01681h		;a021	21 81 16 	! . . 
	inc b			;a024	04 	. 
	ld hl,01681h		;a025	21 81 16 	! . . 
	ld a,(bc)			;a028	0a 	. 
la029h:
	ld hl,01681h		;a029	21 81 16 	! . . 
	inc b			;a02c	04 	. 
	ld hl,01681h		;a02d	21 81 16 	! . . 
	add hl,bc			;a030	09 	. 
	ld hl,0178bh		;a031	21 8b 17 	! . . 
	ld d,03eh		;a034	16 3e 	. > 
	ld hl,01721h		;a036	21 21 17 	! ! . 
	ld d,018h		;a039	16 18 	. . 
	ld hl,03e21h		;a03b	21 21 3e 	! ! > 
	inc b			;a03e	04 	. 
	ld hl,01786h		;a03f	21 86 17 	! . . 
	ld d,016h		;a042	16 16 	. . 
	ccf			;a044	3f 	? 
	ld hl,00317h		;a045	21 17 03 	! . . 
	ld d,083h		;a048	16 83 	. . 
	jr la06dh		;a04a	18 21 	. ! 
	ccf			;a04c	3f 	? 
	inc bc			;a04d	03 	. 
	ld hl,01781h		;a04e	21 81 17 	! . . 
	inc bc			;a051	03 	. 
	ld d,082h		;a052	16 82 	. . 
	ld b,b			;a054	40 	@ 
la055h:
	rla			;a055	17 	. 
	dec b			;a056	05 	. 
	ld d,085h		;a057	16 85 	. . 
	jr la09bh		;a059	18 40 	. @ 
	ld hl,01721h		;a05b	21 21 17 	! ! . 
	inc b			;a05e	04 	. 
	ld d,009h		;a05f	16 09 	. . 
	ld de,00382h		;a061	11 82 03 	. . . 
	rla			;a064	17 	. 
	dec b			;a065	05 	. 
	ld d,010h		;a066	16 10 	. . 
	ld c,b			;a068	48 	H 
	nop			;a069	00 	. 
	ld l,h			;a06a	6c 	l 
	and b			;a06b	a0 	. 
	adc a,d			;a06c	8a 	. 
la06dh:
	and b			;a06d	a0 	. 
	cp a			;a06e	bf 	. 
	and b			;a06f	a0 	. 
	jp p,028a0h		;a070	f2 a0 28 	. . ( 
	and c			;a073	a1 	. 
	ld b,e			;a074	43 	C 
	and c			;a075	a1 	. 
	ld l,c			;a076	69 	i 
	and c			;a077	a1 	. 
	sbc a,0a1h		;a078	de a1 	. . 
	ex de,hl			;a07a	eb 	. 
	and c			;a07b	a1 	. 
	ld bc,009a2h		;a07c	01 a2 09 	. . . 
	and d			;a07f	a2 	. 
	ld b,e			;a080	43 	C 
	and d			;a081	a2 	. 
	ld e,b			;a082	58 	X 
	and d			;a083	a2 	. 
	ld l,e			;a084	6b 	k 
	and d			;a085	a2 	. 
	ld a,d			;a086	7a 	z 
	and d			;a087	a2 	. 
	adc a,a			;a088	8f 	. 
	and d			;a089	a2 	. 
	ld a,(de)			;a08a	1a 	. 
	nop			;a08b	00 	. 
	add a,d			;a08c	82 	. 
	dec bc			;a08d	0b 	. 
	inc c			;a08e	0c 	. 
	ld b,000h		;a08f	06 00 	. . 
	add a,d			;a091	82 	. 
	dec bc			;a092	0b 	. 
	inc c			;a093	0c 	. 
	ld (l8300h),a		;a094	32 00 83 	2 . . 
	dec l			;a097	2d 	- 
	ld l,02fh		;a098	2e 2f 	. / 
	inc c			;a09a	0c 	. 
la09bh:
	nop			;a09b	00 	. 
	add a,l			;a09c	85 	. 
	jr nc,la0d0h		;a09d	30 31 	0 1 
	ld (03433h),a		;a09f	32 33 34 	2 3 4 
	dec bc			;a0a2	0b 	. 
	nop			;a0a3	00 	. 
	add a,l			;a0a4	85 	. 
	dec (hl)			;a0a5	35 	5 
	ld (hl),037h		;a0a6	36 37 	6 7 
	jr c,la0e3h		;a0a8	38 39 	8 9 
	dec bc			;a0aa	0b 	. 
	nop			;a0ab	00 	. 
	add a,l			;a0ac	85 	. 
	dec (hl)			;a0ad	35 	5 
	ld a,(03c3bh)		;a0ae	3a 3b 3c 	: ; < 
	add hl,sp			;a0b1	39 	9 
	dec bc			;a0b2	0b 	. 
	nop			;a0b3	00 	. 
	add a,l			;a0b4	85 	. 
	dec (hl)			;a0b5	35 	5 
	ld a,(03c3bh)		;a0b6	3a 3b 3c 	: ; < 
	add hl,sp			;a0b9	39 	9 
	ld b,000h		;a0ba	06 00 	. . 
	jr nz,la0d3h		;a0bc	20 15 	  . 
	nop			;a0be	00 	. 
	inc d			;a0bf	14 	. 
	nop			;a0c0	00 	. 
	add a,d			;a0c1	82 	. 
	dec bc			;a0c2	0b 	. 
	inc c			;a0c3	0c 	. 
	inc hl			;a0c4	23 	# 
	nop			;a0c5	00 	. 
	add a,c			;a0c6	81 	. 
	ld a,(bc)			;a0c7	0a 	. 
	jr z,la0cah		;a0c8	28 00 	( . 
la0cah:
	add a,d			;a0ca	82 	. 
	inc d			;a0cb	14 	. 
	djnz la0d0h		;a0cc	10 02 	. . 
	nop			;a0ce	00 	. 
	ld (bc),a			;a0cf	02 	. 
la0d0h:
	djnz la055h		;a0d0	10 83 	. . 
	inc bc			;a0d2	03 	. 
la0d3h:
	djnz la0d5h		;a0d3	10 00 	. . 
la0d5h:
	inc bc			;a0d5	03 	. 
	djnz $+5		;a0d6	10 03 	. . 
	nop			;a0d8	00 	. 
	add a,c			;a0d9	81 	. 
	djnz $+12		;a0da	10 0a 	. . 
	nop			;a0dc	00 	. 
	add a,e			;a0dd	83 	. 
	ld a,(bc)			;a0de	0a 	. 
	nop			;a0df	00 	. 
	inc d			;a0e0	14 	. 
	ld a,(bc)			;a0e1	0a 	. 
	nop			;a0e2	00 	. 
la0e3h:
	add a,c			;a0e3	81 	. 
	ld a,(bc)			;a0e4	0a 	. 
	ld d,000h		;a0e5	16 00 	. . 
	add a,c			;a0e7	81 	. 
	dec d			;a0e8	15 	. 
	ld c,069h		;a0e9	0e 69 	. i 
	ld (bc),a			;a0eb	02 	. 
	dec d			;a0ec	15 	. 
	ld c,068h		;a0ed	0e 68 	. h 
	add a,c			;a0ef	81 	. 
	dec d			;a0f0	15 	. 
	nop			;a0f1	00 	. 
	dec bc			;a0f2	0b 	. 
	nop			;a0f3	00 	. 
	add a,d			;a0f4	82 	. 
	dec bc			;a0f5	0b 	. 
	inc c			;a0f6	0c 	. 
	ld d,000h		;a0f7	16 00 	. . 
	add a,d			;a0f9	82 	. 
	dec bc			;a0fa	0b 	. 
	inc c			;a0fb	0c 	. 
	rla			;a0fc	17 	. 
	nop			;a0fd	00 	. 
	add a,c			;a0fe	81 	. 
	inc d			;a0ff	14 	. 
	inc c			;a100	0c 	. 
	nop			;a101	00 	. 
	add a,h			;a102	84 	. 
	inc d			;a103	14 	. 
	nop			;a104	00 	. 
	nop			;a105	00 	. 
	ld a,(bc)			;a106	0a 	. 
	add hl,bc			;a107	09 	. 
	nop			;a108	00 	. 
	add a,c			;a109	81 	. 
	inc d			;a10a	14 	. 
	rrca			;a10b	0f 	. 
	nop			;a10c	00 	. 
	add a,c			;a10d	81 	. 
	ld a,(bc)			;a10e	0a 	. 
	dec b			;a10f	05 	. 
	nop			;a110	00 	. 
	add a,c			;a111	81 	. 
	inc d			;a112	14 	. 
	jr la115h		;a113	18 00 	. . 
la115h:
	add a,c			;a115	81 	. 
	inc d			;a116	14 	. 
	ld b,000h		;a117	06 00 	. . 
	add a,c			;a119	81 	. 
	ld a,(bc)			;a11a	0a 	. 
	inc de			;a11b	13 	. 
	nop			;a11c	00 	. 
	add a,c			;a11d	81 	. 
	dec d			;a11e	15 	. 
	ld c,069h		;a11f	0e 69 	. i 
	ld (bc),a			;a121	02 	. 
	dec d			;a122	15 	. 
	ld c,068h		;a123	0e 68 	. h 
	add a,c			;a125	81 	. 
	dec d			;a126	15 	. 
	nop			;a127	00 	. 
	ld a,a			;a128	7f 	 
	nop			;a129	00 	. 
	ld (bc),a			;a12a	02 	. 
	nop			;a12b	00 	. 
	add a,c			;a12c	81 	. 
	djnz la133h		;a12d	10 04 	. . 
	nop			;a12f	00 	. 
	add a,c			;a130	81 	. 
	djnz $+5		;a131	10 03 	. . 
la133h:
	nop			;a133	00 	. 
	add a,c			;a134	81 	. 
	djnz la14ch		;a135	10 15 	. . 
	nop			;a137	00 	. 
	add a,c			;a138	81 	. 
	dec d			;a139	15 	. 
	ld c,069h		;a13a	0e 69 	. i 
	ld (bc),a			;a13c	02 	. 
	dec d			;a13d	15 	. 
	ld c,068h		;a13e	0e 68 	. h 
	add a,c			;a140	81 	. 
	dec d			;a141	15 	. 
	nop			;a142	00 	. 
	ld d,000h		;a143	16 00 	. . 
	add a,c			;a145	81 	. 
	inc d			;a146	14 	. 
	inc b			;a147	04 	. 
	djnz $+31		;a148	10 1d 	. . 
	nop			;a14a	00 	. 
	add a,c			;a14b	81 	. 
la14ch:
	ld a,(bc)			;a14c	0a 	. 
	inc c			;a14d	0c 	. 
	nop			;a14e	00 	. 
	add a,c			;a14f	81 	. 
	inc d			;a150	14 	. 
	rrca			;a151	0f 	. 
	nop			;a152	00 	. 
	add a,c			;a153	81 	. 
	djnz la15bh		;a154	10 05 	. . 
	nop			;a156	00 	. 
	add a,c			;a157	81 	. 
	ld a,(bc)			;a158	0a 	. 
	add hl,de			;a159	19 	. 
	nop			;a15a	00 	. 
la15bh:
	add a,c			;a15b	81 	. 
	djnz la16dh		;a15c	10 0f 	. . 
	nop			;a15e	00 	. 
	add a,h			;a15f	84 	. 
	inc d			;a160	14 	. 
	nop			;a161	00 	. 
	nop			;a162	00 	. 
	ld a,(bc)			;a163	0a 	. 
	rla			;a164	17 	. 
	nop			;a165	00 	. 
	jr nz,la17dh		;a166	20 15 	  . 
	nop			;a168	00 	. 
	inc c			;a169	0c 	. 
	nop			;a16a	00 	. 
	add a,d			;a16b	82 	. 
	dec bc			;a16c	0b 	. 
la16dh:
	inc c			;a16d	0c 	. 
	inc bc			;a16e	03 	. 
	nop			;a16f	00 	. 
	adc a,c			;a170	89 	. 
	djnz la17dh		;a171	10 0a 	. . 
	nop			;a173	00 	. 
	djnz la176h		;a174	10 00 	. . 
la176h:
	ld a,(bc)			;a176	0a 	. 
	djnz la179h		;a177	10 00 	. . 
la179h:
	ld a,(bc)			;a179	0a 	. 
	rlca			;a17a	07 	. 
	nop			;a17b	00 	. 
	ld a,(bc)			;a17c	0a 	. 
la17dh:
	djnz $+8		;a17d	10 06 	. . 
	nop			;a17f	00 	. 
	adc a,d			;a180	8a 	. 
	inc d			;a181	14 	. 
	nop			;a182	00 	. 
	nop			;a183	00 	. 
	djnz la186h		;a184	10 00 	. . 
la186h:
	nop			;a186	00 	. 
	inc d			;a187	14 	. 
	nop			;a188	00 	. 
	nop			;a189	00 	. 
	djnz $+8		;a18a	10 06 	. . 
	nop			;a18c	00 	. 
	adc a,d			;a18d	8a 	. 
	inc d			;a18e	14 	. 
	nop			;a18f	00 	. 
	nop			;a190	00 	. 
	djnz la19dh		;a191	10 0a 	. . 
	nop			;a193	00 	. 
	inc d			;a194	14 	. 
	nop			;a195	00 	. 
	ld a,(bc)			;a196	0a 	. 
	djnz la19fh		;a197	10 06 	. . 
	nop			;a199	00 	. 
	adc a,d			;a19a	8a 	. 
	djnz la1a7h		;a19b	10 0a 	. . 
la19dh:
	nop			;a19d	00 	. 
	inc d			;a19e	14 	. 
la19fh:
	nop			;a19f	00 	. 
	nop			;a1a0	00 	. 
	inc d			;a1a1	14 	. 
	nop			;a1a2	00 	. 
	nop			;a1a3	00 	. 
	djnz la1ach		;a1a4	10 06 	. . 
	nop			;a1a6	00 	. 
la1a7h:
	adc a,d			;a1a7	8a 	. 
	djnz la1aah		;a1a8	10 00 	. . 
la1aah:
	nop			;a1aa	00 	. 
	inc d			;a1ab	14 	. 
la1ach:
	nop			;a1ac	00 	. 
	nop			;a1ad	00 	. 
	djnz la1b0h		;a1ae	10 00 	. . 
la1b0h:
	nop			;a1b0	00 	. 
	inc d			;a1b1	14 	. 
	ld b,000h		;a1b2	06 00 	. . 
	adc a,d			;a1b4	8a 	. 
	djnz la1b7h		;a1b5	10 00 	. . 
la1b7h:
	nop			;a1b7	00 	. 
	inc d			;a1b8	14 	. 
	nop			;a1b9	00 	. 
	nop			;a1ba	00 	. 
	djnz la1bdh		;a1bb	10 00 	. . 
la1bdh:
	nop			;a1bd	00 	. 
	inc d			;a1be	14 	. 
	ld b,000h		;a1bf	06 00 	. . 
	adc a,d			;a1c1	8a 	. 
	inc d			;a1c2	14 	. 
	nop			;a1c3	00 	. 
	nop			;a1c4	00 	. 
	djnz la1c7h		;a1c5	10 00 	. . 
la1c7h:
	nop			;a1c7	00 	. 
	djnz la1cah		;a1c8	10 00 	. . 
la1cah:
	nop			;a1ca	00 	. 
	inc d			;a1cb	14 	. 
	ld b,000h		;a1cc	06 00 	. . 
	adc a,d			;a1ce	8a 	. 
	inc d			;a1cf	14 	. 
	nop			;a1d0	00 	. 
	nop			;a1d1	00 	. 
	djnz la1d4h		;a1d2	10 00 	. . 
la1d4h:
	nop			;a1d4	00 	. 
	djnz la1d7h		;a1d5	10 00 	. . 
la1d7h:
	nop			;a1d7	00 	. 
	djnz la1dfh		;a1d8	10 05 	. . 
	nop			;a1da	00 	. 
	jr nz,la1f2h		;a1db	20 15 	  . 
	nop			;a1dd	00 	. 
	ld h,e			;a1de	63 	c 
la1dfh:
	nop			;a1df	00 	. 
	add a,c			;a1e0	81 	. 
	ld a,(bc)			;a1e1	0a 	. 
	dec b			;a1e2	05 	. 
	nop			;a1e3	00 	. 
	add a,c			;a1e4	81 	. 
	ld a,(bc)			;a1e5	0a 	. 
	ld (hl),000h		;a1e6	36 00 	6 . 
	jr nz,la1ffh		;a1e8	20 15 	  . 
	nop			;a1ea	00 	. 
	ld a,a			;a1eb	7f 	 
	nop			;a1ec	00 	. 
	ld hl,00900h		;a1ed	21 00 09 	! . . 
	dec d			;a1f0	15 	. 
	add a,c			;a1f1	81 	. 
la1f2h:
	ld l,c			;a1f2	69 	i 
	inc b			;a1f3	04 	. 
	dec d			;a1f4	15 	. 
	add a,c			;a1f5	81 	. 
	ld l,c			;a1f6	69 	i 
	ld a,(bc)			;a1f7	0a 	. 
	dec d			;a1f8	15 	. 
	add a,c			;a1f9	81 	. 
	ld l,b			;a1fa	68 	h 
	inc b			;a1fb	04 	. 
	dec d			;a1fc	15 	. 
	add a,d			;a1fd	82 	. 
	ld l,b			;a1fe	68 	h 
la1ffh:
	dec d			;a1ff	15 	. 
	nop			;a200	00 	. 
	ld a,a			;a201	7f 	 
	nop			;a202	00 	. 
	ld hl,02000h		;a203	21 00 20 	! .   
	dec d			;a206	15 	. 
	nop			;a207	00 	. 
	nop			;a208	00 	. 
	ld d,d			;a209	52 	R 
	nop			;a20a	00 	. 
	dec b			;a20b	05 	. 
	djnz la219h		;a20c	10 0b 	. . 
	nop			;a20e	00 	. 
	adc a,b			;a20f	88 	. 
	inc d			;a210	14 	. 
	ld (bc),a			;a211	02 	. 
	nop			;a212	00 	. 
	nop			;a213	00 	. 
	djnz la216h		;a214	10 00 	. . 
la216h:
	nop			;a216	00 	. 
	ld a,(bc)			;a217	0a 	. 
	rlca			;a218	07 	. 
la219h:
	nop			;a219	00 	. 
	ld (bc),a			;a21a	02 	. 
	inc d			;a21b	14 	. 
	inc bc			;a21c	03 	. 
	nop			;a21d	00 	. 
	add a,c			;a21e	81 	. 
	djnz la22ch		;a21f	10 0b 	. . 
	nop			;a221	00 	. 
	add a,c			;a222	81 	. 
	inc d			;a223	14 	. 
	inc bc			;a224	03 	. 
	nop			;a225	00 	. 
	adc a,b			;a226	88 	. 
	djnz la229h		;a227	10 00 	. . 
la229h:
	nop			;a229	00 	. 
	djnz la22ch		;a22a	10 00 	. . 
la22ch:
	djnz la22eh		;a22c	10 00 	. . 
la22eh:
	djnz la234h		;a22e	10 04 	. . 
	nop			;a230	00 	. 
	add a,c			;a231	81 	. 
	inc d			;a232	14 	. 
	inc bc			;a233	03 	. 
la234h:
	nop			;a234	00 	. 
	adc a,b			;a235	88 	. 
	djnz la238h		;a236	10 00 	. . 
la238h:
	nop			;a238	00 	. 
	djnz la23bh		;a239	10 00 	. . 
la23bh:
	djnz la23dh		;a23b	10 00 	. . 
la23dh:
	djnz $+4		;a23d	10 02 	. . 
	nop			;a23f	00 	. 
	jr nz,la257h		;a240	20 15 	  . 
	nop			;a242	00 	. 
	dec de			;a243	1b 	. 
	nop			;a244	00 	. 
	add a,d			;a245	82 	. 
	dec bc			;a246	0b 	. 
	inc c			;a247	0c 	. 
	djnz la24ah		;a248	10 00 	. . 
la24ah:
	add a,d			;a24a	82 	. 
	dec bc			;a24b	0b 	. 
	inc c			;a24c	0c 	. 
	ld (hl),c			;a24d	71 	q 
	nop			;a24e	00 	. 
	ld (bc),a			;a24f	02 	. 
	ld l,c			;a250	69 	i 
	ld c,015h		;a251	0e 15 	. . 
	ld (bc),a			;a253	02 	. 
	ld l,b			;a254	68 	h 
	ld c,015h		;a255	0e 15 	. . 
la257h:
	nop			;a257	00 	. 
	inc d			;a258	14 	. 
	nop			;a259	00 	. 
	add a,d			;a25a	82 	. 
	dec bc			;a25b	0b 	. 
	inc c			;a25c	0c 	. 
	inc e			;a25d	1c 	. 
	nop			;a25e	00 	. 
	add a,d			;a25f	82 	. 
	dec bc			;a260	0b 	. 
	inc c			;a261	0c 	. 
	ld e,a			;a262	5f 	_ 
	nop			;a263	00 	. 
	add a,c			;a264	81 	. 
	inc bc			;a265	03 	. 
	inc c			;a266	0c 	. 
	nop			;a267	00 	. 
	jr nz,la27fh		;a268	20 15 	  . 
	nop			;a26a	00 	. 
	ld a,h			;a26b	7c 	| 
	nop			;a26c	00 	. 
	inc b			;a26d	04 	. 
	inc d			;a26e	14 	. 
	ex af,af'			;a26f	08 	. 
	nop			;a270	00 	. 
	ex af,af'			;a271	08 	. 
	inc d			;a272	14 	. 
	inc b			;a273	04 	. 
	nop			;a274	00 	. 
	inc c			;a275	0c 	. 
	inc d			;a276	14 	. 
la277h:
	jr nz,la28eh		;a277	20 15 	  . 
la279h:
	nop			;a279	00 	. 
	ld h,b			;a27a	60 	` 
la27bh:
	nop			;a27b	00 	. 
	inc b			;a27c	04 	. 
la27dh:
	inc d			;a27d	14 	. 
	inc c			;a27e	0c 	. 
la27fh:
	nop			;a27f	00 	. 
	ex af,af'			;a280	08 	. 
	inc d			;a281	14 	. 
	ex af,af'			;a282	08 	. 
	nop			;a283	00 	. 
	dec bc			;a284	0b 	. 
	inc d			;a285	14 	. 
	dec b			;a286	05 	. 
	nop			;a287	00 	. 
	ld c,014h		;a288	0e 14 	. . 
	ld (bc),a			;a28a	02 	. 
	nop			;a28b	00 	. 
	jr nz,la2a3h		;a28c	20 15 	  . 
la28eh:
	nop			;a28e	00 	. 
	dec c			;a28f	0d 	. 
	nop			;a290	00 	. 
	inc bc			;a291	03 	. 
	inc d			;a292	14 	. 
	add hl,bc			;a293	09 	. 
	nop			;a294	00 	. 
	add a,d			;a295	82 	. 
	dec bc			;a296	0b 	. 
	inc c			;a297	0c 	. 
	inc b			;a298	04 	. 
	nop			;a299	00 	. 
	add a,c			;a29a	81 	. 
	inc d			;a29b	14 	. 
	rrca			;a29c	0f 	. 
	nop			;a29d	00 	. 
	add a,l			;a29e	85 	. 
	inc d			;a29f	14 	. 
	nop			;a2a0	00 	. 
	nop			;a2a1	00 	. 
	dec bc			;a2a2	0b 	. 
la2a3h:
	inc c			;a2a3	0c 	. 
	ex af,af'			;a2a4	08 	. 
la2a5h:
	nop			;a2a5	00 	. 
	add a,h			;a2a6	84 	. 
	dec bc			;a2a7	0b 	. 
	inc c			;a2a8	0c 	. 
	nop			;a2a9	00 	. 
	inc d			;a2aa	14 	. 
	rrca			;a2ab	0f 	. 
	nop			;a2ac	00 	. 
la2adh:
	add a,c			;a2ad	81 	. 
	inc d			;a2ae	14 	. 
	rrca			;a2af	0f 	. 
	nop			;a2b0	00 	. 
	add a,c			;a2b1	81 	. 
	inc d			;a2b2	14 	. 
	rrca			;a2b3	0f 	. 
	nop			;a2b4	00 	. 
	add a,c			;a2b5	81 	. 
	inc d			;a2b6	14 	. 
	rrca			;a2b7	0f 	. 
	nop			;a2b8	00 	. 
	add a,c			;a2b9	81 	. 
	inc d			;a2ba	14 	. 
	rrca			;a2bb	0f 	. 
	nop			;a2bc	00 	. 
	add a,c			;a2bd	81 	. 
	inc d			;a2be	14 	. 
	rrca			;a2bf	0f 	. 
	nop			;a2c0	00 	. 
	add a,c			;a2c1	81 	. 
	inc d			;a2c2	14 	. 
	jr nz,la2dah		;a2c3	20 15 	  . 
	nop			;a2c5	00 	. 
	ret c			;a2c6	d8 	. 
	and d			;a2c7	a2 	. 
	jp po,0eca2h		;a2c8	e2 a2 ec 	. . . 
	and d			;a2cb	a2 	. 
	or 0a2h		;a2cc	f6 a2 	. . 
	nop			;a2ce	00 	. 
	and e			;a2cf	a3 	. 
	ex af,af'			;a2d0	08 	. 
	and e			;a2d1	a3 	. 
	djnz la277h		;a2d2	10 a3 	. . 
	jr la279h		;a2d4	18 a3 	. . 
	jr nz,la27bh		;a2d6	20 a3 	  . 
	jr z,la27dh		;a2d8	28 a3 	( . 
la2dah:
	jr z,la27fh		;a2da	28 a3 	( . 
	adc a,c			;a2dc	89 	. 
	and e			;a2dd	a3 	. 
	xor 0a3h		;a2de	ee a3 	. . 
	ld b,b			;a2e0	40 	@ 
	and h			;a2e1	a4 	. 
	sbc a,b			;a2e2	98 	. 
	and h			;a2e3	a4 	. 
	sbc a,b			;a2e4	98 	. 
	and h			;a2e5	a4 	. 
	rra			;a2e6	1f 	. 
	and l			;a2e7	a5 	. 
	ld h,(hl)			;a2e8	66 	f 
	and l			;a2e9	a5 	. 
	sub 0a5h		;a2ea	d6 a5 	. . 
	inc a			;a2ec	3c 	< 
	and (hl)			;a2ed	a6 	. 
	cp (hl)			;a2ee	be 	. 
	and (hl)			;a2ef	a6 	. 
	ld b,a			;a2f0	47 	G 
	and a			;a2f1	a7 	. 
	jp nz,01fa7h		;a2f2	c2 a7 1f 	. . . 
	xor b			;a2f5	a8 	. 
	ld c,(hl)			;a2f6	4e 	N 
	xor b			;a2f7	a8 	. 
	ld c,(hl)			;a2f8	4e 	N 
	xor b			;a2f9	a8 	. 
	xor e			;a2fa	ab 	. 
	xor b			;a2fb	a8 	. 
	ld a,(de)			;a2fc	1a 	. 
	xor c			;a2fd	a9 	. 
	add a,l			;a2fe	85 	. 
	xor c			;a2ff	a9 	. 
	jr z,la2a5h		;a300	28 a3 	( . 
	sbc a,b			;a302	98 	. 
	and h			;a303	a4 	. 
	inc a			;a304	3c 	< 
	and (hl)			;a305	a6 	. 
	ld c,(hl)			;a306	4e 	N 
	xor b			;a307	a8 	. 
	jr z,la2adh		;a308	28 a3 	( . 
	sbc a,b			;a30a	98 	. 
	and h			;a30b	a4 	. 
	cp (hl)			;a30c	be 	. 
	and (hl)			;a30d	a6 	. 
	ld c,(hl)			;a30e	4e 	N 
	xor b			;a30f	a8 	. 
	adc a,c			;a310	89 	. 
	and e			;a311	a3 	. 
	rra			;a312	1f 	. 
	and l			;a313	a5 	. 
	ld b,a			;a314	47 	G 
	and a			;a315	a7 	. 
	xor e			;a316	ab 	. 
	xor b			;a317	a8 	. 
	xor 0a3h		;a318	ee a3 	. . 
	ld h,(hl)			;a31a	66 	f 
	and l			;a31b	a5 	. 
	jp nz,01aa7h		;a31c	c2 a7 1a 	. . . 
	xor c			;a31f	a9 	. 
	ld b,b			;a320	40 	@ 
	and h			;a321	a4 	. 
	sub 0a5h		;a322	d6 a5 	. . 
	rra			;a324	1f 	. 
	xor b			;a325	a8 	. 
	add a,l			;a326	85 	. 
	xor c			;a327	a9 	. 
	ld de,00ee1h		;a328	11 e1 0e 	. . . 
	push hl			;a32b	e5 	. 
	ld (bc),a			;a32c	02 	. 
	pop hl			;a32d	e1 	. 
	ld c,000h		;a32e	0e 00 	. . 
	ld (bc),a			;a330	02 	. 
	pop hl			;a331	e1 	. 
	rrca			;a332	0f 	. 
	nop			;a333	00 	. 
	add a,c			;a334	81 	. 
	pop hl			;a335	e1 	. 
	rrca			;a336	0f 	. 
	nop			;a337	00 	. 
	add a,c			;a338	81 	. 
	pop hl			;a339	e1 	. 
	ld b,000h		;a33a	06 00 	. . 
	add a,h			;a33c	84 	. 
	djnz la349h		;a33d	10 0a 	. . 
	ld a,(bc)			;a33f	0a 	. 
	djnz la344h		;a340	10 02 	. . 
	ld a,(bc)			;a342	0a 	. 
	ld (bc),a			;a343	02 	. 
la344h:
	djnz la348h		;a344	10 02 	. . 
	pop hl			;a346	e1 	. 
	dec b			;a347	05 	. 
la348h:
	nop			;a348	00 	. 
la349h:
	ld (bc),a			;a349	02 	. 
	djnz la34eh		;a34a	10 02 	. . 
	nop			;a34c	00 	. 
	add a,l			;a34d	85 	. 
la34eh:
	djnz la350h		;a34e	10 00 	. . 
la350h:
	nop			;a350	00 	. 
	djnz la353h		;a351	10 00 	. . 
la353h:
	ld (bc),a			;a353	02 	. 
	pop hl			;a354	e1 	. 
	inc b			;a355	04 	. 
	nop			;a356	00 	. 
	adc a,d			;a357	8a 	. 
	djnz la35ah		;a358	10 00 	. . 
la35ah:
	djnz la35ch		;a35a	10 00 	. . 
la35ch:
	nop			;a35c	00 	. 
	djnz la35fh		;a35d	10 00 	. . 
la35fh:
	nop			;a35f	00 	. 
	djnz la362h		;a360	10 00 	. . 
la362h:
	ld (bc),a			;a362	02 	. 
	pop hl			;a363	e1 	. 
	inc bc			;a364	03 	. 
	nop			;a365	00 	. 
	add a,c			;a366	81 	. 
	djnz la373h		;a367	10 0a 	. . 
	nop			;a369	00 	. 
	ld (bc),a			;a36a	02 	. 
	pop hl			;a36b	e1 	. 
	ld (bc),a			;a36c	02 	. 
	nop			;a36d	00 	. 
	add a,c			;a36e	81 	. 
	djnz $+13		;a36f	10 0b 	. . 
	nop			;a371	00 	. 
	ld (bc),a			;a372	02 	. 
la373h:
	pop hl			;a373	e1 	. 
	ld (bc),a			;a374	02 	. 
	nop			;a375	00 	. 
	add a,c			;a376	81 	. 
	djnz la37dh		;a377	10 04 	. . 
	nop			;a379	00 	. 
	ld (bc),a			;a37a	02 	. 
	and 081h		;a37b	e6 81 	. . 
la37dh:
	nop			;a37d	00 	. 
	ld (bc),a			;a37e	02 	. 
	and 002h		;a37f	e6 02 	. . 
	nop			;a381	00 	. 
	inc bc			;a382	03 	. 
	pop hl			;a383	e1 	. 
	add a,c			;a384	81 	. 
	ex (sp),hl			;a385	e3 	. 
	dec c			;a386	0d 	. 
	pop hl			;a387	e1 	. 
	nop			;a388	00 	. 
	ld de,004e1h		;a389	11 e1 04 	. . . 
	nop			;a38c	00 	. 
	add a,c			;a38d	81 	. 
	call po,00004h		;a38e	e4 04 00 	. . . 
	add a,c			;a391	81 	. 
	call po,00004h		;a392	e4 04 00 	. . . 
	ld (bc),a			;a395	02 	. 
	pop hl			;a396	e1 	. 
	inc b			;a397	04 	. 
	nop			;a398	00 	. 
	add a,c			;a399	81 	. 
	call po,00004h		;a39a	e4 04 00 	. . . 
	add a,c			;a39d	81 	. 
	call po,00004h		;a39e	e4 04 00 	. . . 
	add a,c			;a3a1	81 	. 
	pop hl			;a3a2	e1 	. 
	dec b			;a3a3	05 	. 
	nop			;a3a4	00 	. 
	add a,c			;a3a5	81 	. 
	call po,00004h		;a3a6	e4 04 00 	. . . 
	add a,c			;a3a9	81 	. 
	call po,00004h		;a3aa	e4 04 00 	. . . 
	add a,c			;a3ad	81 	. 
	pop hl			;a3ae	e1 	. 
	dec b			;a3af	05 	. 
	nop			;a3b0	00 	. 
	add a,c			;a3b1	81 	. 
	call po,00004h		;a3b2	e4 04 00 	. . . 
	add a,c			;a3b5	81 	. 
	call po,00005h		;a3b6	e4 05 00 	. . . 
	add a,c			;a3b9	81 	. 
	pop hl			;a3ba	e1 	. 
	ld (bc),a			;a3bb	02 	. 
	djnz $+4		;a3bc	10 02 	. . 
	nop			;a3be	00 	. 
	ld b,0e1h		;a3bf	06 e1 	. . 
	dec b			;a3c1	05 	. 
	nop			;a3c2	00 	. 
	add a,c			;a3c3	81 	. 
	pop hl			;a3c4	e1 	. 
	dec bc			;a3c5	0b 	. 
	nop			;a3c6	00 	. 
	dec b			;a3c7	05 	. 
	pop hl			;a3c8	e1 	. 
	add a,c			;a3c9	81 	. 
	nop			;a3ca	00 	. 
	ld (bc),a			;a3cb	02 	. 
	djnz $+13		;a3cc	10 0b 	. . 
	nop			;a3ce	00 	. 
	ld (bc),a			;a3cf	02 	. 
	pop hl			;a3d0	e1 	. 
	ld c,000h		;a3d1	0e 00 	. . 
	ld (bc),a			;a3d3	02 	. 
	pop hl			;a3d4	e1 	. 
	ld (bc),a			;a3d5	02 	. 
	nop			;a3d6	00 	. 
	ld (bc),a			;a3d7	02 	. 
	djnz $+13		;a3d8	10 0b 	. . 
	nop			;a3da	00 	. 
	add a,c			;a3db	81 	. 
	pop hl			;a3dc	e1 	. 
	inc b			;a3dd	04 	. 
	nop			;a3de	00 	. 
	add a,c			;a3df	81 	. 
	and 005h		;a3e0	e6 05 	. . 
	nop			;a3e2	00 	. 
	add a,c			;a3e3	81 	. 
	and 004h		;a3e4	e6 04 	. . 
	nop			;a3e6	00 	. 
	rlca			;a3e7	07 	. 
	pop hl			;a3e8	e1 	. 
	ld (bc),a			;a3e9	02 	. 
	nop			;a3ea	00 	. 
	rlca			;a3eb	07 	. 
	pop hl			;a3ec	e1 	. 
	nop			;a3ed	00 	. 
	ld de,00ee1h		;a3ee	11 e1 0e 	. . . 
	nop			;a3f1	00 	. 
	ld (bc),a			;a3f2	02 	. 
	pop hl			;a3f3	e1 	. 
	ld c,000h		;a3f4	0e 00 	. . 
	ld (bc),a			;a3f6	02 	. 
	pop hl			;a3f7	e1 	. 
	ld c,000h		;a3f8	0e 00 	. . 
	add a,c			;a3fa	81 	. 
	pop hl			;a3fb	e1 	. 
	dec b			;a3fc	05 	. 
	nop			;a3fd	00 	. 
	inc bc			;a3fe	03 	. 
	pop hl			;a3ff	e1 	. 
	ld (bc),a			;a400	02 	. 
	nop			;a401	00 	. 
	inc bc			;a402	03 	. 
	pop hl			;a403	e1 	. 
	ld (bc),a			;a404	02 	. 
	nop			;a405	00 	. 
	add a,c			;a406	81 	. 
	pop hl			;a407	e1 	. 
	dec b			;a408	05 	. 
	nop			;a409	00 	. 
	adc a,b			;a40a	88 	. 
	pop hl			;a40b	e1 	. 
	ld a,(bc)			;a40c	0a 	. 
	pop hl			;a40d	e1 	. 
	nop			;a40e	00 	. 
	nop			;a40f	00 	. 
	pop hl			;a410	e1 	. 
	ld a,(bc)			;a411	0a 	. 
	pop hl			;a412	e1 	. 
	ld (bc),a			;a413	02 	. 
	nop			;a414	00 	. 
	rlca			;a415	07 	. 
	pop hl			;a416	e1 	. 
	add a,c			;a417	81 	. 
	ld a,(bc)			;a418	0a 	. 
	inc b			;a419	04 	. 
	pop hl			;a41a	e1 	. 
	add a,c			;a41b	81 	. 
	ld a,(bc)			;a41c	0a 	. 
	dec b			;a41d	05 	. 
	pop hl			;a41e	e1 	. 
	rlca			;a41f	07 	. 
	nop			;a420	00 	. 
	add a,c			;a421	81 	. 
	pop hl			;a422	e1 	. 
	ld b,000h		;a423	06 00 	. . 
	ld (bc),a			;a425	02 	. 
	pop hl			;a426	e1 	. 
	rlca			;a427	07 	. 
	nop			;a428	00 	. 
	add a,c			;a429	81 	. 
	pop hl			;a42a	e1 	. 
	ld b,000h		;a42b	06 00 	. . 
	add a,c			;a42d	81 	. 
	pop hl			;a42e	e1 	. 
	rrca			;a42f	0f 	. 
	nop			;a430	00 	. 
	add a,c			;a431	81 	. 
	pop hl			;a432	e1 	. 
	dec b			;a433	05 	. 
	nop			;a434	00 	. 
	rlca			;a435	07 	. 
	djnz la43bh		;a436	10 03 	. . 
	nop			;a438	00 	. 
	add hl,bc			;a439	09 	. 
	pop hl			;a43a	e1 	. 
la43bh:
	add a,c			;a43b	81 	. 
	ex (sp),hl			;a43c	e3 	. 
	rlca			;a43d	07 	. 
	pop hl			;a43e	e1 	. 
	nop			;a43f	00 	. 
	ld de,00ee1h		;a440	11 e1 0e 	. . . 
	nop			;a443	00 	. 
	ld (bc),a			;a444	02 	. 
	pop hl			;a445	e1 	. 
	add a,c			;a446	81 	. 
	ld b,00dh		;a447	06 0d 	. . 
	nop			;a449	00 	. 
	ld (bc),a			;a44a	02 	. 
	pop hl			;a44b	e1 	. 
	inc bc			;a44c	03 	. 
	nop			;a44d	00 	. 
	add a,d			;a44e	82 	. 
	dec b			;a44f	05 	. 
	inc b			;a450	04 	. 
	add hl,bc			;a451	09 	. 
	nop			;a452	00 	. 
	ld (bc),a			;a453	02 	. 
	pop hl			;a454	e1 	. 
	ld c,000h		;a455	0e 00 	. . 
	ld (bc),a			;a457	02 	. 
	pop hl			;a458	e1 	. 
	ld c,000h		;a459	0e 00 	. . 
	ld (bc),a			;a45b	02 	. 
	pop hl			;a45c	e1 	. 
	add a,c			;a45d	81 	. 
	nop			;a45e	00 	. 
	rlca			;a45f	07 	. 
	djnz la468h		;a460	10 06 	. . 
	nop			;a462	00 	. 
	ld (bc),a			;a463	02 	. 
	pop hl			;a464	e1 	. 
	add a,c			;a465	81 	. 
	nop			;a466	00 	. 
	rlca			;a467	07 	. 
la468h:
	djnz la46dh		;a468	10 03 	. . 
	nop			;a46a	00 	. 
	dec b			;a46b	05 	. 
	pop hl			;a46c	e1 	. 
la46dh:
	add a,c			;a46d	81 	. 
	nop			;a46e	00 	. 
	ld (bc),a			;a46f	02 	. 
	djnz $+5		;a470	10 03 	. . 
	nop			;a472	00 	. 
	ld (bc),a			;a473	02 	. 
	djnz la479h		;a474	10 03 	. . 
	nop			;a476	00 	. 
	inc bc			;a477	03 	. 
	push hl			;a478	e5 	. 
la479h:
	ld (bc),a			;a479	02 	. 
	pop hl			;a47a	e1 	. 
	add a,c			;a47b	81 	. 
	nop			;a47c	00 	. 
	ld (bc),a			;a47d	02 	. 
	djnz $+5		;a47e	10 03 	. . 
	nop			;a480	00 	. 
	ld (bc),a			;a481	02 	. 
	djnz la48ah		;a482	10 06 	. . 
	nop			;a484	00 	. 
	ld (bc),a			;a485	02 	. 
	pop hl			;a486	e1 	. 
	add a,c			;a487	81 	. 
	and 002h		;a488	e6 02 	. . 
la48ah:
	djnz $+5		;a48a	10 03 	. . 
	nop			;a48c	00 	. 
	ld (bc),a			;a48d	02 	. 
	djnz la496h		;a48e	10 06 	. . 
	nop			;a490	00 	. 
	ld c,0e1h		;a491	0e e1 	. . 
	add a,c			;a493	81 	. 
	ex (sp),hl			;a494	e3 	. 
	ld (bc),a			;a495	02 	. 
la496h:
	pop hl			;a496	e1 	. 
	nop			;a497	00 	. 
	ld (bc),a			;a498	02 	. 
	pop hl			;a499	e1 	. 
	add a,c			;a49a	81 	. 
	ex (sp),hl			;a49b	e3 	. 
	ld c,0e1h		;a49c	0e e1 	. . 
	add a,d			;a49e	82 	. 
	nop			;a49f	00 	. 
	jp po,0000ch		;a4a0	e2 0c 00 	. . . 
	ld (bc),a			;a4a3	02 	. 
	pop hl			;a4a4	e1 	. 
	ld c,000h		;a4a5	0e 00 	. . 
	ld (bc),a			;a4a7	02 	. 
	pop hl			;a4a8	e1 	. 
	dec b			;a4a9	05 	. 
	djnz $+5		;a4aa	10 03 	. . 
	nop			;a4ac	00 	. 
	ld (bc),a			;a4ad	02 	. 
	djnz la4b4h		;a4ae	10 04 	. . 
	nop			;a4b0	00 	. 
	ld (bc),a			;a4b1	02 	. 
	pop hl			;a4b2	e1 	. 
	dec b			;a4b3	05 	. 
la4b4h:
	djnz la4b8h		;a4b4	10 02 	. . 
	nop			;a4b6	00 	. 
	inc b			;a4b7	04 	. 
la4b8h:
	djnz la4bdh		;a4b8	10 03 	. . 
	nop			;a4ba	00 	. 
	ld (bc),a			;a4bb	02 	. 
	pop hl			;a4bc	e1 	. 
la4bdh:
	ld (bc),a			;a4bd	02 	. 
	nop			;a4be	00 	. 
	add a,c			;a4bf	81 	. 
	djnz $+5		;a4c0	10 03 	. . 
	nop			;a4c2	00 	. 
	add a,c			;a4c3	81 	. 
	djnz la4cah		;a4c4	10 04 	. . 
	nop			;a4c6	00 	. 
	add a,c			;a4c7	81 	. 
	djnz la4cch		;a4c8	10 02 	. . 
la4cah:
	nop			;a4ca	00 	. 
	ld (bc),a			;a4cb	02 	. 
la4cch:
	pop hl			;a4cc	e1 	. 
	ld (bc),a			;a4cd	02 	. 
	nop			;a4ce	00 	. 
	add a,c			;a4cf	81 	. 
	djnz $+5		;a4d0	10 03 	. . 
	nop			;a4d2	00 	. 
	add a,(hl)			;a4d3	86 	. 
	djnz la4d6h		;a4d4	10 00 	. . 
la4d6h:
	ld a,(bc)			;a4d6	0a 	. 
	ld a,(bc)			;a4d7	0a 	. 
	nop			;a4d8	00 	. 
	djnz la4ddh		;a4d9	10 02 	. . 
	nop			;a4db	00 	. 
	ld (bc),a			;a4dc	02 	. 
la4ddh:
	pop hl			;a4dd	e1 	. 
	ld (bc),a			;a4de	02 	. 
	nop			;a4df	00 	. 
	add a,c			;a4e0	81 	. 
	djnz la4e6h		;a4e1	10 03 	. . 
	nop			;a4e3	00 	. 
	ld b,010h		;a4e4	06 10 	. . 
la4e6h:
	ld (bc),a			;a4e6	02 	. 
	nop			;a4e7	00 	. 
	ld (bc),a			;a4e8	02 	. 
	pop hl			;a4e9	e1 	. 
	ld (bc),a			;a4ea	02 	. 
	nop			;a4eb	00 	. 
	add a,c			;a4ec	81 	. 
	djnz $+5		;a4ed	10 03 	. . 
	nop			;a4ef	00 	. 
	add a,c			;a4f0	81 	. 
	djnz la4f7h		;a4f1	10 04 	. . 
	nop			;a4f3	00 	. 
	add a,c			;a4f4	81 	. 
	djnz la4f9h		;a4f5	10 02 	. . 
la4f7h:
	nop			;a4f7	00 	. 
	ld (bc),a			;a4f8	02 	. 
la4f9h:
	pop hl			;a4f9	e1 	. 
	ld (bc),a			;a4fa	02 	. 
	nop			;a4fb	00 	. 
	add a,c			;a4fc	81 	. 
	djnz $+5		;a4fd	10 03 	. . 
	nop			;a4ff	00 	. 
	add a,c			;a500	81 	. 
	djnz la507h		;a501	10 04 	. . 
	nop			;a503	00 	. 
	add a,c			;a504	81 	. 
	djnz la509h		;a505	10 02 	. . 
la507h:
	nop			;a507	00 	. 
	ld (bc),a			;a508	02 	. 
la509h:
	pop hl			;a509	e1 	. 
	ld (bc),a			;a50a	02 	. 
la50bh:
	nop			;a50b	00 	. 
	add a,c			;a50c	81 	. 
	djnz $+5		;a50d	10 03 	. . 
	nop			;a50f	00 	. 
	add a,c			;a510	81 	. 
	djnz la517h		;a511	10 04 	. . 
	nop			;a513	00 	. 
	add a,c			;a514	81 	. 
	djnz $+4		;a515	10 02 	. . 
la517h:
	nop			;a517	00 	. 
	ld c,0e1h		;a518	0e e1 	. . 
	add a,c			;a51a	81 	. 
	ex (sp),hl			;a51b	e3 	. 
	ld (bc),a			;a51c	02 	. 
	pop hl			;a51d	e1 	. 
	nop			;a51e	00 	. 
	rlca			;a51f	07 	. 
	pop hl			;a520	e1 	. 
	ld (bc),a			;a521	02 	. 
la522h:
	nop			;a522	00 	. 
	ex af,af'			;a523	08 	. 
	pop hl			;a524	e1 	. 
	ld c,000h		;a525	0e 00 	. . 
	ld (bc),a			;a527	02 	. 
	pop hl			;a528	e1 	. 
	ld c,000h		;a529	0e 00 	. . 
	ld (bc),a			;a52b	02 	. 
	pop hl			;a52c	e1 	. 
	ld c,000h		;a52d	0e 00 	. . 
	ld (bc),a			;a52f	02 	. 
	pop hl			;a530	e1 	. 
	ld (bc),a			;a531	02 	. 
	djnz la540h		;a532	10 0c 	. . 
	nop			;a534	00 	. 
	ld (bc),a			;a535	02 	. 
	pop hl			;a536	e1 	. 
	ld c,000h		;a537	0e 00 	. . 
	ld (bc),a			;a539	02 	. 
	pop hl			;a53a	e1 	. 
	inc bc			;a53b	03 	. 
	nop			;a53c	00 	. 
	add a,c			;a53d	81 	. 
	djnz la54ah		;a53e	10 0a 	. . 
la540h:
	nop			;a540	00 	. 
	ld (bc),a			;a541	02 	. 
	pop hl			;a542	e1 	. 
	inc b			;a543	04 	. 
	nop			;a544	00 	. 
	add a,c			;a545	81 	. 
	djnz la551h		;a546	10 09 	. . 
	nop			;a548	00 	. 
	ld (bc),a			;a549	02 	. 
la54ah:
	pop hl			;a54a	e1 	. 
	dec b			;a54b	05 	. 
	nop			;a54c	00 	. 
	add a,c			;a54d	81 	. 
	djnz $+10		;a54e	10 08 	. . 
	nop			;a550	00 	. 
la551h:
	ld (bc),a			;a551	02 	. 
	pop hl			;a552	e1 	. 
	ld c,000h		;a553	0e 00 	. . 
	ld (bc),a			;a555	02 	. 
	pop hl			;a556	e1 	. 
	ld b,0e6h		;a557	06 e6 	. . 
	inc bc			;a559	03 	. 
	nop			;a55a	00 	. 
	inc b			;a55b	04 	. 
	and 081h		;a55c	e6 81 	. . 
	ex (sp),hl			;a55e	e3 	. 
	rrca			;a55f	0f 	. 
	pop hl			;a560	e1 	. 
	add a,c			;a561	81 	. 
	ex (sp),hl			;a562	e3 	. 
	add a,c			;a563	81 	. 
	pop hl			;a564	e1 	. 
	nop			;a565	00 	. 
	ex af,af'			;a566	08 	. 
	pop hl			;a567	e1 	. 
	add a,c			;a568	81 	. 
	ex (sp),hl			;a569	e3 	. 
	ex af,af'			;a56a	08 	. 
	pop hl			;a56b	e1 	. 
	rlca			;a56c	07 	. 
	nop			;a56d	00 	. 
	add a,d			;a56e	82 	. 
	jp po,00500h		;a56f	e2 00 05 	. . . 
	djnz la576h		;a572	10 02 	. . 
	pop hl			;a574	e1 	. 
	add a,c			;a575	81 	. 
la576h:
	ld a,(bc)			;a576	0a 	. 
	ld b,000h		;a577	06 00 	. . 
	add a,d			;a579	82 	. 
	jp po,00500h		;a57a	e2 00 05 	. . . 
	djnz la585h		;a57d	10 06 	. . 
	pop hl			;a57f	e1 	. 
	ld (bc),a			;a580	02 	. 
	nop			;a581	00 	. 
	ld (bc),a			;a582	02 	. 
	pop hl			;a583	e1 	. 
	add a,c			;a584	81 	. 
la585h:
	nop			;a585	00 	. 
	dec b			;a586	05 	. 
	djnz la50bh		;a587	10 82 	. . 
	nop			;a589	00 	. 
	pop hl			;a58a	e1 	. 
	add hl,bc			;a58b	09 	. 
la58ch:
	nop			;a58c	00 	. 
	dec b			;a58d	05 	. 
	djnz $-124		;a58e	10 82 	. . 
	nop			;a590	00 	. 
	pop hl			;a591	e1 	. 
	add hl,bc			;a592	09 	. 
	nop			;a593	00 	. 
	inc bc			;a594	03 	. 
	djnz la59bh		;a595	10 04 	. . 
	pop hl			;a597	e1 	. 
	dec b			;a598	05 	. 
	nop			;a599	00 	. 
	ld (bc),a			;a59a	02 	. 
la59bh:
	pop hl			;a59b	e1 	. 
	ld (bc),a			;a59c	02 	. 
	nop			;a59d	00 	. 
	ld (bc),a			;a59e	02 	. 
	djnz la522h		;a59f	10 81 	. . 
	pop hl			;a5a1	e1 	. 
	ld (bc),a			;a5a2	02 	. 
	nop			;a5a3	00 	. 
	ld (bc),a			;a5a4	02 	. 
	pop hl			;a5a5	e1 	. 
	add hl,bc			;a5a6	09 	. 
	nop			;a5a7	00 	. 
	add a,d			;a5a8	82 	. 
	djnz la58ch		;a5a9	10 e1 	. . 
	inc bc			;a5ab	03 	. 
	nop			;a5ac	00 	. 
	ld (bc),a			;a5ad	02 	. 
	pop hl			;a5ae	e1 	. 
	add hl,bc			;a5af	09 	. 
	nop			;a5b0	00 	. 
	add a,c			;a5b1	81 	. 
	pop hl			;a5b2	e1 	. 
	inc b			;a5b3	04 	. 
	nop			;a5b4	00 	. 
	ld (bc),a			;a5b5	02 	. 
	pop hl			;a5b6	e1 	. 
	inc b			;a5b7	04 	. 
	nop			;a5b8	00 	. 
	ld (bc),a			;a5b9	02 	. 
	pop hl			;a5ba	e1 	. 
	rlca			;a5bb	07 	. 
	nop			;a5bc	00 	. 
	add a,e			;a5bd	83 	. 
	djnz la5c0h		;a5be	10 00 	. . 
la5c0h:
	pop hl			;a5c0	e1 	. 
	inc b			;a5c1	04 	. 
	nop			;a5c2	00 	. 
	add a,c			;a5c3	81 	. 
	djnz la5ceh		;a5c4	10 08 	. . 
	nop			;a5c6	00 	. 
	add a,d			;a5c7	82 	. 
	djnz la5cah		;a5c8	10 00 	. . 
la5cah:
	ex af,af'			;a5ca	08 	. 
	pop hl			;a5cb	e1 	. 
	add a,(hl)			;a5cc	86 	. 
	ex (sp),hl			;a5cd	e3 	. 
la5ceh:
	pop hl			;a5ce	e1 	. 
	pop hl			;a5cf	e1 	. 
	ex af,af'			;a5d0	08 	. 
	pop hl			;a5d1	e1 	. 
	ex af,af'			;a5d2	08 	. 
	ld (bc),a			;a5d3	02 	. 
	pop hl			;a5d4	e1 	. 
	nop			;a5d5	00 	. 
	dec c			;a5d6	0d 	. 
	pop hl			;a5d7	e1 	. 
	add a,c			;a5d8	81 	. 
	ex (sp),hl			;a5d9	e3 	. 
	inc bc			;a5da	03 	. 
	pop hl			;a5db	e1 	. 
	inc b			;a5dc	04 	. 
	nop			;a5dd	00 	. 
	ld b,010h		;a5de	06 10 	. . 
	ld (bc),a			;a5e0	02 	. 
	nop			;a5e1	00 	. 
	add a,d			;a5e2	82 	. 
	jp po,00200h		;a5e3	e2 00 02 	. . . 
	pop hl			;a5e6	e1 	. 
	inc b			;a5e7	04 	. 
	nop			;a5e8	00 	. 
	ld b,010h		;a5e9	06 10 	. . 
	ld (bc),a			;a5eb	02 	. 
	nop			;a5ec	00 	. 
	add a,e			;a5ed	83 	. 
	jp po,0e100h		;a5ee	e2 00 e1 	. . . 
	dec b			;a5f1	05 	. 
	nop			;a5f2	00 	. 
	ld b,010h		;a5f3	06 10 	. . 
	ld (bc),a			;a5f5	02 	. 
	nop			;a5f6	00 	. 
	add a,e			;a5f7	83 	. 
	jp po,0e100h		;a5f8	e2 00 e1 	. . . 
	dec b			;a5fb	05 	. 
	nop			;a5fc	00 	. 
	ld b,010h		;a5fd	06 10 	. . 
	ld (bc),a			;a5ff	02 	. 
	nop			;a600	00 	. 
	add a,d			;a601	82 	. 
	jp po,00e00h		;a602	e2 00 0e 	. . . 
	pop hl			;a605	e1 	. 
	add a,c			;a606	81 	. 
	ex (sp),hl			;a607	e3 	. 
	rrca			;a608	0f 	. 
	pop hl			;a609	e1 	. 
	add a,c			;a60a	81 	. 
	jp po,0e103h		;a60b	e2 03 e1 	. . . 
	ld b,000h		;a60e	06 00 	. . 
	add a,d			;a610	82 	. 
	pop hl			;a611	e1 	. 
	ld (bc),a			;a612	02 	. 
	inc b			;a613	04 	. 
	nop			;a614	00 	. 
	add a,d			;a615	82 	. 
	jp po,00200h		;a616	e2 00 02 	. . . 
	pop hl			;a619	e1 	. 
	dec b			;a61a	05 	. 
	nop			;a61b	00 	. 
	add a,d			;a61c	82 	. 
	inc bc			;a61d	03 	. 
	pop hl			;a61e	e1 	. 
	dec b			;a61f	05 	. 
	nop			;a620	00 	. 
	add a,e			;a621	83 	. 
	jp po,0e100h		;a622	e2 00 e1 	. . . 
	ld b,000h		;a625	06 00 	. . 
	add a,d			;a627	82 	. 
	inc bc			;a628	03 	. 
	pop hl			;a629	e1 	. 
	dec b			;a62a	05 	. 
	nop			;a62b	00 	. 
	add a,e			;a62c	83 	. 
	jp po,0e100h		;a62d	e2 00 e1 	. . . 
	rlca			;a630	07 	. 
	nop			;a631	00 	. 
	add a,c			;a632	81 	. 
	pop hl			;a633	e1 	. 
	dec b			;a634	05 	. 
	nop			;a635	00 	. 
	add a,d			;a636	82 	. 
	jp po,01100h		;a637	e2 00 11 	. . . 
	pop hl			;a63a	e1 	. 
	nop			;a63b	00 	. 
	add a,c			;a63c	81 	. 
	rst 38h			;a63d	ff 	. 
	add hl,bc			;a63e	09 	. 
	rst 20h			;a63f	e7 	. 
	add a,c			;a640	81 	. 
	rst 28h			;a641	ef 	. 
	dec b			;a642	05 	. 
	ret p			;a643	f0 	. 
	add a,c			;a644	81 	. 
	rst 38h			;a645	ff 	. 
	add hl,bc			;a646	09 	. 
	rst 20h			;a647	e7 	. 
	ld b,0f1h		;a648	06 f1 	. . 
	add a,c			;a64a	81 	. 
	rst 38h			;a64b	ff 	. 
	ld b,0e7h		;a64c	06 e7 	. . 
	add a,e			;a64e	83 	. 
	jp (hl)			;a64f	e9 	. 
	jp pe,004e7h		;a650	ea e7 04 	. . . 
	ret pe			;a653	e8 	. 
	add a,e			;a654	83 	. 
	ex de,hl			;a655	eb 	. 
	call pe,006ffh		;a656	ec ff 06 	. . . 
	rst 20h			;a659	e7 	. 
	add a,e			;a65a	83 	. 
	defb 0edh;next byte illegal after ed		;a65b	ed 	. 
	xor 0e7h		;a65c	ee e7 	. . 
	inc b			;a65e	04 	. 
	ret pe			;a65f	e8 	. 
	add a,e			;a660	83 	. 
	defb 0edh;next byte illegal after ed		;a661	ed 	. 
	xor 0ffh		;a662	ee ff 	. . 
	ld b,0e7h		;a664	06 e7 	. . 
	add a,e			;a666	83 	. 
	defb 0edh;next byte illegal after ed		;a667	ed 	. 
	xor 0efh		;a668	ee ef 	. . 
	inc b			;a66a	04 	. 
	ret p			;a66b	f0 	. 
	add a,e			;a66c	83 	. 
	defb 0edh;next byte illegal after ed		;a66d	ed 	. 
	xor 0ffh		;a66e	ee ff 	. . 
	ld b,0e7h		;a670	06 e7 	. . 
	add a,d			;a672	82 	. 
	defb 0edh;next byte illegal after ed		;a673	ed 	. 
	xor 005h		;a674	ee 05 	. . 
	pop af			;a676	f1 	. 
	add a,e			;a677	83 	. 
	defb 0edh;next byte illegal after ed		;a678	ed 	. 
	xor 0ffh		;a679	ee ff 	. . 
	ld b,0e7h		;a67b	06 e7 	. . 
	adc a,d			;a67d	8a 	. 
	defb 0edh;next byte illegal after ed		;a67e	ed 	. 
	xor 0e8h		;a67f	ee e8 	. . 
	jp p,0f4f3h		;a681	f2 f3 f4 	. . . 
	ei			;a684	fb 	. 
	call m,0fffdh		;a685	fc fd ff 	. . . 
	ld b,0e7h		;a688	06 e7 	. . 
	adc a,d			;a68a	8a 	. 
	defb 0edh;next byte illegal after ed		;a68b	ed 	. 
	xor 0e8h		;a68c	ee e8 	. . 
	push af			;a68e	f5 	. 
	or 0f7h		;a68f	f6 f7 	. . 
	ei			;a691	fb 	. 
	call m,0fffdh		;a692	fc fd ff 	. . . 
	ld b,0e7h		;a695	06 e7 	. . 
	adc a,d			;a697	8a 	. 
	defb 0edh;next byte illegal after ed		;a698	ed 	. 
	xor 0e8h		;a699	ee e8 	. . 
	ret m			;a69b	f8 	. 
	nop			;a69c	00 	. 
	ld sp,hl			;a69d	f9 	. 
	ei			;a69e	fb 	. 
	call m,0fffdh		;a69f	fc fd ff 	. . . 
	ld b,0e7h		;a6a2	06 e7 	. . 
	adc a,d			;a6a4	8a 	. 
	defb 0edh;next byte illegal after ed		;a6a5	ed 	. 
	xor 0e8h		;a6a6	ee e8 	. . 
	ret m			;a6a8	f8 	. 
	nop			;a6a9	00 	. 
	ld sp,hl			;a6aa	f9 	. 
	ei			;a6ab	fb 	. 
	call m,0fffdh		;a6ac	fc fd ff 	. . . 
	ld b,0e7h		;a6af	06 e7 	. . 
	adc a,c			;a6b1	89 	. 
	defb 0edh;next byte illegal after ed		;a6b2	ed 	. 
	xor 0f1h		;a6b3	ee f1 	. . 
	ret m			;a6b5	f8 	. 
	nop			;a6b6	00 	. 
	ld sp,hl			;a6b7	f9 	. 
	cp 0fch		;a6b8	fe fc 	. . 
	defb 0fdh,010h,0fah	;illegal sequence		;a6ba	fd 10 fa 	. . . 
	nop			;a6bd	00 	. 
	dec c			;a6be	0d 	. 
	pop hl			;a6bf	e1 	. 
	add a,c			;a6c0	81 	. 
	ex (sp),hl			;a6c1	e3 	. 
	ld (bc),a			;a6c2	02 	. 
	pop hl			;a6c3	e1 	. 
	ld (bc),a			;a6c4	02 	. 
	nop			;a6c5	00 	. 
	cp (hl)			;a6c6	be 	. 
	call po,0e400h		;a6c7	e4 00 e4 	. . . 
	nop			;a6ca	00 	. 
	call po,0e400h		;a6cb	e4 00 e4 	. . . 
	nop			;a6ce	00 	. 
	call po,00000h		;a6cf	e4 00 00 	. . . 
	jp po,0e100h		;a6d2	e2 00 e1 	. . . 
	nop			;a6d5	00 	. 
	nop			;a6d6	00 	. 
	call po,0e400h		;a6d7	e4 00 e4 	. . . 
	nop			;a6da	00 	. 
	call po,0e400h		;a6db	e4 00 e4 	. . . 
	nop			;a6de	00 	. 
	call po,00000h		;a6df	e4 00 00 	. . . 
	jp po,0e100h		;a6e2	e2 00 e1 	. . . 
	nop			;a6e5	00 	. 
	nop			;a6e6	00 	. 
	call po,0e400h		;a6e7	e4 00 e4 	. . . 
	nop			;a6ea	00 	. 
	call po,0e400h		;a6eb	e4 00 e4 	. . . 
	nop			;a6ee	00 	. 
	call po,00000h		;a6ef	e4 00 00 	. . . 
	jp po,0e100h		;a6f2	e2 00 e1 	. . . 
	nop			;a6f5	00 	. 
	nop			;a6f6	00 	. 
	push hl			;a6f7	e5 	. 
	nop			;a6f8	00 	. 
	call po,0e400h		;a6f9	e4 00 e4 	. . . 
	nop			;a6fc	00 	. 
	call po,0e500h		;a6fd	e4 00 e5 	. . . 
	nop			;a700	00 	. 
	nop			;a701	00 	. 
	jp po,0e100h		;a702	e2 00 e1 	. . . 
	inc b			;a705	04 	. 
	nop			;a706	00 	. 
	add a,l			;a707	85 	. 
	call po,0e400h		;a708	e4 00 e4 	. . . 
	nop			;a70b	00 	. 
	call po,00004h		;a70c	e4 04 00 	. . . 
	add a,e			;a70f	83 	. 
	jp po,0e100h		;a710	e2 00 e1 	. . . 
	inc b			;a713	04 	. 
	nop			;a714	00 	. 
	add a,l			;a715	85 	. 
	push hl			;a716	e5 	. 
	nop			;a717	00 	. 
	call po,0e500h		;a718	e4 00 e5 	. . . 
	inc b			;a71b	04 	. 
	nop			;a71c	00 	. 
	add a,e			;a71d	83 	. 
	jp po,0e100h		;a71e	e2 00 e1 	. . . 
	ld b,000h		;a721	06 00 	. . 
	add a,c			;a723	81 	. 
	call po,00006h		;a724	e4 06 00 	. . . 
	add a,e			;a727	83 	. 
	jp po,0e100h		;a728	e2 00 e1 	. . . 
	ld b,000h		;a72b	06 00 	. . 
	add a,c			;a72d	81 	. 
	push hl			;a72e	e5 	. 
	ld b,000h		;a72f	06 00 	. . 
	add a,e			;a731	83 	. 
	jp po,0e100h		;a732	e2 00 e1 	. . . 
	dec c			;a735	0d 	. 
	nop			;a736	00 	. 
	add a,e			;a737	83 	. 
	jp po,0e100h		;a738	e2 00 e1 	. . . 
	dec c			;a73b	0d 	. 
	nop			;a73c	00 	. 
	add a,d			;a73d	82 	. 
	jp po,00d00h		;a73e	e2 00 0d 	. . . 
	pop hl			;a741	e1 	. 
	add a,c			;a742	81 	. 
	ex af,af'			;a743	08 	. 
	inc bc			;a744	03 	. 
	pop hl			;a745	e1 	. 
	nop			;a746	00 	. 
	ld c,0e1h		;a747	0e e1 	. . 
	add a,c			;a749	81 	. 
	ex (sp),hl			;a74a	e3 	. 
	ld (bc),a			;a74b	02 	. 
	pop hl			;a74c	e1 	. 
	dec c			;a74d	0d 	. 
	nop			;a74e	00 	. 
	add a,c			;a74f	81 	. 
	jp po,0e102h		;a750	e2 02 e1 	. . . 
	ld c,000h		;a753	0e 00 	. . 
	ld (bc),a			;a755	02 	. 
	pop hl			;a756	e1 	. 
	add a,d			;a757	82 	. 
	nop			;a758	00 	. 
	ex (sp),hl			;a759	e3 	. 
	inc c			;a75a	0c 	. 
	nop			;a75b	00 	. 
	ld (bc),a			;a75c	02 	. 
	pop hl			;a75d	e1 	. 
	add a,d			;a75e	82 	. 
	nop			;a75f	00 	. 
	jp po,00005h		;a760	e2 05 00 	. . . 
	add a,c			;a763	81 	. 
	ex (sp),hl			;a764	e3 	. 
	inc b			;a765	04 	. 
	nop			;a766	00 	. 
	ld (bc),a			;a767	02 	. 
	djnz la76ch		;a768	10 02 	. . 
la76ah:
	pop hl			;a76a	e1 	. 
	add a,d			;a76b	82 	. 
la76ch:
	nop			;a76c	00 	. 
	jp po,00005h		;a76d	e2 05 00 	. . . 
	add a,h			;a770	84 	. 
	jp po,00000h		;a771	e2 00 00 	. . . 
	ex (sp),hl			;a774	e3 	. 
	inc b			;a775	04 	. 
	nop			;a776	00 	. 
	add a,e			;a777	83 	. 
	pop hl			;a778	e1 	. 
	nop			;a779	00 	. 
	jp po,00005h		;a77a	e2 05 00 	. . . 
	add a,h			;a77d	84 	. 
	jp po,00000h		;a77e	e2 00 00 	. . . 
	jp po,00004h		;a781	e2 04 00 	. . . 
	add a,h			;a784	84 	. 
	pop hl			;a785	e1 	. 
	djnz la76ah		;a786	10 e2 	. . 
	djnz $+6		;a788	10 04 	. . 
	nop			;a78a	00 	. 
	add a,c			;a78b	81 	. 
	jp po,00005h		;a78c	e2 05 00 	. . . 
	adc a,b			;a78f	88 	. 
	ex (sp),hl			;a790	e3 	. 
	pop hl			;a791	e1 	. 
	pop hl			;a792	e1 	. 
	nop			;a793	00 	. 
	jp po,00000h		;a794	e2 00 00 	. . . 
	ex (sp),hl			;a797	e3 	. 
	inc b			;a798	04 	. 
	nop			;a799	00 	. 
	add a,c			;a79a	81 	. 
	jp po,00003h		;a79b	e2 03 00 	. . . 
	adc a,b			;a79e	88 	. 
	jp po,0e1e1h		;a79f	e2 e1 e1 	. . . 
	nop			;a7a2	00 	. 
	jp po,00000h		;a7a3	e2 00 00 	. . . 
	jp po,00004h		;a7a6	e2 04 00 	. . . 
	add a,c			;a7a9	81 	. 
	jp po,00004h		;a7aa	e2 04 00 	. . . 
	ld (bc),a			;a7ad	02 	. 
	pop hl			;a7ae	e1 	. 
	add a,l			;a7af	85 	. 
	nop			;a7b0	00 	. 
	jp po,00000h		;a7b1	e2 00 00 	. . . 
	jp po,00004h		;a7b4	e2 04 00 	. . . 
	add a,c			;a7b7	81 	. 
	jp po,00004h		;a7b8	e2 04 00 	. . . 
	inc bc			;a7bb	03 	. 
	pop hl			;a7bc	e1 	. 
	add a,c			;a7bd	81 	. 
	ex (sp),hl			;a7be	e3 	. 
	dec c			;a7bf	0d 	. 
	pop hl			;a7c0	e1 	. 
	nop			;a7c1	00 	. 
	ex af,af'			;a7c2	08 	. 
	pop hl			;a7c3	e1 	. 
	add a,c			;a7c4	81 	. 
	ex (sp),hl			;a7c5	e3 	. 
	ex af,af'			;a7c6	08 	. 
	pop hl			;a7c7	e1 	. 
	ld b,000h		;a7c8	06 00 	. . 
	add a,d			;a7ca	82 	. 
	pop hl			;a7cb	e1 	. 
	jp po,00006h		;a7cc	e2 06 00 	. . . 
	ld (bc),a			;a7cf	02 	. 
	pop hl			;a7d0	e1 	. 
	ld b,000h		;a7d1	06 00 	. . 
	add a,d			;a7d3	82 	. 
	pop hl			;a7d4	e1 	. 
	jp po,00006h		;a7d5	e2 06 00 	. . . 
	ld (bc),a			;a7d8	02 	. 
	pop hl			;a7d9	e1 	. 
	ld b,000h		;a7da	06 00 	. . 
	add a,d			;a7dc	82 	. 
	pop hl			;a7dd	e1 	. 
	jp po,00006h		;a7de	e2 06 00 	. . . 
	ld (bc),a			;a7e1	02 	. 
	pop hl			;a7e2	e1 	. 
	ld b,000h		;a7e3	06 00 	. . 
	rlca			;a7e5	07 	. 
	pop hl			;a7e6	e1 	. 
	add a,d			;a7e7	82 	. 
	nop			;a7e8	00 	. 
	pop hl			;a7e9	e1 	. 
	rrca			;a7ea	0f 	. 
	nop			;a7eb	00 	. 
	add a,c			;a7ec	81 	. 
	pop hl			;a7ed	e1 	. 
	rrca			;a7ee	0f 	. 
	nop			;a7ef	00 	. 
	inc bc			;a7f0	03 	. 
	pop hl			;a7f1	e1 	. 
	inc c			;a7f2	0c 	. 
	nop			;a7f3	00 	. 
	inc bc			;a7f4	03 	. 
	pop hl			;a7f5	e1 	. 
	inc bc			;a7f6	03 	. 
	nop			;a7f7	00 	. 
	add a,c			;a7f8	81 	. 
	pop hl			;a7f9	e1 	. 
	ld a,(bc)			;a7fa	0a 	. 
	nop			;a7fb	00 	. 
	ld (bc),a			;a7fc	02 	. 
	pop hl			;a7fd	e1 	. 
	inc bc			;a7fe	03 	. 
	nop			;a7ff	00 	. 
	add a,c			;a800	81 	. 
	pop hl			;a801	e1 	. 
	inc bc			;a802	03 	. 
	nop			;a803	00 	. 
	add a,c			;a804	81 	. 
	pop hl			;a805	e1 	. 
	inc bc			;a806	03 	. 
	nop			;a807	00 	. 
	add a,c			;a808	81 	. 
	pop hl			;a809	e1 	. 
	ld (bc),a			;a80a	02 	. 
	nop			;a80b	00 	. 
	ld (bc),a			;a80c	02 	. 
	pop hl			;a80d	e1 	. 
	inc bc			;a80e	03 	. 
	nop			;a80f	00 	. 
	add a,c			;a810	81 	. 
	pop hl			;a811	e1 	. 
	inc bc			;a812	03 	. 
	nop			;a813	00 	. 
	add a,c			;a814	81 	. 
	pop hl			;a815	e1 	. 
	inc bc			;a816	03 	. 
la817h:
	nop			;a817	00 	. 
	add a,c			;a818	81 	. 
	pop hl			;a819	e1 	. 
	ld (bc),a			;a81a	02 	. 
	nop			;a81b	00 	. 
	ld de,000e1h		;a81c	11 e1 00 	. . . 
	ld de,00ee1h		;a81f	11 e1 0e 	. . . 
	nop			;a822	00 	. 
	ld (bc),a			;a823	02 	. 
la824h:
	pop hl			;a824	e1 	. 
	ld c,000h		;a825	0e 00 	. . 
	ld (bc),a			;a827	02 	. 
	pop hl			;a828	e1 	. 
	ld c,000h		;a829	0e 00 	. . 
	ld (bc),a			;a82b	02 	. 
	pop hl			;a82c	e1 	. 
	ld c,000h		;a82d	0e 00 	. . 
	ld (bc),a			;a82f	02 	. 
	pop hl			;a830	e1 	. 
	ld c,000h		;a831	0e 00 	. . 
	ld (bc),a			;a833	02 	. 
	pop hl			;a834	e1 	. 
	ld c,000h		;a835	0e 00 	. . 
	ld (bc),a			;a837	02 	. 
	pop hl			;a838	e1 	. 
	ld c,000h		;a839	0e 00 	. . 
	ld (bc),a			;a83b	02 	. 
	pop hl			;a83c	e1 	. 
	ld c,000h		;a83d	0e 00 	. . 
	ld (bc),a			;a83f	02 	. 
	pop hl			;a840	e1 	. 
	ld c,000h		;a841	0e 00 	. . 
	ld (bc),a			;a843	02 	. 
	pop hl			;a844	e1 	. 
	ld c,000h		;a845	0e 00 	. . 
	inc b			;a847	04 	. 
	pop hl			;a848	e1 	. 
	add a,c			;a849	81 	. 
	ex (sp),hl			;a84a	e3 	. 
	inc c			;a84b	0c 	. 
	pop hl			;a84c	e1 	. 
	nop			;a84d	00 	. 
	ld de,00ee1h		;a84e	11 e1 0e 	. . . 
	nop			;a851	00 	. 
	ld (bc),a			;a852	02 	. 
	pop hl			;a853	e1 	. 
	ld c,000h		;a854	0e 00 	. . 
	ld (bc),a			;a856	02 	. 
	pop hl			;a857	e1 	. 
	ld c,000h		;a858	0e 00 	. . 
	ld (bc),a			;a85a	02 	. 
la85bh:
	pop hl			;a85b	e1 	. 
	ld c,000h		;a85c	0e 00 	. . 
	ld (bc),a			;a85e	02 	. 
	pop hl			;a85f	e1 	. 
	rrca			;a860	0f 	. 
	nop			;a861	00 	. 
	add a,c			;a862	81 	. 
	pop hl			;a863	e1 	. 
	inc bc			;a864	03 	. 
	nop			;a865	00 	. 
	add a,c			;a866	81 	. 
	pop hl			;a867	e1 	. 
	ld b,010h		;a868	06 10 	. . 
	add a,c			;a86a	81 	. 
	pop hl			;a86b	e1 	. 
	inc b			;a86c	04 	. 
	nop			;a86d	00 	. 
	add a,c			;a86e	81 	. 
	pop hl			;a86f	e1 	. 
	inc bc			;a870	03 	. 
	nop			;a871	00 	. 
	add a,d			;a872	82 	. 
	pop hl			;a873	e1 	. 
	djnz la87ah		;a874	10 04 	. . 
	nop			;a876	00 	. 
	add a,d			;a877	82 	. 
la878h:
	djnz la85bh		;a878	10 e1 	. . 
la87ah:
	inc bc			;a87a	03 	. 
	nop			;a87b	00 	. 
	ld (bc),a			;a87c	02 	. 
	pop hl			;a87d	e1 	. 
	inc bc			;a87e	03 	. 
	nop			;a87f	00 	. 
	add a,d			;a880	82 	. 
	pop hl			;a881	e1 	. 
	djnz la888h		;a882	10 04 	. . 
	nop			;a884	00 	. 
	add a,d			;a885	82 	. 
	djnz $-29		;a886	10 e1 	. . 
la888h:
	ld (bc),a			;a888	02 	. 
	nop			;a889	00 	. 
	inc bc			;a88a	03 	. 
	pop hl			;a88b	e1 	. 
	inc bc			;a88c	03 	. 
	nop			;a88d	00 	. 
	ld (bc),a			;a88e	02 	. 
	djnz la817h		;a88f	10 86 	. . 
	nop			;a891	00 	. 
	pop hl			;a892	e1 	. 
	nop			;a893	00 	. 
	nop			;a894	00 	. 
	djnz la878h		;a895	10 e1 	. . 
	inc bc			;a897	03 	. 
	nop			;a898	00 	. 
	ld (bc),a			;a899	02 	. 
	pop hl			;a89a	e1 	. 
	inc bc			;a89b	03 	. 
	nop			;a89c	00 	. 
	ld (bc),a			;a89d	02 	. 
	djnz la824h		;a89e	10 84 	. . 
	nop			;a8a0	00 	. 
	djnz $+18		;a8a1	10 10 	. . 
	nop			;a8a3	00 	. 
	ld (bc),a			;a8a4	02 	. 
	djnz $+5		;a8a5	10 03 	. . 
	nop			;a8a7	00 	. 
	ld de,000e1h		;a8a8	11 e1 00 	. . . 
	ld (bc),a			;a8ab	02 	. 
	pop hl			;a8ac	e1 	. 
	add a,c			;a8ad	81 	. 
	ex (sp),hl			;a8ae	e3 	. 
	rrca			;a8af	0f 	. 
	pop hl			;a8b0	e1 	. 
	add a,c			;a8b1	81 	. 
	jp po,0e102h		;a8b2	e2 02 e1 	. . . 
	ld a,(bc)			;a8b5	0a 	. 
	nop			;a8b6	00 	. 
	inc bc			;a8b7	03 	. 
	pop hl			;a8b8	e1 	. 
	add a,c			;a8b9	81 	. 
	jp po,0000ch		;a8ba	e2 0c 00 	. . . 
	inc bc			;a8bd	03 	. 
	pop hl			;a8be	e1 	. 
	add a,c			;a8bf	81 	. 
	jp po,00004h		;a8c0	e2 04 00 	. . . 
	ld (bc),a			;a8c3	02 	. 
	pop hl			;a8c4	e1 	. 
	ld b,000h		;a8c5	06 00 	. . 
	ld b,0e1h		;a8c7	06 e1 	. . 
	add a,d			;a8c9	82 	. 
	nop			;a8ca	00 	. 
	pop hl			;a8cb	e1 	. 
	ld (bc),a			;a8cc	02 	. 
	nop			;a8cd	00 	. 
	ld (bc),a			;a8ce	02 	. 
	pop hl			;a8cf	e1 	. 
	adc a,b			;a8d0	88 	. 
	nop			;a8d1	00 	. 
	pop hl			;a8d2	e1 	. 
	pop hl			;a8d3	e1 	. 
	nop			;a8d4	00 	. 
	pop hl			;a8d5	e1 	. 
	nop			;a8d6	00 	. 
	nop			;a8d7	00 	. 
	pop hl			;a8d8	e1 	. 
	inc c			;a8d9	0c 	. 
	nop			;a8da	00 	. 
	add a,c			;a8db	81 	. 
	pop hl			;a8dc	e1 	. 
	inc bc			;a8dd	03 	. 
	nop			;a8de	00 	. 
	add a,c			;a8df	81 	. 
	pop hl			;a8e0	e1 	. 
	inc bc			;a8e1	03 	. 
	nop			;a8e2	00 	. 
	add a,c			;a8e3	81 	. 
	pop hl			;a8e4	e1 	. 
	inc b			;a8e5	04 	. 
	nop			;a8e6	00 	. 
	add a,c			;a8e7	81 	. 
	pop hl			;a8e8	e1 	. 
	ld (bc),a			;a8e9	02 	. 
	nop			;a8ea	00 	. 
	ld (bc),a			;a8eb	02 	. 
	pop hl			;a8ec	e1 	. 
	ld (bc),a			;a8ed	02 	. 
	nop			;a8ee	00 	. 
	add a,e			;a8ef	83 	. 
	pop hl			;a8f0	e1 	. 
	nop			;a8f1	00 	. 
	pop hl			;a8f2	e1 	. 
	dec b			;a8f3	05 	. 
	nop			;a8f4	00 	. 
	add a,c			;a8f5	81 	. 
	pop hl			;a8f6	e1 	. 
	ld (bc),a			;a8f7	02 	. 
	nop			;a8f8	00 	. 
	inc bc			;a8f9	03 	. 
la8fah:
	pop hl			;a8fa	e1 	. 
	dec b			;a8fb	05 	. 
	nop			;a8fc	00 	. 
	add a,h			;a8fd	84 	. 
la8feh:
	pop hl			;a8fe	e1 	. 
	nop			;a8ff	00 	. 
	nop			;a900	00 	. 
	pop hl			;a901	e1 	. 
	inc bc			;a902	03 	. 
	nop			;a903	00 	. 
	add a,h			;a904	84 	. 
	pop hl			;a905	e1 	. 
	nop			;a906	00 	. 
	nop			;a907	00 	. 
	pop hl			;a908	e1 	. 
	inc bc			;a909	03 	. 
	nop			;a90a	00 	. 
	add a,c			;a90b	81 	. 
	pop hl			;a90c	e1 	. 
	dec bc			;a90d	0b 	. 
	nop			;a90e	00 	. 
	ld (bc),a			;a90f	02 	. 
	pop hl			;a910	e1 	. 
	add hl,bc			;a911	09 	. 
	nop			;a912	00 	. 
	add a,c			;a913	81 	. 
	pop hl			;a914	e1 	. 
	inc b			;a915	04 	. 
	nop			;a916	00 	. 
	djnz la8fah		;a917	10 e1 	. . 
	nop			;a919	00 	. 
	ld de,004e1h		;a91a	11 e1 04 	. . . 
	nop			;a91d	00 	. 
	ld (bc),a			;a91e	02 	. 
	call po,00003h		;a91f	e4 03 00 	. . . 
	ld (bc),a			;a922	02 	. 
	call po,00003h		;a923	e4 03 00 	. . . 
	ld (bc),a			;a926	02 	. 
	pop hl			;a927	e1 	. 
	inc b			;a928	04 	. 
	nop			;a929	00 	. 
	ld (bc),a			;a92a	02 	. 
	call po,00003h		;a92b	e4 03 00 	. . . 
	ld (bc),a			;a92e	02 	. 
	call po,00003h		;a92f	e4 03 00 	. . . 
	ld (bc),a			;a932	02 	. 
	pop hl			;a933	e1 	. 
	inc b			;a934	04 	. 
	nop			;a935	00 	. 
	ld (bc),a			;a936	02 	. 
	pop hl			;a937	e1 	. 
	inc bc			;a938	03 	. 
	nop			;a939	00 	. 
	ld (bc),a			;a93a	02 	. 
	pop hl			;a93b	e1 	. 
	inc bc			;a93c	03 	. 
	nop			;a93d	00 	. 
	ld (bc),a			;a93e	02 	. 
	pop hl			;a93f	e1 	. 
	inc b			;a940	04 	. 
	nop			;a941	00 	. 
	ld (bc),a			;a942	02 	. 
	pop hl			;a943	e1 	. 
	inc bc			;a944	03 	. 
	nop			;a945	00 	. 
	ld (bc),a			;a946	02 	. 
	pop hl			;a947	e1 	. 
	inc bc			;a948	03 	. 
	nop			;a949	00 	. 
	ld (bc),a			;a94a	02 	. 
	pop hl			;a94b	e1 	. 
	inc b			;a94c	04 	. 
	nop			;a94d	00 	. 
	ld (bc),a			;a94e	02 	. 
	pop hl			;a94f	e1 	. 
	add a,e			;a950	83 	. 
	nop			;a951	00 	. 
	pop hl			;a952	e1 	. 
	nop			;a953	00 	. 
	ld (bc),a			;a954	02 	. 
	pop hl			;a955	e1 	. 
	inc bc			;a956	03 	. 
	nop			;a957	00 	. 
	ld (bc),a			;a958	02 	. 
	pop hl			;a959	e1 	. 
	inc b			;a95a	04 	. 
	nop			;a95b	00 	. 
	ld (bc),a			;a95c	02 	. 
	push hl			;a95d	e5 	. 
	add a,e			;a95e	83 	. 
	nop			;a95f	00 	. 
	push hl			;a960	e5 	. 
	nop			;a961	00 	. 
	ld (bc),a			;a962	02 	. 
	push hl			;a963	e5 	. 
	inc bc			;a964	03 	. 
	nop			;a965	00 	. 
	ld (bc),a			;a966	02 	. 
	pop hl			;a967	e1 	. 
	ld c,000h		;a968	0e 00 	. . 
	add a,c			;a96a	81 	. 
	pop hl			;a96b	e1 	. 
	inc bc			;a96c	03 	. 
	nop			;a96d	00 	. 
	add a,c			;a96e	81 	. 
	djnz la979h		;a96f	10 08 	. . 
	nop			;a971	00 	. 
	inc bc			;a972	03 	. 
	djnz la982h		;a973	10 0d 	. . 
	nop			;a975	00 	. 
	inc bc			;a976	03 	. 
	djnz la986h		;a977	10 0d 	. . 
la979h:
	nop			;a979	00 	. 
	inc bc			;a97a	03 	. 
	djnz la8feh		;a97b	10 81 	. . 
	nop			;a97d	00 	. 
	ex af,af'			;a97e	08 	. 
	pop hl			;a97f	e1 	. 
	add a,c			;a980	81 	. 
	ex af,af'			;a981	08 	. 
la982h:
	rlca			;a982	07 	. 
	pop hl			;a983	e1 	. 
	nop			;a984	00 	. 
	inc bc			;a985	03 	. 
la986h:
	pop hl			;a986	e1 	. 
	add a,c			;a987	81 	. 
	ex (sp),hl			;a988	e3 	. 
	dec c			;a989	0d 	. 
	pop hl			;a98a	e1 	. 
	ld (bc),a			;a98b	02 	. 
	nop			;a98c	00 	. 
	add a,c			;a98d	81 	. 
	jp po,0000bh		;a98e	e2 0b 00 	. . . 
	ld (bc),a			;a991	02 	. 
	pop hl			;a992	e1 	. 
	ld (bc),a			;a993	02 	. 
	nop			;a994	00 	. 
	add a,c			;a995	81 	. 
	jp po,0000bh		;a996	e2 0b 00 	. . . 
	inc c			;a999	0c 	. 
	pop hl			;a99a	e1 	. 
	ld (bc),a			;a99b	02 	. 
	nop			;a99c	00 	. 
	inc b			;a99d	04 	. 
	pop hl			;a99e	e1 	. 
	ld c,000h		;a99f	0e 00 	. . 
	ld (bc),a			;a9a1	02 	. 
	pop hl			;a9a2	e1 	. 
	ld c,000h		;a9a3	0e 00 	. . 
	dec b			;a9a5	05 	. 
	pop hl			;a9a6	e1 	. 
	inc bc			;a9a7	03 	. 
	nop			;a9a8	00 	. 
	rlca			;a9a9	07 	. 
	pop hl			;a9aa	e1 	. 
	add a,c			;a9ab	81 	. 
	ex (sp),hl			;a9ac	e3 	. 
	ld (bc),a			;a9ad	02 	. 
	pop hl			;a9ae	e1 	. 
	dec c			;a9af	0d 	. 
	nop			;a9b0	00 	. 
	add a,d			;a9b1	82 	. 
	jp po,00ee1h		;a9b2	e2 e1 0e 	. . . 
	nop			;a9b5	00 	. 
	add a,d			;a9b6	82 	. 
	jp po,003e1h		;a9b7	e2 e1 03 	. . . 
	nop			;a9ba	00 	. 
	dec b			;a9bb	05 	. 
	pop hl			;a9bc	e1 	. 
	add a,c			;a9bd	81 	. 
	nop			;a9be	00 	. 
	rlca			;a9bf	07 	. 
	pop hl			;a9c0	e1 	. 
	rrca			;a9c1	0f 	. 
	nop			;a9c2	00 	. 
la9c3h:
	ld de,000e1h		;a9c3	11 e1 00 	. . . 
	ret z			;a9c6	c8 	. 
	xor c			;a9c7	a9 	. 
	adc a,0a9h		;a9c8	ce a9 	. . 
	ld a,(de)			;a9ca	1a 	. 
	xor d			;a9cb	aa 	. 
	adc a,b			;a9cc	88 	. 
	xor d			;a9cd	aa 	. 
	dec c			;a9ce	0d 	. 
	nop			;a9cf	00 	. 
	add a,d			;a9d0	82 	. 
	dec bc			;a9d1	0b 	. 
	inc c			;a9d2	0c 	. 
	inc bc			;a9d3	03 	. 
	nop			;a9d4	00 	. 
	add a,d			;a9d5	82 	. 
	dec bc			;a9d6	0b 	. 
	inc c			;a9d7	0c 	. 
	ld (08100h),hl		;a9d8	22 00 81 	" . . 
	sbc a,b			;a9db	98 	. 
	inc bc			;a9dc	03 	. 
	nop			;a9dd	00 	. 
	add a,h			;a9de	84 	. 
	sbc a,e			;a9df	9b 	. 
	and (hl)			;a9e0	a6 	. 
	sbc a,h			;a9e1	9c 	. 
	and a			;a9e2	a7 	. 
	rlca			;a9e3	07 	. 
	nop			;a9e4	00 	. 
	add a,d			;a9e5	82 	. 
	and a			;a9e6	a7 	. 
	sbc a,c			;a9e7	99 	. 
	inc bc			;a9e8	03 	. 
	and d			;a9e9	a2 	. 
	inc bc			;a9ea	03 	. 
	sbc a,l			;a9eb	9d 	. 
	add a,c			;a9ec	81 	. 
	xor b			;a9ed	a8 	. 
	inc b			;a9ee	04 	. 
	nop			;a9ef	00 	. 
	add a,(hl)			;a9f0	86 	. 
	and a			;a9f1	a7 	. 
	nop			;a9f2	00 	. 
	nop			;a9f3	00 	. 
	xor c			;a9f4	a9 	. 
	and l			;a9f5	a5 	. 
	and b			;a9f6	a0 	. 
	dec b			;a9f7	05 	. 
	sbc a,l			;a9f8	9d 	. 
	add a,(hl)			;a9f9	86 	. 
	xor c			;a9fa	a9 	. 
	nop			;a9fb	00 	. 
	inc bc			;a9fc	03 	. 
	nop			;a9fd	00 	. 
	nop			;a9fe	00 	. 
	xor c			;a9ff	a9 	. 
	ld (bc),a			;aa00	02 	. 
	nop			;aa01	00 	. 
	ld (bc),a			;aa02	02 	. 
	inc d			;aa03	14 	. 
	ld (bc),a			;aa04	02 	. 
	ld c,h			;aa05	4c 	L 
	add a,d			;aa06	82 	. 
	inc d			;aa07	14 	. 
	ld c,h			;aa08	4c 	L 
	inc bc			;aa09	03 	. 
	inc d			;aa0a	14 	. 
	add a,l			;aa0b	85 	. 
	ld c,h			;aa0c	4c 	L 
	inc d			;aa0d	14 	. 
	nop			;aa0e	00 	. 
	nop			;aa0f	00 	. 
	inc d			;aa10	14 	. 
	ld (08100h),hl		;aa11	22 00 81 	" . . 
	ld c,h			;aa14	4c 	L 
	ld a,(bc)			;aa15	0a 	. 
	nop			;aa16	00 	. 
	jr nz,la9c3h		;aa17	20 aa 	  . 
	nop			;aa19	00 	. 
	inc b			;aa1a	04 	. 
	nop			;aa1b	00 	. 
	add a,(hl)			;aa1c	86 	. 
	dec l			;aa1d	2d 	- 
	ld l,02fh		;aa1e	2e 2f 	. / 
	nop			;aa20	00 	. 
	dec bc			;aa21	0b 	. 
	inc c			;aa22	0c 	. 
	ex af,af'			;aa23	08 	. 
	nop			;aa24	00 	. 
	add a,a			;aa25	87 	. 
	and a			;aa26	a7 	. 
	jr nc,laa5ah		;aa27	30 31 	0 1 
	ld (03433h),a		;aa29	32 33 34 	2 3 4 
	and a			;aa2c	a7 	. 
	add hl,bc			;aa2d	09 	. 
	nop			;aa2e	00 	. 
	adc a,d			;aa2f	8a 	. 
	xor b			;aa30	a8 	. 
laa31h:
	dec (hl)			;aa31	35 	5 
	ld (hl),037h		;aa32	36 37 	6 7 
	jr c,laa6fh		;aa34	38 39 	8 9 
	xor b			;aa36	a8 	. 
	nop			;aa37	00 	. 
	nop			;aa38	00 	. 
	inc bc			;aa39	03 	. 
	ld b,000h		;aa3a	06 00 	. . 
	add a,a			;aa3c	87 	. 
	xor b			;aa3d	a8 	. 
	dec (hl)			;aa3e	35 	5 
	ld a,(03c3bh)		;aa3f	3a 3b 3c 	: ; < 
	add hl,sp			;aa42	39 	9 
	xor b			;aa43	a8 	. 
	inc bc			;aa44	03 	. 
	nop			;aa45	00 	. 
	add a,c			;aa46	81 	. 
	inc bc			;aa47	03 	. 
	dec b			;aa48	05 	. 
	nop			;aa49	00 	. 
	add a,a			;aa4a	87 	. 
	xor c			;aa4b	a9 	. 
	dec (hl)			;aa4c	35 	5 
	ld a,(03c3bh)		;aa4d	3a 3b 3c 	: ; < 
	add hl,sp			;aa50	39 	9 
	xor c			;aa51	a9 	. 
	inc b			;aa52	04 	. 
	nop			;aa53	00 	. 
	add a,c			;aa54	81 	. 
	inc bc			;aa55	03 	. 
	inc b			;aa56	04 	. 
	nop			;aa57	00 	. 
	ld (bc),a			;aa58	02 	. 
	inc d			;aa59	14 	. 
laa5ah:
	add a,c			;aa5a	81 	. 
	ld c,h			;aa5b	4c 	L 
	ld (bc),a			;aa5c	02 	. 
laa5dh:
	inc d			;aa5d	14 	. 
	ld (bc),a			;aa5e	02 	. 
	ld c,h			;aa5f	4c 	L 
	dec b			;aa60	05 	. 
	nop			;aa61	00 	. 
	add a,c			;aa62	81 	. 
	inc bc			;aa63	03 	. 
	ld c,000h		;aa64	0e 00 	. . 
	add a,c			;aa66	81 	. 
	inc bc			;aa67	03 	. 
	inc bc			;aa68	03 	. 
	nop			;aa69	00 	. 
	add a,c			;aa6a	81 	. 
	ld c,h			;aa6b	4c 	L 
	ld a,(bc)			;aa6c	0a 	. 
	nop			;aa6d	00 	. 
	add a,c			;aa6e	81 	. 
laa6fh:
	inc bc			;aa6f	03 	. 
	inc b			;aa70	04 	. 
	nop			;aa71	00 	. 
	add a,c			;aa72	81 	. 
	inc d			;aa73	14 	. 
	add hl,bc			;aa74	09 	. 
	nop			;aa75	00 	. 
	add a,d			;aa76	82 	. 
	inc bc			;aa77	03 	. 
	ld c,h			;aa78	4c 	L 
	rlca			;aa79	07 	. 
	nop			;aa7a	00 	. 
	add a,c			;aa7b	81 	. 
	inc bc			;aa7c	03 	. 
	ld (bc),a			;aa7d	02 	. 
	ld c,h			;aa7e	4c 	L 
	inc b			;aa7f	04 	. 
	nop			;aa80	00 	. 
	ld (bc),a			;aa81	02 	. 
	ld c,h			;aa82	4c 	L 
	inc bc			;aa83	03 	. 
	nop			;aa84	00 	. 
	jr nz,laa31h		;aa85	20 aa 	  . 
	nop			;aa87	00 	. 
	inc c			;aa88	0c 	. 
	nop			;aa89	00 	. 
	add a,d			;aa8a	82 	. 
	dec bc			;aa8b	0b 	. 
	inc c			;aa8c	0c 	. 
	inc b			;aa8d	04 	. 
	nop			;aa8e	00 	. 
	add a,d			;aa8f	82 	. 
	dec bc			;aa90	0b 	. 
	inc c			;aa91	0c 	. 
	inc de			;aa92	13 	. 
	nop			;aa93	00 	. 
	add a,d			;aa94	82 	. 
	dec bc			;aa95	0b 	. 
	inc c			;aa96	0c 	. 
	ld e,b			;aa97	58 	X 
	nop			;aa98	00 	. 
	ld (bc),a			;aa99	02 	. 
	and a			;aa9a	a7 	. 
	add a,a			;aa9b	87 	. 
	and d			;aa9c	a2 	. 
sub_aa9dh:
	sbc a,e			;aa9d	9b 	. 
	and (hl)			;aa9e	a6 	. 
	sbc a,h			;aa9f	9c 	. 
	and a			;aaa0	a7 	. 
	sbc a,e			;aaa1	9b 	. 
	sbc a,h			;aaa2	9c 	. 
	rlca			;aaa3	07 	. 
	nop			;aaa4	00 	. 
	ld (bc),a			;aaa5	02 	. 
	xor c			;aaa6	a9 	. 
	add a,a			;aaa7	87 	. 
	and l			;aaa8	a5 	. 
	and b			;aaa9	a0 	. 
	sbc a,(hl)			;aaaa	9e 	. 
	sbc a,l			;aaab	9d 	. 
	xor c			;aaac	a9 	. 
	and b			;aaad	a0 	. 
	sbc a,(hl)			;aaae	9e 	. 
	ld b,000h		;aaaf	06 00 	. . 
	jr nz,laa5dh		;aab1	20 aa 	  . 
	nop			;aab3	00 	. 
	or (hl)			;aab4	b6 	. 
	xor d			;aab5	aa 	. 
	add a,0aah		;aab6	c6 aa 	. . 
	ld (hl),0abh		;aab8	36 ab 	6 . 
	ld (hl),0abh		;aaba	36 ab 	6 . 
	rrca			;aabc	0f 	. 
	xor e			;aabd	ab 	. 
	ld (hl),0abh		;aabe	36 ab 	6 . 
	add a,0aah		;aac0	c6 aa 	. . 
	rrca			;aac2	0f 	. 
	xor e			;aac3	ab 	. 
	add a,0aah		;aac4	c6 aa 	. . 
	add a,l			;aac6	85 	. 
	nop			;aac7	00 	. 
	dec bc			;aac8	0b 	. 
	inc c			;aac9	0c 	. 
	nop			;aaca	00 	. 
	inc d			;aacb	14 	. 
	ld b,000h		;aacc	06 00 	. . 
	add a,c			;aace	81 	. 
	inc d			;aacf	14 	. 
	ex af,af'			;aad0	08 	. 
	nop			;aad1	00 	. 
	add a,c			;aad2	81 	. 
	inc d			;aad3	14 	. 
	rrca			;aad4	0f 	. 
	nop			;aad5	00 	. 
	add a,c			;aad6	81 	. 
	inc d			;aad7	14 	. 
	ld b,000h		;aad8	06 00 	. . 
	add a,h			;aada	84 	. 
	inc d			;aadb	14 	. 
	nop			;aadc	00 	. 
	dec bc			;aadd	0b 	. 
	inc c			;aade	0c 	. 
	add hl,bc			;aadf	09 	. 
	nop			;aae0	00 	. 
	add a,h			;aae1	84 	. 
	inc d			;aae2	14 	. 
	nop			;aae3	00 	. 
	nop			;aae4	00 	. 
	inc d			;aae5	14 	. 
	ex af,af'			;aae6	08 	. 
	nop			;aae7	00 	. 
	add a,c			;aae8	81 	. 
	inc d			;aae9	14 	. 
	ld b,000h		;aaea	06 00 	. . 
	add a,c			;aaec	81 	. 
	inc d			;aaed	14 	. 
	ex af,af'			;aaee	08 	. 
	nop			;aaef	00 	. 
	add a,c			;aaf0	81 	. 
	inc d			;aaf1	14 	. 
	inc bc			;aaf2	03 	. 
	nop			;aaf3	00 	. 
	add a,c			;aaf4	81 	. 
	inc d			;aaf5	14 	. 
	dec bc			;aaf6	0b 	. 
	nop			;aaf7	00 	. 
	add a,c			;aaf8	81 	. 
	inc d			;aaf9	14 	. 
	inc bc			;aafa	03 	. 
	nop			;aafb	00 	. 
	add a,c			;aafc	81 	. 
	inc d			;aafd	14 	. 
	rra			;aafe	1f 	. 
	nop			;aaff	00 	. 
	add a,c			;ab00	81 	. 
	inc d			;ab01	14 	. 
	rla			;ab02	17 	. 
	nop			;ab03	00 	. 
	ld (bc),a			;ab04	02 	. 
	dec d			;ab05	15 	. 
	inc c			;ab06	0c 	. 
	ld l,c			;ab07	69 	i 
	inc b			;ab08	04 	. 
	dec d			;ab09	15 	. 
	inc c			;ab0a	0c 	. 
	ld l,b			;ab0b	68 	h 
	ld (bc),a			;ab0c	02 	. 
	dec d			;ab0d	15 	. 
	nop			;ab0e	00 	. 
	ld (de),a			;ab0f	12 	. 
	nop			;ab10	00 	. 
	add a,c			;ab11	81 	. 
	inc d			;ab12	14 	. 
	add hl,bc			;ab13	09 	. 
	nop			;ab14	00 	. 
	add a,c			;ab15	81 	. 
	inc d			;ab16	14 	. 
	jr lab19h		;ab17	18 00 	. . 
lab19h:
	ld (bc),a			;ab19	02 	. 
	inc d			;ab1a	14 	. 
	djnz lab1dh		;ab1b	10 00 	. . 
lab1dh:
	add a,c			;ab1d	81 	. 
	inc d			;ab1e	14 	. 
	djnz lab21h		;ab1f	10 00 	. . 
lab21h:
	ld (bc),a			;ab21	02 	. 
	inc d			;ab22	14 	. 
	jr z,lab25h		;ab23	28 00 	( . 
lab25h:
	add a,c			;ab25	81 	. 
	inc d			;ab26	14 	. 
	add hl,bc			;ab27	09 	. 
	nop			;ab28	00 	. 
	add a,c			;ab29	81 	. 
	inc d			;ab2a	14 	. 
	inc de			;ab2b	13 	. 
	nop			;ab2c	00 	. 
	ld c,069h		;ab2d	0e 69 	. i 
	ld (bc),a			;ab2f	02 	. 
	dec d			;ab30	15 	. 
	ld c,068h		;ab31	0e 68 	. h 
	ld (bc),a			;ab33	02 	. 
	dec d			;ab34	15 	. 
	nop			;ab35	00 	. 
	ld de,l8200h		;ab36	11 00 82 	. . . 
	dec bc			;ab39	0b 	. 
	inc c			;ab3a	0c 	. 
	ex af,af'			;ab3b	08 	. 
	nop			;ab3c	00 	. 
	add a,d			;ab3d	82 	. 
	dec bc			;ab3e	0b 	. 
	inc c			;ab3f	0c 	. 
	add hl,de			;ab40	19 	. 
	nop			;ab41	00 	. 
	add a,d			;ab42	82 	. 
	dec bc			;ab43	0b 	. 
	inc c			;ab44	0c 	. 
	ld l,b			;ab45	68 	h 
	nop			;ab46	00 	. 
	ld (bc),a			;ab47	02 	. 
	dec d			;ab48	15 	. 
	inc c			;ab49	0c 	. 
	ld l,c			;ab4a	69 	i 
	inc b			;ab4b	04 	. 
	dec d			;ab4c	15 	. 
	inc c			;ab4d	0c 	. 
	ld l,b			;ab4e	68 	h 
	ld (bc),a			;ab4f	02 	. 
lab50h:
	dec d			;ab50	15 	. 
	nop			;ab51	00 	. 
	ld d,h			;ab52	54 	T 
	xor e			;ab53	ab 	. 
	ld e,b			;ab54	58 	X 
	xor e			;ab55	ab 	. 
	jp (hl)			;ab56	e9 	. 
	xor e			;ab57	ab 	. 
	add a,c			;ab58	81 	. 
	rst 38h			;ab59	ff 	. 
	ld b,0e7h		;ab5a	06 e7 	. . 
	add a,d			;ab5c	82 	. 
	jp (hl)			;ab5d	e9 	. 
	jp pe,0e705h		;ab5e	ea 05 e7 	. . . 
	add a,e			;ab61	83 	. 
	jp (hl)			;ab62	e9 	. 
	jp pe,006ffh		;ab63	ea ff 06 	. . . 
	rst 20h			;ab66	e7 	. 
	add a,d			;ab67	82 	. 
	defb 0edh;next byte illegal after ed		;ab68	ed 	. 
	xor 005h		;ab69	ee 05 	. . 
	rst 20h			;ab6b	e7 	. 
	add a,e			;ab6c	83 	. 
	call m,0fffdh		;ab6d	fc fd ff 	. . . 
	ld b,0e7h		;ab70	06 e7 	. . 
	add a,d			;ab72	82 	. 
	defb 0edh;next byte illegal after ed		;ab73	ed 	. 
	xor 005h		;ab74	ee 05 	. . 
	rst 28h			;ab76	ef 	. 
	add a,e			;ab77	83 	. 
	call m,0fffdh		;ab78	fc fd ff 	. . . 
	dec b			;ab7b	05 	. 
	rst 20h			;ab7c	e7 	. 
	add a,e			;ab7d	83 	. 
	jp (hl)			;ab7e	e9 	. 
	defb 0edh;next byte illegal after ed		;ab7f	ed 	. 
	xor 005h		;ab80	ee 05 	. . 
	ret p			;ab82	f0 	. 
	add a,e			;ab83	83 	. 
	call m,0fffdh		;ab84	fc fd ff 	. . . 
	dec b			;ab87	05 	. 
	rst 20h			;ab88	e7 	. 
	ld (bc),a			;ab89	02 	. 
	defb 0edh;next byte illegal after ed		;ab8a	ed 	. 
	add a,c			;ab8b	81 	. 
	xor 005h		;ab8c	ee 05 	. . 
	cp 083h		;ab8e	fe 83 	. . 
	call m,0fffdh		;ab90	fc fd ff 	. . . 
	dec b			;ab93	05 	. 
	rst 20h			;ab94	e7 	. 
	ld (bc),a			;ab95	02 	. 
	defb 0edh;next byte illegal after ed		;ab96	ed 	. 
	adc a,c			;ab97	89 	. 
	xor 0e8h		;ab98	ee e8 	. . 
	jp p,0f4f3h		;ab9a	f2 f3 f4 	. . . 
	ei			;ab9d	fb 	. 
	call m,0fffdh		;ab9e	fc fd ff 	. . . 
	dec b			;aba1	05 	. 
	rst 20h			;aba2	e7 	. 
	ld (bc),a			;aba3	02 	. 
	defb 0edh;next byte illegal after ed		;aba4	ed 	. 
	adc a,c			;aba5	89 	. 
	xor 0e8h		;aba6	ee e8 	. . 
	push af			;aba8	f5 	. 
	or 0f7h		;aba9	f6 f7 	. . 
	ei			;abab	fb 	. 
	call m,0fffdh		;abac	fc fd ff 	. . . 
	dec b			;abaf	05 	. 
	rst 20h			;abb0	e7 	. 
	ld (bc),a			;abb1	02 	. 
	defb 0edh;next byte illegal after ed		;abb2	ed 	. 
	adc a,c			;abb3	89 	. 
	xor 0e8h		;abb4	ee e8 	. . 
	ret m			;abb6	f8 	. 
	nop			;abb7	00 	. 
	ld sp,hl			;abb8	f9 	. 
	ei			;abb9	fb 	. 
	call m,0fffdh		;abba	fc fd ff 	. . . 
	dec b			;abbd	05 	. 
	rst 20h			;abbe	e7 	. 
	ld (bc),a			;abbf	02 	. 
	defb 0edh;next byte illegal after ed		;abc0	ed 	. 
	adc a,c			;abc1	89 	. 
	xor 0e8h		;abc2	ee e8 	. . 
	ret m			;abc4	f8 	. 
	nop			;abc5	00 	. 
	ld sp,hl			;abc6	f9 	. 
	ei			;abc7	fb 	. 
	call m,0fffdh		;abc8	fc fd ff 	. . . 
	dec b			;abcb	05 	. 
	rst 20h			;abcc	e7 	. 
	ld (bc),a			;abcd	02 	. 
	defb 0edh;next byte illegal after ed		;abce	ed 	. 
	adc a,c			;abcf	89 	. 
	xor 0e8h		;abd0	ee e8 	. . 
	ret m			;abd2	f8 	. 
	nop			;abd3	00 	. 
	ld sp,hl			;abd4	f9 	. 
	ei			;abd5	fb 	. 
	call m,0fffdh		;abd6	fc fd ff 	. . . 
	dec b			;abd9	05 	. 
	rst 20h			;abda	e7 	. 
	ld (bc),a			;abdb	02 	. 
	defb 0edh;next byte illegal after ed		;abdc	ed 	. 
	adc a,b			;abdd	88 	. 
	xor 0f1h		;abde	ee f1 	. . 
	ret m			;abe0	f8 	. 
	nop			;abe1	00 	. 
	ld sp,hl			;abe2	f9 	. 
	cp 0fch		;abe3	fe fc 	. . 
	defb 0fdh,010h,0fah	;illegal sequence		;abe5	fd 10 fa 	. . . 
	nop			;abe8	00 	. 
	inc b			;abe9	04 	. 
	nop			;abea	00 	. 
	add a,d			;abeb	82 	. 
	ld a,d			;abec	7a 	z 
	ld a,e			;abed	7b 	{ 
	rlca			;abee	07 	. 
	nop			;abef	00 	. 
	add a,d			;abf0	82 	. 
	ld a,d			;abf1	7a 	z 
	ld a,e			;abf2	7b 	{ 
	dec b			;abf3	05 	. 
	nop			;abf4	00 	. 
	add a,d			;abf5	82 	. 
	ld a,h			;abf6	7c 	| 
	ld a,l			;abf7	7d 	} 
	rlca			;abf8	07 	. 
	nop			;abf9	00 	. 
	add a,d			;abfa	82 	. 
	ld a,h			;abfb	7c 	| 
	ld a,l			;abfc	7d 	} 
	dec b			;abfd	05 	. 
	nop			;abfe	00 	. 
	add a,d			;abff	82 	. 
	ld a,h			;ac00	7c 	| 
	ld a,l			;ac01	7d 	} 
	rlca			;ac02	07 	. 
	nop			;ac03	00 	. 
	add a,d			;ac04	82 	. 
	ld a,h			;ac05	7c 	| 
	ld a,l			;ac06	7d 	} 
	dec b			;ac07	05 	. 
	nop			;ac08	00 	. 
	add a,d			;ac09	82 	. 
	ld a,h			;ac0a	7c 	| 
	ld a,l			;ac0b	7d 	} 
	rlca			;ac0c	07 	. 
	nop			;ac0d	00 	. 
	add a,d			;ac0e	82 	. 
	ld a,h			;ac0f	7c 	| 
	ld a,l			;ac10	7d 	} 
	dec b			;ac11	05 	. 
	nop			;ac12	00 	. 
	adc a,e			;ac13	8b 	. 
	ld a,h			;ac14	7c 	| 
	ld a,l			;ac15	7d 	} 
	nop			;ac16	00 	. 
	nop			;ac17	00 	. 
	add a,e			;ac18	83 	. 
	add a,h			;ac19	84 	. 
	add a,l			;ac1a	85 	. 
	add a,(hl)			;ac1b	86 	. 
	nop			;ac1c	00 	. 
	ld a,h			;ac1d	7c 	| 
	ld a,l			;ac1e	7d 	} 
	dec b			;ac1f	05 	. 
	nop			;ac20	00 	. 
	adc a,e			;ac21	8b 	. 
	ld a,h			;ac22	7c 	| 
	ld a,l			;ac23	7d 	} 
	nop			;ac24	00 	. 
	nop			;ac25	00 	. 
	add a,a			;ac26	87 	. 
	adc a,b			;ac27	88 	. 
	adc a,c			;ac28	89 	. 
	adc a,d			;ac29	8a 	. 
	nop			;ac2a	00 	. 
	ld a,h			;ac2b	7c 	| 
	ld a,l			;ac2c	7d 	} 
	dec b			;ac2d	05 	. 
	nop			;ac2e	00 	. 
	add a,d			;ac2f	82 	. 
	ld a,h			;ac30	7c 	| 
	ld a,l			;ac31	7d 	} 
	inc bc			;ac32	03 	. 
	nop			;ac33	00 	. 
	add a,(hl)			;ac34	86 	. 
	adc a,e			;ac35	8b 	. 
	adc a,h			;ac36	8c 	. 
	nop			;ac37	00 	. 
	nop			;ac38	00 	. 
	ld a,h			;ac39	7c 	| 
	ld a,l			;ac3a	7d 	} 
	dec b			;ac3b	05 	. 
	nop			;ac3c	00 	. 
	add a,d			;ac3d	82 	. 
	ld a,h			;ac3e	7c 	| 
	ld a,l			;ac3f	7d 	} 
	inc bc			;ac40	03 	. 
	nop			;ac41	00 	. 
	add a,(hl)			;ac42	86 	. 
	adc a,l			;ac43	8d 	. 
	adc a,(hl)			;ac44	8e 	. 
	nop			;ac45	00 	. 
	nop			;ac46	00 	. 
	ld a,h			;ac47	7c 	| 
	ld a,l			;ac48	7d 	} 
	dec b			;ac49	05 	. 
	nop			;ac4a	00 	. 
	adc a,e			;ac4b	8b 	. 
	ld a,(hl)			;ac4c	7e 	~ 
	ld a,a			;ac4d	7f 	 
	nop			;ac4e	00 	. 
	nop			;ac4f	00 	. 
	sub c			;ac50	91 	. 
	adc a,a			;ac51	8f 	. 
	sub b			;ac52	90 	. 
	sub h			;ac53	94 	. 
	nop			;ac54	00 	. 
	ld a,(hl)			;ac55	7e 	~ 
	ld a,a			;ac56	7f 	 
	inc b			;ac57	04 	. 
	nop			;ac58	00 	. 
	add a,l			;ac59	85 	. 
	add a,b			;ac5a	80 	. 
	add a,c			;ac5b	81 	. 
	add a,d			;ac5c	82 	. 
	add a,b			;ac5d	80 	. 
	sub d			;ac5e	92 	. 
	inc b			;ac5f	04 	. 
	sub e			;ac60	93 	. 
	add a,a			;ac61	87 	. 
	sub l			;ac62	95 	. 
	add a,c			;ac63	81 	. 
	add a,d			;ac64	82 	. 
	add a,b			;ac65	80 	. 
	nop			;ac66	00 	. 
	nop			;ac67	00 	. 
	sub d			;ac68	92 	. 
	dec e			;ac69	1d 	. 
	sub e			;ac6a	93 	. 
	nop			;ac6b	00 	. 
	ld l,(hl)			;ac6c	6e 	n 
	xor h			;ac6d	ac 	. 
	add a,h			;ac6e	84 	. 
	xor h			;ac6f	ac 	. 
	or e			;ac70	b3 	. 
	xor h			;ac71	ac 	. 
	ret p			;ac72	f0 	. 
	xor h			;ac73	ac 	. 
	dec h			;ac74	25 	% 
	xor l			;ac75	ad 	. 
	ld e,b			;ac76	58 	X 
	xor l			;ac77	ad 	. 
	sub h			;ac78	94 	. 
	xor l			;ac79	ad 	. 
	jp nc,00dadh		;ac7a	d2 ad 0d 	. . . 
	xor (hl)			;ac7d	ae 	. 
	ld h,h			;ac7e	64 	d 
	xor (hl)			;ac7f	ae 	. 
	and (hl)			;ac80	a6 	. 
	xor (hl)			;ac81	ae 	. 
	dec c			;ac82	0d 	. 
	xor a			;ac83	af 	. 
	inc e			;ac84	1c 	. 
	nop			;ac85	00 	. 
	add a,d			;ac86	82 	. 
	dec bc			;ac87	0b 	. 
	inc c			;ac88	0c 	. 
	inc bc			;ac89	03 	. 
	nop			;ac8a	00 	. 
	add a,d			;ac8b	82 	. 
	dec bc			;ac8c	0b 	. 
	inc c			;ac8d	0c 	. 
	ld d,e			;ac8e	53 	S 
	nop			;ac8f	00 	. 
	add a,a			;ac90	87 	. 
	ld (02423h),hl		;ac91	22 23 24 	" # $ 
	nop			;ac94	00 	. 
	ld (02423h),hl		;ac95	22 23 24 	" # $ 
	add hl,bc			;ac98	09 	. 
	nop			;ac99	00 	. 
	adc a,b			;ac9a	88 	. 
	dec h			;ac9b	25 	% 
	ld h,027h		;ac9c	26 27 	& ' 
	jr z,lacc5h		;ac9e	28 25 	( % 
	ld h,027h		;aca0	26 27 	& ' 
	jr z,$+10		;aca2	28 08 	( . 
	nop			;aca4	00 	. 
	adc a,b			;aca5	88 	. 
	add hl,hl			;aca6	29 	) 
	ld hl,(02c2bh)		;aca7	2a 2b 2c 	* + , 
	add hl,hl			;acaa	29 	) 
	ld hl,(02c2bh)		;acab	2a 2b 2c 	* + , 
	ld (bc),a			;acae	02 	. 
	nop			;acaf	00 	. 
	jr nz,lacc7h		;acb0	20 15 	  . 
	nop			;acb2	00 	. 
	jr lacb5h		;acb3	18 00 	. . 
lacb5h:
	add a,d			;acb5	82 	. 
	dec bc			;acb6	0b 	. 
	inc c			;acb7	0c 	. 
	inc hl			;acb8	23 	# 
	nop			;acb9	00 	. 
	add a,(hl)			;acba	86 	. 
	dec bc			;acbb	0b 	. 
	inc c			;acbc	0c 	. 
	nop			;acbd	00 	. 
	nop			;acbe	00 	. 
	dec bc			;acbf	0b 	. 
	inc c			;acc0	0c 	. 
	ld de,l8300h		;acc1	11 00 83 	. . . 
	dec l			;acc4	2d 	- 
lacc5h:
	ld l,02fh		;acc5	2e 2f 	. / 
lacc7h:
	inc c			;acc7	0c 	. 
	nop			;acc8	00 	. 
	add a,l			;acc9	85 	. 
	jr nc,lacfdh		;acca	30 31 	0 1 
	ld (03433h),a		;accc	32 33 34 	2 3 4 
	dec bc			;accf	0b 	. 
	nop			;acd0	00 	. 
	add a,l			;acd1	85 	. 
	dec (hl)			;acd2	35 	5 
	ld (hl),037h		;acd3	36 37 	6 7 
	jr c,lad10h		;acd5	38 39 	8 9 
	dec bc			;acd7	0b 	. 
	nop			;acd8	00 	. 
	add a,l			;acd9	85 	. 
	dec (hl)			;acda	35 	5 
	ld a,(03c3bh)		;acdb	3a 3b 3c 	: ; < 
	add hl,sp			;acde	39 	9 
	ld b,000h		;acdf	06 00 	. . 
	add a,c			;ace1	81 	. 
	ld a,(bc)			;ace2	0a 	. 
	inc b			;ace3	04 	. 
	nop			;ace4	00 	. 
	add a,l			;ace5	85 	. 
	dec (hl)			;ace6	35 	5 
	ld a,(03c3bh)		;ace7	3a 3b 3c 	: ; < 
	add hl,sp			;acea	39 	9 
	ex af,af'			;aceb	08 	. 
	nop			;acec	00 	. 
	jr nz,lad04h		;aced	20 15 	  . 
	nop			;acef	00 	. 
	dec d			;acf0	15 	. 
	nop			;acf1	00 	. 
	add a,d			;acf2	82 	. 
	dec bc			;acf3	0b 	. 
	inc c			;acf4	0c 	. 
	dec d			;acf5	15 	. 
	nop			;acf6	00 	. 
	add a,d			;acf7	82 	. 
	dec bc			;acf8	0b 	. 
	inc c			;acf9	0c 	. 
	inc b			;acfa	04 	. 
	nop			;acfb	00 	. 
	add a,d			;acfc	82 	. 
lacfdh:
	dec bc			;acfd	0b 	. 
	inc c			;acfe	0c 	. 
	ld c,(hl)			;acff	4e 	N 
	nop			;ad00	00 	. 
	adc a,e			;ad01	8b 	. 
	djnz lad04h		;ad02	10 00 	. . 
lad04h:
	ld a,(bc)			;ad04	0a 	. 
	nop			;ad05	00 	. 
	nop			;ad06	00 	. 
	djnz lad09h		;ad07	10 00 	. . 
lad09h:
	ld a,(bc)			;ad09	0a 	. 
	ld a,(bc)			;ad0a	0a 	. 
	nop			;ad0b	00 	. 
	inc bc			;ad0c	03 	. 
	dec b			;ad0d	05 	. 
	nop			;ad0e	00 	. 
	add a,c			;ad0f	81 	. 
lad10h:
	djnz lad16h		;ad10	10 04 	. . 
	nop			;ad12	00 	. 
	add a,c			;ad13	81 	. 
	djnz lad1ah		;ad14	10 04 	. . 
lad16h:
	nop			;ad16	00 	. 
	add a,c			;ad17	81 	. 
	djnz lad1dh		;ad18	10 03 	. . 
lad1ah:
	nop			;ad1a	00 	. 
	ld c,015h		;ad1b	0e 15 	. . 
lad1dh:
	add a,c			;ad1d	81 	. 
	ld l,c			;ad1e	69 	i 
	rrca			;ad1f	0f 	. 
	dec d			;ad20	15 	. 
	add a,d			;ad21	82 	. 
	ld l,b			;ad22	68 	h 
	dec d			;ad23	15 	. 
	nop			;ad24	00 	. 
	ld d,000h		;ad25	16 00 	. . 
	add a,d			;ad27	82 	. 
	dec bc			;ad28	0b 	. 
	inc c			;ad29	0c 	. 
	jr lad2ch		;ad2a	18 00 	. . 
lad2ch:
	add a,d			;ad2c	82 	. 
	dec bc			;ad2d	0b 	. 
	inc c			;ad2e	0c 	. 
	inc c			;ad2f	0c 	. 
	nop			;ad30	00 	. 
	add a,d			;ad31	82 	. 
	dec bc			;ad32	0b 	. 
	inc c			;ad33	0c 	. 
	rla			;ad34	17 	. 
	nop			;ad35	00 	. 
	ld b,003h		;ad36	06 03 	. . 
	ex af,af'			;ad38	08 	. 
	nop			;ad39	00 	. 
	ex af,af'			;ad3a	08 	. 
	inc d			;ad3b	14 	. 
	inc d			;ad3c	14 	. 
	nop			;ad3d	00 	. 
	ld (bc),a			;ad3e	02 	. 
	djnz lad52h		;ad3f	10 11 	. . 
	nop			;ad41	00 	. 
	ex af,af'			;ad42	08 	. 
	djnz lad48h		;ad43	10 03 	. . 
	nop			;ad45	00 	. 
	add a,d			;ad46	82 	. 
	ld a,(bc)			;ad47	0a 	. 
lad48h:
	ld l,c			;ad48	69 	i 
	rlca			;ad49	07 	. 
	dec d			;ad4a	15 	. 
	add a,c			;ad4b	81 	. 
	ld l,c			;ad4c	69 	i 
	rlca			;ad4d	07 	. 
	dec d			;ad4e	15 	. 
	add a,c			;ad4f	81 	. 
	ld l,b			;ad50	68 	h 
	rlca			;ad51	07 	. 
lad52h:
	dec d			;ad52	15 	. 
	add a,c			;ad53	81 	. 
	ld l,b			;ad54	68 	h 
	rlca			;ad55	07 	. 
	dec d			;ad56	15 	. 
	nop			;ad57	00 	. 
	inc d			;ad58	14 	. 
	nop			;ad59	00 	. 
	add a,d			;ad5a	82 	. 
	dec bc			;ad5b	0b 	. 
	inc c			;ad5c	0c 	. 
	ex af,af'			;ad5d	08 	. 
	nop			;ad5e	00 	. 
	add a,d			;ad5f	82 	. 
	dec bc			;ad60	0b 	. 
	inc c			;ad61	0c 	. 
	ld d,b			;ad62	50 	P 
	nop			;ad63	00 	. 
	ld (bc),a			;ad64	02 	. 
	djnz lad6ah		;ad65	10 03 	. . 
	nop			;ad67	00 	. 
	add a,c			;ad68	81 	. 
	ld a,(bc)			;ad69	0a 	. 
lad6ah:
	ld b,000h		;ad6a	06 00 	. . 
	add a,h			;ad6c	84 	. 
	ld a,(bc)			;ad6d	0a 	. 
	nop			;ad6e	00 	. 
	nop			;ad6f	00 	. 
	ld (0000fh),hl		;ad70	22 0f 00 	" . . 
	add a,c			;ad73	81 	. 
	dec h			;ad74	25 	% 
	rrca			;ad75	0f 	. 
	nop			;ad76	00 	. 
	add a,c			;ad77	81 	. 
	add hl,hl			;ad78	29 	) 
	inc b			;ad79	04 	. 
	dec d			;ad7a	15 	. 
	add a,c			;ad7b	81 	. 
	ld l,c			;ad7c	69 	i 
	inc bc			;ad7d	03 	. 
	dec d			;ad7e	15 	. 
	add a,c			;ad7f	81 	. 
	ld l,c			;ad80	69 	i 
	inc bc			;ad81	03 	. 
	dec d			;ad82	15 	. 
	inc bc			;ad83	03 	. 
	ld l,c			;ad84	69 	i 
	dec b			;ad85	05 	. 
	dec d			;ad86	15 	. 
	add a,c			;ad87	81 	. 
	ld l,b			;ad88	68 	h 
	inc bc			;ad89	03 	. 
	dec d			;ad8a	15 	. 
	add a,c			;ad8b	81 	. 
	ld l,b			;ad8c	68 	h 
	inc bc			;ad8d	03 	. 
	dec d			;ad8e	15 	. 
	inc bc			;ad8f	03 	. 
	ld l,b			;ad90	68 	h 
	add a,c			;ad91	81 	. 
	dec d			;ad92	15 	. 
	nop			;ad93	00 	. 
	dec e			;ad94	1d 	. 
	nop			;ad95	00 	. 
	add a,d			;ad96	82 	. 
	dec bc			;ad97	0b 	. 
	inc c			;ad98	0c 	. 
	inc d			;ad99	14 	. 
	nop			;ad9a	00 	. 
	add a,d			;ad9b	82 	. 
	dec bc			;ad9c	0b 	. 
	inc c			;ad9d	0c 	. 
	inc b			;ad9e	04 	. 
	nop			;ad9f	00 	. 
	add a,d			;ada0	82 	. 
	dec bc			;ada1	0b 	. 
	inc c			;ada2	0c 	. 
	dec (hl)			;ada3	35 	5 
	nop			;ada4	00 	. 
	add a,d			;ada5	82 	. 
	inc hl			;ada6	23 	# 
	inc h			;ada7	24 	$ 
	inc bc			;ada8	03 	. 
	nop			;ada9	00 	. 
	add a,c			;adaa	81 	. 
	ld a,(bc)			;adab	0a 	. 
	inc b			;adac	04 	. 
	nop			;adad	00 	. 
	inc bc			;adae	03 	. 
	ld a,(bc)			;adaf	0a 	. 
	inc bc			;adb0	03 	. 
	nop			;adb1	00 	. 
	add a,e			;adb2	83 	. 
	ld h,027h		;adb3	26 27 	& ' 
	jr z,ladc4h		;adb5	28 0d 	( . 
	nop			;adb7	00 	. 
	add a,h			;adb8	84 	. 
	ld hl,(02c2bh)		;adb9	2a 2b 2c 	* + , 
	ld a,(bc)			;adbc	0a 	. 
	inc c			;adbd	0c 	. 
ladbeh:
	nop			;adbe	00 	. 
	inc b			;adbf	04 	. 
	dec d			;adc0	15 	. 
	add a,c			;adc1	81 	. 
	ld l,c			;adc2	69 	i 
	inc b			;adc3	04 	. 
ladc4h:
	dec d			;adc4	15 	. 
ladc5h:
	inc bc			;adc5	03 	. 
	ld l,c			;adc6	69 	i 
	ex af,af'			;adc7	08 	. 
	dec d			;adc8	15 	. 
	add a,c			;adc9	81 	. 
	ld l,b			;adca	68 	h 
	inc b			;adcb	04 	. 
	dec d			;adcc	15 	. 
	inc bc			;adcd	03 	. 
	ld l,b			;adce	68 	h 
	inc b			;adcf	04 	. 
	dec d			;add0	15 	. 
	nop			;add1	00 	. 
	dec bc			;add2	0b 	. 
	nop			;add3	00 	. 
	add a,d			;add4	82 	. 
	dec bc			;add5	0b 	. 
	inc c			;add6	0c 	. 
	dec de			;add7	1b 	. 
	nop			;add8	00 	. 
	add a,d			;add9	82 	. 
	dec bc			;adda	0b 	. 
	inc c			;addb	0c 	. 
	ex af,af'			;addc	08 	. 
	nop			;addd	00 	. 
	add a,d			;adde	82 	. 
	dec bc			;addf	0b 	. 
	inc c			;ade0	0c 	. 
	ld a,(bc)			;ade1	0a 	. 
	nop			;ade2	00 	. 
	add a,d			;ade3	82 	. 
	dec bc			;ade4	0b 	. 
	inc c			;ade5	0c 	. 
	ld h,000h		;ade6	26 00 	& . 
	add a,c			;ade8	81 	. 
	ld a,(bc)			;ade9	0a 	. 
	ld a,(bc)			;adea	0a 	. 
	nop			;adeb	00 	. 
	add a,c			;adec	81 	. 
	ld (bc),a			;aded	02 	. 
	ld a,(bc)			;adee	0a 	. 
	nop			;adef	00 	. 
	ld (bc),a			;adf0	02 	. 
	ld a,(bc)			;adf1	0a 	. 
	ld (bc),a			;adf2	02 	. 
	inc bc			;adf3	03 	. 
	inc c			;adf4	0c 	. 
	nop			;adf5	00 	. 
	inc b			;adf6	04 	. 
	djnz lae05h		;adf7	10 0c 	. . 
	nop			;adf9	00 	. 
	inc b			;adfa	04 	. 
	djnz lae00h		;adfb	10 03 	. . 
	ld l,c			;adfd	69 	i 
	inc b			;adfe	04 	. 
	dec d			;adff	15 	. 
lae00h:
	add a,c			;ae00	81 	. 
	ld l,c			;ae01	69 	i 
	ex af,af'			;ae02	08 	. 
	dec d			;ae03	15 	. 
	inc bc			;ae04	03 	. 
lae05h:
	ld l,b			;ae05	68 	h 
	inc b			;ae06	04 	. 
	dec d			;ae07	15 	. 
	add a,c			;ae08	81 	. 
	ld l,b			;ae09	68 	h 
	ex af,af'			;ae0a	08 	. 
	dec d			;ae0b	15 	. 
	nop			;ae0c	00 	. 
	djnz lae0fh		;ae0d	10 00 	. . 
lae0fh:
	add a,d			;ae0f	82 	. 
	dec bc			;ae10	0b 	. 
	inc c			;ae11	0c 	. 
	ld a,(de)			;ae12	1a 	. 
	nop			;ae13	00 	. 
	add a,d			;ae14	82 	. 
	dec bc			;ae15	0b 	. 
	inc c			;ae16	0c 	. 
	ld d,000h		;ae17	16 00 	. . 
	rlca			;ae19	07 	. 
	ld a,(bc)			;ae1a	0a 	. 
	ex af,af'			;ae1b	08 	. 
	nop			;ae1c	00 	. 
	add a,c			;ae1d	81 	. 
	inc d			;ae1e	14 	. 
	rlca			;ae1f	07 	. 
	djnz lae2ah		;ae20	10 08 	. . 
	nop			;ae22	00 	. 
	add a,h			;ae23	84 	. 
	inc d			;ae24	14 	. 
	ld a,(bc)			;ae25	0a 	. 
	ld a,(bc)			;ae26	0a 	. 
	djnz lae32h		;ae27	10 09 	. . 
	nop			;ae29	00 	. 
lae2ah:
	ld (bc),a			;ae2a	02 	. 
	inc bc			;ae2b	03 	. 
	add a,d			;ae2c	82 	. 
	nop			;ae2d	00 	. 
	inc d			;ae2e	14 	. 
	ld (bc),a			;ae2f	02 	. 
	ld a,(bc)			;ae30	0a 	. 
	ld (bc),a			;ae31	02 	. 
lae32h:
	nop			;ae32	00 	. 
	add a,c			;ae33	81 	. 
	djnz lae3dh		;ae34	10 07 	. . 
	nop			;ae36	00 	. 
	ld (bc),a			;ae37	02 	. 
	djnz ladbeh		;ae38	10 84 	. . 
	nop			;ae3a	00 	. 
	djnz lae3dh		;ae3b	10 00 	. . 
lae3dh:
	djnz $+12		;ae3d	10 0a 	. . 
	nop			;ae3f	00 	. 
	ld (bc),a			;ae40	02 	. 
	djnz ladc5h		;ae41	10 82 	. . 
	nop			;ae43	00 	. 
	djnz lae4ch		;ae44	10 06 	. . 
	nop			;ae46	00 	. 
	add a,c			;ae47	81 	. 
	djnz lae4fh		;ae48	10 05 	. . 
	nop			;ae4a	00 	. 
	rlca			;ae4b	07 	. 
lae4ch:
	dec d			;ae4c	15 	. 
	add a,c			;ae4d	81 	. 
	ld l,c			;ae4e	69 	i 
lae4fh:
	inc bc			;ae4f	03 	. 
	dec d			;ae50	15 	. 
	add a,c			;ae51	81 	. 
	ld l,c			;ae52	69 	i 
	ld (bc),a			;ae53	02 	. 
	dec d			;ae54	15 	. 
	ld (bc),a			;ae55	02 	. 
	ld l,c			;ae56	69 	i 
	rlca			;ae57	07 	. 
	dec d			;ae58	15 	. 
	add a,c			;ae59	81 	. 
	ld l,b			;ae5a	68 	h 
	inc bc			;ae5b	03 	. 
	dec d			;ae5c	15 	. 
	add a,c			;ae5d	81 	. 
	ld l,b			;ae5e	68 	h 
	ld (bc),a			;ae5f	02 	. 
	dec d			;ae60	15 	. 
	ld (bc),a			;ae61	02 	. 
	ld l,b			;ae62	68 	h 
	nop			;ae63	00 	. 
	inc d			;ae64	14 	. 
	nop			;ae65	00 	. 
	add a,d			;ae66	82 	. 
	dec bc			;ae67	0b 	. 
	inc c			;ae68	0c 	. 
	dec d			;ae69	15 	. 
	nop			;ae6a	00 	. 
	add a,d			;ae6b	82 	. 
	dec bc			;ae6c	0b 	. 
	inc c			;ae6d	0c 	. 
	inc de			;ae6e	13 	. 
	nop			;ae6f	00 	. 
	add a,d			;ae70	82 	. 
	dec bc			;ae71	0b 	. 
	inc c			;ae72	0c 	. 
	add hl,bc			;ae73	09 	. 
	nop			;ae74	00 	. 
	add a,c			;ae75	81 	. 
	ld a,(bc)			;ae76	0a 	. 
	ld c,000h		;ae77	0e 00 	. . 
	add a,e			;ae79	83 	. 
	ld a,(bc)			;ae7a	0a 	. 
	nop			;ae7b	00 	. 
	ld a,(bc)			;ae7c	0a 	. 
	ld (08100h),hl		;ae7d	22 00 81 	" . . 
	ld (00003h),hl		;ae80	22 03 00 	" . . 
	add a,d			;ae83	82 	. 
	inc d			;ae84	14 	. 
	ld a,(bc)			;ae85	0a 	. 
	ld (bc),a			;ae86	02 	. 
	nop			;ae87	00 	. 
	ld (bc),a			;ae88	02 	. 
	inc d			;ae89	14 	. 
	ld b,000h		;ae8a	06 00 	. . 
	add a,c			;ae8c	81 	. 
	dec h			;ae8d	25 	% 
	inc bc			;ae8e	03 	. 
	nop			;ae8f	00 	. 
	add a,d			;ae90	82 	. 
	inc d			;ae91	14 	. 
	ld a,(bc)			;ae92	0a 	. 
	ld (bc),a			;ae93	02 	. 
	nop			;ae94	00 	. 
	ld (bc),a			;ae95	02 	. 
	inc d			;ae96	14 	. 
	ld b,000h		;ae97	06 00 	. . 
	add a,c			;ae99	81 	. 
	add hl,hl			;ae9a	29 	) 
	ld a,(bc)			;ae9b	0a 	. 
	dec d			;ae9c	15 	. 
	inc bc			;ae9d	03 	. 
	ld l,c			;ae9e	69 	i 
	dec c			;ae9f	0d 	. 
	dec d			;aea0	15 	. 
	inc bc			;aea1	03 	. 
	ld l,b			;aea2	68 	h 
	inc bc			;aea3	03 	. 
	dec d			;aea4	15 	. 
	nop			;aea5	00 	. 
	rrca			;aea6	0f 	. 
	nop			;aea7	00 	. 
	add a,c			;aea8	81 	. 
	inc d			;aea9	14 	. 
	add hl,bc			;aeaa	09 	. 
	nop			;aeab	00 	. 
	add a,d			;aeac	82 	. 
	dec bc			;aead	0b 	. 
	inc c			;aeae	0c 	. 
	inc b			;aeaf	04 	. 
	nop			;aeb0	00 	. 
	add a,c			;aeb1	81 	. 
	inc d			;aeb2	14 	. 
	rrca			;aeb3	0f 	. 
	nop			;aeb4	00 	. 
	add a,h			;aeb5	84 	. 
	inc d			;aeb6	14 	. 
	nop			;aeb7	00 	. 
	dec bc			;aeb8	0b 	. 
	inc c			;aeb9	0c 	. 
	add hl,bc			;aeba	09 	. 
	nop			;aebb	00 	. 
	add a,h			;aebc	84 	. 
	ld (bc),a			;aebd	02 	. 
	nop			;aebe	00 	. 
	nop			;aebf	00 	. 
	inc d			;aec0	14 	. 
	inc c			;aec1	0c 	. 
	nop			;aec2	00 	. 
	ld (bc),a			;aec3	02 	. 
	inc d			;aec4	14 	. 
	add a,d			;aec5	82 	. 
	nop			;aec6	00 	. 
	inc d			;aec7	14 	. 
	inc c			;aec8	0c 	. 
	nop			;aec9	00 	. 
	add a,h			;aeca	84 	. 
	inc d			;aecb	14 	. 
	nop			;aecc	00 	. 
	nop			;aecd	00 	. 
	inc d			;aece	14 	. 
	rlca			;aecf	07 	. 
	nop			;aed0	00 	. 
	add a,c			;aed1	81 	. 
	djnz laed7h		;aed2	10 03 	. . 
	nop			;aed4	00 	. 
	ld (bc),a			;aed5	02 	. 
	inc d			;aed6	14 	. 
laed7h:
	ld (bc),a			;aed7	02 	. 
	nop			;aed8	00 	. 
	add a,(hl)			;aed9	86 	. 
	inc d			;aeda	14 	. 
	inc hl			;aedb	23 	# 
	inc h			;aedc	24 	$ 
	nop			;aedd	00 	. 
	nop			;aede	00 	. 
	inc d			;aedf	14 	. 
	dec b			;aee0	05 	. 
	nop			;aee1	00 	. 
	inc bc			;aee2	03 	. 
	inc d			;aee3	14 	. 
	ld (bc),a			;aee4	02 	. 
	nop			;aee5	00 	. 
	add a,(hl)			;aee6	86 	. 
	inc d			;aee7	14 	. 
	ld h,027h		;aee8	26 27 	& ' 
	jr z,laeech		;aeea	28 00 	( . 
laeech:
	inc d			;aeec	14 	. 
	inc bc			;aeed	03 	. 
	nop			;aeee	00 	. 
	add a,c			;aeef	81 	. 
	djnz laef6h		;aef0	10 04 	. . 
	inc d			;aef2	14 	. 
	inc bc			;aef3	03 	. 
	nop			;aef4	00 	. 
	adc a,b			;aef5	88 	. 
laef6h:
	ld hl,(02c2bh)		;aef6	2a 2b 2c 	* + , 
	nop			;aef9	00 	. 
	inc d			;aefa	14 	. 
	nop			;aefb	00 	. 
	nop			;aefc	00 	. 
	djnz laf04h		;aefd	10 05 	. . 
	inc d			;aeff	14 	. 
	inc bc			;af00	03 	. 
	nop			;af01	00 	. 
	dec b			;af02	05 	. 
	dec d			;af03	15 	. 
laf04h:
	ld (bc),a			;af04	02 	. 
	ld l,c			;af05	69 	i 
	ld c,015h		;af06	0e 15 	. . 
	ld (bc),a			;af08	02 	. 
	ld l,b			;af09	68 	h 
	add hl,bc			;af0a	09 	. 
	dec d			;af0b	15 	. 
	nop			;af0c	00 	. 
	ld (de),a			;af0d	12 	. 
	nop			;af0e	00 	. 
	add a,d			;af0f	82 	. 
	dec bc			;af10	0b 	. 
	inc c			;af11	0c 	. 
	ex af,af'			;af12	08 	. 
	nop			;af13	00 	. 
	add a,d			;af14	82 	. 
	dec bc			;af15	0b 	. 
	inc c			;af16	0c 	. 
	jr laf19h		;af17	18 00 	. . 
laf19h:
	add a,d			;af19	82 	. 
	dec bc			;af1a	0b 	. 
	inc c			;af1b	0c 	. 
	ld b,d			;af1c	42 	B 
	nop			;af1d	00 	. 
	add a,e			;af1e	83 	. 
	ld (02423h),hl		;af1f	22 23 24 	" # $ 
	dec c			;af22	0d 	. 
	nop			;af23	00 	. 
	add a,h			;af24	84 	. 
	dec h			;af25	25 	% 
	ld h,027h		;af26	26 27 	& ' 
	jr z,laf36h		;af28	28 0c 	( . 
	nop			;af2a	00 	. 
	add a,h			;af2b	84 	. 
	add hl,hl			;af2c	29 	) 
	ld hl,(02c2bh)		;af2d	2a 2b 2c 	* + , 
	ld (bc),a			;af30	02 	. 
	nop			;af31	00 	. 
	jr nz,laf49h		;af32	20 15 	  . 
	nop			;af34	00 	. 
	ld c,a			;af35	4f 	O 
laf36h:
	xor a			;af36	af 	. 
	ld e,l			;af37	5d 	] 
	xor a			;af38	af 	. 
	ld l,e			;af39	6b 	k 
	xor a			;af3a	af 	. 
	ld a,c			;af3b	79 	y 
	xor a			;af3c	af 	. 
	add a,a			;af3d	87 	. 
	xor a			;af3e	af 	. 
	sub l			;af3f	95 	. 
	xor a			;af40	af 	. 
	and e			;af41	a3 	. 
	xor a			;af42	af 	. 
	xor a			;af43	af 	. 
	xor a			;af44	af 	. 
	cp e			;af45	bb 	. 
	xor a			;af46	af 	. 
	rst 0			;af47	c7 	. 
	xor a			;af48	af 	. 
laf49h:
	out (0afh),a		;af49	d3 af 	. . 
	rst 18h			;af4b	df 	. 
	xor a			;af4c	af 	. 
	ex de,hl			;af4d	eb 	. 
	xor a			;af4e	af 	. 
	rst 30h			;af4f	f7 	. 
	xor a			;af50	af 	. 
	rst 30h			;af51	f7 	. 
	xor a			;af52	af 	. 
	rst 30h			;af53	f7 	. 
	xor a			;af54	af 	. 
	ld h,l			;af55	65 	e 
	or b			;af56	b0 	. 
	rst 18h			;af57	df 	. 
	or b			;af58	b0 	. 
	rla			;af59	17 	. 
	or c			;af5a	b1 	. 
	add a,d			;af5b	82 	. 
	or c			;af5c	b1 	. 
	cp l			;af5d	bd 	. 
	or c			;af5e	b1 	. 
laf5fh:
	add hl,bc			;af5f	09 	. 
	or d			;af60	b2 	. 
	add hl,sp			;af61	39 	9 
	or d			;af62	b2 	. 
	adc a,e			;af63	8b 	. 
	or d			;af64	b2 	. 
	ret z			;af65	c8 	. 
	or d			;af66	b2 	. 
	add hl,de			;af67	19 	. 
	or e			;af68	b3 	. 
	sbc a,a			;af69	9f 	. 
	or e			;af6a	b3 	. 
	rst 8			;af6b	cf 	. 
	or e			;af6c	b3 	. 
	rst 8			;af6d	cf 	. 
	or e			;af6e	b3 	. 
	inc e			;af6f	1c 	. 
	or h			;af70	b4 	. 
	add a,c			;af71	81 	. 
	or h			;af72	b4 	. 
	jp pe,035b4h		;af73	ea b4 35 	. . 5 
	or l			;af76	b5 	. 
	sbc a,e			;af77	9b 	. 
	or l			;af78	b5 	. 
	ex de,hl			;af79	eb 	. 
	or l			;af7a	b5 	. 
	ex de,hl			;af7b	eb 	. 
	or l			;af7c	b5 	. 
	ld a,(de)			;af7d	1a 	. 
	or (hl)			;af7e	b6 	. 
	ld a,c			;af7f	79 	y 
	or (hl)			;af80	b6 	. 
	rst 20h			;af81	e7 	. 
	or (hl)			;af82	b6 	. 
	ld c,l			;af83	4d 	M 
	or a			;af84	b7 	. 
	cp d			;af85	ba 	. 
	or a			;af86	b7 	. 
	inc c			;af87	0c 	. 
	cp b			;af88	b8 	. 
	inc c			;af89	0c 	. 
	cp b			;af8a	b8 	. 
	ld l,d			;af8b	6a 	j 
	cp b			;af8c	b8 	. 
	or a			;af8d	b7 	. 
	cp b			;af8e	b8 	. 
	add hl,de			;af8f	19 	. 
	cp c			;af90	b9 	. 
	sub b			;af91	90 	. 
	cp c			;af92	b9 	. 
	defb 0ddh,0b9h,066h	;illegal sequence		;af93	dd b9 66 	. . f 
	cp d			;af96	ba 	. 
	ld h,(hl)			;af97	66 	f 
	cp d			;af98	ba 	. 
	call c,03abah		;af99	dc ba 3a 	. . : 
	cp e			;af9c	bb 	. 
	sub b			;af9d	90 	. 
	cp e			;af9e	bb 	. 
	cp (hl)			;af9f	be 	. 
	cp e			;afa0	bb 	. 
	djnz laf5fh		;afa1	10 bc 	. . 
	rst 30h			;afa3	f7 	. 
	xor a			;afa4	af 	. 
	cp l			;afa5	bd 	. 
	or c			;afa6	b1 	. 
	rst 8			;afa7	cf 	. 
	or e			;afa8	b3 	. 
	ex de,hl			;afa9	eb 	. 
	or l			;afaa	b5 	. 
	inc c			;afab	0c 	. 
	cp b			;afac	b8 	. 
	ld h,(hl)			;afad	66 	f 
	cp d			;afae	ba 	. 
	rst 30h			;afaf	f7 	. 
	xor a			;afb0	af 	. 
	add hl,bc			;afb1	09 	. 
	or d			;afb2	b2 	. 
	rst 8			;afb3	cf 	. 
	or e			;afb4	b3 	. 
	ex de,hl			;afb5	eb 	. 
	or l			;afb6	b5 	. 
	inc c			;afb7	0c 	. 
	cp b			;afb8	b8 	. 
	ld h,(hl)			;afb9	66 	f 
	cp d			;afba	ba 	. 
	rst 30h			;afbb	f7 	. 
	xor a			;afbc	af 	. 
	add hl,sp			;afbd	39 	9 
	or d			;afbe	b2 	. 
	inc e			;afbf	1c 	. 
	or h			;afc0	b4 	. 
	ld a,(de)			;afc1	1a 	. 
lafc2h:
	or (hl)			;afc2	b6 	. 
	ld l,d			;afc3	6a 	j 
	cp b			;afc4	b8 	. 
	call c,065bah		;afc5	dc ba 65 	. . e 
	or b			;afc8	b0 	. 
	adc a,e			;afc9	8b 	. 
	or d			;afca	b2 	. 
	add a,c			;afcb	81 	. 
	or h			;afcc	b4 	. 
	ld a,c			;afcd	79 	y 
	or (hl)			;afce	b6 	. 
	or a			;afcf	b7 	. 
	cp b			;afd0	b8 	. 
	ld a,(0dfbbh)		;afd1	3a bb df 	: . . 
	or b			;afd4	b0 	. 
	ret z			;afd5	c8 	. 
	or d			;afd6	b2 	. 
	jp pe,0e7b4h		;afd7	ea b4 e7 	. . . 
	or (hl)			;afda	b6 	. 
	add hl,de			;afdb	19 	. 
	cp c			;afdc	b9 	. 
	sub b			;afdd	90 	. 
	cp e			;afde	bb 	. 
	rla			;afdf	17 	. 
	or c			;afe0	b1 	. 
	add hl,de			;afe1	19 	. 
	or e			;afe2	b3 	. 
	dec (hl)			;afe3	35 	5 
	or l			;afe4	b5 	. 
	ld c,l			;afe5	4d 	M 
	or a			;afe6	b7 	. 
	sub b			;afe7	90 	. 
	cp c			;afe8	b9 	. 
	cp (hl)			;afe9	be 	. 
	cp e			;afea	bb 	. 
	add a,d			;afeb	82 	. 
	or c			;afec	b1 	. 
	sbc a,a			;afed	9f 	. 
	or e			;afee	b3 	. 
	sbc a,e			;afef	9b 	. 
	or l			;aff0	b5 	. 
	cp d			;aff1	ba 	. 
	or a			;aff2	b7 	. 
	defb 0ddh,0b9h,010h	;illegal sequence		;aff3	dd b9 10 	. . . 
	cp h			;aff6	bc 	. 
	add a,c			;aff7	81 	. 
	pop hl			;aff8	e1 	. 
	djnz lb04bh		;aff9	10 50 	. P 
	ld c,000h		;affb	0e 00 	. . 
	ld (bc),a			;affd	02 	. 
	ld d,b			;affe	50 	P 
	rrca			;afff	0f 	. 
	nop			;b000	00 	. 
	add a,c			;b001	81 	. 
	ld d,b			;b002	50 	P 
	dec b			;b003	05 	. 
	nop			;b004	00 	. 
	add a,c			;b005	81 	. 
	ld d,b			;b006	50 	P 
	add hl,bc			;b007	09 	. 
	nop			;b008	00 	. 
	add a,c			;b009	81 	. 
	ld d,b			;b00a	50 	P 
	inc bc			;b00b	03 	. 
	nop			;b00c	00 	. 
	add a,l			;b00d	85 	. 
	ld d,b			;b00e	50 	P 
	nop			;b00f	00 	. 
	ld d,b			;b010	50 	P 
	nop			;b011	00 	. 
	ld d,b			;b012	50 	P 
	inc bc			;b013	03 	. 
	nop			;b014	00 	. 
	add a,c			;b015	81 	. 
	ld d,b			;b016	50 	P 
	inc bc			;b017	03 	. 
	nop			;b018	00 	. 
	add a,c			;b019	81 	. 
	ld d,b			;b01a	50 	P 
	inc b			;b01b	04 	. 
	nop			;b01c	00 	. 
	ld (bc),a			;b01d	02 	. 
	ld d,b			;b01e	50 	P 
	add a,d			;b01f	82 	. 
	nop			;b020	00 	. 
	ld d,b			;b021	50 	P 
	inc bc			;b022	03 	. 
	nop			;b023	00 	. 
	add a,d			;b024	82 	. 
	ld d,b			;b025	50 	P 
	nop			;b026	00 	. 
	inc bc			;b027	03 	. 
	ld d,b			;b028	50 	P 
	add a,d			;b029	82 	. 
	nop			;b02a	00 	. 
	ld d,b			;b02b	50 	P 
	rlca			;b02c	07 	. 
	nop			;b02d	00 	. 
	add a,c			;b02e	81 	. 
	ld d,b			;b02f	50 	P 
	inc b			;b030	04 	. 
	nop			;b031	00 	. 
	ld (bc),a			;b032	02 	. 
	ld d,b			;b033	50 	P 
	add a,d			;b034	82 	. 
	nop			;b035	00 	. 
	ld d,b			;b036	50 	P 
	rlca			;b037	07 	. 
	nop			;b038	00 	. 
	add a,c			;b039	81 	. 
	ld d,b			;b03a	50 	P 
	inc b			;b03b	04 	. 
	nop			;b03c	00 	. 
	ld (bc),a			;b03d	02 	. 
	ld d,b			;b03e	50 	P 
	inc bc			;b03f	03 	. 
	nop			;b040	00 	. 
	add a,c			;b041	81 	. 
	ld d,b			;b042	50 	P 
	ld a,(bc)			;b043	0a 	. 
	nop			;b044	00 	. 
	ld (bc),a			;b045	02 	. 
	ld d,b			;b046	50 	P 
	inc bc			;b047	03 	. 
	nop			;b048	00 	. 
	ld (bc),a			;b049	02 	. 
	ld d,b			;b04a	50 	P 
lb04bh:
	add a,d			;b04b	82 	. 
	nop			;b04c	00 	. 
	ld d,b			;b04d	50 	P 
	rlca			;b04e	07 	. 
	nop			;b04f	00 	. 
	ld (bc),a			;b050	02 	. 
	ld d,b			;b051	50 	P 
	adc a,c			;b052	89 	. 
	nop			;b053	00 	. 
	ld d,b			;b054	50 	P 
	nop			;b055	00 	. 
	ld d,b			;b056	50 	P 
	ld d,b			;b057	50 	P 
	nop			;b058	00 	. 
	ld d,b			;b059	50 	P 
	nop			;b05a	00 	. 
	ld d,b			;b05b	50 	P 
	inc b			;b05c	04 	. 
	nop			;b05d	00 	. 
	rrca			;b05e	0f 	. 
	ld d,b			;b05f	50 	P 
	add a,c			;b060	81 	. 
	ld d,c			;b061	51 	Q 
	ld (bc),a			;b062	02 	. 
	ld d,b			;b063	50 	P 
	nop			;b064	00 	. 
	ld de,lab50h		;b065	11 50 ab 	. P . 
	nop			;b068	00 	. 
	ld e,b			;b069	58 	X 
	nop			;b06a	00 	. 
	nop			;b06b	00 	. 
	ld e,b			;b06c	58 	X 
	nop			;b06d	00 	. 
	nop			;b06e	00 	. 
	ld e,b			;b06f	58 	X 
	nop			;b070	00 	. 
	nop			;b071	00 	. 
	ld e,b			;b072	58 	X 
	nop			;b073	00 	. 
	nop			;b074	00 	. 
	ld a,(bc)			;b075	0a 	. 
	ld d,b			;b076	50 	P 
	nop			;b077	00 	. 
	nop			;b078	00 	. 
	ld e,b			;b079	58 	X 
	nop			;b07a	00 	. 
	nop			;b07b	00 	. 
	ld e,b			;b07c	58 	X 
	nop			;b07d	00 	. 
	nop			;b07e	00 	. 
	ld e,b			;b07f	58 	X 
	nop			;b080	00 	. 
	nop			;b081	00 	. 
	ld e,b			;b082	58 	X 
	nop			;b083	00 	. 
	nop			;b084	00 	. 
	djnz lb0d7h		;b085	10 50 	. P 
	nop			;b087	00 	. 
	nop			;b088	00 	. 
	ld d,b			;b089	50 	P 
	nop			;b08a	00 	. 
	nop			;b08b	00 	. 
	ld e,b			;b08c	58 	X 
	nop			;b08d	00 	. 
	nop			;b08e	00 	. 
	ld e,b			;b08f	58 	X 
	nop			;b090	00 	. 
	nop			;b091	00 	. 
	ld d,b			;b092	50 	P 
	inc bc			;b093	03 	. 
	nop			;b094	00 	. 
	add a,h			;b095	84 	. 
	ld d,b			;b096	50 	P 
	nop			;b097	00 	. 
	nop			;b098	00 	. 
	ld d,b			;b099	50 	P 
	ex af,af'			;b09a	08 	. 
	ld d,e			;b09b	53 	S 
	add a,c			;b09c	81 	. 
	ld d,b			;b09d	50 	P 
	inc bc			;b09e	03 	. 
	nop			;b09f	00 	. 
	ld (bc),a			;b0a0	02 	. 
	ld d,b			;b0a1	50 	P 
	add a,d			;b0a2	82 	. 
	nop			;b0a3	00 	. 
	ld d,b			;b0a4	50 	P 
	ex af,af'			;b0a5	08 	. 
	nop			;b0a6	00 	. 
	adc a,b			;b0a7	88 	. 
	ld d,b			;b0a8	50 	P 
	nop			;b0a9	00 	. 
	nop			;b0aa	00 	. 
	djnz lb0fdh		;b0ab	10 50 	. P 
	ld d,b			;b0ad	50 	P 
	nop			;b0ae	00 	. 
	ld d,b			;b0af	50 	P 
	ex af,af'			;b0b0	08 	. 
	nop			;b0b1	00 	. 
	add a,c			;b0b2	81 	. 
	ld d,b			;b0b3	50 	P 
	inc bc			;b0b4	03 	. 
	nop			;b0b5	00 	. 
	ld (bc),a			;b0b6	02 	. 
	ld d,b			;b0b7	50 	P 
	add a,d			;b0b8	82 	. 
	nop			;b0b9	00 	. 
	ld d,b			;b0ba	50 	P 
	ex af,af'			;b0bb	08 	. 
	nop			;b0bc	00 	. 
	add a,c			;b0bd	81 	. 
	ld d,b			;b0be	50 	P 
	inc bc			;b0bf	03 	. 
	nop			;b0c0	00 	. 
	add a,d			;b0c1	82 	. 
	ld d,b			;b0c2	50 	P 
	ld b,00dh		;b0c3	06 0d 	. . 
	nop			;b0c5	00 	. 
	add a,c			;b0c6	81 	. 
	djnz lb0cbh		;b0c7	10 02 	. . 
	ld d,b			;b0c9	50 	P 
	dec bc			;b0ca	0b 	. 
lb0cbh:
	nop			;b0cb	00 	. 
	add a,c			;b0cc	81 	. 
	djnz lb0d1h		;b0cd	10 02 	. . 
	nop			;b0cf	00 	. 
	rlca			;b0d0	07 	. 
lb0d1h:
	ld d,b			;b0d1	50 	P 
	inc bc			;b0d2	03 	. 
	ld e,h			;b0d3	5c 	\ 
	inc b			;b0d4	04 	. 
	ld d,b			;b0d5	50 	P 
	ld (bc),a			;b0d6	02 	. 
lb0d7h:
	nop			;b0d7	00 	. 
	ld (bc),a			;b0d8	02 	. 
	ld d,b			;b0d9	50 	P 
	ld c,000h		;b0da	0e 00 	. . 
	add a,c			;b0dc	81 	. 
	ld d,b			;b0dd	50 	P 
	nop			;b0de	00 	. 
	ld de,00e50h		;b0df	11 50 0e 	. P . 
	nop			;b0e2	00 	. 
	add a,d			;b0e3	82 	. 
	ld b,050h		;b0e4	06 50 	. P 
	rrca			;b0e6	0f 	. 
	nop			;b0e7	00 	. 
	add a,c			;b0e8	81 	. 
	ld d,b			;b0e9	50 	P 
	ld b,000h		;b0ea	06 00 	. . 
	dec b			;b0ec	05 	. 
	ld d,b			;b0ed	50 	P 
	inc b			;b0ee	04 	. 
	nop			;b0ef	00 	. 
	dec b			;b0f0	05 	. 
	ld d,b			;b0f1	50 	P 
	rlca			;b0f2	07 	. 
	nop			;b0f3	00 	. 
	dec b			;b0f4	05 	. 
	ld d,b			;b0f5	50 	P 
	rrca			;b0f6	0f 	. 
	nop			;b0f7	00 	. 
	add a,c			;b0f8	81 	. 
	ld d,b			;b0f9	50 	P 
	rrca			;b0fa	0f 	. 
	nop			;b0fb	00 	. 
	add a,c			;b0fc	81 	. 
lb0fdh:
	ld d,b			;b0fd	50 	P 
	dec b			;b0fe	05 	. 
	nop			;b0ff	00 	. 
	dec b			;b100	05 	. 
	ld d,b			;b101	50 	P 
	dec b			;b102	05 	. 
	nop			;b103	00 	. 
	inc b			;b104	04 	. 
	ld d,b			;b105	50 	P 
	rlca			;b106	07 	. 
	nop			;b107	00 	. 
	ld b,050h		;b108	06 50 	. P 
	rrca			;b10a	0f 	. 
	nop			;b10b	00 	. 
	add a,c			;b10c	81 	. 
	ld d,b			;b10d	50 	P 
	rrca			;b10e	0f 	. 
	nop			;b10f	00 	. 
	inc c			;b110	0c 	. 
	ld d,b			;b111	50 	P 
	add a,c			;b112	81 	. 
	ld d,c			;b113	51 	Q 
	inc bc			;b114	03 	. 
	ld d,b			;b115	50 	P 
	nop			;b116	00 	. 
	ld de,00450h		;b117	11 50 04 	. P . 
	nop			;b11a	00 	. 
	add a,c			;b11b	81 	. 
	ld d,b			;b11c	50 	P 
	add hl,bc			;b11d	09 	. 
	nop			;b11e	00 	. 
	add a,c			;b11f	81 	. 
	ld d,b			;b120	50 	P 
	dec b			;b121	05 	. 
	nop			;b122	00 	. 
	add a,c			;b123	81 	. 
	djnz lb12fh		;b124	10 09 	. . 
	nop			;b126	00 	. 
	add a,c			;b127	81 	. 
	ld d,b			;b128	50 	P 
	dec b			;b129	05 	. 
	nop			;b12a	00 	. 
	add a,c			;b12b	81 	. 
	djnz lb137h		;b12c	10 09 	. . 
	nop			;b12e	00 	. 
lb12fh:
	add hl,bc			;b12f	09 	. 
	ld d,b			;b130	50 	P 
	dec b			;b131	05 	. 
	nop			;b132	00 	. 
	add a,e			;b133	83 	. 
	ld d,b			;b134	50 	P 
	nop			;b135	00 	. 
	ld d,b			;b136	50 	P 
lb137h:
	rlca			;b137	07 	. 
	nop			;b138	00 	. 
	add a,c			;b139	81 	. 
	djnz $+5		;b13a	10 03 	. . 
	nop			;b13c	00 	. 
	add a,l			;b13d	85 	. 
	djnz lb140h		;b13e	10 00 	. . 
lb140h:
	ld d,b			;b140	50 	P 
	nop			;b141	00 	. 
	ld d,b			;b142	50 	P 
	rlca			;b143	07 	. 
	nop			;b144	00 	. 
	add a,c			;b145	81 	. 
	djnz lb14bh		;b146	10 03 	. . 
	nop			;b148	00 	. 
	add a,l			;b149	85 	. 
	ld d,b			;b14a	50 	P 
lb14bh:
	nop			;b14b	00 	. 
	ld d,b			;b14c	50 	P 
	nop			;b14d	00 	. 
	ld d,b			;b14e	50 	P 
	rlca			;b14f	07 	. 
	nop			;b150	00 	. 
	add a,c			;b151	81 	. 
	djnz lb159h		;b152	10 05 	. . 
	nop			;b154	00 	. 
	add a,d			;b155	82 	. 
	ld d,b			;b156	50 	P 
	nop			;b157	00 	. 
	rrca			;b158	0f 	. 
lb159h:
	ld d,b			;b159	50 	P 
	add a,d			;b15a	82 	. 
	nop			;b15b	00 	. 
	ld d,b			;b15c	50 	P 
	inc bc			;b15d	03 	. 
	nop			;b15e	00 	. 
	add a,c			;b15f	81 	. 
	ld d,b			;b160	50 	P 
	dec b			;b161	05 	. 
	nop			;b162	00 	. 
	add a,c			;b163	81 	. 
	djnz lb16bh		;b164	10 05 	. . 
	nop			;b166	00 	. 
	add a,c			;b167	81 	. 
	ld d,b			;b168	50 	P 
	inc bc			;b169	03 	. 
	nop			;b16a	00 	. 
lb16bh:
	add a,c			;b16b	81 	. 
	ld d,b			;b16c	50 	P 
	dec b			;b16d	05 	. 
	nop			;b16e	00 	. 
	add a,c			;b16f	81 	. 
	djnz lb177h		;b170	10 05 	. . 
	nop			;b172	00 	. 
	inc bc			;b173	03 	. 
	ld d,b			;b174	50 	P 
	add a,c			;b175	81 	. 
	ld d,c			;b176	51 	Q 
lb177h:
	inc bc			;b177	03 	. 
	ld d,b			;b178	50 	P 
	add a,c			;b179	81 	. 
	ld d,c			;b17a	51 	Q 
	dec b			;b17b	05 	. 
	ld d,b			;b17c	50 	P 
	add a,c			;b17d	81 	. 
	ld d,c			;b17e	51 	Q 
	inc bc			;b17f	03 	. 
	ld d,b			;b180	50 	P 
	nop			;b181	00 	. 
	inc d			;b182	14 	. 
	ld d,b			;b183	50 	P 
	ex af,af'			;b184	08 	. 
	djnz $+9		;b185	10 07 	. . 
	ld d,b			;b187	50 	P 
	add a,c			;b188	81 	. 
	djnz lb193h		;b189	10 08 	. . 
	nop			;b18b	00 	. 
	add a,c			;b18c	81 	. 
	djnz lb194h		;b18d	10 05 	. . 
	ld d,b			;b18f	50 	P 
	add a,c			;b190	81 	. 
	djnz lb19dh		;b191	10 0a 	. . 
lb193h:
	nop			;b193	00 	. 
lb194h:
	add a,c			;b194	81 	. 
	djnz $+5		;b195	10 03 	. . 
	ld d,b			;b197	50 	P 
	add a,c			;b198	81 	. 
	djnz lb1a7h		;b199	10 0c 	. . 
	nop			;b19b	00 	. 
	add a,c			;b19c	81 	. 
lb19dh:
	djnz $+4		;b19d	10 02 	. . 
	ld d,b			;b19f	50 	P 
	ld c,000h		;b1a0	0e 00 	. . 
	ld (bc),a			;b1a2	02 	. 
	ld d,b			;b1a3	50 	P 
	ld c,000h		;b1a4	0e 00 	. . 
	ld (bc),a			;b1a6	02 	. 
lb1a7h:
	ld d,b			;b1a7	50 	P 
	ld c,000h		;b1a8	0e 00 	. . 
	ld (bc),a			;b1aa	02 	. 
	ld d,b			;b1ab	50 	P 
	ld c,000h		;b1ac	0e 00 	. . 
	ld (bc),a			;b1ae	02 	. 
	ld d,b			;b1af	50 	P 
	ld c,000h		;b1b0	0e 00 	. . 
	ld (bc),a			;b1b2	02 	. 
	ld d,b			;b1b3	50 	P 
	ld c,000h		;b1b4	0e 00 	. . 
	ld (bc),a			;b1b6	02 	. 
	ld d,b			;b1b7	50 	P 
	add a,c			;b1b8	81 	. 
	ld d,c			;b1b9	51 	Q 
	ld c,050h		;b1ba	0e 50 	. P 
	nop			;b1bc	00 	. 
	add a,c			;b1bd	81 	. 
	ld c,l			;b1be	4d 	M 
	dec c			;b1bf	0d 	. 
	nop			;b1c0	00 	. 
	ld (bc),a			;b1c1	02 	. 
	ld d,b			;b1c2	50 	P 
	add a,c			;b1c3	81 	. 
	ld c,l			;b1c4	4d 	M 
	dec c			;b1c5	0d 	. 
	nop			;b1c6	00 	. 
	ld (bc),a			;b1c7	02 	. 
	ld d,b			;b1c8	50 	P 
	add a,h			;b1c9	84 	. 
	ld c,l			;b1ca	4d 	M 
	nop			;b1cb	00 	. 
	dec bc			;b1cc	0b 	. 
	inc c			;b1cd	0c 	. 
	ld a,(bc)			;b1ce	0a 	. 
	nop			;b1cf	00 	. 
	ld (bc),a			;b1d0	02 	. 
	ld d,b			;b1d1	50 	P 
	add a,c			;b1d2	81 	. 
	ld c,l			;b1d3	4d 	M 
	ex af,af'			;b1d4	08 	. 
	nop			;b1d5	00 	. 
	add a,d			;b1d6	82 	. 
	dec bc			;b1d7	0b 	. 
	inc c			;b1d8	0c 	. 
	inc b			;b1d9	04 	. 
	nop			;b1da	00 	. 
	add a,d			;b1db	82 	. 
	ld d,b			;b1dc	50 	P 
	ld c,l			;b1dd	4d 	M 
	ld c,000h		;b1de	0e 00 	. . 
	add a,d			;b1e0	82 	. 
	ld d,b			;b1e1	50 	P 
	ld c,l			;b1e2	4d 	M 
	ld c,000h		;b1e3	0e 00 	. . 
	add a,d			;b1e5	82 	. 
	ld d,b			;b1e6	50 	P 
	ld c,l			;b1e7	4d 	M 
	ld c,000h		;b1e8	0e 00 	. . 
	add a,d			;b1ea	82 	. 
	ld e,e			;b1eb	5b 	[ 
	ld c,l			;b1ec	4d 	M 
	dec c			;b1ed	0d 	. 
	nop			;b1ee	00 	. 
	add a,e			;b1ef	83 	. 
	ld e,e			;b1f0	5b 	[ 
	nop			;b1f1	00 	. 
	ld c,l			;b1f2	4d 	M 
	inc c			;b1f3	0c 	. 
	nop			;b1f4	00 	. 
	add a,h			;b1f5	84 	. 
	ld e,e			;b1f6	5b 	[ 
	nop			;b1f7	00 	. 
	nop			;b1f8	00 	. 
	ld c,l			;b1f9	4d 	M 
	dec bc			;b1fa	0b 	. 
	nop			;b1fb	00 	. 
	add a,c			;b1fc	81 	. 
	ld e,e			;b1fd	5b 	[ 
	ld c,000h		;b1fe	0e 00 	. . 
	add a,c			;b200	81 	. 
	ld e,e			;b201	5b 	[ 
	inc b			;b202	04 	. 
	nop			;b203	00 	. 
	ld a,(bc)			;b204	0a 	. 
	ld d,b			;b205	50 	P 
	ld b,05ah		;b206	06 5a 	. Z 
	nop			;b208	00 	. 
	ld de,00e50h		;b209	11 50 0e 	. P . 
	nop			;b20c	00 	. 
	ld (bc),a			;b20d	02 	. 
	ld d,b			;b20e	50 	P 
	ld c,000h		;b20f	0e 00 	. . 
	ld (bc),a			;b211	02 	. 
	ld d,b			;b212	50 	P 
	ld c,000h		;b213	0e 00 	. . 
	ld (bc),a			;b215	02 	. 
	ld d,b			;b216	50 	P 
	ld c,000h		;b217	0e 00 	. . 
	ld (bc),a			;b219	02 	. 
	ld d,b			;b21a	50 	P 
	ld c,000h		;b21b	0e 00 	. . 
	add a,c			;b21d	81 	. 
	ld d,b			;b21e	50 	P 
	rrca			;b21f	0f 	. 
	nop			;b220	00 	. 
	add a,c			;b221	81 	. 
	ld d,b			;b222	50 	P 
	rrca			;b223	0f 	. 
	nop			;b224	00 	. 
	add a,c			;b225	81 	. 
	ld d,b			;b226	50 	P 
	rrca			;b227	0f 	. 
	nop			;b228	00 	. 
	add a,c			;b229	81 	. 
	ld d,b			;b22a	50 	P 
	dec c			;b22b	0d 	. 
	nop			;b22c	00 	. 
	ld (bc),a			;b22d	02 	. 
	inc bc			;b22e	03 	. 
	add a,d			;b22f	82 	. 
	ld d,b			;b230	50 	P 
	nop			;b231	00 	. 
	ld de,00c50h		;b232	11 50 0c 	. P . 
	nop			;b235	00 	. 
	ld (bc),a			;b236	02 	. 
	ld d,b			;b237	50 	P 
	nop			;b238	00 	. 
	dec c			;b239	0d 	. 
	ld d,b			;b23a	50 	P 
	add a,c			;b23b	81 	. 
	ld d,c			;b23c	51 	Q 
	inc bc			;b23d	03 	. 
	ld d,b			;b23e	50 	P 
	dec bc			;b23f	0b 	. 
	ld e,c			;b240	59 	Y 
	add a,d			;b241	82 	. 
	ld d,b			;b242	50 	P 
	ld d,d			;b243	52 	R 
	inc bc			;b244	03 	. 
	ld d,b			;b245	50 	P 
	dec bc			;b246	0b 	. 
	nop			;b247	00 	. 
	add a,d			;b248	82 	. 
	ld d,b			;b249	50 	P 
	ld d,d			;b24a	52 	R 
	inc bc			;b24b	03 	. 
	ld d,b			;b24c	50 	P 
	dec bc			;b24d	0b 	. 
	nop			;b24e	00 	. 
	add a,d			;b24f	82 	. 
	ld d,b			;b250	50 	P 
	ld d,d			;b251	52 	R 
	inc bc			;b252	03 	. 
	ld d,b			;b253	50 	P 
	dec bc			;b254	0b 	. 
	nop			;b255	00 	. 
	add a,d			;b256	82 	. 
	ld d,b			;b257	50 	P 
	ld d,d			;b258	52 	R 
	inc bc			;b259	03 	. 
	ld d,b			;b25a	50 	P 
	dec bc			;b25b	0b 	. 
	nop			;b25c	00 	. 
	add a,d			;b25d	82 	. 
	ld d,b			;b25e	50 	P 
	ld d,d			;b25f	52 	R 
	inc bc			;b260	03 	. 
	ld d,b			;b261	50 	P 
	dec bc			;b262	0b 	. 
	nop			;b263	00 	. 
	add a,l			;b264	85 	. 
	ld d,b			;b265	50 	P 
	ld d,d			;b266	52 	R 
	ld d,b			;b267	50 	P 
	ld d,b			;b268	50 	P 
	ld b,00bh		;b269	06 0b 	. . 
	nop			;b26b	00 	. 
	add a,d			;b26c	82 	. 
	ld d,b			;b26d	50 	P 
	ld d,d			;b26e	52 	R 
	inc bc			;b26f	03 	. 
	ld d,b			;b270	50 	P 
	dec bc			;b271	0b 	. 
	nop			;b272	00 	. 
	add a,d			;b273	82 	. 
	ld d,b			;b274	50 	P 
	ld d,d			;b275	52 	R 
	inc bc			;b276	03 	. 
	ld d,b			;b277	50 	P 
	dec bc			;b278	0b 	. 
	nop			;b279	00 	. 
	add a,d			;b27a	82 	. 
	ld d,b			;b27b	50 	P 
	ld d,d			;b27c	52 	R 
	inc bc			;b27d	03 	. 
	ld d,b			;b27e	50 	P 
	dec bc			;b27f	0b 	. 
	nop			;b280	00 	. 
	add a,d			;b281	82 	. 
	ld d,b			;b282	50 	P 
	nop			;b283	00 	. 
	inc b			;b284	04 	. 
	ld d,b			;b285	50 	P 
	add a,c			;b286	81 	. 
	ld d,c			;b287	51 	Q 
	dec c			;b288	0d 	. 
	ld d,b			;b289	50 	P 
	nop			;b28a	00 	. 
	inc b			;b28b	04 	. 
	ld d,b			;b28c	50 	P 
	rlca			;b28d	07 	. 
	nop			;b28e	00 	. 
	ld (bc),a			;b28f	02 	. 
	ld d,b			;b290	50 	P 
	ld (bc),a			;b291	02 	. 
	nop			;b292	00 	. 
	ld (bc),a			;b293	02 	. 
	ld d,b			;b294	50 	P 
	ld c,000h		;b295	0e 00 	. . 
	ld (bc),a			;b297	02 	. 
	ld d,b			;b298	50 	P 
	ld c,000h		;b299	0e 00 	. . 
	ld (bc),a			;b29b	02 	. 
	ld d,b			;b29c	50 	P 
	ld c,000h		;b29d	0e 00 	. . 
	ld (bc),a			;b29f	02 	. 
	ld d,b			;b2a0	50 	P 
	inc c			;b2a1	0c 	. 
	nop			;b2a2	00 	. 
	inc b			;b2a3	04 	. 
	ld d,b			;b2a4	50 	P 
	ld a,(bc)			;b2a5	0a 	. 
	nop			;b2a6	00 	. 
	ld b,050h		;b2a7	06 50 	. P 
	ld b,000h		;b2a9	06 00 	. . 
	ld a,(bc)			;b2ab	0a 	. 
	ld d,b			;b2ac	50 	P 
	ld a,(bc)			;b2ad	0a 	. 
	nop			;b2ae	00 	. 
	ld b,050h		;b2af	06 50 	. P 
	dec c			;b2b1	0d 	. 
	nop			;b2b2	00 	. 
	add a,d			;b2b3	82 	. 
	ld d,b			;b2b4	50 	P 
	nop			;b2b5	00 	. 
	inc b			;b2b6	04 	. 
	ld d,b			;b2b7	50 	P 
	add a,c			;b2b8	81 	. 
	ld d,h			;b2b9	54 	T 
	add hl,bc			;b2ba	09 	. 
	nop			;b2bb	00 	. 
	add a,d			;b2bc	82 	. 
	ld d,b			;b2bd	50 	P 
	nop			;b2be	00 	. 
	ld b,050h		;b2bf	06 50 	. P 
	add a,c			;b2c1	81 	. 
	ld b,002h		;b2c2	06 02 	. . 
	nop			;b2c4	00 	. 
	rla			;b2c5	17 	. 
	ld d,b			;b2c6	50 	P 
	nop			;b2c7	00 	. 
	ld (bc),a			;b2c8	02 	. 
	ld d,b			;b2c9	50 	P 
	add a,c			;b2ca	81 	. 
	nop			;b2cb	00 	. 
	add hl,bc			;b2cc	09 	. 
	ld d,b			;b2cd	50 	P 
	add a,c			;b2ce	81 	. 
	ld d,c			;b2cf	51 	Q 
	inc b			;b2d0	04 	. 
	ld d,b			;b2d1	50 	P 
	ex af,af'			;b2d2	08 	. 
	nop			;b2d3	00 	. 
	add a,h			;b2d4	84 	. 
	ld d,b			;b2d5	50 	P 
	nop			;b2d6	00 	. 
	nop			;b2d7	00 	. 
	ld d,d			;b2d8	52 	R 
	ld (bc),a			;b2d9	02 	. 
	nop			;b2da	00 	. 
	ld (bc),a			;b2db	02 	. 
	ld d,b			;b2dc	50 	P 
	ex af,af'			;b2dd	08 	. 
	nop			;b2de	00 	. 
	add a,h			;b2df	84 	. 
	djnz lb2e2h		;b2e0	10 00 	. . 
lb2e2h:
	nop			;b2e2	00 	. 
	ld d,d			;b2e3	52 	R 
	ld (bc),a			;b2e4	02 	. 
	nop			;b2e5	00 	. 
	ld (bc),a			;b2e6	02 	. 
	ld d,b			;b2e7	50 	P 
	inc b			;b2e8	04 	. 
	nop			;b2e9	00 	. 
	dec b			;b2ea	05 	. 
	ld d,b			;b2eb	50 	P 
	dec b			;b2ec	05 	. 
	nop			;b2ed	00 	. 
	ld (bc),a			;b2ee	02 	. 
	ld d,b			;b2ef	50 	P 
	inc b			;b2f0	04 	. 
	nop			;b2f1	00 	. 
	add a,c			;b2f2	81 	. 
	djnz lb2f8h		;b2f3	10 03 	. . 
	nop			;b2f5	00 	. 
	add a,c			;b2f6	81 	. 
	ld d,b			;b2f7	50 	P 
lb2f8h:
	dec b			;b2f8	05 	. 
	nop			;b2f9	00 	. 
	dec bc			;b2fa	0b 	. 
	ld d,b			;b2fb	50 	P 
	dec b			;b2fc	05 	. 
	nop			;b2fd	00 	. 
	ld (bc),a			;b2fe	02 	. 
	ld d,b			;b2ff	50 	P 
	ld c,000h		;b300	0e 00 	. . 
	ld (bc),a			;b302	02 	. 
	ld d,b			;b303	50 	P 
	ld c,000h		;b304	0e 00 	. . 
	add a,c			;b306	81 	. 
	ld d,b			;b307	50 	P 
	rrca			;b308	0f 	. 
	nop			;b309	00 	. 
	add a,c			;b30a	81 	. 
	ld d,b			;b30b	50 	P 
	rrca			;b30c	0f 	. 
	nop			;b30d	00 	. 
	ld b,050h		;b30e	06 50 	. P 
	ld b,05ch		;b310	06 5c 	. \ 
	ld b,050h		;b312	06 50 	. P 
	ld c,000h		;b314	0e 00 	. . 
	add a,c			;b316	81 	. 
	ld d,b			;b317	50 	P 
	nop			;b318	00 	. 
	ld (bc),a			;b319	02 	. 
	ld d,b			;b31a	50 	P 
	add a,c			;b31b	81 	. 
	ld d,d			;b31c	52 	R 
	inc bc			;b31d	03 	. 
	ld d,b			;b31e	50 	P 
	add a,c			;b31f	81 	. 
	ld d,c			;b320	51 	Q 
	dec b			;b321	05 	. 
	ld d,b			;b322	50 	P 
	add a,c			;b323	81 	. 
	ld d,c			;b324	51 	Q 
	dec b			;b325	05 	. 
	ld d,b			;b326	50 	P 
	adc a,e			;b327	8b 	. 
	ld d,d			;b328	52 	R 
	ld d,b			;b329	50 	P 
	nop			;b32a	00 	. 
	nop			;b32b	00 	. 
	ld d,d			;b32c	52 	R 
	nop			;b32d	00 	. 
	nop			;b32e	00 	. 
	ld d,b			;b32f	50 	P 
	nop			;b330	00 	. 
	nop			;b331	00 	. 
	ld d,d			;b332	52 	R 
	ld (bc),a			;b333	02 	. 
	nop			;b334	00 	. 
	inc bc			;b335	03 	. 
	ld d,b			;b336	50 	P 
	adc a,e			;b337	8b 	. 
	ld d,d			;b338	52 	R 
	ld d,b			;b339	50 	P 
	nop			;b33a	00 	. 
	nop			;b33b	00 	. 
	ld d,d			;b33c	52 	R 
	nop			;b33d	00 	. 
	nop			;b33e	00 	. 
	ld d,b			;b33f	50 	P 
	nop			;b340	00 	. 
	nop			;b341	00 	. 
	ld d,d			;b342	52 	R 
	ld (bc),a			;b343	02 	. 
	nop			;b344	00 	. 
	inc bc			;b345	03 	. 
	ld d,b			;b346	50 	P 
	adc a,e			;b347	8b 	. 
	ld d,d			;b348	52 	R 
	ld d,b			;b349	50 	P 
	nop			;b34a	00 	. 
	nop			;b34b	00 	. 
	ld d,d			;b34c	52 	R 
	nop			;b34d	00 	. 
	nop			;b34e	00 	. 
	ld d,b			;b34f	50 	P 
	nop			;b350	00 	. 
	nop			;b351	00 	. 
	ld d,d			;b352	52 	R 
	ld (bc),a			;b353	02 	. 
	nop			;b354	00 	. 
	inc bc			;b355	03 	. 
	ld d,b			;b356	50 	P 
	add a,l			;b357	85 	. 
	ld d,d			;b358	52 	R 
	ld d,b			;b359	50 	P 
	nop			;b35a	00 	. 
	nop			;b35b	00 	. 
	ld d,d			;b35c	52 	R 
	ld (bc),a			;b35d	02 	. 
	djnz lb363h		;b35e	10 03 	. . 
	ld d,b			;b360	50 	P 
	add a,c			;b361	81 	. 
	ld d,d			;b362	52 	R 
lb363h:
	ld (bc),a			;b363	02 	. 
	nop			;b364	00 	. 
	inc bc			;b365	03 	. 
	ld d,b			;b366	50 	P 
	add a,d			;b367	82 	. 
	ld d,d			;b368	52 	R 
	ld d,b			;b369	50 	P 
	inc bc			;b36a	03 	. 
	nop			;b36b	00 	. 
	ld (bc),a			;b36c	02 	. 
	djnz lb372h		;b36d	10 03 	. . 
	ld d,b			;b36f	50 	P 
	inc bc			;b370	03 	. 
	nop			;b371	00 	. 
lb372h:
	inc bc			;b372	03 	. 
	ld d,b			;b373	50 	P 
	add a,c			;b374	81 	. 
	ld d,d			;b375	52 	R 
	dec b			;b376	05 	. 
	ld d,b			;b377	50 	P 
	add a,e			;b378	83 	. 
	nop			;b379	00 	. 
	ld d,b			;b37a	50 	P 
	nop			;b37b	00 	. 
	rlca			;b37c	07 	. 
	ld d,b			;b37d	50 	P 
	add a,d			;b37e	82 	. 
	ld d,d			;b37f	52 	R 
	ld d,b			;b380	50 	P 
	dec bc			;b381	0b 	. 
	nop			;b382	00 	. 
	inc bc			;b383	03 	. 
	ld d,b			;b384	50 	P 
	add a,d			;b385	82 	. 
	ld d,d			;b386	52 	R 
	ld d,b			;b387	50 	P 
	dec bc			;b388	0b 	. 
	nop			;b389	00 	. 
	inc bc			;b38a	03 	. 
	ld d,b			;b38b	50 	P 
	add a,d			;b38c	82 	. 
	ld d,d			;b38d	52 	R 
	ld d,b			;b38e	50 	P 
	inc c			;b38f	0c 	. 
	nop			;b390	00 	. 
	ld (bc),a			;b391	02 	. 
	ld d,b			;b392	50 	P 
	add a,d			;b393	82 	. 
	ld d,d			;b394	52 	R 
	ld d,b			;b395	50 	P 
	inc c			;b396	0c 	. 
	nop			;b397	00 	. 
	ld (bc),a			;b398	02 	. 
	ld d,b			;b399	50 	P 
	add a,c			;b39a	81 	. 
	ld d,c			;b39b	51 	Q 
	dec c			;b39c	0d 	. 
	ld d,b			;b39d	50 	P 
	nop			;b39e	00 	. 
	add a,d			;b39f	82 	. 
	ld d,b			;b3a0	50 	P 
	ld d,c			;b3a1	51 	Q 
	rrca			;b3a2	0f 	. 
	ld d,b			;b3a3	50 	P 
	add a,c			;b3a4	81 	. 
	ld d,d			;b3a5	52 	R 
	dec c			;b3a6	0d 	. 
	nop			;b3a7	00 	. 
	ld (bc),a			;b3a8	02 	. 
	ld d,b			;b3a9	50 	P 
	ld c,000h		;b3aa	0e 00 	. . 
	ld (bc),a			;b3ac	02 	. 
	ld d,b			;b3ad	50 	P 
	ld c,000h		;b3ae	0e 00 	. . 
	ld (bc),a			;b3b0	02 	. 
	ld d,b			;b3b1	50 	P 
	ld c,000h		;b3b2	0e 00 	. . 
	ld (bc),a			;b3b4	02 	. 
	ld d,b			;b3b5	50 	P 
	ld c,000h		;b3b6	0e 00 	. . 
	ld (bc),a			;b3b8	02 	. 
	ld d,b			;b3b9	50 	P 
	ld c,000h		;b3ba	0e 00 	. . 
	ld (bc),a			;b3bc	02 	. 
	ld d,b			;b3bd	50 	P 
	ld c,000h		;b3be	0e 00 	. . 
	ld (bc),a			;b3c0	02 	. 
	ld d,b			;b3c1	50 	P 
	ld c,000h		;b3c2	0e 00 	. . 
	add a,c			;b3c4	81 	. 
	ld d,b			;b3c5	50 	P 
	rrca			;b3c6	0f 	. 
	nop			;b3c7	00 	. 
	add a,c			;b3c8	81 	. 
	ld d,b			;b3c9	50 	P 
	rrca			;b3ca	0f 	. 
	nop			;b3cb	00 	. 
	ld de,00050h		;b3cc	11 50 00 	. P . 
	ld (bc),a			;b3cf	02 	. 
	ld d,b			;b3d0	50 	P 
	dec c			;b3d1	0d 	. 
	nop			;b3d2	00 	. 
	inc b			;b3d3	04 	. 
	ld d,b			;b3d4	50 	P 
	inc c			;b3d5	0c 	. 
	nop			;b3d6	00 	. 
	ld (bc),a			;b3d7	02 	. 
	ld d,b			;b3d8	50 	P 
	dec c			;b3d9	0d 	. 
	nop			;b3da	00 	. 
	inc b			;b3db	04 	. 
	ld d,b			;b3dc	50 	P 
	dec c			;b3dd	0d 	. 
	nop			;b3de	00 	. 
	inc bc			;b3df	03 	. 
	ld d,b			;b3e0	50 	P 
	add a,c			;b3e1	81 	. 
	ld a,(bc)			;b3e2	0a 	. 
	ld a,(bc)			;b3e3	0a 	. 
	nop			;b3e4	00 	. 
	rlca			;b3e5	07 	. 
	ld d,b			;b3e6	50 	P 
	add hl,bc			;b3e7	09 	. 
	nop			;b3e8	00 	. 
	ld b,050h		;b3e9	06 50 	. P 
	ld a,(bc)			;b3eb	0a 	. 
	nop			;b3ec	00 	. 
	inc b			;b3ed	04 	. 
	ld d,b			;b3ee	50 	P 
	add a,c			;b3ef	81 	. 
	nop			;b3f0	00 	. 
	ld (bc),a			;b3f1	02 	. 
	ld d,b			;b3f2	50 	P 
	ld a,(bc)			;b3f3	0a 	. 
	nop			;b3f4	00 	. 
	inc bc			;b3f5	03 	. 
	ld d,b			;b3f6	50 	P 
	ld (bc),a			;b3f7	02 	. 
	nop			;b3f8	00 	. 
	add a,c			;b3f9	81 	. 
	ld d,b			;b3fa	50 	P 
	rlca			;b3fb	07 	. 
	nop			;b3fc	00 	. 
	add a,c			;b3fd	81 	. 
	ld a,(bc)			;b3fe	0a 	. 
	ld b,050h		;b3ff	06 50 	. P 
	add hl,bc			;b401	09 	. 
	nop			;b402	00 	. 
	ld (bc),a			;b403	02 	. 
	ld d,b			;b404	50 	P 
	ld (bc),a			;b405	02 	. 
	nop			;b406	00 	. 
	dec b			;b407	05 	. 
	ld d,b			;b408	50 	P 
	add a,c			;b409	81 	. 
	ld a,(bc)			;b40a	0a 	. 
	ld b,000h		;b40b	06 00 	. . 
	add a,c			;b40d	81 	. 
	ld d,b			;b40e	50 	P 
	ld (bc),a			;b40f	02 	. 
	nop			;b410	00 	. 
	inc bc			;b411	03 	. 
	ld d,b			;b412	50 	P 
	ld (bc),a			;b413	02 	. 
	nop			;b414	00 	. 
	ld (bc),a			;b415	02 	. 
	ld d,b			;b416	50 	P 
	ex af,af'			;b417	08 	. 
	nop			;b418	00 	. 
	inc bc			;b419	03 	. 
	ld d,b			;b41a	50 	P 
	nop			;b41b	00 	. 
	ld (bc),a			;b41c	02 	. 
	ld d,b			;b41d	50 	P 
	add a,c			;b41e	81 	. 
	ld d,c			;b41f	51 	Q 
	ld c,050h		;b420	0e 50 	. P 
	add a,d			;b422	82 	. 
	nop			;b423	00 	. 
	ld d,d			;b424	52 	R 
	dec c			;b425	0d 	. 
	nop			;b426	00 	. 
	add a,e			;b427	83 	. 
	ld d,b			;b428	50 	P 
	nop			;b429	00 	. 
	ld d,d			;b42a	52 	R 
	dec c			;b42b	0d 	. 
	nop			;b42c	00 	. 
	add a,l			;b42d	85 	. 
	ld d,b			;b42e	50 	P 
	nop			;b42f	00 	. 
	ld d,d			;b430	52 	R 
lb431h:
	nop			;b431	00 	. 
	ld d,b			;b432	50 	P 
	ld b,000h		;b433	06 00 	. . 
	add a,c			;b435	81 	. 
	ld d,b			;b436	50 	P 
	inc b			;b437	04 	. 
	nop			;b438	00 	. 
	add a,e			;b439	83 	. 
	ld d,b			;b43a	50 	P 
	nop			;b43b	00 	. 
	ld d,b			;b43c	50 	P 
	inc b			;b43d	04 	. 
	nop			;b43e	00 	. 
	add a,c			;b43f	81 	. 
	ld d,b			;b440	50 	P 
	rlca			;b441	07 	. 
	nop			;b442	00 	. 
	ld (bc),a			;b443	02 	. 
lb444h:
	ld d,b			;b444	50 	P 
	inc b			;b445	04 	. 
	nop			;b446	00 	. 
	add a,d			;b447	82 	. 
	ld d,b			;b448	50 	P 
	ld d,c			;b449	51 	Q 
	ex af,af'			;b44a	08 	. 
	nop			;b44b	00 	. 
	ld (bc),a			;b44c	02 	. 
	ld d,b			;b44d	50 	P 
	dec b			;b44e	05 	. 
	nop			;b44f	00 	. 
	add a,l			;b450	85 	. 
	ld d,d			;b451	52 	R 
	nop			;b452	00 	. 
	nop			;b453	00 	. 
	ld d,c			;b454	51 	Q 
	ld d,b			;b455	50 	P 
	inc b			;b456	04 	. 
	ld e,h			;b457	5c 	\ 
	ld (bc),a			;b458	02 	. 
	ld d,b			;b459	50 	P 
	dec b			;b45a	05 	. 
	nop			;b45b	00 	. 
	add a,h			;b45c	84 	. 
	ld d,d			;b45d	52 	R 
	nop			;b45e	00 	. 
	nop			;b45f	00 	. 
	ld d,d			;b460	52 	R 
	dec b			;b461	05 	. 
	nop			;b462	00 	. 
	ld (bc),a			;b463	02 	. 
	ld d,b			;b464	50 	P 
	inc bc			;b465	03 	. 
	nop			;b466	00 	. 
	add a,d			;b467	82 	. 
	ld d,c			;b468	51 	Q 
	ld d,b			;b469	50 	P 
	inc bc			;b46a	03 	. 
	nop			;b46b	00 	. 
	add a,c			;b46c	81 	. 
	ld d,d			;b46d	52 	R 
	dec b			;b46e	05 	. 
	nop			;b46f	00 	. 
	ld (bc),a			;b470	02 	. 
	ld d,b			;b471	50 	P 
	inc bc			;b472	03 	. 
	nop			;b473	00 	. 
	add a,c			;b474	81 	. 
	ld d,d			;b475	52 	R 
	ld a,(bc)			;b476	0a 	. 
	nop			;b477	00 	. 
	ld (bc),a			;b478	02 	. 
	ld d,b			;b479	50 	P 
	add a,c			;b47a	81 	. 
	ld (bc),a			;b47b	02 	. 
	dec c			;b47c	0d 	. 
	nop			;b47d	00 	. 
	ld de,00050h		;b47e	11 50 00 	. P . 
	djnz lb4d3h		;b481	10 50 	. P 
	ld b,000h		;b483	06 00 	. . 
	inc bc			;b485	03 	. 
	ld d,b			;b486	50 	P 
	ld b,000h		;b487	06 00 	. . 
	add a,c			;b489	81 	. 
	ld d,b			;b48a	50 	P 
	rlca			;b48b	07 	. 
	nop			;b48c	00 	. 
	inc bc			;b48d	03 	. 
	ld d,b			;b48e	50 	P 
	dec b			;b48f	05 	. 
	nop			;b490	00 	. 
	add a,c			;b491	81 	. 
	ld d,b			;b492	50 	P 
	ld c,000h		;b493	0e 00 	. . 
	add a,l			;b495	85 	. 
	ld a,(bc)			;b496	0a 	. 
	ld d,b			;b497	50 	P 
	ld d,b			;b498	50 	P 
	nop			;b499	00 	. 
	ld d,c			;b49a	51 	Q 
	dec bc			;b49b	0b 	. 
	nop			;b49c	00 	. 
	add a,l			;b49d	85 	. 
	ld a,(bc)			;b49e	0a 	. 
	ld d,b			;b49f	50 	P 
	ld d,b			;b4a0	50 	P 
	nop			;b4a1	00 	. 
	ld d,d			;b4a2	52 	R 
	ex af,af'			;b4a3	08 	. 
	nop			;b4a4	00 	. 
	ld (bc),a			;b4a5	02 	. 
	djnz lb431h		;b4a6	10 89 	. . 
	nop			;b4a8	00 	. 
	ld a,(bc)			;b4a9	0a 	. 
	ld d,b			;b4aa	50 	P 
	ld d,b			;b4ab	50 	P 
	nop			;b4ac	00 	. 
	ld d,d			;b4ad	52 	R 
	nop			;b4ae	00 	. 
	nop			;b4af	00 	. 
	ld d,b			;b4b0	50 	P 
	ld b,000h		;b4b1	06 00 	. . 
	add a,d			;b4b3	82 	. 
	djnz lb4b6h		;b4b4	10 00 	. . 
lb4b6h:
	inc bc			;b4b6	03 	. 
	ld d,b			;b4b7	50 	P 
	add a,l			;b4b8	85 	. 
	nop			;b4b9	00 	. 
	ld d,d			;b4ba	52 	R 
	nop			;b4bb	00 	. 
	nop			;b4bc	00 	. 
	ld d,b			;b4bd	50 	P 
	inc b			;b4be	04 	. 
	nop			;b4bf	00 	. 
	inc bc			;b4c0	03 	. 
	djnz lb444h		;b4c1	10 81 	. . 
	nop			;b4c3	00 	. 
	inc bc			;b4c4	03 	. 
	ld d,b			;b4c5	50 	P 
	add a,l			;b4c6	85 	. 
	nop			;b4c7	00 	. 
	ld d,d			;b4c8	52 	R 
	nop			;b4c9	00 	. 
	nop			;b4ca	00 	. 
	ld d,b			;b4cb	50 	P 
	add hl,bc			;b4cc	09 	. 
	ld d,l			;b4cd	55 	U 
	ld (bc),a			;b4ce	02 	. 
	ld d,b			;b4cf	50 	P 
	add a,l			;b4d0	85 	. 
	nop			;b4d1	00 	. 
	ld d,d			;b4d2	52 	R 
lb4d3h:
	nop			;b4d3	00 	. 
	nop			;b4d4	00 	. 
	ld d,b			;b4d5	50 	P 
	add hl,bc			;b4d6	09 	. 
	ld d,(hl)			;b4d7	56 	V 
	ld (bc),a			;b4d8	02 	. 
	ld d,b			;b4d9	50 	P 
	add a,l			;b4da	85 	. 
	nop			;b4db	00 	. 
	ld d,d			;b4dc	52 	R 
	nop			;b4dd	00 	. 
	nop			;b4de	00 	. 
	ld d,b			;b4df	50 	P 
	add hl,bc			;b4e0	09 	. 
	ld d,a			;b4e1	57 	W 
	inc bc			;b4e2	03 	. 
	ld d,b			;b4e3	50 	P 
	add a,d			;b4e4	82 	. 
	ld d,c			;b4e5	51 	Q 
	nop			;b4e6	00 	. 
	inc c			;b4e7	0c 	. 
	ld d,b			;b4e8	50 	P 
	nop			;b4e9	00 	. 
	ld (bc),a			;b4ea	02 	. 
	ld d,b			;b4eb	50 	P 
	inc c			;b4ec	0c 	. 
	nop			;b4ed	00 	. 
	inc bc			;b4ee	03 	. 
	ld d,b			;b4ef	50 	P 
	inc c			;b4f0	0c 	. 
	nop			;b4f1	00 	. 
	dec b			;b4f2	05 	. 
	ld d,b			;b4f3	50 	P 
	dec c			;b4f4	0d 	. 
	nop			;b4f5	00 	. 
	ld (bc),a			;b4f6	02 	. 
	ld d,b			;b4f7	50 	P 
	dec c			;b4f8	0d 	. 
	nop			;b4f9	00 	. 
	dec b			;b4fa	05 	. 
	ld d,b			;b4fb	50 	P 
	dec bc			;b4fc	0b 	. 
	nop			;b4fd	00 	. 
	dec b			;b4fe	05 	. 
	ld d,b			;b4ff	50 	P 
	add hl,bc			;b500	09 	. 
	nop			;b501	00 	. 
	rlca			;b502	07 	. 
	ld d,b			;b503	50 	P 
	ld a,(bc)			;b504	0a 	. 
	nop			;b505	00 	. 
	dec b			;b506	05 	. 
	ld d,b			;b507	50 	P 
	ld a,(bc)			;b508	0a 	. 
	nop			;b509	00 	. 
	ld (bc),a			;b50a	02 	. 
	ld d,b			;b50b	50 	P 
	add a,c			;b50c	81 	. 
	nop			;b50d	00 	. 
	dec b			;b50e	05 	. 
	ld d,b			;b50f	50 	P 
	add a,c			;b510	81 	. 
	ld a,(bc)			;b511	0a 	. 
	rlca			;b512	07 	. 
	nop			;b513	00 	. 
	add a,c			;b514	81 	. 
	ld d,b			;b515	50 	P 
	ld (bc),a			;b516	02 	. 
	nop			;b517	00 	. 
	ld (bc),a			;b518	02 	. 
	ld d,b			;b519	50 	P 
	ld (bc),a			;b51a	02 	. 
	nop			;b51b	00 	. 
	ld (bc),a			;b51c	02 	. 
	ld d,b			;b51d	50 	P 
	add hl,bc			;b51e	09 	. 
	nop			;b51f	00 	. 
	inc b			;b520	04 	. 
	ld d,b			;b521	50 	P 
	ld (bc),a			;b522	02 	. 
	nop			;b523	00 	. 
	add a,c			;b524	81 	. 
	ld d,b			;b525	50 	P 
	ld b,000h		;b526	06 00 	. . 
	add a,c			;b528	81 	. 
	ld a,(bc)			;b529	0a 	. 
	rlca			;b52a	07 	. 
	ld d,b			;b52b	50 	P 
	ex af,af'			;b52c	08 	. 
	nop			;b52d	00 	. 
	ld (bc),a			;b52e	02 	. 
	ld d,b			;b52f	50 	P 
	ld (bc),a			;b530	02 	. 
	nop			;b531	00 	. 
	add a,c			;b532	81 	. 
	ld d,b			;b533	50 	P 
	nop			;b534	00 	. 
	ld (bc),a			;b535	02 	. 
	ld d,b			;b536	50 	P 
	add a,c			;b537	81 	. 
	ld d,c			;b538	51 	Q 
	rrca			;b539	0f 	. 
	ld d,b			;b53a	50 	P 
	add a,c			;b53b	81 	. 
	ld d,c			;b53c	51 	Q 
	ld c,050h		;b53d	0e 50 	. P 
	and h			;b53f	a4 	. 
	nop			;b540	00 	. 
	ld d,d			;b541	52 	R 
	nop			;b542	00 	. 
	ld e,b			;b543	58 	X 
	nop			;b544	00 	. 
	nop			;b545	00 	. 
	ld e,b			;b546	58 	X 
	nop			;b547	00 	. 
	nop			;b548	00 	. 
	ld e,b			;b549	58 	X 
	nop			;b54a	00 	. 
	nop			;b54b	00 	. 
	ld e,b			;b54c	58 	X 
	nop			;b54d	00 	. 
	ld d,b			;b54e	50 	P 
	ld d,b			;b54f	50 	P 
	nop			;b550	00 	. 
	ld d,d			;b551	52 	R 
	nop			;b552	00 	. 
	ld d,b			;b553	50 	P 
	nop			;b554	00 	. 
	nop			;b555	00 	. 
	ld e,b			;b556	58 	X 
	nop			;b557	00 	. 
	nop			;b558	00 	. 
	ld e,b			;b559	58 	X 
	nop			;b55a	00 	. 
	nop			;b55b	00 	. 
	ld d,b			;b55c	50 	P 
	nop			;b55d	00 	. 
	ld d,b			;b55e	50 	P 
	ld d,b			;b55f	50 	P 
	nop			;b560	00 	. 
	ld d,d			;b561	52 	R 
	nop			;b562	00 	. 
	ld d,b			;b563	50 	P 
	ex af,af'			;b564	08 	. 
	ld d,e			;b565	53 	S 
	adc a,b			;b566	88 	. 
	ld d,b			;b567	50 	P 
	nop			;b568	00 	. 
	ld d,b			;b569	50 	P 
	ld d,b			;b56a	50 	P 
	nop			;b56b	00 	. 
	ld d,d			;b56c	52 	R 
	nop			;b56d	00 	. 
	ld d,b			;b56e	50 	P 
	ex af,af'			;b56f	08 	. 
	nop			;b570	00 	. 
	adc a,b			;b571	88 	. 
	ld d,b			;b572	50 	P 
	nop			;b573	00 	. 
	ld d,b			;b574	50 	P 
	ld d,b			;b575	50 	P 
	nop			;b576	00 	. 
	ld d,d			;b577	52 	R 
	nop			;b578	00 	. 
	ld d,b			;b579	50 	P 
	ex af,af'			;b57a	08 	. 
	nop			;b57b	00 	. 
	adc a,b			;b57c	88 	. 
	ld d,b			;b57d	50 	P 
	nop			;b57e	00 	. 
	ld d,b			;b57f	50 	P 
	ld d,b			;b580	50 	P 
	nop			;b581	00 	. 
	ld d,d			;b582	52 	R 
	nop			;b583	00 	. 
	ld d,b			;b584	50 	P 
	ex af,af'			;b585	08 	. 
	nop			;b586	00 	. 
	add a,(hl)			;b587	86 	. 
	ld d,b			;b588	50 	P 
	nop			;b589	00 	. 
	ld d,b			;b58a	50 	P 
	ld d,b			;b58b	50 	P 
	nop			;b58c	00 	. 
	ld d,d			;b58d	52 	R 
	dec c			;b58e	0d 	. 
	nop			;b58f	00 	. 
	add a,c			;b590	81 	. 
	ld d,b			;b591	50 	P 
	rrca			;b592	0f 	. 
	nop			;b593	00 	. 
	add a,c			;b594	81 	. 
	ld d,b			;b595	50 	P 
	rrca			;b596	0f 	. 
	nop			;b597	00 	. 
	djnz lb5eah		;b598	10 50 	. P 
	nop			;b59a	00 	. 
	ld de,00950h		;b59b	11 50 09 	. P . 
	nop			;b59e	00 	. 
	add a,c			;b59f	81 	. 
	djnz lb5a6h		;b5a0	10 04 	. . 
	nop			;b5a2	00 	. 
	ld (bc),a			;b5a3	02 	. 
	ld d,b			;b5a4	50 	P 
	add hl,bc			;b5a5	09 	. 
lb5a6h:
	nop			;b5a6	00 	. 
	add a,c			;b5a7	81 	. 
	djnz $+6		;b5a8	10 04 	. . 
	nop			;b5aa	00 	. 
	ld (bc),a			;b5ab	02 	. 
	ld d,b			;b5ac	50 	P 
	ld b,000h		;b5ad	06 00 	. . 
	ld (bc),a			;b5af	02 	. 
	ld d,b			;b5b0	50 	P 
	add a,d			;b5b1	82 	. 
	nop			;b5b2	00 	. 
	ld d,b			;b5b3	50 	P 
	inc b			;b5b4	04 	. 
	nop			;b5b5	00 	. 
	inc b			;b5b6	04 	. 
	ld d,b			;b5b7	50 	P 
	rlca			;b5b8	07 	. 
	nop			;b5b9	00 	. 
	add a,c			;b5ba	81 	. 
	ld d,b			;b5bb	50 	P 
	inc b			;b5bc	04 	. 
	nop			;b5bd	00 	. 
	ld (bc),a			;b5be	02 	. 
	ld d,b			;b5bf	50 	P 
lb5c0h:
	add hl,bc			;b5c0	09 	. 
	nop			;b5c1	00 	. 
	rlca			;b5c2	07 	. 
	ld d,b			;b5c3	50 	P 
	inc bc			;b5c4	03 	. 
	nop			;b5c5	00 	. 
	inc bc			;b5c6	03 	. 
	ld d,b			;b5c7	50 	P 
	ex af,af'			;b5c8	08 	. 
	nop			;b5c9	00 	. 
	ld (bc),a			;b5ca	02 	. 
	ld d,b			;b5cb	50 	P 
	ld c,000h		;b5cc	0e 00 	. . 
	add a,e			;b5ce	83 	. 
	ld d,b			;b5cf	50 	P 
	nop			;b5d0	00 	. 
	djnz lb5d9h		;b5d1	10 06 	. . 
	nop			;b5d3	00 	. 
	add a,c			;b5d4	81 	. 
	ld d,b			;b5d5	50 	P 
	ld b,000h		;b5d6	06 00 	. . 
	add a,e			;b5d8	83 	. 
lb5d9h:
	ld d,b			;b5d9	50 	P 
	nop			;b5da	00 	. 
	djnz lb5eah		;b5db	10 0d 	. . 
	nop			;b5dd	00 	. 
	add a,e			;b5de	83 	. 
	ld d,b			;b5df	50 	P 
	nop			;b5e0	00 	. 
	djnz lb5f0h		;b5e1	10 0d 	. . 
	nop			;b5e3	00 	. 
	dec c			;b5e4	0d 	. 
	ld d,b			;b5e5	50 	P 
	add a,c			;b5e6	81 	. 
	ld d,c			;b5e7	51 	Q 
	inc bc			;b5e8	03 	. 
	ld d,b			;b5e9	50 	P 
lb5eah:
	nop			;b5ea	00 	. 
	ld (bc),a			;b5eb	02 	. 
	ld d,b			;b5ec	50 	P 
	dec c			;b5ed	0d 	. 
	nop			;b5ee	00 	. 
	inc bc			;b5ef	03 	. 
lb5f0h:
	ld d,b			;b5f0	50 	P 
	inc c			;b5f1	0c 	. 
	nop			;b5f2	00 	. 
	ld b,050h		;b5f3	06 50 	. P 
	ld a,(bc)			;b5f5	0a 	. 
	nop			;b5f6	00 	. 
	inc b			;b5f7	04 	. 
	ld d,b			;b5f8	50 	P 
	inc c			;b5f9	0c 	. 
	nop			;b5fa	00 	. 
	dec b			;b5fb	05 	. 
	ld d,b			;b5fc	50 	P 
	inc c			;b5fd	0c 	. 
	nop			;b5fe	00 	. 
	inc bc			;b5ff	03 	. 
	ld d,b			;b600	50 	P 
	inc c			;b601	0c 	. 
	nop			;b602	00 	. 
	inc b			;b603	04 	. 
	ld d,b			;b604	50 	P 
	dec c			;b605	0d 	. 
	nop			;b606	00 	. 
	ld (bc),a			;b607	02 	. 
	ld d,b			;b608	50 	P 
	rrca			;b609	0f 	. 
	nop			;b60a	00 	. 
	add a,c			;b60b	81 	. 
	ld d,b			;b60c	50 	P 
	rrca			;b60d	0f 	. 
	nop			;b60e	00 	. 
	dec c			;b60f	0d 	. 
	ld d,b			;b610	50 	P 
	inc bc			;b611	03 	. 
	nop			;b612	00 	. 
	ld c,050h		;b613	0e 50 	. P 
	ld (bc),a			;b615	02 	. 
	nop			;b616	00 	. 
	djnz lb669h		;b617	10 50 	. P 
	nop			;b619	00 	. 
	ld de,00450h		;b61a	11 50 04 	. P . 
	nop			;b61d	00 	. 
	add a,c			;b61e	81 	. 
	djnz lb62ah		;b61f	10 09 	. . 
	nop			;b621	00 	. 
	ld (bc),a			;b622	02 	. 
	ld d,b			;b623	50 	P 
	inc b			;b624	04 	. 
	nop			;b625	00 	. 
	add a,c			;b626	81 	. 
	djnz $+11		;b627	10 09 	. . 
	nop			;b629	00 	. 
lb62ah:
	ld (bc),a			;b62a	02 	. 
	ld d,b			;b62b	50 	P 
	add a,l			;b62c	85 	. 
	nop			;b62d	00 	. 
	inc bc			;b62e	03 	. 
	nop			;b62f	00 	. 
	nop			;b630	00 	. 
	djnz lb63ch		;b631	10 09 	. . 
	nop			;b633	00 	. 
	ex af,af'			;b634	08 	. 
	ld d,b			;b635	50 	P 
	ex af,af'			;b636	08 	. 
	nop			;b637	00 	. 
	ld (bc),a			;b638	02 	. 
	ld d,b			;b639	50 	P 
	dec b			;b63a	05 	. 
	nop			;b63b	00 	. 
lb63ch:
	inc bc			;b63c	03 	. 
	ld d,b			;b63d	50 	P 
	ld b,000h		;b63e	06 00 	. . 
	ld (bc),a			;b640	02 	. 
	ld d,b			;b641	50 	P 
	ld c,000h		;b642	0e 00 	. . 
	add a,c			;b644	81 	. 
	ld d,b			;b645	50 	P 
	inc b			;b646	04 	. 
	nop			;b647	00 	. 
	add a,c			;b648	81 	. 
	ld d,b			;b649	50 	P 
	inc b			;b64a	04 	. 
	nop			;b64b	00 	. 
	add a,c			;b64c	81 	. 
	ld d,b			;b64d	50 	P 
	ld (bc),a			;b64e	02 	. 
	nop			;b64f	00 	. 
	inc b			;b650	04 	. 
	ld d,b			;b651	50 	P 
	inc bc			;b652	03 	. 
	nop			;b653	00 	. 
	ld (bc),a			;b654	02 	. 
	ld d,b			;b655	50 	P 
	inc b			;b656	04 	. 
	ld e,h			;b657	5c 	\ 
	add a,c			;b658	81 	. 
	ld d,b			;b659	50 	P 
	dec b			;b65a	05 	. 
	nop			;b65b	00 	. 
	add a,c			;b65c	81 	. 
	ld d,b			;b65d	50 	P 
	inc bc			;b65e	03 	. 
	nop			;b65f	00 	. 
	ld (bc),a			;b660	02 	. 
	ld d,b			;b661	50 	P 
	ld a,(bc)			;b662	0a 	. 
	nop			;b663	00 	. 
	add a,c			;b664	81 	. 
	ld d,b			;b665	50 	P 
	inc bc			;b666	03 	. 
	nop			;b667	00 	. 
	ld (bc),a			;b668	02 	. 
lb669h:
	ld d,b			;b669	50 	P 
	inc b			;b66a	04 	. 
	nop			;b66b	00 	. 
	add a,l			;b66c	85 	. 
	djnz lb66fh		;b66d	10 00 	. . 
lb66fh:
	nop			;b66f	00 	. 
	ld d,b			;b670	50 	P 
	ld d,c			;b671	51 	Q 
	rrca			;b672	0f 	. 
	ld d,b			;b673	50 	P 
	add a,c			;b674	81 	. 
	ld d,c			;b675	51 	Q 
	ld (bc),a			;b676	02 	. 
	ld d,b			;b677	50 	P 
	nop			;b678	00 	. 
	ld (bc),a			;b679	02 	. 
	ld d,b			;b67a	50 	P 
	add a,d			;b67b	82 	. 
	ld d,c			;b67c	51 	Q 
	nop			;b67d	00 	. 
	dec c			;b67e	0d 	. 
	ld d,b			;b67f	50 	P 
	add a,l			;b680	85 	. 
	nop			;b681	00 	. 
	ld d,d			;b682	52 	R 
	nop			;b683	00 	. 
	nop			;b684	00 	. 
	djnz $+11		;b685	10 09 	. . 
	nop			;b687	00 	. 
	ld (bc),a			;b688	02 	. 
	ld d,b			;b689	50 	P 
	add a,l			;b68a	85 	. 
	nop			;b68b	00 	. 
	ld d,d			;b68c	52 	R 
	nop			;b68d	00 	. 
	nop			;b68e	00 	. 
	djnz lb698h		;b68f	10 07 	. . 
	nop			;b691	00 	. 
	add a,d			;b692	82 	. 
	inc bc			;b693	03 	. 
	nop			;b694	00 	. 
	ld (bc),a			;b695	02 	. 
	ld d,b			;b696	50 	P 
	inc b			;b697	04 	. 
lb698h:
	nop			;b698	00 	. 
	add a,c			;b699	81 	. 
	ld d,b			;b69a	50 	P 
	inc bc			;b69b	03 	. 
	nop			;b69c	00 	. 
	add a,c			;b69d	81 	. 
	ld d,b			;b69e	50 	P 
	dec b			;b69f	05 	. 
	nop			;b6a0	00 	. 
	ld (bc),a			;b6a1	02 	. 
	ld d,b			;b6a2	50 	P 
	inc b			;b6a3	04 	. 
	nop			;b6a4	00 	. 
	add a,c			;b6a5	81 	. 
	ld d,b			;b6a6	50 	P 
	add hl,bc			;b6a7	09 	. 
	nop			;b6a8	00 	. 
	ex af,af'			;b6a9	08 	. 
	ld d,b			;b6aa	50 	P 
	inc b			;b6ab	04 	. 
	nop			;b6ac	00 	. 
	add a,c			;b6ad	81 	. 
	ld d,b			;b6ae	50 	P 
	inc bc			;b6af	03 	. 
	nop			;b6b0	00 	. 
	ld (bc),a			;b6b1	02 	. 
	ld d,b			;b6b2	50 	P 
	inc bc			;b6b3	03 	. 
	nop			;b6b4	00 	. 
	add a,d			;b6b5	82 	. 
	ld a,(bc)			;b6b6	0a 	. 
	ld d,b			;b6b7	50 	P 
	add hl,bc			;b6b8	09 	. 
	nop			;b6b9	00 	. 
	ld (bc),a			;b6ba	02 	. 
	ld d,b			;b6bb	50 	P 
	inc bc			;b6bc	03 	. 
	nop			;b6bd	00 	. 
	add a,d			;b6be	82 	. 
	ld a,(bc)			;b6bf	0a 	. 
	ld d,b			;b6c0	50 	P 
	rlca			;b6c1	07 	. 
	nop			;b6c2	00 	. 
	inc b			;b6c3	04 	. 
	ld d,b			;b6c4	50 	P 
	inc bc			;b6c5	03 	. 
	nop			;b6c6	00 	. 
	add a,d			;b6c7	82 	. 
	ld a,(bc)			;b6c8	0a 	. 
	ld d,b			;b6c9	50 	P 
	ld a,(bc)			;b6ca	0a 	. 
	nop			;b6cb	00 	. 
	add a,c			;b6cc	81 	. 
	ld d,b			;b6cd	50 	P 
	inc b			;b6ce	04 	. 
	ld a,(bc)			;b6cf	0a 	. 
	add a,c			;b6d0	81 	. 
	ld d,b			;b6d1	50 	P 
	inc b			;b6d2	04 	. 
	nop			;b6d3	00 	. 
	add a,c			;b6d4	81 	. 
	ld d,b			;b6d5	50 	P 
	dec b			;b6d6	05 	. 
	nop			;b6d7	00 	. 
	add a,c			;b6d8	81 	. 
	ld d,b			;b6d9	50 	P 
	inc b			;b6da	04 	. 
	ld e,h			;b6db	5c 	\ 
	add a,c			;b6dc	81 	. 
	ld d,b			;b6dd	50 	P 
	ld a,(bc)			;b6de	0a 	. 
	nop			;b6df	00 	. 
	add a,c			;b6e0	81 	. 
	ld d,b			;b6e1	50 	P 
	inc b			;b6e2	04 	. 
	nop			;b6e3	00 	. 
	dec bc			;b6e4	0b 	. 
	ld d,b			;b6e5	50 	P 
	nop			;b6e6	00 	. 
	add a,c			;b6e7	81 	. 
	ld d,b			;b6e8	50 	P 
	ld c,000h		;b6e9	0e 00 	. . 
	ld (bc),a			;b6eb	02 	. 
	ld d,b			;b6ec	50 	P 
	rrca			;b6ed	0f 	. 
	nop			;b6ee	00 	. 
	add a,c			;b6ef	81 	. 
	ld d,b			;b6f0	50 	P 
	rrca			;b6f1	0f 	. 
	dec a			;b6f2	3d 	= 
	add a,c			;b6f3	81 	. 
	ld d,b			;b6f4	50 	P 
	rrca			;b6f5	0f 	. 
	ld hl,05081h		;b6f6	21 81 50 	! . P 
	rrca			;b6f9	0f 	. 
	ld hl,05081h		;b6fa	21 81 50 	! . P 
	rlca			;b6fd	07 	. 
	ld hl,04b81h		;b6fe	21 81 4b 	! . K 
	rlca			;b701	07 	. 
	ld hl,05081h		;b702	21 81 50 	! . P 
	rlca			;b705	07 	. 
	ld hl,04b81h		;b706	21 81 4b 	! . K 
	inc b			;b709	04 	. 
	ld hl,04b84h		;b70a	21 84 4b 	! . K 
	ld hl,05021h		;b70d	21 21 50 	! ! P 
	dec b			;b710	05 	. 
	ld c,e			;b711	4b 	K 
	ld (bc),a			;b712	02 	. 
	ld hl,04b81h		;b713	21 81 4b 	! . K 
	inc b			;b716	04 	. 
	ld hl,04b81h		;b717	21 81 4b 	! . K 
	ld (bc),a			;b71a	02 	. 
	ld hl,00005h		;b71b	21 05 00 	! . . 
	adc a,c			;b71e	89 	. 
	ld c,e			;b71f	4b 	K 
	ld hl,04b21h		;b720	21 21 4b 	! ! K 
	ld hl,0214bh		;b723	21 4b 21 	! K ! 
	ld hl,0024bh		;b726	21 4b 02 	! K . 
	ld hl,00005h		;b729	21 05 00 	! . . 
	adc a,c			;b72c	89 	. 
	ld c,e			;b72d	4b 	K 
	ld hl,04b21h		;b72e	21 21 4b 	! ! K 
	ld hl,0214bh		;b731	21 4b 21 	! K ! 
	ld hl,0024bh		;b734	21 4b 02 	! K . 
	ld hl,00005h		;b737	21 05 00 	! . . 
	adc a,c			;b73a	89 	. 
	ld c,e			;b73b	4b 	K 
	ld hl,04b21h		;b73c	21 21 4b 	! ! K 
	ld hl,0214bh		;b73f	21 4b 21 	! K ! 
	ld hl,0024bh		;b742	21 4b 02 	! K . 
	ld hl,05002h		;b745	21 02 50 	! . P 
	add a,c			;b748	81 	. 
	ld d,c			;b749	51 	Q 
	dec c			;b74a	0d 	. 
	ld c,e			;b74b	4b 	K 
	nop			;b74c	00 	. 
	djnz $+82		;b74d	10 50 	. P 
	ld (bc),a			;b74f	02 	. 
	nop			;b750	00 	. 
	add a,h			;b751	84 	. 
	ld d,b			;b752	50 	P 
	nop			;b753	00 	. 
	nop			;b754	00 	. 
	ld d,b			;b755	50 	P 
	inc bc			;b756	03 	. 
	nop			;b757	00 	. 
	add a,c			;b758	81 	. 
	ld d,b			;b759	50 	P 
	dec b			;b75a	05 	. 
	nop			;b75b	00 	. 
	add a,a			;b75c	87 	. 
	ld d,b			;b75d	50 	P 
	dec a			;b75e	3d 	= 
	dec a			;b75f	3d 	= 
	ld d,b			;b760	50 	P 
	dec a			;b761	3d 	= 
	dec a			;b762	3d 	= 
	ld d,b			;b763	50 	P 
	inc bc			;b764	03 	. 
	dec a			;b765	3d 	= 
	add a,c			;b766	81 	. 
	ld d,b			;b767	50 	P 
	dec b			;b768	05 	. 
	dec a			;b769	3d 	= 
	add a,h			;b76a	84 	. 
	ld d,b			;b76b	50 	P 
	ld hl,05021h		;b76c	21 21 50 	! ! P 
	ld b,021h		;b76f	06 21 	. ! 
	add a,c			;b771	81 	. 
	ld d,b			;b772	50 	P 
	dec b			;b773	05 	. 
	ld hl,05084h		;b774	21 84 50 	! . P 
	ld hl,05021h		;b777	21 21 50 	! ! P 
	ld b,021h		;b77a	06 21 	. ! 
	add a,c			;b77c	81 	. 
	ld d,b			;b77d	50 	P 
	dec b			;b77e	05 	. 
	ld hl,05084h		;b77f	21 84 50 	! . P 
	ld hl,05021h		;b782	21 21 50 	! ! P 
	inc c			;b785	0c 	. 
	ld hl,05087h		;b786	21 87 50 	! . P 
	ld hl,05021h		;b789	21 21 50 	! ! P 
	ld hl,04b21h		;b78c	21 21 4b 	! ! K 
	add hl,bc			;b78f	09 	. 
	ld hl,05087h		;b790	21 87 50 	! . P 
	ld hl,05021h		;b793	21 21 50 	! ! P 
	ld hl,04b21h		;b796	21 21 4b 	! ! K 
	add hl,bc			;b799	09 	. 
	ld hl,05081h		;b79a	21 81 50 	! . P 
	dec b			;b79d	05 	. 
	ld hl,04b81h		;b79e	21 81 4b 	! . K 
	inc bc			;b7a1	03 	. 
	ld hl,04b81h		;b7a2	21 81 4b 	! . K 
	dec bc			;b7a5	0b 	. 
	ld hl,04b81h		;b7a6	21 81 4b 	! . K 
	inc bc			;b7a9	03 	. 
	ld hl,04b81h		;b7aa	21 81 4b 	! . K 
	dec bc			;b7ad	0b 	. 
	ld hl,04b81h		;b7ae	21 81 4b 	! . K 
	inc bc			;b7b1	03 	. 
	ld hl,04b81h		;b7b2	21 81 4b 	! . K 
	ld b,021h		;b7b5	06 21 	. ! 
	djnz $+77		;b7b7	10 4b 	. K 
	nop			;b7b9	00 	. 
	inc c			;b7ba	0c 	. 
	ld d,b			;b7bb	50 	P 
	add a,c			;b7bc	81 	. 
	ld d,c			;b7bd	51 	Q 
	inc b			;b7be	04 	. 
	ld d,b			;b7bf	50 	P 
	dec bc			;b7c0	0b 	. 
	nop			;b7c1	00 	. 
	add a,c			;b7c2	81 	. 
	ld d,d			;b7c3	52 	R 
	ld (bc),a			;b7c4	02 	. 
	nop			;b7c5	00 	. 
	ld (bc),a			;b7c6	02 	. 
	ld d,b			;b7c7	50 	P 
	ld c,03dh		;b7c8	0e 3d 	. = 
	ld (bc),a			;b7ca	02 	. 
	ld d,b			;b7cb	50 	P 
	add a,c			;b7cc	81 	. 
	ld c,a			;b7cd	4f 	O 
	dec c			;b7ce	0d 	. 
	ld hl,05002h		;b7cf	21 02 50 	! . P 
	inc bc			;b7d2	03 	. 
	ld hl,04f0ah		;b7d3	21 0a 4f 	! . O 
	add a,h			;b7d6	84 	. 
	ld hl,05050h		;b7d7	21 50 50 	! P P 
	ld c,a			;b7da	4f 	O 
	dec c			;b7db	0d 	. 
	ld hl,05002h		;b7dc	21 02 50 	! . P 
	ld (bc),a			;b7df	02 	. 
	ld hl,04e04h		;b7e0	21 04 4e 	! . N 
	inc bc			;b7e3	03 	. 
	ld hl,04f05h		;b7e4	21 05 4f 	! . O 
lb7e7h:
	ex af,af'			;b7e7	08 	. 
	ld d,b			;b7e8	50 	P 
	add a,c			;b7e9	81 	. 
	ld c,a			;b7ea	4f 	O 
	rlca			;b7eb	07 	. 
	ld hl,05081h		;b7ec	21 81 50 	! . P 
	inc bc			;b7ef	03 	. 
	ld hl,06904h		;b7f0	21 04 69 	! . i 
	add a,c			;b7f3	81 	. 
	ld c,a			;b7f4	4f 	O 
	rlca			;b7f5	07 	. 
	ld hl,05081h		;b7f6	21 81 50 	! . P 
	ex af,af'			;b7f9	08 	. 
	ld hl,04f04h		;b7fa	21 04 4f 	! . O 
	inc bc			;b7fd	03 	. 
	ld hl,05081h		;b7fe	21 81 50 	! . P 
	inc b			;b801	04 	. 
	ld hl,04e02h		;b802	21 02 4e 	! . N 
	ex af,af'			;b805	08 	. 
	ld hl,04e81h		;b806	21 81 4e 	! . N 
	ld de,00050h		;b809	11 50 00 	. P . 
	ld de,00f50h		;b80c	11 50 0f 	. P . 
	nop			;b80f	00 	. 
	add a,c			;b810	81 	. 
	ld d,b			;b811	50 	P 
	rrca			;b812	0f 	. 
	nop			;b813	00 	. 
	add a,c			;b814	81 	. 
	ld d,b			;b815	50 	P 
	rrca			;b816	0f 	. 
	nop			;b817	00 	. 
	add a,c			;b818	81 	. 
	ld d,b			;b819	50 	P 
	dec b			;b81a	05 	. 
	nop			;b81b	00 	. 
	ld (bc),a			;b81c	02 	. 
	ld d,b			;b81d	50 	P 
	ld (bc),a			;b81e	02 	. 
	nop			;b81f	00 	. 
	ld (bc),a			;b820	02 	. 
	ld d,b			;b821	50 	P 
	inc b			;b822	04 	. 
	nop			;b823	00 	. 
	add a,c			;b824	81 	. 
	ld d,b			;b825	50 	P 
	dec b			;b826	05 	. 
	nop			;b827	00 	. 
	add a,c			;b828	81 	. 
	ld d,b			;b829	50 	P 
	inc b			;b82a	04 	. 
	nop			;b82b	00 	. 
	add a,c			;b82c	81 	. 
	ld d,b			;b82d	50 	P 
	inc b			;b82e	04 	. 
	nop			;b82f	00 	. 
	inc bc			;b830	03 	. 
	ld d,b			;b831	50 	P 
	ld (bc),a			;b832	02 	. 
	nop			;b833	00 	. 
	add a,c			;b834	81 	. 
	ld d,b			;b835	50 	P 
	dec b			;b836	05 	. 
	nop			;b837	00 	. 
	add a,c			;b838	81 	. 
	ld d,b			;b839	50 	P 
	inc b			;b83a	04 	. 
	nop			;b83b	00 	. 
	add a,(hl)			;b83c	86 	. 
	ld d,b			;b83d	50 	P 
	inc bc			;b83e	03 	. 
	nop			;b83f	00 	. 
	djnz lb852h		;b840	10 10 	. . 
	ld d,b			;b842	50 	P 
	dec b			;b843	05 	. 
	nop			;b844	00 	. 
	ld b,050h		;b845	06 50 	. P 
	ld (bc),a			;b847	02 	. 
	nop			;b848	00 	. 
	add a,e			;b849	83 	. 
	djnz lb84ch		;b84a	10 00 	. . 
lb84ch:
	ld d,b			;b84c	50 	P 
	dec b			;b84d	05 	. 
	nop			;b84e	00 	. 
	ld b,050h		;b84f	06 50 	. P 
	add a,l			;b851	85 	. 
lb852h:
	ld a,(bc)			;b852	0a 	. 
	nop			;b853	00 	. 
	ld d,b			;b854	50 	P 
	nop			;b855	00 	. 
	djnz lb85bh		;b856	10 03 	. . 
	nop			;b858	00 	. 
	ld b,010h		;b859	06 10 	. . 
lb85bh:
	add a,d			;b85b	82 	. 
	nop			;b85c	00 	. 
	ld d,b			;b85d	50 	P 
	inc b			;b85e	04 	. 
	nop			;b85f	00 	. 
	add a,d			;b860	82 	. 
	djnz lb863h		;b861	10 00 	. . 
lb863h:
	ex af,af'			;b863	08 	. 
	djnz lb7e7h		;b864	10 81 	. . 
	nop			;b866	00 	. 
	djnz lb8b9h		;b867	10 50 	. P 
	nop			;b869	00 	. 
	dec c			;b86a	0d 	. 
	ld d,b			;b86b	50 	P 
	add a,c			;b86c	81 	. 
	ld d,d			;b86d	52 	R 
	ld (bc),a			;b86e	02 	. 
	ld d,b			;b86f	50 	P 
	inc b			;b870	04 	. 
	nop			;b871	00 	. 
	add hl,bc			;b872	09 	. 
	ld d,b			;b873	50 	P 
	add a,c			;b874	81 	. 
	ld d,d			;b875	52 	R 
	ld (bc),a			;b876	02 	. 
	ld d,b			;b877	50 	P 
lb878h:
	ld b,000h		;b878	06 00 	. . 
	ld (bc),a			;b87a	02 	. 
	ld d,b			;b87b	50 	P 
	dec b			;b87c	05 	. 
	nop			;b87d	00 	. 
	add a,e			;b87e	83 	. 
	ld d,d			;b87f	52 	R 
	nop			;b880	00 	. 
	ld d,b			;b881	50 	P 
	ld b,000h		;b882	06 00 	. . 
	add a,c			;b884	81 	. 
	djnz lb88fh		;b885	10 08 	. . 
	nop			;b887	00 	. 
	add a,c			;b888	81 	. 
	ld d,b			;b889	50 	P 
	ld b,000h		;b88a	06 00 	. . 
	add a,c			;b88c	81 	. 
	djnz lb897h		;b88d	10 08 	. . 
lb88fh:
	nop			;b88f	00 	. 
	add a,c			;b890	81 	. 
	ld d,b			;b891	50 	P 
lb892h:
	ld b,000h		;b892	06 00 	. . 
	add a,c			;b894	81 	. 
	djnz lb89ah		;b895	10 03 	. . 
lb897h:
	nop			;b897	00 	. 
	add a,c			;b898	81 	. 
	ld d,b			;b899	50 	P 
lb89ah:
	inc b			;b89a	04 	. 
	nop			;b89b	00 	. 
	add a,c			;b89c	81 	. 
	ld d,b			;b89d	50 	P 
	dec b			;b89e	05 	. 
	nop			;b89f	00 	. 
	ld (bc),a			;b8a0	02 	. 
	ld d,b			;b8a1	50 	P 
	inc bc			;b8a2	03 	. 
	nop			;b8a3	00 	. 
	add a,c			;b8a4	81 	. 
	ld d,b			;b8a5	50 	P 
	inc b			;b8a6	04 	. 
	nop			;b8a7	00 	. 
	ld hl,01350h		;b8a8	21 50 13 	! P . 
	nop			;b8ab	00 	. 
	add a,c			;b8ac	81 	. 
	ld d,d			;b8ad	52 	R 
	inc c			;b8ae	0c 	. 
	nop			;b8af	00 	. 
	inc bc			;b8b0	03 	. 
	ld d,b			;b8b1	50 	P 
	add a,c			;b8b2	81 	. 
	ld d,c			;b8b3	51 	Q 
	inc c			;b8b4	0c 	. 
	ld d,b			;b8b5	50 	P 
	nop			;b8b6	00 	. 
	add a,c			;b8b7	81 	. 
	ld d,b			;b8b8	50 	P 
lb8b9h:
	inc b			;b8b9	04 	. 
	nop			;b8ba	00 	. 
	inc c			;b8bb	0c 	. 
	ld d,b			;b8bc	50 	P 
	ld c,000h		;b8bd	0e 00 	. . 
	ld (bc),a			;b8bf	02 	. 
	ld d,b			;b8c0	50 	P 
	ld c,000h		;b8c1	0e 00 	. . 
	ld (bc),a			;b8c3	02 	. 
	ld d,b			;b8c4	50 	P 
	inc c			;b8c5	0c 	. 
	nop			;b8c6	00 	. 
	add a,d			;b8c7	82 	. 
	djnz lb8cah		;b8c8	10 00 	. . 
lb8cah:
	ld (bc),a			;b8ca	02 	. 
	ld d,b			;b8cb	50 	P 
	inc c			;b8cc	0c 	. 
	nop			;b8cd	00 	. 
	add a,d			;b8ce	82 	. 
	djnz lb8d1h		;b8cf	10 00 	. . 
lb8d1h:
	ld (bc),a			;b8d1	02 	. 
	ld d,b			;b8d2	50 	P 
	inc c			;b8d3	0c 	. 
	nop			;b8d4	00 	. 
	add a,d			;b8d5	82 	. 
	djnz lb8d8h		;b8d6	10 00 	. . 
lb8d8h:
	ld (bc),a			;b8d8	02 	. 
	ld d,b			;b8d9	50 	P 
	inc b			;b8da	04 	. 
	nop			;b8db	00 	. 
	ld (bc),a			;b8dc	02 	. 
	djnz lb8e4h		;b8dd	10 05 	. . 
	nop			;b8df	00 	. 
	add a,e			;b8e0	83 	. 
	djnz lb8e6h		;b8e1	10 03 	. . 
	nop			;b8e3	00 	. 
lb8e4h:
	ld (bc),a			;b8e4	02 	. 
	ld d,b			;b8e5	50 	P 
lb8e6h:
	inc bc			;b8e6	03 	. 
	nop			;b8e7	00 	. 
	inc bc			;b8e8	03 	. 
	djnz lb8f0h		;b8e9	10 05 	. . 
	nop			;b8eb	00 	. 
	add a,c			;b8ec	81 	. 
	djnz lb8f1h		;b8ed	10 02 	. . 
	nop			;b8ef	00 	. 
lb8f0h:
	ld (bc),a			;b8f0	02 	. 
lb8f1h:
	ld d,b			;b8f1	50 	P 
	inc bc			;b8f2	03 	. 
	nop			;b8f3	00 	. 
	inc b			;b8f4	04 	. 
	djnz lb878h		;b8f5	10 81 	. . 
	nop			;b8f7	00 	. 
	ld b,010h		;b8f8	06 10 	. . 
	add a,c			;b8fa	81 	. 
	ld d,b			;b8fb	50 	P 
	inc b			;b8fc	04 	. 
	nop			;b8fd	00 	. 
	add a,l			;b8fe	85 	. 
	djnz lb904h		;b8ff	10 03 	. . 
	djnz lb913h		;b901	10 10 	. . 
	nop			;b903	00 	. 
lb904h:
	ld b,010h		;b904	06 10 	. . 
	add a,c			;b906	81 	. 
	ld d,b			;b907	50 	P 
	inc bc			;b908	03 	. 
	nop			;b909	00 	. 
	dec b			;b90a	05 	. 
	djnz $-125		;b90b	10 81 	. . 
	nop			;b90d	00 	. 
	dec b			;b90e	05 	. 
	djnz lb892h		;b90f	10 81 	. . 
	ld d,d			;b911	52 	R 
	rrca			;b912	0f 	. 
lb913h:
	ld d,b			;b913	50 	P 
	add a,c			;b914	81 	. 
	ld d,c			;b915	51 	Q 
	add a,c			;b916	81 	. 
	ld d,b			;b917	50 	P 
	nop			;b918	00 	. 
	ld (bc),a			;b919	02 	. 
	ld d,b			;b91a	50 	P 
	add a,c			;b91b	81 	. 
	ld d,c			;b91c	51 	Q 
	ld c,050h		;b91d	0e 50 	. P 
	add a,d			;b91f	82 	. 
	nop			;b920	00 	. 
	ld d,d			;b921	52 	R 
	inc c			;b922	0c 	. 
	nop			;b923	00 	. 
	ld (bc),a			;b924	02 	. 
	ld d,b			;b925	50 	P 
	add a,d			;b926	82 	. 
	nop			;b927	00 	. 
	ld d,d			;b928	52 	R 
	inc c			;b929	0c 	. 
	nop			;b92a	00 	. 
	ld (bc),a			;b92b	02 	. 
	ld d,b			;b92c	50 	P 
	add a,d			;b92d	82 	. 
	nop			;b92e	00 	. 
	ld d,d			;b92f	52 	R 
	dec c			;b930	0d 	. 
	nop			;b931	00 	. 
	add a,c			;b932	81 	. 
	ld d,b			;b933	50 	P 
	rrca			;b934	0f 	. 
	nop			;b935	00 	. 
	add a,c			;b936	81 	. 
	ld d,b			;b937	50 	P 
	dec b			;b938	05 	. 
	nop			;b939	00 	. 
	ld (bc),a			;b93a	02 	. 
	ld d,b			;b93b	50 	P 
	ex af,af'			;b93c	08 	. 
	nop			;b93d	00 	. 
	add a,h			;b93e	84 	. 
	ld d,b			;b93f	50 	P 
	ld d,l			;b940	55 	U 
	ld d,l			;b941	55 	U 
	ld d,b			;b942	50 	P 
	ld (bc),a			;b943	02 	. 
	ld d,l			;b944	55 	U 
	ld (bc),a			;b945	02 	. 
	ld d,b			;b946	50 	P 
	inc bc			;b947	03 	. 
	ld d,l			;b948	55 	U 
	add a,c			;b949	81 	. 
	ld d,b			;b94a	50 	P 
	ld (bc),a			;b94b	02 	. 
	ld d,l			;b94c	55 	U 
	inc bc			;b94d	03 	. 
	ld d,b			;b94e	50 	P 
	ld (bc),a			;b94f	02 	. 
	ld d,(hl)			;b950	56 	V 
	add a,c			;b951	81 	. 
	ld d,b			;b952	50 	P 
	ld (bc),a			;b953	02 	. 
	ld d,(hl)			;b954	56 	V 
	ld (bc),a			;b955	02 	. 
	ld d,b			;b956	50 	P 
	inc bc			;b957	03 	. 
	ld d,(hl)			;b958	56 	V 
	add a,c			;b959	81 	. 
	ld d,b			;b95a	50 	P 
	ld (bc),a			;b95b	02 	. 
	ld d,(hl)			;b95c	56 	V 
	inc bc			;b95d	03 	. 
	ld d,b			;b95e	50 	P 
	ld (bc),a			;b95f	02 	. 
	ld d,a			;b960	57 	W 
	add a,c			;b961	81 	. 
	ld d,b			;b962	50 	P 
	ld (bc),a			;b963	02 	. 
	ld d,a			;b964	57 	W 
	ld (bc),a			;b965	02 	. 
	ld d,b			;b966	50 	P 
	inc bc			;b967	03 	. 
	ld d,a			;b968	57 	W 
	add a,c			;b969	81 	. 
	ld d,b			;b96a	50 	P 
	ld (bc),a			;b96b	02 	. 
	ld d,a			;b96c	57 	W 
	inc bc			;b96d	03 	. 
	ld d,b			;b96e	50 	P 
	ld (bc),a			;b96f	02 	. 
	ld d,a			;b970	57 	W 
	add a,c			;b971	81 	. 
	ld d,b			;b972	50 	P 
	ld (bc),a			;b973	02 	. 
	ld d,a			;b974	57 	W 
	ld (bc),a			;b975	02 	. 
	ld d,b			;b976	50 	P 
	inc bc			;b977	03 	. 
	ld d,a			;b978	57 	W 
	add a,c			;b979	81 	. 
	ld d,b			;b97a	50 	P 
	ld (bc),a			;b97b	02 	. 
	ld d,a			;b97c	57 	W 
	inc bc			;b97d	03 	. 
	ld d,b			;b97e	50 	P 
	ld (bc),a			;b97f	02 	. 
	ld d,a			;b980	57 	W 
	add a,c			;b981	81 	. 
	ld d,b			;b982	50 	P 
	ld (bc),a			;b983	02 	. 
	ld d,a			;b984	57 	W 
	ld (bc),a			;b985	02 	. 
	ld d,b			;b986	50 	P 
	inc bc			;b987	03 	. 
	ld d,a			;b988	57 	W 
	add a,c			;b989	81 	. 
	ld d,b			;b98a	50 	P 
	ld (bc),a			;b98b	02 	. 
	ld d,a			;b98c	57 	W 
	ld (de),a			;b98d	12 	. 
	ld d,b			;b98e	50 	P 
	nop			;b98f	00 	. 
	ld (de),a			;b990	12 	. 
	ld d,b			;b991	50 	P 
	dec c			;b992	0d 	. 
	nop			;b993	00 	. 
	inc bc			;b994	03 	. 
	ld d,b			;b995	50 	P 
	dec c			;b996	0d 	. 
	nop			;b997	00 	. 
	add a,c			;b998	81 	. 
	ld d,b			;b999	50 	P 
	rrca			;b99a	0f 	. 
	nop			;b99b	00 	. 
	add a,c			;b99c	81 	. 
	ld d,b			;b99d	50 	P 
	rrca			;b99e	0f 	. 
	nop			;b99f	00 	. 
	add a,c			;b9a0	81 	. 
	ld d,b			;b9a1	50 	P 
	rrca			;b9a2	0f 	. 
	nop			;b9a3	00 	. 
	inc bc			;b9a4	03 	. 
	ld d,b			;b9a5	50 	P 
	ld (bc),a			;b9a6	02 	. 
	nop			;b9a7	00 	. 
	add a,h			;b9a8	84 	. 
	ld (bc),a			;b9a9	02 	. 
	nop			;b9aa	00 	. 
	nop			;b9ab	00 	. 
	ld d,b			;b9ac	50 	P 
	rlca			;b9ad	07 	. 
	nop			;b9ae	00 	. 
	inc bc			;b9af	03 	. 
	ld d,b			;b9b0	50 	P 
	ld (bc),a			;b9b1	02 	. 
	nop			;b9b2	00 	. 
	add a,h			;b9b3	84 	. 
	ld (bc),a			;b9b4	02 	. 
	nop			;b9b5	00 	. 
	nop			;b9b6	00 	. 
	ld d,b			;b9b7	50 	P 
	rlca			;b9b8	07 	. 
	nop			;b9b9	00 	. 
	inc bc			;b9ba	03 	. 
	ld d,b			;b9bb	50 	P 
	dec b			;b9bc	05 	. 
	nop			;b9bd	00 	. 
	ld (bc),a			;b9be	02 	. 
	ld d,b			;b9bf	50 	P 
	ld b,000h		;b9c0	06 00 	. . 
	inc bc			;b9c2	03 	. 
	ld d,b			;b9c3	50 	P 
	dec b			;b9c4	05 	. 
	nop			;b9c5	00 	. 
	ld (bc),a			;b9c6	02 	. 
	ld d,b			;b9c7	50 	P 
	rlca			;b9c8	07 	. 
	nop			;b9c9	00 	. 
	ld (bc),a			;b9ca	02 	. 
	ld d,b			;b9cb	50 	P 
	dec b			;b9cc	05 	. 
	ld d,h			;b9cd	54 	T 
	inc bc			;b9ce	03 	. 
	ld d,b			;b9cf	50 	P 
	ld (bc),a			;b9d0	02 	. 
	nop			;b9d1	00 	. 
	add a,c			;b9d2	81 	. 
	ld d,c			;b9d3	51 	Q 
	inc bc			;b9d4	03 	. 
	nop			;b9d5	00 	. 
	inc c			;b9d6	0c 	. 
	ld d,b			;b9d7	50 	P 
	add a,c			;b9d8	81 	. 
	ld d,c			;b9d9	51 	Q 
	inc bc			;b9da	03 	. 
	ld d,b			;b9db	50 	P 
	nop			;b9dc	00 	. 
	ld de,00250h		;b9dd	11 50 02 	. P . 
	nop			;b9e0	00 	. 
	ld (bc),a			;b9e1	02 	. 
	djnz lb9e9h		;b9e2	10 05 	. . 
	nop			;b9e4	00 	. 
	ld (bc),a			;b9e5	02 	. 
	ld d,b			;b9e6	50 	P 
	inc bc			;b9e7	03 	. 
	nop			;b9e8	00 	. 
lb9e9h:
	ld (bc),a			;b9e9	02 	. 
	ld d,b			;b9ea	50 	P 
	add a,d			;b9eb	82 	. 
	djnz lb9eeh		;b9ec	10 00 	. . 
lb9eeh:
	inc bc			;b9ee	03 	. 
	djnz lb9f5h		;b9ef	10 04 	. . 
	nop			;b9f1	00 	. 
	ld (bc),a			;b9f2	02 	. 
	ld d,b			;b9f3	50 	P 
	inc bc			;b9f4	03 	. 
lb9f5h:
	nop			;b9f5	00 	. 
	ld (bc),a			;b9f6	02 	. 
	ld d,b			;b9f7	50 	P 
	ld (bc),a			;b9f8	02 	. 
	nop			;b9f9	00 	. 
	ld (bc),a			;b9fa	02 	. 
	ld d,b			;b9fb	50 	P 
	add a,c			;b9fc	81 	. 
	djnz $+5		;b9fd	10 03 	. . 
	nop			;b9ff	00 	. 
	add a,c			;ba00	81 	. 
	djnz lba05h		;ba01	10 02 	. . 
	ld d,b			;ba03	50 	P 
	inc bc			;ba04	03 	. 
lba05h:
	nop			;ba05	00 	. 
	ld (bc),a			;ba06	02 	. 
	ld d,b			;ba07	50 	P 
	add a,d			;ba08	82 	. 
	nop			;ba09	00 	. 
	djnz lba0fh		;ba0a	10 03 	. . 
	ld d,b			;ba0c	50 	P 
	inc bc			;ba0d	03 	. 
	nop			;ba0e	00 	. 
lba0fh:
	inc bc			;ba0f	03 	. 
	ld d,b			;ba10	50 	P 
	inc bc			;ba11	03 	. 
	nop			;ba12	00 	. 
	ld (bc),a			;ba13	02 	. 
	ld d,b			;ba14	50 	P 
	ld (bc),a			;ba15	02 	. 
	nop			;ba16	00 	. 
	inc bc			;ba17	03 	. 
	ld d,b			;ba18	50 	P 
	inc bc			;ba19	03 	. 
	nop			;ba1a	00 	. 
	add a,c			;ba1b	81 	. 
	djnz lba20h		;ba1c	10 02 	. . 
	ld d,b			;ba1e	50 	P 
	inc bc			;ba1f	03 	. 
lba20h:
	nop			;ba20	00 	. 
	ld (bc),a			;ba21	02 	. 
	ld d,b			;ba22	50 	P 
	add a,d			;ba23	82 	. 
	djnz lba26h		;ba24	10 00 	. . 
lba26h:
	inc bc			;ba26	03 	. 
	ld d,b			;ba27	50 	P 
	inc bc			;ba28	03 	. 
	nop			;ba29	00 	. 
	add a,c			;ba2a	81 	. 
	djnz lba2fh		;ba2b	10 02 	. . 
	ld d,b			;ba2d	50 	P 
	inc bc			;ba2e	03 	. 
lba2fh:
	nop			;ba2f	00 	. 
	ld (bc),a			;ba30	02 	. 
	ld d,b			;ba31	50 	P 
	ld (bc),a			;ba32	02 	. 
	nop			;ba33	00 	. 
	ld (bc),a			;ba34	02 	. 
	ld d,b			;ba35	50 	P 
	add a,c			;ba36	81 	. 
	djnz lba3ch		;ba37	10 03 	. . 
	nop			;ba39	00 	. 
	inc bc			;ba3a	03 	. 
	ld d,b			;ba3b	50 	P 
lba3ch:
	inc bc			;ba3c	03 	. 
	nop			;ba3d	00 	. 
	ld (bc),a			;ba3e	02 	. 
	ld d,b			;ba3f	50 	P 
	add a,c			;ba40	81 	. 
	nop			;ba41	00 	. 
	inc bc			;ba42	03 	. 
	ld d,b			;ba43	50 	P 
	add a,c			;ba44	81 	. 
	djnz lba4ah		;ba45	10 03 	. . 
	nop			;ba47	00 	. 
	inc bc			;ba48	03 	. 
	ld d,b			;ba49	50 	P 
lba4ah:
	inc bc			;ba4a	03 	. 
	nop			;ba4b	00 	. 
	add a,c			;ba4c	81 	. 
	ld d,b			;ba4d	50 	P 
	inc bc			;ba4e	03 	. 
	nop			;ba4f	00 	. 
	inc bc			;ba50	03 	. 
	ld d,b			;ba51	50 	P 
	add hl,bc			;ba52	09 	. 
	nop			;ba53	00 	. 
	add a,c			;ba54	81 	. 
	ld d,b			;ba55	50 	P 
	inc bc			;ba56	03 	. 
	nop			;ba57	00 	. 
	inc bc			;ba58	03 	. 
	ld d,b			;ba59	50 	P 
	rlca			;ba5a	07 	. 
	nop			;ba5b	00 	. 
	add a,d			;ba5c	82 	. 
	ld d,d			;ba5d	52 	R 
	nop			;ba5e	00 	. 
	ld c,050h		;ba5f	0e 50 	. P 
	add a,c			;ba61	81 	. 
	ld d,c			;ba62	51 	Q 
	ld (bc),a			;ba63	02 	. 
	ld d,b			;ba64	50 	P 
	nop			;ba65	00 	. 
	add a,c			;ba66	81 	. 
	ld d,b			;ba67	50 	P 
	ld (bc),a			;ba68	02 	. 
	nop			;ba69	00 	. 
	ld c,050h		;ba6a	0e 50 	. P 
	ld (bc),a			;ba6c	02 	. 
	nop			;ba6d	00 	. 
	inc bc			;ba6e	03 	. 
	ld d,b			;ba6f	50 	P 
	inc bc			;ba70	03 	. 
	nop			;ba71	00 	. 
	inc bc			;ba72	03 	. 
	ld d,e			;ba73	53 	S 
	add a,e			;ba74	83 	. 
	ld d,b			;ba75	50 	P 
	ld d,e			;ba76	53 	S 
	nop			;ba77	00 	. 
	ld (bc),a			;ba78	02 	. 
	ld d,b			;ba79	50 	P 
	ld (bc),a			;ba7a	02 	. 
	nop			;ba7b	00 	. 
	ld (bc),a			;ba7c	02 	. 
	ld d,b			;ba7d	50 	P 
	add a,d			;ba7e	82 	. 
	djnz lba8bh		;ba7f	10 0a 	. . 
	ex af,af'			;ba81	08 	. 
	nop			;ba82	00 	. 
	ld (bc),a			;ba83	02 	. 
	ld d,b			;ba84	50 	P 
	ld (bc),a			;ba85	02 	. 
	nop			;ba86	00 	. 
	add a,h			;ba87	84 	. 
	djnz lba8ah		;ba88	10 00 	. . 
lba8ah:
	nop			;ba8a	00 	. 
lba8bh:
	djnz lba95h		;ba8b	10 08 	. . 
	nop			;ba8d	00 	. 
	ld (bc),a			;ba8e	02 	. 
	ld d,b			;ba8f	50 	P 
	dec b			;ba90	05 	. 
	nop			;ba91	00 	. 
	inc bc			;ba92	03 	. 
	ld d,b			;ba93	50 	P 
	inc bc			;ba94	03 	. 
lba95h:
	nop			;ba95	00 	. 
	ld (bc),a			;ba96	02 	. 
	ld d,b			;ba97	50 	P 
	add a,c			;ba98	81 	. 
	nop			;ba99	00 	. 
	ld (bc),a			;ba9a	02 	. 
	ld d,b			;ba9b	50 	P 
	inc bc			;ba9c	03 	. 
	nop			;ba9d	00 	. 
	dec b			;ba9e	05 	. 
	ld d,b			;ba9f	50 	P 
	inc bc			;baa0	03 	. 
	nop			;baa1	00 	. 
	ld (bc),a			;baa2	02 	. 
	ld d,e			;baa3	53 	S 
	add a,c			;baa4	81 	. 
	nop			;baa5	00 	. 
	ld (bc),a			;baa6	02 	. 
	ld d,b			;baa7	50 	P 
	inc bc			;baa8	03 	. 
	nop			;baa9	00 	. 
	add a,d			;baaa	82 	. 
	ld d,e			;baab	53 	S 
	ld d,b			;baac	50 	P 
	inc bc			;baad	03 	. 
	ld d,e			;baae	53 	S 
	ld b,000h		;baaf	06 00 	. . 
	ld (bc),a			;bab1	02 	. 
	ld d,b			;bab2	50 	P 
	inc b			;bab3	04 	. 
	nop			;bab4	00 	. 
	add a,c			;bab5	81 	. 
	djnz lbabch		;bab6	10 04 	. . 
	nop			;bab8	00 	. 
	add a,c			;bab9	81 	. 
	ld d,b			;baba	50 	P 
	inc b			;babb	04 	. 
lbabch:
	nop			;babc	00 	. 
	ld (bc),a			;babd	02 	. 
	ld d,b			;babe	50 	P 
	inc b			;babf	04 	. 
	nop			;bac0	00 	. 
	add a,c			;bac1	81 	. 
	djnz lbaceh		;bac2	10 0a 	. . 
	nop			;bac4	00 	. 
	add a,c			;bac5	81 	. 
	ld d,b			;bac6	50 	P 
	inc b			;bac7	04 	. 
	nop			;bac8	00 	. 
	add a,c			;bac9	81 	. 
	ld d,b			;baca	50 	P 
	dec b			;bacb	05 	. 
	nop			;bacc	00 	. 
	add a,c			;bacd	81 	. 
lbaceh:
	ld d,b			;bace	50 	P 
	inc b			;bacf	04 	. 
	nop			;bad0	00 	. 
	add a,c			;bad1	81 	. 
	ld d,b			;bad2	50 	P 
	inc bc			;bad3	03 	. 
	nop			;bad4	00 	. 
	ld (bc),a			;bad5	02 	. 
	ld d,b			;bad6	50 	P 
	ld a,(bc)			;bad7	0a 	. 
	nop			;bad8	00 	. 
	djnz lbb2bh		;bad9	10 50 	. P 
	nop			;badb	00 	. 
	inc bc			;badc	03 	. 
	ld d,b			;badd	50 	P 
	add a,c			;bade	81 	. 
	ld d,c			;badf	51 	Q 
	dec c			;bae0	0d 	. 
	ld d,b			;bae1	50 	P 
	ld (bc),a			;bae2	02 	. 
	nop			;bae3	00 	. 
	add a,c			;bae4	81 	. 
	ld d,d			;bae5	52 	R 
	inc c			;bae6	0c 	. 
	nop			;bae7	00 	. 
	add a,h			;bae8	84 	. 
	ld d,b			;bae9	50 	P 
	nop			;baea	00 	. 
	nop			;baeb	00 	. 
	ld d,d			;baec	52 	R 
	ld (bc),a			;baed	02 	. 
	nop			;baee	00 	. 
	ld (bc),a			;baef	02 	. 
	djnz lbafah		;baf0	10 08 	. . 
	nop			;baf2	00 	. 
	add a,c			;baf3	81 	. 
	ld d,b			;baf4	50 	P 
	ld (bc),a			;baf5	02 	. 
	nop			;baf6	00 	. 
	ex af,af'			;baf7	08 	. 
	ld d,b			;baf8	50 	P 
	ld (bc),a			;baf9	02 	. 
lbafah:
	ld e,h			;bafa	5c 	\ 
	inc b			;bafb	04 	. 
	ld d,b			;bafc	50 	P 
	ld c,000h		;bafd	0e 00 	. . 
	ld (bc),a			;baff	02 	. 
lbb00h:
	ld d,b			;bb00	50 	P 
	ld c,000h		;bb01	0e 00 	. . 
	ld (bc),a			;bb03	02 	. 
	ld d,b			;bb04	50 	P 
	add a,c			;bb05	81 	. 
	djnz lbb14h		;bb06	10 0c 	. . 
	nop			;bb08	00 	. 
	add a,c			;bb09	81 	. 
	inc bc			;bb0a	03 	. 
	ld (bc),a			;bb0b	02 	. 
	ld d,b			;bb0c	50 	P 
	inc bc			;bb0d	03 	. 
	nop			;bb0e	00 	. 
	inc bc			;bb0f	03 	. 
	ld d,b			;bb10	50 	P 
	ld b,000h		;bb11	06 00 	. . 
	inc bc			;bb13	03 	. 
lbb14h:
	ld d,b			;bb14	50 	P 
	inc b			;bb15	04 	. 
	nop			;bb16	00 	. 
	inc bc			;bb17	03 	. 
	ld d,b			;bb18	50 	P 
	ld (bc),a			;bb19	02 	. 
	nop			;bb1a	00 	. 
	ld (bc),a			;bb1b	02 	. 
	ld d,b			;bb1c	50 	P 
	ld (bc),a			;bb1d	02 	. 
	nop			;bb1e	00 	. 
	inc bc			;bb1f	03 	. 
	ld d,b			;bb20	50 	P 
	inc b			;bb21	04 	. 
	nop			;bb22	00 	. 
	inc bc			;bb23	03 	. 
	ld d,b			;bb24	50 	P 
	ld (bc),a			;bb25	02 	. 
	nop			;bb26	00 	. 
	ld (bc),a			;bb27	02 	. 
	ld d,b			;bb28	50 	P 
	ld (bc),a			;bb29	02 	. 
	nop			;bb2a	00 	. 
lbb2bh:
	inc bc			;bb2b	03 	. 
	ld d,b			;bb2c	50 	P 
	inc bc			;bb2d	03 	. 
	nop			;bb2e	00 	. 
	inc b			;bb2f	04 	. 
	ld d,b			;bb30	50 	P 
	ld (bc),a			;bb31	02 	. 
	ld d,h			;bb32	54 	T 
	ld (bc),a			;bb33	02 	. 
	ld d,b			;bb34	50 	P 
	ld (bc),a			;bb35	02 	. 
	ld d,h			;bb36	54 	T 
	inc de			;bb37	13 	. 
	ld d,b			;bb38	50 	P 
	nop			;bb39	00 	. 
	ld c,050h		;bb3a	0e 50 	. P 
	add a,e			;bb3c	83 	. 
	ld d,c			;bb3d	51 	Q 
	ld d,b			;bb3e	50 	P 
	nop			;bb3f	00 	. 
	inc b			;bb40	04 	. 
	djnz lbb4ch		;bb41	10 09 	. . 
	nop			;bb43	00 	. 
	add a,d			;bb44	82 	. 
	ld d,d			;bb45	52 	R 
	ld d,b			;bb46	50 	P 
	ld c,000h		;bb47	0e 00 	. . 
	add a,c			;bb49	81 	. 
	ld d,d			;bb4a	52 	R 
	ld (bc),a			;bb4b	02 	. 
lbb4ch:
	ld d,b			;bb4c	50 	P 
	ld c,000h		;bb4d	0e 00 	. . 
	ld (bc),a			;bb4f	02 	. 
lbb50h:
	ld d,b			;bb50	50 	P 
	dec b			;bb51	05 	. 
	nop			;bb52	00 	. 
	inc b			;bb53	04 	. 
	ld d,b			;bb54	50 	P 
	dec b			;bb55	05 	. 
	nop			;bb56	00 	. 
	ld (bc),a			;bb57	02 	. 
	ld d,b			;bb58	50 	P 
	inc bc			;bb59	03 	. 
	nop			;bb5a	00 	. 
	ex af,af'			;bb5b	08 	. 
	ld d,b			;bb5c	50 	P 
	inc bc			;bb5d	03 	. 
	nop			;bb5e	00 	. 
	ld (bc),a			;bb5f	02 	. 
	ld d,b			;bb60	50 	P 
	ld (bc),a			;bb61	02 	. 
	nop			;bb62	00 	. 
	inc bc			;bb63	03 	. 
	ld d,b			;bb64	50 	P 
	inc b			;bb65	04 	. 
	nop			;bb66	00 	. 
	rlca			;bb67	07 	. 
	ld d,b			;bb68	50 	P 
	ld (bc),a			;bb69	02 	. 
	nop			;bb6a	00 	. 
	inc bc			;bb6b	03 	. 
	ld d,b			;bb6c	50 	P 
	inc b			;bb6d	04 	. 
	nop			;bb6e	00 	. 
	rlca			;bb6f	07 	. 
	ld d,b			;bb70	50 	P 
	ld b,000h		;bb71	06 00 	. . 
	add a,c			;bb73	81 	. 
	ld d,b			;bb74	50 	P 
	ld b,000h		;bb75	06 00 	. . 
	add a,d			;bb77	82 	. 
	djnz lbb7ah		;bb78	10 00 	. . 
lbb7ah:
	ld (bc),a			;bb7a	02 	. 
	ld d,b			;bb7b	50 	P 
	dec b			;bb7c	05 	. 
	nop			;bb7d	00 	. 
	add a,c			;bb7e	81 	. 
	ld d,b			;bb7f	50 	P 
	ld b,000h		;bb80	06 00 	. . 
	add a,d			;bb82	82 	. 
	djnz lbb85h		;bb83	10 00 	. . 
lbb85h:
	ld (bc),a			;bb85	02 	. 
	ld d,b			;bb86	50 	P 
	dec b			;bb87	05 	. 
	nop			;bb88	00 	. 
	ld (bc),a			;bb89	02 	. 
	ld d,b			;bb8a	50 	P 
	rlca			;bb8b	07 	. 
	nop			;bb8c	00 	. 
	djnz lbbdfh		;bb8d	10 50 	. P 
	nop			;bb8f	00 	. 
	ld (de),a			;bb90	12 	. 
	ld d,b			;bb91	50 	P 
	inc c			;bb92	0c 	. 
	ld e,c			;bb93	59 	Y 
	inc b			;bb94	04 	. 
	ld d,b			;bb95	50 	P 
	inc c			;bb96	0c 	. 
	nop			;bb97	00 	. 
	inc b			;bb98	04 	. 
	ld d,b			;bb99	50 	P 
	inc c			;bb9a	0c 	. 
	nop			;bb9b	00 	. 
	inc b			;bb9c	04 	. 
	ld d,b			;bb9d	50 	P 
	inc c			;bb9e	0c 	. 
	nop			;bb9f	00 	. 
	inc b			;bba0	04 	. 
	ld d,b			;bba1	50 	P 
	inc c			;bba2	0c 	. 
	nop			;bba3	00 	. 
	inc b			;bba4	04 	. 
	ld d,b			;bba5	50 	P 
	inc c			;bba6	0c 	. 
	nop			;bba7	00 	. 
	inc b			;bba8	04 	. 
	ld d,b			;bba9	50 	P 
	inc c			;bbaa	0c 	. 
	nop			;bbab	00 	. 
	ld (bc),a			;bbac	02 	. 
	ld d,b			;bbad	50 	P 
	ld c,000h		;bbae	0e 00 	. . 
	add a,c			;bbb0	81 	. 
	djnz lbbc2h		;bbb1	10 0f 	. . 
	nop			;bbb3	00 	. 
	add a,c			;bbb4	81 	. 
	djnz lbbc6h		;bbb5	10 0f 	. . 
	nop			;bbb7	00 	. 
	add a,d			;bbb8	82 	. 
	djnz lbbbbh		;bbb9	10 00 	. . 
lbbbbh:
	djnz lbc0dh		;bbbb	10 50 	. P 
	nop			;bbbd	00 	. 
	inc c			;bbbe	0c 	. 
	ld d,b			;bbbf	50 	P 
lbbc0h:
	add a,c			;bbc0	81 	. 
	ld d,c			;bbc1	51 	Q 
lbbc2h:
	rlca			;bbc2	07 	. 
	ld d,b			;bbc3	50 	P 
	add a,c			;bbc4	81 	. 
	ld a,(bc)			;bbc5	0a 	. 
lbbc6h:
	ld (bc),a			;bbc6	02 	. 
	nop			;bbc7	00 	. 
	ld (bc),a			;bbc8	02 	. 
	ld d,b			;bbc9	50 	P 
	inc bc			;bbca	03 	. 
	djnz lbb50h		;bbcb	10 83 	. . 
	ld d,d			;bbcd	52 	R 
	nop			;bbce	00 	. 
	ld a,(bc)			;bbcf	0a 	. 
	inc b			;bbd0	04 	. 
	ld d,b			;bbd1	50 	P 
	inc b			;bbd2	04 	. 
	nop			;bbd3	00 	. 
	add a,d			;bbd4	82 	. 
	ld d,e			;bbd5	53 	S 
	ld d,b			;bbd6	50 	P 
	inc bc			;bbd7	03 	. 
	djnz lbbdch		;bbd8	10 02 	. . 
	nop			;bbda	00 	. 
	add a,c			;bbdb	81 	. 
lbbdch:
	ld a,(bc)			;bbdc	0a 	. 
	inc b			;bbdd	04 	. 
	ld d,b			;bbde	50 	P 
lbbdfh:
	dec b			;bbdf	05 	. 
	nop			;bbe0	00 	. 
	ld c,050h		;bbe1	0e 50 	. P 
	add hl,bc			;bbe3	09 	. 
	nop			;bbe4	00 	. 
	inc bc			;bbe5	03 	. 
	ld d,b			;bbe6	50 	P 
	inc b			;bbe7	04 	. 
	ld d,e			;bbe8	53 	S 
	add hl,bc			;bbe9	09 	. 
	nop			;bbea	00 	. 
	inc bc			;bbeb	03 	. 
	ld d,b			;bbec	50 	P 
	dec b			;bbed	05 	. 
	nop			;bbee	00 	. 
	add a,c			;bbef	81 	. 
	ld d,b			;bbf0	50 	P 
	rlca			;bbf1	07 	. 
	nop			;bbf2	00 	. 
	inc bc			;bbf3	03 	. 
	ld d,b			;bbf4	50 	P 
	rlca			;bbf5	07 	. 
	nop			;bbf6	00 	. 
	ld (bc),a			;bbf7	02 	. 
	ld d,b			;bbf8	50 	P 
	inc b			;bbf9	04 	. 
	nop			;bbfa	00 	. 
	add a,c			;bbfb	81 	. 
	ld d,b			;bbfc	50 	P 
	add hl,bc			;bbfd	09 	. 
	nop			;bbfe	00 	. 
	ld (bc),a			;bbff	02 	. 
	ld d,b			;bc00	50 	P 
	dec c			;bc01	0d 	. 
	nop			;bc02	00 	. 
	inc b			;bc03	04 	. 
	ld d,b			;bc04	50 	P 
	inc c			;bc05	0c 	. 
	nop			;bc06	00 	. 
	inc b			;bc07	04 	. 
	ld d,b			;bc08	50 	P 
	ld (bc),a			;bc09	02 	. 
	ld d,h			;bc0a	54 	T 
	ld (bc),a			;bc0b	02 	. 
	nop			;bc0c	00 	. 
lbc0dh:
	djnz lbc5fh		;bc0d	10 50 	. P 
	nop			;bc0f	00 	. 
	dec c			;bc10	0d 	. 
	ld d,b			;bc11	50 	P 
	add a,c			;bc12	81 	. 
	ld d,c			;bc13	51 	Q 
	inc bc			;bc14	03 	. 
	ld d,b			;bc15	50 	P 
	inc c			;bc16	0c 	. 
	nop			;bc17	00 	. 
	add a,c			;bc18	81 	. 
	ld d,d			;bc19	52 	R 
	inc bc			;bc1a	03 	. 
	ld d,b			;bc1b	50 	P 
	dec c			;bc1c	0d 	. 
	nop			;bc1d	00 	. 
	inc bc			;bc1e	03 	. 
	ld d,b			;bc1f	50 	P 
	ld a,(bc)			;bc20	0a 	. 
	nop			;bc21	00 	. 
	ld b,050h		;bc22	06 50 	. P 
	add hl,bc			;bc24	09 	. 
	nop			;bc25	00 	. 
	rlca			;bc26	07 	. 
	ld d,b			;bc27	50 	P 
	ex af,af'			;bc28	08 	. 
	nop			;bc29	00 	. 
	ex af,af'			;bc2a	08 	. 
	ld d,b			;bc2b	50 	P 
	ex af,af'			;bc2c	08 	. 
	nop			;bc2d	00 	. 
	inc b			;bc2e	04 	. 
	djnz lbc35h		;bc2f	10 04 	. . 
	ld d,b			;bc31	50 	P 
	ex af,af'			;bc32	08 	. 
	nop			;bc33	00 	. 
	inc b			;bc34	04 	. 
lbc35h:
	djnz lbc3ah		;bc35	10 03 	. . 
	ld d,b			;bc37	50 	P 
	ex af,af'			;bc38	08 	. 
	nop			;bc39	00 	. 
lbc3ah:
	add a,c			;bc3a	81 	. 
	ld d,b			;bc3b	50 	P 
	inc b			;bc3c	04 	. 
	djnz lbbc0h		;bc3d	10 81 	. . 
	nop			;bc3f	00 	. 
	ld (bc),a			;bc40	02 	. 
	ld d,b			;bc41	50 	P 
	dec b			;bc42	05 	. 
	nop			;bc43	00 	. 
	inc b			;bc44	04 	. 
	ld d,b			;bc45	50 	P 
	inc b			;bc46	04 	. 
	djnz $-123		;bc47	10 83 	. . 
	nop			;bc49	00 	. 
	ld (bc),a			;bc4a	02 	. 
	ld d,b			;bc4b	50 	P 
	ld c,000h		;bc4c	0e 00 	. . 
	add a,c			;bc4e	81 	. 
	ld (bc),a			;bc4f	02 	. 
	ld de,00050h		;bc50	11 50 00 	. P . 
	ld d,l			;bc53	55 	U 
	cp h			;bc54	bc 	. 
	ld e,l			;bc55	5d 	] 
	cp h			;bc56	bc 	. 
	xor a			;bc57	af 	. 
	cp h			;bc58	bc 	. 
	dec sp			;bc59	3b 	; 
	cp l			;bc5a	bd 	. 
	ld (hl),d			;bc5b	72 	r 
	cp l			;bc5c	bd 	. 
	dec bc			;bc5d	0b 	. 
	nop			;bc5e	00 	. 
lbc5fh:
	add a,d			;bc5f	82 	. 
	dec bc			;bc60	0b 	. 
	inc c			;bc61	0c 	. 
	dec b			;bc62	05 	. 
	nop			;bc63	00 	. 
	add a,d			;bc64	82 	. 
	dec bc			;bc65	0b 	. 
	inc c			;bc66	0c 	. 
	dec bc			;bc67	0b 	. 
	nop			;bc68	00 	. 
	add a,c			;bc69	81 	. 
	ld e,l			;bc6a	5d 	] 
	ld b,000h		;bc6b	06 00 	. . 
	add a,d			;bc6d	82 	. 
	dec bc			;bc6e	0b 	. 
	inc c			;bc6f	0c 	. 
	rlca			;bc70	07 	. 
	nop			;bc71	00 	. 
	add a,c			;bc72	81 	. 
	ld e,l			;bc73	5d 	] 
	ld c,000h		;bc74	0e 00 	. . 
	add a,d			;bc76	82 	. 
	ld e,l			;bc77	5d 	] 
	ld l,e			;bc78	6b 	k 
	ld c,000h		;bc79	0e 00 	. . 
	add a,d			;bc7b	82 	. 
	ld e,(hl)			;bc7c	5e 	^ 
	ld l,d			;bc7d	6a 	j 
	add hl,bc			;bc7e	09 	. 
	nop			;bc7f	00 	. 
	inc bc			;bc80	03 	. 
	ld a,(bc)			;bc81	0a 	. 
	ld (bc),a			;bc82	02 	. 
	nop			;bc83	00 	. 
	add a,d			;bc84	82 	. 
	ld e,(hl)			;bc85	5e 	^ 
	ld l,e			;bc86	6b 	k 
	ld c,000h		;bc87	0e 00 	. . 
	add a,d			;bc89	82 	. 
	ld e,(hl)			;bc8a	5e 	^ 
	ld l,d			;bc8b	6a 	j 
	inc b			;bc8c	04 	. 
	nop			;bc8d	00 	. 
	inc bc			;bc8e	03 	. 
	inc bc			;bc8f	03 	. 
	rlca			;bc90	07 	. 
	nop			;bc91	00 	. 
	add a,d			;bc92	82 	. 
	ld e,l			;bc93	5d 	] 
	ld l,e			;bc94	6b 	k 
	ld c,000h		;bc95	0e 00 	. . 
	add a,d			;bc97	82 	. 
	ld e,(hl)			;bc98	5e 	^ 
	ld l,d			;bc99	6a 	j 
	ld c,000h		;bc9a	0e 00 	. . 
	add a,h			;bc9c	84 	. 
	ld e,l			;bc9d	5d 	] 
	ld l,e			;bc9e	6b 	k 
	ld l,d			;bc9f	6a 	j 
	ld l,(hl)			;bca0	6e 	n 
	inc c			;bca1	0c 	. 
	dec a			;bca2	3d 	= 
	add a,h			;bca3	84 	. 
	ld l,a			;bca4	6f 	o 
	ld l,d			;bca5	6a 	j 
	ld l,d			;bca6	6a 	j 
	ld l,(hl)			;bca7	6e 	n 
	inc c			;bca8	0c 	. 
	ld hl,06d81h		;bca9	21 81 6d 	! . m 
	add a,c			;bcac	81 	. 
	ld l,e			;bcad	6b 	k 
	nop			;bcae	00 	. 
	add a,d			;bcaf	82 	. 
	ld l,e			;bcb0	6b 	k 
	ld l,h			;bcb1	6c 	l 
	dec b			;bcb2	05 	. 
	ld hl,01182h		;bcb3	21 82 11 	! . . 
	ld d,005h		;bcb6	16 05 	. . 
	ld hl,06f84h		;bcb8	21 84 6f 	! . o 
	ld l,d			;bcbb	6a 	j 
	ld l,d			;bcbc	6a 	j 
	ld l,(hl)			;bcbd	6e 	n 
	dec b			;bcbe	05 	. 
	ld hl,01182h		;bcbf	21 82 11 	! . . 
	ld d,005h		;bcc2	16 05 	. . 
	ld hl,06d84h		;bcc4	21 84 6d 	! . m 
	ld l,e			;bcc7	6b 	k 
	ld l,e			;bcc8	6b 	k 
	ld l,h			;bcc9	6c 	l 
	inc bc			;bcca	03 	. 
	ld hl,01184h		;bccb	21 84 11 	! . . 
	ld hl,01621h		;bcce	21 21 16 	! ! . 
	dec b			;bcd1	05 	. 
	ld hl,06f84h		;bcd2	21 84 6f 	! . o 
	ld l,d			;bcd5	6a 	j 
	ld l,d			;bcd6	6a 	j 
	ld l,(hl)			;bcd7	6e 	n 
	inc bc			;bcd8	03 	. 
	ld hl,01682h		;bcd9	21 82 16 	! . . 
	ld hl,01102h		;bcdc	21 02 11 	! . . 
	dec b			;bcdf	05 	. 
	ld hl,06d84h		;bce0	21 84 6d 	! . m 
	ld l,e			;bce3	6b 	k 
	ld l,e			;bce4	6b 	k 
	ld l,h			;bce5	6c 	l 
	dec b			;bce6	05 	. 
	ld hl,01182h		;bce7	21 82 11 	! . . 
	ld d,005h		;bcea	16 05 	. . 
	ld hl,06f84h		;bcec	21 84 6f 	! . o 
	ld l,d			;bcef	6a 	j 
	ld l,d			;bcf0	6a 	j 
	ld l,(hl)			;bcf1	6e 	n 
	dec b			;bcf2	05 	. 
	ld hl,00384h		;bcf3	21 84 03 	! . . 
	ld de,00311h		;bcf6	11 11 03 	. . . 
	inc bc			;bcf9	03 	. 
	ld de,06d84h		;bcfa	11 84 6d 	. . m 
	ld l,e			;bcfd	6b 	k 
	ld l,e			;bcfe	6b 	k 
	ld l,h			;bcff	6c 	l 
	inc c			;bd00	0c 	. 
	ld hl,06f84h		;bd01	21 84 6f 	! . o 
	ld l,d			;bd04	6a 	j 
	ld l,d			;bd05	6a 	j 
	ld l,(hl)			;bd06	6e 	n 
	inc c			;bd07	0c 	. 
	ld hl,06d84h		;bd08	21 84 6d 	! . m 
	ld l,e			;bd0b	6b 	k 
	ld l,e			;bd0c	6b 	k 
	ld l,h			;bd0d	6c 	l 
	inc c			;bd0e	0c 	. 
	ld hl,06f84h		;bd0f	21 84 6f 	! . o 
	ld l,d			;bd12	6a 	j 
	ld l,d			;bd13	6a 	j 
	ld l,(hl)			;bd14	6e 	n 
	inc c			;bd15	0c 	. 
	ld hl,06da2h		;bd16	21 a2 6d 	! . m 
	ld l,e			;bd19	6b 	k 
	ld l,e			;bd1a	6b 	k 
	ld l,d			;bd1b	6a 	j 
	ld (hl),e			;bd1c	73 	s 
	ld (hl),c			;bd1d	71 	q 
	ld (hl),e			;bd1e	73 	s 
	ld (hl),c			;bd1f	71 	q 
	ld (hl),e			;bd20	73 	s 
	ld l,h			;bd21	6c 	l 
	ld hl,06f21h		;bd22	21 21 6f 	! ! o 
	ld (hl),c			;bd25	71 	q 
	ld (hl),e			;bd26	73 	s 
	ld (hl),c			;bd27	71 	q 
	ld l,e			;bd28	6b 	k 
	ld l,d			;bd29	6a 	j 
	ld l,d			;bd2a	6a 	j 
	ld l,e			;bd2b	6b 	k 
	ld l,d			;bd2c	6a 	j 
	ld l,e			;bd2d	6b 	k 
	ld l,d			;bd2e	6a 	j 
	ld l,e			;bd2f	6b 	k 
	ld l,d			;bd30	6a 	j 
	ld l,(hl)			;bd31	6e 	n 
	ld hl,06d21h		;bd32	21 21 6d 	! ! m 
	ld l,e			;bd35	6b 	k 
	ld l,d			;bd36	6a 	j 
	ld l,e			;bd37	6b 	k 
	ld l,d			;bd38	6a 	j 
	ld l,e			;bd39	6b 	k 
	nop			;bd3a	00 	. 
	ld (bc),a			;bd3b	02 	. 
	ld e,a			;bd3c	5f 	_ 
	ld a,(bc)			;bd3d	0a 	. 
	ld h,b			;bd3e	60 	` 
	ld b,05fh		;bd3f	06 5f 	. _ 
	ld a,(bc)			;bd41	0a 	. 
	ld h,b			;bd42	60 	` 
	ld b,05fh		;bd43	06 5f 	. _ 
	ld a,(bc)			;bd45	0a 	. 
	ld h,b			;bd46	60 	` 
	ld b,05fh		;bd47	06 5f 	. _ 
	ld a,(bc)			;bd49	0a 	. 
	ld h,b			;bd4a	60 	` 
	ld b,05fh		;bd4b	06 5f 	. _ 
	ld a,(bc)			;bd4d	0a 	. 
	ld h,b			;bd4e	60 	` 
	ld b,05fh		;bd4f	06 5f 	. _ 
	ld a,(bc)			;bd51	0a 	. 
	ld h,b			;bd52	60 	` 
	ld b,05fh		;bd53	06 5f 	. _ 
	ld c,060h		;bd55	0e 60 	. ` 
	ld (bc),a			;bd57	02 	. 
	ld e,a			;bd58	5f 	_ 
	dec bc			;bd59	0b 	. 
	ld h,b			;bd5a	60 	` 
	add a,e			;bd5b	83 	. 
	ld h,e			;bd5c	63 	c 
	ld h,h			;bd5d	64 	d 
	ld c,c			;bd5e	49 	I 
	ld (bc),a			;bd5f	02 	. 
	ld e,a			;bd60	5f 	_ 
	dec bc			;bd61	0b 	. 
	ld h,b			;bd62	60 	` 
	add a,e			;bd63	83 	. 
	ld h,l			;bd64	65 	e 
	ld h,(hl)			;bd65	66 	f 
	ld c,c			;bd66	49 	I 
	ld (bc),a			;bd67	02 	. 
	ld e,a			;bd68	5f 	_ 
	dec bc			;bd69	0b 	. 
	ld h,b			;bd6a	60 	` 
	add a,e			;bd6b	83 	. 
	ld h,a			;bd6c	67 	g 
	ld l,b			;bd6d	68 	h 
	ld c,c			;bd6e	49 	I 
	jr nz,$+97		;bd6f	20 5f 	  _ 
	nop			;bd71	00 	. 
	ld de,00e61h		;bd72	11 61 0e 	. a . 
	ld h,b			;bd75	60 	` 
	ld (bc),a			;bd76	02 	. 
	ld h,c			;bd77	61 	a 
	ld c,060h		;bd78	0e 60 	. ` 
	ld (bc),a			;bd7a	02 	. 
	ld h,c			;bd7b	61 	a 
	adc a,e			;bd7c	8b 	. 
	ld h,b			;bd7d	60 	` 
	ld h,c			;bd7e	61 	a 
	ld h,b			;bd7f	60 	` 
	ld h,b			;bd80	60 	` 
	ld h,d			;bd81	62 	b 
	ld h,b			;bd82	60 	` 
	ld h,b			;bd83	60 	` 
	ld h,d			;bd84	62 	b 
	ld h,b			;bd85	60 	` 
	ld h,b			;bd86	60 	` 
	ld h,d			;bd87	62 	b 
	inc bc			;bd88	03 	. 
	ld h,b			;bd89	60 	` 
	ld (bc),a			;bd8a	02 	. 
	ld h,c			;bd8b	61 	a 
	add a,c			;bd8c	81 	. 
	ld h,b			;bd8d	60 	` 
	inc c			;bd8e	0c 	. 
	ld h,c			;bd8f	61 	a 
	add a,c			;bd90	81 	. 
	ld h,b			;bd91	60 	` 
	ld (bc),a			;bd92	02 	. 
	ld h,c			;bd93	61 	a 
	ld c,060h		;bd94	0e 60 	. ` 
	add a,c			;bd96	81 	. 
	ld h,c			;bd97	61 	a 
	rrca			;bd98	0f 	. 
	ld h,b			;bd99	60 	` 
	add a,c			;bd9a	81 	. 
	ld h,c			;bd9b	61 	a 
	ld c,060h		;bd9c	0e 60 	. ` 
	ld (bc),a			;bd9e	02 	. 
	ld h,c			;bd9f	61 	a 
	rrca			;bda0	0f 	. 
	ld h,b			;bda1	60 	` 
	add a,c			;bda2	81 	. 
	ld h,c			;bda3	61 	a 
	rrca			;bda4	0f 	. 
	ld h,b			;bda5	60 	` 
	inc bc			;bda6	03 	. 
	ld h,c			;bda7	61 	a 
	adc a,l			;bda8	8d 	. 
	rlca			;bda9	07 	. 
	ld h,c			;bdaa	61 	a 
	ld h,c			;bdab	61 	a 
	dec b			;bdac	05 	. 
	ld h,c			;bdad	61 	a 
	ld h,c			;bdae	61 	a 
	add hl,bc			;bdaf	09 	. 
	ld h,c			;bdb0	61 	a 
	ld h,c			;bdb1	61 	a 
	inc b			;bdb2	04 	. 
	ld h,c			;bdb3	61 	a 
	ld h,c			;bdb4	61 	a 
	ld b,011h		;bdb5	06 11 	. . 
	ld h,c			;bdb7	61 	a 
	nop			;bdb8	00 	. 
	pop af			;bdb9	f1 	. 
	cp l			;bdba	bd 	. 
	defb 0edh;next byte illegal after ed		;bdbb	ed 	. 
	cp l			;bdbc	bd 	. 
	jp (hl)			;bdbd	e9 	. 
	cp l			;bdbe	bd 	. 
	push hl			;bdbf	e5 	. 
	cp l			;bdc0	bd 	. 
	pop hl			;bdc1	e1 	. 
	cp l			;bdc2	bd 	. 
	defb 0ddh,0bdh	;cp ixl		;bdc3	dd bd 	. . 
	exx			;bdc5	d9 	. 
	cp l			;bdc6	bd 	. 
	push de			;bdc7	d5 	. 
	cp l			;bdc8	bd 	. 
	pop de			;bdc9	d1 	. 
lbdcah:
	cp l			;bdca	bd 	. 
	call 0f4bdh		;bdcb	cd bd f4 	. . . 
	call z,sub_bdf5h		;bdce	cc f5 bd 	. . . 
	ret m			;bdd1	f8 	. 
	call z,0bdfdh		;bdd2	cc fd bd 	. . . 
	ret po			;bdd5	e0 	. 
	call z,sub_be05h		;bdd6	cc 05 be 	. . . 
	ret p			;bdd9	f0 	. 
	call z,0be0dh		;bdda	cc 0d be 	. . . 
	call pe,015cch		;bddd	ec cc 15 	. . . 
	cp (hl)			;bde0	be 	. 
	ret c			;bde1	d8 	. 
	call z,sub_be1dh		;bde2	cc 1d be 	. . . 
	call po,025cch		;bde5	e4 cc 25 	. . % 
	cp (hl)			;bde8	be 	. 
	call c,02dcch		;bde9	dc cc 2d 	. . - 
	cp (hl)			;bdec	be 	. 
	ret pe			;bded	e8 	. 
	call z,0be35h		;bdee	cc 35 be 	. 5 . 
	call nc,03dcch		;bdf1	d4 cc 3d 	. . = 
	cp (hl)			;bdf4	be 	. 
sub_bdf5h:
	pop de			;bdf5	d1 	. 
	jr z,lbdcah		;bdf6	28 d2 	( . 
	jr z,$-43		;bdf8	28 d3 	( . 
	jr z,$-42		;bdfa	28 d4 	( . 
	jr z,$-41		;bdfc	28 d5 	( . 
	ld c,b			;bdfe	48 	H 
	sub 048h		;bdff	d6 48 	. H 
	rst 10h			;be01	d7 	. 
	ld c,b			;be02	48 	H 
	ret c			;be03	d8 	. 
	ld c,b			;be04	48 	H 
sub_be05h:
	exx			;be05	d9 	. 
	ld l,b			;be06	68 	h 
	jp c,0db68h		;be07	da 68 db 	. h . 
	ld l,b			;be0a	68 	h 
	call c,0cc68h		;be0b	dc 68 cc 	. h . 
	adc a,b			;be0e	88 	. 
	nop			;be0f	00 	. 
	adc a,b			;be10	88 	. 
	call 00088h		;be11	cd 88 00 	. . . 
	adc a,b			;be14	88 	. 
	adc a,0a8h		;be15	ce a8 	. . 
	adc a,0aah		;be17	ce aa 	. . 
	rst 8			;be19	cf 	. 
	xor b			;be1a	a8 	. 
	ret nc			;be1b	d0 	. 
	xor b			;be1c	a8 	. 
sub_be1dh:
	call pe,0ed08h		;be1d	ec 08 ed 	. . . 
	ex af,af'			;be20	08 	. 
	xor 008h		;be21	ee 08 	. . 
	rst 28h			;be23	ef 	. 
	ex af,af'			;be24	08 	. 
	ret p			;be25	f0 	. 
	ex af,af'			;be26	08 	. 
	pop af			;be27	f1 	. 
	ex af,af'			;be28	08 	. 
	jp p,0f308h		;be29	f2 08 f3 	. . . 
	ex af,af'			;be2c	08 	. 
	defb 0ddh,0e8h,0deh	;illegal sequence		;be2d	dd e8 de 	. . . 
	ret pe			;be30	e8 	. 
	rst 18h			;be31	df 	. 
	ret pe			;be32	e8 	. 
	rst 18h			;be33	df 	. 
	jp pe,0c8f4h		;be34	ea f4 c8 	. . . 
	push af			;be37	f5 	. 
	ret z			;be38	c8 	. 
	or 0c8h		;be39	f6 c8 	. . 
	rst 30h			;be3b	f7 	. 
	ret z			;be3c	c8 	. 
	ret m			;be3d	f8 	. 
	ex af,af'			;be3e	08 	. 
	ld sp,hl			;be3f	f9 	. 
	ret pe			;be40	e8 	. 
	jp m,0fb08h		;be41	fa 08 fb 	. . . 
	ret pe			;be44	e8 	. 
	sub h			;be45	94 	. 
	jp z,lbef9h		;be46	ca f9 be 	. . . 
	sbc a,h			;be49	9c 	. 
	jp z,lbed5h		;be4a	ca d5 be 	. . . 
	and h			;be4d	a4 	. 
	jp z,lbe9fh		;be4e	ca 9f be 	. . . 
	sub h			;be51	94 	. 
	jp z,lbf1dh		;be52	ca 1d bf 	. . . 
	sbc a,h			;be55	9c 	. 
	jp z,lbeb1h		;be56	ca b1 be 	. . . 
	and h			;be59	a4 	. 
	jp z,lbf0bh		;be5a	ca 0b bf 	. . . 
	sub h			;be5d	94 	. 
	jp z,lbef9h		;be5e	ca f9 be 	. . . 
	sbc a,h			;be61	9c 	. 
	jp z,lbeb1h		;be62	ca b1 be 	. . . 
	and h			;be65	a4 	. 
	jp z,lbe8dh		;be66	ca 8d be 	. . . 
	sub h			;be69	94 	. 
	jp z,lbf1dh		;be6a	ca 1d bf 	. . . 
	sbc a,h			;be6d	9c 	. 
	jp z,lbec3h		;be6e	ca c3 be 	. . . 
	and h			;be71	a4 	. 
	jp z,lbe9fh		;be72	ca 9f be 	. . . 
	sub h			;be75	94 	. 
	jp z,lbeb1h		;be76	ca b1 be 	. . . 
	sbc a,h			;be79	9c 	. 
	jp z,lbec3h		;be7a	ca c3 be 	. . . 
	and h			;be7d	a4 	. 
	jp z,lbf0bh		;be7e	ca 0b bf 	. . . 
	sub h			;be81	94 	. 
	jp z,lbef9h		;be82	ca f9 be 	. . . 
	sbc a,h			;be85	9c 	. 
	jp z,lbed5h		;be86	ca d5 be 	. . . 
	and h			;be89	a4 	. 
	jp z,lbe8dh		;be8a	ca 8d be 	. . . 
lbe8dh:
	pop bc			;be8d	c1 	. 
	nop			;be8e	00 	. 
	jp nz,0c000h		;be8f	c2 00 c0 	. . . 
	nop			;be92	00 	. 
	nop			;be93	00 	. 
	nop			;be94	00 	. 
	sub b			;be95	90 	. 
	ld c,b			;be96	48 	H 
	nop			;be97	00 	. 
	nop			;be98	00 	. 
	nop			;be99	00 	. 
	nop			;be9a	00 	. 
	sub c			;be9b	91 	. 
	ld c,b			;be9c	48 	H 
	nop			;be9d	00 	. 
	nop			;be9e	00 	. 
lbe9fh:
	pop bc			;be9f	c1 	. 
	nop			;bea0	00 	. 
	ret nz			;bea1	c0 	. 
	nop			;bea2	00 	. 
	ret nz			;bea3	c0 	. 
	nop			;bea4	00 	. 
	nop			;bea5	00 	. 
	nop			;bea6	00 	. 
	sub d			;bea7	92 	. 
	ld c,b			;bea8	48 	H 
	sub d			;bea9	92 	. 
	ld c,d			;beaa	4a 	J 
	nop			;beab	00 	. 
	nop			;beac	00 	. 
	sub e			;bead	93 	. 
	ld c,b			;beae	48 	H 
	sub h			;beaf	94 	. 
	ld c,b			;beb0	48 	H 
lbeb1h:
	pop bc			;beb1	c1 	. 
	nop			;beb2	00 	. 
	ret nz			;beb3	c0 	. 
	nop			;beb4	00 	. 
	ret nz			;beb5	c0 	. 
	nop			;beb6	00 	. 
	nop			;beb7	00 	. 
	nop			;beb8	00 	. 
	sub l			;beb9	95 	. 
	ld c,b			;beba	48 	H 
	sub (hl)			;bebb	96 	. 
	ld c,b			;bebc	48 	H 
	nop			;bebd	00 	. 
	nop			;bebe	00 	. 
	sub a			;bebf	97 	. 
	ld c,b			;bec0	48 	H 
	sbc a,b			;bec1	98 	. 
	ld c,b			;bec2	48 	H 
lbec3h:
	pop bc			;bec3	c1 	. 
	nop			;bec4	00 	. 
	jp nz,0c000h		;bec5	c2 00 c0 	. . . 
	nop			;bec8	00 	. 
	nop			;bec9	00 	. 
	nop			;beca	00 	. 
	sbc a,c			;becb	99 	. 
	ld c,b			;becc	48 	H 
	sbc a,d			;becd	9a 	. 
	ld c,b			;bece	48 	H 
	nop			;becf	00 	. 
	nop			;bed0	00 	. 
	sbc a,e			;bed1	9b 	. 
	ld c,b			;bed2	48 	H 
	sbc a,h			;bed3	9c 	. 
	ld c,b			;bed4	48 	H 
lbed5h:
	pop bc			;bed5	c1 	. 
	nop			;bed6	00 	. 
	ret nz			;bed7	c0 	. 
	nop			;bed8	00 	. 
	ret nz			;bed9	c0 	. 
	nop			;beda	00 	. 
	nop			;bedb	00 	. 
	nop			;bedc	00 	. 
	and c			;bedd	a1 	. 
	ld c,b			;bede	48 	H 
	and d			;bedf	a2 	. 
	ld c,b			;bee0	48 	H 
	nop			;bee1	00 	. 
	nop			;bee2	00 	. 
	and e			;bee3	a3 	. 
	ld c,b			;bee4	48 	H 
	and e			;bee5	a3 	. 
	ld c,d			;bee6	4a 	J 
	pop bc			;bee7	c1 	. 
	nop			;bee8	00 	. 
	ret nz			;bee9	c0 	. 
	nop			;beea	00 	. 
	ret nz			;beeb	c0 	. 
	nop			;beec	00 	. 
	nop			;beed	00 	. 
	nop			;beee	00 	. 
	sbc a,l			;beef	9d 	. 
	ld c,b			;bef0	48 	H 
	sbc a,(hl)			;bef1	9e 	. 
	ld c,b			;bef2	48 	H 
	nop			;bef3	00 	. 
	nop			;bef4	00 	. 
	sbc a,a			;bef5	9f 	. 
	ld c,b			;bef6	48 	H 
	and b			;bef7	a0 	. 
	ld c,b			;bef8	48 	H 
lbef9h:
	jp nz,0c000h		;bef9	c2 00 c0 	. . . 
	nop			;befc	00 	. 
	ret nz			;befd	c0 	. 
	nop			;befe	00 	. 
	nop			;beff	00 	. 
	nop			;bf00	00 	. 
	and h			;bf01	a4 	. 
	ld c,b			;bf02	48 	H 
	and l			;bf03	a5 	. 
	ld c,b			;bf04	48 	H 
	nop			;bf05	00 	. 
	nop			;bf06	00 	. 
	and (hl)			;bf07	a6 	. 
	ld c,b			;bf08	48 	H 
	and a			;bf09	a7 	. 
	ld c,b			;bf0a	48 	H 
lbf0bh:
	push bc			;bf0b	c5 	. 
	nop			;bf0c	00 	. 
	ret nz			;bf0d	c0 	. 
	nop			;bf0e	00 	. 
	ret nz			;bf0f	c0 	. 
	nop			;bf10	00 	. 
	nop			;bf11	00 	. 
	nop			;bf12	00 	. 
	xor b			;bf13	a8 	. 
	ld c,b			;bf14	48 	H 
	xor c			;bf15	a9 	. 
	ld c,b			;bf16	48 	H 
	nop			;bf17	00 	. 
	nop			;bf18	00 	. 
	xor d			;bf19	aa 	. 
	ld c,b			;bf1a	48 	H 
	xor e			;bf1b	ab 	. 
	ld c,b			;bf1c	48 	H 
lbf1dh:
	jp nz,0c000h		;bf1d	c2 00 c0 	. . . 
	nop			;bf20	00 	. 
	ret nz			;bf21	c0 	. 
	nop			;bf22	00 	. 
	nop			;bf23	00 	. 
	nop			;bf24	00 	. 
	xor h			;bf25	ac 	. 
	ld c,b			;bf26	48 	H 
	xor l			;bf27	ad 	. 
	ld c,b			;bf28	48 	H 
	nop			;bf29	00 	. 
	nop			;bf2a	00 	. 
	xor (hl)			;bf2b	ae 	. 
	ld c,b			;bf2c	48 	H 
	xor a			;bf2d	af 	. 
	ld c,b			;bf2e	48 	H 
	ld d,c			;bf2f	51 	Q 
	cp a			;bf30	bf 	. 
	ld d,c			;bf31	51 	Q 
	cp a			;bf32	bf 	. 
	ld h,b			;bf33	60 	` 
	cp a			;bf34	bf 	. 
	ld h,b			;bf35	60 	` 
	cp a			;bf36	bf 	. 
	ld h,b			;bf37	60 	` 
	cp a			;bf38	bf 	. 
	ld h,b			;bf39	60 	` 
	cp a			;bf3a	bf 	. 
	ld l,a			;bf3b	6f 	o 
	cp a			;bf3c	bf 	. 
	ld l,a			;bf3d	6f 	o 
	cp a			;bf3e	bf 	. 
	ld a,(hl)			;bf3f	7e 	~ 
	cp a			;bf40	bf 	. 
	ld a,(hl)			;bf41	7e 	~ 
	cp a			;bf42	bf 	. 
	adc a,l			;bf43	8d 	. 
	cp a			;bf44	bf 	. 
	adc a,l			;bf45	8d 	. 
	cp a			;bf46	bf 	. 
	adc a,l			;bf47	8d 	. 
	cp a			;bf48	bf 	. 
	adc a,l			;bf49	8d 	. 
	cp a			;bf4a	bf 	. 
	sbc a,h			;bf4b	9c 	. 
	cp a			;bf4c	bf 	. 
	sbc a,h			;bf4d	9c 	. 
	cp a			;bf4e	bf 	. 
	sbc a,h			;bf4f	9c 	. 
	cp a			;bf50	bf 	. 
	rlca			;bf51	07 	. 
	ret nc			;bf52	d0 	. 
	rst 10h			;bf53	d7 	. 
	sub h			;bf54	94 	. 
	jp z,0d506h		;bf55	ca 06 d5 	. . . 
	rst 10h			;bf58	d7 	. 
	sbc a,h			;bf59	9c 	. 
	jp z,0da02h		;bf5a	ca 02 da 	. . . 
	rst 10h			;bf5d	d7 	. 
	and h			;bf5e	a4 	. 
	jp z,0d009h		;bf5f	ca 09 d0 	. . . 
	rst 10h			;bf62	d7 	. 
	sub h			;bf63	94 	. 
	jp z,0d503h		;bf64	ca 03 d5 	. . . 
	rst 10h			;bf67	d7 	. 
	sbc a,h			;bf68	9c 	. 
	jp z,0da08h		;bf69	ca 08 da 	. . . 
	rst 10h			;bf6c	d7 	. 
	and h			;bf6d	a4 	. 
	jp z,0d007h		;bf6e	ca 07 d0 	. . . 
	rst 10h			;bf71	d7 	. 
	sub h			;bf72	94 	. 
	jp z,0d503h		;bf73	ca 03 d5 	. . . 
	rst 10h			;bf76	d7 	. 
	sbc a,h			;bf77	9c 	. 
	jp z,0da01h		;bf78	ca 01 da 	. . . 
	rst 10h			;bf7b	d7 	. 
	and h			;bf7c	a4 	. 
	jp z,0d009h		;bf7d	ca 09 d0 	. . . 
	rst 10h			;bf80	d7 	. 
	sub h			;bf81	94 	. 
	jp z,0d504h		;bf82	ca 04 d5 	. . . 
	rst 10h			;bf85	d7 	. 
	sbc a,h			;bf86	9c 	. 
	jp z,0da02h		;bf87	ca 02 da 	. . . 
	rst 10h			;bf8a	d7 	. 
	and h			;bf8b	a4 	. 
	jp z,0d003h		;bf8c	ca 03 d0 	. . . 
	rst 10h			;bf8f	d7 	. 
	sub h			;bf90	94 	. 
	jp z,0d504h		;bf91	ca 04 d5 	. . . 
	rst 10h			;bf94	d7 	. 
	sbc a,h			;bf95	9c 	. 
	jp z,0da08h		;bf96	ca 08 da 	. . . 
	rst 10h			;bf99	d7 	. 
	and h			;bf9a	a4 	. 
	jp z,0d007h		;bf9b	ca 07 d0 	. . . 
lbf9eh:
	rst 10h			;bf9e	d7 	. 
	sub h			;bf9f	94 	. 
	jp z,0d506h		;bfa0	ca 06 d5 	. . . 
	rst 10h			;bfa3	d7 	. 
	sbc a,h			;bfa4	9c 	. 
	jp z,0da01h		;bfa5	ca 01 da 	. . . 
	rst 10h			;bfa8	d7 	. 
	and h			;bfa9	a4 	. 
	jp z,lbb00h		;bfaa	ca 00 bb 	. . . 
	cp e			;bfad	bb 	. 
	cp l			;bfae	bd 	. 
	sbc a,(hl)			;bfaf	9e 	. 
	rra			;bfb0	1f 	. 
	rrca			;bfb1	0f 	. 
	inc bc			;bfb2	03 	. 
	nop			;bfb3	00 	. 
	inc bc			;bfb4	03 	. 
	defb 0fdh,081h,001h	;illegal sequence		;bfb5	fd 81 01 	. . . 
	inc bc			;bfb8	03 	. 
	call m,0008dh		;bfb9	fc 8d 00 	. . . 
	rst 18h			;bfbc	df 	. 
	rst 18h			;bfbd	df 	. 
	rst 28h			;bfbe	ef 	. 
	ret p			;bfbf	f0 	. 
	rst 38h			;bfc0	ff 	. 
	rst 38h			;bfc1	ff 	. 
	ccf			;bfc2	3f 	? 
	nop			;bfc3	00 	. 
	cp 0feh		;bfc4	fe fe 	. . 
	defb 0fdh,003h,003h	;illegal sequence		;bfc6	fd 03 03 	. . . 
	rst 38h			;bfc9	ff 	. 
	add a,d			;bfca	82 	. 
	nop			;bfcb	00 	. 
	rst 20h			;bfcc	e7 	. 
	inc bc			;bfcd	03 	. 
	rst 28h			;bfce	ef 	. 
	inc bc			;bfcf	03 	. 
	cp 08dh		;bfd0	fe 8d 	. . 
	nop			;bfd2	00 	. 
	cp a			;bfd3	bf 	. 
	ld a,a			;bfd4	7f 	 
	ld a,a			;bfd5	7f 	 
	ld a,b			;bfd6	78 	x 
	ei			;bfd7	fb 	. 
	di			;bfd8	f3 	. 
	di			;bfd9	f3 	. 
	nop			;bfda	00 	. 
	ei			;bfdb	fb 	. 
	defb 0fdh,0fdh,001h	;illegal sequence		;bfdc	fd fd 01 	. . . 
	inc bc			;bfdf	03 	. 
	rst 38h			;bfe0	ff 	. 
	add a,d			;bfe1	82 	. 
	nop			;bfe2	00 	. 
	ret nz			;bfe3	c0 	. 
	inc bc			;bfe4	03 	. 
	ret po			;bfe5	e0 	. 
	inc bc			;bfe6	03 	. 
	ret p			;bfe7	f0 	. 
	add a,c			;bfe8	81 	. 
	nop			;bfe9	00 	. 
	nop			;bfea	00 	. 
	ld a,a			;bfeb	7f 	 
	nop			;bfec	00 	. 
	ld a,a			;bfed	7f 	 
	nop			;bfee	00 	. 
	ld h,d			;bfef	62 	b 
	nop			;bff0	00 	. 
	nop			;bff1	00 	. 
	ld a,a			;bff2	7f 	 
	nop			;bff3	00 	. 
	ld a,a			;bff4	7f 	 
	nop			;bff5	00 	. 
	ld h,d			;bff6	62 	b 
	nop			;bff7	00 	. 
	nop			;bff8	00 	. 
	rst 38h			;bff9	ff 	. 
	rst 38h			;bffa	ff 	. 
	rst 38h			;bffb	ff 	. 
	rst 38h			;bffc	ff 	. 
	rst 38h			;bffd	ff 	. 
	rst 38h			;bffe	ff 	. 
	rst 38h			;bfff	ff 	. 
