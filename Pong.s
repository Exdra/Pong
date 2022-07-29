	.file	"Pong.c"
	.text
	.section	.rodata
.LC11:
	.string	"Pong"
.LC13:
	.string	"Score: %d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB110:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movl	$640, -28(%rbp)
	movl	$480, -32(%rbp)
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -64(%rbp)
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -60(%rbp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -56(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -52(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -80(%rbp)
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -76(%rbp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -72(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -68(%rbp)
	movl	$1, -36(%rbp)
	movl	$1, -40(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -96(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -92(%rbp)
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -88(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -84(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -112(%rbp)
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, -108(%rbp)
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -104(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -100(%rbp)
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -128(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -124(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -120(%rbp)
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, -116(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -144(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -140(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -136(%rbp)
	movss	.LC7(%rip), %xmm0
	movss	%xmm0, -132(%rbp)
	movss	.LC8(%rip), %xmm0
	movss	%xmm0, -152(%rbp)
	movss	.LC9(%rip), %xmm0
	movss	%xmm0, -148(%rbp)
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -160(%rbp)
	movss	.LC10(%rip), %xmm0
	movss	%xmm0, -156(%rbp)
	movl	$8, -44(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %eax
	leaq	.LC11(%rip), %rdx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	InitWindow@PLT
	jmp	.L2
.L13:
	movss	-152(%rbp), %xmm1
	movss	-160(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -152(%rbp)
	movss	-148(%rbp), %xmm1
	movss	-156(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -148(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2ssl	-44(%rbp), %xmm0
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rcx, %xmm2
	movq	%rdx, %xmm3
	movaps	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	CheckCollisionCircleRec@PLT
	testb	%al, %al
	je	.L3
	movss	-156(%rbp), %xmm0
	movss	.LC12(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -156(%rbp)
.L3:
	pxor	%xmm0, %xmm0
	cvtsi2ssl	-44(%rbp), %xmm0
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rcx, %xmm2
	movq	%rdx, %xmm3
	movaps	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	CheckCollisionCircleRec@PLT
	testb	%al, %al
	je	.L4
	movss	-156(%rbp), %xmm0
	movss	.LC12(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -156(%rbp)
.L4:
	pxor	%xmm0, %xmm0
	cvtsi2ssl	-44(%rbp), %xmm0
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rcx, %xmm2
	movq	%rdx, %xmm3
	movaps	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	CheckCollisionCircleRec@PLT
	testb	%al, %al
	je	.L5
	movss	-160(%rbp), %xmm0
	movss	.LC12(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -160(%rbp)
.L5:
	pxor	%xmm0, %xmm0
	cvtsi2ssl	-44(%rbp), %xmm0
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rcx, %xmm2
	movq	%rdx, %xmm3
	movaps	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	CheckCollisionCircleRec@PLT
	testb	%al, %al
	je	.L6
	movss	-160(%rbp), %xmm0
	movss	.LC12(%rip), %xmm1
	xorps	%xmm1, %xmm0
	movss	%xmm0, -160(%rbp)
.L6:
	pxor	%xmm0, %xmm0
	cvtsi2ssl	-44(%rbp), %xmm0
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rcx, %xmm2
	movq	%rdx, %xmm3
	movaps	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	CheckCollisionCircleRec@PLT
	testb	%al, %al
	je	.L7
	movss	.LC8(%rip), %xmm0
	movss	%xmm0, -152(%rbp)
	movss	.LC9(%rip), %xmm0
	movss	%xmm0, -148(%rbp)
	addl	$1, -20(%rbp)
.L7:
	pxor	%xmm0, %xmm0
	cvtsi2ssl	-44(%rbp), %xmm0
	movq	-144(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rcx, %xmm2
	movq	%rdx, %xmm3
	movaps	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	CheckCollisionCircleRec@PLT
	testb	%al, %al
	je	.L8
	movss	.LC8(%rip), %xmm0
	movss	%xmm0, -152(%rbp)
	movss	.LC9(%rip), %xmm0
	movss	%xmm0, -148(%rbp)
	addl	$1, -24(%rbp)
.L8:
	call	BeginDrawing@PLT
	movb	$0, %bl
	movl	$0, %eax
	movb	%al, %bh
	movl	%ebx, %eax
	andl	$-16711681, %eax
	movl	%eax, %ebx
	movl	%ebx, %eax
	orl	$-16777216, %eax
	movl	%eax, %ebx
	movl	%ebx, %edi
	call	ClearBackground@PLT
	movl	-172(%rbp), %ecx
	movb	$-1, %cl
	movl	$-1, %eax
	movb	%al, %ch
	orl	$16711680, %ecx
	movl	%ecx, %eax
	orl	$-16777216, %eax
	movl	%eax, %ecx
	movl	%ecx, -172(%rbp)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movl	%ecx, %edi
	movq	%rax, %xmm0
	movq	%rdx, %xmm1
	call	DrawRectangleRec@PLT
	movl	-176(%rbp), %ecx
	movb	$-1, %cl
	movl	$-1, %eax
	movb	%al, %ch
	orl	$16711680, %ecx
	movl	%ecx, %eax
	orl	$-16777216, %eax
	movl	%eax, %ecx
	movl	%ecx, -176(%rbp)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movl	%ecx, %edi
	movq	%rax, %xmm0
	movq	%rdx, %xmm1
	call	DrawRectangleRec@PLT
	movl	-180(%rbp), %edx
	movb	$-1, %dl
	movl	$-1, %eax
	movb	%al, %dh
	orl	$16711680, %edx
	movl	%edx, %eax
	orl	$-16777216, %eax
	movl	%eax, %ecx
	movl	%ecx, -180(%rbp)
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movl	%ecx, %edi
	movq	%rax, %xmm0
	movq	%rdx, %xmm1
	call	DrawRectangleRec@PLT
	movl	-184(%rbp), %ecx
	movb	$-1, %cl
	movl	$-1, %eax
	movb	%al, %ch
	orl	$16711680, %ecx
	movl	%ecx, %eax
	orl	$-16777216, %eax
	movl	%eax, %ecx
	movl	%ecx, -184(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movl	%ecx, %edi
	movq	%rax, %xmm0
	movq	%rdx, %xmm1
	call	DrawRectangleRec@PLT
	movl	-188(%rbp), %edx
	movb	$-1, %dl
	movl	$-1, %eax
	movb	%al, %dh
	orl	$16711680, %edx
	movl	%edx, %eax
	orl	$-16777216, %eax
	movl	%eax, %ecx
	movl	%ecx, -188(%rbp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movl	%ecx, %edi
	movq	%rax, %xmm0
	movq	%rdx, %xmm1
	call	DrawRectangleRec@PLT
	movl	$87, %edi
	call	IsKeyDown@PLT
	testb	%al, %al
	je	.L9
	movss	-60(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2ssl	-36(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)
.L9:
	movl	$83, %edi
	call	IsKeyDown@PLT
	testb	%al, %al
	je	.L10
	movss	-60(%rbp), %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2ssl	-36(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)
.L10:
	movl	-192(%rbp), %ecx
	movb	$-1, %cl
	movl	$-1, %eax
	movb	%al, %ch
	orl	$16711680, %ecx
	movl	%ecx, %eax
	orl	$-16777216, %eax
	movl	%eax, %ecx
	movl	%ecx, -192(%rbp)
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movl	%ecx, %edi
	movq	%rax, %xmm0
	movq	%rdx, %xmm1
	call	DrawRectangleRec@PLT
	movl	$264, %edi
	call	IsKeyDown@PLT
	testb	%al, %al
	je	.L11
	movss	-76(%rbp), %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2ssl	-40(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -76(%rbp)
.L11:
	movl	$265, %edi
	call	IsKeyDown@PLT
	testb	%al, %al
	je	.L12
	movss	-76(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2ssl	-40(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -76(%rbp)
.L12:
	movl	-196(%rbp), %edx
	movb	$-1, %dl
	movl	$-1, %eax
	movb	%al, %dh
	orl	$16711680, %edx
	movl	%edx, %eax
	orl	$-16777216, %eax
	movl	%eax, %edx
	movl	%edx, -196(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2ssl	-44(%rbp), %xmm0
	movq	-152(%rbp), %rax
	movl	%edx, %edi
	movaps	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	DrawCircleV@PLT
	movl	-164(%rbp), %ecx
	movb	$-26, %cl
	movl	$41, %eax
	movb	%al, %ch
	andl	$-16711681, %ecx
	movl	%ecx, %eax
	orl	$3604480, %eax
	orl	$-16777216, %eax
	movl	%eax, -164(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	TextFormat@PLT
	movl	-164(%rbp), %r8d
	movl	$20, %ecx
	movl	$44, %edx
	movl	$44, %esi
	movq	%rax, %rdi
	call	DrawText@PLT
	movl	-168(%rbp), %edx
	movb	$0, %dl
	movl	$121, %eax
	movb	%al, %dh
	andl	$-16711681, %edx
	movl	%edx, %eax
	orl	$15794176, %eax
	orl	$-16777216, %eax
	movl	%eax, -168(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	TextFormat@PLT
	movl	-168(%rbp), %r8d
	movl	$20, %ecx
	movl	$44, %edx
	movl	$522, %esi
	movq	%rax, %rdi
	call	DrawText@PLT
	call	EndDrawing@PLT
.L2:
	call	WindowShouldClose@PLT
	xorl	$1, %eax
	testb	%al, %al
	jne	.L13
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE110:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	1110441984
	.align 4
.LC1:
	.long	1098907648
	.align 4
.LC2:
	.long	1119879168
	.align 4
.LC3:
	.long	1141964800
	.align 4
.LC4:
	.long	-1082130432
	.align 4
.LC5:
	.long	1142964224
	.align 4
.LC6:
	.long	1065353216
	.align 4
.LC7:
	.long	1139834880
	.align 4
.LC8:
	.long	1134559232
	.align 4
.LC9:
	.long	1131413504
	.align 4
.LC10:
	.long	-1093874483
	.align 16
.LC12:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.ident	"GCC: (Debian 11.3.0-3) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
