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
	movq %rcx, %r13
	movq %rbx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then99484
	callq exit
	jmp end99485
then99484:
	movq %rbx, %r12
	sarq $3, %r12
end99485:
	movq %r13, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99486
	callq exit
	jmp end99487
then99486:
	movq %r13, %rbx
	sarq $3, %rbx
end99487:
	movq %rbx, %rbx
	negq %rbx
	movq %rbx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99488
	callq exit
	jmp end99489
then99488:
	movq %rcx, %rbx
	sarq $3, %rbx
end99489:
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
