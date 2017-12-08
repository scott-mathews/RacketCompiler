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
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $16, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then103737
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end103738
then103737:
	movq $0, %rcx
	movq %rcx, %rcx
end103738:
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
	movq %rbx, %r12
	movq %r12, %rbx
	andq $7, %rbx
	cmpq $2, %rbx
	je then103739
	callq exit
	jmp end103740
then103739:
	movq $7, %rbx
	notq %rbx
	andq %r12, %rbx
end103740:
	movq $0, %rcx
	salq $3, %rcx
	orq $4, %rcx
	movq %rbx, %r11
	movq %rcx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %r12, %rbx
	andq $7, %rbx
	cmpq $2, %rbx
	je then103741
	callq exit
	jmp end103742
then103741:
	movq $7, %rbx
	notq %rbx
	andq %r12, %rbx
end103742:
	movq %rbx, %r11
	movq 8(%r11), %rbx
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
