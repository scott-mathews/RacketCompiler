	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $16, %rsp
	movq $16384, %rcx 
	movq $10000, %rdx 
	callq initialize 
	movq rootstack_begin(%rip), %r15 
	movq $0, (%r15) 
	addq $0, %r15

	movq $1, %rax
	cmpq $1, %rax
	je then30414
	movq $0, -8(%rbp)
	jmp end30415
then30414:
	movq $1, -8(%rbp)
end30415:
	movq -8(%rbp), %rax
	cmpq $1, %rax
	je then30416
	movq $777, -16(%rbp)
	jmp end30417
then30416:
	movq $42, -16(%rbp)
end30417:
	movq -16(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	subq $0, %r15
	addq $16, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
