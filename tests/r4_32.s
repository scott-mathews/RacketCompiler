	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $232, %rsp
	addq $40, %r15
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, -168(%rbp)
	movq $0, %rax
	cmpq -168(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -216(%rbp)
	cmpq $1, -216(%rbp)
	je then483607
	leaq function0(%rip), %rax
	movq %rax, -120(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -160(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -152(%rbp)
	addq $16, -152(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -200(%rbp)
	movq -152(%rbp), %rax
	cmpq %rax, -200(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -88(%rbp)
	cmpq $1, -88(%rbp)
	je then483609
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -232(%rbp)
	jmp end483610
then483609:
	movq $0, -144(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -232(%rbp)
end483610:
	movq -232(%rbp), %rax
	movq %rax, -184(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq -160(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -136(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -72(%rbp)
	movq -24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -80(%rbp)
	movq $1, -48(%rbp)
	negq -48(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -192(%rbp)
	movq -48(%rbp), %rax
	addq %rax, -192(%rbp)
	movq -192(%rbp), %rdi
	callq *-120(%rbp)
	movq %rax, -8(%r15)
	movq -8(%r15), %rax
	movq %rax, -104(%rbp)
	jmp end483608
then483607:
	movq free_ptr(%rip), %rax
	movq %rax, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -128(%rbp)
	addq $8, -128(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -56(%rbp)
	movq -128(%rbp), %rax
	cmpq %rax, -56(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -224(%rbp)
	cmpq $1, -224(%rbp)
	je then483611
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	movq $0, -96(%rbp)
	jmp end483612
then483611:
	movq $0, -208(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -96(%rbp)
end483612:
	movq -96(%rbp), %rax
	movq %rax, -176(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -32(%r15)
	addq $8, free_ptr(%rip)
	movq -32(%r15), %r11
	movq $1, 0(%r11)
	movq -32(%r15), %rax
	movq %rax, -40(%r15)
	movq -40(%r15), %rax
	movq %rax, -104(%rbp)
end483608:
	movq -104(%rbp), %rax

	addq $232, %rsp
	subq $40, %r15
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq

	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $224, %rsp
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

	leaq function0(%rip), %rax
	movq %rax, -104(%rbp)
	movq $1, %rdi
	callq *-104(%rbp)
	movq %rax, -32(%r15)
	movq -32(%r15), %rax
	movq %rax, -8(%r15)
	leaq function0(%rip), %rax
	movq %rax, -176(%rbp)
	movq $2, %rdi
	callq *-176(%rbp)
	movq %rax, -24(%r15)
	movq -24(%r15), %rax
	movq %rax, -48(%r15)
	movq $42, -120(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -56(%rbp)
	addq $32, -56(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -80(%rbp)
	movq -56(%rbp), %rax
	cmpq %rax, -80(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -168(%rbp)
	cmpq $1, -168(%rbp)
	je then483613
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, -96(%rbp)
	jmp end483614
then483613:
	movq $0, -128(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -96(%rbp)
end483614:
	movq -96(%rbp), %rax
	movq %rax, -152(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -40(%r15)
	addq $32, free_ptr(%rip)
	movq -40(%r15), %r11
	movq $391, 0(%r11)
	movq -40(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq -120(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -136(%rbp)
	movq -16(%r15), %r11
	movq -48(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -112(%rbp)
	movq -16(%r15), %r11
	movq -8(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -144(%rbp)
	movq -16(%r15), %r11
	movq 24(%r11), %rax
	movq %rax, -88(%rbp)
	movq -88(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $48, %r15
	addq $224, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
