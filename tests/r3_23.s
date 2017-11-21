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
	addq $80, %r15
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

	movq $777, %r9
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
	je then331545
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end331546
then331545:
	movq $0, %rcx
	movq %rcx, %rcx
end331546:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r9, %rax
	movq %rax, 8(%r11)
	movq $0, %rsi
	movq %rcx, %r9
	movq $98, %rsi
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
	je then331547
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
	jmp end331548
then331547:
	movq $0, %rcx
	movq %rcx, %rcx
end331548:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $261, 0(%r11)
	movq %rcx, %r11
	movq %r9, %rax
	movq %rax, 8(%r11)
	movq $0, %r9
	movq %rcx, %r11
	movq %rsi, %rax
	movq %rax, 16(%r11)
	movq $0, %rsi
	movq %rcx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rdx
	movq %rdx, %r10
	movq $99, %r9
	movq $100, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	movq %rdx, %rdx
	addq $32, %rdx
	movq fromspace_end(%rip), %rax
	movq %rax, %rdx
	movq %rdx, %rax
	cmpq %rax, %rdx
	sete %al
	movzbq %al, %rax
	movq %rax, %rdx
	movq %rdx, %rax
	cmpq $1, %rax
	je then331549
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, %rdx
	jmp end331550
then331549:
	movq $0, %rdx
	movq %rdx, %rdx
end331550:
	movq %rdx, %rdx
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	addq $32, free_ptr(%rip)
	movq %rdx, %r11
	movq $519, 0(%r11)
	movq %rdx, %r11
	movq %r10, %rax
	movq %rax, 8(%r11)
	movq $0, %r10
	movq %rdx, %r11
	movq %r9, %rax
	movq %rax, 16(%r11)
	movq $0, %r9
	movq %rdx, %r11
	movq %rsi, %rax
	movq %rax, 24(%r11)
	movq $0, %rsi
	movq %rdx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %r11
	movq $42, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq 8(%r11), %rdi
	movq %rdi, %r11
	movq 8(%r11), %r8
	movq %r8, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $80, %r15
	addq $48, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
