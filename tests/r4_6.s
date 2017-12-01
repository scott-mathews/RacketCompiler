	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $208, %rsp
	addq $24, %r15
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, -88(%rbp)
	movq %rsi, -104(%rbp)
	movq %rdx, -168(%rbp)
	cmpq $0, -104(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -152(%rbp)
	cmpq $1, -152(%rbp)
	je then376510
	leaq function0(%rip), %rax
	movq %rax, -208(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -48(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -176(%rbp)
	addq $16, -176(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -192(%rbp)
	movq -176(%rbp), %rax
	cmpq %rax, -192(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -72(%rbp)
	cmpq $1, -72(%rbp)
	je then376512
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -128(%rbp)
	jmp end376513
then376512:
	movq $0, -120(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -128(%rbp)
end376513:
	movq -128(%rbp), %rax
	movq %rax, -144(%rbp)
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
	movq $0, -80(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -136(%rbp)
	movq -24(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -56(%rbp)
	movq $1, -200(%rbp)
	negq -200(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -104(%rbp), %rax
	addq %rax, -96(%rbp)
	movq -8(%r15), %rdi
	movq -96(%rbp), %rsi
	movq -168(%rbp), %rdx
	callq *-56(%rbp)
	movq %rax, -184(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -112(%rbp)
	movq -184(%rbp), %rax
	addq %rax, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -64(%rbp)
	jmp end376511
then376510:
	movq $0, -64(%rbp)
end376511:
	movq -64(%rbp), %rax

	addq $208, %rsp
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
	movq %rax, -88(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -56(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -80(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -128(%rbp)
	addq $16, -128(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -144(%rbp)
	movq -128(%rbp), %rax
	cmpq %rax, -144(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -96(%rbp)
	cmpq $1, -96(%rbp)
	je then376515
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -48(%rbp)
	jmp end376516
then376515:
	movq $0, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -48(%rbp)
end376516:
	movq -48(%rbp), %rax
	movq %rax, -104(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $16, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $3, 0(%r11)
	movq -8(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq -56(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -120(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -64(%rbp)
	movq -16(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -72(%rbp)
	movq -24(%r15), %rdi
	movq $6, %rsi
	movq $7, %rdx
	callq *-72(%rbp)
	movq %rax, -136(%rbp)
	movq -136(%rbp), %rax

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
