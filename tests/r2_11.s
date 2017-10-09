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

	movq $0, %rdx
	xorq $1, %rdx
	cmpq $1, %rdx
	je then13530
	movq $1, %rcx
	jmp end13531
then13530:
	movq $0, %rcx
end13531:
	cmpq $1, %rcx
	je then13532
	movq $42, %rbx
	jmp end13533
then13532:
	movq $777, %rbx
end13533:
	movq %rbx, %rax

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
