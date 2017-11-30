	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $264, %rsp
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

	movq $0, -88(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -176(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -80(%rbp)
	addq $16, -80(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -56(%rbp)
	movq -80(%rbp), %rax
	cmpq %rax, -56(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -200(%rbp)
	cmpq $1, -200(%rbp)
	je then480630
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -112(%rbp)
	jmp end480631
then480630:
	movq $0, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -112(%rbp)
end480631:
	movq -112(%rbp), %rax
	movq %rax, -128(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -48(%r15)
	addq $16, free_ptr(%rip)
	movq -48(%r15), %r11
	movq $3, 0(%r11)
	movq -48(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq -88(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -184(%rbp)
	movq -16(%r15), %rax
	movq %rax, -8(%r15)
	movq $0, -96(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -192(%rbp)
	addq $16, -192(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -144(%rbp)
	movq -192(%rbp), %rax
	cmpq %rax, -144(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -208(%rbp)
	cmpq $1, -208(%rbp)
	je then480632
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -120(%rbp)
	jmp end480633
then480632:
	movq $0, -152(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -120(%rbp)
end480633:
	movq -120(%rbp), %rax
	movq %rax, -104(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -24(%r15)
	addq $16, free_ptr(%rip)
	movq -24(%r15), %r11
	movq $3, 0(%r11)
	movq -24(%r15), %rax
	movq %rax, -32(%r15)
	movq -32(%r15), %r11
	movq -96(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -168(%rbp)
	movq -32(%r15), %rax
	movq %rax, -40(%r15)
	movq -8(%r15), %rax
	cmpq %rax, -40(%r15)
	sete %al
	movzbq %al, %rax
	movq %rax, -216(%rbp)
	cmpq $1, -216(%rbp)
	je then480634
	movq $42, -136(%rbp)
	jmp end480635
then480634:
	movq $777, -136(%rbp)
end480635:
	movq -136(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $48, %r15
	addq $264, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
