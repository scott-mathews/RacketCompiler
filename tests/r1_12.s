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

	movq $1, %r10
	movq $1, -240(%rbp)
	movq $1, -112(%rbp)
	movq $1, -136(%rbp)
	movq $1, -184(%rbp)
	movq $1, -56(%rbp)
	movq $1, -272(%rbp)
	movq $1, -144(%rbp)
	movq $1, -192(%rbp)
	movq $1, -64(%rbp)
	movq $1, -280(%rbp)
	movq $1, %rsi
	movq $1, -200(%rbp)
	movq $1, -72(%rbp)
	movq $1, -288(%rbp)
	movq $1, %rbx
	movq $1, -176(%rbp)
	movq $1, -48(%rbp)
	movq $1, -264(%rbp)
	movq $1, %rcx
	movq $1, %r8
	movq $1, -208(%rbp)
	movq $1, -80(%rbp)
	movq $1, %rdx
	movq $1, %r9
	movq $1, -224(%rbp)
	movq $1, -88(%rbp)
	movq $1, -152(%rbp)
	movq $1, %r12
	movq $1, -232(%rbp)
	movq $1, -104(%rbp)
	movq $1, -168(%rbp)
	movq $1, %r13
	movq $1, -248(%rbp)
	movq $1, -120(%rbp)
	movq $1, -160(%rbp)
	movq $1, -256(%rbp)
	movq $1, %r14
	movq $1, %rdi
	movq $1, -96(%rbp)
	movq $1, -216(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -128(%rbp)
	addq $1, -128(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -296(%rbp)
	movq -128(%rbp), %rax
	addq %rax, -296(%rbp)
	movq %rdi, %rdi
	addq -296(%rbp), %rdi
	movq %r14, %r14
	addq %rdi, %r14
	movq -256(%rbp), %rdi
	addq %r14, %rdi
	movq -160(%rbp), %r14
	addq %rdi, %r14
	movq -120(%rbp), %rdi
	addq %r14, %rdi
	movq -248(%rbp), %r14
	addq %rdi, %r14
	movq %r13, %rdi
	addq %r14, %rdi
	movq -168(%rbp), %r13
	addq %rdi, %r13
	movq -104(%rbp), %rdi
	addq %r13, %rdi
	movq -232(%rbp), %r13
	addq %rdi, %r13
	movq %r12, %rdi
	addq %r13, %rdi
	movq -152(%rbp), %r12
	addq %rdi, %r12
	movq -88(%rbp), %rdi
	addq %r12, %rdi
	movq -224(%rbp), %r12
	addq %rdi, %r12
	movq %r9, %rdi
	addq %r12, %rdi
	movq %rdx, %rdx
	addq %rdi, %rdx
	movq -80(%rbp), %rdi
	addq %rdx, %rdi
	movq -208(%rbp), %rdx
	addq %rdi, %rdx
	movq %r8, %rdi
	addq %rdx, %rdi
	movq %rcx, %rcx
	addq %rdi, %rcx
	movq -264(%rbp), %rdx
	addq %rcx, %rdx
	movq -48(%rbp), %rcx
	addq %rdx, %rcx
	movq -176(%rbp), %rdx
	addq %rcx, %rdx
	movq %rbx, %rbx
	addq %rdx, %rbx
	movq -288(%rbp), %rcx
	addq %rbx, %rcx
	movq -72(%rbp), %rbx
	addq %rcx, %rbx
	movq -200(%rbp), %rcx
	addq %rbx, %rcx
	movq %rsi, %rbx
	addq %rcx, %rbx
	movq -280(%rbp), %rcx
	addq %rbx, %rcx
	movq -64(%rbp), %rbx
	addq %rcx, %rbx
	movq -192(%rbp), %rcx
	addq %rbx, %rcx
	movq -144(%rbp), %rbx
	addq %rcx, %rbx
	movq -272(%rbp), %rcx
	addq %rbx, %rcx
	movq -56(%rbp), %rbx
	addq %rcx, %rbx
	movq -184(%rbp), %rcx
	addq %rbx, %rcx
	movq -136(%rbp), %rbx
	addq %rcx, %rbx
	movq -112(%rbp), %rcx
	addq %rbx, %rcx
	movq -240(%rbp), %rbx
	addq %rcx, %rbx
	movq %r10, %rcx
	addq %rbx, %rcx
	movq %rcx, %rax

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
