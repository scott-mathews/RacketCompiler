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
	movq %rcx, %rcx
	addq %rbx, %rcx
	movq $1, %rbx
	addq $1, %rbx
	movq $1, %rdx
	addq $1, %rdx
	movq %rbx, %rbx
	addq %rdx, %rbx
	movq %rcx, %rdx
	addq %rbx, %rdx
	movq $1, %rcx
	addq $1, %rcx
	movq $1, %rbx
	addq $1, %rbx
	movq %rcx, %rsi
	addq %rbx, %rsi
	movq $1, %rcx
	addq $1, %rcx
	movq $1, %rbx
	addq $1, %rbx
	movq %rcx, %rcx
	addq %rbx, %rcx
	movq %rsi, %rbx
	addq %rcx, %rbx
	movq %rdx, %rdx
	addq %rbx, %rdx
	movq $1, %rcx
	addq $1, %rcx
	movq $1, %rbx
	addq $1, %rbx
	movq %rcx, %rcx
	addq %rbx, %rcx
	movq $1, %rbx
	addq $1, %rbx
	movq $1, %rsi
	addq $1, %rsi
	movq %rbx, %rbx
	addq %rsi, %rbx
	movq %rcx, %rdi
	addq %rbx, %rdi
	movq $1, %rcx
	addq $1, %rcx
	movq $1, %rbx
	addq $1, %rbx
	movq %rcx, %rsi
	addq %rbx, %rsi
	movq $1, %rcx
	addq $1, %rcx
	movq $1, %rbx
	addq $1, %rbx
	movq %rcx, %rcx
	addq %rbx, %rcx
	movq %rsi, %rbx
	addq %rcx, %rbx
	movq %rdi, %rcx
	addq %rbx, %rcx
	movq %rdx, %rbx
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
