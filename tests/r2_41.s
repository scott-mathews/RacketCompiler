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

	movq $0, %rax
	cmpq $1, %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -40(%rbp)
	movq -40(%rbp), %rax
	cmpq $1, %rax
	je then62731
	movq $1, -8(%rbp)
	addq $1, -8(%rbp)
	movq $2, %rax
	cmpq %rax, -8(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -16(%rbp)
	movq -16(%rbp), %rax
	cmpq $1, %rax
	je then62733
	movq $444, -24(%rbp)
	jmp end62734
then62733:
	movq $40, -24(%rbp)
end62734:
	movq $2, -32(%rbp)
	movq -24(%rbp), %rax
	addq %rax, -32(%rbp)
	movq -32(%rbp), %rax
	movq %rax, -48(%rbp)
	jmp end62732
then62731:
	movq $777, -48(%rbp)
end62732:
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
