	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $528, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $128, %r15
	movq $0, -128(%r15)
	movq $0, -120(%r15)
	movq $0, -112(%r15)
	movq $0, -104(%r15)
	movq $0, -96(%r15)
	movq $0, -88(%r15)
	movq $0, -80(%r15)
	movq $0, -72(%r15)
	movq $0, -64(%r15)
	movq $0, -56(%r15)
	movq $0, -48(%r15)
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq $0, -320(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -128(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -312(%rbp)
	addq $16, -312(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -296(%rbp)
	movq -312(%rbp), %rax
	cmpq %rax, -296(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -280(%rbp)
	cmpq $1, -280(%rbp)
	je then482522
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -456(%rbp)
	jmp end482523
then482522:
	movq $0, -416(%rbp)
	movq -416(%rbp), %rax
	movq %rax, -456(%rbp)
end482523:
	movq -456(%rbp), %rax
	movq %rax, -368(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -128(%r15)
	addq $16, free_ptr(%rip)
	movq -128(%r15), %r11
	movq $3, 0(%r11)
	movq -128(%r15), %rax
	movq %rax, -104(%r15)
	movq -104(%r15), %r11
	movq -320(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -216(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -400(%rbp)
	movq -104(%r15), %rax
	movq %rax, -120(%r15)
	movq $1, -120(%rbp)
	movq $2, -56(%rbp)
	movq $1, -480(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -360(%rbp)
	movq -360(%rbp), %rax
	movq %rax, -88(%rbp)
	addq $16, -88(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -64(%rbp)
	movq -88(%rbp), %rax
	cmpq %rax, -64(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -464(%rbp)
	cmpq $1, -464(%rbp)
	je then482524
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -264(%rbp)
	jmp end482525
then482524:
	movq $0, -224(%rbp)
	movq -224(%rbp), %rax
	movq %rax, -264(%rbp)
end482525:
	movq -264(%rbp), %rax
	movq %rax, -152(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -40(%r15)
	addq $16, free_ptr(%rip)
	movq -40(%r15), %r11
	movq $3, 0(%r11)
	movq -40(%r15), %rax
	movq %rax, -80(%r15)
	movq -80(%r15), %r11
	movq -480(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -432(%rbp)
	movq -432(%rbp), %rax
	movq %rax, -184(%rbp)
	movq -80(%r15), %rax
	movq %rax, -48(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -344(%rbp)
	movq -344(%rbp), %rax
	movq %rax, -80(%rbp)
	addq $32, -80(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -136(%rbp)
	movq -80(%rbp), %rax
	cmpq %rax, -136(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -272(%rbp)
	cmpq $1, -272(%rbp)
	je then482526
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, -448(%rbp)
	jmp end482527
then482526:
	movq $0, -168(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -448(%rbp)
end482527:
	movq -448(%rbp), %rax
	movq %rax, -256(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -88(%r15)
	addq $32, free_ptr(%rip)
	movq -88(%r15), %r11
	movq $519, 0(%r11)
	movq -88(%r15), %rax
	movq %rax, -72(%r15)
	movq -72(%r15), %r11
	movq -48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -176(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -376(%rbp)
	movq -72(%r15), %r11
	movq -56(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -248(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -424(%rbp)
	movq -72(%r15), %r11
	movq -120(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -408(%rbp)
	movq -408(%rbp), %rax
	movq %rax, -160(%rbp)
	movq -72(%r15), %rax
	movq %rax, -64(%r15)
	movq -120(%r15), %rax
	movq %rax, -112(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -352(%rbp)
	addq $16, -352(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -304(%rbp)
	movq -352(%rbp), %rax
	cmpq %rax, -304(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -192(%rbp)
	cmpq $1, -192(%rbp)
	je then482528
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -440(%rbp)
	jmp end482529
then482528:
	movq $0, -392(%rbp)
	movq -392(%rbp), %rax
	movq %rax, -440(%rbp)
end482529:
	movq -440(%rbp), %rax
	movq %rax, -240(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $16, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $131, 0(%r11)
	movq -8(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq -112(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -384(%rbp)
	movq -384(%rbp), %rax
	movq %rax, -208(%rbp)
	movq -16(%r15), %rax
	movq %rax, -56(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -48(%rbp)
	addq $24, -48(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -336(%rbp)
	movq -48(%rbp), %rax
	cmpq %rax, -336(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -232(%rbp)
	cmpq $1, -232(%rbp)
	je then482530
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, -472(%rbp)
	jmp end482531
then482530:
	movq $0, -200(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -472(%rbp)
end482531:
	movq -472(%rbp), %rax
	movq %rax, -144(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -32(%r15)
	addq $24, free_ptr(%rip)
	movq -32(%r15), %r11
	movq $389, 0(%r11)
	movq -32(%r15), %rax
	movq %rax, -96(%r15)
	movq -96(%r15), %r11
	movq -56(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -328(%rbp)
	movq -328(%rbp), %rax
	movq %rax, -104(%rbp)
	movq -96(%r15), %r11
	movq -64(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -288(%rbp)
	movq -288(%rbp), %rax
	movq %rax, -72(%rbp)
	movq -96(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %rax

	movq %rax, %rdi
	movq	%rax, %r12
	callq	print_vecbegin
	movq	8(%r12), %rax
	movq	%rax, %r13
	callq	print_vecbegin
	movq	8(%r13), %rax
	movq	%rax, %rdi
	callq	print_int
	callq	print_space
	movq	16(%r13), %rax
	movq	%rax, %rdi
	callq	print_int
	callq	print_space
	movq	24(%r13), %rax
	movq	%rax, %r14
	callq	print_vecbegin
	movq	8(%r14), %rax
	movq	%rax, %rdi
	callq	print_bool
	callq	print_vecend
	callq	print_vecend
	callq	print_space
	movq	16(%r12), %rax
	movq	%rax, %r13
	callq	print_vecbegin
	movq	8(%r13), %rax
	movq	%rax, %r14
	callq	print_vecbegin
	movq	8(%r14), %rax
	movq	%rax, %rdi
	callq	print_int
	callq	print_vecend
	callq	print_vecend
	callq	print_vecend
	subq $128, %r15
	addq $528, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
