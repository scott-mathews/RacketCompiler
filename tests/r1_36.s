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
	movq %rbx, %r12
	callq read_int
	movq %rax, %rbx
	movq %rbx, -128(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, -48(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, -96(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, -88(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, -72(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, -112(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, %r14
	callq read_int
	movq %rax, %rbx
	movq %rbx, %rbx
	callq read_int
	movq %rax, %rcx
	movq %rcx, -64(%rbp)
	callq read_int
	movq %rax, %rcx
	movq %rcx, -104(%rbp)
	callq read_int
	movq %rax, %rcx
	movq %rcx, %r13
	callq read_int
	movq %rax, %rcx
	movq %rcx, -80(%rbp)
	callq read_int
	movq %rax, %rcx
	movq %rcx, -56(%rbp)
	callq read_int
	movq %rax, %rcx
	movq %rcx, -120(%rbp)
	callq read_int
	movq %rax, %rcx
	movq %rcx, %rcx
	movq -128(%rbp), %rdx
	negq %rdx
	movq %r12, %rsi
	addq %rdx, %rsi
	movq -96(%rbp), %rdx
	negq %rdx
	movq -48(%rbp), %rdi
	addq %rdx, %rdi
	movq %rsi, %rdx
	addq %rdi, %rdx
	movq -72(%rbp), %rsi
	negq %rsi
	movq -88(%rbp), %rdi
	addq %rsi, %rdi
	movq %r14, %rsi
	negq %rsi
	movq -112(%rbp), %r8
	addq %rsi, %r8
	movq %rdi, %rsi
	addq %r8, %rsi
	movq %rdx, %rdx
	addq %rsi, %rdx
	movq -64(%rbp), %rsi
	negq %rsi
	movq %rbx, %rbx
	addq %rsi, %rbx
	movq %r13, %rsi
	negq %rsi
	movq -104(%rbp), %rdi
	addq %rsi, %rdi
	movq %rbx, %rbx
	addq %rdi, %rbx
	movq -56(%rbp), %rsi
	negq %rsi
	movq -80(%rbp), %rdi
	addq %rsi, %rdi
	movq %rcx, %rcx
	negq %rcx
	movq -120(%rbp), %rsi
	addq %rcx, %rsi
	movq %rdi, %rcx
	addq %rsi, %rcx
	movq %rbx, %rbx
	addq %rcx, %rbx
	movq %rdx, %rcx
	addq %rbx, %rcx
	movq %rcx, %rbx
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
