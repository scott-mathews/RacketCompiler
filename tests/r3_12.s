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
	je then238801
	movq $0, %rcx
	jmp end238802
then238801:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end238802:
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
	je then238803
	movq $0, %rcx
	jmp end238804
then238803:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end238804:
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
	je then238805
	movq $0, %rcx
	jmp end238806
then238805:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end238806:
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
	je then238807
	movq $0, %rcx
	jmp end238808
then238807:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end238808:
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
	je then238809
	movq $0, %rcx
	jmp end238810
then238809:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end238810:
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
	je then238811
	movq $0, %rcx
	jmp end238812
then238811:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end238812:
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
	je then238813
	movq $0, %rcx
	jmp end238814
then238813:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end238814:
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
	je then238815
	movq $0, %rcx
	jmp end238816
then238815:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end238816:
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
	je then238817
	movq $0, %rcx
	jmp end238818
then238817:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end238818:
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
	je then238819
	movq $0, %rcx
	jmp end238820
then238819:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end238820:
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
	je then238821
	movq $0, %rcx
	jmp end238822
then238821:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end238822:
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
	je then238823
	movq $0, %rcx
	jmp end238824
then238823:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end238824:
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
	je then238825
	movq $0, %rcx
	jmp end238826
then238825:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end238826:
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
	je then238827
	movq $0, %rcx
	jmp end238828
then238827:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end238828:
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
	je then238829
	movq $0, %rcx
	jmp end238830
then238829:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end238830:
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
	je then238831
	movq $0, %rcx
	jmp end238832
then238831:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end238832:
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
	je then238833
	movq $0, %rcx
	jmp end238834
then238833:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end238834:
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
	je then238835
	movq $0, %rcx
	jmp end238836
then238835:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end238836:
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
	je then238837
	movq $0, %rcx
	jmp end238838
then238837:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end238838:
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
	je then238839
	movq $0, %rcx
	jmp end238840
then238839:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end238840:
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
	je then238841
	movq $0, %rcx
	jmp end238842
then238841:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end238842:
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
