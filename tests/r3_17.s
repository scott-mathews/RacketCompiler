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
	addq $24, %r15
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq $0, -88(%rbp)
	movq $0, -168(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -176(%rbp)
	addq $24, -176(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -136(%rbp)
	movq -176(%rbp), %rax
	cmpq %rax, -136(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -104(%rbp)
	cmpq $1, -104(%rbp)
	je then480529
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, -192(%rbp)
	jmp end480530
then480529:
	movq $0, -184(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -192(%rbp)
end480530:
	movq -192(%rbp), %rax
	movq %rax, -144(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $24, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $5, 0(%r11)
	movq -8(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq -168(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -72(%rbp)
	movq -24(%r15), %r11
	movq -88(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -128(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -48(%rbp)
	movq -24(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq $38, 8(%r11)
	movq $0, -152(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -64(%rbp)
	movq -16(%r15), %r11
	movq $4, 16(%r11)
	movq $0, -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -80(%rbp)
	movq -16(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -200(%rbp)
	movq -16(%r15), %r11
	movq 16(%r11), %rax
	movq %rax, -112(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -120(%rbp)
	movq -112(%rbp), %rax
	addq %rax, -120(%rbp)
	movq -120(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $24, %r15
	addq $248, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
