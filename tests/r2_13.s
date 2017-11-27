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
	cmpq $1, %rbx
	je then119244
	movq $0, %rbx
	jmp end119245
then119244:
	movq %rbx, %rbx
end119245:
	cmpq $1, %rbx
	je then119246
	movq $0, %rbx
	jmp end119247
then119246:
	movq $1, %rbx
end119247:
	cmpq $1, %rbx
	je then119248
	movq $777, %rbx
	jmp end119249
then119248:
	movq $42, %rbx
end119249:
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
