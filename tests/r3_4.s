	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $48, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $56, %r15
	movq $0, -56(%r15)
	movq $0, -48(%r15)
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq $42, %rbx
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
	je then163987
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end163988
then163987:
	movq $0, %rcx
	movq %rcx, %rcx
end163988:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r12
	movq %r11, %rax
	movq %r12, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rax, %r11
	movq $21, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $24, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then163989
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
	jmp end163990
then163989:
	movq $0, %rcx
	movq %rcx, %rcx
end163990:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $261, 0(%r11)
	movq %rcx, %rdx
	movq %r11, %rax
	movq %rdx, %r11
	movq %r12, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rax, %r11
	movq %r11, %rax
	movq %rdx, %r11
	movq %rbx, %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rax, %r11
	movq %r11, %rax
	movq %rdx, %r11
	movq 8(%r11), %rbx
	movq %rax, %r11
	movq %r11, %rax
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rax, %r11
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $56, %r15
	addq $48, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
