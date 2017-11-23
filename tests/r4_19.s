	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $24, %rsp
	addq $0, %r15

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq %rdx, %rbx
	movq %rcx, %rcx
	movq %r8, %rbx
	movq %r9, %rbx
	movq 16(%rbp), %rbx
	movq 24(%rbp), %rbx
	movq %rcx, %rcx
	addq %rbx, %rcx
	movq %rcx, %rax

	addq $24, %rsp
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
	subq $40, %rsp
	addq $0, %r15

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq %rdx, %rbx
	movq %rcx, %rbx
	movq %r8, %rcx
	movq %r9, %rcx
	movq 16(%rbp), %rcx
	movq 24(%rbp), %rcx
	movq 32(%rbp), %rcx
	movq 40(%rbp), %rcx
	movq %rbx, %rbx
	addq %rcx, %rbx
	movq %rbx, %rax

	addq $40, %rsp
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
	addq $0, %r15

	leaq function1(%rip), %rbx
	movq $1, %rdi
	movq $2, %rsi
	movq $3, %rdx
	movq $0, %rcx
	movq $5, %r8
	movq $6, %r9
	movq $7, 0(%rsp)
	movq $8, 8(%rsp)
	movq $9, 16(%rsp)
	movq $1, 24(%rsp)
	callq *%rbx
	movq %rax, -104(%rbp)
	movq $1, -208(%rbp)
	movq $1, -152(%rbp)
	movq $1, %r13
	movq $1, -96(%rbp)
	movq $1, -192(%rbp)
	movq $1, -144(%rbp)
	movq $1, %r14
	movq $1, -80(%rbp)
	movq $1, -56(%rbp)
	movq $1, -136(%rbp)
	movq $1, -248(%rbp)
	movq $1, -88(%rbp)
	movq $1, -64(%rbp)
	movq $1, %r12
	movq $1, -112(%rbp)
	movq $1, -240(%rbp)
	movq $1, -72(%rbp)
	leaq function0(%rip), %rax
	movq %rax, -48(%rbp)
	movq $1, %rdi
	movq $2, %rsi
	movq $3, %rdx
	movq $1, %rcx
	movq $5, %r8
	movq $6, %r9
	movq $7, 0(%rsp)
	movq $0, 8(%rsp)
	callq *-48(%rbp)
	movq %rax, %rcx
	movq $1, %rdx
	movq $1, %rbx
	addq $21, %rbx
	addq %rbx, %rdx
	addq %rdx, %rcx
	movq -72(%rbp), %rax
	movq %rax, -264(%rbp)
	addq %rcx, -264(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -288(%rbp)
	movq -264(%rbp), %rax
	addq %rax, -288(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -184(%rbp)
	movq -288(%rbp), %rax
	addq %rax, -184(%rbp)
	addq -184(%rbp), %r12
	movq -64(%rbp), %rax
	movq %rax, -168(%rbp)
	addq %r12, -168(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -280(%rbp)
	movq -168(%rbp), %rax
	addq %rax, -280(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -176(%rbp)
	movq -280(%rbp), %rax
	addq %rax, -176(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -272(%rbp)
	movq -176(%rbp), %rax
	addq %rax, -272(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -160(%rbp)
	movq -272(%rbp), %rax
	addq %rax, -160(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -256(%rbp)
	movq -160(%rbp), %rax
	addq %rax, -256(%rbp)
	addq -256(%rbp), %r14
	movq -144(%rbp), %rax
	movq %rax, -216(%rbp)
	addq %r14, -216(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -232(%rbp)
	movq -216(%rbp), %rax
	addq %rax, -232(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -120(%rbp)
	movq -232(%rbp), %rax
	addq %rax, -120(%rbp)
	addq -120(%rbp), %r13
	movq -152(%rbp), %rax
	movq %rax, -200(%rbp)
	addq %r13, -200(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -224(%rbp)
	movq -200(%rbp), %rax
	addq %rax, -224(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -128(%rbp)
	movq -224(%rbp), %rax
	addq %rax, -128(%rbp)
	movq -128(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $304, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
