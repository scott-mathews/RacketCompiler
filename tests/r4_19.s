	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $144, %rsp
	addq $0, %r15

	movq %rdi, -48(%rbp)
	movq %rsi, -88(%rbp)
	movq %rdx, -112(%rbp)
	movq %rcx, -64(%rbp)
	movq %r8, -96(%rbp)
	movq %r9, -56(%rbp)
	movq 16(%rbp), %rax
	movq %rax, -120(%rbp)
	movq 24(%rbp), %rax
	movq %rax, -72(%rbp)
	movq 32(%rbp), %rax
	movq %rax, -104(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -80(%rbp)
	movq -104(%rbp), %rax
	addq %rax, -80(%rbp)
	movq -80(%rbp), %rax

	addq $144, %rsp
	subq $0, %r15
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
	subq $176, %rsp
	addq $0, %r15

	movq %rdi, -48(%rbp)
	movq %rsi, -56(%rbp)
	movq %rdx, -136(%rbp)
	movq %rcx, -80(%rbp)
	movq %r8, -120(%rbp)
	movq %r9, -112(%rbp)
	movq 16(%rbp), %rax
	movq %rax, -104(%rbp)
	movq 24(%rbp), %rax
	movq %rax, -128(%rbp)
	movq 32(%rbp), %rax
	movq %rax, -72(%rbp)
	movq 40(%rbp), %rax
	movq %rax, -64(%rbp)
	movq 48(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -96(%rbp), %rax
	addq %rax, -88(%rbp)
	movq -88(%rbp), %rax

	addq $176, %rsp
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
	subq $632, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $48, %r15
	movq $0, -48(%r15)
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	leaq function1(%rip), %rax
	movq %rax, -528(%rbp)
	movq -528(%rbp), %rax
	movq %rax, -344(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -224(%rbp)
	movq -224(%rbp), %rax
	movq %rax, -216(%rbp)
	addq $16, -216(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -536(%rbp)
	movq -216(%rbp), %rax
	cmpq %rax, -536(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -328(%rbp)
	cmpq $1, -328(%rbp)
	je then377218
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -96(%rbp)
	jmp end377219
then377218:
	movq $0, -368(%rbp)
	movq -368(%rbp), %rax
	movq %rax, -96(%rbp)
end377219:
	movq -96(%rbp), %rax
	movq %rax, -104(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -24(%r15)
	addq $16, free_ptr(%rip)
	movq -24(%r15), %r11
	movq $3, 0(%r11)
	movq -24(%r15), %rax
	movq %rax, -40(%r15)
	movq -40(%r15), %r11
	movq -344(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -376(%rbp)
	movq -376(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -40(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -320(%rbp)
	movq -8(%r15), %rdi
	movq $1, %rsi
	movq $2, %rdx
	movq $3, %rcx
	movq $0, %r8
	movq $5, %r9
	movq $6, 0(%rsp)
	movq $7, 8(%rsp)
	movq $8, 16(%rsp)
	movq $9, 24(%rsp)
	movq $1, 32(%rsp)
	callq *-320(%rbp)
	movq %rax, -408(%rbp)
	movq -408(%rbp), %rax
	movq %rax, -512(%rbp)
	movq $1, -200(%rbp)
	movq $1, -416(%rbp)
	movq $1, -304(%rbp)
	movq $1, -520(%rbp)
	movq $1, -208(%rbp)
	movq $1, -424(%rbp)
	movq $1, -312(%rbp)
	movq $1, -480(%rbp)
	movq $1, -160(%rbp)
	movq $1, -128(%rbp)
	movq $1, -552(%rbp)
	movq $1, -248(%rbp)
	movq $1, -464(%rbp)
	movq $1, -432(%rbp)
	movq $1, -576(%rbp)
	movq $1, -256(%rbp)
	movq $1, -472(%rbp)
	leaq function0(%rip), %rax
	movq %rax, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -48(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -392(%rbp)
	movq -392(%rbp), %rax
	movq %rax, -288(%rbp)
	addq $16, -288(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -440(%rbp)
	movq -288(%rbp), %rax
	cmpq %rax, -440(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -336(%rbp)
	cmpq $1, -336(%rbp)
	je then377220
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -64(%rbp)
	jmp end377221
then377220:
	movq $0, -360(%rbp)
	movq -360(%rbp), %rax
	movq %rax, -64(%rbp)
end377221:
	movq -64(%rbp), %rax
	movq %rax, -112(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -32(%r15)
	movq -32(%r15), %r11
	movq -48(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -352(%rbp)
	movq -352(%rbp), %rax
	movq %rax, -80(%rbp)
	movq -32(%r15), %rax
	movq %rax, -48(%r15)
	movq -48(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -56(%rbp)
	movq -48(%r15), %rdi
	movq $1, %rsi
	movq $2, %rdx
	movq $3, %rcx
	movq $1, %r8
	movq $5, %r9
	movq $6, 0(%rsp)
	movq $7, 8(%rsp)
	movq $0, 16(%rsp)
	callq *-56(%rbp)
	movq %rax, -560(%rbp)
	movq -560(%rbp), %rax
	movq %rax, -152(%rbp)
	movq $1, -584(%rbp)
	movq $1, -264(%rbp)
	movq -264(%rbp), %rax
	movq %rax, -192(%rbp)
	addq $21, -192(%rbp)
	movq -584(%rbp), %rax
	movq %rax, -400(%rbp)
	movq -192(%rbp), %rax
	addq %rax, -400(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -296(%rbp)
	movq -400(%rbp), %rax
	addq %rax, -296(%rbp)
	movq -472(%rbp), %rax
	movq %rax, -504(%rbp)
	movq -296(%rbp), %rax
	addq %rax, -504(%rbp)
	movq -256(%rbp), %rax
	movq %rax, -184(%rbp)
	movq -504(%rbp), %rax
	addq %rax, -184(%rbp)
	movq -576(%rbp), %rax
	movq %rax, -384(%rbp)
	movq -184(%rbp), %rax
	addq %rax, -384(%rbp)
	movq -432(%rbp), %rax
	movq %rax, -280(%rbp)
	movq -384(%rbp), %rax
	addq %rax, -280(%rbp)
	movq -464(%rbp), %rax
	movq %rax, -496(%rbp)
	movq -280(%rbp), %rax
	addq %rax, -496(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -176(%rbp)
	movq -496(%rbp), %rax
	addq %rax, -176(%rbp)
	movq -552(%rbp), %rax
	movq %rax, -136(%rbp)
	movq -176(%rbp), %rax
	addq %rax, -136(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -272(%rbp)
	movq -136(%rbp), %rax
	addq %rax, -272(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -488(%rbp)
	movq -272(%rbp), %rax
	addq %rax, -488(%rbp)
	movq -480(%rbp), %rax
	movq %rax, -168(%rbp)
	movq -488(%rbp), %rax
	addq %rax, -168(%rbp)
	movq -312(%rbp), %rax
	movq %rax, -120(%rbp)
	movq -168(%rbp), %rax
	addq %rax, -120(%rbp)
	movq -424(%rbp), %rax
	movq %rax, -544(%rbp)
	movq -120(%rbp), %rax
	addq %rax, -544(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -240(%rbp)
	movq -544(%rbp), %rax
	addq %rax, -240(%rbp)
	movq -520(%rbp), %rax
	movq %rax, -456(%rbp)
	movq -240(%rbp), %rax
	addq %rax, -456(%rbp)
	movq -304(%rbp), %rax
	movq %rax, -144(%rbp)
	movq -456(%rbp), %rax
	addq %rax, -144(%rbp)
	movq -416(%rbp), %rax
	movq %rax, -568(%rbp)
	movq -144(%rbp), %rax
	addq %rax, -568(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -232(%rbp)
	movq -568(%rbp), %rax
	addq %rax, -232(%rbp)
	movq -512(%rbp), %rax
	movq %rax, -448(%rbp)
	movq -232(%rbp), %rax
	addq %rax, -448(%rbp)
	movq -448(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $48, %r15
	addq $632, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
