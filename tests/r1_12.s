	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $336, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	movq $1, %rdi
	movq $1, %r12
	movq $1, -240(%rbp)
	movq $1, -104(%rbp)
	movq $1, -152(%rbp)
	movq $1, -200(%rbp)
	movq $1, -72(%rbp)
	movq $1, -280(%rbp)
	movq $1, %r8
	movq $1, -208(%rbp)
	movq $1, -80(%rbp)
	movq $1, -288(%rbp)
	movq $1, %rdx
	movq $1, -192(%rbp)
	movq $1, -64(%rbp)
	movq $1, -272(%rbp)
	movq $1, -144(%rbp)
	movq $1, -184(%rbp)
	movq $1, -56(%rbp)
	movq $1, -264(%rbp)
	movq $1, %rsi
	movq $1, %r10
	movq $1, -224(%rbp)
	movq $1, -88(%rbp)
	movq $1, -160(%rbp)
	movq $1, %r13
	movq $1, -232(%rbp)
	movq $1, -96(%rbp)
	movq $1, -168(%rbp)
	movq $1, -48(%rbp)
	movq $1, -256(%rbp)
	movq $1, -112(%rbp)
	movq $1, %r9
	movq $1, %r14
	movq $1, -248(%rbp)
	movq $1, -128(%rbp)
	movq $1, -176(%rbp)
	movq $1, -216(%rbp)
	movq $1, %rbx
	movq $1, %rcx
	movq $1, -120(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -136(%rbp)
	addq $1, -136(%rbp)
	movq %rcx, %rcx
	addq -136(%rbp), %rcx
	movq %rbx, %rbx
	addq %rcx, %rbx
	movq -216(%rbp), %rcx
	addq %rbx, %rcx
	movq -176(%rbp), %rbx
	addq %rcx, %rbx
	movq -128(%rbp), %rcx
	addq %rbx, %rcx
	movq -248(%rbp), %rbx
	addq %rcx, %rbx
	movq %r14, %rcx
	addq %rbx, %rcx
	movq %r9, %rbx
	addq %rcx, %rbx
	movq -112(%rbp), %rcx
	addq %rbx, %rcx
	movq -256(%rbp), %rbx
	addq %rcx, %rbx
	movq -48(%rbp), %rcx
	addq %rbx, %rcx
	movq -168(%rbp), %rbx
	addq %rcx, %rbx
	movq -96(%rbp), %rcx
	addq %rbx, %rcx
	movq -232(%rbp), %rbx
	addq %rcx, %rbx
	movq %r13, %rcx
	addq %rbx, %rcx
	movq -160(%rbp), %rbx
	addq %rcx, %rbx
	movq -88(%rbp), %rcx
	addq %rbx, %rcx
	movq -224(%rbp), %rbx
	addq %rcx, %rbx
	movq %r10, %rcx
	addq %rbx, %rcx
	movq %rsi, %rbx
	addq %rcx, %rbx
	movq -264(%rbp), %rcx
	addq %rbx, %rcx
	movq -56(%rbp), %rbx
	addq %rcx, %rbx
	movq -184(%rbp), %rcx
	addq %rbx, %rcx
	movq -144(%rbp), %rbx
	addq %rcx, %rbx
	movq -272(%rbp), %rcx
	addq %rbx, %rcx
	movq -64(%rbp), %rbx
	addq %rcx, %rbx
	movq -192(%rbp), %rcx
	addq %rbx, %rcx
	movq %rdx, %rbx
	addq %rcx, %rbx
	movq -288(%rbp), %rcx
	addq %rbx, %rcx
	movq -80(%rbp), %rbx
	addq %rcx, %rbx
	movq -208(%rbp), %rcx
	addq %rbx, %rcx
	movq %r8, %rbx
	addq %rcx, %rbx
	movq -280(%rbp), %rcx
	addq %rbx, %rcx
	movq -72(%rbp), %rbx
	addq %rcx, %rbx
	movq -200(%rbp), %rcx
	addq %rbx, %rcx
	movq -152(%rbp), %rbx
	addq %rcx, %rbx
	movq -104(%rbp), %rcx
	addq %rbx, %rcx
	movq -240(%rbp), %rbx
	addq %rcx, %rbx
	movq %r12, %rcx
	addq %rbx, %rcx
	movq %rdi, %rbx
	addq %rcx, %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $336, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
