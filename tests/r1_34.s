	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $0, %rsp
	movq $16384, %rcx 
	movq $16, %rdx 
	callq initialize 
	movq rootstack_begin(%rip), %r15 
	movq $0, (%r15) 
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
	movq %rcx, %rcx
	addq %rbx, %rcx
	movq $1, %rbx
	addq $1, %rbx
	movq $1, %rdx
	addq $1, %rdx
	movq %rbx, %rbx
	addq %rdx, %rbx
	movq $1, %rdx
	addq $1, %rdx
	movq $1, %rsi
	addq $1, %rsi
	movq %rdx, %rdx
	addq %rsi, %rdx
	movq %rbx, %rbx
	addq %rdx, %rbx
	movq %rcx, %rcx
	addq %rbx, %rcx
	movq $1, %rbx
	addq $1, %rbx
	movq $1, %rdx
	addq $1, %rdx
	movq %rbx, %rbx
	addq %rdx, %rbx
	movq $1, %rdx
	addq $1, %rdx
	movq $1, %rsi
	addq $1, %rsi
	movq %rdx, %rdx
	addq %rsi, %rdx
	movq %rbx, %rbx
	addq %rdx, %rbx
	movq $1, %rdx
	addq $1, %rdx
	movq $1, %rsi
	addq $1, %rsi
	movq %rdx, %rdx
	addq %rsi, %rdx
	movq $1, %rsi
	addq $1, %rsi
	movq $1, %rdi
	addq $1, %rdi
	movq %rsi, %rsi
	addq %rdi, %rsi
	movq %rdx, %rdx
	addq %rsi, %rdx
	movq %rbx, %rbx
	addq %rdx, %rbx
	movq %rcx, %rcx
	addq %rbx, %rcx
	movq $10, %rbx
	addq %rcx, %rbx
	movq %rbx, %rax

	movq %rax, %rcx
	callq print_int
	subq $0, %r15
	addq $0, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
