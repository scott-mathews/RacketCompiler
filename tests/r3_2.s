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

	movq $20, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r12
	movq $22, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $24, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then103428
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
	jmp end103429
then103428:
	movq $0, %rcx
	movq %rcx, %rcx
end103429:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $5, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, %rbx
	movq %rbx, %r12
	andq $7, %r12
	cmpq $2, %r12
	je then103430
	callq exit
	jmp end103431
then103430:
	movq $7, %r12
	notq %r12
	andq %rbx, %r12
end103431:
	movq %r12, %r11
	movq 8(%r11), %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then103432
	callq exit
	jmp end103433
then103432:
	movq %rcx, %r12
	sarq $3, %r12
end103433:
	movq %rbx, %r13
	andq $7, %r13
	cmpq $2, %r13
	je then103434
	callq exit
	jmp end103435
then103434:
	movq $7, %r13
	notq %r13
	andq %rbx, %r13
end103435:
	movq %r13, %r11
	movq 16(%r11), %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then103436
	callq exit
	jmp end103437
then103436:
	movq %rcx, %rbx
	sarq $3, %rbx
end103437:
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
