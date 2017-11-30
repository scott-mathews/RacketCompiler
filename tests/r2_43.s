	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $112, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	callq read_int
	movq %rax, -56(%rbp)
	movq $1, %rax
	cmpq -56(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -48(%rbp)
	cmpq $1, -48(%rbp)
	je then478803
	movq $0, -64(%rbp)
	jmp end478804
then478803:
	movq $42, -64(%rbp)
end478804:
	movq -64(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $112, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
