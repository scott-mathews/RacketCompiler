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

	movq $40, %rbx
	movq $1, %r12
	movq $2, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then34085
	movq $0, %rcx
	jmp end34086
then34085:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end34086:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r13, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -8(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $32, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then34087
	movq $0, %rcx
	jmp end34088
then34087:
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, %rcx
end34088:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $32, free_ptr(%rip)
	movq %rcx, %r11
	movq $519, 0(%r11)
	movq %rcx, %r11
	movq -8(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	movq %rbx, %r11
	movq 16(%r11), %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then34089
	movq %rbx, %r11
	movq 8(%r11), %rcx
	movq %rbx, %r11
	movq 24(%r11), %rbx
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rcx, %rcx
	addq %rbx, %rcx
	movq %rcx, %rbx
	jmp end34090
then34089:
	movq $44, %rbx
end34090:
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
