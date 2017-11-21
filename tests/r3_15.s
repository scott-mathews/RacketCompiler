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
	addq $32, %r15
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq $0, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rbx
	addq $16, %rbx
	movq fromspace_end(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq %rax, %rbx
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then331247
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
	jmp end331248
then331247:
	movq $0, %rbx
	movq %rbx, %rbx
end331248:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $3, 0(%r11)
	movq %rbx, %r11
	movq %rcx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rbx, %rbx
	movq $1, %rsi
	movq $2, %r8
	movq $3, %rdi
	movq $4, %r9
	movq $5, %rdx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then331249
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end331250
then331249:
	movq $0, %rcx
	movq %rcx, %rcx
end331250:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %r12
	addq $48, free_ptr(%rip)
	movq %r12, %r11
	movq $11, 0(%r11)
	movq %r12, %r11
	movq %rsi, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %r12, %r11
	movq %r8, %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %r12, %r11
	movq %rdi, %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %r12, %r11
	movq %r9, %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %r12, %r11
	movq %rdx, %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %r12, %r12
	callq read_int
	movq %rax, %rcx
	movq $0, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then331251
	movq %r12, %r11
	movq $42, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rcx, %rcx
	jmp end331252
then331251:
	movq %rbx, %r11
	movq $42, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rcx, %rcx
end331252:
	movq %rcx, %rcx
	movq %rbx, %r11
	movq 8(%r11), %r13
	movq %r13, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $32, %r15
	addq $48, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
