	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp

	movq $41, -8(%rbp)
	addq $1, -8(%rbp)
	movq -8(%rbp), %rax
	movq %rax, -16(%rbp)
	movq -16(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	addq $16, %rsp
	movq $0, %rax
	popq %rbp
	retq
