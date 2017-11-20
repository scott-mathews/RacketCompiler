	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r15
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $48, %rsp
	movq $16384, %rcx 
	movq $16, %rdx 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15
	movq $0, 0(%r15)

	callq read_int
	movq %rax, -24(%rbp)
	movq $0, %r10
	cmpq %r10, -24(%rbp)
	sete %al
	movzbq %al, %r10
	movq %r10, -32(%rbp)
	movq -32(%rbp), %rax
	cmpq $1, %rax
	je then185262
	movq $0, -40(%rbp)
	jmp end185263
then185262:
	callq read_int
	movq %rax, -8(%rbp)
	movq $1, %r10
	cmpq %r10, -8(%rbp)
	sete %al
	movzbq %al, %r10
	movq %r10, -16(%rbp)
	movq -16(%rbp), %r8
	movq %r8, -40(%rbp)
end185263:
	movq -40(%rbp), %rax
	cmpq $1, %rax
	je then185264
	movq $42, -48(%rbp)
	jmp end185265
then185264:
	movq $0, -48(%rbp)
end185265:
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
	popq %r15
	popq %rbp
	retq
