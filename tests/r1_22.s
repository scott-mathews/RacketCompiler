	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp

	movq $2, -32(%rbp)
	addq $3, -32(%rbp)
	movq -32(%rbp), %rax
	movq %rax, -16(%rbp)
	addq $5, -16(%rbp)
	movq -32(%rbp), %rax
	movq %rax, -24(%rbp)
	movq -16(%rbp), %rax
	addq %rax, -24(%rbp)
	movq -24(%rbp), %rax
	movq %rax, -8(%rbp)
	addq $27, -8(%rbp)
	movq -8(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	addq $32, %rsp
	movq $0, %rax
	popq %rbp
	retq
