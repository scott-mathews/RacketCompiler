	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $400, %rsp
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

	movq $0, -104(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -232(%rbp)
	movq -232(%rbp), %rax
	movq %rax, -96(%rbp)
	addq $16, -96(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -72(%rbp)
	movq -96(%rbp), %rax
	cmpq %rax, -72(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -352(%rbp)
	cmpq $1, -352(%rbp)
	je then480467
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -216(%rbp)
	jmp end480468
then480467:
	movq $0, -208(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -216(%rbp)
end480468:
	movq -216(%rbp), %rax
	movq %rax, -144(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -32(%r15)
	addq $16, free_ptr(%rip)
	movq -32(%r15), %r11
	movq $3, 0(%r11)
	movq -32(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq -104(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -336(%rbp)
	movq -336(%rbp), %rax
	movq %rax, -152(%rbp)
	movq -8(%r15), %rax
	movq %rax, -40(%r15)
	movq $1, -88(%rbp)
	movq $2, -56(%rbp)
	movq $3, -248(%rbp)
	movq $4, -80(%rbp)
	movq $5, -264(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -256(%rbp)
	addq $48, -256(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -240(%rbp)
	movq -256(%rbp), %rax
	cmpq %rax, -240(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -184(%rbp)
	cmpq $1, -184(%rbp)
	je then480469
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, -344(%rbp)
	jmp end480470
then480469:
	movq $0, -328(%rbp)
	movq -328(%rbp), %rax
	movq %rax, -344(%rbp)
end480470:
	movq -344(%rbp), %rax
	movq %rax, -288(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -24(%r15)
	addq $48, free_ptr(%rip)
	movq -24(%r15), %r11
	movq $11, 0(%r11)
	movq -24(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq -264(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -304(%rbp)
	movq -16(%r15), %r11
	movq -80(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, -136(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -272(%rbp)
	movq -16(%r15), %r11
	movq -248(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -320(%rbp)
	movq -16(%r15), %r11
	movq -56(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -128(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -280(%rbp)
	movq -16(%r15), %r11
	movq -88(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -168(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -312(%rbp)
	movq -16(%r15), %rax
	movq %rax, -48(%r15)
	callq read_int
	movq %rax, -64(%rbp)
	movq $0, %rax
	cmpq -64(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -296(%rbp)
	cmpq $1, -296(%rbp)
	je then480471
	movq -48(%r15), %r11
	movq $42, 8(%r11)
	movq $0, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -120(%rbp)
	jmp end480472
then480471:
	movq -40(%r15), %r11
	movq $42, 8(%r11)
	movq $0, -176(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -120(%rbp)
end480472:
	movq -120(%rbp), %rax
	movq %rax, -200(%rbp)
	movq -40(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -224(%rbp)
	movq -224(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $48, %r15
	addq $400, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
