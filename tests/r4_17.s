	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $160, %rsp
	addq $0, %r15

	movq %rdi, -88(%rbp)
	movq %rsi, -112(%rbp)
	movq %rdx, -64(%rbp)
	movq %rcx, -128(%rbp)
	movq %r8, -72(%rbp)
	movq %r9, -96(%rbp)
	movq 16(%rbp), %rax
	movq %rax, -48(%rbp)
	movq 24(%rbp), %rax
	movq %rax, -120(%rbp)
	movq 32(%rbp), %rax
	movq %rax, -80(%rbp)
	movq 40(%rbp), %rax
	movq %rax, -104(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -56(%rbp)
	movq -104(%rbp), %rax
	addq %rax, -56(%rbp)
	movq -56(%rbp), %rax

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
	subq $104, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	leaq function0(%rip), %rax
	movq %rax, -56(%rbp)
	movq $1, %rdi
	movq $2, %rsi
	movq $3, %rdx
	movq $20, %rcx
	movq $5, %r8
	movq $6, %r9
	movq $7, 0(%rsp)
	movq $8, 8(%rsp)
	movq $9, 16(%rsp)
	movq $22, 24(%rsp)
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
