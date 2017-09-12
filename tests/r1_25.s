	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $64, %rsp

	movq $4, -24(%rbp)
	addq $5, -24(%rbp)
	movq $2, -32(%rbp)
	negq -32(%rbp)
	movq $9, -40(%rbp)
	movq -32(%rbp), %rax
	movq %rax, -48(%rbp)
	negq -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -56(%rbp)
	negq -56(%rbp)
	movq -32(%rbp), %rax
	movq %rax, -16(%rbp)
	movq -56(%rbp), %rax
	addq %rax, -16(%rbp)
	movq -16(%rbp), %rax
	movq %rax, -8(%rbp)
	addq $46, -8(%rbp)
	movq -8(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	addq $64, %rsp
	movq $0, %rax
	popq %rbp
	retq
