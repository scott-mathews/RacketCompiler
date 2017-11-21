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

	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rbx
	addq $8, %rbx
	movq fromspace_end(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq %rax, %rbx
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then334150
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	movq $0, %rbx
	jmp end334151
then334150:
	movq $0, %rbx
	movq %rbx, %rbx
end334151:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	addq $8, free_ptr(%rip)
	movq %rbx, %r11
	movq $1, 0(%r11)
	movq %rbx, %rcx
	movq $42, %rsi
	movq %rcx, %rcx
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
	je then334152
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rbx
	jmp end334153
then334152:
	movq $0, %rbx
	movq %rbx, %rbx
end334153:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	addq $24, free_ptr(%rip)
	movq %rbx, %r11
	movq $133, 0(%r11)
	movq %rbx, %r11
	movq %rsi, %rax
	movq %rax, 8(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %rcx, %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rbx, %rbx
	movq %rbx, %r11
	movq 8(%r11), %rdx
	movq %rdx, %rax

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
