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
	cmpq $0, %rbx
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then347382
	movq $0, %rbx
	jmp end347383
then347382:
	leaq function1(%rip), %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then347384
	movq $0, %r13
	jmp end347385
then347384:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end347385:
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
	movq %r14, %r14
	addq %rbx, %r14
	movq %r12, %rdi
	movq %r14, %rsi
	callq *%r13
	movq %rax, %rbx
	movq %rbx, %rbx
end347383:
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
	movq %rsi, %rbx
	cmpq $0, %rbx
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then347386
	movq $1, %rbx
	jmp end347387
then347386:
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
	je then347388
	movq $0, %r13
	jmp end347389
then347388:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end347389:
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
	movq %r14, %r14
	addq %rbx, %r14
	movq %r12, %rdi
	movq %r14, %rsi
	callq *%r13
	movq %rax, %rbx
	movq %rbx, %rbx
end347387:
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
	je then347390
	movq $0, %r12
	jmp end347391
then347390:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r12
end347391:
	movq free_ptr(%rip), %r12
	addq $16, free_ptr(%rip)
	movq %r12, %r11
	movq $3, 0(%r11)
	movq %r12, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %r12, -16(%r15)
	movq free_ptr(%rip), %rbx
	addq $16, %rbx
	movq fromspace_end(%rip), %r12
	cmpq %r12, %rbx
	setle %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then347392
	movq $0, %rbx
	jmp end347393
then347392:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end347393:
	movq free_ptr(%rip), %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $131, 0(%r11)
	movq %rbx, %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r12
	movq %rbx, -8(%r15)
	leaq function1(%rip), %rbx
	movq free_ptr(%rip), %r12
	addq $16, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then347394
	movq $0, %r12
	jmp end347395
then347394:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r12
end347395:
	movq free_ptr(%rip), %r12
	addq $16, free_ptr(%rip)
	movq %r12, %r11
	movq $3, 0(%r11)
	movq %r12, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -8(%r15), %r11
	movq %r12, 8(%r11)
	movq $0, %rbx
	movq -8(%r15), %r11
	movq 8(%r11), %rbx
	movq %rbx, %r11
	movq 8(%r11), %r12
	movq %rbx, %rdi
	movq $21, %rsi
	callq *%r12
	movq %rax, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then347396
	movq $999, %rbx
	jmp end347397
then347396:
	movq $42, %rbx
end347397:
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
