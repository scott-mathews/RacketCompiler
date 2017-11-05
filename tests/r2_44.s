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

	callq read_int
	movq %rax, -24(%rbp)
	movq $0, %rax
	cmpq %rax, -24(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -32(%rbp)
	movq -32(%rbp), %rax
	cmpq $1, %rax
	je then62776
	movq $0, -40(%rbp)
	jmp end62777
then62776:
	callq read_int
	movq %rax, -8(%rbp)
	movq $1, %rax
	cmpq %rax, -8(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -16(%rbp)
	movq -16(%rbp), %rax
	movq %rax, -40(%rbp)
end62777:
	movq -40(%rbp), %rax
	cmpq $1, %rax
	je then62778
	movq $42, -48(%rbp)
	jmp end62779
then62778:
	movq $0, -48(%rbp)
end62779:
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
