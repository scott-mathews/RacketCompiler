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

	movq $1, -64(%rbp)
	xorq $1, -64(%rbp)
	cmpq $1, -64(%rbp)
	je then478500
	movq $1, -48(%rbp)
	jmp end478501
then478500:
	movq $0, -48(%rbp)
end478501:
	cmpq $1, -48(%rbp)
	je then478502
	movq $777, -56(%rbp)
	jmp end478503
then478502:
	movq $42, -56(%rbp)
end478503:
	movq -56(%rbp), %rax

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
