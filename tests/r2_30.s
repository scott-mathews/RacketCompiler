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

	callq read_int
	movq %rax, %rbx
	callq read_int
	movq %rax, %rcx
	cmpq %rcx, %rbx
	sete %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then319036
	movq $42, %rbx
	jmp end319037
then319036:
	movq $777, %rbx
end319037:
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
