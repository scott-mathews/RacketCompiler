	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $304, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	movq $1, -184(%rbp)
	addq $1, -184(%rbp)
	movq $1, -232(%rbp)
	addq $1, -232(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -168(%rbp)
	movq -232(%rbp), %rax
	addq %rax, -168(%rbp)
	movq $1, -256(%rbp)
	addq $1, -256(%rbp)
	movq $1, -48(%rbp)
	addq $1, -48(%rbp)
	movq -256(%rbp), %rax
	movq %rax, -144(%rbp)
	movq -48(%rbp), %rax
	addq %rax, -144(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -248(%rbp)
	movq -144(%rbp), %rax
	addq %rax, -248(%rbp)
	movq $1, -280(%rbp)
	addq $1, -280(%rbp)
	movq $1, -72(%rbp)
	addq $1, -72(%rbp)
	movq -280(%rbp), %rax
	movq %rax, -104(%rbp)
	movq -72(%rbp), %rax
	addq %rax, -104(%rbp)
	movq $1, -120(%rbp)
	addq $1, -120(%rbp)
	movq $1, -288(%rbp)
	addq $1, -288(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -208(%rbp)
	movq -288(%rbp), %rax
	addq %rax, -208(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -192(%rbp)
	movq -208(%rbp), %rax
	addq %rax, -192(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -192(%rbp), %rax
	addq %rax, -96(%rbp)
	movq $1, -296(%rbp)
	addq $1, -296(%rbp)
	movq $1, -80(%rbp)
	addq $1, -80(%rbp)
	movq -296(%rbp), %rax
	movq %rax, -128(%rbp)
	movq -80(%rbp), %rax
	addq %rax, -128(%rbp)
	movq $1, -240(%rbp)
	addq $1, -240(%rbp)
	movq $1, -64(%rbp)
	addq $1, -64(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -152(%rbp)
	movq -64(%rbp), %rax
	addq %rax, -152(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -216(%rbp)
	movq -152(%rbp), %rax
	addq %rax, -216(%rbp)
	movq $1, -224(%rbp)
	addq $1, -224(%rbp)
	movq $1, -56(%rbp)
	addq $1, -56(%rbp)
	movq -224(%rbp), %rax
	movq %rax, -136(%rbp)
	movq -56(%rbp), %rax
	addq %rax, -136(%rbp)
	movq $1, -112(%rbp)
	addq $1, -112(%rbp)
	movq $1, -200(%rbp)
	addq $1, -200(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -264(%rbp)
	movq -200(%rbp), %rax
	addq %rax, -264(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -272(%rbp)
	movq -264(%rbp), %rax
	addq %rax, -272(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -176(%rbp)
	movq -272(%rbp), %rax
	addq %rax, -176(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -176(%rbp), %rax
	addq %rax, -88(%rbp)
	movq $10, -160(%rbp)
	movq -88(%rbp), %rax
	addq %rax, -160(%rbp)
	movq -160(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $304, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
