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

	movq %rdi, -96(%rbp)
	movq $0, %rax
	cmpq -96(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -88(%rbp)
	cmpq $1, -88(%rbp)
	je then483355
	leaq function1(%rip), %rax
	movq %rax, -80(%rbp)
	movq $1, -64(%rbp)
	negq -64(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -72(%rbp)
	movq -64(%rbp), %rax
	addq %rax, -72(%rbp)
	movq -72(%rbp), %rdi
	callq *-80(%rbp)
	movq %rax, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -48(%rbp)
	jmp end483356
then483355:
	movq $0, -48(%rbp)
end483356:
	movq -48(%rbp), %rax

	addq $96, %rsp
	subq $0, %r15
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq

	.globl function1
function1:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $96, %rsp
	addq $0, %r15

	movq %rdi, -96(%rbp)
	movq $0, %rax
	cmpq -96(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -72(%rbp)
	cmpq $1, -72(%rbp)
	je then483357
	leaq function0(%rip), %rax
	movq %rax, -56(%rbp)
	movq $1, -64(%rbp)
	negq -64(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -64(%rbp), %rax
	addq %rax, -88(%rbp)
	movq -88(%rbp), %rdi
	callq *-56(%rbp)
	movq %rax, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -80(%rbp)
	jmp end483358
then483357:
	movq $1, -80(%rbp)
end483358:
	movq -80(%rbp), %rax

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
	subq $112, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	leaq function1(%rip), %rax
	movq %rax, -56(%rbp)
	movq $2, %rdi
	callq *-56(%rbp)
	movq %rax, -64(%rbp)
	cmpq $1, -64(%rbp)
	je then483359
	movq $0, -48(%rbp)
	jmp end483360
then483359:
	movq $42, -48(%rbp)
end483360:
	movq -48(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $112, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
