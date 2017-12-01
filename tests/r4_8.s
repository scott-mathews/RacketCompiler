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
	movq %rax, -160(%rbp)
	cmpq $1, -160(%rbp)
	je then376697
	leaq function1(%rip), %rax
	movq %rax, -152(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -72(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -136(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -64(%rbp)
	addq $16, -64(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -48(%rbp)
	movq -64(%rbp), %rax
	cmpq %rax, -48(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -176(%rbp)
	cmpq $1, -176(%rbp)
	je then376699
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -88(%rbp)
	jmp end376700
then376699:
	movq $0, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -88(%rbp)
end376700:
	movq -88(%rbp), %rax
	movq %rax, -112(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq -72(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -184(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -24(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -144(%rbp)
	movq $1, -128(%rbp)
	negq -128(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -56(%rbp)
	movq -168(%rbp), %rax
	addq %rax, -56(%rbp)
	movq -8(%r15), %rdi
	movq -56(%rbp), %rsi
	callq *-144(%rbp)
	movq %rax, -120(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -104(%rbp)
	jmp end376698
then376697:
	movq $0, -104(%rbp)
end376698:
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

	movq %rdi, -88(%rbp)
	movq %rsi, -128(%rbp)
	movq $0, %rax
	cmpq -128(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -112(%rbp)
	cmpq $1, -112(%rbp)
	je then376701
	leaq function0(%rip), %rax
	movq %rax, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -96(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -152(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -48(%rbp)
	addq $16, -48(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -64(%rbp)
	movq -48(%rbp), %rax
	cmpq %rax, -64(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -168(%rbp)
	cmpq $1, -168(%rbp)
	je then376703
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -104(%rbp)
	jmp end376704
then376703:
	movq $0, -136(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -104(%rbp)
end376704:
	movq -104(%rbp), %rax
	movq %rax, -120(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -24(%r15)
	addq $16, free_ptr(%rip)
	movq -24(%r15), %r11
	movq $3, 0(%r11)
	movq -24(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq -96(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -176(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -56(%rbp)
	movq -8(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -72(%rbp)
	movq $1, -144(%rbp)
	negq -144(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -80(%rbp)
	movq -128(%rbp), %rax
	addq %rax, -80(%rbp)
	movq -16(%r15), %rdi
	movq -80(%rbp), %rsi
	callq *-72(%rbp)
	movq %rax, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -184(%rbp)
	jmp end376702
then376701:
	movq $1, -184(%rbp)
end376702:
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
	subq $392, %rsp
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

	leaq function0(%rip), %rax
	movq %rax, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -80(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -216(%rbp)
	addq $16, -216(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -192(%rbp)
	movq -216(%rbp), %rax
	cmpq %rax, -192(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -168(%rbp)
	cmpq $1, -168(%rbp)
	je then376705
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -344(%rbp)
	jmp end376706
then376705:
	movq $0, -152(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -344(%rbp)
end376706:
	movq -344(%rbp), %rax
	movq %rax, -272(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq -80(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -336(%rbp)
	movq -24(%r15), %rax
	movq %rax, -48(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -232(%rbp)
	addq $16, -232(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -208(%rbp)
	movq -232(%rbp), %rax
	cmpq %rax, -208(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -176(%rbp)
	cmpq $1, -176(%rbp)
	je then376707
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -280(%rbp)
	jmp end376708
then376707:
	movq $0, -184(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -280(%rbp)
end376708:
	movq -280(%rbp), %rax
	movq %rax, -304(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -40(%r15)
	addq $16, free_ptr(%rip)
	movq -40(%r15), %r11
	movq $3, 0(%r11)
	movq -40(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq -48(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -136(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -288(%rbp)
	movq -8(%r15), %rax
	movq %rax, -32(%r15)
	leaq function1(%rip), %rax
	movq %rax, -104(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -256(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -200(%rbp)
	addq $16, -200(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -224(%rbp)
	movq -200(%rbp), %rax
	cmpq %rax, -224(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -112(%rbp)
	cmpq $1, -112(%rbp)
	je then376709
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -264(%rbp)
	jmp end376710
then376709:
	movq $0, -328(%rbp)
	movq -328(%rbp), %rax
	movq %rax, -264(%rbp)
end376710:
	movq -264(%rbp), %rax
	movq %rax, -296(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -56(%r15)
	addq $16, free_ptr(%rip)
	movq -56(%r15), %r11
	movq $3, 0(%r11)
	movq -56(%r15), %rax
	movq %rax, -64(%r15)
	movq -64(%r15), %r11
	movq -256(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -320(%rbp)
	movq -320(%rbp), %rax
	movq %rax, -144(%rbp)
	movq -32(%r15), %r11
	movq -64(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -312(%rbp)
	movq -312(%rbp), %rax
	movq %rax, -128(%rbp)
	movq -32(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -248(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -96(%rbp), %r11
	movq 8(%r11), %rax
	movq %rax, -240(%rbp)
	movq -96(%rbp), %rdi
	movq $21, %rsi
	callq *-240(%rbp)
	movq %rax, -88(%rbp)
	cmpq $1, -88(%rbp)
	je then376711
	movq $42, -120(%rbp)
	jmp end376712
then376711:
	movq $999, -120(%rbp)
end376712:
	movq -120(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $64, %r15
	addq $392, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
