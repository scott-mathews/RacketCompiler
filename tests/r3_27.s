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

	movq $42, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rbx
	addq $16, %rbx
	movq fromspace_end(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq %rax, %rbx
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then452216
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
	jmp end452217
then452216:
	movq $0, %rbx
	movq %rbx, %rbx
end452217:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $3, 0(%r11)
	movq %rbx, %r11
	movq %rcx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rbx, %rbx
	movq %rbx, %rcx
	movq %rbx, %rdx
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rbx
	addq $24, %rbx
	movq fromspace_end(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq %rax, %rbx
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then452218
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rbx
	jmp end452219
then452218:
	movq $0, %rbx
	movq %rbx, %rbx
end452219:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	addq $24, free_ptr(%rip)
	movq %rbx, %r11
	movq $389, 0(%r11)
	movq %rbx, %r11
	movq %rcx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq %rdx, %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rbx, %rbx
	movq %rbx, %rdx
	movq %rbx, %rbx
	movq %rbx, %rsi
	movq %rbx, %rdi
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rcx
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
	je then452220
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	movq $0, %rcx
	jmp end452221
then452220:
	movq $0, %rcx
	movq %rcx, %rcx
end452221:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $40, free_ptr(%rip)
	movq %rcx, %r11
	movq $1929, 0(%r11)
	movq %rcx, %r11
	movq %rdx, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %rsi, %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %rdi, %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rcx, %rcx
	movq %rcx, %r12
	movq %rcx, %r8
	movq %rcx, %r9
	movq %rcx, %r10
	movq %rcx, %rsi
	movq %rcx, %rdi
	movq %rcx, %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	movq %rdx, %rdx
	addq $72, %rdx
	movq fromspace_end(%rip), %rax
	movq %rax, %rdx
	movq %rdx, %rax
	cmpq %rax, %rdx
	sete %al
	movzbq %al, %rax
	movq %rax, %rdx
	movq %rdx, %rax
	cmpq $1, %rax
	je then452222
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %rdx
	jmp end452223
then452222:
	movq $0, %rdx
	movq %rdx, %rdx
end452223:
	movq %rdx, %rdx
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	addq $72, free_ptr(%rip)
	movq %rdx, %r11
	movq $32657, 0(%r11)
	movq %rdx, %r11
	movq %r12, %rax
	movq %rax, 8(%r11)
	movq $0, %r12
	movq %rdx, %r11
	movq %r8, %rax
	movq %rax, 16(%r11)
	movq $0, %r8
	movq %rdx, %r11
	movq %r9, %rax
	movq %rax, 24(%r11)
	movq $0, %r8
	movq %rdx, %r11
	movq %r10, %rax
	movq %rax, 32(%r11)
	movq $0, %r8
	movq %rdx, %r11
	movq %rsi, %rax
	movq %rax, 40(%r11)
	movq $0, %rsi
	movq %rdx, %r11
	movq %rdi, %rax
	movq %rax, 48(%r11)
	movq $0, %rsi
	movq %rdx, %r11
	movq %rcx, %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, %rax
	movq %rax, 64(%r11)
	movq $0, %rbx
	movq %rdx, -88(%r15)
	movq -88(%r15), %r12
	movq -88(%r15), %rbx
	movq -88(%r15), %rsi
	movq -88(%r15), %r8
	movq -88(%r15), %rax
	movq %rax, -152(%r15)
	movq -88(%r15), %r14
	movq -88(%r15), %r9
	movq -88(%r15), %rdx
	movq -88(%r15), %rax
	movq %rax, -80(%r15)
	movq -88(%r15), %rax
	movq %rax, -160(%r15)
	movq -88(%r15), %rax
	movq %rax, -32(%r15)
	movq -88(%r15), %rdi
	movq -88(%r15), %r10
	movq -88(%r15), %rcx
	movq -88(%r15), %rax
	movq %rax, -128(%r15)
	movq -88(%r15), %rax
	movq %rax, -144(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, %r13
	movq %r13, %r13
	addq $136, %r13
	movq fromspace_end(%rip), %rax
	movq %rax, %r13
	movq %r13, %rax
	cmpq %rax, %r13
	sete %al
	movzbq %al, %rax
	movq %rax, %r13
	movq %r13, %rax
	cmpq $1, %rax
	je then452224
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	movq $0, %r13
	jmp end452225
then452224:
	movq $0, %r13
	movq %r13, %r13
end452225:
	movq %r13, %r13
	movq free_ptr(%rip), %rax
	movq %rax, %r13
	addq $136, free_ptr(%rip)
	movq %r13, %r11
	movq $8388513, 0(%r11)
	movq %r13, %r11
	movq %r12, %rax
	movq %rax, 8(%r11)
	movq $0, %r12
	movq %r13, %r11
	movq %rbx, %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %r13, %r11
	movq %rsi, %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %r13, %r11
	movq %r8, %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %r13, %r11
	movq -152(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq %r13, %r11
	movq %r14, %rax
	movq %rax, 48(%r11)
	movq $0, %rbx
	movq %r13, %r11
	movq %r9, %rax
	movq %rax, 56(%r11)
	movq $0, %rbx
	movq %r13, %r11
	movq %rdx, %rax
	movq %rax, 64(%r11)
	movq $0, %rbx
	movq %r13, %r11
	movq -80(%r15), %rax
	movq %rax, 72(%r11)
	movq $0, %rbx
	movq %r13, %r11
	movq -160(%r15), %rax
	movq %rax, 80(%r11)
	movq $0, %rbx
	movq %r13, %r11
	movq -32(%r15), %rax
	movq %rax, 88(%r11)
	movq $0, %rbx
	movq %r13, %r11
	movq %rdi, %rax
	movq %rax, 96(%r11)
	movq $0, %rbx
	movq %r13, %r11
	movq %r10, %rax
	movq %rax, 104(%r11)
	movq $0, %rbx
	movq %r13, %r11
	movq %rcx, %rax
	movq %rax, 112(%r11)
	movq $0, %rbx
	movq %r13, %r11
	movq -128(%r15), %rax
	movq %rax, 120(%r11)
	movq $0, %rbx
	movq %r13, %r11
	movq -144(%r15), %rax
	movq %rax, 128(%r11)
	movq $0, %rbx
	movq %r13, %r13
	movq %r13, %r11
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
	subq $352, %r15
	addq $48, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
