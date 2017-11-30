	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $344, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $80, %r15
	movq $0, -80(%r15)
	movq $0, -72(%r15)
	movq $0, -64(%r15)
	movq $0, -56(%r15)
	movq $0, -48(%r15)
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq $0, -88(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -224(%rbp)
	movq -224(%rbp), %rax
	movq %rax, -80(%rbp)
	addq $16, -80(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -144(%rbp)
	movq -80(%rbp), %rax
	cmpq %rax, -144(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -296(%rbp)
	cmpq $1, -296(%rbp)
	je then479061
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -184(%rbp)
	jmp end479062
then479061:
	movq $0, -208(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -184(%rbp)
end479062:
	movq -184(%rbp), %rax
	movq %rax, -192(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -48(%r15)
	movq -48(%r15), %r11
	movq -88(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -136(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -272(%rbp)
	movq -48(%r15), %rax
	movq %rax, -64(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -240(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -120(%rbp)
	addq $16, -120(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -48(%rbp)
	movq -120(%rbp), %rax
	cmpq %rax, -48(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -280(%rbp)
	cmpq $1, -280(%rbp)
	je then479063
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -200(%rbp)
	jmp end479064
then479063:
	movq $0, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -200(%rbp)
end479064:
	movq -200(%rbp), %rax
	movq %rax, -264(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -40(%r15)
	addq $16, free_ptr(%rip)
	movq -40(%r15), %r11
	movq $131, 0(%r11)
	movq -40(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq -64(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -248(%rbp)
	movq -8(%r15), %rax
	movq %rax, -32(%r15)
	movq $42, -112(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -256(%rbp)
	addq $16, -256(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -216(%rbp)
	movq -256(%rbp), %rax
	cmpq %rax, -216(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -168(%rbp)
	cmpq $1, -168(%rbp)
	je then479065
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -288(%rbp)
	jmp end479066
then479065:
	movq $0, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -288(%rbp)
end479066:
	movq -288(%rbp), %rax
	movq %rax, -128(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -72(%r15)
	addq $16, free_ptr(%rip)
	movq -72(%r15), %r11
	movq $3, 0(%r11)
	movq -72(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq -112(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -232(%rbp)
	movq -232(%rbp), %rax
	movq %rax, -104(%rbp)
	movq -24(%r15), %rax
	movq %rax, -56(%r15)
	movq -32(%r15), %r11
	movq -56(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -152(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -176(%rbp)
	movq -32(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -80(%r15)
	movq -80(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -96(%rbp)
	movq -96(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $80, %r15
	addq $344, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
