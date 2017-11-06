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

	callq read_int
	movq %rax, -16(%rbp)
	movq -16(%rbp), %r10
	cmpq $0, %r10
	sete %al
	movzbq %al, %r10
	movq %r10, -24(%rbp)
	movq -24(%rbp), %rax
	cmpq $1, %rax
	je then30494
	movq $777, -32(%rbp)
	jmp end30495
then30494:
	callq read_int
	movq %rax, -8(%rbp)
	movq -8(%rbp), %r8
	movq %r8, -32(%rbp)
end30495:
	movq -32(%rbp), %rax

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
