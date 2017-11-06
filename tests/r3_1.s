	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $96, %rsp
	movq $16384, %rcx 
	movq $16, %rdx 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $8, %r15
	movq $0, -8(%r15)

	movq $1, -88(%rbp)
	movq $2, -72(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -24(%rbp)
	movq -24(%rbp), %r8
	movq %r8, -96(%rbp)
	addq $24, -96(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -80(%rbp)
	movq -80(%rbp), %r10
	cmpq %r10, -96(%rbp)
	sete %al
	movzbq %al, %r10
	movq %r10, -8(%rbp)
	movq -8(%rbp), %rax
	cmpq $1, %rax
	je then12014
	movq %r15, %rcx
	movq $24, %rdx
	callq collect
	movq $0, -32(%rbp)
	jmp end12015
then12014:
	movq $0, -64(%rbp)
	movq -64(%rbp), %r8
	movq %r8, -32(%rbp)
end12015:
	movq -32(%rbp), %r8
	movq %r8, -40(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $24, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $5, 0(%r11)
	movq -8(%r15), %r11
	movq -88(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -56(%rbp)
	movq -8(%r15), %r11
	movq -72(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -48(%rbp)
	movq -8(%r15), %r8
	movq %r8, -16(%rbp)
	movq $42, %rax

	movq %rax, %rcx
	callq print_int
	subq $8, %r15
	addq $96, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
