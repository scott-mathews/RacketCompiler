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
	addq $40, %r15
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq $40, %rbx
	movq $1, %rcx
	movq $2, %rdi
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	movq %rdx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rax
	movq %rax, %rdx
	movq %rdx, %rax
	cmpq %rax, %rdx
	sete %al
	movzbq %al, %rax
	movq %rax, %rdx
	movq %rdx, %rax
	cmpq $1, %rax
	je then451615
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rdx
	jmp end451616
then451615:
	movq $0, %rdx
	movq %rdx, %rdx
end451616:
	movq %rdx, %rdx
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rdi, %rax
	movq %rax, 8(%r11)
	movq $0, %rsi
	movq %rdx, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	movq %rdx, %rdx
	addq $32, %rdx
	movq fromspace_end(%rip), %rax
	movq %rax, %rdx
	movq %rdx, %rax
	cmpq %rax, %rdx
	sete %al
	movzbq %al, %rax
	movq %rax, %rdx
	movq %rdx, %rax
	cmpq $1, %rax
	je then451617
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, %rdx
	jmp end451618
then451617:
	movq $0, %rdx
	movq %rdx, %rdx
end451618:
	movq %rdx, %rdx
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	addq $32, free_ptr(%rip)
	movq %rdx, %r11
	movq $135, 0(%r11)
	movq %rdx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rdx, %r11
	movq %rcx, %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rdx, %r11
	movq %rsi, %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rdx, %rdx
	movq %rdx, %r11
	movq 16(%r11), %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then451619
	movq $44, %rbx
	jmp end451620
then451619:
	movq %rdx, %r11
	movq 8(%r11), %rbx
	movq %rdx, %r11
	movq 24(%r11), %rcx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq %rbx, %rbx
	addq %rcx, %rbx
	movq %rbx, %rbx
end451620:
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $40, %r15
	addq $48, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
