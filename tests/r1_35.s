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
	movq %rax, -88(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -80(%rbp)
	callq read_int
	movq %rax, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -64(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -56(%rbp)
	movq -64(%rbp), %rax
	addq %rax, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -72(%rbp)
	addq $42, -72(%rbp)
	movq -72(%rbp), %rax

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
