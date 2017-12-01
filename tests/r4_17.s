	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $176, %rsp
	addq $0, %r15

	movq %rdi, -56(%rbp)
	movq %rsi, -112(%rbp)
	movq %rdx, -72(%rbp)
	movq %rcx, -128(%rbp)
	movq %r8, -96(%rbp)
	movq %r9, -104(%rbp)
	movq 16(%rbp), %rax
	movq %rax, -64(%rbp)
	movq 24(%rbp), %rax
	movq %rax, -136(%rbp)
	movq 32(%rbp), %rax
	movq %rax, -48(%rbp)
	movq 40(%rbp), %rax
	movq %rax, -120(%rbp)
	movq 48(%rbp), %rax
	movq %rax, -80(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -80(%rbp), %rax
	addq %rax, -88(%rbp)
	movq -88(%rbp), %rax

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
	movq %rax, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -64(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -120(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -136(%rbp)
	addq $16, -136(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -144(%rbp)
	movq -136(%rbp), %rax
	cmpq %rax, -144(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -80(%rbp)
	cmpq $1, -80(%rbp)
	je then377047
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -88(%rbp)
	jmp end377048
then377047:
	movq $0, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -88(%rbp)
end377048:
	movq -88(%rbp), %rax
	movq %rax, -112(%rbp)
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
	movq $0, -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -104(%rbp)
	movq -24(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -56(%rbp)
	movq -8(%r15), %rdi
	movq $1, %rsi
	movq $2, %rdx
	movq $3, %rcx
	movq $20, %r8
	movq $5, %r9
	movq $6, 0(%rsp)
	movq $7, 8(%rsp)
	movq $8, 16(%rsp)
	movq $9, 24(%rsp)
	movq $22, 32(%rsp)
	callq *-56(%rbp)
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
