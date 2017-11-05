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
	movq $16, %rdx 
	callq initialize 
	movq rootstack_begin(%rip), %r15 
	movq $0, (%r15) 
	addq $0, %r15

	movq $0, %rax
	cmpq $1, %rax
	je then62510
	movq $0, -24(%rbp)
	jmp end62511
then62510:
	callq read_int
	movq %rax, -8(%rbp)
	movq $42, %rax
	cmpq %rax, -8(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -16(%rbp)
	movq -16(%rbp), %rax
	movq %rax, -24(%rbp)
end62511:
	movq -24(%rbp), %rax
	cmpq $1, %rax
	je then62512
	movq $42, -32(%rbp)
	jmp end62513
then62512:
	movq $777, -32(%rbp)
end62513:
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
