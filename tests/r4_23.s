	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $200, %rsp
	addq $24, %r15
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, -112(%rbp)
	movq %rsi, -48(%rbp)
	movq $1, %rax
	cmpq -48(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -200(%rbp)
	cmpq $1, -200(%rbp)
	je then377364
	leaq function0(%rip), %rax
	movq %rax, -128(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -80(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -152(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -64(%rbp)
	addq $16, -64(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -96(%rbp)
	movq -64(%rbp), %rax
	cmpq %rax, -96(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -176(%rbp)
	cmpq $1, -176(%rbp)
	je then377366
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -136(%rbp)
	jmp end377367
then377366:
	movq $0, -184(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -136(%rbp)
end377367:
	movq -136(%rbp), %rax
	movq %rax, -144(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq -80(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -120(%rbp)
	movq -8(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -104(%rbp)
	movq $1, -72(%rbp)
	negq -72(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -160(%rbp)
	movq -72(%rbp), %rax
	addq %rax, -160(%rbp)
	movq -24(%r15), %rdi
	movq -160(%rbp), %rsi
	callq *-104(%rbp)
	movq %rax, -56(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -56(%rbp), %rax
	addq %rax, -88(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -168(%rbp)
	jmp end377365
then377364:
	movq $1, -168(%rbp)
end377365:
	movq -168(%rbp), %rax

	addq $200, %rsp
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
	subq $208, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $24, %r15
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	leaq function0(%rip), %rax
	movq %rax, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -128(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -104(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -112(%rbp)
	addq $16, -112(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -48(%rbp)
	movq -112(%rbp), %rax
	cmpq %rax, -48(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -152(%rbp)
	cmpq $1, -152(%rbp)
	je then377368
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -64(%rbp)
	jmp end377369
then377368:
	movq $0, -144(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -64(%rbp)
end377369:
	movq -64(%rbp), %rax
	movq %rax, -160(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $16, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $3, 0(%r11)
	movq -8(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq -128(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -136(%rbp)
	movq -16(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -88(%rbp)
	movq -24(%r15), %rdi
	movq $3, %rsi
	callq *-88(%rbp)
	movq %rax, -56(%rbp)
	movq $6, %rax
	cmpq -56(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -120(%rbp)
	cmpq $1, -120(%rbp)
	je then377370
	movq $777, -80(%rbp)
	jmp end377371
then377370:
	movq $42, -80(%rbp)
end377371:
	movq -80(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $24, %r15
	addq $208, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
