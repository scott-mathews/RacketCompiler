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

	movq $1, -80(%rbp)
	callq read_int
	movq %rax, -64(%rbp)
	movq -80(%rbp), %rax
	cmpq %rax, -64(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -72(%rbp)
	xorq $1, -72(%rbp)
	cmpq $1, -72(%rbp)
	je then478863
	movq $42, -48(%rbp)
	jmp end478864
then478863:
	movq $777, -48(%rbp)
end478864:
	movq -48(%rbp), %rax

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
