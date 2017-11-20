	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r15
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $64, %rsp
	movq $16384, %rcx 
	movq $16, %rdx 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15
	movq $0, 0(%r15)

	callq read_int
	movq %rax, -40(%rbp)
	callq read_int
	movq %rax, -32(%rbp)
	movq -32(%rbp), %r10
	cmpq %r10, -40(%rbp)
	sete %al
	movzbq %al, %r10
	movq %r10, -8(%rbp)
	movq -8(%rbp), %rax
	cmpq $1, %rax
	je then184395
	movq $777, -16(%rbp)
	jmp end184396
then184395:
	movq $42, -16(%rbp)
end184396:
	movq -16(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	subq $0, %r15
	addq $64, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %r15
	popq %rbp
	retq
