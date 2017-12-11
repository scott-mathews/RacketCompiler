	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $88, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $240, %r15
	movq $0, -240(%r15)
	movq $0, -232(%r15)
	movq $0, -224(%r15)
	movq $0, -216(%r15)
	movq $0, -208(%r15)
	movq $0, -200(%r15)
	movq $0, -192(%r15)
	movq $0, -184(%r15)
	movq $0, -176(%r15)
	movq $0, -168(%r15)
	movq $0, -160(%r15)
	movq $0, -152(%r15)
	movq $0, -144(%r15)
	movq $0, -136(%r15)
	movq $0, -128(%r15)
	movq $0, -120(%r15)
	movq $0, -112(%r15)
	movq $0, -104(%r15)
	movq $0, -96(%r15)
	movq $0, -88(%r15)
	movq $0, -80(%r15)
	movq $0, -72(%r15)
	movq $0, -64(%r15)
	movq $0, -56(%r15)
	movq $0, -48(%r15)
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	setle %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then19227
	movq $0, %rcx
	jmp end19228
then19227:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end19228:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
	movq %rbx, -8(%r15)
	movq %rbx, -16(%r15)
	movq free_ptr(%rip), %rbx
	addq $24, %rbx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rbx
	setle %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then19229
	movq $0, %rbx
	jmp end19230
then19229:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rbx
end19230:
	movq free_ptr(%rip), %rbx
	addq $24, free_ptr(%rip)
	movq %rbx, %r11
	movq $389, 0(%r11)
	movq %rbx, %r11
	movq -16(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -8(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rbx, -24(%r15)
	movq %rbx, -32(%r15)
	movq %rbx, -40(%r15)
	movq %rbx, -48(%r15)
	movq free_ptr(%rip), %rbx
	addq $40, %rbx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rbx
	setle %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then19231
	movq $0, %rbx
	jmp end19232
then19231:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	movq $0, %rbx
end19232:
	movq free_ptr(%rip), %rbx
	addq $40, free_ptr(%rip)
	movq %rbx, %r11
	movq $1929, 0(%r11)
	movq %rbx, %r11
	movq -48(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -40(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -32(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -24(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rbx, -56(%r15)
	movq %rbx, -64(%r15)
	movq %rbx, -72(%r15)
	movq %rbx, -80(%r15)
	movq %rbx, -88(%r15)
	movq %rbx, -96(%r15)
	movq %rbx, -104(%r15)
	movq %rbx, -112(%r15)
	movq free_ptr(%rip), %rbx
	addq $72, %rbx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rbx
	setle %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then19233
	movq $0, %rbx
	jmp end19234
then19233:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %rbx
end19234:
	movq free_ptr(%rip), %rbx
	addq $72, free_ptr(%rip)
	movq %rbx, %r11
	movq $32657, 0(%r11)
	movq %rbx, %r11
	movq -112(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -104(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -96(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -88(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -80(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -72(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -64(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -56(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rbx, -120(%r15)
	movq %rbx, -128(%r15)
	movq %rbx, -136(%r15)
	movq %rbx, -144(%r15)
	movq %rbx, -152(%r15)
	movq %rbx, -160(%r15)
	movq %rbx, -168(%r15)
	movq %rbx, -176(%r15)
	movq %rbx, -184(%r15)
	movq %rbx, -192(%r15)
	movq %rbx, -200(%r15)
	movq %rbx, -208(%r15)
	movq %rbx, -216(%r15)
	movq %rbx, -224(%r15)
	movq %rbx, -232(%r15)
	movq %rbx, -240(%r15)
	movq free_ptr(%rip), %rbx
	addq $136, %rbx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rbx
	setle %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then19235
	movq $0, %rbx
	jmp end19236
then19235:
	movq %r15, %rdi
	movq $136, %rsi
	callq collect
	movq $0, %rbx
end19236:
	movq free_ptr(%rip), %rbx
	addq $136, free_ptr(%rip)
	movq %rbx, %r11
	movq $8388513, 0(%r11)
	movq %rbx, %r11
	movq -240(%r15), %rax
	movq %rax, 128(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -232(%r15), %rax
	movq %rax, 120(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -224(%r15), %rax
	movq %rax, 112(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -216(%r15), %rax
	movq %rax, 104(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -208(%r15), %rax
	movq %rax, 96(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -200(%r15), %rax
	movq %rax, 88(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -192(%r15), %rax
	movq %rax, 80(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -184(%r15), %rax
	movq %rax, 72(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -176(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -168(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -160(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -152(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -144(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -136(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -128(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq -120(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq 40(%r11), %rbx
	movq %rbx, %r11
	movq 32(%r11), %rbx
	movq %rbx, %r11
	movq 24(%r11), %rbx
	movq %rbx, %r11
	movq 16(%r11), %rbx
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $240, %r15
	addq $88, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
