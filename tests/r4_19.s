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
	movq %r8, %rbx
	movq %r9, %rcx
	movq 16(%rbp), %rcx
	movq 24(%rbp), %rcx
	movq 32(%rbp), %rcx
	movq %rbx, %rbx
	addq %rcx, %rbx
	movq %rbx, %rax

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
	subq $304, %rsp
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
	movq %rax, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -224(%rbp)
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
	je then43263
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
	jmp end43264
then43263:
	movq $0, %rbx
	movq %rbx, %rbx
end43264:
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $131, 0(%r11)
	movq %rbx, %r11
	movq -224(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rbx, %rcx
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
	movq %rax, -248(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -56(%rbp)
	movq $1, %r13
	movq $1, -88(%rbp)
	movq $1, -264(%rbp)
	movq $1, -144(%rbp)
	movq $1, -192(%rbp)
	movq $1, -64(%rbp)
	movq $1, -216(%rbp)
	movq $1, -80(%rbp)
	movq $1, -240(%rbp)
	movq $1, -48(%rbp)
	movq $1, -96(%rbp)
	movq $1, -232(%rbp)
	movq $1, -72(%rbp)
	movq $1, %r14
	movq $1, -104(%rbp)
	movq $1, %r12
	movq $1, -152(%rbp)
	leaq function0(%rip), %rdx
	movq %rdx, %rbx
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
	je then43265
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end43266
then43265:
	movq $0, %rcx
	movq %rcx, %rcx
end43266:
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
	movq %rax, -40(%r15)
	movq %rbx, %rdi
	movq $1, %rsi
	movq $2, %rdx
	movq $3, %rcx
	movq $1, %r8
	movq $5, %r9
	movq $6, 0(%rsp)
	movq $7, 8(%rsp)
	movq $0, 16(%rsp)
	callq *-40(%r15)
	movq %rax, %rdx
	movq $1, %rbx
	movq $1, %rcx
	addq $21, %rcx
	addq %rcx, %rbx
	addq %rbx, %rdx
	movq -152(%rbp), %rax
	movq %rax, -136(%rbp)
	addq %rdx, -136(%rbp)
	addq -136(%rbp), %r12
	movq -104(%rbp), %rax
	movq %rax, -184(%rbp)
	addq %r12, -184(%rbp)
	addq -184(%rbp), %r14
	movq -72(%rbp), %rax
	movq %rax, -128(%rbp)
	addq %r14, -128(%rbp)
	movq -232(%rbp), %rax
	movq %rax, -288(%rbp)
	movq -128(%rbp), %rax
	addq %rax, -288(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -208(%rbp)
	movq -288(%rbp), %rax
	addq %rax, -208(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -256(%rbp)
	movq -208(%rbp), %rax
	addq %rax, -256(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -280(%rbp)
	movq -256(%rbp), %rax
	addq %rax, -280(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -176(%rbp)
	movq -280(%rbp), %rax
	addq %rax, -176(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -296(%rbp)
	movq -176(%rbp), %rax
	addq %rax, -296(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -120(%rbp)
	movq -296(%rbp), %rax
	addq %rax, -120(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -272(%rbp)
	movq -120(%rbp), %rax
	addq %rax, -272(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -160(%rbp)
	movq -272(%rbp), %rax
	addq %rax, -160(%rbp)
	movq -264(%rbp), %rax
	movq %rax, -200(%rbp)
	movq -160(%rbp), %rax
	addq %rax, -200(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -112(%rbp)
	movq -200(%rbp), %rax
	addq %rax, -112(%rbp)
	addq -112(%rbp), %r13
	movq -56(%rbp), %rax
	movq %rax, -168(%rbp)
	addq %r13, -168(%rbp)
	movq -168(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $48, %r15
	addq $304, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
