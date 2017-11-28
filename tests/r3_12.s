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
	addq $504, %r15
	movq $0, -504(%r15)
	movq $0, -496(%r15)
	movq $0, -488(%r15)
	movq $0, -480(%r15)
	movq $0, -472(%r15)
	movq $0, -464(%r15)
	movq $0, -456(%r15)
	movq $0, -448(%r15)
	movq $0, -440(%r15)
	movq $0, -432(%r15)
	movq $0, -424(%r15)
	movq $0, -416(%r15)
	movq $0, -408(%r15)
	movq $0, -400(%r15)
	movq $0, -392(%r15)
	movq $0, -384(%r15)
	movq $0, -376(%r15)
	movq $0, -368(%r15)
	movq $0, -360(%r15)
	movq $0, -352(%r15)
	movq $0, -344(%r15)
	movq $0, -336(%r15)
	movq $0, -328(%r15)
	movq $0, -320(%r15)
	movq $0, -312(%r15)
	movq $0, -304(%r15)
	movq $0, -296(%r15)
	movq $0, -288(%r15)
	movq $0, -280(%r15)
	movq $0, -272(%r15)
	movq $0, -264(%r15)
	movq $0, -256(%r15)
	movq $0, -248(%r15)
	movq $0, -240(%r15)
	movq $0, -232(%r15)
	movq $0, -224(%r15)
	movq $0, -216(%r15)
	movq $0, -208(%r15)
	movq $0, -200(%r15)
	movq $0, -192(%r15)
	movq $0, -184(%r15)
	movq $0, -176(%r15)
	movq $0, -168(%r15)
	movq $0, -160(%r15)
	movq $0, -152(%r15)
	movq $0, -144(%r15)
	movq $0, -136(%r15)
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

	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3565
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3566
then3565:
	movq $0, %rcx
	movq %rcx, %rcx
end3566:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -104(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3567
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3568
then3567:
	movq $0, %rcx
	movq %rcx, %rcx
end3568:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -128(%r15)
	movq -128(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -128(%r15), %rax
	movq %rax, -320(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3569
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3570
then3569:
	movq $0, %rcx
	movq %rcx, %rcx
end3570:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -288(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3571
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3572
then3571:
	movq $0, %rcx
	movq %rcx, %rcx
end3572:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -152(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3573
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3574
then3573:
	movq $0, %rcx
	movq %rcx, %rcx
end3574:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -312(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3575
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3576
then3575:
	movq $0, %rcx
	movq %rcx, %rcx
end3576:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -112(%r15)
	movq -112(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -112(%r15), %rax
	movq %rax, -216(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3577
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3578
then3577:
	movq $0, %rcx
	movq %rcx, %rcx
end3578:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, %r12
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3579
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3580
then3579:
	movq $0, %rcx
	movq %rcx, %rcx
end3580:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -208(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3581
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3582
then3581:
	movq $0, %rcx
	movq %rcx, %rcx
end3582:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, %r13
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3583
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3584
then3583:
	movq $0, %rcx
	movq %rcx, %rcx
end3584:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -360(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3585
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3586
then3585:
	movq $0, %rcx
	movq %rcx, %rcx
end3586:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -240(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3587
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3588
then3587:
	movq $0, %rcx
	movq %rcx, %rcx
end3588:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -72(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3589
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3590
then3589:
	movq $0, %rcx
	movq %rcx, %rcx
end3590:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -408(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3591
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3592
then3591:
	movq $0, %rcx
	movq %rcx, %rcx
end3592:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, %r14
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3593
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3594
then3593:
	movq $0, %rcx
	movq %rcx, %rcx
end3594:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -280(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3595
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3596
then3595:
	movq $0, %rcx
	movq %rcx, %rcx
end3596:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -144(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3597
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3598
then3597:
	movq $0, %rcx
	movq %rcx, %rcx
end3598:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -400(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3599
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3600
then3599:
	movq $0, %rcx
	movq %rcx, %rcx
end3600:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -352(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3601
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3602
then3601:
	movq $0, %rcx
	movq %rcx, %rcx
end3602:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -8(%r15)
	movq -8(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -8(%r15), %rax
	movq %rax, -480(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3603
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3604
then3603:
	movq $0, %rcx
	movq %rcx, %rcx
end3604:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
	movq $1, -120(%rbp)
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3605
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3606
then3605:
	movq $0, %rcx
	movq %rcx, %rcx
end3606:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq -120(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq -104(%r15), %r11
	movq 8(%r11), %rdx
	movq -320(%r15), %r11
	movq 8(%r11), %rsi
	movq -288(%r15), %r11
	movq 8(%r11), %rdi
	movq -152(%r15), %r11
	movq 8(%r11), %r8
	movq -312(%r15), %r11
	movq 8(%r11), %r9
	movq -216(%r15), %r11
	movq 8(%r11), %r10
	movq %r12, %r11
	movq 8(%r11), %r12
	movq -208(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -64(%rbp)
	movq %r13, %r11
	movq 8(%r11), %r13
	movq -360(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -160(%rbp)
	movq -240(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -208(%rbp)
	movq -72(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -168(%rbp)
	movq -408(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -200(%rbp)
	movq %r14, %r11
	movq 8(%r11), %r14
	movq -280(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -184(%rbp)
	movq -144(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -152(%rbp)
	movq -400(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -192(%rbp)
	movq -352(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -72(%rbp)
	movq -480(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -112(%rbp)
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	addq $21, %rcx
	addq %rcx, %rbx
	movq -112(%rbp), %rax
	movq %rax, -176(%rbp)
	addq %rbx, -176(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -56(%rbp)
	movq -176(%rbp), %rax
	addq %rax, -56(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -80(%rbp)
	movq -56(%rbp), %rax
	addq %rax, -80(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -48(%rbp)
	movq -80(%rbp), %rax
	addq %rax, -48(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -48(%rbp), %rax
	addq %rax, -88(%rbp)
	addq -88(%rbp), %r14
	movq -200(%rbp), %rax
	movq %rax, -104(%rbp)
	addq %r14, -104(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -144(%rbp)
	movq -104(%rbp), %rax
	addq %rax, -144(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -144(%rbp), %rax
	addq %rax, -96(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -136(%rbp)
	movq -96(%rbp), %rax
	addq %rax, -136(%rbp)
	addq -136(%rbp), %r13
	movq -64(%rbp), %rax
	movq %rax, -128(%rbp)
	addq %r13, -128(%rbp)
	addq -128(%rbp), %r12
	addq %r12, %r10
	addq %r10, %r9
	addq %r9, %r8
	addq %r8, %rdi
	addq %rdi, %rsi
	addq %rsi, %rdx
	movq %rdx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $504, %r15
	addq $224, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
