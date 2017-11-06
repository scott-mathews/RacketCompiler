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

	movq $0, %r10
	cmpq $1, %r10
	sete %al
	movzbq %al, %r10
	movq %r10, -40(%rbp)
	movq -40(%rbp), %rax
	cmpq $1, %rax
	je then30518
	movq $1, -8(%rbp)
	addq $1, -8(%rbp)
	movq $2, %r10
	cmpq %r10, -8(%rbp)
	sete %al
	movzbq %al, %r10
	movq %r10, -16(%rbp)
	movq -16(%rbp), %rax
	cmpq $1, %rax
	je then30520
	movq $444, -24(%rbp)
	jmp end30521
then30520:
	movq $40, -24(%rbp)
end30521:
	movq $2, -32(%rbp)
	movq -24(%rbp), %r9
	addq %r9, -32(%rbp)
	movq -32(%rbp), %r8
	movq %r8, -48(%rbp)
	jmp end30519
then30518:
	movq $777, -48(%rbp)
end30519:
	movq -48(%rbp), %rax

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
