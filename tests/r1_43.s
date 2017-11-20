	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r15
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $80, %rsp
	movq $16384, %rcx 
	movq $16, %rdx 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15
	movq $0, 0(%r15)

	movq $1, -80(%rbp)
	movq $46, -40(%rbp)
	movq -80(%rbp), %r8
	movq %r8, -64(%rbp)
	addq $7, -64(%rbp)
	movq $4, -24(%rbp)
	movq -64(%rbp), %r9
	addq %r9, -24(%rbp)
	movq -64(%rbp), %r8
	movq %r8, -8(%rbp)
	movq -40(%rbp), %r9
	addq %r9, -8(%rbp)
	movq -24(%rbp), %r8
	movq %r8, -48(%rbp)
	negq -48(%rbp)
	movq -8(%rbp), %r8
	movq %r8, -32(%rbp)
	movq -48(%rbp), %r9
	addq %r9, -32(%rbp)
	movq -32(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	subq $0, %r15
	addq $80, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %r15
	popq %rbp
	retq
