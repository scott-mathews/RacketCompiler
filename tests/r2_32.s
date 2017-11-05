	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $16, %rsp
	movq $16384, %rcx 
	movq $16, %rdx 
	callq initialize 
	movq rootstack_begin(%rip), %r15 
	movq $0, (%r15) 
	addq $0, %r15

	movq $1, %rax
	cmpq $1, %rax
	je then62625
	movq $0, -8(%rbp)
	jmp end62626
then62625:
	movq $1, -8(%rbp)
end62626:
	movq -8(%rbp), %rax
	cmpq $1, %rax
	je then62627
	movq $777, -16(%rbp)
	jmp end62628
then62627:
	movq $42, -16(%rbp)
end62628:
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
	popq %rbp
	retq
