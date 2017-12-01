	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $184, %rsp
	addq $16, %r15
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, -104(%rbp)
	movq %rsi, -152(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -80(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -184(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -96(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -176(%rbp)
	addq $32, -176(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -168(%rbp)
	movq -176(%rbp), %rax
	cmpq %rax, -168(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -48(%rbp)
	cmpq $1, -48(%rbp)
	je then376944
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, -120(%rbp)
	jmp end376945
then376944:
	movq $0, -88(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -120(%rbp)
end376945:
	movq -120(%rbp), %rax
	movq %rax, -128(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $32, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $7, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq -96(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, -144(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -64(%rbp)
	movq -8(%r15), %r11
	movq -184(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -136(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -72(%rbp)
	movq -8(%r15), %r11
	movq -80(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -56(%rbp)
	movq -8(%r15), %rax

	addq $184, %rsp
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
	subq $232, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $40, %r15
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	leaq function0(%rip), %rax
	movq %rax, -184(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -112(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -88(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -168(%rbp)
	addq $16, -168(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -144(%rbp)
	movq -168(%rbp), %rax
	cmpq %rax, -144(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -56(%rbp)
	cmpq $1, -56(%rbp)
	je then376946
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -120(%rbp)
	jmp end376947
then376946:
	movq $0, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -120(%rbp)
end376947:
	movq -120(%rbp), %rax
	movq %rax, -128(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -32(%r15)
	addq $16, free_ptr(%rip)
	movq -32(%r15), %r11
	movq $3, 0(%r11)
	movq -32(%r15), %rax
	movq %rax, -40(%r15)
	movq -40(%r15), %r11
	movq -112(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -136(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -72(%rbp)
	movq -40(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -48(%rbp)
	movq -16(%r15), %rdi
	movq $13, %rsi
	callq *-48(%rbp)
	movq %rax, -24(%r15)
	movq -24(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -104(%rbp)
	movq -8(%r15), %r11
	movq 16(%r11), %rax
	movq %rax, -160(%rbp)
	movq -8(%r15), %r11
	movq 24(%r11), %rax
	movq %rax, -176(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -80(%rbp)
	addq $3, -80(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -80(%rbp), %rax
	addq %rax, -96(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -152(%rbp)
	movq -96(%rbp), %rax
	addq %rax, -152(%rbp)
	movq -152(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $40, %r15
	addq $232, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
