	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $144, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	callq read_int
	movq %rax, -80(%rbp)
	movq $0, %rax
	cmpq -80(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -96(%rbp)
	cmpq $1, -96(%rbp)
	je then478791
	callq read_int
	movq %rax, -48(%rbp)
	movq $0, %rax
	cmpq -48(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -64(%rbp)
	cmpq $1, -64(%rbp)
	je then478793
	movq $444, -88(%rbp)
	jmp end478794
then478793:
	movq $40, -88(%rbp)
end478794:
	movq $2, -72(%rbp)
	movq -88(%rbp), %rax
	addq %rax, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -56(%rbp)
	jmp end478792
then478791:
	movq $777, -56(%rbp)
end478792:
	movq -56(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $144, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
