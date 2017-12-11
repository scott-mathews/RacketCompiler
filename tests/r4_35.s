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
	cmpq $0, %rbx
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then23561
	movq -8(%r15), %rax
	movq %rax, -16(%r15)
	movq free_ptr(%rip), %rbx
	movq %rbx, %rbx
	addq $16, %rbx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rbx
	setle %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then23563
	movq $0, %rbx
	jmp end23564
then23563:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end23564:
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
	jmp end23562
then23561:
	movq $1, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23565
	movq $0, %r13
	jmp end23566
then23565:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23566:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23567
	movq $0, %r13
	jmp end23568
then23567:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23568:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23569
	movq $0, %r13
	jmp end23570
then23569:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23570:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23571
	movq $0, %r13
	jmp end23572
then23571:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23572:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23573
	movq $0, %r13
	jmp end23574
then23573:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23574:
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
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then23575
	movq $0, %r12
	jmp end23576
then23575:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %r12
end23576:
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
	movq -200(%rbp), %rax
	cmpq %rax, -184(%rbp)
	setle %al
	movzbq %al, %rax
	movq %rax, -176(%rbp)
	movq $0, %rax
	cmpq -176(%rbp), %rax
	je then23577
	movq $0, -168(%rbp)
	jmp end23578
then23577:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -168(%rbp)
end23578:
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
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then23579
	movq $0, %r12
	jmp end23580
then23579:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %r12
end23580:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23581
	movq $0, %r13
	jmp end23582
then23581:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23582:
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
	cmpq -320(%rbp), %r14
	setle %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then23583
	movq $0, %r14
	jmp end23584
then23583:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end23584:
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
end23562:
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
	cmpq $0, %rbx
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then23585
	movq -8(%r15), %rax
	movq %rax, -16(%r15)
	movq free_ptr(%rip), %rbx
	movq %rbx, %rbx
	addq $16, %rbx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rbx
	setle %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then23587
	movq $0, %rbx
	jmp end23588
then23587:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end23588:
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
	jmp end23586
then23585:
	movq $1, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23589
	movq $0, %r13
	jmp end23590
then23589:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23590:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23591
	movq $0, %r13
	jmp end23592
then23591:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23592:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23593
	movq $0, %r13
	jmp end23594
then23593:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23594:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23595
	movq $0, %r13
	jmp end23596
then23595:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23596:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23597
	movq $0, %r13
	jmp end23598
then23597:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23598:
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
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then23599
	movq $0, %r12
	jmp end23600
then23599:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %r12
end23600:
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
	movq -200(%rbp), %rax
	cmpq %rax, -184(%rbp)
	setle %al
	movzbq %al, %rax
	movq %rax, -176(%rbp)
	movq $0, %rax
	cmpq -176(%rbp), %rax
	je then23601
	movq $0, -168(%rbp)
	jmp end23602
then23601:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -168(%rbp)
end23602:
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
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then23603
	movq $0, %r12
	jmp end23604
then23603:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %r12
end23604:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23605
	movq $0, %r13
	jmp end23606
then23605:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23606:
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
	cmpq -320(%rbp), %r14
	setle %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then23607
	movq $0, %r14
	jmp end23608
then23607:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end23608:
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
end23586:
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
	cmpq $0, %rbx
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then23609
	movq -8(%r15), %rax
	movq %rax, -16(%r15)
	movq free_ptr(%rip), %rbx
	movq %rbx, %rbx
	addq $16, %rbx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rbx
	setle %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then23611
	movq $0, %rbx
	jmp end23612
then23611:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end23612:
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
	jmp end23610
then23609:
	movq $1, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23613
	movq $0, %r13
	jmp end23614
then23613:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23614:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23615
	movq $0, %r13
	jmp end23616
then23615:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23616:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23617
	movq $0, %r13
	jmp end23618
then23617:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23618:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23619
	movq $0, %r13
	jmp end23620
then23619:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23620:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23621
	movq $0, %r13
	jmp end23622
then23621:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23622:
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
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then23623
	movq $0, %r12
	jmp end23624
then23623:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %r12
end23624:
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
	movq -200(%rbp), %rax
	cmpq %rax, -184(%rbp)
	setle %al
	movzbq %al, %rax
	movq %rax, -176(%rbp)
	movq $0, %rax
	cmpq -176(%rbp), %rax
	je then23625
	movq $0, -168(%rbp)
	jmp end23626
then23625:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -168(%rbp)
end23626:
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
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then23627
	movq $0, %r12
	jmp end23628
then23627:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %r12
end23628:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23629
	movq $0, %r13
	jmp end23630
then23629:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23630:
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
	cmpq -320(%rbp), %r14
	setle %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then23631
	movq $0, %r14
	jmp end23632
then23631:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end23632:
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
end23610:
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
	cmpq $0, %rbx
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then23633
	movq -8(%r15), %rax
	movq %rax, -16(%r15)
	movq free_ptr(%rip), %rbx
	movq %rbx, %rbx
	addq $16, %rbx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rbx
	setle %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then23635
	movq $0, %rbx
	jmp end23636
then23635:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end23636:
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
	jmp end23634
then23633:
	movq $1, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23637
	movq $0, %r13
	jmp end23638
then23637:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23638:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23639
	movq $0, %r13
	jmp end23640
then23639:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23640:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23641
	movq $0, %r13
	jmp end23642
then23641:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23642:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23643
	movq $0, %r13
	jmp end23644
then23643:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23644:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23645
	movq $0, %r13
	jmp end23646
then23645:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23646:
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
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then23647
	movq $0, %r12
	jmp end23648
then23647:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %r12
end23648:
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
	movq -200(%rbp), %rax
	cmpq %rax, -184(%rbp)
	setle %al
	movzbq %al, %rax
	movq %rax, -176(%rbp)
	movq $0, %rax
	cmpq -176(%rbp), %rax
	je then23649
	movq $0, -168(%rbp)
	jmp end23650
then23649:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -168(%rbp)
end23650:
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
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then23651
	movq $0, %r12
	jmp end23652
then23651:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %r12
end23652:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23653
	movq $0, %r13
	jmp end23654
then23653:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23654:
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
	cmpq -320(%rbp), %r14
	setle %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then23655
	movq $0, %r14
	jmp end23656
then23655:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end23656:
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
end23634:
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
	cmpq $0, %rbx
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then23657
	movq -8(%r15), %rax
	movq %rax, -16(%r15)
	movq free_ptr(%rip), %rbx
	movq %rbx, %rbx
	addq $16, %rbx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rbx
	setle %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then23659
	movq $0, %rbx
	jmp end23660
then23659:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end23660:
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
	jmp end23658
then23657:
	movq $1, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23661
	movq $0, %r13
	jmp end23662
then23661:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23662:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23663
	movq $0, %r13
	jmp end23664
then23663:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23664:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23665
	movq $0, %r13
	jmp end23666
then23665:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23666:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23667
	movq $0, %r13
	jmp end23668
then23667:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23668:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23669
	movq $0, %r13
	jmp end23670
then23669:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23670:
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
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then23671
	movq $0, %r12
	jmp end23672
then23671:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %r12
end23672:
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
	movq -200(%rbp), %rax
	cmpq %rax, -184(%rbp)
	setle %al
	movzbq %al, %rax
	movq %rax, -176(%rbp)
	movq $0, %rax
	cmpq -176(%rbp), %rax
	je then23673
	movq $0, -168(%rbp)
	jmp end23674
then23673:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -168(%rbp)
end23674:
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
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then23675
	movq $0, %r12
	jmp end23676
then23675:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %r12
end23676:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23677
	movq $0, %r13
	jmp end23678
then23677:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23678:
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
	cmpq -320(%rbp), %r14
	setle %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then23679
	movq $0, %r14
	jmp end23680
then23679:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end23680:
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
end23658:
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
	cmpq $0, %rbx
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then23681
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	setle %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then23683
	movq $0, %rcx
	jmp end23684
then23683:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end23684:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
	jmp end23682
then23681:
	movq $1, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23685
	movq $0, %r13
	jmp end23686
then23685:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23686:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23687
	movq $0, %r13
	jmp end23688
then23687:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23688:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23689
	movq $0, %r13
	jmp end23690
then23689:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23690:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23691
	movq $0, %r13
	jmp end23692
then23691:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23692:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23693
	movq $0, %r13
	jmp end23694
then23693:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23694:
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
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then23695
	movq $0, %r12
	jmp end23696
then23695:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %r12
end23696:
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
	movq -200(%rbp), %rax
	cmpq %rax, -184(%rbp)
	setle %al
	movzbq %al, %rax
	movq %rax, -176(%rbp)
	movq $0, %rax
	cmpq -176(%rbp), %rax
	je then23697
	movq $0, -168(%rbp)
	jmp end23698
then23697:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -168(%rbp)
end23698:
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
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then23699
	movq $0, %r12
	jmp end23700
then23699:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %r12
end23700:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23701
	movq $0, %r13
	jmp end23702
then23701:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23702:
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
	cmpq -320(%rbp), %r14
	setle %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then23703
	movq $0, %r14
	jmp end23704
then23703:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end23704:
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
end23682:
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
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then23705
	movq $0, %r12
	jmp end23706
then23705:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r12
end23706:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then23707
	movq $0, %r13
	jmp end23708
then23707:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end23708:
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
	cmpq -48(%rbp), %r14
	setle %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then23709
	movq $0, %r14
	jmp end23710
then23709:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end23710:
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
	cmpq %rax, -80(%rbp)
	setle %al
	movzbq %al, %rax
	movq %rax, -72(%rbp)
	movq $0, %rax
	cmpq -72(%rbp), %rax
	je then23711
	movq $0, -64(%rbp)
	jmp end23712
then23711:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -64(%rbp)
end23712:
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
	cmpq %rax, -136(%rbp)
	setle %al
	movzbq %al, %rax
	movq %rax, -128(%rbp)
	movq $0, %rax
	cmpq -128(%rbp), %rax
	je then23713
	movq $0, -120(%rbp)
	jmp end23714
then23713:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -120(%rbp)
end23714:
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
	cmpq %rax, -208(%rbp)
	setle %al
	movzbq %al, %rax
	movq %rax, -200(%rbp)
	movq $0, %rax
	cmpq -200(%rbp), %rax
	je then23715
	movq $0, -192(%rbp)
	jmp end23716
then23715:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -192(%rbp)
end23716:
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
