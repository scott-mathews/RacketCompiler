	.globl function0
function0:
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
	movq %rsi, %r12
	movq %rdx, -8(%r15)
	movq $100, %rax
	cmpq %r12, %rax
	sete %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then4554
	movq -8(%r15), %r11
	movq 8(%r11), %rbx
	movq %rbx, %rbx
	movq %rbx, %r11
	movq 8(%r11), %r12
	movq -8(%r15), %r11
	movq 16(%r11), %r13
	movq %r13, %r11
	movq 8(%r11), %r13
	movq %rbx, %rdi
	movq %r13, %rsi
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rbx
	jmp end4555
then4554:
	leaq function0(%rip), %rbx
	movq %rbx, %rbx
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then4556
	movq $0, %r13
	jmp end4557
then4556:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end4557:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %r13, -16(%r15)
	movq -16(%r15), %r11
	movq 8(%r11), %rbx
	movq %r12, %r12
	addq $1, %r12
	movq -8(%r15), %r11
	movq 8(%r11), %r13
	movq %r13, -24(%r15)
	movq -8(%r15), %r11
	movq 16(%r11), %r13
	movq %r13, -32(%r15)
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $24, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then4558
	movq $0, %r13
	jmp end4559
then4558:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %r13
end4559:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $24, free_ptr(%rip)
	movq %r13, %r11
	movq $389, 0(%r11)
	movq %r13, %r11
	movq -32(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r14
	movq %r14, %r14
	movq %r13, %r11
	movq -24(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r14
	movq %r14, %r14
	movq -16(%r15), %rdi
	movq %r12, %rsi
	movq %r13, %rdx
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, %rbx
end4555:
	movq %rbx, %rax

	addq $40, %rsp
	subq $32, %r15
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
	addq $0, %r15

	movq %rdi, %rbx
	movq %rsi, %rbx
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
	addq $24, %r15
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	leaq function0(%rip), %rbx
	movq %rbx, %rbx
	movq free_ptr(%rip), %r12
	movq %r12, %r12
	addq $16, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then4560
	movq $0, %r12
	jmp end4561
then4560:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r12
end4561:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $16, free_ptr(%rip)
	movq %r12, %r11
	movq $3, 0(%r11)
	movq %r12, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %r12, -8(%r15)
	movq -8(%r15), %r11
	movq 8(%r11), %rbx
	leaq function1(%rip), %r12
	movq %r12, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then4562
	movq $0, %r13
	jmp end4563
then4562:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end4563:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
	movq %r13, -16(%r15)
	movq $42, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then4564
	movq $0, %r13
	jmp end4565
then4564:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end4565:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
	movq %r13, -24(%r15)
	movq free_ptr(%rip), %r12
	movq %r12, %r12
	addq $24, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then4566
	movq $0, %r12
	jmp end4567
then4566:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %r12
end4567:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $24, free_ptr(%rip)
	movq %r12, %r11
	movq $389, 0(%r11)
	movq %r12, %r11
	movq -24(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r12, %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq -8(%r15), %rdi
	movq $0, %rsi
	movq %r12, %rdx
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $24, %r15
	addq $88, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
