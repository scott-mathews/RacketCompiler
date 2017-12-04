	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $88, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	movq $1, %rcx
	addq $1, %rcx
	movq $1, %rbx
	addq $1, %rbx
	movq %rcx, %rdx
	addq %rbx, %rdx
	movq $1, %rcx
	addq $1, %rcx
	movq $1, %rbx
	addq $1, %rbx
	movq %rcx, %rcx
	addq %rbx, %rcx
	movq %rdx, %rbx
	addq %rcx, %rbx
	movq $1, %rcx
	addq $1, %rcx
	movq $1, %rdx
	addq $1, %rdx
	movq %rcx, %rcx
	addq %rdx, %rcx
	movq $1, %rdx
	addq $1, %rdx
	movq $1, %rsi
	addq $1, %rsi
	movq %rdx, %rdx
	addq %rsi, %rdx
	movq %rcx, %rcx
	addq %rdx, %rcx
	movq %rbx, %rbx
	addq %rcx, %rbx
	movq $1, %rdx
	addq $1, %rdx
	movq $1, %rcx
	addq $1, %rcx
	movq %rdx, %rsi
	addq %rcx, %rsi
	movq $1, %rcx
	addq $1, %rcx
	movq $1, %rdx
	addq $1, %rdx
	movq %rcx, %rcx
	addq %rdx, %rcx
	movq %rsi, %rsi
	addq %rcx, %rsi
	movq $1, %rdx
	addq $1, %rdx
	movq $1, %rcx
	addq $1, %rcx
	movq %rdx, %rdx
	addq %rcx, %rdx
	movq $1, %rcx
	addq $1, %rcx
	movq $1, %rdi
	addq $1, %rdi
	movq %rcx, %rcx
	addq %rdi, %rcx
	movq %rdx, %rdx
	addq %rcx, %rdx
	movq %rsi, %rcx
	addq %rdx, %rcx
	movq %rbx, %rbx
	addq %rcx, %rbx
	movq $10, %rcx
	addq %rbx, %rcx
	movq %rcx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $88, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
