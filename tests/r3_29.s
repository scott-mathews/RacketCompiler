	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $168, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $16, %r15
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq $42, -88(%rbp)
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
	movq %rax, -64(%rbp)
	cmpq $1, -64(%rbp)
	je then481944
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -120(%rbp)
	jmp end481945
then481944:
	movq $0, -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -120(%rbp)
end481945:
	movq -120(%rbp), %rax
	movq %rax, -72(%rbp)
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
	movq $0, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -56(%rbp)
	movq -16(%r15), %rax

	movq %rax, %rdi
	movq	%rax, %r12
	callq	print_vecbegin
	movq	8(%r12), %rax
	movq	%rax, %rdi
	callq	print_int
	callq	print_vecend
	subq $16, %r15
	addq $168, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
