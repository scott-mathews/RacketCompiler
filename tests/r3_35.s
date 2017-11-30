	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $280, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $72, %r15
	movq $0, -72(%r15)
	movq $0, -64(%r15)
	movq $0, -56(%r15)
	movq $0, -48(%r15)
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq $777, -136(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -152(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -144(%rbp)
	addq $16, -144(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -56(%rbp)
	movq -144(%rbp), %rax
	cmpq %rax, -56(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -96(%rbp)
	cmpq $1, -96(%rbp)
	je then482784
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -192(%rbp)
	jmp end482785
then482784:
	movq $0, -88(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -192(%rbp)
end482785:
	movq -192(%rbp), %rax
	movq %rax, -176(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -64(%r15)
	addq $16, free_ptr(%rip)
	movq -64(%r15), %r11
	movq $3, 0(%r11)
	movq -64(%r15), %rax
	movq %rax, -40(%r15)
	movq -40(%r15), %r11
	movq -136(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -216(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -80(%rbp)
	movq -40(%r15), %rax
	movq %rax, -56(%r15)
	movq -56(%r15), %rax
	movq %rax, -24(%r15)
	movq -56(%r15), %rax
	movq %rax, -8(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -160(%rbp)
	addq $24, -160(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -128(%rbp)
	movq -160(%rbp), %rax
	cmpq %rax, -128(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -120(%rbp)
	cmpq $1, -120(%rbp)
	je then482786
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, -48(%rbp)
	jmp end482787
then482786:
	movq $0, -232(%rbp)
	movq -232(%rbp), %rax
	movq %rax, -48(%rbp)
end482787:
	movq -48(%rbp), %rax
	movq %rax, -184(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -32(%r15)
	addq $24, free_ptr(%rip)
	movq -32(%r15), %r11
	movq $389, 0(%r11)
	movq -32(%r15), %rax
	movq %rax, -48(%r15)
	movq -48(%r15), %r11
	movq -8(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -224(%rbp)
	movq -48(%r15), %r11
	movq -24(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -200(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -72(%rbp)
	movq -48(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -72(%r15)
	movq -72(%r15), %r11
	movq $42, 8(%r11)
	movq $0, -104(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -208(%rbp)
	movq -56(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -168(%rbp)
	movq -168(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $72, %r15
	addq $280, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
