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

	movq $1, %rax
	cmpq $1, %rax
	je then13626
	movq $0, %rcx
	jmp end13627
then13626:
	movq $1, %rcx
end13627:
	cmpq $1, %rcx
	je then13628
	movq $777, %rbx
	jmp end13629
then13628:
	movq $42, %rbx
end13629:
	movq %rbx, %rax

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
