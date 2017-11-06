	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $160, %rsp
	movq $16384, %rcx 
	movq $16, %rdx 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $48, %r15
	movq $0, -48(%r15)

	movq $42, -144(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -152(%rbp)
	movq -152(%rbp), %r8
	movq %r8, -72(%rbp)
	addq $16, -72(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -40(%rbp)
	movq -40(%rbp), %r10
	cmpq %r10, -72(%rbp)
	sete %al
	movzbq %al, %r10
	movq %r10, -112(%rbp)
	movq -112(%rbp), %rax
	cmpq $1, %rax
	je then12066
	movq %r15, %rcx
	movq $16, %rdx
	callq collect
	movq $0, -136(%rbp)
	jmp end12067
then12066:
	movq $0, -104(%rbp)
	movq -104(%rbp), %r8
	movq %r8, -136(%rbp)
end12067:
	movq -136(%rbp), %r8
	movq %r8, -128(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -48(%r15)
	addq $16, free_ptr(%rip)
	movq -48(%r15), %r11
	movq $3, 0(%r11)
	movq -48(%r15), %r11
	movq -144(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -32(%rbp)
	movq -48(%r15), %r8
	movq %r8, -24(%r15)
	movq $21, -56(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -160(%rbp)
	movq -160(%rbp), %r8
	movq %r8, -64(%rbp)
	addq $24, -64(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -48(%rbp)
	movq -48(%rbp), %r10
	cmpq %r10, -64(%rbp)
	sete %al
	movzbq %al, %r10
	movq %r10, -88(%rbp)
	movq -88(%rbp), %rax
	cmpq $1, %rax
	je then12068
	movq %r15, %rcx
	movq $24, %rdx
	callq collect
	movq $0, -96(%rbp)
	jmp end12069
then12068:
	movq $0, -120(%rbp)
	movq -120(%rbp), %r8
	movq %r8, -96(%rbp)
end12069:
	movq -96(%rbp), %r8
	movq %r8, -24(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $24, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $261, 0(%r11)
	movq -16(%r15), %r11
	movq -24(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -8(%rbp)
	movq -16(%r15), %r11
	movq -56(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -16(%rbp)
	movq -16(%r15), %r8
	movq %r8, -8(%r15)
	movq -8(%r15), %r11
	movq 8(%r11), %r8
	movq %r8, -40(%r15)
	movq -40(%r15), %r11
	movq 8(%r11), %r8
	movq %r8, -80(%rbp)
	movq -80(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	subq $48, %r15
	addq $160, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
