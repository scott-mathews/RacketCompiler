	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $48, %rsp
	movq $16384, %rcx 
	movq $10000, %rdx 
	callq initialize 
	movq rootstack_begin(%rip), %r15 
	movq $0, (%r15) 
	addq $0, %r15

	movq $1, -40(%rbp)
	movq -40(%rbp), %rax
	cmpq $1, %rax
	je then30187
	movq $0, -24(%rbp)
	jmp end30188
then30187:
	movq -40(%rbp), %r8
	movq %r8, -24(%rbp)
end30188:
	movq -24(%rbp), %rax
	cmpq $1, %rax
	je then30189
	movq $0, -32(%rbp)
	jmp end30190
then30189:
	movq $1, -32(%rbp)
end30190:
	movq -32(%rbp), %r8
	movq %r8, -8(%rbp)
	movq -8(%rbp), %rax
	cmpq $1, %rax
	je then30191
	movq $777, -16(%rbp)
	jmp end30192
then30191:
	movq $42, -16(%rbp)
end30192:
	movq -16(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	subq $0, %r15
	addq $48, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
