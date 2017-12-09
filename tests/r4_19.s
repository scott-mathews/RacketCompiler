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
	movq %r8, %rbx
	movq %r9, %rcx
	movq 16(%rbp), %rcx
	movq 24(%rbp), %rcx
	movq 32(%rbp), %rcx
	movq %rbx, %rbx
	addq %rcx, %rbx
	movq %rbx, %rax

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
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39956
	movq $0, %rcx
	jmp end39957
then39956:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39957:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
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
	movq $1, %r12
	movq $1, %r13
	movq $1, %r14
	movq $1, -48(%rbp)
	movq $1, -56(%rbp)
	movq $1, -64(%rbp)
	movq $1, -72(%rbp)
	movq $1, -80(%rbp)
	movq $1, -88(%rbp)
	movq $1, -96(%rbp)
	movq $1, -104(%rbp)
	movq $1, -112(%rbp)
	movq $1, -120(%rbp)
	movq $1, -128(%rbp)
	movq $1, -136(%rbp)
	movq $1, -144(%rbp)
	movq $1, -152(%rbp)
	leaq function0(%rip), %rcx
	movq %rcx, -160(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39958
	movq $0, %rcx
	jmp end39959
then39958:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39959:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq -160(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	movq %rax, -168(%rbp)
	movq %rcx, %rdi
	movq $1, %rsi
	movq $2, %rdx
	movq $3, %rcx
	movq $1, %r8
	movq $5, %r9
	movq $6, 0(%rsp)
	movq $7, 8(%rsp)
	movq $0, 16(%rsp)
	callq *-168(%rbp)
	movq %rax, %rcx
	movq %rcx, %rcx
	movq $1, %rdx
	movq $1, %rsi
	movq %rsi, %rsi
	addq $21, %rsi
	movq %rdx, %rdx
	addq %rsi, %rdx
	movq %rcx, %rcx
	addq %rdx, %rcx
	movq -152(%rbp), %rdx
	addq %rcx, %rdx
	movq -144(%rbp), %rcx
	addq %rdx, %rcx
	movq -136(%rbp), %rdx
	addq %rcx, %rdx
	movq -128(%rbp), %rcx
	addq %rdx, %rcx
	movq -120(%rbp), %rdx
	addq %rcx, %rdx
	movq -112(%rbp), %rcx
	addq %rdx, %rcx
	movq -104(%rbp), %rdx
	addq %rcx, %rdx
	movq -96(%rbp), %rcx
	addq %rdx, %rcx
	movq -88(%rbp), %rdx
	addq %rcx, %rdx
	movq -80(%rbp), %rcx
	addq %rdx, %rcx
	movq -72(%rbp), %rdx
	addq %rcx, %rdx
	movq -64(%rbp), %rcx
	addq %rdx, %rcx
	movq -56(%rbp), %rdx
	addq %rcx, %rdx
	movq -48(%rbp), %rcx
	addq %rdx, %rcx
	movq %r14, %rdx
	addq %rcx, %rdx
	movq %r13, %rcx
	addq %rdx, %rcx
	movq %r12, %rdx
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
