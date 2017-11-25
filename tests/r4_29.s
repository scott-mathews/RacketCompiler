	.globl function0
function0:
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
	movq %rbx, %rbx
	addq $1, %rbx
	movq %rbx, %rax

	addq $0, %rsp
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
	subq $152, %rsp
	addq $48, %r15
	movq $0, -48(%r15)
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, %rbx
	movq %rsi, %r13
	movq %rdx, %r12
	movq %r13, %r13
	movq %r13, %r11
	movq 8(%r11), %rbx
	movq %r12, %r11
	movq 8(%r11), %rcx
	movq %r13, %rdi
	movq %rcx, %rsi
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, %rbx
	movq %r13, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r13
	movq %r12, %r11
	movq 16(%r11), %rdx
	movq %rcx, %rdi
	movq %rdx, %rsi
	callq *%r13
	movq %rax, %r12
	movq %r12, %r12
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
	je then43678
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
	jmp end43679
then43678:
	movq $0, %rcx
	movq %rcx, %rcx
end43679:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $5, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rcx, %rax

	addq $152, %rsp
	subq $48, %r15
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
	subq $64, %rsp
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

	leaq function1(%rip), %r13
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
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
	je then43680
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
	jmp end43681
then43680:
	movq $0, %rbx
	movq %rbx, %rbx
end43681:
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $131, 0(%r11)
	movq %rbx, %r11
	movq %r13, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rbx, %r13
	movq %r13, %r11
	movq 8(%r11), %r12
	movq $0, -48(%rbp)
	movq $41, %rbx
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
	je then43682
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
	jmp end43683
then43682:
	movq $0, %rcx
	movq %rcx, %rcx
end43683:
	movq free_ptr(%rip), %rax
	movq %rax, %r14
	addq $24, free_ptr(%rip)
	movq %r14, %r11
	movq $5, 0(%r11)
	movq %r14, %r11
	movq -48(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %r14, %r11
	movq %rbx, %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	leaq function0(%rip), %rbx
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
	je then43684
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end43685
then43684:
	movq $0, %rcx
	movq %rcx, %rcx
end43685:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %r13, %rdi
	movq %rcx, %rsi
	movq %r14, %rdx
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %r11
	movq 16(%r11), %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $40, %r15
	addq $64, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
