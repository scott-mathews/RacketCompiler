	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp

	movq $12, -24(%rbp)
	addq $20, -24(%rbp)
	movq -24(%rbp), %rax
	movq %rax, -16(%rbp)
	movq -16(%rbp), %rax
	movq %rax, -16(%rbp)
	addq $10, -16(%rbp)
	movq -16(%rbp), %rax
	movq %rax, -8(%rbp)
	movq -8(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	addq $32, %rsp
	movq $0, %rax
	popq %rbp
	retq
