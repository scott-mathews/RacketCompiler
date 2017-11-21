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
	movq %rax, -248(%rbp)
	callq read_int
	movq %rax, -64(%rbp)
	callq read_int
	movq %rax, -224(%rbp)
	callq read_int
	movq %rax, -168(%rbp)
	callq read_int
	movq %rax, %r13
	callq read_int
	movq %rax, -200(%rbp)
	callq read_int
	movq %rax, %r12
	callq read_int
	movq %rax, -208(%rbp)
	callq read_int
	movq %rax, -216(%rbp)
	callq read_int
	movq %rax, %rbx
	callq read_int
	movq %rax, -112(%rbp)
	callq read_int
	movq %rax, -152(%rbp)
	callq read_int
	movq %rax, %r14
	callq read_int
	movq %rax, -192(%rbp)
	callq read_int
	movq %rax, -232(%rbp)
	callq read_int
	movq %rax, %rcx
	movq -64(%rbp), %rax
	movq %rax, -144(%rbp)
	negq -144(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -104(%rbp)
	movq -144(%rbp), %rax
	addq %rax, -104(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -128(%rbp)
	negq -128(%rbp)
	movq -224(%rbp), %rax
	movq %rax, -80(%rbp)
	movq -128(%rbp), %rax
	addq %rax, -80(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -176(%rbp)
	movq -80(%rbp), %rax
	addq %rax, -176(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -48(%rbp)
	negq -48(%rbp)
	movq %r13, %r13
	addq -48(%rbp), %r13
	movq -208(%rbp), %rax
	movq %rax, -56(%rbp)
	negq -56(%rbp)
	movq %r12, %r12
	addq -56(%rbp), %r12
	movq %r13, %r13
	addq %r12, %r13
	movq -176(%rbp), %rax
	movq %rax, -136(%rbp)
	addq %r13, -136(%rbp)
	movq %rbx, %rbx
	negq %rbx
	movq -216(%rbp), %rax
	movq %rax, -184(%rbp)
	addq %rbx, -184(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -256(%rbp)
	negq -256(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -72(%rbp)
	movq -256(%rbp), %rax
	addq %rax, -72(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -264(%rbp)
	movq -72(%rbp), %rax
	addq %rax, -264(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -160(%rbp)
	negq -160(%rbp)
	movq %r14, %r14
	addq -160(%rbp), %r14
	movq %rcx, %rcx
	negq %rcx
	movq -232(%rbp), %rax
	movq %rax, -88(%rbp)
	addq %rcx, -88(%rbp)
	movq %r14, %r14
	addq -88(%rbp), %r14
	movq -264(%rbp), %rax
	movq %rax, -120(%rbp)
	addq %r14, -120(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -240(%rbp)
	movq -120(%rbp), %rax
	addq %rax, -240(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -96(%rbp)
	addq $42, -96(%rbp)
	movq -96(%rbp), %rax

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
