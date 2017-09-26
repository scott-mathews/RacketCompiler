	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $80, %rsp

	movq $2, %rdi
	movq %rdi, %rdx
	addq $4, %rdx
	movq %rdi, %rcx
	addq $3, %rcx
	movq %rdx, %rsi
	negq %rsi
	movq %rcx, %rbx
	addq %rdi, %rbx
	movq %rdx, %rdx
	negq %rdx
	movq $45, %rbx
	movq %rsi, %rbx
	addq $3, %rbx
	movq %rcx, %rbx
	addq %rsi, %rbx
	movq %rbx, %rbx
	addq $43, %rbx
	movq %rbx, %rax

	movq %rax, %rcx
	callq print_int
	addq $80, %rsp
	movq $0, %rax
	popq %rbp
	retq
