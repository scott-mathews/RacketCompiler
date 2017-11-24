	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $32, %rsp
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

	addq $32, %rsp
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
	subq $48, %rsp
	addq $0, %r15

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq %rdx, %rbx
	movq %rcx, %rbx
	movq %r8, %rbx
	movq %r9, %rcx
	movq 16(%rbp), %rcx
	movq 24(%rbp), %rcx
	movq 32(%rbp), %rcx
	movq 40(%rbp), %rcx
	movq 48(%rbp), %rcx
	movq %rbx, %rbx
	addq %rcx, %rbx
	movq %rbx, %rax

	addq $48, %rsp
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
	movq %rax, -152(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -112(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	addq $16, %rbx
	movq fromspace_end(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq %rax, %rbx
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then78947
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
	jmp end78948
then78947:
	movq $0, %rbx
	movq %rbx, %rbx
end78948:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq -112(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
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
	movq %rax, -232(%rbp)
	movq -232(%rbp), %rax
	movq %rax, -152(%rbp)
	movq $1, %r14
	movq $1, -56(%rbp)
	movq $1, -208(%rbp)
	movq $1, -88(%rbp)
	movq $1, %r13
	movq $1, -192(%rbp)
	movq $1, -216(%rbp)
	movq $1, -96(%rbp)
	movq $1, %r12
	movq $1, -64(%rbp)
	movq $1, -200(%rbp)
	movq $1, -80(%rbp)
	movq $1, -248(%rbp)
	movq $1, -48(%rbp)
	movq $1, -224(%rbp)
	movq $1, -104(%rbp)
	movq $1, -72(%rbp)
	leaq function0(%rip), %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then78949
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end78950
then78949:
	movq $0, %rcx
	movq %rcx, %rcx
end78950:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
	movq %rbx, %r11
	movq 8(%r11), %rax
	movq %rax, -24(%r15)
	movq %rbx, %rdi
	movq $1, %rsi
	movq $2, %rdx
	movq $3, %rcx
	movq $1, %r8
	movq $5, %r9
	movq $6, 0(%rsp)
	movq $7, 8(%rsp)
	movq $0, 16(%rsp)
	callq *-24(%r15)
	movq %rax, %rbx
	movq $1, %rcx
	movq $1, %rdx
	addq $21, %rdx
	addq %rdx, %rcx
	addq %rcx, %rbx
	movq -72(%rbp), %rax
	movq %rax, -184(%rbp)
	addq %rbx, -184(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -264(%rbp)
	movq -184(%rbp), %rax
	addq %rax, -264(%rbp)
	movq -224(%rbp), %rax
	movq %rax, -288(%rbp)
	movq -264(%rbp), %rax
	addq %rax, -288(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -168(%rbp)
	movq -288(%rbp), %rax
	addq %rax, -168(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -304(%rbp)
	movq -168(%rbp), %rax
	addq %rax, -304(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -128(%rbp)
	movq -304(%rbp), %rax
	addq %rax, -128(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -280(%rbp)
	movq -128(%rbp), %rax
	addq %rax, -280(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -160(%rbp)
	movq -280(%rbp), %rax
	addq %rax, -160(%rbp)
	addq -160(%rbp), %r12
	movq -96(%rbp), %rax
	movq %rax, -136(%rbp)
	addq %r12, -136(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -296(%rbp)
	movq -136(%rbp), %rax
	addq %rax, -296(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -176(%rbp)
	movq -296(%rbp), %rax
	addq %rax, -176(%rbp)
	addq -176(%rbp), %r13
	movq -88(%rbp), %rax
	movq %rax, -256(%rbp)
	addq %r13, -256(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -272(%rbp)
	movq -256(%rbp), %rax
	addq %rax, -272(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -144(%rbp)
	movq -272(%rbp), %rax
	addq %rax, -144(%rbp)
	addq -144(%rbp), %r14
	movq -152(%rbp), %rax
	movq %rax, -120(%rbp)
	addq %r14, -120(%rbp)
	movq -120(%rbp), %rax

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
