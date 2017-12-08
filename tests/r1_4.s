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
	je then99371
	callq exit
	jmp end99372
then99371:
	movq %rcx, %rbx
	sarq $3, %rbx
end99372:
	movq $11, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then99373
	callq exit
	jmp end99374
then99373:
	movq %rcx, %r12
	sarq $3, %r12
end99374:
	movq %rbx, %rbx
	addq %r12, %rbx
	movq %rbx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then99375
	callq exit
	jmp end99376
then99375:
	movq %rbx, %r12
	sarq $3, %r12
end99376:
	movq $25, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99377
	callq exit
	jmp end99378
then99377:
	movq %rcx, %rbx
	sarq $3, %rbx
end99378:
	movq $4, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then99379
	callq exit
	jmp end99380
then99379:
	movq %rcx, %r13
	sarq $3, %r13
end99380:
	movq %r13, %rcx
	negq %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then99381
	callq exit
	jmp end99382
then99381:
	movq %rcx, %r13
	sarq $3, %r13
end99382:
	movq %rbx, %rbx
	addq %r13, %rbx
	movq %rbx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99383
	callq exit
	jmp end99384
then99383:
	movq %rcx, %rbx
	sarq $3, %rbx
end99384:
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
