	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $136, %rsp
	addq $0, %r15

	movq %rdi, -48(%rbp)
	movq %rsi, -88(%rbp)
	movq %rdx, -80(%rbp)
	movq %rcx, -104(%rbp)
	movq %r8, -64(%rbp)
	movq %r9, -96(%rbp)
	movq 16(%rbp), %rax
	movq %rax, -72(%rbp)
	movq 24(%rbp), %rax
	movq %rax, -112(%rbp)
	movq 32(%rbp), %rax
	movq %rax, -56(%rbp)
	movq -56(%rbp), %rax

	addq $136, %rsp
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
	movq %rax, -48(%rbp)
	movq $777, %rdi
	movq $776, %rsi
	movq $775, %rdx
	movq $774, %rcx
	movq $773, %r8
	movq $772, %r9
	movq $771, 0(%rsp)
	movq $770, 8(%rsp)
	movq $42, 16(%rsp)
	callq *-48(%rbp)
	movq %rax, -56(%rbp)
	movq -56(%rbp), %rax

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
