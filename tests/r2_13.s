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

	movq $1, -56(%rbp)
	movq -56(%rbp), %rax
	cmpq $1, %rax
	je then54071
	movq $0, -48(%rbp)
	jmp end54072
then54071:
	movq -56(%rbp), %rax
	movq %rax, -48(%rbp)
end54072:
	movq -48(%rbp), %rax
	cmpq $1, %rax
	je then54073
	movq $0, -64(%rbp)
	jmp end54074
then54073:
	movq $1, -64(%rbp)
end54074:
	movq -64(%rbp), %rax
	movq %rax, -80(%rbp)
	movq -80(%rbp), %rax
	cmpq $1, %rax
	je then54075
	movq $777, -72(%rbp)
	jmp end54076
then54075:
	movq $42, -72(%rbp)
end54076:
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
