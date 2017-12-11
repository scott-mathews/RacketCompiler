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
	je then318872
	jmp end318873
then318872:
	movq $0, %rbx
end318873:
	movq $0, %rax
	cmpq %rbx, %rax
	je then318874
	movq $1, %rbx
	jmp end318875
then318874:
	movq $0, %rbx
end318875:
	movq $0, %rax
	cmpq %rbx, %rax
	je then318876
	movq $42, %rbx
	jmp end318877
then318876:
	movq $777, %rbx
end318877:
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
