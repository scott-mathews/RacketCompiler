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

	movq $1, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then32105
	movq %rbx, %rbx
	jmp end32106
then32105:
	movq $0, %rbx
end32106:
	movq $0, %rax
	cmpq %rbx, %rax
	je then32107
	movq $1, %rbx
	jmp end32108
then32107:
	movq $0, %rbx
end32108:
	movq %rbx, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then32109
	movq $42, %rbx
	jmp end32110
then32109:
	movq $777, %rbx
end32110:
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
