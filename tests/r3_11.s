	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $208, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $160, %r15
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

	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then108839
	movq $0, %rcx
	jmp end108840
then108839:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end108840:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -8(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then108841
	movq $0, %rcx
	jmp end108842
then108841:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end108842:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -16(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then108843
	movq $0, %rcx
	jmp end108844
then108843:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end108844:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -24(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then108845
	movq $0, %rcx
	jmp end108846
then108845:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end108846:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -32(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then108847
	movq $0, %rcx
	jmp end108848
then108847:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end108848:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -40(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then108849
	movq $0, %rcx
	jmp end108850
then108849:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end108850:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -48(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then108851
	movq $0, %rcx
	jmp end108852
then108851:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end108852:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -56(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then108853
	movq $0, %rcx
	jmp end108854
then108853:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end108854:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -64(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then108855
	movq $0, %rcx
	jmp end108856
then108855:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end108856:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -72(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then108857
	movq $0, %rcx
	jmp end108858
then108857:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end108858:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -80(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then108859
	movq $0, %rcx
	jmp end108860
then108859:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end108860:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -88(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then108861
	movq $0, %rcx
	jmp end108862
then108861:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end108862:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -96(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then108863
	movq $0, %rcx
	jmp end108864
then108863:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end108864:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -104(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then108865
	movq $0, %rcx
	jmp end108866
then108865:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end108866:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -112(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then108867
	movq $0, %rcx
	jmp end108868
then108867:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end108868:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -120(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then108869
	movq $0, %rcx
	jmp end108870
then108869:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end108870:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -128(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then108871
	movq $0, %rcx
	jmp end108872
then108871:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end108872:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -136(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then108873
	movq $0, %rcx
	jmp end108874
then108873:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end108874:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -144(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then108875
	movq $0, %rcx
	jmp end108876
then108875:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end108876:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -152(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then108877
	movq $0, %rcx
	jmp end108878
then108877:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end108878:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -160(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then108879
	movq $0, %rcx
	jmp end108880
then108879:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end108880:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
	movq -8(%r15), %r11
	movq 8(%r11), %rcx
	movq -16(%r15), %r11
	movq 8(%r11), %rdx
	movq -24(%r15), %r11
	movq 8(%r11), %rsi
	movq -32(%r15), %r11
	movq 8(%r11), %rdi
	movq -40(%r15), %r11
	movq 8(%r11), %r8
	movq -48(%r15), %r11
	movq 8(%r11), %r9
	movq -56(%r15), %r11
	movq 8(%r11), %r10
	movq -64(%r15), %r11
	movq 8(%r11), %r12
	movq -72(%r15), %r11
	movq 8(%r11), %r13
	movq -80(%r15), %r11
	movq 8(%r11), %r14
	movq -88(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -48(%rbp)
	movq -96(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -64(%rbp)
	movq -104(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -72(%rbp)
	movq -112(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -88(%rbp)
	movq -120(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -96(%rbp)
	movq -128(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -112(%rbp)
	movq -136(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -120(%rbp)
	movq -144(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -136(%rbp)
	movq -152(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -144(%rbp)
	movq -160(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -160(%rbp)
	movq %rbx, %r11
	movq 8(%r11), %rbx
	addq $21, %rbx
	movq -160(%rbp), %rax
	movq %rax, -152(%rbp)
	addq %rbx, -152(%rbp)
	movq -144(%rbp), %rbx
	addq -152(%rbp), %rbx
	movq -136(%rbp), %rax
	movq %rax, -128(%rbp)
	addq %rbx, -128(%rbp)
	movq -120(%rbp), %rbx
	addq -128(%rbp), %rbx
	movq -112(%rbp), %rax
	movq %rax, -104(%rbp)
	addq %rbx, -104(%rbp)
	movq -96(%rbp), %rbx
	addq -104(%rbp), %rbx
	movq -88(%rbp), %rax
	movq %rax, -80(%rbp)
	addq %rbx, -80(%rbp)
	movq -72(%rbp), %rbx
	addq -80(%rbp), %rbx
	movq -64(%rbp), %rax
	movq %rax, -56(%rbp)
	addq %rbx, -56(%rbp)
	movq -48(%rbp), %rbx
	addq -56(%rbp), %rbx
	addq %rbx, %r14
	movq %r13, %rbx
	addq %r14, %rbx
	addq %rbx, %r12
	movq %r10, %rbx
	addq %r12, %rbx
	addq %rbx, %r9
	movq %r8, %rbx
	addq %r9, %rbx
	addq %rbx, %rdi
	movq %rsi, %rbx
	addq %rdi, %rbx
	addq %rbx, %rdx
	movq %rcx, %rbx
	addq %rdx, %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $160, %r15
	addq $208, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
