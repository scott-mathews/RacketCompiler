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
	addq $392, %r15
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

	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then15961
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end15962
then15961:
	movq $0, %rcx
	movq %rcx, %rcx
end15962:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, %r12
	movq %r12, %r13
	movq free_ptr(%rip), %rcx
	addq $24, %rcx
	movq free_ptr(%rip), %rbx
	cmpq %rcx, %rbx
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then15963
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rbx
	jmp end15964
then15963:
	movq $0, %rbx
	movq %rbx, %rbx
end15964:
	movq free_ptr(%rip), %rbx
	addq $24, free_ptr(%rip)
	movq %rbx, %r11
	movq $389, 0(%r11)
	movq %rbx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq %r13, 16(%r11)
	movq $0, %rcx
	movq %rbx, -72(%r15)
	movq %rbx, %r13
	movq %rbx, %r14
	movq %rbx, %r12
	movq free_ptr(%rip), %rbx
	addq $40, %rbx
	movq free_ptr(%rip), %rcx
	cmpq %rbx, %rcx
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then15965
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	movq $0, %rbx
	jmp end15966
then15965:
	movq $0, %rbx
	movq %rbx, %rbx
end15966:
	movq free_ptr(%rip), %rbx
	addq $40, free_ptr(%rip)
	movq %rbx, %r11
	movq $1929, 0(%r11)
	movq %rbx, %r11
	movq -72(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq %r13, 16(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq %r14, 24(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq %r12, 32(%r11)
	movq $0, %rcx
	movq %rbx, %r12
	movq %r12, -128(%r15)
	movq %r12, -80(%r15)
	movq %r12, -176(%r15)
	movq %r12, %r13
	movq %r12, -232(%r15)
	movq %r12, -24(%r15)
	movq %r12, %r14
	movq free_ptr(%rip), %rbx
	movq %rbx, %rcx
	addq $72, %rcx
	movq free_ptr(%rip), %rbx
	cmpq %rcx, %rbx
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then15967
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %rbx
	jmp end15968
then15967:
	movq $0, %rbx
	movq %rbx, %rbx
end15968:
	movq free_ptr(%rip), %rbx
	addq $72, free_ptr(%rip)
	movq %rbx, %r11
	movq $32657, 0(%r11)
	movq %rbx, %r11
	movq -128(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -80(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq %r12, 24(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -176(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq %r13, 40(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -232(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -24(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq %r14, 64(%r11)
	movq $0, %rcx
	movq %rbx, -56(%r15)
	movq -56(%r15), %r12
	movq -56(%r15), %rax
	movq %rax, -296(%r15)
	movq -56(%r15), %rax
	movq %rax, -144(%r15)
	movq -56(%r15), %rax
	movq %rax, -40(%r15)
	movq -56(%r15), %rax
	movq %rax, -320(%r15)
	movq -56(%r15), %rax
	movq %rax, -120(%r15)
	movq -56(%r15), %rax
	movq %rax, -136(%r15)
	movq -56(%r15), %rax
	movq %rax, -104(%r15)
	movq -56(%r15), %rax
	movq %rax, -224(%r15)
	movq -56(%r15), %rax
	movq %rax, -16(%r15)
	movq -56(%r15), %rax
	movq %rax, -168(%r15)
	movq -56(%r15), %rax
	movq %rax, -248(%r15)
	movq -56(%r15), %rax
	movq %rax, -152(%r15)
	movq -56(%r15), %r13
	movq -56(%r15), %r14
	movq -56(%r15), %rax
	movq %rax, -336(%r15)
	movq free_ptr(%rip), %rbx
	movq %rbx, %rcx
	addq $136, %rcx
	movq free_ptr(%rip), %rbx
	cmpq %rcx, %rbx
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then15969
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	movq $0, %rbx
	jmp end15970
then15969:
	movq $0, %rbx
	movq %rbx, %rbx
end15970:
	movq free_ptr(%rip), %rbx
	addq $136, free_ptr(%rip)
	movq %rbx, %r11
	movq $8388513, 0(%r11)
	movq %rbx, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -296(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -144(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -40(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -320(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -120(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -136(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -104(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -224(%r15), %rax
	movq %rax, 72(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -16(%r15), %rax
	movq %rax, 80(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -168(%r15), %rax
	movq %rax, 88(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -248(%r15), %rax
	movq %rax, 96(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -152(%r15), %rax
	movq %rax, 104(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq %r13, 112(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq %r14, 120(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -336(%r15), %rax
	movq %rax, 128(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq 40(%r11), %rbx
	movq %rbx, %r11
	movq 32(%r11), %rbx
	movq %rbx, %r11
	movq 24(%r11), %rbx
	movq %rbx, %r11
	movq 16(%r11), %rbx
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $392, %r15
	addq $48, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
