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
	movq %rax, -72(%rbp)
	cmpq $1, -72(%rbp)
	je then482905
	leaq function1(%rip), %rax
	movq %rax, -56(%rbp)
	movq $1, -96(%rbp)
	negq -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -80(%rbp), %rax
	addq %rax, -88(%rbp)
	movq -88(%rbp), %rdi
	callq *-56(%rbp)
	movq %rax, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -64(%rbp)
	jmp end482906
then482905:
	movq $0, -64(%rbp)
end482906:
	movq -64(%rbp), %rax

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

	movq %rdi, -80(%rbp)
	movq $0, %rax
	cmpq -80(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -56(%rbp)
	cmpq $1, -56(%rbp)
	je then482907
	leaq function0(%rip), %rax
	movq %rax, -64(%rbp)
	movq $1, -72(%rbp)
	negq -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -80(%rbp), %rax
	addq %rax, -96(%rbp)
	movq -96(%rbp), %rdi
	callq *-64(%rbp)
	movq %rax, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -88(%rbp)
	jmp end482908
then482907:
	movq $1, -88(%rbp)
end482908:
	movq -88(%rbp), %rax

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

	leaq function1(%rip), %rax
	movq %rax, -72(%rbp)
	callq read_int
	movq %rax, -56(%rbp)
	movq -56(%rbp), %rdi
	callq *-72(%rbp)
	movq %rax, -64(%rbp)
	cmpq $1, -64(%rbp)
	je then482909
	movq $42, -48(%rbp)
	jmp end482910
then482909:
	movq $999, -48(%rbp)
end482910:
	movq -48(%rbp), %rax

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
