	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $432, %rsp
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
	je then22516
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
	je then22518
	movq $0, %rbx
	jmp end22519
then22518:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end22519:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $131, 0(%r11)
	movq %rbx, %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rcx, %rcx
	movq %rbx, %rbx
	jmp end22517
then22516:
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
	je then22520
	movq $0, %r13
	jmp end22521
then22520:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22521:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
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
	je then22522
	movq $0, %r13
	jmp end22523
then22522:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22523:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
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
	je then22524
	movq $0, %r13
	jmp end22525
then22524:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22525:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
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
	je then22526
	movq $0, %r13
	jmp end22527
then22526:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22527:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
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
	je then22528
	movq $0, %r13
	jmp end22529
then22528:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22529:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
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
	je then22530
	movq $0, %r12
	jmp end22531
then22530:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %r12
end22531:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $48, free_ptr(%rip)
	movq %r12, %r11
	movq $3979, 0(%r11)
	movq %r12, %r11
	movq -64(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -56(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -40(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r13, %r13
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
	je then22532
	movq $0, -168(%rbp)
	jmp end22533
then22532:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -168(%rbp)
end22533:
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
	movq $0, -216(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -208(%rbp)
	movq -72(%r15), %r11
	movq -144(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, -232(%rbp)
	movq -232(%rbp), %rax
	movq %rax, -224(%rbp)
	movq -72(%r15), %r11
	movq -136(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, -248(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -240(%rbp)
	movq -72(%r15), %r11
	movq -128(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, -264(%rbp)
	movq -264(%rbp), %rax
	movq %rax, -256(%rbp)
	movq -72(%r15), %r11
	movq -120(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, -280(%rbp)
	movq -280(%rbp), %rax
	movq %rax, -272(%rbp)
	movq -72(%r15), %r11
	movq -112(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, -296(%rbp)
	movq -296(%rbp), %rax
	movq %rax, -288(%rbp)
	movq -72(%r15), %r11
	movq -104(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, -312(%rbp)
	movq -312(%rbp), %rax
	movq %rax, -304(%rbp)
	movq -72(%r15), %r11
	movq -96(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, -328(%rbp)
	movq -328(%rbp), %rax
	movq %rax, -320(%rbp)
	movq -72(%r15), %r11
	movq -88(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, -344(%rbp)
	movq -344(%rbp), %rax
	movq %rax, -336(%rbp)
	movq -72(%r15), %r11
	movq -80(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, -360(%rbp)
	movq -360(%rbp), %rax
	movq %rax, -352(%rbp)
	movq -72(%r15), %r11
	movq -72(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, -376(%rbp)
	movq -376(%rbp), %rax
	movq %rax, -368(%rbp)
	movq -72(%r15), %r11
	movq -64(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, -392(%rbp)
	movq -392(%rbp), %rax
	movq %rax, -384(%rbp)
	movq -72(%r15), %r11
	movq -56(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, -408(%rbp)
	movq -408(%rbp), %rax
	movq %rax, -400(%rbp)
	movq -72(%r15), %r11
	movq -48(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, -424(%rbp)
	movq -424(%rbp), %rax
	movq %rax, -416(%rbp)
	movq -72(%r15), %r11
	movq %r14, 24(%r11)
	movq $0, %r14
	movq %r14, %r14
	movq -72(%r15), %r11
	movq %r13, 16(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq -72(%r15), %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
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
	je then22534
	movq $0, %r12
	jmp end22535
then22534:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %r12
end22535:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $72, free_ptr(%rip)
	movq %r12, %r11
	movq $32657, 0(%r11)
	movq %r12, %r11
	movq -136(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -128(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -120(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -112(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -104(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -96(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -88(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -80(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r12
	leaq function0(%rip), %r12
	movq %r12, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22536
	movq $0, %r13
	jmp end22537
then22536:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22537:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
	movq %r13, -144(%r15)
	movq -144(%r15), %r11
	movq 8(%r11), %r12
	leaq function6(%rip), %r13
	movq %r13, %r13
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -432(%rbp)
	cmpq %r14, -432(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then22538
	movq $0, %r14
	jmp end22539
then22538:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end22539:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %r13, 8(%r11)
	movq $0, %r13
	movq %r13, %r13
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
end22517:
	movq %rbx, %rax

	addq $432, %rsp
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
	subq $432, %rsp
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
	je then22540
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
	je then22542
	movq $0, %rbx
	jmp end22543
then22542:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end22543:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $131, 0(%r11)
	movq %rbx, %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rcx, %rcx
	movq %rbx, %rbx
	jmp end22541
then22540:
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
	je then22544
	movq $0, %r13
	jmp end22545
then22544:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22545:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
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
	je then22546
	movq $0, %r13
	jmp end22547
then22546:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22547:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
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
	je then22548
	movq $0, %r13
	jmp end22549
then22548:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22549:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
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
	je then22550
	movq $0, %r13
	jmp end22551
then22550:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22551:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
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
	je then22552
	movq $0, %r13
	jmp end22553
then22552:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22553:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
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
	je then22554
	movq $0, %r12
	jmp end22555
then22554:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %r12
end22555:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $48, free_ptr(%rip)
	movq %r12, %r11
	movq $3979, 0(%r11)
	movq %r12, %r11
	movq -64(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -56(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -40(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r13, %r13
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
	je then22556
	movq $0, -168(%rbp)
	jmp end22557
then22556:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -168(%rbp)
end22557:
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
	movq $0, -216(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -208(%rbp)
	movq -72(%r15), %r11
	movq -144(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, -232(%rbp)
	movq -232(%rbp), %rax
	movq %rax, -224(%rbp)
	movq -72(%r15), %r11
	movq -136(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, -248(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -240(%rbp)
	movq -72(%r15), %r11
	movq -128(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, -264(%rbp)
	movq -264(%rbp), %rax
	movq %rax, -256(%rbp)
	movq -72(%r15), %r11
	movq -120(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, -280(%rbp)
	movq -280(%rbp), %rax
	movq %rax, -272(%rbp)
	movq -72(%r15), %r11
	movq -112(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, -296(%rbp)
	movq -296(%rbp), %rax
	movq %rax, -288(%rbp)
	movq -72(%r15), %r11
	movq -104(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, -312(%rbp)
	movq -312(%rbp), %rax
	movq %rax, -304(%rbp)
	movq -72(%r15), %r11
	movq -96(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, -328(%rbp)
	movq -328(%rbp), %rax
	movq %rax, -320(%rbp)
	movq -72(%r15), %r11
	movq -88(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, -344(%rbp)
	movq -344(%rbp), %rax
	movq %rax, -336(%rbp)
	movq -72(%r15), %r11
	movq -80(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, -360(%rbp)
	movq -360(%rbp), %rax
	movq %rax, -352(%rbp)
	movq -72(%r15), %r11
	movq -72(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, -376(%rbp)
	movq -376(%rbp), %rax
	movq %rax, -368(%rbp)
	movq -72(%r15), %r11
	movq -64(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, -392(%rbp)
	movq -392(%rbp), %rax
	movq %rax, -384(%rbp)
	movq -72(%r15), %r11
	movq -56(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, -408(%rbp)
	movq -408(%rbp), %rax
	movq %rax, -400(%rbp)
	movq -72(%r15), %r11
	movq -48(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, -424(%rbp)
	movq -424(%rbp), %rax
	movq %rax, -416(%rbp)
	movq -72(%r15), %r11
	movq %r14, 24(%r11)
	movq $0, %r14
	movq %r14, %r14
	movq -72(%r15), %r11
	movq %r13, 16(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq -72(%r15), %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
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
	je then22558
	movq $0, %r12
	jmp end22559
then22558:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %r12
end22559:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $72, free_ptr(%rip)
	movq %r12, %r11
	movq $32657, 0(%r11)
	movq %r12, %r11
	movq -136(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -128(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -120(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -112(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -104(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -96(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -88(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -80(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r12
	leaq function1(%rip), %r12
	movq %r12, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22560
	movq $0, %r13
	jmp end22561
then22560:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22561:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
	movq %r13, -144(%r15)
	movq -144(%r15), %r11
	movq 8(%r11), %r12
	leaq function6(%rip), %r13
	movq %r13, %r13
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -432(%rbp)
	cmpq %r14, -432(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then22562
	movq $0, %r14
	jmp end22563
then22562:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end22563:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %r13, 8(%r11)
	movq $0, %r13
	movq %r13, %r13
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
end22541:
	movq %rbx, %rax

	addq $432, %rsp
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
	subq $432, %rsp
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
	je then22564
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
	je then22566
	movq $0, %rbx
	jmp end22567
then22566:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end22567:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $131, 0(%r11)
	movq %rbx, %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rcx, %rcx
	movq %rbx, %rbx
	jmp end22565
then22564:
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
	je then22568
	movq $0, %r13
	jmp end22569
then22568:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22569:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
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
	je then22570
	movq $0, %r13
	jmp end22571
then22570:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22571:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
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
	je then22572
	movq $0, %r13
	jmp end22573
then22572:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22573:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
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
	je then22574
	movq $0, %r13
	jmp end22575
then22574:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22575:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
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
	movq %r12, %r12
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
	je then22578
	movq $0, %r12
	jmp end22579
then22578:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %r12
end22579:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $48, free_ptr(%rip)
	movq %r12, %r11
	movq $3979, 0(%r11)
	movq %r12, %r11
	movq -64(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -56(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -40(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r13, %r13
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
	je then22580
	movq $0, -168(%rbp)
	jmp end22581
then22580:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -168(%rbp)
end22581:
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
	movq $0, -216(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -208(%rbp)
	movq -72(%r15), %r11
	movq -144(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, -232(%rbp)
	movq -232(%rbp), %rax
	movq %rax, -224(%rbp)
	movq -72(%r15), %r11
	movq -136(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, -248(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -240(%rbp)
	movq -72(%r15), %r11
	movq -128(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, -264(%rbp)
	movq -264(%rbp), %rax
	movq %rax, -256(%rbp)
	movq -72(%r15), %r11
	movq -120(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, -280(%rbp)
	movq -280(%rbp), %rax
	movq %rax, -272(%rbp)
	movq -72(%r15), %r11
	movq -112(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, -296(%rbp)
	movq -296(%rbp), %rax
	movq %rax, -288(%rbp)
	movq -72(%r15), %r11
	movq -104(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, -312(%rbp)
	movq -312(%rbp), %rax
	movq %rax, -304(%rbp)
	movq -72(%r15), %r11
	movq -96(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, -328(%rbp)
	movq -328(%rbp), %rax
	movq %rax, -320(%rbp)
	movq -72(%r15), %r11
	movq -88(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, -344(%rbp)
	movq -344(%rbp), %rax
	movq %rax, -336(%rbp)
	movq -72(%r15), %r11
	movq -80(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, -360(%rbp)
	movq -360(%rbp), %rax
	movq %rax, -352(%rbp)
	movq -72(%r15), %r11
	movq -72(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, -376(%rbp)
	movq -376(%rbp), %rax
	movq %rax, -368(%rbp)
	movq -72(%r15), %r11
	movq -64(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, -392(%rbp)
	movq -392(%rbp), %rax
	movq %rax, -384(%rbp)
	movq -72(%r15), %r11
	movq -56(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, -408(%rbp)
	movq -408(%rbp), %rax
	movq %rax, -400(%rbp)
	movq -72(%r15), %r11
	movq -48(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, -424(%rbp)
	movq -424(%rbp), %rax
	movq %rax, -416(%rbp)
	movq -72(%r15), %r11
	movq %r14, 24(%r11)
	movq $0, %r14
	movq %r14, %r14
	movq -72(%r15), %r11
	movq %r13, 16(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq -72(%r15), %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
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
	je then22582
	movq $0, %r12
	jmp end22583
then22582:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %r12
end22583:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $72, free_ptr(%rip)
	movq %r12, %r11
	movq $32657, 0(%r11)
	movq %r12, %r11
	movq -136(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -128(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -120(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -112(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -104(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -96(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -88(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -80(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r12
	leaq function2(%rip), %r12
	movq %r12, %r12
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
	movq %r12, %r12
	movq %r13, -144(%r15)
	movq -144(%r15), %r11
	movq 8(%r11), %r12
	leaq function6(%rip), %r13
	movq %r13, %r13
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -432(%rbp)
	cmpq %r14, -432(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then22586
	movq $0, %r14
	jmp end22587
then22586:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end22587:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %r13, 8(%r11)
	movq $0, %r13
	movq %r13, %r13
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
end22565:
	movq %rbx, %rax

	addq $432, %rsp
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
	subq $432, %rsp
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
	je then22588
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
	je then22590
	movq $0, %rbx
	jmp end22591
then22590:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end22591:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $131, 0(%r11)
	movq %rbx, %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rcx, %rcx
	movq %rbx, %rbx
	jmp end22589
then22588:
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
	movq %r12, %r12
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
	je then22594
	movq $0, %r13
	jmp end22595
then22594:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22595:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
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
	je then22596
	movq $0, %r13
	jmp end22597
then22596:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22597:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
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
	je then22598
	movq $0, %r13
	jmp end22599
then22598:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22599:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
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
	movq %r12, %r12
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
	je then22602
	movq $0, %r12
	jmp end22603
then22602:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %r12
end22603:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $48, free_ptr(%rip)
	movq %r12, %r11
	movq $3979, 0(%r11)
	movq %r12, %r11
	movq -64(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -56(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -40(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r13, %r13
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
	je then22604
	movq $0, -168(%rbp)
	jmp end22605
then22604:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -168(%rbp)
end22605:
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
	movq $0, -216(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -208(%rbp)
	movq -72(%r15), %r11
	movq -144(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, -232(%rbp)
	movq -232(%rbp), %rax
	movq %rax, -224(%rbp)
	movq -72(%r15), %r11
	movq -136(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, -248(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -240(%rbp)
	movq -72(%r15), %r11
	movq -128(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, -264(%rbp)
	movq -264(%rbp), %rax
	movq %rax, -256(%rbp)
	movq -72(%r15), %r11
	movq -120(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, -280(%rbp)
	movq -280(%rbp), %rax
	movq %rax, -272(%rbp)
	movq -72(%r15), %r11
	movq -112(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, -296(%rbp)
	movq -296(%rbp), %rax
	movq %rax, -288(%rbp)
	movq -72(%r15), %r11
	movq -104(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, -312(%rbp)
	movq -312(%rbp), %rax
	movq %rax, -304(%rbp)
	movq -72(%r15), %r11
	movq -96(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, -328(%rbp)
	movq -328(%rbp), %rax
	movq %rax, -320(%rbp)
	movq -72(%r15), %r11
	movq -88(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, -344(%rbp)
	movq -344(%rbp), %rax
	movq %rax, -336(%rbp)
	movq -72(%r15), %r11
	movq -80(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, -360(%rbp)
	movq -360(%rbp), %rax
	movq %rax, -352(%rbp)
	movq -72(%r15), %r11
	movq -72(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, -376(%rbp)
	movq -376(%rbp), %rax
	movq %rax, -368(%rbp)
	movq -72(%r15), %r11
	movq -64(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, -392(%rbp)
	movq -392(%rbp), %rax
	movq %rax, -384(%rbp)
	movq -72(%r15), %r11
	movq -56(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, -408(%rbp)
	movq -408(%rbp), %rax
	movq %rax, -400(%rbp)
	movq -72(%r15), %r11
	movq -48(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, -424(%rbp)
	movq -424(%rbp), %rax
	movq %rax, -416(%rbp)
	movq -72(%r15), %r11
	movq %r14, 24(%r11)
	movq $0, %r14
	movq %r14, %r14
	movq -72(%r15), %r11
	movq %r13, 16(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq -72(%r15), %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
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
	je then22606
	movq $0, %r12
	jmp end22607
then22606:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %r12
end22607:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $72, free_ptr(%rip)
	movq %r12, %r11
	movq $32657, 0(%r11)
	movq %r12, %r11
	movq -136(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -128(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -120(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -112(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -104(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -96(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -88(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -80(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r12
	leaq function3(%rip), %r12
	movq %r12, %r12
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
	movq %r12, %r12
	movq %r13, -144(%r15)
	movq -144(%r15), %r11
	movq 8(%r11), %r12
	leaq function6(%rip), %r13
	movq %r13, %r13
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -432(%rbp)
	cmpq %r14, -432(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then22610
	movq $0, %r14
	jmp end22611
then22610:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end22611:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %r13, 8(%r11)
	movq $0, %r13
	movq %r13, %r13
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
end22589:
	movq %rbx, %rax

	addq $432, %rsp
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
	subq $432, %rsp
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
	je then22612
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
	je then22614
	movq $0, %rbx
	jmp end22615
then22614:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end22615:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $131, 0(%r11)
	movq %rbx, %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rcx, %rcx
	movq %rbx, %rbx
	jmp end22613
then22612:
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
	movq %r12, %r12
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
	je then22618
	movq $0, %r13
	jmp end22619
then22618:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22619:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
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
	je then22620
	movq $0, %r13
	jmp end22621
then22620:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22621:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
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
	je then22622
	movq $0, %r13
	jmp end22623
then22622:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22623:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
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
	movq %r12, %r12
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
	je then22626
	movq $0, %r12
	jmp end22627
then22626:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %r12
end22627:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $48, free_ptr(%rip)
	movq %r12, %r11
	movq $3979, 0(%r11)
	movq %r12, %r11
	movq -64(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -56(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -40(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r13, %r13
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
	je then22628
	movq $0, -168(%rbp)
	jmp end22629
then22628:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -168(%rbp)
end22629:
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
	movq $0, -216(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -208(%rbp)
	movq -72(%r15), %r11
	movq -144(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, -232(%rbp)
	movq -232(%rbp), %rax
	movq %rax, -224(%rbp)
	movq -72(%r15), %r11
	movq -136(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, -248(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -240(%rbp)
	movq -72(%r15), %r11
	movq -128(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, -264(%rbp)
	movq -264(%rbp), %rax
	movq %rax, -256(%rbp)
	movq -72(%r15), %r11
	movq -120(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, -280(%rbp)
	movq -280(%rbp), %rax
	movq %rax, -272(%rbp)
	movq -72(%r15), %r11
	movq -112(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, -296(%rbp)
	movq -296(%rbp), %rax
	movq %rax, -288(%rbp)
	movq -72(%r15), %r11
	movq -104(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, -312(%rbp)
	movq -312(%rbp), %rax
	movq %rax, -304(%rbp)
	movq -72(%r15), %r11
	movq -96(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, -328(%rbp)
	movq -328(%rbp), %rax
	movq %rax, -320(%rbp)
	movq -72(%r15), %r11
	movq -88(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, -344(%rbp)
	movq -344(%rbp), %rax
	movq %rax, -336(%rbp)
	movq -72(%r15), %r11
	movq -80(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, -360(%rbp)
	movq -360(%rbp), %rax
	movq %rax, -352(%rbp)
	movq -72(%r15), %r11
	movq -72(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, -376(%rbp)
	movq -376(%rbp), %rax
	movq %rax, -368(%rbp)
	movq -72(%r15), %r11
	movq -64(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, -392(%rbp)
	movq -392(%rbp), %rax
	movq %rax, -384(%rbp)
	movq -72(%r15), %r11
	movq -56(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, -408(%rbp)
	movq -408(%rbp), %rax
	movq %rax, -400(%rbp)
	movq -72(%r15), %r11
	movq -48(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, -424(%rbp)
	movq -424(%rbp), %rax
	movq %rax, -416(%rbp)
	movq -72(%r15), %r11
	movq %r14, 24(%r11)
	movq $0, %r14
	movq %r14, %r14
	movq -72(%r15), %r11
	movq %r13, 16(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq -72(%r15), %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
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
	je then22630
	movq $0, %r12
	jmp end22631
then22630:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %r12
end22631:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $72, free_ptr(%rip)
	movq %r12, %r11
	movq $32657, 0(%r11)
	movq %r12, %r11
	movq -136(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -128(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -120(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -112(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -104(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -96(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -88(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -80(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r12
	leaq function4(%rip), %r12
	movq %r12, %r12
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
	movq %r12, %r12
	movq %r13, -144(%r15)
	movq -144(%r15), %r11
	movq 8(%r11), %r12
	leaq function6(%rip), %r13
	movq %r13, %r13
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -432(%rbp)
	cmpq %r14, -432(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then22634
	movq $0, %r14
	jmp end22635
then22634:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end22635:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %r13, 8(%r11)
	movq $0, %r13
	movq %r13, %r13
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
end22613:
	movq %rbx, %rax

	addq $432, %rsp
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
	subq $432, %rsp
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
	je then22636
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
	je then22638
	movq $0, %rcx
	jmp end22639
then22638:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end22639:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	jmp end22637
then22636:
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
	movq %r12, %r12
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
	je then22642
	movq $0, %r13
	jmp end22643
then22642:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22643:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
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
	je then22644
	movq $0, %r13
	jmp end22645
then22644:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22645:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
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
	je then22646
	movq $0, %r13
	jmp end22647
then22646:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22647:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
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
	movq %r12, %r12
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
	je then22650
	movq $0, %r12
	jmp end22651
then22650:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %r12
end22651:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $48, free_ptr(%rip)
	movq %r12, %r11
	movq $3979, 0(%r11)
	movq %r12, %r11
	movq -48(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -40(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -32(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -24(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r13, %r13
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
	je then22652
	movq $0, -168(%rbp)
	jmp end22653
then22652:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -168(%rbp)
end22653:
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
	movq $0, -216(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -208(%rbp)
	movq -56(%r15), %r11
	movq -144(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, -232(%rbp)
	movq -232(%rbp), %rax
	movq %rax, -224(%rbp)
	movq -56(%r15), %r11
	movq -136(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, -248(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -240(%rbp)
	movq -56(%r15), %r11
	movq -128(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, -264(%rbp)
	movq -264(%rbp), %rax
	movq %rax, -256(%rbp)
	movq -56(%r15), %r11
	movq -120(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, -280(%rbp)
	movq -280(%rbp), %rax
	movq %rax, -272(%rbp)
	movq -56(%r15), %r11
	movq -112(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, -296(%rbp)
	movq -296(%rbp), %rax
	movq %rax, -288(%rbp)
	movq -56(%r15), %r11
	movq -104(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, -312(%rbp)
	movq -312(%rbp), %rax
	movq %rax, -304(%rbp)
	movq -56(%r15), %r11
	movq -96(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, -328(%rbp)
	movq -328(%rbp), %rax
	movq %rax, -320(%rbp)
	movq -56(%r15), %r11
	movq -88(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, -344(%rbp)
	movq -344(%rbp), %rax
	movq %rax, -336(%rbp)
	movq -56(%r15), %r11
	movq -80(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, -360(%rbp)
	movq -360(%rbp), %rax
	movq %rax, -352(%rbp)
	movq -56(%r15), %r11
	movq -72(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, -376(%rbp)
	movq -376(%rbp), %rax
	movq %rax, -368(%rbp)
	movq -56(%r15), %r11
	movq -64(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, -392(%rbp)
	movq -392(%rbp), %rax
	movq %rax, -384(%rbp)
	movq -56(%r15), %r11
	movq -56(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, -408(%rbp)
	movq -408(%rbp), %rax
	movq %rax, -400(%rbp)
	movq -56(%r15), %r11
	movq -48(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, -424(%rbp)
	movq -424(%rbp), %rax
	movq %rax, -416(%rbp)
	movq -56(%r15), %r11
	movq %r14, 24(%r11)
	movq $0, %r14
	movq %r14, %r14
	movq -56(%r15), %r11
	movq %r13, 16(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq -56(%r15), %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
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
	je then22654
	movq $0, %r12
	jmp end22655
then22654:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %r12
end22655:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $72, free_ptr(%rip)
	movq %r12, %r11
	movq $32657, 0(%r11)
	movq %r12, %r11
	movq -120(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -112(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -104(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -96(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -88(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -80(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -72(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -64(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r12
	leaq function5(%rip), %r12
	movq %r12, %r12
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
	movq %r12, %r12
	movq %r13, -128(%r15)
	movq -128(%r15), %r11
	movq 8(%r11), %r12
	leaq function6(%rip), %r13
	movq %r13, %r13
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -432(%rbp)
	cmpq %r14, -432(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then22658
	movq $0, %r14
	jmp end22659
then22658:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end22659:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %r13, 8(%r11)
	movq $0, %r13
	movq %r13, %r13
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
end22637:
	movq %rbx, %rax

	addq $432, %rsp
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
	subq $320, %rsp
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
	movq %rbx, %rbx
	movq free_ptr(%rip), %r12
	movq %r12, %r12
	addq $16, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then22660
	movq $0, %r12
	jmp end22661
then22660:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r12
end22661:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $16, free_ptr(%rip)
	movq %r12, %r11
	movq $3, 0(%r11)
	movq %r12, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %r12, -8(%r15)
	movq -8(%r15), %r11
	movq 8(%r11), %rbx
	leaq function1(%rip), %r12
	movq %r12, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then22662
	movq $0, %r13
	jmp end22663
then22662:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end22663:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
	movq %r13, -16(%r15)
	movq -16(%r15), %r11
	movq 8(%r11), %r12
	leaq function2(%rip), %r13
	movq %r13, %r13
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -48(%rbp)
	cmpq %r14, -48(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then22664
	movq $0, %r14
	jmp end22665
then22664:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end22665:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %r13, 8(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r14, -24(%r15)
	movq -24(%r15), %r11
	movq 8(%r11), %r13
	leaq function3(%rip), %r14
	movq %r14, %r14
	movq free_ptr(%rip), %rax
	movq %rax, -88(%rbp)
	movq -88(%rbp), %rax
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
	je then22666
	movq $0, -64(%rbp)
	jmp end22667
then22666:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -64(%rbp)
end22667:
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
	movq %r14, %r14
	movq -40(%r15), %rax
	movq %rax, -32(%r15)
	movq -32(%r15), %r11
	movq 8(%r11), %r14
	leaq function4(%rip), %rax
	movq %rax, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -104(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -152(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -144(%rbp)
	addq $16, -144(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -160(%rbp)
	movq -144(%rbp), %rax
	cmpq %rax, -160(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -136(%rbp)
	movq $0, %rax
	cmpq -136(%rbp), %rax
	je then22668
	movq $0, -128(%rbp)
	jmp end22669
then22668:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -128(%rbp)
end22669:
	movq -128(%rbp), %rax
	movq %rax, -120(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -56(%r15)
	addq $16, free_ptr(%rip)
	movq -56(%r15), %r11
	movq $3, 0(%r11)
	movq -56(%r15), %r11
	movq -104(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -176(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -168(%rbp)
	movq -56(%r15), %rax
	movq %rax, -48(%r15)
	movq -48(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -184(%rbp)
	leaq function5(%rip), %rax
	movq %rax, -200(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -192(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -240(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -232(%rbp)
	addq $16, -232(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -248(%rbp)
	movq -232(%rbp), %rax
	cmpq %rax, -248(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -224(%rbp)
	movq $0, %rax
	cmpq -224(%rbp), %rax
	je then22670
	movq $0, -216(%rbp)
	jmp end22671
then22670:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -216(%rbp)
end22671:
	movq -216(%rbp), %rax
	movq %rax, -208(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -80(%r15)
	addq $16, free_ptr(%rip)
	movq -80(%r15), %r11
	movq $3, 0(%r11)
	movq -80(%r15), %r11
	movq -192(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -264(%rbp)
	movq -264(%rbp), %rax
	movq %rax, -256(%rbp)
	movq -80(%r15), %rax
	movq %rax, -72(%r15)
	movq -72(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -272(%rbp)
	movq -72(%r15), %rdi
	movq $20, %rsi
	callq *-272(%rbp)
	movq %rax, -88(%r15)
	movq -48(%r15), %rdi
	movq $20, %rsi
	movq -88(%r15), %rdx
	callq *-184(%rbp)
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
	addq $320, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
