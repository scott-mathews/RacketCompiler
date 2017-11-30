	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $112, %rsp
	addq $32, %r15
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, -16(%r15)
	movq -16(%r15), %rax
	movq %rax, -32(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -80(%rbp)
	addq $16, -80(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -72(%rbp)
	movq -80(%rbp), %rax
	cmpq %rax, -72(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -112(%rbp)
	cmpq $1, -112(%rbp)
	je then485679
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -64(%rbp)
	jmp end485680
then485679:
	movq $0, -104(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -64(%rbp)
end485680:
	movq -64(%rbp), %rax
	movq %rax, -88(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $16, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $131, 0(%r11)
	movq -8(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq -32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -24(%r15), %rax

	addq $112, %rsp
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
	subq $112, %rsp
	addq $32, %r15
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, -16(%r15)
	movq -16(%r15), %rax
	movq %rax, -32(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -56(%rbp)
	addq $16, -56(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -48(%rbp)
	movq -56(%rbp), %rax
	cmpq %rax, -48(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -112(%rbp)
	cmpq $1, -112(%rbp)
	je then485681
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -88(%rbp)
	jmp end485682
then485681:
	movq $0, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -88(%rbp)
end485682:
	movq -88(%rbp), %rax
	movq %rax, -96(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -24(%r15)
	addq $16, free_ptr(%rip)
	movq -24(%r15), %r11
	movq $131, 0(%r11)
	movq -24(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq -32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -80(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -104(%rbp)
	movq -8(%r15), %rax

	addq $112, %rsp
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
	subq $112, %rsp
	addq $32, %r15
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, -8(%r15)
	movq -8(%r15), %rax
	movq %rax, -32(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -80(%rbp)
	addq $16, -80(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -72(%rbp)
	movq -80(%rbp), %rax
	cmpq %rax, -72(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -64(%rbp)
	cmpq $1, -64(%rbp)
	je then485683
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -112(%rbp)
	jmp end485684
then485683:
	movq $0, -88(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -112(%rbp)
end485684:
	movq -112(%rbp), %rax
	movq %rax, -104(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -24(%r15)
	addq $16, free_ptr(%rip)
	movq -24(%r15), %r11
	movq $131, 0(%r11)
	movq -24(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq -32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -16(%r15), %rax

	addq $112, %rsp
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
	subq $112, %rsp
	addq $32, %r15
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, -16(%r15)
	movq -16(%r15), %rax
	movq %rax, -24(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -80(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -96(%rbp)
	addq $16, -96(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -48(%rbp)
	movq -96(%rbp), %rax
	cmpq %rax, -48(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -72(%rbp)
	cmpq $1, -72(%rbp)
	je then485685
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -112(%rbp)
	jmp end485686
then485685:
	movq $0, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -112(%rbp)
end485686:
	movq -112(%rbp), %rax
	movq %rax, -88(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $16, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $131, 0(%r11)
	movq -8(%r15), %rax
	movq %rax, -32(%r15)
	movq -32(%r15), %r11
	movq -24(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -104(%rbp)
	movq -32(%r15), %rax

	addq $112, %rsp
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
	subq $696, %rsp
	addq $184, %r15
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

	movq %rdi, -72(%rbp)
	movq %rsi, -24(%r15)
	movq $0, %rax
	cmpq -72(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -408(%rbp)
	cmpq $1, -408(%rbp)
	je then485687
	movq $1, -104(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -472(%rbp)
	movq -472(%rbp), %rax
	movq %rax, -88(%rbp)
	addq $16, -88(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -176(%rbp)
	movq -88(%rbp), %rax
	cmpq %rax, -176(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -400(%rbp)
	cmpq $1, -400(%rbp)
	je then485689
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -64(%rbp)
	jmp end485690
then485689:
	movq $0, -312(%rbp)
	movq -312(%rbp), %rax
	movq %rax, -64(%rbp)
end485690:
	movq -64(%rbp), %rax
	movq %rax, -224(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -120(%r15)
	addq $16, free_ptr(%rip)
	movq -120(%r15), %r11
	movq $3, 0(%r11)
	movq -120(%r15), %rax
	movq %rax, -64(%r15)
	movq -64(%r15), %r11
	movq -104(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -608(%rbp)
	movq -608(%rbp), %rax
	movq %rax, -344(%rbp)
	movq -64(%r15), %rax
	movq %rax, -16(%r15)
	movq $2, -200(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -440(%rbp)
	movq -440(%rbp), %rax
	movq %rax, -520(%rbp)
	addq $16, -520(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -136(%rbp)
	movq -520(%rbp), %rax
	cmpq %rax, -136(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -272(%rbp)
	cmpq $1, -272(%rbp)
	je then485691
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -624(%rbp)
	jmp end485692
then485691:
	movq $0, -584(%rbp)
	movq -584(%rbp), %rax
	movq %rax, -624(%rbp)
end485692:
	movq -624(%rbp), %rax
	movq %rax, -336(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -104(%r15)
	addq $16, free_ptr(%rip)
	movq -104(%r15), %r11
	movq $3, 0(%r11)
	movq -104(%r15), %rax
	movq %rax, -176(%r15)
	movq -176(%r15), %r11
	movq -200(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -296(%rbp)
	movq -296(%rbp), %rax
	movq %rax, -664(%rbp)
	movq -176(%r15), %rax
	movq %rax, -80(%r15)
	movq $1, -160(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -464(%rbp)
	movq -464(%rbp), %rax
	movq %rax, -168(%rbp)
	addq $16, -168(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -528(%rbp)
	movq -168(%rbp), %rax
	cmpq %rax, -528(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -392(%rbp)
	cmpq $1, -392(%rbp)
	je then485693
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -56(%rbp)
	jmp end485694
then485693:
	movq $0, -288(%rbp)
	movq -288(%rbp), %rax
	movq %rax, -56(%rbp)
end485694:
	movq -56(%rbp), %rax
	movq %rax, -376(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -48(%r15)
	addq $16, free_ptr(%rip)
	movq -48(%r15), %r11
	movq $3, 0(%r11)
	movq -48(%r15), %rax
	movq %rax, -88(%r15)
	movq -88(%r15), %r11
	movq -160(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -576(%rbp)
	movq -576(%rbp), %rax
	movq %rax, -256(%rbp)
	movq -88(%r15), %rax
	movq %rax, -56(%r15)
	movq $2, -456(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -504(%rbp)
	movq -504(%rbp), %rax
	movq %rax, -192(%rbp)
	addq $16, -192(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -112(%rbp)
	movq -192(%rbp), %rax
	cmpq %rax, -112(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -672(%rbp)
	cmpq $1, -672(%rbp)
	je then485695
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -600(%rbp)
	jmp end485696
then485695:
	movq $0, -328(%rbp)
	movq -328(%rbp), %rax
	movq %rax, -600(%rbp)
end485696:
	movq -600(%rbp), %rax
	movq %rax, -544(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -152(%r15)
	addq $16, free_ptr(%rip)
	movq -152(%r15), %r11
	movq $3, 0(%r11)
	movq -152(%r15), %rax
	movq %rax, -32(%r15)
	movq -32(%r15), %r11
	movq -456(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -640(%rbp)
	movq -640(%rbp), %rax
	movq %rax, -568(%rbp)
	movq -32(%r15), %rax
	movq %rax, -72(%r15)
	movq $1, -488(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -496(%rbp)
	addq $16, -496(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -152(%rbp)
	movq -496(%rbp), %rax
	cmpq %rax, -152(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -368(%rbp)
	cmpq $1, -368(%rbp)
	je then485697
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -648(%rbp)
	jmp end485698
then485697:
	movq $0, -360(%rbp)
	movq -360(%rbp), %rax
	movq %rax, -648(%rbp)
end485698:
	movq -648(%rbp), %rax
	movq %rax, -264(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $16, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $3, 0(%r11)
	movq -8(%r15), %rax
	movq %rax, -160(%r15)
	movq -160(%r15), %r11
	movq -488(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -352(%rbp)
	movq -352(%rbp), %rax
	movq %rax, -632(%rbp)
	movq -160(%r15), %rax
	movq %rax, -168(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -208(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -448(%rbp)
	addq $48, -448(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -432(%rbp)
	movq -448(%rbp), %rax
	cmpq %rax, -432(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -320(%rbp)
	cmpq $1, -320(%rbp)
	je then485699
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, -280(%rbp)
	jmp end485700
then485699:
	movq $0, -616(%rbp)
	movq -616(%rbp), %rax
	movq %rax, -280(%rbp)
end485700:
	movq -280(%rbp), %rax
	movq %rax, -536(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -144(%r15)
	addq $48, free_ptr(%rip)
	movq -144(%r15), %r11
	movq $3979, 0(%r11)
	movq -144(%r15), %rax
	movq %rax, -184(%r15)
	movq -184(%r15), %r11
	movq -168(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -184(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -128(%rbp)
	movq -184(%r15), %r11
	movq -72(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -232(%rbp)
	movq -232(%rbp), %rax
	movq %rax, -480(%rbp)
	movq -184(%r15), %r11
	movq -56(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -304(%rbp)
	movq -304(%rbp), %rax
	movq %rax, -552(%rbp)
	movq -184(%r15), %r11
	movq -80(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -240(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -680(%rbp)
	movq -184(%r15), %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -656(%rbp)
	movq -656(%rbp), %rax
	movq %rax, -592(%rbp)
	movq -184(%r15), %rax
	movq %rax, -136(%r15)
	leaq function4(%rip), %rax
	movq %rax, -120(%rbp)
	movq $1, -80(%rbp)
	negq -80(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -512(%rbp)
	movq -80(%rbp), %rax
	addq %rax, -512(%rbp)
	movq -512(%rbp), %rdi
	movq -24(%r15), %rsi
	callq *-120(%rbp)
	movq %rax, -112(%r15)
	movq -112(%r15), %rax
	movq %rax, -384(%rbp)
	jmp end485688
then485687:
	movq -24(%r15), %rax
	movq %rax, -128(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -424(%rbp)
	movq -424(%rbp), %rax
	movq %rax, -144(%rbp)
	addq $16, -144(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -216(%rbp)
	movq -144(%rbp), %rax
	cmpq %rax, -216(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -416(%rbp)
	cmpq $1, -416(%rbp)
	je then485701
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -48(%rbp)
	jmp end485702
then485701:
	movq $0, -696(%rbp)
	movq -696(%rbp), %rax
	movq %rax, -48(%rbp)
end485702:
	movq -48(%rbp), %rax
	movq %rax, -560(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -96(%r15)
	addq $16, free_ptr(%rip)
	movq -96(%r15), %r11
	movq $131, 0(%r11)
	movq -96(%r15), %rax
	movq %rax, -40(%r15)
	movq -40(%r15), %r11
	movq -128(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -688(%rbp)
	movq -688(%rbp), %rax
	movq %rax, -248(%rbp)
	movq -40(%r15), %rax
	movq %rax, -384(%rbp)
end485688:
	movq -384(%rbp), %rax

	addq $696, %rsp
	subq $184, %r15
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
	subq $280, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $112, %r15
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
	movq %rax, -160(%rbp)
	leaq function2(%rip), %rax
	movq %rax, -120(%rbp)
	leaq function3(%rip), %rax
	movq %rax, -144(%rbp)
	leaq function4(%rip), %rax
	movq %rax, -88(%rbp)
	movq $42, -56(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -168(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -64(%rbp)
	addq $16, -64(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -80(%rbp)
	movq -64(%rbp), %rax
	cmpq %rax, -80(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -208(%rbp)
	cmpq $1, -208(%rbp)
	je then485703
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -128(%rbp)
	jmp end485704
then485703:
	movq $0, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -128(%rbp)
end485704:
	movq -128(%rbp), %rax
	movq %rax, -192(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -56(%r15)
	movq -56(%r15), %r11
	movq -56(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -216(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -136(%rbp)
	movq $1, %rdi
	movq -56(%r15), %rsi
	callq *-88(%rbp)
	movq %rax, -104(%r15)
	movq -104(%r15), %rdi
	callq *-144(%rbp)
	movq %rax, -72(%r15)
	movq -72(%r15), %rdi
	callq *-120(%rbp)
	movq %rax, -32(%r15)
	movq -32(%r15), %rax
	movq %rax, -40(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -104(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -232(%rbp)
	addq $16, -232(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -184(%rbp)
	movq -232(%rbp), %rax
	cmpq %rax, -184(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -48(%rbp)
	cmpq $1, -48(%rbp)
	je then485705
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -152(%rbp)
	jmp end485706
then485705:
	movq $0, -176(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -152(%rbp)
end485706:
	movq -152(%rbp), %rax
	movq %rax, -224(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -88(%r15)
	addq $16, free_ptr(%rip)
	movq -88(%r15), %r11
	movq $131, 0(%r11)
	movq -88(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq -40(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -200(%rbp)
	movq -8(%r15), %rdi
	callq *-160(%rbp)
	movq %rax, -80(%r15)
	movq -80(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -112(%r15)
	movq -112(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -96(%r15)
	movq -96(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -48(%r15)
	movq -48(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -64(%r15)
	movq -64(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -72(%rbp)
	movq -72(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $112, %r15
	addq $280, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
