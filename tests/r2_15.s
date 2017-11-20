	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r15
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $48, %rsp
	movq $16384, %rcx 
	movq $16, %rdx 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15
	movq $0, 0(%r15)

	movq $42, -16(%rbp)
	movq $42, %r10
	cmpq %r10, -16(%rbp)
	sete %al
	movzbq %al, %r10
	movq %r10, -24(%rbp)
	movq -24(%rbp), %rax
	cmpq $1, %rax
	je then183895
	movq $20, -8(%rbp)
	jmp end183896
then183895:
	movq -16(%rbp), %r8
	movq %r8, -8(%rbp)
end183896:
	movq $42, %r10
	cmpq %r10, -8(%rbp)
	sete %al
	movzbq %al, %r10
	movq %r10, -32(%rbp)
	movq -32(%rbp), %rax
	cmpq $1, %rax
	je then183897
	movq $777, -40(%rbp)
	jmp end183898
then183897:
	movq $42, -40(%rbp)
end183898:
	movq -40(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	subq $0, %r15
	addq $48, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %r15
	popq %rbp
	retq
