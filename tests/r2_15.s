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
	je then69527
	movq $20, %rbx
	jmp end69528
then69527:
	movq %rcx, %rbx
end69528:
	movq $42, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then69529
	movq $777, %rbx
	jmp end69530
then69529:
	movq $42, %rbx
end69530:
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
