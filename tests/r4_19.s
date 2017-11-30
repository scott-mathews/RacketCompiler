	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $128, %rsp
	addq $0, %r15

	movq %rdi, -88(%rbp)
	movq %rsi, -48(%rbp)
	movq %rdx, -56(%rbp)
	movq %rcx, -80(%rbp)
	movq %r8, -72(%rbp)
	movq %r9, -96(%rbp)
	movq 16(%rbp), %rax
	movq %rax, -64(%rbp)
	movq 24(%rbp), %rax
	movq %rax, -112(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -104(%rbp)
	movq -112(%rbp), %rax
	addq %rax, -104(%rbp)
	movq -104(%rbp), %rax

	addq $128, %rsp
	subq $0, %r15
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq

	.globl function1
function1:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $160, %rsp
	addq $0, %r15

	movq %rdi, -80(%rbp)
	movq %rsi, -104(%rbp)
	movq %rdx, -56(%rbp)
	movq %rcx, -120(%rbp)
	movq %r8, -128(%rbp)
	movq %r9, -88(%rbp)
	movq 16(%rbp), %rax
	movq %rax, -48(%rbp)
	movq 24(%rbp), %rax
	movq %rax, -112(%rbp)
	movq 32(%rbp), %rax
	movq %rax, -72(%rbp)
	movq 40(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -64(%rbp)
	movq -96(%rbp), %rax
	addq %rax, -64(%rbp)
	movq -64(%rbp), %rax

	addq $160, %rsp
	subq $0, %r15
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq

	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $456, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	leaq function1(%rip), %rax
	movq %rax, -176(%rbp)
	movq $1, %rdi
	movq $2, %rsi
	movq $3, %rdx
	movq $0, %rcx
	movq $5, %r8
	movq $6, %r9
	movq $7, 0(%rsp)
	movq $8, 8(%rsp)
	movq $9, 16(%rsp)
	movq $1, 24(%rsp)
	callq *-176(%rbp)
	movq %rax, -296(%rbp)
	movq -296(%rbp), %rax
	movq %rax, -328(%rbp)
	movq $1, -160(%rbp)
	movq $1, -256(%rbp)
	movq $1, -56(%rbp)
	movq $1, -240(%rbp)
	movq $1, -152(%rbp)
	movq $1, -248(%rbp)
	movq $1, -48(%rbp)
	movq $1, -232(%rbp)
	movq $1, -64(%rbp)
	movq $1, -224(%rbp)
	movq $1, -80(%rbp)
	movq $1, -336(%rbp)
	movq $1, -168(%rbp)
	movq $1, -400(%rbp)
	movq $1, -72(%rbp)
	movq $1, -88(%rbp)
	movq $1, -352(%rbp)
	leaq function0(%rip), %rax
	movq %rax, -104(%rbp)
	movq $1, %rdi
	movq $2, %rsi
	movq $3, %rdx
	movq $1, %rcx
	movq $5, %r8
	movq $6, %r9
	movq $7, 0(%rsp)
	movq $0, 8(%rsp)
	callq *-104(%rbp)
	movq %rax, -360(%rbp)
	movq -360(%rbp), %rax
	movq %rax, -200(%rbp)
	movq $1, -304(%rbp)
	movq $1, -120(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -128(%rbp)
	addq $21, -128(%rbp)
	movq -304(%rbp), %rax
	movq %rax, -376(%rbp)
	movq -128(%rbp), %rax
	addq %rax, -376(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -208(%rbp)
	movq -376(%rbp), %rax
	addq %rax, -208(%rbp)
	movq -352(%rbp), %rax
	movq %rax, -312(%rbp)
	movq -208(%rbp), %rax
	addq %rax, -312(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -136(%rbp)
	movq -312(%rbp), %rax
	addq %rax, -136(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -384(%rbp)
	movq -136(%rbp), %rax
	addq %rax, -384(%rbp)
	movq -400(%rbp), %rax
	movq %rax, -408(%rbp)
	movq -384(%rbp), %rax
	addq %rax, -408(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -288(%rbp)
	movq -408(%rbp), %rax
	addq %rax, -288(%rbp)
	movq -336(%rbp), %rax
	movq %rax, -112(%rbp)
	movq -288(%rbp), %rax
	addq %rax, -112(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -368(%rbp)
	movq -112(%rbp), %rax
	addq %rax, -368(%rbp)
	movq -224(%rbp), %rax
	movq %rax, -216(%rbp)
	movq -368(%rbp), %rax
	addq %rax, -216(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -320(%rbp)
	movq -216(%rbp), %rax
	addq %rax, -320(%rbp)
	movq -232(%rbp), %rax
	movq %rax, -144(%rbp)
	movq -320(%rbp), %rax
	addq %rax, -144(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -392(%rbp)
	movq -144(%rbp), %rax
	addq %rax, -392(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -192(%rbp)
	movq -392(%rbp), %rax
	addq %rax, -192(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -280(%rbp)
	movq -192(%rbp), %rax
	addq %rax, -280(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -272(%rbp)
	movq -280(%rbp), %rax
	addq %rax, -272(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -184(%rbp)
	movq -272(%rbp), %rax
	addq %rax, -184(%rbp)
	movq -256(%rbp), %rax
	movq %rax, -344(%rbp)
	movq -184(%rbp), %rax
	addq %rax, -344(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -344(%rbp), %rax
	addq %rax, -96(%rbp)
	movq -328(%rbp), %rax
	movq %rax, -264(%rbp)
	movq -96(%rbp), %rax
	addq %rax, -264(%rbp)
	movq -264(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $456, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
