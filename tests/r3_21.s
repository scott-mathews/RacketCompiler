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
	addq $8, %r15
	movq $0, -8(%r15)

	movq $40, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq $1, %rcx
	salq $3, %rcx
	orq $4, %rcx
	movq %rcx, %r12
	movq $2, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r13
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then106546
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end106547
then106546:
	movq $0, %rcx
	movq %rcx, %rcx
end106547:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r13, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rcx
	orq $2, %rcx
	movq %rcx, -8(%r15)
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $32, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then106548
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, %rcx
	jmp end106549
then106548:
	movq $0, %rcx
	movq %rcx, %rcx
end106549:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $32, free_ptr(%rip)
	movq %rcx, %r11
	movq $519, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq -8(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
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
	je then106550
	callq exit
	jmp end106551
then106550:
	movq $7, %rbx
	notq %rbx
	andq %r12, %rbx
end106551:
	movq %rbx, %r11
	movq 16(%r11), %rcx
	movq $0, %rbx
	salq $3, %rbx
	orq $4, %rbx
	cmpq %rcx, %rbx
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then106552
	movq %r12, %rbx
	andq $7, %rbx
	cmpq $2, %rbx
	je then106554
	callq exit
	jmp end106555
then106554:
	movq $7, %rbx
	notq %rbx
	andq %r12, %rbx
end106555:
	movq %rbx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then106556
	callq exit
	jmp end106557
then106556:
	movq %rcx, %rbx
	sarq $3, %rbx
end106557:
	movq %r12, %r13
	andq $7, %r13
	cmpq $2, %r13
	je then106558
	callq exit
	jmp end106559
then106558:
	movq $7, %r13
	notq %r13
	andq %r12, %r13
end106559:
	movq %r13, %r11
	movq 24(%r11), %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $2, %r12
	je then106560
	callq exit
	jmp end106561
then106560:
	movq $7, %r12
	notq %r12
	andq %rcx, %r12
end106561:
	movq %r12, %r11
	movq 8(%r11), %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then106562
	callq exit
	jmp end106563
then106562:
	movq %rcx, %r12
	sarq $3, %r12
end106563:
	movq %rbx, %rbx
	addq %r12, %rbx
	movq %rbx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	jmp end106553
then106552:
	movq $44, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
end106553:
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_any
	subq $8, %r15
	addq $88, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
