	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $336, %rsp
	movq $16384, %rcx 
	movq $16, %rdx 
	callq initialize 
	movq rootstack_begin(%rip), %r15 
	movq $0, (%r15) 
	addq $0, %r15

	movq $1, -8(%rbp)
	addq $1, -8(%rbp)
	movq $1, -16(%rbp)
	movq -8(%rbp), %rax
	addq %rax, -16(%rbp)
	movq $1, -24(%rbp)
	movq -16(%rbp), %rax
	addq %rax, -24(%rbp)
	movq $1, -32(%rbp)
	movq -24(%rbp), %rax
	addq %rax, -32(%rbp)
	movq $1, -40(%rbp)
	movq -32(%rbp), %rax
	addq %rax, -40(%rbp)
	movq $1, -48(%rbp)
	movq -40(%rbp), %rax
	addq %rax, -48(%rbp)
	movq $1, -56(%rbp)
	movq -48(%rbp), %rax
	addq %rax, -56(%rbp)
	movq $1, -64(%rbp)
	movq -56(%rbp), %rax
	addq %rax, -64(%rbp)
	movq $1, -72(%rbp)
	movq -64(%rbp), %rax
	addq %rax, -72(%rbp)
	movq $1, -80(%rbp)
	movq -72(%rbp), %rax
	addq %rax, -80(%rbp)
	movq $1, -88(%rbp)
	movq -80(%rbp), %rax
	addq %rax, -88(%rbp)
	movq $1, -96(%rbp)
	movq -88(%rbp), %rax
	addq %rax, -96(%rbp)
	movq $1, -104(%rbp)
	movq -96(%rbp), %rax
	addq %rax, -104(%rbp)
	movq $1, -112(%rbp)
	movq -104(%rbp), %rax
	addq %rax, -112(%rbp)
	movq $1, -120(%rbp)
	movq -112(%rbp), %rax
	addq %rax, -120(%rbp)
	movq $1, -128(%rbp)
	movq -120(%rbp), %rax
	addq %rax, -128(%rbp)
	movq $1, -136(%rbp)
	movq -128(%rbp), %rax
	addq %rax, -136(%rbp)
	movq $1, -144(%rbp)
	movq -136(%rbp), %rax
	addq %rax, -144(%rbp)
	movq $1, -152(%rbp)
	movq -144(%rbp), %rax
	addq %rax, -152(%rbp)
	movq $1, -160(%rbp)
	movq -152(%rbp), %rax
	addq %rax, -160(%rbp)
	movq $1, -168(%rbp)
	movq -160(%rbp), %rax
	addq %rax, -168(%rbp)
	movq $1, -176(%rbp)
	movq -168(%rbp), %rax
	addq %rax, -176(%rbp)
	movq $1, -184(%rbp)
	movq -176(%rbp), %rax
	addq %rax, -184(%rbp)
	movq $1, -192(%rbp)
	movq -184(%rbp), %rax
	addq %rax, -192(%rbp)
	movq $1, -200(%rbp)
	movq -192(%rbp), %rax
	addq %rax, -200(%rbp)
	movq $1, -208(%rbp)
	movq -200(%rbp), %rax
	addq %rax, -208(%rbp)
	movq $1, -216(%rbp)
	movq -208(%rbp), %rax
	addq %rax, -216(%rbp)
	movq $1, -224(%rbp)
	movq -216(%rbp), %rax
	addq %rax, -224(%rbp)
	movq $1, -232(%rbp)
	movq -224(%rbp), %rax
	addq %rax, -232(%rbp)
	movq $1, -240(%rbp)
	movq -232(%rbp), %rax
	addq %rax, -240(%rbp)
	movq $1, -248(%rbp)
	movq -240(%rbp), %rax
	addq %rax, -248(%rbp)
	movq $1, -256(%rbp)
	movq -248(%rbp), %rax
	addq %rax, -256(%rbp)
	movq $1, -264(%rbp)
	movq -256(%rbp), %rax
	addq %rax, -264(%rbp)
	movq $1, -272(%rbp)
	movq -264(%rbp), %rax
	addq %rax, -272(%rbp)
	movq $1, -280(%rbp)
	movq -272(%rbp), %rax
	addq %rax, -280(%rbp)
	movq $1, -288(%rbp)
	movq -280(%rbp), %rax
	addq %rax, -288(%rbp)
	movq $1, -296(%rbp)
	movq -288(%rbp), %rax
	addq %rax, -296(%rbp)
	movq $1, -304(%rbp)
	movq -296(%rbp), %rax
	addq %rax, -304(%rbp)
	movq $1, -312(%rbp)
	movq -304(%rbp), %rax
	addq %rax, -312(%rbp)
	movq $1, -320(%rbp)
	movq -312(%rbp), %rax
	addq %rax, -320(%rbp)
	movq $1, -328(%rbp)
	movq -320(%rbp), %rax
	addq %rax, -328(%rbp)
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
	popq %rbp
	retq
