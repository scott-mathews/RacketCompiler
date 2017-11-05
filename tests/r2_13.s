	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $48, %rsp
	movq $16384, %rcx 
	movq $16, %rdx 
	callq initialize 
	movq rootstack_begin(%rip), %r15 
	movq $0, (%r15) 
	addq $0, %r15

	movq $1, -32(%rbp)
	movq -32(%rbp), %rax
	cmpq $1, %rax
	je then62451
	movq $0, -8(%rbp)
	jmp end62452
then62451:
	movq -32(%rbp), %rax
	movq %rax, -8(%rbp)
end62452:
	movq -8(%rbp), %rax
	cmpq $1, %rax
	je then62453
	movq $0, -24(%rbp)
	jmp end62454
then62453:
	movq $1, -24(%rbp)
end62454:
	movq -24(%rbp), %rax
	cmpq $1, %rax
	je then62455
	movq $777, -16(%rbp)
	jmp end62456
then62455:
	movq $42, -16(%rbp)
end62456:
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
	popq %rbp
	retq
