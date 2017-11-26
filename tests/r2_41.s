	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $96, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	movq $0, %rax
	cmpq $1, %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -72(%rbp)
	movq -72(%rbp), %rax
	cmpq $1, %rax
	je then54340
	movq $1, -64(%rbp)
	addq $1, -64(%rbp)
	movq $2, %rax
	cmpq %rax, -64(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -80(%rbp)
	movq -80(%rbp), %rax
	cmpq $1, %rax
	je then54342
	movq $444, -88(%rbp)
	jmp end54343
then54342:
	movq $40, -88(%rbp)
end54343:
	movq $2, -56(%rbp)
	movq -88(%rbp), %rax
	addq %rax, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -48(%rbp)
	jmp end54341
then54340:
	movq $777, -48(%rbp)
end54341:
	movq -48(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $96, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
