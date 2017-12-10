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
	movq $0, %rax
	cmpq %rbx, %rax
	je then15843
	movq %rbx, %rbx
	jmp end15844
then15843:
	movq $0, %rbx
end15844:
	movq $0, %rax
	cmpq %rbx, %rax
	je then15845
	movq $1, %rbx
	jmp end15846
then15845:
	movq $0, %rbx
end15846:
	movq %rbx, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then15847
	movq $42, %rbx
	jmp end15848
then15847:
	movq $777, %rbx
end15848:
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
