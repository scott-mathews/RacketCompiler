	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $88, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $712, %r15
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

	movq free_ptr(%rip), %rbx
	addq $8, %rbx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rbx
	setle %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then19612
	movq $0, %rbx
	jmp end19613
then19612:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	movq $0, %rbx
end19613:
	movq free_ptr(%rip), %rbx
	addq $8, free_ptr(%rip)
	movq %rbx, %r11
	movq $1, 0(%r11)
	movq %rbx, -8(%r15)
	movq $42, %rbx
	movq -8(%r15), %rax
	movq %rax, -24(%r15)
	movq free_ptr(%rip), %rcx
	addq $24, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	setle %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then19614
	movq $0, %rcx
	jmp end19615
then19614:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
end19615:
	movq free_ptr(%rip), %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $261, 0(%r11)
	movq %rcx, %r11
	movq -24(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -16(%r15)
	movq -16(%r15), %rax
	movq %rax, -40(%r15)
	movq $42, %rbx
	movq -8(%r15), %rax
	movq %rax, -48(%r15)
	movq free_ptr(%rip), %rcx
	addq $32, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	setle %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then19616
	movq $0, %rcx
	jmp end19617
then19616:
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, %rcx
end19617:
	movq free_ptr(%rip), %rcx
	addq $32, free_ptr(%rip)
	movq %rcx, %r11
	movq $647, 0(%r11)
	movq %rcx, %r11
	movq -48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -40(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, -32(%r15)
	movq -32(%r15), %rax
	movq %rax, -64(%r15)
	movq -16(%r15), %rax
	movq %rax, -72(%r15)
	movq $42, %rbx
	movq -8(%r15), %rax
	movq %rax, -80(%r15)
	movq free_ptr(%rip), %rcx
	addq $40, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	setle %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then19618
	movq $0, %rcx
	jmp end19619
then19618:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	movq $0, %rcx
end19619:
	movq free_ptr(%rip), %rcx
	addq $40, free_ptr(%rip)
	movq %rcx, %r11
	movq $1417, 0(%r11)
	movq %rcx, %r11
	movq -80(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 24(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -72(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -64(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, -56(%r15)
	movq -56(%r15), %rax
	movq %rax, -96(%r15)
	movq -32(%r15), %rax
	movq %rax, -104(%r15)
	movq -16(%r15), %rax
	movq %rax, -112(%r15)
	movq $42, %rbx
	movq -8(%r15), %rax
	movq %rax, -120(%r15)
	movq free_ptr(%rip), %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	setle %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then19620
	movq $0, %rcx
	jmp end19621
then19620:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
end19621:
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $2955, 0(%r11)
	movq %rcx, %r11
	movq -120(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 32(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -112(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -104(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -96(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, -88(%r15)
	movq -88(%r15), %rax
	movq %rax, -136(%r15)
	movq -56(%r15), %rax
	movq %rax, -144(%r15)
	movq -32(%r15), %rax
	movq %rax, -152(%r15)
	movq -16(%r15), %rax
	movq %rax, -160(%r15)
	movq $42, %rbx
	movq -8(%r15), %rax
	movq %rax, -168(%r15)
	movq free_ptr(%rip), %rcx
	addq $56, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	setle %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then19622
	movq $0, %rcx
	jmp end19623
then19622:
	movq %r15, %rdi
	movq $56, %rsi
	callq collect
	movq $0, %rcx
end19623:
	movq free_ptr(%rip), %rcx
	addq $56, free_ptr(%rip)
	movq %rcx, %r11
	movq $6029, 0(%r11)
	movq %rcx, %r11
	movq -168(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -160(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -152(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -144(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -136(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, -128(%r15)
	movq -128(%r15), %rax
	movq %rax, -184(%r15)
	movq -88(%r15), %rax
	movq %rax, -192(%r15)
	movq -56(%r15), %rax
	movq %rax, -200(%r15)
	movq -32(%r15), %rax
	movq %rax, -208(%r15)
	movq -16(%r15), %rax
	movq %rax, -216(%r15)
	movq $42, %rbx
	movq -8(%r15), %rax
	movq %rax, -224(%r15)
	movq free_ptr(%rip), %rcx
	addq $64, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	setle %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then19624
	movq $0, %rcx
	jmp end19625
then19624:
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	movq $0, %rcx
end19625:
	movq free_ptr(%rip), %rcx
	addq $64, free_ptr(%rip)
	movq %rcx, %r11
	movq $12175, 0(%r11)
	movq %rcx, %r11
	movq -224(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 48(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -216(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -208(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -200(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -192(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -184(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, -176(%r15)
	movq -176(%r15), %rax
	movq %rax, -240(%r15)
	movq -128(%r15), %rax
	movq %rax, -248(%r15)
	movq -88(%r15), %rax
	movq %rax, -256(%r15)
	movq -56(%r15), %rax
	movq %rax, -264(%r15)
	movq -32(%r15), %rax
	movq %rax, -272(%r15)
	movq -16(%r15), %rax
	movq %rax, -280(%r15)
	movq $42, %rbx
	movq -8(%r15), %rax
	movq %rax, -288(%r15)
	movq free_ptr(%rip), %rcx
	addq $72, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	setle %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then19626
	movq $0, %rcx
	jmp end19627
then19626:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %rcx
end19627:
	movq free_ptr(%rip), %rcx
	addq $72, free_ptr(%rip)
	movq %rcx, %r11
	movq $24465, 0(%r11)
	movq %rcx, %r11
	movq -288(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 56(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -280(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -272(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -264(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -256(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -248(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -240(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, -232(%r15)
	movq -232(%r15), %rax
	movq %rax, -304(%r15)
	movq -176(%r15), %rax
	movq %rax, -312(%r15)
	movq -128(%r15), %rax
	movq %rax, -320(%r15)
	movq -88(%r15), %rax
	movq %rax, -328(%r15)
	movq -56(%r15), %rax
	movq %rax, -336(%r15)
	movq -32(%r15), %rax
	movq %rax, -344(%r15)
	movq -16(%r15), %rax
	movq %rax, -352(%r15)
	movq $42, %rbx
	movq -8(%r15), %rax
	movq %rax, -360(%r15)
	movq free_ptr(%rip), %rcx
	addq $80, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	setle %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then19628
	movq $0, %rcx
	jmp end19629
then19628:
	movq %r15, %rdi
	movq $80, %rsi
	callq collect
	movq $0, %rcx
end19629:
	movq free_ptr(%rip), %rcx
	addq $80, free_ptr(%rip)
	movq %rcx, %r11
	movq $49043, 0(%r11)
	movq %rcx, %r11
	movq -360(%r15), %rax
	movq %rax, 72(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 64(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -352(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -344(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -336(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -328(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -320(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -312(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -304(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, -296(%r15)
	movq -296(%r15), %rax
	movq %rax, -376(%r15)
	movq -232(%r15), %rax
	movq %rax, -384(%r15)
	movq -176(%r15), %rax
	movq %rax, -392(%r15)
	movq -128(%r15), %rax
	movq %rax, -400(%r15)
	movq -88(%r15), %rax
	movq %rax, -408(%r15)
	movq -56(%r15), %rax
	movq %rax, -416(%r15)
	movq -32(%r15), %rax
	movq %rax, -424(%r15)
	movq -16(%r15), %rax
	movq %rax, -432(%r15)
	movq $42, %rbx
	movq -8(%r15), %rax
	movq %rax, -440(%r15)
	movq free_ptr(%rip), %rcx
	addq $88, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	setle %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then19630
	movq $0, %rcx
	jmp end19631
then19630:
	movq %r15, %rdi
	movq $88, %rsi
	callq collect
	movq $0, %rcx
end19631:
	movq free_ptr(%rip), %rcx
	addq $88, free_ptr(%rip)
	movq %rcx, %r11
	movq $98197, 0(%r11)
	movq %rcx, %r11
	movq -440(%r15), %rax
	movq %rax, 80(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 72(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -432(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -424(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -416(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -408(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -400(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -392(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -384(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -376(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, -368(%r15)
	movq -368(%r15), %rax
	movq %rax, -456(%r15)
	movq -296(%r15), %rax
	movq %rax, -464(%r15)
	movq -232(%r15), %rax
	movq %rax, -472(%r15)
	movq -176(%r15), %rax
	movq %rax, -480(%r15)
	movq -128(%r15), %rax
	movq %rax, -488(%r15)
	movq -88(%r15), %rax
	movq %rax, -496(%r15)
	movq -56(%r15), %rax
	movq %rax, -504(%r15)
	movq -32(%r15), %rax
	movq %rax, -512(%r15)
	movq -16(%r15), %rax
	movq %rax, -520(%r15)
	movq $42, %rbx
	movq -8(%r15), %rax
	movq %rax, -528(%r15)
	movq free_ptr(%rip), %rcx
	addq $96, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	setle %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then19632
	movq $0, %rcx
	jmp end19633
then19632:
	movq %r15, %rdi
	movq $96, %rsi
	callq collect
	movq $0, %rcx
end19633:
	movq free_ptr(%rip), %rcx
	addq $96, free_ptr(%rip)
	movq %rcx, %r11
	movq $196503, 0(%r11)
	movq %rcx, %r11
	movq -528(%r15), %rax
	movq %rax, 88(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 80(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -520(%r15), %rax
	movq %rax, 72(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -512(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -504(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -496(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -488(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -480(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -472(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -464(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -456(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, -448(%r15)
	movq -448(%r15), %rax
	movq %rax, -536(%r15)
	movq -368(%r15), %rax
	movq %rax, -544(%r15)
	movq -296(%r15), %rax
	movq %rax, -552(%r15)
	movq -232(%r15), %rax
	movq %rax, -560(%r15)
	movq -176(%r15), %rax
	movq %rax, -568(%r15)
	movq -128(%r15), %rax
	movq %rax, -576(%r15)
	movq -88(%r15), %rax
	movq %rax, -584(%r15)
	movq -56(%r15), %rax
	movq %rax, -592(%r15)
	movq -32(%r15), %rax
	movq %rax, -600(%r15)
	movq -16(%r15), %rax
	movq %rax, -608(%r15)
	movq $42, %rbx
	movq -8(%r15), %rax
	movq %rax, -616(%r15)
	movq free_ptr(%rip), %rcx
	addq $104, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	setle %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then19634
	movq $0, %rcx
	jmp end19635
then19634:
	movq %r15, %rdi
	movq $104, %rsi
	callq collect
	movq $0, %rcx
end19635:
	movq free_ptr(%rip), %rcx
	addq $104, free_ptr(%rip)
	movq %rcx, %r11
	movq $393113, 0(%r11)
	movq %rcx, %r11
	movq -616(%r15), %rax
	movq %rax, 96(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 88(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -608(%r15), %rax
	movq %rax, 80(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -600(%r15), %rax
	movq %rax, 72(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -592(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -584(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -576(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -568(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -560(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -552(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -544(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -536(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
	movq %rbx, -624(%r15)
	movq -448(%r15), %rax
	movq %rax, -632(%r15)
	movq -368(%r15), %rax
	movq %rax, -640(%r15)
	movq -296(%r15), %rax
	movq %rax, -648(%r15)
	movq -232(%r15), %rax
	movq %rax, -656(%r15)
	movq -176(%r15), %rax
	movq %rax, -664(%r15)
	movq -128(%r15), %rax
	movq %rax, -672(%r15)
	movq -88(%r15), %rax
	movq %rax, -680(%r15)
	movq -56(%r15), %rax
	movq %rax, -688(%r15)
	movq -32(%r15), %rax
	movq %rax, -696(%r15)
	movq -16(%r15), %rax
	movq %rax, -704(%r15)
	movq $42, %rbx
	movq -8(%r15), %rax
	movq %rax, -712(%r15)
	movq free_ptr(%rip), %rcx
	addq $112, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	setle %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then19636
	movq $0, %rcx
	jmp end19637
then19636:
	movq %r15, %rdi
	movq $112, %rsi
	callq collect
	movq $0, %rcx
end19637:
	movq free_ptr(%rip), %rcx
	addq $112, free_ptr(%rip)
	movq %rcx, %r11
	movq $786331, 0(%r11)
	movq %rcx, %r11
	movq -712(%r15), %rax
	movq %rax, 104(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 96(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -704(%r15), %rax
	movq %rax, 88(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -696(%r15), %rax
	movq %rax, 80(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -688(%r15), %rax
	movq %rax, 72(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -680(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -672(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -664(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -656(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -648(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -640(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -632(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -624(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
	movq %rbx, %r11
	movq 96(%r11), %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $712, %r15
	addq $88, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
