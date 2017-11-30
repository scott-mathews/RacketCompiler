	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $96, %rsp
	addq $0, %r15

	movq %rdi, -64(%rbp)
	movq $0, %rax
	cmpq -64(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -80(%rbp)
	cmpq $1, -80(%rbp)
	je then482951
	leaq function1(%rip), %rax
	movq %rax, -88(%rbp)
	movq $1, -72(%rbp)
	negq -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -64(%rbp), %rax
	addq %rax, -96(%rbp)
	movq -96(%rbp), %rdi
	callq *-88(%rbp)
	movq %rax, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -48(%rbp)
	jmp end482952
then482951:
	movq $0, -48(%rbp)
end482952:
	movq -48(%rbp), %rax

	addq $96, %rsp
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
	subq $96, %rsp
	addq $0, %r15

	movq %rdi, -80(%rbp)
	movq $0, %rax
	cmpq -80(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -72(%rbp)
	cmpq $1, -72(%rbp)
	je then482953
	leaq function0(%rip), %rax
	movq %rax, -96(%rbp)
	movq $1, -88(%rbp)
	negq -88(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -64(%rbp)
	movq -80(%rbp), %rax
	addq %rax, -64(%rbp)
	movq -64(%rbp), %rdi
	callq *-96(%rbp)
	movq %rax, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -56(%rbp)
	jmp end482954
then482953:
	movq $1, -56(%rbp)
end482954:
	movq -56(%rbp), %rax

	addq $96, %rsp
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
	subq $224, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $24, %r15
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	leaq function0(%rip), %rax
	movq %rax, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -72(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -168(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -80(%rbp)
	addq $16, -80(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -104(%rbp)
	movq -80(%rbp), %rax
	cmpq %rax, -104(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -136(%rbp)
	cmpq $1, -136(%rbp)
	je then482955
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -56(%rbp)
	jmp end482956
then482955:
	movq $0, -152(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -56(%rbp)
end482956:
	movq -56(%rbp), %rax
	movq %rax, -112(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -24(%r15)
	addq $16, free_ptr(%rip)
	movq -24(%r15), %r11
	movq $3, 0(%r11)
	movq -24(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq -72(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -128(%rbp)
	movq -16(%r15), %rax
	movq %rax, -8(%r15)
	leaq function1(%rip), %rax
	movq %rax, -176(%rbp)
	movq -8(%r15), %r11
	movq -176(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -120(%rbp)
	movq -8(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -88(%rbp)
	movq $21, %rdi
	callq *-88(%rbp)
	movq %rax, -48(%rbp)
	cmpq $1, -48(%rbp)
	je then482957
	movq $42, -144(%rbp)
	jmp end482958
then482957:
	movq $999, -144(%rbp)
end482958:
	movq -144(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $24, %r15
	addq $224, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
