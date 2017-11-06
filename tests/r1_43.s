	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $80, %rsp
	movq $16384, %rcx 
	movq $16, %rdx 
	callq initialize 
	movq rootstack_begin(%rip), %r15 
	movq $0, (%r15) 
	addq $0, %r15

	movq $1, -8(%rbp)
	movq $46, -48(%rbp)
	movq -8(%rbp), %r8
	movq %r8, -16(%rbp)
	addq $7, -16(%rbp)
	movq $4, -24(%rbp)
	movq -16(%rbp), %r9
	addq %r9, -24(%rbp)
	movq -16(%rbp), %r8
	movq %r8, -32(%rbp)
	movq -48(%rbp), %r9
	addq %r9, -32(%rbp)
	movq -24(%rbp), %r8
	movq %r8, -80(%rbp)
	negq -80(%rbp)
	movq -32(%rbp), %r8
	movq %r8, -72(%rbp)
	movq -80(%rbp), %r9
	addq %r9, -72(%rbp)
	movq -72(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	subq $0, %r15
	addq $80, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
