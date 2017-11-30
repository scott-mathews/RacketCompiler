	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $136, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	movq $0, %rax
	cmpq $1, %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -80(%rbp)
	cmpq $1, -80(%rbp)
	je then478775
	movq $1, -72(%rbp)
	addq $1, -72(%rbp)
	movq $2, %rax
	cmpq -72(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -88(%rbp)
	cmpq $1, -88(%rbp)
	je then478777
	movq $444, -56(%rbp)
	jmp end478778
then478777:
	movq $40, -56(%rbp)
end478778:
	movq $2, -48(%rbp)
	movq -56(%rbp), %rax
	addq %rax, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -64(%rbp)
	jmp end478776
then478775:
	movq $777, -64(%rbp)
end478776:
	movq -64(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $136, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
