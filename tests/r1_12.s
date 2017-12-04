	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $432, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	movq $1, -304(%rbp)
	movq $1, %r9
	movq $1, -224(%rbp)
	movq $1, -160(%rbp)
	movq $1, -336(%rbp)
	movq $1, %r13
	movq $1, %rcx
	movq $1, -120(%rbp)
	movq $1, -112(%rbp)
	movq $1, -184(%rbp)
	movq $1, %r10
	movq $1, -312(%rbp)
	movq $1, -128(%rbp)
	movq $1, -200(%rbp)
	movq $1, %r8
	movq $1, -296(%rbp)
	movq $1, -104(%rbp)
	movq $1, -176(%rbp)
	movq $1, %rdi
	movq $1, -288(%rbp)
	movq $1, %r14
	movq $1, %rbx
	movq $1, %r12
	movq $1, -328(%rbp)
	movq $1, -376(%rbp)
	movq $1, %rsi
	movq $1, -264(%rbp)
	movq $1, -80(%rbp)
	movq $1, -384(%rbp)
	movq $1, %rdx
	movq $1, -256(%rbp)
	movq $1, -72(%rbp)
	movq $1, -368(%rbp)
	movq $1, -48(%rbp)
	movq $1, -248(%rbp)
	movq $1, -64(%rbp)
	movq $1, -360(%rbp)
	movq $1, -192(%rbp)
	movq $1, -272(%rbp)
	movq $1, -88(%rbp)
	movq $1, -144(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -136(%rbp)
	addq $1, -136(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -208(%rbp)
	movq -136(%rbp), %rax
	addq %rax, -208(%rbp)
	movq -272(%rbp), %rax
	movq %rax, -56(%rbp)
	movq -208(%rbp), %rax
	addq %rax, -56(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -320(%rbp)
	movq -56(%rbp), %rax
	addq %rax, -320(%rbp)
	movq -360(%rbp), %rax
	movq %rax, -152(%rbp)
	movq -320(%rbp), %rax
	addq %rax, -152(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -216(%rbp)
	movq -152(%rbp), %rax
	addq %rax, -216(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -280(%rbp)
	movq -216(%rbp), %rax
	addq %rax, -280(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -280(%rbp), %rax
	addq %rax, -96(%rbp)
	movq -368(%rbp), %rax
	movq %rax, -344(%rbp)
	movq -96(%rbp), %rax
	addq %rax, -344(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -168(%rbp)
	movq -344(%rbp), %rax
	addq %rax, -168(%rbp)
	movq -256(%rbp), %rax
	movq %rax, -232(%rbp)
	movq -168(%rbp), %rax
	addq %rax, -232(%rbp)
	movq %rdx, %rdx
	addq -232(%rbp), %rdx
	movq -384(%rbp), %rax
	movq %rax, -352(%rbp)
	addq %rdx, -352(%rbp)
	movq -80(%rbp), %rdx
	addq -352(%rbp), %rdx
	movq -264(%rbp), %rax
	movq %rax, -240(%rbp)
	addq %rdx, -240(%rbp)
	movq %rsi, %rdx
	addq -240(%rbp), %rdx
	movq -376(%rbp), %rsi
	addq %rdx, %rsi
	movq -328(%rbp), %rdx
	addq %rsi, %rdx
	movq %r12, %rsi
	addq %rdx, %rsi
	movq %rbx, %rbx
	addq %rsi, %rbx
	movq %r14, %rdx
	addq %rbx, %rdx
	movq -288(%rbp), %rbx
	addq %rdx, %rbx
	movq %rdi, %rdx
	addq %rbx, %rdx
	movq -176(%rbp), %rbx
	addq %rdx, %rbx
	movq -104(%rbp), %rdx
	addq %rbx, %rdx
	movq -296(%rbp), %rbx
	addq %rdx, %rbx
	movq %r8, %rdx
	addq %rbx, %rdx
	movq -200(%rbp), %rbx
	addq %rdx, %rbx
	movq -128(%rbp), %rdx
	addq %rbx, %rdx
	movq -312(%rbp), %rbx
	addq %rdx, %rbx
	movq %r10, %rdx
	addq %rbx, %rdx
	movq -184(%rbp), %rbx
	addq %rdx, %rbx
	movq -112(%rbp), %rdx
	addq %rbx, %rdx
	movq -120(%rbp), %rbx
	addq %rdx, %rbx
	movq %rcx, %rcx
	addq %rbx, %rcx
	movq %r13, %rbx
	addq %rcx, %rbx
	movq -336(%rbp), %rcx
	addq %rbx, %rcx
	movq -160(%rbp), %rbx
	addq %rcx, %rbx
	movq -224(%rbp), %rcx
	addq %rbx, %rcx
	movq %r9, %rbx
	addq %rcx, %rbx
	movq -304(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $432, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
