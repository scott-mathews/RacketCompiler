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

	movq $1, -56(%rbp)
	xorq $1, -56(%rbp)
	movq -56(%rbp), %rax
	cmpq $1, %rax
	je then54057
	movq $1, -48(%rbp)
	jmp end54058
then54057:
	movq $0, -48(%rbp)
end54058:
	movq -48(%rbp), %rax
	cmpq $1, %rax
	je then54059
	movq $777, -64(%rbp)
	jmp end54060
then54059:
	movq $42, -64(%rbp)
end54060:
	movq -64(%rbp), %rax

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
