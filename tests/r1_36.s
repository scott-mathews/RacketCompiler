	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $536, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	callq read_int
	movq %rax, -432(%rbp)
	movq -432(%rbp), %rax
	movq %rax, -72(%rbp)
	callq read_int
	movq %rax, -232(%rbp)
	movq -232(%rbp), %rax
	movq %rax, -296(%rbp)
	callq read_int
	movq %rax, -360(%rbp)
	movq -360(%rbp), %rax
	movq %rax, -48(%rbp)
	callq read_int
	movq %rax, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -272(%rbp)
	callq read_int
	movq %rax, -416(%rbp)
	movq -416(%rbp), %rax
	movq %rax, -184(%rbp)
	callq read_int
	movq %rax, -216(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -472(%rbp)
	callq read_int
	movq %rax, -328(%rbp)
	movq -328(%rbp), %rax
	movq %rax, -96(%rbp)
	callq read_int
	movq %rax, -136(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -384(%rbp)
	callq read_int
	movq %rax, -448(%rbp)
	movq -448(%rbp), %rax
	movq %rax, -192(%rbp)
	callq read_int
	movq %rax, -256(%rbp)
	movq -256(%rbp), %rax
	movq %rax, -480(%rbp)
	callq read_int
	movq %rax, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -336(%rbp)
	callq read_int
	movq %rax, -400(%rbp)
	movq -400(%rbp), %rax
	movq %rax, -144(%rbp)
	callq read_int
	movq %rax, -80(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -424(%rbp)
	callq read_int
	movq %rax, -304(%rbp)
	movq -304(%rbp), %rax
	movq %rax, -224(%rbp)
	callq read_int
	movq %rax, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -352(%rbp)
	callq read_int
	movq %rax, -280(%rbp)
	movq -280(%rbp), %rax
	movq %rax, -152(%rbp)
	movq -296(%rbp), %rax
	movq %rax, -488(%rbp)
	negq -488(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -200(%rbp)
	movq -488(%rbp), %rax
	addq %rax, -200(%rbp)
	movq -272(%rbp), %rax
	movq %rax, -392(%rbp)
	negq -392(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -104(%rbp)
	movq -392(%rbp), %rax
	addq %rax, -104(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -288(%rbp)
	movq -104(%rbp), %rax
	addq %rax, -288(%rbp)
	movq -472(%rbp), %rax
	movq %rax, -168(%rbp)
	negq -168(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -456(%rbp)
	movq -168(%rbp), %rax
	addq %rax, -456(%rbp)
	movq -384(%rbp), %rax
	movq %rax, -264(%rbp)
	negq -264(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -376(%rbp)
	movq -264(%rbp), %rax
	addq %rax, -376(%rbp)
	movq -456(%rbp), %rax
	movq %rax, -208(%rbp)
	movq -376(%rbp), %rax
	addq %rax, -208(%rbp)
	movq -288(%rbp), %rax
	movq %rax, -64(%rbp)
	movq -208(%rbp), %rax
	addq %rax, -64(%rbp)
	movq -480(%rbp), %rax
	movq %rax, -248(%rbp)
	negq -248(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -368(%rbp)
	movq -248(%rbp), %rax
	addq %rax, -368(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -128(%rbp)
	negq -128(%rbp)
	movq -336(%rbp), %rax
	movq %rax, -440(%rbp)
	movq -128(%rbp), %rax
	addq %rax, -440(%rbp)
	movq -368(%rbp), %rax
	movq %rax, -176(%rbp)
	movq -440(%rbp), %rax
	addq %rax, -176(%rbp)
	movq -224(%rbp), %rax
	movq %rax, -408(%rbp)
	negq -408(%rbp)
	movq -424(%rbp), %rax
	movq %rax, -240(%rbp)
	movq -408(%rbp), %rax
	addq %rax, -240(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -344(%rbp)
	negq -344(%rbp)
	movq -352(%rbp), %rax
	movq %rax, -120(%rbp)
	movq -344(%rbp), %rax
	addq %rax, -120(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -320(%rbp)
	movq -120(%rbp), %rax
	addq %rax, -320(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -464(%rbp)
	movq -320(%rbp), %rax
	addq %rax, -464(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -312(%rbp)
	movq -464(%rbp), %rax
	addq %rax, -312(%rbp)
	movq -312(%rbp), %rax
	movq %rax, -88(%rbp)
	addq $42, -88(%rbp)
	movq -88(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $536, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
