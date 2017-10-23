	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp

	movq $9, %rcx
	movq %rcx, %rbx
	addq $7, %rbx
	movq %rbx, %rbx
	negq %rbx
	movq %rcx, %rcx
	addq $70, %rcx
	movq %rcx, %rbx
	negq %rbx
	movq %rbx, %rbx
	addq $121, %rbx
	movq %rbx, %rax

	movq %rax, %rcx
	callq print_int
	addq $48, %rsp
	movq $0, %rax
	popq %rbp
	retq
