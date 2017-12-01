	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $192, %rsp
	addq $0, %r15

	movq %rdi, -56(%rbp)
	movq %rsi, -160(%rbp)
	movq %rdx, -120(%rbp)
	movq %rcx, -128(%rbp)
	movq %r8, -88(%rbp)
	movq %r9, -152(%rbp)
	movq 16(%rbp), %rax
	movq %rax, -64(%rbp)
	movq 24(%rbp), %rax
	movq %rax, -136(%rbp)
	movq 32(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -48(%rbp)
	movq -96(%rbp), %rax
	addq %rax, -48(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -112(%rbp)
	movq -48(%rbp), %rax
	addq %rax, -112(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -80(%rbp)
	movq -112(%rbp), %rax
	addq %rax, -80(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -168(%rbp)
	movq -80(%rbp), %rax
	addq %rax, -168(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -104(%rbp)
	movq -168(%rbp), %rax
	addq %rax, -104(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -144(%rbp)
	movq -104(%rbp), %rax
	addq %rax, -144(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -72(%rbp)
	movq -144(%rbp), %rax
	addq %rax, -72(%rbp)
	movq -72(%rbp), %rax

	addq $192, %rsp
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
	movq %rax, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -128(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -112(%rbp)
	addq $16, -112(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -104(%rbp)
	movq -112(%rbp), %rax
	cmpq %rax, -104(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -88(%rbp)
	cmpq $1, -88(%rbp)
	je then377314
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -72(%rbp)
	jmp end377315
then377314:
	movq $0, -144(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -72(%rbp)
end377315:
	movq -72(%rbp), %rax
	movq %rax, -136(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -24(%r15)
	addq $16, free_ptr(%rip)
	movq -24(%r15), %r11
	movq $3, 0(%r11)
	movq -24(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq -128(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -80(%rbp)
	movq -8(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -64(%rbp)
	movq -16(%r15), %rdi
	movq $5, %rsi
	movq $5, %rdx
	movq $5, %rcx
	movq $5, %r8
	movq $5, %r9
	movq $5, 0(%rsp)
	movq $5, 8(%rsp)
	movq $7, 16(%rsp)
	callq *-64(%rbp)
	movq %rax, -120(%rbp)
	movq -120(%rbp), %rax

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
