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
	je then322017
	movq $0, %rbx
	jmp end322018
then322017:
	movq %rbx, %rbx
end322018:
	cmpq $1, %rbx
	je then322019
	movq $0, %rbx
	jmp end322020
then322019:
	movq $1, %rbx
end322020:
	movq %rbx, %rbx
	cmpq $1, %rbx
	je then322021
	movq $777, %rbx
	jmp end322022
then322021:
	movq $42, %rbx
end322022:
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
