	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $48, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	movq $1, %rbx
	xorq $1, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then95763
	movq $1, %rbx
	jmp end95764
then95763:
	movq $0, %rbx
end95764:
	movq %rbx, %rax
	cmpq $1, %rax
	je then95765
	movq $777, %rbx
	jmp end95766
then95765:
	movq $42, %rbx
end95766:
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $48, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
