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

	movq %rdi, -96(%rbp)
	movq %rsi, -184(%rbp)
	movq $0, %rax
	cmpq -184(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -144(%rbp)
	cmpq $1, -144(%rbp)
	je then376586
	leaq function1(%rip), %rax
	movq %rax, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -72(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -120(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -168(%rbp)
	addq $16, -168(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -128(%rbp)
	movq -168(%rbp), %rax
	cmpq %rax, -128(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -64(%rbp)
	cmpq $1, -64(%rbp)
	je then376588
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -152(%rbp)
	jmp end376589
then376588:
	movq $0, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -152(%rbp)
end376589:
	movq -152(%rbp), %rax
	movq %rax, -160(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq -72(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -104(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -176(%rbp)
	movq -8(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -192(%rbp)
	movq $1, -56(%rbp)
	negq -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -136(%rbp)
	movq -184(%rbp), %rax
	addq %rax, -136(%rbp)
	movq -24(%r15), %rdi
	movq -136(%rbp), %rsi
	callq *-192(%rbp)
	movq %rax, -88(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -80(%rbp)
	jmp end376587
then376586:
	movq $0, -80(%rbp)
end376587:
	movq -80(%rbp), %rax

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

	movq %rdi, -72(%rbp)
	movq %rsi, -120(%rbp)
	movq $0, %rax
	cmpq -120(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -168(%rbp)
	cmpq $1, -168(%rbp)
	je then376590
	leaq function0(%rip), %rax
	movq %rax, -144(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -136(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -152(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -56(%rbp)
	addq $16, -56(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -128(%rbp)
	movq -56(%rbp), %rax
	cmpq %rax, -128(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -88(%rbp)
	cmpq $1, -88(%rbp)
	je then376592
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -176(%rbp)
	jmp end376593
then376592:
	movq $0, -104(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -176(%rbp)
end376593:
	movq -176(%rbp), %rax
	movq %rax, -96(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -24(%r15)
	addq $16, free_ptr(%rip)
	movq -24(%r15), %r11
	movq $3, 0(%r11)
	movq -24(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq -136(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -192(%rbp)
	movq -16(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -184(%rbp)
	movq $1, -48(%rbp)
	negq -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -160(%rbp)
	movq -120(%rbp), %rax
	addq %rax, -160(%rbp)
	movq -8(%r15), %rdi
	movq -160(%rbp), %rsi
	callq *-184(%rbp)
	movq %rax, -80(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -64(%rbp)
	jmp end376591
then376590:
	movq $1, -64(%rbp)
end376591:
	movq -64(%rbp), %rax

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
	subq $208, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $24, %r15
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	leaq function1(%rip), %rax
	movq %rax, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -128(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -48(%rbp)
	addq $16, -48(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -112(%rbp)
	movq -48(%rbp), %rax
	cmpq %rax, -112(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -120(%rbp)
	cmpq $1, -120(%rbp)
	je then376594
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -88(%rbp)
	jmp end376595
then376594:
	movq $0, -144(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -88(%rbp)
end376595:
	movq -88(%rbp), %rax
	movq %rax, -160(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq -128(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -152(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -104(%rbp)
	movq -8(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -80(%rbp)
	callq read_int
	movq %rax, -64(%rbp)
	movq -24(%r15), %rdi
	movq -64(%rbp), %rsi
	callq *-80(%rbp)
	movq %rax, -136(%rbp)
	cmpq $1, -136(%rbp)
	je then376596
	movq $42, -96(%rbp)
	jmp end376597
then376596:
	movq $999, -96(%rbp)
end376597:
	movq -96(%rbp), %rax

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
