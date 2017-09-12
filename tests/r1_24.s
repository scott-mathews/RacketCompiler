	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp

	movq $2, -40(%rbp)
	addq $3, -40(%rbp)
	movq $23, -32(%rbp)
	negq -32(%rbp)
	movq -32(%rbp), %rax
	movq %rax, -48(%rbp)
	movq -40(%rbp), %rax
	addq %rax, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -24(%rbp)
	negq -24(%rbp)
	movq -24(%rbp), %rax
	movq %rax, -16(%rbp)
	addq $3, -16(%rbp)
	movq -16(%rbp), %rax
	movq %rax, -8(%rbp)
	addq $21, -8(%rbp)
	movq -8(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	addq $48, %rsp
	movq $0, %rax
	popq %rbp
	retq
