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

	movq $20, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rcx
	movq $22, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r12
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100565
	callq exit
	jmp end100566
then100565:
	movq %rcx, %rbx
	sarq $3, %rbx
end100566:
	movq %r12, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then100567
	callq exit
	jmp end100568
then100567:
	movq %r12, %r13
	sarq $3, %r13
end100568:
	movq %rbx, %rbx
	addq %r13, %rbx
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
