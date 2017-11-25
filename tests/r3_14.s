	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $144, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $280, %r15
	movq $0, -280(%r15)
	movq $0, -272(%r15)
	movq $0, -264(%r15)
	movq $0, -256(%r15)
	movq $0, -248(%r15)
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

	movq $20, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then39824
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end39825
then39824:
	movq $0, %rcx
	movq %rcx, %rcx
end39825:
	movq free_ptr(%rip), %rax
	movq %rax, -256(%r15)
	addq $16, free_ptr(%rip)
	movq -256(%r15), %r11
	movq $3, 0(%r11)
	movq -256(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -256(%r15), %rax
	movq %rax, -192(%r15)
	movq $1, -104(%rbp)
	movq $2, %r14
	movq $3, %r12
	movq $4, %rbx
	movq $5, %r13
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then39826
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end39827
then39826:
	movq $0, %rcx
	movq %rcx, %rcx
end39827:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %r11
	movq -104(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r13, %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq %rcx, %r12
	movq $2, %r13
	movq $3, %rbx
	movq $4, -96(%rbp)
	movq $5, %r14
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then39828
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end39829
then39828:
	movq $0, %rcx
	movq %rcx, %rcx
end39829:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $2059, 0(%r11)
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -96(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq $1, -88(%rbp)
	movq %rcx, %r12
	movq $3, %r14
	movq $4, %r13
	movq $5, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then39830
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end39831
then39830:
	movq $0, %rcx
	movq %rcx, %rcx
end39831:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $1035, 0(%r11)
	movq %rcx, %r11
	movq -88(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq $1, %r12
	movq $2, %r14
	movq %rcx, -208(%r15)
	movq $4, %r13
	movq $5, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then39832
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end39833
then39832:
	movq $0, %rcx
	movq %rcx, %rcx
end39833:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $523, 0(%r11)
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -208(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq $1, %r14
	movq $2, %r12
	movq $3, %r13
	movq %rcx, %rbx
	movq $5, -120(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then39834
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end39835
then39834:
	movq $0, %rcx
	movq %rcx, %rcx
end39835:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $267, 0(%r11)
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -120(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq $1, %r14
	movq $2, %r13
	movq $3, %rbx
	movq $4, %r12
	movq %rcx, -40(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then39836
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end39837
then39836:
	movq $0, %rcx
	movq %rcx, %rcx
end39837:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $139, 0(%r11)
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -40(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq $1, -72(%rbp)
	movq $2, %rbx
	movq $3, %r14
	movq $4, %r12
	movq $5, %r13
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then39838
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end39839
then39838:
	movq $0, %rcx
	movq %rcx, %rcx
end39839:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %r11
	movq -72(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r13, %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq $1, -64(%rbp)
	movq $2, %rbx
	movq $3, %r13
	movq $4, %r12
	movq $5, %r14
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then39840
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end39841
then39840:
	movq $0, %rcx
	movq %rcx, %rcx
end39841:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %r11
	movq -64(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r13, %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq $1, %rbx
	movq $2, %r12
	movq $3, %r14
	movq $4, -56(%rbp)
	movq $5, %r13
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then39842
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end39843
then39842:
	movq $0, %rcx
	movq %rcx, %rcx
end39843:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -56(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r13, %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq $1, %r14
	movq $2, %r13
	movq $3, -48(%rbp)
	movq $4, %rbx
	movq $5, %r12
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then39844
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end39845
then39844:
	movq $0, %rcx
	movq %rcx, %rcx
end39845:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -48(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq $1, %rbx
	movq $2, %r13
	movq $3, %r12
	movq $4, %r14
	movq $5, -128(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then39846
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end39847
then39846:
	movq $0, %rcx
	movq %rcx, %rcx
end39847:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r13, %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -128(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq $1, %r13
	movq $2, %rbx
	movq $3, %r14
	movq $4, %r12
	movq $5, -112(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then39848
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end39849
then39848:
	movq $0, %rcx
	movq %rcx, %rcx
end39849:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %r11
	movq %r13, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -112(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq $1, -136(%rbp)
	movq $2, %r14
	movq $3, %rbx
	movq $4, %r13
	movq $5, %r12
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then39850
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end39851
then39850:
	movq $0, %rcx
	movq %rcx, %rcx
end39851:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %r11
	movq -136(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r13, %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq $1, %r13
	movq $2, %rbx
	movq $3, -80(%rbp)
	movq $4, %r12
	movq $5, %r14
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then39852
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end39853
then39852:
	movq $0, %rcx
	movq %rcx, %rcx
end39853:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %r11
	movq %r13, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -80(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq -192(%r15), %r11
	movq 8(%r11), %rbx
	addq $22, %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $280, %r15
	addq $144, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
