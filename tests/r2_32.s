	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r15
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $16, %rsp
	movq $16384, %rcx 
	movq $16, %rdx 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15
	movq $0, 0(%r15)

	movq $1, %rax
	cmpq $1, %rax
	je then184503
	movq $0, -8(%rbp)
	jmp end184504
then184503:
	movq $1, -8(%rbp)
end184504:
	movq -8(%rbp), %rax
	cmpq $1, %rax
	je then184505
	movq $777, -16(%rbp)
	jmp end184506
then184505:
	movq $42, -16(%rbp)
end184506:
	movq -16(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	subq $0, %r15
	addq $16, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %r15
	popq %rbp
	retq
