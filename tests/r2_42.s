	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r15
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $64, %rsp
	movq $16384, %rcx 
	movq $16, %rdx 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15
	movq $0, 0(%r15)

	callq read_int
	movq %rax, -40(%rbp)
	movq $0, %r10
	cmpq %r10, -40(%rbp)
	sete %al
	movzbq %al, %r10
	movq %r10, -48(%rbp)
	movq -48(%rbp), %rax
	cmpq $1, %rax
	je then185121
	callq read_int
	movq %rax, -8(%rbp)
	movq $0, %r10
	cmpq %r10, -8(%rbp)
	sete %al
	movzbq %al, %r10
	movq %r10, -16(%rbp)
	movq -16(%rbp), %rax
	cmpq $1, %rax
	je then185123
	movq $444, -24(%rbp)
	jmp end185124
then185123:
	movq $40, -24(%rbp)
end185124:
	movq $2, -32(%rbp)
	movq -24(%rbp), %r9
	addq %r9, -32(%rbp)
	movq -32(%rbp), %r8
	movq %r8, -56(%rbp)
	jmp end185122
then185121:
	movq $777, -56(%rbp)
end185122:
	movq -56(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	subq $0, %r15
	addq $64, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %r15
	popq %rbp
	retq
