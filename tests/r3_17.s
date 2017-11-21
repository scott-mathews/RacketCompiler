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
	addq $16, %r15
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq $0, %rdx
	movq $0, %rdi
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rbx
	addq $24, %rbx
	movq fromspace_end(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq %rax, %rbx
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then331303
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rbx
	jmp end331304
then331303:
	movq $0, %rbx
	movq %rbx, %rbx
end331304:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	addq $24, free_ptr(%rip)
	movq %rbx, %r11
	movq $5, 0(%r11)
	movq %rbx, %r11
	movq %rdx, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rbx, %r11
	movq %rdi, %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rbx, %rbx
	movq %rbx, %r11
	movq $38, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rbx, %r11
	movq $4, %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rbx, %r11
	movq 8(%r11), %rsi
	movq %rbx, %r11
	movq 16(%r11), %rcx
	movq %rsi, %rsi
	addq %rcx, %rsi
	movq %rsi, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $16, %r15
	addq $48, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
