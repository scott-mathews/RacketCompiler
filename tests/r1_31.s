	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $80, %rsp

	movq $7, -24(%rbp)
	movq -24(%rbp), %rax
	movq %rax, -40(%rbp)
	addq $4, -40(%rbp)
	movq $6, -8(%rbp)
	movq -40(%rbp), %rax
	movq %rax, -32(%rbp)
	addq $6, -32(%rbp)
	movq -8(%rbp), %rax
	movq %rax, -16(%rbp)
	negq -16(%rbp)
	movq -32(%rbp), %rax
	movq %rax, -64(%rbp)
	negq -64(%rbp)
	movq -32(%rbp), %rax
	movq %rax, -48(%rbp)
	movq -32(%rbp), %rax
	addq %rax, -48(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -72(%rbp)
	negq -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -56(%rbp)
	addq $25, -56(%rbp)
	movq -56(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	addq $80, %rsp
	movq $0, %rax
	popq %rbp
	retq
