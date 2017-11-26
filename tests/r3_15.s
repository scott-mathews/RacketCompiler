	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $64, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $24, %r15
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq $0, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then248832
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end248833
then248832:
	movq $0, %rcx
	movq %rcx, %rcx
end248833:
	movq free_ptr(%rip), %rax
	movq %rax, %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq $1, %r12
	movq $2, %r14
	movq $3, -56(%rbp)
	movq $4, %rbx
	movq $5, -48(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then248834
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end248835
then248834:
	movq $0, %rcx
	movq %rcx, %rcx
end248835:
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $11, 0(%r11)
	movq %rdx, %r11
	movq %r12, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -56(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -48(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	callq read_int
	movq %rax, %rcx
	movq $0, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then248836
	movq %rbx, %r11
	movq $42, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	jmp end248837
then248836:
	movq %r13, %r11
	movq $42, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
end248837:
	movq %r13, %r11
	movq 8(%r11), %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $24, %r15
	addq $64, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
