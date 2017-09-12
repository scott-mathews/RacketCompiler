	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $96, %rsp

	movq $23, -24(%rbp)
	addq $4, -24(%rbp)
	movq $6, -8(%rbp)
	negq -8(%rbp)
	movq -8(%rbp), %rax
	movq %rax, -48(%rbp)
	movq -24(%rbp), %rax
	addq %rax, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -64(%rbp)
	negq -64(%rbp)
	movq -24(%rbp), %rax
	movq %rax, -16(%rbp)
	movq -16(%rbp), %rax
	movq %rax, -32(%rbp)
	movq -24(%rbp), %rax
	addq %rax, -32(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -40(%rbp)
	negq -40(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -80(%rbp)
	addq $5, -80(%rbp)
	movq $7, -88(%rbp)
	negq -88(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -56(%rbp)
	movq -40(%rbp), %rax
	addq %rax, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -72(%rbp)
	addq $70, -72(%rbp)
	movq -72(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	addq $96, %rsp
	movq $0, %rax
	popq %rbp
	retq
