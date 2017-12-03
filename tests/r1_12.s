	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $416, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	movq $1, -56(%rbp)
	movq $1, -208(%rbp)
	movq $1, %r8
	movq $1, -256(%rbp)
	movq $1, %r14
	movq $1, -200(%rbp)
	movq $1, %rdi
	movq $1, -248(%rbp)
	movq $1, %r13
	movq $1, %rdx
	movq $1, -216(%rbp)
	movq $1, %r9
	movq $1, -272(%rbp)
	movq $1, %rcx
	movq $1, -224(%rbp)
	movq $1, %r10
	movq $1, -280(%rbp)
	movq $1, %rsi
	movq $1, -240(%rbp)
	movq $1, %r12
	movq $1, -368(%rbp)
	movq $1, -80(%rbp)
	movq $1, -320(%rbp)
	movq $1, -144(%rbp)
	movq $1, -360(%rbp)
	movq $1, -304(%rbp)
	movq $1, -128(%rbp)
	movq $1, -336(%rbp)
	movq $1, -192(%rbp)
	movq $1, -312(%rbp)
	movq $1, -120(%rbp)
	movq $1, -344(%rbp)
	movq $1, -168(%rbp)
	movq $1, -296(%rbp)
	movq $1, -96(%rbp)
	movq $1, -328(%rbp)
	movq $1, -160(%rbp)
	movq $1, -288(%rbp)
	movq $1, -88(%rbp)
	movq $1, %rbx
	movq $1, -152(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -264(%rbp)
	addq $1, -264(%rbp)
	movq %rbx, %rbx
	addq -264(%rbp), %rbx
	movq -88(%rbp), %rax
	movq %rax, -232(%rbp)
	addq %rbx, -232(%rbp)
	movq -288(%rbp), %rbx
	addq -232(%rbp), %rbx
	movq -160(%rbp), %rax
	movq %rax, -64(%rbp)
	addq %rbx, -64(%rbp)
	movq -328(%rbp), %rbx
	addq -64(%rbp), %rbx
	movq -96(%rbp), %rax
	movq %rax, -48(%rbp)
	addq %rbx, -48(%rbp)
	movq -296(%rbp), %rbx
	addq -48(%rbp), %rbx
	movq -168(%rbp), %rax
	movq %rax, -72(%rbp)
	addq %rbx, -72(%rbp)
	movq -344(%rbp), %rbx
	addq -72(%rbp), %rbx
	movq -120(%rbp), %rax
	movq %rax, -112(%rbp)
	addq %rbx, -112(%rbp)
	movq -312(%rbp), %rbx
	addq -112(%rbp), %rbx
	movq -192(%rbp), %rax
	movq %rax, -176(%rbp)
	addq %rbx, -176(%rbp)
	movq -336(%rbp), %rbx
	addq -176(%rbp), %rbx
	movq -128(%rbp), %rax
	movq %rax, -136(%rbp)
	addq %rbx, -136(%rbp)
	movq -304(%rbp), %rbx
	addq -136(%rbp), %rbx
	movq -360(%rbp), %rax
	movq %rax, -184(%rbp)
	addq %rbx, -184(%rbp)
	movq -144(%rbp), %rbx
	addq -184(%rbp), %rbx
	movq -320(%rbp), %rax
	movq %rax, -104(%rbp)
	addq %rbx, -104(%rbp)
	movq -80(%rbp), %rbx
	addq -104(%rbp), %rbx
	movq -368(%rbp), %rax
	movq %rax, -352(%rbp)
	addq %rbx, -352(%rbp)
	movq %r12, %rbx
	addq -352(%rbp), %rbx
	movq -240(%rbp), %r12
	addq %rbx, %r12
	movq %rsi, %rbx
	addq %r12, %rbx
	movq -280(%rbp), %rsi
	addq %rbx, %rsi
	movq %r10, %rbx
	addq %rsi, %rbx
	movq -224(%rbp), %rsi
	addq %rbx, %rsi
	movq %rcx, %rbx
	addq %rsi, %rbx
	movq -272(%rbp), %rcx
	addq %rbx, %rcx
	movq %r9, %rbx
	addq %rcx, %rbx
	movq -216(%rbp), %rcx
	addq %rbx, %rcx
	movq %rdx, %rbx
	addq %rcx, %rbx
	movq %r13, %rcx
	addq %rbx, %rcx
	movq -248(%rbp), %rbx
	addq %rcx, %rbx
	movq %rdi, %rcx
	addq %rbx, %rcx
	movq -200(%rbp), %rbx
	addq %rcx, %rbx
	movq %r14, %rcx
	addq %rbx, %rcx
	movq -256(%rbp), %rbx
	addq %rcx, %rbx
	movq %r8, %rcx
	addq %rbx, %rcx
	movq -208(%rbp), %rbx
	addq %rcx, %rbx
	movq -56(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $416, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
