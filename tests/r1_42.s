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

	movq $30, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then101348
	callq exit
	jmp end101349
then101348:
	movq %rcx, %rbx
	sarq $3, %rbx
end101349:
	movq $14, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then101350
	callq exit
	jmp end101351
then101350:
	movq %rcx, %r12
	sarq $3, %r12
end101351:
	movq %rbx, %rbx
	addq %r12, %rbx
	movq %rbx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rcx
	movq $2, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then101352
	callq exit
	jmp end101353
then101352:
	movq %rcx, %r12
	sarq $3, %r12
end101353:
	movq %rbx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then101354
	callq exit
	jmp end101355
then101354:
	movq %rbx, %r13
	sarq $3, %r13
end101355:
	movq %r13, %rbx
	negq %rbx
	movq %rbx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then101356
	callq exit
	jmp end101357
then101356:
	movq %rcx, %rbx
	sarq $3, %rbx
end101357:
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
