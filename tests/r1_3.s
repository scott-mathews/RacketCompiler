	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp

	movq $5, -16(%rbp)
	negq -16(%rbp)
	movq -16(%rbp), %rax
	movq %rax, -8(%rbp)
	addq $47, -8(%rbp)
	movq -8(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	addq $16, %rsp
	movq $0, %rax
	popq %rbp
	retq
