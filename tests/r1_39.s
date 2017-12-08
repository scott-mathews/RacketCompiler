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

	movq $52, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then101285
	callq exit
	jmp end101286
then101285:
	movq %rcx, %rbx
	sarq $3, %rbx
end101286:
	movq $7, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then101287
	callq exit
	jmp end101288
then101287:
	movq %rcx, %r12
	sarq $3, %r12
end101288:
	movq $3, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then101289
	callq exit
	jmp end101290
then101289:
	movq %rcx, %r13
	sarq $3, %r13
end101290:
	movq %r12, %rcx
	addq %r13, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then101291
	callq exit
	jmp end101292
then101291:
	movq %rcx, %r12
	sarq $3, %r12
end101292:
	movq %r12, %rcx
	negq %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then101293
	callq exit
	jmp end101294
then101293:
	movq %rcx, %r12
	sarq $3, %r12
end101294:
	movq %rbx, %rbx
	addq %r12, %rbx
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
