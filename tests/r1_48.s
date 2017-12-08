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
	movq %r12, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then101504
	callq exit
	jmp end101505
then101504:
	movq %r12, %r13
	sarq $3, %r13
end101505:
	movq %r12, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then101506
	callq exit
	jmp end101507
then101506:
	movq %r12, %rbx
	sarq $3, %rbx
end101507:
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
