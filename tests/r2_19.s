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
	cmpq $1, %rax
	je then37466
	movq $0, %rbx
	jmp end37467
then37466:
	callq read_int
	movq %rax, %rbx
	movq $42, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rbx
	movq %rbx, %rbx
end37467:
	cmpq $1, %rbx
	je then37468
	movq $42, %rbx
	jmp end37469
then37468:
	movq $777, %rbx
end37469:
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
