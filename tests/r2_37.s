	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r15
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $32, %rsp
	movq $16384, %rcx 
	movq $16, %rdx 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15
	movq $0, 0(%r15)

	callq read_int
	movq %rax, -8(%rbp)
	movq $0, %r10
	cmpq %r10, -8(%rbp)
	sete %al
	movzbq %al, %r10
	movq %r10, -16(%rbp)
	movq -16(%rbp), %rax
	cmpq $1, %rax
	je then184760
	movq $777, -24(%rbp)
	jmp end184761
then184760:
	movq $42, -24(%rbp)
end184761:
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
	popq %r15
	popq %rbp
	retq
