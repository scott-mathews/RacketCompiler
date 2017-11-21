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
	je then474792
	movq $0, %rbx
	jmp end474793
then474792:
	movq %rbx, %rbx
end474793:
	movq %rbx, %rax
	cmpq $1, %rax
	je then474794
	movq $0, %rbx
	jmp end474795
then474794:
	movq $1, %rbx
end474795:
	movq %rbx, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then474796
	movq $777, %rbx
	jmp end474797
then474796:
	movq $42, %rbx
end474797:
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
