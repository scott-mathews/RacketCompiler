	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $656, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $176, %r15
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

	movq $4, -392(%rbp)
	movq $2, -312(%rbp)
	movq $6, -424(%rbp)
	movq $1, -128(%rbp)
	movq $42, -416(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -488(%rbp)
	movq -488(%rbp), %rax
	movq %rax, -168(%rbp)
	addq $24, -168(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -104(%rbp)
	movq -168(%rbp), %rax
	cmpq %rax, -104(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -560(%rbp)
	cmpq $1, -560(%rbp)
	je then479988
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, -216(%rbp)
	jmp end479989
then479988:
	movq $0, -256(%rbp)
	movq -256(%rbp), %rax
	movq %rax, -216(%rbp)
end479989:
	movq -216(%rbp), %rax
	movq %rax, -512(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -120(%r15)
	addq $24, free_ptr(%rip)
	movq -120(%r15), %r11
	movq $5, 0(%r11)
	movq -120(%r15), %rax
	movq %rax, -48(%r15)
	movq -48(%r15), %r11
	movq -416(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -240(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -528(%rbp)
	movq -48(%r15), %r11
	movq -128(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -464(%rbp)
	movq -48(%r15), %rax
	movq %rax, -80(%r15)
	movq $3, -376(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -456(%rbp)
	movq -456(%rbp), %rax
	movq %rax, -56(%rbp)
	addq $16, -56(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -152(%rbp)
	movq -56(%rbp), %rax
	cmpq %rax, -152(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -576(%rbp)
	cmpq $1, -576(%rbp)
	je then479990
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -272(%rbp)
	jmp end479991
then479990:
	movq $0, -568(%rbp)
	movq -568(%rbp), %rax
	movq %rax, -272(%rbp)
end479991:
	movq -272(%rbp), %rax
	movq %rax, -600(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -72(%r15)
	addq $16, free_ptr(%rip)
	movq -72(%r15), %r11
	movq $3, 0(%r11)
	movq -72(%r15), %rax
	movq %rax, -152(%r15)
	movq -152(%r15), %r11
	movq -376(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -248(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -608(%rbp)
	movq -152(%r15), %rax
	movq %rax, -16(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -80(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -360(%rbp)
	addq $24, -360(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -472(%rbp)
	movq -360(%rbp), %rax
	cmpq %rax, -472(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -288(%rbp)
	cmpq $1, -288(%rbp)
	je then479992
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, -208(%rbp)
	jmp end479993
then479992:
	movq $0, -280(%rbp)
	movq -280(%rbp), %rax
	movq %rax, -208(%rbp)
end479993:
	movq -208(%rbp), %rax
	movq %rax, -544(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $24, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $389, 0(%r11)
	movq -8(%r15), %rax
	movq %rax, -176(%r15)
	movq -176(%r15), %r11
	movq -16(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -592(%rbp)
	movq -592(%rbp), %rax
	movq %rax, -504(%rbp)
	movq -176(%r15), %r11
	movq -80(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -536(%rbp)
	movq -536(%rbp), %rax
	movq %rax, -232(%rbp)
	movq -176(%r15), %rax
	movq %rax, -96(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -496(%rbp)
	movq -496(%rbp), %rax
	movq %rax, -320(%rbp)
	addq $24, -320(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -440(%rbp)
	movq -320(%rbp), %rax
	cmpq %rax, -440(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -552(%rbp)
	cmpq $1, -552(%rbp)
	je then479994
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, -264(%rbp)
	jmp end479995
then479994:
	movq $0, -400(%rbp)
	movq -400(%rbp), %rax
	movq %rax, -264(%rbp)
end479995:
	movq -264(%rbp), %rax
	movq %rax, -96(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -136(%r15)
	addq $24, free_ptr(%rip)
	movq -136(%r15), %r11
	movq $261, 0(%r11)
	movq -136(%r15), %rax
	movq %rax, -40(%r15)
	movq -40(%r15), %r11
	movq -96(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -480(%rbp)
	movq -40(%r15), %r11
	movq -424(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -368(%rbp)
	movq -40(%r15), %rax
	movq %rax, -160(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -136(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -448(%rbp)
	addq $24, -448(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -352(%rbp)
	movq -448(%rbp), %rax
	cmpq %rax, -352(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -224(%rbp)
	cmpq $1, -224(%rbp)
	je then479996
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, -584(%rbp)
	jmp end479997
then479996:
	movq $0, -336(%rbp)
	movq -336(%rbp), %rax
	movq %rax, -584(%rbp)
end479997:
	movq -584(%rbp), %rax
	movq %rax, -184(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -144(%r15)
	addq $24, free_ptr(%rip)
	movq -144(%r15), %r11
	movq $261, 0(%r11)
	movq -144(%r15), %rax
	movq %rax, -112(%r15)
	movq -112(%r15), %r11
	movq -160(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -344(%rbp)
	movq -344(%rbp), %rax
	movq %rax, -144(%rbp)
	movq -112(%r15), %r11
	movq -312(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -112(%r15), %rax
	movq %rax, -32(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -120(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -408(%rbp)
	addq $24, -408(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -328(%rbp)
	movq -408(%rbp), %rax
	cmpq %rax, -328(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -200(%rbp)
	cmpq $1, -200(%rbp)
	je then479998
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, -520(%rbp)
	jmp end479999
then479998:
	movq $0, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -520(%rbp)
end479999:
	movq -520(%rbp), %rax
	movq %rax, -432(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -104(%r15)
	addq $24, free_ptr(%rip)
	movq -104(%r15), %r11
	movq $261, 0(%r11)
	movq -104(%r15), %rax
	movq %rax, -88(%r15)
	movq -88(%r15), %r11
	movq -32(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -304(%rbp)
	movq -304(%rbp), %rax
	movq %rax, -112(%rbp)
	movq -88(%r15), %r11
	movq -392(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -384(%rbp)
	movq -384(%rbp), %rax
	movq %rax, -176(%rbp)
	movq -88(%r15), %rax
	movq %rax, -64(%r15)
	movq -64(%r15), %r11
	movq 16(%r11), %rax
	movq %rax, -128(%r15)
	movq -128(%r15), %r11
	movq 16(%r11), %rax
	movq %rax, -56(%r15)
	movq -56(%r15), %r11
	movq 16(%r11), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -168(%r15)
	movq -168(%r15), %r11
	movq 16(%r11), %rax
	movq %rax, -296(%rbp)
	movq -296(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $176, %r15
	addq $656, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
