	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r15
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $32, %rsp

	movq $1, %rdx
	cmpq $1, %rdx
	je then13571
	movq $0, %rcx
	jmp end13572
then13571:
	movq %rdx, %rcx
end13572:
	cmpq $1, %rcx
	je then13573
	movq $0, %rbx
	jmp end13574
then13573:
	movq $1, %rbx
end13574:
	cmpq $1, %rbx
	je then13575
	movq $777, %rsi
	jmp end13576
then13575:
	movq $42, %rsi
end13576:
	movq %rsi, %rax

	movq %rax, %rcx
	callq print_int
	addq $32, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %r15
	popq %rbp
	retq
