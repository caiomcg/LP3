	.file	"inline2.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	InsertionSort
	.type	InsertionSort, @function
InsertionSort:
	cmpl	$1, %esi
	jle	.L14
	leaq	-4(%rdi), %r10
	pushq	%rbx
	xorl	%r9d, %r9d
	leal	-1(%rsi), %ebx
	movl	$1, %esi
	.p2align 4,,10
	.p2align 3
.L5:
	testl	%r9d, %r9d
	movl	%esi, %r11d
	movl	8(%r10), %r8d
	movl	%r9d, %edx
	js	.L3
	movl	4(%r10), %ecx
	cmpl	%ecx, %r8d
	jge	.L3
	movq	%r10, %rax
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L16:
	subq	$4, %rax
	movl	4(%rax), %ecx
	cmpl	%ecx, %r8d
	jge	.L3
.L4:
	subl	$1, %edx
	movl	%ecx, 4(%rax,%rsi,4)
	cmpl	$-1, %edx
	jne	.L16
.L3:
	addl	%r11d, %edx
	addl	$1, %r9d
	addq	$4, %r10
	movslq	%edx, %rdx
	addq	$1, %rsi
	cmpl	%r9d, %ebx
	movl	%r8d, (%rdi,%rdx,4)
	jne	.L5
	popq	%rbx
.L14:
	rep ret
	.size	InsertionSort, .-InsertionSort
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely
.LCOLDB1:
	.section	.text.startup,"ax",@progbits
.LHOTB1:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
	movl	$5, %esi
	movl	$y, %edi
	call	InsertionSort
	movl	y(%rip), %eax
	ret
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE1:
	.section	.text.startup
.LHOTE1:
	.globl	y
	.data
	.align 16
	.type	y, @object
	.size	y, 20
y:
	.long	5
	.long	4
	.long	3
	.long	2
	.long	1
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.2) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
