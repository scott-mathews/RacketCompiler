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
	addq $40, %r15
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq $0, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then35829
	movq $0, %rcx
	jmp end35830
then35829:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end35830:
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
	movq $1, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then35831
	movq $0, %rcx
	jmp end35832
then35831:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end35832:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r13, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -24(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $32, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then35833
	movq $0, %rcx
	jmp end35834
then35833:
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, %rcx
end35834:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $32, free_ptr(%rip)
	movq %rcx, %r11
	movq $519, 0(%r11)
	movq %rcx, %r11
	movq -24(%r15), %rax
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
	movq %rcx, -16(%r15)
	movq -8(%r15), %rax
	movq %rax, -40(%r15)
	movq free_ptr(%rip), %rbx
	movq %rbx, %rbx
	addq $16, %rbx
	movq fromspace_end(%rip), %rcx
	cmpq %rbx, %rcx
	sete %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then35835
	movq $0, %rbx
	jmp end35836
then35835:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end35836:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $131, 0(%r11)
	movq %rbx, %r11
	movq -40(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rcx, %rcx
	movq %rbx, -32(%r15)
	movq free_ptr(%rip), %rbx
	movq %rbx, %rbx
	addq $24, %rbx
	movq fromspace_end(%rip), %rcx
	cmpq %rbx, %rcx
	sete %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then35837
	movq $0, %rbx
	jmp end35838
then35837:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rbx
end35838:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $24, free_ptr(%rip)
	movq %rbx, %r11
	movq $389, 0(%r11)
	movq %rbx, %r11
	movq -32(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rcx, %rcx
	movq %rbx, %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rcx, %rcx
	movq %rbx, %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %r12
	callq	print_vecbegin
	movq	8(%r12), %rax
	movq	%rax, %r13
	callq	print_vecbegin
	movq	8(%r13), %rax
	movq	%rax, %rdi
	callq	print_int
	callq	print_space
	movq	16(%r13), %rax
	movq	%rax, %rdi
	callq	print_int
	callq	print_space
	movq	24(%r13), %rax
	movq	%rax, %r14
	callq	print_vecbegin
	movq	8(%r14), %rax
	movq	%rax, %rdi
	callq	print_bool
	callq	print_vecend
	callq	print_vecend
	callq	print_space
	movq	16(%r12), %rax
	movq	%rax, %r13
	callq	print_vecbegin
	movq	8(%r13), %rax
	movq	%rax, %r14
	callq	print_vecbegin
	movq	8(%r14), %rax
	movq	%rax, %rdi
	callq	print_int
	callq	print_vecend
	callq	print_vecend
	callq	print_vecend
	subq $40, %r15
	addq $88, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
