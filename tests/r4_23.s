	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $104, %rsp
	addq $0, %r15

	movq %rdi, -72(%rbp)
	movq $1, %rax
	cmpq -72(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -64(%rbp)
	cmpq $1, -64(%rbp)
	je then483288
	leaq function0(%rip), %rax
	movq %rax, -88(%rbp)
	movq $1, -96(%rbp)
	negq -96(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -104(%rbp)
	movq -96(%rbp), %rax
	addq %rax, -104(%rbp)
	movq -104(%rbp), %rdi
	callq *-88(%rbp)
	movq %rax, -80(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -48(%rbp)
	movq -80(%rbp), %rax
	addq %rax, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -56(%rbp)
	jmp end483289
then483288:
	movq $1, -56(%rbp)
end483289:
	movq -56(%rbp), %rax

	addq $104, %rsp
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
	movq %rax, -48(%rbp)
	movq $3, %rdi
	callq *-48(%rbp)
	movq %rax, -64(%rbp)
	movq $6, %rax
	cmpq -64(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -56(%rbp)
	cmpq $1, -56(%rbp)
	je then483290
	movq $777, -72(%rbp)
	jmp end483291
then483290:
	movq $42, -72(%rbp)
end483291:
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
