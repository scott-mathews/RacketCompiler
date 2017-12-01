	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $176, %rsp
	addq $24, %r15
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, -120(%rbp)
	movq %rsi, -152(%rbp)
	movq $0, %rax
	cmpq -152(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -48(%rbp)
	cmpq $1, -48(%rbp)
	je then376863
	movq -152(%rbp), %rax
	movq %rax, -136(%rbp)
	jmp end376864
then376863:
	leaq function0(%rip), %rax
	movq %rax, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -176(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -104(%rbp)
	addq $16, -104(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -88(%rbp)
	movq -104(%rbp), %rax
	cmpq %rax, -88(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -144(%rbp)
	cmpq $1, -144(%rbp)
	je then376865
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -56(%rbp)
	jmp end376866
then376865:
	movq $0, -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -56(%rbp)
end376866:
	movq -56(%rbp), %rax
	movq %rax, -64(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $16, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $3, 0(%r11)
	movq -8(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq -176(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -80(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -128(%rbp)
	movq -16(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -72(%rbp)
	movq -24(%r15), %rdi
	movq -152(%rbp), %rsi
	callq *-72(%rbp)
	movq %rax, -168(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -136(%rbp)
end376864:
	movq -136(%rbp), %rax

	addq $176, %rsp
	subq $24, %r15
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
	movq %rax, -144(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -104(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -136(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -88(%rbp)
	addq $16, -88(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -96(%rbp)
	movq -88(%rbp), %rax
	cmpq %rax, -96(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -112(%rbp)
	cmpq $1, -112(%rbp)
	je then376867
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -64(%rbp)
	jmp end376868
then376867:
	movq $0, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -64(%rbp)
end376868:
	movq -64(%rbp), %rax
	movq %rax, -80(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq -104(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -120(%rbp)
	movq -24(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -72(%rbp)
	movq -8(%r15), %rdi
	movq $42, %rsi
	callq *-72(%rbp)
	movq %rax, -128(%rbp)
	movq -128(%rbp), %rax

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
