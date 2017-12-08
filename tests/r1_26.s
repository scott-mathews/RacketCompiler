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

	movq $41, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq %rbx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then100547
	callq exit
	jmp end100548
then100547:
	movq %rbx, %r12
	sarq $3, %r12
end100548:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100549
	callq exit
	jmp end100550
then100549:
	movq %rcx, %rbx
	sarq $3, %rbx
end100550:
	movq %r12, %rcx
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
