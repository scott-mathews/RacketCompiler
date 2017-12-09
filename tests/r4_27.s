	.globl function0
function0:
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
	movq $0, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then76596
	leaq function1(%rip), %rcx
	movq %rcx, %r12
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then76598
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end76599
then76598:
	movq $0, %rcx
	movq %rcx, %rcx
end76599:
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
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %r12
	movq $1, %rcx
	negq %rcx
	movq %rbx, %rbx
	addq %rcx, %rbx
	movq %rdx, %rdi
	movq %rbx, %rsi
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rbx
	jmp end76597
then76596:
	movq $0, %rbx
end76597:
	movq %rbx, %rax

	addq $40, %rsp
	subq $0, %r15
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
	movq %rsi, %r12
	movq $0, %rax
	cmpq %r12, %rax
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then76600
	leaq function0(%rip), %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then76602
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end76603
then76602:
	movq $0, %rcx
	movq %rcx, %rcx
end76603:
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
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rbx
	movq $1, %rcx
	negq %rcx
	movq %r12, %rsi
	addq %rcx, %rsi
	movq %rdx, %rdi
	movq %rsi, %rsi
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, %rbx
	jmp end76601
then76600:
	movq $1, %rbx
end76601:
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
	addq $0, %r15

	leaq function1(%rip), %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $16, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then76604
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end76605
then76604:
	movq $0, %rcx
	movq %rcx, %rcx
end76605:
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
	movq $2, %rsi
	callq *%rbx
	movq %rax, %rbx
	cmpq $1, %rbx
	je then76606
	movq $0, %rbx
	jmp end76607
then76606:
	movq $42, %rbx
end76607:
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $88, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
