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
	movq %rbx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	callq read_int
	movq %rax, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	movq %rbx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then100993
	callq exit
	jmp end100994
then100993:
	movq %rbx, %r13
	sarq $3, %r13
end100994:
	movq %r12, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100995
	callq exit
	jmp end100996
then100995:
	movq %r12, %rbx
	sarq $3, %rbx
end100996:
	movq %r13, %rcx
	addq %rbx, %rcx
	movq %rcx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then100997
	callq exit
	jmp end100998
then100997:
	movq %rbx, %r12
	sarq $3, %r12
end100998:
	movq $42, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100999
	callq exit
	jmp end101000
then100999:
	movq %rcx, %rbx
	sarq $3, %rbx
end101000:
	movq %r12, %rcx
	addq %rbx, %rcx
	movq %rcx, %rbx
	salq $3, %rbx
	orq $1, %rbx
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
