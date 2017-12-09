	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $176, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	callq read_int
	movq %rax, %rbx
	movq %rbx, %rbx
	callq read_int
	movq %rax, %rcx
	movq %rcx, %r12
	callq read_int
	movq %rax, %rcx
	movq %rcx, %r13
	callq read_int
	movq %rax, %rcx
	movq %rcx, %r14
	callq read_int
	movq %rax, %rcx
	movq %rcx, -48(%rbp)
	callq read_int
	movq %rax, %rcx
	movq %rcx, -56(%rbp)
	callq read_int
	movq %rax, %rcx
	movq %rcx, -64(%rbp)
	callq read_int
	movq %rax, %rcx
	movq %rcx, -72(%rbp)
	callq read_int
	movq %rax, %rcx
	movq %rcx, -80(%rbp)
	callq read_int
	movq %rax, %rcx
	movq %rcx, -88(%rbp)
	callq read_int
	movq %rax, %rcx
	movq %rcx, -96(%rbp)
	callq read_int
	movq %rax, %rcx
	movq %rcx, -104(%rbp)
	callq read_int
	movq %rax, %rcx
	movq %rcx, -112(%rbp)
	callq read_int
	movq %rax, %rcx
	movq %rcx, -120(%rbp)
	callq read_int
	movq %rax, %rcx
	movq %rcx, -128(%rbp)
	callq read_int
	movq %rax, %rcx
	movq %rcx, %rcx
	movq %r12, %rdx
	negq %rdx
	movq %rbx, %rbx
	addq %rdx, %rbx
	movq %r14, %rdx
	negq %rdx
	movq %r13, %rsi
	addq %rdx, %rsi
	movq %rbx, %rbx
	addq %rsi, %rbx
	movq -56(%rbp), %rdx
	negq %rdx
	movq -48(%rbp), %rsi
	addq %rdx, %rsi
	movq -72(%rbp), %rdx
	negq %rdx
	movq -64(%rbp), %rdi
	addq %rdx, %rdi
	movq %rsi, %rdx
	addq %rdi, %rdx
	movq %rbx, %rbx
	addq %rdx, %rbx
	movq -88(%rbp), %rdx
	negq %rdx
	movq -80(%rbp), %rsi
	addq %rdx, %rsi
	movq -104(%rbp), %rdx
	negq %rdx
	movq -96(%rbp), %rdi
	addq %rdx, %rdi
	movq %rsi, %rdx
	addq %rdi, %rdx
	movq -120(%rbp), %rsi
	negq %rsi
	movq -112(%rbp), %rdi
	addq %rsi, %rdi
	movq %rcx, %rcx
	negq %rcx
	movq -128(%rbp), %rsi
	addq %rcx, %rsi
	movq %rdi, %rcx
	addq %rsi, %rcx
	movq %rdx, %rdx
	addq %rcx, %rdx
	movq %rbx, %rbx
	addq %rdx, %rbx
	movq %rbx, %rbx
	addq $42, %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $176, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
