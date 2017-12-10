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

	callq read_int
	movq %rax, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then237911
	callq read_int
	movq %rax, %rbx
	movq $1, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rbx
	jmp end237912
then237911:
	movq $0, %rbx
end237912:
	movq $0, %rax
	cmpq %rbx, %rax
	je then237913
	movq $0, %rbx
	jmp end237914
then237913:
	movq $42, %rbx
end237914:
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
