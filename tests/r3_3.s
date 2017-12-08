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
	addq $0, %r15

	movq $20, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r12
	movq $1, %rbx
	salq $3, %rbx
	orq $4, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $24, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then103472
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
	jmp end103473
then103472:
	movq $0, %rcx
	movq %rcx, %rcx
end103473:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $5, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, %r13
	movq %r13, %rbx
	andq $7, %rbx
	cmpq $2, %rbx
	je then103474
	callq exit
	jmp end103475
then103474:
	movq $7, %rbx
	notq %rbx
	andq %r13, %rbx
end103475:
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then103476
	callq exit
	jmp end103477
then103476:
	movq %rbx, %r12
	sarq $3, %r12
end103477:
	movq %r13, %rbx
	andq $7, %rbx
	cmpq $2, %rbx
	je then103478
	callq exit
	jmp end103479
then103478:
	movq $7, %rbx
	notq %rbx
	andq %r13, %rbx
end103479:
	movq %rbx, %r11
	movq 16(%r11), %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then103480
	callq exit
	jmp end103481
then103480:
	movq %rcx, %rbx
	sarq $3, %rbx
end103481:
	movq %r12, %rcx
	addq %rbx, %rcx
	movq %rcx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_any
	subq $0, %r15
	addq $88, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
