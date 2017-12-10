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
	cmpq $0, %rax
	je then107994
	callq read_int
	movq %rax, %rbx
	movq $42, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rbx
	jmp end107995
then107994:
	movq $0, %rbx
end107995:
	movq $0, %rax
	cmpq %rbx, %rax
	je then107996
	movq $777, %rbx
	jmp end107997
then107996:
	movq $42, %rbx
end107997:
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
