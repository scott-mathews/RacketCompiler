	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp

	movq $32, -8(%rbp)
	movq $10, -16(%rbp)
	movq -8(%rbp), %rax
	movq %rax, -24(%rbp)
	movq -16(%rbp), %rax
	addq %rax, -24(%rbp)
	movq -24(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	addq $32, %rsp
	movq $0, %rax
	popq %rbp
	retq
