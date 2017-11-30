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
	je then478837
	movq $1, -48(%rbp)
	jmp end478838
then478837:
	movq $0, -48(%rbp)
end478838:
	cmpq $1, -48(%rbp)
	je then478839
	movq $777, -56(%rbp)
	jmp end478840
then478839:
	movq $42, -56(%rbp)
end478840:
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
