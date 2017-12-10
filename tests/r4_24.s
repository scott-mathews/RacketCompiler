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
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then242504
	movq $0, %rbx
	jmp end242505
then242504:
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
	je then242506
	movq $0, %r13
	jmp end242507
then242506:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end242507:
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
	movq $1, %r14
	negq %r14
	movq %rbx, %rbx
	addq %r14, %rbx
	movq %r12, %rdi
	movq %rbx, %rsi
	callq *%r13
	movq %rax, %rbx
	movq %rbx, %rbx
end242505:
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

	leaq function0(%rip), %rbx
	movq free_ptr(%rip), %r12
	addq $16, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then242508
	movq $0, %r12
	jmp end242509
then242508:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r12
end242509:
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
	movq $99, %rsi
	callq *%r12
	movq %rax, %rbx
	cmpq $0, %rbx
	sete %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then242510
	movq $42, %rbx
	jmp end242511
then242510:
	movq $777, %rbx
end242511:
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
