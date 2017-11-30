	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $96, %rsp
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

	movq $4, %r13
	movq $2, %rbx
	movq $6, %r12
	movq $1, -48(%rbp)
	movq $42, %r14
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $24, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then231264
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
	jmp end231265
then231264:
	movq $0, %rcx
	movq %rcx, %rcx
end231265:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $5, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r14, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -48(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -40(%r15)
	movq $3, %r14
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then231266
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end231267
then231266:
	movq $0, %rcx
	movq %rcx, %rcx
end231267:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r14, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -24(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $24, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then231268
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
	jmp end231269
then231268:
	movq $0, %rcx
	movq %rcx, %rcx
end231269:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $389, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq -24(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -40(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -8(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $24, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then231270
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
	jmp end231271
then231270:
	movq $0, %rcx
	movq %rcx, %rcx
end231271:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $261, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq -8(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -32(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $24, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then231272
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
	jmp end231273
then231272:
	movq $0, %rcx
	movq %rcx, %rcx
end231273:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $261, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq -32(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -16(%r15)
	movq free_ptr(%rip), %rbx
	movq %rbx, %rcx
	addq $24, %rcx
	movq fromspace_end(%rip), %rbx
	cmpq %rcx, %rbx
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then231274
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rbx
	jmp end231275
then231274:
	movq $0, %rbx
	movq %rbx, %rbx
end231275:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $24, free_ptr(%rip)
	movq %rbx, %r11
	movq $261, 0(%r11)
	movq %rbx, %rbx
	movq %rbx, %r11
	movq -16(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rcx, %rcx
	movq %rbx, %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq %rcx, %rcx
	movq %rbx, %rbx
	movq %rbx, %r11
	movq 16(%r11), %rbx
	movq %rbx, %r11
	movq 16(%r11), %rbx
	movq %rbx, %r11
	movq 16(%r11), %rbx
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %r11
	movq 16(%r11), %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $40, %r15
	addq $96, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
