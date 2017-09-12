	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $64, %rsp

	movq $3, -40(%rbp)
	movq -40(%rbp), %rax
	movq %rax, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -48(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -24(%rbp)
	movq -48(%rbp), %rax
	addq %rax, -24(%rbp)
	movq -24(%rbp), %rax
	movq %rax, -32(%rbp)
	addq $28, -32(%rbp)
	movq -32(%rbp), %rax
	movq %rax, -16(%rbp)
	addq $5, -16(%rbp)
	movq -16(%rbp), %rax
	movq %rax, -8(%rbp)
	addq $3, -8(%rbp)
	movq -8(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	addq $64, %rsp
	movq $0, %rax
	popq %rbp
	retq
