	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $344, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	movq $1, -296(%rbp)
	movq $1, -120(%rbp)
	movq $1, -288(%rbp)
	movq $1, %rsi
	movq $1, -112(%rbp)
	movq $1, -248(%rbp)
	movq $1, %r13
	movq $1, -152(%rbp)
	movq $1, -88(%rbp)
	movq $1, -224(%rbp)
	movq $1, %r9
	movq $1, -160(%rbp)
	movq $1, -96(%rbp)
	movq $1, -232(%rbp)
	movq $1, %r10
	movq $1, -168(%rbp)
	movq $1, -104(%rbp)
	movq $1, -240(%rbp)
	movq $1, %r12
	movq $1, -176(%rbp)
	movq $1, %r14
	movq $1, -256(%rbp)
	movq $1, %rbx
	movq $1, -184(%rbp)
	movq $1, -56(%rbp)
	movq $1, -264(%rbp)
	movq $1, %rcx
	movq $1, -192(%rbp)
	movq $1, -64(%rbp)
	movq $1, -272(%rbp)
	movq $1, %rdx
	movq $1, -200(%rbp)
	movq $1, -72(%rbp)
	movq $1, -280(%rbp)
	movq $1, -136(%rbp)
	movq $1, %r8
	movq $1, -216(%rbp)
	movq $1, -80(%rbp)
	movq $1, -144(%rbp)
	movq $1, -48(%rbp)
	movq $1, %rdi
	movq %rdi, %rdi
	addq $1, %rdi
	movq -48(%rbp), %rax
	movq %rax, -208(%rbp)
	addq %rdi, -208(%rbp)
	movq -144(%rbp), %rdi
	addq -208(%rbp), %rdi
	movq -80(%rbp), %rax
	movq %rax, -128(%rbp)
	addq %rdi, -128(%rbp)
	movq -216(%rbp), %rdi
	addq -128(%rbp), %rdi
	movq %r8, %r8
	addq %rdi, %r8
	movq -136(%rbp), %rdi
	addq %r8, %rdi
	movq -280(%rbp), %r8
	addq %rdi, %r8
	movq -72(%rbp), %rdi
	addq %r8, %rdi
	movq -200(%rbp), %r8
	addq %rdi, %r8
	movq %rdx, %rdx
	addq %r8, %rdx
	movq -272(%rbp), %rdi
	addq %rdx, %rdi
	movq -64(%rbp), %rdx
	addq %rdi, %rdx
	movq -192(%rbp), %rdi
	addq %rdx, %rdi
	movq %rcx, %rcx
	addq %rdi, %rcx
	movq -264(%rbp), %rdx
	addq %rcx, %rdx
	movq -56(%rbp), %rcx
	addq %rdx, %rcx
	movq -184(%rbp), %rdx
	addq %rcx, %rdx
	movq %rbx, %rbx
	addq %rdx, %rbx
	movq -256(%rbp), %rcx
	addq %rbx, %rcx
	movq %r14, %rbx
	addq %rcx, %rbx
	movq -176(%rbp), %rcx
	addq %rbx, %rcx
	movq %r12, %rbx
	addq %rcx, %rbx
	movq -240(%rbp), %rcx
	addq %rbx, %rcx
	movq -104(%rbp), %rbx
	addq %rcx, %rbx
	movq -168(%rbp), %rcx
	addq %rbx, %rcx
	movq %r10, %rbx
	addq %rcx, %rbx
	movq -232(%rbp), %rcx
	addq %rbx, %rcx
	movq -96(%rbp), %rbx
	addq %rcx, %rbx
	movq -160(%rbp), %rcx
	addq %rbx, %rcx
	movq %r9, %rbx
	addq %rcx, %rbx
	movq -224(%rbp), %rcx
	addq %rbx, %rcx
	movq -88(%rbp), %rbx
	addq %rcx, %rbx
	movq -152(%rbp), %rcx
	addq %rbx, %rcx
	movq %r13, %rbx
	addq %rcx, %rbx
	movq -248(%rbp), %rcx
	addq %rbx, %rcx
	movq -112(%rbp), %rbx
	addq %rcx, %rbx
	movq %rsi, %rcx
	addq %rbx, %rcx
	movq -288(%rbp), %rbx
	addq %rcx, %rbx
	movq -120(%rbp), %rcx
	addq %rbx, %rcx
	movq -296(%rbp), %rbx
	addq %rcx, %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $344, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
