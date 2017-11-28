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
	je then2331
	movq $0, %rbx
	jmp end2332
then2331:
	callq read_int
	movq %rax, %rbx
	cmpq $1, %rbx
	sete %al
	movzbq %al, %rbx
	movq %rbx, %rbx
end2332:
	cmpq $1, %rbx
	je then2333
	movq $42, %rbx
	jmp end2334
then2333:
	movq $0, %rbx
end2334:
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
