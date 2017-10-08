	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp

	movq $42, %rax

	movq %rax, %rcx
	callq print_int
	addq $0, %rsp
	movq $0, %rax
	popq %rbp
	retq
