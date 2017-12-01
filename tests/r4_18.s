	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $144, %rsp
	addq $0, %r15

	movq %rdi, -48(%rbp)
	movq %rsi, -72(%rbp)
	movq %rdx, -96(%rbp)
	movq %rcx, -64(%rbp)
	movq %r8, -120(%rbp)
	movq %r9, -80(%rbp)
	movq 16(%rbp), %rax
	movq %rax, -104(%rbp)
	movq 24(%rbp), %rax
	movq %rax, -56(%rbp)
	movq 32(%rbp), %rax
	movq %rax, -112(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -112(%rbp), %rax
	addq %rax, -88(%rbp)
	movq -88(%rbp), %rax

	addq $144, %rsp
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
	subq $176, %rsp
	addq $0, %r15

	movq %rdi, -48(%rbp)
	movq %rsi, -128(%rbp)
	movq %rdx, -80(%rbp)
	movq %rcx, -112(%rbp)
	movq %r8, -96(%rbp)
	movq %r9, -120(%rbp)
	movq 16(%rbp), %rax
	movq %rax, -72(%rbp)
	movq 24(%rbp), %rax
	movq %rax, -64(%rbp)
	movq 32(%rbp), %rax
	movq %rax, -104(%rbp)
	movq 40(%rbp), %rax
	movq %rax, -136(%rbp)
	movq 48(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -56(%rbp)
	movq -88(%rbp), %rax
	addq %rax, -56(%rbp)
	movq -56(%rbp), %rax

	addq $176, %rsp
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
	subq $320, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $48, %r15
	movq $0, -48(%r15)
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	leaq function1(%rip), %rax
	movq %rax, -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -80(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -56(%rbp)
	addq $16, -56(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -224(%rbp)
	movq -56(%rbp), %rax
	cmpq %rax, -224(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -144(%rbp)
	cmpq $1, -144(%rbp)
	je then377112
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -136(%rbp)
	jmp end377113
then377112:
	movq $0, -88(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -136(%rbp)
end377113:
	movq -136(%rbp), %rax
	movq %rax, -168(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq -80(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -216(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -192(%rbp)
	movq -8(%r15), %rax
	movq %rax, -40(%r15)
	movq -40(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -112(%rbp)
	movq -40(%r15), %rdi
	movq $1, %rsi
	movq $2, %rdx
	movq $3, %rcx
	movq $10, %r8
	movq $5, %r9
	movq $6, 0(%rsp)
	movq $7, 8(%rsp)
	movq $8, 16(%rsp)
	movq $9, 24(%rsp)
	movq $11, 32(%rsp)
	callq *-112(%rbp)
	movq %rax, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -256(%rbp)
	leaq function0(%rip), %rax
	movq %rax, -152(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -232(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -184(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -248(%rbp)
	addq $16, -248(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -264(%rbp)
	movq -248(%rbp), %rax
	cmpq %rax, -264(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -48(%rbp)
	cmpq $1, -48(%rbp)
	je then377114
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -128(%rbp)
	jmp end377115
then377114:
	movq $0, -200(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -128(%rbp)
end377115:
	movq -128(%rbp), %rax
	movq %rax, -240(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -32(%r15)
	addq $16, free_ptr(%rip)
	movq -32(%r15), %r11
	movq $3, 0(%r11)
	movq -32(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq -232(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -176(%rbp)
	movq -24(%r15), %rax
	movq %rax, -48(%r15)
	movq -48(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -120(%rbp)
	movq -48(%r15), %rdi
	movq $1, %rsi
	movq $2, %rdx
	movq $3, %rcx
	movq $10, %r8
	movq $5, %r9
	movq $6, 0(%rsp)
	movq $7, 8(%rsp)
	movq $11, 16(%rsp)
	callq *-120(%rbp)
	movq %rax, -272(%rbp)
	movq -272(%rbp), %rax
	movq %rax, -104(%rbp)
	movq -256(%rbp), %rax
	movq %rax, -208(%rbp)
	movq -104(%rbp), %rax
	addq %rax, -208(%rbp)
	movq -208(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $48, %r15
	addq $320, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
