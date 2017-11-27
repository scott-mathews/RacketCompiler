	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $368, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	callq read_int
	movq %rax, -256(%rbp)
	movq -256(%rbp), %rax
	movq %rax, -96(%rbp)
	callq read_int
	movq %rax, %r13
	callq read_int
	movq %rax, -224(%rbp)
	movq -224(%rbp), %rax
	movq %rax, -48(%rbp)
	callq read_int
	movq %rax, -80(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -232(%rbp)
	callq read_int
	movq %rax, -248(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -104(%rbp)
	callq read_int
	movq %rax, %r12
	callq read_int
	movq %rax, -272(%rbp)
	movq -272(%rbp), %rax
	movq %rax, -56(%rbp)
	callq read_int
	movq %rax, -168(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -240(%rbp)
	callq read_int
	movq %rax, -336(%rbp)
	movq -336(%rbp), %rax
	movq %rax, -112(%rbp)
	callq read_int
	movq %rax, %rbx
	callq read_int
	movq %rax, -280(%rbp)
	movq -280(%rbp), %rax
	movq %rax, -64(%rbp)
	callq read_int
	movq %rax, -312(%rbp)
	movq -312(%rbp), %rax
	movq %rax, -88(%rbp)
	callq read_int
	movq %rax, %r14
	callq read_int
	movq %rax, -360(%rbp)
	movq -360(%rbp), %rax
	movq %rax, -120(%rbp)
	callq read_int
	movq %rax, -288(%rbp)
	movq -288(%rbp), %rax
	movq %rax, -72(%rbp)
	callq read_int
	movq %rax, %rcx
	negq %r13
	movq -96(%rbp), %rax
	movq %rax, -192(%rbp)
	addq %r13, -192(%rbp)
	movq -232(%rbp), %rax
	movq %rax, -304(%rbp)
	negq -304(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -128(%rbp)
	movq -304(%rbp), %rax
	addq %rax, -128(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -320(%rbp)
	movq -128(%rbp), %rax
	addq %rax, -320(%rbp)
	negq %r12
	movq -104(%rbp), %rax
	movq %rax, -344(%rbp)
	addq %r12, -344(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -328(%rbp)
	negq -328(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -160(%rbp)
	movq -328(%rbp), %rax
	addq %rax, -160(%rbp)
	movq -344(%rbp), %rax
	movq %rax, -176(%rbp)
	movq -160(%rbp), %rax
	addq %rax, -176(%rbp)
	movq -320(%rbp), %rax
	movq %rax, -144(%rbp)
	movq -176(%rbp), %rax
	addq %rax, -144(%rbp)
	negq %rbx
	movq -112(%rbp), %rax
	movq %rax, -152(%rbp)
	addq %rbx, -152(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -296(%rbp)
	negq -296(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -200(%rbp)
	movq -296(%rbp), %rax
	addq %rax, -200(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -136(%rbp)
	movq -200(%rbp), %rax
	addq %rax, -136(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -216(%rbp)
	negq -216(%rbp)
	addq -216(%rbp), %r14
	negq %rcx
	movq -72(%rbp), %rax
	movq %rax, -264(%rbp)
	addq %rcx, -264(%rbp)
	addq -264(%rbp), %r14
	movq -136(%rbp), %rax
	movq %rax, -208(%rbp)
	addq %r14, -208(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -352(%rbp)
	movq -208(%rbp), %rax
	addq %rax, -352(%rbp)
	movq -352(%rbp), %rax
	movq %rax, -184(%rbp)
	addq $42, -184(%rbp)
	movq -184(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $368, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
