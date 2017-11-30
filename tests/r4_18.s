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

	movq %rdi, -112(%rbp)
	movq %rsi, -96(%rbp)
	movq %rdx, -56(%rbp)
	movq %rcx, -80(%rbp)
	movq %r8, -64(%rbp)
	movq %r9, -88(%rbp)
	movq 16(%rbp), %rax
	movq %rax, -48(%rbp)
	movq 24(%rbp), %rax
	movq %rax, -72(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -104(%rbp)
	movq -72(%rbp), %rax
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
	movq %rsi, -120(%rbp)
	movq %rdx, -56(%rbp)
	movq %rcx, -96(%rbp)
	movq %r8, -128(%rbp)
	movq %r9, -112(%rbp)
	movq 16(%rbp), %rax
	movq %rax, -48(%rbp)
	movq 24(%rbp), %rax
	movq %rax, -104(%rbp)
	movq 32(%rbp), %rax
	movq %rax, -88(%rbp)
	movq 40(%rbp), %rax
	movq %rax, -72(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -64(%rbp)
	movq -72(%rbp), %rax
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
	subq $144, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	leaq function1(%rip), %rax
	movq %rax, -56(%rbp)
	movq $1, %rdi
	movq $2, %rsi
	movq $3, %rdx
	movq $10, %rcx
	movq $5, %r8
	movq $6, %r9
	movq $7, 0(%rsp)
	movq $8, 8(%rsp)
	movq $9, 16(%rsp)
	movq $11, 24(%rsp)
	callq *-56(%rbp)
	movq %rax, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -80(%rbp)
	leaq function0(%rip), %rax
	movq %rax, -88(%rbp)
	movq $1, %rdi
	movq $2, %rsi
	movq $3, %rdx
	movq $10, %rcx
	movq $5, %r8
	movq $6, %r9
	movq $7, 0(%rsp)
	movq $11, 8(%rsp)
	callq *-88(%rbp)
	movq %rax, -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -48(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -64(%rbp)
	movq -48(%rbp), %rax
	addq %rax, -64(%rbp)
	movq -64(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $144, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
