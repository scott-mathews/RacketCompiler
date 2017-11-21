	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $64, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $352, %r15
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

	movq $42, %r8
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then332045
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end332046
then332045:
	movq $0, %rsi
	movq %rsi, %rsi
end332046:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, %rdi
	addq $16, free_ptr(%rip)
	movq %rdi, %r11
	movq $3, 0(%r11)
	movq %rdi, %r11
	movq %r8, %rax
	movq %rax, 8(%r11)
	movq $0, %rsi
	movq %rdi, %r8
	movq %r8, %r8
	movq %r8, %rdi
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $24, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then332047
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rsi
	jmp end332048
then332047:
	movq $0, %rsi
	movq %rsi, %rsi
end332048:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	addq $24, free_ptr(%rip)
	movq %rsi, %r11
	movq $389, 0(%r11)
	movq %rsi, %r11
	movq %r8, %rax
	movq %rax, 8(%r11)
	movq $0, %r8
	movq %rsi, %r11
	movq %rdi, %rax
	movq %rax, 16(%r11)
	movq $0, %rdi
	movq %rsi, %rsi
	movq %rsi, %rsi
	movq %rsi, %r8
	movq %rsi, %rdi
	movq %rsi, %r13
	movq free_ptr(%rip), %rax
	movq %rax, %r12
	movq %r12, %r12
	addq $40, %r12
	movq fromspace_end(%rip), %rax
	movq %rax, %r12
	movq %r12, %rax
	cmpq %rax, %r12
	sete %al
	movzbq %al, %rax
	movq %rax, %r12
	movq %r12, %rax
	cmpq $1, %rax
	je then332049
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	movq $0, %r12
	jmp end332050
then332049:
	movq $0, %r12
	movq %r12, %r12
end332050:
	movq %r12, %r12
	movq free_ptr(%rip), %rax
	movq %rax, %r12
	addq $40, free_ptr(%rip)
	movq %r12, %r11
	movq $1929, 0(%r11)
	movq %r12, %r11
	movq %rsi, %rax
	movq %rax, 8(%r11)
	movq $0, %rsi
	movq %r12, %r11
	movq %r8, %rax
	movq %rax, 16(%r11)
	movq $0, %rsi
	movq %r12, %r11
	movq %rdi, %rax
	movq %rax, 24(%r11)
	movq $0, %rsi
	movq %r12, %r11
	movq %r13, %rax
	movq %rax, 32(%r11)
	movq $0, %rsi
	movq %r12, %r13
	movq %r13, -184(%r15)
	movq %r13, -96(%r15)
	movq %r13, %rsi
	movq %r13, %r14
	movq %r13, -8(%r15)
	movq %r13, %r8
	movq %r13, %r12
	movq %r13, %r13
	movq free_ptr(%rip), %rax
	movq %rax, %rdi
	movq %rdi, %rdi
	addq $72, %rdi
	movq fromspace_end(%rip), %rax
	movq %rax, %rdi
	movq %rdi, %rax
	cmpq %rax, %rdi
	sete %al
	movzbq %al, %rax
	movq %rax, %rdi
	movq %rdi, %rax
	cmpq $1, %rax
	je then332051
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %rdi
	jmp end332052
then332051:
	movq $0, %rdi
	movq %rdi, %rdi
end332052:
	movq %rdi, %rdi
	movq free_ptr(%rip), %rax
	movq %rax, %rdi
	addq $72, free_ptr(%rip)
	movq %rdi, %r11
	movq $32657, 0(%r11)
	movq %rdi, %r11
	movq -184(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -56(%rbp)
	movq %rdi, %r11
	movq -96(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -48(%rbp)
	movq %rdi, %r11
	movq %rsi, %rax
	movq %rax, 24(%r11)
	movq $0, %rsi
	movq %rdi, %r11
	movq %r14, %rax
	movq %rax, 32(%r11)
	movq $0, %rsi
	movq %rdi, %r11
	movq -8(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rsi
	movq %rdi, %r11
	movq %r8, %rax
	movq %rax, 48(%r11)
	movq $0, %rsi
	movq %rdi, %r11
	movq %r12, %rax
	movq %rax, 56(%r11)
	movq $0, %rsi
	movq %rdi, %r11
	movq %r13, %rax
	movq %rax, 64(%r11)
	movq $0, %rsi
	movq %rdi, %r12
	movq %r12, %r13
	movq %r12, -56(%r15)
	movq %r12, -176(%r15)
	movq %r12, -152(%r15)
	movq %r12, -64(%r15)
	movq %r12, %r14
	movq %r12, -112(%r15)
	movq %r12, %rsi
	movq %r12, -104(%r15)
	movq %r12, -224(%r15)
	movq %r12, -136(%r15)
	movq %r12, %rdi
	movq %r12, -192(%r15)
	movq %r12, -120(%r15)
	movq %r12, -88(%r15)
	movq %r12, %r12
	movq free_ptr(%rip), %rax
	movq %rax, %r8
	movq %r8, %r8
	addq $136, %r8
	movq fromspace_end(%rip), %rax
	movq %rax, %r8
	movq %r8, %rax
	cmpq %rax, %r8
	sete %al
	movzbq %al, %rax
	movq %rax, %r8
	movq %r8, %rax
	cmpq $1, %rax
	je then332053
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	movq $0, %r8
	jmp end332054
then332053:
	movq $0, %r8
	movq %r8, %r8
end332054:
	movq %r8, %r8
	movq free_ptr(%rip), %rax
	movq %rax, %r8
	addq $136, free_ptr(%rip)
	movq %r8, %r11
	movq $8388513, 0(%r11)
	movq %r8, %r11
	movq %r13, %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r8, %r11
	movq -56(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r8, %r11
	movq -176(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r8, %r11
	movq -152(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r8, %r11
	movq -64(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r8, %r11
	movq %r14, %rax
	movq %rax, 48(%r11)
	movq $0, %r13
	movq %r8, %r11
	movq -112(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %r13
	movq %r8, %r11
	movq %rsi, %rax
	movq %rax, 64(%r11)
	movq $0, %rsi
	movq %r8, %r11
	movq -104(%r15), %rax
	movq %rax, 72(%r11)
	movq $0, %rsi
	movq %r8, %r11
	movq -224(%r15), %rax
	movq %rax, 80(%r11)
	movq $0, %rsi
	movq %r8, %r11
	movq -136(%r15), %rax
	movq %rax, 88(%r11)
	movq $0, %rsi
	movq %r8, %r11
	movq %rdi, %rax
	movq %rax, 96(%r11)
	movq $0, %rsi
	movq %r8, %r11
	movq -192(%r15), %rax
	movq %rax, 104(%r11)
	movq $0, %rsi
	movq %r8, %r11
	movq -120(%r15), %rax
	movq %rax, 112(%r11)
	movq $0, %rsi
	movq %r8, %r11
	movq -88(%r15), %rax
	movq %rax, 120(%r11)
	movq $0, %rsi
	movq %r8, %r11
	movq %r12, %rax
	movq %rax, 128(%r11)
	movq $0, %rsi
	movq %r8, %r8
	movq %r8, %r11
	movq 40(%r11), %r9
	movq %r9, %r11
	movq 32(%r11), %rdx
	movq %rdx, %r11
	movq 24(%r11), %rcx
	movq %rcx, %r11
	movq 16(%r11), %r10
	movq %r10, %r11
	movq 8(%r11), %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $352, %r15
	addq $64, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
