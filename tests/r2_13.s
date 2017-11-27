	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $48, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	movq $1, %rbx
	cmpq $1, %rbx
	je then238605
	movq $0, %rbx
	jmp end238606
then238605:
	movq %rbx, %rbx
end238606:
	cmpq $1, %rbx
	je then238607
	movq $0, %rbx
	jmp end238608
then238607:
	movq $1, %rbx
end238608:
	cmpq $1, %rbx
	je then238609
	movq $777, %rbx
	jmp end238610
then238609:
	movq $42, %rbx
end238610:
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $48, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
