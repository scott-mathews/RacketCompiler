	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $112, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	callq read_int
	movq %rax, -64(%rbp)
	movq $0, %rax
	cmpq %rax, -64(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -80(%rbp)
	movq -80(%rbp), %rax
	cmpq $1, %rax
	je then54356
	callq read_int
	movq %rax, -88(%rbp)
	movq $0, %rax
	cmpq %rax, -88(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -56(%rbp)
	movq -56(%rbp), %rax
	cmpq $1, %rax
	je then54358
	movq $444, -72(%rbp)
	jmp end54359
then54358:
	movq $40, -72(%rbp)
end54359:
	movq $2, -96(%rbp)
	movq -72(%rbp), %rax
	addq %rax, -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -48(%rbp)
	jmp end54357
then54356:
	movq $777, -48(%rbp)
end54357:
	movq -48(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $112, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
