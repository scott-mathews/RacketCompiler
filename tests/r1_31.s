	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $80, %rsp

	movq $7, %rbx
	movq %rbx, %rbx
	addq $4, %rbx
	movq $6, %rcx
	movq %rbx, %rbx
	addq $6, %rbx
	movq %rcx, %rcx
	negq %rcx
	movq %rbx, %rcx
	negq %rcx
	movq %rbx, %rbx
	addq %rbx, %rbx
	movq %rcx, %rcx
	negq %rcx
	movq %rcx, %rbx
	addq $25, %rbx
	movq %rbx, %rax

	movq %rax, %rcx
	callq print_int
	addq $80, %rsp
	movq $0, %rax
	popq %rbp
	retq
