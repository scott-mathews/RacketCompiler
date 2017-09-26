	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $64, %rsp

	movq $4, %rcx
	movq %rcx, %rbx
	negq %rbx
	movq %rbx, %rdx
	addq %rcx, %rdx
	movq $9, %rbx
	movq %rdx, %rbx
	negq %rbx
	movq %rcx, %rcx
	addq %rdx, %rcx
	movq %rcx, %rbx
	addq $38, %rbx
	movq %rbx, %rax

	movq %rax, %rcx
	callq print_int
	addq $64, %rsp
	movq $0, %rax
	popq %rbp
	retq
