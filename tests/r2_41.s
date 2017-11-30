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

	movq $0, %rax
	cmpq $1, %rax
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then230051
	movq $1, %rbx
	addq $1, %rbx
	cmpq $2, %rbx
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then230053
	movq $444, %rcx
	jmp end230054
then230053:
	movq $40, %rcx
end230054:
	movq $2, %rbx
	addq %rcx, %rbx
	movq %rbx, %rbx
	jmp end230052
then230051:
	movq $777, %rbx
end230052:
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $88, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
