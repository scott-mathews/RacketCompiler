	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $120, %rsp
	addq $32, %r15
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, -64(%rbp)
	movq %rsi, -32(%r15)
	movq -32(%r15), %rax
	movq %rax, -8(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -48(%rbp)
	addq $16, -48(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -88(%rbp)
	movq -48(%rbp), %rax
	cmpq %rax, -88(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -112(%rbp)
	cmpq $1, -112(%rbp)
	je then380812
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -104(%rbp)
	jmp end380813
then380812:
	movq $0, -120(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -104(%rbp)
end380813:
	movq -104(%rbp), %rax
	movq %rax, -96(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -24(%r15)
	addq $16, free_ptr(%rip)
	movq -24(%r15), %r11
	movq $131, 0(%r11)
	movq -24(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq -8(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -80(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -72(%rbp)
	movq -16(%r15), %rax

	addq $120, %rsp
	subq $32, %r15
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
	subq $120, %rsp
	addq $32, %r15
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, -64(%rbp)
	movq %rsi, -8(%r15)
	movq -8(%r15), %rax
	movq %rax, -24(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -104(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -48(%rbp)
	addq $16, -48(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -56(%rbp)
	movq -48(%rbp), %rax
	cmpq %rax, -56(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -120(%rbp)
	cmpq $1, -120(%rbp)
	je then380814
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -80(%rbp)
	jmp end380815
then380814:
	movq $0, -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -80(%rbp)
end380815:
	movq -80(%rbp), %rax
	movq %rax, -72(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $131, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -32(%r15)
	movq -32(%r15), %r11
	movq -24(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -88(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -112(%rbp)
	movq -32(%r15), %rax

	addq $120, %rsp
	subq $32, %r15
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
	subq $120, %rsp
	addq $32, %r15
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, -64(%rbp)
	movq %rsi, -8(%r15)
	movq -8(%r15), %rax
	movq %rax, -24(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -88(%rbp)
	addq $16, -88(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -96(%rbp)
	movq -88(%rbp), %rax
	cmpq %rax, -96(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -80(%rbp)
	cmpq $1, -80(%rbp)
	je then380816
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -112(%rbp)
	jmp end380817
then380816:
	movq $0, -120(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -112(%rbp)
end380817:
	movq -112(%rbp), %rax
	movq %rax, -72(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -32(%r15)
	addq $16, free_ptr(%rip)
	movq -32(%r15), %r11
	movq $131, 0(%r11)
	movq -32(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq -24(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -104(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -56(%rbp)
	movq -16(%r15), %rax

	addq $120, %rsp
	subq $32, %r15
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
	subq $120, %rsp
	addq $32, %r15
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, -80(%rbp)
	movq %rsi, -8(%r15)
	movq -8(%r15), %rax
	movq %rax, -16(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -120(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -72(%rbp)
	addq $16, -72(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -88(%rbp)
	movq -72(%rbp), %rax
	cmpq %rax, -88(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -96(%rbp)
	cmpq $1, -96(%rbp)
	je then380818
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -48(%rbp)
	jmp end380819
then380818:
	movq $0, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -48(%rbp)
end380819:
	movq -48(%rbp), %rax
	movq %rax, -104(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -32(%r15)
	addq $16, free_ptr(%rip)
	movq -32(%r15), %r11
	movq $131, 0(%r11)
	movq -32(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -112(%rbp)
	movq -24(%r15), %rax

	addq $120, %rsp
	subq $32, %r15
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
	subq $792, %rsp
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

	movq %rdi, -408(%rbp)
	movq %rsi, -472(%rbp)
	movq %rdx, -104(%r15)
	movq $0, %rax
	cmpq -472(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -488(%rbp)
	cmpq $1, -488(%rbp)
	je then380820
	movq $1, -120(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -720(%rbp)
	movq -720(%rbp), %rax
	movq %rax, -568(%rbp)
	addq $16, -568(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -256(%rbp)
	movq -568(%rbp), %rax
	cmpq %rax, -256(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -480(%rbp)
	cmpq $1, -480(%rbp)
	je then380822
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -80(%rbp)
	jmp end380823
then380822:
	movq $0, -152(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -80(%rbp)
end380823:
	movq -80(%rbp), %rax
	movq %rax, -272(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -184(%r15)
	addq $16, free_ptr(%rip)
	movq -184(%r15), %r11
	movq $3, 0(%r11)
	movq -184(%r15), %rax
	movq %rax, -80(%r15)
	movq -80(%r15), %r11
	movq -120(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -144(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -616(%rbp)
	movq -80(%r15), %rax
	movq %rax, -112(%r15)
	movq $2, -344(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -688(%rbp)
	movq -688(%rbp), %rax
	movq %rax, -384(%rbp)
	addq $16, -384(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -208(%rbp)
	movq -384(%rbp), %rax
	cmpq %rax, -208(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -544(%rbp)
	cmpq $1, -544(%rbp)
	je then380824
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -48(%rbp)
	jmp end380825
then380824:
	movq $0, -376(%rbp)
	movq -376(%rbp), %rax
	movq %rax, -48(%rbp)
end380825:
	movq -48(%rbp), %rax
	movq %rax, -192(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -120(%r15)
	addq $16, free_ptr(%rip)
	movq -120(%r15), %r11
	movq $3, 0(%r11)
	movq -120(%r15), %rax
	movq %rax, -192(%r15)
	movq -192(%r15), %r11
	movq -344(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -368(%rbp)
	movq -368(%rbp), %rax
	movq %rax, -576(%rbp)
	movq -192(%r15), %rax
	movq %rax, -152(%r15)
	movq $1, -280(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -624(%rbp)
	movq -624(%rbp), %rax
	movq %rax, -288(%rbp)
	addq $16, -288(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -160(%rbp)
	movq -288(%rbp), %rax
	cmpq %rax, -160(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -520(%rbp)
	cmpq $1, -520(%rbp)
	je then380826
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -104(%rbp)
	jmp end380827
then380826:
	movq $0, -224(%rbp)
	movq -224(%rbp), %rax
	movq %rax, -104(%rbp)
end380827:
	movq -104(%rbp), %rax
	movq %rax, -560(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -168(%r15)
	movq -168(%r15), %r11
	movq -280(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -232(%rbp)
	movq -232(%rbp), %rax
	movq %rax, -696(%rbp)
	movq -168(%r15), %rax
	movq %rax, -176(%r15)
	movq $2, -752(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -744(%rbp)
	movq -744(%rbp), %rax
	movq %rax, -392(%rbp)
	addq $16, -392(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -448(%rbp)
	movq -392(%rbp), %rax
	cmpq %rax, -448(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -504(%rbp)
	cmpq $1, -504(%rbp)
	je then380828
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -64(%rbp)
	jmp end380829
then380828:
	movq $0, -664(%rbp)
	movq -664(%rbp), %rax
	movq %rax, -64(%rbp)
end380829:
	movq -64(%rbp), %rax
	movq %rax, -136(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -88(%r15)
	addq $16, free_ptr(%rip)
	movq -88(%r15), %r11
	movq $3, 0(%r11)
	movq -88(%r15), %rax
	movq %rax, -40(%r15)
	movq -40(%r15), %r11
	movq -752(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -304(%rbp)
	movq -304(%rbp), %rax
	movq %rax, -632(%rbp)
	movq -40(%r15), %rax
	movq %rax, -64(%r15)
	movq $1, -760(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -784(%rbp)
	movq -784(%rbp), %rax
	movq %rax, -432(%rbp)
	addq $16, -432(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -464(%rbp)
	movq -432(%rbp), %rax
	cmpq %rax, -464(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -112(%rbp)
	cmpq $1, -112(%rbp)
	je then380830
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -536(%rbp)
	jmp end380831
then380830:
	movq $0, -312(%rbp)
	movq -312(%rbp), %rax
	movq %rax, -536(%rbp)
end380831:
	movq -536(%rbp), %rax
	movq %rax, -640(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -32(%r15)
	addq $16, free_ptr(%rip)
	movq -32(%r15), %r11
	movq $3, 0(%r11)
	movq -32(%r15), %rax
	movq %rax, -128(%r15)
	movq -128(%r15), %r11
	movq -760(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -704(%rbp)
	movq -704(%rbp), %rax
	movq %rax, -216(%rbp)
	movq -128(%r15), %rax
	movq %rax, -24(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -424(%rbp)
	movq -424(%rbp), %rax
	movq %rax, -400(%rbp)
	addq $48, -400(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -776(%rbp)
	movq -400(%rbp), %rax
	cmpq %rax, -776(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -528(%rbp)
	cmpq $1, -528(%rbp)
	je then380832
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, -72(%rbp)
	jmp end380833
then380832:
	movq $0, -672(%rbp)
	movq -672(%rbp), %rax
	movq %rax, -72(%rbp)
end380833:
	movq -72(%rbp), %rax
	movq %rax, -552(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -56(%r15)
	addq $48, free_ptr(%rip)
	movq -56(%r15), %r11
	movq $3979, 0(%r11)
	movq -56(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq -24(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -296(%rbp)
	movq -296(%rbp), %rax
	movq %rax, -648(%rbp)
	movq -8(%r15), %r11
	movq -64(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -584(%rbp)
	movq -584(%rbp), %rax
	movq %rax, -736(%rbp)
	movq -8(%r15), %r11
	movq -176(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -680(%rbp)
	movq -680(%rbp), %rax
	movq %rax, -200(%rbp)
	movq -8(%r15), %r11
	movq -152(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -168(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -360(%rbp)
	movq -8(%r15), %r11
	movq -112(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -248(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -600(%rbp)
	movq -8(%r15), %rax
	movq %rax, -144(%r15)
	leaq function4(%rip), %rax
	movq %rax, -440(%rbp)
	movq -440(%rbp), %rax
	movq %rax, -792(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -768(%rbp)
	movq -768(%rbp), %rax
	movq %rax, -416(%rbp)
	addq $16, -416(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -456(%rbp)
	movq -416(%rbp), %rax
	cmpq %rax, -456(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -96(%rbp)
	cmpq $1, -96(%rbp)
	je then380834
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -512(%rbp)
	jmp end380835
then380834:
	movq $0, -352(%rbp)
	movq -352(%rbp), %rax
	movq %rax, -512(%rbp)
end380835:
	movq -512(%rbp), %rax
	movq %rax, -608(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -136(%r15)
	addq $16, free_ptr(%rip)
	movq -136(%r15), %r11
	movq $3, 0(%r11)
	movq -136(%r15), %rax
	movq %rax, -72(%r15)
	movq -72(%r15), %r11
	movq -792(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -728(%rbp)
	movq -728(%rbp), %rax
	movq %rax, -264(%rbp)
	movq -72(%r15), %rax
	movq %rax, -200(%r15)
	movq -200(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -336(%rbp)
	movq $1, -320(%rbp)
	negq -320(%rbp)
	movq -472(%rbp), %rax
	movq %rax, -656(%rbp)
	movq -320(%rbp), %rax
	addq %rax, -656(%rbp)
	movq -200(%r15), %rdi
	movq -656(%rbp), %rsi
	movq -104(%r15), %rdx
	callq *-336(%rbp)
	movq %rax, -208(%r15)
	movq -208(%r15), %rax
	movq %rax, -88(%rbp)
	jmp end380821
then380820:
	movq -104(%r15), %rax
	movq %rax, -48(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -128(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -184(%rbp)
	addq $16, -184(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -712(%rbp)
	movq -184(%rbp), %rax
	cmpq %rax, -712(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -56(%rbp)
	cmpq $1, -56(%rbp)
	je then380836
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -496(%rbp)
	jmp end380837
then380836:
	movq $0, -176(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -496(%rbp)
end380837:
	movq -496(%rbp), %rax
	movq %rax, -328(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -96(%r15)
	addq $16, free_ptr(%rip)
	movq -96(%r15), %r11
	movq $131, 0(%r11)
	movq -96(%r15), %rax
	movq %rax, -160(%r15)
	movq -160(%r15), %r11
	movq -48(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -592(%rbp)
	movq -592(%rbp), %rax
	movq %rax, -240(%rbp)
	movq -160(%r15), %rax
	movq %rax, -88(%rbp)
end380821:
	movq -88(%rbp), %rax

	addq $792, %rsp
	subq $208, %r15
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
	subq $632, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
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

	leaq function0(%rip), %rax
	movq %rax, -288(%rbp)
	movq -288(%rbp), %rax
	movq %rax, -304(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -520(%rbp)
	movq -520(%rbp), %rax
	movq %rax, -264(%rbp)
	addq $16, -264(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -224(%rbp)
	movq -264(%rbp), %rax
	cmpq %rax, -224(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -432(%rbp)
	cmpq $1, -432(%rbp)
	je then380838
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -56(%rbp)
	jmp end380839
then380838:
	movq $0, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -56(%rbp)
end380839:
	movq -56(%rbp), %rax
	movq %rax, -384(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -200(%r15)
	addq $16, free_ptr(%rip)
	movq -200(%r15), %r11
	movq $3, 0(%r11)
	movq -200(%r15), %rax
	movq %rax, -64(%r15)
	movq -64(%r15), %r11
	movq -304(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -168(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -352(%rbp)
	movq -64(%r15), %rax
	movq %rax, -56(%r15)
	movq -56(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -552(%rbp)
	leaq function2(%rip), %rax
	movq %rax, -312(%rbp)
	movq -312(%rbp), %rax
	movq %rax, -424(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -256(%rbp)
	movq -256(%rbp), %rax
	movq %rax, -544(%rbp)
	addq $16, -544(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -512(%rbp)
	movq -544(%rbp), %rax
	cmpq %rax, -512(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -144(%rbp)
	cmpq $1, -144(%rbp)
	je then380840
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -576(%rbp)
	jmp end380841
then380840:
	movq $0, -448(%rbp)
	movq -448(%rbp), %rax
	movq %rax, -576(%rbp)
end380841:
	movq -576(%rbp), %rax
	movq %rax, -88(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -184(%r15)
	addq $16, free_ptr(%rip)
	movq -184(%r15), %r11
	movq $3, 0(%r11)
	movq -184(%r15), %rax
	movq %rax, -48(%r15)
	movq -48(%r15), %r11
	movq -424(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -456(%rbp)
	movq -456(%rbp), %rax
	movq %rax, -72(%rbp)
	movq -48(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -80(%rbp)
	leaq function3(%rip), %rax
	movq %rax, -392(%rbp)
	movq -392(%rbp), %rax
	movq %rax, -280(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -480(%rbp)
	movq -480(%rbp), %rax
	movq %rax, -216(%rbp)
	addq $16, -216(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -296(%rbp)
	movq -216(%rbp), %rax
	cmpq %rax, -296(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -584(%rbp)
	cmpq $1, -584(%rbp)
	je then380842
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -336(%rbp)
	jmp end380843
then380842:
	movq $0, -104(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -336(%rbp)
end380843:
	movq -336(%rbp), %rax
	movq %rax, -136(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -192(%r15)
	movq -192(%r15), %r11
	movq -280(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -400(%rbp)
	movq -192(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -320(%rbp)
	leaq function4(%rip), %rax
	movq %rax, -208(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -560(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -248(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -536(%rbp)
	addq $16, -536(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -504(%rbp)
	movq -536(%rbp), %rax
	cmpq %rax, -504(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -344(%rbp)
	cmpq $1, -344(%rbp)
	je then380844
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -568(%rbp)
	jmp end380845
then380844:
	movq $0, -120(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -568(%rbp)
end380845:
	movq -568(%rbp), %rax
	movq %rax, -376(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -176(%r15)
	addq $16, free_ptr(%rip)
	movq -176(%r15), %r11
	movq $3, 0(%r11)
	movq -176(%r15), %rax
	movq %rax, -168(%r15)
	movq -168(%r15), %r11
	movq -560(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -440(%rbp)
	movq -440(%rbp), %rax
	movq %rax, -64(%rbp)
	movq -168(%r15), %rax
	movq %rax, -208(%r15)
	movq -208(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -328(%rbp)
	movq $42, -232(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -184(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -528(%rbp)
	addq $16, -528(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -488(%rbp)
	movq -528(%rbp), %rax
	cmpq %rax, -488(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -416(%rbp)
	cmpq $1, -416(%rbp)
	je then380846
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -128(%rbp)
	jmp end380847
then380846:
	movq $0, -368(%rbp)
	movq -368(%rbp), %rax
	movq %rax, -128(%rbp)
end380847:
	movq -128(%rbp), %rax
	movq %rax, -48(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -72(%r15)
	addq $16, free_ptr(%rip)
	movq -72(%r15), %r11
	movq $3, 0(%r11)
	movq -72(%r15), %rax
	movq %rax, -104(%r15)
	movq -104(%r15), %r11
	movq -232(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -472(%rbp)
	movq -208(%r15), %rdi
	movq $1, %rsi
	movq -104(%r15), %rdx
	callq *-328(%rbp)
	movq %rax, -136(%r15)
	movq -8(%r15), %rdi
	movq -136(%r15), %rsi
	callq *-320(%rbp)
	movq %rax, -152(%r15)
	movq -24(%r15), %rdi
	movq -152(%r15), %rsi
	callq *-80(%rbp)
	movq %rax, -160(%r15)
	movq -160(%r15), %rax
	movq %rax, -80(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -240(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -496(%rbp)
	addq $16, -496(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -272(%rbp)
	movq -496(%rbp), %rax
	cmpq %rax, -272(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -152(%rbp)
	cmpq $1, -152(%rbp)
	je then380848
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -408(%rbp)
	jmp end380849
then380848:
	movq $0, -176(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -408(%rbp)
end380849:
	movq -408(%rbp), %rax
	movq %rax, -360(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -128(%r15)
	addq $16, free_ptr(%rip)
	movq -128(%r15), %r11
	movq $131, 0(%r11)
	movq -128(%r15), %rax
	movq %rax, -88(%r15)
	movq -88(%r15), %r11
	movq -80(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -464(%rbp)
	movq -464(%rbp), %rax
	movq %rax, -112(%rbp)
	movq -56(%r15), %rdi
	movq -88(%r15), %rsi
	callq *-552(%rbp)
	movq %rax, -144(%r15)
	movq -144(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -120(%r15)
	movq -120(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -40(%r15)
	movq -40(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -112(%r15)
	movq -112(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -32(%r15)
	movq -32(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -96(%r15)
	movq -96(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -200(%rbp)
	movq -200(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $208, %r15
	addq $632, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
