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
	movq $0, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then549502
	movq $0, %rbx
	jmp end549503
then549502:
	callq read_int
	movq %rax, %rbx
	movq $1, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rbx
	movq %rbx, %rbx
end549503:
	cmpq $1, %rbx
	je then549504
	movq $42, %rbx
	jmp end549505
then549504:
	movq $0, %rbx
end549505:
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
