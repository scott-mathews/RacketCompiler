	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $216, %rsp
	addq $48, %r15
	movq $0, -48(%r15)
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, -176(%rbp)
	movq %rsi, -8(%r15)
	movq $100, %rax
	cmpq -176(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -192(%rbp)
	cmpq $1, -192(%rbp)
	je then483539
	leaq function0(%rip), %rax
	movq %rax, -216(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -152(%rbp)
	addq $1, -152(%rbp)
	movq -8(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -136(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -160(%rbp)
	movq -8(%r15), %r11
	movq 16(%r11), %rax
	movq %rax, -48(%r15)
	movq -48(%r15), %rax
	movq %rax, -32(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -168(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -56(%rbp)
	addq $24, -56(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -48(%rbp)
	movq -56(%rbp), %rax
	cmpq %rax, -48(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -200(%rbp)
	cmpq $1, -200(%rbp)
	je then483541
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, -96(%rbp)
	jmp end483542
then483541:
	movq $0, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -96(%rbp)
end483542:
	movq -96(%rbp), %rax
	movq %rax, -80(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -24(%r15)
	addq $24, free_ptr(%rip)
	movq -24(%r15), %r11
	movq $261, 0(%r11)
	movq -24(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq -32(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -208(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -16(%r15), %r11
	movq -160(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -184(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -120(%rbp)
	movq -152(%rbp), %rdi
	movq -16(%r15), %rsi
	callq *-216(%rbp)
	movq %rax, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -104(%rbp)
	jmp end483540
then483539:
	movq -8(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -128(%rbp)
	movq -8(%r15), %r11
	movq 16(%r11), %rax
	movq %rax, -40(%r15)
	movq -40(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -144(%rbp)
	movq -144(%rbp), %rdi
	callq *-128(%rbp)
	movq %rax, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -104(%rbp)
end483540:
	movq -104(%rbp), %rax

	addq $216, %rsp
	subq $48, %r15
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

	movq %rdi, -48(%rbp)
	movq -48(%rbp), %rax

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
	subq $288, %rsp
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
	movq %rax, -152(%rbp)
	leaq function1(%rip), %rax
	movq %rax, -176(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -96(%rbp)
	movq $42, -64(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -168(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -72(%rbp)
	addq $16, -72(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -88(%rbp)
	movq -72(%rbp), %rax
	cmpq %rax, -88(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -208(%rbp)
	cmpq $1, -208(%rbp)
	je then483543
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -120(%rbp)
	jmp end483544
then483543:
	movq $0, -200(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -120(%rbp)
end483544:
	movq -120(%rbp), %rax
	movq %rax, -144(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq -64(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -104(%rbp)
	movq -8(%r15), %rax
	movq %rax, -24(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -48(%rbp)
	addq $24, -48(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -80(%rbp)
	movq -48(%rbp), %rax
	cmpq %rax, -80(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -232(%rbp)
	cmpq $1, -232(%rbp)
	je then483545
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, -240(%rbp)
	jmp end483546
then483545:
	movq $0, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -240(%rbp)
end483546:
	movq -240(%rbp), %rax
	movq %rax, -136(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -40(%r15)
	addq $24, free_ptr(%rip)
	movq -40(%r15), %r11
	movq $261, 0(%r11)
	movq -40(%r15), %rax
	movq %rax, -32(%r15)
	movq -32(%r15), %r11
	movq -24(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -184(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -224(%rbp)
	movq -32(%r15), %r11
	movq -96(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -216(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -128(%rbp)
	movq $0, %rdi
	movq -32(%r15), %rsi
	callq *-152(%rbp)
	movq %rax, -56(%rbp)
	movq -56(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $40, %r15
	addq $288, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
