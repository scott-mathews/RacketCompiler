	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $56, %rsp
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
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then113791
	leaq function3(%rip), %rbx
	movq free_ptr(%rip), %r12
	movq %r12, %r12
	addq $16, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then113793
	movq $0, %r12
	jmp end113794
then113793:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r12
end113794:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $16, free_ptr(%rip)
	movq %r12, %r11
	movq $3, 0(%r11)
	movq %r12, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %r12, %rbx
	movq %rbx, %r11
	movq 8(%r11), %r12
	movq %rbx, %rdi
	movq $20, %rsi
	callq *%r12
	movq %rax, %rbx
	movq %rbx, -8(%r15)
	movq $42, %rbx
	leaq function2(%rip), %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then113795
	movq $0, %r13
	jmp end113796
then113795:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end113796:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, %r12
	movq %r12, %r11
	movq 8(%r11), %r13
	movq %r12, %rdi
	movq $20, %rsi
	callq *%r13
	movq %rax, %r12
	movq %r12, -16(%r15)
	leaq function1(%rip), %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then113797
	movq $0, %r13
	jmp end113798
then113797:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end113798:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, %r12
	movq %r12, %r11
	movq 8(%r11), %r13
	movq %r12, %rdi
	movq $20, %rsi
	callq *%r13
	movq %rax, %rcx
	movq %rcx, -24(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $40, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then113799
	movq $0, %rcx
	jmp end113800
then113799:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	movq $0, %rcx
end113800:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $40, free_ptr(%rip)
	movq %rcx, %r11
	movq $1673, 0(%r11)
	movq %rcx, %r11
	movq -24(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -16(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -8(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
	jmp end113792
then113791:
	leaq function0(%rip), %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then113801
	movq $0, %r13
	jmp end113802
then113801:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end113802:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -32(%r15)
	movq -32(%r15), %r11
	movq 8(%r11), %r12
	leaq function4(%rip), %r13
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -48(%rbp)
	cmpq %r14, -48(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then113803
	movq $0, %r14
	jmp end113804
then113803:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end113804:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %r13, 8(%r11)
	movq $0, %r13
	movq %r14, -40(%r15)
	movq -40(%r15), %r11
	movq 8(%r11), %r13
	movq %rbx, %rbx
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -56(%rbp)
	cmpq %r14, -56(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then113805
	movq $0, %r14
	jmp end113806
then113805:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end113806:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %r14, %r11
	movq 8(%r11), %rbx
	movq -40(%r15), %rdi
	movq %rbx, %rsi
	movq $1, %rdx
	callq *%r13
	movq %rax, %rbx
	movq -32(%r15), %rdi
	movq %rbx, %rsi
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rbx
end113792:
	movq %rbx, %rax

	addq $56, %rsp
	subq $40, %r15
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
	subq $56, %rsp
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
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then113807
	leaq function3(%rip), %rbx
	movq free_ptr(%rip), %r12
	movq %r12, %r12
	addq $16, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then113809
	movq $0, %r12
	jmp end113810
then113809:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r12
end113810:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $16, free_ptr(%rip)
	movq %r12, %r11
	movq $3, 0(%r11)
	movq %r12, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %r12, %rbx
	movq %rbx, %r11
	movq 8(%r11), %r12
	movq %rbx, %rdi
	movq $20, %rsi
	callq *%r12
	movq %rax, %rbx
	movq %rbx, -8(%r15)
	movq $42, %rbx
	leaq function2(%rip), %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then113811
	movq $0, %r13
	jmp end113812
then113811:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end113812:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, %r12
	movq %r12, %r11
	movq 8(%r11), %r13
	movq %r12, %rdi
	movq $20, %rsi
	callq *%r13
	movq %rax, %rcx
	movq %rcx, -16(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $32, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then113813
	movq $0, %rcx
	jmp end113814
then113813:
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, %rcx
end113814:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $32, free_ptr(%rip)
	movq %rcx, %r11
	movq $647, 0(%r11)
	movq %rcx, %r11
	movq -16(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -8(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
	jmp end113808
then113807:
	leaq function1(%rip), %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then113815
	movq $0, %r13
	jmp end113816
then113815:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end113816:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -24(%r15)
	movq -24(%r15), %r11
	movq 8(%r11), %r12
	leaq function4(%rip), %r13
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -48(%rbp)
	cmpq %r14, -48(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then113817
	movq $0, %r14
	jmp end113818
then113817:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end113818:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %r13, 8(%r11)
	movq $0, %r13
	movq %r14, -32(%r15)
	movq -32(%r15), %r11
	movq 8(%r11), %r13
	movq %rbx, %rbx
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -56(%rbp)
	cmpq %r14, -56(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then113819
	movq $0, %r14
	jmp end113820
then113819:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end113820:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %r14, %r11
	movq 8(%r11), %rbx
	movq -32(%r15), %rdi
	movq %rbx, %rsi
	movq $1, %rdx
	callq *%r13
	movq %rax, %rbx
	movq -24(%r15), %rdi
	movq %rbx, %rsi
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rbx
end113808:
	movq %rbx, %rax

	addq $56, %rsp
	subq $32, %r15
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
	subq $56, %rsp
	addq $24, %r15
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then113821
	leaq function3(%rip), %rbx
	movq free_ptr(%rip), %r12
	movq %r12, %r12
	addq $16, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then113823
	movq $0, %r12
	jmp end113824
then113823:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r12
end113824:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $16, free_ptr(%rip)
	movq %r12, %r11
	movq $3, 0(%r11)
	movq %r12, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %r12, %rbx
	movq %rbx, %r11
	movq 8(%r11), %r12
	movq %rbx, %rdi
	movq $20, %rsi
	callq *%r12
	movq %rax, %rbx
	movq %rbx, -8(%r15)
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $24, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then113825
	movq $0, %rcx
	jmp end113826
then113825:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
end113826:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $133, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -8(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
	jmp end113822
then113821:
	leaq function2(%rip), %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then113827
	movq $0, %r13
	jmp end113828
then113827:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end113828:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -16(%r15)
	movq -16(%r15), %r11
	movq 8(%r11), %r12
	leaq function4(%rip), %r13
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -48(%rbp)
	cmpq %r14, -48(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then113829
	movq $0, %r14
	jmp end113830
then113829:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end113830:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %r13, 8(%r11)
	movq $0, %r13
	movq %r14, -24(%r15)
	movq -24(%r15), %r11
	movq 8(%r11), %r13
	movq %rbx, %rbx
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -56(%rbp)
	cmpq %r14, -56(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then113831
	movq $0, %r14
	jmp end113832
then113831:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end113832:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %r14, %r11
	movq 8(%r11), %rbx
	movq -24(%r15), %rdi
	movq %rbx, %rsi
	movq $1, %rdx
	callq *%r13
	movq %rax, %rbx
	movq -16(%r15), %rdi
	movq %rbx, %rsi
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rbx
end113822:
	movq %rbx, %rax

	addq $56, %rsp
	subq $24, %r15
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
	subq $56, %rsp
	addq $16, %r15
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then113833
	movq free_ptr(%rip), %rbx
	movq %rbx, %rbx
	addq $8, %rbx
	movq fromspace_end(%rip), %rcx
	cmpq %rbx, %rcx
	sete %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then113835
	movq $0, %rbx
	jmp end113836
then113835:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	movq $0, %rbx
end113836:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $8, free_ptr(%rip)
	movq %rbx, %r11
	movq $1, 0(%r11)
	movq %rbx, %rbx
	jmp end113834
then113833:
	leaq function3(%rip), %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then113837
	movq $0, %r13
	jmp end113838
then113837:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end113838:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -8(%r15)
	movq -8(%r15), %r11
	movq 8(%r11), %r12
	leaq function4(%rip), %r13
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -48(%rbp)
	cmpq %r14, -48(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then113839
	movq $0, %r14
	jmp end113840
then113839:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end113840:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %r13, 8(%r11)
	movq $0, %r13
	movq %r14, -16(%r15)
	movq -16(%r15), %r11
	movq 8(%r11), %r13
	movq %rbx, %rbx
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -56(%rbp)
	cmpq %r14, -56(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then113841
	movq $0, %r14
	jmp end113842
then113841:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end113842:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %r14, %r11
	movq 8(%r11), %rbx
	movq -16(%r15), %rdi
	movq %rbx, %rsi
	movq $1, %rdx
	callq *%r13
	movq %rax, %rbx
	movq -8(%r15), %rdi
	movq %rbx, %rsi
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rbx
end113834:
	movq %rbx, %rax

	addq $56, %rsp
	subq $16, %r15
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
	movq free_ptr(%rip), %r12
	addq $16, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then113843
	movq $0, %r12
	jmp end113844
then113843:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r12
end113844:
	movq free_ptr(%rip), %r12
	addq $16, free_ptr(%rip)
	movq %r12, %r11
	movq $3, 0(%r11)
	movq %r12, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %r12, %rbx
	movq %rbx, %r11
	movq 8(%r11), %r12
	movq %rbx, %rdi
	movq $20, %rsi
	callq *%r12
	movq %rax, %rbx
	movq %rbx, -8(%r15)
	movq $42, %rbx
	leaq function2(%rip), %r12
	movq free_ptr(%rip), %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then113845
	movq $0, %r13
	jmp end113846
then113845:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end113846:
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, %r12
	movq %r12, %r11
	movq 8(%r11), %r13
	movq %r12, %rdi
	movq $20, %rsi
	callq *%r13
	movq %rax, %r12
	movq %r12, -16(%r15)
	leaq function1(%rip), %r12
	movq free_ptr(%rip), %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then113847
	movq $0, %r13
	jmp end113848
then113847:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end113848:
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, %r12
	movq %r12, %r11
	movq 8(%r11), %r13
	movq %r12, %rdi
	movq $20, %rsi
	callq *%r13
	movq %rax, %r12
	movq %r12, -24(%r15)
	leaq function0(%rip), %r12
	movq free_ptr(%rip), %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then113849
	movq $0, %r13
	jmp end113850
then113849:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end113850:
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, %r12
	movq %r12, %r11
	movq 8(%r11), %r13
	movq %r12, %rdi
	movq $20, %rsi
	callq *%r13
	movq %rax, %rcx
	movq %rcx, -32(%r15)
	movq free_ptr(%rip), %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then113851
	movq $0, %rcx
	jmp end113852
then113851:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
end113852:
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $3723, 0(%r11)
	movq %rcx, %r11
	movq -32(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -24(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -16(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -8(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
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
