	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $176, %rsp
	addq $16, %r15
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, -168(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -112(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -176(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -96(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -88(%rbp)
	addq $32, -88(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -104(%rbp)
	movq -88(%rbp), %rax
	cmpq %rax, -104(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -152(%rbp)
	cmpq $1, -152(%rbp)
	je then483082
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, -80(%rbp)
	jmp end483083
then483082:
	movq $0, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -80(%rbp)
end483083:
	movq -80(%rbp), %rax
	movq %rax, -136(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $32, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $7, 0(%r11)
	movq -8(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq -96(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -128(%rbp)
	movq -16(%r15), %r11
	movq -176(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -144(%rbp)
	movq -16(%r15), %r11
	movq -112(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -120(%rbp)
	movq -16(%r15), %rax

	addq $176, %rsp
	subq $16, %r15
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
	subq $144, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $16, %r15
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	leaq function0(%rip), %rax
	movq %rax, -48(%rbp)
	movq $13, %rdi
	callq *-48(%rbp)
	movq %rax, -8(%r15)
	movq -8(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -64(%rbp)
	movq -16(%r15), %r11
	movq 16(%r11), %rax
	movq %rax, -56(%rbp)
	movq -16(%r15), %r11
	movq 24(%r11), %rax
	movq %rax, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -96(%rbp)
	addq $3, -96(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -80(%rbp)
	movq -96(%rbp), %rax
	addq %rax, -80(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -80(%rbp), %rax
	addq %rax, -88(%rbp)
	movq -88(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $16, %r15
	addq $144, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
