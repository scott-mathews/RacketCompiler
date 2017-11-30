	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $408, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $104, %r15
	movq $0, -104(%r15)
	movq $0, -96(%r15)
	movq $0, -88(%r15)
	movq $0, -80(%r15)
	movq $0, -72(%r15)
	movq $0, -64(%r15)
	movq $0, -56(%r15)
	movq $0, -48(%r15)
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq $777, -64(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -80(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -208(%rbp)
	addq $16, -208(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -248(%rbp)
	movq -208(%rbp), %rax
	cmpq %rax, -248(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -48(%rbp)
	cmpq $1, -48(%rbp)
	je then480784
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -56(%rbp)
	jmp end480785
then480784:
	movq $0, -128(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -56(%rbp)
end480785:
	movq -56(%rbp), %rax
	movq %rax, -192(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -104(%r15)
	addq $16, free_ptr(%rip)
	movq -104(%r15), %r11
	movq $3, 0(%r11)
	movq -104(%r15), %rax
	movq %rax, -88(%r15)
	movq -88(%r15), %r11
	movq -64(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -288(%rbp)
	movq -288(%rbp), %rax
	movq %rax, -344(%rbp)
	movq -88(%r15), %rax
	movq %rax, -32(%r15)
	movq $98, -216(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -88(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -224(%rbp)
	addq $24, -224(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -256(%rbp)
	movq -224(%rbp), %rax
	cmpq %rax, -256(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -136(%rbp)
	cmpq $1, -136(%rbp)
	je then480786
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, -200(%rbp)
	jmp end480787
then480786:
	movq $0, -144(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -200(%rbp)
end480787:
	movq -200(%rbp), %rax
	movq %rax, -320(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -48(%r15)
	addq $24, free_ptr(%rip)
	movq -48(%r15), %r11
	movq $133, 0(%r11)
	movq -48(%r15), %rax
	movq %rax, -72(%r15)
	movq -72(%r15), %r11
	movq -216(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -296(%rbp)
	movq -296(%rbp), %rax
	movq %rax, -360(%rbp)
	movq -72(%r15), %r11
	movq -32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -264(%rbp)
	movq -264(%rbp), %rax
	movq %rax, -176(%rbp)
	movq -72(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %rax
	movq %rax, -16(%r15)
	movq $99, -72(%rbp)
	movq $100, -240(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -232(%rbp)
	addq $32, -232(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -104(%rbp)
	movq -232(%rbp), %rax
	cmpq %rax, -104(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -152(%rbp)
	cmpq $1, -152(%rbp)
	je then480788
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, -272(%rbp)
	jmp end480789
then480788:
	movq $0, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -272(%rbp)
end480789:
	movq -272(%rbp), %rax
	movq %rax, -352(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -80(%r15)
	addq $32, free_ptr(%rip)
	movq -80(%r15), %r11
	movq $135, 0(%r11)
	movq -80(%r15), %rax
	movq %rax, -56(%r15)
	movq -56(%r15), %r11
	movq -240(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, -304(%rbp)
	movq -304(%rbp), %rax
	movq %rax, -120(%rbp)
	movq -56(%r15), %r11
	movq -72(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -328(%rbp)
	movq -328(%rbp), %rax
	movq %rax, -184(%rbp)
	movq -56(%r15), %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -168(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -280(%rbp)
	movq -56(%r15), %rax
	movq %rax, -96(%r15)
	movq -96(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -40(%r15)
	movq -40(%r15), %r11
	movq $42, 8(%r11)
	movq $0, -312(%rbp)
	movq -312(%rbp), %rax
	movq %rax, -336(%rbp)
	movq -8(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -64(%r15)
	movq -64(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -112(%rbp)
	movq -112(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $104, %r15
	addq $408, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
