	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $64, %rsp

	movq $4, %rcx
	movq $6, %rbx
	movq %rcx, %rcx
	movq $7, %rbx
	movq %rbx, %rbx
	movq %rcx, %rcx
	movq %rcx, %rcx
	addq $38, %rcx
	movq %rcx, %rax

	movq %rax, %rcx
	callq print_int
	addq $64, %rsp
	movq $0, %rax
	popq %rbp
	retq
