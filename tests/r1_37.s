	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp

	movq $12, %rbx
	movq %rbx, %rbx
	addq $20, %rbx
	movq %rbx, %rbx
	addq $10, %rbx
	movq %rbx, %rax

	movq %rax, %rcx
	callq print_int
	addq $32, %rsp
	movq $0, %rax
	popq %rbp
	retq
