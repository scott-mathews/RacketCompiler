	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $128, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	movq $1, -56(%rbp)
	cmpq $1, -56(%rbp)
	je then478514
	movq $0, -48(%rbp)
	jmp end478515
then478514:
	movq -56(%rbp), %rax
	movq %rax, -48(%rbp)
end478515:
	cmpq $1, -48(%rbp)
	je then478516
	movq $0, -72(%rbp)
	jmp end478517
then478516:
	movq $1, -72(%rbp)
end478517:
	movq -72(%rbp), %rax
	movq %rax, -80(%rbp)
	cmpq $1, -80(%rbp)
	je then478518
	movq $777, -64(%rbp)
	jmp end478519
then478518:
	movq $42, -64(%rbp)
end478519:
	movq -64(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $128, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
