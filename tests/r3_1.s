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

	movq $1, -72(%rbp)
	movq $2, -104(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -88(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -96(%rbp)
	addq $24, -96(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -112(%rbp)
	movq -112(%rbp), %rax
	cmpq %rax, -96(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -128(%rbp)
	movq -128(%rbp), %rax
	cmpq $1, %rax
	je then11974
	movq %r15, %rcx
	movq 24, %rdx
	callq collect
	movq -48(%rbp), %rax
	movq %rax, -32(%rbp)
	jmp end11975
then11974:
	movq $0, -136(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -32(%rbp)
end11975:
	movq free_ptr(%rip), %rax
	movq %rax, -24(%rbp)
	addq $24, free_ptr(%rip)
	movq -24(%rbp), %r11
	movq $5, 0(%r11)
	movq -24(%rbp), %r11
	movq -72(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -16(%rbp)
	movq -24(%rbp), %r11
	movq -104(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -64(%rbp)
	movq -24(%rbp), %rax
	movq %rax, -8(%rbp)
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
