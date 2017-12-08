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
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then106425
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end106426
then106425:
	movq $0, %rcx
	movq %rcx, %rcx
end106426:
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
	movq %rbx, %rbx
	cmpq %rbx, %rbx
	sete %al
	movzbq %al, %rbx
	movq %rbx, %rbx
	salq $3, %rbx
	orq $4, %rbx
	movq $0, %rcx
	salq $3, %rcx
	orq $4, %rcx
	cmpq %rbx, %rcx
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then106430
	movq $42, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	jmp end106431
then106430:
	movq $777, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
end106431:
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
