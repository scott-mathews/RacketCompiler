	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $56, %rsp
	addq $0, %r15

	movq %rdi, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -56(%rbp)
	addq $1, -56(%rbp)
	movq -56(%rbp), %rax

	addq $56, %rsp
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
	subq $224, %rsp
	addq $24, %r15
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, -104(%rbp)
	movq %rsi, -8(%r15)
	movq -8(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -112(%rbp)
	movq -112(%rbp), %rdi
	callq *-104(%rbp)
	movq %rax, -216(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -8(%r15), %r11
	movq 16(%r11), %rax
	movq %rax, -224(%rbp)
	movq -224(%rbp), %rdi
	callq *-104(%rbp)
	movq %rax, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -200(%rbp)
	movq -8(%r15), %r11
	movq 24(%r11), %rax
	movq %rax, -128(%rbp)
	movq -128(%rbp), %rdi
	callq *-104(%rbp)
	movq %rax, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -208(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -120(%rbp)
	addq $32, -120(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -136(%rbp)
	movq -120(%rbp), %rax
	cmpq %rax, -136(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -80(%rbp)
	cmpq $1, -80(%rbp)
	je then483023
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, -184(%rbp)
	jmp end483024
then483023:
	movq $0, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -184(%rbp)
end483024:
	movq -184(%rbp), %rax
	movq %rax, -144(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $32, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $7, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq -208(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, -88(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -176(%rbp)
	movq -24(%r15), %r11
	movq -200(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -152(%rbp)
	movq -24(%r15), %r11
	movq -96(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -168(%rbp)
	movq -24(%r15), %rax

	addq $224, %rsp
	subq $24, %r15
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
	subq $280, %rsp
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

	movq $1, -48(%rbp)
	movq $2, -200(%rbp)
	movq $3, -80(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -176(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -72(%rbp)
	addq $32, -72(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -56(%rbp)
	movq -72(%rbp), %rax
	cmpq %rax, -56(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -224(%rbp)
	cmpq $1, -224(%rbp)
	je then483025
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, -128(%rbp)
	jmp end483026
then483025:
	movq $0, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -128(%rbp)
end483026:
	movq -128(%rbp), %rax
	movq %rax, -136(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -32(%r15)
	addq $32, free_ptr(%rip)
	movq -32(%r15), %r11
	movq $7, 0(%r11)
	movq -32(%r15), %rax
	movq %rax, -40(%r15)
	movq -40(%r15), %r11
	movq -80(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, -208(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -112(%rbp)
	movq -40(%r15), %r11
	movq -200(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -232(%rbp)
	movq -232(%rbp), %rax
	movq %rax, -144(%rbp)
	movq -40(%r15), %r11
	movq -48(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -216(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -120(%rbp)
	movq -40(%r15), %rax
	movq %rax, -16(%r15)
	leaq function1(%rip), %rax
	movq %rax, -152(%rbp)
	leaq function0(%rip), %rax
	movq %rax, -88(%rbp)
	movq -88(%rbp), %rdi
	movq -16(%r15), %rsi
	callq *-152(%rbp)
	movq %rax, -24(%r15)
	movq -24(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -184(%rbp)
	movq -8(%r15), %r11
	movq 16(%r11), %rax
	movq %rax, -168(%rbp)
	movq -8(%r15), %r11
	movq 24(%r11), %rax
	movq %rax, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -104(%rbp)
	addq $33, -104(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -64(%rbp)
	movq -104(%rbp), %rax
	addq %rax, -64(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -64(%rbp), %rax
	addq %rax, -96(%rbp)
	movq -96(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $40, %r15
	addq $280, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
