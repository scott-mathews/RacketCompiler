	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $40, %rsp
	addq $8, %r15
	movq $0, -8(%r15)

	movq %rdi, %rbx
	movq %rsi, %rbx
	cmpq $0, %rbx
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then348549
	movq free_ptr(%rip), %rbx
	movq %rbx, %rbx
	addq $8, %rbx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rbx
	setle %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then348551
	movq $0, %rbx
	jmp end348552
then348551:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	movq $0, %rbx
end348552:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $8, free_ptr(%rip)
	movq %rbx, %r11
	movq $1, 0(%r11)
	movq %rbx, %rbx
	jmp end348550
then348549:
	leaq function0(%rip), %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then348553
	movq $0, %r13
	jmp end348554
then348553:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end348554:
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
	movq %rbx, %rbx
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then348555
	movq $0, %r13
	jmp end348556
then348555:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end348556:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %r13, %r11
	movq 8(%r11), %rbx
	movq $1, %r13
	negq %r13
	movq %rbx, %rbx
	addq %r13, %rbx
	movq -8(%r15), %rdi
	movq %rbx, %rsi
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rbx
end348550:
	movq %rbx, %rax

	addq $40, %rsp
	subq $8, %r15
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
	addq $16, %r15
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	leaq function0(%rip), %rbx
	movq free_ptr(%rip), %r12
	addq $16, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then348557
	movq $0, %r12
	jmp end348558
then348557:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r12
end348558:
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
	movq $1, %rsi
	callq *%r12
	movq %rax, %rbx
	movq %rbx, -8(%r15)
	leaq function0(%rip), %rbx
	movq free_ptr(%rip), %r12
	addq $16, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then348559
	movq $0, %r12
	jmp end348560
then348559:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r12
end348560:
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
	movq $2, %rsi
	callq *%r12
	movq %rax, %rbx
	movq %rbx, -16(%r15)
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	addq $32, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	setle %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then348561
	movq $0, %rcx
	jmp end348562
then348561:
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, %rcx
end348562:
	movq free_ptr(%rip), %rcx
	addq $32, free_ptr(%rip)
	movq %rcx, %r11
	movq $391, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 24(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -16(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -8(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq 24(%r11), %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $16, %r15
	addq $88, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
