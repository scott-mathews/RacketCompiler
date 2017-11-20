	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r15
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $176, %rsp
	movq $16384, %rcx 
	movq $16, %rdx 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $40, %r15
	movq $0, -40(%r15)

	movq $42, -24(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -176(%rbp)
	movq -176(%rbp), %r8
	movq %r8, -104(%rbp)
	addq $16, -104(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -112(%rbp)
	movq -112(%rbp), %r10
	cmpq %r10, -104(%rbp)
	sete %al
	movzbq %al, %r10
	movq %r10, -128(%rbp)
	movq -128(%rbp), %rax
	cmpq $1, %rax
	je then237065
	movq %r15, %rcx
	movq $16, %rdx
	callq collect
	movq $0, -8(%rbp)
	jmp end237066
then237065:
	movq $0, -64(%rbp)
	movq -64(%rbp), %r8
	movq %r8, -8(%rbp)
end237066:
	movq -8(%rbp), %r8
	movq %r8, -144(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %r11
	movq -24(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -40(%rbp)
	movq -16(%r15), %r8
	movq %r8, -24(%r15)
	movq $21, -72(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -56(%rbp)
	movq -56(%rbp), %r8
	movq %r8, -136(%rbp)
	addq $24, -136(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -160(%rbp)
	movq -160(%rbp), %r10
	cmpq %r10, -136(%rbp)
	sete %al
	movzbq %al, %r10
	movq %r10, -16(%rbp)
	movq -16(%rbp), %rax
	cmpq $1, %rax
	je then237067
	movq %r15, %rcx
	movq $24, %rdx
	callq collect
	movq $0, -120(%rbp)
	jmp end237068
then237067:
	movq $0, -152(%rbp)
	movq -152(%rbp), %r8
	movq %r8, -120(%rbp)
end237068:
	movq -120(%rbp), %r8
	movq %r8, -32(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -40(%r15)
	addq $24, free_ptr(%rip)
	movq -40(%r15), %r11
	movq $261, 0(%r11)
	movq -40(%r15), %r11
	movq -24(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -80(%rbp)
	movq -40(%r15), %r11
	movq -72(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -168(%rbp)
	movq -40(%r15), %r8
	movq %r8, -88(%rbp)
	movq -88(%rbp), %r11
	movq 8(%r11), %r8
	movq %r8, -8(%r15)
	movq -8(%r15), %r11
	movq 8(%r11), %r8
	movq %r8, -48(%rbp)
	movq -48(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	subq $40, %r15
	addq $176, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %r15
	popq %rbp
	retq
