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

	movq $10, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100520
	callq exit
	jmp end100521
then100520:
	movq %rcx, %rbx
	sarq $3, %rbx
end100521:
	movq $11, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then100522
	callq exit
	jmp end100523
then100522:
	movq %rcx, %r12
	sarq $3, %r12
end100523:
	movq %rbx, %rbx
	addq %r12, %rbx
	movq %rbx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then100524
	callq exit
	jmp end100525
then100524:
	movq %rbx, %r12
	sarq $3, %r12
end100525:
	movq $25, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then100526
	callq exit
	jmp end100527
then100526:
	movq %rbx, %r13
	sarq $3, %r13
end100527:
	movq $4, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100528
	callq exit
	jmp end100529
then100528:
	movq %rcx, %rbx
	sarq $3, %rbx
end100529:
	movq %rbx, %rbx
	negq %rbx
	movq %rbx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100530
	callq exit
	jmp end100531
then100530:
	movq %rcx, %rbx
	sarq $3, %rbx
end100531:
	movq %r13, %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100532
	callq exit
	jmp end100533
then100532:
	movq %rcx, %rbx
	sarq $3, %rbx
end100533:
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
