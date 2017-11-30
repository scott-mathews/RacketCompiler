	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $328, %rsp
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

	movq $40, -216(%rbp)
	movq $1, -152(%rbp)
	movq $2, -64(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -88(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -200(%rbp)
	addq $16, -200(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -232(%rbp)
	movq -200(%rbp), %rax
	cmpq %rax, -232(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -136(%rbp)
	cmpq $1, -136(%rbp)
	je then480680
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -280(%rbp)
	jmp end480681
then480680:
	movq $0, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -280(%rbp)
end480681:
	movq -280(%rbp), %rax
	movq %rax, -224(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -48(%r15)
	movq -48(%r15), %r11
	movq -64(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -208(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -120(%rbp)
	movq -48(%r15), %rax
	movq %rax, -24(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -56(%rbp)
	addq $32, -56(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -176(%rbp)
	movq -56(%rbp), %rax
	cmpq %rax, -176(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -272(%rbp)
	cmpq $1, -272(%rbp)
	je then480682
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, -144(%rbp)
	jmp end480683
then480682:
	movq $0, -256(%rbp)
	movq -256(%rbp), %rax
	movq %rax, -144(%rbp)
end480683:
	movq -144(%rbp), %rax
	movq %rax, -96(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -40(%r15)
	addq $32, free_ptr(%rip)
	movq -40(%r15), %r11
	movq $519, 0(%r11)
	movq -40(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq -24(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -240(%rbp)
	movq -8(%r15), %r11
	movq -152(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -80(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -192(%rbp)
	movq -8(%r15), %r11
	movq -216(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -248(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -104(%rbp)
	movq -8(%r15), %rax
	movq %rax, -32(%r15)
	movq -32(%r15), %r11
	movq 16(%r11), %rax
	movq %rax, -264(%rbp)
	cmpq $1, -264(%rbp)
	je then480684
	movq $44, -128(%rbp)
	jmp end480685
then480684:
	movq -32(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -48(%rbp)
	movq -32(%r15), %r11
	movq 24(%r11), %rax
	movq %rax, -56(%r15)
	movq -56(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -184(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -168(%rbp)
	movq -184(%rbp), %rax
	addq %rax, -168(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -128(%rbp)
end480685:
	movq -128(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $56, %r15
	addq $328, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
