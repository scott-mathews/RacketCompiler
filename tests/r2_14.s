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
	salq $3, %rbx
	orq $4, %rbx
	movq %rbx, %rcx
	movq $0, %rbx
	salq $3, %rbx
	orq $4, %rbx
	cmpq %rcx, %rbx
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then102756
	movq %rcx, %rbx
	jmp end102757
then102756:
	movq $777, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
end102757:
	movq $0, %rcx
	salq $3, %rcx
	orq $4, %rcx
	cmpq %rbx, %rcx
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then102758
	movq $1, %rbx
	salq $3, %rbx
	orq $4, %rbx
	movq %rbx, %rbx
	jmp end102759
then102758:
	movq $0, %rbx
	salq $3, %rbx
	orq $4, %rbx
	movq %rbx, %rbx
end102759:
	movq %rbx, %rbx
	movq $0, %rcx
	salq $3, %rcx
	orq $4, %rcx
	cmpq %rbx, %rcx
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then102760
	movq $42, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	jmp end102761
then102760:
	movq $777, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
end102761:
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
