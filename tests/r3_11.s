	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $208, %rsp
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
	je then15644
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end15645
then15644:
	movq $0, %rcx
	movq %rcx, %rcx
end15645:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -288(%r15)
	movq -288(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -288(%r15), %rax
	movq %rax, -40(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then15646
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end15647
then15646:
	movq $0, %rcx
	movq %rcx, %rcx
end15647:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -16(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then15648
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end15649
then15648:
	movq $0, %rcx
	movq %rcx, %rcx
end15649:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -112(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then15650
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end15651
then15650:
	movq $0, %rcx
	movq %rcx, %rcx
end15651:
	movq free_ptr(%rip), %rax
	movq %rax, -56(%r15)
	addq $16, free_ptr(%rip)
	movq -56(%r15), %r11
	movq $3, 0(%r11)
	movq -56(%r15), %rax
	movq %rax, -232(%r15)
	movq -232(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -232(%r15), %rax
	movq %rax, -184(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then15652
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end15653
then15652:
	movq $0, %rcx
	movq %rcx, %rcx
end15653:
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
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then15654
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end15655
then15654:
	movq $0, %rcx
	movq %rcx, %rcx
end15655:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -24(%r15)
	movq -24(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -24(%r15), %rax
	movq %rax, -160(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then15656
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end15657
then15656:
	movq $0, %rcx
	movq %rcx, %rcx
end15657:
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then15658
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end15659
then15658:
	movq $0, %rcx
	movq %rcx, %rcx
end15659:
	movq free_ptr(%rip), %rax
	movq %rax, -216(%r15)
	addq $16, free_ptr(%rip)
	movq -216(%r15), %r11
	movq $3, 0(%r11)
	movq -216(%r15), %rax
	movq %rax, -408(%r15)
	movq -408(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -408(%r15), %rax
	movq %rax, -176(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then15660
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end15661
then15660:
	movq $0, %rcx
	movq %rcx, %rcx
end15661:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -336(%r15)
	movq -336(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -336(%r15), %rax
	movq %rax, -208(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then15662
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end15663
then15662:
	movq $0, %rcx
	movq %rcx, %rcx
end15663:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -32(%r15)
	movq -32(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -32(%r15), %rax
	movq %rax, -168(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then15664
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end15665
then15664:
	movq $0, %rcx
	movq %rcx, %rcx
end15665:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -48(%r15)
	movq -48(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -48(%r15), %rax
	movq %rax, -64(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then15666
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end15667
then15666:
	movq $0, %rcx
	movq %rcx, %rcx
end15667:
	movq free_ptr(%rip), %rax
	movq %rax, -424(%r15)
	addq $16, free_ptr(%rip)
	movq -424(%r15), %r11
	movq $3, 0(%r11)
	movq -424(%r15), %rax
	movq %rax, -432(%r15)
	movq -432(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -432(%r15), %rax
	movq %rax, -104(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then15668
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end15669
then15668:
	movq $0, %rcx
	movq %rcx, %rcx
end15669:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -400(%r15)
	movq -400(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -400(%r15), %rax
	movq %rax, -272(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then15670
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end15671
then15670:
	movq $0, %rcx
	movq %rcx, %rcx
end15671:
	movq free_ptr(%rip), %rax
	movq %rax, -128(%r15)
	addq $16, free_ptr(%rip)
	movq -128(%r15), %r11
	movq $3, 0(%r11)
	movq -128(%r15), %rax
	movq %rax, -192(%r15)
	movq -192(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -192(%r15), %rax
	movq %rax, -320(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then15672
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end15673
then15672:
	movq $0, %rcx
	movq %rcx, %rcx
end15673:
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then15674
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end15675
then15674:
	movq $0, %rcx
	movq %rcx, %rcx
end15675:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -264(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then15676
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end15677
then15676:
	movq $0, %rcx
	movq %rcx, %rcx
end15677:
	movq free_ptr(%rip), %rax
	movq %rax, -72(%r15)
	addq $16, free_ptr(%rip)
	movq -72(%r15), %r11
	movq $3, 0(%r11)
	movq -72(%r15), %rax
	movq %rax, -344(%r15)
	movq -344(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -344(%r15), %rax
	movq %rax, -152(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then15678
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end15679
then15678:
	movq $0, %rcx
	movq %rcx, %rcx
end15679:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -304(%r15)
	movq -304(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -304(%r15), %rax
	movq %rax, -256(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then15680
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end15681
then15680:
	movq $0, %rcx
	movq %rcx, %rcx
end15681:
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $16, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $3, 0(%r11)
	movq -8(%r15), %rax
	movq %rax, -88(%r15)
	movq -88(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -88(%r15), %rax
	movq %rax, -96(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then15682
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end15683
then15682:
	movq $0, %rcx
	movq %rcx, %rcx
end15683:
	movq free_ptr(%rip), %rax
	movq %rax, -120(%r15)
	addq $16, free_ptr(%rip)
	movq -120(%r15), %r11
	movq $3, 0(%r11)
	movq -120(%r15), %rax
	movq %rax, -240(%r15)
	movq -240(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -240(%r15), %rax
	movq %rax, -384(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then15684
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end15685
then15684:
	movq $0, %rcx
	movq %rcx, %rcx
end15685:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -40(%r15), %r11
	movq 8(%r11), %rbx
	movq -16(%r15), %r11
	movq 8(%r11), %rdx
	movq -112(%r15), %r11
	movq 8(%r11), %rsi
	movq -184(%r15), %r11
	movq 8(%r11), %rdi
	movq %r12, %r11
	movq 8(%r11), %r8
	movq -160(%r15), %r11
	movq 8(%r11), %r9
	movq %r14, %r11
	movq 8(%r11), %r10
	movq -176(%r15), %r11
	movq 8(%r11), %r12
	movq -208(%r15), %r11
	movq 8(%r11), %r14
	movq -168(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -120(%rbp)
	movq -64(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -72(%rbp)
	movq -104(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -48(%rbp)
	movq -272(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -80(%rbp)
	movq -320(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -128(%rbp)
	movq %r13, %r11
	movq 8(%r11), %r13
	movq -264(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -56(%rbp)
	movq -152(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -112(%rbp)
	movq -256(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -96(%rbp)
	movq -96(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -184(%rbp)
	movq -384(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -168(%rbp)
	movq %rcx, %r11
	movq 8(%r11), %rcx
	addq $21, %rcx
	movq -168(%rbp), %rax
	movq %rax, -104(%rbp)
	addq %rcx, -104(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -192(%rbp)
	movq -104(%rbp), %rax
	addq %rax, -192(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -176(%rbp)
	movq -192(%rbp), %rax
	addq %rax, -176(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -200(%rbp)
	movq -176(%rbp), %rax
	addq %rax, -200(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -144(%rbp)
	movq -200(%rbp), %rax
	addq %rax, -144(%rbp)
	addq -144(%rbp), %r13
	movq -128(%rbp), %rax
	movq %rax, -152(%rbp)
	addq %r13, -152(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -160(%rbp)
	movq -152(%rbp), %rax
	addq %rax, -160(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -136(%rbp)
	movq -160(%rbp), %rax
	addq %rax, -136(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -136(%rbp), %rax
	addq %rax, -88(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -64(%rbp)
	movq -88(%rbp), %rax
	addq %rax, -64(%rbp)
	addq -64(%rbp), %r14
	addq %r14, %r12
	addq %r12, %r10
	addq %r10, %r9
	addq %r9, %r8
	addq %r8, %rdi
	addq %rdi, %rsi
	addq %rsi, %rdx
	addq %rdx, %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $504, %r15
	addq $208, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
