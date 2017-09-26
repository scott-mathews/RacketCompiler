	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $96, %rsp

	movq $27, %rbx
	movq $-6, %rcx
	movq %rcx, %rdx
	addq %rbx, %rdx
	movq %rdx, %rcx
	negq %rcx
	movq %rbx, %rbx
	movq %rbx, %rsi
	addq %rbx, %rsi
	movq %rdx, %rbx
	negq %rbx
	movq %rcx, %rcx
	addq $5, %rcx
	movq $-7, %rcx
	movq %rbx, %rbx
	addq $70, %rbx
	movq %rcx, %rcx
	addq %rbx, %rcx
	movq %rcx, %rax

	movq %rax, %rcx
	callq print_int
	addq $96, %rsp
	movq $0, %rax
	popq %rbp
	retq
