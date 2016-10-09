OPTION	DOTNAME
.text$	SEGMENT ALIGN(64) 'CODE'

PUBLIC	whirlpool_block

ALIGN	16
whirlpool_block	PROC PUBLIC
	mov	QWORD PTR[8+rsp],rdi	;WIN64 prologue
	mov	QWORD PTR[16+rsp],rsi
	mov	rax,rsp
$L$SEH_begin_whirlpool_block::
	mov	rdi,rcx
	mov	rsi,rdx
	mov	rdx,r8


	push	rbx
	push	rbp
	push	r12
	push	r13
	push	r14
	push	r15

	mov	r11,rsp
	sub	rsp,128+40
	and	rsp,-64

	lea	r10,QWORD PTR[128+rsp]
	mov	QWORD PTR[r10],rdi
	mov	QWORD PTR[8+r10],rsi
	mov	QWORD PTR[16+r10],rdx
	mov	QWORD PTR[32+r10],r11
$L$prologue::

	mov	rbx,r10
	lea	rbp,QWORD PTR[$L$table]

	xor	rcx,rcx
	xor	rdx,rdx
	mov	r8,QWORD PTR[rdi]
	mov	r9,QWORD PTR[8+rdi]
	mov	r10,QWORD PTR[16+rdi]
	mov	r11,QWORD PTR[24+rdi]
	mov	r12,QWORD PTR[32+rdi]
	mov	r13,QWORD PTR[40+rdi]
	mov	r14,QWORD PTR[48+rdi]
	mov	r15,QWORD PTR[56+rdi]
$L$outerloop::
	mov	QWORD PTR[rsp],r8
	mov	QWORD PTR[8+rsp],r9
	mov	QWORD PTR[16+rsp],r10
	mov	QWORD PTR[24+rsp],r11
	mov	QWORD PTR[32+rsp],r12
	mov	QWORD PTR[40+rsp],r13
	mov	QWORD PTR[48+rsp],r14
	mov	QWORD PTR[56+rsp],r15
	xor	r8,QWORD PTR[rsi]
	xor	r9,QWORD PTR[8+rsi]
	xor	r10,QWORD PTR[16+rsi]
	xor	r11,QWORD PTR[24+rsi]
	xor	r12,QWORD PTR[32+rsi]
	xor	r13,QWORD PTR[40+rsi]
	xor	r14,QWORD PTR[48+rsi]
	xor	r15,QWORD PTR[56+rsi]
	mov	QWORD PTR[((64+0))+rsp],r8
	mov	QWORD PTR[((64+8))+rsp],r9
	mov	QWORD PTR[((64+16))+rsp],r10
	mov	QWORD PTR[((64+24))+rsp],r11
	mov	QWORD PTR[((64+32))+rsp],r12
	mov	QWORD PTR[((64+40))+rsp],r13
	mov	QWORD PTR[((64+48))+rsp],r14
	mov	QWORD PTR[((64+56))+rsp],r15
	xor	rsi,rsi
	mov	QWORD PTR[24+rbx],rsi
ALIGN	16
$L$round::
	mov	r8,QWORD PTR[4096+rsi*8+rbp]
	mov	eax,DWORD PTR[rsp]
	mov	ebx,DWORD PTR[4+rsp]
	mov	cl,al
	mov	dl,ah
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	shr	eax,16
	xor	r8,QWORD PTR[rsi*8+rbp]
	mov	r9,QWORD PTR[7+rdi*8+rbp]
	mov	cl,al
	mov	dl,ah
	mov	eax,DWORD PTR[((0+8))+rsp]
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	mov	r10,QWORD PTR[6+rsi*8+rbp]
	mov	r11,QWORD PTR[5+rdi*8+rbp]
	mov	cl,bl
	mov	dl,bh
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	shr	ebx,16
	mov	r12,QWORD PTR[4+rsi*8+rbp]
	mov	r13,QWORD PTR[3+rdi*8+rbp]
	mov	cl,bl
	mov	dl,bh
	mov	ebx,DWORD PTR[((0+8+4))+rsp]
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	mov	r14,QWORD PTR[2+rsi*8+rbp]
	mov	r15,QWORD PTR[1+rdi*8+rbp]
	mov	cl,al
	mov	dl,ah
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	shr	eax,16
	xor	r9,QWORD PTR[rsi*8+rbp]
	xor	r10,QWORD PTR[7+rdi*8+rbp]
	mov	cl,al
	mov	dl,ah
	mov	eax,DWORD PTR[((8+8))+rsp]
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	xor	r11,QWORD PTR[6+rsi*8+rbp]
	xor	r12,QWORD PTR[5+rdi*8+rbp]
	mov	cl,bl
	mov	dl,bh
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	shr	ebx,16
	xor	r13,QWORD PTR[4+rsi*8+rbp]
	xor	r14,QWORD PTR[3+rdi*8+rbp]
	mov	cl,bl
	mov	dl,bh
	mov	ebx,DWORD PTR[((8+8+4))+rsp]
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	xor	r15,QWORD PTR[2+rsi*8+rbp]
	xor	r8,QWORD PTR[1+rdi*8+rbp]
	mov	cl,al
	mov	dl,ah
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	shr	eax,16
	xor	r10,QWORD PTR[rsi*8+rbp]
	xor	r11,QWORD PTR[7+rdi*8+rbp]
	mov	cl,al
	mov	dl,ah
	mov	eax,DWORD PTR[((16+8))+rsp]
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	xor	r12,QWORD PTR[6+rsi*8+rbp]
	xor	r13,QWORD PTR[5+rdi*8+rbp]
	mov	cl,bl
	mov	dl,bh
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	shr	ebx,16
	xor	r14,QWORD PTR[4+rsi*8+rbp]
	xor	r15,QWORD PTR[3+rdi*8+rbp]
	mov	cl,bl
	mov	dl,bh
	mov	ebx,DWORD PTR[((16+8+4))+rsp]
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	xor	r8,QWORD PTR[2+rsi*8+rbp]
	xor	r9,QWORD PTR[1+rdi*8+rbp]
	mov	cl,al
	mov	dl,ah
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	shr	eax,16
	xor	r11,QWORD PTR[rsi*8+rbp]
	xor	r12,QWORD PTR[7+rdi*8+rbp]
	mov	cl,al
	mov	dl,ah
	mov	eax,DWORD PTR[((24+8))+rsp]
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	xor	r13,QWORD PTR[6+rsi*8+rbp]
	xor	r14,QWORD PTR[5+rdi*8+rbp]
	mov	cl,bl
	mov	dl,bh
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	shr	ebx,16
	xor	r15,QWORD PTR[4+rsi*8+rbp]
	xor	r8,QWORD PTR[3+rdi*8+rbp]
	mov	cl,bl
	mov	dl,bh
	mov	ebx,DWORD PTR[((24+8+4))+rsp]
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	xor	r9,QWORD PTR[2+rsi*8+rbp]
	xor	r10,QWORD PTR[1+rdi*8+rbp]
	mov	cl,al
	mov	dl,ah
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	shr	eax,16
	xor	r12,QWORD PTR[rsi*8+rbp]
	xor	r13,QWORD PTR[7+rdi*8+rbp]
	mov	cl,al
	mov	dl,ah
	mov	eax,DWORD PTR[((32+8))+rsp]
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	xor	r14,QWORD PTR[6+rsi*8+rbp]
	xor	r15,QWORD PTR[5+rdi*8+rbp]
	mov	cl,bl
	mov	dl,bh
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	shr	ebx,16
	xor	r8,QWORD PTR[4+rsi*8+rbp]
	xor	r9,QWORD PTR[3+rdi*8+rbp]
	mov	cl,bl
	mov	dl,bh
	mov	ebx,DWORD PTR[((32+8+4))+rsp]
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	xor	r10,QWORD PTR[2+rsi*8+rbp]
	xor	r11,QWORD PTR[1+rdi*8+rbp]
	mov	cl,al
	mov	dl,ah
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	shr	eax,16
	xor	r13,QWORD PTR[rsi*8+rbp]
	xor	r14,QWORD PTR[7+rdi*8+rbp]
	mov	cl,al
	mov	dl,ah
	mov	eax,DWORD PTR[((40+8))+rsp]
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	xor	r15,QWORD PTR[6+rsi*8+rbp]
	xor	r8,QWORD PTR[5+rdi*8+rbp]
	mov	cl,bl
	mov	dl,bh
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	shr	ebx,16
	xor	r9,QWORD PTR[4+rsi*8+rbp]
	xor	r10,QWORD PTR[3+rdi*8+rbp]
	mov	cl,bl
	mov	dl,bh
	mov	ebx,DWORD PTR[((40+8+4))+rsp]
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	xor	r11,QWORD PTR[2+rsi*8+rbp]
	xor	r12,QWORD PTR[1+rdi*8+rbp]
	mov	cl,al
	mov	dl,ah
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	shr	eax,16
	xor	r14,QWORD PTR[rsi*8+rbp]
	xor	r15,QWORD PTR[7+rdi*8+rbp]
	mov	cl,al
	mov	dl,ah
	mov	eax,DWORD PTR[((48+8))+rsp]
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	xor	r8,QWORD PTR[6+rsi*8+rbp]
	xor	r9,QWORD PTR[5+rdi*8+rbp]
	mov	cl,bl
	mov	dl,bh
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	shr	ebx,16
	xor	r10,QWORD PTR[4+rsi*8+rbp]
	xor	r11,QWORD PTR[3+rdi*8+rbp]
	mov	cl,bl
	mov	dl,bh
	mov	ebx,DWORD PTR[((48+8+4))+rsp]
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	xor	r12,QWORD PTR[2+rsi*8+rbp]
	xor	r13,QWORD PTR[1+rdi*8+rbp]
	mov	cl,al
	mov	dl,ah
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	shr	eax,16
	xor	r15,QWORD PTR[rsi*8+rbp]
	xor	r8,QWORD PTR[7+rdi*8+rbp]
	mov	cl,al
	mov	dl,ah
	mov	eax,DWORD PTR[((56+8))+rsp]
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	xor	r9,QWORD PTR[6+rsi*8+rbp]
	xor	r10,QWORD PTR[5+rdi*8+rbp]
	mov	cl,bl
	mov	dl,bh
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	shr	ebx,16
	xor	r11,QWORD PTR[4+rsi*8+rbp]
	xor	r12,QWORD PTR[3+rdi*8+rbp]
	mov	cl,bl
	mov	dl,bh
	mov	ebx,DWORD PTR[((56+8+4))+rsp]
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	xor	r13,QWORD PTR[2+rsi*8+rbp]
	xor	r14,QWORD PTR[1+rdi*8+rbp]
	mov	QWORD PTR[rsp],r8
	mov	QWORD PTR[8+rsp],r9
	mov	QWORD PTR[16+rsp],r10
	mov	QWORD PTR[24+rsp],r11
	mov	QWORD PTR[32+rsp],r12
	mov	QWORD PTR[40+rsp],r13
	mov	QWORD PTR[48+rsp],r14
	mov	QWORD PTR[56+rsp],r15
	mov	cl,al
	mov	dl,ah
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	shr	eax,16
	xor	r8,QWORD PTR[rsi*8+rbp]
	xor	r9,QWORD PTR[7+rdi*8+rbp]
	mov	cl,al
	mov	dl,ah
	mov	eax,DWORD PTR[((64+0+8))+rsp]
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	xor	r10,QWORD PTR[6+rsi*8+rbp]
	xor	r11,QWORD PTR[5+rdi*8+rbp]
	mov	cl,bl
	mov	dl,bh
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	shr	ebx,16
	xor	r12,QWORD PTR[4+rsi*8+rbp]
	xor	r13,QWORD PTR[3+rdi*8+rbp]
	mov	cl,bl
	mov	dl,bh
	mov	ebx,DWORD PTR[((64+0+8+4))+rsp]
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	xor	r14,QWORD PTR[2+rsi*8+rbp]
	xor	r15,QWORD PTR[1+rdi*8+rbp]
	mov	cl,al
	mov	dl,ah
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	shr	eax,16
	xor	r9,QWORD PTR[rsi*8+rbp]
	xor	r10,QWORD PTR[7+rdi*8+rbp]
	mov	cl,al
	mov	dl,ah
	mov	eax,DWORD PTR[((64+8+8))+rsp]
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	xor	r11,QWORD PTR[6+rsi*8+rbp]
	xor	r12,QWORD PTR[5+rdi*8+rbp]
	mov	cl,bl
	mov	dl,bh
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	shr	ebx,16
	xor	r13,QWORD PTR[4+rsi*8+rbp]
	xor	r14,QWORD PTR[3+rdi*8+rbp]
	mov	cl,bl
	mov	dl,bh
	mov	ebx,DWORD PTR[((64+8+8+4))+rsp]
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	xor	r15,QWORD PTR[2+rsi*8+rbp]
	xor	r8,QWORD PTR[1+rdi*8+rbp]
	mov	cl,al
	mov	dl,ah
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	shr	eax,16
	xor	r10,QWORD PTR[rsi*8+rbp]
	xor	r11,QWORD PTR[7+rdi*8+rbp]
	mov	cl,al
	mov	dl,ah
	mov	eax,DWORD PTR[((64+16+8))+rsp]
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	xor	r12,QWORD PTR[6+rsi*8+rbp]
	xor	r13,QWORD PTR[5+rdi*8+rbp]
	mov	cl,bl
	mov	dl,bh
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	shr	ebx,16
	xor	r14,QWORD PTR[4+rsi*8+rbp]
	xor	r15,QWORD PTR[3+rdi*8+rbp]
	mov	cl,bl
	mov	dl,bh
	mov	ebx,DWORD PTR[((64+16+8+4))+rsp]
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	xor	r8,QWORD PTR[2+rsi*8+rbp]
	xor	r9,QWORD PTR[1+rdi*8+rbp]
	mov	cl,al
	mov	dl,ah
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	shr	eax,16
	xor	r11,QWORD PTR[rsi*8+rbp]
	xor	r12,QWORD PTR[7+rdi*8+rbp]
	mov	cl,al
	mov	dl,ah
	mov	eax,DWORD PTR[((64+24+8))+rsp]
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	xor	r13,QWORD PTR[6+rsi*8+rbp]
	xor	r14,QWORD PTR[5+rdi*8+rbp]
	mov	cl,bl
	mov	dl,bh
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	shr	ebx,16
	xor	r15,QWORD PTR[4+rsi*8+rbp]
	xor	r8,QWORD PTR[3+rdi*8+rbp]
	mov	cl,bl
	mov	dl,bh
	mov	ebx,DWORD PTR[((64+24+8+4))+rsp]
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	xor	r9,QWORD PTR[2+rsi*8+rbp]
	xor	r10,QWORD PTR[1+rdi*8+rbp]
	mov	cl,al
	mov	dl,ah
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	shr	eax,16
	xor	r12,QWORD PTR[rsi*8+rbp]
	xor	r13,QWORD PTR[7+rdi*8+rbp]
	mov	cl,al
	mov	dl,ah
	mov	eax,DWORD PTR[((64+32+8))+rsp]
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	xor	r14,QWORD PTR[6+rsi*8+rbp]
	xor	r15,QWORD PTR[5+rdi*8+rbp]
	mov	cl,bl
	mov	dl,bh
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	shr	ebx,16
	xor	r8,QWORD PTR[4+rsi*8+rbp]
	xor	r9,QWORD PTR[3+rdi*8+rbp]
	mov	cl,bl
	mov	dl,bh
	mov	ebx,DWORD PTR[((64+32+8+4))+rsp]
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	xor	r10,QWORD PTR[2+rsi*8+rbp]
	xor	r11,QWORD PTR[1+rdi*8+rbp]
	mov	cl,al
	mov	dl,ah
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	shr	eax,16
	xor	r13,QWORD PTR[rsi*8+rbp]
	xor	r14,QWORD PTR[7+rdi*8+rbp]
	mov	cl,al
	mov	dl,ah
	mov	eax,DWORD PTR[((64+40+8))+rsp]
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	xor	r15,QWORD PTR[6+rsi*8+rbp]
	xor	r8,QWORD PTR[5+rdi*8+rbp]
	mov	cl,bl
	mov	dl,bh
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	shr	ebx,16
	xor	r9,QWORD PTR[4+rsi*8+rbp]
	xor	r10,QWORD PTR[3+rdi*8+rbp]
	mov	cl,bl
	mov	dl,bh
	mov	ebx,DWORD PTR[((64+40+8+4))+rsp]
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	xor	r11,QWORD PTR[2+rsi*8+rbp]
	xor	r12,QWORD PTR[1+rdi*8+rbp]
	mov	cl,al
	mov	dl,ah
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	shr	eax,16
	xor	r14,QWORD PTR[rsi*8+rbp]
	xor	r15,QWORD PTR[7+rdi*8+rbp]
	mov	cl,al
	mov	dl,ah
	mov	eax,DWORD PTR[((64+48+8))+rsp]
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	xor	r8,QWORD PTR[6+rsi*8+rbp]
	xor	r9,QWORD PTR[5+rdi*8+rbp]
	mov	cl,bl
	mov	dl,bh
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	shr	ebx,16
	xor	r10,QWORD PTR[4+rsi*8+rbp]
	xor	r11,QWORD PTR[3+rdi*8+rbp]
	mov	cl,bl
	mov	dl,bh
	mov	ebx,DWORD PTR[((64+48+8+4))+rsp]
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	xor	r12,QWORD PTR[2+rsi*8+rbp]
	xor	r13,QWORD PTR[1+rdi*8+rbp]
	mov	cl,al
	mov	dl,ah
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	shr	eax,16
	xor	r15,QWORD PTR[rsi*8+rbp]
	xor	r8,QWORD PTR[7+rdi*8+rbp]
	mov	cl,al
	mov	dl,ah

	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	xor	r9,QWORD PTR[6+rsi*8+rbp]
	xor	r10,QWORD PTR[5+rdi*8+rbp]
	mov	cl,bl
	mov	dl,bh
	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	shr	ebx,16
	xor	r11,QWORD PTR[4+rsi*8+rbp]
	xor	r12,QWORD PTR[3+rdi*8+rbp]
	mov	cl,bl
	mov	dl,bh

	lea	rsi,QWORD PTR[rcx*1+rcx]
	lea	rdi,QWORD PTR[rdx*1+rdx]
	xor	r13,QWORD PTR[2+rsi*8+rbp]
	xor	r14,QWORD PTR[1+rdi*8+rbp]
	lea	rbx,QWORD PTR[128+rsp]
	mov	rsi,QWORD PTR[24+rbx]
	add	rsi,1
	cmp	rsi,10
	je	$L$roundsdone

	mov	QWORD PTR[24+rbx],rsi
	mov	QWORD PTR[((64+0))+rsp],r8
	mov	QWORD PTR[((64+8))+rsp],r9
	mov	QWORD PTR[((64+16))+rsp],r10
	mov	QWORD PTR[((64+24))+rsp],r11
	mov	QWORD PTR[((64+32))+rsp],r12
	mov	QWORD PTR[((64+40))+rsp],r13
	mov	QWORD PTR[((64+48))+rsp],r14
	mov	QWORD PTR[((64+56))+rsp],r15
	jmp	$L$round
ALIGN	16
$L$roundsdone::
	mov	rdi,QWORD PTR[rbx]
	mov	rsi,QWORD PTR[8+rbx]
	mov	rax,QWORD PTR[16+rbx]
	xor	r8,QWORD PTR[rsi]
	xor	r9,QWORD PTR[8+rsi]
	xor	r10,QWORD PTR[16+rsi]
	xor	r11,QWORD PTR[24+rsi]
	xor	r12,QWORD PTR[32+rsi]
	xor	r13,QWORD PTR[40+rsi]
	xor	r14,QWORD PTR[48+rsi]
	xor	r15,QWORD PTR[56+rsi]
	xor	r8,QWORD PTR[rdi]
	xor	r9,QWORD PTR[8+rdi]
	xor	r10,QWORD PTR[16+rdi]
	xor	r11,QWORD PTR[24+rdi]
	xor	r12,QWORD PTR[32+rdi]
	xor	r13,QWORD PTR[40+rdi]
	xor	r14,QWORD PTR[48+rdi]
	xor	r15,QWORD PTR[56+rdi]
	mov	QWORD PTR[rdi],r8
	mov	QWORD PTR[8+rdi],r9
	mov	QWORD PTR[16+rdi],r10
	mov	QWORD PTR[24+rdi],r11
	mov	QWORD PTR[32+rdi],r12
	mov	QWORD PTR[40+rdi],r13
	mov	QWORD PTR[48+rdi],r14
	mov	QWORD PTR[56+rdi],r15
	lea	rsi,QWORD PTR[64+rsi]
	sub	rax,1
	jz	$L$alldone
	mov	QWORD PTR[8+rbx],rsi
	mov	QWORD PTR[16+rbx],rax
	jmp	$L$outerloop
$L$alldone::
	mov	rsi,QWORD PTR[32+rbx]
	mov	r15,QWORD PTR[rsi]
	mov	r14,QWORD PTR[8+rsi]
	mov	r13,QWORD PTR[16+rsi]
	mov	r12,QWORD PTR[24+rsi]
	mov	rbp,QWORD PTR[32+rsi]
	mov	rbx,QWORD PTR[40+rsi]
	lea	rsp,QWORD PTR[48+rsi]
$L$epilogue::
	mov	rdi,QWORD PTR[8+rsp]	;WIN64 epilogue
	mov	rsi,QWORD PTR[16+rsp]
	DB	0F3h,0C3h		;repret
$L$SEH_end_whirlpool_block::
whirlpool_block	ENDP

ALIGN	64

$L$table::
DB	24,24,96,24,192,120,48,216,24,24,96,24,192,120,48,216
DB	35,35,140,35,5,175,70,38,35,35,140,35,5,175,70,38
DB	198,198,63,198,126,249,145,184,198,198,63,198,126,249,145,184
DB	232,232,135,232,19,111,205,251,232,232,135,232,19,111,205,251
DB	135,135,38,135,76,161,19,203,135,135,38,135,76,161,19,203
DB	184,184,218,184,169,98,109,17,184,184,218,184,169,98,109,17
DB	1,1,4,1,8,5,2,9,1,1,4,1,8,5,2,9
DB	79,79,33,79,66,110,158,13,79,79,33,79,66,110,158,13
DB	54,54,216,54,173,238,108,155,54,54,216,54,173,238,108,155
DB	166,166,162,166,89,4,81,255,166,166,162,166,89,4,81,255
DB	210,210,111,210,222,189,185,12,210,210,111,210,222,189,185,12
DB	245,245,243,245,251,6,247,14,245,245,243,245,251,6,247,14
DB	121,121,249,121,239,128,242,150,121,121,249,121,239,128,242,150
DB	111,111,161,111,95,206,222,48,111,111,161,111,95,206,222,48
DB	145,145,126,145,252,239,63,109,145,145,126,145,252,239,63,109
DB	82,82,85,82,170,7,164,248,82,82,85,82,170,7,164,248
DB	96,96,157,96,39,253,192,71,96,96,157,96,39,253,192,71
DB	188,188,202,188,137,118,101,53,188,188,202,188,137,118,101,53
DB	155,155,86,155,172,205,43,55,155,155,86,155,172,205,43,55
DB	142,142,2,142,4,140,1,138,142,142,2,142,4,140,1,138
DB	163,163,182,163,113,21,91,210,163,163,182,163,113,21,91,210
DB	12,12,48,12,96,60,24,108,12,12,48,12,96,60,24,108
DB	123,123,241,123,255,138,246,132,123,123,241,123,255,138,246,132
DB	53,53,212,53,181,225,106,128,53,53,212,53,181,225,106,128
DB	29,29,116,29,232,105,58,245,29,29,116,29,232,105,58,245
DB	224,224,167,224,83,71,221,179,224,224,167,224,83,71,221,179
DB	215,215,123,215,246,172,179,33,215,215,123,215,246,172,179,33
DB	194,194,47,194,94,237,153,156,194,194,47,194,94,237,153,156
DB	46,46,184,46,109,150,92,67,46,46,184,46,109,150,92,67
DB	75,75,49,75,98,122,150,41,75,75,49,75,98,122,150,41
DB	254,254,223,254,163,33,225,93,254,254,223,254,163,33,225,93
DB	87,87,65,87,130,22,174,213,87,87,65,87,130,22,174,213
DB	21,21,84,21,168,65,42,189,21,21,84,21,168,65,42,189
DB	119,119,193,119,159,182,238,232,119,119,193,119,159,182,238,232
DB	55,55,220,55,165,235,110,146,55,55,220,55,165,235,110,146
DB	229,229,179,229,123,86,215,158,229,229,179,229,123,86,215,158
DB	159,159,70,159,140,217,35,19,159,159,70,159,140,217,35,19
DB	240,240,231,240,211,23,253,35,240,240,231,240,211,23,253,35
DB	74,74,53,74,106,127,148,32,74,74,53,74,106,127,148,32
DB	218,218,79,218,158,149,169,68,218,218,79,218,158,149,169,68
DB	88,88,125,88,250,37,176,162,88,88,125,88,250,37,176,162
DB	201,201,3,201,6,202,143,207,201,201,3,201,6,202,143,207
DB	41,41,164,41,85,141,82,124,41,41,164,41,85,141,82,124
DB	10,10,40,10,80,34,20,90,10,10,40,10,80,34,20,90
DB	177,177,254,177,225,79,127,80,177,177,254,177,225,79,127,80
DB	160,160,186,160,105,26,93,201,160,160,186,160,105,26,93,201
DB	107,107,177,107,127,218,214,20,107,107,177,107,127,218,214,20
DB	133,133,46,133,92,171,23,217,133,133,46,133,92,171,23,217
DB	189,189,206,189,129,115,103,60,189,189,206,189,129,115,103,60
DB	93,93,105,93,210,52,186,143,93,93,105,93,210,52,186,143
DB	16,16,64,16,128,80,32,144,16,16,64,16,128,80,32,144
DB	244,244,247,244,243,3,245,7,244,244,247,244,243,3,245,7
DB	203,203,11,203,22,192,139,221,203,203,11,203,22,192,139,221
DB	62,62,248,62,237,198,124,211,62,62,248,62,237,198,124,211
DB	5,5,20,5,40,17,10,45,5,5,20,5,40,17,10,45
DB	103,103,129,103,31,230,206,120,103,103,129,103,31,230,206,120
DB	228,228,183,228,115,83,213,151,228,228,183,228,115,83,213,151
DB	39,39,156,39,37,187,78,2,39,39,156,39,37,187,78,2
DB	65,65,25,65,50,88,130,115,65,65,25,65,50,88,130,115
DB	139,139,22,139,44,157,11,167,139,139,22,139,44,157,11,167
DB	167,167,166,167,81,1,83,246,167,167,166,167,81,1,83,246
DB	125,125,233,125,207,148,250,178,125,125,233,125,207,148,250,178
DB	149,149,110,149,220,251,55,73,149,149,110,149,220,251,55,73
DB	216,216,71,216,142,159,173,86,216,216,71,216,142,159,173,86
DB	251,251,203,251,139,48,235,112,251,251,203,251,139,48,235,112
DB	238,238,159,238,35,113,193,205,238,238,159,238,35,113,193,205
DB	124,124,237,124,199,145,248,187,124,124,237,124,199,145,248,187
DB	102,102,133,102,23,227,204,113,102,102,133,102,23,227,204,113
DB	221,221,83,221,166,142,167,123,221,221,83,221,166,142,167,123
DB	23,23,92,23,184,75,46,175,23,23,92,23,184,75,46,175
DB	71,71,1,71,2,70,142,69,71,71,1,71,2,70,142,69
DB	158,158,66,158,132,220,33,26,158,158,66,158,132,220,33,26
DB	202,202,15,202,30,197,137,212,202,202,15,202,30,197,137,212
DB	45,45,180,45,117,153,90,88,45,45,180,45,117,153,90,88
DB	191,191,198,191,145,121,99,46,191,191,198,191,145,121,99,46
DB	7,7,28,7,56,27,14,63,7,7,28,7,56,27,14,63
DB	173,173,142,173,1,35,71,172,173,173,142,173,1,35,71,172
DB	90,90,117,90,234,47,180,176,90,90,117,90,234,47,180,176
DB	131,131,54,131,108,181,27,239,131,131,54,131,108,181,27,239
DB	51,51,204,51,133,255,102,182,51,51,204,51,133,255,102,182
DB	99,99,145,99,63,242,198,92,99,99,145,99,63,242,198,92
DB	2,2,8,2,16,10,4,18,2,2,8,2,16,10,4,18
DB	170,170,146,170,57,56,73,147,170,170,146,170,57,56,73,147
DB	113,113,217,113,175,168,226,222,113,113,217,113,175,168,226,222
DB	200,200,7,200,14,207,141,198,200,200,7,200,14,207,141,198
DB	25,25,100,25,200,125,50,209,25,25,100,25,200,125,50,209
DB	73,73,57,73,114,112,146,59,73,73,57,73,114,112,146,59
DB	217,217,67,217,134,154,175,95,217,217,67,217,134,154,175,95
DB	242,242,239,242,195,29,249,49,242,242,239,242,195,29,249,49
DB	227,227,171,227,75,72,219,168,227,227,171,227,75,72,219,168
DB	91,91,113,91,226,42,182,185,91,91,113,91,226,42,182,185
DB	136,136,26,136,52,146,13,188,136,136,26,136,52,146,13,188
DB	154,154,82,154,164,200,41,62,154,154,82,154,164,200,41,62
DB	38,38,152,38,45,190,76,11,38,38,152,38,45,190,76,11
DB	50,50,200,50,141,250,100,191,50,50,200,50,141,250,100,191
DB	176,176,250,176,233,74,125,89,176,176,250,176,233,74,125,89
DB	233,233,131,233,27,106,207,242,233,233,131,233,27,106,207,242
DB	15,15,60,15,120,51,30,119,15,15,60,15,120,51,30,119
DB	213,213,115,213,230,166,183,51,213,213,115,213,230,166,183,51
DB	128,128,58,128,116,186,29,244,128,128,58,128,116,186,29,244
DB	190,190,194,190,153,124,97,39,190,190,194,190,153,124,97,39
DB	205,205,19,205,38,222,135,235,205,205,19,205,38,222,135,235
DB	52,52,208,52,189,228,104,137,52,52,208,52,189,228,104,137
DB	72,72,61,72,122,117,144,50,72,72,61,72,122,117,144,50
DB	255,255,219,255,171,36,227,84,255,255,219,255,171,36,227,84
DB	122,122,245,122,247,143,244,141,122,122,245,122,247,143,244,141
DB	144,144,122,144,244,234,61,100,144,144,122,144,244,234,61,100
DB	95,95,97,95,194,62,190,157,95,95,97,95,194,62,190,157
DB	32,32,128,32,29,160,64,61,32,32,128,32,29,160,64,61
DB	104,104,189,104,103,213,208,15,104,104,189,104,103,213,208,15
DB	26,26,104,26,208,114,52,202,26,26,104,26,208,114,52,202
DB	174,174,130,174,25,44,65,183,174,174,130,174,25,44,65,183
DB	180,180,234,180,201,94,117,125,180,180,234,180,201,94,117,125
DB	84,84,77,84,154,25,168,206,84,84,77,84,154,25,168,206
DB	147,147,118,147,236,229,59,127,147,147,118,147,236,229,59,127
DB	34,34,136,34,13,170,68,47,34,34,136,34,13,170,68,47
DB	100,100,141,100,7,233,200,99,100,100,141,100,7,233,200,99
DB	241,241,227,241,219,18,255,42,241,241,227,241,219,18,255,42
DB	115,115,209,115,191,162,230,204,115,115,209,115,191,162,230,204
DB	18,18,72,18,144,90,36,130,18,18,72,18,144,90,36,130
DB	64,64,29,64,58,93,128,122,64,64,29,64,58,93,128,122
DB	8,8,32,8,64,40,16,72,8,8,32,8,64,40,16,72
DB	195,195,43,195,86,232,155,149,195,195,43,195,86,232,155,149
DB	236,236,151,236,51,123,197,223,236,236,151,236,51,123,197,223
DB	219,219,75,219,150,144,171,77,219,219,75,219,150,144,171,77
DB	161,161,190,161,97,31,95,192,161,161,190,161,97,31,95,192
DB	141,141,14,141,28,131,7,145,141,141,14,141,28,131,7,145
DB	61,61,244,61,245,201,122,200,61,61,244,61,245,201,122,200
DB	151,151,102,151,204,241,51,91,151,151,102,151,204,241,51,91
DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
DB	207,207,27,207,54,212,131,249,207,207,27,207,54,212,131,249
DB	43,43,172,43,69,135,86,110,43,43,172,43,69,135,86,110
DB	118,118,197,118,151,179,236,225,118,118,197,118,151,179,236,225
DB	130,130,50,130,100,176,25,230,130,130,50,130,100,176,25,230
DB	214,214,127,214,254,169,177,40,214,214,127,214,254,169,177,40
DB	27,27,108,27,216,119,54,195,27,27,108,27,216,119,54,195
DB	181,181,238,181,193,91,119,116,181,181,238,181,193,91,119,116
DB	175,175,134,175,17,41,67,190,175,175,134,175,17,41,67,190
DB	106,106,181,106,119,223,212,29,106,106,181,106,119,223,212,29
DB	80,80,93,80,186,13,160,234,80,80,93,80,186,13,160,234
DB	69,69,9,69,18,76,138,87,69,69,9,69,18,76,138,87
DB	243,243,235,243,203,24,251,56,243,243,235,243,203,24,251,56
DB	48,48,192,48,157,240,96,173,48,48,192,48,157,240,96,173
DB	239,239,155,239,43,116,195,196,239,239,155,239,43,116,195,196
DB	63,63,252,63,229,195,126,218,63,63,252,63,229,195,126,218
DB	85,85,73,85,146,28,170,199,85,85,73,85,146,28,170,199
DB	162,162,178,162,121,16,89,219,162,162,178,162,121,16,89,219
DB	234,234,143,234,3,101,201,233,234,234,143,234,3,101,201,233
DB	101,101,137,101,15,236,202,106,101,101,137,101,15,236,202,106
DB	186,186,210,186,185,104,105,3,186,186,210,186,185,104,105,3
DB	47,47,188,47,101,147,94,74,47,47,188,47,101,147,94,74
DB	192,192,39,192,78,231,157,142,192,192,39,192,78,231,157,142
DB	222,222,95,222,190,129,161,96,222,222,95,222,190,129,161,96
DB	28,28,112,28,224,108,56,252,28,28,112,28,224,108,56,252
DB	253,253,211,253,187,46,231,70,253,253,211,253,187,46,231,70
DB	77,77,41,77,82,100,154,31,77,77,41,77,82,100,154,31
DB	146,146,114,146,228,224,57,118,146,146,114,146,228,224,57,118
DB	117,117,201,117,143,188,234,250,117,117,201,117,143,188,234,250
DB	6,6,24,6,48,30,12,54,6,6,24,6,48,30,12,54
DB	138,138,18,138,36,152,9,174,138,138,18,138,36,152,9,174
DB	178,178,242,178,249,64,121,75,178,178,242,178,249,64,121,75
DB	230,230,191,230,99,89,209,133,230,230,191,230,99,89,209,133
DB	14,14,56,14,112,54,28,126,14,14,56,14,112,54,28,126
DB	31,31,124,31,248,99,62,231,31,31,124,31,248,99,62,231
DB	98,98,149,98,55,247,196,85,98,98,149,98,55,247,196,85
DB	212,212,119,212,238,163,181,58,212,212,119,212,238,163,181,58
DB	168,168,154,168,41,50,77,129,168,168,154,168,41,50,77,129
DB	150,150,98,150,196,244,49,82,150,150,98,150,196,244,49,82
DB	249,249,195,249,155,58,239,98,249,249,195,249,155,58,239,98
DB	197,197,51,197,102,246,151,163,197,197,51,197,102,246,151,163
DB	37,37,148,37,53,177,74,16,37,37,148,37,53,177,74,16
DB	89,89,121,89,242,32,178,171,89,89,121,89,242,32,178,171
DB	132,132,42,132,84,174,21,208,132,132,42,132,84,174,21,208
DB	114,114,213,114,183,167,228,197,114,114,213,114,183,167,228,197
DB	57,57,228,57,213,221,114,236,57,57,228,57,213,221,114,236
DB	76,76,45,76,90,97,152,22,76,76,45,76,90,97,152,22
DB	94,94,101,94,202,59,188,148,94,94,101,94,202,59,188,148
DB	120,120,253,120,231,133,240,159,120,120,253,120,231,133,240,159
DB	56,56,224,56,221,216,112,229,56,56,224,56,221,216,112,229
DB	140,140,10,140,20,134,5,152,140,140,10,140,20,134,5,152
DB	209,209,99,209,198,178,191,23,209,209,99,209,198,178,191,23
DB	165,165,174,165,65,11,87,228,165,165,174,165,65,11,87,228
DB	226,226,175,226,67,77,217,161,226,226,175,226,67,77,217,161
DB	97,97,153,97,47,248,194,78,97,97,153,97,47,248,194,78
DB	179,179,246,179,241,69,123,66,179,179,246,179,241,69,123,66
DB	33,33,132,33,21,165,66,52,33,33,132,33,21,165,66,52
DB	156,156,74,156,148,214,37,8,156,156,74,156,148,214,37,8
DB	30,30,120,30,240,102,60,238,30,30,120,30,240,102,60,238
DB	67,67,17,67,34,82,134,97,67,67,17,67,34,82,134,97
DB	199,199,59,199,118,252,147,177,199,199,59,199,118,252,147,177
DB	252,252,215,252,179,43,229,79,252,252,215,252,179,43,229,79
DB	4,4,16,4,32,20,8,36,4,4,16,4,32,20,8,36
DB	81,81,89,81,178,8,162,227,81,81,89,81,178,8,162,227
DB	153,153,94,153,188,199,47,37,153,153,94,153,188,199,47,37
DB	109,109,169,109,79,196,218,34,109,109,169,109,79,196,218,34
DB	13,13,52,13,104,57,26,101,13,13,52,13,104,57,26,101
DB	250,250,207,250,131,53,233,121,250,250,207,250,131,53,233,121
DB	223,223,91,223,182,132,163,105,223,223,91,223,182,132,163,105
DB	126,126,229,126,215,155,252,169,126,126,229,126,215,155,252,169
DB	36,36,144,36,61,180,72,25,36,36,144,36,61,180,72,25
DB	59,59,236,59,197,215,118,254,59,59,236,59,197,215,118,254
DB	171,171,150,171,49,61,75,154,171,171,150,171,49,61,75,154
DB	206,206,31,206,62,209,129,240,206,206,31,206,62,209,129,240
DB	17,17,68,17,136,85,34,153,17,17,68,17,136,85,34,153
DB	143,143,6,143,12,137,3,131,143,143,6,143,12,137,3,131
DB	78,78,37,78,74,107,156,4,78,78,37,78,74,107,156,4
DB	183,183,230,183,209,81,115,102,183,183,230,183,209,81,115,102
DB	235,235,139,235,11,96,203,224,235,235,139,235,11,96,203,224
DB	60,60,240,60,253,204,120,193,60,60,240,60,253,204,120,193
DB	129,129,62,129,124,191,31,253,129,129,62,129,124,191,31,253
DB	148,148,106,148,212,254,53,64,148,148,106,148,212,254,53,64
DB	247,247,251,247,235,12,243,28,247,247,251,247,235,12,243,28
DB	185,185,222,185,161,103,111,24,185,185,222,185,161,103,111,24
DB	19,19,76,19,152,95,38,139,19,19,76,19,152,95,38,139
DB	44,44,176,44,125,156,88,81,44,44,176,44,125,156,88,81
DB	211,211,107,211,214,184,187,5,211,211,107,211,214,184,187,5
DB	231,231,187,231,107,92,211,140,231,231,187,231,107,92,211,140
DB	110,110,165,110,87,203,220,57,110,110,165,110,87,203,220,57
DB	196,196,55,196,110,243,149,170,196,196,55,196,110,243,149,170
DB	3,3,12,3,24,15,6,27,3,3,12,3,24,15,6,27
DB	86,86,69,86,138,19,172,220,86,86,69,86,138,19,172,220
DB	68,68,13,68,26,73,136,94,68,68,13,68,26,73,136,94
DB	127,127,225,127,223,158,254,160,127,127,225,127,223,158,254,160
DB	169,169,158,169,33,55,79,136,169,169,158,169,33,55,79,136
DB	42,42,168,42,77,130,84,103,42,42,168,42,77,130,84,103
DB	187,187,214,187,177,109,107,10,187,187,214,187,177,109,107,10
DB	193,193,35,193,70,226,159,135,193,193,35,193,70,226,159,135
DB	83,83,81,83,162,2,166,241,83,83,81,83,162,2,166,241
DB	220,220,87,220,174,139,165,114,220,220,87,220,174,139,165,114
DB	11,11,44,11,88,39,22,83,11,11,44,11,88,39,22,83
DB	157,157,78,157,156,211,39,1,157,157,78,157,156,211,39,1
DB	108,108,173,108,71,193,216,43,108,108,173,108,71,193,216,43
DB	49,49,196,49,149,245,98,164,49,49,196,49,149,245,98,164
DB	116,116,205,116,135,185,232,243,116,116,205,116,135,185,232,243
DB	246,246,255,246,227,9,241,21,246,246,255,246,227,9,241,21
DB	70,70,5,70,10,67,140,76,70,70,5,70,10,67,140,76
DB	172,172,138,172,9,38,69,165,172,172,138,172,9,38,69,165
DB	137,137,30,137,60,151,15,181,137,137,30,137,60,151,15,181
DB	20,20,80,20,160,68,40,180,20,20,80,20,160,68,40,180
DB	225,225,163,225,91,66,223,186,225,225,163,225,91,66,223,186
DB	22,22,88,22,176,78,44,166,22,22,88,22,176,78,44,166
DB	58,58,232,58,205,210,116,247,58,58,232,58,205,210,116,247
DB	105,105,185,105,111,208,210,6,105,105,185,105,111,208,210,6
DB	9,9,36,9,72,45,18,65,9,9,36,9,72,45,18,65
DB	112,112,221,112,167,173,224,215,112,112,221,112,167,173,224,215
DB	182,182,226,182,217,84,113,111,182,182,226,182,217,84,113,111
DB	208,208,103,208,206,183,189,30,208,208,103,208,206,183,189,30
DB	237,237,147,237,59,126,199,214,237,237,147,237,59,126,199,214
DB	204,204,23,204,46,219,133,226,204,204,23,204,46,219,133,226
DB	66,66,21,66,42,87,132,104,66,66,21,66,42,87,132,104
DB	152,152,90,152,180,194,45,44,152,152,90,152,180,194,45,44
DB	164,164,170,164,73,14,85,237,164,164,170,164,73,14,85,237
DB	40,40,160,40,93,136,80,117,40,40,160,40,93,136,80,117
DB	92,92,109,92,218,49,184,134,92,92,109,92,218,49,184,134
DB	248,248,199,248,147,63,237,107,248,248,199,248,147,63,237,107
DB	134,134,34,134,68,164,17,194,134,134,34,134,68,164,17,194
DB	24,35,198,232,135,184,1,79
DB	54,166,210,245,121,111,145,82
DB	96,188,155,142,163,12,123,53
DB	29,224,215,194,46,75,254,87
DB	21,119,55,229,159,240,74,218
DB	88,201,41,10,177,160,107,133
DB	189,93,16,244,203,62,5,103
DB	228,39,65,139,167,125,149,216
DB	251,238,124,102,221,23,71,158
DB	202,45,191,7,173,90,131,51
EXTERN	__imp_RtlVirtualUnwind:NEAR

ALIGN	16
se_handler	PROC PRIVATE
	push	rsi
	push	rdi
	push	rbx
	push	rbp
	push	r12
	push	r13
	push	r14
	push	r15
	pushfq
	sub	rsp,64

	mov	rax,QWORD PTR[120+r8]
	mov	rbx,QWORD PTR[248+r8]

	lea	r10,QWORD PTR[$L$prologue]
	cmp	rbx,r10
	jb	$L$in_prologue

	mov	rax,QWORD PTR[152+r8]

	lea	r10,QWORD PTR[$L$epilogue]
	cmp	rbx,r10
	jae	$L$in_prologue

	mov	rax,QWORD PTR[((128+32))+rax]
	lea	rax,QWORD PTR[48+rax]

	mov	rbx,QWORD PTR[((-8))+rax]
	mov	rbp,QWORD PTR[((-16))+rax]
	mov	r12,QWORD PTR[((-24))+rax]
	mov	r13,QWORD PTR[((-32))+rax]
	mov	r14,QWORD PTR[((-40))+rax]
	mov	r15,QWORD PTR[((-48))+rax]
	mov	QWORD PTR[144+r8],rbx
	mov	QWORD PTR[160+r8],rbp
	mov	QWORD PTR[216+r8],r12
	mov	QWORD PTR[224+r8],r13
	mov	QWORD PTR[232+r8],r14
	mov	QWORD PTR[240+r8],r15

$L$in_prologue::
	mov	rdi,QWORD PTR[8+rax]
	mov	rsi,QWORD PTR[16+rax]
	mov	QWORD PTR[152+r8],rax
	mov	QWORD PTR[168+r8],rsi
	mov	QWORD PTR[176+r8],rdi

	mov	rdi,QWORD PTR[40+r9]
	mov	rsi,r8
	mov	ecx,154
	DD	0a548f3fch


	mov	rsi,r9
	xor	rcx,rcx
	mov	rdx,QWORD PTR[8+rsi]
	mov	r8,QWORD PTR[rsi]
	mov	r9,QWORD PTR[16+rsi]
	mov	r10,QWORD PTR[40+rsi]
	lea	r11,QWORD PTR[56+rsi]
	lea	r12,QWORD PTR[24+rsi]
	mov	QWORD PTR[32+rsp],r10
	mov	QWORD PTR[40+rsp],r11
	mov	QWORD PTR[48+rsp],r12
	mov	QWORD PTR[56+rsp],rcx
	call	QWORD PTR[__imp_RtlVirtualUnwind]

	mov	eax,1
	add	rsp,64
	popfq
	pop	r15
	pop	r14
	pop	r13
	pop	r12
	pop	rbp
	pop	rbx
	pop	rdi
	pop	rsi
	DB	0F3h,0C3h		;repret
se_handler	ENDP

.text$	ENDS
.pdata	SEGMENT READONLY ALIGN(4)
ALIGN	4
	DD	imagerel $L$SEH_begin_whirlpool_block
	DD	imagerel $L$SEH_end_whirlpool_block
	DD	imagerel $L$SEH_info_whirlpool_block

.pdata	ENDS
.xdata	SEGMENT READONLY ALIGN(8)
ALIGN	8
$L$SEH_info_whirlpool_block::
DB	9,0,0,0
	DD	imagerel se_handler

.xdata	ENDS
END
