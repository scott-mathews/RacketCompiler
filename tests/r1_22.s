	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp

	movq $5, %rbx
	movq %rbx, %rcx
	addq $5, %rcx
	movq %rbx, %rbx
	addq %rcx, %rbx
	movq %rbx, %rbx
	addq $27, %rbx
	movq %rbx, %rax

	movq %rax, %rcx
	callq print_int
	addq $32, %rsp
	movq $0, %rax
	popq %rbp
	retq
