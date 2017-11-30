	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $136, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	callq read_int
	movq %rax, -48(%rbp)
	movq $0, %rax
	cmpq -48(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -88(%rbp)
	cmpq $1, -88(%rbp)
	je then478816
	movq $0, -64(%rbp)
	jmp end478817
then478816:
	callq read_int
	movq %rax, -56(%rbp)
	movq $1, %rax
	cmpq -56(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -80(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -64(%rbp)
end478817:
	cmpq $1, -64(%rbp)
	je then478818
	movq $42, -72(%rbp)
	jmp end478819
then478818:
	movq $0, -72(%rbp)
end478819:
	movq -72(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $136, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
