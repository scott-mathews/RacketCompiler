	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $64, %rsp

	movq $9, %rdx
	movq %rdx, %rcx
	addq $4, %rcx
	movq %rdx, %rbx
	negq %rbx
	movq %rcx, %rcx
	addq %rbx, %rcx
	movq %rcx, %rbx
	addq $42, %rbx
	movq %rbx, %rbx
	addq $-13, %rbx
	movq %rdx, %rcx
	addq %rbx, %rcx
	movq %rcx, %rax

	movq %rax, %rcx
	callq print_int
	addq $64, %rsp
	movq $0, %rax
	popq %rbp
	retq
