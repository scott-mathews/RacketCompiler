	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r15
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $448, %rsp
	movq $16384, %rcx 
	movq $16, %rdx 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15
	movq $0, 0(%r15)

	callq read_int
	movq %rax, -88(%rbp)
	callq read_int
	movq %rax, -168(%rbp)
	callq read_int
	movq %rax, -312(%rbp)
	callq read_int
	movq %rax, -392(%rbp)
	callq read_int
	movq %rax, -136(%rbp)
	callq read_int
	movq %rax, -200(%rbp)
	callq read_int
	movq %rax, -24(%rbp)
	callq read_int
	movq %rax, -80(%rbp)
	callq read_int
	movq %rax, -16(%rbp)
	callq read_int
	movq %rax, -240(%rbp)
	callq read_int
	movq %rax, -40(%rbp)
	callq read_int
	movq %rax, -224(%rbp)
	callq read_int
	movq %rax, -216(%rbp)
	callq read_int
	movq %rax, -176(%rbp)
	callq read_int
	movq %rax, -64(%rbp)
	callq read_int
	movq %rax, -56(%rbp)
	movq -168(%rbp), %r8
	movq %r8, -344(%rbp)
	negq -344(%rbp)
	movq -88(%rbp), %r8
	movq %r8, -48(%rbp)
	movq -344(%rbp), %r9
	addq %r9, -48(%rbp)
	movq -392(%rbp), %r8
	movq %r8, -128(%rbp)
	negq -128(%rbp)
	movq -312(%rbp), %r8
	movq %r8, -192(%rbp)
	movq -128(%rbp), %r9
	addq %r9, -192(%rbp)
	movq -48(%rbp), %r8
	movq %r8, -448(%rbp)
	movq -192(%rbp), %r9
	addq %r9, -448(%rbp)
	movq -200(%rbp), %r8
	movq %r8, -400(%rbp)
	negq -400(%rbp)
	movq -136(%rbp), %r8
	movq %r8, -408(%rbp)
	movq -400(%rbp), %r9
	addq %r9, -408(%rbp)
	movq -80(%rbp), %r8
	movq %r8, -384(%rbp)
	negq -384(%rbp)
	movq -24(%rbp), %r8
	movq %r8, -8(%rbp)
	movq -384(%rbp), %r9
	addq %r9, -8(%rbp)
	movq -408(%rbp), %r8
	movq %r8, -232(%rbp)
	movq -8(%rbp), %r9
	addq %r9, -232(%rbp)
	movq -448(%rbp), %r8
	movq %r8, -432(%rbp)
	movq -232(%rbp), %r9
	addq %r9, -432(%rbp)
	movq -240(%rbp), %r8
	movq %r8, -112(%rbp)
	negq -112(%rbp)
	movq -16(%rbp), %r8
	movq %r8, -264(%rbp)
	movq -112(%rbp), %r9
	addq %r9, -264(%rbp)
	movq -224(%rbp), %r8
	movq %r8, -120(%rbp)
	negq -120(%rbp)
	movq -40(%rbp), %r8
	movq %r8, -296(%rbp)
	movq -120(%rbp), %r9
	addq %r9, -296(%rbp)
	movq -264(%rbp), %r8
	movq %r8, -280(%rbp)
	movq -296(%rbp), %r9
	addq %r9, -280(%rbp)
	movq -176(%rbp), %r8
	movq %r8, -352(%rbp)
	negq -352(%rbp)
	movq -216(%rbp), %r8
	movq %r8, -144(%rbp)
	movq -352(%rbp), %r9
	addq %r9, -144(%rbp)
	movq -56(%rbp), %r8
	movq %r8, -368(%rbp)
	negq -368(%rbp)
	movq -64(%rbp), %r8
	movq %r8, -256(%rbp)
	movq -368(%rbp), %r9
	addq %r9, -256(%rbp)
	movq -144(%rbp), %r8
	movq %r8, -72(%rbp)
	movq -256(%rbp), %r9
	addq %r9, -72(%rbp)
	movq -280(%rbp), %r8
	movq %r8, -32(%rbp)
	movq -72(%rbp), %r9
	addq %r9, -32(%rbp)
	movq -432(%rbp), %r8
	movq %r8, -96(%rbp)
	movq -32(%rbp), %r9
	addq %r9, -96(%rbp)
	movq -96(%rbp), %r8
	movq %r8, -288(%rbp)
	addq $42, -288(%rbp)
	movq -288(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	subq $0, %r15
	addq $448, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %r15
	popq %rbp
	retq
