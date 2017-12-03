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

	movq $1, -104(%rbp)
	movq $1, -248(%rbp)
	movq $1, %r14
	movq $1, -296(%rbp)
	movq $1, -96(%rbp)
	movq $1, -240(%rbp)
	movq $1, -224(%rbp)
	movq $1, -288(%rbp)
	movq $1, -88(%rbp)
	movq $1, -232(%rbp)
	movq $1, %r12
	movq $1, -280(%rbp)
	movq $1, -256(%rbp)
	movq $1, -56(%rbp)
	movq $1, -208(%rbp)
	movq $1, -112(%rbp)
	movq $1, -272(%rbp)
	movq $1, -72(%rbp)
	movq $1, -216(%rbp)
	movq $1, -128(%rbp)
	movq $1, -264(%rbp)
	movq $1, -64(%rbp)
	movq $1, %r13
	movq $1, -120(%rbp)
	movq $1, -176(%rbp)
	movq $1, %rdx
	movq $1, -144(%rbp)
	movq $1, %r10
	movq $1, %rsi
	movq $1, -152(%rbp)
	movq $1, %rbx
	movq $1, -184(%rbp)
	movq $1, %r8
	movq $1, -168(%rbp)
	movq $1, %rcx
	movq $1, -200(%rbp)
	movq $1, %rdi
	movq $1, -160(%rbp)
	movq $1, -136(%rbp)
	movq $1, -192(%rbp)
	movq $1, %r9
	movq %r9, %r9
	addq $1, %r9
	movq -192(%rbp), %rax
	movq %rax, -80(%rbp)
	addq %r9, -80(%rbp)
	movq -136(%rbp), %r9
	addq -80(%rbp), %r9
	movq -160(%rbp), %rax
	movq %rax, -48(%rbp)
	addq %r9, -48(%rbp)
	movq %rdi, %rdi
	addq -48(%rbp), %rdi
	movq -200(%rbp), %r9
	addq %rdi, %r9
	movq %rcx, %rcx
	addq %r9, %rcx
	movq -168(%rbp), %rdi
	addq %rcx, %rdi
	movq %r8, %rcx
	addq %rdi, %rcx
	movq -184(%rbp), %rdi
	addq %rcx, %rdi
	movq %rbx, %rbx
	addq %rdi, %rbx
	movq -152(%rbp), %rcx
	addq %rbx, %rcx
	movq %rsi, %rbx
	addq %rcx, %rbx
	movq %r10, %rcx
	addq %rbx, %rcx
	movq -144(%rbp), %rbx
	addq %rcx, %rbx
	movq %rdx, %rcx
	addq %rbx, %rcx
	movq -176(%rbp), %rbx
	addq %rcx, %rbx
	movq -120(%rbp), %rcx
	addq %rbx, %rcx
	movq %r13, %rbx
	addq %rcx, %rbx
	movq -64(%rbp), %rcx
	addq %rbx, %rcx
	movq -264(%rbp), %rbx
	addq %rcx, %rbx
	movq -128(%rbp), %rcx
	addq %rbx, %rcx
	movq -216(%rbp), %rbx
	addq %rcx, %rbx
	movq -72(%rbp), %rcx
	addq %rbx, %rcx
	movq -272(%rbp), %rbx
	addq %rcx, %rbx
	movq -112(%rbp), %rcx
	addq %rbx, %rcx
	movq -208(%rbp), %rbx
	addq %rcx, %rbx
	movq -56(%rbp), %rcx
	addq %rbx, %rcx
	movq -256(%rbp), %rbx
	addq %rcx, %rbx
	movq -280(%rbp), %rcx
	addq %rbx, %rcx
	movq %r12, %rbx
	addq %rcx, %rbx
	movq -232(%rbp), %rcx
	addq %rbx, %rcx
	movq -88(%rbp), %rbx
	addq %rcx, %rbx
	movq -288(%rbp), %rcx
	addq %rbx, %rcx
	movq -224(%rbp), %rbx
	addq %rcx, %rbx
	movq -240(%rbp), %rcx
	addq %rbx, %rcx
	movq -96(%rbp), %rbx
	addq %rcx, %rbx
	movq -296(%rbp), %rcx
	addq %rbx, %rcx
	movq %r14, %rbx
	addq %rcx, %rbx
	movq -248(%rbp), %rcx
	addq %rbx, %rcx
	movq -104(%rbp), %rbx
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
