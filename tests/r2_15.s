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

	movq $42, -48(%rbp)
	movq $42, %rax
	cmpq -48(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -64(%rbp)
	cmpq $1, -64(%rbp)
	je then478535
	movq $20, -80(%rbp)
	jmp end478536
then478535:
	movq -48(%rbp), %rax
	movq %rax, -80(%rbp)
end478536:
	movq $42, %rax
	cmpq -80(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -56(%rbp)
	cmpq $1, -56(%rbp)
	je then478537
	movq $777, -72(%rbp)
	jmp end478538
then478537:
	movq $42, -72(%rbp)
end478538:
	movq -72(%rbp), %rax

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
