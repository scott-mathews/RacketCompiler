	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $656, %rsp

	movq $1, %rcx
	movq $1, %rdx
	movq $1, %rsi
	movq $1, %rdi
	movq $1, %r8
	movq $1, %r9
	movq $1, %r10
	movq $1, %r11
	movq $1, %r12
	movq $1, %r13
	movq $1, %r14
	movq $1, %r15
	movq $1, -208(%rbp)
	movq $1, -224(%rbp)
	movq $1, -240(%rbp)
	movq $1, -256(%rbp)
	movq $1, -272(%rbp)
	movq $1, -288(%rbp)
	movq $1, -304(%rbp)
	movq $1, -320(%rbp)
	movq $1, -336(%rbp)
	movq $1, -352(%rbp)
	movq $1, -368(%rbp)
	movq $1, -384(%rbp)
	movq $1, -400(%rbp)
	movq $1, -416(%rbp)
	movq $1, -432(%rbp)
	movq $1, -448(%rbp)
	movq $1, -464(%rbp)
	movq $1, -480(%rbp)
	movq $1, -496(%rbp)
	movq $1, -512(%rbp)
	movq $1, -528(%rbp)
	movq $1, -544(%rbp)
	movq $1, -560(%rbp)
	movq $1, -576(%rbp)
	movq $1, -592(%rbp)
	movq $1, -608(%rbp)
	movq $1, -624(%rbp)
	movq $1, -640(%rbp)
	movq $1, %rbx
	movq %rbx, %rbx
	addq $1, %rbx
	movq %rbx, %rbx
	addq -640(%rbp), %rbx
	movq %rbx, %rbx
	addq -624(%rbp), %rbx
	movq %rbx, %rbx
	addq -608(%rbp), %rbx
	movq %rbx, %rbx
	addq -592(%rbp), %rbx
	movq %rbx, %rbx
	addq -576(%rbp), %rbx
	movq %rbx, %rbx
	addq -560(%rbp), %rbx
	movq %rbx, %rbx
	addq -544(%rbp), %rbx
	movq %rbx, %rbx
	addq -528(%rbp), %rbx
	movq %rbx, %rbx
	addq -512(%rbp), %rbx
	movq %rbx, %rbx
	addq -496(%rbp), %rbx
	movq %rbx, %rbx
	addq -480(%rbp), %rbx
	movq %rbx, %rbx
	addq -464(%rbp), %rbx
	movq %rbx, %rbx
	addq -448(%rbp), %rbx
	movq %rbx, %rbx
	addq -432(%rbp), %rbx
	movq %rbx, %rbx
	addq -416(%rbp), %rbx
	movq %rbx, %rbx
	addq -400(%rbp), %rbx
	movq %rbx, %rbx
	addq -384(%rbp), %rbx
	movq %rbx, %rbx
	addq -368(%rbp), %rbx
	movq %rbx, %rbx
	addq -352(%rbp), %rbx
	movq %rbx, %rbx
	addq -336(%rbp), %rbx
	movq %rbx, %rbx
	addq -320(%rbp), %rbx
	movq %rbx, %rbx
	addq -304(%rbp), %rbx
	movq %rbx, %rbx
	addq -288(%rbp), %rbx
	movq %rbx, %rbx
	addq -272(%rbp), %rbx
	movq %rbx, %rbx
	addq -256(%rbp), %rbx
	movq %rbx, %rbx
	addq -240(%rbp), %rbx
	movq %rbx, %rbx
	addq -224(%rbp), %rbx
	movq %rbx, %rbx
	addq -208(%rbp), %rbx
	movq %rbx, %rbx
	addq %r15, %rbx
	movq %rbx, %rbx
	addq %r14, %rbx
	movq %rbx, %rbx
	addq %r13, %rbx
	movq %rbx, %rbx
	addq %r12, %rbx
	movq %rbx, %rbx
	addq %r11, %rbx
	movq %rbx, %rbx
	addq %r10, %rbx
	movq %rbx, %rbx
	addq %r9, %rbx
	movq %rbx, %rbx
	addq %r8, %rbx
	movq %rbx, %rbx
	addq %rdi, %rbx
	movq %rbx, %rbx
	addq %rsi, %rbx
	movq %rbx, %rbx
	addq %rdx, %rbx
	movq %rbx, %rbx
	addq %rcx, %rbx
	movq %rbx, %rax

	movq %rax, %rcx
	callq print_int
	addq $656, %rsp
	movq $0, %rax
	popq %rbp
	retq