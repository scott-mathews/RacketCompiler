	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp

	movq $32, %rbx
	movq %rbx, %rbx
	addq $10, %rbx
	movq %rbx, %rax

	movq %rax, %rcx
	callq print_int
	addq $16, %rsp
	movq $0, %rax
	popq %rbp
	retq