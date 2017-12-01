	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $152, %rsp
	addq $0, %r15

	movq %rdi, -48(%rbp)
	movq %rsi, -88(%rbp)
	movq %rdx, -80(%rbp)
	movq %rcx, -120(%rbp)
	movq %r8, -72(%rbp)
	movq %r9, -104(%rbp)
	movq 16(%rbp), %rax
	movq %rax, -56(%rbp)
	movq 24(%rbp), %rax
	movq %rax, -112(%rbp)
	movq 32(%rbp), %rax
	movq %rax, -64(%rbp)
	movq 40(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -96(%rbp), %rax

	addq $152, %rsp
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
	subq $192, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $24, %r15
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	leaq function0(%rip), %rax
	movq %rax, -88(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -48(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -120(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -136(%rbp)
	addq $16, -136(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -128(%rbp)
	movq -136(%rbp), %rax
	cmpq %rax, -128(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -80(%rbp)
	cmpq $1, -80(%rbp)
	je then380881
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -56(%rbp)
	jmp end380882
then380881:
	movq $0, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -56(%rbp)
end380882:
	movq -56(%rbp), %rax
	movq %rax, -112(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq -48(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -64(%rbp)
	movq -8(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -104(%rbp)
	movq -24(%r15), %rdi
	movq $777, %rsi
	movq $776, %rdx
	movq $775, %rcx
	movq $774, %r8
	movq $773, %r9
	movq $772, 0(%rsp)
	movq $771, 8(%rsp)
	movq $770, 16(%rsp)
	movq $42, 24(%rsp)
	callq *-104(%rbp)
	movq %rax, -144(%rbp)
	movq -144(%rbp), %rax

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
