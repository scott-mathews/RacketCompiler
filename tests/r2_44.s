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
	movq $0, %rax
	cmpq %rbx, %rax
	je then108270
	callq read_int
	movq %rax, %rbx
	movq $1, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rbx
	jmp end108271
then108270:
	movq $0, %rbx
end108271:
	movq $0, %rax
	cmpq %rbx, %rax
	je then108272
	movq $0, %rbx
	jmp end108273
then108272:
	movq $42, %rbx
end108273:
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
