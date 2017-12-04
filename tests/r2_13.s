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

	movq $1, %rbx
	cmpq $1, %rbx
	je then69504
	movq $0, %rbx
	jmp end69505
then69504:
	movq %rbx, %rbx
end69505:
	cmpq $1, %rbx
	je then69506
	movq $0, %rbx
	jmp end69507
then69506:
	movq $1, %rbx
end69507:
	movq %rbx, %rbx
	cmpq $1, %rbx
	je then69508
	movq $777, %rbx
	jmp end69509
then69508:
	movq $42, %rbx
end69509:
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
