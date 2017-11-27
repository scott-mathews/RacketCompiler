	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $48, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	callq read_int
	movq %rax, %rcx
	cmpq $0, %rcx
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then238898
	callq read_int
	movq %rax, %rcx
	cmpq $0, %rcx
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then238900
	movq $444, %rcx
	jmp end238901
then238900:
	movq $40, %rcx
end238901:
	movq $2, %rbx
	addq %rcx, %rbx
	movq %rbx, %rbx
	jmp end238899
then238898:
	movq $777, %rbx
end238899:
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $48, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
