	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $96, %rsp

	movq $27, %rbx
	movq $-6, %rdx
	movq %rdx, %rdx
	addq %rbx, %rdx
	movq %rdx, %rsi
	negq %rsi
	movq %rbx, %rcx
	movq %rcx, %rcx
	addq %rbx, %rcx
	movq %rdx, %rdx
	negq %rdx
	movq %rsi, %rsi
	addq $5, %rsi
	movq $-7, %rbx
	movq %rdx, %rdx
	addq $70, %rdx
	movq %rbx, %rbx
	addq %rdx, %rbx
	movq %rbx, %rax

	movq %rax, %rcx
	callq print_int
	addq $96, %rsp
	movq $0, %rax
	popq %rbp
	retq
