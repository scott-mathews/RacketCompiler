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

	movq $1, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then84865
	movq $0, %rbx
	jmp end84866
then84865:
	movq %rbx, %rbx
end84866:
	movq %rbx, %rax
	cmpq $1, %rax
	je then84867
	movq $0, %rbx
	jmp end84868
then84867:
	movq $1, %rbx
end84868:
	movq %rbx, %rax
	cmpq $1, %rax
	je then84869
	movq $777, %rbx
	jmp end84870
then84869:
	movq $42, %rbx
end84870:
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
