	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $88, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	movq $1, %rbx
	xorq $1, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then16879
	movq $0, %rbx
	jmp end16880
then16879:
	movq $1, %rbx
end16880:
	movq $0, %rax
	cmpq %rbx, %rax
	je then16881
	movq $42, %rbx
	jmp end16882
then16881:
	movq $777, %rbx
end16882:
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $88, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
