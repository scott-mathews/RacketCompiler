	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $64, %rsp

	movq $4, %rdx
	movq %rdx, %rcx
	negq %rcx
	movq %rcx, %rcx
	addq %rdx, %rcx
	movq $9, %rbx
	movq %rcx, %rbx
	negq %rbx
	movq %rdx, %rdx
	addq %rcx, %rdx
	movq %rdx, %rdx
	addq $38, %rdx
	movq %rdx, %rax

	movq %rax, %rcx
	callq print_int
	addq $64, %rsp
	movq $0, %rax
	popq %rbp
	retq
