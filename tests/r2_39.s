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

	callq read_int
	movq %rax, -16(%rbp)
	movq -16(%rbp), %rax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -24(%rbp)
	movq -24(%rbp), %rax
	cmpq $1, %rax
	je then62707
	movq $777, -32(%rbp)
	jmp end62708
then62707:
	callq read_int
	movq %rax, -8(%rbp)
	movq -8(%rbp), %rax
	movq %rax, -32(%rbp)
end62708:
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
