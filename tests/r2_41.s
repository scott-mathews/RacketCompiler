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
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then22244
	movq $1, %rbx
	addq $1, %rbx
	movq $2, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then22246
	movq $444, %rbx
	jmp end22247
then22246:
	movq $40, %rbx
end22247:
	movq $2, %rcx
	addq %rbx, %rcx
	movq %rcx, %rbx
	jmp end22245
then22244:
	movq $777, %rbx
end22245:
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
