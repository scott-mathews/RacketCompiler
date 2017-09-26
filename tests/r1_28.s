	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp

	movq $3, %rbx
	movq %rbx, %rbx
	movq %rbx, %rcx
	movq %rcx, %rcx
	addq $28, %rcx
	movq %rbx, %rbx
	addq %rcx, %rbx
	movq %rbx, %rbx
	addq $8, %rbx
	movq %rbx, %rax

	movq %rax, %rcx
	callq print_int
	addq $48, %rsp
	movq $0, %rax
	popq %rbp
	retq
