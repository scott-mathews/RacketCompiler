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
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	setle %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then20418
	movq $0, %rcx
	jmp end20419
then20418:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end20419:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -8(%r15)
	movq -8(%r15), %rax
	movq %rax, -16(%r15)
	movq -8(%r15), %rax
	movq %rax, -24(%r15)
	movq free_ptr(%rip), %rbx
	addq $24, %rbx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rbx
	setle %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then20420
	movq $0, %rbx
	jmp end20421
then20420:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rbx
end20421:
	movq free_ptr(%rip), %rbx
	addq $24, free_ptr(%rip)
	movq %rbx, %r11
	movq $389, 0(%r11)
	movq %rbx, %r11
	movq -24(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %r11
	movq $42, 8(%r11)
	movq $0, %rbx
	movq -8(%r15), %r11
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
