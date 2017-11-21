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

	movq $777, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rbx
	addq $16, %rbx
	movq fromspace_end(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq %rax, %rbx
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then451716
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
	jmp end451717
then451716:
	movq $0, %rbx
	movq %rbx, %rbx
end451717:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $3, 0(%r11)
	movq %rbx, %r11
	movq %rcx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rbx, %rbx
	movq $98, %rdx
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
	je then451718
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
	jmp end451719
then451718:
	movq $0, %rcx
	movq %rcx, %rcx
end451719:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $261, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %rdx, %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %rdi
	movq $99, %rsi
	movq $100, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rbx
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
	je then451720
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, %rbx
	jmp end451721
then451720:
	movq $0, %rbx
	movq %rbx, %rbx
end451721:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	addq $32, free_ptr(%rip)
	movq %rbx, %r11
	movq $519, 0(%r11)
	movq %rbx, %r11
	movq %rdi, %rax
	movq %rax, 8(%r11)
	movq $0, %rdi
	movq %rbx, %r11
	movq %rsi, %rax
	movq %rax, 16(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %rcx, %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rbx, %rbx
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %r11
	movq $42, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rdx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %rax

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
