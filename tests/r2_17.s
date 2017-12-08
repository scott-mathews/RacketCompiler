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
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq $0, %rcx
	salq $3, %rcx
	orq $4, %rcx
	cmpq %rbx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then103003
	movq $1, %rbx
	salq $3, %rbx
	orq $4, %rbx
	movq %rbx, %rbx
	jmp end103004
then103003:
	movq %rbx, %rbx
end103004:
	movq $0, %rcx
	salq $3, %rcx
	orq $4, %rcx
	cmpq %rbx, %rcx
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then103005
	movq $42, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	jmp end103006
then103005:
	movq $777, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
end103006:
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_any
	subq $0, %r15
	addq $88, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
