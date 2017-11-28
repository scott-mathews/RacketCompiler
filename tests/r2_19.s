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

	movq $1, %rax
	cmpq $0, %rax
	je then2067
	movq $0, %rbx
	jmp end2068
then2067:
	callq read_int
	movq %rax, %rbx
	cmpq $42, %rbx
	sete %al
	movzbq %al, %rbx
	movq %rbx, %rbx
end2068:
	cmpq $1, %rbx
	je then2069
	movq $42, %rbx
	jmp end2070
then2069:
	movq $777, %rbx
end2070:
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
