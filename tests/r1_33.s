	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $64, %rsp

	movq $4, %rbx
	movq $-53, %rdx
	movq %rbx, %rcx
	addq $20, %rcx
	movq %rdx, %rcx
	negq %rcx
	movq %rbx, %rbx
	addq $31, %rbx
	movq %rdx, %rdx
	addq $300, %rdx
	movq %rdx, %rbx
	negq %rbx
	movq %rbx, %rbx
	addq $289, %rbx
	movq %rbx, %rax

	movq %rax, %rcx
	callq print_int
	addq $64, %rsp
	movq $0, %rax
	popq %rbp
	retq
