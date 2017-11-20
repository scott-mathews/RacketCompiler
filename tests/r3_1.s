	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r15
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $96, %rsp
	movq $24, %rcx 
	movq $16, %rdx 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $16, %r15
	movq $0, -16(%r15)

	movq $1, -72(%rbp)
	movq $2, -80(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%rbp)
	movq -8(%rbp), %r8
	movq %r8, -40(%rbp)
	addq $24, -40(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -56(%rbp)
	movq -56(%rbp), %r10
	cmpq %r10, -40(%rbp)
	sete %al
	movzbq %al, %r10
	movq %r10, -24(%rbp)
	movq -24(%rbp), %rax
	cmpq $1, %rax
	je then2848
	movq %r15, %rcx
	movq $24, %rdx
	callq collect
	movq $0, -88(%rbp)
	jmp end2849
then2848:
	movq $0, -32(%rbp)
	movq -32(%rbp), %r8
	movq %r8, -88(%rbp)
end2849:
	movq -88(%rbp), %r8
	movq %r8, -48(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $24, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $5, 0(%r11)
	movq -8(%r15), %r11
	movq -72(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -64(%rbp)
	movq -8(%r15), %r11
	movq -80(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -16(%rbp)
	movq -8(%r15), %r8
	movq %r8, -16(%r15)
	movq $42, %rax

	movq %rax, %rcx
	callq print_int
	subq $16, %r15
	addq $96, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %r15
	popq %rbp
	retq
