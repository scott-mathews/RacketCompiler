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
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then230735
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end230736
then230735:
	movq $0, %rcx
	movq %rcx, %rcx
end230736:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -64(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then230737
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end230738
then230737:
	movq $0, %rcx
	movq %rcx, %rcx
end230738:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -128(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then230739
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end230740
then230739:
	movq $0, %rcx
	movq %rcx, %rcx
end230740:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -160(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then230741
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end230742
then230741:
	movq $0, %rcx
	movq %rcx, %rcx
end230742:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -112(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then230743
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end230744
then230743:
	movq $0, %rcx
	movq %rcx, %rcx
end230744:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -48(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then230745
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end230746
then230745:
	movq $0, %rcx
	movq %rcx, %rcx
end230746:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -120(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then230747
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end230748
then230747:
	movq $0, %rcx
	movq %rcx, %rcx
end230748:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -24(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then230749
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end230750
then230749:
	movq $0, %rcx
	movq %rcx, %rcx
end230750:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -104(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then230751
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end230752
then230751:
	movq $0, %rcx
	movq %rcx, %rcx
end230752:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -40(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then230753
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end230754
then230753:
	movq $0, %rcx
	movq %rcx, %rcx
end230754:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -16(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then230755
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end230756
then230755:
	movq $0, %rcx
	movq %rcx, %rcx
end230756:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -136(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then230757
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end230758
then230757:
	movq $0, %rcx
	movq %rcx, %rcx
end230758:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -56(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then230759
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end230760
then230759:
	movq $0, %rcx
	movq %rcx, %rcx
end230760:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -32(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then230761
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end230762
then230761:
	movq $0, %rcx
	movq %rcx, %rcx
end230762:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -72(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then230763
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end230764
then230763:
	movq $0, %rcx
	movq %rcx, %rcx
end230764:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -96(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then230765
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end230766
then230765:
	movq $0, %rcx
	movq %rcx, %rcx
end230766:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -88(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then230767
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end230768
then230767:
	movq $0, %rcx
	movq %rcx, %rcx
end230768:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -80(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then230769
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end230770
then230769:
	movq $0, %rcx
	movq %rcx, %rcx
end230770:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -144(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then230771
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end230772
then230771:
	movq $0, %rcx
	movq %rcx, %rcx
end230772:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -152(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then230773
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end230774
then230773:
	movq $0, %rcx
	movq %rcx, %rcx
end230774:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -8(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then230775
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end230776
then230775:
	movq $0, %rcx
	movq %rcx, %rcx
end230776:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	movq -64(%r15), %r11
	movq 8(%r11), %rcx
	movq -128(%r15), %r11
	movq 8(%r11), %rdx
	movq -160(%r15), %r11
	movq 8(%r11), %rsi
	movq -112(%r15), %r11
	movq 8(%r11), %rdi
	movq -48(%r15), %r11
	movq 8(%r11), %r8
	movq -120(%r15), %r11
	movq 8(%r11), %r9
	movq -24(%r15), %r11
	movq 8(%r11), %r10
	movq -104(%r15), %r11
	movq 8(%r11), %r12
	movq -40(%r15), %r11
	movq 8(%r11), %r13
	movq -16(%r15), %r11
	movq 8(%r11), %r14
	movq -136(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -104(%rbp)
	movq -56(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -56(%rbp)
	movq -32(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -96(%rbp)
	movq -72(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -48(%rbp)
	movq -96(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -88(%rbp)
	movq -88(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -64(%rbp)
	movq -80(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -160(%rbp)
	movq -144(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -120(%rbp)
	movq -152(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -152(%rbp)
	movq -8(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -112(%rbp)
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %rbx
	addq $21, %rbx
	movq -112(%rbp), %rax
	movq %rax, -72(%rbp)
	addq %rbx, -72(%rbp)
	movq -152(%rbp), %rbx
	addq -72(%rbp), %rbx
	movq -120(%rbp), %rax
	movq %rax, -80(%rbp)
	addq %rbx, -80(%rbp)
	movq -160(%rbp), %rbx
	addq -80(%rbp), %rbx
	movq -64(%rbp), %rax
	movq %rax, -144(%rbp)
	addq %rbx, -144(%rbp)
	movq -88(%rbp), %rbx
	addq -144(%rbp), %rbx
	movq -48(%rbp), %rax
	movq %rax, -128(%rbp)
	addq %rbx, -128(%rbp)
	movq -96(%rbp), %rbx
	addq -128(%rbp), %rbx
	movq -56(%rbp), %rax
	movq %rax, -136(%rbp)
	addq %rbx, -136(%rbp)
	movq -104(%rbp), %rbx
	addq -136(%rbp), %rbx
	movq %r14, %r14
	addq %rbx, %r14
	movq %r13, %rbx
	addq %r14, %rbx
	movq %r12, %r12
	addq %rbx, %r12
	movq %r10, %rbx
	addq %r12, %rbx
	movq %r9, %r9
	addq %rbx, %r9
	movq %r8, %rbx
	addq %r9, %rbx
	movq %rdi, %rdi
	addq %rbx, %rdi
	movq %rsi, %rbx
	addq %rdi, %rbx
	movq %rdx, %rdx
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
