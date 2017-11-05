	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $144, %rsp
	movq $16384, %rcx 
	movq $16, %rdx 
	callq initialize 
	movq rootstack_begin(%rip), %r15 
	movq $0, (%r15) 
	addq $0, %r15

	movq $1, -8(%rbp)
	movq $2, -104(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -88(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -16(%rbp)
	addq $24, -16(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -32(%rbp)
	movq -32(%rbp), %rax
	cmpq %rax, -16(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -128(%rbp)
	movq -128(%rbp), %rax
	cmpq $1, %rax
	je then11978
	movq %r15, %rcx
	movq $24, %rdx
	callq collect
	movq -112(%rbp), %rax
	movq %rax, -48(%rbp)
	jmp end11979
then11978:
	movq $0, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -48(%rbp)
end11979:
	movq free_ptr(%rip), %rax
	movq %rax, -56(%rbp)
	addq $24, free_ptr(%rip)
	movq -56(%rbp), %r11
	movq $5, 0(%r11)
	movq -56(%rbp), %r11
	movq -8(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -24(%rbp)
	movq -56(%rbp), %r11
	movq -104(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -40(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -80(%rbp)
	movq $42, %rax

	movq %rax, %rcx
	callq print_int
	subq $0, %r15
	addq $144, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
