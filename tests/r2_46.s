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
	je then38421
	movq $1, %rbx
	jmp end38422
then38421:
	movq $0, %rbx
end38422:
	movq %rbx, %rax
	cmpq $1, %rax
	je then38423
	movq $777, %rbx
	jmp end38424
then38423:
	movq $42, %rbx
end38424:
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
