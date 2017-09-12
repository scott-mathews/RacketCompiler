	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp

	movq $4, -16(%rbp)
	addq $5, -16(%rbp)
	movq -16(%rbp), %rax
	movq %rax, -24(%rbp)
	addq $7, -24(%rbp)
	movq -24(%rbp), %rax
	movq %rax, -40(%rbp)
	negq -40(%rbp)
	movq -16(%rbp), %rax
	movq %rax, -32(%rbp)
	addq $70, -32(%rbp)
	movq -32(%rbp), %rax
	movq %rax, -48(%rbp)
	negq -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -8(%rbp)
	addq $121, -8(%rbp)
	movq -8(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	addq $48, %rsp
	movq $0, %rax
	popq %rbp
	retq
