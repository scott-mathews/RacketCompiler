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

	movq %rdi, -56(%rbp)
	movq %rsi, -48(%rbp)
	movq -48(%rbp), %rax

	addq $56, %rsp
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
	movq %rax, -80(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -72(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -128(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -120(%rbp)
	addq $16, -120(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -56(%rbp)
	movq -120(%rbp), %rax
	cmpq %rax, -56(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -88(%rbp)
	cmpq $1, -88(%rbp)
	je then377246
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -136(%rbp)
	jmp end377247
then377246:
	movq $0, -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -136(%rbp)
end377247:
	movq -136(%rbp), %rax
	movq %rax, -112(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq -72(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -104(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -144(%rbp)
	movq -24(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -64(%rbp)
	movq -8(%r15), %rdi
	movq $42, %rsi
	callq *-64(%rbp)
	movq %rax, -48(%rbp)
	movq -48(%rbp), %rax

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
