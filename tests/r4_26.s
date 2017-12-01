	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $64, %rsp
	addq $0, %r15

	movq %rdi, -56(%rbp)
	movq %rsi, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -64(%rbp)
	addq $1, -64(%rbp)
	movq -64(%rbp), %rax

	addq $64, %rsp
	subq $0, %r15
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
	subq $304, %rsp
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

	leaq function1(%rip), %rax
	movq %rax, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -240(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -120(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -248(%rbp)
	addq $16, -248(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -232(%rbp)
	movq -248(%rbp), %rax
	cmpq %rax, -232(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -80(%rbp)
	cmpq $1, -80(%rbp)
	je then377498
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -168(%rbp)
	jmp end377499
then377498:
	movq $0, -208(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -168(%rbp)
end377499:
	movq -168(%rbp), %rax
	movq %rax, -176(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -40(%r15)
	addq $16, free_ptr(%rip)
	movq -40(%r15), %r11
	movq $3, 0(%r11)
	movq -40(%r15), %rax
	movq %rax, -32(%r15)
	movq -32(%r15), %r11
	movq -240(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -216(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -48(%rbp)
	movq -32(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -144(%rbp)
	leaq function0(%rip), %rax
	movq %rax, -136(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -96(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -224(%rbp)
	movq -224(%rbp), %rax
	movq %rax, -112(%rbp)
	addq $16, -112(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -128(%rbp)
	movq -112(%rbp), %rax
	cmpq %rax, -128(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -184(%rbp)
	cmpq $1, -184(%rbp)
	je then377500
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -72(%rbp)
	jmp end377501
then377500:
	movq $0, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -72(%rbp)
end377501:
	movq -72(%rbp), %rax
	movq %rax, -88(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $16, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $3, 0(%r11)
	movq -8(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq -96(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -200(%rbp)
	movq -16(%r15), %rdi
	movq -24(%r15), %rsi
	callq *-144(%rbp)
	movq %rax, -256(%rbp)
	movq -256(%rbp), %rax
	movq %rax, -152(%rbp)
	movq -152(%rbp), %r11
	movq 8(%r11), %rax
	movq %rax, -192(%rbp)
	movq -152(%rbp), %rdi
	movq $41, %rsi
	callq *-192(%rbp)
	movq %rax, -104(%rbp)
	movq -104(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $40, %r15
	addq $304, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
