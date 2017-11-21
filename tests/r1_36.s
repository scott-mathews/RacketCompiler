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
	movq %rax, %rbx
	callq read_int
	movq %rax, -168(%rbp)
	callq read_int
	movq %rax, -224(%rbp)
	callq read_int
	movq %rax, -80(%rbp)
	callq read_int
	movq %rax, -48(%rbp)
	callq read_int
	movq %rax, %r12
	callq read_int
	movq %rax, -112(%rbp)
	callq read_int
	movq %rax, %r13
	callq read_int
	movq %rax, -240(%rbp)
	callq read_int
	movq %rax, -184(%rbp)
	callq read_int
	movq %rax, -232(%rbp)
	callq read_int
	movq %rax, -200(%rbp)
	callq read_int
	movq %rax, %r14
	callq read_int
	movq %rax, -208(%rbp)
	callq read_int
	movq %rax, %rcx
	movq %rbx, %rbx
	negq %rbx
	movq -120(%rbp), %rax
	movq %rax, -128(%rbp)
	addq %rbx, -128(%rbp)
	movq -224(%rbp), %rax
	movq %rax, -88(%rbp)
	negq -88(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -136(%rbp)
	movq -88(%rbp), %rax
	addq %rax, -136(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -264(%rbp)
	movq -136(%rbp), %rax
	addq %rax, -264(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -216(%rbp)
	negq -216(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -160(%rbp)
	movq -216(%rbp), %rax
	addq %rax, -160(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -152(%rbp)
	negq -152(%rbp)
	movq %r12, %r12
	addq -152(%rbp), %r12
	movq -160(%rbp), %rax
	movq %rax, -56(%rbp)
	addq %r12, -56(%rbp)
	movq -264(%rbp), %rax
	movq %rax, -144(%rbp)
	movq -56(%rbp), %rax
	addq %rax, -144(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -72(%rbp)
	negq -72(%rbp)
	movq %r13, %r13
	addq -72(%rbp), %r13
	movq -232(%rbp), %rax
	movq %rax, -64(%rbp)
	negq -64(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -104(%rbp)
	movq -64(%rbp), %rax
	addq %rax, -104(%rbp)
	movq %r13, %r13
	addq -104(%rbp), %r13
	movq %r14, %r14
	negq %r14
	movq -200(%rbp), %rax
	movq %rax, -176(%rbp)
	addq %r14, -176(%rbp)
	movq %rcx, %rcx
	negq %rcx
	movq -208(%rbp), %rax
	movq %rax, -192(%rbp)
	addq %rcx, -192(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -192(%rbp), %rax
	addq %rax, -96(%rbp)
	movq %r13, %r13
	addq -96(%rbp), %r13
	movq -144(%rbp), %rax
	movq %rax, -248(%rbp)
	addq %r13, -248(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -256(%rbp)
	addq $42, -256(%rbp)
	movq -256(%rbp), %rax

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
