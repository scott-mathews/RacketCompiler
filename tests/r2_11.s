	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $32, %rsp
	movq $16384, %rcx 
	movq $16, %rdx 
	callq initialize 
	movq rootstack_begin(%rip), %r15 
	movq $0, (%r15) 
	addq $0, %r15

	movq $0, -8(%rbp)
	xorq $1, -8(%rbp)
	movq -8(%rbp), %rax
	cmpq $1, %rax
	je then62426
	movq $1, -16(%rbp)
	jmp end62427
then62426:
	movq $0, -16(%rbp)
end62427:
	movq -16(%rbp), %rax
	cmpq $1, %rax
	je then62428
	movq $42, -24(%rbp)
	jmp end62429
then62428:
	movq $777, -24(%rbp)
end62429:
	movq -24(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	subq $0, %r15
	addq $32, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
