	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $80, %rsp

	movq $2, %rbx
	movq %rbx, %rdi
	addq $4, %rdi
	movq %rbx, %rdx
	addq $3, %rdx
	movq %rdi, %rcx
	negq %rcx
	movq %rdx, %rsi
	addq %rbx, %rsi
	movq %rdi, %rbx
	negq %rbx
	movq $45, %rbx
	movq %rcx, %rbx
	addq $3, %rbx
	movq %rdx, %rdx
	addq %rcx, %rdx
	movq %rdx, %rbx
	addq $43, %rbx
	movq %rbx, %rax

	movq %rax, %rcx
	callq print_int
	addq $80, %rsp
	movq $0, %rax
	popq %rbp
	retq
