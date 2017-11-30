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
	cmpq $1, %rbx
	je then229790
	movq $0, %rbx
	jmp end229791
then229790:
	movq %rbx, %rbx
end229791:
	cmpq $1, %rbx
	je then229792
	movq $0, %rbx
	jmp end229793
then229792:
	movq $1, %rbx
end229793:
	movq %rbx, %rbx
	cmpq $1, %rbx
	je then229794
	movq $777, %rbx
	jmp end229795
then229794:
	movq $42, %rbx
end229795:
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
