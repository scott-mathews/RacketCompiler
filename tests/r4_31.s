	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $256, %rsp
	addq $56, %r15
	movq $0, -56(%r15)
	movq $0, -48(%r15)
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, %rbx
	movq %rsi, %r12
	movq %rdx, %r14
	movq $100, %rax
	cmpq %rax, %r12
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then43849
	leaq function0(%rip), %r13
	movq %r13, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rcx
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
	je then43851
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end43852
then43851:
	movq $0, %rcx
	movq %rcx, %rcx
end43852:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, %r13
	movq %r13, %r11
	movq 8(%r11), %rax
	movq %rax, -8(%r15)
	movq %r14, %r11
	movq 8(%r11), %rbx
	movq %r14, %r11
	movq 16(%r11), %r14
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
	je then43853
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
	jmp end43854
then43853:
	movq $0, %rcx
	movq %rcx, %rcx
end43854:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $389, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %r12, %rbx
	addq $1, %rbx
	movq %r13, %rdi
	movq %rbx, %rsi
	movq %rcx, %rdx
	callq *-8(%r15)
	movq %rax, %rbx
	movq %rbx, %rbx
	jmp end43850
then43849:
	movq %r14, %r11
	movq 8(%r11), %rcx
	movq %rcx, %r11
	movq 8(%r11), %rbx
	movq %r14, %r11
	movq 16(%r11), %rdx
	movq %rdx, %r11
	movq 8(%r11), %rdx
	movq %rcx, %rdi
	movq %rdx, %rsi
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, %rbx
end43850:
	movq %rbx, %rax

	addq $256, %rsp
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
	subq $0, %rsp
	addq $0, %r15

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq %rbx, %rax

	addq $0, %rsp
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
	subq $48, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $64, %r15
	movq $0, -64(%r15)
	movq $0, -56(%r15)
	movq $0, -48(%r15)
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	leaq function0(%rip), %r13
	movq %r13, %rbx
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
	je then43855
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end43856
then43855:
	movq $0, %rcx
	movq %rcx, %rcx
end43856:
	movq free_ptr(%rip), %rax
	movq %rax, %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $131, 0(%r11)
	movq %r13, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %r13, %r11
	movq 8(%r11), %r12
	leaq function1(%rip), %r14
	movq %r14, %rbx
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
	je then43857
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end43858
then43857:
	movq $0, %rcx
	movq %rcx, %rcx
end43858:
	movq free_ptr(%rip), %rax
	movq %rax, %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $131, 0(%r11)
	movq %r14, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq $42, %rbx
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
	je then43859
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end43860
then43859:
	movq $0, %rcx
	movq %rcx, %rcx
end43860:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
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
	je then43861
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
	jmp end43862
then43861:
	movq $0, %rcx
	movq %rcx, %rcx
end43862:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $389, 0(%r11)
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %r13, %rdi
	movq $0, %rsi
	movq %rcx, %rdx
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $64, %r15
	addq $48, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
