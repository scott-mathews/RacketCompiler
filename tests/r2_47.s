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
	movq $10000, %rdx 
	callq initialize 
	movq rootstack_begin(%rip), %r15 
	movq $0, (%r15) 
	addq $0, %r15

	movq $0, -8(%rbp)
	xorq $1, -8(%rbp)
	movq -8(%rbp), %rax
	cmpq $1, %rax
	je then30598
	movq $1, -16(%rbp)
	jmp end30599
then30598:
	movq $0, -16(%rbp)
end30599:
	movq -16(%rbp), %rax
	cmpq $1, %rax
	je then30600
	movq $42, -24(%rbp)
	jmp end30601
then30600:
	movq $777, -24(%rbp)
end30601:
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
