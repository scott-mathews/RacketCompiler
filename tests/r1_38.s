	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp

	movq $12, %rcx
	movq %rcx, %rcx
	addq $20, %rcx
	movq $5, %rbx
	movq %rbx, %rbx
	addq %rbx, %rbx
	movq %rcx, %rcx
	addq %rbx, %rcx
	movq %rcx, %rax

	movq %rax, %rcx
	callq print_int
	addq $48, %rsp
	movq $0, %rax
	popq %rbp
	retq
