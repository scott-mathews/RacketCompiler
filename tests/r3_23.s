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
	addq $24, %r15
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq $777, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $16, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then106686
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end106687
then106686:
	movq $0, %rcx
	movq %rcx, %rcx
end106687:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, -8(%r15)
	movq $98, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $24, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then106688
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
	jmp end106689
then106688:
	movq $0, %rcx
	movq %rcx, %rcx
end106689:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $133, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -8(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, -16(%r15)
	movq -16(%r15), %rbx
	andq $7, %rbx
	cmpq $2, %rbx
	je then106690
	callq exit
	jmp end106691
then106690:
	movq $7, %rbx
	notq %rbx
	andq -16(%r15), %rbx
end106691:
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rbx, -24(%r15)
	movq $99, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r12
	movq $100, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $32, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then106692
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, %rcx
	jmp end106693
then106692:
	movq $0, %rcx
	movq %rcx, %rcx
end106693:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $32, free_ptr(%rip)
	movq %rcx, %r11
	movq $135, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 24(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -24(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $2, %rbx
	je then106694
	callq exit
	jmp end106695
then106694:
	movq $7, %rbx
	notq %rbx
	andq %rcx, %rbx
end106695:
	movq %rbx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $2, %rbx
	je then106696
	callq exit
	jmp end106697
then106696:
	movq $7, %rbx
	notq %rbx
	andq %rcx, %rbx
end106697:
	movq $42, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rbx, %r11
	movq %rcx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq -16(%r15), %rbx
	andq $7, %rbx
	cmpq $2, %rbx
	je then106698
	callq exit
	jmp end106699
then106698:
	movq $7, %rbx
	notq %rbx
	andq -16(%r15), %rbx
end106699:
	movq %rbx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $2, %rbx
	je then106700
	callq exit
	jmp end106701
then106700:
	movq $7, %rbx
	notq %rbx
	andq %rcx, %rbx
end106701:
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_any
	subq $24, %r15
	addq $88, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
