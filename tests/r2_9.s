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
	sete %al
	movzbq %al, %rdx
	cmpq $1, %rdx
	je then13504
	movq $777, %rbx
	jmp end13505
then13504:
	movq $42, %rbx
end13505:
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
