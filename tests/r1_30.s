	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp

	movq $9, %rbx
	movq %rbx, %rcx
	addq $7, %rcx
	movq %rcx, %rcx
	negq %rcx
	movq %rbx, %rbx
	addq $70, %rbx
	movq %rbx, %rbx
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
