	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $80, %rsp

	movq $4, -72(%rbp)
	movq $53, -48(%rbp)
	negq -48(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -40(%rbp)
	addq $20, -40(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -56(%rbp)
	negq -56(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -32(%rbp)
	addq $31, -32(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -64(%rbp)
	addq $300, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -24(%rbp)
	negq -24(%rbp)
	movq -24(%rbp), %rax
	movq %rax, -16(%rbp)
	addq $84, -16(%rbp)
	movq -16(%rbp), %rax
	movq %rax, -8(%rbp)
	addq $205, -8(%rbp)
	movq -8(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	addq $80, %rsp
	movq $0, %rax
	popq %rbp
	retq
