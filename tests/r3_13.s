	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $48, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $128, %r15
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

	movq $4, %r12
	movq $2, %rdx
	movq $6, %rcx
	movq $1, %rsi
	movq $42, %r14
	movq free_ptr(%rip), %rax
	movq %rax, %r8
	movq %r8, %r8
	addq $24, %r8
	movq fromspace_end(%rip), %rax
	movq %rax, %r8
	movq %r8, %rax
	cmpq %rax, %r8
	sete %al
	movzbq %al, %rax
	movq %rax, %r8
	movq %r8, %rax
	cmpq $1, %rax
	je then330857
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %r8
	jmp end330858
then330857:
	movq $0, %r8
	movq %r8, %r8
end330858:
	movq %r8, %r8
	movq free_ptr(%rip), %rax
	movq %rax, -40(%r15)
	addq $24, free_ptr(%rip)
	movq -40(%r15), %r11
	movq $5, 0(%r11)
	movq -40(%r15), %r11
	movq %rsi, %rax
	movq %rax, 8(%r11)
	movq $0, %rsi
	movq -40(%r15), %r11
	movq %r14, %rax
	movq %rax, 16(%r11)
	movq $0, %rsi
	movq -40(%r15), %r14
	movq $3, %r8
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then330859
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end330860
then330859:
	movq $0, %rsi
	movq %rsi, %rsi
end330860:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %r11
	movq %r8, %rax
	movq %rax, 8(%r11)
	movq $0, %rsi
	movq -16(%r15), %rax
	movq %rax, -80(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $24, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then330861
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rsi
	jmp end330862
then330861:
	movq $0, %rsi
	movq %rsi, %rsi
end330862:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	addq $24, free_ptr(%rip)
	movq %rsi, %r11
	movq $389, 0(%r11)
	movq %rsi, %r11
	movq %r14, %rax
	movq %rax, 8(%r11)
	movq $0, %r8
	movq %rsi, %r11
	movq -80(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r8
	movq %rsi, %r8
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $24, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then330863
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rsi
	jmp end330864
then330863:
	movq $0, %rsi
	movq %rsi, %rsi
end330864:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	addq $24, free_ptr(%rip)
	movq %rsi, %r11
	movq $133, 0(%r11)
	movq %rsi, %r11
	movq %rcx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rsi, %r11
	movq %r8, %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rcx
	addq $24, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then330865
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
	jmp end330866
then330865:
	movq $0, %rcx
	movq %rcx, %rcx
end330866:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $133, 0(%r11)
	movq %rcx, %r11
	movq %rdx, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rsi, %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	movq %rdx, %rdx
	addq $24, %rdx
	movq fromspace_end(%rip), %rax
	movq %rax, %rdx
	movq %rdx, %rax
	cmpq %rax, %rdx
	sete %al
	movzbq %al, %rax
	movq %rax, %rdx
	movq %rdx, %rax
	cmpq $1, %rax
	je then330867
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rdx
	jmp end330868
then330867:
	movq $0, %rdx
	movq %rdx, %rdx
end330868:
	movq %rdx, %rdx
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $133, 0(%r11)
	movq %rdx, %r11
	movq %r12, %rax
	movq %rax, 8(%r11)
	movq $0, %rsi
	movq %rdx, %r11
	movq %rcx, %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %rdx
	movq %rdx, %r11
	movq 16(%r11), %r9
	movq %r9, %r11
	movq 16(%r11), %rbx
	movq %rbx, %r11
	movq 16(%r11), %r13
	movq %r13, %r11
	movq 8(%r11), %rdi
	movq %rdi, %r11
	movq 16(%r11), %r10
	movq %r10, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $128, %r15
	addq $48, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
