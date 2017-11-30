	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $248, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $56, %r15
	movq $0, -56(%r15)
	movq $0, -48(%r15)
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq free_ptr(%rip), %rax
	movq %rax, -168(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -72(%rbp)
	addq $8, -72(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -152(%rbp)
	movq -72(%rbp), %rax
	cmpq %rax, -152(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -104(%rbp)
	cmpq $1, -104(%rbp)
	je then482822
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	movq $0, -48(%rbp)
	jmp end482823
then482822:
	movq $0, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -48(%rbp)
end482823:
	movq -48(%rbp), %rax
	movq %rax, -176(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -56(%r15)
	addq $8, free_ptr(%rip)
	movq -56(%r15), %r11
	movq $1, 0(%r11)
	movq -56(%r15), %rax
	movq %rax, -48(%r15)
	movq -48(%r15), %rax
	movq %rax, -32(%r15)
	movq $42, -120(%rbp)
	movq -32(%r15), %rax
	movq %rax, -8(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -56(%rbp)
	addq $24, -56(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -64(%rbp)
	movq -56(%rbp), %rax
	cmpq %rax, -64(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -200(%rbp)
	cmpq $1, -200(%rbp)
	je then482824
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, -184(%rbp)
	jmp end482825
then482824:
	movq $0, -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -184(%rbp)
end482825:
	movq -184(%rbp), %rax
	movq %rax, -80(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -24(%r15)
	addq $24, free_ptr(%rip)
	movq -24(%r15), %r11
	movq $261, 0(%r11)
	movq -24(%r15), %rax
	movq %rax, -40(%r15)
	movq -40(%r15), %r11
	movq -8(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -136(%rbp)
	movq -40(%r15), %r11
	movq -120(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -144(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -40(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -128(%rbp)
	movq -128(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $56, %r15
	addq $248, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
