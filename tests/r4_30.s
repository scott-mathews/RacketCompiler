	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $280, %rsp
	addq $48, %r15
	movq $0, -48(%r15)
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, -96(%rbp)
	movq %rsi, -72(%rbp)
	movq %rdx, -48(%r15)
	movq $100, %rax
	cmpq -72(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -48(%rbp)
	cmpq $1, -48(%rbp)
	je then377772
	leaq function0(%rip), %rax
	movq %rax, -240(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -112(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -88(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -200(%rbp)
	addq $16, -200(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -232(%rbp)
	movq -200(%rbp), %rax
	cmpq %rax, -232(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -64(%rbp)
	cmpq $1, -64(%rbp)
	je then377774
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -56(%rbp)
	jmp end377775
then377774:
	movq $0, -224(%rbp)
	movq -224(%rbp), %rax
	movq %rax, -56(%rbp)
end377775:
	movq -56(%rbp), %rax
	movq %rax, -192(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -32(%r15)
	addq $16, free_ptr(%rip)
	movq -32(%r15), %r11
	movq $3, 0(%r11)
	movq -32(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq -112(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -136(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -120(%rbp)
	movq -24(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -176(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -272(%rbp)
	addq $1, -272(%rbp)
	movq -48(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -144(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -152(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -168(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -264(%rbp)
	addq $16, -264(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -280(%rbp)
	movq -264(%rbp), %rax
	cmpq %rax, -280(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -208(%rbp)
	cmpq $1, -208(%rbp)
	je then377776
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -104(%rbp)
	jmp end377777
then377776:
	movq $0, -80(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -104(%rbp)
end377777:
	movq -104(%rbp), %rax
	movq %rax, -248(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $16, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $3, 0(%r11)
	movq -8(%r15), %rax
	movq %rax, -40(%r15)
	movq -40(%r15), %r11
	movq -152(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -216(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -128(%rbp)
	movq -16(%r15), %rdi
	movq -272(%rbp), %rsi
	movq -40(%r15), %rdx
	callq *-176(%rbp)
	movq %rax, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -184(%rbp)
	jmp end377773
then377772:
	movq -48(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -256(%rbp)
	movq -256(%rbp), %rax
	movq %rax, -184(%rbp)
end377773:
	movq -184(%rbp), %rax

	addq $280, %rsp
	subq $48, %r15
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
	subq $272, %rsp
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
	movq %rax, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -48(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -216(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -144(%rbp)
	addq $16, -144(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -112(%rbp)
	movq -144(%rbp), %rax
	cmpq %rax, -112(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -80(%rbp)
	cmpq $1, -80(%rbp)
	je then377778
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -192(%rbp)
	jmp end377779
then377778:
	movq $0, -184(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -192(%rbp)
end377779:
	movq -192(%rbp), %rax
	movq %rax, -56(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -40(%r15)
	addq $16, free_ptr(%rip)
	movq -40(%r15), %r11
	movq $3, 0(%r11)
	movq -40(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq -48(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -200(%rbp)
	movq -24(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -224(%rbp)
	movq $42, -208(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -120(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -128(%rbp)
	addq $16, -128(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -152(%rbp)
	movq -128(%rbp), %rax
	cmpq %rax, -152(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -168(%rbp)
	cmpq $1, -168(%rbp)
	je then377780
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -88(%rbp)
	jmp end377781
then377780:
	movq $0, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -88(%rbp)
end377781:
	movq -88(%rbp), %rax
	movq %rax, -104(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $16, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $3, 0(%r11)
	movq -8(%r15), %rax
	movq %rax, -32(%r15)
	movq -32(%r15), %r11
	movq -208(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -176(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -16(%r15), %rdi
	movq $0, %rsi
	movq -32(%r15), %rdx
	callq *-224(%rbp)
	movq %rax, -136(%rbp)
	movq -136(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $40, %r15
	addq $272, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
