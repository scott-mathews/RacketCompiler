	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $64, %rsp

	movq $4, %rcx
	movq $-53, %rdx
	movq %rcx, %rbx
	addq $20, %rbx
	movq %rdx, %rbx
	negq %rbx
	movq %rcx, %rbx
	addq $31, %rbx
	movq %rdx, %rbx
	addq $300, %rbx
	movq %rbx, %rbx
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
