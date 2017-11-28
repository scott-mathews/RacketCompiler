	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $48, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $936, %r15
	movq $0, -936(%r15)
	movq $0, -928(%r15)
	movq $0, -920(%r15)
	movq $0, -912(%r15)
	movq $0, -904(%r15)
	movq $0, -896(%r15)
	movq $0, -888(%r15)
	movq $0, -880(%r15)
	movq $0, -872(%r15)
	movq $0, -864(%r15)
	movq $0, -856(%r15)
	movq $0, -848(%r15)
	movq $0, -840(%r15)
	movq $0, -832(%r15)
	movq $0, -824(%r15)
	movq $0, -816(%r15)
	movq $0, -808(%r15)
	movq $0, -800(%r15)
	movq $0, -792(%r15)
	movq $0, -784(%r15)
	movq $0, -776(%r15)
	movq $0, -768(%r15)
	movq $0, -760(%r15)
	movq $0, -752(%r15)
	movq $0, -744(%r15)
	movq $0, -736(%r15)
	movq $0, -728(%r15)
	movq $0, -720(%r15)
	movq $0, -712(%r15)
	movq $0, -704(%r15)
	movq $0, -696(%r15)
	movq $0, -688(%r15)
	movq $0, -680(%r15)
	movq $0, -672(%r15)
	movq $0, -664(%r15)
	movq $0, -656(%r15)
	movq $0, -648(%r15)
	movq $0, -640(%r15)
	movq $0, -632(%r15)
	movq $0, -624(%r15)
	movq $0, -616(%r15)
	movq $0, -608(%r15)
	movq $0, -600(%r15)
	movq $0, -592(%r15)
	movq $0, -584(%r15)
	movq $0, -576(%r15)
	movq $0, -568(%r15)
	movq $0, -560(%r15)
	movq $0, -552(%r15)
	movq $0, -544(%r15)
	movq $0, -536(%r15)
	movq $0, -528(%r15)
	movq $0, -520(%r15)
	movq $0, -512(%r15)
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

	movq free_ptr(%rip), %rcx
	addq $8, %rcx
	movq free_ptr(%rip), %rbx
	cmpq %rcx, %rbx
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then15539
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	movq $0, %rbx
	jmp end15540
then15539:
	movq $0, %rbx
	movq %rbx, %rbx
end15540:
	movq free_ptr(%rip), %rbx
	addq $8, free_ptr(%rip)
	movq %rbx, %r11
	movq $1, 0(%r11)
	movq %rbx, -40(%r15)
	movq -40(%r15), %rax
	movq %rax, -680(%r15)
	movq $42, %rbx
	movq -680(%r15), %rax
	movq %rax, -856(%r15)
	movq free_ptr(%rip), %rdx
	addq $24, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then15541
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
	jmp end15542
then15541:
	movq $0, %rcx
	movq %rcx, %rcx
end15542:
	movq free_ptr(%rip), %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $133, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -856(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rcx, %r12
	movq $42, %rbx
	movq -680(%r15), %rax
	movq %rax, -928(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $32, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then15543
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, %rcx
	jmp end15544
then15543:
	movq $0, %rcx
	movq %rcx, %rcx
end15544:
	movq free_ptr(%rip), %rcx
	addq $32, free_ptr(%rip)
	movq %rcx, %r11
	movq $647, 0(%r11)
	movq %rcx, -840(%r15)
	movq -840(%r15), %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq -840(%r15), %r11
	movq %rbx, 16(%r11)
	movq $0, %rbx
	movq -840(%r15), %r11
	movq -928(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq -840(%r15), %rax
	movq %rax, -240(%r15)
	movq -240(%r15), %rax
	movq %rax, -472(%r15)
	movq $42, %rbx
	movq -680(%r15), %rax
	movq %rax, -144(%r15)
	movq free_ptr(%rip), %rcx
	addq $40, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then15545
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	movq $0, %rcx
	jmp end15546
then15545:
	movq $0, %rcx
	movq %rcx, %rcx
end15546:
	movq free_ptr(%rip), %rcx
	addq $40, free_ptr(%rip)
	movq %rcx, %r11
	movq $1673, 0(%r11)
	movq %rcx, -432(%r15)
	movq -432(%r15), %r11
	movq -472(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -432(%r15), %r11
	movq %r12, 16(%r11)
	movq $0, %rcx
	movq -432(%r15), %r11
	movq %rbx, 24(%r11)
	movq $0, %rbx
	movq -432(%r15), %r11
	movq -144(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq -432(%r15), %rax
	movq %rax, -792(%r15)
	movq -792(%r15), %rax
	movq %rax, -776(%r15)
	movq -240(%r15), %rax
	movq %rax, -664(%r15)
	movq $42, %rbx
	movq -680(%r15), %rax
	movq %rax, -640(%r15)
	movq free_ptr(%rip), %rdx
	addq $48, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then15547
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end15548
then15547:
	movq $0, %rcx
	movq %rcx, %rcx
end15548:
	movq free_ptr(%rip), %rax
	movq %rax, -336(%r15)
	addq $48, free_ptr(%rip)
	movq -336(%r15), %r11
	movq $3723, 0(%r11)
	movq -336(%r15), %rax
	movq %rax, -568(%r15)
	movq -568(%r15), %r11
	movq -776(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -568(%r15), %r11
	movq -664(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq -568(%r15), %r11
	movq %r12, 24(%r11)
	movq $0, %rcx
	movq -568(%r15), %r11
	movq %rbx, 32(%r11)
	movq $0, %rbx
	movq -568(%r15), %r11
	movq -640(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq -568(%r15), %rax
	movq %rax, -400(%r15)
	movq -400(%r15), %rax
	movq %rax, -112(%r15)
	movq -792(%r15), %rax
	movq %rax, -544(%r15)
	movq -240(%r15), %rax
	movq %rax, -368(%r15)
	movq $42, %rbx
	movq -680(%r15), %rax
	movq %rax, -496(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $56, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then15549
	movq %r15, %rdi
	movq $56, %rsi
	callq collect
	movq $0, %rcx
	jmp end15550
then15549:
	movq $0, %rcx
	movq %rcx, %rcx
end15550:
	movq free_ptr(%rip), %r13
	addq $56, free_ptr(%rip)
	movq %r13, %r11
	movq $7821, 0(%r11)
	movq %r13, %r11
	movq -112(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %r13, %r11
	movq -544(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %r13, %r11
	movq -368(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %r13, %r11
	movq %r12, 32(%r11)
	movq $0, %rcx
	movq %r13, %r11
	movq %rbx, 40(%r11)
	movq $0, %rbx
	movq %r13, %r11
	movq -496(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rbx
	movq -400(%r15), %rax
	movq %rax, -200(%r15)
	movq -792(%r15), %rax
	movq %rax, -504(%r15)
	movq -240(%r15), %rax
	movq %rax, -440(%r15)
	movq $42, %rbx
	movq -680(%r15), %rax
	movq %rax, -600(%r15)
	movq free_ptr(%rip), %rcx
	addq $64, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then15551
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	movq $0, %rcx
	jmp end15552
then15551:
	movq $0, %rcx
	movq %rcx, %rcx
end15552:
	movq free_ptr(%rip), %rax
	movq %rax, -176(%r15)
	addq $64, free_ptr(%rip)
	movq -176(%r15), %r11
	movq $16015, 0(%r11)
	movq -176(%r15), %rax
	movq %rax, -904(%r15)
	movq -904(%r15), %r11
	movq %r13, 8(%r11)
	movq $0, %rcx
	movq -904(%r15), %r11
	movq -200(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq -904(%r15), %r11
	movq -504(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq -904(%r15), %r11
	movq -440(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq -904(%r15), %r11
	movq %r12, 40(%r11)
	movq $0, %rcx
	movq -904(%r15), %r11
	movq %rbx, 48(%r11)
	movq $0, %rbx
	movq -904(%r15), %r11
	movq -600(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rbx
	movq -904(%r15), %rax
	movq %rax, -688(%r15)
	movq -688(%r15), %rax
	movq %rax, -896(%r15)
	movq -400(%r15), %rax
	movq %rax, -696(%r15)
	movq -792(%r15), %rax
	movq %rax, -88(%r15)
	movq -240(%r15), %rax
	movq %rax, -760(%r15)
	movq $42, %rbx
	movq -680(%r15), %rax
	movq %rax, -424(%r15)
	movq free_ptr(%rip), %rdx
	addq $72, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then15553
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %rcx
	jmp end15554
then15553:
	movq $0, %rcx
	movq %rcx, %rcx
end15554:
	movq free_ptr(%rip), %r14
	addq $72, free_ptr(%rip)
	movq %r14, %r11
	movq $32401, 0(%r11)
	movq %r14, %r11
	movq -896(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %r14, %r11
	movq %r13, 16(%r11)
	movq $0, %rcx
	movq %r14, %r11
	movq -696(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %r14, %r11
	movq -88(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %r14, %r11
	movq -760(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %r14, %r11
	movq %r12, 48(%r11)
	movq $0, %rcx
	movq %r14, %r11
	movq %rbx, 56(%r11)
	movq $0, %rbx
	movq %r14, %r11
	movq -424(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rbx
	movq -688(%r15), %rax
	movq %rax, -56(%r15)
	movq -400(%r15), %rax
	movq %rax, -768(%r15)
	movq -792(%r15), %rax
	movq %rax, -728(%r15)
	movq -240(%r15), %rax
	movq %rax, -8(%r15)
	movq $42, %rbx
	movq -680(%r15), %rax
	movq %rax, -296(%r15)
	movq free_ptr(%rip), %rdx
	addq $80, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then15555
	movq %r15, %rdi
	movq $80, %rsi
	callq collect
	movq $0, %rcx
	jmp end15556
then15555:
	movq $0, %rcx
	movq %rcx, %rcx
end15556:
	movq free_ptr(%rip), %rcx
	addq $80, free_ptr(%rip)
	movq %rcx, %r11
	movq $65171, 0(%r11)
	movq %rcx, -632(%r15)
	movq -632(%r15), %r11
	movq %r14, 8(%r11)
	movq $0, %rcx
	movq -632(%r15), %r11
	movq -56(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq -632(%r15), %r11
	movq %r13, 24(%r11)
	movq $0, %rcx
	movq -632(%r15), %r11
	movq -768(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq -632(%r15), %r11
	movq -728(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq -632(%r15), %r11
	movq -8(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq -632(%r15), %r11
	movq %r12, 56(%r11)
	movq $0, %rcx
	movq -632(%r15), %r11
	movq %rbx, 64(%r11)
	movq $0, %rbx
	movq -632(%r15), %r11
	movq -296(%r15), %rax
	movq %rax, 72(%r11)
	movq $0, %rbx
	movq -632(%r15), %rax
	movq %rax, -280(%r15)
	movq -280(%r15), %rax
	movq %rax, -784(%r15)
	movq -688(%r15), %rax
	movq %rax, -656(%r15)
	movq -400(%r15), %rax
	movq %rax, -80(%r15)
	movq -792(%r15), %rax
	movq %rax, -192(%r15)
	movq -240(%r15), %rax
	movq %rax, -800(%r15)
	movq $42, %rbx
	movq -680(%r15), %rax
	movq %rax, -304(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $88, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then15557
	movq %r15, %rdi
	movq $88, %rsi
	callq collect
	movq $0, %rcx
	jmp end15558
then15557:
	movq $0, %rcx
	movq %rcx, %rcx
end15558:
	movq free_ptr(%rip), %rcx
	addq $88, free_ptr(%rip)
	movq %rcx, %r11
	movq $130709, 0(%r11)
	movq %rcx, -616(%r15)
	movq -616(%r15), %r11
	movq -784(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -616(%r15), %r11
	movq %r14, 16(%r11)
	movq $0, %rcx
	movq -616(%r15), %r11
	movq -656(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq -616(%r15), %r11
	movq %r13, 32(%r11)
	movq $0, %rcx
	movq -616(%r15), %r11
	movq -80(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq -616(%r15), %r11
	movq -192(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq -616(%r15), %r11
	movq -800(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq -616(%r15), %r11
	movq %r12, 64(%r11)
	movq $0, %rcx
	movq -616(%r15), %r11
	movq %rbx, 72(%r11)
	movq $0, %rbx
	movq -616(%r15), %r11
	movq -304(%r15), %rax
	movq %rax, 80(%r11)
	movq $0, %rbx
	movq -616(%r15), %rax
	movq %rax, -560(%r15)
	movq -560(%r15), %rax
	movq %rax, -184(%r15)
	movq -280(%r15), %rax
	movq %rax, -720(%r15)
	movq -688(%r15), %rax
	movq %rax, -264(%r15)
	movq -400(%r15), %rax
	movq %rax, -752(%r15)
	movq -792(%r15), %rax
	movq %rax, -248(%r15)
	movq -240(%r15), %rax
	movq %rax, -608(%r15)
	movq $42, %rbx
	movq -680(%r15), %rax
	movq %rax, -64(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $96, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then15559
	movq %r15, %rdi
	movq $96, %rsi
	callq collect
	movq $0, %rcx
	jmp end15560
then15559:
	movq $0, %rcx
	movq %rcx, %rcx
end15560:
	movq free_ptr(%rip), %rax
	movq %rax, -256(%r15)
	addq $96, free_ptr(%rip)
	movq -256(%r15), %r11
	movq $261783, 0(%r11)
	movq -256(%r15), %rax
	movq %rax, -872(%r15)
	movq -872(%r15), %r11
	movq -184(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -872(%r15), %r11
	movq -720(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq -872(%r15), %r11
	movq %r14, 24(%r11)
	movq $0, %rcx
	movq -872(%r15), %r11
	movq -264(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq -872(%r15), %r11
	movq %r13, 40(%r11)
	movq $0, %rcx
	movq -872(%r15), %r11
	movq -752(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq -872(%r15), %r11
	movq -248(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq -872(%r15), %r11
	movq -608(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq -872(%r15), %r11
	movq %r12, 72(%r11)
	movq $0, %rcx
	movq -872(%r15), %r11
	movq %rbx, 80(%r11)
	movq $0, %rbx
	movq -872(%r15), %r11
	movq -64(%r15), %rax
	movq %rax, 88(%r11)
	movq $0, %rbx
	movq -872(%r15), %rax
	movq %rax, -736(%r15)
	movq -736(%r15), %rax
	movq %rax, -808(%r15)
	movq -560(%r15), %rax
	movq %rax, -392(%r15)
	movq -280(%r15), %rax
	movq %rax, -536(%r15)
	movq -688(%r15), %rax
	movq %rax, -328(%r15)
	movq -400(%r15), %rax
	movq %rax, -344(%r15)
	movq -792(%r15), %rax
	movq %rax, -96(%r15)
	movq -240(%r15), %rax
	movq %rax, -464(%r15)
	movq $42, %rbx
	movq -680(%r15), %rax
	movq %rax, -416(%r15)
	movq free_ptr(%rip), %rcx
	addq $104, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then15561
	movq %r15, %rdi
	movq $104, %rsi
	callq collect
	movq $0, %rcx
	jmp end15562
then15561:
	movq $0, %rcx
	movq %rcx, %rcx
end15562:
	movq free_ptr(%rip), %rcx
	addq $104, free_ptr(%rip)
	movq %rcx, %r11
	movq $523929, 0(%r11)
	movq %rcx, %r11
	movq -808(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -392(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -536(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -328(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 48(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -344(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -96(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -464(%r15), %rax
	movq %rax, 72(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, 80(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 88(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -416(%r15), %rax
	movq %rax, 96(%r11)
	movq $0, %rbx
	movq %rcx, -816(%r15)
	movq -816(%r15), %rax
	movq %rax, -488(%r15)
	movq -736(%r15), %rax
	movq %rax, -16(%r15)
	movq -560(%r15), %rax
	movq %rax, -208(%r15)
	movq -280(%r15), %rax
	movq %rax, -152(%r15)
	movq -688(%r15), %rax
	movq %rax, -232(%r15)
	movq -400(%r15), %rax
	movq %rax, -744(%r15)
	movq -792(%r15), %rax
	movq %rax, -32(%r15)
	movq -240(%r15), %rax
	movq %rax, -136(%r15)
	movq $42, %rbx
	movq -680(%r15), %rax
	movq %rax, -24(%r15)
	movq free_ptr(%rip), %rcx
	addq $112, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then15563
	movq %r15, %rdi
	movq $112, %rsi
	callq collect
	movq $0, %rcx
	jmp end15564
then15563:
	movq $0, %rcx
	movq %rcx, %rcx
end15564:
	movq free_ptr(%rip), %rcx
	addq $112, free_ptr(%rip)
	movq %rcx, %r11
	movq $1048219, 0(%r11)
	movq %rcx, %r11
	movq -488(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -16(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -208(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -152(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -232(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 56(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -744(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -32(%r15), %rax
	movq %rax, 72(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -136(%r15), %rax
	movq %rax, 80(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, 88(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 96(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -24(%r15), %rax
	movq %rax, 104(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq 96(%r11), %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $936, %r15
	addq $48, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
