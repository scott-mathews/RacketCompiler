	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp

	movq $5, %rcx
	movq $-23, %rbx
	movq %rbx, %rbx
	addq %rcx, %rbx
	movq %rbx, %rbx
	negq %rbx
	movq %rbx, %rbx
	addq $24, %rbx
	movq %rbx, %rax

	movq %rax, %rcx
	callq print_int
	addq $48, %rsp
	movq $0, %rax
	popq %rbp
	retq
