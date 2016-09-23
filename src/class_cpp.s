	.file	"class_cpp.cpp"
	.section	.text._ZN8CPPClass3setEii,"axG",@progbits,_ZN8CPPClass3setEii,comdat
	.align 2
	.weak	_ZN8CPPClass3setEii
	.type	_ZN8CPPClass3setEii, @function
_ZN8CPPClass3setEii:
.LFB0:
	pushq	%rbp
.LCFI0:
	movq	%rsp, %rbp
.LCFI1:
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 4(%rax)
	nop
	popq	%rbp
.LCFI2:
	ret
.LFE0:
	.size	_ZN8CPPClass3setEii, .-_ZN8CPPClass3setEii
	.section	.text._ZN8CPPClass4getXEv,"axG",@progbits,_ZN8CPPClass4getXEv,comdat
	.align 2
	.weak	_ZN8CPPClass4getXEv
	.type	_ZN8CPPClass4getXEv, @function
_ZN8CPPClass4getXEv:
.LFB1:
	pushq	%rbp
.LCFI3:
	movq	%rsp, %rbp
.LCFI4:
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
.LCFI5:
	ret
.LFE1:
	.size	_ZN8CPPClass4getXEv, .-_ZN8CPPClass4getXEv
	.globl	cppobj
	.bss
	.align 8
	.type	cppobj, @object
	.size	cppobj, 8
cppobj:
	.zero	8
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	pushq	%rbp
.LCFI6:
	movq	%rsp, %rbp
.LCFI7:
	movl	$20, %edx
	movl	$10, %esi
	movl	$cppobj, %edi
	call	_ZN8CPPClass3setEii
	movl	$cppobj, %edi
	call	_ZN8CPPClass4getXEv
	popq	%rbp
.LCFI8:
	ret
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.2) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
