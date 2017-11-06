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

	callq read_int
	movq %rax, -16(%rbp)
	callq read_int
	movq %rax, -24(%rbp)
	movq -24(%rbp), %r10
	cmpq %r10, -16(%rbp)
	sete %al
	movzbq %al, %r10
	movq %r10, -48(%rbp)
	movq -48(%rbp), %rax
	cmpq $1, %rax
	je then30374
	movq $777, -8(%rbp)
	jmp end30375
then30374:
	movq $42, -8(%rbp)
end30375:
	movq -8(%rbp), %rax

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
