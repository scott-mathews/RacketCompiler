	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $72, %rsp
	addq $0, %r15

	movq %rdi, %rbx
	movq %rsi, %r8
	movq %rdx, %rdx
	movq %rcx, %rcx
	movq %r8, %r9
	movq %r9, %rsi
	movq 16(%rbp), %r10
	movq 24(%rbp), %rdi
	movq %r10, %r10
	addq %rdi, %r10
	movq %rsi, %rsi
	addq %r10, %rsi
	movq %r9, %r9
	addq %rsi, %r9
	movq %rcx, %rcx
	addq %r9, %rcx
	movq %rdx, %rdx
	addq %rcx, %rdx
	movq %r8, %r8
	addq %rdx, %r8
	movq %rbx, %rbx
	addq %r8, %rbx
	movq %rbx, %rax

	addq $72, %rsp
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
	subq $48, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	leaq function0(%rip), %rbx
	movq $5, %rdi
	movq $5, %rsi
	movq $5, %rdx
	movq $5, %rcx
	movq $5, %r8
	movq $5, %r9
	movq $5, 0(%rsp)
	movq $7, 8(%rsp)
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $48, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
