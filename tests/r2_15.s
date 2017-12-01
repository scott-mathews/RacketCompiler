	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $88, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	movq $42, %rcx
	movq $42, %rax
	cmpq %rcx, %rax
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then549221
	movq $20, %rbx
	jmp end549222
then549221:
	movq %rcx, %rbx
end549222:
	movq $42, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then549223
	movq $777, %rbx
	jmp end549224
then549223:
	movq $42, %rbx
end549224:
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $88, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
