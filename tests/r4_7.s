	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $48, %rsp
	addq $0, %r15

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then685523
	leaq function1(%rip), %rcx
	movq %rcx, -48(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then685525
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end685526
then685525:
	movq $0, %rcx
	movq %rcx, %rcx
end685526:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq -48(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %r12
	movq $1, %rcx
	negq %rcx
	movq %rcx, %rcx
	addq %rbx, %rcx
	movq %rdx, %rdi
	movq %rcx, %rsi
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rbx
	jmp end685524
then685523:
	movq $0, %rbx
end685524:
	movq %rbx, %rax

	addq $48, %rsp
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
	subq $48, %rsp
	addq $0, %r15

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then685527
	leaq function0(%rip), %rcx
	movq %rcx, -48(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then685529
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end685530
then685529:
	movq $0, %rcx
	movq %rcx, %rcx
end685530:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq -48(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %r12
	movq $1, %rcx
	negq %rcx
	movq %rcx, %rcx
	addq %rbx, %rcx
	movq %rdx, %rdi
	movq %rcx, %rsi
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rbx
	jmp end685528
then685527:
	movq $1, %rbx
end685528:
	movq %rbx, %rax

	addq $48, %rsp
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
	subq $96, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	leaq function1(%rip), %rbx
	movq %rbx, -48(%rbp)
	movq free_ptr(%rip), %rbx
	movq %rbx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rbx
	cmpq %rcx, %rbx
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then685531
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
	jmp end685532
then685531:
	movq $0, %rbx
	movq %rbx, %rbx
end685532:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $3, 0(%r11)
	movq %rbx, %rbx
	movq %rbx, %r11
	movq -48(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rcx, %rcx
	movq %rbx, %rbx
	movq %rbx, %r11
	movq 8(%r11), %r12
	callq read_int
	movq %rax, %rcx
	movq %rbx, %rdi
	movq %rcx, %rsi
	callq *%r12
	movq %rax, %rbx
	cmpq $1, %rbx
	je then685533
	movq $42, %rbx
	jmp end685534
then685533:
	movq $999, %rbx
end685534:
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $96, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
