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

	movq $42, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then1854
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end1855
then1854:
	movq $0, %rcx
	movq %rcx, %rcx
end1855:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
	movq $21, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	addq $24, %rdx
	movq fromspace_end(%rip), %rax
	movq %rax, %rdx
	movq %rdx, %rax
	cmpq %rax, %rdx
	sete %al
	movzbq %al, %rax
	movq %rax, %rdx
	movq %rdx, %rax
	cmpq $1, %rax
	je then1856
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rdx
	jmp end1857
then1856:
	movq $0, %rdx
	movq %rdx, %rdx
end1857:
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $261, 0(%r11)
	movq %rdx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rdx, %r11
	movq %rcx, %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rdx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %r11
	movq 8(%r11), %rbx
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
