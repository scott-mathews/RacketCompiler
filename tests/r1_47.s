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

	callq read_int
	movq %rax, %rbx
	movq %rbx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then101485
	callq exit
	jmp end101486
then101485:
	movq %rbx, %r12
	sarq $3, %r12
end101486:
	movq $10, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then101487
	callq exit
	jmp end101488
then101487:
	movq %rcx, %rbx
	sarq $3, %rbx
end101488:
	movq %r12, %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then101489
	callq exit
	jmp end101490
then101489:
	movq %rcx, %rbx
	sarq $3, %rbx
end101490:
	movq %rbx, %rbx
	negq %rbx
	movq %rbx, %rbx
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
