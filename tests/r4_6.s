	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $112, %rsp
	addq $0, %r15

	movq %rdi, -104(%rbp)
	movq %rsi, -72(%rbp)
	cmpq $0, -104(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -48(%rbp)
	cmpq $1, -48(%rbp)
	je then482880
	leaq function0(%rip), %rax
	movq %rax, -80(%rbp)
	movq $1, -112(%rbp)
	negq -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -56(%rbp)
	movq -104(%rbp), %rax
	addq %rax, -56(%rbp)
	movq -56(%rbp), %rdi
	movq -72(%rbp), %rsi
	callq *-80(%rbp)
	movq %rax, -96(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -64(%rbp)
	movq -96(%rbp), %rax
	addq %rax, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -88(%rbp)
	jmp end482881
then482880:
	movq $0, -88(%rbp)
end482881:
	movq -88(%rbp), %rax

	addq $112, %rsp
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
	movq %rax, -48(%rbp)
	movq $6, %rdi
	movq $7, %rsi
	callq *-48(%rbp)
	movq %rax, -56(%rbp)
	movq -56(%rbp), %rax

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
