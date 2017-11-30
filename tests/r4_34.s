	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $144, %rsp
	addq $24, %r15
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, -48(%rbp)
	movq %rsi, -8(%r15)
	movq -8(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -128(%rbp)
	movq -128(%rbp), %rdi
	movq $1, %rsi
	callq *-48(%rbp)
	movq %rax, -120(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -64(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -72(%rbp)
	addq $16, -72(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -56(%rbp)
	movq -72(%rbp), %rax
	cmpq %rax, -56(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -104(%rbp)
	cmpq $1, -104(%rbp)
	je then483893
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -136(%rbp)
	jmp end483894
then483893:
	movq $0, -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -136(%rbp)
end483894:
	movq -136(%rbp), %rax
	movq %rax, -80(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq -64(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -144(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -24(%r15), %rax

	addq $144, %rsp
	subq $24, %r15
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq

	.globl function1
function1:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $72, %rsp
	addq $0, %r15

	movq %rdi, -56(%rbp)
	movq %rsi, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -48(%rbp)
	negq -48(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -72(%rbp)
	movq -48(%rbp), %rax
	addq %rax, -72(%rbp)
	movq -72(%rbp), %rax

	addq $72, %rsp
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
	movq %rax, -96(%rbp)
	leaq function1(%rip), %rax
	movq %rax, -120(%rbp)
	movq $43, -48(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -104(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -56(%rbp)
	addq $16, -56(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -64(%rbp)
	movq -56(%rbp), %rax
	cmpq %rax, -64(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -136(%rbp)
	cmpq $1, -136(%rbp)
	je then483895
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -144(%rbp)
	jmp end483896
then483895:
	movq $0, -128(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -144(%rbp)
end483896:
	movq -144(%rbp), %rax
	movq %rax, -80(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq -48(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -120(%rbp), %rdi
	movq -24(%r15), %rsi
	callq *-96(%rbp)
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -112(%rbp)
	movq -112(%rbp), %rax

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
