; ============================================================
; Banco 3 do ROM (offset no ficheiro: 0xC000 - 0xFFFF)
; Endereco de origem assumido no mapa do Z80: 8000h (assumido: banco paginavel para o slot 2 via porta FFFFh)
; Gerado com z80dasm 1.1.6 (-a enderecos, -t bytes originais, -l labels)
; NOTA: saltos/chamadas absolutos (JP/CALL) so sao validos quando
; este banco estiver de facto paginado no slot indicado acima.
; Zonas de dados (graficos, tabelas, musica) podem surgir desmontadas
; incorrectamente como instrucoes -- ver aviso Self-modifying-code
; nos ficheiros onde a heuristica do z80dasm o assinalou.
; ============================================================

; z80dasm 1.1.6
; command line: z80dasm -a -t -l -g 0x8000 -s /home/claude/out/bank3.sym -o /home/claude/out/bank3.asm bank3.bin

	org	08000h

	add a,b			;8000	80 	. 
	nop			;8001	00 	. 
	ld a,a			;8002	7f 	 
l8003h:
	nop			;8003	00 	. 
	ld b,b			;8004	40 	@ 
	nop			;8005	00 	. 
	cp a			;8006	bf 	. 
	nop			;8007	00 	. 
l8008h:
	ccf			;8008	3f 	? 
	nop			;8009	00 	. 
	ret nz			;800a	c0 	. 
	nop			;800b	00 	. 
	jr nz,l800eh		;800c	20 00 	  . 
l800eh:
	rst 18h			;800e	df 	. 
	nop			;800f	00 	. 
	jr nz,$+9		;8010	20 07 	  . 
	rst 18h			;8012	df 	. 
	nop			;8013	00 	. 
	jr nz,l8023h		;8014	20 0d 	  . 
	rst 18h			;8016	df 	. 
	nop			;8017	00 	. 
	jr nz,l8023h		;8018	20 09 	  . 
	rst 18h			;801a	df 	. 
	nop			;801b	00 	. 
	jr nz,$+11		;801c	20 09 	  . 
	rst 18h			;801e	df 	. 
	nop			;801f	00 	. 
	ld bc,0fe00h		;8020	01 00 fe 	. . . 
l8023h:
	nop			;8023	00 	. 
	inc bc			;8024	03 	. 
	nop			;8025	00 	. 
	defb 0fdh,000h,0ffh	;illegal sequence		;8026	fd 00 ff 	. . . 
	nop			;8029	00 	. 
	inc bc			;802a	03 	. 
	nop			;802b	00 	. 
	rlca			;802c	07 	. 
	nop			;802d	00 	. 
	ei			;802e	fb 	. 
	nop			;802f	00 	. 
	rlca			;8030	07 	. 
	ret nz			;8031	c0 	. 
	ei			;8032	fb 	. 
	nop			;8033	00 	. 
	rlca			;8034	07 	. 
	ld h,b			;8035	60 	` 
l8036h:
	ei			;8036	fb 	. 
	nop			;8037	00 	. 
	rlca			;8038	07 	. 
	jr nz,l8036h		;8039	20 fb 	  . 
	nop			;803b	00 	. 
	rlca			;803c	07 	. 
	jr nz,$-3		;803d	20 fb 	  . 
	nop			;803f	00 	. 
l8040h:
	jr nz,l8050h		;8040	20 0e 	  . 
	rst 18h			;8042	df 	. 
	nop			;8043	00 	. 
	jr nz,$+9		;8044	20 07 	  . 
	rst 18h			;8046	df 	. 
	nop			;8047	00 	. 
	jr nz,l804eh		;8048	20 04 	  . 
	rst 18h			;804a	df 	. 
	nop			;804b	00 	. 
	jr nz,$+5		;804c	20 03 	  . 
l804eh:
	rst 18h			;804e	df 	. 
	nop			;804f	00 	. 
l8050h:
	jr nz,l8052h		;8050	20 00 	  . 
l8052h:
	rst 18h			;8052	df 	. 
	nop			;8053	00 	. 
	ccf			;8054	3f 	? 
	nop			;8055	00 	. 
	ret nz			;8056	c0 	. 
	nop			;8057	00 	. 
	ld a,a			;8058	7f 	 
	nop			;8059	00 	. 
	cp a			;805a	bf 	. 
	nop			;805b	00 	. 
	rst 38h			;805c	ff 	. 
	nop			;805d	00 	. 
	ld a,a			;805e	7f 	 
	nop			;805f	00 	. 
	rlca			;8060	07 	. 
	ret po			;8061	e0 	. 
	ei			;8062	fb 	. 
	nop			;8063	00 	. 
	rlca			;8064	07 	. 
	ret nz			;8065	c0 	. 
	ei			;8066	fb 	. 
	nop			;8067	00 	. 
	rlca			;8068	07 	. 
	ld b,b			;8069	40 	@ 
	ei			;806a	fb 	. 
	nop			;806b	00 	. 
	rlca			;806c	07 	. 
	add a,b			;806d	80 	. 
	ei			;806e	fb 	. 
	nop			;806f	00 	. 
	rlca			;8070	07 	. 
	nop			;8071	00 	. 
	ei			;8072	fb 	. 
	nop			;8073	00 	. 
	rst 38h			;8074	ff 	. 
	nop			;8075	00 	. 
	inc bc			;8076	03 	. 
	nop			;8077	00 	. 
	rst 38h			;8078	ff 	. 
	nop			;8079	00 	. 
	defb 0fdh,000h,0ffh	;illegal sequence		;807a	fd 00 ff 	. . . 
	nop			;807d	00 	. 
	cp 000h		;807e	fe 00 	. . 
l8080h:
	add a,b			;8080	80 	. 
	nop			;8081	00 	. 
	ld a,a			;8082	7f 	 
	nop			;8083	00 	. 
	ld b,b			;8084	40 	@ 
	nop			;8085	00 	. 
	cp a			;8086	bf 	. 
	nop			;8087	00 	. 
	inc a			;8088	3c 	< 
	inc bc			;8089	03 	. 
	jp 02000h		;808a	c3 00 20 	. .   
	rlca			;808d	07 	. 
	call c,02000h		;808e	dc 00 20 	. .   
	rrca			;8091	0f 	. 
	ret c			;8092	d8 	. 
	nop			;8093	00 	. 
	jr nz,l80a5h		;8094	20 0f 	  . 
	exx			;8096	d9 	. 
	nop			;8097	00 	. 
	jr nz,$+9		;8098	20 07 	  . 
	rst 18h			;809a	df 	. 
	nop			;809b	00 	. 
	jr nz,$+5		;809c	20 03 	  . 
	sbc a,000h		;809e	de 00 	. . 
	ld bc,0fe00h		;80a0	01 00 fe 	. . . 
	nop			;80a3	00 	. 
	inc bc			;80a4	03 	. 
l80a5h:
	nop			;80a5	00 	. 
	defb 0fdh,000h,03fh	;illegal sequence		;80a6	fd 00 3f 	. . ? 
	ret nz			;80a9	c0 	. 
	jp 00700h		;80aa	c3 00 07 	. . . 
	ret po			;80ad	e0 	. 
	dec sp			;80ae	3b 	; 
	nop			;80af	00 	. 
	rlca			;80b0	07 	. 
	ret p			;80b1	f0 	. 
	dec de			;80b2	1b 	. 
	nop			;80b3	00 	. 
	rlca			;80b4	07 	. 
	ret p			;80b5	f0 	. 
	sbc a,e			;80b6	9b 	. 
	nop			;80b7	00 	. 
	rlca			;80b8	07 	. 
	ret po			;80b9	e0 	. 
	dec sp			;80ba	3b 	; 
	nop			;80bb	00 	. 
	rlca			;80bc	07 	. 
	ret nz			;80bd	c0 	. 
	ld a,e			;80be	7b 	{ 
	nop			;80bf	00 	. 
sub_80c0h:
	jr nz,$+5		;80c0	20 03 	  . 
	sbc a,000h		;80c2	de 00 	. . 
	jr nz,l80c7h		;80c4	20 01 	  . 
	rst 18h			;80c6	df 	. 
l80c7h:
	nop			;80c7	00 	. 
	jr nz,$+5		;80c8	20 03 	  . 
	sbc a,000h		;80ca	de 00 	. . 
	jr nz,$+5		;80cc	20 03 	  . 
	sbc a,000h		;80ce	de 00 	. . 
	jr nz,l80d3h		;80d0	20 01 	  . 
	rst 18h			;80d2	df 	. 
l80d3h:
	nop			;80d3	00 	. 
	ccf			;80d4	3f 	? 
	nop			;80d5	00 	. 
	ret nz			;80d6	c0 	. 
	nop			;80d7	00 	. 
	ld a,a			;80d8	7f 	 
	nop			;80d9	00 	. 
	cp a			;80da	bf 	. 
	nop			;80db	00 	. 
	rst 38h			;80dc	ff 	. 
	nop			;80dd	00 	. 
	ld a,a			;80de	7f 	 
	nop			;80df	00 	. 
	rlca			;80e0	07 	. 
	ret nz			;80e1	c0 	. 
	ld a,e			;80e2	7b 	{ 
	nop			;80e3	00 	. 
	rlca			;80e4	07 	. 
	add a,b			;80e5	80 	. 
	ei			;80e6	fb 	. 
	nop			;80e7	00 	. 
	rlca			;80e8	07 	. 
	ret nz			;80e9	c0 	. 
	ld a,e			;80ea	7b 	{ 
	nop			;80eb	00 	. 
	rlca			;80ec	07 	. 
	ret nz			;80ed	c0 	. 
	ld a,e			;80ee	7b 	{ 
	nop			;80ef	00 	. 
	rlca			;80f0	07 	. 
	add a,b			;80f1	80 	. 
	ei			;80f2	fb 	. 
	nop			;80f3	00 	. 
	rst 38h			;80f4	ff 	. 
	nop			;80f5	00 	. 
	inc bc			;80f6	03 	. 
	nop			;80f7	00 	. 
	rst 38h			;80f8	ff 	. 
	nop			;80f9	00 	. 
	defb 0fdh,000h,0ffh	;illegal sequence		;80fa	fd 00 ff 	. . . 
	nop			;80fd	00 	. 
	cp 000h		;80fe	fe 00 	. . 
	add a,b			;8100	80 	. 
l8101h:
	nop			;8101	00 	. 
	ld a,a			;8102	7f 	 
	nop			;8103	00 	. 
	ld b,b			;8104	40 	@ 
l8105h:
	nop			;8105	00 	. 
	cp a			;8106	bf 	. 
	nop			;8107	00 	. 
	ccf			;8108	3f 	? 
	nop			;8109	00 	. 
	ret nz			;810a	c0 	. 
	nop			;810b	00 	. 
	jr nz,l810fh		;810c	20 01 	  . 
	rst 18h			;810e	df 	. 
l810fh:
	nop			;810f	00 	. 
	jr nz,l8114h		;8110	20 02 	  . 
	rst 18h			;8112	df 	. 
	nop			;8113	00 	. 
l8114h:
	jr nz,l8124h		;8114	20 0e 	  . 
	rst 18h			;8116	df 	. 
	nop			;8117	00 	. 
	jr nz,l812ah		;8118	20 10 	  . 
	rst 18h			;811a	df 	. 
	nop			;811b	00 	. 
	inc h			;811c	24 	$ 
	ex af,af'			;811d	08 	. 
	rst 18h			;811e	df 	. 
	nop			;811f	00 	. 
	ld bc,0fe00h		;8120	01 00 fe 	. . . 
	nop			;8123	00 	. 
l8124h:
	inc bc			;8124	03 	. 
	nop			;8125	00 	. 
	defb 0fdh,000h,0ffh	;illegal sequence		;8126	fd 00 ff 	. . . 
	nop			;8129	00 	. 
l812ah:
	inc bc			;812a	03 	. 
	nop			;812b	00 	. 
	rlca			;812c	07 	. 
	nop			;812d	00 	. 
	ei			;812e	fb 	. 
	nop			;812f	00 	. 
	rlca			;8130	07 	. 
	add a,b			;8131	80 	. 
	ei			;8132	fb 	. 
	nop			;8133	00 	. 
	rlca			;8134	07 	. 
	ret po			;8135	e0 	. 
l8136h:
	ei			;8136	fb 	. 
	nop			;8137	00 	. 
	rlca			;8138	07 	. 
	djnz l8136h		;8139	10 fb 	. . 
	nop			;813b	00 	. 
	ld b,a			;813c	47 	G 
	jr nz,$-3		;813d	20 fb 	  . 
	nop			;813f	00 	. 
	jr nz,l8146h		;8140	20 04 	  . 
l8142h:
	rst 18h			;8142	df 	. 
	nop			;8143	00 	. 
	inc h			;8144	24 	$ 
	add hl,bc			;8145	09 	. 
l8146h:
	rst 18h			;8146	df 	. 
	nop			;8147	00 	. 
	jr nz,l8154h		;8148	20 0a 	  . 
	rst 18h			;814a	df 	. 
	nop			;814b	00 	. 
	jr nz,l8152h		;814c	20 04 	  . 
	rst 18h			;814e	df 	. 
	nop			;814f	00 	. 
	jr nz,l8152h		;8150	20 00 	  . 
l8152h:
	rst 18h			;8152	df 	. 
	nop			;8153	00 	. 
l8154h:
	ccf			;8154	3f 	? 
	nop			;8155	00 	. 
	ret nz			;8156	c0 	. 
	nop			;8157	00 	. 
	ld a,a			;8158	7f 	 
	nop			;8159	00 	. 
	cp a			;815a	bf 	. 
	nop			;815b	00 	. 
	rst 38h			;815c	ff 	. 
	nop			;815d	00 	. 
	ld a,a			;815e	7f 	 
	nop			;815f	00 	. 
	rlca			;8160	07 	. 
	ld b,b			;8161	40 	@ 
l8162h:
	ei			;8162	fb 	. 
	nop			;8163	00 	. 
	ld b,a			;8164	47 	G 
	jr nz,l8162h		;8165	20 fb 	  . 
	nop			;8167	00 	. 
	rlca			;8168	07 	. 
	and b			;8169	a0 	. 
	ei			;816a	fb 	. 
	nop			;816b	00 	. 
	rlca			;816c	07 	. 
	ld b,b			;816d	40 	@ 
	ei			;816e	fb 	. 
	nop			;816f	00 	. 
	rlca			;8170	07 	. 
	nop			;8171	00 	. 
	ei			;8172	fb 	. 
	nop			;8173	00 	. 
	rst 38h			;8174	ff 	. 
	nop			;8175	00 	. 
	inc bc			;8176	03 	. 
	nop			;8177	00 	. 
	rst 38h			;8178	ff 	. 
	nop			;8179	00 	. 
	defb 0fdh,000h,0ffh	;illegal sequence		;817a	fd 00 ff 	. . . 
	nop			;817d	00 	. 
	cp 000h		;817e	fe 00 	. . 
	rst 38h			;8180	ff 	. 
	ld a,a			;8181	7f 	 
	nop			;8182	00 	. 
	nop			;8183	00 	. 
	rst 38h			;8184	ff 	. 
	cp a			;8185	bf 	. 
	nop			;8186	00 	. 
	nop			;8187	00 	. 
	rst 38h			;8188	ff 	. 
	ret nz			;8189	c0 	. 
	nop			;818a	00 	. 
	nop			;818b	00 	. 
	cp 0dfh		;818c	fe df 	. . 
	ld bc,0fc00h		;818e	01 00 fc 	. . . 
	sbc a,003h		;8191	de 03 	. . 
	nop			;8193	00 	. 
	ret p			;8194	f0 	. 
	sbc a,00fh		;8195	de 0f 	. . 
	nop			;8197	00 	. 
	ret po			;8198	e0 	. 
	ret nc			;8199	d0 	. 
	rra			;819a	1f 	. 
	nop			;819b	00 	. 
	call p,00fd8h		;819c	f4 d8 0f 	. . . 
	nop			;819f	00 	. 
	rst 38h			;81a0	ff 	. 
	cp 000h		;81a1	fe 00 	. . 
	nop			;81a3	00 	. 
	cp 0fdh		;81a4	fe fd 	. . 
	nop			;81a6	00 	. 
	nop			;81a7	00 	. 
	call m,00003h		;81a8	fc 03 00 	. . . 
	nop			;81ab	00 	. 
	ld a,h			;81ac	7c 	| 
	ei			;81ad	fb 	. 
	nop			;81ae	00 	. 
	nop			;81af	00 	. 
	ld a,h			;81b0	7c 	| 
	ei			;81b1	fb 	. 
	add a,b			;81b2	80 	. 
	nop			;81b3	00 	. 
	inc e			;81b4	1c 	. 
	ei			;81b5	fb 	. 
	ret po			;81b6	e0 	. 
	nop			;81b7	00 	. 
	inc c			;81b8	0c 	. 
	dec de			;81b9	1b 	. 
	ret p			;81ba	f0 	. 
	nop			;81bb	00 	. 
	ld e,h			;81bc	5c 	\ 
	dec sp			;81bd	3b 	; 
	ret po			;81be	e0 	. 
	nop			;81bf	00 	. 
	ret m			;81c0	f8 	. 
	call c,00007h		;81c1	dc 07 00 	. . . 
	call p,00fd9h		;81c4	f4 d9 0f 	. . . 
	nop			;81c7	00 	. 
	pop af			;81c8	f1 	. 
	in a,(00eh)		;81c9	db 0e 	. . 
	nop			;81cb	00 	. 
	di			;81cc	f3 	. 
	rst 18h			;81cd	df 	. 
	inc b			;81ce	04 	. 
	nop			;81cf	00 	. 
	rst 38h			;81d0	ff 	. 
	rst 18h			;81d1	df 	. 
	nop			;81d2	00 	. 
	nop			;81d3	00 	. 
	rst 38h			;81d4	ff 	. 
	ret nz			;81d5	c0 	. 
	nop			;81d6	00 	. 
	nop			;81d7	00 	. 
	ret nz			;81d8	c0 	. 
	cp a			;81d9	bf 	. 
	nop			;81da	00 	. 
	nop			;81db	00 	. 
	add a,b			;81dc	80 	. 
	ld a,a			;81dd	7f 	 
	nop			;81de	00 	. 
	nop			;81df	00 	. 
	inc a			;81e0	3c 	< 
	ld a,e			;81e1	7b 	{ 
	ret nz			;81e2	c0 	. 
	nop			;81e3	00 	. 
	ld e,h			;81e4	5c 	\ 
	dec sp			;81e5	3b 	; 
	ret po			;81e6	e0 	. 
l81e7h:
	nop			;81e7	00 	. 
	inc e			;81e8	1c 	. 
	cp e			;81e9	bb 	. 
	ret po			;81ea	e0 	. 
	nop			;81eb	00 	. 
	cp h			;81ec	bc 	. 
	ei			;81ed	fb 	. 
	ld b,b			;81ee	40 	@ 
	nop			;81ef	00 	. 
	call m,000fbh		;81f0	fc fb 00 	. . . 
	nop			;81f3	00 	. 
	call m,00003h		;81f4	fc 03 00 	. . . 
	nop			;81f7	00 	. 
	ld (bc),a			;81f8	02 	. 
	defb 0fdh,000h,000h	;illegal sequence		;81f9	fd 00 00 	. . . 
	ld bc,000feh		;81fc	01 fe 00 	. . . 
	nop			;81ff	00 	. 
	rst 38h			;8200	ff 	. 
	ld a,a			;8201	7f 	 
	nop			;8202	00 	. 
	nop			;8203	00 	. 
	rst 38h			;8204	ff 	. 
	cp a			;8205	bf 	. 
	nop			;8206	00 	. 
	nop			;8207	00 	. 
	rst 38h			;8208	ff 	. 
	ret nz			;8209	c0 	. 
	nop			;820a	00 	. 
	nop			;820b	00 	. 
	rst 38h			;820c	ff 	. 
	rst 18h			;820d	df 	. 
	nop			;820e	00 	. 
	nop			;820f	00 	. 
	pop af			;8210	f1 	. 
	rst 18h			;8211	df 	. 
	ld c,000h		;8212	0e 00 	. . 
	jp pe,01fd1h		;8214	ea d1 1f 	. . . 
	nop			;8217	00 	. 
	jp z,03fe4h		;8218	ca e4 3f 	. . ? 
	nop			;821b	00 	. 
	ret po			;821c	e0 	. 
	rst 18h			;821d	df 	. 
	rra			;821e	1f 	. 
	nop			;821f	00 	. 
	rst 38h			;8220	ff 	. 
	cp 000h		;8221	fe 00 	. . 
	nop			;8223	00 	. 
	cp 0fdh		;8224	fe fd 	. . 
	nop			;8226	00 	. 
	nop			;8227	00 	. 
	call m,00003h		;8228	fc 03 00 	. . . 
	nop			;822b	00 	. 
	call m,000fbh		;822c	fc fb 00 	. . . 
	nop			;822f	00 	. 
	inc e			;8230	1c 	. 
	ei			;8231	fb 	. 
	ret po			;8232	e0 	. 
	nop			;8233	00 	. 
	xor h			;8234	ac 	. 
	dec de			;8235	1b 	. 
	ret p			;8236	f0 	. 
	nop			;8237	00 	. 
	and h			;8238	a4 	. 
	ld c,e			;8239	4b 	K 
	ret m			;823a	f8 	. 
	nop			;823b	00 	. 
	inc c			;823c	0c 	. 
	ei			;823d	fb 	. 
	ret p			;823e	f0 	. 
	nop			;823f	00 	. 
	ex de,hl			;8240	eb 	. 
	pop de			;8241	d1 	. 
	ld e,000h		;8242	1e 00 	. . 
	jp z,03fe4h		;8244	ca e4 3f 	. . ? 
	nop			;8247	00 	. 
	call po,01bdfh		;8248	e4 df 1b 	. . . 
	nop			;824b	00 	. 
	rst 38h			;824c	ff 	. 
	rst 18h			;824d	df 	. 
	nop			;824e	00 	. 
	nop			;824f	00 	. 
	rst 38h			;8250	ff 	. 
	rst 18h			;8251	df 	. 
	nop			;8252	00 	. 
	nop			;8253	00 	. 
	rst 38h			;8254	ff 	. 
l8255h:
	ret nz			;8255	c0 	. 
	nop			;8256	00 	. 
	nop			;8257	00 	. 
	ret nz			;8258	c0 	. 
	cp a			;8259	bf 	. 
	nop			;825a	00 	. 
	nop			;825b	00 	. 
	add a,b			;825c	80 	. 
	ld a,a			;825d	7f 	 
	nop			;825e	00 	. 
	nop			;825f	00 	. 
	xor h			;8260	ac 	. 
	dec de			;8261	1b 	. 
	ret p			;8262	f0 	. 
	nop			;8263	00 	. 
	and h			;8264	a4 	. 
	ld c,e			;8265	4b 	K 
	ret m			;8266	f8 	. 
	nop			;8267	00 	. 
	ld c,h			;8268	4c 	L 
	ei			;8269	fb 	. 
	or b			;826a	b0 	. 
	nop			;826b	00 	. 
	call m,000fbh		;826c	fc fb 00 	. . . 
	nop			;826f	00 	. 
	call m,000fbh		;8270	fc fb 00 	. . . 
	nop			;8273	00 	. 
	call m,00003h		;8274	fc 03 00 	. . . 
	nop			;8277	00 	. 
	ld (bc),a			;8278	02 	. 
	defb 0fdh,000h,000h	;illegal sequence		;8279	fd 00 00 	. . . 
	ld bc,000feh		;827c	01 fe 00 	. . . 
	nop			;827f	00 	. 
	rst 38h			;8280	ff 	. 
	ld a,a			;8281	7f 	 
	nop			;8282	00 	. 
	nop			;8283	00 	. 
	rst 38h			;8284	ff 	. 
	cp a			;8285	bf 	. 
	nop			;8286	00 	. 
	nop			;8287	00 	. 
	rst 38h			;8288	ff 	. 
	ret nz			;8289	c0 	. 
	nop			;828a	00 	. 
	nop			;828b	00 	. 
	rst 38h			;828c	ff 	. 
	rst 18h			;828d	df 	. 
	nop			;828e	00 	. 
	nop			;828f	00 	. 
	ret m			;8290	f8 	. 
	rst 18h			;8291	df 	. 
	rlca			;8292	07 	. 
	nop			;8293	00 	. 
	rst 30h			;8294	f7 	. 
	ret c			;8295	d8 	. 
	rrca			;8296	0f 	. 
	nop			;8297	00 	. 
	jp pe,01fd0h		;8298	ea d0 1f 	. . . 
	nop			;829b	00 	. 
	pop bc			;829c	c1 	. 
	call po,0003fh		;829d	e4 3f 00 	. ? . 
	rst 38h			;82a0	ff 	. 
	cp 000h		;82a1	fe 00 	. . 
	nop			;82a3	00 	. 
	cp 0fdh		;82a4	fe fd 	. . 
	nop			;82a6	00 	. 
	nop			;82a7	00 	. 
	call m,00003h		;82a8	fc 03 00 	. . . 
	nop			;82ab	00 	. 
	call m,000fbh		;82ac	fc fb 00 	. . . 
	nop			;82af	00 	. 
	ld l,h			;82b0	6c 	l 
	ei			;82b1	fb 	. 
	sub b			;82b2	90 	. 
	nop			;82b3	00 	. 
	inc d			;82b4	14 	. 
	ex de,hl			;82b5	eb 	. 
	ret m			;82b6	f8 	. 
	nop			;82b7	00 	. 
	and h			;82b8	a4 	. 
	ld c,e			;82b9	4b 	K 
	ret m			;82ba	f8 	. 
	nop			;82bb	00 	. 
	ld b,h			;82bc	44 	D 
	dec bc			;82bd	0b 	. 
	ret m			;82be	f8 	. 
	nop			;82bf	00 	. 
	pop bc			;82c0	c1 	. 
	ret po			;82c1	e0 	. 
	ccf			;82c2	3f 	? 
	nop			;82c3	00 	. 
	jp nc,03fe0h		;82c4	d2 e0 3f 	. . ? 
	nop			;82c7	00 	. 
	rst 28h			;82c8	ef 	. 
	ret nc			;82c9	d0 	. 
	rra			;82ca	1f 	. 
	nop			;82cb	00 	. 
	ret p			;82cc	f0 	. 
	rst 18h			;82cd	df 	. 
	rrca			;82ce	0f 	. 
	nop			;82cf	00 	. 
	rst 38h			;82d0	ff 	. 
	rst 18h			;82d1	df 	. 
	nop			;82d2	00 	. 
	nop			;82d3	00 	. 
	rst 38h			;82d4	ff 	. 
	ret nz			;82d5	c0 	. 
	nop			;82d6	00 	. 
	nop			;82d7	00 	. 
	ret nz			;82d8	c0 	. 
	cp a			;82d9	bf 	. 
	nop			;82da	00 	. 
	nop			;82db	00 	. 
	add a,b			;82dc	80 	. 
	ld a,a			;82dd	7f 	 
	nop			;82de	00 	. 
	nop			;82df	00 	. 
	ld b,h			;82e0	44 	D 
	dec bc			;82e1	0b 	. 
	ret m			;82e2	f8 	. 
	nop			;82e3	00 	. 
	and h			;82e4	a4 	. 
	ld c,e			;82e5	4b 	K 
	ret m			;82e6	f8 	. 
	nop			;82e7	00 	. 
	inc d			;82e8	14 	. 
	ex de,hl			;82e9	eb 	. 
	ret m			;82ea	f8 	. 
	nop			;82eb	00 	. 
	ld l,h			;82ec	6c 	l 
	ei			;82ed	fb 	. 
	sub b			;82ee	90 	. 
	nop			;82ef	00 	. 
	call m,000fbh		;82f0	fc fb 00 	. . . 
	nop			;82f3	00 	. 
	call m,00003h		;82f4	fc 03 00 	. . . 
	nop			;82f7	00 	. 
	ld (bc),a			;82f8	02 	. 
	defb 0fdh,000h,000h	;illegal sequence		;82f9	fd 00 00 	. . . 
	ld bc,000feh		;82fc	01 fe 00 	. . . 
	nop			;82ff	00 	. 
	rst 38h			;8300	ff 	. 
	ld a,a			;8301	7f 	 
l8302h:
	nop			;8302	00 	. 
	nop			;8303	00 	. 
	rst 38h			;8304	ff 	. 
l8305h:
	cp a			;8305	bf 	. 
	nop			;8306	00 	. 
	nop			;8307	00 	. 
	rst 38h			;8308	ff 	. 
	ret nz			;8309	c0 	. 
	nop			;830a	00 	. 
	nop			;830b	00 	. 
	call m,003dfh		;830c	fc df 03 	. . . 
	nop			;830f	00 	. 
	ret m			;8310	f8 	. 
	call c,00007h		;8311	dc 07 00 	. . . 
	call m,003deh		;8314	fc de 03 	. . . 
	nop			;8317	00 	. 
	jp m,001dfh		;8318	fa df 01 	. . . 
	nop			;831b	00 	. 
	cp 0dfh		;831c	fe df 	. . 
	ld bc,0ff00h		;831e	01 00 ff 	. . . 
	cp 000h		;8321	fe 00 	. . 
	nop			;8323	00 	. 
	cp 0fdh		;8324	fe fd 	. . 
	nop			;8326	00 	. 
	nop			;8327	00 	. 
	call m,00003h		;8328	fc 03 00 	. . . 
	nop			;832b	00 	. 
	ld a,h			;832c	7c 	| 
	ei			;832d	fb 	. 
	add a,b			;832e	80 	. 
	nop			;832f	00 	. 
	cp h			;8330	bc 	. 
	ld a,e			;8331	7b 	{ 
	ret nz			;8332	c0 	. 
	nop			;8333	00 	. 
	ld e,h			;8334	5c 	\ 
	dec sp			;8335	3b 	; 
	ret po			;8336	e0 	. 
	nop			;8337	00 	. 
	inc l			;8338	2c 	, 
	dec de			;8339	1b 	. 
	ret p			;833a	f0 	. 
	nop			;833b	00 	. 
	inc l			;833c	2c 	, 
	dec de			;833d	1b 	. 
	ret p			;833e	f0 	. 
	nop			;833f	00 	. 
	cp 0dfh		;8340	fe df 	. . 
	ld bc,0f800h		;8342	01 00 f8 	. . . 
	sbc a,007h		;8345	de 07 	. . 
	nop			;8347	00 	. 
	ret p			;8348	f0 	. 
	ret c			;8349	d8 	. 
	rrca			;834a	0f 	. 
	nop			;834b	00 	. 
	ret m			;834c	f8 	. 
	rst 18h			;834d	df 	. 
	rlca			;834e	07 	. 
	nop			;834f	00 	. 
	rst 38h			;8350	ff 	. 
	rst 18h			;8351	df 	. 
	nop			;8352	00 	. 
	nop			;8353	00 	. 
	rst 38h			;8354	ff 	. 
	ret nz			;8355	c0 	. 
	nop			;8356	00 	. 
	nop			;8357	00 	. 
	ret nz			;8358	c0 	. 
	cp a			;8359	bf 	. 
	nop			;835a	00 	. 
	nop			;835b	00 	. 
	add a,b			;835c	80 	. 
	ld a,a			;835d	7f 	 
	nop			;835e	00 	. 
	nop			;835f	00 	. 
	inc l			;8360	2c 	, 
	dec de			;8361	1b 	. 
	ret p			;8362	f0 	. 
	nop			;8363	00 	. 
	ld e,h			;8364	5c 	\ 
	dec sp			;8365	3b 	; 
	ret po			;8366	e0 	. 
	nop			;8367	00 	. 
	cp h			;8368	bc 	. 
	ld a,e			;8369	7b 	{ 
	ret nz			;836a	c0 	. 
	nop			;836b	00 	. 
	ld a,h			;836c	7c 	| 
	ei			;836d	fb 	. 
	add a,b			;836e	80 	. 
	nop			;836f	00 	. 
	call m,000fbh		;8370	fc fb 00 	. . . 
	nop			;8373	00 	. 
	call m,00003h		;8374	fc 03 00 	. . . 
	nop			;8377	00 	. 
	ld (bc),a			;8378	02 	. 
	defb 0fdh,000h,000h	;illegal sequence		;8379	fd 00 00 	. . . 
	ld bc,000feh		;837c	01 fe 00 	. . . 
	nop			;837f	00 	. 
	rst 38h			;8380	ff 	. 
	ld a,a			;8381	7f 	 
	nop			;8382	00 	. 
	nop			;8383	00 	. 
	rst 38h			;8384	ff 	. 
l8385h:
	cp a			;8385	bf 	. 
	nop			;8386	00 	. 
	nop			;8387	00 	. 
	rst 38h			;8388	ff 	. 
	ret nz			;8389	c0 	. 
	nop			;838a	00 	. 
	nop			;838b	00 	. 
	ret m			;838c	f8 	. 
	rst 18h			;838d	df 	. 
	rlca			;838e	07 	. 
	nop			;838f	00 	. 
	ret p			;8390	f0 	. 
	ret c			;8391	d8 	. 
	rrca			;8392	0f 	. 
	nop			;8393	00 	. 
	ret po			;8394	e0 	. 
	jp nc,0001fh		;8395	d2 1f 00 	. . . 
	ret po			;8398	e0 	. 
	sub 01fh		;8399	d6 1f 	. . 
	nop			;839b	00 	. 
	ret po			;839c	e0 	. 
	sub 01fh		;839d	d6 1f 	. . 
	nop			;839f	00 	. 
	rst 38h			;83a0	ff 	. 
	cp 000h		;83a1	fe 00 	. . 
	nop			;83a3	00 	. 
	cp 0fdh		;83a4	fe fd 	. . 
	nop			;83a6	00 	. 
	nop			;83a7	00 	. 
	call m,00003h		;83a8	fc 03 00 	. . . 
	nop			;83ab	00 	. 
	inc a			;83ac	3c 	< 
	ei			;83ad	fb 	. 
	ret nz			;83ae	c0 	. 
	nop			;83af	00 	. 
	inc e			;83b0	1c 	. 
	dec sp			;83b1	3b 	; 
	ret po			;83b2	e0 	. 
	nop			;83b3	00 	. 
	inc c			;83b4	0c 	. 
	sbc a,e			;83b5	9b 	. 
	ret p			;83b6	f0 	. 
	nop			;83b7	00 	. 
	inc c			;83b8	0c 	. 
	in a,(0f0h)		;83b9	db f0 	. . 
	nop			;83bb	00 	. 
	inc c			;83bc	0c 	. 
	in a,(0f0h)		;83bd	db f0 	. . 
	nop			;83bf	00 	. 
	ret po			;83c0	e0 	. 
	pop de			;83c1	d1 	. 
	rra			;83c2	1f 	. 
	nop			;83c3	00 	. 
	ret p			;83c4	f0 	. 
	ret c			;83c5	d8 	. 
	rrca			;83c6	0f 	. 
	nop			;83c7	00 	. 
	ret p			;83c8	f0 	. 
	in a,(00fh)		;83c9	db 0f 	. . 
	nop			;83cb	00 	. 
	ret m			;83cc	f8 	. 
	call c,00007h		;83cd	dc 07 00 	. . . 
	call m,003dfh		;83d0	fc df 03 	. . . 
	nop			;83d3	00 	. 
	rst 38h			;83d4	ff 	. 
	ret nz			;83d5	c0 	. 
	nop			;83d6	00 	. 
	nop			;83d7	00 	. 
	ret nz			;83d8	c0 	. 
	cp a			;83d9	bf 	. 
	nop			;83da	00 	. 
	nop			;83db	00 	. 
	add a,b			;83dc	80 	. 
	ld a,a			;83dd	7f 	 
	nop			;83de	00 	. 
	nop			;83df	00 	. 
	inc c			;83e0	0c 	. 
	dec de			;83e1	1b 	. 
	ret p			;83e2	f0 	. 
	nop			;83e3	00 	. 
	inc e			;83e4	1c 	. 
	dec sp			;83e5	3b 	; 
	ret po			;83e6	e0 	. 
	nop			;83e7	00 	. 
	inc e			;83e8	1c 	. 
	cp e			;83e9	bb 	. 
	ret po			;83ea	e0 	. 
	nop			;83eb	00 	. 
	inc a			;83ec	3c 	< 
	ld a,e			;83ed	7b 	{ 
	ret nz			;83ee	c0 	. 
	nop			;83ef	00 	. 
	ld a,h			;83f0	7c 	| 
	ei			;83f1	fb 	. 
	add a,b			;83f2	80 	. 
	nop			;83f3	00 	. 
	call m,00003h		;83f4	fc 03 00 	. . . 
	nop			;83f7	00 	. 
	ld (bc),a			;83f8	02 	. 
	defb 0fdh,000h,000h	;illegal sequence		;83f9	fd 00 00 	. . . 
	ld bc,000feh		;83fc	01 fe 00 	. . . 
	nop			;83ff	00 	. 
	rst 38h			;8400	ff 	. 
	ld a,a			;8401	7f 	 
	nop			;8402	00 	. 
	nop			;8403	00 	. 
	rst 38h			;8404	ff 	. 
	cp a			;8405	bf 	. 
	nop			;8406	00 	. 
	nop			;8407	00 	. 
	rst 38h			;8408	ff 	. 
	ret nz			;8409	c0 	. 
	nop			;840a	00 	. 
	nop			;840b	00 	. 
	defb 0fdh,0dfh,002h	;illegal sequence		;840c	fd df 02 	. . . 
	nop			;840f	00 	. 
	ret m			;8410	f8 	. 
	defb 0ddh,007h,000h	;illegal sequence		;8411	dd 07 00 	. . . 
	ret p			;8414	f0 	. 
	in a,(00fh)		;8415	db 0f 	. . 
	nop			;8417	00 	. 
	jp p,00fdch		;8418	f2 dc 0f 	. . . 
	nop			;841b	00 	. 
	ret po			;841c	e0 	. 
	call nc,0001fh		;841d	d4 1f 00 	. . . 
	rst 38h			;8420	ff 	. 
	cp 000h		;8421	fe 00 	. . 
	nop			;8423	00 	. 
	cp 0fdh		;8424	fe fd 	. . 
	nop			;8426	00 	. 
	nop			;8427	00 	. 
	call m,00003h		;8428	fc 03 00 	. . . 
	nop			;842b	00 	. 
	ld a,h			;842c	7c 	| 
	ei			;842d	fb 	. 
	add a,b			;842e	80 	. 
	nop			;842f	00 	. 
	inc a			;8430	3c 	< 
	ld a,e			;8431	7b 	{ 
	ret nz			;8432	c0 	. 
	nop			;8433	00 	. 
	inc e			;8434	1c 	. 
	cp e			;8435	bb 	. 
	ret po			;8436	e0 	. 
	nop			;8437	00 	. 
	sbc a,h			;8438	9c 	. 
	ld a,e			;8439	7b 	{ 
	ret po			;843a	e0 	. 
	nop			;843b	00 	. 
	inc c			;843c	0c 	. 
	ld e,e			;843d	5b 	[ 
	ret p			;843e	f0 	. 
	nop			;843f	00 	. 
	jp p,00fdch		;8440	f2 dc 0f 	. . . 
	nop			;8443	00 	. 
	ret p			;8444	f0 	. 
	in a,(00fh)		;8445	db 0f 	. . 
	nop			;8447	00 	. 
	ret m			;8448	f8 	. 
	defb 0ddh,007h,000h	;illegal sequence		;8449	dd 07 00 	. . . 
	defb 0fdh,0dfh,002h	;illegal sequence		;844c	fd df 02 	. . . 
	nop			;844f	00 	. 
	rst 38h			;8450	ff 	. 
	rst 18h			;8451	df 	. 
	nop			;8452	00 	. 
	nop			;8453	00 	. 
	rst 38h			;8454	ff 	. 
	ret nz			;8455	c0 	. 
	nop			;8456	00 	. 
	nop			;8457	00 	. 
	ret nz			;8458	c0 	. 
	cp a			;8459	bf 	. 
	nop			;845a	00 	. 
	nop			;845b	00 	. 
	add a,b			;845c	80 	. 
	ld a,a			;845d	7f 	 
	nop			;845e	00 	. 
	nop			;845f	00 	. 
	sbc a,h			;8460	9c 	. 
	ld a,e			;8461	7b 	{ 
	ret po			;8462	e0 	. 
	nop			;8463	00 	. 
	inc e			;8464	1c 	. 
	cp e			;8465	bb 	. 
	ret po			;8466	e0 	. 
	nop			;8467	00 	. 
	inc a			;8468	3c 	< 
	ld a,e			;8469	7b 	{ 
	ret nz			;846a	c0 	. 
	nop			;846b	00 	. 
	ld a,h			;846c	7c 	| 
	ei			;846d	fb 	. 
	add a,b			;846e	80 	. 
	nop			;846f	00 	. 
	call m,000fbh		;8470	fc fb 00 	. . . 
	nop			;8473	00 	. 
	call m,00003h		;8474	fc 03 00 	. . . 
	nop			;8477	00 	. 
	ld (bc),a			;8478	02 	. 
	defb 0fdh,000h,000h	;illegal sequence		;8479	fd 00 00 	. . . 
	ld bc,000feh		;847c	01 fe 00 	. . . 
	nop			;847f	00 	. 
	adc a,08eh		;8480	ce 8e 	. . 
	ld e,b			;8482	58 	X 
	sub c			;8483	91 	. 
	rla			;8484	17 	. 
	sub e			;8485	93 	. 
	ld l,d			;8486	6a 	j 
	sub l			;8487	95 	. 
	adc a,08eh		;8488	ce 8e 	. . 
	add a,d			;848a	82 	. 
	sbc a,e			;848b	9b 	. 
	dec e			;848c	1d 	. 
	sbc a,a			;848d	9f 	. 
	ld c,h			;848e	4c 	L 
	and d			;848f	a2 	. 
	adc a,08eh		;8490	ce 8e 	. . 
	ld e,b			;8492	58 	X 
	sub c			;8493	91 	. 
l8494h:
	dec b			;8494	05 	. 
	xor d			;8495	aa 	. 
	add a,d			;8496	82 	. 
	sbc a,e			;8497	9b 	. 
	ld e,b			;8498	58 	X 
	sub c			;8499	91 	. 
	sbc a,e			;849a	9b 	. 
	or h			;849b	b4 	. 
	ld e,b			;849c	58 	X 
	sub c			;849d	91 	. 
	inc sp			;849e	33 	3 
	xor (hl)			;849f	ae 	. 
	rla			;84a0	17 	. 
	or c			;84a1	b1 	. 
	adc a,a			;84a2	8f 	. 
	nop			;84a3	00 	. 
	dec c			;84a4	0d 	. 
	rlca			;84a5	07 	. 
	inc bc			;84a6	03 	. 
	ld bc,01f07h		;84a7	01 07 1f 	. . . 
	dec a			;84aa	3d 	= 
	jr c,l852ah		;84ab	38 7d 	8 } 
	ld a,b			;84ad	78 	x 
	ld a,l			;84ae	7d 	} 
	ld a,l			;84af	7d 	} 
	ld a,00fh		;84b0	3e 0f 	> . 
	dec b			;84b2	05 	. 
	nop			;84b3	00 	. 
	add a,a			;84b4	87 	. 
	ld e,03fh		;84b5	1e 3f 	. ? 
	ccf			;84b7	3f 	? 
	ld a,a			;84b8	7f 	 
	nop			;84b9	00 	. 
	inc a			;84ba	3c 	< 
	ld a,a			;84bb	7f 	 
	dec b			;84bc	05 	. 
	rst 38h			;84bd	ff 	. 
	inc bc			;84be	03 	. 
	ld a,a			;84bf	7f 	 
	add a,e			;84c0	83 	. 
	dec sp			;84c1	3b 	; 
	inc bc			;84c2	03 	. 
	ld bc,00002h		;84c3	01 02 00 	. . . 
	inc b			;84c6	04 	. 
	rst 38h			;84c7	ff 	. 
	ld (bc),a			;84c8	02 	. 
	cp 086h		;84c9	fe 86 	. . 
	call m,00000h		;84cb	fc 00 00 	. . . 
	rrca			;84ce	0f 	. 
	sbc a,a			;84cf	9f 	. 
	rst 18h			;84d0	df 	. 
	inc b			;84d1	04 	. 
	rst 38h			;84d2	ff 	. 
	adc a,b			;84d3	88 	. 
	nop			;84d4	00 	. 
	add a,b			;84d5	80 	. 
	ret nz			;84d6	c0 	. 
	ret c			;84d7	d8 	. 
	ret m			;84d8	f8 	. 
	call m,0fefch		;84d9	fc fc fe 	. . . 
	dec b			;84dc	05 	. 
	rst 38h			;84dd	ff 	. 
	add a,c			;84de	81 	. 
	inc a			;84df	3c 	< 
	ld (bc),a			;84e0	02 	. 
	nop			;84e1	00 	. 
l84e2h:
	inc bc			;84e2	03 	. 
	cp 002h		;84e3	fe 02 	. . 
	ld a,h			;84e5	7c 	| 
	add a,c			;84e6	81 	. 
	jr nc,l84ebh		;84e7	30 02 	0 . 
	nop			;84e9	00 	. 
	nop			;84ea	00 	. 
l84ebh:
	sub b			;84eb	90 	. 
	dec c			;84ec	0d 	. 
	ld (de),a			;84ed	12 	. 
	ex af,af'			;84ee	08 	. 
	inc b			;84ef	04 	. 
	ld b,018h		;84f0	06 18 	. . 
	jr nz,l8536h		;84f2	20 42 	  B 
	ld b,a			;84f4	47 	G 
	add a,d			;84f5	82 	. 
	add a,a			;84f6	87 	. 
	add a,d			;84f7	82 	. 
	add a,d			;84f8	82 	. 
	ld b,c			;84f9	41 	A 
	jr nc,l850bh		;84fa	30 0f 	0 . 
	ld b,b			;84fc	40 	@ 
	nop			;84fd	00 	. 
	nop			;84fe	00 	. 
	sbc a,e			;84ff	9b 	. 
	dec c			;8500	0d 	. 
	ld (de),a			;8501	12 	. 
	ex af,af'			;8502	08 	. 
	inc b			;8503	04 	. 
	rlca			;8504	07 	. 
	jr l8527h		;8505	18 20 	.   
	ld b,d			;8507	42 	B 
	ld b,a			;8508	47 	G 
	add a,d			;8509	82 	. 
	add a,a			;850a	87 	. 
l850bh:
	add a,d			;850b	82 	. 
	add a,d			;850c	82 	. 
	ld b,c			;850d	41 	A 
	jr nc,l851fh		;850e	30 0f 	0 . 
	nop			;8510	00 	. 
	nop			;8511	00 	. 
	ld bc,0211fh		;8512	01 1f 21 	. . ! 
	ld b,b			;8515	40 	@ 
	ret nz			;8516	c0 	. 
	add a,b			;8517	80 	. 
	ld a,(hl)			;8518	7e 	~ 
	jp 00580h		;8519	c3 80 05 	. . . 
	nop			;851c	00 	. 
	inc bc			;851d	03 	. 
	add a,b			;851e	80 	. 
l851fh:
	add a,h			;851f	84 	. 
	call nz,00e7ch		;8520	c4 7c 0e 	. | . 
	rlca			;8523	07 	. 
	dec b			;8524	05 	. 
	nop			;8525	00 	. 
	ld (bc),a			;8526	02 	. 
l8527h:
	ld bc,00386h		;8527	01 86 03 	. . . 
l852ah:
	cp 00fh		;852a	fe 0f 	. . 
	ret nc			;852c	d0 	. 
	ld h,b			;852d	60 	` 
	jr nz,l8534h		;852e	20 04 	  . 
	nop			;8530	00 	. 
	adc a,b			;8531	88 	. 
	add a,b			;8532	80 	. 
	ld h,b			;8533	60 	` 
l8534h:
	jr c,l855ah		;8534	38 24 	8 $ 
l8536h:
	ld b,002h		;8536	06 02 	. . 
	inc bc			;8538	03 	. 
	ld bc,00005h		;8539	01 05 00 	. . . 
	add a,e			;853c	83 	. 
	jp 0387eh		;853d	c3 7e 38 	. ~ 8 
	inc bc			;8540	03 	. 
	ld bc,l8385h		;8541	01 85 83 	. . . 
	add a,d			;8544	82 	. 
	adc a,07ch		;8545	ce 7c 	. | 
	jr nc,l8549h		;8547	30 00 	0 . 
l8549h:
	ld (de),a			;8549	12 	. 
	nop			;854a	00 	. 
	adc a,c			;854b	89 	. 
	ld bc,0211fh		;854c	01 1f 21 	. . ! 
	ld b,b			;854f	40 	@ 
	ret nz			;8550	c0 	. 
	add a,b			;8551	80 	. 
	ld a,(hl)			;8552	7e 	~ 
	jp 00580h		;8553	c3 80 05 	. . . 
	nop			;8556	00 	. 
	inc bc			;8557	03 	. 
	add a,b			;8558	80 	. 
	add a,h			;8559	84 	. 
l855ah:
	call nz,00e7ch		;855a	c4 7c 0e 	. | . 
	rlca			;855d	07 	. 
	dec b			;855e	05 	. 
	nop			;855f	00 	. 
	ld (bc),a			;8560	02 	. 
	ld bc,00386h		;8561	01 86 03 	. . . 
	cp 00fh		;8564	fe 0f 	. . 
	ret nc			;8566	d0 	. 
	ld h,b			;8567	60 	` 
	jr nz,l856eh		;8568	20 04 	  . 
	nop			;856a	00 	. 
	adc a,b			;856b	88 	. 
	add a,b			;856c	80 	. 
	ld h,b			;856d	60 	` 
l856eh:
	jr c,$+38		;856e	38 24 	8 $ 
	ld b,002h		;8570	06 02 	. . 
	inc bc			;8572	03 	. 
	ld bc,00005h		;8573	01 05 00 	. . . 
	add a,e			;8576	83 	. 
	jp 0387eh		;8577	c3 7e 38 	. ~ 8 
	inc bc			;857a	03 	. 
	ld bc,l8385h		;857b	01 85 83 	. . . 
	add a,d			;857e	82 	. 
	adc a,07ch		;857f	ce 7c 	. | 
	jr nc,l8583h		;8581	30 00 	0 . 
l8583h:
	inc bc			;8583	03 	. 
	nop			;8584	00 	. 
	add a,h			;8585	84 	. 
	jr nz,l8588h		;8586	20 00 	  . 
l8588h:
	nop			;8588	00 	. 
	ld bc,00004h		;8589	01 04 00 	. . . 
	add a,e			;858c	83 	. 
	jr nz,l858fh		;858d	20 00 	  . 
l858fh:
	ld (bc),a			;858f	02 	. 
	dec b			;8590	05 	. 
	nop			;8591	00 	. 
	add a,c			;8592	81 	. 
	jr nz,l859bh		;8593	20 06 	  . 
	nop			;8595	00 	. 
	add a,l			;8596	85 	. 
	ld b,b			;8597	40 	@ 
	nop			;8598	00 	. 
	inc b			;8599	04 	. 
	nop			;859a	00 	. 
l859bh:
	add a,b			;859b	80 	. 
	inc bc			;859c	03 	. 
l859dh:
	nop			;859d	00 	. 
	sbc a,h			;859e	9c 	. 
	rlca			;859f	07 	. 
	inc l			;85a0	2c 	, 
	dec hl			;85a1	2b 	+ 
	ld (hl),07fh		;85a2	36 7f 	6  
	ld l,e			;85a4	6b 	k 
	nop			;85a5	00 	. 
	nop			;85a6	00 	. 
	ret p			;85a7	f0 	. 
	djnz l85e6h		;85a8	10 3c 	. < 
	call nz,01438h		;85aa	c4 38 14 	. 8 . 
	ld l,a			;85ad	6f 	o 
	cpl			;85ae	2f 	/ 
	ld hl,(01528h)		;85af	2a 28 15 	* ( . 
	inc bc			;85b2	03 	. 
	nop			;85b3	00 	. 
	nop			;85b4	00 	. 
	cp b			;85b5	b8 	. 
	ld e,b			;85b6	58 	X 
	ret c			;85b7	d8 	. 
	ld l,h			;85b8	6c 	l 
	inc l			;85b9	2c 	, 
	or b			;85ba	b0 	. 
	inc bc			;85bb	03 	. 
	nop			;85bc	00 	. 
	sbc a,(hl)			;85bd	9e 	. 
	ld bc,00c06h		;85be	01 06 0c 	. . . 
	ld e,073h		;85c1	1e 73 	. s 
	inc de			;85c3	13 	. 
	ld d,000h		;85c4	16 00 	. . 
	inc d			;85c6	14 	. 
	ld d,02ch		;85c7	16 2c 	. , 
	ld e,b			;85c9	58 	X 
	sbc a,d			;85ca	9a 	. 
	ld (00c62h),a		;85cb	32 62 0c 	2 b . 
	ld (hl),c			;85ce	71 	q 
	rlca			;85cf	07 	. 
	ld e,07ch		;85d0	1e 7c 	. | 
	ld h,b			;85d2	60 	` 
	rlca			;85d3	07 	. 
	nop			;85d4	00 	. 
	and 0c4h		;85d5	e6 c4 	. . 
	adc a,h			;85d7	8c 	. 
	ld a,(bc)			;85d8	0a 	. 
	ld (de),a			;85d9	12 	. 
	call po,00588h		;85da	e4 88 05 	. . . 
	nop			;85dd	00 	. 
	sbc a,e			;85de	9b 	. 
	ld (bc),a			;85df	02 	. 
	dec c			;85e0	0d 	. 
	ld b,007h		;85e1	06 07 	. . 
	nop			;85e3	00 	. 
	nop			;85e4	00 	. 
	ld h,b			;85e5	60 	` 
l85e6h:
	djnz l85f0h		;85e6	10 08 	. . 
	ld b,080h		;85e8	06 80 	. . 
	ld b,b			;85ea	40 	@ 
	daa			;85eb	27 	' 
	add hl,sp			;85ec	39 	9 
	jr $+94		;85ed	18 5c 	. \ 
	ld c,a			;85ef	4f 	O 
l85f0h:
	inc hl			;85f0	23 	# 
	djnz l85f3h		;85f1	10 00 	. . 
l85f3h:
	or b			;85f3	b0 	. 
	adc a,0f8h		;85f4	ce f8 	. . 
	sbc a,(hl)			;85f6	9e 	. 
	ld c,080h		;85f7	0e 80 	. . 
	ret po			;85f9	e0 	. 
	inc bc			;85fa	03 	. 
	nop			;85fb	00 	. 
	add a,e			;85fc	83 	. 
	inc d			;85fd	14 	. 
	nop			;85fe	00 	. 
	inc b			;85ff	04 	. 
	inc bc			;8600	03 	. 
	nop			;8601	00 	. 
	add a,(hl)			;8602	86 	. 
	jr nz,l859dh		;8603	20 98 	  . 
	ld (00008h),hl		;8605	22 08 00 	" . . 
	jr nz,l860fh		;8608	20 05 	  . 
	nop			;860a	00 	. 
	sbc a,d			;860b	9a 	. 
	jr z,l860eh		;860c	28 00 	( . 
l860eh:
	nop			;860e	00 	. 
l860fh:
	ld bc,04400h		;860f	01 00 44 	. . D 
	ld c,b			;8612	48 	H 
	jr z,$-71		;8613	28 b7 	( . 
	ld a,b			;8615	78 	x 
	jr l862eh		;8616	18 16 	. . 
	ld de,01212h		;8618	11 12 12 	. . . 
	sub h			;861b	94 	. 
	ld d,h			;861c	54 	T 
	dec (hl)			;861d	35 	5 
	ld a,(de)			;861e	1a 	. 
	ld a,h			;861f	7c 	| 
	adc a,b			;8620	88 	. 
	jr nz,l8645h		;8621	20 22 	  " 
	jr nz,l8645h		;8623	20 20 	    
	and b			;8625	a0 	. 
	inc bc			;8626	03 	. 
	jr nz,$-101		;8627	20 99 	  . 
	ex af,af'			;8629	08 	. 
	jr z,$+6		;862a	28 04 	( . 
	ld b,003h		;862c	06 03 	. . 
l862eh:
	ld bc,00000h		;862e	01 00 00 	. . . 
	ld d,h			;8631	54 	T 
	ld b,h			;8632	44 	D 
	ld e,b			;8633	58 	X 
	ld l,a			;8634	6f 	o 
	ld h,h			;8635	64 	d 
	call nz,042c2h		;8636	c4 c2 42 	. . B 
	inc h			;8639	24 	$ 
	inc d			;863a	14 	. 
	adc a,h			;863b	8c 	. 
	ld a,(hl)			;863c	7e 	~ 
	ld a,(bc)			;863d	0a 	. 
	ld de,00020h		;863e	11 20 00 	.   . 
	add a,c			;8641	81 	. 
	inc bc			;8642	03 	. 
	add a,b			;8643	80 	. 
	add a,d			;8644	82 	. 
l8645h:
	adc a,b			;8645	88 	. 
	adc a,c			;8646	89 	. 
	ld (bc),a			;8647	02 	. 
	adc a,d			;8648	8a 	. 
	ex af,af'			;8649	08 	. 
	ld bc,01488h		;864a	01 88 14 	. . . 
	jr $+54		;864d	18 34 	. 4 
	ld c,d			;864f	4a 	J 
	ld b,l			;8650	45 	E 
	add a,d			;8651	82 	. 
	ld (bc),a			;8652	02 	. 
	nop			;8653	00 	. 
	ex af,af'			;8654	08 	. 
	ld (bc),a			;8655	02 	. 
	inc bc			;8656	03 	. 
	nop			;8657	00 	. 
	add a,h			;8658	84 	. 
	jr nz,l865bh		;8659	20 00 	  . 
l865bh:
	nop			;865b	00 	. 
	ld bc,00030h		;865c	01 30 00 	. 0 . 
	add a,c			;865f	81 	. 
	inc b			;8660	04 	. 
	ld b,000h		;8661	06 00 	. . 
	ld (bc),a			;8663	02 	. 
	inc d			;8664	14 	. 
	add a,c			;8665	81 	. 
	inc bc			;8666	03 	. 
	dec b			;8667	05 	. 
	nop			;8668	00 	. 
	adc a,d			;8669	8a 	. 
	ex af,af'			;866a	08 	. 
	djnz $+1		;866b	10 ff 	. . 
	nop			;866d	00 	. 
	ld e,037h		;866e	1e 37 	. 7 
	ld h,e			;8670	63 	c 
	ld b,c			;8671	41 	A 
	ld h,e			;8672	63 	c 
	ccf			;8673	3f 	? 
	djnz l8676h		;8674	10 00 	. . 
l8676h:
	adc a,b			;8676	88 	. 
	ret p			;8677	f0 	. 
	ld c,001h		;8678	0e 01 	. . 
	nop			;867a	00 	. 
	adc a,h			;867b	8c 	. 
	sub d			;867c	92 	. 
	sub d			;867d	92 	. 
	inc c			;867e	0c 	. 
	dec b			;867f	05 	. 
	nop			;8680	00 	. 
	add a,h			;8681	84 	. 
	jr nc,$+46		;8682	30 2c 	0 , 
	and h			;8684	a4 	. 
	jr nz,l868ah		;8685	20 03 	  . 
	nop			;8687	00 	. 
	add a,c			;8688	81 	. 
	ld (bc),a			;8689	02 	. 
l868ah:
	rlca			;868a	07 	. 
	nop			;868b	00 	. 
	adc a,d			;868c	8a 	. 
	xor d			;868d	aa 	. 
	dec b			;868e	05 	. 
	ex af,af'			;868f	08 	. 
	djnz l8692h		;8690	10 00 	. . 
l8692h:
	ex af,af'			;8692	08 	. 
	dec b			;8693	05 	. 
	ld (bc),a			;8694	02 	. 
	ld (bc),a			;8695	02 	. 
	ld bc,00002h		;8696	01 02 00 	. . . 
	ld (bc),a			;8699	02 	. 
	add a,b			;869a	80 	. 
	sub h			;869b	94 	. 
	djnz l86beh		;869c	10 20 	.   
	ld d,b			;869e	50 	P 
	ld c,h			;869f	4c 	L 
	add a,d			;86a0	82 	. 
	nop			;86a1	00 	. 
	nop			;86a2	00 	. 
	djnz l86cdh		;86a3	10 28 	. ( 
	jr z,$-110		;86a5	28 90 	( . 
	nop			;86a7	00 	. 
	add a,b			;86a8	80 	. 
	ld b,b			;86a9	40 	@ 
	sub h			;86aa	94 	. 
	inc c			;86ab	0c 	. 
	jr nz,l86feh		;86ac	20 50 	  P 
	ld d,b			;86ae	50 	P 
	jr nz,l86b4h		;86af	20 03 	  . 
	nop			;86b1	00 	. 
	add a,(hl)			;86b2	86 	. 
	inc b			;86b3	04 	. 
l86b4h:
	add a,h			;86b4	84 	. 
	ld l,d			;86b5	6a 	j 
	sub c			;86b6	91 	. 
	ld de,0032ah		;86b7	11 2a 03 	. * . 
	nop			;86ba	00 	. 
	add a,d			;86bb	82 	. 
	ld b,b			;86bc	40 	@ 
	add a,b			;86bd	80 	. 
l86beh:
	inc b			;86be	04 	. 
	nop			;86bf	00 	. 
	nop			;86c0	00 	. 
	inc bc			;86c1	03 	. 
	nop			;86c2	00 	. 
	add a,h			;86c3	84 	. 
	jr nz,l86c6h		;86c4	20 00 	  . 
l86c6h:
	nop			;86c6	00 	. 
	ld bc,00004h		;86c7	01 04 00 	. . . 
	add a,e			;86ca	83 	. 
	jr nz,l86cdh		;86cb	20 00 	  . 
l86cdh:
	ld (bc),a			;86cd	02 	. 
	dec b			;86ce	05 	. 
	nop			;86cf	00 	. 
	add a,c			;86d0	81 	. 
	jr nz,l86d9h		;86d1	20 06 	  . 
	nop			;86d3	00 	. 
	ex de,hl			;86d4	eb 	. 
	ld b,b			;86d5	40 	@ 
	nop			;86d6	00 	. 
	inc b			;86d7	04 	. 
	nop			;86d8	00 	. 
l86d9h:
	add a,b			;86d9	80 	. 
	nop			;86da	00 	. 
	ccf			;86db	3f 	? 
	ld a,a			;86dc	7f 	 
	ret m			;86dd	f8 	. 
	ret nc			;86de	d0 	. 
	pop de			;86df	d1 	. 
	jp nz,l8b85h		;86e0	c2 85 8b 	. . . 
	call m,00ffeh		;86e3	fc fe 0f 	. . . 
	rrca			;86e6	0f 	. 
	inc bc			;86e7	03 	. 
	dec sp			;86e8	3b 	; 
	rlca			;86e9	07 	. 
	inc de			;86ea	13 	. 
	adc a,c			;86eb	89 	. 
	ret z			;86ec	c8 	. 
	jp nz,0e8c0h		;86ed	c2 c0 e8 	. . . 
	call m,01f7fh		;86f0	fc 7f 1f 	.  . 
	dec sp			;86f3	3b 	; 
	inc bc			;86f4	03 	. 
	dec de			;86f5	1b 	. 
	add a,e			;86f6	83 	. 
	jp 0fe4fh		;86f7	c3 4f fe 	. O . 
	call m,07e3fh		;86fa	fc 3f 7e 	. ? ~ 
	ld sp,hl			;86fd	f9 	. 
l86feh:
	di			;86fe	f3 	. 
	pop hl			;86ff	e1 	. 
l8700h:
	adc a,h			;8700	8c 	. 
	call pe,0fce9h		;8701	ec e9 fc 	. . . 
	jp pe,0d3e9h		;8704	ea e9 d3 	. . . 
	and a			;8707	a7 	. 
	ld h,l			;8708	65 	e 
	call 0f39dh		;8709	cd 9d f3 	. . . 
	adc a,(hl)			;870c	8e 	. 
	ret m			;870d	f8 	. 
	pop hl			;870e	e1 	. 
	add a,e			;870f	83 	. 
	sbc a,a			;8710	9f 	. 
	ld a,b			;8711	78 	x 
	ccf			;8712	3f 	? 
	add hl,de			;8713	19 	. 
	dec sp			;8714	3b 	; 
	ld (hl),e			;8715	73 	s 
	push af			;8716	f5 	. 
	defb 0edh;next byte illegal after ed		;8717	ed 	. 
	dec de			;8718	1b 	. 
l8719h:
	halt			;8719	76 	v 
	call m,00000h		;871a	fc 00 00 	. . . 
	inc bc			;871d	03 	. 
	rlca			;871e	07 	. 
	dec c			;871f	0d 	. 
	ld (de),a			;8720	12 	. 
	add hl,sp			;8721	39 	9 
	jr c,l8740h		;8722	38 1c 	8 . 
	cp 09fh		;8724	fe 9f 	. . 
	rst 28h			;8726	ef 	. 
	rst 30h			;8727	f7 	. 
	ld sp,hl			;8728	f9 	. 
	ld a,a			;8729	7f 	 
	cp a			;872a	bf 	. 
	ld e,b			;872b	58 	X 
	ld b,(hl)			;872c	46 	F 
	ld h,a			;872d	67 	g 
	and e			;872e	a3 	. 
	or b			;872f	b0 	. 
	call c,03f6fh		;8730	dc 6f 3f 	. o ? 
	ld c,a			;8733	4f 	O 
	ld sp,06107h		;8734	31 07 61 	1 . a 
	pop af			;8737	f1 	. 
	ld a,a			;8738	7f 	 
	ld e,0fch		;8739	1e fc 	. . 
	nop			;873b	00 	. 
	nop			;873c	00 	. 
	inc d			;873d	14 	. 
	nop			;873e	00 	. 
	inc b			;873f	04 	. 
l8740h:
	inc b			;8740	04 	. 
	nop			;8741	00 	. 
	add a,l			;8742	85 	. 
	sub b			;8743	90 	. 
	ld (00008h),hl		;8744	22 08 00 	" . . 
	jr nz,l874eh		;8747	20 05 	  . 
	nop			;8749	00 	. 
	cp c			;874a	b9 	. 
	jr z,l874dh		;874b	28 00 	( . 
l874dh:
	nop			;874d	00 	. 
l874eh:
	ld bc,02200h		;874e	01 00 22 	. . " 
	inc h			;8751	24 	$ 
	inc d			;8752	14 	. 
	ex af,af'			;8753	08 	. 
	add a,a			;8754	87 	. 
	ld h,b			;8755	60 	` 
	ex af,af'			;8756	08 	. 
	ld b,009h		;8757	06 09 	. . 
	add hl,bc			;8759	09 	. 
	ld a,(bc)			;875a	0a 	. 
	adc a,d			;875b	8a 	. 
	ld c,d			;875c	4a 	J 
	dec h			;875d	25 	% 
	ld (bc),a			;875e	02 	. 
	ld (hl),h			;875f	74 	t 
	djnz $+20		;8760	10 12 	. . 
	inc d			;8762	14 	. 
	ld d,(hl)			;8763	56 	V 
	ld d,l			;8764	55 	U 
	sbc a,h			;8765	9c 	. 
	sub d			;8766	92 	. 
	sub b			;8767	90 	. 
	add a,c			;8768	81 	. 
	dec h			;8769	25 	% 
	inc bc			;876a	03 	. 
	ld hl,07028h		;876b	21 28 70 	! ( p 
	add hl,bc			;876e	09 	. 
	ld a,(bc)			;876f	0a 	. 
	ld (02422h),a		;8770	32 22 24 	2 " $ 
	djnz l8700h		;8773	10 8b 	. . 
	jr z,$+38		;8775	28 24 	( $ 
	inc h			;8777	24 	$ 
	ld c,e			;8778	4b 	K 
	add hl,hl			;8779	29 	) 
	sub b			;877a	90 	. 
	nop			;877b	00 	. 
	ld (hl),h			;877c	74 	t 
	ld c,01dh		;877d	0e 1d 	. . 
	inc c			;877f	0c 	. 
	ld e,c			;8780	59 	Y 
	ld d,d			;8781	52 	R 
	ld a,h			;8782	7c 	| 
	ld d,d			;8783	52 	R 
	ld (bc),a			;8784	02 	. 
	ld h,h			;8785	64 	d 
	ld (bc),a			;8786	02 	. 
	ld h,l			;8787	65 	e 
	add a,l			;8788	85 	. 
	ld e,b			;8789	58 	X 
	ret c			;878a	d8 	. 
	ld e,d			;878b	5a 	Z 
	cp 01ch		;878c	fe 1c 	. . 
	inc bc			;878e	03 	. 
	jr l8719h		;878f	18 88 	. . 
	xor d			;8791	aa 	. 
	and h			;8792	a4 	. 
	adc a,b			;8793	88 	. 
	or h			;8794	b4 	. 
	cp d			;8795	ba 	. 
	ld (hl),l			;8796	75 	u 
	or h			;8797	b4 	. 
	or b			;8798	b0 	. 
	ex af,af'			;8799	08 	. 
	ld sp,01803h		;879a	31 03 18 	1 . . 
	add a,l			;879d	85 	. 
	jr c,l87b8h		;879e	38 18 	8 . 
	jr l87bbh		;87a0	18 19 	. . 
	jr l87b0h		;87a2	18 0c 	. . 
	nop			;87a4	00 	. 
	add a,d			;87a5	82 	. 
	inc bc			;87a6	03 	. 
	rlca			;87a7	07 	. 
	ld (bc),a			;87a8	02 	. 
	rrca			;87a9	0f 	. 
	ld (bc),a			;87aa	02 	. 
	nop			;87ab	00 	. 
	add a,c			;87ac	81 	. 
	rra			;87ad	1f 	. 
	dec b			;87ae	05 	. 
	rst 38h			;87af	ff 	. 
l87b0h:
	ld (bc),a			;87b0	02 	. 
	nop			;87b1	00 	. 
	add a,e			;87b2	83 	. 
	ret po			;87b3	e0 	. 
	ret m			;87b4	f8 	. 
	cp 003h		;87b5	fe 03 	. . 
	rst 38h			;87b7	ff 	. 
l87b8h:
	ld b,000h		;87b8	06 00 	. . 
	ld (bc),a			;87ba	02 	. 
l87bbh:
	add a,b			;87bb	80 	. 
	ld b,01fh		;87bc	06 1f 	. . 
	add a,d			;87be	82 	. 
	rrca			;87bf	0f 	. 
	dec bc			;87c0	0b 	. 
	ld b,0ffh		;87c1	06 ff 	. . 
	ld (bc),a			;87c3	02 	. 
	ex de,hl			;87c4	eb 	. 
	add a,c			;87c5	81 	. 
	inc b			;87c6	04 	. 
	inc bc			;87c7	03 	. 
	inc bc			;87c8	03 	. 
	adc a,b			;87c9	88 	. 
	rlca			;87ca	07 	. 
	rra			;87cb	1f 	. 
	scf			;87cc	37 	7 
	ld l,a			;87cd	6f 	o 
	nop			;87ce	00 	. 
	rst 38h			;87cf	ff 	. 
	defb 0fdh,0feh,003h	;illegal sequence		;87d0	fd fe 03 	. . . 
	rst 38h			;87d3	ff 	. 
	add a,c			;87d4	81 	. 
	cp 008h		;87d5	fe 08 	. . 
	rst 38h			;87d7	ff 	. 
	inc bc			;87d8	03 	. 
	ret nz			;87d9	c0 	. 
	dec b			;87da	05 	. 
	ret po			;87db	e0 	. 
	adc a,b			;87dc	88 	. 
	rrca			;87dd	0f 	. 
	pop af			;87de	f1 	. 
	cp 0ffh		;87df	fe ff 	. . 
	ld (hl),e			;87e1	73 	s 
	ld l,l			;87e2	6d 	m 
	ld l,l			;87e3	6d 	m 
	di			;87e4	f3 	. 
	ld (bc),a			;87e5	02 	. 
	ret po			;87e6	e0 	. 
	ld (bc),a			;87e7	02 	. 
	ret nz			;87e8	c0 	. 
	adc a,l			;87e9	8d 	. 
	ret p			;87ea	f0 	. 
	call z,05ad2h		;87eb	cc d2 5a 	. . Z 
	ld e,a			;87ee	5f 	_ 
	ld (hl),b			;87ef	70 	p 
	jr nc,l8831h		;87f0	30 3f 	0 ? 
	ccf			;87f2	3f 	? 
	ld a,a			;87f3	7f 	 
	ret m			;87f4	f8 	. 
	ld (hl),b			;87f5	70 	p 
	rst 38h			;87f6	ff 	. 
	ld (bc),a			;87f7	02 	. 
	nop			;87f8	00 	. 
	inc bc			;87f9	03 	. 
	rst 38h			;87fa	ff 	. 
	or d			;87fb	b2 	. 
	add hl,de			;87fc	19 	. 
	jr nc,l880fh		;87fd	30 10 	0 . 
l87ffh:
	jr $+23		;87ff	18 15 	. . 
	ld (de),a			;8801	12 	. 
	ld (de),a			;8802	12 	. 
	add hl,bc			;8803	09 	. 
	inc b			;8804	04 	. 
	inc bc			;8805	03 	. 
	add a,b			;8806	80 	. 
	add a,b			;8807	80 	. 
	djnz l882ah		;8808	10 20 	.   
	ld d,b			;880a	50 	P 
	ld c,h			;880b	4c 	L 
	add a,d			;880c	82 	. 
	rst 38h			;880d	ff 	. 
	rst 38h			;880e	ff 	. 
l880fh:
	cpl			;880f	2f 	/ 
	ld d,(hl)			;8810	56 	V 
	rst 10h			;8811	d7 	. 
	rst 28h			;8812	ef 	. 
	rst 38h			;8813	ff 	. 
	cp a			;8814	bf 	. 
	sbc a,06ah		;8815	de 6a 	. j 
	jp p,la8dch		;8817	f2 dc a8 	. . . 
	xor d			;881a	aa 	. 
	rst 18h			;881b	df 	. 
	ld a,a			;881c	7f 	 
	ld a,00ch		;881d	3e 0c 	> . 
	inc b			;881f	04 	. 
	add a,h			;8820	84 	. 
	ld l,d			;8821	6a 	j 
	sub c			;8822	91 	. 
	ld de,0ff2ah		;8823	11 2a ff 	. * . 
	inc a			;8826	3c 	< 
	jr nz,$+98		;8827	20 60 	  ` 
	and b			;8829	a0 	. 
l882ah:
	jr nz,l886ch		;882a	20 40 	  @ 
	add a,b			;882c	80 	. 
	nop			;882d	00 	. 
	nop			;882e	00 	. 
	inc bc			;882f	03 	. 
	rst 38h			;8830	ff 	. 
l8831h:
	add a,h			;8831	84 	. 
	rst 18h			;8832	df 	. 
	rst 38h			;8833	ff 	. 
	rst 38h			;8834	ff 	. 
	cp 004h		;8835	fe 04 	. . 
	rst 38h			;8837	ff 	. 
	add a,e			;8838	83 	. 
	rst 18h			;8839	df 	. 
	rst 38h			;883a	ff 	. 
	defb 0fdh,005h,0ffh	;illegal sequence		;883b	fd 05 ff 	. . . 
	add a,c			;883e	81 	. 
	rst 18h			;883f	df 	. 
	ld b,0ffh		;8840	06 ff 	. . 
	add a,l			;8842	85 	. 
	cp a			;8843	bf 	. 
	rst 38h			;8844	ff 	. 
	ei			;8845	fb 	. 
	rst 38h			;8846	ff 	. 
	ld a,a			;8847	7f 	 
	dec b			;8848	05 	. 
	rst 38h			;8849	ff 	. 
	add a,e			;884a	83 	. 
	defb 0fdh,0fbh,0fdh	;illegal sequence		;884b	fd fb fd 	. . . 
	add hl,bc			;884e	09 	. 
	rst 38h			;884f	ff 	. 
	ld (bc),a			;8850	02 	. 
	ld sp,hl			;8851	f9 	. 
	rlca			;8852	07 	. 
	rst 38h			;8853	ff 	. 
	add a,c			;8854	81 	. 
	rst 20h			;8855	e7 	. 
	ld b,(hl)			;8856	46 	F 
	rst 38h			;8857	ff 	. 
	add a,l			;8858	85 	. 
	nop			;8859	00 	. 
	ld bc,0ff0bh		;885a	01 0b ff 	. . . 
	ei			;885d	fb 	. 
	inc bc			;885e	03 	. 
	rst 38h			;885f	ff 	. 
	add a,(hl)			;8860	86 	. 
	ld b,b			;8861	40 	@ 
	ld h,b			;8862	60 	` 
	call c,0fff7h		;8863	dc f7 ff 	. . . 
	rst 18h			;8866	df 	. 
	dec b			;8867	05 	. 
	rst 38h			;8868	ff 	. 
	add a,h			;8869	84 	. 
	rst 10h			;886a	d7 	. 
	rst 38h			;886b	ff 	. 
l886ch:
	rst 38h			;886c	ff 	. 
	cp 012h		;886d	fe 12 	. . 
	rst 38h			;886f	ff 	. 
	add a,c			;8870	81 	. 
	defb 0fdh,007h,0ffh	;illegal sequence		;8871	fd 07 ff 	. . . 
	add a,c			;8874	81 	. 
	rst 18h			;8875	df 	. 
	ld b,0ffh		;8876	06 ff 	. . 
	add a,c			;8878	81 	. 
	rst 28h			;8879	ef 	. 
	add hl,bc			;887a	09 	. 
	rst 38h			;887b	ff 	. 
	add a,c			;887c	81 	. 
	ld a,a			;887d	7f 	 
	dec b			;887e	05 	. 
	rst 38h			;887f	ff 	. 
	add a,c			;8880	81 	. 
	cp 022h		;8881	fe 22 	. " 
	rst 38h			;8883	ff 	. 
	add a,l			;8884	85 	. 
	rst 18h			;8885	df 	. 
	rst 38h			;8886	ff 	. 
	rst 38h			;8887	ff 	. 
	cp 0ffh		;8888	fe ff 	. . 
	inc c			;888a	0c 	. 
	nop			;888b	00 	. 
	add a,d			;888c	82 	. 
	inc bc			;888d	03 	. 
	rlca			;888e	07 	. 
	ld (bc),a			;888f	02 	. 
	rrca			;8890	0f 	. 
	ld (bc),a			;8891	02 	. 
	nop			;8892	00 	. 
	add a,c			;8893	81 	. 
	rra			;8894	1f 	. 
	dec b			;8895	05 	. 
	rst 38h			;8896	ff 	. 
	ld (bc),a			;8897	02 	. 
	nop			;8898	00 	. 
	add a,e			;8899	83 	. 
	ret po			;889a	e0 	. 
	ret m			;889b	f8 	. 
	cp 003h		;889c	fe 03 	. . 
	rst 38h			;889e	ff 	. 
	ld b,000h		;889f	06 00 	. . 
	ld (bc),a			;88a1	02 	. 
	add a,b			;88a2	80 	. 
	ld b,01fh		;88a3	06 1f 	. . 
	ld (bc),a			;88a5	02 	. 
	rrca			;88a6	0f 	. 
	ex af,af'			;88a7	08 	. 
	rst 38h			;88a8	ff 	. 
	add a,c			;88a9	81 	. 
	rlca			;88aa	07 	. 
	inc bc			;88ab	03 	. 
	inc bc			;88ac	03 	. 
	adc a,h			;88ad	8c 	. 
	rlca			;88ae	07 	. 
	rra			;88af	1f 	. 
	ccf			;88b0	3f 	? 
	ld a,a			;88b1	7f 	 
	rst 38h			;88b2	ff 	. 
	sbc a,(hl)			;88b3	9e 	. 
	inc hl			;88b4	23 	# 
	ret			;88b5	c9 	. 
	sbc a,h			;88b6	9c 	. 
	cp (hl)			;88b7	be 	. 
	sbc a,h			;88b8	9c 	. 
	pop bc			;88b9	c1 	. 
	ex af,af'			;88ba	08 	. 
	rst 38h			;88bb	ff 	. 
	inc bc			;88bc	03 	. 
	ret nz			;88bd	c0 	. 
	dec b			;88be	05 	. 
	ret po			;88bf	e0 	. 
	add a,e			;88c0	83 	. 
	rst 38h			;88c1	ff 	. 
	rst 8			;88c2	cf 	. 
	rrca			;88c3	0f 	. 
	dec b			;88c4	05 	. 
	rst 38h			;88c5	ff 	. 
	ld (bc),a			;88c6	02 	. 
	ret po			;88c7	e0 	. 
	ld (bc),a			;88c8	02 	. 
	ret nz			;88c9	c0 	. 
	add a,d			;88ca	82 	. 
	ret p			;88cb	f0 	. 
l88cch:
	call m,0fe02h		;88cc	fc 02 fe 	. . . 
	ld (bc),a			;88cf	02 	. 
	ld a,a			;88d0	7f 	 
	ld (bc),a			;88d1	02 	. 
	ccf			;88d2	3f 	? 
	add a,h			;88d3	84 	. 
	jr c,l8955h		;88d4	38 7f 	8  
	rst 38h			;88d6	ff 	. 
	ld a,a			;88d7	7f 	 
	inc b			;88d8	04 	. 
	rst 38h			;88d9	ff 	. 
	add a,h			;88da	84 	. 
	nop			;88db	00 	. 
	ret p			;88dc	f0 	. 
	and 0cfh		;88dd	e6 cf 	. . 
	dec b			;88df	05 	. 
	rra			;88e0	1f 	. 
	add a,e			;88e1	83 	. 
	rrca			;88e2	0f 	. 
	rlca			;88e3	07 	. 
	inc bc			;88e4	03 	. 
	inc c			;88e5	0c 	. 
	rst 38h			;88e6	ff 	. 
	adc a,h			;88e7	8c 	. 
	ld a,(hl)			;88e8	7e 	~ 
	rst 38h			;88e9	ff 	. 
	ld a,a			;88ea	7f 	 
	ccf			;88eb	3f 	? 
	cp 0feh		;88ec	fe fe 	. . 
	call m,0faf8h		;88ee	fc f8 fa 	. . . 
	rst 38h			;88f1	ff 	. 
	rst 38h			;88f2	ff 	. 
	cp 008h		;88f3	fe 08 	. . 
	rst 38h			;88f5	ff 	. 
	add a,c			;88f6	81 	. 
	call m,0e004h		;88f7	fc 04 e0 	. . . 
	add a,e			;88fa	83 	. 
	ret nz			;88fb	c0 	. 
	add a,b			;88fc	80 	. 
	nop			;88fd	00 	. 
	nop			;88fe	00 	. 
	jr nz,$+1		;88ff	20 ff 	  . 
	and d			;8901	a2 	. 
	ret nz			;8902	c0 	. 
	sbc a,a			;8903	9f 	. 
	ccf			;8904	3f 	? 
	ld a,h			;8905	7c 	| 
	ld a,b			;8906	78 	x 
	ld (hl),b			;8907	70 	p 
	ld a,b			;8908	78 	x 
	ld h,b			;8909	60 	` 
	inc bc			;890a	03 	. 
	defb 0ddh,0feh,01eh	;illegal sequence		;890b	dd fe 1e 	. . . 
	ld a,0feh		;890e	3e fe 	> . 
	ld a,006h		;8910	3e 06 	> . 
	ld h,b			;8912	60 	` 
	ld h,c			;8913	61 	a 
	ld l,b			;8914	68 	h 
	ld l,b			;8915	68 	h 
	ld a,l			;8916	7d 	} 
	ld a,a			;8917	7f 	 
	sbc a,a			;8918	9f 	. 
	ret po			;8919	e0 	. 
	add a,d			;891a	82 	. 
	ld b,d			;891b	42 	B 
	jp nz,0eeeeh		;891c	c2 ee ee 	. . . 
	cp 0fdh		;891f	fe fd 	. . 
	inc bc			;8921	03 	. 
	ret nz			;8922	c0 	. 
	cp a			;8923	bf 	. 
	ld b,07fh		;8924	06 7f 	.  
	add a,d			;8926	82 	. 
	inc bc			;8927	03 	. 
	defb 0fdh,006h,0feh	;illegal sequence		;8928	fd 06 fe 	. . . 
	ld b,07fh		;892b	06 7f 	.  
	add a,d			;892d	82 	. 
	cp a			;892e	bf 	. 
	ret nz			;892f	c0 	. 
	ld b,0feh		;8930	06 fe 	. . 
	adc a,h			;8932	8c 	. 
	defb 0fdh,003h,0ffh	;illegal sequence		;8933	fd 03 ff 	. . . 
	rst 38h			;8936	ff 	. 
	call m,0f7fbh		;8937	fc fb f7 	. . . 
	rst 28h			;893a	ef 	. 
	rst 18h			;893b	df 	. 
	rst 18h			;893c	df 	. 
	ex (sp),hl			;893d	e3 	. 
	dec e			;893e	1d 	. 
	ld b,0feh		;893f	06 fe 	. . 
	inc bc			;8941	03 	. 
	cp a			;8942	bf 	. 
	inc bc			;8943	03 	. 
	ld a,a			;8944	7f 	 
	add a,d			;8945	82 	. 
	cp a			;8946	bf 	. 
	ret nz			;8947	c0 	. 
	ld b,0feh		;8948	06 fe 	. . 
	add a,l			;894a	85 	. 
	defb 0fdh,003h,000h	;illegal sequence		;894b	fd 03 00 	. . . 
	ld bc,0051fh		;894e	01 1f 05 	. . . 
	rst 38h			;8951	ff 	. 
	add a,e			;8952	83 	. 
	ld b,b			;8953	40 	@ 
	ret p			;8954	f0 	. 
l8955h:
	cp 065h		;8955	fe 65 	. e 
	rst 38h			;8957	ff 	. 
	dec c			;8958	0d 	. 
	nop			;8959	00 	. 
	add a,c			;895a	81 	. 
	inc bc			;895b	03 	. 
	ld (bc),a			;895c	02 	. 
	rlca			;895d	07 	. 
	inc bc			;895e	03 	. 
	nop			;895f	00 	. 
	add a,c			;8960	81 	. 
	rra			;8961	1f 	. 
	inc b			;8962	04 	. 
	rst 38h			;8963	ff 	. 
	inc bc			;8964	03 	. 
	nop			;8965	00 	. 
	add a,e			;8966	83 	. 
	ret po			;8967	e0 	. 
	ret m			;8968	f8 	. 
	cp 002h		;8969	fe 02 	. . 
	rst 38h			;896b	ff 	. 
	ex af,af'			;896c	08 	. 
	nop			;896d	00 	. 
	ld b,00fh		;896e	06 0f 	. . 
	add a,d			;8970	82 	. 
	rlca			;8971	07 	. 
	inc bc			;8972	03 	. 
	ld b,0ffh		;8973	06 ff 	. . 
	ld (bc),a			;8975	02 	. 
	ex de,hl			;8976	eb 	. 
	ld (bc),a			;8977	02 	. 
	nop			;8978	00 	. 
	ld (bc),a			;8979	02 	. 
	ld bc,00302h		;897a	01 02 03 	. . . 
	add a,(hl)			;897d	86 	. 
	inc de			;897e	13 	. 
	dec l			;897f	2d 	- 
	nop			;8980	00 	. 
	ld a,a			;8981	7f 	 
	pop hl			;8982	e1 	. 
	ret nz			;8983	c0 	. 
	inc bc			;8984	03 	. 
	add a,b			;8985	80 	. 
	add a,c			;8986	81 	. 
	ret nz			;8987	c0 	. 
	ex af,af'			;8988	08 	. 
	rst 38h			;8989	ff 	. 
	inc bc			;898a	03 	. 
	add a,b			;898b	80 	. 
	dec b			;898c	05 	. 
	ret nz			;898d	c0 	. 
	adc a,b			;898e	88 	. 
	rrca			;898f	0f 	. 
	ld sp,0fffeh		;8990	31 fe ff 	1 . . 
	ld (hl),e			;8993	73 	s 
	ld l,h			;8994	6c 	l 
	ld l,l			;8995	6d 	m 
	out (002h),a		;8996	d3 02 	. . 
	ret nz			;8998	c0 	. 
	ld (bc),a			;8999	02 	. 
	add a,b			;899a	80 	. 
	jp nz,0c000h		;899b	c2 00 c0 	. . . 
	ret nc			;899e	d0 	. 
	ld e,b			;899f	58 	X 
	djnz $+49		;89a0	10 2f 	. / 
	rrca			;89a2	0f 	. 
	djnz l89bah		;89a3	10 15 	. . 
	jr c,$+121		;89a5	38 77 	8 w 
	rrca			;89a7	0f 	. 
	nop			;89a8	00 	. 
	rst 38h			;89a9	ff 	. 
	rst 38h			;89aa	ff 	. 
	nop			;89ab	00 	. 
	ld d,l			;89ac	55 	U 
	ld a,(bc)			;89ad	0a 	. 
	rst 30h			;89ae	f7 	. 
	rst 28h			;89af	ef 	. 
	rrca			;89b0	0f 	. 
	rlca			;89b1	07 	. 
	ld a,(bc)			;89b2	0a 	. 
	dec c			;89b3	0d 	. 
	dec c			;89b4	0d 	. 
	ld b,003h		;89b5	06 03 	. . 
	nop			;89b7	00 	. 
	ld a,a			;89b8	7f 	 
	ld a,a			;89b9	7f 	 
l89bah:
	rst 28h			;89ba	ef 	. 
	rst 18h			;89bb	df 	. 
	xor a			;89bc	af 	. 
	or e			;89bd	b3 	. 
	ld a,l			;89be	7d 	} 
	nop			;89bf	00 	. 
	ld e,0ceh		;89c0	1e ce 	. . 
	sub l			;89c2	95 	. 
	inc d			;89c3	14 	. 
	add hl,hl			;89c4	29 	) 
	ld a,(de)			;89c5	1a 	. 
	ld e,(hl)			;89c6	5e 	^ 
	xor l			;89c7	ad 	. 
	ld l,b			;89c8	68 	h 
	ld (hl),b			;89c9	70 	p 
	ld d,b			;89ca	50 	P 
	jr nz,l89edh		;89cb	20 20 	    
	ld a,(de)			;89cd	1a 	. 
	cp (hl)			;89ce	be 	. 
	call c,0fbf3h		;89cf	dc f3 fb 	. . . 
	ld a,e			;89d2	7b 	{ 
	sub l			;89d3	95 	. 
	ld l,(hl)			;89d4	6e 	n 
	xor 0d5h		;89d5	ee d5 	. . 
	nop			;89d7	00 	. 
	ret nz			;89d8	c0 	. 
	ret nz			;89d9	c0 	. 
	add a,b			;89da	80 	. 
	ld b,b			;89db	40 	@ 
	ret nz			;89dc	c0 	. 
	add a,b			;89dd	80 	. 
	ld (bc),a			;89de	02 	. 
	nop			;89df	00 	. 
	nop			;89e0	00 	. 
	dec b			;89e1	05 	. 
	nop			;89e2	00 	. 
	add a,h			;89e3	84 	. 
	ld bc,00703h		;89e4	01 03 07 	. . . 
	rrca			;89e7	0f 	. 
	inc bc			;89e8	03 	. 
	rra			;89e9	1f 	. 
	adc a,b			;89ea	88 	. 
	ccf			;89eb	3f 	? 
	ld e,a			;89ec	5f 	_ 
l89edh:
	cpl			;89ed	2f 	/ 
	ld d,l			;89ee	55 	U 
	nop			;89ef	00 	. 
	rlca			;89f0	07 	. 
	rra			;89f1	1f 	. 
	ld a,a			;89f2	7f 	 
	inc c			;89f3	0c 	. 
	rst 38h			;89f4	ff 	. 
	adc a,d			;89f5	8a 	. 
	xor d			;89f6	aa 	. 
	ld d,l			;89f7	55 	U 
	xor d			;89f8	aa 	. 
	ld d,l			;89f9	55 	U 
	xor d			;89fa	aa 	. 
	ld d,l			;89fb	55 	U 
	xor d			;89fc	aa 	. 
	ld d,l			;89fd	55 	U 
	nop			;89fe	00 	. 
	ld bc,00004h		;89ff	01 04 00 	. . . 
	and b			;8a02	a0 	. 
	ld (bc),a			;8a03	02 	. 
	inc bc			;8a04	03 	. 
	xor d			;8a05	aa 	. 
	ld d,l			;8a06	55 	U 
	ld hl,(00016h)		;8a07	2a 16 00 	* . . 
	dec b			;8a0a	05 	. 
	nop			;8a0b	00 	. 
	ret nz			;8a0c	c0 	. 
	xor d			;8a0d	aa 	. 
	ld b,h			;8a0e	44 	D 
	and e			;8a0f	a3 	. 
	jr l8a12h		;8a10	18 00 	. . 
l8a12h:
	djnz l8a7ch		;8a12	10 68 	. h 
	ret nc			;8a14	d0 	. 
	adc a,d			;8a15	8a 	. 
	call po,02050h		;8a16	e4 50 20 	. P   
	nop			;8a19	00 	. 
	djnz l8a91h		;8a1a	10 75 	. u 
	jp (hl)			;8a1c	e9 	. 
	ld (l8255h),hl		;8a1d	22 55 82 	" U . 
	add a,l			;8a20	85 	. 
	ld (bc),a			;8a21	02 	. 
	inc b			;8a22	04 	. 
	inc bc			;8a23	03 	. 
	nop			;8a24	00 	. 
	sub a			;8a25	97 	. 
	rra			;8a26	1f 	. 
	ld a,a			;8a27	7f 	 
	ld a,a			;8a28	7f 	 
	rst 38h			;8a29	ff 	. 
	ld a,a			;8a2a	7f 	 
	cp a			;8a2b	bf 	. 
	ld d,l			;8a2c	55 	U 
	nop			;8a2d	00 	. 
	add a,b			;8a2e	80 	. 
	ret nz			;8a2f	c0 	. 
	ret po			;8a30	e0 	. 
	ret po			;8a31	e0 	. 
	ret nc			;8a32	d0 	. 
	and b			;8a33	a0 	. 
	ld c,b			;8a34	48 	H 
	and b			;8a35	a0 	. 
	ld d,b			;8a36	50 	P 
	and b			;8a37	a0 	. 
	ld b,b			;8a38	40 	@ 
	nop			;8a39	00 	. 
	jr nz,l8a3ch		;8a3a	20 00 	  . 
l8a3ch:
	add a,b			;8a3c	80 	. 
	dec b			;8a3d	05 	. 
	rlca			;8a3e	07 	. 
	inc bc			;8a3f	03 	. 
	rrca			;8a40	0f 	. 
	inc bc			;8a41	03 	. 
	rst 0			;8a42	c7 	. 
	ld (bc),a			;8a43	02 	. 
	adc a,(hl)			;8a44	8e 	. 
	add a,c			;8a45	81 	. 
	adc a,h			;8a46	8c 	. 
	ld (bc),a			;8a47	02 	. 
	inc e			;8a48	1c 	. 
	ld (bc),a			;8a49	02 	. 
	rrca			;8a4a	0f 	. 
	xor l			;8a4b	ad 	. 
	ld c,01eh		;8a4c	0e 1e 	. . 
	inc e			;8a4e	1c 	. 
	inc e			;8a4f	1c 	. 
	jr l8a52h		;8a50	18 00 	. . 
l8a52h:
	jr l8a6dh		;8a52	18 19 	. . 
	djnz l8a67h		;8a54	10 11 	. . 
	jr nc,l8a79h		;8a56	30 21 	0 ! 
	ld (0a800h),hl		;8a58	22 00 a8 	" . . 
	ld d,b			;8a5b	50 	P 
	and c			;8a5c	a1 	. 
	ld d,c			;8a5d	51 	Q 
	and c			;8a5e	a1 	. 
	ld d,c			;8a5f	51 	Q 
	and e			;8a60	a3 	. 
	ld d,e			;8a61	53 	S 
	call p,0d0e9h		;8a62	f4 e9 d0 	. . . 
	jp (hl)			;8a65	e9 	. 
	ret nc			;8a66	d0 	. 
l8a67h:
	jp (hl)			;8a67	e9 	. 
	ret nc			;8a68	d0 	. 
	and d			;8a69	a2 	. 
	and e			;8a6a	a3 	. 
	ld b,e			;8a6b	43 	C 
	and a			;8a6c	a7 	. 
l8a6dh:
	ld b,a			;8a6d	47 	G 
	and a			;8a6e	a7 	. 
	ld b,a			;8a6f	47 	G 
	adc a,a			;8a70	8f 	. 
	nop			;8a71	00 	. 
	ret nc			;8a72	d0 	. 
	and d			;8a73	a2 	. 
	ret nc			;8a74	d0 	. 
	and d			;8a75	a2 	. 
	ld b,h			;8a76	44 	D 
	and d			;8a77	a2 	. 
	ld b,h			;8a78	44 	D 
l8a79h:
	add hl,bc			;8a79	09 	. 
	nop			;8a7a	00 	. 
	sub b			;8a7b	90 	. 
l8a7ch:
	ret nc			;8a7c	d0 	. 
	and d			;8a7d	a2 	. 
	ret nc			;8a7e	d0 	. 
	and d			;8a7f	a2 	. 
	ld b,h			;8a80	44 	D 
	and d			;8a81	a2 	. 
	ld b,h			;8a82	44 	D 
	and d			;8a83	a2 	. 
	ld b,b			;8a84	40 	@ 
	nop			;8a85	00 	. 
	ld b,b			;8a86	40 	@ 
	jr nz,l8ac9h		;8a87	20 40 	  @ 
	jr nc,l8a8bh		;8a89	30 00 	0 . 
l8a8bh:
	add a,b			;8a8b	80 	. 
	inc b			;8a8c	04 	. 
	nop			;8a8d	00 	. 
	adc a,b			;8a8e	88 	. 
	inc bc			;8a8f	03 	. 
	rrca			;8a90	0f 	. 
l8a91h:
	ccf			;8a91	3f 	? 
	rst 38h			;8a92	ff 	. 
	nop			;8a93	00 	. 
	nop			;8a94	00 	. 
	rrca			;8a95	0f 	. 
	ld a,a			;8a96	7f 	 
	inc b			;8a97	04 	. 
	rst 38h			;8a98	ff 	. 
	add a,c			;8a99	81 	. 
	nop			;8a9a	00 	. 
	rlca			;8a9b	07 	. 
	rst 38h			;8a9c	ff 	. 
	ld b,000h		;8a9d	06 00 	. . 
	add a,a			;8a9f	87 	. 
	ld bc,00103h		;8aa0	01 03 01 	. . . 
	rlca			;8aa3	07 	. 
	rrca			;8aa4	0f 	. 
	ccf			;8aa5	3f 	? 
	ld a,a			;8aa6	7f 	 
	inc bc			;8aa7	03 	. 
	rst 38h			;8aa8	ff 	. 
	add a,d			;8aa9	82 	. 
	rlca			;8aaa	07 	. 
	rrca			;8aab	0f 	. 
	inc b			;8aac	04 	. 
	rra			;8aad	1f 	. 
	ld (bc),a			;8aae	02 	. 
	ccf			;8aaf	3f 	? 
	djnz $+1		;8ab0	10 ff 	. . 
	inc bc			;8ab2	03 	. 
	nop			;8ab3	00 	. 
	add a,l			;8ab4	85 	. 
	inc b			;8ab5	04 	. 
	ex af,af'			;8ab6	08 	. 
	djnz l8ac9h		;8ab7	10 10 	. . 
	ex af,af'			;8ab9	08 	. 
	ex af,af'			;8aba	08 	. 
	rst 38h			;8abb	ff 	. 
	add a,c			;8abc	81 	. 
	ld (bc),a			;8abd	02 	. 
	dec bc			;8abe	0b 	. 
	nop			;8abf	00 	. 
	ld (bc),a			;8ac0	02 	. 
	djnz l8ac5h		;8ac1	10 02 	. . 
	jr nz,l8ac9h		;8ac3	20 04 	  . 
l8ac5h:
	nop			;8ac5	00 	. 
	add a,a			;8ac6	87 	. 
	djnz $+34		;8ac7	10 20 	.   
l8ac9h:
	jr nz,l8b0bh		;8ac9	20 40 	  @ 
	nop			;8acb	00 	. 
	nop			;8acc	00 	. 
	ld b,b			;8acd	40 	@ 
	dec b			;8ace	05 	. 
	nop			;8acf	00 	. 
	add a,e			;8ad0	83 	. 
	ld b,b			;8ad1	40 	@ 
	nop			;8ad2	00 	. 
	jr nz,$+11		;8ad3	20 09 	  . 
	nop			;8ad5	00 	. 
	ld (bc),a			;8ad6	02 	. 
	jr nz,l8adbh		;8ad7	20 02 	  . 
	ld b,b			;8ad9	40 	@ 
	add a,d			;8ada	82 	. 
l8adbh:
	nop			;8adb	00 	. 
	add a,b			;8adc	80 	. 
	ld b,000h		;8add	06 00 	. . 
	adc a,d			;8adf	8a 	. 
	rst 38h			;8ae0	ff 	. 
	djnz $+65		;8ae1	10 3f 	. ? 
	ld a,a			;8ae3	7f 	 
	ccf			;8ae4	3f 	? 
	ld a,a			;8ae5	7f 	 
	ccf			;8ae6	3f 	? 
	ld a,a			;8ae7	7f 	 
	defb 0fdh,001h,006h	;illegal sequence		;8ae8	fd 01 06 	. . . 
	rst 38h			;8aeb	ff 	. 
	adc a,b			;8aec	88 	. 
	ccf			;8aed	3f 	? 
	ld a,a			;8aee	7f 	 
	ccf			;8aef	3f 	? 
	ld a,a			;8af0	7f 	 
	ccf			;8af1	3f 	? 
	ld a,a			;8af2	7f 	 
	ccf			;8af3	3f 	? 
	ld a,a			;8af4	7f 	 
	ex af,af'			;8af5	08 	. 
	rst 38h			;8af6	ff 	. 
	add a,d			;8af7	82 	. 
	ld a,a			;8af8	7f 	 
	nop			;8af9	00 	. 
	rlca			;8afa	07 	. 
	rst 38h			;8afb	ff 	. 
	add a,c			;8afc	81 	. 
	rra			;8afd	1f 	. 
	ld (bc),a			;8afe	02 	. 
	rst 38h			;8aff	ff 	. 
	inc c			;8b00	0c 	. 
	cp 004h		;8b01	fe 04 	. . 
	rst 38h			;8b03	ff 	. 
	inc d			;8b04	14 	. 
	nop			;8b05	00 	. 
	add a,d			;8b06	82 	. 
	cp 01eh		;8b07	fe 1e 	. . 
	ld b,0feh		;8b09	06 fe 	. . 
l8b0bh:
	ex af,af'			;8b0b	08 	. 
	nop			;8b0c	00 	. 
	nop			;8b0d	00 	. 
	dec bc			;8b0e	0b 	. 
	nop			;8b0f	00 	. 
	add a,l			;8b10	85 	. 
	jr nz,l8b13h		;8b11	20 00 	  . 
l8b13h:
	jr nz,l8b65h		;8b13	20 50 	  P 
	ld hl,(00010h)		;8b15	2a 10 00 	* . . 
	adc a,d			;8b18	8a 	. 
	ld d,l			;8b19	55 	U 
	xor d			;8b1a	aa 	. 
	ld d,l			;8b1b	55 	U 
	xor d			;8b1c	aa 	. 
	ld d,l			;8b1d	55 	U 
	xor d			;8b1e	aa 	. 
	ld d,l			;8b1f	55 	U 
	xor d			;8b20	aa 	. 
	ld bc,00200h		;8b21	01 00 02 	. . . 
	ld bc,00304h		;8b24	01 04 03 	. . . 
	adc a,h			;8b27	8c 	. 
	ld d,l			;8b28	55 	U 
	xor d			;8b29	aa 	. 
	rst 10h			;8b2a	d7 	. 
	rst 28h			;8b2b	ef 	. 
	rst 38h			;8b2c	ff 	. 
	jp m,0ffffh		;8b2d	fa ff ff 	. . . 
	ld d,l			;8b30	55 	U 
	cp e			;8b31	bb 	. 
	ld e,h			;8b32	5c 	\ 
	rst 20h			;8b33	e7 	. 
	inc b			;8b34	04 	. 
	rst 38h			;8b35	ff 	. 
	add a,h			;8b36	84 	. 
	ld (hl),l			;8b37	75 	u 
	in a,(0afh)		;8b38	db af 	. . 
	rst 18h			;8b3a	df 	. 
	inc b			;8b3b	04 	. 
	rst 38h			;8b3c	ff 	. 
	add a,(hl)			;8b3d	86 	. 
	defb 0ddh,0aah,07dh	;illegal sequence		;8b3e	dd aa 7d 	. . } 
	ld a,d			;8b41	7a 	z 
	defb 0fdh,0fbh,002h	;illegal sequence		;8b42	fd fb 02 	. . . 
	rst 38h			;8b45	ff 	. 
	inc bc			;8b46	03 	. 
	nop			;8b47	00 	. 
	add a,l			;8b48	85 	. 
	add a,b			;8b49	80 	. 
	nop			;8b4a	00 	. 
	add a,b			;8b4b	80 	. 
	ld b,b			;8b4c	40 	@ 
	xor d			;8b4d	aa 	. 
	inc b			;8b4e	04 	. 
	nop			;8b4f	00 	. 
	adc a,d			;8b50	8a 	. 
	djnz l8b73h		;8b51	10 20 	.   
	ld d,b			;8b53	50 	P 
	or b			;8b54	b0 	. 
	ld e,b			;8b55	58 	X 
	xor b			;8b56	a8 	. 
	ld e,b			;8b57	58 	X 
	cp b			;8b58	b8 	. 
	call m,002dch		;8b59	fc dc 02 	. . . 
	call m,00705h		;8b5c	fc 05 07 	. . . 
	inc bc			;8b5f	03 	. 
	rrca			;8b60	0f 	. 
	ex af,af'			;8b61	08 	. 
	rst 38h			;8b62	ff 	. 
	inc bc			;8b63	03 	. 
	rrca			;8b64	0f 	. 
l8b65h:
	dec b			;8b65	05 	. 
	rra			;8b66	1f 	. 
	jr c,$+1		;8b67	38 ff 	8 . 
	inc bc			;8b69	03 	. 
	call m,0fe05h		;8b6a	fc 05 fe 	. . . 
	inc b			;8b6d	04 	. 
	nop			;8b6e	00 	. 
	adc a,b			;8b6f	88 	. 
	inc bc			;8b70	03 	. 
	rrca			;8b71	0f 	. 
	ccf			;8b72	3f 	? 
l8b73h:
	rst 38h			;8b73	ff 	. 
	nop			;8b74	00 	. 
	nop			;8b75	00 	. 
	rrca			;8b76	0f 	. 
	ld a,a			;8b77	7f 	 
	inc b			;8b78	04 	. 
	rst 38h			;8b79	ff 	. 
	add a,c			;8b7a	81 	. 
	nop			;8b7b	00 	. 
	rlca			;8b7c	07 	. 
	rst 38h			;8b7d	ff 	. 
	ld b,000h		;8b7e	06 00 	. . 
	add a,a			;8b80	87 	. 
	ld bc,00103h		;8b81	01 03 01 	. . . 
	rlca			;8b84	07 	. 
l8b85h:
	rrca			;8b85	0f 	. 
	ccf			;8b86	3f 	? 
	ld a,a			;8b87	7f 	 
	inc bc			;8b88	03 	. 
	rst 38h			;8b89	ff 	. 
	adc a,b			;8b8a	88 	. 
	rlca			;8b8b	07 	. 
	rrca			;8b8c	0f 	. 
	ld e,01dh		;8b8d	1e 1d 	. . 
	dec sp			;8b8f	3b 	; 
	dec a			;8b90	3d 	= 
	ld a,e			;8b91	7b 	{ 
	ld (hl),l			;8b92	75 	u 
	ld de,l87ffh		;8b93	11 ff 87 	. . . 
	add a,b			;8b96	80 	. 
	cp a			;8b97	bf 	. 
	cp e			;8b98	bb 	. 
	or a			;8b99	b7 	. 
	xor a			;8b9a	af 	. 
	xor a			;8b9b	af 	. 
	or a			;8b9c	b7 	. 
	ex af,af'			;8b9d	08 	. 
	rst 38h			;8b9e	ff 	. 
	add a,c			;8b9f	81 	. 
	cp l			;8ba0	bd 	. 
	inc b			;8ba1	04 	. 
	rst 38h			;8ba2	ff 	. 
	add a,a			;8ba3	87 	. 
	cp a			;8ba4	bf 	. 
	add a,b			;8ba5	80 	. 
	rst 38h			;8ba6	ff 	. 
	rst 38h			;8ba7	ff 	. 
	nop			;8ba8	00 	. 
	rst 38h			;8ba9	ff 	. 
	cp a			;8baa	bf 	. 
	ld (bc),a			;8bab	02 	. 
	rst 28h			;8bac	ef 	. 
	ld (bc),a			;8bad	02 	. 
	rst 18h			;8bae	df 	. 
	adc a,e			;8baf	8b 	. 
	rst 38h			;8bb0	ff 	. 
	nop			;8bb1	00 	. 
	rst 38h			;8bb2	ff 	. 
	rst 38h			;8bb3	ff 	. 
	rst 28h			;8bb4	ef 	. 
	rst 18h			;8bb5	df 	. 
	rst 18h			;8bb6	df 	. 
	or a			;8bb7	b7 	. 
	rst 38h			;8bb8	ff 	. 
	rst 38h			;8bb9	ff 	. 
	cp a			;8bba	bf 	. 
	inc bc			;8bbb	03 	. 
	rst 38h			;8bbc	ff 	. 
	adc a,(hl)			;8bbd	8e 	. 
	nop			;8bbe	00 	. 
	rst 38h			;8bbf	ff 	. 
	cp a			;8bc0	bf 	. 
	rst 38h			;8bc1	ff 	. 
	rst 18h			;8bc2	df 	. 
	rst 38h			;8bc3	ff 	. 
	ld a,a			;8bc4	7f 	 
	rst 38h			;8bc5	ff 	. 
	nop			;8bc6	00 	. 
	rst 38h			;8bc7	ff 	. 
	rst 38h			;8bc8	ff 	. 
	ld bc,07ffdh		;8bc9	01 fd 7f 	. .  
	ld (bc),a			;8bcc	02 	. 
	rst 18h			;8bcd	df 	. 
	ld (bc),a			;8bce	02 	. 
	cp a			;8bcf	bf 	. 
	add a,a			;8bd0	87 	. 
	rst 38h			;8bd1	ff 	. 
	ld a,l			;8bd2	7d 	} 
	defb 0fdh,0c5h,0c5h	;illegal sequence		;8bd3	fd c5 c5 	. . . 
	defb 0fdh,001h,003h	;illegal sequence		;8bd6	fd 01 03 	. . . 
	rst 38h			;8bd9	ff 	. 
	add a,(hl)			;8bda	86 	. 
	jp m,0fafdh		;8bdb	fa fd fa 	. . . 
	defb 0fdh,0fah,0fdh	;illegal sequence		;8bde	fd fa fd 	. . . 
	ex af,af'			;8be1	08 	. 
	rst 38h			;8be2	ff 	. 
	adc a,b			;8be3	88 	. 
	jp m,0fafdh		;8be4	fa fd fa 	. . . 
	defb 0fdh,0fah,0fdh	;illegal sequence		;8be7	fd fa fd 	. . . 
	jp m,011fdh		;8bea	fa fd 11 	. . . 
	rst 38h			;8bed	ff 	. 
	ld (bc),a			;8bee	02 	. 
	ret p			;8bef	f0 	. 
	dec c			;8bf0	0d 	. 
	di			;8bf1	f3 	. 
	add a,c			;8bf2	81 	. 
	rst 38h			;8bf3	ff 	. 
	ld (bc),a			;8bf4	02 	. 
	nop			;8bf5	00 	. 
	ld (bc),a			;8bf6	02 	. 
	rst 38h			;8bf7	ff 	. 
	ld a,(bc)			;8bf8	0a 	. 
	nop			;8bf9	00 	. 
	adc a,c			;8bfa	89 	. 
l8bfbh:
	rlca			;8bfb	07 	. 
	nop			;8bfc	00 	. 
	ld bc,00402h		;8bfd	01 02 04 	. . . 
	ex af,af'			;8c00	08 	. 
	jr nc,l8bfbh		;8c01	30 f8 	0 . 
	call m,0f308h		;8c03	fc 08 f3 	. . . 
	ex af,af'			;8c06	08 	. 
	rst 38h			;8c07	ff 	. 
	nop			;8c08	00 	. 
	dec b			;8c09	05 	. 
	nop			;8c0a	00 	. 
	add a,h			;8c0b	84 	. 
	ld bc,00703h		;8c0c	01 03 07 	. . . 
	rrca			;8c0f	0f 	. 
	ld (bc),a			;8c10	02 	. 
	rra			;8c11	1f 	. 
	ld (bc),a			;8c12	02 	. 
	ccf			;8c13	3f 	? 
	inc bc			;8c14	03 	. 
	ld a,a			;8c15	7f 	 
	add a,h			;8c16	84 	. 
	nop			;8c17	00 	. 
	rlca			;8c18	07 	. 
	rra			;8c19	1f 	. 
	ld a,a			;8c1a	7f 	 
	inc d			;8c1b	14 	. 
	rst 38h			;8c1c	ff 	. 
	inc bc			;8c1d	03 	. 
	ld bc,0008dh		;8c1e	01 8d 00 	. . . 
	ld bc,00201h		;8c21	01 01 02 	. . . 
	inc bc			;8c24	03 	. 
	rst 38h			;8c25	ff 	. 
	rst 38h			;8c26	ff 	. 
	ld a,a			;8c27	7f 	 
	rst 38h			;8c28	ff 	. 
	rst 38h			;8c29	ff 	. 
	cp a			;8c2a	bf 	. 
	nop			;8c2b	00 	. 
	ret nz			;8c2c	c0 	. 
	inc b			;8c2d	04 	. 
	rst 38h			;8c2e	ff 	. 
	adc a,h			;8c2f	8c 	. 
	ret nz			;8c30	c0 	. 
	djnz l8c9bh		;8c31	10 68 	. h 
	ret nc			;8c33	d0 	. 
	sbc a,0feh		;8c34	de fe 	. . 
	rst 38h			;8c36	ff 	. 
	rst 38h			;8c37	ff 	. 
	ld a,a			;8c38	7f 	 
	ld e,075h		;8c39	1e 75 	. u 
	jp (hl)			;8c3b	e9 	. 
	inc b			;8c3c	04 	. 
	rst 38h			;8c3d	ff 	. 
	add a,a			;8c3e	87 	. 
	rst 28h			;8c3f	ef 	. 
	xor a			;8c40	af 	. 
	dec b			;8c41	05 	. 
	ld bc,01f00h		;8c42	01 00 1f 	. . . 
	ld a,a			;8c45	7f 	 
	dec b			;8c46	05 	. 
	rst 38h			;8c47	ff 	. 
	add a,h			;8c48	84 	. 
	nop			;8c49	00 	. 
	add a,b			;8c4a	80 	. 
	ret nz			;8c4b	c0 	. 
	ret po			;8c4c	e0 	. 
	inc bc			;8c4d	03 	. 
	ret p			;8c4e	f0 	. 
	dec b			;8c4f	05 	. 
	ret m			;8c50	f8 	. 
	ld (bc),a			;8c51	02 	. 
	call m,03882h		;8c52	fc 82 38 	. . 8 
	sbc a,b			;8c55	98 	. 
	dec b			;8c56	05 	. 
	rlca			;8c57	07 	. 
	inc bc			;8c58	03 	. 
	rrca			;8c59	0f 	. 
	inc bc			;8c5a	03 	. 
	rst 0			;8c5b	c7 	. 
	ld (bc),a			;8c5c	02 	. 
	adc a,(hl)			;8c5d	8e 	. 
	add a,c			;8c5e	81 	. 
	adc a,h			;8c5f	8c 	. 
	ld (bc),a			;8c60	02 	. 
	inc e			;8c61	1c 	. 
	ld (bc),a			;8c62	02 	. 
	rrca			;8c63	0f 	. 
	xor l			;8c64	ad 	. 
	ld c,01eh		;8c65	0e 1e 	. . 
	inc e			;8c67	1c 	. 
	inc e			;8c68	1c 	. 
	jr l8c6bh		;8c69	18 00 	. . 
l8c6bh:
	jr l8c86h		;8c6b	18 19 	. . 
	djnz l8c80h		;8c6d	10 11 	. . 
	jr nc,l8c92h		;8c6f	30 21 	0 ! 
	ld (0a800h),hl		;8c71	22 00 a8 	" . . 
	ld d,b			;8c74	50 	P 
	and c			;8c75	a1 	. 
	ld d,c			;8c76	51 	Q 
	and c			;8c77	a1 	. 
	ld d,c			;8c78	51 	Q 
	and e			;8c79	a3 	. 
	ld d,e			;8c7a	53 	S 
	call p,0d0e9h		;8c7b	f4 e9 d0 	. . . 
	jp (hl)			;8c7e	e9 	. 
	ret nc			;8c7f	d0 	. 
l8c80h:
	jp (hl)			;8c80	e9 	. 
	ret nc			;8c81	d0 	. 
	and d			;8c82	a2 	. 
	and e			;8c83	a3 	. 
	ld b,e			;8c84	43 	C 
	and a			;8c85	a7 	. 
l8c86h:
	ld b,a			;8c86	47 	G 
	and a			;8c87	a7 	. 
	ld b,a			;8c88	47 	G 
	adc a,a			;8c89	8f 	. 
	nop			;8c8a	00 	. 
	ret nc			;8c8b	d0 	. 
	and d			;8c8c	a2 	. 
	ret nc			;8c8d	d0 	. 
	and d			;8c8e	a2 	. 
	ld b,h			;8c8f	44 	D 
	and d			;8c90	a2 	. 
	ld b,h			;8c91	44 	D 
l8c92h:
	add hl,bc			;8c92	09 	. 
	nop			;8c93	00 	. 
	sub b			;8c94	90 	. 
	ret nc			;8c95	d0 	. 
	and d			;8c96	a2 	. 
	ret nc			;8c97	d0 	. 
	and d			;8c98	a2 	. 
	ld b,h			;8c99	44 	D 
	and d			;8c9a	a2 	. 
l8c9bh:
	ld b,h			;8c9b	44 	D 
	and d			;8c9c	a2 	. 
	ld b,b			;8c9d	40 	@ 
	nop			;8c9e	00 	. 
	ld b,b			;8c9f	40 	@ 
	jr nz,l8ce2h		;8ca0	20 40 	  @ 
	jr nc,l8ca4h		;8ca2	30 00 	0 . 
l8ca4h:
	add a,b			;8ca4	80 	. 
	inc b			;8ca5	04 	. 
	nop			;8ca6	00 	. 
	add a,h			;8ca7	84 	. 
	ld bc,00806h		;8ca8	01 06 08 	. . . 
	jr nc,l8cb0h		;8cab	30 03 	0 . 
	nop			;8cad	00 	. 
	adc a,b			;8cae	88 	. 
	ld b,e			;8caf	43 	C 
l8cb0h:
	inc b			;8cb0	04 	. 
	jr l8cd3h		;8cb1	18 20 	.   
	ret nz			;8cb3	c0 	. 
	nop			;8cb4	00 	. 
	ld h,c			;8cb5	61 	a 
	add a,c			;8cb6	81 	. 
	dec b			;8cb7	05 	. 
	ld bc,00009h		;8cb8	01 09 00 	. . . 
	adc a,a			;8cbb	8f 	. 
	ld bc,00c02h		;8cbc	01 02 0c 	. . . 
	djnz l8ce1h		;8cbf	10 20 	.   
	ld b,b			;8cc1	40 	@ 
	add a,b			;8cc2	80 	. 
	ld bc,0150ah		;8cc3	01 0a 15 	. . . 
	ld d,00ch		;8cc6	16 0c 	. . 
	ld a,(de)			;8cc8	1a 	. 
	inc d			;8cc9	14 	. 
	ld a,(00008h)		;8cca	3a 08 00 	: . . 
	add a,h			;8ccd	84 	. 
	ld b,c			;8cce	41 	A 
	add a,d			;8ccf	82 	. 
	inc b			;8cd0	04 	. 
	ex af,af'			;8cd1	08 	. 
	ld (bc),a			;8cd2	02 	. 
l8cd3h:
	djnz l8cd7h		;8cd3	10 02 	. . 
	jr nz,l8cdah		;8cd5	20 03 	  . 
l8cd7h:
	rst 38h			;8cd7	ff 	. 
	add a,l			;8cd8	85 	. 
	ret p			;8cd9	f0 	. 
l8cdah:
	ret po			;8cda	e0 	. 
	and 0e7h		;8cdb	e6 e7 	. . 
	pop hl			;8cdd	e1 	. 
	inc bc			;8cde	03 	. 
sub_8cdfh:
	ld b,b			;8cdf	40 	@ 
	dec b			;8ce0	05 	. 
l8ce1h:
	add a,b			;8ce1	80 	. 
l8ce2h:
	add a,l			;8ce2	85 	. 
	ret p			;8ce3	f0 	. 
	call c,0808ch		;8ce4	dc 8c 80 	. . . 
	pop bc			;8ce7	c1 	. 
	ld b,0ffh		;8ce8	06 ff 	. . 
	add a,l			;8cea	85 	. 
	and 066h		;8ceb	e6 66 	. f 
	ld b,04ch		;8ced	06 4c 	. L 
	ret nz			;8cef	c0 	. 
	inc bc			;8cf0	03 	. 
	rst 38h			;8cf1	ff 	. 
	add a,a			;8cf2	87 	. 
	ld h,c			;8cf3	61 	a 
	ld b,b			;8cf4	40 	@ 
	ld c,h			;8cf5	4c 	L 
	inc c			;8cf6	0c 	. 
	sbc a,h			;8cf7	9c 	. 
	ret nz			;8cf8	c0 	. 
	adc a,b			;8cf9	88 	. 
	inc bc			;8cfa	03 	. 
	sbc a,c			;8cfb	99 	. 
	inc bc			;8cfc	03 	. 
	rst 38h			;8cfd	ff 	. 
	add a,l			;8cfe	85 	. 
	sbc a,b			;8cff	98 	. 
	sbc a,c			;8d00	99 	. 
	add a,c			;8d01	81 	. 
	add a,d			;8d02	82 	. 
	add a,006h		;8d03	c6 06 	. . 
	rst 38h			;8d05	ff 	. 
	adc a,b			;8d06	88 	. 
	jp 089c1h		;8d07	c3 c1 89 	. . . 
	sbc a,c			;8d0a	99 	. 
	sub c			;8d0b	91 	. 
	inc bc			;8d0c	03 	. 
	rlca			;8d0d	07 	. 
	ccf			;8d0e	3f 	? 
	ld (bc),a			;8d0f	02 	. 
	ld a,a			;8d10	7f 	 
	inc b			;8d11	04 	. 
	rst 38h			;8d12	ff 	. 
	adc a,b			;8d13	88 	. 
	djnz l8d2bh		;8d14	10 15 	. . 
	ld a,d			;8d16	7a 	z 
	dec d			;8d17	15 	. 
	ld a,d			;8d18	7a 	z 
	dec d			;8d19	15 	. 
	ld a,d			;8d1a	7a 	z 
	defb 0fdh,007h,001h	;illegal sequence		;8d1b	fd 07 01 	. . . 
	adc a,b			;8d1e	88 	. 
	dec d			;8d1f	15 	. 
	ld a,d			;8d20	7a 	z 
	dec d			;8d21	15 	. 
	ld a,d			;8d22	7a 	z 
	dec d			;8d23	15 	. 
	ld a,d			;8d24	7a 	z 
	dec d			;8d25	15 	. 
	ld a,d			;8d26	7a 	z 
	ex af,af'			;8d27	08 	. 
	ld bc,07f81h		;8d28	01 81 7f 	. .  
l8d2bh:
	rlca			;8d2b	07 	. 
	nop			;8d2c	00 	. 
	add a,c			;8d2d	81 	. 
	rst 38h			;8d2e	ff 	. 
	ld (bc),a			;8d2f	02 	. 
	djnz $+15		;8d30	10 0d 	. . 
	inc de			;8d32	13 	. 
	add a,l			;8d33	85 	. 
	rst 38h			;8d34	ff 	. 
	nop			;8d35	00 	. 
	nop			;8d36	00 	. 
	rst 38h			;8d37	ff 	. 
	nop			;8d38	00 	. 
	ld b,0ffh		;8d39	06 ff 	. . 
	ld (bc),a			;8d3b	02 	. 
	rst 30h			;8d3c	f7 	. 
	add a,h			;8d3d	84 	. 
	xor 0d9h		;8d3e	ee d9 	. . 
	or a			;8d40	b7 	. 
	rst 38h			;8d41	ff 	. 
	ld (bc),a			;8d42	02 	. 
	cp a			;8d43	bf 	. 
	ld (bc),a			;8d44	02 	. 
	ld a,a			;8d45	7f 	 
	add a,h			;8d46	84 	. 
	defb 0fdh,0feh,0fdh	;illegal sequence		;8d47	fd fe fd 	. . . 
	di			;8d4a	f3 	. 
	rlca			;8d4b	07 	. 
	inc de			;8d4c	13 	. 
	ex af,af'			;8d4d	08 	. 
	rst 38h			;8d4e	ff 	. 
	nop			;8d4f	00 	. 
	dec b			;8d50	05 	. 
	nop			;8d51	00 	. 
	add a,h			;8d52	84 	. 
	ld bc,00703h		;8d53	01 03 07 	. . . 
	rrca			;8d56	0f 	. 
	ld (bc),a			;8d57	02 	. 
	rra			;8d58	1f 	. 
	ld (bc),a			;8d59	02 	. 
	ccf			;8d5a	3f 	? 
	inc bc			;8d5b	03 	. 
	ld a,a			;8d5c	7f 	 
	add a,h			;8d5d	84 	. 
	nop			;8d5e	00 	. 
	rlca			;8d5f	07 	. 
	rra			;8d60	1f 	. 
	ld a,a			;8d61	7f 	 
	inc d			;8d62	14 	. 
	rst 38h			;8d63	ff 	. 
	inc b			;8d64	04 	. 
	ld bc,00302h		;8d65	01 02 03 	. . . 
	add a,(hl)			;8d68	86 	. 
	ld bc,0ff00h		;8d69	01 00 ff 	. . . 
	rst 38h			;8d6c	ff 	. 
	ld sp,iy		;8d6d	fd f9 	. . 
	inc bc			;8d6f	03 	. 
	rst 38h			;8d70	ff 	. 
	add a,c			;8d71	81 	. 
	ccf			;8d72	3f 	? 
	dec b			;8d73	05 	. 
	rst 38h			;8d74	ff 	. 
	add a,l			;8d75	85 	. 
	rst 28h			;8d76	ef 	. 
	sub a			;8d77	97 	. 
	cpl			;8d78	2f 	/ 
	rst 38h			;8d79	ff 	. 
	ccf			;8d7a	3f 	? 
	inc bc			;8d7b	03 	. 
	rst 38h			;8d7c	ff 	. 
	add a,e			;8d7d	83 	. 
	rst 28h			;8d7e	ef 	. 
	adc a,d			;8d7f	8a 	. 
	ld d,008h		;8d80	16 08 	. . 
	rst 38h			;8d82	ff 	. 
	add a,e			;8d83	83 	. 
	nop			;8d84	00 	. 
	rra			;8d85	1f 	. 
	ld a,a			;8d86	7f 	 
	dec b			;8d87	05 	. 
	rst 38h			;8d88	ff 	. 
	add a,h			;8d89	84 	. 
	nop			;8d8a	00 	. 
	add a,b			;8d8b	80 	. 
	ret nz			;8d8c	c0 	. 
	ret po			;8d8d	e0 	. 
	inc bc			;8d8e	03 	. 
	ret p			;8d8f	f0 	. 
	dec b			;8d90	05 	. 
	ret m			;8d91	f8 	. 
	inc bc			;8d92	03 	. 
	call m,07c81h		;8d93	fc 81 7c 	. . | 
	ex af,af'			;8d96	08 	. 
	nop			;8d97	00 	. 
	inc bc			;8d98	03 	. 
	jr c,l8d9dh		;8d99	38 02 	8 . 
	ld (hl),c			;8d9b	71 	q 
	add a,c			;8d9c	81 	. 
l8d9dh:
	ld (hl),e			;8d9d	73 	s 
	ld (bc),a			;8d9e	02 	. 
	ex (sp),hl			;8d9f	e3 	. 
	ld (bc),a			;8da0	02 	. 
	nop			;8da1	00 	. 
	ld (bc),a			;8da2	02 	. 
	ld bc,00302h		;8da3	01 02 03 	. . . 
	xor c			;8da6	a9 	. 
	rlca			;8da7	07 	. 
	rra			;8da8	1f 	. 
	rst 20h			;8da9	e7 	. 
	and 0efh		;8daa	e6 ef 	. . 
	xor 0cfh		;8dac	ee cf 	. . 
	sbc a,0ddh		;8dae	de dd 	. . 
	rst 38h			;8db0	ff 	. 
	ld d,a			;8db1	57 	W 
	xor a			;8db2	af 	. 
	ld e,(hl)			;8db3	5e 	^ 
	xor (hl)			;8db4	ae 	. 
	ld e,(hl)			;8db5	5e 	^ 
	xor (hl)			;8db6	ae 	. 
	ld e,h			;8db7	5c 	\ 
	xor h			;8db8	ac 	. 
	dec bc			;8db9	0b 	. 
	ld d,02fh		;8dba	16 2f 	. / 
	ld d,02fh		;8dbc	16 2f 	. / 
	ld d,02fh		;8dbe	16 2f 	. / 
	ld e,l			;8dc0	5d 	] 
	ld e,h			;8dc1	5c 	\ 
	cp h			;8dc2	bc 	. 
	ld e,b			;8dc3	58 	X 
	cp b			;8dc4	b8 	. 
	ld e,b			;8dc5	58 	X 
	cp b			;8dc6	b8 	. 
	ld (hl),b			;8dc7	70 	p 
	rst 38h			;8dc8	ff 	. 
	cpl			;8dc9	2f 	/ 
	ld e,l			;8dca	5d 	] 
	cpl			;8dcb	2f 	/ 
	ld e,l			;8dcc	5d 	] 
	cp e			;8dcd	bb 	. 
	ld e,l			;8dce	5d 	] 
	cp e			;8dcf	bb 	. 
	add hl,bc			;8dd0	09 	. 
	rst 38h			;8dd1	ff 	. 
	sub b			;8dd2	90 	. 
	cpl			;8dd3	2f 	/ 
	ld e,l			;8dd4	5d 	] 
	cpl			;8dd5	2f 	/ 
	ld e,l			;8dd6	5d 	] 
	cp e			;8dd7	bb 	. 
	ld e,l			;8dd8	5d 	] 
	cp e			;8dd9	bb 	. 
	ld e,l			;8dda	5d 	] 
	cp h			;8ddb	bc 	. 
	call m,0debch		;8ddc	fc bc de 	. . . 
	cp (hl)			;8ddf	be 	. 
	adc a,0feh		;8de0	ce fe 	. . 
	ld a,(hl)			;8de2	7e 	~ 
	inc b			;8de3	04 	. 
	nop			;8de4	00 	. 
	adc a,a			;8de5	8f 	. 
	ld (bc),a			;8de6	02 	. 
	add hl,bc			;8de7	09 	. 
	scf			;8de8	37 	7 
	rst 8			;8de9	cf 	. 
	nop			;8dea	00 	. 
	nop			;8deb	00 	. 
	rrca			;8dec	0f 	. 
	inc a			;8ded	3c 	< 
	ei			;8dee	fb 	. 
	rst 20h			;8def	e7 	. 
	rst 18h			;8df0	df 	. 
	ccf			;8df1	3f 	? 
	nop			;8df2	00 	. 
	sbc a,(hl)			;8df3	9e 	. 
	ld a,(hl)			;8df4	7e 	~ 
	dec b			;8df5	05 	. 
	cp 006h		;8df6	fe 06 	. . 
	nop			;8df8	00 	. 
	sub d			;8df9	92 	. 
	ld bc,00103h		;8dfa	01 03 01 	. . . 
	ld b,00dh		;8dfd	06 0d 	. . 
	inc sp			;8dff	33 	3 
	ld l,a			;8e00	6f 	o 
	rst 18h			;8e01	df 	. 
	cp a			;8e02	bf 	. 
	ld a,a			;8e03	7f 	 
	ld b,005h		;8e04	06 05 	. . 
l8e06h:
	ld a,(bc)			;8e06	0a 	. 
	add hl,bc			;8e07	09 	. 
	inc sp			;8e08	33 	3 
	dec h			;8e09	25 	% 
	ld l,e			;8e0a	6b 	k 
	ld b,l			;8e0b	45 	E 
	ex af,af'			;8e0c	08 	. 
	rst 38h			;8e0d	ff 	. 
	add a,h			;8e0e	84 	. 
	cp (hl)			;8e0f	be 	. 
	ld a,l			;8e10	7d 	} 
	ei			;8e11	fb 	. 
	rst 30h			;8e12	f7 	. 
	ld (bc),a			;8e13	02 	. 
	rst 28h			;8e14	ef 	. 
	ld (bc),a			;8e15	02 	. 
	rst 18h			;8e16	df 	. 
	ex af,af'			;8e17	08 	. 
	nop			;8e18	00 	. 
	inc bc			;8e19	03 	. 
	cp a			;8e1a	bf 	. 
	dec b			;8e1b	05 	. 
	ld a,a			;8e1c	7f 	 
	dec bc			;8e1d	0b 	. 
	nop			;8e1e	00 	. 
	add a,c			;8e1f	81 	. 
	ld b,b			;8e20	40 	@ 
	dec bc			;8e21	0b 	. 
	nop			;8e22	00 	. 
	add a,c			;8e23	81 	. 
	ex af,af'			;8e24	08 	. 
	inc c			;8e25	0c 	. 
	nop			;8e26	00 	. 
	add a,c			;8e27	81 	. 
	add a,b			;8e28	80 	. 
	ld b,000h		;8e29	06 00 	. . 
	add a,c			;8e2b	81 	. 
	add a,b			;8e2c	80 	. 
	rlca			;8e2d	07 	. 
	nop			;8e2e	00 	. 
	ld (bc),a			;8e2f	02 	. 
	jr c,$+6		;8e30	38 04 	8 . 
	nop			;8e32	00 	. 
	adc a,b			;8e33	88 	. 
	rst 28h			;8e34	ef 	. 
	jp pe,0ea85h		;8e35	ea 85 ea 	. . . 
	add a,l			;8e38	85 	. 
	jp pe,00285h		;8e39	ea 85 02 	. . . 
	rlca			;8e3c	07 	. 
	cp 088h		;8e3d	fe 88 	. . 
	jp pe,0ea85h		;8e3f	ea 85 ea 	. . . 
	add a,l			;8e42	85 	. 
	jp pe,0ea85h		;8e43	ea 85 ea 	. . . 
	add a,l			;8e46	85 	. 
	ex af,af'			;8e47	08 	. 
	cp 081h		;8e48	fe 81 	. . 
	add a,b			;8e4a	80 	. 
	rlca			;8e4b	07 	. 
	rst 38h			;8e4c	ff 	. 
	add a,c			;8e4d	81 	. 
	nop			;8e4e	00 	. 
	rrca			;8e4f	0f 	. 
	ret po			;8e50	e0 	. 
	inc b			;8e51	04 	. 
	nop			;8e52	00 	. 
	dec bc			;8e53	0b 	. 
	rst 38h			;8e54	ff 	. 
	adc a,d			;8e55	8a 	. 
	ret m			;8e56	f8 	. 
	rst 38h			;8e57	ff 	. 
	cp 0fdh		;8e58	fe fd 	. . 
	ei			;8e5a	fb 	. 
	rst 30h			;8e5b	f7 	. 
	rst 8			;8e5c	cf 	. 
	rlca			;8e5d	07 	. 
	inc bc			;8e5e	03 	. 
	nop			;8e5f	00 	. 
	rlca			;8e60	07 	. 
	ret po			;8e61	e0 	. 
	ex af,af'			;8e62	08 	. 
	nop			;8e63	00 	. 
	nop			;8e64	00 	. 
	add a,e			;8e65	83 	. 
	nop			;8e66	00 	. 
	rlca			;8e67	07 	. 
	rra			;8e68	1f 	. 
	ld (bc),a			;8e69	02 	. 
	ccf			;8e6a	3f 	? 
	inc bc			;8e6b	03 	. 
	ld a,a			;8e6c	7f 	 
	adc a,b			;8e6d	88 	. 
	nop			;8e6e	00 	. 
	ret po			;8e6f	e0 	. 
	ret m			;8e70	f8 	. 
	call m,0f6fch		;8e71	fc fc f6 	. . . 
	jp p,003e2h		;8e74	f2 e2 03 	. . . 
	ld a,a			;8e77	7f 	 
	ld (bc),a			;8e78	02 	. 
	jr c,l8e06h		;8e79	38 8b 	8 . 
	inc e			;8e7b	1c 	. 
	rlca			;8e7c	07 	. 
	nop			;8e7d	00 	. 
	jp po,006c6h		;8e7e	e2 c6 06 	. . . 
	inc c			;8e81	0c 	. 
	inc e			;8e82	1c 	. 
	ld a,b			;8e83	78 	x 
	ret po			;8e84	e0 	. 
	nop			;8e85	00 	. 
	nop			;8e86	00 	. 
	adc a,l			;8e87	8d 	. 
	rlca			;8e88	07 	. 
	rra			;8e89	1f 	. 
	jr c,l8efch		;8e8a	38 70 	8 p 
	ld h,c			;8e8c	61 	a 
	rst 20h			;8e8d	e7 	. 
	rst 38h			;8e8e	ff 	. 
	rst 8			;8e8f	cf 	. 
	ret po			;8e90	e0 	. 
	ret m			;8e91	f8 	. 
	ld a,h			;8e92	7c 	| 
	ld a,(hl)			;8e93	7e 	~ 
	cp 003h		;8e94	fe 03 	. . 
	rst 38h			;8e96	ff 	. 
	add a,c			;8e97	81 	. 
	rst 8			;8e98	cf 	. 
	ld (bc),a			;8e99	02 	. 
	rst 38h			;8e9a	ff 	. 
	ld (bc),a			;8e9b	02 	. 
	ld a,a			;8e9c	7f 	 
	add a,e			;8e9d	83 	. 
	ccf			;8e9e	3f 	? 
	rra			;8e9f	1f 	. 
	rlca			;8ea0	07 	. 
	inc bc			;8ea1	03 	. 
	rst 38h			;8ea2	ff 	. 
	ld (bc),a			;8ea3	02 	. 
	cp 083h		;8ea4	fe 83 	. . 
	call m,0e0f8h		;8ea6	fc f8 e0 	. . . 
	nop			;8ea9	00 	. 
l8eaah:
	add a,e			;8eaa	83 	. 
	rlca			;8eab	07 	. 
	jr l8eceh		;8eac	18 20 	.   
	ld (bc),a			;8eae	02 	. 
	ld b,b			;8eaf	40 	@ 
	inc bc			;8eb0	03 	. 
	add a,b			;8eb1	80 	. 
	add a,e			;8eb2	83 	. 
	ret po			;8eb3	e0 	. 
	jr $+6		;8eb4	18 04 	. . 
	ld (bc),a			;8eb6	02 	. 
	ld (bc),a			;8eb7	02 	. 
	inc bc			;8eb8	03 	. 
	ld bc,l8003h		;8eb9	01 03 80 	. . . 
	ld (bc),a			;8ebc	02 	. 
	ld b,b			;8ebd	40 	@ 
	add a,e			;8ebe	83 	. 
	jr nz,$+26		;8ebf	20 18 	  . 
	rlca			;8ec1	07 	. 
	inc bc			;8ec2	03 	. 
	ld bc,00202h		;8ec3	01 02 02 	. . . 
	add a,e			;8ec6	83 	. 
	inc b			;8ec7	04 	. 
	jr l8eaah		;8ec8	18 e0 	. . 
	nop			;8eca	00 	. 
	jr nz,l8ecdh		;8ecb	20 00 	  . 
l8ecdh:
	nop			;8ecd	00 	. 
l8eceh:
	add a,h			;8ece	84 	. 
	nop			;8ecf	00 	. 
	rlca			;8ed0	07 	. 
	rra			;8ed1	1f 	. 
	ccf			;8ed2	3f 	? 
	inc b			;8ed3	04 	. 
	ld a,a			;8ed4	7f 	 
	adc a,b			;8ed5	88 	. 
	nop			;8ed6	00 	. 
	ret p			;8ed7	f0 	. 
	call m,0fefch		;8ed8	fc fc fe 	. . . 
	add a,0fah		;8edb	c6 fa 	. . 
	cp 003h		;8edd	fe 03 	. . 
	ld a,a			;8edf	7f 	 
	ld (bc),a			;8ee0	02 	. 
	ccf			;8ee1	3f 	? 
	adc a,(hl)			;8ee2	8e 	. 
	rra			;8ee3	1f 	. 
	inc b			;8ee4	04 	. 
	nop			;8ee5	00 	. 
	call m,0fefeh		;8ee6	fc fe fe 	. . . 
	ld a,(hl)			;8ee9	7e 	~ 
	inc a			;8eea	3c 	< 
	cp b			;8eeb	b8 	. 
	ret po			;8eec	e0 	. 
	nop			;8eed	00 	. 
	ld c,070h		;8eee	0e 70 	. p 
	ld b,b			;8ef0	40 	@ 
	ld (bc),a			;8ef1	02 	. 
	add a,b			;8ef2	80 	. 
	inc b			;8ef3	04 	. 
	nop			;8ef4	00 	. 
	add a,c			;8ef5	81 	. 
	jr c,l8efah		;8ef6	38 02 	8 . 
	jr nz,l8efch		;8ef8	20 02 	  . 
l8efah:
	ld b,b			;8efa	40 	@ 
	add a,l			;8efb	85 	. 
l8efch:
	nop			;8efc	00 	. 
	ld b,b			;8efd	40 	@ 
	nop			;8efe	00 	. 
	nop			;8eff	00 	. 
	ret pe			;8f00	e8 	. 
	rlca			;8f01	07 	. 
	nop			;8f02	00 	. 
	sbc a,d			;8f03	9a 	. 
	inc bc			;8f04	03 	. 
	inc b			;8f05	04 	. 
l8f06h:
	nop			;8f06	00 	. 
	djnz l8f09h		;8f07	10 00 	. . 
l8f09h:
	nop			;8f09	00 	. 
	inc e			;8f0a	1c 	. 
	ld a,(hl)			;8f0b	7e 	~ 
	ld a,(hl)			;8f0c	7e 	~ 
	ld a,a			;8f0d	7f 	 
	dec a			;8f0e	3d 	= 
	dec l			;8f0f	2d 	- 
	ld l,(hl)			;8f10	6e 	n 
	inc a			;8f11	3c 	< 
	jr l8f92h		;8f12	18 7e 	. ~ 
	cp 0fah		;8f14	fe fa 	. . 
	ld a,h			;8f16	7c 	| 
	ld a,h			;8f17	7c 	| 
	jr c,l8f06h		;8f18	38 ec 	8 . 
	ld sp,0e071h		;8f1a	31 71 e0 	1 q . 
	ex af,af'			;8f1d	08 	. 
	inc b			;8f1e	04 	. 
	nop			;8f1f	00 	. 
	sub a			;8f20	97 	. 
	ret m			;8f21	f8 	. 
	cp 0e6h		;8f22	fe e6 	. . 
	ret nz			;8f24	c0 	. 
	ex af,af'			;8f25	08 	. 
	jr nc,l8f48h		;8f26	30 20 	0   
	nop			;8f28	00 	. 
	inc a			;8f29	3c 	< 
	ld a,a			;8f2a	7f 	 
	ld a,a			;8f2b	7f 	 
	ld e,(hl)			;8f2c	5e 	^ 
	ld hl,(01826h)		;8f2d	2a 26 18 	* & . 
	nop			;8f30	00 	. 
	call m,07cfeh		;8f31	fc fe 7c 	. . | 
	ld l,h			;8f34	6c 	l 
	inc a			;8f35	3c 	< 
	ld d,b			;8f36	50 	P 
	jr nz,l8f3bh		;8f37	20 02 	  . 
	nop			;8f39	00 	. 
	ld (bc),a			;8f3a	02 	. 
l8f3bh:
	ld bc,00005h		;8f3b	01 05 00 	. . . 
	add a,c			;8f3e	81 	. 
	ret po			;8f3f	e0 	. 
	rlca			;8f40	07 	. 
	nop			;8f41	00 	. 
	add a,h			;8f42	84 	. 
	inc e			;8f43	1c 	. 
	jr nz,l8f66h		;8f44	20 20 	    
	djnz l8f4dh		;8f46	10 05 	. . 
l8f48h:
	nop			;8f48	00 	. 
	add a,l			;8f49	85 	. 
	jr c,l8fach		;8f4a	38 60 	8 ` 
	ld b,b			;8f4c	40 	@ 
l8f4dh:
	nop			;8f4d	00 	. 
	ld b,b			;8f4e	40 	@ 
	inc bc			;8f4f	03 	. 
	nop			;8f50	00 	. 
	add a,l			;8f51	85 	. 
	inc (hl)			;8f52	34 	4 
	ld h,b			;8f53	60 	` 
	ld b,b			;8f54	40 	@ 
	nop			;8f55	00 	. 
	ld b,b			;8f56	40 	@ 
	inc bc			;8f57	03 	. 
	nop			;8f58	00 	. 
	add a,c			;8f59	81 	. 
	jr c,l8f5eh		;8f5a	38 02 	8 . 
	jr nz,l8f60h		;8f5c	20 02 	  . 
l8f5eh:
	ld b,b			;8f5e	40 	@ 
	add a,(hl)			;8f5f	86 	. 
l8f60h:
	nop			;8f60	00 	. 
	ld b,b			;8f61	40 	@ 
	nop			;8f62	00 	. 
	nop			;8f63	00 	. 
	ld l,b			;8f64	68 	h 
	ld b,b			;8f65	40 	@ 
l8f66h:
	ld (bc),a			;8f66	02 	. 
	add a,b			;8f67	80 	. 
	inc b			;8f68	04 	. 
	nop			;8f69	00 	. 
	add a,h			;8f6a	84 	. 
	inc bc			;8f6b	03 	. 
	inc b			;8f6c	04 	. 
	nop			;8f6d	00 	. 
	djnz l8f74h		;8f6e	10 04 	. . 
	nop			;8f70	00 	. 
	add a,c			;8f71	81 	. 
	ret pe			;8f72	e8 	. 
	rlca			;8f73	07 	. 
l8f74h:
	nop			;8f74	00 	. 
	add a,h			;8f75	84 	. 
	inc bc			;8f76	03 	. 
	inc b			;8f77	04 	. 
	nop			;8f78	00 	. 
	djnz l8f7dh		;8f79	10 02 	. . 
	nop			;8f7b	00 	. 
	nop			;8f7c	00 	. 
l8f7dh:
	add a,e			;8f7d	83 	. 
	rra			;8f7e	1f 	. 
	jr nz,$+73		;8f7f	20 47 	  G 
	ld (bc),a			;8f81	02 	. 
	sbc a,a			;8f82	9f 	. 
	inc bc			;8f83	03 	. 
	cp a			;8f84	bf 	. 
	sbc a,c			;8f85	99 	. 
	call m,0f202h		;8f86	fc 02 f2 	. . . 
l8f89h:
	ld sp,hl			;8f89	f9 	. 
	pop de			;8f8a	d1 	. 
	ld bc,0f9c1h		;8f8b	01 c1 f9 	. . . 
	cp a			;8f8e	bf 	. 
	sbc a,a			;8f8f	9f 	. 
	sbc a,(hl)			;8f90	9e 	. 
	sbc a,(hl)			;8f91	9e 	. 
l8f92h:
	ld b,h			;8f92	44 	D 
	ld b,b			;8f93	40 	@ 
	jr nz,l8fb5h		;8f94	20 1f 	  . 
	ld sp,hl			;8f96	f9 	. 
	add hl,sp			;8f97	39 	9 
	add hl,sp			;8f98	39 	9 
	ld de,00201h		;8f99	11 01 02 	. . . 
	inc b			;8f9c	04 	. 
	ret m			;8f9d	f8 	. 
	pop af			;8f9e	f1 	. 
	ld (bc),a			;8f9f	02 	. 
	add a,c			;8fa0	81 	. 
	inc bc			;8fa1	03 	. 
	nop			;8fa2	00 	. 
	add a,h			;8fa3	84 	. 
	add a,b			;8fa4	80 	. 
	add a,c			;8fa5	81 	. 
	rst 38h			;8fa6	ff 	. 
	rst 0			;8fa7	c7 	. 
	ld (bc),a			;8fa8	02 	. 
	pop bc			;8fa9	c1 	. 
	ld (bc),a			;8faa	02 	. 
	add a,c			;8fab	81 	. 
l8fach:
	add a,(hl)			;8fac	86 	. 
	pop bc			;8fad	c1 	. 
	add a,c			;8fae	81 	. 
	jp 007ffh		;8faf	c3 ff 07 	. . . 
	ld bc,00003h		;8fb2	01 03 00 	. . . 
l8fb5h:
	cp l			;8fb5	bd 	. 
	rrca			;8fb6	0f 	. 
	inc bc			;8fb7	03 	. 
	add a,a			;8fb8	87 	. 
	add a,h			;8fb9	84 	. 
	ret z			;8fba	c8 	. 
	ret p			;8fbb	f0 	. 
	ret nz			;8fbc	c0 	. 
	ret nz			;8fbd	c0 	. 
	ret p			;8fbe	f0 	. 
	ex (sp),hl			;8fbf	e3 	. 
	add a,c			;8fc0	81 	. 
	add a,c			;8fc1	81 	. 
	add a,b			;8fc2	80 	. 
	jp nz,09152h		;8fc3	c2 52 91 	. R . 
	jp l81e7h		;8fc6	c3 e7 81 	. . . 
	ld bc,l8305h		;8fc9	01 05 83 	. . . 
	add a,e			;8fcc	83 	. 
	rst 0			;8fcd	c7 	. 
	inc de			;8fce	13 	. 
	adc a,08eh		;8fcf	ce 8e 	. . 
	rra			;8fd1	1f 	. 
	rlca			;8fd2	07 	. 
	ld bc,00000h		;8fd3	01 00 00 	. . . 
	rrca			;8fd6	0f 	. 
	rlca			;8fd7	07 	. 
	ld bc,03f19h		;8fd8	01 19 3f 	. . ? 
	jp p,0c0c0h		;8fdb	f2 c0 c0 	. . . 
	ret p			;8fde	f0 	. 
	jp l8080h		;8fdf	c3 80 80 	. . . 
	and c			;8fe2	a1 	. 
sub_8fe3h:
	ld d,l			;8fe3	55 	U 
	ld e,c			;8fe4	59 	Y 
	daa			;8fe5	27 	' 
	rra			;8fe6	1f 	. 
	inc bc			;8fe7	03 	. 
	ld bc,09383h		;8fe8	01 83 93 	. . . 
	jp 0d9adh		;8feb	c3 ad d9 	. . . 
	ex (sp),hl			;8fee	e3 	. 
	rlca			;8fef	07 	. 
	ld (bc),a			;8ff0	02 	. 
	ld (bc),a			;8ff1	02 	. 
	ld bc,00004h		;8ff2	01 04 00 	. . . 
	adc a,c			;8ff5	89 	. 
	dec de			;8ff6	1b 	. 
	rlca			;8ff7	07 	. 
	inc bc			;8ff8	03 	. 
	add a,c			;8ff9	81 	. 
	ld h,e			;8ffa	63 	c 
	rra			;8ffb	1f 	. 
	rlca			;8ffc	07 	. 
	ld bc,002e1h		;8ffd	01 e1 02 	. . . 
	ld b,b			;9000	40 	@ 
	ld (bc),a			;9001	02 	. 
	jr nz,l8f89h		;9002	20 85 	  . 
	djnz l9017h		;9004	10 11 	. . 
	dec bc			;9006	0b 	. 
	rst 38h			;9007	ff 	. 
	jp l8105h		;9008	c3 05 81 	. . . 
	add a,h			;900b	84 	. 
	ex (sp),hl			;900c	e3 	. 
	ld a,a			;900d	7f 	 
	ld b,c			;900e	41 	A 
	add a,c			;900f	81 	. 
	inc b			;9010	04 	. 
	add a,b			;9011	80 	. 
	add a,e			;9012	83 	. 
	add a,c			;9013	81 	. 
	rst 38h			;9014	ff 	. 
	rst 0			;9015	c7 	. 
	ld (bc),a			;9016	02 	. 
l9017h:
	pop bc			;9017	c1 	. 
	ld (bc),a			;9018	02 	. 
	add a,c			;9019	81 	. 
	and d			;901a	a2 	. 
	pop bc			;901b	c1 	. 
	add a,c			;901c	81 	. 
	ld b,e			;901d	43 	C 
	ld a,a			;901e	7f 	 
	rlca			;901f	07 	. 
	add a,c			;9020	81 	. 
	nop			;9021	00 	. 
	nop			;9022	00 	. 
	add a,b			;9023	80 	. 
	ld c,a			;9024	4f 	O 
	inc bc			;9025	03 	. 
	add a,a			;9026	87 	. 
	add a,h			;9027	84 	. 
	ret z			;9028	c8 	. 
	ret p			;9029	f0 	. 
	ret nz			;902a	c0 	. 
	ret nz			;902b	c0 	. 
	ret p			;902c	f0 	. 
	jp 007ffh		;902d	c3 ff 07 	. . . 
	ld bc,00000h		;9030	01 00 00 	. . . 
	ld bc,003feh		;9033	01 fe 03 	. . . 
	add a,a			;9036	87 	. 
	add a,h			;9037	84 	. 
	ret z			;9038	c8 	. 
	ret p			;9039	f0 	. 
	ret po			;903a	e0 	. 
	and b			;903b	a0 	. 
	rra			;903c	1f 	. 
	nop			;903d	00 	. 
	add a,h			;903e	84 	. 
	nop			;903f	00 	. 
	ld b,01fh		;9040	06 1f 	. . 
	ccf			;9042	3f 	? 
	inc b			;9043	04 	. 
	ld a,a			;9044	7f 	 
l9045h:
	sbc a,e			;9045	9b 	. 
	nop			;9046	00 	. 
	jr nc,l9045h		;9047	30 fc 	0 . 
	call m,0c6feh		;9049	fc fe c6 	. . . 
	jp m,07ffeh		;904c	fa fe 7f 	. .  
	ld a,a			;904f	7f 	 
	ld a,(hl)			;9050	7e 	~ 
	ccf			;9051	3f 	? 
	ccf			;9052	3f 	? 
	rra			;9053	1f 	. 
	inc b			;9054	04 	. 
	nop			;9055	00 	. 
	call m,0fe7eh		;9056	fc 7e fe 	. ~ . 
	ld a,(hl)			;9059	7e 	~ 
	inc a			;905a	3c 	< 
	cp b			;905b	b8 	. 
	ret po			;905c	e0 	. 
	nop			;905d	00 	. 
	ld c,070h		;905e	0e 70 	. p 
	ld b,b			;9060	40 	@ 
	ld (bc),a			;9061	02 	. 
	add a,b			;9062	80 	. 
	inc b			;9063	04 	. 
	nop			;9064	00 	. 
	add a,c			;9065	81 	. 
	jr c,l906ah		;9066	38 02 	8 . 
	jr nz,l906ch		;9068	20 02 	  . 
l906ah:
	ld b,b			;906a	40 	@ 
	add a,l			;906b	85 	. 
l906ch:
	nop			;906c	00 	. 
	ld b,b			;906d	40 	@ 
	nop			;906e	00 	. 
	nop			;906f	00 	. 
	ret pe			;9070	e8 	. 
	rlca			;9071	07 	. 
	nop			;9072	00 	. 
	add a,h			;9073	84 	. 
	inc bc			;9074	03 	. 
	inc b			;9075	04 	. 
	nop			;9076	00 	. 
	djnz l907bh		;9077	10 02 	. . 
	nop			;9079	00 	. 
	dec b			;907a	05 	. 
l907bh:
	rst 38h			;907b	ff 	. 
	add a,e			;907c	83 	. 
	ld a,a			;907d	7f 	 
	rst 38h			;907e	ff 	. 
	ld a,a			;907f	7f 	 
	inc b			;9080	04 	. 
	rst 38h			;9081	ff 	. 
	inc b			;9082	04 	. 
	cp 084h		;9083	fe 84 	. . 
	ld a,a			;9085	7f 	 
	ld a,e			;9086	7b 	{ 
	dec de			;9087	1b 	. 
	inc bc			;9088	03 	. 
	inc b			;9089	04 	. 
	nop			;908a	00 	. 
	inc bc			;908b	03 	. 
	rst 38h			;908c	ff 	. 
	add a,d			;908d	82 	. 
	rst 30h			;908e	f7 	. 
	jp nz,00003h		;908f	c2 03 00 	. . . 
	inc b			;9092	04 	. 
	rst 38h			;9093	ff 	. 
	ld (bc),a			;9094	02 	. 
	ld a,a			;9095	7f 	 
	add a,d			;9096	82 	. 
	ld a,01ch		;9097	3e 1c 	> . 
	inc b			;9099	04 	. 
	rst 38h			;909a	ff 	. 
	add a,l			;909b	85 	. 
	cp 0fch		;909c	fe fc 	. . 
	ld a,b			;909e	78 	x 
	ld h,b			;909f	60 	` 
	nop			;90a0	00 	. 
	ld (bc),a			;90a1	02 	. 
	ld bc,00005h		;90a2	01 05 00 	. . . 
	add a,c			;90a5	81 	. 
	ret po			;90a6	e0 	. 
	rlca			;90a7	07 	. 
	nop			;90a8	00 	. 
	add a,h			;90a9	84 	. 
	inc e			;90aa	1c 	. 
	jr nz,l90cdh		;90ab	20 20 	    
	djnz l90b4h		;90ad	10 05 	. . 
	nop			;90af	00 	. 
	add a,l			;90b0	85 	. 
	jr c,l9113h		;90b1	38 60 	8 ` 
	ld b,b			;90b3	40 	@ 
l90b4h:
	nop			;90b4	00 	. 
	ld b,b			;90b5	40 	@ 
	inc bc			;90b6	03 	. 
	nop			;90b7	00 	. 
sub_90b8h:
	add a,l			;90b8	85 	. 
	inc (hl)			;90b9	34 	4 
	ld h,b			;90ba	60 	` 
	ld b,b			;90bb	40 	@ 
	nop			;90bc	00 	. 
	ld b,b			;90bd	40 	@ 
	inc c			;90be	0c 	. 
	nop			;90bf	00 	. 
	add a,d			;90c0	82 	. 
	ld l,b			;90c1	68 	h 
	ld b,b			;90c2	40 	@ 
	ld (bc),a			;90c3	02 	. 
	add a,b			;90c4	80 	. 
	inc c			;90c5	0c 	. 
	nop			;90c6	00 	. 
	add a,c			;90c7	81 	. 
	ret pe			;90c8	e8 	. 
	rlca			;90c9	07 	. 
	nop			;90ca	00 	. 
	add a,h			;90cb	84 	. 
	inc bc			;90cc	03 	. 
l90cdh:
	inc b			;90cd	04 	. 
	nop			;90ce	00 	. 
	djnz l90d3h		;90cf	10 02 	. . 
	nop			;90d1	00 	. 
	nop			;90d2	00 	. 
l90d3h:
	add a,h			;90d3	84 	. 
	rra			;90d4	1f 	. 
	add hl,sp			;90d5	39 	9 
	ld h,b			;90d6	60 	` 
	ret nz			;90d7	c0 	. 
	inc b			;90d8	04 	. 
	add a,b			;90d9	80 	. 
	sbc a,e			;90da	9b 	. 
	call m,002ceh		;90db	fc ce 02 	. . . 
	inc bc			;90de	03 	. 
	ld bc,00539h		;90df	01 39 05 	. 9 . 
	ld bc,l8080h		;90e2	01 80 80 	. . . 
	add a,c			;90e5	81 	. 
	ret nz			;90e6	c0 	. 
	ld b,b			;90e7	40 	@ 
	ld h,b			;90e8	60 	` 
	dec sp			;90e9	3b 	; 
	rra			;90ea	1f 	. 
	inc bc			;90eb	03 	. 
	add a,c			;90ec	81 	. 
	ld bc,0c381h		;90ed	01 81 c3 	. . . 
	ld b,(hl)			;90f0	46 	F 
	inc e			;90f1	1c 	. 
	ret m			;90f2	f8 	. 
	pop af			;90f3	f1 	. 
	adc a,a			;90f4	8f 	. 
	cp a			;90f5	bf 	. 
	ld (bc),a			;90f6	02 	. 
	ld a,a			;90f7	7f 	 
	inc b			;90f8	04 	. 
	rst 38h			;90f9	ff 	. 
	add a,c			;90fa	81 	. 
	rst 0			;90fb	c7 	. 
	ld (bc),a			;90fc	02 	. 
	rst 18h			;90fd	df 	. 
	ld (bc),a			;90fe	02 	. 
	cp a			;90ff	bf 	. 
	add a,l			;9100	85 	. 
	rst 38h			;9101	ff 	. 
	cp a			;9102	bf 	. 
	rst 38h			;9103	ff 	. 
	rst 38h			;9104	ff 	. 
	rla			;9105	17 	. 
	rlca			;9106	07 	. 
	rst 38h			;9107	ff 	. 
	add a,h			;9108	84 	. 
	call m,0fffbh		;9109	fc fb ff 	. . . 
	rst 28h			;910c	ef 	. 
	ld h,0ffh		;910d	26 ff 	& . 
	ld (bc),a			;910f	02 	. 
	ld a,a			;9110	7f 	 
	add a,d			;9111	82 	. 
	ccf			;9112	3f 	? 
l9113h:
	rra			;9113	1f 	. 
	ex af,af'			;9114	08 	. 
	rst 38h			;9115	ff 	. 
	add a,h			;9116	84 	. 
	rlca			;9117	07 	. 
	ld (bc),a			;9118	02 	. 
	ld (bc),a			;9119	02 	. 
	ld bc,00004h		;911a	01 04 00 	. . . 
	add a,c			;911d	81 	. 
	rra			;911e	1f 	. 
	inc bc			;911f	03 	. 
	rst 38h			;9120	ff 	. 
	sbc a,d			;9121	9a 	. 
	ld a,a			;9122	7f 	 
	rra			;9123	1f 	. 
	rlca			;9124	07 	. 
	ld bc,05fe3h		;9125	01 e3 5f 	. . _ 
	ld e,a			;9128	5f 	_ 
	cpl			;9129	2f 	/ 
	ccf			;912a	3f 	? 
	rra			;912b	1f 	. 
	rra			;912c	1f 	. 
	rrca			;912d	0f 	. 
	rst 38h			;912e	ff 	. 
	rst 0			;912f	c7 	. 
	sbc a,a			;9130	9f 	. 
	cp a			;9131	bf 	. 
	rst 38h			;9132	ff 	. 
	cp a			;9133	bf 	. 
	rst 38h			;9134	ff 	. 
	rst 38h			;9135	ff 	. 
	ld a,a			;9136	7f 	 
	ld c,e			;9137	4b 	K 
	sbc a,a			;9138	9f 	. 
	cp a			;9139	bf 	. 
	rst 38h			;913a	ff 	. 
	cp a			;913b	bf 	. 
	ld a,(bc)			;913c	0a 	. 
	rst 38h			;913d	ff 	. 
	ld (bc),a			;913e	02 	. 
	ld a,a			;913f	7f 	 
	add a,(hl)			;9140	86 	. 
	rla			;9141	17 	. 
	cp a			;9142	bf 	. 
	ld a,a			;9143	7f 	 
	ld a,a			;9144	7f 	 
	rst 38h			;9145	ff 	. 
	ld a,a			;9146	7f 	 
	ld a,(bc)			;9147	0a 	. 
	rst 38h			;9148	ff 	. 
	add a,c			;9149	81 	. 
	rla			;914a	17 	. 
	inc b			;914b	04 	. 
	rst 38h			;914c	ff 	. 
	adc a,c			;914d	89 	. 
	cp 0ffh		;914e	fe ff 	. . 
	rst 38h			;9150	ff 	. 
	call m,0fffbh		;9151	fc fb ff 	. . . 
	rst 28h			;9154	ef 	. 
	cp a			;9155	bf 	. 
	rra			;9156	1f 	. 
	nop			;9157	00 	. 
	add a,e			;9158	83 	. 
	rra			;9159	1f 	. 
	ccf			;915a	3f 	? 
	ld a,a			;915b	7f 	 
	dec b			;915c	05 	. 
	rst 38h			;915d	ff 	. 
	add a,e			;915e	83 	. 
	ret m			;915f	f8 	. 
	call m,009feh		;9160	fc fe 09 	. . . 
	rst 38h			;9163	ff 	. 
	ld (bc),a			;9164	02 	. 
	ld a,a			;9165	7f 	 
	add a,d			;9166	82 	. 
	ccf			;9167	3f 	? 
	rra			;9168	1f 	. 
	inc bc			;9169	03 	. 
	rst 38h			;916a	ff 	. 
	inc bc			;916b	03 	. 
	cp 086h		;916c	fe 86 	. . 
	call m,000f8h		;916e	fc f8 00 	. . . 
	rlca			;9171	07 	. 
	rra			;9172	1f 	. 
	ccf			;9173	3f 	? 
	inc b			;9174	04 	. 
	ld a,a			;9175	7f 	 
	adc a,b			;9176	88 	. 
	nop			;9177	00 	. 
	ret m			;9178	f8 	. 
	call m,0fefch		;9179	fc fc fe 	. . . 
	add a,0fah		;917c	c6 fa 	. . 
	cp 003h		;917e	fe 03 	. . 
	ld a,a			;9180	7f 	 
	inc bc			;9181	03 	. 
	ccf			;9182	3f 	? 
	adc a,h			;9183	8c 	. 
	ld e,000h		;9184	1e 00 	. . 
	call m,0fefeh		;9186	fc fe fe 	. . . 
l9189h:
	ld a,(hl)			;9189	7e 	~ 
	ld a,0bah		;918a	3e ba 	> . 
	call pe,01c00h		;918c	ec 00 1c 	. . . 
	ccf			;918f	3f 	? 
	inc b			;9190	04 	. 
	ld a,a			;9191	7f 	 
	adc a,h			;9192	8c 	. 
	ccf			;9193	3f 	? 
	ld bc,03f1eh		;9194	01 1e 3f 	. . ? 
	cp a			;9197	bf 	. 
	cp a			;9198	bf 	. 
	rst 18h			;9199	df 	. 
	sbc a,0deh		;919a	de de 	. . 
	add a,b			;919c	80 	. 
	ld a,07fh		;919d	3e 7f 	>  
	inc b			;919f	04 	. 
	rst 38h			;91a0	ff 	. 
	add a,h			;91a1	84 	. 
	ld a,(hl)			;91a2	7e 	~ 
	jr c,l91e1h		;91a3	38 3c 	8 < 
	ld a,003h		;91a5	3e 03 	> . 
	ld a,(hl)			;91a7	7e 	~ 
	adc a,e			;91a8	8b 	. 
	inc a			;91a9	3c 	< 
	inc e			;91aa	1c 	. 
	nop			;91ab	00 	. 
	ld c,c			;91ac	49 	I 
	exx			;91ad	d9 	. 
	or (hl)			;91ae	b6 	. 
	inc de			;91af	13 	. 
	ld sp,hl			;91b0	f9 	. 
	inc e			;91b1	1c 	. 
	daa			;91b2	27 	' 
	xor b			;91b3	a8 	. 
	dec b			;91b4	05 	. 
	nop			;91b5	00 	. 
	add a,e			;91b6	83 	. 
	add a,e			;91b7	83 	. 
	call z,00397h		;91b8	cc 97 03 	. . . 
	nop			;91bb	00 	. 
	add a,l			;91bc	85 	. 
	jr l9189h		;91bd	18 ca 	. . 
	sbc a,c			;91bf	99 	. 
	dec (hl)			;91c0	35 	5 
	adc a,000h		;91c1	ce 00 	. . 
	add a,l			;91c3	85 	. 
	ld a,079h		;91c4	3e 79 	> y 
	rst 20h			;91c6	e7 	. 
	rst 18h			;91c7	df 	. 
	sbc a,a			;91c8	9f 	. 
	inc bc			;91c9	03 	. 
	cp a			;91ca	bf 	. 
	sbc a,d			;91cb	9a 	. 
	inc a			;91cc	3c 	< 
	add a,0f3h		;91cd	c6 f3 	. . 
	di			;91cf	f3 	. 
	pop de			;91d0	d1 	. 
	add hl,sp			;91d1	39 	9 
	push bc			;91d2	c5 	. 
	ld sp,hl			;91d3	f9 	. 
	cp a			;91d4	bf 	. 
	sbc a,a			;91d5	9f 	. 
	sbc a,a			;91d6	9f 	. 
	call c,0c0c4h		;91d7	dc c4 c0 	. . . 
	ld h,c			;91da	61 	a 
	ccf			;91db	3f 	? 
	ei			;91dc	fb 	. 
	cp c			;91dd	b9 	. 
	add hl,sp			;91de	39 	9 
	sub c			;91df	91 	. 
	pop bc			;91e0	c1 	. 
l91e1h:
	ld b,l			;91e1	45 	E 
	ld (de),a			;91e2	12 	. 
	call m,04030h		;91e3	fc 30 40 	. 0 @ 
	ld (bc),a			;91e6	02 	. 
	add a,b			;91e7	80 	. 
	inc b			;91e8	04 	. 
	nop			;91e9	00 	. 
	add a,e			;91ea	83 	. 
	inc b			;91eb	04 	. 
	ld (bc),a			;91ec	02 	. 
	ld bc,00009h		;91ed	01 09 00 	. . . 
	ld (bc),a			;91f0	02 	. 
	add a,b			;91f1	80 	. 
	add a,d			;91f2	82 	. 
	ld b,b			;91f3	40 	@ 
	jr nz,$+5		;91f4	20 03 	  . 
	nop			;91f6	00 	. 
	inc bc			;91f7	03 	. 
	ld bc,00284h		;91f8	01 84 02 	. . . 
	inc b			;91fb	04 	. 
	ex (sp),hl			;91fc	e3 	. 
	ret nz			;91fd	c0 	. 
	inc b			;91fe	04 	. 
	add a,b			;91ff	80 	. 
	adc a,h			;9200	8c 	. 
	ret nz			;9201	c0 	. 
	cp 0e1h		;9202	fe e1 	. . 
	ret nz			;9204	c0 	. 
	ld b,b			;9205	40 	@ 
	ld b,b			;9206	40 	@ 
	jr nz,l922ah		;9207	20 21 	  ! 
	ld hl,0c17fh		;9209	21 7f c1 	!  . 
	add a,b			;920c	80 	. 
	inc b			;920d	04 	. 
	nop			;920e	00 	. 
	add a,h			;920f	84 	. 
	add a,c			;9210	81 	. 
	rst 0			;9211	c7 	. 
	jp 003c1h		;9212	c3 c1 03 	. . . 
	add a,c			;9215	81 	. 
	adc a,e			;9216	8b 	. 
	jp 0ffe3h		;9217	c3 e3 ff 	. . . 
	rst 38h			;921a	ff 	. 
	cp (hl)			;921b	be 	. 
	rst 38h			;921c	ff 	. 
	rst 38h			;921d	ff 	. 
	rst 8			;921e	cf 	. 
	rst 38h			;921f	ff 	. 
	call m,005ffh		;9220	fc ff 05 	. . . 
	nop			;9223	00 	. 
	add a,c			;9224	81 	. 
	add a,a			;9225	87 	. 
	ld (bc),a			;9226	02 	. 
	rst 38h			;9227	ff 	. 
	inc bc			;9228	03 	. 
	nop			;9229	00 	. 
l922ah:
	add a,e			;922a	83 	. 
	djnz $+128		;922b	10 7e 	. ~ 
	cp 002h		;922d	fe 02 	. . 
	rst 38h			;922f	ff 	. 
	nop			;9230	00 	. 
	add a,e			;9231	83 	. 
	rra			;9232	1f 	. 
	ld a,078h		;9233	3e 78 	> x 
	ld (bc),a			;9235	02 	. 
	ret po			;9236	e0 	. 
	inc bc			;9237	03 	. 
	ret nz			;9238	c0 	. 
	sbc a,d			;9239	9a 	. 
	ret m			;923a	f8 	. 
	inc a			;923b	3c 	< 
	ld c,00fh		;923c	0e 0f 	. . 
	cpl			;923e	2f 	/ 
	rst 38h			;923f	ff 	. 
	ccf			;9240	3f 	? 
	rlca			;9241	07 	. 
	ret nz			;9242	c0 	. 
	ret po			;9243	e0 	. 
	ret po			;9244	e0 	. 
	ex (sp),hl			;9245	e3 	. 
	ld a,e			;9246	7b 	{ 
	ld a,a			;9247	7f 	 
	ccf			;9248	3f 	? 
	rra			;9249	1f 	. 
	rlca			;924a	07 	. 
	ld b,a			;924b	47 	G 
	rst 0			;924c	c7 	. 
	xor 0feh		;924d	ee fe 	. . 
	cp 0fch		;924f	fe fc 	. . 
	ret m			;9251	f8 	. 
	jr nc,l9294h		;9252	30 40 	0 @ 
	ld (bc),a			;9254	02 	. 
	add a,b			;9255	80 	. 
	inc b			;9256	04 	. 
	nop			;9257	00 	. 
	add a,e			;9258	83 	. 
	inc b			;9259	04 	. 
	ld (bc),a			;925a	02 	. 
	ld bc,00009h		;925b	01 09 00 	. . . 
	ld (bc),a			;925e	02 	. 
	add a,b			;925f	80 	. 
	add a,d			;9260	82 	. 
	ld b,b			;9261	40 	@ 
	jr nz,$+5		;9262	20 03 	  . 
	nop			;9264	00 	. 
	inc bc			;9265	03 	. 
	ld bc,00284h		;9266	01 84 02 	. . . 
	inc b			;9269	04 	. 
	ex (sp),hl			;926a	e3 	. 
	ret nz			;926b	c0 	. 
	inc b			;926c	04 	. 
	add a,b			;926d	80 	. 
	adc a,h			;926e	8c 	. 
	ret nz			;926f	c0 	. 
	cp 0e1h		;9270	fe e1 	. . 
	ret nz			;9272	c0 	. 
	ld b,b			;9273	40 	@ 
	ld b,b			;9274	40 	@ 
	jr nz,l9298h		;9275	20 21 	  ! 
	ld hl,0c17fh		;9277	21 7f c1 	!  . 
	add a,b			;927a	80 	. 
	inc b			;927b	04 	. 
	nop			;927c	00 	. 
	add a,h			;927d	84 	. 
	add a,c			;927e	81 	. 
	rst 0			;927f	c7 	. 
	jp 003c1h		;9280	c3 c1 03 	. . . 
	add a,c			;9283	81 	. 
	adc a,e			;9284	8b 	. 
	jp 0ffe3h		;9285	c3 e3 ff 	. . . 
	ld sp,hl			;9288	f9 	. 
	rst 38h			;9289	ff 	. 
	cp (hl)			;928a	be 	. 
	di			;928b	f3 	. 
	rst 38h			;928c	ff 	. 
	call m,0ef3fh		;928d	fc 3f ef 	. ? . 
	dec b			;9290	05 	. 
	nop			;9291	00 	. 
	add a,e			;9292	83 	. 
	add a,e			;9293	83 	. 
l9294h:
	cp 09fh		;9294	fe 9f 	. . 
	inc bc			;9296	03 	. 
	nop			;9297	00 	. 
l9298h:
	add a,l			;9298	85 	. 
	jr $-4		;9299	18 fa 	. . 
	sbc a,a			;929b	9f 	. 
	ld a,l			;929c	7d 	} 
	rst 38h			;929d	ff 	. 
	nop			;929e	00 	. 
	add a,e			;929f	83 	. 
	jr nz,l92e3h		;92a0	20 41 	  A 
	add a,a			;92a2	87 	. 
	ld (bc),a			;92a3	02 	. 
	rra			;92a4	1f 	. 
	inc bc			;92a5	03 	. 
	ccf			;92a6	3f 	? 
	ret po			;92a7	e0 	. 
	inc b			;92a8	04 	. 
	jp nz,0f0f1h		;92a9	c2 f1 f0 	. . . 
	ret nc			;92ac	d0 	. 
	nop			;92ad	00 	. 
	ret nz			;92ae	c0 	. 
	ret m			;92af	f8 	. 
	ccf			;92b0	3f 	? 
l92b1h:
	rra			;92b1	1f 	. 
	rra			;92b2	1f 	. 
	inc e			;92b3	1c 	. 
	add a,h			;92b4	84 	. 
	add a,b			;92b5	80 	. 
	ld b,b			;92b6	40 	@ 
	jr nz,l92b1h		;92b7	20 f8 	  . 
	cp b			;92b9	b8 	. 
	jr c,l92cdh		;92ba	38 11 	8 . 
	ld bc,00201h		;92bc	01 01 02 	. . . 
	inc b			;92bf	04 	. 
	rrca			;92c0	0f 	. 
	ld a,07dh		;92c1	3e 7d 	> } 
	ld l,d			;92c3	6a 	j 
	pop af			;92c4	f1 	. 
	ret po			;92c5	e0 	. 
	pop de			;92c6	d1 	. 
	jp po,0fcf8h		;92c7	e2 f8 fc 	. . . 
	ld e,(hl)			;92ca	5e 	^ 
	cpl			;92cb	2f 	/ 
	ld e,a			;92cc	5f 	_ 
l92cdh:
	rst 38h			;92cd	ff 	. 
	ld a,a			;92ce	7f 	 
	xor a			;92cf	af 	. 
	push de			;92d0	d5 	. 
	ret po			;92d1	e0 	. 
	pop af			;92d2	f1 	. 
	ex de,hl			;92d3	eb 	. 
	ld (hl),l			;92d4	75 	u 
	ld a,a			;92d5	7f 	 
	ccf			;92d6	3f 	? 
	rra			;92d7	1f 	. 
	ld b,a			;92d8	47 	G 
	ex (sp),hl			;92d9	e3 	. 
	rst 10h			;92da	d7 	. 
	jp pe,0fefeh		;92db	ea fe fe 	. . . 
	call m,01cf8h		;92de	fc f8 1c 	. . . 
	ccf			;92e1	3f 	? 
	ld (hl),l			;92e2	75 	u 
l92e3h:
	ld h,e			;92e3	63 	c 
	ld (hl),l			;92e4	75 	u 
	ld a,a			;92e5	7f 	 
	ccf			;92e6	3f 	? 
	ld bc,0331eh		;92e7	01 1e 33 	. . 3 
	or a			;92ea	b7 	. 
	xor e			;92eb	ab 	. 
	rst 10h			;92ec	d7 	. 
	sbc a,0deh		;92ed	de de 	. . 
	add a,b			;92ef	80 	. 
	ld a,06bh		;92f0	3e 6b 	> k 
	rst 0			;92f2	c7 	. 
	ex de,hl			;92f3	eb 	. 
	rst 10h			;92f4	d7 	. 
	rst 38h			;92f5	ff 	. 
	ld a,(hl)			;92f6	7e 	~ 
	jr c,$+54		;92f7	38 34 	8 4 
	ld (06a56h),hl		;92f9	22 56 6a 	" V j 
	halt			;92fc	76 	v 
	inc a			;92fd	3c 	< 
	inc e			;92fe	1c 	. 
	nop			;92ff	00 	. 
	or (hl)			;9300	b6 	. 
	ld h,a			;9301	67 	g 
	ld c,c			;9302	49 	I 
	call pe,0e336h		;9303	ec 36 e3 	. 6 . 
	in a,(057h)		;9306	db 57 	. W 
	dec b			;9308	05 	. 
	nop			;9309	00 	. 
	add a,e			;930a	83 	. 
	inc b			;930b	04 	. 
	inc sp			;930c	33 	3 
	ld l,b			;930d	68 	h 
	inc bc			;930e	03 	. 
	nop			;930f	00 	. 
	add a,l			;9310	85 	. 
	ex af,af'			;9311	08 	. 
	or h			;9312	b4 	. 
	ld h,a			;9313	67 	g 
	jp z,00031h		;9314	ca 31 00 	. 1 . 
l9317h:
	ld (bc),a			;9317	02 	. 
	nop			;9318	00 	. 
	adc a,a			;9319	8f 	. 
l931ah:
	inc bc			;931a	03 	. 
	ld b,00eh		;931b	06 0e 	. . 
	jr c,l9317h		;931d	38 f8 	8 . 
	adc a,h			;931f	8c 	. 
	jr nc,l931ah		;9320	30 f8 	0 . 
	inc e			;9322	1c 	. 
	inc d			;9323	14 	. 
	ld h,002h		;9324	26 02 	& . 
	ld (bc),a			;9326	02 	. 
	ld bc,00702h		;9327	01 02 07 	. . . 
	nop			;932a	00 	. 
	add a,c			;932b	81 	. 
	ld bc,00007h		;932c	01 07 00 	. . . 
	sub h			;932f	94 	. 
	rra			;9330	1f 	. 
	scf			;9331	37 	7 
	djnz l9334h		;9332	10 00 	. . 
l9334h:
	ld h,b			;9334	60 	` 
	ld (hl),b			;9335	70 	p 
	ld a,h			;9336	7c 	| 
	ld c,a			;9337	4f 	O 
	add a,b			;9338	80 	. 
	ret m			;9339	f8 	. 
	cp a			;933a	bf 	. 
	ld c,a			;933b	4f 	O 
	dec bc			;933c	0b 	. 
	ld (bc),a			;933d	02 	. 
	nop			;933e	00 	. 
	nop			;933f	00 	. 
	ld h,e			;9340	63 	c 
	ld b,c			;9341	41 	A 
	nop			;9342	00 	. 
	ld b,b			;9343	40 	@ 
	inc b			;9344	04 	. 
	nop			;9345	00 	. 
	add a,h			;9346	84 	. 
	add a,b			;9347	80 	. 
	ld h,b			;9348	60 	` 
	inc a			;9349	3c 	< 
	ld c,(hl)			;934a	4e 	N 
	ld (bc),a			;934b	02 	. 
	inc b			;934c	04 	. 
	inc b			;934d	04 	. 
l934eh:
	nop			;934e	00 	. 
	add a,a			;934f	87 	. 
	ret nz			;9350	c0 	. 
	ld h,b			;9351	60 	` 
	ld (hl),b			;9352	70 	p 
	inc e			;9353	1c 	. 
	rra			;9354	1f 	. 
	ld sp,00740h		;9355	31 40 07 	1 @ . 
	nop			;9358	00 	. 
	adc a,h			;9359	8c 	. 
	ret m			;935a	f8 	. 
	call pe,00008h		;935b	ec 08 00 	. . . 
	ld b,00eh		;935e	06 0e 	. . 
	ld a,0f2h		;9360	3e f2 	> . 
	add a,082h		;9362	c6 82 	. . 
	nop			;9364	00 	. 
	ld (bc),a			;9365	02 	. 
	inc b			;9366	04 	. 
	nop			;9367	00 	. 
	add a,c			;9368	81 	. 
	ld (bc),a			;9369	02 	. 
	rlca			;936a	07 	. 
	nop			;936b	00 	. 
	add a,c			;936c	81 	. 
	ld bc,00007h		;936d	01 07 00 	. . . 
	add a,h			;9370	84 	. 
	ld bc,03c06h		;9371	01 06 3c 	. . < 
	ld (hl),d			;9374	72 	r 
	ld (bc),a			;9375	02 	. 
	jr nz,l937ah		;9376	20 02 	  . 
	nop			;9378	00 	. 
	add a,h			;9379	84 	. 
l937ah:
	add a,082h		;937a	c6 82 	. . 
	nop			;937c	00 	. 
	ld (bc),a			;937d	02 	. 
	inc b			;937e	04 	. 
	nop			;937f	00 	. 
	sub l			;9380	95 	. 
	ld bc,0fd1fh		;9381	01 1f fd 	. . . 
	jp p,040d0h		;9384	f2 d0 40 	. . @ 
	nop			;9387	00 	. 
	nop			;9388	00 	. 
	ret m			;9389	f8 	. 
	call pe,00008h		;938a	ec 08 00 	. . . 
	ld b,00eh		;938d	06 0e 	. . 
	ld a,0f2h		;938f	3e f2 	> . 
	jr nc,$-6		;9391	30 f8 	0 . 
	inc e			;9393	1c 	. 
	inc d			;9394	14 	. 
	ld h,002h		;9395	26 02 	& . 
	ld (bc),a			;9397	02 	. 
	ld (bc),a			;9398	02 	. 
	ld bc,00008h		;9399	01 08 00 	. . . 
	add a,c			;939c	81 	. 
	ld bc,00005h		;939d	01 05 00 	. . . 
	add a,c			;93a0	81 	. 
	ld b,b			;93a1	40 	@ 
	dec b			;93a2	05 	. 
	nop			;93a3	00 	. 
	adc a,(hl)			;93a4	8e 	. 
	inc e			;93a5	1c 	. 
	inc l			;93a6	2c 	, 
	ld b,d			;93a7	42 	B 
	nop			;93a8	00 	. 
	ld bc,00403h		;93a9	01 03 04 	. . . 
	ex af,af'			;93ac	08 	. 
	ex af,af'			;93ad	08 	. 
	djnz l93b0h		;93ae	10 00 	. . 
l93b0h:
	ld h,b			;93b0	60 	` 
	or b			;93b1	b0 	. 
	ex af,af'			;93b2	08 	. 
	rlca			;93b3	07 	. 
	nop			;93b4	00 	. 
	add a,c			;93b5	81 	. 
	jr nz,l93bch		;93b6	20 04 	  . 
	nop			;93b8	00 	. 
	add a,d			;93b9	82 	. 
	ld (bc),a			;93ba	02 	. 
	ex af,af'			;93bb	08 	. 
l93bch:
	inc b			;93bc	04 	. 
	nop			;93bd	00 	. 
	add a,e			;93be	83 	. 
	ld (bc),a			;93bf	02 	. 
	ld b,00ah		;93c0	06 0a 	. . 
	ex af,af'			;93c2	08 	. 
	nop			;93c3	00 	. 
	add a,d			;93c4	82 	. 
	ex af,af'			;93c5	08 	. 
	inc d			;93c6	14 	. 
	ld (bc),a			;93c7	02 	. 
	djnz l93cdh		;93c8	10 03 	. . 
	jr nz,l934eh		;93ca	20 82 	  . 
	nop			;93cc	00 	. 
l93cdh:
	ld b,b			;93cd	40 	@ 
	inc b			;93ce	04 	. 
	nop			;93cf	00 	. 
	inc bc			;93d0	03 	. 
	ld bc,01885h		;93d1	01 85 18 	. . . 
	inc h			;93d4	24 	$ 
	ld d,b			;93d5	50 	P 
	adc a,b			;93d6	88 	. 
	ret nz			;93d7	c0 	. 
	inc bc			;93d8	03 	. 
	nop			;93d9	00 	. 
	add a,h			;93da	84 	. 
	inc b			;93db	04 	. 
	ld b,00ah		;93dc	06 0a 	. . 
	add hl,bc			;93de	09 	. 
	ld (bc),a			;93df	02 	. 
	djnz l93e6h		;93e0	10 04 	. . 
	nop			;93e2	00 	. 
	add a,c			;93e3	81 	. 
	add a,b			;93e4	80 	. 
	dec b			;93e5	05 	. 
l93e6h:
	nop			;93e6	00 	. 
	nop			;93e7	00 	. 
	ld (bc),a			;93e8	02 	. 
	rst 38h			;93e9	ff 	. 
	adc a,b			;93ea	88 	. 
	call m,0f0f8h		;93eb	fc f8 f0 	. . . 
	ret nz			;93ee	c0 	. 
	nop			;93ef	00 	. 
	nop			;93f0	00 	. 
	rst 8			;93f1	cf 	. 
	rlca			;93f2	07 	. 
	ld (bc),a			;93f3	02 	. 
	inc bc			;93f4	03 	. 
	inc bc			;93f5	03 	. 
	ld bc,00089h		;93f6	01 89 00 	. . . 
	add a,b			;93f9	80 	. 
	ret nz			;93fa	c0 	. 
	ret po			;93fb	e0 	. 
	ret p			;93fc	f0 	. 
	ret m			;93fd	f8 	. 
	call m,0fffeh		;93fe	fc fe ff 	. . . 
	inc bc			;9401	03 	. 
	nop			;9402	00 	. 
	adc a,a			;9403	8f 	. 
	ld bc,00703h		;9404	01 03 07 	. . . 
	rrca			;9407	0f 	. 
	rra			;9408	1f 	. 
	ret po			;9409	e0 	. 
	add a,b			;940a	80 	. 
	ret po			;940b	e0 	. 
	ret m			;940c	f8 	. 
	sbc a,h			;940d	9c 	. 
	adc a,a			;940e	8f 	. 
	add a,e			;940f	83 	. 
	add a,b			;9410	80 	. 
	ld a,a			;9411	7f 	 
	rlca			;9412	07 	. 
	inc bc			;9413	03 	. 
	nop			;9414	00 	. 
	add a,e			;9415	83 	. 
	ld bc,0c181h		;9416	01 81 c1 	. . . 
	inc b			;9419	04 	. 
	add a,b			;941a	80 	. 
	sub c			;941b	91 	. 
	ret nz			;941c	c0 	. 
	ret p			;941d	f0 	. 
	cp 0ffh		;941e	fe ff 	. . 
	ld a,a			;9420	7f 	 
	rra			;9421	1f 	. 
	inc bc			;9422	03 	. 
	ld bc,00303h		;9423	01 03 03 	. . . 
	rlca			;9426	07 	. 
	rst 38h			;9427	ff 	. 
	ret po			;9428	e0 	. 
	ret po			;9429	e0 	. 
	jr nc,l943ch		;942a	30 10 	0 . 
	ex af,af'			;942c	08 	. 
	inc bc			;942d	03 	. 
l942eh:
	nop			;942e	00 	. 
	adc a,a			;942f	8f 	. 
	ld bc,00603h		;9430	01 03 06 	. . . 
	inc c			;9433	0c 	. 
	jr $+50		;9434	18 30 	. 0 
	ld (hl),b			;9436	70 	p 
	ret po			;9437	e0 	. 
	ld b,000h		;9438	06 00 	. . 
	ld b,01ch		;943a	06 1c 	. . 
l943ch:
	jr c,l942eh		;943c	38 f0 	8 . 
	pop bc			;943e	c1 	. 
	dec b			;943f	05 	. 
	ld bc,0038ch		;9440	01 8c 03 	. . . 
	ld c,07ch		;9443	0e 7c 	. | 
	ret p			;9445	f0 	. 
	add a,b			;9446	80 	. 
	ret nz			;9447	c0 	. 
	ret po			;9448	e0 	. 
	ret p			;9449	f0 	. 
	ret m			;944a	f8 	. 
	sbc a,h			;944b	9c 	. 
	ld c,003h		;944c	0e 03 	. . 
	inc bc			;944e	03 	. 
	nop			;944f	00 	. 
	adc a,l			;9450	8d 	. 
	ld bc,00603h		;9451	01 03 06 	. . . 
	inc c			;9454	0c 	. 
l9455h:
	djnz l9455h		;9455	10 fe 	. . 
	ret m			;9457	f8 	. 
	ret nz			;9458	c0 	. 
	add a,b			;9459	80 	. 
	ld b,b			;945a	40 	@ 
	ld b,b			;945b	40 	@ 
	jr nz,l947dh		;945c	20 1f 	  . 
	inc b			;945e	04 	. 
	ld bc,00386h		;945f	01 86 03 	. . . 
	ld c,078h		;9462	0e 78 	. x 
	ret nz			;9464	c0 	. 
	ld e,0e0h		;9465	1e e0 	. . 
	inc bc			;9467	03 	. 
	nop			;9468	00 	. 
	adc a,l			;9469	8d 	. 
	add a,b			;946a	80 	. 
	add a,c			;946b	81 	. 
	add a,e			;946c	83 	. 
	inc b			;946d	04 	. 
	ld bc,01f07h		;946e	01 07 1f 	. . . 
	add hl,sp			;9471	39 	9 
	pop af			;9472	f1 	. 
	pop bc			;9473	c1 	. 
	ld bc,006cch		;9474	01 cc 06 	. . . 
	ld (bc),a			;9477	02 	. 
	inc bc			;9478	03 	. 
	inc bc			;9479	03 	. 
	ld bc,00004h		;947a	01 04 00 	. . . 
l947dh:
	add a,a			;947d	87 	. 
	ld bc,00603h		;947e	01 03 06 	. . . 
	inc c			;9481	0c 	. 
	jr l9484h		;9482	18 00 	. . 
l9484h:
	ld bc,00005h		;9484	01 05 00 	. . . 
	sub d			;9487	92 	. 
	ld b,b			;9488	40 	@ 
	ld bc,00f03h		;9489	01 03 0f 	. . . 
	rra			;948c	1f 	. 
	ccf			;948d	3f 	? 
	ld h,e			;948e	63 	c 
	jp 00181h		;948f	c3 81 01 	. . . 
	ld (bc),a			;9492	02 	. 
	inc b			;9493	04 	. 
	jr $+50		;9494	18 30 	. 0 
	ld (hl),b			;9496	70 	p 
	ld h,b			;9497	60 	` 
	rst 38h			;9498	ff 	. 
	add a,c			;9499	81 	. 
	dec b			;949a	05 	. 
	nop			;949b	00 	. 
	add a,l			;949c	85 	. 
	ld bc,00003h		;949d	01 03 00 	. . . 
	nop			;94a0	00 	. 
	jr nz,l94a7h		;94a1	20 04 	  . 
	nop			;94a3	00 	. 
	adc a,c			;94a4	89 	. 
	ld (bc),a			;94a5	02 	. 
	add hl,bc			;94a6	09 	. 
l94a7h:
	ld bc,00703h		;94a7	01 03 07 	. . . 
	rlca			;94aa	07 	. 
	dec c			;94ab	0d 	. 
	add hl,bc			;94ac	09 	. 
	ld bc,00008h		;94ad	01 08 00 	. . . 
	adc a,c			;94b0	89 	. 
	ld de,02101h		;94b1	11 01 21 	. . ! 
	ld hl,04341h		;94b4	21 41 43 	! A C 
	jp 041ffh		;94b7	c3 ff 41 	. . A 
	inc bc			;94ba	03 	. 
	inc bc			;94bb	03 	. 
	add a,c			;94bc	81 	. 
	rlca			;94bd	07 	. 
	inc bc			;94be	03 	. 
	ld c,083h		;94bf	0e 83 	. . 
	rst 20h			;94c1	e7 	. 
	jp 00581h		;94c2	c3 81 05 	. . . 
	ld bc,01b82h		;94c5	01 82 1b 	. . . 
	add hl,de			;94c8	19 	. 
	ld (bc),a			;94c9	02 	. 
	jr nc,l94ceh		;94ca	30 02 	0 . 
	ld h,b			;94cc	60 	` 
	adc a,d			;94cd	8a 	. 
l94ceh:
	ld (hl),b			;94ce	70 	p 
	rst 38h			;94cf	ff 	. 
	ld bc,04381h		;94d0	01 81 43 	. . C 
	ld h,e			;94d3	63 	c 
	inc sp			;94d4	33 	3 
	dec de			;94d5	1b 	. 
	ld a,a			;94d6	7f 	 
	rst 38h			;94d7	ff 	. 
	nop			;94d8	00 	. 
	ld b,b			;94d9	40 	@ 
	nop			;94da	00 	. 
	ld (bc),a			;94db	02 	. 
	rra			;94dc	1f 	. 
	ld (bc),a			;94dd	02 	. 
	rrca			;94de	0f 	. 
	add a,d			;94df	82 	. 
	rlca			;94e0	07 	. 
	inc bc			;94e1	03 	. 
	inc b			;94e2	04 	. 
	nop			;94e3	00 	. 
	add a,(hl)			;94e4	86 	. 
	ld bc,00703h		;94e5	01 03 07 	. . . 
	rrca			;94e8	0f 	. 
	rrca			;94e9	0f 	. 
	rra			;94ea	1f 	. 
	inc bc			;94eb	03 	. 
	ld bc,00381h		;94ec	01 81 03 	. . . 
	ld (bc),a			;94ef	02 	. 
	ld bc,00007h		;94f0	01 07 00 	. . . 
	add a,e			;94f3	83 	. 
	ld bc,00f03h		;94f4	01 03 0f 	. . . 
	dec b			;94f7	05 	. 
	nop			;94f8	00 	. 
	add a,e			;94f9	83 	. 
	ld h,b			;94fa	60 	` 
	ret p			;94fb	f0 	. 
	call m,00005h		;94fc	fc 05 00 	. . . 
	add a,e			;94ff	83 	. 
	ld bc,00f03h		;9500	01 03 0f 	. . . 
	inc b			;9503	04 	. 
	nop			;9504	00 	. 
	ld (bc),a			;9505	02 	. 
	add a,b			;9506	80 	. 
	add a,d			;9507	82 	. 
	ret nz			;9508	c0 	. 
	ret po			;9509	e0 	. 
	dec b			;950a	05 	. 
	nop			;950b	00 	. 
	add a,h			;950c	84 	. 
	ld bc,03f07h		;950d	01 07 3f 	. . ? 
	ret po			;9510	e0 	. 
	rlca			;9511	07 	. 
	nop			;9512	00 	. 
	add a,c			;9513	81 	. 
	inc bc			;9514	03 	. 
	rlca			;9515	07 	. 
	nop			;9516	00 	. 
	add a,d			;9517	82 	. 
	inc bc			;9518	03 	. 
	ld bc,0000bh		;9519	01 0b 00 	. . . 
	add a,l			;951c	85 	. 
	ld bc,00703h		;951d	01 03 07 	. . . 
	rst 38h			;9520	ff 	. 
	cp 005h		;9521	fe 05 	. . 
	rst 38h			;9523	ff 	. 
	adc a,(hl)			;9524	8e 	. 
	cp a			;9525	bf 	. 
	cp 0fch		;9526	fe fc 	. . 
	ret p			;9528	f0 	. 
	ret po			;9529	e0 	. 
l952ah:
	ret nz			;952a	c0 	. 
	add a,b			;952b	80 	. 
	nop			;952c	00 	. 
	nop			;952d	00 	. 
	cp 0fch		;952e	fe fc 	. . 
	ret m			;9530	f8 	. 
	ret po			;9531	e0 	. 
	ret nz			;9532	c0 	. 
	ld (bc),a			;9533	02 	. 
	add a,b			;9534	80 	. 
	add hl,bc			;9535	09 	. 
	nop			;9536	00 	. 
	ld (bc),a			;9537	02 	. 
	rst 38h			;9538	ff 	. 
	add a,c			;9539	81 	. 
	rst 18h			;953a	df 	. 
	inc b			;953b	04 	. 
	rst 38h			;953c	ff 	. 
	add a,h			;953d	84 	. 
	defb 0fdh,0f6h,0feh	;illegal sequence		;953e	fd f6 fe 	. . . 
	call m,0f802h		;9541	fc 02 f8 	. . . 
	inc bc			;9544	03 	. 
	ret p			;9545	f0 	. 
	ex af,af'			;9546	08 	. 
	rst 38h			;9547	ff 	. 
	ld (bc),a			;9548	02 	. 
	ret po			;9549	e0 	. 
	ld (bc),a			;954a	02 	. 
	ret nz			;954b	c0 	. 
	ld (bc),a			;954c	02 	. 
	add a,b			;954d	80 	. 
	ld (bc),a			;954e	02 	. 
	nop			;954f	00 	. 
	add a,c			;9550	81 	. 
	cp (hl)			;9551	be 	. 
	inc bc			;9552	03 	. 
	call m,0f881h		;9553	fc 81 f8 	. . . 
	inc bc			;9556	03 	. 
	ret p			;9557	f0 	. 
	ex af,af'			;9558	08 	. 
l9559h:
	nop			;9559	00 	. 
	ld (bc),a			;955a	02 	. 
	ret po			;955b	e0 	. 
	ld (bc),a			;955c	02 	. 
	ret nz			;955d	c0 	. 
	inc bc			;955e	03 	. 
	add a,b			;955f	80 	. 
	add hl,bc			;9560	09 	. 
	nop			;9561	00 	. 
	nop			;9562	00 	. 
	ld a,a			;9563	7f 	 
	rst 38h			;9564	ff 	. 
	ld a,a			;9565	7f 	 
	rst 38h			;9566	ff 	. 
	ld (bc),a			;9567	02 	. 
	rst 38h			;9568	ff 	. 
	nop			;9569	00 	. 
	add a,e			;956a	83 	. 
	nop			;956b	00 	. 
	rlca			;956c	07 	. 
	rra			;956d	1f 	. 
	ld (bc),a			;956e	02 	. 
	ccf			;956f	3f 	? 
	inc bc			;9570	03 	. 
	ld a,a			;9571	7f 	 
	adc a,b			;9572	88 	. 
	nop			;9573	00 	. 
	ret po			;9574	e0 	. 
	ret m			;9575	f8 	. 
	call m,0f6fch		;9576	fc fc f6 	. . . 
	jp p,003e2h		;9579	f2 e2 03 	. . . 
	ld a,a			;957c	7f 	 
	ld (bc),a			;957d	02 	. 
	jr c,$-112		;957e	38 8e 	8 . 
	inc e			;9580	1c 	. 
	rlca			;9581	07 	. 
	nop			;9582	00 	. 
	jp po,006c6h		;9583	e2 c6 06 	. . . 
	inc c			;9586	0c 	. 
	inc e			;9587	1c 	. 
	ld a,b			;9588	78 	x 
	ret po			;9589	e0 	. 
	nop			;958a	00 	. 
	nop			;958b	00 	. 
	rlca			;958c	07 	. 
	rra			;958d	1f 	. 
	ld (bc),a			;958e	02 	. 
	ccf			;958f	3f 	? 
	inc bc			;9590	03 	. 
	ld a,a			;9591	7f 	 
	adc a,b			;9592	88 	. 
	nop			;9593	00 	. 
	ret po			;9594	e0 	. 
	ret m			;9595	f8 	. 
	call m,0f6fch		;9596	fc fc f6 	. . . 
	jp p,003e2h		;9599	f2 e2 03 	. . . 
	ld a,a			;959c	7f 	 
	ld (bc),a			;959d	02 	. 
	jr c,l952ah		;959e	38 8a 	8 . 
	inc e			;95a0	1c 	. 
	rlca			;95a1	07 	. 
	nop			;95a2	00 	. 
	jp po,006c6h		;95a3	e2 c6 06 	. . . 
	inc c			;95a6	0c 	. 
	inc e			;95a7	1c 	. 
	ld a,b			;95a8	78 	x 
	ret po			;95a9	e0 	. 
	inc bc			;95aa	03 	. 
	nop			;95ab	00 	. 
	inc bc			;95ac	03 	. 
	ld bc,00285h		;95ad	01 85 02 	. . . 
	rlca			;95b0	07 	. 
	rlca			;95b1	07 	. 
	nop			;95b2	00 	. 
	add a,b			;95b3	80 	. 
	inc bc			;95b4	03 	. 
	ld b,b			;95b5	40 	@ 
	add a,h			;95b6	84 	. 
	jr nz,l9559h		;95b7	20 a0 	  . 
	sub b			;95b9	90 	. 
	inc b			;95ba	04 	. 
	ld (bc),a			;95bb	02 	. 
	inc bc			;95bc	03 	. 
	inc b			;95bd	04 	. 
	nop			;95be	00 	. 
	cp l			;95bf	bd 	. 
	ld bc,0d030h		;95c0	01 30 d0 	. 0 . 
	nop			;95c3	00 	. 
	sbc a,h			;95c4	9c 	. 
	ld l,d			;95c5	6a 	j 
	or (hl)			;95c6	b6 	. 
	adc a,0b0h		;95c7	ce b0 	. . 
	ld bc,05434h		;95c9	01 34 54 	. 4 T 
	ld l,h			;95cc	6c 	l 
	ld (de),a			;95cd	12 	. 
	ld a,e			;95ce	7b 	{ 
	inc b			;95cf	04 	. 
	rlca			;95d0	07 	. 
	ld e,h			;95d1	5c 	\ 
	ret pe			;95d2	e8 	. 
	ld h,b			;95d3	60 	` 
	add a,b			;95d4	80 	. 
	add a,b			;95d5	80 	. 
	ld h,b			;95d6	60 	` 
	ld b,b			;95d7	40 	@ 
	or b			;95d8	b0 	. 
	ld (bc),a			;95d9	02 	. 
	rlca			;95da	07 	. 
	dec b			;95db	05 	. 
	inc bc			;95dc	03 	. 
	ld (bc),a			;95dd	02 	. 
	rlca			;95de	07 	. 
	dec b			;95df	05 	. 
	inc bc			;95e0	03 	. 
	ret nz			;95e1	c0 	. 
	add a,b			;95e2	80 	. 
	ret po			;95e3	e0 	. 
	ld h,b			;95e4	60 	` 
	ret nz			;95e5	c0 	. 
	add a,b			;95e6	80 	. 
	ret po			;95e7	e0 	. 
	ld h,b			;95e8	60 	` 
	ld (bc),a			;95e9	02 	. 
	rlca			;95ea	07 	. 
	dec b			;95eb	05 	. 
	inc bc			;95ec	03 	. 
	ld (bc),a			;95ed	02 	. 
	rlca			;95ee	07 	. 
	dec b			;95ef	05 	. 
	inc bc			;95f0	03 	. 
	ret nz			;95f1	c0 	. 
	add a,b			;95f2	80 	. 
	and b			;95f3	a0 	. 
	ld h,b			;95f4	60 	` 
	ret nz			;95f5	c0 	. 
	add a,b			;95f6	80 	. 
	ret po			;95f7	e0 	. 
	ld h,b			;95f8	60 	` 
	dec d			;95f9	15 	. 
	dec d			;95fa	15 	. 
	djnz l963fh		;95fb	10 42 	. B 
	inc bc			;95fd	03 	. 
	ld c,d			;95fe	4a 	J 
	add a,a			;95ff	87 	. 
	ex af,af'			;9600	08 	. 
	dec b			;9601	05 	. 
	ld b,l			;9602	45 	E 
	ld d,h			;9603	54 	T 
	ld d,h			;9604	54 	T 
	ld d,b			;9605	50 	P 
	ld (de),a			;9606	12 	. 
	ld (bc),a			;9607	02 	. 
	add a,d			;9608	82 	. 
	inc b			;9609	04 	. 
	ld d,l			;960a	55 	U 
	add a,l			;960b	85 	. 
	ld de,l8494h		;960c	11 94 84 	. . . 
	and h			;960f	a4 	. 
	ld d,c			;9610	51 	Q 
	inc bc			;9611	03 	. 
	ld d,l			;9612	55 	U 
	add a,h			;9613	84 	. 
	ld b,h			;9614	44 	D 
	inc h			;9615	24 	$ 
	and h			;9616	a4 	. 
	and b			;9617	a0 	. 
	ld b,000h		;9618	06 00 	. . 
	and a			;961a	a7 	. 
	inc bc			;961b	03 	. 
	rlca			;961c	07 	. 
	rlca			;961d	07 	. 
	ld c,0ffh		;961e	0e ff 	. . 
	rst 30h			;9620	f7 	. 
	rst 38h			;9621	ff 	. 
	ld e,l			;9622	5d 	] 
	jp pe,06055h		;9623	ea 55 60 	. U ` 
	ret p			;9626	f0 	. 
	rst 38h			;9627	ff 	. 
	cp a			;9628	bf 	. 
	rst 28h			;9629	ef 	. 
	ld d,l			;962a	55 	U 
	cp d			;962b	ba 	. 
	push de			;962c	d5 	. 
	cp d			;962d	ba 	. 
	ld d,l			;962e	55 	U 
	xor d			;962f	aa 	. 
	ld d,l			;9630	55 	U 
	xor d			;9631	aa 	. 
	ld d,l			;9632	55 	U 
	xor d			;9633	aa 	. 
	inc d			;9634	14 	. 
	cp d			;9635	ba 	. 
	ld d,l			;9636	55 	U 
	xor d			;9637	aa 	. 
	ld d,l			;9638	55 	U 
	xor d			;9639	aa 	. 
	ld d,l			;963a	55 	U 
	xor d			;963b	aa 	. 
	ld b,l			;963c	45 	E 
	xor d			;963d	aa 	. 
	inc d			;963e	14 	. 
l963fh:
	ld (00800h),hl		;963f	22 00 08 	" . . 
	inc bc			;9642	03 	. 
	nop			;9643	00 	. 
	add a,h			;9644	84 	. 
	xor b			;9645	a8 	. 
	ld bc,00522h		;9646	01 22 05 	. " . 
	ld c,000h		;9649	0e 00 	. . 
	adc a,b			;964b	88 	. 
	ld bc,00f07h		;964c	01 07 0f 	. . . 
	rra			;964f	1f 	. 
	rrca			;9650	0f 	. 
	rra			;9651	1f 	. 
	nop			;9652	00 	. 
	ld a,006h		;9653	3e 06 	> . 
	rst 38h			;9655	ff 	. 
	ld (bc),a			;9656	02 	. 
	nop			;9657	00 	. 
	add a,(hl)			;9658	86 	. 
	add a,b			;9659	80 	. 
	ret nz			;965a	c0 	. 
	ret po			;965b	e0 	. 
	ret po			;965c	e0 	. 
	pop af			;965d	f1 	. 
	jp po,00005h		;965e	e2 05 00 	. . . 
	adc a,e			;9661	8b 	. 
	add a,b			;9662	80 	. 
	ld d,b			;9663	50 	P 
	xor b			;9664	a8 	. 
	cpl			;9665	2f 	/ 
	rra			;9666	1f 	. 
	cpl			;9667	2f 	/ 
	ld e,a			;9668	5f 	_ 
	cpl			;9669	2f 	/ 
	ld e,a			;966a	5f 	_ 
	cpl			;966b	2f 	/ 
	ld e,a			;966c	5f 	_ 
	ex af,af'			;966d	08 	. 
	rst 38h			;966e	ff 	. 
	adc a,b			;966f	88 	. 
	cpl			;9670	2f 	/ 
	ld e,a			;9671	5f 	_ 
	cpl			;9672	2f 	/ 
	ld e,a			;9673	5f 	_ 
	cpl			;9674	2f 	/ 
	ld e,a			;9675	5f 	_ 
	cpl			;9676	2f 	/ 
	ld e,a			;9677	5f 	_ 
	ex af,af'			;9678	08 	. 
	rst 38h			;9679	ff 	. 
	and b			;967a	a0 	. 
	pop af			;967b	f1 	. 
	jp po,0e2f1h		;967c	e2 f1 e2 	. . . 
	pop af			;967f	f1 	. 
	jp po,0e2f1h		;9680	e2 f1 e2 	. . . 
	ld d,h			;9683	54 	T 
	xor b			;9684	a8 	. 
	ld d,h			;9685	54 	T 
	xor d			;9686	aa 	. 
	ld d,h			;9687	54 	T 
	xor d			;9688	aa 	. 
	ld d,h			;9689	54 	T 
	xor d			;968a	aa 	. 
	pop af			;968b	f1 	. 
	ex de,hl			;968c	eb 	. 
	rst 30h			;968d	f7 	. 
	ex de,hl			;968e	eb 	. 
	rst 30h			;968f	f7 	. 
	rst 28h			;9690	ef 	. 
	rst 30h			;9691	f7 	. 
	rst 38h			;9692	ff 	. 
	call nc,0d4fah		;9693	d4 fa d4 	. . . 
	jp m,0fad4h		;9696	fa d4 fa 	. . . 
	call p,004fah		;9699	f4 fa 04 	. . . 
	nop			;969c	00 	. 
	sbc a,h			;969d	9c 	. 
	ld (bc),a			;969e	02 	. 
	ld bc,00503h		;969f	01 03 05 	. . . 
	nop			;96a2	00 	. 
	dec b			;96a3	05 	. 
	ld hl,(0fa55h)		;96a4	2a 55 fa 	* U . 
	defb 0fdh,0fah,0fdh	;illegal sequence		;96a7	fd fa fd 	. . . 
	inc bc			;96aa	03 	. 
	rlca			;96ab	07 	. 
	ld a,(bc)			;96ac	0a 	. 
	rlca			;96ad	07 	. 
	ld a,(bc)			;96ae	0a 	. 
	dec d			;96af	15 	. 
	dec bc			;96b0	0b 	. 
	dec d			;96b1	15 	. 
	jp pe,0aa7ch		;96b2	ea 7c aa 	. | . 
	call p,0d4aah		;96b5	f4 aa d4 	. . . 
	xor d			;96b8	aa 	. 
	call nc,0ff07h		;96b9	d4 07 ff 	. . . 
	or h			;96bc	b4 	. 
	ld a,a			;96bd	7f 	 
	rst 38h			;96be	ff 	. 
	ld a,a			;96bf	7f 	 
	cp a			;96c0	bf 	. 
	ld a,a			;96c1	7f 	 
	cp a			;96c2	bf 	. 
	ld a,a			;96c3	7f 	 
	xor a			;96c4	af 	. 
	ld e,a			;96c5	5f 	_ 
	dec bc			;96c6	0b 	. 
	dec d			;96c7	15 	. 
	dec bc			;96c8	0b 	. 
	dec d			;96c9	15 	. 
	dec bc			;96ca	0b 	. 
	dec d			;96cb	15 	. 
	dec bc			;96cc	0b 	. 
	dec d			;96cd	15 	. 
	xor b			;96ce	a8 	. 
	call nc,0d4a8h		;96cf	d4 a8 d4 	. . . 
	xor b			;96d2	a8 	. 
	call nc,0d4a8h		;96d3	d4 a8 d4 	. . . 
	cpl			;96d6	2f 	/ 
	ld e,a			;96d7	5f 	_ 
	cpl			;96d8	2f 	/ 
	ld e,a			;96d9	5f 	_ 
	cpl			;96da	2f 	/ 
	ld e,(hl)			;96db	5e 	^ 
	inc l			;96dc	2c 	, 
	ld e,h			;96dd	5c 	\ 
	xor a			;96de	af 	. 
	ld e,e			;96df	5b 	[ 
	and b			;96e0	a0 	. 
	inc c			;96e1	0c 	. 
	ld a,(hl)			;96e2	7e 	~ 
	call m,060f8h		;96e3	fc f8 60 	. . ` 
	ld hl,(0275bh)		;96e6	2a 5b 27 	* [ ' 
	ld d,a			;96e9	57 	W 
	daa			;96ea	27 	' 
	ld d,a			;96eb	57 	W 
	ld (00050h),hl		;96ec	22 50 00 	" P . 
	nop			;96ef	00 	. 
	add a,b			;96f0	80 	. 
	dec b			;96f1	05 	. 
	nop			;96f2	00 	. 
	sub b			;96f3	90 	. 
	or l			;96f4	b5 	. 
	jp c,07005h		;96f5	da 05 70 	. . p 
	cp 07fh		;96f8	fe 7f 	.  
	rra			;96fa	1f 	. 
	ld b,022h		;96fb	06 22 	. " 
	ld d,a			;96fd	57 	W 
	daa			;96fe	27 	' 
	ld d,a			;96ff	57 	W 
	daa			;9700	27 	' 
	ld d,a			;9701	57 	W 
	ld (00850h),hl		;9702	22 50 08 	" P . 
	nop			;9705	00 	. 
	inc b			;9706	04 	. 
	ld d,l			;9707	55 	U 
	add a,l			;9708	85 	. 
	ld de,l8494h		;9709	11 94 84 	. . . 
	and h			;970c	a4 	. 
	ld d,c			;970d	51 	Q 
	inc bc			;970e	03 	. 
	ld d,l			;970f	55 	U 
	add a,h			;9710	84 	. 
	ld b,h			;9711	44 	D 
	inc h			;9712	24 	$ 
	and h			;9713	a4 	. 
	and b			;9714	a0 	. 
	nop			;9715	00 	. 
l9716h:
	add a,e			;9716	83 	. 
	rlca			;9717	07 	. 
	jr l973ah		;9718	18 20 	.   
	ld (bc),a			;971a	02 	. 
	ld b,b			;971b	40 	@ 
	inc bc			;971c	03 	. 
	add a,b			;971d	80 	. 
	add a,e			;971e	83 	. 
	ret po			;971f	e0 	. 
	jr $+6		;9720	18 04 	. . 
	ld (bc),a			;9722	02 	. 
	ld (bc),a			;9723	02 	. 
l9724h:
	inc bc			;9724	03 	. 
	ld bc,l8003h		;9725	01 03 80 	. . . 
	ld (bc),a			;9728	02 	. 
	ld b,b			;9729	40 	@ 
	add a,e			;972a	83 	. 
	jr nz,l9745h		;972b	20 18 	  . 
	rlca			;972d	07 	. 
	inc bc			;972e	03 	. 
	ld bc,00202h		;972f	01 02 02 	. . . 
	sub b			;9732	90 	. 
	inc b			;9733	04 	. 
	jr l9716h		;9734	18 e0 	. . 
	rlca			;9736	07 	. 
	rra			;9737	1f 	. 
	jr c,$+114		;9738	38 70 	8 p 
l973ah:
	ld h,c			;973a	61 	a 
	rst 20h			;973b	e7 	. 
	rst 38h			;973c	ff 	. 
	rst 8			;973d	cf 	. 
	ret po			;973e	e0 	. 
	ret m			;973f	f8 	. 
	ld a,h			;9740	7c 	| 
	ld a,(hl)			;9741	7e 	~ 
	cp 003h		;9742	fe 03 	. . 
	rst 38h			;9744	ff 	. 
l9745h:
	add a,c			;9745	81 	. 
	rst 8			;9746	cf 	. 
	ld (bc),a			;9747	02 	. 
	rst 38h			;9748	ff 	. 
	ld (bc),a			;9749	02 	. 
	ld a,a			;974a	7f 	 
	add a,e			;974b	83 	. 
	ccf			;974c	3f 	? 
	rra			;974d	1f 	. 
	rlca			;974e	07 	. 
	inc bc			;974f	03 	. 
	rst 38h			;9750	ff 	. 
	ld (bc),a			;9751	02 	. 
	cp 083h		;9752	fe 83 	. . 
	call m,0e0f8h		;9754	fc f8 e0 	. . . 
	ld (bc),a			;9757	02 	. 
	ld bc,00202h		;9758	01 02 02 	. . . 
	adc a,l			;975b	8d 	. 
	ld b,005h		;975c	06 05 	. . 
	ex af,af'			;975e	08 	. 
	ex af,af'			;975f	08 	. 
	add a,b			;9760	80 	. 
	ld b,b			;9761	40 	@ 
	and b			;9762	a0 	. 
	and b			;9763	a0 	. 
	or b			;9764	b0 	. 
	ret nc			;9765	d0 	. 
	ld e,b			;9766	58 	X 
	ld l,b			;9767	68 	h 
	ex de,hl			;9768	eb 	. 
	ld (bc),a			;9769	02 	. 
	call m,0ff02h		;976a	fc 02 ff 	. . . 
	ld (bc),a			;976d	02 	. 
	ld a,a			;976e	7f 	 
	cp l			;976f	bd 	. 
	ld a,0c8h		;9770	3e c8 	> . 
	jr z,$+1		;9772	28 ff 	( . 
	ld h,e			;9774	63 	c 
	sub l			;9775	95 	. 
	ld c,c			;9776	49 	I 
	ld sp,0fe4eh		;9777	31 4e fe 	1 N . 
	res 5,e		;977a	cb ab 	. . 
	sub e			;977c	93 	. 
	defb 0edh;next byte illegal after ed		;977d	ed 	. 
	add a,h			;977e	84 	. 
	ld a,e			;977f	7b 	{ 
l9780h:
	jr c,l9724h		;9780	38 a2 	8 . 
	rla			;9782	17 	. 
	sbc a,a			;9783	9f 	. 
	ld a,a			;9784	7f 	 
	ld a,a			;9785	7f 	 
	sbc a,a			;9786	9f 	. 
	cp (hl)			;9787	be 	. 
	ld c,h			;9788	4c 	L 
	inc bc			;9789	03 	. 
	dec b			;978a	05 	. 
	inc bc			;978b	03 	. 
	ld b,001h		;978c	06 01 	. . 
	dec b			;978e	05 	. 
	inc bc			;978f	03 	. 
	ld b,0a0h		;9790	06 a0 	. . 
	ld b,b			;9792	40 	@ 
	ld h,b			;9793	60 	` 
	ret nz			;9794	c0 	. 
	and b			;9795	a0 	. 
	ld b,b			;9796	40 	@ 
	ld h,b			;9797	60 	` 
	ret nz			;9798	c0 	. 
	ld bc,00305h		;9799	01 05 03 	. . . 
	ld b,001h		;979c	06 01 	. . 
	dec b			;979e	05 	. 
	inc bc			;979f	03 	. 
	ld b,0a0h		;97a0	06 a0 	. . 
	ld b,b			;97a2	40 	@ 
	ld h,b			;97a3	60 	` 
	ret nz			;97a4	c0 	. 
	and b			;97a5	a0 	. 
	ld b,b			;97a6	40 	@ 
	ld h,b			;97a7	60 	` 
	ret nz			;97a8	c0 	. 
	jp pe,0efeah		;97a9	ea ea ef 	. . . 
	cp l			;97ac	bd 	. 
	inc bc			;97ad	03 	. 
	or l			;97ae	b5 	. 
	add a,a			;97af	87 	. 
	rst 30h			;97b0	f7 	. 
	jp m,labbah		;97b1	fa ba ab 	. . . 
	xor e			;97b4	ab 	. 
	xor a			;97b5	af 	. 
	defb 0edh;next byte illegal after ed		;97b6	ed 	. 
	ld (bc),a			;97b7	02 	. 
	ld a,l			;97b8	7d 	} 
	ld (bc),a			;97b9	02 	. 
	nop			;97ba	00 	. 
	adc a,(hl)			;97bb	8e 	. 
	ld (0eeaah),hl		;97bc	22 aa ee 	" . . 
	ld l,e			;97bf	6b 	k 
	ld a,e			;97c0	7b 	{ 
	ld e,e			;97c1	5b 	[ 
	nop			;97c2	00 	. 
	add a,b			;97c3	80 	. 
	adc a,b			;97c4	88 	. 
	xor d			;97c5	aa 	. 
	cp e			;97c6	bb 	. 
	in a,(05bh)		;97c7	db 5b 	. [ 
	ld e,a			;97c9	5f 	_ 
	ld b,000h		;97ca	06 00 	. . 
	add a,h			;97cc	84 	. 
	rlca			;97cd	07 	. 
	ld c,00ch		;97ce	0e 0c 	. . 
	inc e			;97d0	1c 	. 
	ld b,0ffh		;97d1	06 ff 	. . 
	add a,d			;97d3	82 	. 
	jr nc,l980eh		;97d4	30 38 	0 8 
	ld h,0ffh		;97d6	26 ff 	& . 
	add hl,bc			;97d8	09 	. 
	nop			;97d9	00 	. 
	sub a			;97da	97 	. 
	ld bc,00e07h		;97db	01 07 0e 	. . . 
	dec e			;97de	1d 	. 
	ld a,02dh		;97df	3e 2d 	> - 
	ld e,(hl)			;97e1	5e 	^ 
	ld a,0ebh		;97e2	3e eb 	> . 
	ld d,l			;97e4	55 	U 
	add a,d			;97e5	82 	. 
	ld bc,00100h		;97e6	01 00 01 	. . . 
	xor d			;97e9	aa 	. 
	nop			;97ea	00 	. 
	add a,b			;97eb	80 	. 
	ld b,b			;97ec	40 	@ 
	cp a			;97ed	bf 	. 
	ld (hl),b			;97ee	70 	p 
	or b			;97ef	b0 	. 
	ld a,c			;97f0	79 	y 
	jp pe,00003h		;97f1	ea 03 00 	. . . 
	and d			;97f4	a2 	. 
	ret nz			;97f5	c0 	. 
	jr nc,l9780h		;97f6	30 88 	0 . 
	ld d,h			;97f8	54 	T 
	xor h			;97f9	ac 	. 
	ld l,a			;97fa	6f 	o 
	ld e,a			;97fb	5f 	_ 
	xor a			;97fc	af 	. 
	rst 18h			;97fd	df 	. 
	xor a			;97fe	af 	. 
	rst 18h			;97ff	df 	. 
	xor a			;9800	af 	. 
	rst 18h			;9801	df 	. 
	push de			;9802	d5 	. 
	jp m,0fbf5h		;9803	fa f5 fb 	. . . 
	defb 0fdh,0fbh,0ffh	;illegal sequence		;9806	fd fb ff 	. . . 
	ei			;9809	fb 	. 
	xor a			;980a	af 	. 
	rst 18h			;980b	df 	. 
	xor a			;980c	af 	. 
	rst 18h			;980d	df 	. 
l980eh:
	xor a			;980e	af 	. 
	rst 18h			;980f	df 	. 
	xor a			;9810	af 	. 
	rst 18h			;9811	df 	. 
	rst 38h			;9812	ff 	. 
	ei			;9813	fb 	. 
	rst 38h			;9814	ff 	. 
	ei			;9815	fb 	. 
	cp 003h		;9816	fe 03 	. . 
	rst 38h			;9818	ff 	. 
	and b			;9819	a0 	. 
	ld a,c			;981a	79 	y 
	jp pe,0e6f5h		;981b	ea f5 e6 	. . . 
	push af			;981e	f5 	. 
	and 0f1h		;981f	e6 f1 	. . 
	ld h,d			;9821	62 	b 
	ld d,(hl)			;9822	56 	V 
	xor d			;9823	aa 	. 
	ld d,(hl)			;9824	56 	V 
	xor e			;9825	ab 	. 
	ld d,l			;9826	55 	U 
	xor e			;9827	ab 	. 
	ld d,l			;9828	55 	U 
	xor e			;9829	ab 	. 
	pop af			;982a	f1 	. 
	ld l,e			;982b	6b 	k 
	or a			;982c	b7 	. 
	ld l,e			;982d	6b 	k 
	or a			;982e	b7 	. 
	ld l,a			;982f	6f 	o 
	or a			;9830	b7 	. 
	ld a,a			;9831	7f 	 
	push de			;9832	d5 	. 
	ei			;9833	fb 	. 
	push de			;9834	d5 	. 
	ei			;9835	fb 	. 
	push de			;9836	d5 	. 
	ei			;9837	fb 	. 
	push af			;9838	f5 	. 
	ei			;9839	fb 	. 
	inc bc			;983a	03 	. 
	nop			;983b	00 	. 
	sbc a,l			;983c	9d 	. 
	inc bc			;983d	03 	. 
	ld b,009h		;983e	06 09 	. . 
	inc de			;9840	13 	. 
	dec d			;9841	15 	. 
	rlca			;9842	07 	. 
	dec a			;9843	3d 	= 
	jp pe,0fa55h		;9844	ea 55 fa 	. U . 
	defb 0fdh,0fah,0fdh	;illegal sequence		;9847	fd fa fd 	. . . 
	inc hl			;984a	23 	# 
	daa			;984b	27 	' 
	ld c,d			;984c	4a 	J 
	ld b,a			;984d	47 	G 
	ld c,d			;984e	4a 	J 
	sub l			;984f	95 	. 
	adc a,e			;9850	8b 	. 
	sub l			;9851	95 	. 
	jp pe,0aa7ch		;9852	ea 7c aa 	. | . 
	call p,0d4aah		;9855	f4 aa d4 	. . . 
	xor d			;9858	aa 	. 
	call nc,0ff07h		;9859	d4 07 ff 	. . . 
	or e			;985c	b3 	. 
	ld a,a			;985d	7f 	 
	rst 38h			;985e	ff 	. 
	ld a,a			;985f	7f 	 
	cp a			;9860	bf 	. 
	ld a,a			;9861	7f 	 
	cp a			;9862	bf 	. 
	ld a,a			;9863	7f 	 
	xor a			;9864	af 	. 
	ld e,a			;9865	5f 	_ 
	adc a,e			;9866	8b 	. 
	sub l			;9867	95 	. 
	adc a,e			;9868	8b 	. 
	sub l			;9869	95 	. 
	adc a,e			;986a	8b 	. 
	sub l			;986b	95 	. 
	adc a,e			;986c	8b 	. 
	sub l			;986d	95 	. 
	xor b			;986e	a8 	. 
	call nc,0d4a8h		;986f	d4 a8 d4 	. . . 
	xor b			;9872	a8 	. 
	call nc,0d4a8h		;9873	d4 a8 d4 	. . . 
	xor a			;9876	af 	. 
	rst 18h			;9877	df 	. 
	xor a			;9878	af 	. 
	rst 18h			;9879	df 	. 
	xor a			;987a	af 	. 
	rst 18h			;987b	df 	. 
	xor (hl)			;987c	ae 	. 
	rst 18h			;987d	df 	. 
	xor a			;987e	af 	. 
	ld e,e			;987f	5b 	[ 
	xor a			;9880	af 	. 
	ld a,l			;9881	7d 	} 
	di			;9882	f3 	. 
	defb 0ddh,0ffh,07fh	;illegal sequence		;9883	dd ff 7f 	. .  
	xor (hl)			;9886	ae 	. 
	rst 18h			;9887	df 	. 
	xor l			;9888	ad 	. 
	defb 0ddh,0afh,0ddh	;illegal sequence		;9889	dd af dd 	. . . 
	xor d			;988c	aa 	. 
	rst 18h			;988d	df 	. 
	cp a			;988e	bf 	. 
	ld a,a			;988f	7f 	 
	ld b,0ffh		;9890	06 ff 	. . 
	sub b			;9892	90 	. 
	or l			;9893	b5 	. 
	jp c,07ef5h		;9894	da f5 7e 	. . ~ 
	rst 8			;9897	cf 	. 
	ld a,e			;9898	7b 	{ 
	rst 38h			;9899	ff 	. 
	cp 0aah		;989a	fe aa 	. . 
	defb 0ddh,0adh	;xor ixl		;989c	dd ad 	. . 
	rst 18h			;989e	df 	. 
	xor l			;989f	ad 	. 
	rst 18h			;98a0	df 	. 
	xor d			;98a1	aa 	. 
	rst 18h			;98a2	df 	. 
	ex af,af'			;98a3	08 	. 
	rst 38h			;98a4	ff 	. 
	sub b			;98a5	90 	. 
	xor d			;98a6	aa 	. 
	nop			;98a7	00 	. 
	xor d			;98a8	aa 	. 
	xor d			;98a9	aa 	. 
	xor 06bh		;98aa	ee 6b 	. k 
	ld a,e			;98ac	7b 	{ 
	ld e,e			;98ad	5b 	[ 
	xor d			;98ae	aa 	. 
	add a,b			;98af	80 	. 
	xor d			;98b0	aa 	. 
	xor d			;98b1	aa 	. 
	cp e			;98b2	bb 	. 
	in a,(05bh)		;98b3	db 5b 	. [ 
	ld e,a			;98b5	5f 	_ 
	nop			;98b6	00 	. 
	add a,e			;98b7	83 	. 
l98b8h:
	rlca			;98b8	07 	. 
	jr l98dbh		;98b9	18 20 	.   
	ld (bc),a			;98bb	02 	. 
	ld b,b			;98bc	40 	@ 
	inc bc			;98bd	03 	. 
	add a,b			;98be	80 	. 
	adc a,b			;98bf	88 	. 
	ret po			;98c0	e0 	. 
	jr l98c7h		;98c1	18 04 	. . 
	ld (bc),a			;98c3	02 	. 
	ld (bc),a			;98c4	02 	. 
	add hl,bc			;98c5	09 	. 
	dec c			;98c6	0d 	. 
l98c7h:
	dec e			;98c7	1d 	. 
	inc bc			;98c8	03 	. 
	add a,b			;98c9	80 	. 
	ld (bc),a			;98ca	02 	. 
	ld b,a			;98cb	47 	G 
	adc a,(hl)			;98cc	8e 	. 
	inc hl			;98cd	23 	# 
	jr $+9		;98ce	18 07 	. . 
	dec e			;98d0	1d 	. 
	add hl,sp			;98d1	39 	9 
	ld sp,hl			;98d2	f9 	. 
	jp p,l84e2h		;98d3	f2 e2 84 	. . . 
	jr l98b8h		;98d6	18 e0 	. . 
	rlca			;98d8	07 	. 
	jr l98fbh		;98d9	18 20 	.   
l98dbh:
	ld (bc),a			;98db	02 	. 
	ld b,b			;98dc	40 	@ 
	inc bc			;98dd	03 	. 
	add a,b			;98de	80 	. 
	add a,e			;98df	83 	. 
	ret po			;98e0	e0 	. 
	jr $+6		;98e1	18 04 	. . 
	ld (bc),a			;98e3	02 	. 
	ld (bc),a			;98e4	02 	. 
	inc bc			;98e5	03 	. 
	ld bc,l8003h		;98e6	01 03 80 	. . . 
	ld (bc),a			;98e9	02 	. 
	ld b,b			;98ea	40 	@ 
	add a,e			;98eb	83 	. 
	jr nz,l9906h		;98ec	20 18 	  . 
	rlca			;98ee	07 	. 
	inc bc			;98ef	03 	. 
	ld bc,00202h		;98f0	01 02 02 	. . . 
	add a,e			;98f3	83 	. 
	inc b			;98f4	04 	. 
	jr $-30		;98f5	18 e0 	. . 
	ld (bc),a			;98f7	02 	. 
	ld bc,00302h		;98f8	01 02 03 	. . . 
l98fbh:
	ld (bc),a			;98fb	02 	. 
	rlca			;98fc	07 	. 
	ld (bc),a			;98fd	02 	. 
	rrca			;98fe	0f 	. 
	add a,d			;98ff	82 	. 
	add a,b			;9900	80 	. 
l9901h:
	ret nz			;9901	c0 	. 
	ld (bc),a			;9902	02 	. 
	ret po			;9903	e0 	. 
	ld (bc),a			;9904	02 	. 
	ret p			;9905	f0 	. 
l9906h:
	ld (bc),a			;9906	02 	. 
	ret m			;9907	f8 	. 
	add a,c			;9908	81 	. 
	rst 28h			;9909	ef 	. 
	inc b			;990a	04 	. 
	rst 38h			;990b	ff 	. 
	ld (bc),a			;990c	02 	. 
	ld a,a			;990d	7f 	 
	add a,c			;990e	81 	. 
	ccf			;990f	3f 	? 
	ld (bc),a			;9910	02 	. 
	ret m			;9911	f8 	. 
	dec b			;9912	05 	. 
	rst 38h			;9913	ff 	. 
	add a,c			;9914	81 	. 
	cp 006h		;9915	fe 06 	. . 
	rst 38h			;9917	ff 	. 
	add a,e			;9918	83 	. 
	ld a,a			;9919	7f 	 
	ccf			;991a	3f 	? 
	cp 005h		;991b	fe 05 	. . 
	rst 38h			;991d	ff 	. 
	and d			;991e	a2 	. 
	cp 0fch		;991f	fe fc 	. . 
	nop			;9921	00 	. 
	ld (bc),a			;9922	02 	. 
	inc b			;9923	04 	. 
	ld bc,00202h		;9924	01 02 02 	. . . 
	inc b			;9927	04 	. 
	ld bc,l8040h		;9928	01 40 80 	. @ . 
	add a,b			;992b	80 	. 
	jr nz,l996eh		;992c	20 40 	  @ 
	add a,b			;992e	80 	. 
	add a,b			;992f	80 	. 
	jr nz,l9934h		;9930	20 02 	  . 
	ld (bc),a			;9932	02 	. 
	inc b			;9933	04 	. 
l9934h:
	ld bc,00202h		;9934	01 02 02 	. . . 
	inc b			;9937	04 	. 
	ld bc,l8040h		;9938	01 40 80 	. @ . 
	add a,b			;993b	80 	. 
	jr nz,l997eh		;993c	20 40 	  @ 
	add a,b			;993e	80 	. 
	add a,b			;993f	80 	. 
	jr nz,l9952h		;9940	20 10 	  . 
	rst 38h			;9942	ff 	. 
	ld (bc),a			;9943	02 	. 
	ld d,l			;9944	55 	U 
	add a,c			;9945	81 	. 
	ld (hl),a			;9946	77 	w 
	dec b			;9947	05 	. 
	rst 38h			;9948	ff 	. 
	add a,e			;9949	83 	. 
	ld d,c			;994a	51 	Q 
	push de			;994b	d5 	. 
	defb 0ddh,005h,0ffh	;illegal sequence		;994c	dd 05 ff 	. . . 
	rlca			;994f	07 	. 
	nop			;9950	00 	. 
	add a,c			;9951	81 	. 
l9952h:
	ld bc,00302h		;9952	01 02 03 	. . . 
	ld b,000h		;9955	06 00 	. . 
	ld (bc),a			;9957	02 	. 
	ret nz			;9958	c0 	. 
	cpl			;9959	2f 	/ 
	nop			;995a	00 	. 
	sub a			;995b	97 	. 
	ld bc,00e07h		;995c	01 07 0e 	. . . 
	dec e			;995f	1d 	. 
	ld a,02dh		;9960	3e 2d 	> - 
	ld e,(hl)			;9962	5e 	^ 
	ld a,0ebh		;9963	3e eb 	> . 
	ld d,l			;9965	55 	U 
	add a,d			;9966	82 	. 
	ld bc,00100h		;9967	01 00 01 	. . . 
	xor d			;996a	aa 	. 
	nop			;996b	00 	. 
	add a,b			;996c	80 	. 
	ld b,b			;996d	40 	@ 
l996eh:
	cp a			;996e	bf 	. 
	ld (hl),b			;996f	70 	p 
	or b			;9970	b0 	. 
	ld a,c			;9971	79 	y 
	jp pe,00003h		;9972	ea 03 00 	. . . 
	and d			;9975	a2 	. 
	ret nz			;9976	c0 	. 
	jr nc,l9901h		;9977	30 88 	0 . 
	ld d,h			;9979	54 	T 
	xor h			;997a	ac 	. 
	ld l,a			;997b	6f 	o 
	ld e,a			;997c	5f 	_ 
	xor a			;997d	af 	. 
l997eh:
	rst 18h			;997e	df 	. 
	xor a			;997f	af 	. 
	rst 18h			;9980	df 	. 
	xor a			;9981	af 	. 
	rst 18h			;9982	df 	. 
	push de			;9983	d5 	. 
	jp m,0fbf5h		;9984	fa f5 fb 	. . . 
	defb 0fdh,0fbh,0ffh	;illegal sequence		;9987	fd fb ff 	. . . 
	ei			;998a	fb 	. 
	xor a			;998b	af 	. 
	rst 18h			;998c	df 	. 
	xor a			;998d	af 	. 
	rst 18h			;998e	df 	. 
	xor a			;998f	af 	. 
	rst 18h			;9990	df 	. 
	xor a			;9991	af 	. 
	rst 18h			;9992	df 	. 
	rst 38h			;9993	ff 	. 
	ei			;9994	fb 	. 
	rst 38h			;9995	ff 	. 
	ei			;9996	fb 	. 
	cp 003h		;9997	fe 03 	. . 
	rst 38h			;9999	ff 	. 
	and b			;999a	a0 	. 
	ld a,c			;999b	79 	y 
	jp pe,0e6f5h		;999c	ea f5 e6 	. . . 
	push af			;999f	f5 	. 
	and 0f1h		;99a0	e6 f1 	. . 
	ld h,d			;99a2	62 	b 
	ld d,(hl)			;99a3	56 	V 
	xor d			;99a4	aa 	. 
	ld d,(hl)			;99a5	56 	V 
	xor e			;99a6	ab 	. 
	ld d,l			;99a7	55 	U 
	xor e			;99a8	ab 	. 
	ld d,l			;99a9	55 	U 
	xor e			;99aa	ab 	. 
	pop af			;99ab	f1 	. 
	ld l,e			;99ac	6b 	k 
	or a			;99ad	b7 	. 
	ld l,e			;99ae	6b 	k 
	or a			;99af	b7 	. 
	ld l,a			;99b0	6f 	o 
	or a			;99b1	b7 	. 
	ld a,a			;99b2	7f 	 
	push de			;99b3	d5 	. 
	ei			;99b4	fb 	. 
	push de			;99b5	d5 	. 
	ei			;99b6	fb 	. 
	push de			;99b7	d5 	. 
	ei			;99b8	fb 	. 
	push af			;99b9	f5 	. 
	ei			;99ba	fb 	. 
	inc bc			;99bb	03 	. 
	nop			;99bc	00 	. 
	sbc a,l			;99bd	9d 	. 
	inc bc			;99be	03 	. 
	ld b,009h		;99bf	06 09 	. . 
	inc de			;99c1	13 	. 
	dec d			;99c2	15 	. 
	rlca			;99c3	07 	. 
	dec a			;99c4	3d 	= 
	jp pe,0fa55h		;99c5	ea 55 fa 	. U . 
	defb 0fdh,0fah,0fdh	;illegal sequence		;99c8	fd fa fd 	. . . 
	inc hl			;99cb	23 	# 
	daa			;99cc	27 	' 
	ld c,d			;99cd	4a 	J 
	ld b,a			;99ce	47 	G 
	ld c,d			;99cf	4a 	J 
	sub l			;99d0	95 	. 
	adc a,e			;99d1	8b 	. 
	sub l			;99d2	95 	. 
	jp pe,0aa7ch		;99d3	ea 7c aa 	. | . 
	call p,0d4aah		;99d6	f4 aa d4 	. . . 
	xor d			;99d9	aa 	. 
	call nc,0ff07h		;99da	d4 07 ff 	. . . 
	or e			;99dd	b3 	. 
	ld a,a			;99de	7f 	 
	rst 38h			;99df	ff 	. 
	ld a,a			;99e0	7f 	 
sub_99e1h:
	cp a			;99e1	bf 	. 
	ld a,a			;99e2	7f 	 
	cp a			;99e3	bf 	. 
	ld a,a			;99e4	7f 	 
	xor a			;99e5	af 	. 
	ld e,a			;99e6	5f 	_ 
	adc a,e			;99e7	8b 	. 
	sub l			;99e8	95 	. 
	adc a,e			;99e9	8b 	. 
	sub l			;99ea	95 	. 
	adc a,e			;99eb	8b 	. 
	sub l			;99ec	95 	. 
	adc a,e			;99ed	8b 	. 
	sub l			;99ee	95 	. 
	xor b			;99ef	a8 	. 
	call nc,0d4a8h		;99f0	d4 a8 d4 	. . . 
	xor b			;99f3	a8 	. 
	call nc,0d4a8h		;99f4	d4 a8 d4 	. . . 
	xor a			;99f7	af 	. 
	rst 18h			;99f8	df 	. 
	xor a			;99f9	af 	. 
	rst 18h			;99fa	df 	. 
	xor a			;99fb	af 	. 
	rst 18h			;99fc	df 	. 
	xor (hl)			;99fd	ae 	. 
	rst 18h			;99fe	df 	. 
	xor a			;99ff	af 	. 
	ld e,e			;9a00	5b 	[ 
	xor a			;9a01	af 	. 
	ld a,l			;9a02	7d 	} 
	di			;9a03	f3 	. 
	defb 0ddh,0ffh,07fh	;illegal sequence		;9a04	dd ff 7f 	. .  
	xor (hl)			;9a07	ae 	. 
	rst 18h			;9a08	df 	. 
	xor l			;9a09	ad 	. 
	defb 0ddh,0afh,0ddh	;illegal sequence		;9a0a	dd af dd 	. . . 
	xor d			;9a0d	aa 	. 
	rst 18h			;9a0e	df 	. 
	cp a			;9a0f	bf 	. 
	ld a,a			;9a10	7f 	 
	ld b,0ffh		;9a11	06 ff 	. . 
	sub b			;9a13	90 	. 
	or l			;9a14	b5 	. 
	jp c,07ef5h		;9a15	da f5 7e 	. . ~ 
	rst 8			;9a18	cf 	. 
	ld a,e			;9a19	7b 	{ 
	rst 38h			;9a1a	ff 	. 
	cp 0aah		;9a1b	fe aa 	. . 
	defb 0ddh,0adh	;xor ixl		;9a1d	dd ad 	. . 
	rst 18h			;9a1f	df 	. 
	xor l			;9a20	ad 	. 
	rst 18h			;9a21	df 	. 
	xor d			;9a22	aa 	. 
	rst 18h			;9a23	df 	. 
	add hl,bc			;9a24	09 	. 
	rst 38h			;9a25	ff 	. 
	add a,c			;9a26	81 	. 
	ld d,l			;9a27	55 	U 
	ld b,0ffh		;9a28	06 ff 	. . 
	add a,d			;9a2a	82 	. 
	ei			;9a2b	fb 	. 
	push de			;9a2c	d5 	. 
	ld b,0ffh		;9a2d	06 ff 	. . 
	nop			;9a2f	00 	. 
	adc a,l			;9a30	8d 	. 
	nop			;9a31	00 	. 
	rlca			;9a32	07 	. 
	jr l9a65h		;9a33	18 30 	. 0 
	ld hl,07f67h		;9a35	21 67 7f 	! g  
	ld c,a			;9a38	4f 	O 
	nop			;9a39	00 	. 
	ret po			;9a3a	e0 	. 
	ld a,b			;9a3b	78 	x 
	ld a,h			;9a3c	7c 	| 
	call m,0fe03h		;9a3d	fc 03 fe 	. . . 
	add a,c			;9a40	81 	. 
	ld c,a			;9a41	4f 	O 
	ld (bc),a			;9a42	02 	. 
	ld a,a			;9a43	7f 	 
	ld (bc),a			;9a44	02 	. 
	ccf			;9a45	3f 	? 
	add a,e			;9a46	83 	. 
	rra			;9a47	1f 	. 
	rlca			;9a48	07 	. 
	nop			;9a49	00 	. 
	inc bc			;9a4a	03 	. 
	cp 002h		;9a4b	fe 02 	. . 
	call m,0f890h		;9a4d	fc 90 f8 	. . . 
	ret po			;9a50	e0 	. 
	nop			;9a51	00 	. 
	nop			;9a52	00 	. 
	rlca			;9a53	07 	. 
	jr l9a86h		;9a54	18 30 	. 0 
	ld hl,07f67h		;9a56	21 67 7f 	! g  
	ld c,a			;9a59	4f 	O 
	nop			;9a5a	00 	. 
	ret po			;9a5b	e0 	. 
	ld a,b			;9a5c	78 	x 
	ld a,h			;9a5d	7c 	| 
	call m,0fe03h		;9a5e	fc 03 fe 	. . . 
	add a,c			;9a61	81 	. 
	ld c,a			;9a62	4f 	O 
	ld (bc),a			;9a63	02 	. 
	ld a,a			;9a64	7f 	 
l9a65h:
	ld (bc),a			;9a65	02 	. 
	ccf			;9a66	3f 	? 
	add a,e			;9a67	83 	. 
	rra			;9a68	1f 	. 
	rlca			;9a69	07 	. 
	nop			;9a6a	00 	. 
	inc bc			;9a6b	03 	. 
	cp 002h		;9a6c	fe 02 	. . 
	call m,0f882h		;9a6e	fc 82 f8 	. . . 
	ret po			;9a71	e0 	. 
	inc bc			;9a72	03 	. 
	nop			;9a73	00 	. 
	ld (bc),a			;9a74	02 	. 
	ld bc,00302h		;9a75	01 02 03 	. . . 
	ld (bc),a			;9a78	02 	. 
	rlca			;9a79	07 	. 
	add a,d			;9a7a	82 	. 
	nop			;9a7b	00 	. 
	add a,b			;9a7c	80 	. 
	ld (bc),a			;9a7d	02 	. 
	ret nz			;9a7e	c0 	. 
	ld (bc),a			;9a7f	02 	. 
	ret po			;9a80	e0 	. 
	ld (bc),a			;9a81	02 	. 
	ret p			;9a82	f0 	. 
	and b			;9a83	a0 	. 
	rlca			;9a84	07 	. 
	ld h,e			;9a85	63 	c 
l9a86h:
	ld a,e			;9a86	7b 	{ 
	ld a,l			;9a87	7d 	} 
	ld a,(hl)			;9a88	7e 	~ 
	ld a,03eh		;9a89	3e 3e 	> > 
	dec e			;9a8b	1d 	. 
	ret p			;9a8c	f0 	. 
	ret p			;9a8d	f0 	. 
	ret nz			;9a8e	c0 	. 
	sbc a,(hl)			;9a8f	9e 	. 
	ld a,(hl)			;9a90	7e 	~ 
	cp 0feh		;9a91	fe fe 	. . 
	call m,07d01h		;9a93	fc 01 7d 	. . } 
	ld a,(hl)			;9a96	7e 	~ 
	ld a,l			;9a97	7d 	} 
	ld a,e			;9a98	7b 	{ 
	ld a,e			;9a99	7b 	{ 
	scf			;9a9a	37 	7 
	rlca			;9a9b	07 	. 
	call m,066fah		;9a9c	fc fa 66 	. . f 
	sbc a,(hl)			;9a9f	9e 	. 
	sbc a,0eeh		;9aa0	de ee 	. . 
	call pe,020f0h		;9aa2	ec f0 20 	. .   
	nop			;9aa5	00 	. 
	djnz $+1		;9aa6	10 ff 	. . 
	ld (bc),a			;9aa8	02 	. 
	ld d,l			;9aa9	55 	U 
	add a,c			;9aaa	81 	. 
	ld (hl),a			;9aab	77 	w 
	dec b			;9aac	05 	. 
	rst 38h			;9aad	ff 	. 
	add a,e			;9aae	83 	. 
	ld d,c			;9aaf	51 	Q 
	push de			;9ab0	d5 	. 
	defb 0ddh,005h,0ffh	;illegal sequence		;9ab1	dd 05 ff 	. . . 
	ld b,000h		;9ab4	06 00 	. . 
	add a,h			;9ab6	84 	. 
	rlca			;9ab7	07 	. 
	ld c,00ch		;9ab8	0e 0c 	. . 
	inc e			;9aba	1c 	. 
	ld b,0ffh		;9abb	06 ff 	. . 
	add a,d			;9abd	82 	. 
	jr nc,l9af8h		;9abe	30 38 	0 8 
	ld h,0ffh		;9ac0	26 ff 	& . 
	ld c,000h		;9ac2	0e 00 	. . 
	add a,d			;9ac4	82 	. 
	djnz l9ae7h		;9ac5	10 20 	.   
	inc c			;9ac7	0c 	. 
	nop			;9ac8	00 	. 
	ld (bc),a			;9ac9	02 	. 
	rrca			;9aca	0f 	. 
	add a,d			;9acb	82 	. 
	ld b,015h		;9acc	06 15 	. . 
	inc b			;9ace	04 	. 
	nop			;9acf	00 	. 
	adc a,h			;9ad0	8c 	. 
	ret nz			;9ad1	c0 	. 
	ld (hl),b			;9ad2	70 	p 
	xor b			;9ad3	a8 	. 
	ld d,b			;9ad4	50 	P 
	djnz l9af7h		;9ad5	10 20 	.   
	ld d,b			;9ad7	50 	P 
	jr nz,l9b2ah		;9ad8	20 50 	  P 
	jr nz,l9b2ch		;9ada	20 50 	  P 
	jr nz,$+10		;9adc	20 08 	  . 
	nop			;9ade	00 	. 
	adc a,b			;9adf	88 	. 
	ld d,b			;9ae0	50 	P 
	jr nz,l9b33h		;9ae1	20 50 	  P 
	jr nz,l9b35h		;9ae3	20 50 	  P 
	jr nz,l9b37h		;9ae5	20 50 	  P 
l9ae7h:
	jr nz,l9af1h		;9ae7	20 08 	  . 
	nop			;9ae9	00 	. 
	and b			;9aea	a0 	. 
	ld b,015h		;9aeb	06 15 	. . 
	ld a,(bc)			;9aed	0a 	. 
	add hl,de			;9aee	19 	. 
	ld a,(bc)			;9aef	0a 	. 
	add hl,de			;9af0	19 	. 
l9af1h:
	ld c,01dh		;9af1	0e 1d 	. . 
	xor b			;9af3	a8 	. 
	ld d,h			;9af4	54 	T 
	xor b			;9af5	a8 	. 
	ld d,h			;9af6	54 	T 
l9af7h:
	xor d			;9af7	aa 	. 
l9af8h:
	ld d,h			;9af8	54 	T 
	xor d			;9af9	aa 	. 
	ld d,h			;9afa	54 	T 
	ld c,014h		;9afb	0e 14 	. . 
	ex af,af'			;9afd	08 	. 
	inc d			;9afe	14 	. 
	ex af,af'			;9aff	08 	. 
	djnz l9b0ah		;9b00	10 08 	. . 
	nop			;9b02	00 	. 
	ld hl,(02a04h)		;9b03	2a 04 2a 	* . * 
	inc b			;9b06	04 	. 
	ld hl,(00a04h)		;9b07	2a 04 0a 	* . . 
l9b0ah:
	inc b			;9b0a	04 	. 
	inc b			;9b0b	04 	. 
	nop			;9b0c	00 	. 
	sbc a,h			;9b0d	9c 	. 
	ld bc,00c06h		;9b0e	01 06 0c 	. . . 
	ld a,(bc)			;9b11	0a 	. 
	nop			;9b12	00 	. 
	ld (bc),a			;9b13	02 	. 
	dec d			;9b14	15 	. 
	xor d			;9b15	aa 	. 
	dec b			;9b16	05 	. 
	ld (bc),a			;9b17	02 	. 
	dec b			;9b18	05 	. 
	ld (bc),a			;9b19	02 	. 
	inc e			;9b1a	1c 	. 
	jr l9b52h		;9b1b	18 35 	. 5 
	jr c,l9b54h		;9b1d	38 35 	8 5 
	ld l,d			;9b1f	6a 	j 
	ld (hl),h			;9b20	74 	t 
	ld l,d			;9b21	6a 	j 
	dec d			;9b22	15 	. 
	add a,e			;9b23	83 	. 
	ld d,l			;9b24	55 	U 
	dec bc			;9b25	0b 	. 
	ld d,l			;9b26	55 	U 
	dec hl			;9b27	2b 	+ 
	ld d,l			;9b28	55 	U 
	dec hl			;9b29	2b 	+ 
l9b2ah:
	rlca			;9b2a	07 	. 
	nop			;9b2b	00 	. 
l9b2ch:
	or e			;9b2c	b3 	. 
	add a,b			;9b2d	80 	. 
	nop			;9b2e	00 	. 
	add a,b			;9b2f	80 	. 
	ld b,b			;9b30	40 	@ 
	add a,b			;9b31	80 	. 
	ld b,b			;9b32	40 	@ 
l9b33h:
	add a,b			;9b33	80 	. 
	ld d,b			;9b34	50 	P 
l9b35h:
	and b			;9b35	a0 	. 
	ld (hl),h			;9b36	74 	t 
l9b37h:
	ld l,d			;9b37	6a 	j 
	ld (hl),h			;9b38	74 	t 
	ld l,d			;9b39	6a 	j 
	ld (hl),h			;9b3a	74 	t 
	ld l,d			;9b3b	6a 	j 
	ld (hl),h			;9b3c	74 	t 
	ld l,d			;9b3d	6a 	j 
	ld d,a			;9b3e	57 	W 
	dec hl			;9b3f	2b 	+ 
	ld d,a			;9b40	57 	W 
	dec hl			;9b41	2b 	+ 
	ld d,a			;9b42	57 	W 
	dec hl			;9b43	2b 	+ 
	ld d,a			;9b44	57 	W 
	dec hl			;9b45	2b 	+ 
	ld d,b			;9b46	50 	P 
	jr nz,l9b99h		;9b47	20 50 	  P 
	jr nz,l9b9bh		;9b49	20 50 	  P 
	jr nz,$+83		;9b4b	20 51 	  Q 
	jr nz,l9b9fh		;9b4d	20 50 	  P 
	and h			;9b4f	a4 	. 
	ld d,b			;9b50	50 	P 
	add a,d			;9b51	82 	. 
l9b52h:
	nop			;9b52	00 	. 
	ld (bc),a			;9b53	02 	. 
l9b54h:
	nop			;9b54	00 	. 
	add a,b			;9b55	80 	. 
	ld d,c			;9b56	51 	Q 
	jr nz,l9ba9h		;9b57	20 50 	  P 
	jr nz,l9babh		;9b59	20 50 	  P 
	jr nz,l9bb2h		;9b5b	20 55 	  U 
	jr nz,l9b9fh		;9b5d	20 40 	  @ 
	add a,b			;9b5f	80 	. 
	ld b,000h		;9b60	06 00 	. . 
	sub b			;9b62	90 	. 
	ld c,d			;9b63	4a 	J 
	dec h			;9b64	25 	% 
	ld a,(bc)			;9b65	0a 	. 
	add a,c			;9b66	81 	. 
	nop			;9b67	00 	. 
	add a,b			;9b68	80 	. 
	nop			;9b69	00 	. 
	ld bc,02055h		;9b6a	01 55 20 	. U   
	ld d,b			;9b6d	50 	P 
	jr nz,l9bc0h		;9b6e	20 50 	  P 
	jr nz,l9bc7h		;9b70	20 55 	  U 
	jr nz,l9b7ch		;9b72	20 08 	  . 
	nop			;9b74	00 	. 
	add a,e			;9b75	83 	. 
	ld d,l			;9b76	55 	U 
	rst 38h			;9b77	ff 	. 
	ld (hl),a			;9b78	77 	w 
	dec b			;9b79	05 	. 
	rst 38h			;9b7a	ff 	. 
	add a,e			;9b7b	83 	. 
l9b7ch:
	ld d,l			;9b7c	55 	U 
	rst 38h			;9b7d	ff 	. 
	defb 0ddh,005h,0ffh	;illegal sequence		;9b7e	dd 05 ff 	. . . 
	nop			;9b81	00 	. 
	ld (bc),a			;9b82	02 	. 
	nop			;9b83	00 	. 
	adc a,b			;9b84	88 	. 
	ld bc,01f07h		;9b85	01 07 1f 	. . . 
	ccf			;9b88	3f 	? 
	ld a,a			;9b89	7f 	 
	rst 38h			;9b8a	ff 	. 
	rlca			;9b8b	07 	. 
	ccf			;9b8c	3f 	? 
	ld d,0ffh		;9b8d	16 ff 	. . 
	add a,c			;9b8f	81 	. 
	add a,b			;9b90	80 	. 
	ld b,0bfh		;9b91	06 bf 	. . 
	inc bc			;9b93	03 	. 
	cp (hl)			;9b94	be 	. 
	ld (bc),a			;9b95	02 	. 
	cp h			;9b96	bc 	. 
	add a,l			;9b97	85 	. 
	cp b			;9b98	b8 	. 
l9b99h:
	or b			;9b99	b0 	. 
	or a			;9b9a	b7 	. 
l9b9bh:
	or b			;9b9b	b0 	. 
	ld bc,0fd09h		;9b9c	01 09 fd 	. . . 
l9b9fh:
	ld (bc),a			;9b9f	02 	. 
	ld a,l			;9ba0	7d 	} 
	add a,h			;9ba1	84 	. 
	dec a			;9ba2	3d 	= 
	dec c			;9ba3	0d 	. 
	defb 0edh;next byte illegal after ed		;9ba4	ed 	. 
	dec c			;9ba5	0d 	. 
	ld c,03fh		;9ba6	0e 3f 	. ? 
	add a,d			;9ba8	82 	. 
l9ba9h:
	ld a,a			;9ba9	7f 	 
	ccf			;9baa	3f 	? 
l9babh:
	ld (bc),a			;9bab	02 	. 
	rst 38h			;9bac	ff 	. 
	inc bc			;9bad	03 	. 
	ret m			;9bae	f8 	. 
	dec b			;9baf	05 	. 
	rst 38h			;9bb0	ff 	. 
	add a,e			;9bb1	83 	. 
l9bb2h:
	or 0fch		;9bb2	f6 fc 	. . 
	ld sp,hl			;9bb4	f9 	. 
	dec b			;9bb5	05 	. 
	rst 38h			;9bb6	ff 	. 
	add a,e			;9bb7	83 	. 
	ld c,a			;9bb8	4f 	O 
	sbc a,a			;9bb9	9f 	. 
	cpl			;9bba	2f 	/ 
	inc bc			;9bbb	03 	. 
	rst 38h			;9bbc	ff 	. 
	add a,e			;9bbd	83 	. 
	inc bc			;9bbe	03 	. 
	rra			;9bbf	1f 	. 
l9bc0h:
	ld a,a			;9bc0	7f 	 
	rlca			;9bc1	07 	. 
	rst 38h			;9bc2	ff 	. 
	inc b			;9bc3	04 	. 
	cp 085h		;9bc4	fe 85 	. . 
	rst 38h			;9bc6	ff 	. 
l9bc7h:
	cp 007h		;9bc7	fe 07 	. . 
	rra			;9bc9	1f 	. 
	ccf			;9bca	3f 	? 
	ld (bc),a			;9bcb	02 	. 
	ld a,a			;9bcc	7f 	 
	rrca			;9bcd	0f 	. 
	rst 38h			;9bce	ff 	. 
	add a,c			;9bcf	81 	. 
	rst 20h			;9bd0	e7 	. 
	dec bc			;9bd1	0b 	. 
	jp 00002h		;9bd2	c3 02 00 	. . . 
	adc a,b			;9bd5	88 	. 
	ld bc,00703h		;9bd6	01 03 07 	. . . 
	rrca			;9bd9	0f 	. 
	rra			;9bda	1f 	. 
	rra			;9bdb	1f 	. 
	rrca			;9bdc	0f 	. 
	ld a,a			;9bdd	7f 	 
	ld b,0ffh		;9bde	06 ff 	. . 
	ld (bc),a			;9be0	02 	. 
	ccf			;9be1	3f 	? 
	ld (bc),a			;9be2	02 	. 
	ld a,a			;9be3	7f 	 
	inc c			;9be4	0c 	. 
	rst 38h			;9be5	ff 	. 
	ld (bc),a			;9be6	02 	. 
	cp 008h		;9be7	fe 08 	. . 
	rst 38h			;9be9	ff 	. 
	dec b			;9bea	05 	. 
	ex (sp),hl			;9beb	e3 	. 
	dec c			;9bec	0d 	. 
	rst 38h			;9bed	ff 	. 
	add a,c			;9bee	81 	. 
	rst 30h			;9bef	f7 	. 
	inc bc			;9bf0	03 	. 
	ex (sp),hl			;9bf1	e3 	. 
	inc b			;9bf2	04 	. 
	nop			;9bf3	00 	. 
	ld (bc),a			;9bf4	02 	. 
	ld a,(hl)			;9bf5	7e 	~ 
	ld a,(bc)			;9bf6	0a 	. 
	rst 38h			;9bf7	ff 	. 
	dec b			;9bf8	05 	. 
	nop			;9bf9	00 	. 
	add a,c			;9bfa	81 	. 
	djnz l9c00h		;9bfb	10 03 	. . 
	jr c,$-107		;9bfd	38 93 	8 . 
	ld d,(hl)			;9bff	56 	V 
l9c00h:
	ld l,(hl)			;9c00	6e 	n 
	jr z,$+8		;9c01	28 06 	( . 
	ld l,(hl)			;9c03	6e 	n 
	ld d,(hl)			;9c04	56 	V 
	jr c,l9c17h		;9c05	38 10 	8 . 
	ex af,af'			;9c07	08 	. 
	djnz l9c12h		;9c08	10 08 	. . 
	djnz l9c14h		;9c0a	10 08 	. . 
	djnz l9c16h		;9c0c	10 08 	. . 
	dec d			;9c0e	15 	. 
	dec d			;9c0f	15 	. 
	djnz l9c54h		;9c10	10 42 	. B 
l9c12h:
	inc bc			;9c12	03 	. 
	ld c,d			;9c13	4a 	J 
l9c14h:
	add a,a			;9c14	87 	. 
	ex af,af'			;9c15	08 	. 
l9c16h:
	dec b			;9c16	05 	. 
l9c17h:
	ld b,l			;9c17	45 	E 
	ld d,h			;9c18	54 	T 
	ld d,h			;9c19	54 	T 
	ld d,b			;9c1a	50 	P 
	ld (de),a			;9c1b	12 	. 
	ld (bc),a			;9c1c	02 	. 
	add a,d			;9c1d	82 	. 
	inc h			;9c1e	24 	$ 
	rst 38h			;9c1f	ff 	. 
	dec c			;9c20	0d 	. 
	nop			;9c21	00 	. 
	add a,d			;9c22	82 	. 
	inc sp			;9c23	33 	3 
	ld h,a			;9c24	67 	g 
	inc bc			;9c25	03 	. 
	ld e,a			;9c26	5f 	_ 
	sub d			;9c27	92 	. 
	ld a,a			;9c28	7f 	 
	ld a,(hl)			;9c29	7e 	~ 
	rra			;9c2a	1f 	. 
	ld e,a			;9c2b	5f 	_ 
	ld e,a			;9c2c	5f 	_ 
	ccf			;9c2d	3f 	? 
	ld a,a			;9c2e	7f 	 
	ld a,a			;9c2f	7f 	 
	ld (0f800h),a		;9c30	32 00 f8 	2 . . 
	jp m,0fcfah		;9c33	fa fa fc 	. . . 
	cp 0feh		;9c36	fe fe 	. . 
	ld c,h			;9c38	4c 	L 
	nop			;9c39	00 	. 
	nop			;9c3a	00 	. 
	ld (bc),a			;9c3b	02 	. 
	nop			;9c3c	00 	. 
	adc a,d			;9c3d	8a 	. 
	ld bc,00f07h		;9c3e	01 07 0f 	. . . 
	rra			;9c41	1f 	. 
	ccf			;9c42	3f 	? 
	rst 38h			;9c43	ff 	. 
	rlca			;9c44	07 	. 
	dec de			;9c45	1b 	. 
	call po,004f8h		;9c46	e4 f8 04 	. . . 
	rst 38h			;9c49	ff 	. 
	add a,a			;9c4a	87 	. 
	cp a			;9c4b	bf 	. 
	sbc a,a			;9c4c	9f 	. 
	cp a			;9c4d	bf 	. 
	sbc a,a			;9c4e	9f 	. 
	cp a			;9c4f	bf 	. 
	sbc a,a			;9c50	9f 	. 
	cp a			;9c51	bf 	. 
	ld a,(bc)			;9c52	0a 	. 
	rst 38h			;9c53	ff 	. 
l9c54h:
	ld (bc),a			;9c54	02 	. 
	ret nz			;9c55	c0 	. 
	inc b			;9c56	04 	. 
	pop bc			;9c57	c1 	. 
	add a,d			;9c58	82 	. 
	jp 003cfh		;9c59	c3 cf 03 	. . . 
	jp 0c785h		;9c5c	c3 85 c7 	. . . 
	rst 8			;9c5f	cf 	. 
	ret z			;9c60	c8 	. 
	rst 8			;9c61	cf 	. 
	rst 38h			;9c62	ff 	. 
	ld b,003h		;9c63	06 03 	. . 
	add a,d			;9c65	82 	. 
	add a,e			;9c66	83 	. 
	di			;9c67	f3 	. 
	inc bc			;9c68	03 	. 
	add a,e			;9c69	83 	. 
	sbc a,e			;9c6a	9b 	. 
	jp 013f3h		;9c6b	c3 f3 13 	. . . 
	di			;9c6e	f3 	. 
	ccf			;9c6f	3f 	? 
	jr nz,$+65		;9c70	20 3f 	  ? 
	jr nz,l9caeh		;9c72	20 3a 	  : 
	dec (hl)			;9c74	35 	5 
	ld a,(03a35h)		;9c75	3a 35 3a 	: 5 : 
	dec (hl)			;9c78	35 	5 
	ld a,(03a35h)		;9c79	3a 35 3a 	: 5 : 
	dec (hl)			;9c7c	35 	5 
	ld a,(lbf75h)		;9c7d	3a 75 bf 	: u . 
	sbc a,a			;9c80	9f 	. 
	cp b			;9c81	b8 	. 
	sbc a,b			;9c82	98 	. 
	cp b			;9c83	b8 	. 
	sbc a,a			;9c84	9f 	. 
	cp a			;9c85	bf 	. 
	inc bc			;9c86	03 	. 
	rst 38h			;9c87	ff 	. 
	inc bc			;9c88	03 	. 
	ret p			;9c89	f0 	. 
	dec b			;9c8a	05 	. 
	rst 38h			;9c8b	ff 	. 
	inc bc			;9c8c	03 	. 
	rrca			;9c8d	0f 	. 
	inc bc			;9c8e	03 	. 
	rst 38h			;9c8f	ff 	. 
	add a,e			;9c90	83 	. 
	inc bc			;9c91	03 	. 
	rra			;9c92	1f 	. 
	ld a,a			;9c93	7f 	 
	ld b,0ffh		;9c94	06 ff 	. . 
	inc b			;9c96	04 	. 
	call m,0fd86h		;9c97	fc 86 fd 	. . . 
	call m,007fdh		;9c9a	fc fd 07 	. . . 
	rra			;9c9d	1f 	. 
	ccf			;9c9e	3f 	? 
sub_9c9fh:
	ld (bc),a			;9c9f	02 	. 
	ld a,a			;9ca0	7f 	 
	ld (bc),a			;9ca1	02 	. 
	rst 38h			;9ca2	ff 	. 
	adc a,(hl)			;9ca3	8e 	. 
	nop			;9ca4	00 	. 
	rst 38h			;9ca5	ff 	. 
	xor d			;9ca6	aa 	. 
	ld (hl),a			;9ca7	77 	w 
	xor d			;9ca8	aa 	. 
	rst 38h			;9ca9	ff 	. 
	xor d			;9caa	aa 	. 
	defb 0ddh,0aah,0ffh	;illegal sequence		;9cab	dd aa ff 	. . . 
l9caeh:
	xor d			;9cae	aa 	. 
	ld a,a			;9caf	7f 	 
	cp 0e7h		;9cb0	fe e7 	. . 
	inc b			;9cb2	04 	. 
	jp 0db04h		;9cb3	c3 04 db 	. . . 
	inc bc			;9cb6	03 	. 
	rst 38h			;9cb7	ff 	. 
	ld (bc),a			;9cb8	02 	. 
	nop			;9cb9	00 	. 
	adc a,b			;9cba	88 	. 
	ld bc,00703h		;9cbb	01 03 07 	. . . 
	rrca			;9cbe	0f 	. 
	rra			;9cbf	1f 	. 
	rra			;9cc0	1f 	. 
	rrca			;9cc1	0f 	. 
	ld a,a			;9cc2	7f 	 
	ld b,0ffh		;9cc3	06 ff 	. . 
	ld (bc),a			;9cc5	02 	. 
	ccf			;9cc6	3f 	? 
	ld (bc),a			;9cc7	02 	. 
	ld a,a			;9cc8	7f 	 
	inc bc			;9cc9	03 	. 
	rst 38h			;9cca	ff 	. 
	add a,c			;9ccb	81 	. 
	nop			;9ccc	00 	. 
	rlca			;9ccd	07 	. 
	rst 38h			;9cce	ff 	. 
	add a,c			;9ccf	81 	. 
	nop			;9cd0	00 	. 
	ld (bc),a			;9cd1	02 	. 
l9cd2h:
	cp 008h		;9cd2	fe 08 	. . 
	rst 38h			;9cd4	ff 	. 
	add a,h			;9cd5	84 	. 
	ld h,e			;9cd6	63 	c 
	ex (sp),hl			;9cd7	e3 	. 
	ex (sp),hl			;9cd8	e3 	. 
	ex de,hl			;9cd9	eb 	. 
	inc bc			;9cda	03 	. 
	rst 38h			;9cdb	ff 	. 
	adc a,a			;9cdc	8f 	. 
	xor d			;9cdd	aa 	. 
	rst 38h			;9cde	ff 	. 
	xor d			;9cdf	aa 	. 
	rst 38h			;9ce0	ff 	. 
	xor d			;9ce1	aa 	. 
	rst 38h			;9ce2	ff 	. 
	xor d			;9ce3	aa 	. 
	rst 38h			;9ce4	ff 	. 
	xor d			;9ce5	aa 	. 
	rst 38h			;9ce6	ff 	. 
	xor d			;9ce7	aa 	. 
	rst 30h			;9ce8	f7 	. 
	and d			;9ce9	a2 	. 
	ex de,hl			;9cea	eb 	. 
	cp (hl)			;9ceb	be 	. 
	inc b			;9cec	04 	. 
	nop			;9ced	00 	. 
	add a,h			;9cee	84 	. 
	ld a,(hl)			;9cef	7e 	~ 
	ld d,(hl)			;9cf0	56 	V 
	ex de,hl			;9cf1	eb 	. 
	ld d,l			;9cf2	55 	U 
	ex af,af'			;9cf3	08 	. 
	rst 38h			;9cf4	ff 	. 
	inc b			;9cf5	04 	. 
	nop			;9cf6	00 	. 
	adc a,h			;9cf7	8c 	. 
	djnz l9d22h		;9cf8	10 28 	. ( 
	ld b,h			;9cfa	44 	D 
	ld b,h			;9cfb	44 	D 
	rst 0			;9cfc	c7 	. 
	xor c			;9cfd	a9 	. 
	sub c			;9cfe	91 	. 
	ld d,(hl)			;9cff	56 	V 
	ld sp,hl			;9d00	f9 	. 
	sub c			;9d01	91 	. 
	xor c			;9d02	a9 	. 
	ld b,(hl)			;9d03	46 	F 
	ex af,af'			;9d04	08 	. 
	jr $+4		;9d05	18 02 	. . 
	jp pe,0ef82h		;9d07	ea 82 ef 	. . . 
	cp l			;9d0a	bd 	. 
	inc bc			;9d0b	03 	. 
	or l			;9d0c	b5 	. 
	add a,a			;9d0d	87 	. 
	rst 30h			;9d0e	f7 	. 
	jp m,labbah		;9d0f	fa ba ab 	. . . 
	xor e			;9d12	ab 	. 
	xor a			;9d13	af 	. 
	defb 0edh;next byte illegal after ed		;9d14	ed 	. 
l9d15h:
	ld (bc),a			;9d15	02 	. 
	ld a,l			;9d16	7d 	} 
	ld hl,002ffh		;9d17	21 ff 02 	! . . 
	nop			;9d1a	00 	. 
	dec c			;9d1b	0d 	. 
	rst 38h			;9d1c	ff 	. 
	ld (bc),a			;9d1d	02 	. 
	nop			;9d1e	00 	. 
	sub h			;9d1f	94 	. 
	daa			;9d20	27 	' 
l9d21h:
	ld c,h			;9d21	4c 	L 
l9d22h:
	ld c,b			;9d22	48 	H 
	ld c,b			;9d23	48 	H 
	inc h			;9d24	24 	$ 
	ld a,(de)			;9d25	1a 	. 
	inc d			;9d26	14 	. 
	dec bc			;9d27	0b 	. 
	ex af,af'			;9d28	08 	. 
	djnz l9d57h		;9d29	10 2c 	. , 
	ld (00000h),a		;9d2b	32 00 00 	2 . . 
	ex af,af'			;9d2e	08 	. 
	ret nc			;9d2f	d0 	. 
	djnz l9d3ah		;9d30	10 08 	. . 
	inc (hl)			;9d32	34 	4 
	ld c,h			;9d33	4c 	L 
	ld (bc),a			;9d34	02 	. 
	nop			;9d35	00 	. 
	nop			;9d36	00 	. 
	inc b			;9d37	04 	. 
	nop			;9d38	00 	. 
	sub h			;9d39	94 	. 
l9d3ah:
	inc de			;9d3a	13 	. 
	inc h			;9d3b	24 	$ 
	ld c,b			;9d3c	48 	H 
	rst 38h			;9d3d	ff 	. 
	rlca			;9d3e	07 	. 
	dec de			;9d3f	1b 	. 
	ld h,h			;9d40	64 	d 
	adc a,b			;9d41	88 	. 
	ex af,af'			;9d42	08 	. 
	djnz l9d55h		;9d43	10 10 	. . 
	rst 38h			;9d45	ff 	. 
	ret z			;9d46	c8 	. 
	ret pe			;9d47	e8 	. 
	ret z			;9d48	c8 	. 
	ret pe			;9d49	e8 	. 
	ret z			;9d4a	c8 	. 
	ret pe			;9d4b	e8 	. 
	ret z			;9d4c	c8 	. 
	rst 38h			;9d4d	ff 	. 
	rlca			;9d4e	07 	. 
	djnz l9cd2h		;9d4f	10 81 	. . 
	rst 38h			;9d51	ff 	. 
	inc bc			;9d52	03 	. 
	nop			;9d53	00 	. 
	inc b			;9d54	04 	. 
l9d55h:
	rrca			;9d55	0f 	. 
	add a,c			;9d56	81 	. 
l9d57h:
	adc a,a			;9d57	8f 	. 
	ld b,00fh		;9d58	06 0f 	. . 
	add a,d			;9d5a	82 	. 
	ex af,af'			;9d5b	08 	. 
	adc a,a			;9d5c	8f 	. 
	inc bc			;9d5d	03 	. 
	nop			;9d5e	00 	. 
	inc b			;9d5f	04 	. 
	ret p			;9d60	f0 	. 
	add a,c			;9d61	81 	. 
	pop af			;9d62	f1 	. 
	ld b,0f0h		;9d63	06 f0 	. . 
	add a,e			;9d65	83 	. 
	djnz $-13		;9d66	10 f1 	. . 
	ccf			;9d68	3f 	? 
	inc bc			;9d69	03 	. 
	jr nz,l9d15h		;9d6a	20 a9 	  . 
	dec h			;9d6c	25 	% 
	ld hl,(02a25h)		;9d6d	2a 25 2a 	* % * 
	dec h			;9d70	25 	% 
	ld hl,(02a25h)		;9d71	2a 25 2a 	* % * 
	dec h			;9d74	25 	% 
	ld hl,(02a25h)		;9d75	2a 25 2a 	* % * 
	ret z			;9d78	c8 	. 
	rst 28h			;9d79	ef 	. 
	rst 8			;9d7a	cf 	. 
	rst 28h			;9d7b	ef 	. 
	rst 8			;9d7c	cf 	. 
	rst 28h			;9d7d	ef 	. 
	ret z			;9d7e	c8 	. 
	rst 38h			;9d7f	ff 	. 
	djnz l9d21h		;9d80	10 9f 	. . 
	sbc a,c			;9d82	99 	. 
	sub e			;9d83	93 	. 
	sub (hl)			;9d84	96 	. 
	sbc a,a			;9d85	9f 	. 
	djnz $+1		;9d86	10 ff 	. . 
	ex af,af'			;9d88	08 	. 
	ld sp,hl			;9d89	f9 	. 
	cp c			;9d8a	b9 	. 
	ld l,c			;9d8b	69 	i 
	exx			;9d8c	d9 	. 
	ld sp,hl			;9d8d	f9 	. 
	ex af,af'			;9d8e	08 	. 
	rst 38h			;9d8f	ff 	. 
	inc bc			;9d90	03 	. 
	dec c			;9d91	0d 	. 
	ld (de),a			;9d92	12 	. 
	inc h			;9d93	24 	$ 
	rst 38h			;9d94	ff 	. 
	inc bc			;9d95	03 	. 
	and h			;9d96	a4 	. 
	adc a,e			;9d97	8b 	. 
	rst 38h			;9d98	ff 	. 
	and h			;9d99	a4 	. 
	and l			;9d9a	a5 	. 
	and l			;9d9b	a5 	. 
	defb 0fdh,0a5h	;and iyl		;9d9c	fd a5 	. . 
	and h			;9d9e	a4 	. 
	and l			;9d9f	a5 	. 
	rlca			;9da0	07 	. 
	rra			;9da1	1f 	. 
	ccf			;9da2	3f 	? 
	ld (bc),a			;9da3	02 	. 
	ld a,a			;9da4	7f 	 
	inc b			;9da5	04 	. 
	rst 38h			;9da6	ff 	. 
	adc a,h			;9da7	8c 	. 
	ld (hl),a			;9da8	77 	w 
	xor d			;9da9	aa 	. 
	ld (hl),a			;9daa	77 	w 
	rst 38h			;9dab	ff 	. 
	defb 0ddh,0aah,0ddh	;illegal sequence		;9dac	dd aa dd 	. . . 
	rst 38h			;9daf	ff 	. 
	ld (hl),a			;9db0	77 	w 
	cp (hl)			;9db1	be 	. 
	ld b,e			;9db2	43 	C 
	sbc a,c			;9db3	99 	. 
	dec bc			;9db4	0b 	. 
	cp l			;9db5	bd 	. 
	ld (bc),a			;9db6	02 	. 
	nop			;9db7	00 	. 
	adc a,b			;9db8	88 	. 
	ld bc,00703h		;9db9	01 03 07 	. . . 
	rrca			;9dbc	0f 	. 
	rra			;9dbd	1f 	. 
	rra			;9dbe	1f 	. 
	rrca			;9dbf	0f 	. 
	ld a,a			;9dc0	7f 	 
	ld b,0ffh		;9dc1	06 ff 	. . 
	ld (bc),a			;9dc3	02 	. 
	ccf			;9dc4	3f 	? 
	ld (bc),a			;9dc5	02 	. 
	ld a,a			;9dc6	7f 	 
	ld (bc),a			;9dc7	02 	. 
	rst 38h			;9dc8	ff 	. 
	add a,c			;9dc9	81 	. 
	nop			;9dca	00 	. 
	rlca			;9dcb	07 	. 
	rst 38h			;9dcc	ff 	. 
	adc a,(hl)			;9dcd	8e 	. 
	nop			;9dce	00 	. 
	rst 38h			;9dcf	ff 	. 
	ret nc			;9dd0	d0 	. 
	ret nc			;9dd1	d0 	. 
	rst 38h			;9dd2	ff 	. 
	push bc			;9dd3	c5 	. 
	push bc			;9dd4	c5 	. 
	rst 38h			;9dd5	ff 	. 
	pop de			;9dd6	d1 	. 
	pop de			;9dd7	d1 	. 
	rst 38h			;9dd8	ff 	. 
	ld b,c			;9dd9	41 	A 
	defb 0ddh,05dh	;ld e,ixl		;9dda	dd 5d 	. ] 
	inc bc			;9ddc	03 	. 
	adc a,(ix-03fh)		;9ddd	dd 8e c1 	. . . 
	rst 38h			;9de0	ff 	. 
	ld (hl),a			;9de1	77 	w 
	rst 38h			;9de2	ff 	. 
	ld (hl),a			;9de3	77 	w 
	rst 38h			;9de4	ff 	. 
	defb 0ddh,0ffh,0ddh	;illegal sequence		;9de5	dd ff dd 	. . . 
	rst 38h			;9de8	ff 	. 
	ld (hl),a			;9de9	77 	w 
	rst 38h			;9dea	ff 	. 
	ld (hl),a			;9deb	77 	w 
	ex de,hl			;9dec	eb 	. 
	inc bc			;9ded	03 	. 
	defb 0ddh,004h,000h	;illegal sequence		;9dee	dd 04 00 	. . . 
	add a,h			;9df1	84 	. 
	ld a,(hl)			;9df2	7e 	~ 
	ld l,d			;9df3	6a 	j 
	rst 10h			;9df4	d7 	. 
	xor d			;9df5	aa 	. 
	ex af,af'			;9df6	08 	. 
	rst 38h			;9df7	ff 	. 
	inc b			;9df8	04 	. 
	nop			;9df9	00 	. 
	add a,d			;9dfa	82 	. 
	djnz l9e35h		;9dfb	10 38 	. 8 
	ld (bc),a			;9dfd	02 	. 
	ld a,h			;9dfe	7c 	| 
	inc bc			;9dff	03 	. 
	rst 38h			;9e00	ff 	. 
	add a,c			;9e01	81 	. 
	ld a,(hl)			;9e02	7e 	~ 
	inc bc			;9e03	03 	. 
	rst 38h			;9e04	ff 	. 
	adc a,c			;9e05	89 	. 
	ld a,(hl)			;9e06	7e 	~ 
	djnz l9e11h		;9e07	10 08 	. . 
	djnz l9e13h		;9e09	10 08 	. . 
	djnz l9e15h		;9e0b	10 08 	. . 
	djnz l9e17h		;9e0d	10 08 	. . 
	djnz $+1		;9e0f	10 ff 	. . 
l9e11h:
	add a,h			;9e11	84 	. 
	ld b,c			;9e12	41 	A 
l9e13h:
	add a,d			;9e13	82 	. 
	inc b			;9e14	04 	. 
l9e15h:
	ex af,af'			;9e15	08 	. 
	ld (bc),a			;9e16	02 	. 
l9e17h:
	djnz l9e1bh		;9e17	10 02 	. . 
	jr nz,$+10		;9e19	20 08 	  . 
l9e1bh:
	nop			;9e1b	00 	. 
	inc bc			;9e1c	03 	. 
	ld b,b			;9e1d	40 	@ 
	dec b			;9e1e	05 	. 
	add a,b			;9e1f	80 	. 
	ex af,af'			;9e20	08 	. 
	ld bc,0ff81h		;9e21	01 81 ff 	. . . 
	ld (bc),a			;9e24	02 	. 
	nop			;9e25	00 	. 
	dec c			;9e26	0d 	. 
	rst 38h			;9e27	ff 	. 
	jr l9e2ah		;9e28	18 00 	. . 
l9e2ah:
	nop			;9e2a	00 	. 
	ld (bc),a			;9e2b	02 	. 
	nop			;9e2c	00 	. 
	add a,l			;9e2d	85 	. 
	ld bc,00c07h		;9e2e	01 07 0c 	. . . 
	dec de			;9e31	1b 	. 
	scf			;9e32	37 	7 
	inc bc			;9e33	03 	. 
	nop			;9e34	00 	. 
l9e35h:
	adc a,(hl)			;9e35	8e 	. 
	add a,b			;9e36	80 	. 
	ld (hl),b			;9e37	70 	p 
	rst 30h			;9e38	f7 	. 
	rst 28h			;9e39	ef 	. 
	rst 28h			;9e3a	ef 	. 
	nop			;9e3b	00 	. 
	scf			;9e3c	37 	7 
	rla			;9e3d	17 	. 
	scf			;9e3e	37 	7 
	rla			;9e3f	17 	. 
	scf			;9e40	37 	7 
	rla			;9e41	17 	. 
	scf			;9e42	37 	7 
	nop			;9e43	00 	. 
	rlca			;9e44	07 	. 
	rst 28h			;9e45	ef 	. 
	add a,d			;9e46	82 	. 
	nop			;9e47	00 	. 
	rst 38h			;9e48	ff 	. 
	ld b,0c0h		;9e49	06 c0 	. . 
	add a,c			;9e4b	81 	. 
	ld b,b			;9e4c	40 	@ 
	ld b,0c0h		;9e4d	06 c0 	. . 
	add a,e			;9e4f	83 	. 
	rst 0			;9e50	c7 	. 
	ld b,b			;9e51	40 	@ 
	rst 38h			;9e52	ff 	. 
	ld b,003h		;9e53	06 03 	. . 
	add a,c			;9e55	81 	. 
	ld (bc),a			;9e56	02 	. 
	ld b,003h		;9e57	06 03 	. . 
	xor a			;9e59	af 	. 
	ex (sp),hl			;9e5a	e3 	. 
	ld (bc),a			;9e5b	02 	. 
	nop			;9e5c	00 	. 
	nop			;9e5d	00 	. 
	rra			;9e5e	1f 	. 
	nop			;9e5f	00 	. 
	ld a,(de)			;9e60	1a 	. 
	dec d			;9e61	15 	. 
	ld a,(de)			;9e62	1a 	. 
	dec d			;9e63	15 	. 
	ld a,(de)			;9e64	1a 	. 
	dec d			;9e65	15 	. 
	ld a,(de)			;9e66	1a 	. 
	dec d			;9e67	15 	. 
	ld a,(de)			;9e68	1a 	. 
	dec d			;9e69	15 	. 
	ld e,d			;9e6a	5a 	Z 
	ld d,l			;9e6b	55 	U 
	scf			;9e6c	37 	7 
	djnz l9ea6h		;9e6d	10 37 	. 7 
	rla			;9e6f	17 	. 
	scf			;9e70	37 	7 
	djnz l9eaah		;9e71	10 37 	. 7 
	nop			;9e73	00 	. 
	rst 28h			;9e74	ef 	. 
	ld h,b			;9e75	60 	` 
	ld l,c			;9e76	69 	i 
	ld h,e			;9e77	63 	c 
	ld h,(hl)			;9e78	66 	f 
	ld h,b			;9e79	60 	` 
	rst 28h			;9e7a	ef 	. 
	nop			;9e7b	00 	. 
	rst 30h			;9e7c	f7 	. 
	ld b,0b6h		;9e7d	06 b6 	. . 
	ld h,(hl)			;9e7f	66 	f 
	sub 006h		;9e80	d6 06 	. . 
	rst 30h			;9e82	f7 	. 
	nop			;9e83	00 	. 
	nop			;9e84	00 	. 
	ld (de),a			;9e85	12 	. 
	ld l,l			;9e86	6d 	m 
	in a,(000h)		;9e87	db 00 	. . 
	inc bc			;9e89	03 	. 
	ld e,e			;9e8a	5b 	[ 
	adc a,b			;9e8b	88 	. 
	nop			;9e8c	00 	. 
	ld e,b			;9e8d	58 	X 
	ld e,c			;9e8e	59 	Y 
	ld e,c			;9e8f	59 	Y 
	ld bc,05958h		;9e90	01 58 59 	. X Y 
	ld e,b			;9e93	58 	X 
	add hl,bc			;9e94	09 	. 
	nop			;9e95	00 	. 
	adc a,e			;9e96	8b 	. 
	adc a,b			;9e97	88 	. 
	ld d,l			;9e98	55 	U 
	adc a,b			;9e99	88 	. 
	nop			;9e9a	00 	. 
	ld (02255h),hl		;9e9b	22 55 22 	" U " 
	nop			;9e9e	00 	. 
	adc a,b			;9e9f	88 	. 
	ld b,c			;9ea0	41 	A 
	cp h			;9ea1	bc 	. 
	dec b			;9ea2	05 	. 
	ld a,(hl)			;9ea3	7e 	~ 
	inc b			;9ea4	04 	. 
	ld h,(hl)			;9ea5	66 	f 
l9ea6h:
	inc bc			;9ea6	03 	. 
	ld b,d			;9ea7	42 	B 
	ld d,000h		;9ea8	16 00 	. . 
l9eaah:
	add a,c			;9eaa	81 	. 
	rst 38h			;9eab	ff 	. 
	rlca			;9eac	07 	. 
	nop			;9ead	00 	. 
	and d			;9eae	a2 	. 
	rst 38h			;9eaf	ff 	. 
	nop			;9eb0	00 	. 
	ld l,02eh		;9eb1	2e 2e 	. . 
	nop			;9eb3	00 	. 
	ld a,(0003ah)		;9eb4	3a 3a 00 	: : . 
	ld l,02eh		;9eb7	2e 2e 	. . 
	nop			;9eb9	00 	. 
	cp (hl)			;9eba	be 	. 
	ld a,0beh		;9ebb	3e be 	> . 
	ld a,036h		;9ebd	3e 36 	> 6 
	ld (0003eh),hl		;9ebf	22 3e 00 	" > . 
	adc a,b			;9ec2	88 	. 
	nop			;9ec3	00 	. 
	adc a,b			;9ec4	88 	. 
	nop			;9ec5	00 	. 
	ld (02200h),hl		;9ec6	22 00 22 	" . " 
	nop			;9ec9	00 	. 
	adc a,b			;9eca	88 	. 
	nop			;9ecb	00 	. 
	adc a,b			;9ecc	88 	. 
	inc e			;9ecd	1c 	. 
	ld a,036h		;9ece	3e 36 	> 6 
	ld (00005h),hl		;9ed0	22 05 00 	" . . 
	add a,e			;9ed3	83 	. 
	inc d			;9ed4	14 	. 
	jr z,l9f2ch		;9ed5	28 55 	( U 
	inc c			;9ed7	0c 	. 
	nop			;9ed8	00 	. 
	add a,d			;9ed9	82 	. 
	djnz l9f14h		;9eda	10 38 	. 8 
	ld (bc),a			;9edc	02 	. 
	ld a,h			;9edd	7c 	| 
	inc bc			;9ede	03 	. 
	rst 38h			;9edf	ff 	. 
	add a,c			;9ee0	81 	. 
	ld a,(hl)			;9ee1	7e 	~ 
	inc bc			;9ee2	03 	. 
	rst 38h			;9ee3	ff 	. 
	adc a,c			;9ee4	89 	. 
	ld a,(hl)			;9ee5	7e 	~ 
	ex af,af'			;9ee6	08 	. 
	djnz l9ef1h		;9ee7	10 08 	. . 
	djnz l9ef3h		;9ee9	10 08 	. . 
	djnz l9ef5h		;9eeb	10 08 	. . 
	djnz l9effh		;9eed	10 10 	. . 
	rst 38h			;9eef	ff 	. 
	add a,h			;9ef0	84 	. 
l9ef1h:
	cp (hl)			;9ef1	be 	. 
	ld a,l			;9ef2	7d 	} 
l9ef3h:
	ei			;9ef3	fb 	. 
	rst 30h			;9ef4	f7 	. 
l9ef5h:
	ld (bc),a			;9ef5	02 	. 
	rst 28h			;9ef6	ef 	. 
	ld (bc),a			;9ef7	02 	. 
	rst 18h			;9ef8	df 	. 
	ex af,af'			;9ef9	08 	. 
	rst 38h			;9efa	ff 	. 
	inc bc			;9efb	03 	. 
	cp a			;9efc	bf 	. 
	dec b			;9efd	05 	. 
	ld a,a			;9efe	7f 	 
l9effh:
	ex af,af'			;9eff	08 	. 
	cp 010h		;9f00	fe 10 	. . 
	nop			;9f02	00 	. 
	sbc a,b			;9f03	98 	. 
	ccf			;9f04	3f 	? 
	ld a,a			;9f05	7f 	 
	rst 38h			;9f06	ff 	. 
	call m,0f8feh		;9f07	fc fe f8 	. . . 
	defb 0fdh,0dfh,0f7h	;illegal sequence		;9f0a	fd df f7 	. . . 
	ei			;9f0d	fb 	. 
	ret m			;9f0e	f8 	. 
	or 0edh		;9f0f	f6 ed 	. . 
	rst 38h			;9f11	ff 	. 
	ld a,a			;9f12	7f 	 
	ccf			;9f13	3f 	? 
l9f14h:
	rst 8			;9f14	cf 	. 
	rst 18h			;9f15	df 	. 
	rra			;9f16	1f 	. 
	ld l,a			;9f17	6f 	o 
	or a			;9f18	b7 	. 
	rst 38h			;9f19	ff 	. 
	cp 0fch		;9f1a	fe fc 	. . 
	nop			;9f1c	00 	. 
	add a,d			;9f1d	82 	. 
	rrca			;9f1e	0f 	. 
	ccf			;9f1f	3f 	? 
	ld (bc),a			;9f20	02 	. 
	ld a,a			;9f21	7f 	 
	inc b			;9f22	04 	. 
	rst 38h			;9f23	ff 	. 
	sub a			;9f24	97 	. 
	ret po			;9f25	e0 	. 
	ret p			;9f26	f0 	. 
	ret p			;9f27	f0 	. 
	ret m			;9f28	f8 	. 
	jp m,0e6f8h		;9f29	fa f8 e6 	. . . 
l9f2ch:
	sub 0ffh		;9f2c	d6 ff 	. . 
	ld a,a			;9f2e	7f 	 
	ld c,e			;9f2f	4b 	K 
	ccf			;9f30	3f 	? 
	inc l			;9f31	2c 	, 
	scf			;9f32	37 	7 
	rra			;9f33	1f 	. 
	inc c			;9f34	0c 	. 
	ld c,(hl)			;9f35	4e 	N 
	adc a,0cch		;9f36	ce cc 	. . 
	ld e,h			;9f38	5c 	\ 
	cp b			;9f39	b8 	. 
	or b			;9f3a	b0 	. 
	ld b,b			;9f3b	40 	@ 
	ld a,a			;9f3c	7f 	 
	nop			;9f3d	00 	. 
	ld (hl),b			;9f3e	70 	p 
	nop			;9f3f	00 	. 
	and a			;9f40	a7 	. 
	inc bc			;9f41	03 	. 
	rlca			;9f42	07 	. 
	rlca			;9f43	07 	. 
	ld c,0ffh		;9f44	0e ff 	. . 
	rst 30h			;9f46	f7 	. 
	rst 38h			;9f47	ff 	. 
	ld e,l			;9f48	5d 	] 
	jp pe,06055h		;9f49	ea 55 60 	. U ` 
	ret p			;9f4c	f0 	. 
	rst 38h			;9f4d	ff 	. 
	cp a			;9f4e	bf 	. 
	rst 28h			;9f4f	ef 	. 
	ld d,l			;9f50	55 	U 
	cp d			;9f51	ba 	. 
	push de			;9f52	d5 	. 
	cp d			;9f53	ba 	. 
	ld d,l			;9f54	55 	U 
	xor d			;9f55	aa 	. 
	ld d,l			;9f56	55 	U 
	xor d			;9f57	aa 	. 
	ld d,l			;9f58	55 	U 
	xor d			;9f59	aa 	. 
	inc d			;9f5a	14 	. 
	cp d			;9f5b	ba 	. 
	ld d,l			;9f5c	55 	U 
	xor d			;9f5d	aa 	. 
	ld d,l			;9f5e	55 	U 
	xor d			;9f5f	aa 	. 
	ld d,l			;9f60	55 	U 
	xor d			;9f61	aa 	. 
	ld b,l			;9f62	45 	E 
	xor d			;9f63	aa 	. 
	inc d			;9f64	14 	. 
	ld (00800h),hl		;9f65	22 00 08 	" . . 
	inc bc			;9f68	03 	. 
	nop			;9f69	00 	. 
	add a,h			;9f6a	84 	. 
	xor b			;9f6b	a8 	. 
	ld bc,00522h		;9f6c	01 22 05 	. " . 
	inc c			;9f6f	0c 	. 
	nop			;9f70	00 	. 
	nop			;9f71	00 	. 
	sbc a,l			;9f72	9d 	. 
	rrca			;9f73	0f 	. 
	jr c,l9fe6h		;9f74	38 70 	8 p 
	ld h,b			;9f76	60 	` 
	jp 0ffcfh		;9f77	c3 cf ff 	. . . 
	rst 8			;9f7a	cf 	. 
	ret po			;9f7b	e0 	. 
	ld (hl),b			;9f7c	70 	p 
	jr nz,l9fefh		;9f7d	20 70 	  p 
	jp p,0e6f0h		;9f7f	f2 f0 e6 	. . . 
	call nc,067cfh		;9f82	d4 cf 67 	. . g 
	ld c,e			;9f85	4b 	K 
	inc a			;9f86	3c 	< 
	jr nz,$+22		;9f87	20 14 	  . 
	nop			;9f89	00 	. 
	nop			;9f8a	00 	. 
	ld c,h			;9f8b	4c 	L 
	ret z			;9f8c	c8 	. 
	ld c,b			;9f8d	48 	H 
	ld d,b			;9f8e	50 	P 
	or b			;9f8f	b0 	. 
	inc bc			;9f90	03 	. 
	nop			;9f91	00 	. 
	add a,d			;9f92	82 	. 
	ccf			;9f93	3f 	? 
	ld h,c			;9f94	61 	a 
	ld (bc),a			;9f95	02 	. 
	add a,c			;9f96	81 	. 
	ld (bc),a			;9f97	02 	. 
	add a,e			;9f98	83 	. 
	sub d			;9f99	92 	. 
	add a,h			;9f9a	84 	. 
	adc a,b			;9f9b	88 	. 
	add a,083h		;9f9c	c6 83 	. . 
	add a,e			;9f9e	83 	. 
	adc a,a			;9f9f	8f 	. 
	cp 006h		;9fa0	fe 06 	. . 
	inc bc			;9fa2	03 	. 
	ld bc,0b898h		;9fa3	01 98 b8 	. . . 
	ld (hl),b			;9fa6	70 	p 
	jr nc,l9fc1h		;9fa7	30 18 	0 . 
	ex af,af'			;9fa9	08 	. 
	rlca			;9faa	07 	. 
	nop			;9fab	00 	. 
	inc b			;9fac	04 	. 
	ld bc,00302h		;9fad	01 02 03 	. . . 
	sub e			;9fb0	93 	. 
	ld (bc),a			;9fb1	02 	. 
	call m,0407ch		;9fb2	fc 7c 40 	. | @ 
	add a,b			;9fb5	80 	. 
	add a,c			;9fb6	81 	. 
	add a,c			;9fb7	81 	. 
	jp 03f67h		;9fb8	c3 67 3f 	. g ? 
	ld (hl),03bh		;9fbb	36 3b 	6 ; 
	ld (hl),e			;9fbd	73 	s 
	di			;9fbe	f3 	. 
	pop hl			;9fbf	e1 	. 
	pop bc			;9fc0	c1 	. 
l9fc1h:
	ld bc,07901h		;9fc1	01 01 79 	. . y 
	inc b			;9fc4	04 	. 
	add a,b			;9fc5	80 	. 
	adc a,(hl)			;9fc6	8e 	. 
	ret nz			;9fc7	c0 	. 
	ld (hl),b			;9fc8	70 	p 
	rra			;9fc9	1f 	. 
	add a,c			;9fca	81 	. 
	jp 067c3h		;9fcb	c3 c3 67 	. . g 
	ld a,a			;9fce	7f 	 
	ld a,03ch		;9fcf	3e 3c 	> < 
	ret p			;9fd1	f0 	. 
	pop hl			;9fd2	e1 	. 
	pop bc			;9fd3	c1 	. 
	ret nz			;9fd4	c0 	. 
	dec b			;9fd5	05 	. 
	add a,b			;9fd6	80 	. 
	add a,e			;9fd7	83 	. 
	ei			;9fd8	fb 	. 
	pop hl			;9fd9	e1 	. 
	pop bc			;9fda	c1 	. 
	ld (bc),a			;9fdb	02 	. 
	add a,c			;9fdc	81 	. 
	ld (bc),a			;9fdd	02 	. 
	ld b,c			;9fde	41 	A 
	adc a,a			;9fdf	8f 	. 
	ld b,e			;9fe0	43 	C 
	add a,b			;9fe1	80 	. 
	add a,b			;9fe2	80 	. 
	add a,c			;9fe3	81 	. 
	ld b,e			;9fe4	43 	C 
	ld b,d			;9fe5	42 	B 
l9fe6h:
	ld b,h			;9fe6	44 	D 
	jr z,l9ff9h		;9fe7	28 10 	( . 
	ld b,d			;9fe9	42 	B 
	jp po,03426h		;9fea	e2 26 34 	. & 4 
	jr l9ff7h		;9fed	18 08 	. . 
l9fefh:
	ld (bc),a			;9fef	02 	. 
	nop			;9ff0	00 	. 
	add hl,bc			;9ff1	09 	. 
	rst 38h			;9ff2	ff 	. 
	inc bc			;9ff3	03 	. 
	ld sp,hl			;9ff4	f9 	. 
l9ff5h:
	inc bc			;9ff5	03 	. 
	ret p			;9ff6	f0 	. 
l9ff7h:
	add a,c			;9ff7	81 	. 
	ret po			;9ff8	e0 	. 
l9ff9h:
	ex af,af'			;9ff9	08 	. 
	rst 38h			;9ffa	ff 	. 
	sub b			;9ffb	90 	. 
	ret po			;9ffc	e0 	. 
	ex (sp),hl			;9ffd	e3 	. 
	di			;9ffe	f3 	. 
	rst 38h			;9fff	ff 	. 
	rst 30h			;a000	f7 	. 
	jp 00183h		;a001	c3 83 01 	. . . 
	rst 38h			;a004	ff 	. 
	cp 0feh		;a005	fe fe 	. . 
	call m,0f0f8h		;a007	fc f8 f0 	. . . 
	ret m			;a00a	f8 	. 
	call m,00102h		;a00b	fc 02 01 	. . . 
	inc b			;a00e	04 	. 
	nop			;a00f	00 	. 
la010h:
	add a,d			;a010	82 	. 
	jr la010h		;a011	18 fd 	. . 
	ld (bc),a			;a013	02 	. 
	nop			;a014	00 	. 
	inc bc			;a015	03 	. 
	add a,b			;a016	80 	. 
	inc bc			;a017	03 	. 
	ret nz			;a018	c0 	. 
	sub b			;a019	90 	. 
	ret po			;a01a	e0 	. 
	sub b			;a01b	90 	. 
	sub b			;a01c	90 	. 
	sbc a,b			;a01d	98 	. 
	ex af,af'			;a01e	08 	. 
	ex af,af'			;a01f	08 	. 
	inc c			;a020	0c 	. 
	inc b			;a021	04 	. 
	ld b,0c6h		;a022	06 c6 	. . 
	adc a,0ffh		;a024	ce ff 	. . 
	rst 28h			;a026	ef 	. 
	jp sub_80c0h+1		;a027	c3 c1 80 	. . . 
	dec b			;a02a	05 	. 
	nop			;a02b	00 	. 
	ld (bc),a			;a02c	02 	. 
	add a,b			;a02d	80 	. 
	ld (bc),a			;a02e	02 	. 
	ret nz			;a02f	c0 	. 
	add a,a			;a030	87 	. 
	ld h,b			;a031	60 	` 
	ld (hl),b			;a032	70 	p 
	jr nc,$+26		;a033	30 18 	0 . 
	inc c			;a035	0c 	. 
	ld e,03eh		;a036	1e 3e 	. > 
	ld (hl),000h		;a038	36 00 	6 . 
	and a			;a03a	a7 	. 
	inc b			;a03b	04 	. 
	ex af,af'			;a03c	08 	. 
	ex af,af'			;a03d	08 	. 
	djnz la040h		;a03e	10 00 	. . 
la040h:
	ex af,af'			;a040	08 	. 
	nop			;a041	00 	. 
	and d			;a042	a2 	. 
	dec d			;a043	15 	. 
	xor d			;a044	aa 	. 
	djnz la04fh		;a045	10 08 	. . 
	nop			;a047	00 	. 
	ld b,b			;a048	40 	@ 
	djnz l9ff5h		;a049	10 aa 	. . 
	ld b,l			;a04b	45 	E 
	ld hl,(laa45h)		;a04c	2a 45 aa 	* E . 
la04fh:
	ld d,l			;a04f	55 	U 
	xor d			;a050	aa 	. 
	ld d,l			;a051	55 	U 
	xor d			;a052	aa 	. 
	ld d,l			;a053	55 	U 
	ex de,hl			;a054	eb 	. 
	ld b,l			;a055	45 	E 
	xor d			;a056	aa 	. 
	ld d,l			;a057	55 	U 
	xor d			;a058	aa 	. 
	ld d,l			;a059	55 	U 
	xor d			;a05a	aa 	. 
	ld d,l			;a05b	55 	U 
	cp d			;a05c	ba 	. 
	ld d,l			;a05d	55 	U 
	ex de,hl			;a05e	eb 	. 
	defb 0ddh,0ffh,0f7h	;illegal sequence		;a05f	dd ff f7 	. . . 
	inc bc			;a062	03 	. 
	rst 38h			;a063	ff 	. 
	add a,h			;a064	84 	. 
	ld d,a			;a065	57 	W 
	cp 0ddh		;a066	fe dd 	. . 
	jp m,0ff0ch		;a068	fa 0c ff 	. . . 
	nop			;a06b	00 	. 
	add a,h			;a06c	84 	. 
	djnz la06fh		;a06d	10 00 	. . 
la06fh:
	nop			;a06f	00 	. 
	add a,b			;a070	80 	. 
	inc b			;a071	04 	. 
	nop			;a072	00 	. 
	sbc a,d			;a073	9a 	. 
	jr la082h		;a074	18 0c 	. . 
	ld b,003h		;a076	06 03 	. . 
	ld bc,01d07h		;a078	01 07 1d 	. . . 
	dec l			;a07b	2d 	- 
	nop			;a07c	00 	. 
	add a,b			;a07d	80 	. 
	add a,a			;a07e	87 	. 
	ld b,h			;a07f	44 	D 
	ld d,b			;a080	50 	P 
	ex af,af'			;a081	08 	. 
la082h:
	inc bc			;a082	03 	. 
	inc c			;a083	0c 	. 
	sub a			;a084	97 	. 
	sbc a,a			;a085	9f 	. 
	inc a			;a086	3c 	< 
	inc (hl)			;a087	34 	4 
	ld e,b			;a088	58 	X 
	djnz la0e3h		;a089	10 58 	. X 
	nop			;a08b	00 	. 
	ccf			;a08c	3f 	? 
	ld h,c			;a08d	61 	a 
	ld (bc),a			;a08e	02 	. 
	add a,c			;a08f	81 	. 
	ld (bc),a			;a090	02 	. 
	add a,e			;a091	83 	. 
	sub d			;a092	92 	. 
	add a,h			;a093	84 	. 
	adc a,b			;a094	88 	. 
	add a,083h		;a095	c6 83 	. . 
	add a,e			;a097	83 	. 
	adc a,a			;a098	8f 	. 
	cp 006h		;a099	fe 06 	. . 
	inc bc			;a09b	03 	. 
	ld bc,0b898h		;a09c	01 98 b8 	. . . 
	ld (hl),b			;a09f	70 	p 
	jr nc,la0bah		;a0a0	30 18 	0 . 
	ex af,af'			;a0a2	08 	. 
	rlca			;a0a3	07 	. 
	nop			;a0a4	00 	. 
	inc b			;a0a5	04 	. 
	ld bc,00302h		;a0a6	01 02 03 	. . . 
	sub e			;a0a9	93 	. 
	ld (bc),a			;a0aa	02 	. 
	call m,0407ch		;a0ab	fc 7c 40 	. | @ 
	add a,b			;a0ae	80 	. 
	add a,c			;a0af	81 	. 
	add a,c			;a0b0	81 	. 
	jp 03f67h		;a0b1	c3 67 3f 	. g ? 
	ld (hl),03bh		;a0b4	36 3b 	6 ; 
	ld (hl),e			;a0b6	73 	s 
	di			;a0b7	f3 	. 
	pop hl			;a0b8	e1 	. 
	pop bc			;a0b9	c1 	. 
la0bah:
	ld bc,07901h		;a0ba	01 01 79 	. . y 
	inc b			;a0bd	04 	. 
	add a,b			;a0be	80 	. 
	adc a,(hl)			;a0bf	8e 	. 
	ret nz			;a0c0	c0 	. 
	ld (hl),b			;a0c1	70 	p 
	rra			;a0c2	1f 	. 
	add a,c			;a0c3	81 	. 
	jp 067c3h		;a0c4	c3 c3 67 	. . g 
	ld a,a			;a0c7	7f 	 
	ld a,03ch		;a0c8	3e 3c 	> < 
	ret p			;a0ca	f0 	. 
	pop hl			;a0cb	e1 	. 
	pop bc			;a0cc	c1 	. 
	ret nz			;a0cd	c0 	. 
	dec b			;a0ce	05 	. 
	add a,b			;a0cf	80 	. 
	add a,e			;a0d0	83 	. 
	ei			;a0d1	fb 	. 
	pop hl			;a0d2	e1 	. 
	pop bc			;a0d3	c1 	. 
	ld (bc),a			;a0d4	02 	. 
	add a,c			;a0d5	81 	. 
	ld (bc),a			;a0d6	02 	. 
	ld b,c			;a0d7	41 	A 
	adc a,a			;a0d8	8f 	. 
	ld b,e			;a0d9	43 	C 
	add a,b			;a0da	80 	. 
	add a,b			;a0db	80 	. 
	add a,c			;a0dc	81 	. 
	ld b,e			;a0dd	43 	C 
	ld b,d			;a0de	42 	B 
	ld b,h			;a0df	44 	D 
	jr z,la0f2h		;a0e0	28 10 	( . 
	ld b,d			;a0e2	42 	B 
la0e3h:
	jp po,03426h		;a0e3	e2 26 34 	. & 4 
	jr la0f0h		;a0e6	18 08 	. . 
	inc b			;a0e8	04 	. 
	nop			;a0e9	00 	. 
	inc bc			;a0ea	03 	. 
	ld bc,00303h		;a0eb	01 03 03 	. . . 
	adc a,b			;a0ee	88 	. 
	rlca			;a0ef	07 	. 
la0f0h:
	add hl,bc			;a0f0	09 	. 
	add hl,bc			;a0f1	09 	. 
la0f2h:
	add hl,de			;a0f2	19 	. 
	djnz la105h		;a0f3	10 10 	. . 
	jr nc,la117h		;a0f5	30 20 	0   
	dec b			;a0f7	05 	. 
	nop			;a0f8	00 	. 
	ld (bc),a			;a0f9	02 	. 
	ld bc,00391h		;a0fa	01 91 03 	. . . 
	ld h,b			;a0fd	60 	` 
	ld h,e			;a0fe	63 	c 
	ld (hl),e			;a0ff	73 	s 
	rst 38h			;a100	ff 	. 
	rst 30h			;a101	f7 	. 
	jp 00183h		;a102	c3 83 01 	. . . 
la105h:
	inc bc			;a105	03 	. 
	ld b,00eh		;a106	06 0e 	. . 
	inc c			;a108	0c 	. 
	jr la13bh		;a109	18 30 	. 0 
	ld a,b			;a10b	78 	x 
	ld a,h			;a10c	7c 	| 
	ld (bc),a			;a10d	02 	. 
	ld bc,00004h		;a10e	01 04 00 	. . . 
la111h:
	add a,d			;a111	82 	. 
	jr la111h		;a112	18 fd 	. . 
	ld (bc),a			;a114	02 	. 
	nop			;a115	00 	. 
	inc bc			;a116	03 	. 
la117h:
	add a,b			;a117	80 	. 
	inc bc			;a118	03 	. 
	ret nz			;a119	c0 	. 
	sub b			;a11a	90 	. 
	ret po			;a11b	e0 	. 
	sub b			;a11c	90 	. 
	sub b			;a11d	90 	. 
	sbc a,b			;a11e	98 	. 
	ex af,af'			;a11f	08 	. 
	ex af,af'			;a120	08 	. 
	inc c			;a121	0c 	. 
	inc b			;a122	04 	. 
	ld b,0c6h		;a123	06 c6 	. . 
	adc a,0ffh		;a125	ce ff 	. . 
	rst 28h			;a127	ef 	. 
	jp sub_80c0h+1		;a128	c3 c1 80 	. . . 
	dec b			;a12b	05 	. 
	nop			;a12c	00 	. 
	ld (bc),a			;a12d	02 	. 
	add a,b			;a12e	80 	. 
	ld (bc),a			;a12f	02 	. 
	ret nz			;a130	c0 	. 
	add a,a			;a131	87 	. 
	ld h,b			;a132	60 	` 
	ld (hl),b			;a133	70 	p 
	jr nc,la14eh		;a134	30 18 	0 . 
	inc c			;a136	0c 	. 
	ld e,03eh		;a137	1e 3e 	. > 
	ld (hl),000h		;a139	36 00 	6 . 
la13bh:
	add a,h			;a13b	84 	. 
	rlca			;a13c	07 	. 
	rrca			;a13d	0f 	. 
	rrca			;a13e	0f 	. 
	rra			;a13f	1f 	. 
	ld b,0ffh		;a140	06 ff 	. . 
	add a,d			;a142	82 	. 
	ret p			;a143	f0 	. 
	ret m			;a144	f8 	. 
	ld h,0ffh		;a145	26 ff 	& . 
	ex af,af'			;a147	08 	. 
	nop			;a148	00 	. 
	nop			;a149	00 	. 
	adc a,h			;a14a	8c 	. 
	rra			;a14b	1f 	. 
	jr c,la1beh		;a14c	38 70 	8 p 
la14eh:
	ret po			;a14e	e0 	. 
	jp 0ffcfh		;a14f	c3 cf ff 	. . . 
	rst 8			;a152	cf 	. 
	ret m			;a153	f8 	. 
	ld a,h			;a154	7c 	| 
	ld a,07fh		;a155	3e 7f 	>  
	ld (bc),a			;a157	02 	. 
	rst 38h			;a158	ff 	. 
	ld (bc),a			;a159	02 	. 
	ei			;a15a	fb 	. 
	sub d			;a15b	92 	. 
	rst 8			;a15c	cf 	. 
	rst 38h			;a15d	ff 	. 
	call m,07f7bh		;a15e	fc 7b 7f 	. {  
	ld a,a			;a161	7f 	 
	inc a			;a162	3c 	< 
	inc de			;a163	13 	. 
	ld sp,hl			;a164	f9 	. 
	ld (hl),c			;a165	71 	q 
	di			;a166	f3 	. 
	ex de,hl			;a167	eb 	. 
	and 0eeh		;a168	e6 ee 	. . 
	cp h			;a16a	bc 	. 
	nop			;a16b	00 	. 
	nop			;a16c	00 	. 
	ld e,002h		;a16d	1e 02 	. . 
	ld a,(hl)			;a16f	7e 	~ 
	ld (bc),a			;a170	02 	. 
	ld a,h			;a171	7c 	| 
	adc a,h			;a172	8c 	. 
	ld a,e			;a173	7b 	{ 
	ld (hl),a			;a174	77 	w 
	jr c,la1f3h		;a175	38 7c 	8 | 
	ld a,h			;a177	7c 	| 
	ld (hl),b			;a178	70 	p 
	nop			;a179	00 	. 
	ret m			;a17a	f8 	. 
	call m,067feh		;a17b	fc fe 67 	. . g 
	ld b,a			;a17e	47 	G 
	ld (bc),a			;a17f	02 	. 
	rrca			;a180	0f 	. 
	ld (bc),a			;a181	02 	. 
	rlca			;a182	07 	. 
	ld (bc),a			;a183	02 	. 
	nop			;a184	00 	. 
	inc b			;a185	04 	. 
	cp 003h		;a186	fe 03 	. . 
	call m,00092h		;a188	fc 92 00 	. . . 
	inc bc			;a18b	03 	. 
	ccf			;a18c	3f 	? 
	ld a,a			;a18d	7f 	 
	ld a,(hl)			;a18e	7e 	~ 
	ld a,(hl)			;a18f	7e 	~ 
	inc a			;a190	3c 	< 
	jr la193h		;a191	18 00 	. . 
la193h:
	ret nz			;a193	c0 	. 
	call nz,00c8ch		;a194	c4 8c 0c 	. . . 
	ld e,03eh		;a197	1e 3e 	. > 
	cp 0feh		;a199	fe fe 	. . 
	ld b,004h		;a19b	06 04 	. . 
	ld a,a			;a19d	7f 	 
	adc a,(hl)			;a19e	8e 	. 
	ccf			;a19f	3f 	? 
	rrca			;a1a0	0f 	. 
	nop			;a1a1	00 	. 
	ld a,(hl)			;a1a2	7e 	~ 
	inc a			;a1a3	3c 	< 
	inc a			;a1a4	3c 	< 
	sbc a,b			;a1a5	98 	. 
	add a,b			;a1a6	80 	. 
	ret nz			;a1a7	c0 	. 
	ret nz			;a1a8	c0 	. 
	nop			;a1a9	00 	. 
	ld e,03eh		;a1aa	1e 3e 	. > 
	ccf			;a1ac	3f 	? 
	dec b			;a1ad	05 	. 
	ld a,a			;a1ae	7f 	 
	add a,e			;a1af	83 	. 
	inc b			;a1b0	04 	. 
	ld e,03eh		;a1b1	1e 3e 	. > 
	ld (bc),a			;a1b3	02 	. 
	ld a,(hl)			;a1b4	7e 	~ 
	ld (bc),a			;a1b5	02 	. 
	cp (hl)			;a1b6	be 	. 
	adc a,l			;a1b7	8d 	. 
	cp h			;a1b8	bc 	. 
	ld a,a			;a1b9	7f 	 
	ld a,a			;a1ba	7f 	 
	ld a,(hl)			;a1bb	7e 	~ 
	inc a			;a1bc	3c 	< 
	inc a			;a1bd	3c 	< 
la1beh:
	jr c,$+18		;a1be	38 10 	8 . 
	nop			;a1c0	00 	. 
	cp h			;a1c1	bc 	. 
	inc e			;a1c2	1c 	. 
	jr $+10		;a1c3	18 08 	. . 
	inc b			;a1c5	04 	. 
	nop			;a1c6	00 	. 
	ld (bc),a			;a1c7	02 	. 
	rst 38h			;a1c8	ff 	. 
	inc bc			;a1c9	03 	. 
	cp 003h		;a1ca	fe 03 	. . 
	call m,0f888h		;a1cc	fc 88 f8 	. . . 
	or 0f6h		;a1cf	f6 f6 	. . 
	and 0efh		;a1d1	e6 ef 	. . 
	rst 28h			;a1d3	ef 	. 
	rst 8			;a1d4	cf 	. 
	rst 18h			;a1d5	df 	. 
	dec b			;a1d6	05 	. 
	rst 38h			;a1d7	ff 	. 
	ld (bc),a			;a1d8	02 	. 
	cp 091h		;a1d9	fe 91 	. . 
	call m,sub_9c9fh		;a1db	fc 9f 9c 	. . . 
	adc a,h			;a1de	8c 	. 
	nop			;a1df	00 	. 
	ex af,af'			;a1e0	08 	. 
	inc a			;a1e1	3c 	< 
	ld a,h			;a1e2	7c 	| 
	cp 0fch		;a1e3	fe fc 	. . 
	ld sp,hl			;a1e5	f9 	. 
	pop af			;a1e6	f1 	. 
	di			;a1e7	f3 	. 
	rst 20h			;a1e8	e7 	. 
	rst 8			;a1e9	cf 	. 
	add a,a			;a1ea	87 	. 
	add a,e			;a1eb	83 	. 
	ld (bc),a			;a1ec	02 	. 
	cp 004h		;a1ed	fe 04 	. . 
	rst 38h			;a1ef	ff 	. 
	add a,d			;a1f0	82 	. 
	rst 20h			;a1f1	e7 	. 
	ld (bc),a			;a1f2	02 	. 
la1f3h:
	add hl,bc			;a1f3	09 	. 
	nop			;a1f4	00 	. 
	inc bc			;a1f5	03 	. 
	ld h,b			;a1f6	60 	` 
	inc bc			;a1f7	03 	. 
	ret p			;a1f8	f0 	. 
	ld (bc),a			;a1f9	02 	. 
	ret m			;a1fa	f8 	. 
	add a,a			;a1fb	87 	. 
	jr c,la22eh		;a1fc	38 30 	8 0 
	nop			;a1fe	00 	. 
	djnz la23dh		;a1ff	10 3c 	. < 
	ld a,07fh		;a201	3e 7f 	>  
	add hl,bc			;a203	09 	. 
	nop			;a204	00 	. 
	ld (bc),a			;a205	02 	. 
	add a,b			;a206	80 	. 
	or l			;a207	b5 	. 
	ret nz			;a208	c0 	. 
	ret po			;a209	e0 	. 
	ret p			;a20a	f0 	. 
	ret po			;a20b	e0 	. 
	ret nz			;a20c	c0 	. 
	ld c,a			;a20d	4f 	O 
	rst 38h			;a20e	ff 	. 
	ld sp,hl			;a20f	f9 	. 
	call m,0ff69h		;a210	fc 69 ff 	. i . 
	rst 38h			;a213	ff 	. 
	ld l,0e6h		;a214	2e e6 	. . 
	rst 38h			;a216	ff 	. 
	rst 38h			;a217	ff 	. 
	ld e,a			;a218	5f 	_ 
	xor 0f2h		;a219	ee f2 	. . 
	xor a			;a21b	af 	. 
	rrca			;a21c	0f 	. 
	rst 30h			;a21d	f7 	. 
	ex (sp),hl			;a21e	e3 	. 
	ld c,e			;a21f	4b 	K 
	ccf			;a220	3f 	? 
	rst 38h			;a221	ff 	. 
	rla			;a222	17 	. 
	pop af			;a223	f1 	. 
	ld a,a			;a224	7f 	 
	rst 38h			;a225	ff 	. 
	rst 38h			;a226	ff 	. 
	ld c,e			;a227	4b 	K 
	cp 0c0h		;a228	fe c0 	. . 
	ccf			;a22a	3f 	? 
	rst 38h			;a22b	ff 	. 
	ld a,b			;a22c	78 	x 
	nop			;a22d	00 	. 
la22eh:
	ret po			;a22e	e0 	. 
	ret p			;a22f	f0 	. 
	ld e,b			;a230	58 	X 
	ret pe			;a231	e8 	. 
	ret p			;a232	f0 	. 
	xor h			;a233	ac 	. 
	inc c			;a234	0c 	. 
	cp 0ffh		;a235	fe ff 	. . 
	ld c,e			;a237	4b 	K 
	cp 0c0h		;a238	fe c0 	. . 
	ccf			;a23a	3f 	? 
	rst 38h			;a23b	ff 	. 
	ld a,b			;a23c	78 	x 
la23dh:
	ld b,000h		;a23d	06 00 	. . 
	add a,h			;a23f	84 	. 
	rlca			;a240	07 	. 
	ld c,00ch		;a241	0e 0c 	. . 
	inc e			;a243	1c 	. 
	ld b,0ffh		;a244	06 ff 	. . 
	add a,d			;a246	82 	. 
	jr nc,$+58		;a247	30 38 	0 8 
	ld l,0ffh		;a249	2e ff 	. . 
	nop			;a24b	00 	. 
	jr nz,$+1		;a24c	20 ff 	  . 
	add a,d			;a24e	82 	. 
	pop bc			;a24f	c1 	. 
	cp (hl)			;a250	be 	. 
	inc b			;a251	04 	. 
	ld a,a			;a252	7f 	 
	add a,h			;a253	84 	. 
	rra			;a254	1f 	. 
	ld b,e			;a255	43 	C 
	inc bc			;a256	03 	. 
	defb 0fdh,003h,0feh	;illegal sequence		;a257	fd 03 fe 	. . . 
	sbc a,b			;a25a	98 	. 
	ld d,(hl)			;a25b	56 	V 
	sbc a,l			;a25c	9d 	. 
	cp 0bfh		;a25d	fe bf 	. . 
	ld a,e			;a25f	7b 	{ 
	ld a,a			;a260	7f 	 
	ld a,a			;a261	7f 	 
	ld l,a			;a262	6f 	o 
	ld b,a			;a263	47 	G 
	and l			;a264	a5 	. 
	jp nz,0fcfeh		;a265	c2 fe fc 	. . . 
	xor 07ah		;a268	ee 7a 	. z 
	xor 056h		;a26a	ee 56 	. V 
	defb 0fdh,003h,0c0h	;illegal sequence		;a26c	fd 03 c0 	. . . 
	add a,b			;a26f	80 	. 
	ld a,(bc)			;a270	0a 	. 
	inc e			;a271	1c 	. 
	ld a,(bc)			;a272	0a 	. 
	inc b			;a273	04 	. 
	nop			;a274	00 	. 
	add a,h			;a275	84 	. 
	inc c			;a276	0c 	. 
	ex af,af'			;a277	08 	. 
	inc d			;a278	14 	. 
	ex af,af'			;a279	08 	. 
	inc b			;a27a	04 	. 
	nop			;a27b	00 	. 
	sbc a,a			;a27c	9f 	. 
	inc d			;a27d	14 	. 
	jr c,la294h		;a27e	38 14 	8 . 
	jr z,la282h		;a280	28 00 	( . 
la282h:
	nop			;a282	00 	. 
	add a,b			;a283	80 	. 
la284h:
	ex af,af'			;a284	08 	. 
	inc e			;a285	1c 	. 
	jr z,la29ch		;a286	28 14 	( . 
	ex af,af'			;a288	08 	. 
	nop			;a289	00 	. 
	ld bc,00003h		;a28a	01 03 00 	. . . 
	jr c,la2ddh		;a28d	38 4e 	8 N 
	halt			;a28f	76 	v 
	add hl,sp			;a290	39 	9 
	ld h,01fh		;a291	26 1f 	& . 
	inc e			;a293	1c 	. 
la294h:
	ld a,(bc)			;a294	0a 	. 
	inc d			;a295	14 	. 
	ex af,af'			;a296	08 	. 
	call nc,0a0a8h		;a297	d4 a8 a0 	. . . 
	ld (hl),b			;a29a	70 	p 
	and b			;a29b	a0 	. 
la29ch:
	ld (bc),a			;a29c	02 	. 
	inc bc			;a29d	03 	. 
	ld b,000h		;a29e	06 00 	. . 
	adc a,b			;a2a0	88 	. 
	pop de			;a2a1	d1 	. 
	djnz la284h		;a2a2	10 e0 	. . 
	ld bc,03830h		;a2a4	01 30 38 	. 0 8 
	ld b,h			;a2a7	44 	D 
	ld e,(hl)			;a2a8	5e 	^ 
	add hl,de			;a2a9	19 	. 
	rst 38h			;a2aa	ff 	. 
	inc b			;a2ab	04 	. 
	cp e			;a2ac	bb 	. 
	sub e			;a2ad	93 	. 
	nop			;a2ae	00 	. 
	ld d,h			;a2af	54 	T 
	cp e			;a2b0	bb 	. 
	rst 10h			;a2b1	d7 	. 
	rst 28h			;a2b2	ef 	. 
	rst 10h			;a2b3	d7 	. 
	cp e			;a2b4	bb 	. 
	ld d,h			;a2b5	54 	T 
	nop			;a2b6	00 	. 
	add a,e			;a2b7	83 	. 
	add a,e			;a2b8	83 	. 
	inc e			;a2b9	1c 	. 
	jr la2bch		;a2ba	18 00 	. . 
la2bch:
	djnz la306h		;a2bc	10 48 	. H 
	ret po			;a2be	e0 	. 
	ld e,b			;a2bf	58 	X 
	ld e,e			;a2c0	5b 	[ 
	inc b			;a2c1	04 	. 
	rrca			;a2c2	0f 	. 
	or h			;a2c3	b4 	. 
	inc e			;a2c4	1c 	. 
	jr nz,$+76		;a2c5	20 4a 	  J 
	and (hl)			;a2c7	a6 	. 
	or e			;a2c8	b3 	. 
	adc a,e			;a2c9	8b 	. 
	ld (hl),b			;a2ca	70 	p 
	ld d,0e5h		;a2cb	16 e5 	. . 
	sbc a,e			;a2cd	9b 	. 
	ld b,l			;a2ce	45 	E 
	sbc a,030h		;a2cf	de 30 	. 0 
	dec l			;a2d1	2d 	- 
	defb 0ddh,043h,0bbh	;illegal sequence		;a2d2	dd 43 bb 	. C . 
	ld d,a			;a2d5	57 	W 
	ld c,a			;a2d6	4f 	O 
	rst 8			;a2d7	cf 	. 
	rlca			;a2d8	07 	. 
	jr c,la329h		;a2d9	38 4e 	8 N 
	halt			;a2db	76 	v 
	cp c			;a2dc	b9 	. 
la2ddh:
	and (hl)			;a2dd	a6 	. 
	rst 18h			;a2de	df 	. 
	call c,0d4cah		;a2df	dc ca d4 	. . . 
	ex af,af'			;a2e2	08 	. 
	call nc,0a0a8h		;a2e3	d4 a8 a0 	. . . 
	ld (hl),b			;a2e6	70 	p 
	and b			;a2e7	a0 	. 
	ex (sp),hl			;a2e8	e3 	. 
	di			;a2e9	f3 	. 
	ret po			;a2ea	e0 	. 
	ret nz			;a2eb	c0 	. 
	add a,b			;a2ec	80 	. 
	nop			;a2ed	00 	. 
	ret nz			;a2ee	c0 	. 
	pop af			;a2ef	f1 	. 
	inc d			;a2f0	14 	. 
	djnz la2f3h		;a2f1	10 00 	. . 
la2f3h:
	djnz la33dh		;a2f3	10 48 	. H 
	ret po			;a2f5	e0 	. 
	ld e,b			;a2f6	58 	X 
	ld e,d			;a2f7	5a 	Z 
	inc bc			;a2f8	03 	. 
	ld b,0a0h		;a2f9	06 a0 	. . 
	inc b			;a2fb	04 	. 
	inc e			;a2fc	1c 	. 
	jr nz,la349h		;a2fd	20 4a 	  J 
	and (hl)			;a2ff	a6 	. 
	or d			;a300	b2 	. 
	adc a,d			;a301	8a 	. 
	ld (hl),b			;a302	70 	p 
	ld d,0e5h		;a303	16 e5 	. . 
	sbc a,e			;a305	9b 	. 
la306h:
	ld b,l			;a306	45 	E 
	ld e,(hl)			;a307	5e 	^ 
	jr nc,la336h		;a308	30 2c 	0 , 
	call c,sub_ba42h		;a30a	dc 42 ba 	. B . 
	ld d,d			;a30d	52 	R 
	ld c,d			;a30e	4a 	J 
	jp z,03728h		;a30f	ca 28 37 	. ( 7 
	dec hl			;a312	2b 	+ 
	dec l			;a313	2d 	- 
	djnz la327h		;a314	10 11 	. . 
	inc b			;a316	04 	. 
	ld bc,00301h		;a317	01 01 03 	. . . 
	ld bc,00005h		;a31a	01 05 00 	. . . 
	sbc a,h			;a31d	9c 	. 
	sbc a,c			;a31e	99 	. 
	rlca			;a31f	07 	. 
	ld b,001h		;a320	06 01 	. . 
	nop			;a322	00 	. 
	nop			;a323	00 	. 
	call nz,04f40h		;a324	c4 40 4f 	. @ O 
la327h:
	xor b			;a327	a8 	. 
	ld b,b			;a328	40 	@ 
la329h:
	ld (bc),a			;a329	02 	. 
	inc b			;a32a	04 	. 
	nop			;a32b	00 	. 
	dec d			;a32c	15 	. 
	add hl,bc			;a32d	09 	. 
	cp b			;a32e	b8 	. 
	ld b,b			;a32f	40 	@ 
	ld e,l			;a330	5d 	] 
	xor b			;a331	a8 	. 
	or h			;a332	b4 	. 
	jr z,la33dh		;a333	28 08 	( . 
	nop			;a335	00 	. 
la336h:
	ld b,e			;a336	43 	C 
	daa			;a337	27 	' 
	rrca			;a338	0f 	. 
	ccf			;a339	3f 	? 
	inc b			;a33a	04 	. 
	rst 38h			;a33b	ff 	. 
	ret nz			;a33c	c0 	. 
la33dh:
	ld b,043h		;a33d	06 43 	. C 
	ld hl,la890h		;a33f	21 90 a8 	! . . 
	call nc,0e3e8h		;a342	d4 e8 e3 	. . . 
	jr z,la37eh		;a345	28 37 	( 7 
	xor e			;a347	ab 	. 
	xor l			;a348	ad 	. 
la349h:
	ld d,b			;a349	50 	P 
	ld d,c			;a34a	51 	Q 
	inc b			;a34b	04 	. 
	or c			;a34c	b1 	. 
	call pe,sub_8cdfh		;a34d	ec df 8c 	. . . 
	or e			;a350	b3 	. 
	ld c,e			;a351	4b 	K 
	ld (hl),081h		;a352	36 81 	6 . 
	rst 38h			;a354	ff 	. 
	call sub_a52bh		;a355	cd 2b a5 	. + . 
	xor h			;a358	ac 	. 
	ld e,07fh		;a359	1e 7f 	.  
	rst 38h			;a35b	ff 	. 
	rst 38h			;a35c	ff 	. 
	ld c,a			;a35d	4f 	O 
	xor b			;a35e	a8 	. 
	ld b,b			;a35f	40 	@ 
	ld (bc),a			;a360	02 	. 
	inc b			;a361	04 	. 
	nop			;a362	00 	. 
	inc d			;a363	14 	. 
	ex af,af'			;a364	08 	. 
	cp b			;a365	b8 	. 
	ld b,b			;a366	40 	@ 
	ld e,l			;a367	5d 	] 
	xor b			;a368	a8 	. 
	or a			;a369	b7 	. 
la36ah:
	add hl,hl			;a36a	29 	) 
	add hl,bc			;a36b	09 	. 
	ld h,c			;a36c	61 	a 
	ld b,d			;a36d	42 	B 
	ld h,00ah		;a36e	26 0a 	& . 
	ld a,(de)			;a370	1a 	. 
	ld e,d			;a371	5a 	Z 
	ld a,d			;a372	7a 	z 
	ld a,(hl)			;a373	7e 	~ 
	cp 0b8h		;a374	fe b8 	. . 
	ld b,b			;a376	40 	@ 
	ld e,l			;a377	5d 	] 
	xor b			;a378	a8 	. 
	or a			;a379	b7 	. 
	add hl,hl			;a37a	29 	) 
	adc a,c			;a37b	89 	. 
	pop hl			;a37c	e1 	. 
	ld (bc),a			;a37d	02 	. 
la37eh:
	ld a,a			;a37e	7f 	 
	ld (bc),a			;a37f	02 	. 
	ccf			;a380	3f 	? 
	add a,d			;a381	82 	. 
	rra			;a382	1f 	. 
	inc bc			;a383	03 	. 
	ld (bc),a			;a384	02 	. 
	nop			;a385	00 	. 
	ld (bc),a			;a386	02 	. 
	ld l,a			;a387	6f 	o 
	inc bc			;a388	03 	. 
	ld l,(hl)			;a389	6e 	n 
	inc bc			;a38a	03 	. 
	ld l,a			;a38b	6f 	o 
	ld (bc),a			;a38c	02 	. 
	cp d			;a38d	ba 	. 
	ld (bc),a			;a38e	02 	. 
	jp m,0ea81h		;a38f	fa 81 ea 	. . . 
	inc bc			;a392	03 	. 
	xor 081h		;a393	ee 81 	. . 
	ld l,l			;a395	6d 	m 
	ld (bc),a			;a396	02 	. 
	ld a,l			;a397	7d 	} 
	inc bc			;a398	03 	. 
	ld e,l			;a399	5d 	] 
	ld (bc),a			;a39a	02 	. 
	ld a,l			;a39b	7d 	} 
	and (hl)			;a39c	a6 	. 
	xor 0eah		;a39d	ee ea 	. . 
	jp pe,laeeeh		;a39f	ea ee ae 	. . . 
	cp (hl)			;a3a2	be 	. 
	cp d			;a3a3	ba 	. 
	cp d			;a3a4	ba 	. 
	add a,e			;a3a5	83 	. 
	and h			;a3a6	a4 	. 
	cp d			;a3a7	ba 	. 
	pop bc			;a3a8	c1 	. 
	sbc a,0e9h		;a3a9	de e9 	. . 
	ret p			;a3ab	f0 	. 
	ei			;a3ac	fb 	. 
	rst 38h			;a3ad	ff 	. 
	rst 38h			;a3ae	ff 	. 
	ld a,(hl)			;a3af	7e 	~ 
	jr c,la36ah		;a3b0	38 b8 	8 . 
	ld bc,06450h		;a3b2	01 50 64 	. P d 
	or 0cch		;a3b5	f6 cc 	. . 
	nop			;a3b7	00 	. 
	ccf			;a3b8	3f 	? 
	ld sp,hl			;a3b9	f9 	. 
	ld e,0f0h		;a3ba	1e f0 	. . 
	rrca			;a3bc	0f 	. 
	ld a,(de)			;a3bd	1a 	. 
	nop			;a3be	00 	. 
	defb 0fdh,08fh,0e0h	;illegal sequence		;a3bf	fd 8f e0 	. . . 
	rra			;a3c2	1f 	. 
	inc b			;a3c3	04 	. 
	rst 38h			;a3c4	ff 	. 
	xor h			;a3c5	ac 	. 
	ld e,00dh		;a3c6	1e 0d 	. . 
	inc bc			;a3c8	03 	. 
	inc bc			;a3c9	03 	. 
	add a,d			;a3ca	82 	. 
	call sub_99e1h		;a3cb	cd e1 99 	. . . 
	ld d,l			;a3ce	55 	U 
	ld c,h			;a3cf	4c 	L 
	cp h			;a3d0	bc 	. 
	ld l,b			;a3d1	68 	h 
	sbc a,e			;a3d2	9b 	. 
	jp p,0070ah		;a3d3	f2 0a 07 	. . . 
	or b			;a3d6	b0 	. 
	inc bc			;a3d7	03 	. 
	call pe,0f8f3h		;a3d8	ec f3 f8 	. . . 
	cp 061h		;a3db	fe 61 	. a 
	adc a,b			;a3dd	88 	. 
	ld (bc),a			;a3de	02 	. 
	dec c			;a3df	0d 	. 
	call nz,0c737h		;a3e0	c4 37 c7 	. 7 . 
	rrca			;a3e3	0f 	. 
	rst 38h			;a3e4	ff 	. 
	rst 38h			;a3e5	ff 	. 
	add a,e			;a3e6	83 	. 
	dec hl			;a3e7	2b 	+ 
	out (0bbh),a		;a3e8	d3 bb 	. . 
	rla			;a3ea	17 	. 
	pop hl			;a3eb	e1 	. 
	ret nz			;a3ec	c0 	. 
	nop			;a3ed	00 	. 
	ld bc,06383h		;a3ee	01 83 63 	. . c 
	inc bc			;a3f1	03 	. 
	ld (bc),a			;a3f2	02 	. 
	rst 38h			;a3f3	ff 	. 
	dec b			;a3f4	05 	. 
	ld a,a			;a3f5	7f 	 
	inc bc			;a3f6	03 	. 
	ccf			;a3f7	3f 	? 
	ld (bc),a			;a3f8	02 	. 
	rra			;a3f9	1f 	. 
	add a,d			;a3fa	82 	. 
	rrca			;a3fb	0f 	. 
	inc bc			;a3fc	03 	. 
	inc b			;a3fd	04 	. 
	nop			;a3fe	00 	. 
	dec b			;a3ff	05 	. 
	rst 38h			;a400	ff 	. 
	inc bc			;a401	03 	. 
	ccf			;a402	3f 	? 
	ld (bc),a			;a403	02 	. 
	rra			;a404	1f 	. 
	ld (bc),a			;a405	02 	. 
	rrca			;a406	0f 	. 
	add a,d			;a407	82 	. 
	rlca			;a408	07 	. 
	ld bc,00006h		;a409	01 06 00 	. . . 
	and d			;a40c	a2 	. 
	ld bc,05e0fh		;a40d	01 0f 5e 	. . ^ 
	ret p			;a410	f0 	. 
	nop			;a411	00 	. 
	ld bc,03e07h		;a412	01 07 3e 	. . > 
	call m,003c1h		;a415	fc c1 03 	. . . 
	nop			;a418	00 	. 
	rst 38h			;a419	ff 	. 
	rst 38h			;a41a	ff 	. 
	rst 8			;a41b	cf 	. 
	rra			;a41c	1f 	. 
	inc a			;a41d	3c 	< 
	ret m			;a41e	f8 	. 
	add a,d			;a41f	82 	. 
	ld (bc),a			;a420	02 	. 
	call m,02bb6h		;a421	fc b6 2b 	. . + 
	dec d			;a424	15 	. 
	nop			;a425	00 	. 
	inc b			;a426	04 	. 
	ld b,c			;a427	41 	A 
	ld d,h			;a428	54 	T 
	rst 38h			;a429	ff 	. 
	ld a,a			;a42a	7f 	 
	rra			;a42b	1f 	. 
	ld b,e			;a42c	43 	C 
	jr z,la431h		;a42d	28 02 	( . 
	ld (bc),a			;a42f	02 	. 
	nop			;a430	00 	. 
la431h:
	inc b			;a431	04 	. 
	rst 38h			;a432	ff 	. 
	add a,h			;a433	84 	. 
	ld a,a			;a434	7f 	 
	adc a,a			;a435	8f 	. 
	ld d,c			;a436	51 	Q 
	nop			;a437	00 	. 
	ld b,0ffh		;a438	06 ff 	. . 
	add a,d			;a43a	82 	. 
	sbc a,0f0h		;a43b	de f0 	. . 
	inc bc			;a43d	03 	. 
	rst 38h			;a43e	ff 	. 
	adc a,e			;a43f	8b 	. 
	cp 0fch		;a440	fe fc 	. . 
	pop bc			;a442	c1 	. 
	inc bc			;a443	03 	. 
	nop			;a444	00 	. 
	dec b			;a445	05 	. 
	ld b,l			;a446	45 	E 
	ld d,h			;a447	54 	T 
	ld d,h			;a448	54 	T 
	ld d,b			;a449	50 	P 
	ld (de),a			;a44a	12 	. 
	ld (bc),a			;a44b	02 	. 
	add a,d			;a44c	82 	. 
	ld (bc),a			;a44d	02 	. 
	dec d			;a44e	15 	. 
la44fh:
	add a,d			;a44f	82 	. 
	djnz la494h		;a450	10 42 	. B 
	inc bc			;a452	03 	. 
	ld c,d			;a453	4a 	J 
	add a,c			;a454	81 	. 
	ex af,af'			;a455	08 	. 
	nop			;a456	00 	. 
	jr nz,la459h		;a457	20 00 	  . 
la459h:
	and d			;a459	a2 	. 
	ld a,07fh		;a45a	3e 7f 	>  
	rst 38h			;a45c	ff 	. 
	rst 38h			;a45d	ff 	. 
	defb 0fdh,0cbh,0e1h,0ffh	;set 7,(iy-01fh) & ld a,(iy-01fh)		;a45e	fd cb e1 ff 	. . . . 
	call m,0fffeh		;a462	fc fe ff 	. . . 
	ld a,e			;a465	7b 	{ 
	sub c			;a466	91 	. 
	xor e			;a467	ab 	. 
	cp 0fbh		;a468	fe fb 	. . 
	ld a,a			;a46a	7f 	 
	rst 38h			;a46b	ff 	. 
	rst 38h			;a46c	ff 	. 
	rst 10h			;a46d	d7 	. 
	or d			;a46e	b2 	. 
	ei			;a46f	fb 	. 
	ld a,a			;a470	7f 	 
	dec a			;a471	3d 	= 
	defb 0fdh,0ffh,0f5h	;illegal sequence		;a472	fd ff f5 	. . . 
	defb 0ddh,0b3h,0afh	;illegal sequence		;a475	dd b3 af 	. . . 
	cp 0fch		;a478	fe fc 	. . 
	inc hl			;a47a	23 	# 
	ld b,b			;a47b	40 	@ 
	inc b			;a47c	04 	. 
	add a,b			;a47d	80 	. 
	adc a,h			;a47e	8c 	. 
	ret nz			;a47f	c0 	. 
	cp 0e1h		;a480	fe e1 	. . 
	ret nz			;a482	c0 	. 
	ld b,b			;a483	40 	@ 
	ld b,b			;a484	40 	@ 
	jr nz,la4a8h		;a485	20 21 	  ! 
	ld hl,0c17fh		;a487	21 7f c1 	!  . 
	add a,b			;a48a	80 	. 
	inc b			;a48b	04 	. 
	nop			;a48c	00 	. 
	add a,h			;a48d	84 	. 
	add a,c			;a48e	81 	. 
	ld b,a			;a48f	47 	G 
	jp 003c1h		;a490	c3 c1 03 	. . . 
	add a,c			;a493	81 	. 
la494h:
	and e			;a494	a3 	. 
	jp 0fce2h		;a495	c3 e2 fc 	. . . 
	ret m			;a498	f8 	. 
	rst 0			;a499	c7 	. 
	or c			;a49a	b1 	. 
	adc a,c			;a49b	89 	. 
	ld b,(hl)			;a49c	46 	F 
	ld e,c			;a49d	59 	Y 
	jr nz,$+37		;a49e	20 23 	  # 
	dec (hl)			;a4a0	35 	5 
	dec hl			;a4a1	2b 	+ 
	rst 30h			;a4a2	f7 	. 
	dec hl			;a4a3	2b 	+ 
	ld d,a			;a4a4	57 	W 
	ld e,a			;a4a5	5f 	_ 
	adc a,a			;a4a6	8f 	. 
	ld e,a			;a4a7	5f 	_ 
la4a8h:
	inc e			;a4a8	1c 	. 
	inc c			;a4a9	0c 	. 
	rra			;a4aa	1f 	. 
	ccf			;a4ab	3f 	? 
	ld a,a			;a4ac	7f 	 
	rst 38h			;a4ad	ff 	. 
	ccf			;a4ae	3f 	? 
	rrca			;a4af	0f 	. 
	ld l,0efh		;a4b0	2e ef 	. . 
	rra			;a4b2	1f 	. 
	cp 0cfh		;a4b3	fe cf 	. . 
	rst 0			;a4b5	c7 	. 
	cp e			;a4b6	bb 	. 
	and c			;a4b7	a1 	. 
	ld b,000h		;a4b8	06 00 	. . 
	ld (bc),a			;a4ba	02 	. 
	jr z,la44fh		;a4bb	28 92 	( . 
	ld a,h			;a4bd	7c 	| 
	ld l,h			;a4be	6c 	l 
	ld a,b			;a4bf	78 	x 
	jr c,la4f2h		;a4c0	38 30 	8 0 
	djnz la4ech		;a4c2	10 28 	. ( 
	jr c,la542h		;a4c4	38 7c 	8 | 
	ld l,h			;a4c6	6c 	l 
	ld l,h			;a4c7	6c 	l 
	jr c,la4fah		;a4c8	38 30 	8 0 
	djnz $+42		;a4ca	10 28 	. ( 
	jr c,la54ah		;a4cc	38 7c 	8 | 
	ld l,h			;a4ce	6c 	l 
	inc bc			;a4cf	03 	. 
	ld a,h			;a4d0	7c 	| 
	inc bc			;a4d1	03 	. 
	rst 38h			;a4d2	ff 	. 
	add a,e			;a4d3	83 	. 
	ld a,l			;a4d4	7d 	} 
	djnz $-84		;a4d5	10 aa 	. . 
	inc bc			;a4d7	03 	. 
	rst 38h			;a4d8	ff 	. 
	ld (bc),a			;a4d9	02 	. 
	ld a,h			;a4da	7c 	| 
	adc a,b			;a4db	88 	. 
	ex (sp),hl			;a4dc	e3 	. 
	rst 20h			;a4dd	e7 	. 
	rst 38h			;a4de	ff 	. 
	rst 28h			;a4df	ef 	. 
	or a			;a4e0	b7 	. 
	rra			;a4e1	1f 	. 
	and a			;a4e2	a7 	. 
	and h			;a4e3	a4 	. 
	inc b			;a4e4	04 	. 
	ret p			;a4e5	f0 	. 
	xor h			;a4e6	ac 	. 
	ex (sp),hl			;a4e7	e3 	. 
	rst 18h			;a4e8	df 	. 
	or l			;a4e9	b5 	. 
	ld e,c			;a4ea	59 	Y 
	ld c,h			;a4eb	4c 	L 
la4ech:
	ld (hl),h			;a4ec	74 	t 
	adc a,a			;a4ed	8f 	. 
	jp (hl)			;a4ee	e9 	. 
	ld a,(de)			;a4ef	1a 	. 
	ld h,h			;a4f0	64 	d 
	cp d			;a4f1	ba 	. 
la4f2h:
	ld hl,0d2cfh		;a4f2	21 cf d2 	! . . 
	ld (044bch),hl		;a4f5	22 bc 44 	" . D 
	xor b			;a4f8	a8 	. 
	or b			;a4f9	b0 	. 
la4fah:
	jr nc,$-6		;a4fa	30 f8 	0 . 
	rst 0			;a4fc	c7 	. 
	or c			;a4fd	b1 	. 
	adc a,c			;a4fe	89 	. 
	ld b,(hl)			;a4ff	46 	F 
	ld e,c			;a500	59 	Y 
	jr nz,la526h		;a501	20 23 	  # 
	dec (hl)			;a503	35 	5 
	dec hl			;a504	2b 	+ 
	rst 30h			;a505	f7 	. 
	dec hl			;a506	2b 	+ 
	ld d,a			;a507	57 	W 
	ld e,a			;a508	5f 	_ 
	adc a,a			;a509	8f 	. 
	ld e,a			;a50a	5f 	_ 
	inc e			;a50b	1c 	. 
	inc c			;a50c	0c 	. 
	rra			;a50d	1f 	. 
	ccf			;a50e	3f 	? 
	ld a,a			;a50f	7f 	 
	rst 38h			;a510	ff 	. 
	ccf			;a511	3f 	? 
	ld c,003h		;a512	0e 03 	. . 
	rst 38h			;a514	ff 	. 
	add a,e			;a515	83 	. 
	rst 28h			;a516	ef 	. 
	or a			;a517	b7 	. 
	rra			;a518	1f 	. 
	ld (bc),a			;a519	02 	. 
	and a			;a51a	a7 	. 
	ld b,0ffh		;a51b	06 ff 	. . 
	sbc a,a			;a51d	9f 	. 
	push af			;a51e	f5 	. 
	exx			;a51f	d9 	. 
	ld c,a			;a520	4f 	O 
	ld (hl),a			;a521	77 	w 
	adc a,a			;a522	8f 	. 
	jp (hl)			;a523	e9 	. 
	ld a,(de)			;a524	1a 	. 
	ld h,h			;a525	64 	d 
la526h:
	jp m,0cfe1h		;a526	fa e1 cf 	. . . 
	out (023h),a		;a529	d3 23 	. # 
sub_a52bh:
	cp a			;a52b	bf 	. 
	ld b,a			;a52c	47 	G 
	xor a			;a52d	af 	. 
	cp a			;a52e	bf 	. 
	ccf			;a52f	3f 	? 
	rst 10h			;a530	d7 	. 
	ret z			;a531	c8 	. 
	ld d,h			;a532	54 	T 
	ld d,d			;a533	52 	R 
	cpl			;a534	2f 	/ 
	ld l,01bh		;a535	2e 1b 	. . 
	ld b,006h		;a537	06 06 	. . 
	inc b			;a539	04 	. 
	ld (bc),a			;a53a	02 	. 
	inc bc			;a53b	03 	. 
	ld bc,00003h		;a53c	01 03 00 	. . . 
	sbc a,h			;a53f	9c 	. 
	ld h,(hl)			;a540	66 	f 
	ret m			;a541	f8 	. 
la542h:
	ld sp,hl			;a542	f9 	. 
	cp 0ffh		;a543	fe ff 	. . 
	rst 38h			;a545	ff 	. 
	dec sp			;a546	3b 	; 
	cp a			;a547	bf 	. 
	or b			;a548	b0 	. 
	ld d,a			;a549	57 	W 
la54ah:
	cp a			;a54a	bf 	. 
	defb 0fdh,0fbh,0ffh	;illegal sequence		;a54b	fd fb ff 	. . . 
	jp pe,047f6h		;a54e	ea f6 47 	. . G 
	cp a			;a551	bf 	. 
	and d			;a552	a2 	. 
	ld d,a			;a553	57 	W 
	ld c,b			;a554	48 	H 
	sub 076h		;a555	d6 76 	. v 
	ld e,0bch		;a557	1e bc 	. . 
	ret c			;a559	d8 	. 
	ret p			;a55a	f0 	. 
	ret nz			;a55b	c0 	. 
	inc b			;a55c	04 	. 
	nop			;a55d	00 	. 
	or d			;a55e	b2 	. 
	ld sp,hl			;a55f	f9 	. 
	cp h			;a560	bc 	. 
	sbc a,06fh		;a561	de 6f 	. o 
	ld d,a			;a563	57 	W 
	dec hl			;a564	2b 	+ 
	rla			;a565	17 	. 
	inc e			;a566	1c 	. 
	rst 10h			;a567	d7 	. 
	ret z			;a568	c8 	. 
	ld d,h			;a569	54 	T 
	ld d,d			;a56a	52 	R 
	xor a			;a56b	af 	. 
	xor (hl)			;a56c	ae 	. 
	ei			;a56d	fb 	. 
	ld c,(hl)			;a56e	4e 	N 
	inc de			;a56f	13 	. 
	jr nz,$+117		;a570	20 73 	  s 
	ld c,h			;a572	4c 	L 
	or h			;a573	b4 	. 
	ret			;a574	c9 	. 
	ld a,(hl)			;a575	7e 	~ 
	nop			;a576	00 	. 
	ld (05ad4h),a		;a577	32 d4 5a 	2 . Z 
	ld d,e			;a57a	53 	S 
	pop hl			;a57b	e1 	. 
	add a,b			;a57c	80 	. 
	nop			;a57d	00 	. 
	nop			;a57e	00 	. 
	or b			;a57f	b0 	. 
	ld d,a			;a580	57 	W 
	cp a			;a581	bf 	. 
	defb 0fdh,0fbh,0ffh	;illegal sequence		;a582	fd fb ff 	. . . 
	ex de,hl			;a585	eb 	. 
	rst 30h			;a586	f7 	. 
	ld b,a			;a587	47 	G 
	cp a			;a588	bf 	. 
	and d			;a589	a2 	. 
	ld d,a			;a58a	57 	W 
	ld c,c			;a58b	49 	I 
	rst 10h			;a58c	d7 	. 
	rst 30h			;a58d	f7 	. 
	rst 38h			;a58e	ff 	. 
	cp a			;a58f	bf 	. 
	rst 18h			;a590	df 	. 
	ld b,0ffh		;a591	06 ff 	. . 
	adc a,b			;a593	88 	. 
	ld b,a			;a594	47 	G 
	cp a			;a595	bf 	. 
	and d			;a596	a2 	. 
	ld d,a			;a597	57 	W 
	ld c,b			;a598	48 	H 
	sub 076h		;a599	d6 76 	. v 
	ld e,008h		;a59b	1e 08 	. . 
	nop			;a59d	00 	. 
	jr nz,$+1		;a59e	20 ff 	  . 
	sub d			;a5a0	92 	. 
	ld a,h			;a5a1	7c 	| 
	ld e,e			;a5a2	5b 	[ 
	ld b,l			;a5a3	45 	E 
	ld a,021h		;a5a4	3e 21 	> ! 
	ld d,00fh		;a5a6	16 0f 	. . 
	rlca			;a5a8	07 	. 
	nop			;a5a9	00 	. 
	nop			;a5aa	00 	. 
	add a,c			;a5ab	81 	. 
	rst 0			;a5ac	c7 	. 
	ld b,a			;a5ad	47 	G 
	cp 0afh		;a5ae	fe af 	. . 
	sbc a,e			;a5b0	9b 	. 
	rrca			;a5b1	0f 	. 
	ccf			;a5b2	3f 	? 
	dec b			;a5b3	05 	. 
	rst 38h			;a5b4	ff 	. 
	add a,d			;a5b5	82 	. 
	ret p			;a5b6	f0 	. 
	push hl			;a5b7	e5 	. 
	inc b			;a5b8	04 	. 
	rst 38h			;a5b9	ff 	. 
	add a,c			;a5ba	81 	. 
	ret po			;a5bb	e0 	. 
	inc b			;a5bc	04 	. 
	nop			;a5bd	00 	. 
	xor h			;a5be	ac 	. 
	pop hl			;a5bf	e1 	. 
	jp p,0fcfch		;a5c0	f2 fc fc 	. . . 
	ld a,l			;a5c3	7d 	} 
	ld (0661eh),a		;a5c4	32 1e 66 	2 . f 
	xor d			;a5c7	aa 	. 
	or e			;a5c8	b3 	. 
	ld b,e			;a5c9	43 	C 
	sub a			;a5ca	97 	. 
	ld h,h			;a5cb	64 	d 
	dec c			;a5cc	0d 	. 
la5cdh:
	push af			;a5cd	f5 	. 
	ret m			;a5ce	f8 	. 
	rst 38h			;a5cf	ff 	. 
	call m,00c13h		;a5d0	fc 13 0c 	. . . 
	rlca			;a5d3	07 	. 
	ld bc,07f9eh		;a5d4	01 9e 7f 	. .  
	defb 0fdh,0f2h,03bh	;illegal sequence		;a5d7	fd f2 3b 	. . ; 
	ret z			;a5da	c8 	. 
	jr c,la5cdh		;a5db	38 f0 	8 . 
	nop			;a5dd	00 	. 
	nop			;a5de	00 	. 
	ld a,h			;a5df	7c 	| 
	call nc,0442ch		;a5e0	d4 2c 44 	. , D 
	ret pe			;a5e3	e8 	. 
	ld e,03fh		;a5e4	1e 3f 	. ? 
	rst 38h			;a5e6	ff 	. 
	cp 07ch		;a5e7	fe 7c 	. | 
	sbc a,h			;a5e9	9c 	. 
	call m,00026h		;a5ea	fc 26 00 	. & . 
	adc a,b			;a5ed	88 	. 
	ld bc,07f0fh		;a5ee	01 0f 7f 	. .  
	rst 38h			;a5f1	ff 	. 
	nop			;a5f2	00 	. 
	ld bc,03f07h		;a5f3	01 07 3f 	. . ? 
	ld a,(bc)			;a5f6	0a 	. 
	rst 38h			;a5f7	ff 	. 
	ld (bc),a			;a5f8	02 	. 
	defb 0fdh,006h,0ffh	;illegal sequence		;a5f9	fd 06 ff 	. . . 
	add a,(hl)			;a5fc	86 	. 
	cp a			;a5fd	bf 	. 
	xor e			;a5fe	ab 	. 
	nop			;a5ff	00 	. 
	add a,b			;a600	80 	. 
	ret po			;a601	e0 	. 
	call m,0ff04h		;a602	fc 04 ff 	. . . 
	inc b			;a605	04 	. 
	nop			;a606	00 	. 
	add a,h			;a607	84 	. 
	add a,b			;a608	80 	. 
	ret p			;a609	f0 	. 
	cp 0ffh		;a60a	fe ff 	. . 
	inc b			;a60c	04 	. 
	nop			;a60d	00 	. 
	adc a,b			;a60e	88 	. 
	ld bc,07f0fh		;a60f	01 0f 7f 	. .  
	rst 38h			;a612	ff 	. 
	nop			;a613	00 	. 
	ld bc,03f07h		;a614	01 07 3f 	. . ? 
	inc b			;a617	04 	. 
	rst 38h			;a618	ff 	. 
	add a,(hl)			;a619	86 	. 
	jp m,labbah		;a61a	fa ba ab 	. . . 
	xor e			;a61d	ab 	. 
	xor a			;a61e	af 	. 
la61fh:
	defb 0edh;next byte illegal after ed		;a61f	ed 	. 
	ld (bc),a			;a620	02 	. 
	ld a,l			;a621	7d 	} 
	ld (bc),a			;a622	02 	. 
	jp pe,0ef82h		;a623	ea 82 ef 	. . . 
	cp l			;a626	bd 	. 
	inc bc			;a627	03 	. 
	or l			;a628	b5 	. 
	add a,c			;a629	81 	. 
	rst 30h			;a62a	f7 	. 
	nop			;a62b	00 	. 
	ld hl,0c000h		;a62c	21 00 c0 	! . . 
	ld (00141h),hl		;a62f	22 41 01 	" A . 
	inc bc			;a632	03 	. 
	dec (hl)			;a633	35 	5 
	ld a,a			;a634	7f 	 
	ld a,a			;a635	7f 	 
	nop			;a636	00 	. 
	add a,b			;a637	80 	. 
	nop			;a638	00 	. 
	add a,h			;a639	84 	. 
	ld l,(hl)			;a63a	6e 	n 
	cp 0fch		;a63b	fe fc 	. . 
	add a,(hl)			;a63d	86 	. 
	ccf			;a63e	3f 	? 
	ld c,d			;a63f	4a 	J 
	ld (bc),a			;a640	02 	. 
	ld hl,(07f5fh)		;a641	2a 5f 7f 	* _  
	dec a			;a644	3d 	= 
	nop			;a645	00 	. 
	ld (bc),a			;a646	02 	. 
	ld (bc),a			;a647	02 	. 
	ld a,(de)			;a648	1a 	. 
	and (hl)			;a649	a6 	. 
	ld e,(hl)			;a64a	5e 	^ 
	cp 0fch		;a64b	fe fc 	. . 
	nop			;a64d	00 	. 
	inc e			;a64e	1c 	. 
	ccf			;a64f	3f 	? 
	ld (hl),l			;a650	75 	u 
	ld h,e			;a651	63 	c 
	ld (hl),l			;a652	75 	u 
	ld a,a			;a653	7f 	 
	ccf			;a654	3f 	? 
	ld bc,0331eh		;a655	01 1e 33 	. . 3 
	or a			;a658	b7 	. 
	xor e			;a659	ab 	. 
	rst 10h			;a65a	d7 	. 
	sbc a,0deh		;a65b	de de 	. . 
	add a,b			;a65d	80 	. 
	ld a,06bh		;a65e	3e 6b 	> k 
	rst 0			;a660	c7 	. 
	ex de,hl			;a661	eb 	. 
	rst 10h			;a662	d7 	. 
	rst 38h			;a663	ff 	. 
	ld a,(hl)			;a664	7e 	~ 
	jr c,la69bh		;a665	38 34 	8 4 
	ld (06a56h),hl		;a667	22 56 6a 	" V j 
	halt			;a66a	76 	v 
	inc a			;a66b	3c 	< 
	inc e			;a66c	1c 	. 
	nop			;a66d	00 	. 
	ret m			;a66e	f8 	. 
	inc bc			;a66f	03 	. 
	rst 38h			;a670	ff 	. 
	ld (bc),a			;a671	02 	. 
	ld a,a			;a672	7f 	 
	inc b			;a673	04 	. 
	ccf			;a674	3f 	? 
	ld b,0ffh		;a675	06 ff 	. . 
	adc a,b			;a677	88 	. 
	rra			;a678	1f 	. 
	rrca			;a679	0f 	. 
	rra			;a67a	1f 	. 
	ccf			;a67b	3f 	? 
	ld a,a			;a67c	7f 	 
	rst 38h			;a67d	ff 	. 
	ccf			;a67e	3f 	? 
	rrca			;a67f	0f 	. 
	ex af,af'			;a680	08 	. 
	rst 38h			;a681	ff 	. 
	ld a,(bc)			;a682	0a 	. 
	nop			;a683	00 	. 
	add a,h			;a684	84 	. 
	inc b			;a685	04 	. 
	ld b,h			;a686	44 	D 
	ld c,h			;a687	4c 	L 
	ld l,h			;a688	6c 	l 
	ld (bc),a			;a689	02 	. 
	ld a,h			;a68a	7c 	| 
	inc bc			;a68b	03 	. 
	nop			;a68c	00 	. 
	add a,(hl)			;a68d	86 	. 
	ld b,h			;a68e	44 	D 
	ld c,h			;a68f	4c 	L 
	ld l,h			;a690	6c 	l 
	ld a,h			;a691	7c 	| 
	ld a,h			;a692	7c 	| 
	ld l,h			;a693	6c 	l 
	inc b			;a694	04 	. 
	jr c,la61fh		;a695	38 88 	8 . 
	nop			;a697	00 	. 
	ld d,h			;a698	54 	T 
	cp e			;a699	bb 	. 
	rst 10h			;a69a	d7 	. 
la69bh:
	rst 28h			;a69b	ef 	. 
	rst 10h			;a69c	d7 	. 
	cp e			;a69d	bb 	. 
	ld d,h			;a69e	54 	T 
	inc bc			;a69f	03 	. 
	nop			;a6a0	00 	. 
	add a,d			;a6a1	82 	. 
	ex (sp),hl			;a6a2	e3 	. 
	rst 20h			;a6a3	e7 	. 
	dec b			;a6a4	05 	. 
	rst 38h			;a6a5	ff 	. 
	add a,c			;a6a6	81 	. 
	call m,0f004h		;a6a7	fc 04 f0 	. . . 
	add a,h			;a6aa	84 	. 
	ex (sp),hl			;a6ab	e3 	. 
	rst 18h			;a6ac	df 	. 
	cp a			;a6ad	bf 	. 
	ld a,a			;a6ae	7f 	 
	ld (bc),a			;a6af	02 	. 
	call m,0ff04h		;a6b0	fc 04 ff 	. . . 
	add a,e			;a6b3	83 	. 
	cp a			;a6b4	bf 	. 
	ccf			;a6b5	3f 	? 
	rst 38h			;a6b6	ff 	. 
	ld (bc),a			;a6b7	02 	. 
	cp 002h		;a6b8	fe 02 	. . 
	call m,0f884h		;a6ba	fc 84 f8 	. . . 
	ret p			;a6bd	f0 	. 
	ret p			;a6be	f0 	. 
	ret m			;a6bf	f8 	. 
	inc bc			;a6c0	03 	. 
	rst 38h			;a6c1	ff 	. 
	ld (bc),a			;a6c2	02 	. 
	ld a,a			;a6c3	7f 	 
	inc b			;a6c4	04 	. 
	ccf			;a6c5	3f 	? 
	ld b,0ffh		;a6c6	06 ff 	. . 
	adc a,b			;a6c8	88 	. 
	rra			;a6c9	1f 	. 
	rrca			;a6ca	0f 	. 
	rra			;a6cb	1f 	. 
	ccf			;a6cc	3f 	? 
	ld a,a			;a6cd	7f 	 
	rst 38h			;a6ce	ff 	. 
	ccf			;a6cf	3f 	? 
	ld c,002h		;a6d0	0e 02 	. . 
	rst 30h			;a6d2	f7 	. 
	dec b			;a6d3	05 	. 
	rst 38h			;a6d4	ff 	. 
	add a,c			;a6d5	81 	. 
	cp 003h		;a6d6	fe 03 	. . 
	or 081h		;a6d8	f6 81 	. . 
	call p,0ff04h		;a6da	f4 04 ff 	. . . 
	ld (bc),a			;a6dd	02 	. 
	cp 005h		;a6de	fe 05 	. . 
	rst 38h			;a6e0	ff 	. 
	add a,d			;a6e1	82 	. 
	ld a,a			;a6e2	7f 	 
	rst 38h			;a6e3	ff 	. 
	inc b			;a6e4	04 	. 
	cp 003h		;a6e5	fe 03 	. . 
	jp m,0ff02h		;a6e7	fa 02 ff 	. . . 
	ld (bc),a			;a6ea	02 	. 
	ld a,a			;a6eb	7f 	 
	ld (bc),a			;a6ec	02 	. 
	ccf			;a6ed	3f 	? 
	add a,c			;a6ee	81 	. 
	rra			;a6ef	1f 	. 
	inc bc			;a6f0	03 	. 
	rlca			;a6f1	07 	. 
	ld (bc),a			;a6f2	02 	. 
	inc bc			;a6f3	03 	. 
	add a,c			;a6f4	81 	. 
	ld bc,00003h		;a6f5	01 03 00 	. . . 
	add a,c			;a6f8	81 	. 
	ld a,a			;a6f9	7f 	 
	dec b			;a6fa	05 	. 
	rst 38h			;a6fb	ff 	. 
	add a,h			;a6fc	84 	. 
	ei			;a6fd	fb 	. 
	rst 38h			;a6fe	ff 	. 
	ret p			;a6ff	f0 	. 
la700h:
	rst 30h			;a700	f7 	. 
	inc b			;a701	04 	. 
	rst 38h			;a702	ff 	. 
	ld (bc),a			;a703	02 	. 
	cp 004h		;a704	fe 04 	. . 
	rst 38h			;a706	ff 	. 
	adc a,b			;a707	88 	. 
	call m,07efeh		;a708	fc fe 7e 	. . ~ 
	ld e,0fch		;a70b	1e fc 	. . 
	ret m			;a70d	f8 	. 
	ret p			;a70e	f0 	. 
	ret nz			;a70f	c0 	. 
	inc b			;a710	04 	. 
	nop			;a711	00 	. 
	add a,(hl)			;a712	86 	. 
	ld sp,hl			;a713	f9 	. 
	call m,07ffeh		;a714	fc fe 7f 	. .  
	ld a,a			;a717	7f 	 
	ccf			;a718	3f 	? 
	ld (bc),a			;a719	02 	. 
	rra			;a71a	1f 	. 
	ld (bc),a			;a71b	02 	. 
	rst 38h			;a71c	ff 	. 
	ld (bc),a			;a71d	02 	. 
	ld a,a			;a71e	7f 	 
	ld (bc),a			;a71f	02 	. 
	cp a			;a720	bf 	. 
	ld (bc),a			;a721	02 	. 
	rst 38h			;a722	ff 	. 
	add a,d			;a723	82 	. 
	rra			;a724	1f 	. 
	ccf			;a725	3f 	? 
	ld (bc),a			;a726	02 	. 
	ld a,a			;a727	7f 	 
	ld (bc),a			;a728	02 	. 
	rst 38h			;a729	ff 	. 
	adc a,h			;a72a	8c 	. 
	ld a,(hl)			;a72b	7e 	~ 
	nop			;a72c	00 	. 
	rst 38h			;a72d	ff 	. 
	rst 38h			;a72e	ff 	. 
	ei			;a72f	fb 	. 
	di			;a730	f3 	. 
	pop hl			;a731	e1 	. 
	add a,b			;a732	80 	. 
	nop			;a733	00 	. 
	nop			;a734	00 	. 
	ret p			;a735	f0 	. 
	rst 30h			;a736	f7 	. 
	inc b			;a737	04 	. 
	rst 38h			;a738	ff 	. 
	ld (bc),a			;a739	02 	. 
	cp 004h		;a73a	fe 04 	. . 
	rst 38h			;a73c	ff 	. 
	add a,d			;a73d	82 	. 
	defb 0fdh,0ffh,002h	;illegal sequence		;a73e	fd ff 02 	. . . 
	ld a,a			;a741	7f 	 
	ld (bc),a			;a742	02 	. 
	cp 086h		;a743	fe 86 	. . 
	jp m,05adah		;a745	fa da 5a 	. . Z 
	ld a,d			;a748	7a 	z 
	ld a,(hl)			;a749	7e 	~ 
	cp 004h		;a74a	fe 04 	. . 
	rst 38h			;a74c	ff 	. 
	add a,h			;a74d	84 	. 
	call m,07efeh		;a74e	fc fe 7e 	. . ~ 
	ld e,008h		;a751	1e 08 	. . 
	nop			;a753	00 	. 
	ld (bc),a			;a754	02 	. 
	ld l,a			;a755	6f 	o 
	inc bc			;a756	03 	. 
	ld l,(hl)			;a757	6e 	n 
	inc bc			;a758	03 	. 
	ld l,a			;a759	6f 	o 
	ld (bc),a			;a75a	02 	. 
	cp d			;a75b	ba 	. 
	ld (bc),a			;a75c	02 	. 
	jp m,0ea81h		;a75d	fa 81 ea 	. . . 
	inc bc			;a760	03 	. 
	xor 081h		;a761	ee 81 	. . 
	ld l,l			;a763	6d 	m 
	ld (bc),a			;a764	02 	. 
	ld a,l			;a765	7d 	} 
	inc bc			;a766	03 	. 
	ld e,l			;a767	5d 	] 
	ld (bc),a			;a768	02 	. 
	ld a,l			;a769	7d 	} 
	adc a,c			;a76a	89 	. 
	xor 0eah		;a76b	ee ea 	. . 
	jp pe,laeeeh		;a76d	ea ee ae 	. . . 
	cp (hl)			;a770	be 	. 
	cp d			;a771	ba 	. 
	cp d			;a772	ba 	. 
	ld a,h			;a773	7c 	| 
	ld (bc),a			;a774	02 	. 
	ld a,a			;a775	7f 	 
	ld (bc),a			;a776	02 	. 
	ccf			;a777	3f 	? 
	add a,(hl)			;a778	86 	. 
	rra			;a779	1f 	. 
	rrca			;a77a	0f 	. 
	inc bc			;a77b	03 	. 
	nop			;a77c	00 	. 
	nop			;a77d	00 	. 
	add a,c			;a77e	81 	. 
	ld (bc),a			;a77f	02 	. 
	rst 0			;a780	c7 	. 
	inc bc			;a781	03 	. 
	rst 38h			;a782	ff 	. 
	adc a,l			;a783	8d 	. 
	ld b,00ch		;a784	06 0c 	. . 
	nop			;a786	00 	. 
	ccf			;a787	3f 	? 
	ld sp,hl			;a788	f9 	. 
	ld e,0f0h		;a789	1e f0 	. . 
	nop			;a78b	00 	. 
	ld a,a			;a78c	7f 	 
	nop			;a78d	00 	. 
	defb 0fdh,08fh,0e0h	;illegal sequence		;a78e	fd 8f e0 	. . . 
	dec b			;a791	05 	. 
	nop			;a792	00 	. 
	add a,d			;a793	82 	. 
	pop hl			;a794	e1 	. 
	di			;a795	f3 	. 
	inc b			;a796	04 	. 
	rst 38h			;a797	ff 	. 
	add a,e			;a798	83 	. 
	ld e,07eh		;a799	1e 7e 	. ~ 
	cp 006h		;a79b	fe 06 	. . 
	rst 38h			;a79d	ff 	. 
	sub d			;a79e	92 	. 
	rst 18h			;a79f	df 	. 
	cp a			;a7a0	bf 	. 
	rra			;a7a1	1f 	. 
	rra			;a7a2	1f 	. 
	rrca			;a7a3	0f 	. 
	rlca			;a7a4	07 	. 
	ld bc,0eff7h		;a7a5	01 f7 ef 	. . . 
	add a,a			;a7a8	87 	. 
	di			;a7a9	f3 	. 
	ei			;a7aa	fb 	. 
	ret m			;a7ab	f8 	. 
	ret m			;a7ac	f8 	. 
	ret p			;a7ad	f0 	. 
	nop			;a7ae	00 	. 
	nop			;a7af	00 	. 
	ld a,h			;a7b0	7c 	| 
	inc bc			;a7b1	03 	. 
	call m,0f885h		;a7b2	fc 85 f8 	. . . 
	cp 0ffh		;a7b5	fe ff 	. . 
	rst 38h			;a7b7	ff 	. 
	cp 003h		;a7b8	fe 03 	. . 
	call m,00026h		;a7ba	fc 26 00 	. & . 
	sbc a,h			;a7bd	9c 	. 
	ld bc,05e0fh		;a7be	01 0f 5e 	. . ^ 
	ret p			;a7c1	f0 	. 
	nop			;a7c2	00 	. 
	ld bc,03e07h		;a7c3	01 07 3e 	. . > 
	call m,04bc1h		;a7c6	fc c1 4b 	. . K 
	cp b			;a7c9	b8 	. 
	rst 38h			;a7ca	ff 	. 
	rst 38h			;a7cb	ff 	. 
	rst 8			;a7cc	cf 	. 
	rra			;a7cd	1f 	. 
	inc a			;a7ce	3c 	< 
	ret m			;a7cf	f8 	. 
	add a,a			;a7d0	87 	. 
	ld a,a			;a7d1	7f 	 
	call m,02bb6h		;a7d2	fc b6 2b 	. . + 
	dec d			;a7d5	15 	. 
	nop			;a7d6	00 	. 
	call nz,0fcf1h		;a7d7	c4 f1 fc 	. . . 
	inc bc			;a7da	03 	. 
	nop			;a7db	00 	. 
	add a,l			;a7dc	85 	. 
	ld b,b			;a7dd	40 	@ 
	jr z,la7e2h		;a7de	28 02 	( . 
	ld (hl),b			;a7e0	70 	p 
	ccf			;a7e1	3f 	? 
la7e2h:
	dec b			;a7e2	05 	. 
	nop			;a7e3	00 	. 
	add a,d			;a7e4	82 	. 
	add a,b			;a7e5	80 	. 
	ld d,b			;a7e6	50 	P 
	dec b			;a7e7	05 	. 
	nop			;a7e8	00 	. 
	adc a,h			;a7e9	8c 	. 
	ld bc,05e0fh		;a7ea	01 0f 5e 	. . ^ 
	ret p			;a7ed	f0 	. 
	nop			;a7ee	00 	. 
	ld bc,03e07h		;a7ef	01 07 3e 	. . > 
	call m,04bc1h		;a7f2	fc c1 4b 	. . K 
	cp b			;a7f5	b8 	. 
	djnz $+1		;a7f6	10 ff 	. . 
	nop			;a7f8	00 	. 
	ld hl,l9effh		;a7f9	21 ff 9e 	! . . 
	cp (ix-002h)		;a7fc	dd be fe 	. . . 
	cp 0deh		;a7ff	fe de 	. . 
	jp pe,0ffbch		;a801	ea bc ff 	. . . 
	ld a,a			;a804	7f 	 
	rst 38h			;a805	ff 	. 
	ld a,a			;a806	7f 	 
	cp e			;a807	bb 	. 
	defb 0fdh,063h	;ld iyh,e		;a808	fd 63 	. c 
	ld a,c			;a80a	79 	y 
	ret nz			;a80b	c0 	. 
	or l			;a80c	b5 	. 
	defb 0fdh,0fdh,0b5h	;illegal sequence		;a80d	fd fd b5 	. . . 
	cp h			;a810	bc 	. 
	jp c,0fdffh		;a811	da ff fd 	. . . 
	rst 38h			;a814	ff 	. 
	push af			;a815	f5 	. 
	rst 18h			;a816	df 	. 
	ld sp,iy		;a817	fd f9 	. . 
	inc bc			;a819	03 	. 
	inc bc			;a81a	03 	. 
	rst 38h			;a81b	ff 	. 
	add a,e			;a81c	83 	. 
	push af			;a81d	f5 	. 
	ex (sp),hl			;a81e	e3 	. 
	push af			;a81f	f5 	. 
	inc b			;a820	04 	. 
	rst 38h			;a821	ff 	. 
	add a,h			;a822	84 	. 
	di			;a823	f3 	. 
	rst 30h			;a824	f7 	. 
	ex de,hl			;a825	eb 	. 
	rst 30h			;a826	f7 	. 
	inc b			;a827	04 	. 
	rst 38h			;a828	ff 	. 
	add a,h			;a829	84 	. 
	ex de,hl			;a82a	eb 	. 
	rst 0			;a82b	c7 	. 
	ex de,hl			;a82c	eb 	. 
	rst 10h			;a82d	d7 	. 
	inc bc			;a82e	03 	. 
	rst 38h			;a82f	ff 	. 
	add a,l			;a830	85 	. 
	rst 30h			;a831	f7 	. 
	ex (sp),hl			;a832	e3 	. 
	rst 10h			;a833	d7 	. 
	ex de,hl			;a834	eb 	. 
	rst 30h			;a835	f7 	. 
	inc bc			;a836	03 	. 
	rst 38h			;a837	ff 	. 
	add a,d			;a838	82 	. 
	nop			;a839	00 	. 
	ld a,b			;a83a	78 	x 
	ld (bc),a			;a83b	02 	. 
	ld a,a			;a83c	7f 	 
	ld (bc),a			;a83d	02 	. 
	ccf			;a83e	3f 	? 
	dec b			;a83f	05 	. 
	rra			;a840	1f 	. 
	adc a,l			;a841	8d 	. 
	rst 18h			;a842	df 	. 
	rst 28h			;a843	ef 	. 
	xor 0f0h		;a844	ee f0 	. . 
	or 00fh		;a846	f6 0f 	. . 
	inc bc			;a848	03 	. 
	inc c			;a849	0c 	. 
	rra			;a84a	1f 	. 
	ccf			;a84b	3f 	? 
	ccf			;a84c	3f 	? 
	rrca			;a84d	0f 	. 
	nop			;a84e	00 	. 
	inc bc			;a84f	03 	. 
	push af			;a850	f5 	. 
	add a,l			;a851	85 	. 
	dec c			;a852	0d 	. 
	or l			;a853	b5 	. 
	cp c			;a854	b9 	. 
	ld a,h			;a855	7c 	| 
	ld a,(hl)			;a856	7e 	~ 
	inc b			;a857	04 	. 
	rst 38h			;a858	ff 	. 
	inc b			;a859	04 	. 
	rst 28h			;a85a	ef 	. 
	sub c			;a85b	91 	. 
	rst 38h			;a85c	ff 	. 
	rst 28h			;a85d	ef 	. 
	ei			;a85e	fb 	. 
	cp e			;a85f	bb 	. 
	or e			;a860	b3 	. 
	sub e			;a861	93 	. 
	add a,e			;a862	83 	. 
	add a,e			;a863	83 	. 
	rst 38h			;a864	ff 	. 
	rst 28h			;a865	ef 	. 
	rst 28h			;a866	ef 	. 
	cp e			;a867	bb 	. 
	or e			;a868	b3 	. 
	sub e			;a869	93 	. 
	add a,e			;a86a	83 	. 
	add a,e			;a86b	83 	. 
	sub e			;a86c	93 	. 
	inc b			;a86d	04 	. 
	rst 0			;a86e	c7 	. 
	adc a,b			;a86f	88 	. 
	rst 38h			;a870	ff 	. 
	xor e			;a871	ab 	. 
	ld b,h			;a872	44 	D 
	jr z,la885h		;a873	28 10 	( . 
	jr z,la8bbh		;a875	28 44 	( D 
	xor e			;a877	ab 	. 
	inc bc			;a878	03 	. 
	rst 38h			;a879	ff 	. 
	adc a,b			;a87a	88 	. 
	call c,0c3dbh		;a87b	dc db c3 	. . . 
	sbc a,e			;a87e	9b 	. 
	ld a,e			;a87f	7b 	{ 
	ei			;a880	fb 	. 
	ret m			;a881	f8 	. 
	ei			;a882	fb 	. 
	inc b			;a883	04 	. 
	rst 28h			;a884	ef 	. 
la885h:
	sub (hl)			;a885	96 	. 
	call c,05ea2h		;a886	dc a2 5e 	. . ^ 
	cp (hl)			;a889	be 	. 
	ei			;a88a	fb 	. 
	ei			;a88b	fb 	. 
	ret p			;a88c	f0 	. 
	or 0efh		;a88d	f6 ef 	. . 
	sbc a,a			;a88f	9f 	. 
la890h:
	ld e,a			;a890	5f 	_ 
	rst 18h			;a891	df 	. 
	ld a,(hl)			;a892	7e 	~ 
	ld a,l			;a893	7d 	} 
	defb 0fdh,07bh,0bbh	;illegal sequence		;a894	fd 7b bb 	. { . 
	rst 10h			;a897	d7 	. 
	rst 8			;a898	cf 	. 
	rst 28h			;a899	ef 	. 
	rlca			;a89a	07 	. 
	ld a,b			;a89b	78 	x 
	ld (bc),a			;a89c	02 	. 
	ld a,a			;a89d	7f 	 
	ld (bc),a			;a89e	02 	. 
	cp a			;a89f	bf 	. 
	inc b			;a8a0	04 	. 
	rst 18h			;a8a1	df 	. 
	sub (hl)			;a8a2	96 	. 
	rra			;a8a3	1f 	. 
	rst 18h			;a8a4	df 	. 
	rst 28h			;a8a5	ef 	. 
	xor 0f0h		;a8a6	ee f0 	. . 
	or 0efh		;a8a8	f6 ef 	. . 
	di			;a8aa	f3 	. 
	call pe,0bfdfh		;a8ab	ec df bf 	. . . 
	ccf			;a8ae	3f 	? 
	rst 8			;a8af	cf 	. 
	pop af			;a8b0	f1 	. 
	ret z			;a8b1	c8 	. 
	set 0,e		;a8b2	cb c3 	. . 
	sbc a,e			;a8b4	9b 	. 
	ld a,e			;a8b5	7b 	{ 
	ei			;a8b6	fb 	. 
	ret m			;a8b7	f8 	. 
	ld sp,hl			;a8b8	f9 	. 
	inc bc			;a8b9	03 	. 
	jp (hl)			;a8ba	e9 	. 
la8bbh:
	sbc a,a			;a8bb	9f 	. 
	ex de,hl			;a8bc	eb 	. 
	ret nz			;a8bd	c0 	. 
	add a,d			;a8be	82 	. 
	ld e,03eh		;a8bf	1e 3e 	. > 
	ld sp,hl			;a8c1	f9 	. 
	ld sp,hl			;a8c2	f9 	. 
	ret p			;a8c3	f0 	. 
	or 0efh		;a8c4	f6 ef 	. . 
	sbc a,a			;a8c6	9f 	. 
	rra			;a8c7	1f 	. 
	sbc a,a			;a8c8	9f 	. 
	ld a,(hl)			;a8c9	7e 	~ 
	ld a,l			;a8ca	7d 	} 
	defb 0fdh,079h,0b9h	;illegal sequence		;a8cb	fd 79 b9 	. y . 
	push de			;a8ce	d5 	. 
	push bc			;a8cf	c5 	. 
	push hl			;a8d0	e5 	. 
	ld a,(hl)			;a8d1	7e 	~ 
	ld a,a			;a8d2	7f 	 
	ccf			;a8d3	3f 	? 
	ccf			;a8d4	3f 	? 
	djnz $+25		;a8d5	10 17 	. . 
	rlca			;a8d7	07 	. 
	inc bc			;a8d8	03 	. 
	ld bc,00203h		;a8d9	01 03 02 	. . . 
la8dch:
	ld bc,00004h		;a8dc	01 04 00 	. . . 
	adc a,h			;a8df	8c 	. 
	sbc a,a			;a8e0	9f 	. 
	ld l,a			;a8e1	6f 	o 
	ld (hl),a			;a8e2	77 	w 
	ld a,e			;a8e3	7b 	{ 
	call m,0c539h		;a8e4	fc 39 c5 	. 9 . 
	di			;a8e7	f3 	. 
	rst 28h			;a8e8	ef 	. 
	ret pe			;a8e9	e8 	. 
	add a,03eh		;a8ea	c6 3e 	. > 
	ld (bc),a			;a8ec	02 	. 
	cp 002h		;a8ed	fe 02 	. . 
	defb 0fdh,002h,0fbh	;illegal sequence		;a8ef	fd 02 fb 	. . . 
	adc a,d			;a8f2	8a 	. 
	defb 0fdh,0fch,0fch	;illegal sequence		;a8f3	fd fc fc 	. . . 
	ld a,h			;a8f6	7c 	| 
	inc e			;a8f7	1c 	. 
	nop			;a8f8	00 	. 
	ei			;a8f9	fb 	. 
	rst 30h			;a8fa	f7 	. 
	rst 8			;a8fb	cf 	. 
	ccf			;a8fc	3f 	? 
	inc b			;a8fd	04 	. 
	rst 38h			;a8fe	ff 	. 
	and h			;a8ff	a4 	. 
	ld b,07bh		;a900	06 7b 	. { 
	ld a,l			;a902	7d 	} 
	cp (hl)			;a903	be 	. 
	cp a			;a904	bf 	. 
	rst 18h			;a905	df 	. 
	call pe,07ee3h		;a906	ec e3 7e 	. . ~ 
	ld a,a			;a909	7f 	 
	cp a			;a90a	bf 	. 
	cp a			;a90b	bf 	. 
	ld d,b			;a90c	50 	P 
	ld d,a			;a90d	57 	W 
	rlca			;a90e	07 	. 
	di			;a90f	f3 	. 
	rst 28h			;a910	ef 	. 
	rst 18h			;a911	df 	. 
	cp a			;a912	bf 	. 
	cp a			;a913	bf 	. 
	ld a,a			;a914	7f 	 
	ld a,(hl)			;a915	7e 	~ 
	add a,c			;a916	81 	. 
	rst 38h			;a917	ff 	. 
	defb 0fdh,0fbh,0f5h	;illegal sequence		;a918	fd fb f5 	. . . 
	defb 0edh;next byte illegal after ed		;a91b	ed 	. 
	sbc a,(hl)			;a91c	9e 	. 
	ld a,a			;a91d	7f 	 
	rst 38h			;a91e	ff 	. 
	rst 38h			;a91f	ff 	. 
	rst 28h			;a920	ef 	. 
	ret pe			;a921	e8 	. 
	add a,03eh		;a922	c6 3e 	. > 
	ld (bc),a			;a924	02 	. 
	cp 002h		;a925	fe 02 	. . 
	defb 0fdh,002h,0fbh	;illegal sequence		;a927	fd 02 fb 	. . . 
	sub (hl)			;a92a	96 	. 
	defb 0fdh,0fch,0feh	;illegal sequence		;a92b	fd fc fe 	. . . 
	ld a,h			;a92e	7c 	| 
	sbc a,h			;a92f	9c 	. 
	add a,b			;a930	80 	. 
	ld sp,hl			;a931	f9 	. 
	pop af			;a932	f1 	. 
	push bc			;a933	c5 	. 
	dec h			;a934	25 	% 
	and l			;a935	a5 	. 
	add a,l			;a936	85 	. 
	add a,c			;a937	81 	. 
	ld bc,0fbfbh		;a938	01 fb fb 	. . . 
	defb 0fdh,0fch,0ffh	;illegal sequence		;a93b	fd fc ff 	. . . 
	ld a,l			;a93e	7d 	} 
	sbc a,l			;a93f	9d 	. 
	pop hl			;a940	e1 	. 
	ld (bc),a			;a941	02 	. 
	ld a,a			;a942	7f 	 
	ld (bc),a			;a943	02 	. 
	ccf			;a944	3f 	? 
	add a,d			;a945	82 	. 
	rra			;a946	1f 	. 
	inc bc			;a947	03 	. 
	ld (bc),a			;a948	02 	. 
	nop			;a949	00 	. 
	ld (bc),a			;a94a	02 	. 
	sub b			;a94b	90 	. 
	inc bc			;a94c	03 	. 
	sub c			;a94d	91 	. 
	inc bc			;a94e	03 	. 
	sub b			;a94f	90 	. 
	ld (bc),a			;a950	02 	. 
	ld b,l			;a951	45 	E 
	ld (bc),a			;a952	02 	. 
	dec b			;a953	05 	. 
	add a,c			;a954	81 	. 
	dec d			;a955	15 	. 
	inc bc			;a956	03 	. 
	ld de,09281h		;a957	11 81 92 	. . . 
	ld (bc),a			;a95a	02 	. 
	add a,d			;a95b	82 	. 
	inc bc			;a95c	03 	. 
	and d			;a95d	a2 	. 
	ld (bc),a			;a95e	02 	. 
	add a,d			;a95f	82 	. 
	and l			;a960	a5 	. 
	ld de,01515h		;a961	11 15 15 	. . . 
	ld de,04151h		;a964	11 51 41 	. Q A 
	ld b,l			;a967	45 	E 
	ld b,l			;a968	45 	E 
	add a,e			;a969	83 	. 
	cp h			;a96a	bc 	. 
	cp a			;a96b	bf 	. 
	rst 18h			;a96c	df 	. 
	rst 18h			;a96d	df 	. 
	rst 28h			;a96e	ef 	. 
	ret p			;a96f	f0 	. 
	call m,0ffffh		;a970	fc ff ff 	. . . 
	ld a,(hl)			;a973	7e 	~ 
	cp c			;a974	b9 	. 
	cp e			;a975	bb 	. 
	add a,e			;a976	83 	. 
	ld a,l			;a977	7d 	} 
	ld a,(hl)			;a978	7e 	~ 
	ld sp,hl			;a979	f9 	. 
	di			;a97a	f3 	. 
	rst 38h			;a97b	ff 	. 
	ret nz			;a97c	c0 	. 
	ld b,0e1h		;a97d	06 e1 	. . 
	rrca			;a97f	0f 	. 
	rst 38h			;a980	ff 	. 
	cp (hl)			;a981	be 	. 
	rst 38h			;a982	ff 	. 
	ld (bc),a			;a983	02 	. 
	ld (hl),b			;a984	70 	p 
	rra			;a985	1f 	. 
	dec b			;a986	05 	. 
	rst 38h			;a987	ff 	. 
	xor h			;a988	ac 	. 
	ld e,0edh		;a989	1e ed 	. . 
	di			;a98b	f3 	. 
	rst 30h			;a98c	f7 	. 
	rst 30h			;a98d	f7 	. 
	rst 28h			;a98e	ef 	. 
	pop hl			;a98f	e1 	. 
	sbc a,l			;a990	9d 	. 
	ld a,l			;a991	7d 	} 
	call m,0f9fdh		;a992	fc fd f9 	. . . 
	ei			;a995	fb 	. 
	di			;a996	f3 	. 
	ld l,a			;a997	6f 	o 
	cpl			;a998	2f 	/ 
	ld b,b			;a999	40 	@ 
	rst 28h			;a99a	ef 	. 
	rst 28h			;a99b	ef 	. 
	rst 30h			;a99c	f7 	. 
	ld sp,hl			;a99d	f9 	. 
	cp 0e9h		;a99e	fe e9 	. . 
	sub d			;a9a0	92 	. 
	ld a,e			;a9a1	7b 	{ 
	adc a,l			;a9a2	8d 	. 
	call p,0f7f7h		;a9a3	f4 f7 f7 	. . . 
	rrca			;a9a6	0f 	. 
	rst 38h			;a9a7	ff 	. 
	rst 38h			;a9a8	ff 	. 
	add a,e			;a9a9	83 	. 
	ld a,e			;a9aa	7b 	{ 
	ei			;a9ab	fb 	. 
	ei			;a9ac	fb 	. 
	rst 30h			;a9ad	f7 	. 
	pop af			;a9ae	f1 	. 
	adc a,00eh		;a9af	ce 0e 	. . 
	push af			;a9b1	f5 	. 
	ei			;a9b2	fb 	. 
	ei			;a9b3	fb 	. 
	inc bc			;a9b4	03 	. 
	ld (bc),a			;a9b5	02 	. 
la9b6h:
	rst 38h			;a9b6	ff 	. 
	dec b			;a9b7	05 	. 
	ld a,a			;a9b8	7f 	 
	inc bc			;a9b9	03 	. 
la9bah:
	ccf			;a9ba	3f 	? 
	ld (bc),a			;a9bb	02 	. 
	rra			;a9bc	1f 	. 
	add a,d			;a9bd	82 	. 
la9beh:
	rrca			;a9be	0f 	. 
	inc bc			;a9bf	03 	. 
	inc b			;a9c0	04 	. 
	nop			;a9c1	00 	. 
	dec b			;a9c2	05 	. 
	rst 38h			;a9c3	ff 	. 
	inc bc			;a9c4	03 	. 
	ccf			;a9c5	3f 	? 
	ld (bc),a			;a9c6	02 	. 
	rra			;a9c7	1f 	. 
	ld (bc),a			;a9c8	02 	. 
	rrca			;a9c9	0f 	. 
la9cah:
	add a,d			;a9ca	82 	. 
	rlca			;a9cb	07 	. 
	ld bc,00008h		;a9cc	01 08 00 	. . . 
la9cfh:
	add a,d			;a9cf	82 	. 
	ld hl,0030fh		;a9d0	21 0f 03 	! . . 
	nop			;a9d3	00 	. 
	sub h			;a9d4	94 	. 
	ld bc,03e03h		;a9d5	01 03 3e 	. . > 
	call m,000ffh		;a9d8	fc ff 00 	. . . 
	nop			;a9db	00 	. 
	jr nc,la9beh		;a9dc	30 e0 	0 . 
	jp 07f07h		;a9de	c3 07 7f 	. .  
	rst 38h			;a9e1	ff 	. 
	inc bc			;a9e2	03 	. 
	ld c,c			;a9e3	49 	I 
	call nc,0ffeah		;a9e4	d4 ea ff 	. . . 
	ei			;a9e7	fb 	. 
	cp 004h		;a9e8	fe 04 	. . 
	rst 38h			;a9ea	ff 	. 
	add a,e			;a9eb	83 	. 
	cp a			;a9ec	bf 	. 
	rst 10h			;a9ed	d7 	. 
	defb 0fdh,007h,0ffh	;illegal sequence		;a9ee	fd 07 ff 	. . . 
	add a,d			;a9f1	82 	. 
	ld a,a			;a9f2	7f 	 
	xor a			;a9f3	af 	. 
	dec b			;a9f4	05 	. 
	rst 38h			;a9f5	ff 	. 
	adc a,e			;a9f6	8b 	. 
	cp 0f0h		;a9f7	fe f0 	. . 
	and c			;a9f9	a1 	. 
	rrca			;a9fa	0f 	. 
	rst 38h			;a9fb	ff 	. 
	cp 0f8h		;a9fc	fe f8 	. . 
	pop bc			;a9fe	c1 	. 
	inc bc			;a9ff	03 	. 
	ld a,0fch		;aa00	3e fc 	> . 
	ld de,000ffh		;aa02	11 ff 00 	. . . 
	and e			;aa05	a3 	. 
	nop			;aa06	00 	. 
	ld a,a			;aa07	7f 	 
	ld (hl),a			;aa08	77 	w 
	ld h,a			;aa09	67 	g 
	ld c,(hl)			;aa0a	4e 	N 
	ld a,(hl)			;aa0b	7e 	~ 
	ld a,e			;aa0c	7b 	{ 
	ld a,d			;aa0d	7a 	z 
	nop			;aa0e	00 	. 
	cp 0eeh		;aa0f	fe ee 	. . 
	and 0f2h		;aa11	e6 f2 	. . 
	ld a,0feh		;aa13	3e fe 	> . 
	ld c,(hl)			;aa15	4e 	N 
	ld (hl),d			;aa16	72 	r 
	ld a,a			;aa17	7f 	 
	ld a,h			;aa18	7c 	| 
	ld c,a			;aa19	4f 	O 
	ld h,a			;aa1a	67 	g 
	ld (hl),a			;aa1b	77 	w 
	ld a,a			;aa1c	7f 	 
	nop			;aa1d	00 	. 
	ld e,(hl)			;aa1e	5e 	^ 
	sbc a,07eh		;aa1f	de 7e 	. ~ 
	ld (hl),d			;aa21	72 	r 
	and 0eeh		;aa22	e6 ee 	. . 
	cp 000h		;aa24	fe 00 	. . 
	nop			;aa26	00 	. 
	cp 0fch		;aa27	fe fc 	. . 
	ld b,000h		;aa29	06 00 	. . 
	ld (bc),a			;aa2b	02 	. 
	ld a,a			;aa2c	7f 	 
	inc bc			;aa2d	03 	. 
	ld h,b			;aa2e	60 	` 
	add a,d			;aa2f	82 	. 
	ld b,b			;aa30	40 	@ 
	nop			;aa31	00 	. 
	inc bc			;aa32	03 	. 
	jr nz,la9b6h		;aa33	20 81 	  . 
	ccf			;aa35	3f 	? 
	inc b			;aa36	04 	. 
	jr nz,la9bah		;aa37	20 81 	  . 
	ld bc,00206h		;aa39	01 06 02 	. . . 
	add a,c			;aa3c	81 	. 
	ld bc,0ff03h		;aa3d	01 03 ff 	. . . 
	add a,c			;aa40	81 	. 
	add a,b			;aa41	80 	. 
	inc bc			;aa42	03 	. 
	jr c,la9cah		;aa43	38 85 	8 . 
laa45h:
	ld a,h			;aa45	7c 	| 
	rst 38h			;aa46	ff 	. 
	cp 0feh		;aa47	fe fe 	. . 
	nop			;aa49	00 	. 
	inc bc			;aa4a	03 	. 
	jr c,la9cfh		;aa4b	38 82 	8 . 
	ld a,h			;aa4d	7c 	| 
	cp 002h		;aa4e	fe 02 	. . 
	ld a,h			;aa50	7c 	| 
	ld (bc),a			;aa51	02 	. 
	jr c,laa57h		;aa52	38 03 	8 . 
	djnz $-125		;aa54	10 81 	. . 
	ld a,h			;aa56	7c 	| 
laa57h:
	rlca			;aa57	07 	. 
	jr c,laa62h		;aa58	38 08 	8 . 
	nop			;aa5a	00 	. 
	inc bc			;aa5b	03 	. 
	cp 081h		;aa5c	fe 81 	. . 
	nop			;aa5e	00 	. 
	inc bc			;aa5f	03 	. 
	rst 28h			;aa60	ef 	. 
	ld (bc),a			;aa61	02 	. 
laa62h:
	nop			;aa62	00 	. 
	rst 0			;aa63	c7 	. 
	jr $+14		;aa64	18 0c 	. . 
	ld c,(hl)			;aa66	4e 	N 
	ld b,(hl)			;aa67	46 	F 
	ld b,(hl)			;aa68	46 	F 
	ld c,(hl)			;aa69	4e 	N 
	nop			;aa6a	00 	. 
	nop			;aa6b	00 	. 
	jr $+62		;aa6c	18 3c 	. < 
	ld l,(hl)			;aa6e	6e 	n 
	add a,0c6h		;aa6f	c6 c6 	. . 
	cp 000h		;aa71	fe 00 	. . 
	nop			;aa73	00 	. 
	djnz laaaeh		;aa74	10 38 	. 8 
	ld h,d			;aa76	62 	b 
	jp nz,0f2c2h		;aa77	c2 c2 f2 	. . . 
	nop			;aa7a	00 	. 
	and 0dah		;aa7b	e6 da 	. . 
	adc a,h			;aa7d	8c 	. 
	ld c,(hl)			;aa7e	4e 	N 
	ld b,(hl)			;aa7f	46 	F 
	ld b,(hl)			;aa80	46 	F 
	ld c,(hl)			;aa81	4e 	N 
	nop			;aa82	00 	. 
	and 0dah		;aa83	e6 da 	. . 
	cp h			;aa85	bc 	. 
	ld l,(hl)			;aa86	6e 	n 
	add a,0c6h		;aa87	c6 c6 	. . 
	cp 000h		;aa89	fe 00 	. . 
	and 0d2h		;aa8b	e6 d2 	. . 
	cp b			;aa8d	b8 	. 
	ld h,d			;aa8e	62 	b 
	jp nz,0f2c2h		;aa8f	c2 c2 f2 	. . . 
	nop			;aa92	00 	. 
	ld (de),a			;aa93	12 	. 
	ld l,c			;aa94	69 	i 
	ld (de),a			;aa95	12 	. 
	nop			;aa96	00 	. 
	ld (de),a			;aa97	12 	. 
	ld h,c			;aa98	61 	a 
	ld (de),a			;aa99	12 	. 
	nop			;aa9a	00 	. 
	ld a,05eh		;aa9b	3e 5e 	> ^ 
	ld a,000h		;aa9d	3e 00 	> . 
	or a			;aa9f	b7 	. 
	ld d,a			;aaa0	57 	W 
	or a			;aaa1	b7 	. 
	nop			;aaa2	00 	. 
	ld a,h			;aaa3	7c 	| 
	ld a,d			;aaa4	7a 	z 
	ld a,h			;aaa5	7c 	| 
	nop			;aaa6	00 	. 
	defb 0edh;next byte illegal after ed		;aaa7	ed 	. 
	jp pe,000edh		;aaa8	ea ed 00 	. . . 
	inc bc			;aaab	03 	. 
	cp 082h		;aaac	fe 82 	. . 
laaaeh:
	nop			;aaae	00 	. 
	rst 38h			;aaaf	ff 	. 
	inc bc			;aab0	03 	. 
	add a,b			;aab1	80 	. 
	inc bc			;aab2	03 	. 
	cp 082h		;aab3	fe 82 	. . 
	nop			;aab5	00 	. 
	cp 003h		;aab6	fe 03 	. . 
	ld (bc),a			;aab8	02 	. 
	sub b			;aab9	90 	. 
	add a,b			;aaba	80 	. 
	sbc a,b			;aabb	98 	. 
	cp h			;aabc	bc 	. 
	ld l,(hl)			;aabd	6e 	n 
	add a,0c6h		;aabe	c6 c6 	. . 
	cp 000h		;aac0	fe 00 	. . 
	ld (bc),a			;aac2	02 	. 
	ld a,(de)			;aac3	1a 	. 
	inc a			;aac4	3c 	< 
	ld l,(hl)			;aac5	6e 	n 
	add a,0c6h		;aac6	c6 c6 	. . 
	cp 000h		;aac8	fe 00 	. . 
	ld b,080h		;aaca	06 80 	. . 
	add a,d			;aacc	82 	. 
	rst 38h			;aacd	ff 	. 
	nop			;aace	00 	. 
	ld b,002h		;aacf	06 02 	. . 
	add a,d			;aad1	82 	. 
	cp 000h		;aad2	fe 00 	. . 
	inc bc			;aad4	03 	. 
	cp 081h		;aad5	fe 81 	. . 
	nop			;aad7	00 	. 
	inc bc			;aad8	03 	. 
	rst 28h			;aad9	ef 	. 
	add a,c			;aada	81 	. 
	rrca			;aadb	0f 	. 
	inc bc			;aadc	03 	. 
	cp 081h		;aadd	fe 81 	. . 
	nop			;aadf	00 	. 
	inc bc			;aae0	03 	. 
	rst 28h			;aae1	ef 	. 
	add a,c			;aae2	81 	. 
	ld bc,0fe03h		;aae3	01 03 fe 	. . . 
laae6h:
	add a,c			;aae6	81 	. 
	nop			;aae7	00 	. 
	inc bc			;aae8	03 	. 
	rst 28h			;aae9	ef 	. 
	add a,c			;aaea	81 	. 
	add a,b			;aaeb	80 	. 
	inc b			;aaec	04 	. 
	rst 38h			;aaed	ff 	. 
	add a,h			;aaee	84 	. 
	cp 0f8h		;aaef	fe f8 	. . 
	ret po			;aaf1	e0 	. 
	ret nz			;aaf2	c0 	. 
	inc bc			;aaf3	03 	. 
	cp 085h		;aaf4	fe 85 	. . 
	rst 38h			;aaf6	ff 	. 
	ld a,a			;aaf7	7f 	 
	rra			;aaf8	1f 	. 
	rlca			;aaf9	07 	. 
	inc bc			;aafa	03 	. 
	inc bc			;aafb	03 	. 
	cp 081h		;aafc	fe 81 	. . 
	nop			;aafe	00 	. 
	inc bc			;aaff	03 	. 
	rst 28h			;ab00	ef 	. 
	add a,c			;ab01	81 	. 
	ret p			;ab02	f0 	. 
	inc bc			;ab03	03 	. 
	cp 081h		;ab04	fe 81 	. . 
	nop			;ab06	00 	. 
	inc bc			;ab07	03 	. 
	rst 28h			;ab08	ef 	. 
	add a,a			;ab09	87 	. 
	inc bc			;ab0a	03 	. 
	rst 38h			;ab0b	ff 	. 
	rst 38h			;ab0c	ff 	. 
	cp 0fch		;ab0d	fe fc 	. . 
	ret m			;ab0f	f8 	. 
	ret p			;ab10	f0 	. 
	ld (bc),a			;ab11	02 	. 
	ret po			;ab12	e0 	. 
	inc bc			;ab13	03 	. 
	rst 38h			;ab14	ff 	. 
	add a,(hl)			;ab15	86 	. 
	rra			;ab16	1f 	. 
	cp 0feh		;ab17	fe fe 	. . 
	call m,0c07ch		;ab19	fc 7c c0 	. | . 
	ld (bc),a			;ab1c	02 	. 
	add a,b			;ab1d	80 	. 
	dec b			;ab1e	05 	. 
	nop			;ab1f	00 	. 
	add a,c			;ab20	81 	. 
	add a,b			;ab21	80 	. 
	rlca			;ab22	07 	. 
	nop			;ab23	00 	. 
	add a,c			;ab24	81 	. 
	ld bc,00017h		;ab25	01 17 00 	. . . 
	ld (bc),a			;ab28	02 	. 
	cp 084h		;ab29	fe 84 	. . 
	ld a,(hl)			;ab2b	7e 	~ 
	ccf			;ab2c	3f 	? 
	rra			;ab2d	1f 	. 
	rrca			;ab2e	0f 	. 
	ld (bc),a			;ab2f	02 	. 
	rlca			;ab30	07 	. 
	inc bc			;ab31	03 	. 
	cp 081h		;ab32	fe 81 	. . 
	nop			;ab34	00 	. 
	inc bc			;ab35	03 	. 
	rst 28h			;ab36	ef 	. 
	add a,d			;ab37	82 	. 
	ret nz			;ab38	c0 	. 
	inc bc			;ab39	03 	. 
	ld (bc),a			;ab3a	02 	. 
	ld bc,00005h		;ab3b	01 05 00 	. . . 
	inc bc			;ab3e	03 	. 
	cp 085h		;ab3f	fe 85 	. . 
	ret m			;ab41	f8 	. 
	ld a,a			;ab42	7f 	 
	ld a,a			;ab43	7f 	 
	ccf			;ab44	3f 	? 
	ld a,008h		;ab45	3e 08 	> . 
	ret m			;ab47	f8 	. 
	ex af,af'			;ab48	08 	. 
	nop			;ab49	00 	. 
	ex af,af'			;ab4a	08 	. 
	rra			;ab4b	1f 	. 
	add a,d			;ab4c	82 	. 
	nop			;ab4d	00 	. 
	cp 004h		;ab4e	fe 04 	. . 
	call m,00003h		;ab50	fc 03 00 	. . . 
	dec b			;ab53	05 	. 
	ld a,a			;ab54	7f 	 
	add a,d			;ab55	82 	. 
	ld b,b			;ab56	40 	@ 
	nop			;ab57	00 	. 
	nop			;ab58	00 	. 
lab59h:
	and d			;ab59	a2 	. 
	rst 38h			;ab5a	ff 	. 
	add a,d			;ab5b	82 	. 
	or a			;ab5c	b7 	. 
	xor a			;ab5d	af 	. 
	sbc a,(hl)			;ab5e	9e 	. 
	cp a			;ab5f	bf 	. 
	ei			;ab60	fb 	. 
	cp a			;ab61	bf 	. 
	rst 38h			;ab62	ff 	. 
	ld b,c			;ab63	41 	A 
	defb 0edh;next byte illegal after ed		;ab64	ed 	. 
	push af			;ab65	f5 	. 
	ld sp,hl			;ab66	f9 	. 
	cp l			;ab67	bd 	. 
	rst 38h			;ab68	ff 	. 
lab69h:
	defb 0edh;next byte illegal after ed		;ab69	ed 	. 
	or a			;ab6a	b7 	. 
	rst 38h			;ab6b	ff 	. 
	cp l			;ab6c	bd 	. 
	sbc a,a			;ab6d	9f 	. 
	xor a			;ab6e	af 	. 
	or a			;ab6f	b7 	. 
	add a,d			;ab70	82 	. 
	rst 38h			;ab71	ff 	. 
	defb 0fdh,0dfh,0fdh	;illegal sequence		;ab72	fd df fd 	. . . 
	ld a,c			;ab75	79 	y 
	push af			;ab76	f5 	. 
	out (c),b		;ab77	ed 41 	. A 
	rst 38h			;ab79	ff 	. 
	rst 38h			;ab7a	ff 	. 
	ld bc,00304h		;ab7b	01 04 03 	. . . 
	inc bc			;ab7e	03 	. 
	rst 38h			;ab7f	ff 	. 
	dec b			;ab80	05 	. 
	add a,b			;ab81	80 	. 
	add a,d			;ab82	82 	. 
	cp a			;ab83	bf 	. 
	rst 38h			;ab84	ff 	. 
	inc bc			;ab85	03 	. 
	ld c,b			;ab86	48 	H 
	ld (bc),a			;ab87	02 	. 
	ld b,b			;ab88	40 	@ 
	add a,c			;ab89	81 	. 
	ld e,a			;ab8a	5f 	_ 
	ld (bc),a			;ab8b	02 	. 
	ld c,b			;ab8c	48 	H 
	dec bc			;ab8d	0b 	. 
	nop			;ab8e	00 	. 
	add a,c			;ab8f	81 	. 
	ld a,a			;ab90	7f 	 
	dec b			;ab91	05 	. 
	nop			;ab92	00 	. 
	ld (bc),a			;ab93	02 	. 
	ld bc,0ff81h		;ab94	01 81 ff 	. . . 
lab97h:
	inc e			;ab97	1c 	. 
	nop			;ab98	00 	. 
	inc bc			;ab99	03 	. 
	ld bc,0ff81h		;ab9a	01 81 ff 	. . . 
	inc bc			;ab9d	03 	. 
	djnz lab59h		;ab9e	10 b9 	. . 
	rst 38h			;aba0	ff 	. 
	jr labc7h		;aba1	18 24 	. $ 
	ld b,d			;aba3	42 	B 
	pop de			;aba4	d1 	. 
	ld sp,hl			;aba5	f9 	. 
	ld sp,hl			;aba6	f9 	. 
laba7h:
	pop bc			;aba7	c1 	. 
	rst 38h			;aba8	ff 	. 
	jr labcfh		;aba9	18 24 	. $ 
	ld b,d			;abab	42 	B 
	sub c			;abac	91 	. 
	add hl,sp			;abad	39 	9 
	add hl,sp			;abae	39 	9 
	ld bc,018ffh		;abaf	01 ff 18 	. . . 
	inc h			;abb2	24 	$ 
	ld b,d			;abb3	42 	B 
	sub e			;abb4	93 	. 
	dec sp			;abb5	3b 	; 
	dec sp			;abb6	3b 	; 
	inc bc			;abb7	03 	. 
	rst 38h			;abb8	ff 	. 
	add hl,de			;abb9	19 	. 
labbah:
	dec h			;abba	25 	% 
	ld b,e			;abbb	43 	C 
	pop de			;abbc	d1 	. 
	ld sp,hl			;abbd	f9 	. 
labbeh:
	ld sp,hl			;abbe	f9 	. 
	pop bc			;abbf	c1 	. 
	rst 38h			;abc0	ff 	. 
	add hl,de			;abc1	19 	. 
	dec h			;abc2	25 	% 
	ld b,e			;abc3	43 	C 
	sub c			;abc4	91 	. 
	add hl,sp			;abc5	39 	9 
	add hl,sp			;abc6	39 	9 
labc7h:
	ld bc,019ffh		;abc7	01 ff 19 	. . . 
	dec h			;abca	25 	% 
	ld b,e			;abcb	43 	C 
labcch:
	sub e			;abcc	93 	. 
	dec sp			;abcd	3b 	; 
	dec sp			;abce	3b 	; 
labcfh:
	inc bc			;abcf	03 	. 
	rst 38h			;abd0	ff 	. 
	ret nc			;abd1	d0 	. 
	ret pe			;abd2	e8 	. 
	ret nc			;abd3	d0 	. 
	rst 38h			;abd4	ff 	. 
	ret c			;abd5	d8 	. 
	ret pe			;abd6	e8 	. 
	ret c			;abd7	d8 	. 
	rst 38h			;abd8	ff 	. 
	inc bc			;abd9	03 	. 
	add a,c			;abda	81 	. 
	add a,c			;abdb	81 	. 
	rst 38h			;abdc	ff 	. 
	inc bc			;abdd	03 	. 
	ex af,af'			;abde	08 	. 
	add a,c			;abdf	81 	. 
	rst 38h			;abe0	ff 	. 
	inc bc			;abe1	03 	. 
	add a,c			;abe2	81 	. 
	add a,c			;abe3	81 	. 
	rst 38h			;abe4	ff 	. 
	inc bc			;abe5	03 	. 
	djnz lab69h		;abe6	10 81 	. . 
	rst 38h			;abe8	ff 	. 
	inc bc			;abe9	03 	. 
	ld bc,0ff81h		;abea	01 81 ff 	. . . 
	inc b			;abed	04 	. 
	nop			;abee	00 	. 
	inc bc			;abef	03 	. 
	ld bc,0ff81h		;abf0	01 81 ff 	. . . 
	inc b			;abf3	04 	. 
	inc bc			;abf4	03 	. 
	sub b			;abf5	90 	. 
	jr lac1ch		;abf6	18 24 	. $ 
	ld b,d			;abf8	42 	B 
	sub c			;abf9	91 	. 
	add hl,sp			;abfa	39 	9 
	add hl,sp			;abfb	39 	9 
	ld bc,01bffh		;abfc	01 ff 1b 	. . . 
	daa			;abff	27 	' 
	ld b,e			;ac00	43 	C 
	sub c			;ac01	91 	. 
	add hl,sp			;ac02	39 	9 
	add hl,sp			;ac03	39 	9 
	ld bc,006ffh		;ac04	01 ff 06 	. . . 
	nop			;ac07	00 	. 
	add a,d			;ac08	82 	. 
	ld a,a			;ac09	7f 	 
	rst 38h			;ac0a	ff 	. 
	ld b,003h		;ac0b	06 03 	. . 
	ld (bc),a			;ac0d	02 	. 
	rst 38h			;ac0e	ff 	. 
	inc bc			;ac0f	03 	. 
	ld bc,0ff81h		;ac10	01 81 ff 	. . . 
	inc bc			;ac13	03 	. 
	djnz lab97h		;ac14	10 81 	. . 
	ret p			;ac16	f0 	. 
	inc bc			;ac17	03 	. 
	ld bc,0ff81h		;ac18	01 81 ff 	. . . 
	inc bc			;ac1b	03 	. 
lac1ch:
	djnz $-125		;ac1c	10 81 	. . 
	cp 003h		;ac1e	fe 03 	. . 
	ld bc,0ff81h		;ac20	01 81 ff 	. . . 
	inc bc			;ac23	03 	. 
	djnz laba7h		;ac24	10 81 	. . 
	ld a,a			;ac26	7f 	 
	inc b			;ac27	04 	. 
	nop			;ac28	00 	. 
	add a,h			;ac29	84 	. 
	ld bc,01f07h		;ac2a	01 07 1f 	. . . 
	ccf			;ac2d	3f 	? 
	inc bc			;ac2e	03 	. 
	ld bc,00085h		;ac2f	01 85 00 	. . . 
	add a,b			;ac32	80 	. 
	ret po			;ac33	e0 	. 
	ret m			;ac34	f8 	. 
	call m,00103h		;ac35	fc 03 01 	. . . 
	add a,c			;ac38	81 	. 
	rst 38h			;ac39	ff 	. 
	inc bc			;ac3a	03 	. 
	djnz labbeh		;ac3b	10 81 	. . 
	rrca			;ac3d	0f 	. 
	inc bc			;ac3e	03 	. 
	ld bc,0ff81h		;ac3f	01 81 ff 	. . . 
	inc bc			;ac42	03 	. 
	djnz labcch		;ac43	10 87 	. . 
	call m,00000h		;ac45	fc 00 00 	. . . 
	ld bc,00703h		;ac48	01 03 07 	. . . 
	rrca			;ac4b	0f 	. 
	ld (bc),a			;ac4c	02 	. 
	rra			;ac4d	1f 	. 
	inc bc			;ac4e	03 	. 
	nop			;ac4f	00 	. 
	add a,(hl)			;ac50	86 	. 
	ret po			;ac51	e0 	. 
	ld bc,00301h		;ac52	01 01 03 	. . . 
	add a,e			;ac55	83 	. 
	ccf			;ac56	3f 	? 
	ld (bc),a			;ac57	02 	. 
	ld a,a			;ac58	7f 	 
	dec b			;ac59	05 	. 
	rst 38h			;ac5a	ff 	. 
	add a,c			;ac5b	81 	. 
	ld a,a			;ac5c	7f 	 
	ld b,0ffh		;ac5d	06 ff 	. . 
	ld (bc),a			;ac5f	02 	. 
	cp 08ch		;ac60	fe 8c 	. . 
	rst 38h			;ac62	ff 	. 
	call m,0e0f0h		;ac63	fc f0 e0 	. . . 
	add a,b			;ac66	80 	. 
	nop			;ac67	00 	. 
	nop			;ac68	00 	. 
	call m,0f0f8h		;ac69	fc f8 f0 	. . . 
	ret po			;ac6c	e0 	. 
	ret nz			;ac6d	c0 	. 
	ld (bc),a			;ac6e	02 	. 
	add a,b			;ac6f	80 	. 
	add hl,bc			;ac70	09 	. 
	nop			;ac71	00 	. 
	inc bc			;ac72	03 	. 
	ld bc,00005h		;ac73	01 05 00 	. . . 
	inc bc			;ac76	03 	. 
	ld bc,0ff81h		;ac77	01 81 ff 	. . . 
	inc bc			;ac7a	03 	. 
	djnz $-125		;ac7b	10 81 	. . 
	ccf			;ac7d	3f 	? 
	ex af,af'			;ac7e	08 	. 
	nop			;ac7f	00 	. 
	inc bc			;ac80	03 	. 
	ld bc,00781h		;ac81	01 81 07 	. . . 
	inc bc			;ac84	03 	. 
	nop			;ac85	00 	. 
	add a,c			;ac86	81 	. 
	ld bc,00708h		;ac87	01 08 07 	. . . 
	ex af,af'			;ac8a	08 	. 
	cp 008h		;ac8b	fe 08 	. . 
	nop			;ac8d	00 	. 
	inc bc			;ac8e	03 	. 
	rst 38h			;ac8f	ff 	. 
	inc bc			;ac90	03 	. 
	inc bc			;ac91	03 	. 
	dec b			;ac92	05 	. 
	rst 38h			;ac93	ff 	. 
	inc bc			;ac94	03 	. 
	ret po			;ac95	e0 	. 
	ld (bc),a			;ac96	02 	. 
	rst 38h			;ac97	ff 	. 
	nop			;ac98	00 	. 
	ld (bc),a			;ac99	02 	. 
	nop			;ac9a	00 	. 
	sbc a,l			;ac9b	9d 	. 
	dec hl			;ac9c	2b 	+ 
	dec d			;ac9d	15 	. 
	daa			;ac9e	27 	' 
	inc e			;ac9f	1c 	. 
	ld l,030h		;aca0	2e 30 	. 0 
	nop			;aca2	00 	. 
	ld (bc),a			;aca3	02 	. 
	sub 0aah		;aca4	d6 aa 	. . 
	ld h,(hl)			;aca6	66 	f 
	ld a,d			;aca7	7a 	z 
	ld d,h			;aca8	54 	T 
	ld e,038h		;aca9	1e 38 	. 8 
	ld hl,(0261eh)		;acab	2a 1e 26 	* . & 
	dec d			;acae	15 	. 
	dec hl			;acaf	2b 	+ 
	ld a,l			;acb0	7d 	} 
	nop			;acb1	00 	. 
	ld c,074h		;acb2	0e 74 	. t 
	ld a,(laae6h)		;acb4	3a e6 aa 	: . . 
	sub 0beh		;acb7	d6 be 	. . 
	inc b			;acb9	04 	. 
	nop			;acba	00 	. 
	inc bc			;acbb	03 	. 
	call m,00005h		;acbc	fc 05 00 	. . . 
	inc bc			;acbf	03 	. 
	rra			;acc0	1f 	. 
	ld a,(bc)			;acc1	0a 	. 
	nop			;acc2	00 	. 
	add a,c			;acc3	81 	. 
	ld (bc),a			;acc4	02 	. 
	ld b,004h		;acc5	06 04 	. . 
	add a,c			;acc7	81 	. 
	ld (bc),a			;acc8	02 	. 
	inc b			;acc9	04 	. 
	rst 38h			;acca	ff 	. 
	inc b			;accb	04 	. 
	nop			;accc	00 	. 
	inc b			;accd	04 	. 
	rst 38h			;acce	ff 	. 
	add hl,bc			;accf	09 	. 
	nop			;acd0	00 	. 
	add a,c			;acd1	81 	. 
	jr z,lacf0h		;acd2	28 1c 	( . 
	nop			;acd4	00 	. 
	add a,l			;acd5	85 	. 
	jr nc,$+34		;acd6	30 20 	0   
	nop			;acd8	00 	. 
	nop			;acd9	00 	. 
	jr nc,lace6h		;acda	30 0a 	0 . 
	nop			;acdc	00 	. 
	add a,(hl)			;acdd	86 	. 
	ex af,af'			;acde	08 	. 
	inc b			;acdf	04 	. 
	inc c			;ace0	0c 	. 
	inc b			;ace1	04 	. 
	inc b			;ace2	04 	. 
	inc c			;ace3	0c 	. 
	inc bc			;ace4	03 	. 
	nop			;ace5	00 	. 
lace6h:
	add a,l			;ace6	85 	. 
	jr nc,lad09h		;ace7	30 20 	0   
	nop			;ace9	00 	. 
	nop			;acea	00 	. 
	jr nc,lacf7h		;aceb	30 0a 	0 . 
	nop			;aced	00 	. 
	sbc a,(hl)			;acee	9e 	. 
	ex af,af'			;acef	08 	. 
lacf0h:
	inc b			;acf0	04 	. 
	inc c			;acf1	0c 	. 
	inc b			;acf2	04 	. 
	inc b			;acf3	04 	. 
	inc c			;acf4	0c 	. 
	nop			;acf5	00 	. 
	dec l			;acf6	2d 	- 
lacf7h:
	ld d,02dh		;acf7	16 2d 	. - 
	nop			;acf9	00 	. 
	dec h			;acfa	25 	% 
	ld d,025h		;acfb	16 25 	. % 
	nop			;acfd	00 	. 
	ld b,b			;acfe	40 	@ 
	jr nz,lad41h		;acff	20 40 	  @ 
	nop			;ad01	00 	. 
	ld b,b			;ad02	40 	@ 
	and b			;ad03	a0 	. 
	ld b,b			;ad04	40 	@ 
	nop			;ad05	00 	. 
	ld (bc),a			;ad06	02 	. 
	inc b			;ad07	04 	. 
	ld (bc),a			;ad08	02 	. 
lad09h:
	nop			;ad09	00 	. 
	ld (bc),a			;ad0a	02 	. 
	dec b			;ad0b	05 	. 
	ld (bc),a			;ad0c	02 	. 
	ld b,000h		;ad0d	06 00 	. . 
	inc bc			;ad0f	03 	. 
	ld a,a			;ad10	7f 	 
	dec b			;ad11	05 	. 
	nop			;ad12	00 	. 
	inc bc			;ad13	03 	. 
	call m,06783h		;ad14	fc 83 67 	. . g 
	ld b,e			;ad17	43 	C 
	ld bc,00005h		;ad18	01 05 00 	. . . 
	add a,e			;ad1b	83 	. 
	call po,sub_80c0h		;ad1c	e4 c0 80 	. . . 
	dec b			;ad1f	05 	. 
lad20h:
	nop			;ad20	00 	. 
	ld b,07fh		;ad21	06 7f 	.  
	ld (bc),a			;ad23	02 	. 
	nop			;ad24	00 	. 
	ld b,0fch		;ad25	06 fc 	. . 
	ld e,000h		;ad27	1e 00 	. . 
	add a,h			;ad29	84 	. 
	ld bc,01f07h		;ad2a	01 07 1f 	. . . 
	ccf			;ad2d	3f 	? 
	inc b			;ad2e	04 	. 
	nop			;ad2f	00 	. 
lad30h:
	add a,h			;ad30	84 	. 
	add a,b			;ad31	80 	. 
	ret po			;ad32	e0 	. 
	ret m			;ad33	f8 	. 
	call m,00012h		;ad34	fc 12 00 	. . . 
	add a,h			;ad37	84 	. 
	ld bc,00703h		;ad38	01 03 07 	. . . 
	rrca			;ad3b	0f 	. 
	ld (bc),a			;ad3c	02 	. 
	rra			;ad3d	1f 	. 
	inc b			;ad3e	04 	. 
	nop			;ad3f	00 	. 
	ld (bc),a			;ad40	02 	. 
lad41h:
	ld bc,00302h		;ad41	01 02 03 	. . . 
	add a,c			;ad44	81 	. 
	ccf			;ad45	3f 	? 
	ld (bc),a			;ad46	02 	. 
	ld a,a			;ad47	7f 	 
	dec b			;ad48	05 	. 
	rst 38h			;ad49	ff 	. 
	add a,c			;ad4a	81 	. 
	ld a,a			;ad4b	7f 	 
	ld b,0ffh		;ad4c	06 ff 	. . 
	ld (bc),a			;ad4e	02 	. 
	cp 08ch		;ad4f	fe 8c 	. . 
	rst 38h			;ad51	ff 	. 
	call m,0e0f0h		;ad52	fc f0 e0 	. . . 
	add a,b			;ad55	80 	. 
	nop			;ad56	00 	. 
	nop			;ad57	00 	. 
	call m,0f0f8h		;ad58	fc f8 f0 	. . . 
	ret po			;ad5b	e0 	. 
	ret nz			;ad5c	c0 	. 
	ld (bc),a			;ad5d	02 	. 
	add a,b			;ad5e	80 	. 
	add hl,hl			;ad5f	29 	) 
	nop			;ad60	00 	. 
	ex af,af'			;ad61	08 	. 
	rlca			;ad62	07 	. 
	ex af,af'			;ad63	08 	. 
	cp 008h		;ad64	fe 08 	. . 
	nop			;ad66	00 	. 
	djnz $+1		;ad67	10 ff 	. . 
	nop			;ad69	00 	. 
	sbc a,a			;ad6a	9f 	. 
	rst 38h			;ad6b	ff 	. 
	add a,d			;ad6c	82 	. 
	sbc a,h			;ad6d	9c 	. 
	or d			;ad6e	b2 	. 
	xor c			;ad6f	a9 	. 
	and d			;ad70	a2 	. 
	push de			;ad71	d5 	. 
	adc a,d			;ad72	8a 	. 
	rst 38h			;ad73	ff 	. 
	ld b,c			;ad74	41 	A 
	add hl,sp			;ad75	39 	9 
	ld c,l			;ad76	4d 	M 
	sub l			;ad77	95 	. 
	ld b,l			;ad78	45 	E 
	xor e			;ad79	ab 	. 
	ld d,c			;ad7a	51 	Q 
	adc a,d			;ad7b	8a 	. 
	push de			;ad7c	d5 	. 
	and d			;ad7d	a2 	. 
	xor c			;ad7e	a9 	. 
	or d			;ad7f	b2 	. 
	sbc a,h			;ad80	9c 	. 
	add a,d			;ad81	82 	. 
	rst 38h			;ad82	ff 	. 
	ld d,c			;ad83	51 	Q 
	xor e			;ad84	ab 	. 
	ld b,l			;ad85	45 	E 
	sub l			;ad86	95 	. 
	ld c,l			;ad87	4d 	M 
	add hl,sp			;ad88	39 	9 
	ld b,c			;ad89	41 	A 
	ld de,003ffh		;ad8a	11 ff 03 	. . . 
	ld a,b			;ad8d	78 	x 
	inc bc			;ad8e	03 	. 
	ld a,a			;ad8f	7f 	 
	ld (bc),a			;ad90	02 	. 
	ld a,b			;ad91	78 	x 
	add a,c			;ad92	81 	. 
	inc bc			;ad93	03 	. 
	ld b,006h		;ad94	06 06 	. . 
	add a,d			;ad96	82 	. 
	inc bc			;ad97	03 	. 
	nop			;ad98	00 	. 
	inc bc			;ad99	03 	. 
	ld a,a			;ad9a	7f 	 
	inc bc			;ad9b	03 	. 
	jr z,lad20h		;ad9c	28 82 	( . 
	ld c,h			;ad9e	4c 	L 
	nop			;ad9f	00 	. 
	inc bc			;ada0	03 	. 
	rst 38h			;ada1	ff 	. 
	inc bc			;ada2	03 	. 
	jr z,$-123		;ada3	28 83 	( . 
	ld c,h			;ada5	4c 	L 
	ld c,004h		;ada6	0e 04 	. . 
	ld (bc),a			;ada8	02 	. 
	ex af,af'			;ada9	08 	. 
	ld (bc),a			;adaa	02 	. 
	jr z,lad30h		;adab	28 83 	( . 
	nop			;adad	00 	. 
	djnz $+78		;adae	10 4c 	. L 
	rlca			;adb0	07 	. 
	ex af,af'			;adb1	08 	. 
	ld c,b			;adb2	48 	H 
	rst 38h			;adb3	ff 	. 
	adc a,a			;adb4	8f 	. 
	ei			;adb5	fb 	. 
	push af			;adb6	f5 	. 
	ei			;adb7	fb 	. 
	rst 38h			;adb8	ff 	. 
	jp m,0fafch		;adb9	fa fc fa 	. . . 
	rst 38h			;adbc	ff 	. 
	rst 18h			;adbd	df 	. 
	xor a			;adbe	af 	. 
	sbc a,a			;adbf	9f 	. 
	rst 38h			;adc0	ff 	. 
	ld e,a			;adc1	5f 	_ 
	ccf			;adc2	3f 	? 
	ld e,a			;adc3	5f 	_ 
	dec (hl)			;adc4	35 	5 
	rst 38h			;adc5	ff 	. 
	add a,h			;adc6	84 	. 
	cp 0fdh		;adc7	fe fd 	. . 
	ei			;adc9	fb 	. 
	rst 30h			;adca	f7 	. 
	rlca			;adcb	07 	. 
	rst 38h			;adcc	ff 	. 
	add a,c			;adcd	81 	. 
	cp 007h		;adce	fe 07 	. . 
	rst 38h			;add0	ff 	. 
	sub c			;add1	91 	. 
	ld a,a			;add2	7f 	 
	ld sp,hl			;add3	f9 	. 
	rst 20h			;add4	e7 	. 
	rst 18h			;add5	df 	. 
	ld a,0f8h		;add6	3e f8 	> . 
	ret po			;add8	e0 	. 
	ret nz			;add9	c0 	. 
	add a,b			;adda	80 	. 
	sbc a,a			;addb	9f 	. 
	rst 20h			;addc	e7 	. 
	ei			;addd	fb 	. 
	inc a			;adde	3c 	< 
	rra			;addf	1f 	. 
	rlca			;ade0	07 	. 
	inc bc			;ade1	03 	. 
	ld bc,0ff04h		;ade2	01 04 ff 	. . . 
	add a,h			;ade5	84 	. 
	ld a,a			;ade6	7f 	 
	cp a			;ade7	bf 	. 
	rst 18h			;ade8	df 	. 
	rst 28h			;ade9	ef 	. 
	dec b			;adea	05 	. 
	rst 38h			;adeb	ff 	. 
	adc a,a			;adec	8f 	. 
	cp 0fdh		;aded	fe fd 	. . 
	defb 0fdh,0efh,0deh	;illegal sequence		;adef	fd ef de 	. . . 
	cp h			;adf2	bc 	. 
	ld a,b			;adf3	78 	x 
	ld (hl),b			;adf4	70 	p 
	ret po			;adf5	e0 	. 
	ret nz			;adf6	c0 	. 
	ret nz			;adf7	c0 	. 
	ei			;adf8	fb 	. 
	rst 30h			;adf9	f7 	. 
	rst 30h			;adfa	f7 	. 
	xor 002h		;adfb	ee 02 	. . 
	call c,sub_b802h		;adfd	dc 02 b8 	. . . 
	add a,c			;ae00	81 	. 
	add a,b			;ae01	80 	. 
	daa			;ae02	27 	' 
	nop			;ae03	00 	. 
	add a,(hl)			;ae04	86 	. 
	rst 30h			;ae05	f7 	. 
	ld a,e			;ae06	7b 	{ 
	dec a			;ae07	3d 	= 
	ld e,00eh		;ae08	1e 0e 	. . 
	rlca			;ae0a	07 	. 
	ld (bc),a			;ae0b	02 	. 
	inc bc			;ae0c	03 	. 
	dec b			;ae0d	05 	. 
	rst 38h			;ae0e	ff 	. 
	add a,h			;ae0f	84 	. 
lae10h:
	ld a,a			;ae10	7f 	 
	cp a			;ae11	bf 	. 
	cp a			;ae12	bf 	. 
	ld bc,00007h		;ae13	01 07 00 	. . . 
	add a,h			;ae16	84 	. 
	rst 18h			;ae17	df 	. 
	rst 28h			;ae18	ef 	. 
	rst 28h			;ae19	ef 	. 
	ld (hl),a			;ae1a	77 	w 
	ld (bc),a			;ae1b	02 	. 
	dec sp			;ae1c	3b 	; 
	ld (bc),a			;ae1d	02 	. 
	dec e			;ae1e	1d 	. 
	ex af,af'			;ae1f	08 	. 
	ld (hl),b			;ae20	70 	p 
	ex af,af'			;ae21	08 	. 
	nop			;ae22	00 	. 
	ex af,af'			;ae23	08 	. 
	ld c,083h		;ae24	0e 83 	. . 
	rst 38h			;ae26	ff 	. 
	ld bc,00603h		;ae27	01 03 06 	. . . 
	rst 38h			;ae2a	ff 	. 
	ld (bc),a			;ae2b	02 	. 
	add a,b			;ae2c	80 	. 
	inc bc			;ae2d	03 	. 
	sbc a,a			;ae2e	9f 	. 
	add a,d			;ae2f	82 	. 
	cp a			;ae30	bf 	. 
	rst 38h			;ae31	ff 	. 
	nop			;ae32	00 	. 
	sbc a,l			;ae33	9d 	. 
	nop			;ae34	00 	. 
	ld a,a			;ae35	7f 	 
	ld a,a			;ae36	7f 	 
	ld a,(hl)			;ae37	7e 	~ 
	ld a,l			;ae38	7d 	} 
	ld a,e			;ae39	7b 	{ 
	ld (hl),l			;ae3a	75 	u 
	ld l,(hl)			;ae3b	6e 	n 
	nop			;ae3c	00 	. 
	cp 0feh		;ae3d	fe fe 	. . 
	ld a,(hl)			;ae3f	7e 	~ 
	cp (hl)			;ae40	be 	. 
	sbc a,0aeh		;ae41	de ae 	. . 
	halt			;ae43	76 	v 
	ld l,(hl)			;ae44	6e 	n 
	ld (hl),l			;ae45	75 	u 
	ld a,e			;ae46	7b 	{ 
	ld a,l			;ae47	7d 	} 
	ld a,(hl)			;ae48	7e 	~ 
	ld a,a			;ae49	7f 	 
	ld a,a			;ae4a	7f 	 
	nop			;ae4b	00 	. 
	halt			;ae4c	76 	v 
	xor (hl)			;ae4d	ae 	. 
	sbc a,0beh		;ae4e	de be 	. . 
	ld a,(hl)			;ae50	7e 	~ 
	ld (bc),a			;ae51	02 	. 
	cp 002h		;ae52	fe 02 	. . 
	nop			;ae54	00 	. 
	dec b			;ae55	05 	. 
	ld a,a			;ae56	7f 	 
	add a,c			;ae57	81 	. 
	ld b,b			;ae58	40 	@ 
	ld (bc),a			;ae59	02 	. 
	nop			;ae5a	00 	. 
	dec b			;ae5b	05 	. 
	call m,00002h		;ae5c	fc 02 00 	. . . 
	add a,d			;ae5f	82 	. 
	ld (hl),b			;ae60	70 	p 
	nop			;ae61	00 	. 
	inc bc			;ae62	03 	. 
	ld a,a			;ae63	7f 	 
	sub h			;ae64	94 	. 
	nop			;ae65	00 	. 
	jr nz,$+114		;ae66	20 70 	  p 
	nop			;ae68	00 	. 
	dec sp			;ae69	3b 	; 
	dec sp			;ae6a	3b 	; 
	jr c,lae6dh		;ae6b	38 00 	8 . 
lae6dh:
	jr c,$+58		;ae6d	38 38 	8 8 
	ld a,h			;ae6f	7c 	| 
	nop			;ae70	00 	. 
	cp d			;ae71	ba 	. 
	cp d			;ae72	ba 	. 
	jr c,lae75h		;ae73	38 00 	8 . 
lae75h:
	jr c,laeafh		;ae75	38 38 	8 8 
	ld a,h			;ae77	7c 	| 
	cp 002h		;ae78	fe 02 	. . 
	ld a,h			;ae7a	7c 	| 
	ld (bc),a			;ae7b	02 	. 
	jr c,lae81h		;ae7c	38 03 	8 . 
	djnz lae10h		;ae7e	10 90 	. . 
	xor d			;ae80	aa 	. 
lae81h:
	ld d,l			;ae81	55 	U 
	xor d			;ae82	aa 	. 
	ld d,l			;ae83	55 	U 
	xor d			;ae84	aa 	. 
	ld d,l			;ae85	55 	U 
	xor d			;ae86	aa 	. 
	ld d,l			;ae87	55 	U 
	xor d			;ae88	aa 	. 
	ld d,l			;ae89	55 	U 
	xor d			;ae8a	aa 	. 
	ld d,l			;ae8b	55 	U 
	xor d			;ae8c	aa 	. 
	push de			;ae8d	d5 	. 
	ld l,d			;ae8e	6a 	j 
	inc a			;ae8f	3c 	< 
	rlca			;ae90	07 	. 
	nop			;ae91	00 	. 
	add a,c			;ae92	81 	. 
	ld bc,00302h		;ae93	01 02 03 	. . . 
	ld b,000h		;ae96	06 00 	. . 
	ld (bc),a			;ae98	02 	. 
	ret nz			;ae99	c0 	. 
	ld l,000h		;ae9a	2e 00 	. . 
	add a,c			;ae9c	81 	. 
	ld bc,00206h		;ae9d	01 06 02 	. . . 
	add hl,bc			;aea0	09 	. 
	ld bc,l8008h		;aea1	01 08 80 	. . . 
	add a,c			;aea4	81 	. 
	ld bc,00002h		;aea5	01 02 00 	. . . 
	ld (bc),a			;aea8	02 	. 
	inc bc			;aea9	03 	. 
	add a,h			;aeaa	84 	. 
	rlca			;aeab	07 	. 
	rrca			;aeac	0f 	. 
	nop			;aead	00 	. 
	add a,b			;aeae	80 	. 
laeafh:
	ld (bc),a			;aeaf	02 	. 
	nop			;aeb0	00 	. 
	ld (bc),a			;aeb1	02 	. 
	ret nz			;aeb2	c0 	. 
	cp h			;aeb3	bc 	. 
	ret po			;aeb4	e0 	. 
	ret p			;aeb5	f0 	. 
	nop			;aeb6	00 	. 
	ld b,d			;aeb7	42 	B 
	inc a			;aeb8	3c 	< 
	ld a,(hl)			;aeb9	7e 	~ 
	ld a,(hl)			;aeba	7e 	~ 
	cp l			;aebb	bd 	. 
	ld a,(hl)			;aebc	7e 	~ 
	inc a			;aebd	3c 	< 
	ld b,d			;aebe	42 	B 
	rrca			;aebf	0f 	. 
	ld d,025h		;aec0	16 25 	. % 
	ld b,c			;aec2	41 	A 
	add a,d			;aec3	82 	. 
	call po,0f0c8h		;aec4	e4 c8 f0 	. . . 
	ld a,a			;aec7	7f 	 
	cp a			;aec8	bf 	. 
	rst 18h			;aec9	df 	. 
	rst 28h			;aeca	ef 	. 
	rst 30h			;aecb	f7 	. 
	ei			;aecc	fb 	. 
	defb 0fdh,0abh,0feh	;illegal sequence		;aecd	fd ab fe 	. . . 
	defb 0fdh,0fbh,0f7h	;illegal sequence		;aed0	fd fb f7 	. . . 
	rst 28h			;aed3	ef 	. 
	rst 18h			;aed4	df 	. 
	cp a			;aed5	bf 	. 
	ld hl,(lbf7fh)		;aed6	2a 7f bf 	*  . 
	rst 18h			;aed9	df 	. 
	rst 28h			;aeda	ef 	. 
	rst 30h			;aedb	f7 	. 
	ei			;aedc	fb 	. 
	defb 0fdh,0aah,000h	;illegal sequence		;aedd	fd aa 00 	. . . 
	dec sp			;aee0	3b 	; 
	dec sp			;aee1	3b 	; 
	jr c,laee4h		;aee2	38 00 	8 . 
laee4h:
	jr c,laf1eh		;aee4	38 38 	8 8 
	ld a,h			;aee6	7c 	| 
	nop			;aee7	00 	. 
	cp d			;aee8	ba 	. 
	cp d			;aee9	ba 	. 
	jr c,laeech		;aeea	38 00 	8 . 
laeech:
	jr c,laf26h		;aeec	38 38 	8 8 
laeeeh:
	ld a,h			;aeee	7c 	| 
	cp 002h		;aeef	fe 02 	. . 
	ld a,h			;aef1	7c 	| 
	ld (bc),a			;aef2	02 	. 
	jr c,laef8h		;aef3	38 03 	8 . 
	djnz laef7h		;aef5	10 00 	. . 
laef7h:
	adc a,l			;aef7	8d 	. 
laef8h:
	rst 38h			;aef8	ff 	. 
	ret nz			;aef9	c0 	. 
	and b			;aefa	a0 	. 
	add a,c			;aefb	81 	. 
	adc a,a			;aefc	8f 	. 
	adc a,(hl)			;aefd	8e 	. 
	adc a,(hl)			;aefe	8e 	. 
	sbc a,c			;aeff	99 	. 
	rst 38h			;af00	ff 	. 
	ld bc,l8101h		;af01	01 01 81 	. . . 
	pop af			;af04	f1 	. 
	ld (bc),a			;af05	02 	. 
	ld a,c			;af06	79 	y 
	ld (bc),a			;af07	02 	. 
	sbc a,c			;af08	99 	. 
	adc a,h			;af09	8c 	. 
	sbc a,(hl)			;af0a	9e 	. 
	adc a,(hl)			;af0b	8e 	. 
	adc a,a			;af0c	8f 	. 
	add a,a			;af0d	87 	. 
	add a,b			;af0e	80 	. 
	add a,b			;af0f	80 	. 
	rst 38h			;af10	ff 	. 
	sbc a,c			;af11	99 	. 
	ld a,c			;af12	79 	y 
	ld a,c			;af13	79 	y 
	pop af			;af14	f1 	. 
	jp (hl)			;af15	e9 	. 
	ld (bc),a			;af16	02 	. 
	ld bc,0ff02h		;af17	01 02 ff 	. . . 
	dec b			;af1a	05 	. 
	add a,b			;af1b	80 	. 
	add a,c			;af1c	81 	. 
	cp a			;af1d	bf 	. 
laf1eh:
	ld (bc),a			;af1e	02 	. 
	rst 38h			;af1f	ff 	. 
	dec b			;af20	05 	. 
	inc bc			;af21	03 	. 
	ld (bc),a			;af22	02 	. 
	rst 38h			;af23	ff 	. 
	add a,d			;af24	82 	. 
	adc a,b			;af25	88 	. 
laf26h:
	rst 38h			;af26	ff 	. 
	inc bc			;af27	03 	. 
	add a,b			;af28	80 	. 
	adc a,b			;af29	88 	. 
	rst 38h			;af2a	ff 	. 
	ret c			;af2b	d8 	. 
	adc a,b			;af2c	88 	. 
	rst 38h			;af2d	ff 	. 
	call nz,0c7c4h		;af2e	c4 c4 c7 	. . . 
	ld a,h			;af31	7c 	| 
	inc bc			;af32	03 	. 
	nop			;af33	00 	. 
	add a,l			;af34	85 	. 
	rst 38h			;af35	ff 	. 
	ld b,l			;af36	45 	E 
	ld b,l			;af37	45 	E 
	rst 0			;af38	c7 	. 
	ld a,h			;af39	7c 	| 
	ld hl,la700h		;af3a	21 00 a7 	! . . 
	inc bc			;af3d	03 	. 
	ld b,004h		;af3e	06 04 	. . 
	inc c			;af40	0c 	. 
	rst 38h			;af41	ff 	. 
	rst 30h			;af42	f7 	. 
	rst 38h			;af43	ff 	. 
	ld e,l			;af44	5d 	] 
	jp pe,02055h		;af45	ea 55 20 	. U   
	jr nc,$+1		;af48	30 ff 	0 . 
	cp a			;af4a	bf 	. 
	rst 28h			;af4b	ef 	. 
	ld d,l			;af4c	55 	U 
	cp d			;af4d	ba 	. 
	push de			;af4e	d5 	. 
	cp d			;af4f	ba 	. 
	ld d,l			;af50	55 	U 
	xor d			;af51	aa 	. 
	ld d,l			;af52	55 	U 
	xor d			;af53	aa 	. 
	ld d,l			;af54	55 	U 
	xor d			;af55	aa 	. 
	inc d			;af56	14 	. 
	cp d			;af57	ba 	. 
	ld d,l			;af58	55 	U 
	xor d			;af59	aa 	. 
	ld d,l			;af5a	55 	U 
	xor d			;af5b	aa 	. 
	ld d,l			;af5c	55 	U 
	xor d			;af5d	aa 	. 
	ld b,l			;af5e	45 	E 
	xor d			;af5f	aa 	. 
	inc d			;af60	14 	. 
	ld (00800h),hl		;af61	22 00 08 	" . . 
	inc bc			;af64	03 	. 
	nop			;af65	00 	. 
	add a,h			;af66	84 	. 
	xor b			;af67	a8 	. 
	ld bc,00522h		;af68	01 22 05 	. " . 
	inc d			;af6b	14 	. 
	nop			;af6c	00 	. 
	ex af,af'			;af6d	08 	. 
	inc b			;af6e	04 	. 
	ex af,af'			;af6f	08 	. 
	jr nz,laf75h		;af70	20 03 	  . 
	inc b			;af72	04 	. 
	ld (bc),a			;af73	02 	. 
	ex af,af'			;af74	08 	. 
laf75h:
	add a,e			;af75	83 	. 
	djnz laf98h		;af76	10 20 	.   
	ccf			;af78	3f 	? 
	inc bc			;af79	03 	. 
	jr nz,laf7eh		;af7a	20 02 	  . 
	djnz $-122		;af7c	10 84 	. . 
laf7eh:
	ex af,af'			;af7e	08 	. 
	inc b			;af7f	04 	. 
	call m,003bdh		;af80	fc bd 03 	. . . 
	add a,c			;af83	81 	. 
	add a,h			;af84	84 	. 
	nop			;af85	00 	. 
	add a,c			;af86	81 	. 
	add a,c			;af87	81 	. 
	cp l			;af88	bd 	. 
	ld a,(bc)			;af89	0a 	. 
	nop			;af8a	00 	. 
	add a,d			;af8b	82 	. 
	adc a,d			;af8c	8a 	. 
	rst 20h			;af8d	e7 	. 
	inc bc			;af8e	03 	. 
	nop			;af8f	00 	. 
	add a,l			;af90	85 	. 
	ld d,h			;af91	54 	T 
	nop			;af92	00 	. 
	nop			;af93	00 	. 
	and d			;af94	a2 	. 
	rst 20h			;af95	e7 	. 
laf96h:
	inc bc			;af96	03 	. 
	nop			;af97	00 	. 
laf98h:
	add a,l			;af98	85 	. 
	ld d,l			;af99	55 	U 
	nop			;af9a	00 	. 
	nop			;af9b	00 	. 
	adc a,d			;af9c	8a 	. 
	rst 20h			;af9d	e7 	. 
	inc bc			;af9e	03 	. 
	nop			;af9f	00 	. 
	add a,(hl)			;afa0	86 	. 
	ld d,h			;afa1	54 	T 
	rst 38h			;afa2	ff 	. 
	call nz,0c7c4h		;afa3	c4 c4 c7 	. . . 
	ld a,h			;afa6	7c 	| 
	inc bc			;afa7	03 	. 
	nop			;afa8	00 	. 
	add a,l			;afa9	85 	. 
lafaah:
	rst 38h			;afaa	ff 	. 
	ld b,l			;afab	45 	E 
	ld b,l			;afac	45 	E 
	rst 0			;afad	c7 	. 
	ld a,h			;afae	7c 	| 
	dec bc			;afaf	0b 	. 
	nop			;afb0	00 	. 
	nop			;afb1	00 	. 
	inc bc			;afb2	03 	. 
	rst 38h			;afb3	ff 	. 
	add a,d			;afb4	82 	. 
	jp (hl)			;afb5	e9 	. 
	rst 38h			;afb6	ff 	. 
	ld (bc),a			;afb7	02 	. 
	rst 28h			;afb8	ef 	. 
	inc b			;afb9	04 	. 
	rst 38h			;afba	ff 	. 
	add a,c			;afbb	81 	. 
	sub a			;afbc	97 	. 
	ld b,0ffh		;afbd	06 ff 	. . 
	add a,e			;afbf	83 	. 
	rst 28h			;afc0	ef 	. 
	rst 38h			;afc1	ff 	. 
	rst 28h			;afc2	ef 	. 
	dec de			;afc3	1b 	. 
	rst 38h			;afc4	ff 	. 
	add a,c			;afc5	81 	. 
	ret m			;afc6	f8 	. 
	dec b			;afc7	05 	. 
	rst 38h			;afc8	ff 	. 
	ld (bc),a			;afc9	02 	. 
	ret m			;afca	f8 	. 
	inc b			;afcb	04 	. 
	rst 38h			;afcc	ff 	. 
	add a,c			;afcd	81 	. 
	ld a,h			;afce	7c 	| 
	inc bc			;afcf	03 	. 
	nop			;afd0	00 	. 
	inc b			;afd1	04 	. 
	rst 38h			;afd2	ff 	. 
	add a,c			;afd3	81 	. 
	ld a,h			;afd4	7c 	| 
	ex af,af'			;afd5	08 	. 
	nop			;afd6	00 	. 
	add a,c			;afd7	81 	. 
	jr z,laff2h		;afd8	28 18 	( . 
	nop			;afda	00 	. 
	and a			;afdb	a7 	. 
	inc b			;afdc	04 	. 
	ex af,af'			;afdd	08 	. 
	ex af,af'			;afde	08 	. 
	djnz lafe1h		;afdf	10 00 	. . 
lafe1h:
	ex af,af'			;afe1	08 	. 
	nop			;afe2	00 	. 
	and d			;afe3	a2 	. 
	dec d			;afe4	15 	. 
	xor d			;afe5	aa 	. 
	djnz laff0h		;afe6	10 08 	. . 
	nop			;afe8	00 	. 
	ld b,b			;afe9	40 	@ 
	djnz laf96h		;afea	10 aa 	. . 
	ld b,l			;afec	45 	E 
	ld hl,(laa45h)		;afed	2a 45 aa 	* E . 
laff0h:
	ld d,l			;aff0	55 	U 
	xor d			;aff1	aa 	. 
laff2h:
	ld d,l			;aff2	55 	U 
	xor d			;aff3	aa 	. 
	ld d,l			;aff4	55 	U 
	ex de,hl			;aff5	eb 	. 
	ld b,l			;aff6	45 	E 
	xor d			;aff7	aa 	. 
	ld d,l			;aff8	55 	U 
	xor d			;aff9	aa 	. 
	ld d,l			;affa	55 	U 
	xor d			;affb	aa 	. 
	ld d,l			;affc	55 	U 
	cp d			;affd	ba 	. 
	ld d,l			;affe	55 	U 
	ex de,hl			;afff	eb 	. 
	defb 0ddh,0ffh,0f7h	;illegal sequence		;b000	dd ff f7 	. . . 
	inc bc			;b003	03 	. 
	rst 38h			;b004	ff 	. 
	add a,h			;b005	84 	. 
	ld d,a			;b006	57 	W 
	cp 0ddh		;b007	fe dd 	. . 
	jp m,0ff0ch		;b009	fa 0c ff 	. . . 
	add a,c			;b00c	81 	. 
	ld (bc),a			;b00d	02 	. 
	ld b,004h		;b00e	06 04 	. . 
	add a,c			;b010	81 	. 
	ld (bc),a			;b011	02 	. 
	ex af,af'			;b012	08 	. 
	ld b,008h		;b013	06 08 	. . 
	ld h,b			;b015	60 	` 
	add a,c			;b016	81 	. 
	ld b,002h		;b017	06 02 	. . 
	rlca			;b019	07 	. 
	ld (bc),a			;b01a	02 	. 
	inc c			;b01b	0c 	. 
	add a,h			;b01c	84 	. 
	jr $+50		;b01d	18 30 	. 0 
	ccf			;b01f	3f 	? 
	ld h,b			;b020	60 	` 
	ld (bc),a			;b021	02 	. 
	ret po			;b022	e0 	. 
	ld (bc),a			;b023	02 	. 
	jr nc,lafaah		;b024	30 84 	0 . 
	jr lb034h		;b026	18 0c 	. . 
	call m,003bdh		;b028	fc bd 03 	. . . 
	rst 38h			;b02b	ff 	. 
	and e			;b02c	a3 	. 
	ld a,(hl)			;b02d	7e 	~ 
	rst 38h			;b02e	ff 	. 
	rst 38h			;b02f	ff 	. 
	cp l			;b030	bd 	. 
lb031h:
	nop			;b031	00 	. 
	add hl,bc			;b032	09 	. 
	ld a,(de)			;b033	1a 	. 
lb034h:
	jr nc,lb097h		;b034	30 61 	0 a 
	ld (bc),a			;b036	02 	. 
	inc h			;b037	24 	$ 
	ex af,af'			;b038	08 	. 
	cp a			;b039	bf 	. 
	rst 18h			;b03a	df 	. 
	xor d			;b03b	aa 	. 
	rst 30h			;b03c	f7 	. 
	ei			;b03d	fb 	. 
	defb 0fdh,0feh,0feh	;illegal sequence		;b03e	fd fe fe 	. . . 
	defb 0fdh,0fbh,0a6h	;illegal sequence		;b041	fd fb a6 	. . . 
	rst 28h			;b044	ef 	. 
	rst 18h			;b045	df 	. 
	cp a			;b046	bf 	. 
	ld a,a			;b047	7f 	 
	rst 38h			;b048	ff 	. 
	cp a			;b049	bf 	. 
	rst 18h			;b04a	df 	. 
	xor d			;b04b	aa 	. 
	rst 30h			;b04c	f7 	. 
	ei			;b04d	fb 	. 
	defb 0fdh,0feh,006h	;illegal sequence		;b04e	fd fe 06 	. . . 
	rst 38h			;b051	ff 	. 
	ld (bc),a			;b052	02 	. 
	rst 0			;b053	c7 	. 
	add a,c			;b054	81 	. 
	add a,e			;b055	83 	. 
	dec b			;b056	05 	. 
	rst 38h			;b057	ff 	. 
	ld (bc),a			;b058	02 	. 
	rst 0			;b059	c7 	. 
	add a,d			;b05a	82 	. 
	add a,e			;b05b	83 	. 
	ld bc,l8302h		;b05c	01 02 83 	. . . 
	ld (bc),a			;b05f	02 	. 
	rst 0			;b060	c7 	. 
	inc bc			;b061	03 	. 
	rst 28h			;b062	ef 	. 
	nop			;b063	00 	. 
	and d			;b064	a2 	. 
	rst 38h			;b065	ff 	. 
	add a,b			;b066	80 	. 
	add a,b			;b067	80 	. 
	adc a,c			;b068	89 	. 
	sub d			;b069	92 	. 
	add a,h			;b06a	84 	. 
	adc a,d			;b06b	8a 	. 
	sub c			;b06c	91 	. 
	rst 38h			;b06d	ff 	. 
	ld bc,09703h		;b06e	01 03 97 	. . . 
	ld c,a			;b071	4f 	O 
	daa			;b072	27 	' 
	ld d,a			;b073	57 	W 
	adc a,a			;b074	8f 	. 
	sub c			;b075	91 	. 
	adc a,d			;b076	8a 	. 
	add a,h			;b077	84 	. 
	sub d			;b078	92 	. 
	adc a,c			;b079	89 	. 
	sbc a,a			;b07a	9f 	. 
	cp a			;b07b	bf 	. 
	rst 38h			;b07c	ff 	. 
	adc a,a			;b07d	8f 	. 
	ld d,a			;b07e	57 	W 
	daa			;b07f	27 	' 
	ld c,a			;b080	4f 	O 
	sub a			;b081	97 	. 
	ei			;b082	fb 	. 
	defb 0fdh,0ffh,0ffh	;illegal sequence		;b083	fd ff ff 	. . . 
	add a,b			;b086	80 	. 
	dec b			;b087	05 	. 
	cp a			;b088	bf 	. 
	ld (bc),a			;b089	02 	. 
	rst 38h			;b08a	ff 	. 
	add a,c			;b08b	81 	. 
	inc bc			;b08c	03 	. 
	ld b,0ffh		;b08d	06 ff 	. . 
	sbc a,d			;b08f	9a 	. 
	ret c			;b090	d8 	. 
	rst 38h			;b091	ff 	. 
	rst 38h			;b092	ff 	. 
	add a,b			;b093	80 	. 
	rst 38h			;b094	ff 	. 
	rst 38h			;b095	ff 	. 
	ret m			;b096	f8 	. 
lb097h:
	ret c			;b097	d8 	. 
	rst 38h			;b098	ff 	. 
	rst 28h			;b099	ef 	. 
	call pe,07cefh		;b09a	ec ef 7c 	. . | 
	ex af,af'			;b09d	08 	. 
	ex af,af'			;b09e	08 	. 
	ld c,h			;b09f	4c 	L 
	rst 38h			;b0a0	ff 	. 
	rst 28h			;b0a1	ef 	. 
	ld l,l			;b0a2	6d 	m 
	rst 28h			;b0a3	ef 	. 
	ld a,h			;b0a4	7c 	| 
	ex af,af'			;b0a5	08 	. 
	ex af,af'			;b0a6	08 	. 
	ld c,h			;b0a7	4c 	L 
	ld c,004h		;b0a8	0e 04 	. . 
	ld (bc),a			;b0aa	02 	. 
	ex af,af'			;b0ab	08 	. 
	ld (bc),a			;b0ac	02 	. 
	jr z,lb031h		;b0ad	28 82 	( . 
	nop			;b0af	00 	. 
	djnz lb0c8h		;b0b0	10 16 	. . 
	nop			;b0b2	00 	. 
	add a,h			;b0b3	84 	. 
	rlca			;b0b4	07 	. 
	rrca			;b0b5	0f 	. 
	rrca			;b0b6	0f 	. 
	ld e,006h		;b0b7	1e 06 	. . 
	rst 38h			;b0b9	ff 	. 
	add a,d			;b0ba	82 	. 
	ld (hl),b			;b0bb	70 	p 
	ret m			;b0bc	f8 	. 
	ld l,0ffh		;b0bd	2e ff 	. . 
	add a,c			;b0bf	81 	. 
	inc bc			;b0c0	03 	. 
	ld b,006h		;b0c1	06 06 	. . 
	add a,c			;b0c3	81 	. 
	inc bc			;b0c4	03 	. 
	ex af,af'			;b0c5	08 	. 
	ld (bc),a			;b0c6	02 	. 
	ex af,af'			;b0c7	08 	. 
lb0c8h:
	ret nz			;b0c8	c0 	. 
	add a,c			;b0c9	81 	. 
	ld (bc),a			;b0ca	02 	. 
	ld (bc),a			;b0cb	02 	. 
	inc bc			;b0cc	03 	. 
	ld (bc),a			;b0cd	02 	. 
	ld b,083h		;b0ce	06 83 	. . 
	inc c			;b0d0	0c 	. 
	jr lb0d3h		;b0d1	18 00 	. . 
lb0d3h:
	inc bc			;b0d3	03 	. 
	ret nz			;b0d4	c0 	. 
	ld (bc),a			;b0d5	02 	. 
	ret po			;b0d6	e0 	. 
	add a,e			;b0d7	83 	. 
	ld (hl),b			;b0d8	70 	p 
	jr c,lb0dbh		;b0d9	38 00 	8 . 
lb0dbh:
	ex af,af'			;b0db	08 	. 
	rst 38h			;b0dc	ff 	. 
	adc a,(hl)			;b0dd	8e 	. 
	rrca			;b0de	0f 	. 
	rra			;b0df	1f 	. 
	ccf			;b0e0	3f 	? 
	ld (hl),c			;b0e1	71 	q 
	ex (sp),hl			;b0e2	e3 	. 
	and 0ech		;b0e3	e6 ec 	. . 
	ret m			;b0e5	f8 	. 
	rst 38h			;b0e6	ff 	. 
	ld h,b			;b0e7	60 	` 
	jr nc,$+26		;b0e8	30 18 	0 . 
	inc c			;b0ea	0c 	. 
	ld d,a			;b0eb	57 	W 
	inc bc			;b0ec	03 	. 
	rst 38h			;b0ed	ff 	. 
	add a,l			;b0ee	85 	. 
	ld b,00ch		;b0ef	06 0c 	. . 
	jr lb123h		;b0f1	18 30 	. 0 
	ld (hl),l			;b0f3	75 	u 
	inc bc			;b0f4	03 	. 
	rst 38h			;b0f5	ff 	. 
	add a,l			;b0f6	85 	. 
lb0f7h:
	ld h,b			;b0f7	60 	` 
	jr nc,lb112h		;b0f8	30 18 	0 . 
	inc c			;b0fa	0c 	. 
	ld d,a			;b0fb	57 	W 
	inc bc			;b0fc	03 	. 
	rst 38h			;b0fd	ff 	. 
	add a,h			;b0fe	84 	. 
	rst 28h			;b0ff	ef 	. 
	call pe,0ffefh		;b100	ec ef ff 	. . . 
	inc bc			;b103	03 	. 
	rst 8			;b104	cf 	. 
	add a,l			;b105	85 	. 
	rst 38h			;b106	ff 	. 
	rst 28h			;b107	ef 	. 
	ld l,l			;b108	6d 	m 
	rst 28h			;b109	ef 	. 
	rst 38h			;b10a	ff 	. 
	inc bc			;b10b	03 	. 
	rst 8			;b10c	cf 	. 
	add a,h			;b10d	84 	. 
	rrca			;b10e	0f 	. 
	add a,a			;b10f	87 	. 
lb110h:
	adc a,e			;b110	8b 	. 
	rst 8			;b111	cf 	. 
lb112h:
	inc bc			;b112	03 	. 
	rst 28h			;b113	ef 	. 
	add a,c			;b114	81 	. 
	rst 38h			;b115	ff 	. 
	nop			;b116	00 	. 
lb117h:
	ld (bc),a			;b117	02 	. 
	nop			;b118	00 	. 
	adc a,a			;b119	8f 	. 
lb11ah:
	inc bc			;b11a	03 	. 
	ld b,00eh		;b11b	06 0e 	. . 
	jr c,lb117h		;b11d	38 f8 	8 . 
lb11fh:
	adc a,h			;b11f	8c 	. 
	jr nc,lb11ah		;b120	30 f8 	0 . 
	inc e			;b122	1c 	. 
lb123h:
	inc d			;b123	14 	. 
	ld h,002h		;b124	26 02 	& . 
	ld (bc),a			;b126	02 	. 
	ld bc,00702h		;b127	01 02 07 	. . . 
	nop			;b12a	00 	. 
	add a,c			;b12b	81 	. 
	ld bc,00007h		;b12c	01 07 00 	. . . 
	sub h			;b12f	94 	. 
	rra			;b130	1f 	. 
	scf			;b131	37 	7 
	djnz lb134h		;b132	10 00 	. . 
lb134h:
	ld h,b			;b134	60 	` 
	ld (hl),b			;b135	70 	p 
	ld a,h			;b136	7c 	| 
	ld c,a			;b137	4f 	O 
	add a,b			;b138	80 	. 
	ret m			;b139	f8 	. 
	cp a			;b13a	bf 	. 
	ld c,a			;b13b	4f 	O 
	dec bc			;b13c	0b 	. 
	ld (bc),a			;b13d	02 	. 
	nop			;b13e	00 	. 
	nop			;b13f	00 	. 
	ld h,e			;b140	63 	c 
	ld b,c			;b141	41 	A 
	nop			;b142	00 	. 
	ld b,b			;b143	40 	@ 
	inc b			;b144	04 	. 
lb145h:
	nop			;b145	00 	. 
	add a,h			;b146	84 	. 
	add a,b			;b147	80 	. 
	ld h,b			;b148	60 	` 
	inc a			;b149	3c 	< 
	ld c,(hl)			;b14a	4e 	N 
	ld (bc),a			;b14b	02 	. 
	inc b			;b14c	04 	. 
	ld (bc),a			;b14d	02 	. 
	nop			;b14e	00 	. 
	add a,c			;b14f	81 	. 
	call m,00007h		;b150	fc 07 00 	. . . 
	add a,c			;b153	81 	. 
	rst 38h			;b154	ff 	. 
	dec b			;b155	05 	. 
	add a,b			;b156	80 	. 
	dec bc			;b157	0b 	. 
	nop			;b158	00 	. 
	dec b			;b159	05 	. 
	call m,00003h		;b15a	fc 03 00 	. . . 
	dec b			;b15d	05 	. 
	ld a,a			;b15e	7f 	 
	ld (bc),a			;b15f	02 	. 
lb160h:
	nop			;b160	00 	. 
	sub c			;b161	91 	. 
	rst 28h			;b162	ef 	. 
	ld l,a			;b163	6f 	o 
	cpl			;b164	2f 	/ 
	dec l			;b165	2d 	- 
	add hl,sp			;b166	39 	9 
	add hl,sp			;b167	39 	9 
	add hl,hl			;b168	29 	) 
	ex af,af'			;b169	08 	. 
	ld a,e			;b16a	7b 	{ 
	ld a,d			;b16b	7a 	z 
	cp 07ah		;b16c	fe 7a 	. z 
	ld e,(hl)			;b16e	5e 	^ 
	ret z			;b16f	c8 	. 
	ld c,b			;b170	48 	H 
	ret z			;b171	c8 	. 
	ex af,af'			;b172	08 	. 
	inc bc			;b173	03 	. 
	djnz lb0f7h		;b174	10 81 	. . 
	nop			;b176	00 	. 
	inc bc			;b177	03 	. 
	djnz lb110h		;b178	10 96 	. . 
	inc c			;b17a	0c 	. 
	adc a,h			;b17b	8c 	. 
	adc a,b			;b17c	88 	. 
	adc a,h			;b17d	8c 	. 
	adc a,h			;b17e	8c 	. 
	nop			;b17f	00 	. 
	add a,h			;b180	84 	. 
	add a,h			;b181	84 	. 
	rlca			;b182	07 	. 
	jr lb1a5h		;b183	18 20 	.   
	ld b,b			;b185	40 	@ 
	ld b,b			;b186	40 	@ 
	add a,e			;b187	83 	. 
	add a,b			;b188	80 	. 
	add a,b			;b189	80 	. 
	cp 001h		;b18a	fe 01 	. . 
	ret nz			;b18c	c0 	. 
	nop			;b18d	00 	. 
	nop			;b18e	00 	. 
	rst 38h			;b18f	ff 	. 
	ld (bc),a			;b190	02 	. 
	nop			;b191	00 	. 
	ld (bc),a			;b192	02 	. 
	djnz lb197h		;b193	10 02 	. . 
	add a,b			;b195	80 	. 
	ld (bc),a			;b196	02 	. 
lb197h:
	djnz lb11fh		;b197	10 86 	. . 
	add a,b			;b199	80 	. 
	add a,d			;b19a	82 	. 
	ld (bc),a			;b19b	02 	. 
	inc a			;b19c	3c 	< 
	ld b,b			;b19d	40 	@ 
	and b			;b19e	a0 	. 
	inc bc			;b19f	03 	. 
	add a,b			;b1a0	80 	. 
	add a,l			;b1a1	85 	. 
	nop			;b1a2	00 	. 
	ld b,b			;b1a3	40 	@ 
	inc a			;b1a4	3c 	< 
lb1a5h:
	ld (bc),a			;b1a5	02 	. 
	dec b			;b1a6	05 	. 
	inc bc			;b1a7	03 	. 
	ld bc,00081h		;b1a8	01 81 00 	. . . 
	ld (bc),a			;b1ab	02 	. 
	ex af,af'			;b1ac	08 	. 
	ld (bc),a			;b1ad	02 	. 
	ld bc,00802h		;b1ae	01 02 08 	. . . 
	add a,d			;b1b1	82 	. 
lb1b2h:
	ld bc,00241h		;b1b2	01 41 02 	. A . 
	djnz lb1b9h		;b1b5	10 02 	. . 
	add a,b			;b1b7	80 	. 
	ld (bc),a			;b1b8	02 	. 
lb1b9h:
	djnz lb145h		;b1b9	10 8a 	. . 
	add a,b			;b1bb	80 	. 
	add a,c			;b1bc	81 	. 
	nop			;b1bd	00 	. 
	add a,b			;b1be	80 	. 
	add a,b			;b1bf	80 	. 
	and b			;b1c0	a0 	. 
	ld b,b			;b1c1	40 	@ 
	jr nz,lb160h		;b1c2	20 9c 	  . 
	add a,b			;b1c4	80 	. 
	ld (bc),a			;b1c5	02 	. 
	djnz lb1cah		;b1c6	10 02 	. . 
	add a,b			;b1c8	80 	. 
	ld (bc),a			;b1c9	02 	. 
lb1cah:
	djnz $-120		;b1ca	10 86 	. . 
	add a,b			;b1cc	80 	. 
	add a,d			;b1cd	82 	. 
	add a,d			;b1ce	82 	. 
	inc a			;b1cf	3c 	< 
	ld b,b			;b1d0	40 	@ 
	and b			;b1d1	a0 	. 
	inc bc			;b1d2	03 	. 
	add a,b			;b1d3	80 	. 
	ld (bc),a			;b1d4	02 	. 
	nop			;b1d5	00 	. 
	ld (bc),a			;b1d6	02 	. 
	ld bc,00585h		;b1d7	01 85 05 	. . . 
	ld (bc),a			;b1da	02 	. 
	inc b			;b1db	04 	. 
	add hl,sp			;b1dc	39 	9 
	inc bc			;b1dd	03 	. 
	ld (bc),a			;b1de	02 	. 
	ex af,af'			;b1df	08 	. 
	ld (bc),a			;b1e0	02 	. 
	ld bc,00802h		;b1e1	01 02 08 	. . . 
	ld (bc),a			;b1e4	02 	. 
	ld bc,04184h		;b1e5	01 84 41 	. . A 
	inc a			;b1e8	3c 	< 
	ld (bc),a			;b1e9	02 	. 
	dec b			;b1ea	05 	. 
	inc bc			;b1eb	03 	. 
	ld bc,00081h		;b1ec	01 81 00 	. . . 
	ld (bc),a			;b1ef	02 	. 
	djnz lb1f4h		;b1f0	10 02 	. . 
	add a,b			;b1f2	80 	. 
	ld (bc),a			;b1f3	02 	. 
lb1f4h:
	djnz lb1f8h		;b1f4	10 02 	. . 
	add a,b			;b1f6	80 	. 
	adc a,b			;b1f7	88 	. 
lb1f8h:
	nop			;b1f8	00 	. 
	add a,b			;b1f9	80 	. 
	add a,b			;b1fa	80 	. 
	and b			;b1fb	a0 	. 
	ld b,b			;b1fc	40 	@ 
	jr nz,$+30		;b1fd	20 1c 	  . 
	nop			;b1ff	00 	. 
	ld (bc),a			;b200	02 	. 
	djnz lb205h		;b201	10 02 	. . 
	add a,b			;b203	80 	. 
	ld (bc),a			;b204	02 	. 
lb205h:
	djnz $+4		;b205	10 02 	. . 
	add a,b			;b207	80 	. 
	djnz lb20ah		;b208	10 00 	. . 
lb20ah:
	nop			;b20a	00 	. 
	ld (bc),a			;b20b	02 	. 
	rlca			;b20c	07 	. 
	add a,e			;b20d	83 	. 
	inc c			;b20e	0c 	. 
	ex af,af'			;b20f	08 	. 
	djnz lb215h		;b210	10 03 	. . 
	nop			;b212	00 	. 
	add a,d			;b213	82 	. 
	rst 8			;b214	cf 	. 
lb215h:
	rlca			;b215	07 	. 
	ld (bc),a			;b216	02 	. 
	inc bc			;b217	03 	. 
	inc bc			;b218	03 	. 
	ld bc,00089h		;b219	01 89 00 	. . . 
	add a,b			;b21c	80 	. 
	ret nz			;b21d	c0 	. 
	ld h,b			;b21e	60 	` 
	jr nc,lb239h		;b21f	30 18 	0 . 
	inc c			;b221	0c 	. 
	ld c,007h		;b222	0e 07 	. . 
	inc bc			;b224	03 	. 
	nop			;b225	00 	. 
	adc a,a			;b226	8f 	. 
	ld bc,00703h		;b227	01 03 07 	. . . 
	rrca			;b22a	0f 	. 
	rra			;b22b	1f 	. 
	ld h,b			;b22c	60 	` 
	nop			;b22d	00 	. 
	ld h,b			;b22e	60 	` 
	jr c,$+30		;b22f	38 1c 	8 . 
	rrca			;b231	0f 	. 
	add a,e			;b232	83 	. 
	add a,b			;b233	80 	. 
	ld a,a			;b234	7f 	 
	rlca			;b235	07 	. 
	inc bc			;b236	03 	. 
	nop			;b237	00 	. 
	add a,e			;b238	83 	. 
lb239h:
	ld bc,0c181h		;b239	01 81 c1 	. . . 
	inc b			;b23c	04 	. 
	add a,b			;b23d	80 	. 
	adc a,h			;b23e	8c 	. 
	ret nz			;b23f	c0 	. 
	ld (hl),b			;b240	70 	p 
	ld a,00fh		;b241	3e 0f 	> . 
	ld a,a			;b243	7f 	 
	rra			;b244	1f 	. 
	inc bc			;b245	03 	. 
	ld bc,00303h		;b246	01 03 03 	. . . 
	rlca			;b249	07 	. 
	rst 38h			;b24a	ff 	. 
	rlca			;b24b	07 	. 
	ld bc,0ff81h		;b24c	01 81 ff 	. . . 
	rlca			;b24f	07 	. 
	nop			;b250	00 	. 
	add hl,bc			;b251	09 	. 
	rst 38h			;b252	ff 	. 
	rlca			;b253	07 	. 
	ld bc,0ff81h		;b254	01 81 ff 	. . . 
	rlca			;b257	07 	. 
	nop			;b258	00 	. 
	add a,c			;b259	81 	. 
	rst 38h			;b25a	ff 	. 
	inc bc			;b25b	03 	. 
	nop			;b25c	00 	. 
	ld (bc),a			;b25d	02 	. 
	add a,b			;b25e	80 	. 
	ld (bc),a			;b25f	02 	. 
	add a,d			;b260	82 	. 
	add a,c			;b261	81 	. 
	add a,(hl)			;b262	86 	. 
	inc b			;b263	04 	. 
	nop			;b264	00 	. 
	inc bc			;b265	03 	. 
	ld bc,02186h		;b266	01 86 21 	. . ! 
lb269h:
	add a,0c6h		;b269	c6 c6 	. . 
	sub 0ceh		;b26b	d6 ce 	. . 
	rst 8			;b26d	cf 	. 
	inc bc			;b26e	03 	. 
	rst 38h			;b26f	ff 	. 
	or e			;b270	b3 	. 
	ld hl,lb325h		;b271	21 25 b3 	! % . 
	inc sp			;b274	33 	3 
	or a			;b275	b7 	. 
	ld a,e			;b276	7b 	{ 
	rst 38h			;b277	ff 	. 
	rst 38h			;b278	ff 	. 
	ret m			;b279	f8 	. 
	ret po			;b27a	e0 	. 
	ret nz			;b27b	c0 	. 
	add a,b			;b27c	80 	. 
	add a,b			;b27d	80 	. 
	nop			;b27e	00 	. 
	rlca			;b27f	07 	. 
	ex af,af'			;b280	08 	. 
	nop			;b281	00 	. 
	nop			;b282	00 	. 
	ld bc,000c0h		;b283	01 c0 00 	. . . 
	nop			;b286	00 	. 
	ret m			;b287	f8 	. 
	djnz lb296h		;b288	10 0c 	. . 
	ld a,(bc)			;b28a	0a 	. 
	add hl,bc			;b28b	09 	. 
	ex af,af'			;b28c	08 	. 
	ex af,af'			;b28d	08 	. 
	ld a,(bc)			;b28e	0a 	. 
	rrca			;b28f	0f 	. 
	dec c			;b290	0d 	. 
	nop			;b291	00 	. 
	nop			;b292	00 	. 
	djnz lb2a0h		;b293	10 0b 	. . 
	ld b,h			;b295	44 	D 
lb296h:
	jr z,lb2a0h		;b296	28 08 	( . 
	sub b			;b298	90 	. 
	nop			;b299	00 	. 
	nop			;b29a	00 	. 
	ex af,af'			;b29b	08 	. 
	ret nc			;b29c	d0 	. 
	ld (01014h),hl		;b29d	22 14 10 	" . . 
lb2a0h:
	add hl,bc			;b2a0	09 	. 
	jr nc,lb2f3h		;b2a1	30 50 	0 P 
	sub b			;b2a3	90 	. 
	ld (bc),a			;b2a4	02 	. 
	djnz $-50		;b2a5	10 cc 	. . 
	ld d,b			;b2a7	50 	P 
	ret p			;b2a8	f0 	. 
	or b			;b2a9	b0 	. 
	rrca			;b2aa	0f 	. 
	ld a,(bc)			;b2ab	0a 	. 
	inc c			;b2ac	0c 	. 
	ld a,(bc)			;b2ad	0a 	. 
	add hl,bc			;b2ae	09 	. 
	ex af,af'			;b2af	08 	. 
	add hl,bc			;b2b0	09 	. 
	ld a,(bc)			;b2b1	0a 	. 
	ld h,b			;b2b2	60 	` 
	jr nz,lb305h		;b2b3	20 50 	  P 
	ex af,af'			;b2b5	08 	. 
	inc d			;b2b6	14 	. 
	add a,d			;b2b7	82 	. 
	ret nz			;b2b8	c0 	. 
	ld a,(hl)			;b2b9	7e 	~ 
	dec c			;b2ba	0d 	. 
	ld a,(bc)			;b2bb	0a 	. 
	add hl,bc			;b2bc	09 	. 
	ex af,af'			;b2bd	08 	. 
	ex af,af'			;b2be	08 	. 
	ld a,(bc)			;b2bf	0a 	. 
	rrca			;b2c0	0f 	. 
	dec c			;b2c1	0d 	. 
	ret nz			;b2c2	c0 	. 
	add a,b			;b2c3	80 	. 
	djnz lb2d1h		;b2c4	10 0b 	. . 
	ld b,h			;b2c6	44 	D 
	jr z,lb2d1h		;b2c7	28 08 	( . 
	sub b			;b2c9	90 	. 
	ld b,004h		;b2ca	06 04 	. . 
	ld a,(bc)			;b2cc	0a 	. 
	djnz lb2f7h		;b2cd	10 28 	. ( 
	ld b,c			;b2cf	41 	A 
	inc bc			;b2d0	03 	. 
lb2d1h:
	ld a,h			;b2d1	7c 	| 
	ret p			;b2d2	f0 	. 
	ld d,b			;b2d3	50 	P 
	jr nc,lb326h		;b2d4	30 50 	0 P 
	sub b			;b2d6	90 	. 
	djnz lb269h		;b2d7	10 90 	. . 
	ret nc			;b2d9	d0 	. 
	inc bc			;b2da	03 	. 
	ld bc,0d008h		;b2db	01 08 d0 	. . . 
	ld (01014h),hl		;b2de	22 14 10 	" . . 
	add hl,bc			;b2e1	09 	. 
	rrca			;b2e2	0f 	. 
	ld a,(bc)			;b2e3	0a 	. 
	inc c			;b2e4	0c 	. 
	ld a,(bc)			;b2e5	0a 	. 
	add hl,bc			;b2e6	09 	. 
	ex af,af'			;b2e7	08 	. 
	add hl,bc			;b2e8	09 	. 
	ld a,(bc)			;b2e9	0a 	. 
	ld h,b			;b2ea	60 	` 
	jr nz,$+82		;b2eb	20 50 	  P 
	ex af,af'			;b2ed	08 	. 
	inc d			;b2ee	14 	. 
	add a,d			;b2ef	82 	. 
	ld b,b			;b2f0	40 	@ 
	ld a,00ch		;b2f1	3e 0c 	> . 
lb2f3h:
	rlca			;b2f3	07 	. 
	ex af,af'			;b2f4	08 	. 
	dec b			;b2f5	05 	. 
	ld (bc),a			;b2f6	02 	. 
lb2f7h:
	ld (bc),a			;b2f7	02 	. 
	ld (de),a			;b2f8	12 	. 
	add a,c			;b2f9	81 	. 
	inc c			;b2fa	0c 	. 
	dec b			;b2fb	05 	. 
	ld b,b			;b2fc	40 	@ 
	ld (bc),a			;b2fd	02 	. 
	ld c,b			;b2fe	48 	H 
	add a,c			;b2ff	81 	. 
	djnz lb302h		;b300	10 00 	. . 
lb302h:
	ld b,b			;b302	40 	@ 
	nop			;b303	00 	. 
	add a,c			;b304	81 	. 
lb305h:
	ld bc,0fd05h		;b305	01 05 fd 	. . . 
	add a,e			;b308	83 	. 
	ld bc,000ffh		;b309	01 ff 00 	. . . 
	dec b			;b30c	05 	. 
	ld a,a			;b30d	7f 	 
	add a,d			;b30e	82 	. 
	nop			;b30f	00 	. 
	rst 38h			;b310	ff 	. 
	ex af,af'			;b311	08 	. 
	nop			;b312	00 	. 
	ld b,0fdh		;b313	06 fd 	. . 
	add a,c			;b315	81 	. 
	ld bc,0ff07h		;b316	01 07 ff 	. . . 
	add a,(hl)			;b319	86 	. 
	nop			;b31a	00 	. 
	rst 38h			;b31b	ff 	. 
	rst 38h			;b31c	ff 	. 
	ld a,a			;b31d	7f 	 
	ccf			;b31e	3f 	? 
	dec a			;b31f	3d 	= 
	inc bc			;b320	03 	. 
	add hl,sp			;b321	39 	9 
	add a,d			;b322	82 	. 
	jr $+1		;b323	18 ff 	. . 
lb325h:
	inc bc			;b325	03 	. 
lb326h:
	cp 081h		;b326	fe 81 	. . 
	sbc a,003h		;b328	de 03 	. . 
	call z,01881h		;b32a	cc 81 18 	. . . 
	rlca			;b32d	07 	. 
	djnz lb335h		;b32e	10 05 	. . 
	adc a,h			;b330	8c 	. 
	inc bc			;b331	03 	. 
	add a,h			;b332	84 	. 
	ret m			;b333	f8 	. 
	rlca			;b334	07 	. 
lb335h:
	add hl,de			;b335	19 	. 
	ld (hl),070h		;b336	36 70 	6 p 
	ld l,a			;b338	6f 	o 
	rst 18h			;b339	df 	. 
	ret c			;b33a	d8 	. 
	call nc,024feh		;b33b	d4 fe 24 	. . $ 
	jr lb342h		;b33e	18 02 	. . 
	ccf			;b340	3f 	? 
	rst 38h			;b341	ff 	. 
lb342h:
	rlca			;b342	07 	. 
	dec c			;b343	0d 	. 
	or d			;b344	b2 	. 
	or c			;b345	b1 	. 
	ret nc			;b346	d0 	. 
	ld d,c			;b347	51 	Q 
	or e			;b348	b3 	. 
	or l			;b349	b5 	. 
	ret nc			;b34a	d0 	. 
	ret nc			;b34b	d0 	. 
	ccf			;b34c	3f 	? 
	ld a,l			;b34d	7d 	} 
	and e			;b34e	a3 	. 
	call nc,sub_90b8h		;b34f	d4 b8 90 	. . . 
	sub b			;b352	90 	. 
	ld h,b			;b353	60 	` 
	call m,0c7beh		;b354	fc be c7 	. . . 
	dec hl			;b357	2b 	+ 
	dec e			;b358	1d 	. 
	add hl,bc			;b359	09 	. 
	add hl,bc			;b35a	09 	. 
	ld b,04dh		;b35b	06 4d 	. M 
	adc a,l			;b35d	8d 	. 
	dec bc			;b35e	0b 	. 
	adc a,e			;b35f	8b 	. 
	call 00badh		;b360	cd ad 0b 	. . . 
	dec bc			;b363	0b 	. 
	or b			;b364	b0 	. 
	or l			;b365	b5 	. 
	out (0d1h),a		;b366	d3 d1 	. . 
	or b			;b368	b0 	. 
	or c			;b369	b1 	. 
	jp nc,010d4h		;b36a	d2 d4 10 	. . . 
	sub b			;b36d	90 	. 
	xor b			;b36e	a8 	. 
	ld d,h			;b36f	54 	T 
	ex (sp),hl			;b370	e3 	. 
	ld b,c			;b371	41 	A 
	dec a			;b372	3d 	= 
	ld bc,lb1b2h		;b373	01 b2 b1 	. . . 
	ret nc			;b376	d0 	. 
	pop de			;b377	d1 	. 
	or e			;b378	b3 	. 
	or l			;b379	b5 	. 
	ret nc			;b37a	d0 	. 
	ret nc			;b37b	d0 	. 
	ccf			;b37c	3f 	? 
	ld a,l			;b37d	7d 	} 
	and e			;b37e	a3 	. 
	call nc,sub_90b8h		;b37f	d4 b8 90 	. . . 
	sub b			;b382	90 	. 
	ld h,b			;b383	60 	` 
	ex af,af'			;b384	08 	. 
	add hl,bc			;b385	09 	. 
	dec d			;b386	15 	. 
	dec hl			;b387	2b 	+ 
	push bc			;b388	c5 	. 
	add a,d			;b389	82 	. 
	cp h			;b38a	bc 	. 
	add a,b			;b38b	80 	. 
	dec c			;b38c	0d 	. 
	xor l			;b38d	ad 	. 
	res 1,e		;b38e	cb 8b 	. . 
	dec c			;b390	0d 	. 
	adc a,l			;b391	8d 	. 
	ld c,e			;b392	4b 	K 
	dec hl			;b393	2b 	+ 
	call m,0c7beh		;b394	fc be c7 	. . . 
	dec hl			;b397	2b 	+ 
	dec e			;b398	1d 	. 
	add hl,bc			;b399	09 	. 
	add hl,bc			;b39a	09 	. 
	ld b,0b0h		;b39b	06 b0 	. . 
	or l			;b39d	b5 	. 
	out (0d1h),a		;b39e	d3 d1 	. . 
	or b			;b3a0	b0 	. 
	or c			;b3a1	b1 	. 
	jp nc,010d4h		;b3a2	d2 d4 10 	. . . 
	sub b			;b3a5	90 	. 
	xor b			;b3a6	a8 	. 
	call nc,061e3h		;b3a7	d4 e3 61 	. . a 
	dec a			;b3aa	3d 	= 
	ld bc,0b002h		;b3ab	01 02 b0 	. . . 
	ld (bc),a			;b3ae	02 	. 
	ret nc			;b3af	d0 	. 
	ld (bc),a			;b3b0	02 	. 
	or b			;b3b1	b0 	. 
	ld (bc),a			;b3b2	02 	. 
	ret nc			;b3b3	d0 	. 
	dec b			;b3b4	05 	. 
	ld bc,00983h		;b3b5	01 83 09 	. . . 
	dec c			;b3b8	0d 	. 
	inc bc			;b3b9	03 	. 
	dec b			;b3ba	05 	. 
	add a,b			;b3bb	80 	. 
	add a,e			;b3bc	83 	. 
	sub b			;b3bd	90 	. 
	or b			;b3be	b0 	. 
	ret po			;b3bf	e0 	. 
	nop			;b3c0	00 	. 
	ld (bc),a			;b3c1	02 	. 
	rlca			;b3c2	07 	. 
	ld (bc),a			;b3c3	02 	. 
	rrca			;b3c4	0f 	. 
	add a,d			;b3c5	82 	. 
	rra			;b3c6	1f 	. 
	ccf			;b3c7	3f 	? 
	inc c			;b3c8	0c 	. 
	rst 38h			;b3c9	ff 	. 
	add a,(hl)			;b3ca	86 	. 
	ld a,a			;b3cb	7f 	 
	ccf			;b3cc	3f 	? 
	rra			;b3cd	1f 	. 
	rrca			;b3ce	0f 	. 
	rrca			;b3cf	0f 	. 
	rlca			;b3d0	07 	. 
	ex af,af'			;b3d1	08 	. 
	rst 38h			;b3d2	ff 	. 
	inc bc			;b3d3	03 	. 
	ld a,a			;b3d4	7f 	 
	add a,c			;b3d5	81 	. 
	ccf			;b3d6	3f 	? 
	ld (bc),a			;b3d7	02 	. 
	ld a,a			;b3d8	7f 	 
	rrca			;b3d9	0f 	. 
	rst 38h			;b3da	ff 	. 
	add a,e			;b3db	83 	. 
	ld a,a			;b3dc	7f 	 
	ccf			;b3dd	3f 	? 
	rrca			;b3de	0f 	. 
	ex af,af'			;b3df	08 	. 
	rst 38h			;b3e0	ff 	. 
	add a,c			;b3e1	81 	. 
	nop			;b3e2	00 	. 
	dec b			;b3e3	05 	. 
	call m,00003h		;b3e4	fc 03 00 	. . . 
lb3e7h:
	dec b			;b3e7	05 	. 
	ld a,a			;b3e8	7f 	 
	ld (bc),a			;b3e9	02 	. 
	nop			;b3ea	00 	. 
	ex af,af'			;b3eb	08 	. 
	rst 38h			;b3ec	ff 	. 
	ld b,002h		;b3ed	06 02 	. . 
	add a,c			;b3ef	81 	. 
	cp 007h		;b3f0	fe 07 	. . 
	nop			;b3f2	00 	. 
	add a,(hl)			;b3f3	86 	. 
	rst 38h			;b3f4	ff 	. 
	nop			;b3f5	00 	. 
	nop			;b3f6	00 	. 
	add a,b			;b3f7	80 	. 
	ret nz			;b3f8	c0 	. 
	jp nz,0c603h		;b3f9	c2 03 c6 	. . . 
	add a,d			;b3fc	82 	. 
	rst 20h			;b3fd	e7 	. 
	nop			;b3fe	00 	. 
	inc bc			;b3ff	03 	. 
	ld bc,02181h		;b400	01 81 21 	. . ! 
	inc bc			;b403	03 	. 
	inc sp			;b404	33 	3 
	add a,c			;b405	81 	. 
	rst 20h			;b406	e7 	. 
	rlca			;b407	07 	. 
	rst 28h			;b408	ef 	. 
	dec b			;b409	05 	. 
	ld (hl),e			;b40a	73 	s 
	inc bc			;b40b	03 	. 
	ld a,e			;b40c	7b 	{ 
	ret m			;b40d	f8 	. 
	ret m			;b40e	f8 	. 
	and 0c9h		;b40f	e6 c9 	. . 
	adc a,a			;b411	8f 	. 
	sub b			;b412	90 	. 
	jr nz,lb43ch		;b413	20 27 	  ' 
	dec hl			;b415	2b 	+ 
	ld bc,026dah		;b416	01 da 26 	. . & 
	dec a			;b419	3d 	= 
	ret nz			;b41a	c0 	. 
	nop			;b41b	00 	. 
	ret m			;b41c	f8 	. 
	jp p,04e4dh		;b41d	f2 4d 4e 	. M N 
	cpl			;b420	2f 	/ 
	xor (hl)			;b421	ae 	. 
	ld c,h			;b422	4c 	L 
	ld c,d			;b423	4a 	J 
	dec l			;b424	2d 	- 
	jr z,lb3e7h		;b425	28 c0 	( . 
	add a,d			;b427	82 	. 
	ld a,h			;b428	7c 	| 
	ld e,e			;b429	5b 	[ 
	ld (hl),a			;b42a	77 	w 
	ld l,a			;b42b	6f 	o 
	ld l,a			;b42c	6f 	o 
	sbc a,a			;b42d	9f 	. 
	inc bc			;b42e	03 	. 
	ld b,c			;b42f	41 	A 
	inc a			;b430	3c 	< 
	jp c,0f6eeh		;b431	da ee f6 	. . . 
	or 0f9h		;b434	f6 f9 	. . 
	or d			;b436	b2 	. 
	ld (hl),d			;b437	72 	r 
	call p,03274h		;b438	f4 74 32 	. t 2 
	ld d,d			;b43b	52 	R 
lb43ch:
	or h			;b43c	b4 	. 
	inc d			;b43d	14 	. 
	ld c,l			;b43e	4d 	M 
	ld c,d			;b43f	4a 	J 
	inc l			;b440	2c 	, 
	ld l,04fh		;b441	2e 4f 	. O 
	ld c,(hl)			;b443	4e 	N 
	dec l			;b444	2d 	- 
	ld hl,(06fefh)		;b445	2a ef 6f 	* . o 
	ld (hl),a			;b448	77 	w 
	in a,(03ch)		;b449	db 3c 	. < 
	cp (hl)			;b44b	be 	. 
	ld b,d			;b44c	42 	B 
	ld a,04ch		;b44d	3e 4c 	> L 
	ld c,(hl)			;b44f	4e 	N 
	cpl			;b450	2f 	/ 
	ld l,04ch		;b451	2e 4c 	. L 
	ld c,d			;b453	4a 	J 
	dec l			;b454	2d 	- 
	jr z,lb457h		;b455	28 00 	( . 
lb457h:
	ld (bc),a			;b457	02 	. 
	ld a,h			;b458	7c 	| 
	ld e,e			;b459	5b 	[ 
	ld (hl),a			;b45a	77 	w 
	ld l,a			;b45b	6f 	o 
	ld l,a			;b45c	6f 	o 
	sbc a,a			;b45d	9f 	. 
	rst 30h			;b45e	f7 	. 
	or 0eeh		;b45f	f6 ee 	. . 
	jp c,07d3eh		;b461	da 3e 7d 	. > } 
	ld b,d			;b464	42 	B 
	ld a,h			;b465	7c 	| 
	or d			;b466	b2 	. 
	ld d,d			;b467	52 	R 
	inc (hl)			;b468	34 	4 
	ld (hl),h			;b469	74 	t 
	jp p,0b472h		;b46a	f2 72 b4 	. r . 
	ld d,h			;b46d	54 	T 
	nop			;b46e	00 	. 
	ld b,b			;b46f	40 	@ 
	inc a			;b470	3c 	< 
	jp c,0f6eeh		;b471	da ee f6 	. . . 
	or 0f9h		;b474	f6 f9 	. . 
	ld c,l			;b476	4d 	M 
	ld c,d			;b477	4a 	J 
	inc l			;b478	2c 	, 
	ld l,04fh		;b479	2e 4f 	. O 
	ld c,(hl)			;b47b	4e 	N 
	dec l			;b47c	2d 	- 
	dec hl			;b47d	2b 	+ 
	rst 28h			;b47e	ef 	. 
	ld l,a			;b47f	6f 	o 
	ld (hl),a			;b480	77 	w 
	ld e,e			;b481	5b 	[ 
	inc a			;b482	3c 	< 
	sbc a,(hl)			;b483	9e 	. 
	jp nz,002feh		;b484	c2 fe 02 	. . . 
	ld c,a			;b487	4f 	O 
	ld (bc),a			;b488	02 	. 
	cpl			;b489	2f 	/ 
	ld (bc),a			;b48a	02 	. 
	ld c,a			;b48b	4f 	O 
	ld (bc),a			;b48c	02 	. 
	cpl			;b48d	2f 	/ 
	dec b			;b48e	05 	. 
	cp 083h		;b48f	fe 83 	. . 
	or 0f2h		;b491	f6 f2 	. . 
	call m,07f05h		;b493	fc 05 7f 	. .  
	add a,e			;b496	83 	. 
	ld l,a			;b497	6f 	o 
	ld c,a			;b498	4f 	O 
	rra			;b499	1f 	. 
	nop			;b49a	00 	. 
	ld (bc),a			;b49b	02 	. 
	cp a			;b49c	bf 	. 
	add a,c			;b49d	81 	. 
	rst 38h			;b49e	ff 	. 
	ld (bc),a			;b49f	02 	. 
	ld e,a			;b4a0	5f 	_ 
	ld (bc),a			;b4a1	02 	. 
lb4a2h:
	cpl			;b4a2	2f 	/ 
	add a,l			;b4a3	85 	. 
	ccf			;b4a4	3f 	? 
	ld e,a			;b4a5	5f 	_ 
	cp a			;b4a6	bf 	. 
	cp a			;b4a7	bf 	. 
	ld a,a			;b4a8	7f 	 
	inc bc			;b4a9	03 	. 
	cp a			;b4aa	bf 	. 
	add a,c			;b4ab	81 	. 
	ld a,a			;b4ac	7f 	 
	djnz $+1		;b4ad	10 ff 	. . 
	ex af,af'			;b4af	08 	. 
	cp a			;b4b0	bf 	. 
	ex af,af'			;b4b1	08 	. 
	rst 38h			;b4b2	ff 	. 
	ld (de),a			;b4b3	12 	. 
	nop			;b4b4	00 	. 
	sbc a,(hl)			;b4b5	9e 	. 
	ld bc,01f07h		;b4b6	01 07 1f 	. . . 
	ld a,039h		;b4b9	3e 39 	> 9 
	ld (hl),a			;b4bb	77 	w 
	nop			;b4bc	00 	. 
	nop			;b4bd	00 	. 
	ret p			;b4be	f0 	. 
	cp 0ffh		;b4bf	fe ff 	. . 
	rlca			;b4c1	07 	. 
	ld sp,hl			;b4c2	f9 	. 
	cp 077h		;b4c3	fe 77 	. w 
	ld l,l			;b4c5	6d 	m 
	ld l,e			;b4c6	6b 	k 
	defb 0edh;next byte illegal after ed		;b4c7	ed 	. 
	sbc a,0dbh		;b4c8	de db 	. . 
	in a,(0d6h)		;b4ca	db d6 	. . 
	ei			;b4cc	fb 	. 
	add a,l			;b4cd	85 	. 
	ld a,d			;b4ce	7a 	z 
	ld a,d			;b4cf	7a 	z 
	and (hl)			;b4d0	a6 	. 
	sbc a,l			;b4d1	9d 	. 
	ld h,e			;b4d2	63 	c 
	rst 38h			;b4d3	ff 	. 
	add hl,bc			;b4d4	09 	. 
	ld bc,00007h		;b4d5	01 07 00 	. . . 
	add a,d			;b4d8	82 	. 
	exx			;b4d9	d9 	. 
	rst 10h			;b4da	d7 	. 
	inc bc			;b4db	03 	. 
	or (hl)			;b4dc	b6 	. 
	sbc a,h			;b4dd	9c 	. 
	cp d			;b4de	ba 	. 
	cp e			;b4df	bb 	. 
	xor l			;b4e0	ad 	. 
	exx			;b4e1	d9 	. 
	dec hl			;b4e2	2b 	+ 
	ex de,hl			;b4e3	eb 	. 
	push de			;b4e4	d5 	. 
	or (hl)			;b4e5	b6 	. 
	xor (hl)			;b4e6	ae 	. 
	ld l,l			;b4e7	6d 	m 
	ld (hl),e			;b4e8	73 	s 
	xor l			;b4e9	ad 	. 
	xor h			;b4ea	ac 	. 
	jp c,0dec5h		;b4eb	da c5 de 	. . . 
	rst 18h			;b4ee	df 	. 
	ld e,b			;b4ef	58 	X 
	ld d,a			;b4f0	57 	W 
	ld l,a			;b4f1	6f 	o 
	rst 28h			;b4f2	ef 	. 
	jp nc,la040h		;b4f3	d2 40 a0 	. @ . 
	ld h,c			;b4f6	61 	a 
	sbc a,l			;b4f7	9d 	. 
	cp (hl)			;b4f8	be 	. 
	ld l,h			;b4f9	6c 	l 
	ld (bc),a			;b4fa	02 	. 
	ld l,l			;b4fb	6d 	m 
	ld (bc),a			;b4fc	02 	. 
	ld l,084h		;b4fd	2e 84 	. . 
	dec l			;b4ff	2d 	- 
	dec (hl)			;b500	35 	5 
	inc sp			;b501	33 	3 
	cp a			;b502	bf 	. 
	inc bc			;b503	03 	. 
	ld a,a			;b504	7f 	 
	adc a,b			;b505	88 	. 
	ld (hl),h			;b506	74 	t 
	jr nc,lb4a2h		;b507	30 99 	0 . 
	sbc a,a			;b509	9f 	. 
	rla			;b50a	17 	. 
	ld d,014h		;b50b	16 14 	. . 
	djnz $+5		;b50d	10 03 	. . 
	scf			;b50f	37 	7 
	add a,d			;b510	82 	. 
	jr c,lb522h		;b511	38 0f 	8 . 
	inc b			;b513	04 	. 
	nop			;b514	00 	. 
	adc a,h			;b515	8c 	. 
	add a,b			;b516	80 	. 
	ret nz			;b517	c0 	. 
	ret nz			;b518	c0 	. 
	defb 0fdh,0feh,0deh	;illegal sequence		;b519	fd fe de 	. . . 
	cp 02eh		;b51c	fe 2e 	. . 
	inc c			;b51e	0c 	. 
	sbc a,c			;b51f	99 	. 
	ld sp,hl			;b520	f9 	. 
	ld a,(de)			;b521	1a 	. 
lb522h:
	inc bc			;b522	03 	. 
	add hl,de			;b523	19 	. 
	ld (bc),a			;b524	02 	. 
	dec de			;b525	1b 	. 
	add a,a			;b526	87 	. 
	dec sp			;b527	3b 	; 
	scf			;b528	37 	7 
	ret nz			;b529	c0 	. 
	ret nz			;b52a	c0 	. 
	ret po			;b52b	e0 	. 
	pop hl			;b52c	e1 	. 
	di			;b52d	f3 	. 
	inc bc			;b52e	03 	. 
	rst 38h			;b52f	ff 	. 
	add a,d			;b530	82 	. 
	inc sp			;b531	33 	3 
	ld sp,03802h		;b532	31 02 38 	1 . 8 
	inc b			;b535	04 	. 
	ld a,e			;b536	7b 	{ 
	ld (bc),a			;b537	02 	. 
	rst 38h			;b538	ff 	. 
	add a,c			;b539	81 	. 
	ld a,a			;b53a	7f 	 
	ld (bc),a			;b53b	02 	. 
	ld a,h			;b53c	7c 	| 
	inc bc			;b53d	03 	. 
	rst 38h			;b53e	ff 	. 
lb53fh:
	ld (bc),a			;b53f	02 	. 
	ld a,e			;b540	7b 	{ 
	ld b,0fbh		;b541	06 fb 	. . 
	rrca			;b543	0f 	. 
	rst 38h			;b544	ff 	. 
	add a,c			;b545	81 	. 
	nop			;b546	00 	. 
	ex af,af'			;b547	08 	. 
	rst 38h			;b548	ff 	. 
	nop			;b549	00 	. 
	ld (bc),a			;b54a	02 	. 
	ccf			;b54b	3f 	? 
	add a,c			;b54c	81 	. 
	nop			;b54d	00 	. 
	ld (bc),a			;b54e	02 	. 
	rra			;b54f	1f 	. 
	ld (bc),a			;b550	02 	. 
	rrca			;b551	0f 	. 
	add a,l			;b552	85 	. 
	nop			;b553	00 	. 
	rra			;b554	1f 	. 
	ccf			;b555	3f 	? 
	ccf			;b556	3f 	? 
	nop			;b557	00 	. 
	inc bc			;b558	03 	. 
	ccf			;b559	3f 	? 
	add a,h			;b55a	84 	. 
	nop			;b55b	00 	. 
	rst 38h			;b55c	ff 	. 
	rst 38h			;b55d	ff 	. 
	nop			;b55e	00 	. 
	inc b			;b55f	04 	. 
	rst 38h			;b560	ff 	. 
	add a,c			;b561	81 	. 
	nop			;b562	00 	. 
	inc bc			;b563	03 	. 
	rst 38h			;b564	ff 	. 
	add a,c			;b565	81 	. 
	nop			;b566	00 	. 
	inc bc			;b567	03 	. 
	rst 38h			;b568	ff 	. 
	add a,c			;b569	81 	. 
	nop			;b56a	00 	. 
	ex af,af'			;b56b	08 	. 
	dec l			;b56c	2d 	- 
	djnz $+1		;b56d	10 ff 	. . 
	inc c			;b56f	0c 	. 
	nop			;b570	00 	. 
	add a,h			;b571	84 	. 
	ld bc,00f07h		;b572	01 07 0f 	. . . 
	rra			;b575	1f 	. 
	inc b			;b576	04 	. 
	nop			;b577	00 	. 
	sub h			;b578	94 	. 
	ret m			;b579	f8 	. 
	cp 0ffh		;b57a	fe ff 	. . 
	rst 38h			;b57c	ff 	. 
	dec e			;b57d	1d 	. 
	dec sp			;b57e	3b 	; 
	inc a			;b57f	3c 	< 
	ld a,07bh		;b580	3e 7b 	> { 
	ld (hl),a			;b582	77 	w 
	halt			;b583	76 	v 
	ld a,c			;b584	79 	y 
	add a,a			;b585	87 	. 
	ld a,e			;b586	7b 	{ 
	push hl			;b587	e5 	. 
	push hl			;b588	e5 	. 
	ld e,l			;b589	5d 	] 
	ld h,e			;b58a	63 	c 
	rst 38h			;b58b	ff 	. 
	ld sp,hl			;b58c	f9 	. 
	djnz lb58fh		;b58d	10 00 	. . 
lb58fh:
	add a,d			;b58f	82 	. 
	ld (hl),a			;b590	77 	w 
	ld l,(hl)			;b591	6e 	n 
	inc bc			;b592	03 	. 
	defb 0edh;next byte illegal after ed		;b593	ed 	. 
	and h			;b594	a4 	. 
	push af			;b595	f5 	. 
	or 0dah		;b596	f6 da 	. . 
	scf			;b598	37 	7 
	rst 10h			;b599	d7 	. 
	rst 10h			;b59a	d7 	. 
	xor e			;b59b	ab 	. 
	ld l,l			;b59c	6d 	m 
	ld e,l			;b59d	5d 	] 
	out (0cfh),a		;b59e	d3 cf 	. . 
	jp c,065dbh		;b5a0	da db 65 	. . e 
	ld a,(hl)			;b5a3	7e 	~ 
	ld a,a			;b5a4	7f 	 
	ld a,b			;b5a5	78 	x 
	ld (hl),a			;b5a6	77 	w 
	ld a,h			;b5a7	7c 	| 
	rst 18h			;b5a8	df 	. 
	rst 18h			;b5a9	df 	. 
	cp a			;b5aa	bf 	. 
	or d			;b5ab	b2 	. 
	ld (hl),c			;b5ac	71 	q 
	di			;b5ad	f3 	. 
	ld h,e			;b5ae	63 	c 
	pop bc			;b5af	c1 	. 
	dec sp			;b5b0	3b 	; 
	dec sp			;b5b1	3b 	; 
	ld a,(03d3dh)		;b5b2	3a 3d 3d 	: = = 
	ld a,(01f1bh)		;b5b5	3a 1b 1f 	: . . 
	ret nz			;b5b8	c0 	. 
	inc bc			;b5b9	03 	. 
	add a,b			;b5ba	80 	. 
	adc a,b			;b5bb	88 	. 
	adc a,e			;b5bc	8b 	. 
	rst 8			;b5bd	cf 	. 
	ld h,(hl)			;b5be	66 	f 
	ld h,b			;b5bf	60 	` 
	ld e,01dh		;b5c0	1e 1d 	. . 
	rra			;b5c2	1f 	. 
	inc e			;b5c3	1c 	. 
	inc bc			;b5c4	03 	. 
	ex af,af'			;b5c5	08 	. 
	add a,h			;b5c6	84 	. 
	rlca			;b5c7	07 	. 
	ret p			;b5c8	f0 	. 
	cp a			;b5c9	bf 	. 
	rra			;b5ca	1f 	. 
	dec b			;b5cb	05 	. 
	nop			;b5cc	00 	. 
	adc a,c			;b5cd	89 	. 
	inc bc			;b5ce	03 	. 
	ld bc,00121h		;b5cf	01 21 01 	. ! . 
	pop de			;b5d2	d1 	. 
	di			;b5d3	f3 	. 
	ld h,(hl)			;b5d4	66 	f 
	ld b,007h		;b5d5	06 07 	. . 
	inc bc			;b5d7	03 	. 
	ld b,003h		;b5d8	06 03 	. . 
	inc b			;b5da	04 	. 
	add a,c			;b5db	81 	. 
	ex af,af'			;b5dc	08 	. 
	inc bc			;b5dd	03 	. 
	nop			;b5de	00 	. 
	add a,a			;b5df	87 	. 
	ld de,0030fh		;b5e0	11 0f 03 	. . . 
	nop			;b5e3	00 	. 
	nop			;b5e4	00 	. 
	inc c			;b5e5	0c 	. 
	ld c,002h		;b5e6	0e 02 	. . 
	rlca			;b5e8	07 	. 
	inc b			;b5e9	04 	. 
	inc b			;b5ea	04 	. 
	ld (bc),a			;b5eb	02 	. 
	nop			;b5ec	00 	. 
	add a,c			;b5ed	81 	. 
	add a,b			;b5ee	80 	. 
	ld (bc),a			;b5ef	02 	. 
	add a,e			;b5f0	83 	. 
	inc bc			;b5f1	03 	. 
	nop			;b5f2	00 	. 
	ex af,af'			;b5f3	08 	. 
	inc b			;b5f4	04 	. 
	ex af,af'			;b5f5	08 	. 
	nop			;b5f6	00 	. 
	djnz $+1		;b5f7	10 ff 	. . 
	nop			;b5f9	00 	. 
	inc bc			;b5fa	03 	. 
	rst 38h			;b5fb	ff 	. 
	ld (bc),a			;b5fc	02 	. 
	ld a,a			;b5fd	7f 	 
	inc bc			;b5fe	03 	. 
	ccf			;b5ff	3f 	? 
	add a,h			;b600	84 	. 
	ld a,a			;b601	7f 	 
	rst 38h			;b602	ff 	. 
	rst 38h			;b603	ff 	. 
	ld a,a			;b604	7f 	 
	inc bc			;b605	03 	. 
	rst 38h			;b606	ff 	. 
	add a,c			;b607	81 	. 
	ld a,a			;b608	7f 	 
	jr z,$+1		;b609	28 ff 	( . 
	inc bc			;b60b	03 	. 
	nop			;b60c	00 	. 
	dec b			;b60d	05 	. 
	ld bc,000a0h		;b60e	01 a0 00 	. . . 
	ld bc,01f07h		;b611	01 07 1f 	. . . 
	ld a,078h		;b614	3e 78 	> x 
	ld (hl),b			;b616	70 	p 
	ret po			;b617	e0 	. 
	nop			;b618	00 	. 
	ret p			;b619	f0 	. 
	cp 0ffh		;b61a	fe ff 	. . 
	rlca			;b61c	07 	. 
	ld bc,00000h		;b61d	01 00 00 	. . . 
	jp po,0c3c4h		;b620	e2 c4 c3 	. . . 
	pop bc			;b623	c1 	. 
	add a,h			;b624	84 	. 
	adc a,b			;b625	88 	. 
	adc a,c			;b626	89 	. 
	add a,(hl)			;b627	86 	. 
	ld a,b			;b628	78 	x 
	add a,h			;b629	84 	. 
	ld a,(de)			;b62a	1a 	. 
	ld a,(de)			;b62b	1a 	. 
	and d			;b62c	a2 	. 
	sbc a,h			;b62d	9c 	. 
	nop			;b62e	00 	. 
	ld b,009h		;b62f	06 09 	. . 
	inc bc			;b631	03 	. 
	dec b			;b632	05 	. 
	ld bc,00002h		;b633	01 02 00 	. . . 
	add a,d			;b636	82 	. 
	adc a,b			;b637	88 	. 
	sub c			;b638	91 	. 
	inc bc			;b639	03 	. 
	ld (de),a			;b63a	12 	. 
	xor a			;b63b	af 	. 
	ld a,(bc)			;b63c	0a 	. 
	add hl,bc			;b63d	09 	. 
	dec h			;b63e	25 	% 
	ret z			;b63f	c8 	. 
	jr z,lb66ah		;b640	28 28 	( ( 
	ld d,h			;b642	54 	T 
	sub d			;b643	92 	. 
	and d			;b644	a2 	. 
	inc l			;b645	2c 	, 
	jr nc,lb66dh		;b646	30 25 	0 % 
	inc h			;b648	24 	$ 
	sbc a,d			;b649	9a 	. 
	add a,c			;b64a	81 	. 
	add a,b			;b64b	80 	. 
	add a,a			;b64c	87 	. 
	adc a,b			;b64d	88 	. 
	add a,e			;b64e	83 	. 
	jr nz,lb671h		;b64f	20 20 	    
	ld c,l			;b651	4d 	M 
	ld e,a			;b652	5f 	_ 
	sbc a,(hl)			;b653	9e 	. 
	inc e			;b654	1c 	. 
	and b			;b655	a0 	. 
	ld b,b			;b656	40 	@ 
	call nz,0c5c4h		;b657	c4 c4 c5 	. . . 
	ld b,d			;b65a	42 	B 
	ld b,d			;b65b	42 	B 
	ld b,l			;b65c	45 	E 
	ld h,h			;b65d	64 	d 
	ld h,b			;b65e	60 	` 
	ld b,b			;b65f	40 	@ 
	ret nz			;b660	c0 	. 
	rst 0			;b661	c7 	. 
	rst 18h			;b662	df 	. 
	bit 1,a		;b663	cb 4f 	. O 
	and (hl)			;b665	a6 	. 
	ret nz			;b666	c0 	. 
	ld hl,02322h		;b667	21 22 23 	! " # 
lb66ah:
	inc h			;b66a	24 	$ 
	inc b			;b66b	04 	. 
	ccf			;b66c	3f 	? 
lb66dh:
	add a,d			;b66d	82 	. 
	ld b,b			;b66e	40 	@ 
	add a,b			;b66f	80 	. 
	inc bc			;b670	03 	. 
lb671h:
	nop			;b671	00 	. 
	adc a,h			;b672	8c 	. 
	add a,b			;b673	80 	. 
	ret nz			;b674	c0 	. 
	ret nz			;b675	c0 	. 
	ld e,0cfh		;b676	1e cf 	. . 
	rst 28h			;b678	ef 	. 
	rst 38h			;b679	ff 	. 
	out (0f2h),a		;b67a	d3 f2 	. . 
	ld h,l			;b67c	65 	e 
	inc bc			;b67d	03 	. 
	dec e			;b67e	1d 	. 
	dec b			;b67f	05 	. 
	rra			;b680	1f 	. 
	ld (bc),a			;b681	02 	. 
	ccf			;b682	3f 	? 
	ld (bc),a			;b683	02 	. 
	ret nz			;b684	c0 	. 
	inc b			;b685	04 	. 
	ret po			;b686	e0 	. 
	ld (bc),a			;b687	02 	. 
	ret nz			;b688	c0 	. 
	add a,h			;b689	84 	. 
	dec sp			;b68a	3b 	; 
	add hl,sp			;b68b	39 	9 
	inc a			;b68c	3c 	< 
	ccf			;b68d	3f 	? 
	inc b			;b68e	04 	. 
	ld a,a			;b68f	7f 	 
	add a,h			;b690	84 	. 
	add a,c			;b691	81 	. 
	add a,e			;b692	83 	. 
	inc bc			;b693	03 	. 
	nop			;b694	00 	. 
	inc bc			;b695	03 	. 
	add a,e			;b696	83 	. 
	add a,c			;b697	81 	. 
	ld b,l			;b698	45 	E 
	ld (bc),a			;b699	02 	. 
	ld a,a			;b69a	7f 	 
	ld b,0ffh		;b69b	06 ff 	. . 
	add a,d			;b69d	82 	. 
	add hl,sp			;b69e	39 	9 
	add a,e			;b69f	83 	. 
	ld b,0ffh		;b6a0	06 ff 	. . 
	djnz lb6a4h		;b6a2	10 00 	. . 
lb6a4h:
	nop			;b6a4	00 	. 
	ld (bc),a			;b6a5	02 	. 
	nop			;b6a6	00 	. 
	add a,c			;b6a7	81 	. 
	rst 38h			;b6a8	ff 	. 
	inc b			;b6a9	04 	. 
	nop			;b6aa	00 	. 
	add a,c			;b6ab	81 	. 
	ccf			;b6ac	3f 	? 
	inc bc			;b6ad	03 	. 
	nop			;b6ae	00 	. 
	add a,c			;b6af	81 	. 
	ld a,a			;b6b0	7f 	 
	inc bc			;b6b1	03 	. 
	nop			;b6b2	00 	. 
	add a,h			;b6b3	84 	. 
	ld a,a			;b6b4	7f 	 
	nop			;b6b5	00 	. 
	nop			;b6b6	00 	. 
	rst 38h			;b6b7	ff 	. 
	inc b			;b6b8	04 	. 
	nop			;b6b9	00 	. 
	add a,c			;b6ba	81 	. 
	rst 38h			;b6bb	ff 	. 
	inc bc			;b6bc	03 	. 
	nop			;b6bd	00 	. 
	add a,c			;b6be	81 	. 
	rst 38h			;b6bf	ff 	. 
	inc bc			;b6c0	03 	. 
	nop			;b6c1	00 	. 
	add a,c			;b6c2	81 	. 
	rst 38h			;b6c3	ff 	. 
	djnz lb6c6h		;b6c4	10 00 	. . 
lb6c6h:
	ex af,af'			;b6c6	08 	. 
	rst 38h			;b6c7	ff 	. 
	inc c			;b6c8	0c 	. 
	nop			;b6c9	00 	. 
	add a,h			;b6ca	84 	. 
	ld bc,00f07h		;b6cb	01 07 0f 	. . . 
	rra			;b6ce	1f 	. 
	inc b			;b6cf	04 	. 
	nop			;b6d0	00 	. 
	sub h			;b6d1	94 	. 
	ret m			;b6d2	f8 	. 
	cp 0ffh		;b6d3	fe ff 	. . 
	rst 38h			;b6d5	ff 	. 
	dec e			;b6d6	1d 	. 
	dec sp			;b6d7	3b 	; 
	inc a			;b6d8	3c 	< 
	ld a,07bh		;b6d9	3e 7b 	> { 
	ld (hl),a			;b6db	77 	w 
	halt			;b6dc	76 	v 
	ld a,c			;b6dd	79 	y 
	add a,a			;b6de	87 	. 
	ld a,e			;b6df	7b 	{ 
	push hl			;b6e0	e5 	. 
	push hl			;b6e1	e5 	. 
	ld e,l			;b6e2	5d 	] 
	ld h,e			;b6e3	63 	c 
	rst 38h			;b6e4	ff 	. 
	ld sp,hl			;b6e5	f9 	. 
	djnz lb6e8h		;b6e6	10 00 	. . 
lb6e8h:
	add a,d			;b6e8	82 	. 
	ld (hl),a			;b6e9	77 	w 
	ld l,(hl)			;b6ea	6e 	n 
	inc bc			;b6eb	03 	. 
	defb 0edh;next byte illegal after ed		;b6ec	ed 	. 
	and l			;b6ed	a5 	. 
	push af			;b6ee	f5 	. 
	or 0dah		;b6ef	f6 da 	. . 
	scf			;b6f1	37 	7 
	rst 10h			;b6f2	d7 	. 
	rst 10h			;b6f3	d7 	. 
	xor e			;b6f4	ab 	. 
	ld l,l			;b6f5	6d 	m 
	ld e,l			;b6f6	5d 	] 
	out (0cfh),a		;b6f7	d3 cf 	. . 
	jp c,065dbh		;b6f9	da db 65 	. . e 
	ld a,(hl)			;b6fc	7e 	~ 
	ld a,a			;b6fd	7f 	 
	ld a,b			;b6fe	78 	x 
	ld (hl),a			;b6ff	77 	w 
	ld a,h			;b700	7c 	| 
	rst 18h			;b701	df 	. 
	rst 18h			;b702	df 	. 
	or d			;b703	b2 	. 
	and b			;b704	a0 	. 
	ld h,c			;b705	61 	a 
	jp po,l8142h		;b706	e2 42 81 	. B . 
	dec sp			;b709	3b 	; 
	dec sp			;b70a	3b 	; 
	ld a,(03d3dh)		;b70b	3a 3d 3d 	: = = 
	ld a,(01f1bh)		;b70e	3a 1b 1f 	: . . 
	add a,b			;b711	80 	. 
	ld b,b			;b712	40 	@ 
	inc bc			;b713	03 	. 
	nop			;b714	00 	. 
	sbc a,h			;b715	9c 	. 
	add a,b			;b716	80 	. 
	ld b,b			;b717	40 	@ 
	nop			;b718	00 	. 
	ld e,01dh		;b719	1e 1d 	. . 
	inc e			;b71b	1c 	. 
	dec de			;b71c	1b 	. 
	nop			;b71d	00 	. 
	nop			;b71e	00 	. 
	jr nc,$+58		;b71f	30 38 	0 8 
	add a,b			;b721	80 	. 
	ld b,b			;b722	40 	@ 
	ret po			;b723	e0 	. 
	rst 38h			;b724	ff 	. 
	rst 38h			;b725	ff 	. 
	ld a,a			;b726	7f 	 
	rst 38h			;b727	ff 	. 
	rst 38h			;b728	ff 	. 
	dec b			;b729	05 	. 
	ld b,004h		;b72a	06 04 	. . 
	inc b			;b72c	04 	. 
	nop			;b72d	00 	. 
	ld bc,00002h		;b72e	01 02 00 	. . . 
	ld e,003h		;b731	1e 03 	. . 
	dec e			;b733	1d 	. 
	ld (bc),a			;b734	02 	. 
	dec de			;b735	1b 	. 
	add a,d			;b736	82 	. 
	dec sp			;b737	3b 	; 
	scf			;b738	37 	7 
	inc bc			;b739	03 	. 
	rst 38h			;b73a	ff 	. 
	add a,c			;b73b	81 	. 
	rst 28h			;b73c	ef 	. 
	ld (bc),a			;b73d	02 	. 
	ex (sp),hl			;b73e	e3 	. 
	ld (bc),a			;b73f	02 	. 
	ret nz			;b740	c0 	. 
	add a,h			;b741	84 	. 
	inc sp			;b742	33 	3 
	ld sp,03c38h		;b743	31 38 3c 	1 8 < 
	inc b			;b746	04 	. 
	ld a,a			;b747	7f 	 
	add a,e			;b748	83 	. 
	add a,c			;b749	81 	. 
	add a,e			;b74a	83 	. 
	inc bc			;b74b	03 	. 
	ld (bc),a			;b74c	02 	. 
	nop			;b74d	00 	. 
	ld (bc),a			;b74e	02 	. 
	add a,e			;b74f	83 	. 
	add a,c			;b750	81 	. 
	ld bc,07f02h		;b751	01 02 7f 	. .  
	ld b,0ffh		;b754	06 ff 	. . 
	add a,d			;b756	82 	. 
	ld bc,01683h		;b757	01 83 16 	. . . 
	rst 38h			;b75a	ff 	. 
	nop			;b75b	00 	. 
	adc a,(hl)			;b75c	8e 	. 
	rlca			;b75d	07 	. 
	jr lb780h		;b75e	18 20 	.   
	ld b,b			;b760	40 	@ 
	ld b,b			;b761	40 	@ 
	add a,e			;b762	83 	. 
	add a,b			;b763	80 	. 
	add a,b			;b764	80 	. 
	cp 001h		;b765	fe 01 	. . 
	ret nz			;b767	c0 	. 
	nop			;b768	00 	. 
	nop			;b769	00 	. 
	rst 38h			;b76a	ff 	. 
	ld (bc),a			;b76b	02 	. 
	nop			;b76c	00 	. 
	ld (bc),a			;b76d	02 	. 
	djnz lb772h		;b76e	10 02 	. . 
	add a,b			;b770	80 	. 
	ld (bc),a			;b771	02 	. 
lb772h:
	djnz lb776h		;b772	10 02 	. . 
	add a,b			;b774	80 	. 
	ld (bc),a			;b775	02 	. 
lb776h:
	ex af,af'			;b776	08 	. 
	ld (bc),a			;b777	02 	. 
	ld bc,00802h		;b778	01 02 08 	. . . 
	ld (bc),a			;b77b	02 	. 
	ld bc,01002h		;b77c	01 02 10 	. . . 
	ld (bc),a			;b77f	02 	. 
lb780h:
	add a,b			;b780	80 	. 
	ld (bc),a			;b781	02 	. 
	djnz lb786h		;b782	10 02 	. . 
	add a,b			;b784	80 	. 
	nop			;b785	00 	. 
lb786h:
	sub b			;b786	90 	. 
	ret m			;b787	f8 	. 
lb788h:
	ret po			;b788	e0 	. 
	ret nz			;b789	c0 	. 
	add a,b			;b78a	80 	. 
	add a,b			;b78b	80 	. 
	nop			;b78c	00 	. 
	rlca			;b78d	07 	. 
	ex af,af'			;b78e	08 	. 
	nop			;b78f	00 	. 
	nop			;b790	00 	. 
	ld bc,000c0h		;b791	01 c0 00 	. . . 
	nop			;b794	00 	. 
	rst 38h			;b795	ff 	. 
	nop			;b796	00 	. 
	ex af,af'			;b797	08 	. 
	ex af,af'			;b798	08 	. 
	ex af,af'			;b799	08 	. 
	djnz lb7a3h		;b79a	10 07 	. . 
	ex af,af'			;b79c	08 	. 
	add a,c			;b79d	81 	. 
	nop			;b79e	00 	. 
	nop			;b79f	00 	. 
	adc a,(hl)			;b7a0	8e 	. 
	rlca			;b7a1	07 	. 
	add hl,de			;b7a2	19 	. 
lb7a3h:
	ld (hl),070h		;b7a3	36 70 	6 p 
	ld l,a			;b7a5	6f 	o 
	rst 18h			;b7a6	df 	. 
	ret c			;b7a7	d8 	. 
	ret nc			;b7a8	d0 	. 
	cp 024h		;b7a9	fe 24 	. $ 
	jr lb7afh		;b7ab	18 02 	. . 
	ccf			;b7ad	3f 	? 
	rst 38h			;b7ae	ff 	. 
lb7afh:
	ld (bc),a			;b7af	02 	. 
	nop			;b7b0	00 	. 
	ld (bc),a			;b7b1	02 	. 
	or b			;b7b2	b0 	. 
	add a,d			;b7b3	82 	. 
	ret nc			;b7b4	d0 	. 
	ld d,b			;b7b5	50 	P 
	ld (bc),a			;b7b6	02 	. 
	or b			;b7b7	b0 	. 
	ld (bc),a			;b7b8	02 	. 
	ret nc			;b7b9	d0 	. 
	ld (bc),a			;b7ba	02 	. 
	dec c			;b7bb	0d 	. 
	ld (bc),a			;b7bc	02 	. 
	dec bc			;b7bd	0b 	. 
	ld (bc),a			;b7be	02 	. 
	dec c			;b7bf	0d 	. 
	ld (bc),a			;b7c0	02 	. 
	dec bc			;b7c1	0b 	. 
	ld (bc),a			;b7c2	02 	. 
	or b			;b7c3	b0 	. 
	ld (bc),a			;b7c4	02 	. 
	ret nc			;b7c5	d0 	. 
	ld (bc),a			;b7c6	02 	. 
	or b			;b7c7	b0 	. 
	ld (bc),a			;b7c8	02 	. 
	ret nc			;b7c9	d0 	. 
	nop			;b7ca	00 	. 
	sub h			;b7cb	94 	. 
	ret m			;b7cc	f8 	. 
	and 0c9h		;b7cd	e6 c9 	. . 
	adc a,a			;b7cf	8f 	. 
	sub b			;b7d0	90 	. 
	jr nz,lb7fah		;b7d1	20 27 	  ' 
	jr z,$+3		;b7d3	28 01 	( . 
	jp c,03d26h		;b7d5	da 26 3d 	. & = 
	ret nz			;b7d8	c0 	. 
	nop			;b7d9	00 	. 
	rst 38h			;b7da	ff 	. 
	nop			;b7db	00 	. 
	ld c,b			;b7dc	48 	H 
	ld c,b			;b7dd	48 	H 
	jr z,lb788h		;b7de	28 a8 	( . 
	ld (bc),a			;b7e0	02 	. 
	ld c,b			;b7e1	48 	H 
	ld (bc),a			;b7e2	02 	. 
	jr z,lb7e7h		;b7e3	28 02 	( . 
	ld (de),a			;b7e5	12 	. 
	ld (bc),a			;b7e6	02 	. 
lb7e7h:
	inc d			;b7e7	14 	. 
	ld (bc),a			;b7e8	02 	. 
	ld (de),a			;b7e9	12 	. 
	ld (bc),a			;b7ea	02 	. 
	inc d			;b7eb	14 	. 
	ld (bc),a			;b7ec	02 	. 
	ld c,b			;b7ed	48 	H 
	ld (bc),a			;b7ee	02 	. 
	jr z,lb7f3h		;b7ef	28 02 	( . 
	ld c,b			;b7f1	48 	H 
	add a,d			;b7f2	82 	. 
lb7f3h:
	jr z,lb815h		;b7f3	28 20 	(   
	nop			;b7f5	00 	. 
	nop			;b7f6	00 	. 
	rrca			;b7f7	0f 	. 
	rrca			;b7f8	0f 	. 
	nop			;b7f9	00 	. 
lb7fah:
	nop			;b7fa	00 	. 
	djnz lb81ch		;b7fb	10 1f 	. . 
	rrca			;b7fd	0f 	. 
	nop			;b7fe	00 	. 
	djnz lb820h		;b7ff	10 1f 	. . 
	rrca			;b801	0f 	. 
sub_b802h:
	nop			;b802	00 	. 
	rrca			;b803	0f 	. 
	rrca			;b804	0f 	. 
	nop			;b805	00 	. 
	ld (bc),a			;b806	02 	. 
	rlca			;b807	07 	. 
	nop			;b808	00 	. 
	dec b			;b809	05 	. 
	nop			;b80a	00 	. 
	rlca			;b80b	07 	. 
	rlca			;b80c	07 	. 
	nop			;b80d	00 	. 
	nop			;b80e	00 	. 
	ex af,af'			;b80f	08 	. 
	rrca			;b810	0f 	. 
	rlca			;b811	07 	. 
	nop			;b812	00 	. 
	djnz $+33		;b813	10 1f 	. . 
lb815h:
	rrca			;b815	0f 	. 
	nop			;b816	00 	. 
	rst 38h			;b817	ff 	. 
	rst 38h			;b818	ff 	. 
	nop			;b819	00 	. 
	nop			;b81a	00 	. 
	nop			;b81b	00 	. 
lb81ch:
	rst 38h			;b81c	ff 	. 
lb81dh:
	rst 38h			;b81d	ff 	. 
	nop			;b81e	00 	. 
	nop			;b81f	00 	. 
lb820h:
	rst 38h			;b820	ff 	. 
lb821h:
	rst 38h			;b821	ff 	. 
	nop			;b822	00 	. 
	rst 38h			;b823	ff 	. 
	rst 38h			;b824	ff 	. 
	nop			;b825	00 	. 
	xor d			;b826	aa 	. 
	rst 38h			;b827	ff 	. 
	nop			;b828	00 	. 
	ld d,l			;b829	55 	U 
	nop			;b82a	00 	. 
	rst 38h			;b82b	ff 	. 
	rst 38h			;b82c	ff 	. 
	nop			;b82d	00 	. 
	add a,c			;b82e	81 	. 
	add a,c			;b82f	81 	. 
	ld a,a			;b830	7f 	 
	ld a,(hl)			;b831	7e 	~ 
	ld c,d			;b832	4a 	J 
	jp z,lb53fh		;b833	ca 3f b5 	. ? . 
	nop			;b836	00 	. 
	ret nz			;b837	c0 	. 
	ret nz			;b838	c0 	. 
	nop			;b839	00 	. 
	nop			;b83a	00 	. 
	jr nz,lb81dh		;b83b	20 e0 	  . 
	ret nz			;b83d	c0 	. 
	nop			;b83e	00 	. 
	jr nz,lb821h		;b83f	20 e0 	  . 
	ret nz			;b841	c0 	. 
	nop			;b842	00 	. 
	ret nz			;b843	c0 	. 
	ret nz			;b844	c0 	. 
	nop			;b845	00 	. 
	add a,b			;b846	80 	. 
	add a,b			;b847	80 	. 
	nop			;b848	00 	. 
	nop			;b849	00 	. 
	nop			;b84a	00 	. 
	add a,b			;b84b	80 	. 
	add a,b			;b84c	80 	. 
	nop			;b84d	00 	. 
	nop			;b84e	00 	. 
	ld b,b			;b84f	40 	@ 
	ret nz			;b850	c0 	. 
	add a,b			;b851	80 	. 
	nop			;b852	00 	. 
	jr nz,$-30		;b853	20 e0 	  . 
	ret nz			;b855	c0 	. 
	inc b			;b856	04 	. 
	inc b			;b857	04 	. 
	rst 38h			;b858	ff 	. 
lb859h:
	ei			;b859	fb 	. 
	inc b			;b85a	04 	. 
	inc b			;b85b	04 	. 
	rst 38h			;b85c	ff 	. 
lb85dh:
	ei			;b85d	fb 	. 
	add a,h			;b85e	84 	. 
	add a,h			;b85f	84 	. 
	rst 38h			;b860	ff 	. 
	ld a,e			;b861	7b 	{ 
	ld l,d			;b862	6a 	j 
	ld l,d			;b863	6a 	j 
	rst 38h			;b864	ff 	. 
	sub l			;b865	95 	. 
	sub c			;b866	91 	. 
	sub c			;b867	91 	. 
	rst 38h			;b868	ff 	. 
lb869h:
	ld l,(hl)			;b869	6e 	n 
	ld de,0ff11h		;b86a	11 11 ff 	. . . 
	xor 02ah		;b86d	ee 2a 	. * 
	ld hl,(0d5ffh)		;b86f	2a ff d5 	* . . 
	nop			;b872	00 	. 
	rst 38h			;b873	ff 	. 
	rst 38h			;b874	ff 	. 
	nop			;b875	00 	. 
	nop			;b876	00 	. 
	jr nz,lb859h		;b877	20 e0 	  . 
	ret nz			;b879	c0 	. 
	nop			;b87a	00 	. 
	jr nz,lb85dh		;b87b	20 e0 	  . 
	ret nz			;b87d	c0 	. 
	ld b,b			;b87e	40 	@ 
	ld h,b			;b87f	60 	` 
	ret po			;b880	e0 	. 
	add a,b			;b881	80 	. 
	add a,b			;b882	80 	. 
	and b			;b883	a0 	. 
	ret po			;b884	e0 	. 
	ld b,b			;b885	40 	@ 
	nop			;b886	00 	. 
	jr nz,lb869h		;b887	20 e0 	  . 
	ret nz			;b889	c0 	. 
	nop			;b88a	00 	. 
	ld b,b			;b88b	40 	@ 
	ret nz			;b88c	c0 	. 
	add a,b			;b88d	80 	. 
	nop			;b88e	00 	. 
	add a,b			;b88f	80 	. 
	add a,b			;b890	80 	. 
	nop			;b891	00 	. 
	nop			;b892	00 	. 
	nop			;b893	00 	. 
	nop			;b894	00 	. 
	nop			;b895	00 	. 
	add a,e			;b896	83 	. 
	ld c,070h		;b897	0e 70 	. p 
	ld b,b			;b899	40 	@ 
	ld (bc),a			;b89a	02 	. 
	add a,b			;b89b	80 	. 
	inc b			;b89c	04 	. 
	nop			;b89d	00 	. 
	add a,c			;b89e	81 	. 
	jr c,lb8a3h		;b89f	38 02 	8 . 
	jr nz,lb8a5h		;b8a1	20 02 	  . 
lb8a3h:
	ld b,b			;b8a3	40 	@ 
	add a,l			;b8a4	85 	. 
lb8a5h:
	nop			;b8a5	00 	. 
	ld b,b			;b8a6	40 	@ 
	nop			;b8a7	00 	. 
	nop			;b8a8	00 	. 
	ret pe			;b8a9	e8 	. 
	rlca			;b8aa	07 	. 
	nop			;b8ab	00 	. 
	sbc a,d			;b8ac	9a 	. 
	inc bc			;b8ad	03 	. 
	inc b			;b8ae	04 	. 
lb8afh:
	nop			;b8af	00 	. 
	djnz lb8b2h		;b8b0	10 00 	. . 
lb8b2h:
	nop			;b8b2	00 	. 
	inc e			;b8b3	1c 	. 
	ld a,(hl)			;b8b4	7e 	~ 
	ld a,(hl)			;b8b5	7e 	~ 
	ld a,a			;b8b6	7f 	 
	dec a			;b8b7	3d 	= 
	dec l			;b8b8	2d 	- 
	ld l,(hl)			;b8b9	6e 	n 
	inc a			;b8ba	3c 	< 
	jr lb93bh		;b8bb	18 7e 	. ~ 
	cp 0fah		;b8bd	fe fa 	. . 
	ld a,h			;b8bf	7c 	| 
	ld a,h			;b8c0	7c 	| 
	jr c,lb8afh		;b8c1	38 ec 	8 . 
	ld sp,0e071h		;b8c3	31 71 e0 	1 q . 
	ex af,af'			;b8c6	08 	. 
	inc b			;b8c7	04 	. 
	nop			;b8c8	00 	. 
	adc a,b			;b8c9	88 	. 
	ret m			;b8ca	f8 	. 
	cp 0e6h		;b8cb	fe e6 	. . 
	ret nz			;b8cd	c0 	. 
	ex af,af'			;b8ce	08 	. 
	jr nc,lb8f1h		;b8cf	30 20 	0   
	nop			;b8d1	00 	. 
	nop			;b8d2	00 	. 
	add a,c			;b8d3	81 	. 
	pop af			;b8d4	f1 	. 
	ld (bc),a			;b8d5	02 	. 
	add a,c			;b8d6	81 	. 
	inc bc			;b8d7	03 	. 
	nop			;b8d8	00 	. 
	add a,h			;b8d9	84 	. 
	add a,b			;b8da	80 	. 
	add a,c			;b8db	81 	. 
	rst 38h			;b8dc	ff 	. 
	rst 0			;b8dd	c7 	. 
	ld (bc),a			;b8de	02 	. 
	pop bc			;b8df	c1 	. 
	ld (bc),a			;b8e0	02 	. 
	add a,c			;b8e1	81 	. 
	add a,(hl)			;b8e2	86 	. 
	pop bc			;b8e3	c1 	. 
	add a,c			;b8e4	81 	. 
	jp 007ffh		;b8e5	c3 ff 07 	. . . 
	ld bc,00003h		;b8e8	01 03 00 	. . . 
	xor c			;b8eb	a9 	. 
	rrca			;b8ec	0f 	. 
	inc bc			;b8ed	03 	. 
	add a,a			;b8ee	87 	. 
	add a,h			;b8ef	84 	. 
	ret z			;b8f0	c8 	. 
lb8f1h:
	ret p			;b8f1	f0 	. 
	ret nz			;b8f2	c0 	. 
	ret nz			;b8f3	c0 	. 
	ret p			;b8f4	f0 	. 
	ex (sp),hl			;b8f5	e3 	. 
	add a,c			;b8f6	81 	. 
	add a,c			;b8f7	81 	. 
	add a,b			;b8f8	80 	. 
	jp nz,09152h		;b8f9	c2 52 91 	. R . 
	jp l81e7h		;b8fc	c3 e7 81 	. . . 
	ld bc,l8305h		;b8ff	01 05 83 	. . . 
	add a,e			;b902	83 	. 
	rst 0			;b903	c7 	. 
	inc de			;b904	13 	. 
	adc a,08eh		;b905	ce 8e 	. . 
	rra			;b907	1f 	. 
	rlca			;b908	07 	. 
	ld bc,00000h		;b909	01 00 00 	. . . 
	rrca			;b90c	0f 	. 
	rlca			;b90d	07 	. 
	ld bc,03f19h		;b90e	01 19 3f 	. . ? 
	jp p,0c0c0h		;b911	f2 c0 c0 	. . . 
	ret p			;b914	f0 	. 
	nop			;b915	00 	. 
	add a,e			;b916	83 	. 
	ld c,070h		;b917	0e 70 	. p 
	ld b,b			;b919	40 	@ 
	ld (bc),a			;b91a	02 	. 
	add a,b			;b91b	80 	. 
	inc b			;b91c	04 	. 
	nop			;b91d	00 	. 
	add a,c			;b91e	81 	. 
	jr c,lb923h		;b91f	38 02 	8 . 
	jr nz,lb925h		;b921	20 02 	  . 
lb923h:
	ld b,b			;b923	40 	@ 
	add a,l			;b924	85 	. 
lb925h:
	nop			;b925	00 	. 
	ld b,b			;b926	40 	@ 
	nop			;b927	00 	. 
	nop			;b928	00 	. 
	ret pe			;b929	e8 	. 
	rlca			;b92a	07 	. 
	nop			;b92b	00 	. 
	add a,h			;b92c	84 	. 
	inc bc			;b92d	03 	. 
	inc b			;b92e	04 	. 
	nop			;b92f	00 	. 
	djnz lb934h		;b930	10 02 	. . 
	nop			;b932	00 	. 
	dec b			;b933	05 	. 
lb934h:
	rst 38h			;b934	ff 	. 
	add a,e			;b935	83 	. 
	ld a,a			;b936	7f 	 
	rst 38h			;b937	ff 	. 
	ld a,a			;b938	7f 	 
	inc b			;b939	04 	. 
	rst 38h			;b93a	ff 	. 
lb93bh:
	inc b			;b93b	04 	. 
	cp 084h		;b93c	fe 84 	. . 
	ld a,a			;b93e	7f 	 
	ld a,e			;b93f	7b 	{ 
	dec de			;b940	1b 	. 
	inc bc			;b941	03 	. 
	inc b			;b942	04 	. 
	nop			;b943	00 	. 
	inc bc			;b944	03 	. 
	rst 38h			;b945	ff 	. 
	add a,d			;b946	82 	. 
	rst 30h			;b947	f7 	. 
	jp nz,00003h		;b948	c2 03 00 	. . . 
	nop			;b94b	00 	. 
	add a,e			;b94c	83 	. 
	pop af			;b94d	f1 	. 
	adc a,a			;b94e	8f 	. 
	cp a			;b94f	bf 	. 
	ld (bc),a			;b950	02 	. 
	ld a,a			;b951	7f 	 
	inc b			;b952	04 	. 
	rst 38h			;b953	ff 	. 
	add a,c			;b954	81 	. 
	rst 0			;b955	c7 	. 
	ld (bc),a			;b956	02 	. 
	rst 18h			;b957	df 	. 
	ld (bc),a			;b958	02 	. 
	cp a			;b959	bf 	. 
	add a,l			;b95a	85 	. 
	rst 38h			;b95b	ff 	. 
	cp a			;b95c	bf 	. 
	rst 38h			;b95d	ff 	. 
	rst 38h			;b95e	ff 	. 
	rla			;b95f	17 	. 
	rlca			;b960	07 	. 
	rst 38h			;b961	ff 	. 
	add a,h			;b962	84 	. 
	call m,0fffbh		;b963	fc fb ff 	. . . 
	rst 28h			;b966	ef 	. 
	ld (000ffh),hl		;b967	22 ff 00 	" . . 
	nop			;b96a	00 	. 
	nop			;b96b	00 	. 
	nop			;b96c	00 	. 
	nop			;b96d	00 	. 
	nop			;b96e	00 	. 
	nop			;b96f	00 	. 
	nop			;b970	00 	. 
	nop			;b971	00 	. 
	ex af,af'			;b972	08 	. 
	jr lb98dh		;b973	18 18 	. . 
	djnz lb987h		;b975	10 10 	. . 
	jr nz,lb999h		;b977	20 20 	    
	nop			;b979	00 	. 
	jr z,lb9a4h		;b97a	28 28 	( ( 
	nop			;b97c	00 	. 
	nop			;b97d	00 	. 
	nop			;b97e	00 	. 
	nop			;b97f	00 	. 
	nop			;b980	00 	. 
	nop			;b981	00 	. 
	ex af,af'			;b982	08 	. 
	jr z,lba01h		;b983	28 7c 	( | 
	jr z,lba03h		;b985	28 7c 	( | 
lb987h:
	jr z,lb9a9h		;b987	28 20 	(   
	nop			;b989	00 	. 
	djnz $+58		;b98a	10 38 	. 8 
	ld d,b			;b98c	50 	P 
lb98dh:
	jr c,$+22		;b98d	38 14 	8 . 
	ld a,b			;b98f	78 	x 
	djnz lb992h		;b990	10 00 	. . 
lb992h:
	nop			;b992	00 	. 
	nop			;b993	00 	. 
	inc h			;b994	24 	$ 
	ex af,af'			;b995	08 	. 
	djnz $+38		;b996	10 24 	. $ 
	nop			;b998	00 	. 
lb999h:
	nop			;b999	00 	. 
	djnz $+42		;b99a	10 28 	. ( 
	jr z,$+18		;b99c	28 10 	( . 
	ld hl,(01a24h)		;b99e	2a 24 1a 	* $ . 
	nop			;b9a1	00 	. 
	jr $+26		;b9a2	18 18 	. . 
lb9a4h:
	ex af,af'			;b9a4	08 	. 
	djnz lb9a7h		;b9a5	10 00 	. . 
lb9a7h:
	nop			;b9a7	00 	. 
	nop			;b9a8	00 	. 
lb9a9h:
	nop			;b9a9	00 	. 
	inc c			;b9aa	0c 	. 
	jr lb9ddh		;b9ab	18 30 	. 0 
	jr nc,lb9dfh		;b9ad	30 30 	0 0 
	jr lb9bdh		;b9af	18 0c 	. . 
	nop			;b9b1	00 	. 
	jr nc,lb9cch		;b9b2	30 18 	0 . 
	inc c			;b9b4	0c 	. 
	inc c			;b9b5	0c 	. 
	inc c			;b9b6	0c 	. 
	jr lb9e9h		;b9b7	18 30 	. 0 
	nop			;b9b9	00 	. 
	nop			;b9ba	00 	. 
	djnz lba11h		;b9bb	10 54 	. T 
lb9bdh:
	jr c,lba13h		;b9bd	38 54 	8 T 
	djnz lb9c1h		;b9bf	10 00 	. . 
lb9c1h:
	nop			;b9c1	00 	. 
	nop			;b9c2	00 	. 
	djnz lb9d5h		;b9c3	10 10 	. . 
	ld a,h			;b9c5	7c 	| 
	djnz lb9d8h		;b9c6	10 10 	. . 
	nop			;b9c8	00 	. 
	nop			;b9c9	00 	. 
	nop			;b9ca	00 	. 
	nop			;b9cb	00 	. 
lb9cch:
	nop			;b9cc	00 	. 
	nop			;b9cd	00 	. 
	jr lb9e8h		;b9ce	18 18 	. . 
	ex af,af'			;b9d0	08 	. 
	djnz lb9d3h		;b9d1	10 00 	. . 
lb9d3h:
	nop			;b9d3	00 	. 
	nop			;b9d4	00 	. 
lb9d5h:
	ld a,h			;b9d5	7c 	| 
	nop			;b9d6	00 	. 
	nop			;b9d7	00 	. 
lb9d8h:
	nop			;b9d8	00 	. 
	nop			;b9d9	00 	. 
	nop			;b9da	00 	. 
	nop			;b9db	00 	. 
	nop			;b9dc	00 	. 
lb9ddh:
	nop			;b9dd	00 	. 
	nop			;b9de	00 	. 
lb9dfh:
	jr $+26		;b9df	18 18 	. . 
	nop			;b9e1	00 	. 
	nop			;b9e2	00 	. 
	inc b			;b9e3	04 	. 
	ex af,af'			;b9e4	08 	. 
	djnz $+34		;b9e5	10 20 	.   
	ld b,b			;b9e7	40 	@ 
lb9e8h:
	nop			;b9e8	00 	. 
lb9e9h:
	nop			;b9e9	00 	. 
	inc a			;b9ea	3c 	< 
	ld b,d			;b9eb	42 	B 
	ld b,d			;b9ec	42 	B 
	ld h,d			;b9ed	62 	b 
	ld h,d			;b9ee	62 	b 
	ld h,d			;b9ef	62 	b 
	inc a			;b9f0	3c 	< 
	nop			;b9f1	00 	. 
	jr nc,lba04h		;b9f2	30 10 	0 . 
	djnz lba06h		;b9f4	10 10 	. . 
	jr lba10h		;b9f6	18 18 	. . 
	jr lb9fah		;b9f8	18 00 	. . 
lb9fah:
	ld a,h			;b9fa	7c 	| 
	ld (bc),a			;b9fb	02 	. 
	ld (bc),a			;b9fc	02 	. 
	inc a			;b9fd	3c 	< 
	ld h,b			;b9fe	60 	` 
	ld h,b			;b9ff	60 	` 
	ld a,(hl)			;ba00	7e 	~ 
lba01h:
	nop			;ba01	00 	. 
	ld a,h			;ba02	7c 	| 
lba03h:
	ld (bc),a			;ba03	02 	. 
lba04h:
	ld (bc),a			;ba04	02 	. 
	inc a			;ba05	3c 	< 
lba06h:
	ld b,006h		;ba06	06 06 	. . 
	ld a,h			;ba08	7c 	| 
	nop			;ba09	00 	. 
	inc e			;ba0a	1c 	. 
	inc h			;ba0b	24 	$ 
	ld b,h			;ba0c	44 	D 
	ld c,h			;ba0d	4c 	L 
	ld c,h			;ba0e	4c 	L 
	ld a,(hl)			;ba0f	7e 	~ 
lba10h:
	inc c			;ba10	0c 	. 
lba11h:
	nop			;ba11	00 	. 
	ld a,h			;ba12	7c 	| 
lba13h:
	ld b,b			;ba13	40 	@ 
	ld b,b			;ba14	40 	@ 
	ld a,h			;ba15	7c 	| 
	ld b,006h		;ba16	06 06 	. . 
	ld a,h			;ba18	7c 	| 
	nop			;ba19	00 	. 
	inc a			;ba1a	3c 	< 
	ld h,b			;ba1b	60 	` 
	ld b,b			;ba1c	40 	@ 
	ld a,h			;ba1d	7c 	| 
	ld b,(hl)			;ba1e	46 	F 
	ld b,(hl)			;ba1f	46 	F 
	inc a			;ba20	3c 	< 
	nop			;ba21	00 	. 
	ld a,(hl)			;ba22	7e 	~ 
	ld b,d			;ba23	42 	B 
	inc b			;ba24	04 	. 
	ex af,af'			;ba25	08 	. 
	jr lba40h		;ba26	18 18 	. . 
	jr lba2ah		;ba28	18 00 	. . 
lba2ah:
	inc a			;ba2a	3c 	< 
	ld h,d			;ba2b	62 	b 
	ld h,d			;ba2c	62 	b 
	inc a			;ba2d	3c 	< 
	ld b,(hl)			;ba2e	46 	F 
	ld b,(hl)			;ba2f	46 	F 
	inc a			;ba30	3c 	< 
	nop			;ba31	00 	. 
	inc a			;ba32	3c 	< 
	ld h,d			;ba33	62 	b 
	ld h,d			;ba34	62 	b 
	ld a,002h		;ba35	3e 02 	> . 
	ld b,03ch		;ba37	06 3c 	. < 
	nop			;ba39	00 	. 
	nop			;ba3a	00 	. 
	jr lba55h		;ba3b	18 18 	. . 
	nop			;ba3d	00 	. 
	jr lba58h		;ba3e	18 18 	. . 
lba40h:
	nop			;ba40	00 	. 
	nop			;ba41	00 	. 
sub_ba42h:
	nop			;ba42	00 	. 
	jr lba5dh		;ba43	18 18 	. . 
	nop			;ba45	00 	. 
	jr lba60h		;ba46	18 18 	. . 
	ex af,af'			;ba48	08 	. 
	djnz $+6		;ba49	10 04 	. . 
	ex af,af'			;ba4b	08 	. 
	djnz lba7eh		;ba4c	10 30 	. 0 
	jr lba5ch		;ba4e	18 0c 	. . 
	inc b			;ba50	04 	. 
	nop			;ba51	00 	. 
	nop			;ba52	00 	. 
	nop			;ba53	00 	. 
	ld a,h			;ba54	7c 	| 
lba55h:
	nop			;ba55	00 	. 
	ld a,h			;ba56	7c 	| 
	nop			;ba57	00 	. 
lba58h:
	nop			;ba58	00 	. 
	nop			;ba59	00 	. 
	jr nz,lba6ch		;ba5a	20 10 	  . 
lba5ch:
	ex af,af'			;ba5c	08 	. 
lba5dh:
	inc c			;ba5d	0c 	. 
	jr lba90h		;ba5e	18 30 	. 0 
lba60h:
	jr nz,lba62h		;ba60	20 00 	  . 
lba62h:
	inc a			;ba62	3c 	< 
	ld b,(hl)			;ba63	46 	F 
	ld b,(hl)			;ba64	46 	F 
	inc c			;ba65	0c 	. 
	jr lba68h		;ba66	18 00 	. . 
lba68h:
	jr lba6ah		;ba68	18 00 	. . 
lba6ah:
	inc a			;ba6a	3c 	< 
	ld b,d			;ba6b	42 	B 
lba6ch:
	ld a,(de)			;ba6c	1a 	. 
	ld hl,(02a2ah)		;ba6d	2a 2a 2a 	* * * 
	inc d			;ba70	14 	. 
	nop			;ba71	00 	. 
	jr lba98h		;ba72	18 24 	. $ 
	ld b,d			;ba74	42 	B 
	ld h,d			;ba75	62 	b 
	ld a,(hl)			;ba76	7e 	~ 
	ld h,d			;ba77	62 	b 
	ld h,d			;ba78	62 	b 
	nop			;ba79	00 	. 
	ld a,b			;ba7a	78 	x 
	ld b,h			;ba7b	44 	D 
	ld b,h			;ba7c	44 	D 
	ld a,h			;ba7d	7c 	| 
lba7eh:
	ld h,d			;ba7e	62 	b 
	ld h,d			;ba7f	62 	b 
	ld a,h			;ba80	7c 	| 
	nop			;ba81	00 	. 
	inc a			;ba82	3c 	< 
	ld b,d			;ba83	42 	B 
	ld b,b			;ba84	40 	@ 
	ld h,b			;ba85	60 	` 
	ld h,b			;ba86	60 	` 
	ld h,d			;ba87	62 	b 
	inc a			;ba88	3c 	< 
	nop			;ba89	00 	. 
	ld a,h			;ba8a	7c 	| 
	ld b,d			;ba8b	42 	B 
	ld b,d			;ba8c	42 	B 
	ld h,d			;ba8d	62 	b 
	ld h,d			;ba8e	62 	b 
	ld h,d			;ba8f	62 	b 
lba90h:
	ld a,h			;ba90	7c 	| 
	nop			;ba91	00 	. 
	ld a,(hl)			;ba92	7e 	~ 
	ld b,b			;ba93	40 	@ 
	ld b,b			;ba94	40 	@ 
	ld a,h			;ba95	7c 	| 
	ld h,b			;ba96	60 	` 
	ld h,b			;ba97	60 	` 
lba98h:
	ld a,(hl)			;ba98	7e 	~ 
	nop			;ba99	00 	. 
	ld a,(hl)			;ba9a	7e 	~ 
	ld b,b			;ba9b	40 	@ 
	ld b,b			;ba9c	40 	@ 
	ld a,h			;ba9d	7c 	| 
	ld h,b			;ba9e	60 	` 
	ld h,b			;ba9f	60 	` 
	ld h,b			;baa0	60 	` 
	nop			;baa1	00 	. 
	inc a			;baa2	3c 	< 
	ld b,d			;baa3	42 	B 
	ld b,b			;baa4	40 	@ 
	ld h,(hl)			;baa5	66 	f 
	ld h,d			;baa6	62 	b 
	ld h,d			;baa7	62 	b 
	inc a			;baa8	3c 	< 
	nop			;baa9	00 	. 
	ld b,d			;baaa	42 	B 
	ld b,d			;baab	42 	B 
	ld b,d			;baac	42 	B 
	ld a,(hl)			;baad	7e 	~ 
	ld h,d			;baae	62 	b 
	ld h,d			;baaf	62 	b 
	ld h,d			;bab0	62 	b 
	nop			;bab1	00 	. 
	djnz lbac4h		;bab2	10 10 	. . 
	djnz lbaceh		;bab4	10 18 	. . 
	jr lbad0h		;bab6	18 18 	. . 
	jr lbabah		;bab8	18 00 	. . 
lbabah:
	ld (bc),a			;baba	02 	. 
	ld (bc),a			;babb	02 	. 
	ld (bc),a			;babc	02 	. 
	ld b,046h		;babd	06 46 	. F 
	ld b,(hl)			;babf	46 	F 
	inc a			;bac0	3c 	< 
	nop			;bac1	00 	. 
	ld b,d			;bac2	42 	B 
	ld b,h			;bac3	44 	D 
lbac4h:
	ld c,b			;bac4	48 	H 
	ld (hl),b			;bac5	70 	p 
	ld l,b			;bac6	68 	h 
	ld h,h			;bac7	64 	d 
	ld h,d			;bac8	62 	b 
	nop			;bac9	00 	. 
	ld b,b			;baca	40 	@ 
	ld b,b			;bacb	40 	@ 
	ld b,b			;bacc	40 	@ 
	ld h,b			;bacd	60 	` 
lbaceh:
	ld h,b			;bace	60 	` 
	ld h,b			;bacf	60 	` 
lbad0h:
	ld a,(hl)			;bad0	7e 	~ 
	nop			;bad1	00 	. 
	ld b,(hl)			;bad2	46 	F 
	ld l,d			;bad3	6a 	j 
	ld d,d			;bad4	52 	R 
	ld b,(hl)			;bad5	46 	F 
	ld b,(hl)			;bad6	46 	F 
	ld b,(hl)			;bad7	46 	F 
	ld b,(hl)			;bad8	46 	F 
	nop			;bad9	00 	. 
	ld h,d			;bada	62 	b 
	ld d,d			;badb	52 	R 
	ld c,d			;badc	4a 	J 
	ld b,(hl)			;badd	46 	F 
	ld b,(hl)			;bade	46 	F 
	ld b,(hl)			;badf	46 	F 
	ld b,(hl)			;bae0	46 	F 
	nop			;bae1	00 	. 
	inc a			;bae2	3c 	< 
	ld b,d			;bae3	42 	B 
	ld b,d			;bae4	42 	B 
	ld h,d			;bae5	62 	b 
	ld h,d			;bae6	62 	b 
	ld h,d			;bae7	62 	b 
	inc a			;bae8	3c 	< 
	nop			;bae9	00 	. 
	ld a,h			;baea	7c 	| 
	ld b,d			;baeb	42 	B 
	ld b,d			;baec	42 	B 
	ld h,d			;baed	62 	b 
	ld a,h			;baee	7c 	| 
	ld h,b			;baef	60 	` 
	ld h,b			;baf0	60 	` 
	nop			;baf1	00 	. 
	inc a			;baf2	3c 	< 
	ld b,d			;baf3	42 	B 
	ld b,d			;baf4	42 	B 
	ld h,d			;baf5	62 	b 
	ld a,d			;baf6	7a 	z 
	ld h,h			;baf7	64 	d 
	ld a,(07c00h)		;baf8	3a 00 7c 	: . | 
	ld b,d			;bafb	42 	B 
	ld b,d			;bafc	42 	B 
	ld h,d			;bafd	62 	b 
	ld a,h			;bafe	7c 	| 
	ld h,d			;baff	62 	b 
	ld h,d			;bb00	62 	b 
	nop			;bb01	00 	. 
	inc a			;bb02	3c 	< 
	ld b,d			;bb03	42 	B 
	ld b,b			;bb04	40 	@ 
	inc a			;bb05	3c 	< 
	ld b,046h		;bb06	06 46 	. F 
	inc a			;bb08	3c 	< 
	nop			;bb09	00 	. 
	ld a,(hl)			;bb0a	7e 	~ 
	djnz lbb1dh		;bb0b	10 10 	. . 
	jr lbb27h		;bb0d	18 18 	. . 
	jr lbb29h		;bb0f	18 18 	. . 
	nop			;bb11	00 	. 
	ld b,d			;bb12	42 	B 
	ld b,d			;bb13	42 	B 
	ld b,d			;bb14	42 	B 
	ld h,d			;bb15	62 	b 
	ld h,d			;bb16	62 	b 
	ld h,d			;bb17	62 	b 
	inc a			;bb18	3c 	< 
	nop			;bb19	00 	. 
	ld b,d			;bb1a	42 	B 
	ld b,d			;bb1b	42 	B 
	ld b,d			;bb1c	42 	B 
lbb1dh:
	ld h,d			;bb1d	62 	b 
	ld h,d			;bb1e	62 	b 
	inc (hl)			;bb1f	34 	4 
	jr lbb22h		;bb20	18 00 	. . 
lbb22h:
	ld b,d			;bb22	42 	B 
	ld c,d			;bb23	4a 	J 
	ld c,d			;bb24	4a 	J 
	ld l,d			;bb25	6a 	j 
	ld l,d			;bb26	6a 	j 
lbb27h:
	ld l,d			;bb27	6a 	j 
	inc (hl)			;bb28	34 	4 
lbb29h:
	nop			;bb29	00 	. 
	ld b,d			;bb2a	42 	B 
	ld h,01ch		;bb2b	26 1c 	& . 
	jr lbb67h		;bb2d	18 38 	. 8 
	ld h,h			;bb2f	64 	d 
	ld b,d			;bb30	42 	B 
	nop			;bb31	00 	. 
	ld b,d			;bb32	42 	B 
	ld h,d			;bb33	62 	b 
	inc (hl)			;bb34	34 	4 
	jr lbb4fh		;bb35	18 18 	. . 
	jr $+26		;bb37	18 18 	. . 
	nop			;bb39	00 	. 
	ld a,(hl)			;bb3a	7e 	~ 
	ld b,00ch		;bb3b	06 0c 	. . 
	jr $+50		;bb3d	18 30 	. 0 
	ld h,b			;bb3f	60 	` 
	ld a,(hl)			;bb40	7e 	~ 
	nop			;bb41	00 	. 
	inc a			;bb42	3c 	< 
	ld h,d			;bb43	62 	b 
	call 0d1d1h		;bb44	cd d1 d1 	. . . 
	call 03c62h		;bb47	cd 62 3c 	. b < 
	ld a,h			;bb4a	7c 	| 
	call m,0f8e0h		;bb4b	fc e0 f8 	. . . 
	ld a,h			;bb4e	7c 	| 
lbb4fh:
	inc e			;bb4f	1c 	. 
	call m,07cf8h		;bb50	fc f8 7c 	. . | 
	call m,0f8c0h		;bb53	fc c0 f8 	. . . 
	ret m			;bb56	f8 	. 
	ret nz			;bb57	c0 	. 
	call m,07c7ch		;bb58	fc 7c 7c 	. | | 
	call m,0dcc0h		;bb5b	fc c0 dc 	. . . 
	call c,0fccch		;bb5e	dc cc fc 	. . . 
	ld a,h			;bb61	7c 	| 
	jr c,lbb9ch		;bb62	38 38 	8 8 
	ld a,h			;bb64	7c 	| 
	ld e,h			;bb65	5c 	\ 
	ld e,h			;bb66	5c 	\ 
lbb67h:
	adc a,0beh		;bb67	ce be 	. . 
	cp (hl)			;bb69	be 	. 
	dec de			;bb6a	1b 	. 
	nop			;bb6b	00 	. 
	adc a,l			;bb6c	8d 	. 
	ld bc,00f03h		;bb6d	01 03 0f 	. . . 
	rra			;bb70	1f 	. 
	rra			;bb71	1f 	. 
	nop			;bb72	00 	. 
	nop			;bb73	00 	. 
	ret nz			;bb74	c0 	. 
	ret po			;bb75	e0 	. 
	ret m			;bb76	f8 	. 
	cp 0ffh		;bb77	fe ff 	. . 
	rst 38h			;bb79	ff 	. 
	inc b			;bb7a	04 	. 
	nop			;bb7b	00 	. 
	add a,h			;bb7c	84 	. 
	ld b,00fh		;bb7d	06 0f 	. . 
	sbc a,a			;bb7f	9f 	. 
	rst 0			;bb80	c7 	. 
	ex af,af'			;bb81	08 	. 
	nop			;bb82	00 	. 
	adc a,d			;bb83	8a 	. 
	add hl,de			;bb84	19 	. 
	rla			;bb85	17 	. 
	rra			;bb86	1f 	. 
	ccf			;bb87	3f 	? 
	ld a,a			;bb88	7f 	 
	ld a,a			;bb89	7f 	 
	ld (hl),b			;bb8a	70 	p 
	ld (hl),b			;bb8b	70 	p 
	pop af			;bb8c	f1 	. 
	xor 004h		;bb8d	ee 04 	. . 
	rst 38h			;bb8f	ff 	. 
	ld (bc),a			;bb90	02 	. 
	inc bc			;bb91	03 	. 
	add a,c			;bb92	81 	. 
	rst 0			;bb93	c7 	. 
	dec b			;bb94	05 	. 
	rst 20h			;bb95	e7 	. 
	add a,d			;bb96	82 	. 
	and 0ech		;bb97	e6 ec 	. . 
	ex af,af'			;bb99	08 	. 
	nop			;bb9a	00 	. 
	adc a,d			;bb9b	8a 	. 
lbb9ch:
	inc c			;bb9c	0c 	. 
	ld b,001h		;bb9d	06 01 	. . 
	rlca			;bb9f	07 	. 
	ld c,017h		;bba0	0e 17 	. . 
	rrca			;bba2	0f 	. 
	ld (hl),l			;bba3	75 	u 
	ld b,00fh		;bba4	06 0f 	. . 
	inc b			;bba6	04 	. 
	rst 38h			;bba7	ff 	. 
	adc a,d			;bba8	8a 	. 
	cp a			;bba9	bf 	. 
lbbaah:
	rst 38h			;bbaa	ff 	. 
	ret m			;bbab	f8 	. 
	ret m			;bbac	f8 	. 
	ret po			;bbad	e0 	. 
	rst 8			;bbae	cf 	. 
	and 0a6h		;bbaf	e6 a6 	. . 
	and e			;bbb1	a3 	. 
	and e			;bbb2	a3 	. 
	ex af,af'			;bbb3	08 	. 
	nop			;bbb4	00 	. 
	ld (bc),a			;bbb5	02 	. 
	ld a,e			;bbb6	7b 	{ 
	adc a,b			;bbb7	88 	. 
	ld (hl),e			;bbb8	73 	s 
	ld a,(hl)			;bbb9	7e 	~ 
	cpl			;bbba	2f 	/ 
	dec sp			;bbbb	3b 	; 
	rra			;bbbc	1f 	. 
	rra			;bbbd	1f 	. 
	ld a,h			;bbbe	7c 	| 
	ei			;bbbf	fb 	. 
	inc bc			;bbc0	03 	. 
	rst 30h			;bbc1	f7 	. 
	ld (bc),a			;bbc2	02 	. 
	rst 38h			;bbc3	ff 	. 
	adc a,c			;bbc4	89 	. 
	call m,0e1d1h		;bbc5	fc d1 e1 	. . . 
	di			;bbc8	f3 	. 
	rst 38h			;bbc9	ff 	. 
	call m,0d0f0h		;bbca	fc f0 d0 	. . . 
	nop			;bbcd	00 	. 
	inc bc			;bbce	03 	. 
	add a,b			;bbcf	80 	. 
	inc bc			;bbd0	03 	. 
	nop			;bbd1	00 	. 
	ld (bc),a			;bbd2	02 	. 
	add a,b			;bbd3	80 	. 
	ld (bc),a			;bbd4	02 	. 
	nop			;bbd5	00 	. 
	inc b			;bbd6	04 	. 
	ld hl,01e91h		;bbd7	21 91 1e 	! . . 
	nop			;bbda	00 	. 
	nop			;bbdb	00 	. 
	ret nz			;bbdc	c0 	. 
	pop bc			;bbdd	c1 	. 
	pop bc			;bbde	c1 	. 
	ret nz			;bbdf	c0 	. 
	ret nz			;bbe0	c0 	. 
	rst 28h			;bbe1	ef 	. 
	nop			;bbe2	00 	. 
	inc l			;bbe3	2c 	, 
	sub h			;bbe4	94 	. 
	call nc,090d0h		;bbe5	d4 d0 90 	. . . 
	jr nc,lbbaah		;bbe8	30 c0 	0 . 
	inc e			;bbea	1c 	. 
	nop			;bbeb	00 	. 
	add a,l			;bbec	85 	. 
	inc b			;bbed	04 	. 
	ld bc,00f03h		;bbee	01 03 0f 	. . . 
	rra			;bbf1	1f 	. 
	inc bc			;bbf2	03 	. 
	nop			;bbf3	00 	. 
	add a,l			;bbf4	85 	. 
	ret nz			;bbf5	c0 	. 
	ret po			;bbf6	e0 	. 
	ret m			;bbf7	f8 	. 
	cp 0ffh		;bbf8	fe ff 	. . 
	dec b			;bbfa	05 	. 
	nop			;bbfb	00 	. 
	add a,e			;bbfc	83 	. 
	ld b,(hl)			;bbfd	46 	F 
	rrca			;bbfe	0f 	. 
	sbc a,a			;bbff	9f 	. 
	ex af,af'			;bc00	08 	. 
	nop			;bc01	00 	. 
	adc a,e			;bc02	8b 	. 
	rlca			;bc03	07 	. 
	ld b,005h		;bc04	06 05 	. . 
	ld b,a			;bc06	47 	G 
	rrca			;bc07	0f 	. 
	rra			;bc08	1f 	. 
	dec de			;bc09	1b 	. 
	rra			;bc0a	1f 	. 
	rst 38h			;bc0b	ff 	. 
	ld a,h			;bc0c	7c 	| 
	ei			;bc0d	fb 	. 
	dec b			;bc0e	05 	. 
	rst 38h			;bc0f	ff 	. 
	adc a,b			;bc10	88 	. 
	pop af			;bc11	f1 	. 
	ld (hl),c			;bc12	71 	q 
	cp c			;bc13	b9 	. 
	ld sp,hl			;bc14	f9 	. 
lbc15h:
	ld sp,hl			;bc15	f9 	. 
	defb 0fdh,0f1h,0f9h	;illegal sequence		;bc16	fd f1 f9 	. . . 
	rlca			;bc19	07 	. 
	ret nz			;bc1a	c0 	. 
	sbc a,(hl)			;bc1b	9e 	. 
	add a,b			;bc1c	80 	. 
	inc c			;bc1d	0c 	. 
	rlca			;bc1e	07 	. 
	dec c			;bc1f	0d 	. 
	rlca			;bc20	07 	. 
	dec sp			;bc21	3b 	; 
	ld a,c			;bc22	79 	y 
	ld a,e			;bc23	7b 	{ 
	halt			;bc24	76 	v 
	inc bc			;bc25	03 	. 
	di			;bc26	f3 	. 
	rst 38h			;bc27	ff 	. 
	ld a,a			;bc28	7f 	 
	rst 38h			;bc29	ff 	. 
	defb 0fdh,0bbh,0f7h	;illegal sequence		;bc2a	fd bb f7 	. . . 
	ld a,l			;bc2d	7d 	} 
	ld a,h			;bc2e	7c 	| 
	ld (hl),b			;bc2f	70 	p 
	add a,a			;bc30	87 	. 
	inc bc			;bc31	03 	. 
	pop bc			;bc32	c1 	. 
	pop hl			;bc33	e1 	. 
	pop af			;bc34	f1 	. 
	add a,b			;bc35	80 	. 
	nop			;bc36	00 	. 
	nop			;bc37	00 	. 
	add a,b			;bc38	80 	. 
	nop			;bc39	00 	. 
	inc bc			;bc3a	03 	. 
	add a,b			;bc3b	80 	. 
	add a,l			;bc3c	85 	. 
	ld a,a			;bc3d	7f 	 
	rrca			;bc3e	0f 	. 
	rlca			;bc3f	07 	. 
	inc bc			;bc40	03 	. 
	nop			;bc41	00 	. 
	inc bc			;bc42	03 	. 
	ld bc,0f702h		;bc43	01 02 f7 	. . . 
	ld (bc),a			;bc46	02 	. 
	rst 38h			;bc47	ff 	. 
	adc a,l			;bc48	8d 	. 
	ld a,(hl)			;bc49	7e 	~ 
	rst 38h			;bc4a	ff 	. 
	nop			;bc4b	00 	. 
	jr $-7		;bc4c	18 f7 	. . 
	rst 38h			;bc4e	ff 	. 
	call m,010d0h		;bc4f	fc d0 10 	. . . 
	jr nz,lbc54h		;bc52	20 00 	  . 
lbc54h:
	ld bc,00380h		;bc54	01 80 03 	. . . 
	nop			;bc57	00 	. 
	inc b			;bc58	04 	. 
	add a,b			;bc59	80 	. 
	add a,d			;bc5a	82 	. 
	nop			;bc5b	00 	. 
	ld bc,04304h		;bc5c	01 04 43 	. . C 
	sub d			;bc5f	92 	. 
	dec a			;bc60	3d 	= 
	nop			;bc61	00 	. 
	nop			;bc62	00 	. 
	add a,c			;bc63	81 	. 
	add a,e			;bc64	83 	. 
	add a,e			;bc65	83 	. 
	add a,c			;bc66	81 	. 
	add a,b			;bc67	80 	. 
	rst 18h			;bc68	df 	. 
	nop			;bc69	00 	. 
	ld e,b			;bc6a	58 	X 
	jr z,lbc15h		;bc6b	28 a8 	( . 
	and b			;bc6d	a0 	. 
	jr nz,lbcd0h		;bc6e	20 60 	  ` 
	add a,b			;bc70	80 	. 
	nop			;bc71	00 	. 
	nop			;bc72	00 	. 
	inc bc			;bc73	03 	. 
	nop			;bc74	00 	. 
	add a,l			;bc75	85 	. 
	ld bc,03f0fh		;bc76	01 0f 3f 	. . ? 
	ld a,a			;bc79	7f 	 
	rst 38h			;bc7a	ff 	. 
	inc bc			;bc7b	03 	. 
	nop			;bc7c	00 	. 
	dec b			;bc7d	05 	. 
	rst 38h			;bc7e	ff 	. 
	inc b			;bc7f	04 	. 
	nop			;bc80	00 	. 
	adc a,h			;bc81	8c 	. 
	ret po			;bc82	e0 	. 
	ret m			;bc83	f8 	. 
	call m,03ffeh		;bc84	fc fe 3f 	. . ? 
	ccf			;bc87	3f 	? 
	ld a,a			;bc88	7f 	 
	ld a,a			;bc89	7f 	 
lbc8ah:
	rst 38h			;bc8a	ff 	. 
	rst 38h			;bc8b	ff 	. 
	ld sp,hl			;bc8c	f9 	. 
	ld sp,0ff06h		;bc8d	31 06 ff 	1 . . 
	add a,d			;bc90	82 	. 
	ex (sp),hl			;bc91	e3 	. 
	pop hl			;bc92	e1 	. 
	ld b,0ffh		;bc93	06 ff 	. . 
	ld (bc),a			;bc95	02 	. 
	ei			;bc96	fb 	. 
	add a,c			;bc97	81 	. 
	ret nz			;bc98	c0 	. 
	inc bc			;bc99	03 	. 
	ret po			;bc9a	e0 	. 
	inc b			;bc9b	04 	. 
	ret p			;bc9c	f0 	. 
	sub b			;bc9d	90 	. 
	scf			;bc9e	37 	7 
	add hl,sp			;bc9f	39 	9 
	ld sp,0ff70h		;bca0	31 70 ff 	1 p . 
	ret m			;bca3	f8 	. 
	rst 38h			;bca4	ff 	. 
	call m,0f1eeh		;bca5	fc ee f1 	. . . 
	ret po			;bca8	e0 	. 
	ld h,b			;bca9	60 	` 
	rst 38h			;bcaa	ff 	. 
	rlca			;bcab	07 	. 
	add a,e			;bcac	83 	. 
	inc bc			;bcad	03 	. 
	rlca			;bcae	07 	. 
	ei			;bcaf	fb 	. 
	add a,c			;bcb0	81 	. 
	rst 38h			;bcb1	ff 	. 
	ld b,0f0h		;bcb2	06 f0 	. . 
	ld (bc),a			;bcb4	02 	. 
	ret po			;bcb5	e0 	. 
	adc a,l			;bcb6	8d 	. 
	ld e,00fh		;bcb7	1e 0f 	. . 
	rlca			;bcb9	07 	. 
	rrca			;bcba	0f 	. 
	rra			;bcbb	1f 	. 
	ccf			;bcbc	3f 	? 
	ld a,a			;bcbd	7f 	 
	rst 38h			;bcbe	ff 	. 
	inc b			;bcbf	04 	. 
	push af			;bcc0	f5 	. 
	defb 0fdh,0ffh,0ffh	;illegal sequence		;bcc1	fd ff ff 	. . . 
	inc bc			;bcc4	03 	. 
	cp 002h		;bcc5	fe 02 	. . 
	rst 38h			;bcc7	ff 	. 
	adc a,d			;bcc8	8a 	. 
	ld a,a			;bcc9	7f 	 
lbccah:
	ld (hl),b			;bcca	70 	p 
	ld d,b			;bccb	50 	P 
	djnz $-110		;bccc	10 90 	. . 
	sub b			;bcce	90 	. 
	ret p			;bccf	f0 	. 
lbcd0h:
	ret po			;bcd0	e0 	. 
	ret nz			;bcd1	c0 	. 
	add a,b			;bcd2	80 	. 
	inc b			;bcd3	04 	. 
	ld b,b			;bcd4	40 	@ 
	inc bc			;bcd5	03 	. 
	rst 38h			;bcd6	ff 	. 
	add a,l			;bcd7	85 	. 
	adc a,a			;bcd8	8f 	. 
	ld a,a			;bcd9	7f 	 
	ld a,a			;bcda	7f 	 
	ccf			;bcdb	3f 	? 
	daa			;bcdc	27 	' 
	dec b			;bcdd	05 	. 
	rst 38h			;bcde	ff 	. 
	add a,l			;bcdf	85 	. 
	ei			;bce0	fb 	. 
	ret po			;bce1	e0 	. 
	add a,e			;bce2	83 	. 
	call pe,003f0h		;bce3	ec f0 03 	. . . 
	ret po			;bce6	e0 	. 
	add a,e			;bce7	83 	. 
	ret nz			;bce8	c0 	. 
	inc hl			;bce9	23 	# 
	cp 004h		;bcea	fe 04 	. . 
	jr nz,lbc8ah		;bcec	20 9c 	  . 
	ld b,b			;bcee	40 	@ 
	ret nz			;bcef	c0 	. 
	ld b,b			;bcf0	40 	@ 
	ld b,b			;bcf1	40 	@ 
	rst 38h			;bcf2	ff 	. 
	ld hl,06262h		;bcf3	21 62 62 	! b b 
	ld h,e			;bcf6	63 	c 
	ld b,e			;bcf7	43 	C 
	ld hl,0f81fh		;bcf8	21 1f f8 	! . . 
	ret po			;bcfb	e0 	. 
	pop hl			;bcfc	e1 	. 
	pop hl			;bcfd	e1 	. 
	ret po			;bcfe	e0 	. 
	ld h,b			;bcff	60 	` 
	ret p			;bd00	f0 	. 
	rst 38h			;bd01	ff 	. 
	ld (de),a			;bd02	12 	. 
	adc a,d			;bd03	8a 	. 
	jp z,l88cch		;bd04	ca cc 88 	. . . 
	ex af,af'			;bd07	08 	. 
	jr nc,lbccah		;bd08	30 c0 	0 . 
	inc b			;bd0a	04 	. 
	nop			;bd0b	00 	. 
	add a,h			;bd0c	84 	. 
	inc bc			;bd0d	03 	. 
	rra			;bd0e	1f 	. 
	ld a,a			;bd0f	7f 	 
	rst 38h			;bd10	ff 	. 
	inc b			;bd11	04 	. 
	nop			;bd12	00 	. 
	add a,c			;bd13	81 	. 
	cp 003h		;bd14	fe 03 	. . 
	rst 38h			;bd16	ff 	. 
	dec b			;bd17	05 	. 
	nop			;bd18	00 	. 
	adc a,e			;bd19	8b 	. 
	ret nz			;bd1a	c0 	. 
	ret p			;bd1b	f0 	. 
	ret m			;bd1c	f8 	. 
	rra			;bd1d	1f 	. 
	ccf			;bd1e	3f 	? 
	ccf			;bd1f	3f 	? 
	ld a,e			;bd20	7b 	{ 
	ld a,a			;bd21	7f 	 
	rst 38h			;bd22	ff 	. 
	rst 38h			;bd23	ff 	. 
	ld sp,hl			;bd24	f9 	. 
	rlca			;bd25	07 	. 
	rst 38h			;bd26	ff 	. 
	add a,c			;bd27	81 	. 
	ex (sp),hl			;bd28	e3 	. 
	dec b			;bd29	05 	. 
	rst 38h			;bd2a	ff 	. 
	add a,l			;bd2b	85 	. 
	cp a			;bd2c	bf 	. 
	rst 38h			;bd2d	ff 	. 
	ei			;bd2e	fb 	. 
	ret nz			;bd2f	c0 	. 
	ret nz			;bd30	c0 	. 
	inc bc			;bd31	03 	. 
	ret po			;bd32	e0 	. 
	inc bc			;bd33	03 	. 
	ret p			;bd34	f0 	. 
	sbc a,b			;bd35	98 	. 
	inc c			;bd36	0c 	. 
	dec c			;bd37	0d 	. 
	ld c,00ch		;bd38	0e 0c 	. . 
	inc e			;bd3a	1c 	. 
	ccf			;bd3b	3f 	? 
	ccf			;bd3c	3f 	? 
	cp a			;bd3d	bf 	. 
	ld a,b			;bd3e	78 	x 
	ei			;bd3f	fb 	. 
	ld a,h			;bd40	7c 	| 
	ld a,b			;bd41	78 	x 
	jr $+1		;bd42	18 ff 	. . 
	rst 28h			;bd44	ef 	. 
	rst 38h			;bd45	ff 	. 
	ld a,(hl)			;bd46	7e 	~ 
	cp (hl)			;bd47	be 	. 
	ld a,(hl)			;bd48	7e 	~ 
	ld a,03eh		;bd49	3e 3e 	> > 
	jp m,07efeh		;bd4b	fa fe 7e 	. . ~ 
	rlca			;bd4e	07 	. 
	call m,0f88dh		;bd4f	fc 8d f8 	. . . 
	inc e			;bd52	1c 	. 
	rrca			;bd53	0f 	. 
	rra			;bd54	1f 	. 
	ccf			;bd55	3f 	? 
	ld a,a			;bd56	7f 	 
	rst 38h			;bd57	ff 	. 
	rst 38h			;bd58	ff 	. 
	rst 28h			;bd59	ef 	. 
	ld (bc),a			;bd5a	02 	. 
	jp p,0fefeh		;bd5b	f2 fe fe 	. . . 
lbd5eh:
	inc b			;bd5e	04 	. 
	rst 38h			;bd5f	ff 	. 
	adc a,h			;bd60	8c 	. 
	ld a,a			;bd61	7f 	 
	rst 38h			;bd62	ff 	. 
	rst 38h			;bd63	ff 	. 
	ld a,b			;bd64	78 	x 
	ret z			;bd65	c8 	. 
lbd66h:
	ret pe			;bd66	e8 	. 
	call m,0fce0h		;bd67	fc e0 fc 	. . . 
	ret m			;bd6a	f8 	. 
	ret p			;bd6b	f0 	. 
	ld h,b			;bd6c	60 	` 
	inc b			;bd6d	04 	. 
	jr nz,$-121		;bd6e	20 85 	  . 
	adc a,a			;bd70	8f 	. 
	ld a,a			;bd71	7f 	 
	rra			;bd72	1f 	. 
	rrca			;bd73	0f 	. 
lbd74h:
	inc bc			;bd74	03 	. 
	inc bc			;bd75	03 	. 
	ld (bc),a			;bd76	02 	. 
	ld (bc),a			;bd77	02 	. 
	rst 38h			;bd78	ff 	. 
	sub d			;bd79	92 	. 
	ei			;bd7a	fb 	. 
	ret p			;bd7b	f0 	. 
	sub c			;bd7c	91 	. 
	nop			;bd7d	00 	. 
	nop			;bd7e	00 	. 
	rlca			;bd7f	07 	. 
	ret po			;bd80	e0 	. 
	ret po			;bd81	e0 	. 
	ret nz			;bd82	c0 	. 
	jr nz,lbd66h		;bd83	20 e1 	  . 
	ld e,000h		;bd85	1e 00 	. . 
	cp 020h		;bd87	fe 20 	.   
	jr nz,$+66		;bd89	20 40 	  @ 
	ret nz			;bd8b	c0 	. 
	inc b			;bd8c	04 	. 
	ld b,b			;bd8d	40 	@ 
	sbc a,b			;bd8e	98 	. 
	ld a,a			;bd8f	7f 	 
	ld b,e			;bd90	43 	C 
	push bc			;bd91	c5 	. 
	push bc			;bd92	c5 	. 
	rst 0			;bd93	c7 	. 
	add a,(hl)			;bd94	86 	. 
	ld b,e			;bd95	43 	C 
	ccf			;bd96	3f 	? 
	ret p			;bd97	f0 	. 
	pop bc			;bd98	c1 	. 
	jp 0c1c3h		;bd99	c3 c3 c1 	. . . 
	ret nz			;bd9c	c0 	. 
lbd9dh:
	ret po			;bd9d	e0 	. 
	rst 38h			;bd9e	ff 	. 
	inc h			;bd9f	24 	$ 
	inc d			;bda0	14 	. 
	sub h			;bda1	94 	. 
	sbc a,b			;bda2	98 	. 
	djnz lbdb5h		;bda3	10 10 	. . 
	ld h,b			;bda5	60 	` 
	add a,b			;bda6	80 	. 
	nop			;bda7	00 	. 
	inc bc			;bda8	03 	. 
	nop			;bda9	00 	. 
	add a,l			;bdaa	85 	. 
	ld bc,0300eh		;bdab	01 0e 30 	. . 0 
	ld b,b			;bdae	40 	@ 
	add a,b			;bdaf	80 	. 
	inc bc			;bdb0	03 	. 
	nop			;bdb1	00 	. 
	add a,c			;bdb2	81 	. 
	rst 38h			;bdb3	ff 	. 
	ex af,af'			;bdb4	08 	. 
lbdb5h:
	nop			;bdb5	00 	. 
	adc a,h			;bdb6	8c 	. 
	ret po			;bdb7	e0 	. 
	jr lbdbeh		;bdb8	18 04 	. . 
	ld (bc),a			;bdba	02 	. 
	jr nz,$+34		;bdbb	20 20 	    
	ld b,b			;bdbd	40 	@ 
lbdbeh:
	ld b,b			;bdbe	40 	@ 
	add a,b			;bdbf	80 	. 
	add a,b			;bdc0	80 	. 
	ret po			;bdc1	e0 	. 
	jr nz,lbdd2h		;bdc2	20 0e 	  . 
	nop			;bdc4	00 	. 
	ld (bc),a			;bdc5	02 	. 
	inc b			;bdc6	04 	. 
	add a,c			;bdc7	81 	. 
	ld b,b			;bdc8	40 	@ 
	inc bc			;bdc9	03 	. 
	jr nz,lbdd0h		;bdca	20 04 	  . 
	djnz lbd5eh		;bdcc	10 90 	. . 
	ld h,028h		;bdce	26 28 	& ( 
lbdd0h:
	jr nz,lbe15h		;bdd0	20 43 	  C 
lbdd2h:
	add a,b			;bdd2	80 	. 
	add a,b			;bdd3	80 	. 
	adc a,a			;bdd4	8f 	. 
	adc a,a			;bdd5	8f 	. 
	ld c,011h		;bdd6	0e 11 	. . 
	nop			;bdd8	00 	. 
	add a,b			;bdd9	80 	. 
	nop			;bdda	00 	. 
	nop			;bddb	00 	. 
	call m,007fch		;bddc	fc fc 07 	. . . 
	inc b			;bddf	04 	. 
	add a,c			;bde0	81 	. 
	nop			;bde1	00 	. 
	ld b,010h		;bde2	06 10 	. . 
	ld (bc),a			;bde4	02 	. 
	jr nz,lbd74h		;bde5	20 8d 	  . 
	inc de			;bde7	13 	. 
	add hl,bc			;bde8	09 	. 
	ld b,008h		;bde9	06 08 	. . 
	djnz lbe0dh		;bdeb	10 20 	.   
	ld (hl),b			;bded	70 	p 
lbdeeh:
	adc a,b			;bdee	88 	. 
	ld sp,hl			;bdef	f9 	. 
	ret p			;bdf0	f0 	. 
	ld (hl),b			;bdf1	70 	p 
	inc e			;bdf2	1c 	. 
	inc e			;bdf3	1c 	. 
	inc bc			;bdf4	03 	. 
	ld c,003h		;bdf5	0e 03 	. . 
	nop			;bdf7	00 	. 
	adc a,c			;bdf8	89 	. 
	jr nc,lbe34h		;bdf9	30 39 	0 9 
	ld a,c			;bdfb	79 	y 
	ld a,h			;bdfc	7c 	| 
	ld a,h			;bdfd	7c 	| 
	djnz lbe20h		;bdfe	10 20 	.   
	ret nz			;be00	c0 	. 
	add a,b			;be01	80 	. 
	inc b			;be02	04 	. 
	ret nz			;be03	c0 	. 
	ld (bc),a			;be04	02 	. 
	add a,h			;be05	84 	. 
	adc a,b			;be06	88 	. 
	adc a,b			;be07	88 	. 
	ret p			;be08	f0 	. 
	ld b,b			;be09	40 	@ 
	ld b,b			;be0a	40 	@ 
	add hl,sp			;be0b	39 	9 
	ccf			;be0c	3f 	? 
lbe0dh:
	rra			;be0d	1f 	. 
	inc e			;be0e	1c 	. 
	inc bc			;be0f	03 	. 
	jr c,lbd9dh		;be10	38 8b 	8 . 
	ld a,h			;be12	7c 	| 
	rst 28h			;be13	ef 	. 
	rst 38h			;be14	ff 	. 
lbe15h:
	ld a,01eh		;be15	3e 1e 	> . 
	inc c			;be17	0c 	. 
	nop			;be18	00 	. 
	inc bc			;be19	03 	. 
	cpl			;be1a	2f 	/ 
	rst 28h			;be1b	ef 	. 
	rst 38h			;be1c	ff 	. 
	inc bc			;be1d	03 	. 
	ld h,b			;be1e	60 	` 
	add a,c			;be1f	81 	. 
lbe20h:
	ret po			;be20	e0 	. 
	inc b			;be21	04 	. 
	ret nz			;be22	c0 	. 
	sbc a,b			;be23	98 	. 
	rst 38h			;be24	ff 	. 
	ccf			;be25	3f 	? 
	ld e,(hl)			;be26	5e 	^ 
	ld e,(hl)			;be27	5e 	^ 
	ld e,a			;be28	5f 	_ 
	ld a,a			;be29	7f 	 
	ccf			;be2a	3f 	? 
	rra			;be2b	1f 	. 
	rst 38h			;be2c	ff 	. 
	rst 38h			;be2d	ff 	. 
	cp 0feh		;be2e	fe fe 	. . 
	rst 38h			;be30	ff 	. 
	ld a,a			;be31	7f 	 
	rst 38h			;be32	ff 	. 
	rst 38h			;be33	ff 	. 
lbe34h:
	cp 07eh		;be34	fe 7e 	. ~ 
	ld a,03ch		;be36	3e 3c 	> < 
	ld a,b			;be38	78 	x 
	ret m			;be39	f8 	. 
	ret p			;be3a	f0 	. 
	ret nz			;be3b	c0 	. 
	inc b			;be3c	04 	. 
	nop			;be3d	00 	. 
	add a,h			;be3e	84 	. 
	inc bc			;be3f	03 	. 
	inc e			;be40	1c 	. 
	ld h,b			;be41	60 	` 
	add a,b			;be42	80 	. 
	inc b			;be43	04 	. 
	nop			;be44	00 	. 
	add a,d			;be45	82 	. 
	cp 001h		;be46	fe 01 	. . 
	rlca			;be48	07 	. 
	nop			;be49	00 	. 
	adc a,e			;be4a	8b 	. 
	ret nz			;be4b	c0 	. 
	jr nc,lbe56h		;be4c	30 08 	0 . 
	djnz lbe70h		;be4e	10 20 	.   
	jr nz,$+66		;be50	20 40 	  @ 
	ld b,b			;be52	40 	@ 
	add a,b			;be53	80 	. 
	add a,b			;be54	80 	. 
	ret po			;be55	e0 	. 
lbe56h:
	rrca			;be56	0f 	. 
	nop			;be57	00 	. 
	add a,e			;be58	83 	. 
	inc b			;be59	04 	. 
	ld b,b			;be5a	40 	@ 
	ld b,b			;be5b	40 	@ 
	inc bc			;be5c	03 	. 
	jr nz,lbe62h		;be5d	20 03 	  . 
	djnz $-121		;be5f	10 85 	. . 
	ex af,af'			;be61	08 	. 
lbe62h:
	add hl,bc			;be62	09 	. 
	ld a,(bc)			;be63	0a 	. 
	ex af,af'			;be64	08 	. 
	djnz lbe6ah		;be65	10 03 	. . 
	jr nz,lbdeeh		;be67	20 85 	  . 
	nop			;be69	00 	. 
lbe6ah:
	add a,e			;be6a	83 	. 
	inc b			;be6b	04 	. 
	nop			;be6c	00 	. 
	ret po			;be6d	e0 	. 
	inc bc			;be6e	03 	. 
	nop			;be6f	00 	. 
lbe70h:
	add a,e			;be70	83 	. 
	ld bc,04181h		;be71	01 81 41 	. . A 
	dec b			;be74	05 	. 
lbe75h:
	ld bc,00407h		;be75	01 07 04 	. . . 
	sub c			;be78	91 	. 
	ex af,af'			;be79	08 	. 
	inc de			;be7a	13 	. 
	rrca			;be7b	0f 	. 
	jr lbeb6h		;be7c	18 38 	. 8 
	ld b,h			;be7e	44 	D 
	add a,h			;be7f	84 	. 
	add a,h			;be80	84 	. 
	sbc a,b			;be81	98 	. 
	call m,01efch		;be82	fc fc 1e 	. . . 
	ld b,006h		;be85	06 06 	. . 
	ld c,00ch		;be87	0e 0c 	. . 
	jr lbe8eh		;be89	18 03 	. . 
	add a,b			;be8b	80 	. 
	adc a,d			;be8c	8a 	. 
	ld a,b			;be8d	78 	x 
lbe8eh:
	call m,01e3eh		;be8e	fc 3e 1e 	. > . 
	ld c,004h		;be91	0e 04 	. . 
	ex af,af'			;be93	08 	. 
	djnz lbef6h		;be94	10 60 	. ` 
	ret po			;be96	e0 	. 
	inc bc			;be97	03 	. 
	ld h,b			;be98	60 	` 
	add a,h			;be99	84 	. 
	ret m			;be9a	f8 	. 
lbe9bh:
	ld a,h			;be9b	7c 	| 
	rra			;be9c	1f 	. 
	rrca			;be9d	0f 	. 
	inc b			;be9e	04 	. 
	inc bc			;be9f	03 	. 
	add a,l			;bea0	85 	. 
	jr lbe9bh		;bea1	18 f8 	. . 
	call m,sub_8fe3h		;bea3	fc e3 8f 	. . . 
	inc bc			;bea6	03 	. 
	rst 38h			;bea7	ff 	. 
	add a,l			;bea8	85 	. 
	ex af,af'			;bea9	08 	. 
	nop			;beaa	00 	. 
	inc hl			;beab	23 	# 
	rst 28h			;beac	ef 	. 
	rst 28h			;bead	ef 	. 
	inc bc			;beae	03 	. 
	rst 38h			;beaf	ff 	. 
	add a,d			;beb0	82 	. 
	ld h,b			;beb1	60 	` 
	ret po			;beb2	e0 	. 
lbeb3h:
	ld b,0c0h		;beb3	06 c0 	. . 
	ld (bc),a			;beb5	02 	. 
lbeb6h:
	ld a,a			;beb6	7f 	 
	ld (bc),a			;beb7	02 	. 
	cp l			;beb8	bd 	. 
	adc a,c			;beb9	89 	. 
	cp a			;beba	bf 	. 
	cp 07fh		;bebb	fe 7f 	.  
	ccf			;bebd	3f 	? 
	rst 38h			;bebe	ff 	. 
	cp 0fch		;bebf	fe fc 	. . 
	call m,003feh		;bec1	fc fe 03 	. . . 
	rst 38h			;bec4	ff 	. 
	ld (bc),a			;bec5	02 	. 
	call m,07c86h		;bec6	fc 86 7c 	. . | 
	ld a,b			;bec9	78 	x 
	ret p			;beca	f0 	. 
	ret p			;becb	f0 	. 
	ret po			;becc	e0 	. 
	add a,b			;becd	80 	. 
	nop			;bece	00 	. 
	ld e,h			;becf	5c 	\ 
	nop			;bed0	00 	. 
	adc a,(hl)			;bed1	8e 	. 
	ld bc,00008h		;bed2	01 08 00 	. . . 
	ld (bc),a			;bed5	02 	. 
	ld b,00eh		;bed6	06 0e 	. . 
	ld a,a			;bed8	7f 	 
	rra			;bed9	1f 	. 
	rra			;beda	1f 	. 
	rrca			;bedb	0f 	. 
	ld c,a			;bedc	4f 	O 
	rrca			;bedd	0f 	. 
	nop			;bede	00 	. 
	ld b,b			;bedf	40 	@ 
	inc bc			;bee0	03 	. 
	ret nz			;bee1	c0 	. 
	inc bc			;bee2	03 	. 
	add a,b			;bee3	80 	. 
	ld a,(bc)			;bee4	0a 	. 
	nop			;bee5	00 	. 
	adc a,b			;bee6	88 	. 
	inc b			;bee7	04 	. 
	ld bc,00410h		;bee8	01 10 04 	. . . 
	add hl,de			;beeb	19 	. 
	rlca			;beec	07 	. 
	sbc a,h			;beed	9c 	. 
	jr lbef3h		;beee	18 03 	. . 
	jr nc,lbe75h		;bef0	30 83 	0 . 
	ld a,b			;bef2	78 	x 
lbef3h:
	ret p			;bef3	f0 	. 
	add a,b			;bef4	80 	. 
	ld h,e			;bef5	63 	c 
lbef6h:
	nop			;bef6	00 	. 
	add a,l			;bef7	85 	. 
	ld b,b			;bef8	40 	@ 
	nop			;bef9	00 	. 
	nop			;befa	00 	. 
	inc b			;befb	04 	. 
	add a,b			;befc	80 	. 
	ld b,000h		;befd	06 00 	. . 
	add a,c			;beff	81 	. 
	djnz lbf08h		;bf00	10 06 	. . 
	nop			;bf02	00 	. 
	add a,e			;bf03	83 	. 
	inc b			;bf04	04 	. 
	ex af,af'			;bf05	08 	. 
	add a,b			;bf06	80 	. 
	add hl,bc			;bf07	09 	. 
lbf08h:
	nop			;bf08	00 	. 
	adc a,a			;bf09	8f 	. 
	rlca			;bf0a	07 	. 
	ld a,(bc)			;bf0b	0a 	. 
	nop			;bf0c	00 	. 
	nop			;bf0d	00 	. 
	ld (bc),a			;bf0e	02 	. 
	nop			;bf0f	00 	. 
	ld bc,0f303h		;bf10	01 03 f3 	. . . 
	rra			;bf13	1f 	. 
	add a,a			;bf14	87 	. 
	rlca			;bf15	07 	. 
	inc c			;bf16	0c 	. 
	ld c,b			;bf17	48 	H 
	djnz lbf1dh		;bf18	10 03 	. . 
	nop			;bf1a	00 	. 
	add a,c			;bf1b	81 	. 
	add a,b			;bf1c	80 	. 
lbf1dh:
	inc c			;bf1d	0c 	. 
	nop			;bf1e	00 	. 
	add a,h			;bf1f	84 	. 
	ex af,af'			;bf20	08 	. 
	inc c			;bf21	0c 	. 
	rlca			;bf22	07 	. 
	inc bc			;bf23	03 	. 
	inc b			;bf24	04 	. 
	nop			;bf25	00 	. 
	add a,l			;bf26	85 	. 
	djnz $-14		;bf27	10 f0 	. . 
	ret m			;bf29	f8 	. 
	call m,02b70h		;bf2a	fc 70 2b 	. p + 
	nop			;bf2d	00 	. 
	nop			;bf2e	00 	. 
	inc bc			;bf2f	03 	. 
	djnz lbeb3h		;bf30	10 81 	. . 
	rra			;bf32	1f 	. 
	inc bc			;bf33	03 	. 
	nop			;bf34	00 	. 
	add a,c			;bf35	81 	. 
	rst 38h			;bf36	ff 	. 
	inc bc			;bf37	03 	. 
	nop			;bf38	00 	. 
	sub c			;bf39	91 	. 
	rst 38h			;bf3a	ff 	. 
	inc b			;bf3b	04 	. 
	inc b			;bf3c	04 	. 
	ex af,af'			;bf3d	08 	. 
	ret p			;bf3e	f0 	. 
	nop			;bf3f	00 	. 
	ld bc,0f806h		;bf40	01 06 f8 	. . . 
	ld b,h			;bf43	44 	D 
	ld b,h			;bf44	44 	D 
	ld b,d			;bf45	42 	B 
	ld h,c			;bf46	61 	a 
	and b			;bf47	a0 	. 
	djnz lbf56h		;bf48	10 0c 	. . 
	inc bc			;bf4a	03 	. 
	inc bc			;bf4b	03 	. 
	ld (bc),a			;bf4c	02 	. 
	sub c			;bf4d	91 	. 
	cp 003h		;bf4e	fe 03 	. . 
	inc bc			;bf50	03 	. 
	ld (bc),a			;bf51	02 	. 
	cp 020h		;bf52	fe 20 	.   
	jr nz,$+18		;bf54	20 10 	  . 
lbf56h:
	rrca			;bf56	0f 	. 
	nop			;bf57	00 	. 
	nop			;bf58	00 	. 
	ret nz			;bf59	c0 	. 
	ccf			;bf5a	3f 	? 
	ld bc,00201h		;bf5b	01 01 02 	. . . 
	call m,00003h		;bf5e	fc 03 00 	. . . 
	add a,d			;bf61	82 	. 
	rst 38h			;bf62	ff 	. 
	jr $+5		;bf63	18 03 	. . 
	djnz lbf6ah		;bf65	10 03 	. . 
	ld bc,0ff8dh		;bf67	01 8d ff 	. . . 
lbf6ah:
	ld b,b			;bf6a	40 	@ 
	add a,b			;bf6b	80 	. 
	add a,b			;bf6c	80 	. 
	add a,a			;bf6d	87 	. 
	inc b			;bf6e	04 	. 
	inc c			;bf6f	0c 	. 
	inc c			;bf70	0c 	. 
	rst 38h			;bf71	ff 	. 
	inc b			;bf72	04 	. 
	ld (bc),a			;bf73	02 	. 
	ld (bc),a			;bf74	02 	. 
lbf75h:
	cp 003h		;bf75	fe 03 	. . 
	nop			;bf77	00 	. 
	add a,d			;bf78	82 	. 
	rst 38h			;bf79	ff 	. 
	jr nz,lbf7fh		;bf7a	20 03 	  . 
	djnz lbf81h		;bf7c	10 03 	. . 
	ex af,af'			;bf7e	08 	. 
lbf7fh:
	add a,c			;bf7f	81 	. 
	ret m			;bf80	f8 	. 
lbf81h:
	nop			;bf81	00 	. 
	rlca			;bf82	07 	. 
	nop			;bf83	00 	. 
	add a,c			;bf84	81 	. 
	inc bc			;bf85	03 	. 
	ld b,000h		;bf86	06 00 	. . 
	ld (bc),a			;bf88	02 	. 
	rst 38h			;bf89	ff 	. 
	ld b,000h		;bf8a	06 00 	. . 
	add a,d			;bf8c	82 	. 
	add a,e			;bf8d	83 	. 
	adc a,a			;bf8e	8f 	. 
	ld b,000h		;bf8f	06 00 	. . 
	ld (bc),a			;bf91	02 	. 
	call m,00006h		;bf92	fc 06 00 	. . . 
	add a,d			;bf95	82 	. 
	rra			;bf96	1f 	. 
	ccf			;bf97	3f 	? 
	ld b,000h		;bf98	06 00 	. . 
	ld (bc),a			;bf9a	02 	. 
	ret po			;bf9b	e0 	. 
	ld b,000h		;bf9c	06 00 	. . 
	add a,d			;bf9e	82 	. 
	inc bc			;bf9f	03 	. 
	rrca			;bfa0	0f 	. 
	ld b,000h		;bfa1	06 00 	. . 
	add a,d			;bfa3	82 	. 
	add a,b			;bfa4	80 	. 
	pop hl			;bfa5	e1 	. 
	ld b,000h		;bfa6	06 00 	. . 
	add a,l			;bfa8	85 	. 
	ret po			;bfa9	e0 	. 
	djnz lbfb3h		;bfaa	10 07 	. . 
	rlca			;bfac	07 	. 
	rrca			;bfad	0f 	. 
	dec b			;bfae	05 	. 
	ld c,08ah		;bfaf	0e 8a 	. . 
	rst 38h			;bfb1	ff 	. 
	add a,b			;bfb2	80 	. 
lbfb3h:
	ld a,a			;bfb3	7f 	 
	rst 38h			;bfb4	ff 	. 
	rst 38h			;bfb5	ff 	. 
	ret p			;bfb6	f0 	. 
	ret p			;bfb7	f0 	. 
	rst 38h			;bfb8	ff 	. 
	rst 38h			;bfb9	ff 	. 
	nop			;bfba	00 	. 
	inc bc			;bfbb	03 	. 
	rst 38h			;bfbc	ff 	. 
	ld (bc),a			;bfbd	02 	. 
	nop			;bfbe	00 	. 
	add a,(hl)			;bfbf	86 	. 
	ret m			;bfc0	f8 	. 
	sbc a,a			;bfc1	9f 	. 
	ld e,0bdh		;bfc2	1e bd 	. . 
	cp e			;bfc4	bb 	. 
	cp e			;bfc5	bb 	. 
	inc bc			;bfc6	03 	. 
	dec sp			;bfc7	3b 	; 
	add a,d			;bfc8	82 	. 
	rst 38h			;bfc9	ff 	. 
	nop			;bfca	00 	. 
	inc bc			;bfcb	03 	. 
	rst 38h			;bfcc	ff 	. 
	add a,l			;bfcd	85 	. 
	ret nz			;bfce	c0 	. 
	add a,b			;bfcf	80 	. 
	rst 38h			;bfd0	ff 	. 
	call m,00300h		;bfd1	fc 00 03 	. . . 
	defb 0fdh,002h,001h	;illegal sequence		;bfd4	fd 02 01 	. . . 
	adc a,e			;bfd7	8b 	. 
	ld sp,hl			;bfd8	f9 	. 
	rst 38h			;bfd9	ff 	. 
	ret p			;bfda	f0 	. 
	rst 28h			;bfdb	ef 	. 
	rst 18h			;bfdc	df 	. 
	rst 18h			;bfdd	df 	. 
	call c,0dddch		;bfde	dc dc dd 	. . . 
	rst 38h			;bfe1	ff 	. 
	nop			;bfe2	00 	. 
	inc bc			;bfe3	03 	. 
	rst 38h			;bfe4	ff 	. 
	ld (bc),a			;bfe5	02 	. 
	nop			;bfe6	00 	. 
	add a,e			;bfe7	83 	. 
	rst 38h			;bfe8	ff 	. 
	ret po			;bfe9	e0 	. 
	nop			;bfea	00 	. 
	inc bc			;bfeb	03 	. 
	ret po			;bfec	e0 	. 
	ld (bc),a			;bfed	02 	. 
	nop			;bfee	00 	. 
	sbc a,(hl)			;bfef	9e 	. 
	ret po			;bff0	e0 	. 
	rra			;bff1	1f 	. 
	ld e,03dh		;bff2	1e 3d 	. = 
	dec a			;bff4	3d 	= 
	ld a,e			;bff5	7b 	{ 
	ld a,e			;bff6	7b 	{ 
	rst 30h			;bff7	f7 	. 
	rst 30h			;bff8	f7 	. 
	jp p,07af2h		;bff9	f2 f2 7a 	. . z 
	ld a,d			;bffc	7a 	z 
	cp l			;bffd	bd 	. 
	cp h			;bffe	bc 	. 
	defb 0deh		;bfff	de 	. 
