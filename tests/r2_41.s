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

	movq $0, %rax
	cmpq $1, %rax
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then91360
	movq $1, %rbx
	addq $1, %rbx
	cmpq $2, %rbx
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then91362
	movq $444, %rcx
	jmp end91363
then91362:
	movq $40, %rcx
end91363:
	movq $2, %rbx
	addq %rcx, %rbx
	movq %rbx, %rbx
	jmp end91361
then91360:
	movq $777, %rbx
end91361:
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
