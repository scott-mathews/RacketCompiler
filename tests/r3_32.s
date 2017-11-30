	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $248, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $48, %r15
	movq $0, -48(%r15)
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq $42, -192(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -184(%rbp)
	addq $16, -184(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -160(%rbp)
	movq -184(%rbp), %rax
	cmpq %rax, -160(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -96(%rbp)
	cmpq $1, -96(%rbp)
	je then482565
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -152(%rbp)
	jmp end482566
then482565:
	movq $0, -136(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -152(%rbp)
end482566:
	movq -152(%rbp), %rax
	movq %rax, -56(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -40(%r15)
	addq $16, free_ptr(%rip)
	movq -40(%r15), %r11
	movq $3, 0(%r11)
	movq -40(%r15), %rax
	movq %rax, -48(%r15)
	movq -48(%r15), %r11
	movq -192(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -128(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -72(%rbp)
	movq -48(%r15), %rax
	movq %rax, -32(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -104(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -176(%rbp)
	addq $16, -176(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -200(%rbp)
	movq -176(%rbp), %rax
	cmpq %rax, -200(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -88(%rbp)
	cmpq $1, -88(%rbp)
	je then482567
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -144(%rbp)
	jmp end482568
then482567:
	movq $0, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -144(%rbp)
end482568:
	movq -144(%rbp), %rax
	movq %rax, -80(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -24(%r15)
	addq $16, free_ptr(%rip)
	movq -24(%r15), %r11
	movq $131, 0(%r11)
	movq -24(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq -32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -120(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -48(%rbp)
	movq -8(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -168(%rbp)
	movq -168(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $48, %r15
	addq $248, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
