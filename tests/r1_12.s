	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $392, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	movq $1, -304(%rbp)
	movq $1, -112(%rbp)
	movq $1, -344(%rbp)
	movq $1, -280(%rbp)
	movq $1, -296(%rbp)
	movq $1, -104(%rbp)
	movq $1, -336(%rbp)
	movq $1, %r12
	movq $1, %r14
	movq $1, -320(%rbp)
	movq $1, -128(%rbp)
	movq $1, -272(%rbp)
	movq $1, %r13
	movq $1, -312(%rbp)
	movq $1, -120(%rbp)
	movq $1, -288(%rbp)
	movq $1, -96(%rbp)
	movq $1, -328(%rbp)
	movq $1, -136(%rbp)
	movq $1, %rcx
	movq $1, %rdi
	movq $1, -216(%rbp)
	movq $1, %r10
	movq $1, -144(%rbp)
	movq $1, -168(%rbp)
	movq $1, %r9
	movq $1, -232(%rbp)
	movq $1, %rbx
	movq $1, -160(%rbp)
	movq $1, %r8
	movq $1, -224(%rbp)
	movq $1, %rdx
	movq $1, -176(%rbp)
	movq $1, %rsi
	movq $1, -248(%rbp)
	movq $1, -152(%rbp)
	movq $1, -208(%rbp)
	movq $1, -88(%rbp)
	movq $1, -264(%rbp)
	movq $1, -56(%rbp)
	movq $1, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -184(%rbp)
	addq $1, -184(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -72(%rbp)
	movq -184(%rbp), %rax
	addq %rax, -72(%rbp)
	movq -264(%rbp), %rax
	movq %rax, -240(%rbp)
	movq -72(%rbp), %rax
	addq %rax, -240(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -48(%rbp)
	movq -240(%rbp), %rax
	addq %rax, -48(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -200(%rbp)
	movq -48(%rbp), %rax
	addq %rax, -200(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -80(%rbp)
	movq -200(%rbp), %rax
	addq %rax, -80(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -256(%rbp)
	movq -80(%rbp), %rax
	addq %rax, -256(%rbp)
	movq %rsi, %rsi
	addq -256(%rbp), %rsi
	movq -176(%rbp), %rax
	movq %rax, -192(%rbp)
	addq %rsi, -192(%rbp)
	movq %rdx, %rdx
	addq -192(%rbp), %rdx
	movq -224(%rbp), %rsi
	addq %rdx, %rsi
	movq %r8, %rdx
	addq %rsi, %rdx
	movq -160(%rbp), %rsi
	addq %rdx, %rsi
	movq %rbx, %rbx
	addq %rsi, %rbx
	movq -232(%rbp), %rdx
	addq %rbx, %rdx
	movq %r9, %rbx
	addq %rdx, %rbx
	movq -168(%rbp), %rdx
	addq %rbx, %rdx
	movq -144(%rbp), %rbx
	addq %rdx, %rbx
	movq %r10, %rdx
	addq %rbx, %rdx
	movq -216(%rbp), %rbx
	addq %rdx, %rbx
	movq %rdi, %rdx
	addq %rbx, %rdx
	movq %rcx, %rbx
	addq %rdx, %rbx
	movq -136(%rbp), %rcx
	addq %rbx, %rcx
	movq -328(%rbp), %rbx
	addq %rcx, %rbx
	movq -96(%rbp), %rcx
	addq %rbx, %rcx
	movq -288(%rbp), %rbx
	addq %rcx, %rbx
	movq -120(%rbp), %rcx
	addq %rbx, %rcx
	movq -312(%rbp), %rbx
	addq %rcx, %rbx
	movq %r13, %rcx
	addq %rbx, %rcx
	movq -272(%rbp), %rbx
	addq %rcx, %rbx
	movq -128(%rbp), %rcx
	addq %rbx, %rcx
	movq -320(%rbp), %rbx
	addq %rcx, %rbx
	movq %r14, %rcx
	addq %rbx, %rcx
	movq %r12, %rbx
	addq %rcx, %rbx
	movq -336(%rbp), %rcx
	addq %rbx, %rcx
	movq -104(%rbp), %rbx
	addq %rcx, %rbx
	movq -296(%rbp), %rcx
	addq %rbx, %rcx
	movq -280(%rbp), %rbx
	addq %rcx, %rbx
	movq -344(%rbp), %rcx
	addq %rbx, %rcx
	movq -112(%rbp), %rbx
	addq %rcx, %rbx
	movq -304(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $392, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
