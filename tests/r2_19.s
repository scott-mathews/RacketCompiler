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

	movq $0, %rax
	cmpq $0, %rax
	je then431693
	callq read_int
	movq %rax, %rbx
	movq $42, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rbx
	movq %rbx, %rbx
	jmp end431694
then431693:
	movq $0, %rbx
end431694:
	movq $0, %rax
	cmpq %rbx, %rax
	je then431695
	movq $777, %rbx
	jmp end431696
then431695:
	movq $42, %rbx
end431696:
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
