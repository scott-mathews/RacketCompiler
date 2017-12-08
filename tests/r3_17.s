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

	movq $0, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq $0, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $24, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then106335
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
	jmp end106336
then106335:
	movq $0, %rcx
	movq %rcx, %rcx
end106336:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $5, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, %r12
	movq %r12, %rbx
	andq $7, %rbx
	cmpq $2, %rbx
	je then106337
	callq exit
	jmp end106338
then106337:
	movq $7, %rbx
	notq %rbx
	andq %r12, %rbx
end106338:
	movq $38, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rbx, %r11
	movq %rcx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %r12, %rbx
	andq $7, %rbx
	cmpq $2, %rbx
	je then106339
	callq exit
	jmp end106340
then106339:
	movq $7, %rbx
	notq %rbx
	andq %r12, %rbx
end106340:
	movq $4, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rbx, %r11
	movq %rcx, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %r12, %rbx
	andq $7, %rbx
	cmpq $2, %rbx
	je then106341
	callq exit
	jmp end106342
then106341:
	movq $7, %rbx
	notq %rbx
	andq %r12, %rbx
end106342:
	movq %rbx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then106343
	callq exit
	jmp end106344
then106343:
	movq %rcx, %rbx
	sarq $3, %rbx
end106344:
	movq %r12, %r13
	andq $7, %r13
	cmpq $2, %r13
	je then106345
	callq exit
	jmp end106346
then106345:
	movq $7, %r13
	notq %r13
	andq %r12, %r13
end106346:
	movq %r13, %r11
	movq 16(%r11), %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then106347
	callq exit
	jmp end106348
then106347:
	movq %rcx, %r12
	sarq $3, %r12
end106348:
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
