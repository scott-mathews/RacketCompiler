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
	addq $8, %r15
	movq $0, -8(%r15)

	movq $0, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then231743
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end231744
then231743:
	movq $0, %rcx
	movq %rcx, %rcx
end231744:
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
	movq %rcx, -8(%r15)
	movq $1, %r13
	movq $2, %r12
	movq $3, -48(%rbp)
	movq $4, %rbx
	movq $5, %r14
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $48, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then231745
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end231746
then231745:
	movq $0, %rcx
	movq %rcx, %rcx
end231746:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r14, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 32(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -48(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r13, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	callq read_int
	movq %rax, %rcx
	cmpq $0, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then231747
	movq %rbx, %r11
	movq $42, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	jmp end231748
then231747:
	movq -8(%r15), %r11
	movq $42, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
end231748:
	movq %rbx, %rbx
	movq -8(%r15), %r11
	movq 8(%r11), %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $8, %r15
	addq $96, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
