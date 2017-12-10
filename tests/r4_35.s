	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $320, %rsp
	addq $144, %r15
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

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq %rdx, -8(%r15)
	movq $0, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then22572
	movq -8(%r15), %rax
	movq %rax, -16(%r15)
	movq free_ptr(%rip), %rbx
	movq %rbx, %rbx
	addq $16, %rbx
	movq fromspace_end(%rip), %rcx
	cmpq %rbx, %rcx
	sete %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then22574
	movq $0, %rbx
	jmp end22575
then22574:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end22575:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $131, 0(%r11)
	movq %rbx, %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rbx, %rbx
	jmp end22573
then22572:
	movq $1, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22576
	movq $0, %r13
	jmp end22577
then22576:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22577:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -32(%r15)
	movq $2, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22578
	movq $0, %r13
	jmp end22579
then22578:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22579:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -40(%r15)
	movq $3, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22580
	movq $0, %r13
	jmp end22581
then22580:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22581:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -48(%r15)
	movq $4, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22582
	movq $0, %r13
	jmp end22583
then22582:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22583:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -56(%r15)
	movq $5, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22584
	movq $0, %r13
	jmp end22585
then22584:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22585:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -64(%r15)
	movq free_ptr(%rip), %r12
	movq %r12, %r12
	addq $48, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then22586
	movq $0, %r12
	jmp end22587
then22586:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %r12
end22587:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $48, free_ptr(%rip)
	movq %r12, %r11
	movq $3979, 0(%r11)
	movq %r12, %r11
	movq -64(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -56(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -40(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r12, -24(%r15)
	movq $-1, %r12
	movq $-1, %r13
	movq $-1, %r14
	movq $-1, -48(%rbp)
	movq $-1, -56(%rbp)
	movq $-1, -64(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -136(%rbp)
	movq $-1, -144(%rbp)
	movq $-1, -152(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -184(%rbp)
	addq $144, -184(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -200(%rbp)
	movq -184(%rbp), %rax
	cmpq %rax, -200(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -176(%rbp)
	movq $0, %rax
	cmpq -176(%rbp), %rax
	je then22588
	movq $0, -168(%rbp)
	jmp end22589
then22588:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -168(%rbp)
end22589:
	movq -168(%rbp), %rax
	movq %rax, -160(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -72(%r15)
	addq $144, free_ptr(%rip)
	movq -72(%r15), %r11
	movq $35, 0(%r11)
	movq -72(%r15), %r11
	movq -152(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, -208(%rbp)
	movq -72(%r15), %r11
	movq -144(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, -216(%rbp)
	movq -72(%r15), %r11
	movq -136(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, -224(%rbp)
	movq -72(%r15), %r11
	movq -128(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, -232(%rbp)
	movq -72(%r15), %r11
	movq -120(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, -240(%rbp)
	movq -72(%r15), %r11
	movq -112(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, -248(%rbp)
	movq -72(%r15), %r11
	movq -104(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, -256(%rbp)
	movq -72(%r15), %r11
	movq -96(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, -264(%rbp)
	movq -72(%r15), %r11
	movq -88(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, -272(%rbp)
	movq -72(%r15), %r11
	movq -80(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, -280(%rbp)
	movq -72(%r15), %r11
	movq -72(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, -288(%rbp)
	movq -72(%r15), %r11
	movq -64(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, -296(%rbp)
	movq -72(%r15), %r11
	movq -56(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, -304(%rbp)
	movq -72(%r15), %r11
	movq -48(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, -312(%rbp)
	movq -72(%r15), %r11
	movq %r14, 24(%r11)
	movq $0, %r14
	movq -72(%r15), %r11
	movq %r13, 16(%r11)
	movq $0, %r13
	movq -72(%r15), %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq -72(%r15), %r12
	movq -24(%r15), %rax
	movq %rax, -80(%r15)
	movq %r12, -88(%r15)
	movq -24(%r15), %rax
	movq %rax, -96(%r15)
	movq %r12, -104(%r15)
	movq -24(%r15), %rax
	movq %rax, -112(%r15)
	movq %r12, -120(%r15)
	movq -24(%r15), %rax
	movq %rax, -128(%r15)
	movq %r12, -136(%r15)
	movq free_ptr(%rip), %r12
	movq %r12, %r12
	addq $72, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then22590
	movq $0, %r12
	jmp end22591
then22590:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %r12
end22591:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $72, free_ptr(%rip)
	movq %r12, %r11
	movq $32657, 0(%r11)
	movq %r12, %r11
	movq -136(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -128(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -120(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -112(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -104(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -96(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -88(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -80(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r12, %r12
	leaq function0(%rip), %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22592
	movq $0, %r13
	jmp end22593
then22592:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22593:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -144(%r15)
	movq -144(%r15), %r11
	movq 8(%r11), %r12
	leaq function6(%rip), %r13
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -320(%rbp)
	cmpq %r14, -320(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then22594
	movq $0, %r14
	jmp end22595
then22594:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end22595:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %r13, 8(%r11)
	movq $0, %r13
	movq %r14, %r13
	movq %r13, %r11
	movq 8(%r11), %r14
	movq %r13, %rdi
	movq %rbx, %rsi
	movq $1, %rdx
	callq *%r14
	movq %rax, %rbx
	movq -144(%r15), %rdi
	movq %rbx, %rsi
	movq -8(%r15), %rdx
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rbx
end22573:
	movq %rbx, %rax

	addq $320, %rsp
	subq $144, %r15
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
	subq $320, %rsp
	addq $144, %r15
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

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq %rdx, -8(%r15)
	movq $0, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then22596
	movq -8(%r15), %rax
	movq %rax, -16(%r15)
	movq free_ptr(%rip), %rbx
	movq %rbx, %rbx
	addq $16, %rbx
	movq fromspace_end(%rip), %rcx
	cmpq %rbx, %rcx
	sete %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then22598
	movq $0, %rbx
	jmp end22599
then22598:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end22599:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $131, 0(%r11)
	movq %rbx, %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rbx, %rbx
	jmp end22597
then22596:
	movq $1, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22600
	movq $0, %r13
	jmp end22601
then22600:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22601:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -32(%r15)
	movq $2, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22602
	movq $0, %r13
	jmp end22603
then22602:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22603:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -40(%r15)
	movq $3, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22604
	movq $0, %r13
	jmp end22605
then22604:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22605:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -48(%r15)
	movq $4, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22606
	movq $0, %r13
	jmp end22607
then22606:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22607:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -56(%r15)
	movq $5, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22608
	movq $0, %r13
	jmp end22609
then22608:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22609:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -64(%r15)
	movq free_ptr(%rip), %r12
	movq %r12, %r12
	addq $48, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then22610
	movq $0, %r12
	jmp end22611
then22610:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %r12
end22611:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $48, free_ptr(%rip)
	movq %r12, %r11
	movq $3979, 0(%r11)
	movq %r12, %r11
	movq -64(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -56(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -40(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r12, -24(%r15)
	movq $-1, %r12
	movq $-1, %r13
	movq $-1, %r14
	movq $-1, -48(%rbp)
	movq $-1, -56(%rbp)
	movq $-1, -64(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -136(%rbp)
	movq $-1, -144(%rbp)
	movq $-1, -152(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -184(%rbp)
	addq $144, -184(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -200(%rbp)
	movq -184(%rbp), %rax
	cmpq %rax, -200(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -176(%rbp)
	movq $0, %rax
	cmpq -176(%rbp), %rax
	je then22612
	movq $0, -168(%rbp)
	jmp end22613
then22612:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -168(%rbp)
end22613:
	movq -168(%rbp), %rax
	movq %rax, -160(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -72(%r15)
	addq $144, free_ptr(%rip)
	movq -72(%r15), %r11
	movq $35, 0(%r11)
	movq -72(%r15), %r11
	movq -152(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, -208(%rbp)
	movq -72(%r15), %r11
	movq -144(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, -216(%rbp)
	movq -72(%r15), %r11
	movq -136(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, -224(%rbp)
	movq -72(%r15), %r11
	movq -128(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, -232(%rbp)
	movq -72(%r15), %r11
	movq -120(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, -240(%rbp)
	movq -72(%r15), %r11
	movq -112(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, -248(%rbp)
	movq -72(%r15), %r11
	movq -104(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, -256(%rbp)
	movq -72(%r15), %r11
	movq -96(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, -264(%rbp)
	movq -72(%r15), %r11
	movq -88(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, -272(%rbp)
	movq -72(%r15), %r11
	movq -80(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, -280(%rbp)
	movq -72(%r15), %r11
	movq -72(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, -288(%rbp)
	movq -72(%r15), %r11
	movq -64(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, -296(%rbp)
	movq -72(%r15), %r11
	movq -56(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, -304(%rbp)
	movq -72(%r15), %r11
	movq -48(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, -312(%rbp)
	movq -72(%r15), %r11
	movq %r14, 24(%r11)
	movq $0, %r14
	movq -72(%r15), %r11
	movq %r13, 16(%r11)
	movq $0, %r13
	movq -72(%r15), %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq -72(%r15), %r12
	movq -24(%r15), %rax
	movq %rax, -80(%r15)
	movq %r12, -88(%r15)
	movq -24(%r15), %rax
	movq %rax, -96(%r15)
	movq %r12, -104(%r15)
	movq -24(%r15), %rax
	movq %rax, -112(%r15)
	movq %r12, -120(%r15)
	movq -24(%r15), %rax
	movq %rax, -128(%r15)
	movq %r12, -136(%r15)
	movq free_ptr(%rip), %r12
	movq %r12, %r12
	addq $72, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then22614
	movq $0, %r12
	jmp end22615
then22614:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %r12
end22615:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $72, free_ptr(%rip)
	movq %r12, %r11
	movq $32657, 0(%r11)
	movq %r12, %r11
	movq -136(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -128(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -120(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -112(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -104(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -96(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -88(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -80(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r12, %r12
	leaq function1(%rip), %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22616
	movq $0, %r13
	jmp end22617
then22616:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22617:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -144(%r15)
	movq -144(%r15), %r11
	movq 8(%r11), %r12
	leaq function6(%rip), %r13
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -320(%rbp)
	cmpq %r14, -320(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then22618
	movq $0, %r14
	jmp end22619
then22618:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end22619:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %r13, 8(%r11)
	movq $0, %r13
	movq %r14, %r13
	movq %r13, %r11
	movq 8(%r11), %r14
	movq %r13, %rdi
	movq %rbx, %rsi
	movq $1, %rdx
	callq *%r14
	movq %rax, %rbx
	movq -144(%r15), %rdi
	movq %rbx, %rsi
	movq -8(%r15), %rdx
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rbx
end22597:
	movq %rbx, %rax

	addq $320, %rsp
	subq $144, %r15
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq

	.globl function2
function2:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $320, %rsp
	addq $144, %r15
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

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq %rdx, -8(%r15)
	movq $0, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then22620
	movq -8(%r15), %rax
	movq %rax, -16(%r15)
	movq free_ptr(%rip), %rbx
	movq %rbx, %rbx
	addq $16, %rbx
	movq fromspace_end(%rip), %rcx
	cmpq %rbx, %rcx
	sete %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then22622
	movq $0, %rbx
	jmp end22623
then22622:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end22623:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $131, 0(%r11)
	movq %rbx, %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rbx, %rbx
	jmp end22621
then22620:
	movq $1, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22624
	movq $0, %r13
	jmp end22625
then22624:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22625:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -32(%r15)
	movq $2, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22626
	movq $0, %r13
	jmp end22627
then22626:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22627:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -40(%r15)
	movq $3, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22628
	movq $0, %r13
	jmp end22629
then22628:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22629:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -48(%r15)
	movq $4, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22630
	movq $0, %r13
	jmp end22631
then22630:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22631:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -56(%r15)
	movq $5, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22632
	movq $0, %r13
	jmp end22633
then22632:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22633:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -64(%r15)
	movq free_ptr(%rip), %r12
	movq %r12, %r12
	addq $48, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then22634
	movq $0, %r12
	jmp end22635
then22634:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %r12
end22635:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $48, free_ptr(%rip)
	movq %r12, %r11
	movq $3979, 0(%r11)
	movq %r12, %r11
	movq -64(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -56(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -40(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r12, -24(%r15)
	movq $-1, %r12
	movq $-1, %r13
	movq $-1, %r14
	movq $-1, -48(%rbp)
	movq $-1, -56(%rbp)
	movq $-1, -64(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -136(%rbp)
	movq $-1, -144(%rbp)
	movq $-1, -152(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -184(%rbp)
	addq $144, -184(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -200(%rbp)
	movq -184(%rbp), %rax
	cmpq %rax, -200(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -176(%rbp)
	movq $0, %rax
	cmpq -176(%rbp), %rax
	je then22636
	movq $0, -168(%rbp)
	jmp end22637
then22636:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -168(%rbp)
end22637:
	movq -168(%rbp), %rax
	movq %rax, -160(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -72(%r15)
	addq $144, free_ptr(%rip)
	movq -72(%r15), %r11
	movq $35, 0(%r11)
	movq -72(%r15), %r11
	movq -152(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, -208(%rbp)
	movq -72(%r15), %r11
	movq -144(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, -216(%rbp)
	movq -72(%r15), %r11
	movq -136(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, -224(%rbp)
	movq -72(%r15), %r11
	movq -128(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, -232(%rbp)
	movq -72(%r15), %r11
	movq -120(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, -240(%rbp)
	movq -72(%r15), %r11
	movq -112(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, -248(%rbp)
	movq -72(%r15), %r11
	movq -104(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, -256(%rbp)
	movq -72(%r15), %r11
	movq -96(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, -264(%rbp)
	movq -72(%r15), %r11
	movq -88(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, -272(%rbp)
	movq -72(%r15), %r11
	movq -80(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, -280(%rbp)
	movq -72(%r15), %r11
	movq -72(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, -288(%rbp)
	movq -72(%r15), %r11
	movq -64(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, -296(%rbp)
	movq -72(%r15), %r11
	movq -56(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, -304(%rbp)
	movq -72(%r15), %r11
	movq -48(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, -312(%rbp)
	movq -72(%r15), %r11
	movq %r14, 24(%r11)
	movq $0, %r14
	movq -72(%r15), %r11
	movq %r13, 16(%r11)
	movq $0, %r13
	movq -72(%r15), %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq -72(%r15), %r12
	movq -24(%r15), %rax
	movq %rax, -80(%r15)
	movq %r12, -88(%r15)
	movq -24(%r15), %rax
	movq %rax, -96(%r15)
	movq %r12, -104(%r15)
	movq -24(%r15), %rax
	movq %rax, -112(%r15)
	movq %r12, -120(%r15)
	movq -24(%r15), %rax
	movq %rax, -128(%r15)
	movq %r12, -136(%r15)
	movq free_ptr(%rip), %r12
	movq %r12, %r12
	addq $72, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then22638
	movq $0, %r12
	jmp end22639
then22638:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %r12
end22639:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $72, free_ptr(%rip)
	movq %r12, %r11
	movq $32657, 0(%r11)
	movq %r12, %r11
	movq -136(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -128(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -120(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -112(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -104(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -96(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -88(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -80(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r12, %r12
	leaq function2(%rip), %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22640
	movq $0, %r13
	jmp end22641
then22640:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22641:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -144(%r15)
	movq -144(%r15), %r11
	movq 8(%r11), %r12
	leaq function6(%rip), %r13
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -320(%rbp)
	cmpq %r14, -320(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then22642
	movq $0, %r14
	jmp end22643
then22642:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end22643:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %r13, 8(%r11)
	movq $0, %r13
	movq %r14, %r13
	movq %r13, %r11
	movq 8(%r11), %r14
	movq %r13, %rdi
	movq %rbx, %rsi
	movq $1, %rdx
	callq *%r14
	movq %rax, %rbx
	movq -144(%r15), %rdi
	movq %rbx, %rsi
	movq -8(%r15), %rdx
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rbx
end22621:
	movq %rbx, %rax

	addq $320, %rsp
	subq $144, %r15
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq

	.globl function3
function3:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $320, %rsp
	addq $144, %r15
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

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq %rdx, -8(%r15)
	movq $0, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then22644
	movq -8(%r15), %rax
	movq %rax, -16(%r15)
	movq free_ptr(%rip), %rbx
	movq %rbx, %rbx
	addq $16, %rbx
	movq fromspace_end(%rip), %rcx
	cmpq %rbx, %rcx
	sete %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then22646
	movq $0, %rbx
	jmp end22647
then22646:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end22647:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $131, 0(%r11)
	movq %rbx, %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rbx, %rbx
	jmp end22645
then22644:
	movq $1, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22648
	movq $0, %r13
	jmp end22649
then22648:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22649:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -32(%r15)
	movq $2, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22650
	movq $0, %r13
	jmp end22651
then22650:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22651:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -40(%r15)
	movq $3, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22652
	movq $0, %r13
	jmp end22653
then22652:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22653:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -48(%r15)
	movq $4, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22654
	movq $0, %r13
	jmp end22655
then22654:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22655:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -56(%r15)
	movq $5, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22656
	movq $0, %r13
	jmp end22657
then22656:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22657:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -64(%r15)
	movq free_ptr(%rip), %r12
	movq %r12, %r12
	addq $48, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then22658
	movq $0, %r12
	jmp end22659
then22658:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %r12
end22659:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $48, free_ptr(%rip)
	movq %r12, %r11
	movq $3979, 0(%r11)
	movq %r12, %r11
	movq -64(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -56(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -40(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r12, -24(%r15)
	movq $-1, %r12
	movq $-1, %r13
	movq $-1, %r14
	movq $-1, -48(%rbp)
	movq $-1, -56(%rbp)
	movq $-1, -64(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -136(%rbp)
	movq $-1, -144(%rbp)
	movq $-1, -152(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -184(%rbp)
	addq $144, -184(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -200(%rbp)
	movq -184(%rbp), %rax
	cmpq %rax, -200(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -176(%rbp)
	movq $0, %rax
	cmpq -176(%rbp), %rax
	je then22660
	movq $0, -168(%rbp)
	jmp end22661
then22660:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -168(%rbp)
end22661:
	movq -168(%rbp), %rax
	movq %rax, -160(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -72(%r15)
	addq $144, free_ptr(%rip)
	movq -72(%r15), %r11
	movq $35, 0(%r11)
	movq -72(%r15), %r11
	movq -152(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, -208(%rbp)
	movq -72(%r15), %r11
	movq -144(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, -216(%rbp)
	movq -72(%r15), %r11
	movq -136(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, -224(%rbp)
	movq -72(%r15), %r11
	movq -128(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, -232(%rbp)
	movq -72(%r15), %r11
	movq -120(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, -240(%rbp)
	movq -72(%r15), %r11
	movq -112(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, -248(%rbp)
	movq -72(%r15), %r11
	movq -104(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, -256(%rbp)
	movq -72(%r15), %r11
	movq -96(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, -264(%rbp)
	movq -72(%r15), %r11
	movq -88(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, -272(%rbp)
	movq -72(%r15), %r11
	movq -80(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, -280(%rbp)
	movq -72(%r15), %r11
	movq -72(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, -288(%rbp)
	movq -72(%r15), %r11
	movq -64(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, -296(%rbp)
	movq -72(%r15), %r11
	movq -56(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, -304(%rbp)
	movq -72(%r15), %r11
	movq -48(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, -312(%rbp)
	movq -72(%r15), %r11
	movq %r14, 24(%r11)
	movq $0, %r14
	movq -72(%r15), %r11
	movq %r13, 16(%r11)
	movq $0, %r13
	movq -72(%r15), %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq -72(%r15), %r12
	movq -24(%r15), %rax
	movq %rax, -80(%r15)
	movq %r12, -88(%r15)
	movq -24(%r15), %rax
	movq %rax, -96(%r15)
	movq %r12, -104(%r15)
	movq -24(%r15), %rax
	movq %rax, -112(%r15)
	movq %r12, -120(%r15)
	movq -24(%r15), %rax
	movq %rax, -128(%r15)
	movq %r12, -136(%r15)
	movq free_ptr(%rip), %r12
	movq %r12, %r12
	addq $72, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then22662
	movq $0, %r12
	jmp end22663
then22662:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %r12
end22663:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $72, free_ptr(%rip)
	movq %r12, %r11
	movq $32657, 0(%r11)
	movq %r12, %r11
	movq -136(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -128(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -120(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -112(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -104(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -96(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -88(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -80(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r12, %r12
	leaq function3(%rip), %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22664
	movq $0, %r13
	jmp end22665
then22664:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22665:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -144(%r15)
	movq -144(%r15), %r11
	movq 8(%r11), %r12
	leaq function6(%rip), %r13
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -320(%rbp)
	cmpq %r14, -320(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then22666
	movq $0, %r14
	jmp end22667
then22666:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end22667:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %r13, 8(%r11)
	movq $0, %r13
	movq %r14, %r13
	movq %r13, %r11
	movq 8(%r11), %r14
	movq %r13, %rdi
	movq %rbx, %rsi
	movq $1, %rdx
	callq *%r14
	movq %rax, %rbx
	movq -144(%r15), %rdi
	movq %rbx, %rsi
	movq -8(%r15), %rdx
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rbx
end22645:
	movq %rbx, %rax

	addq $320, %rsp
	subq $144, %r15
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq

	.globl function4
function4:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $320, %rsp
	addq $144, %r15
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

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq %rdx, -8(%r15)
	movq $0, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then22668
	movq -8(%r15), %rax
	movq %rax, -16(%r15)
	movq free_ptr(%rip), %rbx
	movq %rbx, %rbx
	addq $16, %rbx
	movq fromspace_end(%rip), %rcx
	cmpq %rbx, %rcx
	sete %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then22670
	movq $0, %rbx
	jmp end22671
then22670:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end22671:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $131, 0(%r11)
	movq %rbx, %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rbx, %rbx
	jmp end22669
then22668:
	movq $1, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22672
	movq $0, %r13
	jmp end22673
then22672:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22673:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -32(%r15)
	movq $2, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22674
	movq $0, %r13
	jmp end22675
then22674:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22675:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -40(%r15)
	movq $3, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22676
	movq $0, %r13
	jmp end22677
then22676:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22677:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -48(%r15)
	movq $4, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22678
	movq $0, %r13
	jmp end22679
then22678:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22679:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -56(%r15)
	movq $5, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22680
	movq $0, %r13
	jmp end22681
then22680:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22681:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -64(%r15)
	movq free_ptr(%rip), %r12
	movq %r12, %r12
	addq $48, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then22682
	movq $0, %r12
	jmp end22683
then22682:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %r12
end22683:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $48, free_ptr(%rip)
	movq %r12, %r11
	movq $3979, 0(%r11)
	movq %r12, %r11
	movq -64(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -56(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -40(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r12, -24(%r15)
	movq $-1, %r12
	movq $-1, %r13
	movq $-1, %r14
	movq $-1, -48(%rbp)
	movq $-1, -56(%rbp)
	movq $-1, -64(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -136(%rbp)
	movq $-1, -144(%rbp)
	movq $-1, -152(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -184(%rbp)
	addq $144, -184(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -200(%rbp)
	movq -184(%rbp), %rax
	cmpq %rax, -200(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -176(%rbp)
	movq $0, %rax
	cmpq -176(%rbp), %rax
	je then22684
	movq $0, -168(%rbp)
	jmp end22685
then22684:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -168(%rbp)
end22685:
	movq -168(%rbp), %rax
	movq %rax, -160(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -72(%r15)
	addq $144, free_ptr(%rip)
	movq -72(%r15), %r11
	movq $35, 0(%r11)
	movq -72(%r15), %r11
	movq -152(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, -208(%rbp)
	movq -72(%r15), %r11
	movq -144(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, -216(%rbp)
	movq -72(%r15), %r11
	movq -136(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, -224(%rbp)
	movq -72(%r15), %r11
	movq -128(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, -232(%rbp)
	movq -72(%r15), %r11
	movq -120(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, -240(%rbp)
	movq -72(%r15), %r11
	movq -112(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, -248(%rbp)
	movq -72(%r15), %r11
	movq -104(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, -256(%rbp)
	movq -72(%r15), %r11
	movq -96(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, -264(%rbp)
	movq -72(%r15), %r11
	movq -88(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, -272(%rbp)
	movq -72(%r15), %r11
	movq -80(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, -280(%rbp)
	movq -72(%r15), %r11
	movq -72(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, -288(%rbp)
	movq -72(%r15), %r11
	movq -64(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, -296(%rbp)
	movq -72(%r15), %r11
	movq -56(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, -304(%rbp)
	movq -72(%r15), %r11
	movq -48(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, -312(%rbp)
	movq -72(%r15), %r11
	movq %r14, 24(%r11)
	movq $0, %r14
	movq -72(%r15), %r11
	movq %r13, 16(%r11)
	movq $0, %r13
	movq -72(%r15), %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq -72(%r15), %r12
	movq -24(%r15), %rax
	movq %rax, -80(%r15)
	movq %r12, -88(%r15)
	movq -24(%r15), %rax
	movq %rax, -96(%r15)
	movq %r12, -104(%r15)
	movq -24(%r15), %rax
	movq %rax, -112(%r15)
	movq %r12, -120(%r15)
	movq -24(%r15), %rax
	movq %rax, -128(%r15)
	movq %r12, -136(%r15)
	movq free_ptr(%rip), %r12
	movq %r12, %r12
	addq $72, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then22686
	movq $0, %r12
	jmp end22687
then22686:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %r12
end22687:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $72, free_ptr(%rip)
	movq %r12, %r11
	movq $32657, 0(%r11)
	movq %r12, %r11
	movq -136(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -128(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -120(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -112(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -104(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -96(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -88(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -80(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r12, %r12
	leaq function4(%rip), %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22688
	movq $0, %r13
	jmp end22689
then22688:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22689:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -144(%r15)
	movq -144(%r15), %r11
	movq 8(%r11), %r12
	leaq function6(%rip), %r13
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -320(%rbp)
	cmpq %r14, -320(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then22690
	movq $0, %r14
	jmp end22691
then22690:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end22691:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %r13, 8(%r11)
	movq $0, %r13
	movq %r14, %r13
	movq %r13, %r11
	movq 8(%r11), %r14
	movq %r13, %rdi
	movq %rbx, %rsi
	movq $1, %rdx
	callq *%r14
	movq %rax, %rbx
	movq -144(%r15), %rdi
	movq %rbx, %rsi
	movq -8(%r15), %rdx
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rbx
end22669:
	movq %rbx, %rax

	addq $320, %rsp
	subq $144, %r15
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq

	.globl function5
function5:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $320, %rsp
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

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then22692
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then22694
	movq $0, %rcx
	jmp end22695
then22694:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end22695:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
	jmp end22693
then22692:
	movq $1, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22696
	movq $0, %r13
	jmp end22697
then22696:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22697:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -16(%r15)
	movq $2, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22698
	movq $0, %r13
	jmp end22699
then22698:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22699:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -24(%r15)
	movq $3, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22700
	movq $0, %r13
	jmp end22701
then22700:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22701:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -32(%r15)
	movq $4, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22702
	movq $0, %r13
	jmp end22703
then22702:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22703:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -40(%r15)
	movq $5, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22704
	movq $0, %r13
	jmp end22705
then22704:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22705:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -48(%r15)
	movq free_ptr(%rip), %r12
	movq %r12, %r12
	addq $48, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then22706
	movq $0, %r12
	jmp end22707
then22706:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %r12
end22707:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $48, free_ptr(%rip)
	movq %r12, %r11
	movq $3979, 0(%r11)
	movq %r12, %r11
	movq -48(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -40(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -32(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -24(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r12, -8(%r15)
	movq $-1, %r12
	movq $-1, %r13
	movq $-1, %r14
	movq $-1, -48(%rbp)
	movq $-1, -56(%rbp)
	movq $-1, -64(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -136(%rbp)
	movq $-1, -144(%rbp)
	movq $-1, -152(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -184(%rbp)
	addq $144, -184(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -200(%rbp)
	movq -184(%rbp), %rax
	cmpq %rax, -200(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -176(%rbp)
	movq $0, %rax
	cmpq -176(%rbp), %rax
	je then22708
	movq $0, -168(%rbp)
	jmp end22709
then22708:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -168(%rbp)
end22709:
	movq -168(%rbp), %rax
	movq %rax, -160(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -56(%r15)
	addq $144, free_ptr(%rip)
	movq -56(%r15), %r11
	movq $35, 0(%r11)
	movq -56(%r15), %r11
	movq -152(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, -208(%rbp)
	movq -56(%r15), %r11
	movq -144(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, -216(%rbp)
	movq -56(%r15), %r11
	movq -136(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, -224(%rbp)
	movq -56(%r15), %r11
	movq -128(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, -232(%rbp)
	movq -56(%r15), %r11
	movq -120(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, -240(%rbp)
	movq -56(%r15), %r11
	movq -112(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, -248(%rbp)
	movq -56(%r15), %r11
	movq -104(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, -256(%rbp)
	movq -56(%r15), %r11
	movq -96(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, -264(%rbp)
	movq -56(%r15), %r11
	movq -88(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, -272(%rbp)
	movq -56(%r15), %r11
	movq -80(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, -280(%rbp)
	movq -56(%r15), %r11
	movq -72(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, -288(%rbp)
	movq -56(%r15), %r11
	movq -64(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, -296(%rbp)
	movq -56(%r15), %r11
	movq -56(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, -304(%rbp)
	movq -56(%r15), %r11
	movq -48(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, -312(%rbp)
	movq -56(%r15), %r11
	movq %r14, 24(%r11)
	movq $0, %r14
	movq -56(%r15), %r11
	movq %r13, 16(%r11)
	movq $0, %r13
	movq -56(%r15), %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq -56(%r15), %r12
	movq -8(%r15), %rax
	movq %rax, -64(%r15)
	movq %r12, -72(%r15)
	movq -8(%r15), %rax
	movq %rax, -80(%r15)
	movq %r12, -88(%r15)
	movq -8(%r15), %rax
	movq %rax, -96(%r15)
	movq %r12, -104(%r15)
	movq -8(%r15), %rax
	movq %rax, -112(%r15)
	movq %r12, -120(%r15)
	movq free_ptr(%rip), %r12
	movq %r12, %r12
	addq $72, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then22710
	movq $0, %r12
	jmp end22711
then22710:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %r12
end22711:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $72, free_ptr(%rip)
	movq %r12, %r11
	movq $32657, 0(%r11)
	movq %r12, %r11
	movq -120(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -112(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -104(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -96(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -88(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -80(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -72(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -64(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r12, %r12
	leaq function5(%rip), %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22712
	movq $0, %r13
	jmp end22713
then22712:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22713:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -128(%r15)
	movq -128(%r15), %r11
	movq 8(%r11), %r12
	leaq function6(%rip), %r13
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -320(%rbp)
	cmpq %r14, -320(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then22714
	movq $0, %r14
	jmp end22715
then22714:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end22715:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %r13, 8(%r11)
	movq $0, %r13
	movq %r14, %r13
	movq %r13, %r11
	movq 8(%r11), %r14
	movq %r13, %rdi
	movq %rbx, %rsi
	movq $1, %rdx
	callq *%r14
	movq %rax, %rbx
	movq -128(%r15), %rdi
	movq %rbx, %rsi
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rbx
end22693:
	movq %rbx, %rax

	addq $320, %rsp
	subq $128, %r15
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq

	.globl function6
function6:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $40, %rsp
	addq $0, %r15

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq %rdx, %rcx
	movq %rcx, %rcx
	negq %rcx
	movq %rbx, %rbx
	addq %rcx, %rbx
	movq %rbx, %rax

	addq $40, %rsp
	subq $0, %r15
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
	subq $288, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $88, %r15
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

	leaq function0(%rip), %rbx
	movq free_ptr(%rip), %r12
	addq $16, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then22716
	movq $0, %r12
	jmp end22717
then22716:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r12
end22717:
	movq free_ptr(%rip), %r12
	addq $16, free_ptr(%rip)
	movq %r12, %r11
	movq $3, 0(%r11)
	movq %r12, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %r12, -8(%r15)
	movq -8(%r15), %r11
	movq 8(%r11), %rbx
	leaq function1(%rip), %r12
	movq free_ptr(%rip), %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22718
	movq $0, %r13
	jmp end22719
then22718:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22719:
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -16(%r15)
	movq -16(%r15), %r11
	movq 8(%r11), %r12
	leaq function2(%rip), %r13
	movq free_ptr(%rip), %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -48(%rbp)
	cmpq %r14, -48(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then22720
	movq $0, %r14
	jmp end22721
then22720:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end22721:
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %r13, 8(%r11)
	movq $0, %r13
	movq %r14, -24(%r15)
	movq -24(%r15), %r11
	movq 8(%r11), %r13
	leaq function3(%rip), %r14
	movq free_ptr(%rip), %rax
	movq %rax, -88(%rbp)
	movq %rax, -80(%rbp)
	addq $16, -80(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -96(%rbp)
	movq -80(%rbp), %rax
	cmpq %rax, -96(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -72(%rbp)
	movq $0, %rax
	cmpq -72(%rbp), %rax
	je then22722
	movq $0, -64(%rbp)
	jmp end22723
then22722:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -64(%rbp)
end22723:
	movq -64(%rbp), %rax
	movq %rax, -56(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -40(%r15)
	addq $16, free_ptr(%rip)
	movq -40(%r15), %r11
	movq $3, 0(%r11)
	movq -40(%r15), %r11
	movq %r14, 8(%r11)
	movq $0, %r14
	movq -40(%r15), %rax
	movq %rax, -32(%r15)
	movq -32(%r15), %r11
	movq 8(%r11), %r14
	leaq function4(%rip), %rax
	movq %rax, -104(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -144(%rbp)
	movq %rax, -136(%rbp)
	addq $16, -136(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -152(%rbp)
	movq -136(%rbp), %rax
	cmpq %rax, -152(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -128(%rbp)
	movq $0, %rax
	cmpq -128(%rbp), %rax
	je then22724
	movq $0, -120(%rbp)
	jmp end22725
then22724:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -120(%rbp)
end22725:
	movq -120(%rbp), %rax
	movq %rax, -112(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -56(%r15)
	addq $16, free_ptr(%rip)
	movq -56(%r15), %r11
	movq $3, 0(%r11)
	movq -56(%r15), %r11
	movq -104(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -160(%rbp)
	movq -56(%r15), %rax
	movq %rax, -48(%r15)
	movq -48(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -168(%rbp)
	leaq function5(%rip), %rax
	movq %rax, -176(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -216(%rbp)
	movq %rax, -208(%rbp)
	addq $16, -208(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -224(%rbp)
	movq -208(%rbp), %rax
	cmpq %rax, -224(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -200(%rbp)
	movq $0, %rax
	cmpq -200(%rbp), %rax
	je then22726
	movq $0, -192(%rbp)
	jmp end22727
then22726:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -192(%rbp)
end22727:
	movq -192(%rbp), %rax
	movq %rax, -184(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -80(%r15)
	addq $16, free_ptr(%rip)
	movq -80(%r15), %r11
	movq $3, 0(%r11)
	movq -80(%r15), %r11
	movq -176(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -232(%rbp)
	movq -80(%r15), %rax
	movq %rax, -72(%r15)
	movq -72(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -240(%rbp)
	movq -72(%r15), %rdi
	movq $20, %rsi
	callq *-240(%rbp)
	movq %rax, -88(%r15)
	movq -48(%r15), %rdi
	movq $20, %rsi
	movq -88(%r15), %rdx
	callq *-168(%rbp)
	movq %rax, -64(%r15)
	movq -32(%r15), %rdi
	movq $20, %rsi
	movq -64(%r15), %rdx
	callq *%r14
	movq %rax, %r14
	movq -24(%r15), %rdi
	movq $20, %rsi
	movq %r14, %rdx
	callq *%r13
	movq %rax, %r13
	movq -16(%r15), %rdi
	movq $20, %rsi
	movq %r13, %rdx
	callq *%r12
	movq %rax, %r12
	movq -8(%r15), %rdi
	movq $20, %rsi
	movq %r12, %rdx
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $88, %r15
	addq $288, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
