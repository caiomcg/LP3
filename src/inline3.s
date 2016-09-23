	.file	"inline3.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.section	.text.startup,"ax",@progbits
.LHOTB0:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
	subq	$8, %rsp
	movl	$5, %esi
	movl	$y, %edi
	call	InsertionSort
	movl	y(%rip), %eax
	addq	$8, %rsp
	ret
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE0:
	.section	.text.startup
.LHOTE0:
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
