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
	movq -64(%rbp), %rax
	movq %rax, -56(%rbp)
	callq read_int
	movq %rax, -88(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -96(%rbp), %rax
	cmpq %rax, -56(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -72(%rbp)
	movq -72(%rbp), %rax
	cmpq $1, %rax
	je then54220
	movq $777, -80(%rbp)
	jmp end54221
then54220:
	movq $42, -80(%rbp)
end54221:
	movq -80(%rbp), %rax

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
