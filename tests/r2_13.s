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
	je then549200
	movq $0, %rbx
	jmp end549201
then549200:
	movq %rbx, %rbx
end549201:
	cmpq $1, %rbx
	je then549202
	movq $0, %rbx
	jmp end549203
then549202:
	movq $1, %rbx
end549203:
	movq %rbx, %rbx
	cmpq $1, %rbx
	je then549204
	movq $777, %rbx
	jmp end549205
then549204:
	movq $42, %rbx
end549205:
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
