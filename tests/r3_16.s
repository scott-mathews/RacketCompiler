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

	movq $40, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq $2, %rcx
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
	je then106283
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
	jmp end106284
then106283:
	movq $0, %rcx
	movq %rcx, %rcx
end106284:
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
	je then106285
	callq exit
	jmp end106286
then106285:
	movq $7, %rbx
	notq %rbx
	andq %r12, %rbx
end106286:
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then106287
	callq exit
	jmp end106288
then106287:
	movq %rbx, %r13
	sarq $3, %r13
end106288:
	movq %r12, %rbx
	andq $7, %rbx
	cmpq $2, %rbx
	je then106289
	callq exit
	jmp end106290
then106289:
	movq $7, %rbx
	notq %rbx
	andq %r12, %rbx
end106290:
	movq %rbx, %r11
	movq 16(%r11), %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then106291
	callq exit
	jmp end106292
then106291:
	movq %rcx, %rbx
	sarq $3, %rbx
end106292:
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
