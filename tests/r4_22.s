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

	movq %rdi, %rdx
	movq %rsi, %r10
	movq %rdx, %rsi
	movq %rcx, %rdi
	movq %r8, %rbx
	movq %r9, %r9
	movq 16(%rbp), %rcx
	movq 24(%rbp), %r8
	movq %rcx, %rcx
	addq %r8, %rcx
	movq %r9, %r9
	addq %rcx, %r9
	movq %rbx, %rbx
	addq %r9, %rbx
	movq %rdi, %rdi
	addq %rbx, %rdi
	movq %rsi, %rsi
	addq %rdi, %rsi
	movq %r10, %r10
	addq %rsi, %r10
	movq %rdx, %rdx
	addq %r10, %rdx
	movq %rdx, %rax

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
