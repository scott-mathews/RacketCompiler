	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $448, %rsp
	movq $16384, %rcx 
	movq $16, %rdx 
	callq initialize 
	movq rootstack_begin(%rip), %r15 
	movq $0, (%r15) 
	addq $0, %r15

	callq read_int
	movq %rax, -240(%rbp)
	callq read_int
	movq %rax, -56(%rbp)
	callq read_int
	movq %rax, -128(%rbp)
	callq read_int
	movq %rax, -184(%rbp)
	callq read_int
	movq %rax, -152(%rbp)
	callq read_int
	movq %rax, -368(%rbp)
	callq read_int
	movq %rax, -264(%rbp)
	callq read_int
	movq %rax, -360(%rbp)
	callq read_int
	movq %rax, -336(%rbp)
	callq read_int
	movq %rax, -176(%rbp)
	callq read_int
	movq %rax, -344(%rbp)
	callq read_int
	movq %rax, -32(%rbp)
	callq read_int
	movq %rax, -144(%rbp)
	callq read_int
	movq %rax, -104(%rbp)
	callq read_int
	movq %rax, -160(%rbp)
	callq read_int
	movq %rax, -16(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -64(%rbp)
	negq -64(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -440(%rbp)
	movq -64(%rbp), %rax
	addq %rax, -440(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -24(%rbp)
	negq -24(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -352(%rbp)
	movq -24(%rbp), %rax
	addq %rax, -352(%rbp)
	movq -440(%rbp), %rax
	movq %rax, -400(%rbp)
	movq -352(%rbp), %rax
	addq %rax, -400(%rbp)
	movq -368(%rbp), %rax
	movq %rax, -80(%rbp)
	negq -80(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -168(%rbp)
	movq -80(%rbp), %rax
	addq %rax, -168(%rbp)
	movq -360(%rbp), %rax
	movq %rax, -96(%rbp)
	negq -96(%rbp)
	movq -264(%rbp), %rax
	movq %rax, -328(%rbp)
	movq -96(%rbp), %rax
	addq %rax, -328(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -288(%rbp)
	movq -328(%rbp), %rax
	addq %rax, -288(%rbp)
	movq -400(%rbp), %rax
	movq %rax, -72(%rbp)
	movq -288(%rbp), %rax
	addq %rax, -72(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -208(%rbp)
	negq -208(%rbp)
	movq -336(%rbp), %rax
	movq %rax, -384(%rbp)
	movq -208(%rbp), %rax
	addq %rax, -384(%rbp)
	movq -32(%rbp), %rax
	movq %rax, -8(%rbp)
	negq -8(%rbp)
	movq -344(%rbp), %rax
	movq %rax, -192(%rbp)
	movq -8(%rbp), %rax
	addq %rax, -192(%rbp)
	movq -384(%rbp), %rax
	movq %rax, -304(%rbp)
	movq -192(%rbp), %rax
	addq %rax, -304(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -40(%rbp)
	negq -40(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -392(%rbp)
	movq -40(%rbp), %rax
	addq %rax, -392(%rbp)
	movq -16(%rbp), %rax
	movq %rax, -48(%rbp)
	negq -48(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -416(%rbp)
	movq -48(%rbp), %rax
	addq %rax, -416(%rbp)
	movq -392(%rbp), %rax
	movq %rax, -272(%rbp)
	movq -416(%rbp), %rax
	addq %rax, -272(%rbp)
	movq -304(%rbp), %rax
	movq %rax, -120(%rbp)
	movq -272(%rbp), %rax
	addq %rax, -120(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -112(%rbp)
	movq -120(%rbp), %rax
	addq %rax, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -280(%rbp)
	addq $42, -280(%rbp)
	movq -280(%rbp), %rax

	movq %rax, %rcx
	callq print_int
	subq $0, %r15
	addq $448, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
