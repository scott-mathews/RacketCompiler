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
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then75338
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end75339
then75338:
	movq $0, %rcx
	movq %rcx, %rcx
end75339:
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
	movq %rcx, -24(%r15)
	movq -24(%r15), %rax
	movq %rax, -8(%r15)
	movq -24(%r15), %rax
	movq %rax, -16(%r15)
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rbx
	movq %rbx, %rbx
	addq $24, %rbx
	cmpq %rcx, %rbx
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then75340
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rbx
	jmp end75341
then75340:
	movq $0, %rbx
	movq %rbx, %rbx
end75341:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $24, free_ptr(%rip)
	movq %rbx, %r11
	movq $389, 0(%r11)
	movq %rbx, %rbx
	movq %rbx, %r11
	movq -16(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rcx, %rcx
	movq %rbx, %r11
	movq -8(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rcx, %rcx
	movq %rbx, %rbx
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %r11
	movq $42, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq -24(%r15), %r11
	movq 8(%r11), %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $24, %r15
	addq $88, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
