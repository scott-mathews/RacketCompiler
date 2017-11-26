	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $80, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	movq $1, -64(%rbp)
	xorq $1, -64(%rbp)
	movq -64(%rbp), %rax
	cmpq $1, %rax
	je then54404
	movq $1, -48(%rbp)
	jmp end54405
then54404:
	movq $0, -48(%rbp)
end54405:
	movq -48(%rbp), %rax
	cmpq $1, %rax
	je then54406
	movq $777, -56(%rbp)
	jmp end54407
then54406:
	movq $42, -56(%rbp)
end54407:
	movq -56(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $80, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
