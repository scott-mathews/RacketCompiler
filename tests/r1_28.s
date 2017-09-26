	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp

	movq $3, %rcx
	movq %rcx, %rcx
	movq %rcx, %rcx
	movq %rcx, %rbx
	addq $28, %rbx
	movq %rcx, %rcx
	addq %rbx, %rcx
	movq %rcx, %rbx
	addq $8, %rbx
	movq %rbx, %rax

	movq %rax, %rcx
	callq print_int
	addq $48, %rsp
	movq $0, %rax
	popq %rbp
	retq
