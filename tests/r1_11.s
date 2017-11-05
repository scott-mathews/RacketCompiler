	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $0, %rsp
	movq $16384, %rcx 
	movq $16, %rdx 
	callq initialize 
	movq rootstack_begin(%rip), %r15 
	movq $0, (%r15) 
	addq $0, %r15

	movq $1, %rbx
	addq $1, %rbx
	movq $1, %rcx
	addq %rbx, %rcx
	movq $1, %rbx
	addq %rcx, %rbx
	movq $1, %rcx
	addq %rbx, %rcx
	movq $1, %rbx
	addq %rcx, %rbx
	movq $1, %rcx
	addq %rbx, %rcx
	movq $1, %rbx
	addq %rcx, %rbx
	movq $1, %rcx
	addq %rbx, %rcx
	movq $1, %rbx
	addq %rcx, %rbx
	movq $1, %rcx
	addq %rbx, %rcx
	movq $1, %rbx
	addq %rcx, %rbx
	movq $1, %rcx
	addq %rbx, %rcx
	movq $1, %rbx
	addq %rcx, %rbx
	movq $1, %rcx
	addq %rbx, %rcx
	movq $1, %rbx
	addq %rcx, %rbx
	movq $1, %rcx
	addq %rbx, %rcx
	movq $1, %rbx
	addq %rcx, %rbx
	movq $1, %rcx
	addq %rbx, %rcx
	movq $1, %rbx
	addq %rcx, %rbx
	movq $1, %rcx
	addq %rbx, %rcx
	movq $1, %rbx
	addq %rcx, %rbx
	movq $1, %rcx
	addq %rbx, %rcx
	movq $1, %rbx
	addq %rcx, %rbx
	movq $1, %rcx
	addq %rbx, %rcx
	movq $1, %rbx
	addq %rcx, %rbx
	movq $1, %rcx
	addq %rbx, %rcx
	movq $1, %rbx
	addq %rcx, %rbx
	movq $1, %rcx
	addq %rbx, %rcx
	movq $1, %rbx
	addq %rcx, %rbx
	movq $1, %rcx
	addq %rbx, %rcx
	movq $1, %rbx
	addq %rcx, %rbx
	movq $1, %rcx
	addq %rbx, %rcx
	movq $1, %rbx
	addq %rcx, %rbx
	movq $1, %rcx
	addq %rbx, %rcx
	movq $1, %rbx
	addq %rcx, %rbx
	movq $1, %rcx
	addq %rbx, %rcx
	movq $1, %rbx
	addq %rcx, %rbx
	movq $1, %rcx
	addq %rbx, %rcx
	movq $1, %rbx
	addq %rcx, %rbx
	movq $1, %rcx
	addq %rbx, %rcx
	movq $1, %rbx
	addq %rcx, %rbx
	movq %rbx, %rax

	movq %rax, %rcx
	callq print_int
	subq $0, %r15
	addq $0, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
