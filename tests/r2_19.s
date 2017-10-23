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

	movq $1, %rax
	cmpq $0, %rax
	je then13656
	movq $0, %rcx
	jmp end13657
then13656:
	callq read_int
	movq %rax, %rcx
	cmpq $42, %rcx
	sete %al
	movzbq %al, %r11
	movq %r11, %rcx
end13657:
	cmpq $1, %rcx
	je then13658
	movq $42, %rbx
	jmp end13659
then13658:
	movq $777, %rbx
end13659:
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
