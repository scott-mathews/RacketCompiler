	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $192, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $24, %r15
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq $0, -88(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -80(%rbp)
	addq $16, -80(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -104(%rbp)
	movq -80(%rbp), %rax
	cmpq %rax, -104(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -72(%rbp)
	cmpq $1, -72(%rbp)
	je then479004
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -144(%rbp)
	jmp end479005
then479004:
	movq $0, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -144(%rbp)
end479005:
	movq -144(%rbp), %rax
	movq %rax, -128(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $16, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $3, 0(%r11)
	movq -8(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq -88(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -136(%rbp)
	movq -16(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq $42, 8(%r11)
	movq $0, -120(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -112(%rbp)
	movq -24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -96(%rbp)
	movq -96(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $24, %r15
	addq $192, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
