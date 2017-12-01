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

	movq $0, %rax
	cmpq $1, %rax
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then549461
	movq $1, %rbx
	addq $1, %rbx
	movq $2, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then549463
	movq $444, %rcx
	jmp end549464
then549463:
	movq $40, %rcx
end549464:
	movq $2, %rbx
	addq %rcx, %rbx
	movq %rbx, %rbx
	jmp end549462
then549461:
	movq $777, %rbx
end549462:
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $88, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
