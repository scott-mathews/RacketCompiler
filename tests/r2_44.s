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

	callq read_int
	movq %rax, -80(%rbp)
	movq $0, %rax
	cmpq %rax, -80(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -64(%rbp)
	movq -64(%rbp), %rax
	cmpq $1, %rax
	je then54383
	movq $0, -48(%rbp)
	jmp end54384
then54383:
	callq read_int
	movq %rax, -72(%rbp)
	movq $1, %rax
	cmpq %rax, -72(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -48(%rbp)
end54384:
	movq -48(%rbp), %rax
	cmpq $1, %rax
	je then54385
	movq $42, -88(%rbp)
	jmp end54386
then54385:
	movq $0, -88(%rbp)
end54386:
	movq -88(%rbp), %rax

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
