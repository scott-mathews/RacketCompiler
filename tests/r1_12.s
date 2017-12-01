	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $424, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	movq $1, %r14
	movq $1, -216(%rbp)
	movq $1, -200(%rbp)
	movq $1, -296(%rbp)
	movq $1, -48(%rbp)
	movq $1, -224(%rbp)
	movq $1, %rbx
	movq $1, -304(%rbp)
	movq $1, -280(%rbp)
	movq $1, %rdx
	movq $1, -240(%rbp)
	movq $1, %r13
	movq $1, -288(%rbp)
	movq $1, %rsi
	movq $1, -248(%rbp)
	movq $1, %r9
	movq $1, -264(%rbp)
	movq $1, -176(%rbp)
	movq $1, -208(%rbp)
	movq $1, %r12
	movq $1, -272(%rbp)
	movq $1, %rcx
	movq $1, -232(%rbp)
	movq $1, %r10
	movq $1, -56(%rbp)
	movq $1, -184(%rbp)
	movq $1, %rdi
	movq $1, -256(%rbp)
	movq $1, -64(%rbp)
	movq $1, -192(%rbp)
	movq $1, %r8
	movq $1, -336(%rbp)
	movq $1, -128(%rbp)
	movq $1, -72(%rbp)
	movq $1, -88(%rbp)
	movq $1, -352(%rbp)
	movq $1, -136(%rbp)
	movq $1, -312(%rbp)
	movq $1, -96(%rbp)
	movq $1, -344(%rbp)
	movq $1, -376(%rbp)
	movq -376(%rbp), %rax
	movq %rax, -144(%rbp)
	addq $1, -144(%rbp)
	movq -344(%rbp), %rax
	movq %rax, -80(%rbp)
	movq -144(%rbp), %rax
	addq %rax, -80(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -104(%rbp)
	movq -80(%rbp), %rax
	addq %rax, -104(%rbp)
	movq -312(%rbp), %rax
	movq %rax, -368(%rbp)
	movq -104(%rbp), %rax
	addq %rax, -368(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -160(%rbp)
	movq -368(%rbp), %rax
	addq %rax, -160(%rbp)
	movq -352(%rbp), %rax
	movq %rax, -328(%rbp)
	movq -160(%rbp), %rax
	addq %rax, -328(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -112(%rbp)
	movq -328(%rbp), %rax
	addq %rax, -112(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -360(%rbp)
	movq -112(%rbp), %rax
	addq %rax, -360(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -152(%rbp)
	movq -360(%rbp), %rax
	addq %rax, -152(%rbp)
	movq -336(%rbp), %rax
	movq %rax, -320(%rbp)
	movq -152(%rbp), %rax
	addq %rax, -320(%rbp)
	movq %r8, %r8
	addq -320(%rbp), %r8
	movq -192(%rbp), %rax
	movq %rax, -120(%rbp)
	addq %r8, -120(%rbp)
	movq -64(%rbp), %r8
	addq -120(%rbp), %r8
	movq -256(%rbp), %rax
	movq %rax, -168(%rbp)
	addq %r8, -168(%rbp)
	movq %rdi, %rdi
	addq -168(%rbp), %rdi
	movq -184(%rbp), %r8
	addq %rdi, %r8
	movq -56(%rbp), %rdi
	addq %r8, %rdi
	movq %r10, %r8
	addq %rdi, %r8
	movq -232(%rbp), %rdi
	addq %r8, %rdi
	movq %rcx, %rcx
	addq %rdi, %rcx
	movq -272(%rbp), %rdi
	addq %rcx, %rdi
	movq %r12, %rcx
	addq %rdi, %rcx
	movq -208(%rbp), %rdi
	addq %rcx, %rdi
	movq -176(%rbp), %rcx
	addq %rdi, %rcx
	movq -264(%rbp), %rdi
	addq %rcx, %rdi
	movq %r9, %rcx
	addq %rdi, %rcx
	movq -248(%rbp), %rdi
	addq %rcx, %rdi
	movq %rsi, %rcx
	addq %rdi, %rcx
	movq -288(%rbp), %rsi
	addq %rcx, %rsi
	movq %r13, %rcx
	addq %rsi, %rcx
	movq -240(%rbp), %rsi
	addq %rcx, %rsi
	movq %rdx, %rcx
	addq %rsi, %rcx
	movq -280(%rbp), %rdx
	addq %rcx, %rdx
	movq -304(%rbp), %rcx
	addq %rdx, %rcx
	movq %rbx, %rbx
	addq %rcx, %rbx
	movq -224(%rbp), %rcx
	addq %rbx, %rcx
	movq -48(%rbp), %rbx
	addq %rcx, %rbx
	movq -296(%rbp), %rcx
	addq %rbx, %rcx
	movq -200(%rbp), %rbx
	addq %rcx, %rbx
	movq -216(%rbp), %rcx
	addq %rbx, %rcx
	movq %r14, %rbx
	addq %rcx, %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $424, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
