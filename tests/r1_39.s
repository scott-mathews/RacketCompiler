	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r15
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $32, %rsp
	movq $16384, %rcx 
	movq $16, %rdx 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15
	movq $0, 0(%r15)

	movq $7, -8(%rbp)
	addq $3, -8(%rbp)
	movq -8(%rbp), %r8
	movq %r8, -16(%rbp)
	negq -16(%rbp)
	movq $52, -24(%rbp)
	movq -16(%rbp), %r9
	addq %r9, -24(%rbp)
	movq -24(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	subq $0, %r15
	addq $32, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %r15
	popq %rbp
	retq
