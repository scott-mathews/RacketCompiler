	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp

	movq $12, -24(%rbp)
	addq $20, -24(%rbp)
	movq -24(%rbp), %rax
	movq %rax, -8(%rbp)
	movq -8(%rbp), %rax
	movq %rax, -8(%rbp)
	movq $5, -40(%rbp)
	movq -40(%rbp), %rax
	addq %rax, -40(%rbp)
	movq -40(%rbp), %rax
	movq %rax, -32(%rbp)
	movq -32(%rbp), %rax
	addq %rax, -8(%rbp)
	movq -8(%rbp), %rax
	movq %rax, -16(%rbp)
	movq -16(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	addq $48, %rsp
	movq $0, %rax
	popq %rbp
	retq
