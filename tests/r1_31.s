	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $80, %rsp

	movq $7, %rbx
	movq %rbx, %rcx
	addq $4, %rcx
	movq $6, %rbx
	movq %rcx, %rcx
	addq $6, %rcx
	movq %rbx, %rbx
	negq %rbx
	movq %rcx, %rbx
	negq %rbx
	movq %rcx, %rcx
	addq %rcx, %rcx
	movq %rbx, %rbx
	negq %rbx
	movq %rbx, %rbx
	addq $25, %rbx
	movq %rbx, %rax

	movq %rax, %rcx
	callq print_int
	addq $80, %rsp
	movq $0, %rax
	popq %rbp
	retq
