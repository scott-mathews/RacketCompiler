	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $288, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	callq read_int
	movq %rax, -208(%rbp)
	callq read_int
	movq %rax, -168(%rbp)
	callq read_int
	movq %rax, %r12
	callq read_int
	movq %rax, -104(%rbp)
	callq read_int
	movq %rax, -200(%rbp)
	callq read_int
	movq %rax, -152(%rbp)
	callq read_int
	movq %rax, %r14
	callq read_int
	movq %rax, -112(%rbp)
	callq read_int
	movq %rax, -56(%rbp)
	callq read_int
	movq %rax, -160(%rbp)
	callq read_int
	movq %rax, %r13
	callq read_int
	movq %rax, -80(%rbp)
	callq read_int
	movq %rax, -48(%rbp)
	callq read_int
	movq %rax, %rbx
	callq read_int
	movq %rax, -120(%rbp)
	callq read_int
	movq %rax, %rcx
	movq -168(%rbp), %rax
	movq %rax, -264(%rbp)
	negq -264(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -72(%rbp)
	movq -264(%rbp), %rax
	addq %rax, -72(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -232(%rbp)
	negq -232(%rbp)
	addq -232(%rbp), %r12
	movq -72(%rbp), %rax
	movq %rax, -224(%rbp)
	addq %r12, -224(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -128(%rbp)
	negq -128(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -272(%rbp)
	movq -128(%rbp), %rax
	addq %rax, -272(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -192(%rbp)
	negq -192(%rbp)
	addq -192(%rbp), %r14
	movq -272(%rbp), %rax
	movq %rax, -216(%rbp)
	addq %r14, -216(%rbp)
	movq -224(%rbp), %rax
	movq %rax, -136(%rbp)
	movq -216(%rbp), %rax
	addq %rax, -136(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -184(%rbp)
	negq -184(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -184(%rbp), %rax
	addq %rax, -96(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -248(%rbp)
	negq -248(%rbp)
	addq -248(%rbp), %r13
	movq -96(%rbp), %rax
	movq %rax, -256(%rbp)
	addq %r13, -256(%rbp)
	negq %rbx
	movq -48(%rbp), %rax
	movq %rax, -176(%rbp)
	addq %rbx, -176(%rbp)
	negq %rcx
	movq -120(%rbp), %rax
	movq %rax, -240(%rbp)
	addq %rcx, -240(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -240(%rbp), %rax
	addq %rax, -88(%rbp)
	movq -256(%rbp), %rax
	movq %rax, -144(%rbp)
	movq -88(%rbp), %rax
	addq %rax, -144(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -280(%rbp)
	movq -144(%rbp), %rax
	addq %rax, -280(%rbp)
	movq -280(%rbp), %rax
	movq %rax, -64(%rbp)
	addq $42, -64(%rbp)
	movq -64(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $288, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
