	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $80, %rsp

	movq $2, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -40(%rbp)
	addq $4, -40(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -80(%rbp)
	addq $3, -80(%rbp)
	movq -40(%rbp), %rax
	movq %rax, -24(%rbp)
	negq -24(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -72(%rbp)
	movq -56(%rbp), %rax
	addq %rax, -72(%rbp)
	movq -40(%rbp), %rax
	movq %rax, -48(%rbp)
	negq -48(%rbp)
	movq $45, -64(%rbp)
	movq -24(%rbp), %rax
	movq %rax, -32(%rbp)
	addq $3, -32(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -16(%rbp)
	movq -24(%rbp), %rax
	addq %rax, -16(%rbp)
	movq -16(%rbp), %rax
	movq %rax, -8(%rbp)
	addq $43, -8(%rbp)
	movq -8(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	addq $80, %rsp
	movq $0, %rax
	popq %rbp
	retq
