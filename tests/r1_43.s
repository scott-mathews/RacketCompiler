	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $168, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	movq $1, -72(%rbp)
	movq $46, -112(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -104(%rbp)
	addq $7, -104(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -56(%rbp)
	movq $4, -48(%rbp)
	movq -56(%rbp), %rax
	addq %rax, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -80(%rbp)
	movq -112(%rbp), %rax
	addq %rax, -80(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -64(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -96(%rbp)
	negq -96(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -120(%rbp)
	movq -96(%rbp), %rax
	addq %rax, -120(%rbp)
	movq -120(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $168, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
