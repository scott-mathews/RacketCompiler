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

	movq $14, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r12
	movq %r12, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then100443
	callq exit
	jmp end100444
then100443:
	movq %r12, %r13
	sarq $3, %r13
end100444:
	movq %r12, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100445
	callq exit
	jmp end100446
then100445:
	movq %r12, %rbx
	sarq $3, %rbx
end100446:
	movq %r13, %rcx
	addq %rbx, %rcx
	movq %rcx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then100447
	callq exit
	jmp end100448
then100447:
	movq %rbx, %r13
	sarq $3, %r13
end100448:
	movq %r12, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100449
	callq exit
	jmp end100450
then100449:
	movq %r12, %rbx
	sarq $3, %rbx
end100450:
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
