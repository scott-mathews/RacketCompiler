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
	movq %rbx, %r12
	movq $22, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq %rbx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then100604
	callq exit
	jmp end100605
then100604:
	movq %rbx, %r13
	sarq $3, %r13
end100605:
	movq %r12, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100606
	callq exit
	jmp end100607
then100606:
	movq %r12, %rbx
	sarq $3, %rbx
end100607:
	movq %r13, %rcx
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
