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

	movq $0, %rbx
	xorq $1, %rbx
	cmpq $1, %rbx
	je then229764
	movq $1, %rbx
	jmp end229765
then229764:
	movq $0, %rbx
end229765:
	cmpq $1, %rbx
	je then229766
	movq $42, %rbx
	jmp end229767
then229766:
	movq $777, %rbx
end229767:
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
