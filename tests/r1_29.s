	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $64, %rsp

	movq $9, %rdx
	movq %rdx, %rbx
	addq $4, %rbx
	movq %rdx, %rcx
	negq %rcx
	movq %rbx, %rbx
	addq %rcx, %rbx
	movq %rbx, %rbx
	addq $42, %rbx
	movq %rbx, %rbx
	addq $-13, %rbx
	movq %rdx, %rdx
	addq %rbx, %rdx
	movq %rdx, %rax

	movq %rax, %rcx
	callq print_int
	addq $64, %rsp
	movq $0, %rax
	popq %rbp
	retq
