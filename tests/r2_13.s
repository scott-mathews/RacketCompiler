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
	je then91068
	movq $0, %rbx
	jmp end91069
then91068:
	movq %rbx, %rbx
end91069:
	cmpq $1, %rbx
	je then91070
	movq $0, %rbx
	jmp end91071
then91070:
	movq $1, %rbx
end91071:
	cmpq $1, %rbx
	je then91072
	movq $777, %rbx
	jmp end91073
then91072:
	movq $42, %rbx
end91073:
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
