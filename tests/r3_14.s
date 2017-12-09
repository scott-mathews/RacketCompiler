	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $160, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $48, %r15
	movq $0, -48(%r15)
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq $20, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then33816
	movq $0, %rcx
	jmp end33817
then33816:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end33817:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -8(%r15)
	movq $1, %rbx
	movq $2, %r12
	movq $3, %r13
	movq $4, %r14
	movq $5, -48(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then33818
	movq $0, %rcx
	jmp end33819
then33818:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
end33819:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %r11
	movq -48(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r14, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	movq %rbx, -16(%r15)
	movq $2, %rbx
	movq $3, %r12
	movq $4, %r13
	movq $5, %r14
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then33820
	movq $0, %rcx
	jmp end33821
then33820:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
end33821:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $139, 0(%r11)
	movq %rcx, %r11
	movq %r14, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rcx
	movq $1, %rbx
	movq %rcx, -24(%r15)
	movq $3, %r12
	movq $4, %r13
	movq $5, %r14
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then33822
	movq $0, %rcx
	jmp end33823
then33822:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
end33823:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $267, 0(%r11)
	movq %rcx, %r11
	movq %r14, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -24(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rcx
	movq $1, %rbx
	movq $2, %r12
	movq %rcx, -32(%r15)
	movq $4, %r13
	movq $5, %r14
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then33824
	movq $0, %rcx
	jmp end33825
then33824:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
end33825:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $523, 0(%r11)
	movq %rcx, %r11
	movq %r14, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -32(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rcx
	movq $1, %rbx
	movq $2, %r12
	movq $3, %r13
	movq %rcx, -40(%r15)
	movq $5, %r14
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then33826
	movq $0, %rcx
	jmp end33827
then33826:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
end33827:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $1035, 0(%r11)
	movq %rcx, %r11
	movq %r14, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -40(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rcx
	movq $1, %rbx
	movq $2, %r12
	movq $3, %r13
	movq $4, %r14
	movq %rcx, -48(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then33828
	movq $0, %rcx
	jmp end33829
then33828:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
end33829:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $2059, 0(%r11)
	movq %rcx, %r11
	movq -48(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r14, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	movq $1, %rbx
	movq $2, %r12
	movq $3, %r13
	movq $4, %r14
	movq $5, -56(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then33830
	movq $0, %rcx
	jmp end33831
then33830:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
end33831:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %r11
	movq -56(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r14, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	movq $1, %rbx
	movq $2, %r12
	movq $3, %r13
	movq $4, %r14
	movq $5, -64(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then33832
	movq $0, %rcx
	jmp end33833
then33832:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
end33833:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %r11
	movq -64(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r14, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	movq $1, %rbx
	movq $2, %r12
	movq $3, %r13
	movq $4, %r14
	movq $5, -72(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then33834
	movq $0, %rcx
	jmp end33835
then33834:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
end33835:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %r11
	movq -72(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r14, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	movq $1, %rbx
	movq $2, %r12
	movq $3, %r13
	movq $4, %r14
	movq $5, -80(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then33836
	movq $0, %rcx
	jmp end33837
then33836:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
end33837:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %r11
	movq -80(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r14, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	movq $1, %rbx
	movq $2, %r12
	movq $3, %r13
	movq $4, %r14
	movq $5, -88(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then33838
	movq $0, %rcx
	jmp end33839
then33838:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
end33839:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %r11
	movq -88(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r14, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	movq $1, %rbx
	movq $2, %r12
	movq $3, %r13
	movq $4, %r14
	movq $5, -96(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then33840
	movq $0, %rcx
	jmp end33841
then33840:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
end33841:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %r11
	movq -96(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r14, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	movq $1, %rbx
	movq $2, %r12
	movq $3, %r13
	movq $4, %r14
	movq $5, -104(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then33842
	movq $0, %rcx
	jmp end33843
then33842:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
end33843:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %r11
	movq -104(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r14, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	movq $1, %rbx
	movq $2, %r12
	movq $3, %r13
	movq $4, %r14
	movq $5, -112(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then33844
	movq $0, %rcx
	jmp end33845
then33844:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
end33845:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %r11
	movq -112(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r14, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	movq -8(%r15), %r11
	movq 8(%r11), %rbx
	movq %rbx, %rbx
	addq $22, %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $48, %r15
	addq $160, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
