	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $112, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	movq $0, -56(%rbp)
	xorq $1, -56(%rbp)
	cmpq $1, -56(%rbp)
	je then478849
	movq $1, -64(%rbp)
	jmp end478850
then478849:
	movq $0, -64(%rbp)
end478850:
	cmpq $1, -64(%rbp)
	je then478851
	movq $42, -48(%rbp)
	jmp end478852
then478851:
	movq $777, -48(%rbp)
end478852:
	movq -48(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $112, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
