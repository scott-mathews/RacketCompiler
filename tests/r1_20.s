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

	movq $14, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r12
	movq %r12, %r14
	andq $7, %r14
	cmpq $1, %r14
	je then100419
	callq exit
	jmp end100420
then100419:
	movq %r12, %r14
	sarq $3, %r14
end100420:
	movq %r12, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100421
	callq exit
	jmp end100422
then100421:
	movq %r12, %rbx
	sarq $3, %rbx
end100422:
	movq %r12, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then100423
	callq exit
	jmp end100424
then100423:
	movq %r12, %r13
	sarq $3, %r13
end100424:
	movq %rbx, %rbx
	addq %r13, %rbx
	movq %rbx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100425
	callq exit
	jmp end100426
then100425:
	movq %rcx, %rbx
	sarq $3, %rbx
end100426:
	movq %r14, %rcx
	addq %rbx, %rcx
	movq %rcx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_any
	subq $0, %r15
	addq $88, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
