	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp

	movq $20, -8(%rbp)
	addq $22, -8(%rbp)
	movq -8(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	addq $16, %rsp
	movq $0, %rax
	popq %rbp
	retq
