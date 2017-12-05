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

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq %rdx, %rbx
	movq %rcx, %rbx
	movq %r8, %rcx
	movq %r9, %rbx
	movq 16(%rbp), %rbx
	movq 24(%rbp), %rbx
	movq 32(%rbp), %rbx
	movq %rcx, %rcx
	addq %rbx, %rcx
	movq %rcx, %rax

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
	subq $80, %rsp
	addq $0, %r15

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq %rdx, %rbx
	movq %rcx, %rbx
	movq %r8, %rcx
	movq %r9, %rbx
	movq 16(%rbp), %rbx
	movq 24(%rbp), %rbx
	movq 32(%rbp), %rbx
	movq 40(%rbp), %rbx
	movq 48(%rbp), %rbx
	movq %rcx, %rcx
	addq %rbx, %rcx
	movq %rcx, %rax

	addq $80, %rsp
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
	subq $216, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	leaq function1(%rip), %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then42568
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end42569
then42568:
	movq $0, %rcx
	movq %rcx, %rcx
end42569:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rbx
	movq %rcx, %rdi
	movq $1, %rsi
	movq $2, %rdx
	movq $3, %rcx
	movq $0, %r8
	movq $5, %r9
	movq $6, 0(%rsp)
	movq $7, 8(%rsp)
	movq $8, 16(%rsp)
	movq $9, 24(%rsp)
	movq $1, 32(%rsp)
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, %rbx
	movq $1, %r13
	movq $1, -144(%rbp)
	movq $1, -64(%rbp)
	movq $1, -112(%rbp)
	movq $1, %r14
	movq $1, -168(%rbp)
	movq $1, -88(%rbp)
	movq $1, %r12
	movq $1, -56(%rbp)
	movq $1, -160(%rbp)
	movq $1, -80(%rbp)
	movq $1, -128(%rbp)
	movq $1, -48(%rbp)
	movq $1, -152(%rbp)
	movq $1, -72(%rbp)
	movq $1, -120(%rbp)
	movq $1, -136(%rbp)
	leaq function0(%rip), %rcx
	movq %rcx, -96(%rbp)
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $16, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then42570
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end42571
then42570:
	movq $0, %rcx
	movq %rcx, %rcx
end42571:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq -96(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	movq %rax, -104(%rbp)
	movq %rcx, %rdi
	movq $1, %rsi
	movq $2, %rdx
	movq $3, %rcx
	movq $1, %r8
	movq $5, %r9
	movq $6, 0(%rsp)
	movq $7, 8(%rsp)
	movq $0, 16(%rsp)
	callq *-104(%rbp)
	movq %rax, %rcx
	movq %rcx, %rdx
	movq $1, %rsi
	movq $1, %rcx
	movq %rcx, %rcx
	addq $21, %rcx
	movq %rsi, %rsi
	addq %rcx, %rsi
	movq %rdx, %rcx
	addq %rsi, %rcx
	movq -136(%rbp), %rdx
	addq %rcx, %rdx
	movq -120(%rbp), %rcx
	addq %rdx, %rcx
	movq -72(%rbp), %rdx
	addq %rcx, %rdx
	movq -152(%rbp), %rcx
	addq %rdx, %rcx
	movq -48(%rbp), %rdx
	addq %rcx, %rdx
	movq -128(%rbp), %rcx
	addq %rdx, %rcx
	movq -80(%rbp), %rdx
	addq %rcx, %rdx
	movq -160(%rbp), %rcx
	addq %rdx, %rcx
	movq -56(%rbp), %rdx
	addq %rcx, %rdx
	movq %r12, %rcx
	addq %rdx, %rcx
	movq -88(%rbp), %rdx
	addq %rcx, %rdx
	movq -168(%rbp), %rcx
	addq %rdx, %rcx
	movq %r14, %rdx
	addq %rcx, %rdx
	movq -112(%rbp), %rcx
	addq %rdx, %rcx
	movq -64(%rbp), %rdx
	addq %rcx, %rdx
	movq -144(%rbp), %rcx
	addq %rdx, %rcx
	movq %r13, %rdx
	addq %rcx, %rdx
	movq %rbx, %rbx
	addq %rdx, %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $216, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
