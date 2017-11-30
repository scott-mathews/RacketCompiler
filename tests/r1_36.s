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
	movq %rbx, -80(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, -72(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, %r14
	callq read_int
	movq %rax, %rbx
	movq %rbx, -96(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, -64(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, -120(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, %r12
	callq read_int
	movq %rax, %rbx
	movq %rbx, -88(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, -56(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, -112(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, %r13
	callq read_int
	movq %rax, %rbx
	movq %rbx, %rbx
	callq read_int
	movq %rax, %rcx
	movq %rcx, -128(%rbp)
	callq read_int
	movq %rax, %rcx
	movq %rcx, -48(%rbp)
	callq read_int
	movq %rax, %rcx
	movq %rcx, -104(%rbp)
	callq read_int
	movq %rax, %rcx
	movq %rcx, %rcx
	movq -72(%rbp), %rdx
	negq %rdx
	movq -80(%rbp), %rsi
	addq %rdx, %rsi
	movq -96(%rbp), %rdx
	negq %rdx
	movq %r14, %rdi
	addq %rdx, %rdi
	movq %rsi, %rdx
	addq %rdi, %rdx
	movq -120(%rbp), %rsi
	negq %rsi
	movq -64(%rbp), %rdi
	addq %rsi, %rdi
	movq -88(%rbp), %rsi
	negq %rsi
	movq %r12, %r8
	addq %rsi, %r8
	movq %rdi, %rsi
	addq %r8, %rsi
	movq %rdx, %rdx
	addq %rsi, %rdx
	movq -112(%rbp), %rsi
	negq %rsi
	movq -56(%rbp), %rdi
	addq %rsi, %rdi
	movq %rbx, %rbx
	negq %rbx
	movq %r13, %rsi
	addq %rbx, %rsi
	movq %rdi, %rbx
	addq %rsi, %rbx
	movq -48(%rbp), %rsi
	negq %rsi
	movq -128(%rbp), %rdi
	addq %rsi, %rdi
	movq %rcx, %rcx
	negq %rcx
	movq -104(%rbp), %rsi
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
