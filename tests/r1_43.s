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
	orq $1, %rbx
	movq %rbx, %rcx
	movq $46, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r14
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then101392
	callq exit
	jmp end101393
then101392:
	movq %rcx, %rbx
	sarq $3, %rbx
end101393:
	movq $7, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then101394
	callq exit
	jmp end101395
then101394:
	movq %rcx, %r12
	sarq $3, %r12
end101395:
	movq %rbx, %rbx
	addq %r12, %rbx
	movq %rbx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r12
	movq $4, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then101396
	callq exit
	jmp end101397
then101396:
	movq %rcx, %rbx
	sarq $3, %rbx
end101397:
	movq %r12, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then101398
	callq exit
	jmp end101399
then101398:
	movq %r12, %r13
	sarq $3, %r13
end101399:
	movq %rbx, %rbx
	addq %r13, %rbx
	movq %rbx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq %r12, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then101400
	callq exit
	jmp end101401
then101400:
	movq %r12, %r13
	sarq $3, %r13
end101401:
	movq %r14, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then101402
	callq exit
	jmp end101403
then101402:
	movq %r14, %r12
	sarq $3, %r12
end101403:
	movq %r13, %rcx
	addq %r12, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then101404
	callq exit
	jmp end101405
then101404:
	movq %rcx, %r12
	sarq $3, %r12
end101405:
	movq %rbx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then101406
	callq exit
	jmp end101407
then101406:
	movq %rbx, %r13
	sarq $3, %r13
end101407:
	movq %r13, %rbx
	negq %rbx
	movq %rbx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then101408
	callq exit
	jmp end101409
then101408:
	movq %rcx, %rbx
	sarq $3, %rbx
end101409:
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
