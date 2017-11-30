	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $120, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	movq $0, %rax
	cmpq $1, %rax
	je then478569
	movq $0, -48(%rbp)
	jmp end478570
then478569:
	callq read_int
	movq %rax, -56(%rbp)
	movq $42, %rax
	cmpq -56(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -48(%rbp)
end478570:
	cmpq $1, -48(%rbp)
	je then478571
	movq $42, -72(%rbp)
	jmp end478572
then478571:
	movq $777, -72(%rbp)
end478572:
	movq -72(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $120, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
