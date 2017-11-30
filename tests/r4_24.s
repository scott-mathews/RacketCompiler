	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $96, %rsp
	addq $0, %r15

	movq %rdi, -80(%rbp)
	movq $0, %rax
	cmpq -80(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -96(%rbp)
	cmpq $1, -96(%rbp)
	je then483308
	leaq function0(%rip), %rax
	movq %rax, -72(%rbp)
	movq $1, -48(%rbp)
	negq -48(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -48(%rbp), %rax
	addq %rax, -88(%rbp)
	movq -88(%rbp), %rdi
	callq *-72(%rbp)
	movq %rax, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -64(%rbp)
	jmp end483309
then483308:
	movq $0, -64(%rbp)
end483309:
	movq -64(%rbp), %rax

	addq $96, %rsp
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
	subq $120, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	leaq function0(%rip), %rax
	movq %rax, -56(%rbp)
	movq $99, %rdi
	callq *-56(%rbp)
	movq %rax, -64(%rbp)
	cmpq $0, -64(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -48(%rbp)
	cmpq $1, -48(%rbp)
	je then483310
	movq $777, -72(%rbp)
	jmp end483311
then483310:
	movq $42, -72(%rbp)
end483311:
	movq -72(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $120, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
