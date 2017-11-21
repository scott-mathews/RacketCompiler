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
	movq $1, %r9
	movq $2, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then331446
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end331447
then331446:
	movq $0, %rsi
	movq %rsi, %rsi
end331447:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, %rdi
	addq $16, free_ptr(%rip)
	movq %rdi, %r11
	movq $3, 0(%r11)
	movq %rdi, %r11
	movq %rcx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdi, %rdi
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rcx
	addq $32, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then331448
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, %rcx
	jmp end331449
then331448:
	movq $0, %rcx
	movq %rcx, %rcx
end331449:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $32, free_ptr(%rip)
	movq %rcx, %r11
	movq $135, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r9, %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %rdi, %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rcx, %rcx
	movq %rcx, %r11
	movq 16(%r11), %r10
	movq %r10, %rax
	cmpq $1, %rax
	je then331450
	movq $44, %rbx
	jmp end331451
then331450:
	movq %rcx, %r11
	movq 8(%r11), %r8
	movq %rcx, %r11
	movq 24(%r11), %r12
	movq %r12, %r11
	movq 8(%r11), %rdx
	movq %r8, %rbx
	addq %rdx, %rbx
	movq %rbx, %rbx
end331451:
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
