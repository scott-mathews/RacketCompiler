	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $64, %rsp

	movq $9, %rcx
	movq %rcx, %rbx
	addq $4, %rbx
	movq %rcx, %rdx
	negq %rdx
	movq %rbx, %rbx
	addq %rdx, %rbx
	movq %rbx, %rbx
	addq $42, %rbx
	movq %rbx, %rbx
	addq $-13, %rbx
	movq %rcx, %rcx
	addq %rbx, %rcx
	movq %rcx, %rax

	movq %rax, %rcx
	callq print_int
	addq $64, %rsp
	movq $0, %rax
	popq %rbp
	retq
