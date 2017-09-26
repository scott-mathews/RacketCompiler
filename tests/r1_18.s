	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp

	movq $99, %rbx
	movq $22, %rbx
	movq $42, %rbx
	movq %rbx, %rax

	movq %rax, %rcx
	callq print_int
	addq $32, %rsp
	movq $0, %rax
	popq %rbp
	retq
