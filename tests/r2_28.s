	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $136, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	callq read_int
	movq %rax, -88(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -80(%rbp)
	callq read_int
	movq %rax, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -56(%rbp)
	movq -80(%rbp), %rax
	cmpq %rax, -56(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -48(%rbp)
	cmpq $1, -48(%rbp)
	je then478632
	movq $0, -72(%rbp)
	jmp end478633
then478632:
	movq $42, -72(%rbp)
end478633:
	movq -72(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $136, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
