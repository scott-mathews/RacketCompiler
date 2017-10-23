	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r15
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $48, %rsp

	movq $42, %rdx
	cmpq $42, %rdx
	sete %al
	movzbq %al, %rsi
	cmpq $1, %rsi
	je then13602
	movq $20, %rdx
	jmp end13603
then13602:
	movq %rdx, %rdx
end13603:
	cmpq $42, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then13604
	movq $777, %rbx
	jmp end13605
then13604:
	movq $42, %rbx
end13605:
	movq %rbx, %rax

	movq %rax, %rcx
	callq print_int
	addq $48, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %r15
	popq %rbp
	retq
