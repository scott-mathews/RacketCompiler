	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $96, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $832, %r15
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

	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	addq $8, %rbx
	movq fromspace_end(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq %rax, %rbx
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then41786
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	movq $0, %rbx
	jmp end41787
then41786:
	movq $0, %rbx
	movq %rbx, %rbx
end41787:
	movq free_ptr(%rip), %rax
	movq %rax, %r12
	addq $8, free_ptr(%rip)
	movq %r12, %r11
	movq $1, 0(%r11)
	movq $42, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $24, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then41788
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
	jmp end41789
then41788:
	movq $0, %rcx
	movq %rcx, %rcx
end41789:
	movq free_ptr(%rip), %rax
	movq %rax, %r13
	addq $24, free_ptr(%rip)
	movq %r13, %r11
	movq $133, 0(%r11)
	movq %r13, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %r13, %r11
	movq %r12, %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq $42, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $32, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then41790
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, %rcx
	jmp end41791
then41790:
	movq $0, %rcx
	movq %rcx, %rcx
end41791:
	movq free_ptr(%rip), %rax
	movq %rax, -760(%r15)
	addq $32, free_ptr(%rip)
	movq -760(%r15), %r11
	movq $647, 0(%r11)
	movq -760(%r15), %r11
	movq %r13, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -760(%r15), %r11
	movq %rbx, %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq -760(%r15), %r11
	movq %r12, %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq -760(%r15), %rax
	movq %rax, -184(%r15)
	movq -184(%r15), %rax
	movq %rax, -560(%r15)
	movq $42, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $40, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then41792
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	movq $0, %rcx
	jmp end41793
then41792:
	movq $0, %rcx
	movq %rcx, %rcx
end41793:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $40, free_ptr(%rip)
	movq %rcx, %r11
	movq $1673, 0(%r11)
	movq %rcx, %r11
	movq -560(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
	movq -184(%r15), %rax
	movq %rax, -680(%r15)
	movq $42, %r14
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then41794
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end41795
then41794:
	movq $0, %rcx
	movq %rcx, %rcx
end41795:
	movq free_ptr(%rip), %rax
	movq %rax, -768(%r15)
	addq $48, free_ptr(%rip)
	movq -768(%r15), %r11
	movq $3723, 0(%r11)
	movq -768(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -768(%r15), %r11
	movq -680(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq -768(%r15), %r11
	movq %r13, %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq -768(%r15), %r11
	movq %r14, %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq -768(%r15), %r11
	movq %r12, %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq -768(%r15), %rax
	movq %rax, -312(%r15)
	movq -312(%r15), %rax
	movq %rax, -320(%r15)
	movq -184(%r15), %rax
	movq %rax, -240(%r15)
	movq $42, %r14
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $56, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then41796
	movq %r15, %rdi
	movq $56, %rsi
	callq collect
	movq $0, %rcx
	jmp end41797
then41796:
	movq $0, %rcx
	movq %rcx, %rcx
end41797:
	movq free_ptr(%rip), %rax
	movq %rax, -384(%r15)
	addq $56, free_ptr(%rip)
	movq -384(%r15), %r11
	movq $7821, 0(%r11)
	movq -384(%r15), %r11
	movq -320(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -384(%r15), %r11
	movq %rbx, %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq -384(%r15), %r11
	movq -240(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq -384(%r15), %r11
	movq %r13, %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq -384(%r15), %r11
	movq %r14, %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq -384(%r15), %r11
	movq %r12, %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq -384(%r15), %rax
	movq %rax, -256(%r15)
	movq -256(%r15), %rax
	movq %rax, -328(%r15)
	movq -312(%r15), %rax
	movq %rax, -192(%r15)
	movq -184(%r15), %rax
	movq %rax, -824(%r15)
	movq $42, %r14
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $64, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then41798
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	movq $0, %rcx
	jmp end41799
then41798:
	movq $0, %rcx
	movq %rcx, %rcx
end41799:
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	addq $64, free_ptr(%rip)
	movq %rdx, %r11
	movq $16015, 0(%r11)
	movq %rdx, %r11
	movq -328(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -192(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -824(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r14
	movq -256(%r15), %rax
	movq %rax, -80(%r15)
	movq -312(%r15), %rax
	movq %rax, -504(%r15)
	movq -184(%r15), %rax
	movq %rax, -48(%r15)
	movq $42, -56(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $72, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then41800
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %rcx
	jmp end41801
then41800:
	movq $0, %rcx
	movq %rcx, %rcx
end41801:
	movq free_ptr(%rip), %rax
	movq %rax, -208(%r15)
	addq $72, free_ptr(%rip)
	movq -208(%r15), %r11
	movq $32401, 0(%r11)
	movq -208(%r15), %r11
	movq %r14, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -208(%r15), %r11
	movq -80(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq -208(%r15), %r11
	movq -504(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq -208(%r15), %r11
	movq %rbx, %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq -208(%r15), %r11
	movq -48(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq -208(%r15), %r11
	movq %r13, %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq -208(%r15), %r11
	movq -56(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq -208(%r15), %r11
	movq %r12, %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq -208(%r15), %rax
	movq %rax, -56(%r15)
	movq -56(%r15), %rax
	movq %rax, -344(%r15)
	movq -256(%r15), %rax
	movq %rax, -64(%r15)
	movq -312(%r15), %rax
	movq %rax, -352(%r15)
	movq -184(%r15), %rax
	movq %rax, -160(%r15)
	movq $42, -64(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $80, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then41802
	movq %r15, %rdi
	movq $80, %rsi
	callq collect
	movq $0, %rcx
	jmp end41803
then41802:
	movq $0, %rcx
	movq %rcx, %rcx
end41803:
	movq free_ptr(%rip), %rax
	movq %rax, -112(%r15)
	addq $80, free_ptr(%rip)
	movq -112(%r15), %r11
	movq $65171, 0(%r11)
	movq -112(%r15), %r11
	movq -344(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -112(%r15), %r11
	movq %r14, %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq -112(%r15), %r11
	movq -64(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq -112(%r15), %r11
	movq -352(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq -112(%r15), %r11
	movq %rbx, %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq -112(%r15), %r11
	movq -160(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq -112(%r15), %r11
	movq %r13, %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq -112(%r15), %r11
	movq -64(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq -112(%r15), %r11
	movq %r12, %rax
	movq %rax, 72(%r11)
	movq $0, %rcx
	movq -112(%r15), %rax
	movq %rax, -576(%r15)
	movq -576(%r15), %rax
	movq %rax, -752(%r15)
	movq -56(%r15), %rax
	movq %rax, -264(%r15)
	movq -256(%r15), %rax
	movq %rax, -456(%r15)
	movq -312(%r15), %rax
	movq %rax, -488(%r15)
	movq -184(%r15), %rax
	movq %rax, -704(%r15)
	movq $42, -48(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $88, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then41804
	movq %r15, %rdi
	movq $88, %rsi
	callq collect
	movq $0, %rcx
	jmp end41805
then41804:
	movq $0, %rcx
	movq %rcx, %rcx
end41805:
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	addq $88, free_ptr(%rip)
	movq %rdx, %r11
	movq $130709, 0(%r11)
	movq %rdx, %r11
	movq -752(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -264(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -456(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -488(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -704(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -48(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, %rax
	movq %rax, 80(%r11)
	movq $0, %rcx
	movq %rdx, -360(%r15)
	movq -360(%r15), %rax
	movq %rax, -816(%r15)
	movq -576(%r15), %rax
	movq %rax, -600(%r15)
	movq -56(%r15), %rax
	movq %rax, -248(%r15)
	movq -256(%r15), %rax
	movq %rax, -792(%r15)
	movq -312(%r15), %rax
	movq %rax, -552(%r15)
	movq -184(%r15), %rax
	movq %rax, -656(%r15)
	movq $42, -80(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $96, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then41806
	movq %r15, %rdi
	movq $96, %rsi
	callq collect
	movq $0, %rcx
	jmp end41807
then41806:
	movq $0, %rcx
	movq %rcx, %rcx
end41807:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $96, free_ptr(%rip)
	movq %rcx, %r11
	movq $261783, 0(%r11)
	movq %rcx, %r11
	movq -816(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -600(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -248(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -792(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -552(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -656(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, %rax
	movq %rax, 72(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -80(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 88(%r11)
	movq $0, %rdx
	movq %rcx, -728(%r15)
	movq -728(%r15), %rax
	movq %rax, -496(%r15)
	movq -360(%r15), %rax
	movq %rax, -32(%r15)
	movq -576(%r15), %rax
	movq %rax, -88(%r15)
	movq -56(%r15), %rax
	movq %rax, -736(%r15)
	movq -256(%r15), %rax
	movq %rax, -296(%r15)
	movq -312(%r15), %rax
	movq %rax, -288(%r15)
	movq -184(%r15), %rax
	movq %rax, -440(%r15)
	movq $42, -72(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $104, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then41808
	movq %r15, %rdi
	movq $104, %rsi
	callq collect
	movq $0, %rcx
	jmp end41809
then41808:
	movq $0, %rcx
	movq %rcx, %rcx
end41809:
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	addq $104, free_ptr(%rip)
	movq %rdx, %r11
	movq $523929, 0(%r11)
	movq %rdx, %r11
	movq -496(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -32(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -88(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -736(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -296(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -288(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -440(%r15), %rax
	movq %rax, 72(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, %rax
	movq %rax, 80(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -72(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, %rax
	movq %rax, 96(%r11)
	movq $0, %rcx
	movq %rdx, -808(%r15)
	movq -808(%r15), %rax
	movq %rax, -16(%r15)
	movq -728(%r15), %rax
	movq %rax, -608(%r15)
	movq -360(%r15), %rax
	movq %rax, -584(%r15)
	movq -576(%r15), %rax
	movq %rax, -216(%r15)
	movq -56(%r15), %rax
	movq %rax, -424(%r15)
	movq -256(%r15), %rax
	movq %rax, -512(%r15)
	movq -312(%r15), %rax
	movq %rax, -8(%r15)
	movq -184(%r15), %rax
	movq %rax, -224(%r15)
	movq %r13, -544(%r15)
	movq $42, %r13
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $112, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then41810
	movq %r15, %rdi
	movq $112, %rsi
	callq collect
	movq $0, %rcx
	jmp end41811
then41810:
	movq $0, %rcx
	movq %rcx, %rcx
end41811:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $112, free_ptr(%rip)
	movq %rcx, %r11
	movq $1048219, 0(%r11)
	movq %rcx, %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -608(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -584(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -216(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -424(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -512(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -8(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 72(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -224(%r15), %rax
	movq %rax, 80(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -544(%r15), %rax
	movq %rax, 88(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r13, %rax
	movq %rax, 96(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 104(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq 96(%r11), %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $832, %r15
	addq $96, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
