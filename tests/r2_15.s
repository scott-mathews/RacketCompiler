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

	movq $42, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq $42, %rcx
	salq $3, %rcx
	orq $1, %rcx
	cmpq %rbx, %rcx
	sete %al
	movzbq %al, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $4, %rcx
	movq $0, %rdx
	salq $3, %rdx
	orq $4, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then102956
	movq %rbx, %rcx
	jmp end102957
then102956:
	movq $20, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rcx
end102957:
	movq $42, %rbx
	salq $3, %rbx
	orq $1, %rbx
	cmpq %rcx, %rbx
	sete %al
	movzbq %al, %rbx
	movq %rbx, %rbx
	salq $3, %rbx
	orq $4, %rbx
	movq $0, %rcx
	salq $3, %rcx
	orq $4, %rcx
	cmpq %rbx, %rcx
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then102958
	movq $42, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	jmp end102959
then102958:
	movq $777, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
end102959:
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
