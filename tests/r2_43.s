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
	movq %rax, -64(%rbp)
	movq $1, %rax
	cmpq %rax, -64(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -48(%rbp)
	movq -48(%rbp), %rax
	cmpq $1, %rax
	je then54370
	movq $0, -56(%rbp)
	jmp end54371
then54370:
	movq $42, -56(%rbp)
end54371:
	movq -56(%rbp), %rax

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
