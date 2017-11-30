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
	subq $184, %rsp
	addq $24, %r15
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, -144(%rbp)
	movq %rsi, -24(%r15)
	movq -24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -136(%rbp)
	movq -136(%rbp), %rdi
	callq *-144(%rbp)
	movq %rax, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -160(%rbp)
	movq -24(%r15), %r11
	movq 16(%r11), %rax
	movq %rax, -56(%rbp)
	movq -56(%rbp), %rdi
	callq *-144(%rbp)
	movq %rax, -152(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -88(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -128(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -72(%rbp)
	addq $24, -72(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -80(%rbp)
	movq -72(%rbp), %rax
	cmpq %rax, -80(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -120(%rbp)
	cmpq $1, -120(%rbp)
	je then483420
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, -48(%rbp)
	jmp end483421
then483420:
	movq $0, -176(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -48(%rbp)
end483421:
	movq -48(%rbp), %rax
	movq %rax, -104(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $24, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $5, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq -88(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -184(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -8(%r15), %r11
	movq -160(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -168(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -112(%rbp)
	movq -8(%r15), %rax

	addq $184, %rsp
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
	subq $216, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $24, %r15
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	leaq function1(%rip), %rax
	movq %rax, -104(%rbp)
	leaq function0(%rip), %rax
	movq %rax, -56(%rbp)
	movq $0, -64(%rbp)
	movq $41, -152(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -128(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -136(%rbp)
	addq $24, -136(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -72(%rbp)
	movq -136(%rbp), %rax
	cmpq %rax, -72(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -48(%rbp)
	cmpq $1, -48(%rbp)
	je then483422
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, -120(%rbp)
	jmp end483423
then483422:
	movq $0, -88(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -120(%rbp)
end483423:
	movq -120(%rbp), %rax
	movq %rax, -112(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $24, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $5, 0(%r11)
	movq -8(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq -152(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -80(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -168(%rbp)
	movq -16(%r15), %r11
	movq -64(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -160(%rbp)
	movq -56(%rbp), %rdi
	movq -16(%r15), %rsi
	callq *-104(%rbp)
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq 16(%r11), %rax
	movq %rax, -144(%rbp)
	movq -144(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $24, %r15
	addq $216, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
