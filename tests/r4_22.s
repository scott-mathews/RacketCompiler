	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $176, %rsp
	addq $0, %r15

	movq %rdi, -136(%rbp)
	movq %rsi, -160(%rbp)
	movq %rdx, -104(%rbp)
	movq %rcx, -48(%rbp)
	movq %r8, -120(%rbp)
	movq %r9, -80(%rbp)
	movq 16(%rbp), %rax
	movq %rax, -96(%rbp)
	movq 24(%rbp), %rax
	movq %rax, -56(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -72(%rbp)
	movq -56(%rbp), %rax
	addq %rax, -72(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -152(%rbp)
	movq -72(%rbp), %rax
	addq %rax, -152(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -152(%rbp), %rax
	addq %rax, -88(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -112(%rbp)
	movq -88(%rbp), %rax
	addq %rax, -112(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -64(%rbp)
	movq -112(%rbp), %rax
	addq %rax, -64(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -144(%rbp)
	movq -64(%rbp), %rax
	addq %rax, -144(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -128(%rbp)
	movq -144(%rbp), %rax
	addq %rax, -128(%rbp)
	movq -128(%rbp), %rax

	addq $176, %rsp
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
	subq $104, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	leaq function0(%rip), %rax
	movq %rax, -56(%rbp)
	movq $5, %rdi
	movq $5, %rsi
	movq $5, %rdx
	movq $5, %rcx
	movq $5, %r8
	movq $5, %r9
	movq $5, 0(%rsp)
	movq $7, 8(%rsp)
	callq *-56(%rbp)
	movq %rax, -48(%rbp)
	movq -48(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $104, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
