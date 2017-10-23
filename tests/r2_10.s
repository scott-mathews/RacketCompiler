	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r15
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $16, %rsp

	movq $0, %rax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rdx
	cmpq $1, %rdx
	je then13521
	movq $777, %rcx
	jmp end13522
then13521:
	movq $42, %rcx
end13522:
	movq %rcx, %rax

	movq %rax, %rcx
	callq print_int
	addq $16, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %r15
	popq %rbp
	retq
