	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $56, %rsp
	addq $0, %r15

	movq %rdi, -48(%rbp)
	movq %rsi, -56(%rbp)
	movq -56(%rbp), %rax

	addq $56, %rsp
	subq $0, %r15
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq

	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $208, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $16, %r15
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	leaq function0(%rip), %rax
	movq %rax, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -152(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -120(%rbp)
	addq $16, -120(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -80(%rbp)
	movq -120(%rbp), %rax
	cmpq %rax, -80(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -160(%rbp)
	cmpq $1, -160(%rbp)
	je then377452
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -96(%rbp)
	jmp end377453
then377452:
	movq $0, -144(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -96(%rbp)
end377453:
	movq -96(%rbp), %rax
	movq %rax, -112(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq -152(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -88(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -136(%rbp)
	movq -8(%r15), %rax
	movq %rax, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -104(%rbp)
	movq -104(%rbp), %r11
	movq 8(%r11), %rax
	movq %rax, -128(%rbp)
	movq -104(%rbp), %rdi
	movq $42, %rsi
	callq *-128(%rbp)
	movq %rax, -48(%rbp)
	movq -48(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $16, %r15
	addq $208, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
