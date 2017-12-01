	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $40, %rsp
	addq $56, %r15
	movq $0, -56(%r15)
	movq $0, -48(%r15)
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then601834
	leaq function0(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then601836
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end601837
then601836:
	movq $0, %rcx
	movq %rcx, %rcx
end601837:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -56(%r15)
	movq -56(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -40(%r15)
	leaq function4(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then601838
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end601839
then601838:
	movq $0, %rcx
	movq %rcx, %rcx
end601839:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -24(%r15)
	movq -24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -32(%r15)
	movq %rbx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then601840
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end601841
then601840:
	movq $0, %rcx
	movq %rcx, %rcx
end601841:
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
	movq %rcx, %r11
	movq 8(%r11), %rbx
	movq -24(%r15), %rdi
	movq %rbx, %rsi
	movq $1, %rdx
	callq *-32(%r15)
	movq %rax, %rbx
	movq -56(%r15), %rdi
	movq %rbx, %rsi
	callq *-40(%r15)
	movq %rax, %rbx
	movq %rbx, %rbx
	jmp end601835
then601834:
	leaq function3(%rip), %rbx
	movq %rbx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then601842
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end601843
then601842:
	movq $0, %rcx
	movq %rcx, %rcx
end601843:
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
	movq %rcx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rbx
	movq %rcx, %rdi
	movq $20, %rsi
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, -16(%r15)
	movq $42, %rbx
	leaq function2(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then601844
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end601845
then601844:
	movq $0, %rcx
	movq %rcx, %rcx
end601845:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r12
	movq %rcx, %rdi
	movq $20, %rsi
	callq *%r12
	movq %rax, %rcx
	movq %rcx, -48(%r15)
	leaq function1(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then601846
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end601847
then601846:
	movq $0, %rcx
	movq %rcx, %rcx
end601847:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r12
	movq %rcx, %rdi
	movq $20, %rsi
	callq *%r12
	movq %rax, %rcx
	movq %rcx, -8(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $40, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then601848
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	movq $0, %rcx
	jmp end601849
then601848:
	movq $0, %rcx
	movq %rcx, %rcx
end601849:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $40, free_ptr(%rip)
	movq %rcx, %r11
	movq $1673, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq -8(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -48(%r15), %rax
	movq %rax, 24(%r11)
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
	movq %rcx, %rbx
end601835:
	movq %rbx, %rax

	addq $40, %rsp
	subq $56, %r15
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq

	.globl function1
function1:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $40, %rsp
	addq $48, %r15
	movq $0, -48(%r15)
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then601850
	leaq function1(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then601852
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end601853
then601852:
	movq $0, %rcx
	movq %rcx, %rcx
end601853:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -48(%r15)
	movq -48(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -8(%r15)
	leaq function4(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then601854
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end601855
then601854:
	movq $0, %rcx
	movq %rcx, %rcx
end601855:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -16(%r15)
	movq -16(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -24(%r15)
	movq %rbx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then601856
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end601857
then601856:
	movq $0, %rcx
	movq %rcx, %rcx
end601857:
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
	movq %rcx, %r11
	movq 8(%r11), %rbx
	movq -16(%r15), %rdi
	movq %rbx, %rsi
	movq $1, %rdx
	callq *-24(%r15)
	movq %rax, %rbx
	movq -48(%r15), %rdi
	movq %rbx, %rsi
	callq *-8(%r15)
	movq %rax, %rbx
	movq %rbx, %rbx
	jmp end601851
then601850:
	leaq function3(%rip), %rbx
	movq %rbx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then601858
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end601859
then601858:
	movq $0, %rcx
	movq %rcx, %rcx
end601859:
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
	movq %rcx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rbx
	movq %rcx, %rdi
	movq $20, %rsi
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, -40(%r15)
	movq $42, %rbx
	leaq function2(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then601860
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end601861
then601860:
	movq $0, %rcx
	movq %rcx, %rcx
end601861:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r12
	movq %rcx, %rdi
	movq $20, %rsi
	callq *%r12
	movq %rax, %rcx
	movq %rcx, -32(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $32, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then601862
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, %rcx
	jmp end601863
then601862:
	movq $0, %rcx
	movq %rcx, %rcx
end601863:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $32, free_ptr(%rip)
	movq %rcx, %r11
	movq $647, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq -32(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -40(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
end601851:
	movq %rbx, %rax

	addq $40, %rsp
	subq $48, %r15
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq

	.globl function2
function2:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $40, %rsp
	addq $40, %r15
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then601864
	leaq function2(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then601866
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end601867
then601866:
	movq $0, %rcx
	movq %rcx, %rcx
end601867:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -16(%r15)
	movq -16(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -24(%r15)
	leaq function4(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then601868
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end601869
then601868:
	movq $0, %rcx
	movq %rcx, %rcx
end601869:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -8(%r15)
	movq -8(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -32(%r15)
	movq %rbx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then601870
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end601871
then601870:
	movq $0, %rcx
	movq %rcx, %rcx
end601871:
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
	movq %rcx, %r11
	movq 8(%r11), %rbx
	movq -8(%r15), %rdi
	movq %rbx, %rsi
	movq $1, %rdx
	callq *-32(%r15)
	movq %rax, %rbx
	movq -16(%r15), %rdi
	movq %rbx, %rsi
	callq *-24(%r15)
	movq %rax, %rbx
	movq %rbx, %rbx
	jmp end601865
then601864:
	leaq function3(%rip), %rbx
	movq %rbx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then601872
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end601873
then601872:
	movq $0, %rcx
	movq %rcx, %rcx
end601873:
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
	movq %rcx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rbx
	movq %rcx, %rdi
	movq $20, %rsi
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, -40(%r15)
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $24, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then601874
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
	jmp end601875
then601874:
	movq $0, %rcx
	movq %rcx, %rcx
end601875:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $133, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -40(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
end601865:
	movq %rbx, %rax

	addq $40, %rsp
	subq $40, %r15
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq

	.globl function3
function3:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $40, %rsp
	addq $32, %r15
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then601876
	leaq function3(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then601878
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end601879
then601878:
	movq $0, %rcx
	movq %rcx, %rcx
end601879:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -8(%r15)
	movq -8(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -24(%r15)
	leaq function4(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then601880
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end601881
then601880:
	movq $0, %rcx
	movq %rcx, %rcx
end601881:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -32(%r15)
	movq -32(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -16(%r15)
	movq %rbx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then601882
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end601883
then601882:
	movq $0, %rcx
	movq %rcx, %rcx
end601883:
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
	movq %rcx, %r11
	movq 8(%r11), %rbx
	movq -32(%r15), %rdi
	movq %rbx, %rsi
	movq $1, %rdx
	callq *-16(%r15)
	movq %rax, %rbx
	movq -8(%r15), %rdi
	movq %rbx, %rsi
	callq *-24(%r15)
	movq %rax, %rbx
	movq %rbx, %rbx
	jmp end601877
then601876:
	movq free_ptr(%rip), %rbx
	movq %rbx, %rcx
	addq $8, %rcx
	movq fromspace_end(%rip), %rbx
	cmpq %rcx, %rbx
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then601884
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	movq $0, %rbx
	jmp end601885
then601884:
	movq $0, %rbx
	movq %rbx, %rbx
end601885:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $8, free_ptr(%rip)
	movq %rbx, %r11
	movq $1, 0(%r11)
	movq %rbx, %rbx
	movq %rbx, %rbx
end601877:
	movq %rbx, %rax

	addq $40, %rsp
	subq $32, %r15
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq

	.globl function4
function4:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $40, %rsp
	addq $0, %r15

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq %rdx, %rcx
	movq %rcx, %rcx
	negq %rcx
	movq %rbx, %rbx
	addq %rcx, %rbx
	movq %rbx, %rax

	addq $40, %rsp
	subq $0, %r15
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq

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
	addq $32, %r15
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	leaq function3(%rip), %rbx
	movq %rbx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then601886
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end601887
then601886:
	movq $0, %rcx
	movq %rcx, %rcx
end601887:
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
	movq %rcx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rbx
	movq %rcx, %rdi
	movq $20, %rsi
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, -16(%r15)
	movq $42, %rbx
	leaq function2(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then601888
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end601889
then601888:
	movq $0, %rcx
	movq %rcx, %rcx
end601889:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r12
	movq %rcx, %rdi
	movq $20, %rsi
	callq *%r12
	movq %rax, %rcx
	movq %rcx, -32(%r15)
	leaq function1(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then601890
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end601891
then601890:
	movq $0, %rcx
	movq %rcx, %rcx
end601891:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r12
	movq %rcx, %rdi
	movq $20, %rsi
	callq *%r12
	movq %rax, %rcx
	movq %rcx, -24(%r15)
	leaq function0(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then601892
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end601893
then601892:
	movq $0, %rcx
	movq %rcx, %rcx
end601893:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r12
	movq %rcx, %rdi
	movq $20, %rsi
	callq *%r12
	movq %rax, %rcx
	movq %rcx, -8(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $48, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then601894
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end601895
then601894:
	movq $0, %rcx
	movq %rcx, %rcx
end601895:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $3723, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq -8(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -24(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -32(%r15), %rax
	movq %rax, 24(%r11)
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
	movq %rcx, %r11
	movq 40(%r11), %rbx
	movq %rbx, %r11
	movq 32(%r11), %rbx
	movq %rbx, %r11
	movq 24(%r11), %rbx
	movq %rbx, %r11
	movq 16(%r11), %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $32, %r15
	addq $88, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
