	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $272, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $56, %r15
	movq $0, -56(%r15)
	movq $0, -48(%r15)
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq $42, -184(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -176(%rbp)
	addq $16, -176(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -72(%rbp)
	movq -176(%rbp), %rax
	cmpq %rax, -72(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -56(%rbp)
	cmpq $1, -56(%rbp)
	je then478978
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -144(%rbp)
	jmp end478979
then478978:
	movq $0, -128(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -144(%rbp)
end478979:
	movq -144(%rbp), %rax
	movq %rax, -192(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -56(%r15)
	addq $16, free_ptr(%rip)
	movq -56(%r15), %r11
	movq $3, 0(%r11)
	movq -56(%r15), %rax
	movq %rax, -40(%r15)
	movq -40(%r15), %r11
	movq -184(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -136(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -208(%rbp)
	movq -40(%r15), %rax
	movq %rax, -8(%r15)
	movq $21, -88(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -96(%rbp)
	addq $24, -96(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -80(%rbp)
	movq -96(%rbp), %rax
	cmpq %rax, -80(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -152(%rbp)
	cmpq $1, -152(%rbp)
	je then478980
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, -48(%rbp)
	jmp end478981
then478980:
	movq $0, -224(%rbp)
	movq -224(%rbp), %rax
	movq %rax, -48(%rbp)
end478981:
	movq -48(%rbp), %rax
	movq %rax, -112(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -32(%r15)
	addq $24, free_ptr(%rip)
	movq -32(%r15), %r11
	movq $133, 0(%r11)
	movq -32(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq -88(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -216(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -120(%rbp)
	movq -16(%r15), %r11
	movq -8(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -200(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -104(%rbp)
	movq -16(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -48(%r15)
	movq -48(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -168(%rbp)
	movq -168(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $56, %r15
	addq $272, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
