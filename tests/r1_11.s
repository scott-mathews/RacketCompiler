	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r15
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $336, %rsp
	movq $16384, %rcx 
	movq $16, %rdx 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15
	movq $0, 0(%r15)

	movq $1, -8(%rbp)
	addq $1, -8(%rbp)
	movq $1, -16(%rbp)
	movq -8(%rbp), %r9
	addq %r9, -16(%rbp)
	movq $1, -24(%rbp)
	movq -16(%rbp), %r9
	addq %r9, -24(%rbp)
	movq $1, -32(%rbp)
	movq -24(%rbp), %r9
	addq %r9, -32(%rbp)
	movq $1, -40(%rbp)
	movq -32(%rbp), %r9
	addq %r9, -40(%rbp)
	movq $1, -48(%rbp)
	movq -40(%rbp), %r9
	addq %r9, -48(%rbp)
	movq $1, -56(%rbp)
	movq -48(%rbp), %r9
	addq %r9, -56(%rbp)
	movq $1, -64(%rbp)
	movq -56(%rbp), %r9
	addq %r9, -64(%rbp)
	movq $1, -72(%rbp)
	movq -64(%rbp), %r9
	addq %r9, -72(%rbp)
	movq $1, -80(%rbp)
	movq -72(%rbp), %r9
	addq %r9, -80(%rbp)
	movq $1, -88(%rbp)
	movq -80(%rbp), %r9
	addq %r9, -88(%rbp)
	movq $1, -96(%rbp)
	movq -88(%rbp), %r9
	addq %r9, -96(%rbp)
	movq $1, -104(%rbp)
	movq -96(%rbp), %r9
	addq %r9, -104(%rbp)
	movq $1, -112(%rbp)
	movq -104(%rbp), %r9
	addq %r9, -112(%rbp)
	movq $1, -120(%rbp)
	movq -112(%rbp), %r9
	addq %r9, -120(%rbp)
	movq $1, -128(%rbp)
	movq -120(%rbp), %r9
	addq %r9, -128(%rbp)
	movq $1, -136(%rbp)
	movq -128(%rbp), %r9
	addq %r9, -136(%rbp)
	movq $1, -144(%rbp)
	movq -136(%rbp), %r9
	addq %r9, -144(%rbp)
	movq $1, -152(%rbp)
	movq -144(%rbp), %r9
	addq %r9, -152(%rbp)
	movq $1, -160(%rbp)
	movq -152(%rbp), %r9
	addq %r9, -160(%rbp)
	movq $1, -168(%rbp)
	movq -160(%rbp), %r9
	addq %r9, -168(%rbp)
	movq $1, -176(%rbp)
	movq -168(%rbp), %r9
	addq %r9, -176(%rbp)
	movq $1, -184(%rbp)
	movq -176(%rbp), %r9
	addq %r9, -184(%rbp)
	movq $1, -192(%rbp)
	movq -184(%rbp), %r9
	addq %r9, -192(%rbp)
	movq $1, -200(%rbp)
	movq -192(%rbp), %r9
	addq %r9, -200(%rbp)
	movq $1, -208(%rbp)
	movq -200(%rbp), %r9
	addq %r9, -208(%rbp)
	movq $1, -216(%rbp)
	movq -208(%rbp), %r9
	addq %r9, -216(%rbp)
	movq $1, -224(%rbp)
	movq -216(%rbp), %r9
	addq %r9, -224(%rbp)
	movq $1, -232(%rbp)
	movq -224(%rbp), %r9
	addq %r9, -232(%rbp)
	movq $1, -240(%rbp)
	movq -232(%rbp), %r9
	addq %r9, -240(%rbp)
	movq $1, -248(%rbp)
	movq -240(%rbp), %r9
	addq %r9, -248(%rbp)
	movq $1, -256(%rbp)
	movq -248(%rbp), %r9
	addq %r9, -256(%rbp)
	movq $1, -264(%rbp)
	movq -256(%rbp), %r9
	addq %r9, -264(%rbp)
	movq $1, -272(%rbp)
	movq -264(%rbp), %r9
	addq %r9, -272(%rbp)
	movq $1, -280(%rbp)
	movq -272(%rbp), %r9
	addq %r9, -280(%rbp)
	movq $1, -288(%rbp)
	movq -280(%rbp), %r9
	addq %r9, -288(%rbp)
	movq $1, -296(%rbp)
	movq -288(%rbp), %r9
	addq %r9, -296(%rbp)
	movq $1, -304(%rbp)
	movq -296(%rbp), %r9
	addq %r9, -304(%rbp)
	movq $1, -312(%rbp)
	movq -304(%rbp), %r9
	addq %r9, -312(%rbp)
	movq $1, -320(%rbp)
	movq -312(%rbp), %r9
	addq %r9, -320(%rbp)
	movq $1, -328(%rbp)
	movq -320(%rbp), %r9
	addq %r9, -328(%rbp)
	movq -328(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	subq $0, %r15
	addq $336, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %r15
	popq %rbp
	retq
