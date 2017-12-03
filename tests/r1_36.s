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
	movq %rbx, -56(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, -64(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, -80(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, %r13
	callq read_int
	movq %rax, %rbx
	movq %rbx, -112(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, %rbx
	callq read_int
	movq %rax, %rcx
	movq %rcx, -88(%rbp)
	callq read_int
	movq %rax, %rcx
	movq %rcx, %r14
	callq read_int
	movq %rax, %rcx
	movq %rcx, -120(%rbp)
	callq read_int
	movq %rax, %rcx
	movq %rcx, -72(%rbp)
	callq read_int
	movq %rax, %rcx
	movq %rcx, -104(%rbp)
	callq read_int
	movq %rax, %rcx
	movq %rcx, -48(%rbp)
	callq read_int
	movq %rax, %rcx
	movq %rcx, -128(%rbp)
	callq read_int
	movq %rax, %rcx
	movq %rcx, %r12
	callq read_int
	movq %rax, %rcx
	movq %rcx, -96(%rbp)
	callq read_int
	movq %rax, %rcx
	movq %rcx, %rcx
	movq -64(%rbp), %rdx
	negq %rdx
	movq -56(%rbp), %rsi
	addq %rdx, %rsi
	movq %r13, %rdx
	negq %rdx
	movq -80(%rbp), %rdi
	addq %rdx, %rdi
	movq %rsi, %rdx
	addq %rdi, %rdx
	movq %rbx, %rbx
	negq %rbx
	movq -112(%rbp), %rsi
	addq %rbx, %rsi
	movq %r14, %rbx
	negq %rbx
	movq -88(%rbp), %rdi
	addq %rbx, %rdi
	movq %rsi, %rbx
	addq %rdi, %rbx
	movq %rdx, %rdx
	addq %rbx, %rdx
	movq -72(%rbp), %rbx
	negq %rbx
	movq -120(%rbp), %rsi
	addq %rbx, %rsi
	movq -48(%rbp), %rbx
	negq %rbx
	movq -104(%rbp), %rdi
	addq %rbx, %rdi
	movq %rsi, %rbx
	addq %rdi, %rbx
	movq %r12, %rsi
	negq %rsi
	movq -128(%rbp), %rdi
	addq %rsi, %rdi
	movq %rcx, %rcx
	negq %rcx
	movq -96(%rbp), %rsi
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
