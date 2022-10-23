	.file	"MeoIsCool.c"
	.text
	.def	scanf;	.scl	3;	.type	32;	.endef
	.seh_proc	scanf
scanf:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, 56(%rbp)
	leaq	40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rbx
	movl	$0, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rbx, %r8
	movq	32(%rbp), %rdx
	movq	%rax, %rcx
	call	__mingw_vfscanf
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.def	printf;	.scl	3;	.type	32;	.endef
	.seh_proc	printf
printf:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, 56(%rbp)
	leaq	40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rbx
	movl	$1, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rbx, %r8
	movq	32(%rbp), %rdx
	movq	%rax, %rcx
	call	__mingw_vfprintf
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "Is Meo super cool?(y/n)\12\0"
.LC1:
	.ascii "%c\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$240, %rsp
	.seh_stackalloc	240
	.seh_endprologue
	call	__main
	movl	$6, -96(%rbp)
	movl	$-11, -92(%rbp)
	movl	$6, -88(%rbp)
	movl	$20, -84(%rbp)
	movl	$-50, -80(%rbp)
	movl	$22, -76(%rbp)
	movl	$-27, -72(%rbp)
	movl	$43, -68(%rbp)
	movl	$-1, -64(%rbp)
	movl	$6, -60(%rbp)
	movl	$-21, -56(%rbp)
	movl	$-11, -52(%rbp)
	movl	$20, -48(%rbp)
	movl	$1, -44(%rbp)
	movl	$5, -40(%rbp)
	movl	$-3, -36(%rbp)
	movl	$-12, -32(%rbp)
	movl	$-12, -28(%rbp)
	movl	$28, -24(%rbp)
	movl	$14, -20(%rbp)
	movl	$6, -192(%rbp)
	movl	$-11, -188(%rbp)
	movl	$6, -184(%rbp)
	movl	$20, -180(%rbp)
	movl	$-50, -176(%rbp)
	movl	$22, -172(%rbp)
	movl	$2, -168(%rbp)
	movl	$6, -164(%rbp)
	movl	$11, -160(%rbp)
	movl	$-13, -156(%rbp)
	movl	$0, -152(%rbp)
	movl	$-6, -148(%rbp)
	movl	$24, -144(%rbp)
	movl	$-14, -140(%rbp)
	movl	$11, -136(%rbp)
	movl	$-12, -132(%rbp)
	movl	$-9, -128(%rbp)
	movl	$26, -124(%rbp)
	movl	$-10, -120(%rbp)
	movl	$6, -116(%rbp)
	movl	$8, -112(%rbp)
	movb	$102, -1(%rbp)
	leaq	.LC0(%rip), %rcx
	call	printf
	leaq	-193(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rcx
	call	scanf
	movzbl	-193(%rbp), %eax
	cmpb	$110, %al
	jne	.L6
	movsbl	-1(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC1(%rip), %rcx
	call	printf
	movl	$0, -8(%rbp)
	jmp	.L7
.L8:
	movl	-8(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	movl	%eax, %edx
	movzbl	-1(%rbp), %eax
	addl	%edx, %eax
	movb	%al, -1(%rbp)
	movsbl	-1(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC1(%rip), %rcx
	call	printf
	addl	$1, -8(%rbp)
.L7:
	cmpl	$19, -8(%rbp)
	jle	.L8
	jmp	.L9
.L6:
	movzbl	-193(%rbp), %eax
	cmpb	$121, %al
	jne	.L9
	movsbl	-1(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC1(%rip), %rcx
	call	printf
	movl	$0, -12(%rbp)
	jmp	.L10
.L11:
	movl	-12(%rbp), %eax
	cltq
	movl	-192(%rbp,%rax,4), %eax
	movl	%eax, %edx
	movzbl	-1(%rbp), %eax
	addl	%edx, %eax
	movb	%al, -1(%rbp)
	movsbl	-1(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC1(%rip), %rcx
	call	printf
	addl	$1, -12(%rbp)
.L10:
	cmpl	$20, -12(%rbp)
	jle	.L11
.L9:
	movl	$0, %eax
	addq	$240, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (tdm64-1) 10.3.0"
	.def	__mingw_vfscanf;	.scl	2;	.type	32;	.endef
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
