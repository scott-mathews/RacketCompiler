	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r15
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $128, %rsp
	movq $16384, %rcx 
	movq $16, %rdx 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $8, %r15
	movq $0, -8(%r15)

	movq $20, -104(%rbp)
	movq $22, -96(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -112(%rbp)
	movq -112(%rbp), %r8
	movq %r8, -32(%rbp)
	addq $24, -32(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -80(%rbp)
	movq -80(%rbp), %r10
	cmpq %r10, -32(%rbp)
	sete %al
	movzbq %al, %r10
	movq %r10, -40(%rbp)
	movq -40(%rbp), %rax
	cmpq $1, %rax
	je then237014
	movq %r15, %rcx
	movq $24, %rdx
	callq collect
	movq $0, -128(%rbp)
	jmp end237015
then237014:
	movq $0, -8(%rbp)
	movq -8(%rbp), %r8
	movq %r8, -128(%rbp)
end237015:
	movq -128(%rbp), %r8
	movq %r8, -56(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $24, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $5, 0(%r11)
	movq -8(%r15), %r11
	movq -104(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -72(%rbp)
	movq -8(%r15), %r11
	movq -96(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -64(%rbp)
	movq -8(%r15), %r8
	movq %r8, -24(%rbp)
	movq -24(%rbp), %r11
	movq 8(%r11), %r8
	movq %r8, -16(%rbp)
	movq -24(%rbp), %r11
	movq 16(%r11), %r8
	movq %r8, -88(%rbp)
	movq -16(%rbp), %r8
	movq %r8, -120(%rbp)
	movq -88(%rbp), %r9
	addq %r9, -120(%rbp)
	movq -120(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	subq $8, %r15
	addq $128, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %r15
	popq %rbp
	retq
