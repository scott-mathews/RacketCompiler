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
	movq $10000, %rdx 
	callq initialize 
	movq rootstack_begin(%rip), %r15 
	movq $0, (%r15) 
	addq $0, %r15

	movq $42, -16(%rbp)
	movq $42, %r10
	cmpq %r10, -16(%rbp)
	sete %al
	movzbq %al, %r10
	movq %r10, -8(%rbp)
	movq -8(%rbp), %rax
	cmpq $1, %rax
	je then30218
	movq $20, -24(%rbp)
	jmp end30219
then30218:
	movq -16(%rbp), %r8
	movq %r8, -24(%rbp)
end30219:
	movq $42, %r10
	cmpq %r10, -24(%rbp)
	sete %al
	movzbq %al, %r10
	movq %r10, -32(%rbp)
	movq -32(%rbp), %rax
	cmpq $1, %rax
	je then30220
	movq $777, -40(%rbp)
	jmp end30221
then30220:
	movq $42, -40(%rbp)
end30221:
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
	popq %rbp
	retq
