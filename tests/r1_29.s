	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $64, %rsp

	movq $9, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -40(%rbp)
	addq $4, -40(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -48(%rbp)
	negq -48(%rbp)
	movq -40(%rbp), %rax
	movq %rax, -24(%rbp)
	movq -48(%rbp), %rax
	addq %rax, -24(%rbp)
	movq -24(%rbp), %rax
	movq %rax, -32(%rbp)
	addq $42, -32(%rbp)
	movq $13, -8(%rbp)
	negq -8(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -64(%rbp)
	movq -32(%rbp), %rax
	addq %rax, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -16(%rbp)
	movq -8(%rbp), %rax
	addq %rax, -16(%rbp)
	movq -16(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	addq $64, %rsp
	movq $0, %rax
	popq %rbp
	retq
