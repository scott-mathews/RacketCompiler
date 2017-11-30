	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $80, %rsp
	addq $0, %r15

	movq %rdi, -72(%rbp)
	movq $0, %rax
	cmpq -72(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -80(%rbp)
	cmpq $1, -80(%rbp)
	je then483039
	movq -72(%rbp), %rax
	movq %rax, -64(%rbp)
	jmp end483040
then483039:
	leaq function0(%rip), %rax
	movq %rax, -56(%rbp)
	movq -72(%rbp), %rdi
	callq *-56(%rbp)
	movq %rax, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -64(%rbp)
end483040:
	movq -64(%rbp), %rax

	addq $80, %rsp
	subq $0, %r15
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq

	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $104, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	leaq function0(%rip), %rax
	movq %rax, -56(%rbp)
	movq $42, %rdi
	callq *-56(%rbp)
	movq %rax, -48(%rbp)
	movq -48(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $104, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
