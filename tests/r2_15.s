	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $96, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	movq $42, -48(%rbp)
	movq $42, %rax
	cmpq %rax, -48(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -64(%rbp)
	movq -64(%rbp), %rax
	cmpq $1, %rax
	je then54092
	movq $20, -80(%rbp)
	jmp end54093
then54092:
	movq -48(%rbp), %rax
	movq %rax, -80(%rbp)
end54093:
	movq $42, %rax
	cmpq %rax, -80(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -56(%rbp)
	movq -56(%rbp), %rax
	cmpq $1, %rax
	je then54094
	movq $777, -72(%rbp)
	jmp end54095
then54094:
	movq $42, -72(%rbp)
end54095:
	movq -72(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $96, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
