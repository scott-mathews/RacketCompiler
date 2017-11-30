	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $184, %rsp
	addq $24, %r15
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, -152(%rbp)
	movq %rsi, -8(%r15)
	movq $100, %rax
	cmpq -152(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -56(%rbp)
	cmpq $1, -56(%rbp)
	je then483466
	leaq function0(%rip), %rax
	movq %rax, -120(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -136(%rbp)
	addq $1, -136(%rbp)
	movq -8(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -176(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -88(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -104(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -160(%rbp)
	addq $16, -160(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -144(%rbp)
	movq -160(%rbp), %rax
	cmpq %rax, -144(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -64(%rbp)
	cmpq $1, -64(%rbp)
	je then483468
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -112(%rbp)
	jmp end483469
then483468:
	movq $0, -80(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -112(%rbp)
end483469:
	movq -112(%rbp), %rax
	movq %rax, -128(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq -88(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -168(%rbp)
	movq -136(%rbp), %rdi
	movq -24(%r15), %rsi
	callq *-120(%rbp)
	movq %rax, -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -48(%rbp)
	jmp end483467
then483466:
	movq -8(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -184(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -48(%rbp)
end483467:
	movq -48(%rbp), %rax

	addq $184, %rsp
	subq $24, %r15
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
	subq $184, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $16, %r15
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	leaq function0(%rip), %rax
	movq %rax, -56(%rbp)
	movq $42, -88(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -120(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -72(%rbp)
	addq $16, -72(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -96(%rbp)
	movq -72(%rbp), %rax
	cmpq %rax, -96(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -104(%rbp)
	cmpq $1, -104(%rbp)
	je then483470
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -48(%rbp)
	jmp end483471
then483470:
	movq $0, -136(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -48(%rbp)
end483471:
	movq -48(%rbp), %rax
	movq %rax, -80(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $16, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $3, 0(%r11)
	movq -8(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq -88(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -64(%rbp)
	movq $0, %rdi
	movq -16(%r15), %rsi
	callq *-56(%rbp)
	movq %rax, -128(%rbp)
	movq -128(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $16, %r15
	addq $184, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
