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

	movq $0, %rbx
	xorq $1, %rbx
	cmpq $1, %rbx
	je then2366
	movq $1, %rbx
	jmp end2367
then2366:
	movq $0, %rbx
end2367:
	cmpq $1, %rbx
	je then2368
	movq $42, %rbx
	jmp end2369
then2368:
	movq $777, %rbx
end2369:
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
