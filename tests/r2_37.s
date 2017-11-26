	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $80, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	callq read_int
	movq %rax, -56(%rbp)
	movq $0, %rax
	cmpq %rax, -56(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -64(%rbp)
	movq -64(%rbp), %rax
	cmpq $1, %rax
	je then54296
	movq $777, -48(%rbp)
	jmp end54297
then54296:
	movq $42, -48(%rbp)
end54297:
	movq -48(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $80, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
