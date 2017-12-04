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
	movq %rbx, -88(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, %r12
	callq read_int
	movq %rax, %rbx
	movq %rbx, -120(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, -48(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, -96(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, %r13
	callq read_int
	movq %rax, %rbx
	movq %rbx, -128(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, -56(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, -80(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, -64(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, -112(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, %r14
	callq read_int
	movq %rax, %rbx
	movq %rbx, -72(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, %rbx
	callq read_int
	movq %rax, %rcx
	movq %rcx, -104(%rbp)
	callq read_int
	movq %rax, %rcx
	movq %rcx, %rcx
	movq %r12, %rdx
	negq %rdx
	movq -88(%rbp), %rsi
	addq %rdx, %rsi
	movq -48(%rbp), %rdx
	negq %rdx
	movq -120(%rbp), %rdi
	addq %rdx, %rdi
	movq %rsi, %rdx
	addq %rdi, %rdx
	movq %r13, %rsi
	negq %rsi
	movq -96(%rbp), %rdi
	addq %rsi, %rdi
	movq -56(%rbp), %rsi
	negq %rsi
	movq -128(%rbp), %r8
	addq %rsi, %r8
	movq %rdi, %rsi
	addq %r8, %rsi
	movq %rdx, %rdx
	addq %rsi, %rdx
	movq -64(%rbp), %rsi
	negq %rsi
	movq -80(%rbp), %rdi
	addq %rsi, %rdi
	movq %r14, %rsi
	negq %rsi
	movq -112(%rbp), %r8
	addq %rsi, %r8
	movq %rdi, %rsi
	addq %r8, %rsi
	movq %rbx, %rbx
	negq %rbx
	movq -72(%rbp), %rdi
	addq %rbx, %rdi
	movq %rcx, %rbx
	negq %rbx
	movq -104(%rbp), %rcx
	addq %rbx, %rcx
	movq %rdi, %rbx
	addq %rcx, %rbx
	movq %rsi, %rcx
	addq %rbx, %rcx
	movq %rdx, %rbx
	addq %rcx, %rbx
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
