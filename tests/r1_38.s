	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp

	movq $12, %rbx
	movq %rbx, %rbx
	addq $20, %rbx
	movq $5, %rcx
	movq %rcx, %rcx
	addq %rcx, %rcx
	movq %rbx, %rbx
	addq %rcx, %rbx
	movq %rbx, %rax

	movq %rax, %rcx
	callq print_int
	addq $48, %rsp
	movq $0, %rax
	popq %rbp
	retq
