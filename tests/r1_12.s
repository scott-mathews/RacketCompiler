	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $528, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	movq $1, -56(%rbp)
	movq $1, -72(%rbp)
	movq $1, -88(%rbp)
	movq $1, -104(%rbp)
	movq $1, -120(%rbp)
	movq $1, -136(%rbp)
	movq $1, -152(%rbp)
	movq $1, -168(%rbp)
	movq $1, -184(%rbp)
	movq $1, -200(%rbp)
	movq $1, -216(%rbp)
	movq $1, -232(%rbp)
	movq $1, -248(%rbp)
	movq $1, -264(%rbp)
	movq $1, -280(%rbp)
	movq $1, -296(%rbp)
	movq $1, -312(%rbp)
	movq $1, -328(%rbp)
	movq $1, -344(%rbp)
	movq $1, -360(%rbp)
	movq $1, -376(%rbp)
	movq $1, -392(%rbp)
	movq $1, -408(%rbp)
	movq $1, -424(%rbp)
	movq $1, -440(%rbp)
	movq $1, -456(%rbp)
	movq $1, -472(%rbp)
	movq $1, -488(%rbp)
	movq $1, -504(%rbp)
	movq $1, -520(%rbp)
	movq $1, %r14
	movq $1, %r13
	movq $1, %r12
	movq $1, %r10
	movq $1, %r9
	movq $1, %r8
	movq $1, %rdi
	movq $1, %rsi
	movq $1, %rdx
	movq $1, %rcx
	movq $1, %rbx
	addq $1, %rbx
	addq %rbx, %rcx
	addq %rcx, %rdx
	addq %rdx, %rsi
	addq %rsi, %rdi
	addq %rdi, %r8
	addq %r8, %r9
	addq %r9, %r10
	addq %r10, %r12
	addq %r12, %r13
	addq %r13, %r14
	movq -520(%rbp), %rax
	movq %rax, -512(%rbp)
	addq %r14, -512(%rbp)
	movq -504(%rbp), %rax
	movq %rax, -496(%rbp)
	movq -512(%rbp), %rax
	addq %rax, -496(%rbp)
	movq -488(%rbp), %rax
	movq %rax, -480(%rbp)
	movq -496(%rbp), %rax
	addq %rax, -480(%rbp)
	movq -472(%rbp), %rax
	movq %rax, -464(%rbp)
	movq -480(%rbp), %rax
	addq %rax, -464(%rbp)
	movq -456(%rbp), %rax
	movq %rax, -448(%rbp)
	movq -464(%rbp), %rax
	addq %rax, -448(%rbp)
	movq -440(%rbp), %rax
	movq %rax, -432(%rbp)
	movq -448(%rbp), %rax
	addq %rax, -432(%rbp)
	movq -424(%rbp), %rax
	movq %rax, -416(%rbp)
	movq -432(%rbp), %rax
	addq %rax, -416(%rbp)
	movq -408(%rbp), %rax
	movq %rax, -400(%rbp)
	movq -416(%rbp), %rax
	addq %rax, -400(%rbp)
	movq -392(%rbp), %rax
	movq %rax, -384(%rbp)
	movq -400(%rbp), %rax
	addq %rax, -384(%rbp)
	movq -376(%rbp), %rax
	movq %rax, -368(%rbp)
	movq -384(%rbp), %rax
	addq %rax, -368(%rbp)
	movq -360(%rbp), %rax
	movq %rax, -352(%rbp)
	movq -368(%rbp), %rax
	addq %rax, -352(%rbp)
	movq -344(%rbp), %rax
	movq %rax, -336(%rbp)
	movq -352(%rbp), %rax
	addq %rax, -336(%rbp)
	movq -328(%rbp), %rax
	movq %rax, -320(%rbp)
	movq -336(%rbp), %rax
	addq %rax, -320(%rbp)
	movq -312(%rbp), %rax
	movq %rax, -304(%rbp)
	movq -320(%rbp), %rax
	addq %rax, -304(%rbp)
	movq -296(%rbp), %rax
	movq %rax, -288(%rbp)
	movq -304(%rbp), %rax
	addq %rax, -288(%rbp)
	movq -280(%rbp), %rax
	movq %rax, -272(%rbp)
	movq -288(%rbp), %rax
	addq %rax, -272(%rbp)
	movq -264(%rbp), %rax
	movq %rax, -256(%rbp)
	movq -272(%rbp), %rax
	addq %rax, -256(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -240(%rbp)
	movq -256(%rbp), %rax
	addq %rax, -240(%rbp)
	movq -232(%rbp), %rax
	movq %rax, -224(%rbp)
	movq -240(%rbp), %rax
	addq %rax, -224(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -208(%rbp)
	movq -224(%rbp), %rax
	addq %rax, -208(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -192(%rbp)
	movq -208(%rbp), %rax
	addq %rax, -192(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -176(%rbp)
	movq -192(%rbp), %rax
	addq %rax, -176(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -160(%rbp)
	movq -176(%rbp), %rax
	addq %rax, -160(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -144(%rbp)
	movq -160(%rbp), %rax
	addq %rax, -144(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -128(%rbp)
	movq -144(%rbp), %rax
	addq %rax, -128(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -112(%rbp)
	movq -128(%rbp), %rax
	addq %rax, -112(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -112(%rbp), %rax
	addq %rax, -96(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -80(%rbp)
	movq -96(%rbp), %rax
	addq %rax, -80(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -64(%rbp)
	movq -80(%rbp), %rax
	addq %rax, -64(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -48(%rbp)
	movq -64(%rbp), %rax
	addq %rax, -48(%rbp)
	movq -48(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $528, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
