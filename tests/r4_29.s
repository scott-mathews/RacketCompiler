	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $64, %rsp
	addq $0, %r15

	movq %rdi, -48(%rbp)
	movq %rsi, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -64(%rbp)
	addq $1, -64(%rbp)
	movq -64(%rbp), %rax

	addq $64, %rsp
	subq $0, %r15
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
	subq $224, %rsp
	addq $24, %r15
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, -104(%rbp)
	movq %rsi, -168(%rbp)
	movq %rdx, -16(%r15)
	movq -168(%rbp), %rax
	movq %rax, -152(%rbp)
	movq -152(%rbp), %r11
	movq 8(%r11), %rax
	movq %rax, -120(%rbp)
	movq -16(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -200(%rbp)
	movq -152(%rbp), %rdi
	movq -200(%rbp), %rsi
	callq *-120(%rbp)
	movq %rax, -224(%rbp)
	movq -224(%rbp), %rax
	movq %rax, -128(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -88(%rbp), %r11
	movq 8(%r11), %rax
	movq %rax, -144(%rbp)
	movq -16(%r15), %r11
	movq 16(%r11), %rax
	movq %rax, -80(%rbp)
	movq -88(%rbp), %rdi
	movq -80(%rbp), %rsi
	callq *-144(%rbp)
	movq %rax, -216(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -112(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -208(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -96(%rbp)
	addq $24, -96(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -136(%rbp)
	movq -96(%rbp), %rax
	cmpq %rax, -136(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -48(%rbp)
	cmpq $1, -48(%rbp)
	je then377692
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, -160(%rbp)
	jmp end377693
then377692:
	movq $0, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -160(%rbp)
end377693:
	movq -160(%rbp), %rax
	movq %rax, -176(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $24, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $5, 0(%r11)
	movq -8(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq -112(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -192(%rbp)
	movq -24(%r15), %r11
	movq -128(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -184(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -56(%rbp)
	movq -24(%r15), %rax

	addq $224, %rsp
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
	subq $384, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $64, %r15
	movq $0, -64(%r15)
	movq $0, -56(%r15)
	movq $0, -48(%r15)
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	leaq function1(%rip), %rax
	movq %rax, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -200(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -168(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -320(%rbp)
	addq $16, -320(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -288(%rbp)
	movq -320(%rbp), %rax
	cmpq %rax, -288(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -224(%rbp)
	cmpq $1, -224(%rbp)
	je then377694
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -80(%rbp)
	jmp end377695
then377694:
	movq $0, -248(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -80(%rbp)
end377695:
	movq -80(%rbp), %rax
	movq %rax, -112(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -64(%r15)
	movq -64(%r15), %r11
	movq -200(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -256(%rbp)
	movq -256(%rbp), %rax
	movq %rax, -152(%rbp)
	movq -64(%r15), %rax
	movq %rax, -48(%r15)
	movq -48(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -72(%rbp)
	leaq function0(%rip), %rax
	movq %rax, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -272(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -296(%rbp)
	addq $16, -296(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -184(%rbp)
	movq -296(%rbp), %rax
	cmpq %rax, -184(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -64(%rbp)
	cmpq $1, -64(%rbp)
	je then377696
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -216(%rbp)
	jmp end377697
then377696:
	movq $0, -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -216(%rbp)
end377697:
	movq -216(%rbp), %rax
	movq %rax, -136(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -40(%r15)
	addq $16, free_ptr(%rip)
	movq -40(%r15), %r11
	movq $3, 0(%r11)
	movq -40(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq -272(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -104(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -240(%rbp)
	movq $0, -304(%rbp)
	movq $41, -336(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -176(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -328(%rbp)
	addq $24, -328(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -312(%rbp)
	movq -328(%rbp), %rax
	cmpq %rax, -312(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -88(%rbp)
	cmpq $1, -88(%rbp)
	je then377698
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, -208(%rbp)
	jmp end377699
then377698:
	movq $0, -280(%rbp)
	movq -280(%rbp), %rax
	movq %rax, -208(%rbp)
end377699:
	movq -208(%rbp), %rax
	movq %rax, -120(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -32(%r15)
	addq $24, free_ptr(%rip)
	movq -32(%r15), %r11
	movq $5, 0(%r11)
	movq -32(%r15), %rax
	movq %rax, -56(%r15)
	movq -56(%r15), %r11
	movq -336(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -232(%rbp)
	movq -56(%r15), %r11
	movq -304(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -128(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -264(%rbp)
	movq -48(%r15), %rdi
	movq -8(%r15), %rsi
	movq -56(%r15), %rdx
	callq *-72(%rbp)
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq 16(%r11), %rax
	movq %rax, -144(%rbp)
	movq -144(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $64, %r15
	addq $384, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
