	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp

	movq $14, %rbx
	movq %rbx, %rcx
	addq %rbx, %rcx
	movq %rbx, %rbx
	addq %rcx, %rbx
	movq %rbx, %rax

	movq %rax, %rcx
	callq print_int
	addq $32, %rsp
	movq $0, %rax
	popq %rbp
	retq
