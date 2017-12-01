	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $776, %rsp
	addq $208, %r15
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

	movq %rdi, -344(%rbp)
	movq %rsi, -712(%rbp)
	movq $0, %rax
	cmpq -712(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -392(%rbp)
	cmpq $1, -392(%rbp)
	je then378506
	leaq function0(%rip), %rax
	movq %rax, -312(%rbp)
	movq -312(%rbp), %rax
	movq %rax, -320(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -464(%rbp)
	movq -464(%rbp), %rax
	movq %rax, -240(%rbp)
	addq $16, -240(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -136(%rbp)
	movq -240(%rbp), %rax
	cmpq %rax, -136(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -736(%rbp)
	cmpq $1, -736(%rbp)
	je then378508
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -368(%rbp)
	jmp end378509
then378508:
	movq $0, -120(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -368(%rbp)
end378509:
	movq -368(%rbp), %rax
	movq %rax, -616(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -200(%r15)
	addq $16, free_ptr(%rip)
	movq -200(%r15), %r11
	movq $3, 0(%r11)
	movq -200(%r15), %rax
	movq %rax, -32(%r15)
	movq -32(%r15), %r11
	movq -320(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -448(%rbp)
	movq -32(%r15), %rax
	movq %rax, -88(%r15)
	movq -88(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -488(%rbp)
	leaq function4(%rip), %rax
	movq %rax, -432(%rbp)
	movq -432(%rbp), %rax
	movq %rax, -104(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -232(%rbp)
	movq -232(%rbp), %rax
	movq %rax, -536(%rbp)
	addq $16, -536(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -624(%rbp)
	movq -536(%rbp), %rax
	cmpq %rax, -624(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -440(%rbp)
	cmpq $1, -440(%rbp)
	je then378510
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -768(%rbp)
	jmp end378511
then378510:
	movq $0, -608(%rbp)
	movq -608(%rbp), %rax
	movq %rax, -768(%rbp)
end378511:
	movq -768(%rbp), %rax
	movq %rax, -152(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -168(%r15)
	addq $16, free_ptr(%rip)
	movq -168(%r15), %r11
	movq $3, 0(%r11)
	movq -168(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq -104(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -600(%rbp)
	movq -600(%rbp), %rax
	movq %rax, -224(%rbp)
	movq -8(%r15), %rax
	movq %rax, -128(%r15)
	movq -128(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -184(%rbp)
	movq -712(%rbp), %rax
	movq %rax, -704(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -696(%rbp)
	movq -696(%rbp), %rax
	movq %rax, -272(%rbp)
	addq $16, -272(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -304(%rbp)
	movq -272(%rbp), %rax
	cmpq %rax, -304(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -528(%rbp)
	cmpq $1, -528(%rbp)
	je then378512
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -88(%rbp)
	jmp end378513
then378512:
	movq $0, -632(%rbp)
	movq -632(%rbp), %rax
	movq %rax, -88(%rbp)
end378513:
	movq -88(%rbp), %rax
	movq %rax, -680(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -80(%r15)
	addq $16, free_ptr(%rip)
	movq -80(%r15), %r11
	movq $3, 0(%r11)
	movq -80(%r15), %rax
	movq %rax, -152(%r15)
	movq -152(%r15), %r11
	movq -704(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -264(%rbp)
	movq -264(%rbp), %rax
	movq %rax, -664(%rbp)
	movq -152(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -216(%rbp)
	movq -128(%r15), %rdi
	movq -216(%rbp), %rsi
	movq $1, %rdx
	callq *-184(%rbp)
	movq %rax, -520(%rbp)
	movq -88(%r15), %rdi
	movq -520(%rbp), %rsi
	callq *-488(%rbp)
	movq %rax, -184(%r15)
	movq -184(%r15), %rax
	movq %rax, -408(%rbp)
	jmp end378507
then378506:
	leaq function3(%rip), %rax
	movq %rax, -328(%rbp)
	movq -328(%rbp), %rax
	movq %rax, -752(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -296(%rbp)
	movq -296(%rbp), %rax
	movq %rax, -688(%rbp)
	addq $16, -688(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -656(%rbp)
	movq -688(%rbp), %rax
	cmpq %rax, -656(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -424(%rbp)
	cmpq $1, -424(%rbp)
	je then378514
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -728(%rbp)
	jmp end378515
then378514:
	movq $0, -592(%rbp)
	movq -592(%rbp), %rax
	movq %rax, -728(%rbp)
end378515:
	movq -728(%rbp), %rax
	movq %rax, -128(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -120(%r15)
	addq $16, free_ptr(%rip)
	movq -120(%r15), %r11
	movq $3, 0(%r11)
	movq -120(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq -752(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -584(%rbp)
	movq -584(%rbp), %rax
	movq %rax, -72(%rbp)
	movq -24(%r15), %rax
	movq %rax, -192(%r15)
	movq -192(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -280(%rbp)
	movq -192(%r15), %rdi
	movq $20, %rsi
	callq *-280(%rbp)
	movq %rax, -136(%r15)
	movq -136(%r15), %rax
	movq %rax, -104(%r15)
	movq $42, -648(%rbp)
	leaq function2(%rip), %rax
	movq %rax, -336(%rbp)
	movq -336(%rbp), %rax
	movq %rax, -400(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -288(%rbp)
	movq -288(%rbp), %rax
	movq %rax, -672(%rbp)
	addq $16, -672(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -640(%rbp)
	movq -672(%rbp), %rax
	cmpq %rax, -640(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -416(%rbp)
	cmpq $1, -416(%rbp)
	je then378516
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -776(%rbp)
	jmp end378517
then378516:
	movq $0, -552(%rbp)
	movq -552(%rbp), %rax
	movq %rax, -776(%rbp)
end378517:
	movq -776(%rbp), %rax
	movq %rax, -80(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -48(%r15)
	movq -48(%r15), %r11
	movq -400(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -544(%rbp)
	movq -544(%rbp), %rax
	movq %rax, -248(%rbp)
	movq -48(%r15), %rax
	movq %rax, -72(%r15)
	movq -72(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -352(%rbp)
	movq -72(%r15), %rdi
	movq $20, %rsi
	callq *-352(%rbp)
	movq %rax, -56(%r15)
	movq -56(%r15), %rax
	movq %rax, -40(%r15)
	leaq function1(%rip), %rax
	movq %rax, -720(%rbp)
	movq -720(%rbp), %rax
	movq %rax, -360(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -480(%rbp)
	movq -480(%rbp), %rax
	movq %rax, -256(%rbp)
	addq $16, -256(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -160(%rbp)
	movq -256(%rbp), %rax
	cmpq %rax, -160(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -744(%rbp)
	cmpq $1, -744(%rbp)
	je then378518
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -376(%rbp)
	jmp end378519
then378518:
	movq $0, -144(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -376(%rbp)
end378519:
	movq -376(%rbp), %rax
	movq %rax, -568(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -112(%r15)
	addq $16, free_ptr(%rip)
	movq -112(%r15), %r11
	movq $3, 0(%r11)
	movq -112(%r15), %rax
	movq %rax, -176(%r15)
	movq -176(%r15), %r11
	movq -360(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -472(%rbp)
	movq -176(%r15), %rax
	movq %rax, -144(%r15)
	movq -144(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -192(%rbp)
	movq -144(%r15), %rdi
	movq $20, %rsi
	callq *-192(%rbp)
	movq %rax, -96(%r15)
	movq -96(%r15), %rax
	movq %rax, -160(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -512(%rbp)
	movq -512(%rbp), %rax
	movq %rax, -56(%rbp)
	addq $40, -56(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -200(%rbp)
	movq -56(%rbp), %rax
	cmpq %rax, -200(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -760(%rbp)
	cmpq $1, -760(%rbp)
	je then378520
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	movq $0, -384(%rbp)
	jmp end378521
then378520:
	movq $0, -176(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -384(%rbp)
end378521:
	movq -384(%rbp), %rax
	movq %rax, -456(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -208(%r15)
	addq $40, free_ptr(%rip)
	movq -208(%r15), %r11
	movq $1673, 0(%r11)
	movq -208(%r15), %rax
	movq %rax, -64(%r15)
	movq -64(%r15), %r11
	movq -160(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -168(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -504(%rbp)
	movq -64(%r15), %r11
	movq -40(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -560(%rbp)
	movq -64(%r15), %r11
	movq -648(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -208(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -496(%rbp)
	movq -64(%r15), %r11
	movq -104(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -576(%rbp)
	movq -64(%r15), %rax
	movq %rax, -408(%rbp)
end378507:
	movq -408(%rbp), %rax

	addq $776, %rsp
	subq $208, %r15
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
	subq $664, %rsp
	addq $168, %r15
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

	movq %rdi, -296(%rbp)
	movq %rsi, -216(%rbp)
	movq $0, %rax
	cmpq -216(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -376(%rbp)
	cmpq $1, -376(%rbp)
	je then378522
	leaq function1(%rip), %rax
	movq %rax, -664(%rbp)
	movq -664(%rbp), %rax
	movq %rax, -448(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -352(%rbp)
	movq -352(%rbp), %rax
	movq %rax, -632(%rbp)
	addq $16, -632(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -592(%rbp)
	movq -632(%rbp), %rax
	cmpq %rax, -592(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -56(%rbp)
	cmpq $1, -56(%rbp)
	je then378524
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -384(%rbp)
	jmp end378525
then378524:
	movq $0, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -384(%rbp)
end378525:
	movq -384(%rbp), %rax
	movq %rax, -168(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -104(%r15)
	addq $16, free_ptr(%rip)
	movq -104(%r15), %r11
	movq $3, 0(%r11)
	movq -104(%r15), %rax
	movq %rax, -40(%r15)
	movq -40(%r15), %r11
	movq -448(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -456(%rbp)
	movq -456(%rbp), %rax
	movq %rax, -576(%rbp)
	movq -40(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -128(%rbp)
	leaq function4(%rip), %rax
	movq %rax, -608(%rbp)
	movq -608(%rbp), %rax
	movq %rax, -392(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -624(%rbp)
	movq -624(%rbp), %rax
	movq %rax, -600(%rbp)
	addq $16, -600(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -344(%rbp)
	movq -600(%rbp), %rax
	cmpq %rax, -344(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -96(%rbp)
	cmpq $1, -96(%rbp)
	je then378526
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -400(%rbp)
	jmp end378527
then378526:
	movq $0, -208(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -400(%rbp)
end378527:
	movq -400(%rbp), %rax
	movq %rax, -496(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -48(%r15)
	addq $16, free_ptr(%rip)
	movq -48(%r15), %r11
	movq $3, 0(%r11)
	movq -48(%r15), %rax
	movq %rax, -160(%r15)
	movq -160(%r15), %r11
	movq -392(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -544(%rbp)
	movq -544(%rbp), %rax
	movq %rax, -160(%rbp)
	movq -160(%r15), %rax
	movq %rax, -112(%r15)
	movq -112(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -304(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -312(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -648(%rbp)
	movq -648(%rbp), %rax
	movq %rax, -328(%rbp)
	addq $16, -328(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -280(%rbp)
	movq -328(%rbp), %rax
	cmpq %rax, -280(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -368(%rbp)
	cmpq $1, -368(%rbp)
	je then378528
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -432(%rbp)
	jmp end378529
then378528:
	movq $0, -480(%rbp)
	movq -480(%rbp), %rax
	movq %rax, -432(%rbp)
end378529:
	movq -432(%rbp), %rax
	movq %rax, -200(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -32(%r15)
	addq $16, free_ptr(%rip)
	movq -32(%r15), %r11
	movq $3, 0(%r11)
	movq -32(%r15), %rax
	movq %rax, -64(%r15)
	movq -64(%r15), %r11
	movq -312(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -152(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -256(%rbp)
	movq -64(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -616(%rbp)
	movq -112(%r15), %rdi
	movq -616(%rbp), %rsi
	movq $1, %rdx
	callq *-304(%rbp)
	movq %rax, -288(%rbp)
	movq -24(%r15), %rdi
	movq -288(%rbp), %rsi
	callq *-128(%rbp)
	movq %rax, -56(%r15)
	movq -56(%r15), %rax
	movq %rax, -80(%rbp)
	jmp end378523
then378522:
	leaq function3(%rip), %rax
	movq %rax, -360(%rbp)
	movq -360(%rbp), %rax
	movq %rax, -320(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -176(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -552(%rbp)
	addq $16, -552(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -440(%rbp)
	movq -552(%rbp), %rax
	cmpq %rax, -440(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -88(%rbp)
	cmpq $1, -88(%rbp)
	je then378530
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -424(%rbp)
	jmp end378531
then378530:
	movq $0, -536(%rbp)
	movq -536(%rbp), %rax
	movq %rax, -424(%rbp)
end378531:
	movq -424(%rbp), %rax
	movq %rax, -104(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -128(%r15)
	addq $16, free_ptr(%rip)
	movq -128(%r15), %r11
	movq $3, 0(%r11)
	movq -128(%r15), %rax
	movq %rax, -168(%r15)
	movq -168(%r15), %r11
	movq -320(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -528(%rbp)
	movq -528(%rbp), %rax
	movq %rax, -240(%rbp)
	movq -168(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -656(%rbp)
	movq -16(%r15), %rdi
	movq $20, %rsi
	callq *-656(%rbp)
	movq %rax, -80(%r15)
	movq -80(%r15), %rax
	movq %rax, -8(%r15)
	movq $42, -136(%rbp)
	leaq function2(%rip), %rax
	movq %rax, -640(%rbp)
	movq -640(%rbp), %rax
	movq %rax, -336(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -120(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -520(%rbp)
	addq $16, -520(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -584(%rbp)
	movq -520(%rbp), %rax
	cmpq %rax, -584(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -64(%rbp)
	cmpq $1, -64(%rbp)
	je then378532
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -416(%rbp)
	jmp end378533
then378532:
	movq $0, -512(%rbp)
	movq -512(%rbp), %rax
	movq %rax, -416(%rbp)
end378533:
	movq -416(%rbp), %rax
	movq %rax, -264(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -144(%r15)
	addq $16, free_ptr(%rip)
	movq -144(%r15), %r11
	movq $3, 0(%r11)
	movq -144(%r15), %rax
	movq %rax, -152(%r15)
	movq -152(%r15), %r11
	movq -336(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -504(%rbp)
	movq -504(%rbp), %rax
	movq %rax, -224(%rbp)
	movq -152(%r15), %rax
	movq %rax, -136(%r15)
	movq -136(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -72(%rbp)
	movq -136(%r15), %rdi
	movq $20, %rsi
	callq *-72(%rbp)
	movq %rax, -88(%r15)
	movq -88(%r15), %rax
	movq %rax, -72(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -272(%rbp)
	movq -272(%rbp), %rax
	movq %rax, -488(%rbp)
	addq $32, -488(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -568(%rbp)
	movq -488(%rbp), %rax
	cmpq %rax, -568(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -48(%rbp)
	cmpq $1, -48(%rbp)
	je then378534
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, -408(%rbp)
	jmp end378535
then378534:
	movq $0, -144(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -408(%rbp)
end378535:
	movq -408(%rbp), %rax
	movq %rax, -232(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -120(%r15)
	addq $32, free_ptr(%rip)
	movq -120(%r15), %r11
	movq $647, 0(%r11)
	movq -120(%r15), %rax
	movq %rax, -96(%r15)
	movq -96(%r15), %r11
	movq -72(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -472(%rbp)
	movq -472(%rbp), %rax
	movq %rax, -192(%rbp)
	movq -96(%r15), %r11
	movq -136(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -560(%rbp)
	movq -560(%rbp), %rax
	movq %rax, -248(%rbp)
	movq -96(%r15), %r11
	movq -8(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -464(%rbp)
	movq -464(%rbp), %rax
	movq %rax, -184(%rbp)
	movq -96(%r15), %rax
	movq %rax, -80(%rbp)
end378523:
	movq -80(%rbp), %rax

	addq $664, %rsp
	subq $168, %r15
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
	subq $552, %rsp
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

	movq %rdi, -240(%rbp)
	movq %rsi, -456(%rbp)
	movq $0, %rax
	cmpq -456(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -64(%rbp)
	cmpq $1, -64(%rbp)
	je then378536
	leaq function2(%rip), %rax
	movq %rax, -248(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -536(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -152(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -184(%rbp)
	addq $16, -184(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -224(%rbp)
	movq -184(%rbp), %rax
	cmpq %rax, -224(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -280(%rbp)
	cmpq $1, -280(%rbp)
	je then378538
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -288(%rbp)
	jmp end378539
then378538:
	movq $0, -88(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -288(%rbp)
end378539:
	movq -288(%rbp), %rax
	movq %rax, -400(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -112(%r15)
	movq -112(%r15), %r11
	movq -536(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -344(%rbp)
	movq -344(%rbp), %rax
	movq %rax, -368(%rbp)
	movq -112(%r15), %rax
	movq %rax, -64(%r15)
	movq -64(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -528(%rbp)
	leaq function4(%rip), %rax
	movq %rax, -272(%rbp)
	movq -272(%rbp), %rax
	movq %rax, -232(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -200(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -520(%rbp)
	addq $16, -520(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -472(%rbp)
	movq -520(%rbp), %rax
	cmpq %rax, -472(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -304(%rbp)
	cmpq $1, -304(%rbp)
	je then378540
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -544(%rbp)
	jmp end378541
then378540:
	movq $0, -424(%rbp)
	movq -424(%rbp), %rax
	movq %rax, -544(%rbp)
end378541:
	movq -544(%rbp), %rax
	movq %rax, -104(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -88(%r15)
	addq $16, free_ptr(%rip)
	movq -88(%r15), %r11
	movq $3, 0(%r11)
	movq -88(%r15), %rax
	movq %rax, -32(%r15)
	movq -32(%r15), %r11
	movq -232(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -408(%rbp)
	movq -408(%rbp), %rax
	movq %rax, -48(%rbp)
	movq -32(%r15), %rax
	movq %rax, -48(%r15)
	movq -48(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -504(%rbp)
	movq -456(%rbp), %rax
	movq %rax, -168(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -440(%rbp)
	movq -440(%rbp), %rax
	movq %rax, -176(%rbp)
	addq $16, -176(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -216(%rbp)
	movq -176(%rbp), %rax
	cmpq %rax, -216(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -336(%rbp)
	cmpq $1, -336(%rbp)
	je then378542
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -120(%rbp)
	jmp end378543
then378542:
	movq $0, -80(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -120(%rbp)
end378543:
	movq -120(%rbp), %rax
	movq %rax, -136(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -40(%r15)
	addq $16, free_ptr(%rip)
	movq -40(%r15), %r11
	movq $3, 0(%r11)
	movq -40(%r15), %rax
	movq %rax, -80(%r15)
	movq -80(%r15), %r11
	movq -168(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -360(%rbp)
	movq -80(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -480(%rbp)
	movq -48(%r15), %rdi
	movq -480(%rbp), %rsi
	movq $1, %rdx
	callq *-504(%rbp)
	movq %rax, -512(%rbp)
	movq -64(%r15), %rdi
	movq -512(%rbp), %rsi
	callq *-528(%rbp)
	movq %rax, -120(%r15)
	movq -120(%r15), %rax
	movq %rax, -320(%rbp)
	jmp end378537
then378536:
	leaq function3(%rip), %rax
	movq %rax, -256(%rbp)
	movq -256(%rbp), %rax
	movq %rax, -312(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -448(%rbp)
	addq $16, -448(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -488(%rbp)
	movq -448(%rbp), %rax
	cmpq %rax, -488(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -416(%rbp)
	cmpq $1, -416(%rbp)
	je then378544
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -128(%rbp)
	jmp end378545
then378544:
	movq $0, -384(%rbp)
	movq -384(%rbp), %rax
	movq %rax, -128(%rbp)
end378545:
	movq -128(%rbp), %rax
	movq %rax, -464(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $16, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $3, 0(%r11)
	movq -8(%r15), %rax
	movq %rax, -128(%r15)
	movq -128(%r15), %r11
	movq -312(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -392(%rbp)
	movq -128(%r15), %rax
	movq %rax, -72(%r15)
	movq -72(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -296(%rbp)
	movq -72(%r15), %rdi
	movq $20, %rsi
	callq *-296(%rbp)
	movq %rax, -104(%r15)
	movq -104(%r15), %rax
	movq %rax, -56(%r15)
	movq $42, -160(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -496(%rbp)
	movq -496(%rbp), %rax
	movq %rax, -432(%rbp)
	addq $24, -432(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -208(%rbp)
	movq -432(%rbp), %rax
	cmpq %rax, -208(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -264(%rbp)
	cmpq $1, -264(%rbp)
	je then378546
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, -552(%rbp)
	jmp end378547
then378546:
	movq $0, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -552(%rbp)
end378547:
	movq -552(%rbp), %rax
	movq %rax, -352(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -96(%r15)
	addq $24, free_ptr(%rip)
	movq -96(%r15), %r11
	movq $133, 0(%r11)
	movq -96(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq -160(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -328(%rbp)
	movq -328(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -24(%r15), %r11
	movq -56(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -376(%rbp)
	movq -376(%rbp), %rax
	movq %rax, -144(%rbp)
	movq -24(%r15), %rax
	movq %rax, -320(%rbp)
end378537:
	movq -320(%rbp), %rax

	addq $552, %rsp
	subq $128, %r15
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
	subq $416, %rsp
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

	movq %rdi, -216(%rbp)
	movq %rsi, -160(%rbp)
	movq $0, %rax
	cmpq -160(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -96(%rbp)
	cmpq $1, -96(%rbp)
	je then378548
	leaq function3(%rip), %rax
	movq %rax, -224(%rbp)
	movq -224(%rbp), %rax
	movq %rax, -376(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -408(%rbp)
	movq -408(%rbp), %rax
	movq %rax, -400(%rbp)
	addq $16, -400(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -152(%rbp)
	movq -400(%rbp), %rax
	cmpq %rax, -152(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -80(%rbp)
	cmpq $1, -80(%rbp)
	je then378550
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -336(%rbp)
	jmp end378551
then378550:
	movq $0, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -336(%rbp)
end378551:
	movq -336(%rbp), %rax
	movq %rax, -280(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -40(%r15)
	addq $16, free_ptr(%rip)
	movq -40(%r15), %r11
	movq $3, 0(%r11)
	movq -40(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq -376(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -248(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -136(%rbp)
	movq -8(%r15), %rax
	movq %rax, -80(%r15)
	movq -80(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -416(%rbp)
	leaq function4(%rip), %rax
	movq %rax, -144(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -320(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -368(%rbp)
	movq -368(%rbp), %rax
	movq %rax, -168(%rbp)
	addq $16, -168(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -192(%rbp)
	movq -168(%rbp), %rax
	cmpq %rax, -192(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -288(%rbp)
	cmpq $1, -288(%rbp)
	je then378552
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -272(%rbp)
	jmp end378553
then378552:
	movq $0, -312(%rbp)
	movq -312(%rbp), %rax
	movq %rax, -272(%rbp)
end378553:
	movq -272(%rbp), %rax
	movq %rax, -56(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -24(%r15)
	addq $16, free_ptr(%rip)
	movq -24(%r15), %r11
	movq $3, 0(%r11)
	movq -24(%r15), %rax
	movq %rax, -88(%r15)
	movq -88(%r15), %r11
	movq -320(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -104(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -88(%r15), %rax
	movq %rax, -48(%r15)
	movq -48(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -304(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -384(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -208(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -392(%rbp)
	addq $16, -392(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -352(%rbp)
	movq -392(%rbp), %rax
	cmpq %rax, -352(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -232(%rbp)
	cmpq $1, -232(%rbp)
	je then378554
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -128(%rbp)
	jmp end378555
then378554:
	movq $0, -240(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -128(%rbp)
end378555:
	movq -128(%rbp), %rax
	movq %rax, -296(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -64(%r15)
	addq $16, free_ptr(%rip)
	movq -64(%r15), %r11
	movq $3, 0(%r11)
	movq -64(%r15), %rax
	movq %rax, -56(%r15)
	movq -56(%r15), %r11
	movq -384(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -328(%rbp)
	movq -56(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -184(%rbp)
	movq -48(%r15), %rdi
	movq -184(%rbp), %rsi
	movq $1, %rdx
	callq *-304(%rbp)
	movq %rax, -360(%rbp)
	movq -80(%r15), %rdi
	movq -360(%rbp), %rsi
	callq *-416(%rbp)
	movq %rax, -32(%r15)
	movq -32(%r15), %rax
	movq %rax, -112(%rbp)
	jmp end378549
then378548:
	movq free_ptr(%rip), %rax
	movq %rax, -344(%rbp)
	movq -344(%rbp), %rax
	movq %rax, -200(%rbp)
	addq $8, -200(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -176(%rbp)
	movq -200(%rbp), %rax
	cmpq %rax, -176(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -256(%rbp)
	cmpq $1, -256(%rbp)
	je then378556
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	movq $0, -48(%rbp)
	jmp end378557
then378556:
	movq $0, -264(%rbp)
	movq -264(%rbp), %rax
	movq %rax, -48(%rbp)
end378557:
	movq -48(%rbp), %rax
	movq %rax, -120(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $8, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $1, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -72(%r15)
	movq -72(%r15), %rax
	movq %rax, -112(%rbp)
end378549:
	movq -112(%rbp), %rax

	addq $416, %rsp
	subq $88, %r15
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
	subq $80, %rsp
	addq $0, %r15

	movq %rdi, -64(%rbp)
	movq %rsi, -80(%rbp)
	movq %rdx, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -72(%rbp)
	negq -72(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -48(%rbp)
	movq -72(%rbp), %rax
	addq %rax, -48(%rbp)
	movq -48(%rbp), %rax

	addq $80, %rsp
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
	subq $624, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $200, %r15
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

	leaq function3(%rip), %rax
	movq %rax, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -456(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -208(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -536(%rbp)
	addq $16, -536(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -424(%rbp)
	movq -536(%rbp), %rax
	cmpq %rax, -424(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -112(%rbp)
	cmpq $1, -112(%rbp)
	je then378558
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -72(%rbp)
	jmp end378559
then378558:
	movq $0, -256(%rbp)
	movq -256(%rbp), %rax
	movq %rax, -72(%rbp)
end378559:
	movq -72(%rbp), %rax
	movq %rax, -136(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -96(%r15)
	addq $16, free_ptr(%rip)
	movq -96(%r15), %r11
	movq $3, 0(%r11)
	movq -96(%r15), %rax
	movq %rax, -88(%r15)
	movq -88(%r15), %r11
	movq -456(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -528(%rbp)
	movq -528(%rbp), %rax
	movq %rax, -376(%rbp)
	movq -88(%r15), %rax
	movq %rax, -80(%r15)
	movq -80(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -384(%rbp)
	movq -80(%r15), %rdi
	movq $20, %rsi
	callq *-384(%rbp)
	movq %rax, -144(%r15)
	movq -144(%r15), %rax
	movq %rax, -128(%r15)
	movq $42, -416(%rbp)
	leaq function2(%rip), %rax
	movq %rax, -296(%rbp)
	movq -296(%rbp), %rax
	movq %rax, -568(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -200(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -520(%rbp)
	addq $16, -520(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -408(%rbp)
	movq -520(%rbp), %rax
	cmpq %rax, -408(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -104(%rbp)
	cmpq $1, -104(%rbp)
	je then378560
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -368(%rbp)
	jmp end378561
then378560:
	movq $0, -248(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -368(%rbp)
end378561:
	movq -368(%rbp), %rax
	movq %rax, -128(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -32(%r15)
	addq $16, free_ptr(%rip)
	movq -32(%r15), %r11
	movq $3, 0(%r11)
	movq -32(%r15), %rax
	movq %rax, -104(%r15)
	movq -104(%r15), %r11
	movq -568(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -512(%rbp)
	movq -512(%rbp), %rax
	movq %rax, -288(%rbp)
	movq -104(%r15), %rax
	movq %rax, -56(%r15)
	movq -56(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -168(%rbp)
	movq -56(%r15), %rdi
	movq $20, %rsi
	callq *-168(%rbp)
	movq %rax, -40(%r15)
	movq -40(%r15), %rax
	movq %rax, -120(%r15)
	leaq function1(%rip), %rax
	movq %rax, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -328(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -448(%rbp)
	movq -448(%rbp), %rax
	movq %rax, -240(%rbp)
	addq $16, -240(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -160(%rbp)
	movq -240(%rbp), %rax
	cmpq %rax, -160(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -344(%rbp)
	cmpq $1, -344(%rbp)
	je then378562
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -120(%rbp)
	jmp end378563
then378562:
	movq $0, -496(%rbp)
	movq -496(%rbp), %rax
	movq %rax, -120(%rbp)
end378563:
	movq -120(%rbp), %rax
	movq %rax, -400(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -72(%r15)
	addq $16, free_ptr(%rip)
	movq -72(%r15), %r11
	movq $3, 0(%r11)
	movq -72(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq -328(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -224(%rbp)
	movq -224(%rbp), %rax
	movq %rax, -544(%rbp)
	movq -16(%r15), %rax
	movq %rax, -160(%r15)
	movq -160(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -320(%rbp)
	movq -160(%r15), %rdi
	movq $20, %rsi
	callq *-320(%rbp)
	movq %rax, -112(%r15)
	movq -112(%r15), %rax
	movq %rax, -8(%r15)
	leaq function0(%rip), %rax
	movq %rax, -432(%rbp)
	movq -432(%rbp), %rax
	movq %rax, -64(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -176(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -480(%rbp)
	addq $16, -480(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -560(%rbp)
	movq -480(%rbp), %rax
	cmpq %rax, -560(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -88(%rbp)
	cmpq $1, -88(%rbp)
	je then378564
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -352(%rbp)
	jmp end378565
then378564:
	movq $0, -216(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -352(%rbp)
end378565:
	movq -352(%rbp), %rax
	movq %rax, -152(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -176(%r15)
	addq $16, free_ptr(%rip)
	movq -176(%r15), %r11
	movq $3, 0(%r11)
	movq -176(%r15), %rax
	movq %rax, -200(%r15)
	movq -200(%r15), %r11
	movq -64(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -472(%rbp)
	movq -472(%rbp), %rax
	movq %rax, -272(%rbp)
	movq -200(%r15), %rax
	movq %rax, -64(%r15)
	movq -64(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -360(%rbp)
	movq -64(%r15), %rdi
	movq $20, %rsi
	callq *-360(%rbp)
	movq %rax, -48(%r15)
	movq -48(%r15), %rax
	movq %rax, -152(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -304(%rbp)
	movq -304(%rbp), %rax
	movq %rax, -312(%rbp)
	addq $48, -312(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -576(%rbp)
	movq -312(%rbp), %rax
	cmpq %rax, -576(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -336(%rbp)
	cmpq $1, -336(%rbp)
	je then378566
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, -80(%rbp)
	jmp end378567
then378566:
	movq $0, -464(%rbp)
	movq -464(%rbp), %rax
	movq %rax, -80(%rbp)
end378567:
	movq -80(%rbp), %rax
	movq %rax, -264(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -24(%r15)
	addq $48, free_ptr(%rip)
	movq -24(%r15), %r11
	movq $3723, 0(%r11)
	movq -24(%r15), %rax
	movq %rax, -184(%r15)
	movq -184(%r15), %r11
	movq -152(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -488(%rbp)
	movq -488(%rbp), %rax
	movq %rax, -184(%rbp)
	movq -184(%r15), %r11
	movq -8(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -144(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -280(%rbp)
	movq -184(%r15), %r11
	movq -120(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -232(%rbp)
	movq -232(%rbp), %rax
	movq %rax, -440(%rbp)
	movq -184(%r15), %r11
	movq -416(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -392(%rbp)
	movq -392(%rbp), %rax
	movq %rax, -552(%rbp)
	movq -184(%r15), %r11
	movq -128(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -504(%rbp)
	movq -504(%rbp), %rax
	movq %rax, -192(%rbp)
	movq -184(%r15), %r11
	movq 40(%r11), %rax
	movq %rax, -192(%r15)
	movq -192(%r15), %r11
	movq 32(%r11), %rax
	movq %rax, -168(%r15)
	movq -168(%r15), %r11
	movq 24(%r11), %rax
	movq %rax, -136(%r15)
	movq -136(%r15), %r11
	movq 16(%r11), %rax
	movq %rax, -96(%rbp)
	movq -96(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $200, %r15
	addq $624, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
