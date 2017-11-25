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

	movq $0, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then242260
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rdx
	jmp end242261
then242260:
	movq $0, %rcx
	movq %rcx, %rdx
end242261:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then242262
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rdx
	jmp end242263
then242262:
	movq $0, %rcx
	movq %rcx, %rdx
end242263:
	movq free_ptr(%rip), %rax
	movq %rax, %r12
	addq $16, free_ptr(%rip)
	movq %r12, %r11
	movq $131, 0(%r11)
	movq %r12, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq $42, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then242264
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rdx
	jmp end242265
then242264:
	movq $0, %rcx
	movq %rcx, %rdx
end242265:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %r12, %r11
	movq %rcx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %r12, %r11
	movq 8(%r11), %rbx
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %rax

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
