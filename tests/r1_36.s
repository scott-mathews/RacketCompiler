	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $272, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	callq read_int
	movq %rax, -120(%rbp)
	callq read_int
	movq %rax, -192(%rbp)
	callq read_int
	movq %rax, -48(%rbp)
	callq read_int
	movq %rax, %r12
	callq read_int
	movq %rax, -128(%rbp)
	callq read_int
	movq %rax, -200(%rbp)
	callq read_int
	movq %rax, -56(%rbp)
	callq read_int
	movq %rax, %rbx
	callq read_int
	movq %rax, %r14
	callq read_int
	movq %rax, -64(%rbp)
	callq read_int
	movq %rax, -208(%rbp)
	callq read_int
	movq %rax, -112(%rbp)
	callq read_int
	movq %rax, %r13
	callq read_int
	movq %rax, -160(%rbp)
	callq read_int
	movq %rax, -216(%rbp)
	callq read_int
	movq %rax, %rcx
	movq -192(%rbp), %rax
	movq %rax, -80(%rbp)
	negq -80(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -256(%rbp)
	movq -80(%rbp), %rax
	addq %rax, -256(%rbp)
	negq %r12
	movq -48(%rbp), %rax
	movq %rax, -232(%rbp)
	addq %r12, -232(%rbp)
	movq -256(%rbp), %rax
	movq %rax, -136(%rbp)
	movq -232(%rbp), %rax
	addq %rax, -136(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -88(%rbp)
	negq -88(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -168(%rbp)
	movq -88(%rbp), %rax
	addq %rax, -168(%rbp)
	negq %rbx
	movq -56(%rbp), %rax
	movq %rax, -240(%rbp)
	addq %rbx, -240(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -144(%rbp)
	movq -240(%rbp), %rax
	addq %rax, -144(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -224(%rbp)
	movq -144(%rbp), %rax
	addq %rax, -224(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -152(%rbp)
	negq -152(%rbp)
	addq -152(%rbp), %r14
	movq -112(%rbp), %rax
	movq %rax, -96(%rbp)
	negq -96(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -176(%rbp)
	movq -96(%rbp), %rax
	addq %rax, -176(%rbp)
	addq -176(%rbp), %r14
	movq -160(%rbp), %rax
	movq %rax, -184(%rbp)
	negq -184(%rbp)
	addq -184(%rbp), %r13
	negq %rcx
	movq -216(%rbp), %rax
	movq %rax, -104(%rbp)
	addq %rcx, -104(%rbp)
	addq -104(%rbp), %r13
	addq %r13, %r14
	movq -224(%rbp), %rax
	movq %rax, -72(%rbp)
	addq %r14, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -248(%rbp)
	addq $42, -248(%rbp)
	movq -248(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $272, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
