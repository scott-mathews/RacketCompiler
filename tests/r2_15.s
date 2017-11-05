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
	movq $16, %rdx 
	callq initialize 
	movq rootstack_begin(%rip), %r15 
	movq $0, (%r15) 
	addq $0, %r15

	movq $42, -24(%rbp)
	movq $42, %rax
	cmpq %rax, -24(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -16(%rbp)
	movq -16(%rbp), %rax
	cmpq $1, %rax
	je then62474
	movq $20, -8(%rbp)
	jmp end62475
then62474:
	movq -24(%rbp), %rax
	movq %rax, -8(%rbp)
end62475:
	movq $42, %rax
	cmpq %rax, -8(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -32(%rbp)
	movq -32(%rbp), %rax
	cmpq $1, %rax
	je then62476
	movq $777, -40(%rbp)
	jmp end62477
then62476:
	movq $42, -40(%rbp)
end62477:
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
