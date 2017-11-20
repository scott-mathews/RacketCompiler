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

	movq $1, -8(%rbp)
	movq -8(%rbp), %rax
	cmpq $1, %rax
	je then183790
	movq $0, -24(%rbp)
	jmp end183791
then183790:
	movq -8(%rbp), %r8
	movq %r8, -24(%rbp)
end183791:
	movq -24(%rbp), %rax
	cmpq $1, %rax
	je then183792
	movq $0, -32(%rbp)
	jmp end183793
then183792:
	movq $1, -32(%rbp)
end183793:
	movq -32(%rbp), %r8
	movq %r8, -40(%rbp)
	movq -40(%rbp), %rax
	cmpq $1, %rax
	je then183794
	movq $777, -16(%rbp)
	jmp end183795
then183794:
	movq $42, -16(%rbp)
end183795:
	movq -16(%rbp), %rax

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
