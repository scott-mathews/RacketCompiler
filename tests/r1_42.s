	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $48, %rsp
	movq $16384, %rcx 
	movq $16, %rdx 
	callq initialize 
	movq rootstack_begin(%rip), %r15 
	movq $0, (%r15) 
	addq $0, %r15

	movq $30, -40(%rbp)
	movq -40(%rbp), %r8
	movq %r8, -32(%rbp)
	addq $14, -32(%rbp)
	movq $2, -8(%rbp)
	movq -8(%rbp), %r8
	movq %r8, -16(%rbp)
	negq -16(%rbp)
	movq -32(%rbp), %r8
	movq %r8, -24(%rbp)
	movq -16(%rbp), %r9
	addq %r9, -24(%rbp)
	movq -24(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	subq $0, %r15
	addq $48, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
