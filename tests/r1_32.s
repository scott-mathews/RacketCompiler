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
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100656
	callq exit
	jmp end100657
then100656:
	movq %rcx, %rbx
	sarq $3, %rbx
end100657:
	movq $22, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then100658
	callq exit
	jmp end100659
then100658:
	movq %rcx, %r12
	sarq $3, %r12
end100659:
	movq %rbx, %rbx
	addq %r12, %rbx
	movq %rbx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
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
