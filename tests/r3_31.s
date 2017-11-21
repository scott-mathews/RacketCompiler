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
	addq $88, %r15
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

	movq $0, %rbx
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
	je then4709
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end4710
then4709:
	movq $0, %rcx
	movq %rcx, %rcx
end4710:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq $1, %rdi
	movq $2, %rdx
	movq $1, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
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
	je then4711
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end4712
then4711:
	movq $0, %rsi
	movq %rsi, %rsi
end4712:
	movq free_ptr(%rip), %rax
	movq %rax, %r8
	addq $16, free_ptr(%rip)
	movq %r8, %r11
	movq $3, 0(%r11)
	movq %r8, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	addq $32, %rbx
	movq fromspace_end(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq %rax, %rbx
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then4713
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, %rbx
	jmp end4714
then4713:
	movq $0, %rbx
	movq %rbx, %rbx
end4714:
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	addq $32, free_ptr(%rip)
	movq %rbx, %r11
	movq $135, 0(%r11)
	movq %rbx, %r11
	movq %rdi, %rax
	movq %rax, 8(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %rdx, %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rbx, %r11
	movq %r8, %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %rdx
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
	je then4715
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end4716
then4715:
	movq $0, %rcx
	movq %rcx, %rcx
end4716:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %rdx, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %rdx
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
	je then4717
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
	jmp end4718
then4717:
	movq $0, %rcx
	movq %rcx, %rcx
end4718:
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
	movq %rdx, %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rcx, %rax

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
	subq $88, %r15
	addq $48, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq