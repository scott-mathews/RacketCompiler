	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp

callq read_int
	movq %rax, -8(%rbp)
callq read_int
	movq %rax, -24(%rbp)
	movq -24(%rbp), %rax
	movq %rax, -32(%rbp)
	negq -32(%rbp)
	movq -32(%rbp), %rax
	movq %rax, -16(%rbp)
	movq -8(%rbp), %rax
	addq %rax, -16(%rbp)
	movq -16(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	addq $32, %rsp
	movq $0, %rax
	popq %rbp
	retq
