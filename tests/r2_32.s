	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $64, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	movq $1, %rax
	cmpq $1, %rax
	je then54240
	movq $0, -56(%rbp)
	jmp end54241
then54240:
	movq $1, -56(%rbp)
end54241:
	movq -56(%rbp), %rax
	cmpq $1, %rax
	je then54242
	movq $777, -48(%rbp)
	jmp end54243
then54242:
	movq $42, -48(%rbp)
end54243:
	movq -48(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $64, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
