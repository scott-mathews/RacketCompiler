	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $328, %rsp
	addq $72, %r15
	movq $0, -72(%r15)
	movq $0, -64(%r15)
	movq $0, -56(%r15)
	movq $0, -48(%r15)
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, -112(%rbp)
	movq %rsi, -304(%rbp)
	movq %rdx, -32(%r15)
	movq $100, %rax
	cmpq -304(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -56(%rbp)
	cmpq $1, -56(%rbp)
	je then377894
	leaq function0(%rip), %rax
	movq %rax, -80(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -328(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -280(%rbp)
	movq -280(%rbp), %rax
	movq %rax, -128(%rbp)
	addq $16, -128(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -168(%rbp)
	movq -128(%rbp), %rax
	cmpq %rax, -168(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -224(%rbp)
	cmpq $1, -224(%rbp)
	je then377896
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -64(%rbp)
	jmp end377897
then377896:
	movq $0, -248(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -64(%rbp)
end377897:
	movq -64(%rbp), %rax
	movq %rax, -88(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -48(%r15)
	movq -48(%r15), %r11
	movq -328(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -256(%rbp)
	movq -256(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -48(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -176(%rbp)
	movq -304(%rbp), %rax
	movq %rax, -160(%rbp)
	addq $1, -160(%rbp)
	movq -32(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -288(%rbp)
	movq -288(%rbp), %rax
	movq %rax, -192(%rbp)
	movq -32(%r15), %r11
	movq 16(%r11), %rax
	movq %rax, -64(%r15)
	movq -64(%r15), %rax
	movq %rax, -72(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -200(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -144(%rbp)
	addq $24, -144(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -48(%rbp)
	movq -144(%rbp), %rax
	cmpq %rax, -48(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -240(%rbp)
	cmpq $1, -240(%rbp)
	je then377898
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, -72(%rbp)
	jmp end377899
then377898:
	movq $0, -320(%rbp)
	movq -320(%rbp), %rax
	movq %rax, -72(%rbp)
end377899:
	movq -72(%rbp), %rax
	movq %rax, -104(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -56(%r15)
	addq $24, free_ptr(%rip)
	movq -56(%r15), %r11
	movq $261, 0(%r11)
	movq -56(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq -72(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -296(%rbp)
	movq -296(%rbp), %rax
	movq %rax, -184(%rbp)
	movq -8(%r15), %r11
	movq -192(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -272(%rbp)
	movq -272(%rbp), %rax
	movq %rax, -152(%rbp)
	movq -24(%r15), %rdi
	movq -160(%rbp), %rsi
	movq -8(%r15), %rdx
	callq *-176(%rbp)
	movq %rax, -136(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -232(%rbp)
	jmp end377895
then377894:
	movq -32(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -216(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -120(%rbp)
	movq -120(%rbp), %r11
	movq 8(%r11), %rax
	movq %rax, -208(%rbp)
	movq -32(%r15), %r11
	movq 16(%r11), %rax
	movq %rax, -40(%r15)
	movq -40(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -264(%rbp)
	movq -120(%rbp), %rdi
	movq -264(%rbp), %rsi
	callq *-208(%rbp)
	movq %rax, -312(%rbp)
	movq -312(%rbp), %rax
	movq %rax, -232(%rbp)
end377895:
	movq -232(%rbp), %rax

	addq $328, %rsp
	subq $72, %r15
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
	subq $56, %rsp
	addq $0, %r15

	movq %rdi, -48(%rbp)
	movq %rsi, -56(%rbp)
	movq -56(%rbp), %rax

	addq $56, %rsp
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
	subq $448, %rsp
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

	leaq function0(%rip), %rax
	movq %rax, -296(%rbp)
	movq -296(%rbp), %rax
	movq %rax, -128(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -256(%rbp)
	addq $16, -256(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -216(%rbp)
	movq -256(%rbp), %rax
	cmpq %rax, -216(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -120(%rbp)
	cmpq $1, -120(%rbp)
	je then377900
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -320(%rbp)
	jmp end377901
then377900:
	movq $0, -176(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -320(%rbp)
end377901:
	movq -320(%rbp), %rax
	movq %rax, -344(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $16, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $3, 0(%r11)
	movq -8(%r15), %rax
	movq %rax, -88(%r15)
	movq -88(%r15), %r11
	movq -128(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -168(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -392(%rbp)
	movq -88(%r15), %rax
	movq %rax, -72(%r15)
	movq -72(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -88(%rbp)
	leaq function1(%rip), %rax
	movq %rax, -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -280(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -264(%rbp)
	addq $16, -264(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -224(%rbp)
	movq -264(%rbp), %rax
	cmpq %rax, -224(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -136(%rbp)
	cmpq $1, -136(%rbp)
	je then377902
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -288(%rbp)
	jmp end377903
then377902:
	movq $0, -200(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -288(%rbp)
end377903:
	movq -288(%rbp), %rax
	movq %rax, -352(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -24(%r15)
	addq $16, free_ptr(%rip)
	movq -24(%r15), %r11
	movq $3, 0(%r11)
	movq -24(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq -280(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -328(%rbp)
	movq -16(%r15), %rax
	movq %rax, -64(%r15)
	movq $42, -240(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -248(%rbp)
	addq $16, -248(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -208(%rbp)
	movq -248(%rbp), %rax
	cmpq %rax, -208(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -112(%rbp)
	cmpq $1, -112(%rbp)
	je then377904
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -304(%rbp)
	jmp end377905
then377904:
	movq $0, -368(%rbp)
	movq -368(%rbp), %rax
	movq %rax, -304(%rbp)
end377905:
	movq -304(%rbp), %rax
	movq %rax, -336(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -48(%r15)
	addq $16, free_ptr(%rip)
	movq -48(%r15), %r11
	movq $3, 0(%r11)
	movq -48(%r15), %rax
	movq %rax, -80(%r15)
	movq -80(%r15), %r11
	movq -240(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -184(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -400(%rbp)
	movq -80(%r15), %rax
	movq %rax, -56(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -80(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -272(%rbp)
	addq $24, -272(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -232(%rbp)
	movq -272(%rbp), %rax
	cmpq %rax, -232(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -312(%rbp)
	cmpq $1, -312(%rbp)
	je then377906
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, -104(%rbp)
	jmp end377907
then377906:
	movq $0, -376(%rbp)
	movq -376(%rbp), %rax
	movq %rax, -104(%rbp)
end377907:
	movq -104(%rbp), %rax
	movq %rax, -360(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -32(%r15)
	addq $24, free_ptr(%rip)
	movq -32(%r15), %r11
	movq $261, 0(%r11)
	movq -32(%r15), %rax
	movq %rax, -40(%r15)
	movq -40(%r15), %r11
	movq -56(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -384(%rbp)
	movq -384(%rbp), %rax
	movq %rax, -144(%rbp)
	movq -40(%r15), %r11
	movq -64(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -152(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -160(%rbp)
	movq -72(%r15), %rdi
	movq $0, %rsi
	movq -40(%r15), %rdx
	callq *-88(%rbp)
	movq %rax, -64(%rbp)
	movq -64(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $88, %r15
	addq $448, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
