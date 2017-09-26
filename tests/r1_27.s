	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $96, %rsp

	movq $27, %rcx
	movq $-6, %rdx
	movq %rdx, %rdx
	addq %rcx, %rdx
	movq %rdx, %rbx
	negq %rbx
	movq %rcx, %rcx
	movq %rcx, %rsi
	addq %rcx, %rsi
	movq %rdx, %rcx
	negq %rcx
	movq %rbx, %rbx
	addq $5, %rbx
	movq $-7, %rbx
	movq %rcx, %rcx
	addq $70, %rcx
	movq %rbx, %rbx
	addq %rcx, %rbx
	movq %rbx, %rax

	movq %rax, %rcx
	callq print_int
	addq $96, %rsp
	movq $0, %rax
	popq %rbp
	retq
