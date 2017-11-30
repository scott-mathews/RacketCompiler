	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $216, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $24, %r15
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq $40, -72(%rbp)
	movq $2, -112(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -104(%rbp)
	addq $24, -104(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -144(%rbp)
	movq -104(%rbp), %rax
	cmpq %rax, -144(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -96(%rbp)
	cmpq $1, -96(%rbp)
	je then480498
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, -168(%rbp)
	jmp end480499
then480498:
	movq $0, -152(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -168(%rbp)
end480499:
	movq -168(%rbp), %rax
	movq %rax, -120(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -24(%r15)
	addq $24, free_ptr(%rip)
	movq -24(%r15), %r11
	movq $5, 0(%r11)
	movq -24(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq -112(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -56(%rbp)
	movq -16(%r15), %r11
	movq -72(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -128(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -80(%rbp)
	movq -16(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -136(%rbp)
	movq -8(%r15), %r11
	movq 16(%r11), %rax
	movq %rax, -64(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -64(%rbp), %rax
	addq %rax, -88(%rbp)
	movq -88(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $24, %r15
	addq $216, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
