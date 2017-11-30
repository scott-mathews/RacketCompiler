	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $176, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $24, %r15
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq $42, -64(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -88(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -48(%rbp)
	addq $16, -48(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -56(%rbp)
	movq -48(%rbp), %rax
	cmpq %rax, -56(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -128(%rbp)
	cmpq $1, -128(%rbp)
	je then480810
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -120(%rbp)
	jmp end480811
then480810:
	movq $0, -80(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -120(%rbp)
end480811:
	movq -120(%rbp), %rax
	movq %rax, -72(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq -64(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -24(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -104(%rbp)
	movq -104(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $24, %r15
	addq $176, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
