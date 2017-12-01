	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $192, %rsp
	addq $24, %r15
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, -80(%rbp)
	movq %rsi, -168(%rbp)
	movq $0, %rax
	cmpq -168(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -192(%rbp)
	cmpq $1, -192(%rbp)
	je then377570
	leaq function1(%rip), %rax
	movq %rax, -136(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -184(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -160(%rbp)
	addq $16, -160(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -152(%rbp)
	movq -160(%rbp), %rax
	cmpq %rax, -152(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -88(%rbp)
	cmpq $1, -88(%rbp)
	je then377572
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -56(%rbp)
	jmp end377573
then377572:
	movq $0, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -56(%rbp)
end377573:
	movq -56(%rbp), %rax
	movq %rax, -128(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq -184(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -144(%rbp)
	movq -8(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -120(%rbp)
	movq $1, -64(%rbp)
	negq -64(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -176(%rbp)
	movq -64(%rbp), %rax
	addq %rax, -176(%rbp)
	movq -24(%r15), %rdi
	movq -176(%rbp), %rsi
	callq *-120(%rbp)
	movq %rax, -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -104(%rbp)
	jmp end377571
then377570:
	movq $0, -104(%rbp)
end377571:
	movq -104(%rbp), %rax

	addq $192, %rsp
	subq $24, %r15
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq

	.globl function1
function1:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $192, %rsp
	addq $24, %r15
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, -104(%rbp)
	movq %rsi, -96(%rbp)
	movq $0, %rax
	cmpq -96(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -120(%rbp)
	cmpq $1, -120(%rbp)
	je then377574
	leaq function0(%rip), %rax
	movq %rax, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -64(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -72(%rbp)
	addq $16, -72(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -80(%rbp)
	movq -72(%rbp), %rax
	cmpq %rax, -80(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -128(%rbp)
	cmpq $1, -128(%rbp)
	je then377576
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -192(%rbp)
	jmp end377577
then377576:
	movq $0, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -192(%rbp)
end377577:
	movq -192(%rbp), %rax
	movq %rax, -136(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq -64(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -152(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -48(%rbp)
	movq -24(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -144(%rbp)
	movq $1, -88(%rbp)
	negq -88(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -168(%rbp)
	movq -88(%rbp), %rax
	addq %rax, -168(%rbp)
	movq -8(%r15), %rdi
	movq -168(%rbp), %rsi
	callq *-144(%rbp)
	movq %rax, -176(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -184(%rbp)
	jmp end377575
then377574:
	movq $1, -184(%rbp)
end377575:
	movq -184(%rbp), %rax

	addq $192, %rsp
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
	subq $200, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $24, %r15
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	leaq function1(%rip), %rax
	movq %rax, -80(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -144(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -104(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -136(%rbp)
	addq $16, -136(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -152(%rbp)
	movq -136(%rbp), %rax
	cmpq %rax, -152(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -48(%rbp)
	cmpq $1, -48(%rbp)
	je then377578
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -120(%rbp)
	jmp end377579
then377578:
	movq $0, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -120(%rbp)
end377579:
	movq -120(%rbp), %rax
	movq %rax, -96(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -24(%r15)
	addq $16, free_ptr(%rip)
	movq -24(%r15), %r11
	movq $3, 0(%r11)
	movq -24(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq -144(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -128(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -8(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -64(%rbp)
	movq -16(%r15), %rdi
	movq $2, %rsi
	callq *-64(%rbp)
	movq %rax, -56(%rbp)
	cmpq $1, -56(%rbp)
	je then377580
	movq $0, -112(%rbp)
	jmp end377581
then377580:
	movq $42, -112(%rbp)
end377581:
	movq -112(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $24, %r15
	addq $200, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
