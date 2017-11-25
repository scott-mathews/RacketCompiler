	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $48, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	movq $1, %rdi
	addq $1, %rdi
	movq $1, %rbx
	addq $1, %rbx
	addq %rbx, %rdi
	movq $1, %rbx
	addq $1, %rbx
	movq $1, %rcx
	addq $1, %rcx
	addq %rcx, %rbx
	addq %rbx, %rdi
	movq $1, %rdx
	addq $1, %rdx
	movq $1, %rbx
	addq $1, %rbx
	addq %rbx, %rdx
	movq $1, %rcx
	addq $1, %rcx
	movq $1, %rbx
	addq $1, %rbx
	addq %rbx, %rcx
	movq %rdx, %rbx
	addq %rcx, %rbx
	addq %rbx, %rdi
	movq $1, %rsi
	addq $1, %rsi
	movq $1, %rbx
	addq $1, %rbx
	addq %rbx, %rsi
	movq $1, %rbx
	addq $1, %rbx
	movq $1, %rcx
	addq $1, %rcx
	addq %rcx, %rbx
	addq %rbx, %rsi
	movq $1, %rdx
	addq $1, %rdx
	movq $1, %rbx
	addq $1, %rbx
	addq %rbx, %rdx
	movq $1, %rcx
	addq $1, %rcx
	movq $1, %rbx
	addq $1, %rbx
	addq %rbx, %rcx
	addq %rcx, %rdx
	addq %rdx, %rsi
	addq %rsi, %rdi
	movq $10, %rbx
	addq %rdi, %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $48, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
