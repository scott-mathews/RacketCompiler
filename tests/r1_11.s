	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $336, %rsp

	movq $1, -328(%rbp)
	addq $1, -328(%rbp)
	movq -328(%rbp), %rax
	movq %rax, -320(%rbp)
	addq $1, -320(%rbp)
	movq -320(%rbp), %rax
	movq %rax, -312(%rbp)
	addq $1, -312(%rbp)
	movq -312(%rbp), %rax
	movq %rax, -304(%rbp)
	addq $1, -304(%rbp)
	movq -304(%rbp), %rax
	movq %rax, -296(%rbp)
	addq $1, -296(%rbp)
	movq -296(%rbp), %rax
	movq %rax, -288(%rbp)
	addq $1, -288(%rbp)
	movq -288(%rbp), %rax
	movq %rax, -280(%rbp)
	addq $1, -280(%rbp)
	movq -280(%rbp), %rax
	movq %rax, -272(%rbp)
	addq $1, -272(%rbp)
	movq -272(%rbp), %rax
	movq %rax, -264(%rbp)
	addq $1, -264(%rbp)
	movq -264(%rbp), %rax
	movq %rax, -256(%rbp)
	addq $1, -256(%rbp)
	movq -256(%rbp), %rax
	movq %rax, -248(%rbp)
	addq $1, -248(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -240(%rbp)
	addq $1, -240(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -232(%rbp)
	addq $1, -232(%rbp)
	movq -232(%rbp), %rax
	movq %rax, -224(%rbp)
	addq $1, -224(%rbp)
	movq -224(%rbp), %rax
	movq %rax, -216(%rbp)
	addq $1, -216(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -208(%rbp)
	addq $1, -208(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -200(%rbp)
	addq $1, -200(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -192(%rbp)
	addq $1, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -184(%rbp)
	addq $1, -184(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -176(%rbp)
	addq $1, -176(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -168(%rbp)
	addq $1, -168(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -160(%rbp)
	addq $1, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -152(%rbp)
	addq $1, -152(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -144(%rbp)
	addq $1, -144(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -136(%rbp)
	addq $1, -136(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -128(%rbp)
	addq $1, -128(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -120(%rbp)
	addq $1, -120(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -112(%rbp)
	addq $1, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -104(%rbp)
	addq $1, -104(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -96(%rbp)
	addq $1, -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -88(%rbp)
	addq $1, -88(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -80(%rbp)
	addq $1, -80(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -72(%rbp)
	addq $1, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -64(%rbp)
	addq $1, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -56(%rbp)
	addq $1, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -48(%rbp)
	addq $1, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -40(%rbp)
	addq $1, -40(%rbp)
	movq -40(%rbp), %rax
	movq %rax, -32(%rbp)
	addq $1, -32(%rbp)
	movq -32(%rbp), %rax
	movq %rax, -24(%rbp)
	addq $1, -24(%rbp)
	movq -24(%rbp), %rax
	movq %rax, -16(%rbp)
	addq $1, -16(%rbp)
	movq -16(%rbp), %rax
	movq %rax, -8(%rbp)
	addq $1, -8(%rbp)
	movq -8(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	addq $336, %rsp
	movq $0, %rax
	popq %rbp
	retq
