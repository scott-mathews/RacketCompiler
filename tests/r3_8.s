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
	addq $8, %r15
	movq $0, -8(%r15)

	movq $0, %rbx
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $16, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then38001
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end38002
then38001:
	movq $0, %rcx
	movq %rcx, %rcx
end38002:
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
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rbx
	movq %rbx, %rbx
	addq $16, %rbx
	cmpq %rcx, %rbx
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then38003
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
	jmp end38004
then38003:
	movq $0, %rbx
	movq %rbx, %rbx
end38004:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $131, 0(%r11)
	movq %rbx, %rbx
	movq %rbx, %r11
	movq -8(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rcx, %rcx
	movq %rbx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %r11
	movq $42, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $8, %r15
	addq $88, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
