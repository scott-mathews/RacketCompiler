	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $448, %rsp
	movq $16384, %rcx 
	movq $16, %rdx 
	callq initialize 
	movq rootstack_begin(%rip), %r15 
	movq $0, (%r15) 
	addq $0, %r15

	callq read_int
	movq %rax, -176(%rbp)
	callq read_int
	movq %rax, -24(%rbp)
	callq read_int
	movq %rax, -168(%rbp)
	callq read_int
	movq %rax, -200(%rbp)
	callq read_int
	movq %rax, -72(%rbp)
	callq read_int
	movq %rax, -136(%rbp)
	callq read_int
	movq %rax, -80(%rbp)
	callq read_int
	movq %rax, -144(%rbp)
	callq read_int
	movq %rax, -32(%rbp)
	callq read_int
	movq %rax, -264(%rbp)
	callq read_int
	movq %rax, -160(%rbp)
	callq read_int
	movq %rax, -352(%rbp)
	callq read_int
	movq %rax, -48(%rbp)
	callq read_int
	movq %rax, -120(%rbp)
	callq read_int
	movq %rax, -8(%rbp)
	callq read_int
	movq %rax, -112(%rbp)
	movq -24(%rbp), %r8
	movq %r8, -256(%rbp)
	negq -256(%rbp)
	movq -176(%rbp), %r8
	movq %r8, -368(%rbp)
	movq -256(%rbp), %r9
	addq %r9, -368(%rbp)
	movq -200(%rbp), %r8
	movq %r8, -64(%rbp)
	negq -64(%rbp)
	movq -168(%rbp), %r8
	movq %r8, -248(%rbp)
	movq -64(%rbp), %r9
	addq %r9, -248(%rbp)
	movq -368(%rbp), %r8
	movq %r8, -192(%rbp)
	movq -248(%rbp), %r9
	addq %r9, -192(%rbp)
	movq -136(%rbp), %r8
	movq %r8, -288(%rbp)
	negq -288(%rbp)
	movq -72(%rbp), %r8
	movq %r8, -240(%rbp)
	movq -288(%rbp), %r9
	addq %r9, -240(%rbp)
	movq -144(%rbp), %r8
	movq %r8, -296(%rbp)
	negq -296(%rbp)
	movq -80(%rbp), %r8
	movq %r8, -448(%rbp)
	movq -296(%rbp), %r9
	addq %r9, -448(%rbp)
	movq -240(%rbp), %r8
	movq %r8, -96(%rbp)
	movq -448(%rbp), %r9
	addq %r9, -96(%rbp)
	movq -192(%rbp), %r8
	movq %r8, -40(%rbp)
	movq -96(%rbp), %r9
	addq %r9, -40(%rbp)
	movq -264(%rbp), %r8
	movq %r8, -344(%rbp)
	negq -344(%rbp)
	movq -32(%rbp), %r8
	movq %r8, -336(%rbp)
	movq -344(%rbp), %r9
	addq %r9, -336(%rbp)
	movq -352(%rbp), %r8
	movq %r8, -88(%rbp)
	negq -88(%rbp)
	movq -160(%rbp), %r8
	movq %r8, -408(%rbp)
	movq -88(%rbp), %r9
	addq %r9, -408(%rbp)
	movq -336(%rbp), %r8
	movq %r8, -232(%rbp)
	movq -408(%rbp), %r9
	addq %r9, -232(%rbp)
	movq -120(%rbp), %r8
	movq %r8, -312(%rbp)
	negq -312(%rbp)
	movq -48(%rbp), %r8
	movq %r8, -328(%rbp)
	movq -312(%rbp), %r9
	addq %r9, -328(%rbp)
	movq -112(%rbp), %r8
	movq %r8, -320(%rbp)
	negq -320(%rbp)
	movq -8(%rbp), %r8
	movq %r8, -216(%rbp)
	movq -320(%rbp), %r9
	addq %r9, -216(%rbp)
	movq -328(%rbp), %r8
	movq %r8, -432(%rbp)
	movq -216(%rbp), %r9
	addq %r9, -432(%rbp)
	movq -232(%rbp), %r8
	movq %r8, -224(%rbp)
	movq -432(%rbp), %r9
	addq %r9, -224(%rbp)
	movq -40(%rbp), %r8
	movq %r8, -152(%rbp)
	movq -224(%rbp), %r9
	addq %r9, -152(%rbp)
	movq -152(%rbp), %r8
	movq %r8, -16(%rbp)
	addq $42, -16(%rbp)
	movq -16(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	subq $0, %r15
	addq $448, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
