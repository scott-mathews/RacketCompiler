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
	addq $32, %r15
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq $0, %rbx
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
	je then451412
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end451413
then451412:
	movq $0, %rcx
	movq %rcx, %rcx
end451413:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
	movq $1, %rdx
	movq $2, %rdi
	movq $3, %rsi
	movq $4, %r8
	movq $5, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %r9
	movq %r9, %r9
	addq $48, %r9
	movq fromspace_end(%rip), %rax
	movq %rax, %r9
	movq %r9, %rax
	cmpq %rax, %r9
	sete %al
	movzbq %al, %rax
	movq %rax, %r9
	movq %r9, %rax
	cmpq $1, %rax
	je then451414
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %r9
	jmp end451415
then451414:
	movq $0, %r9
	movq %r9, %r9
end451415:
	movq %r9, %r9
	movq free_ptr(%rip), %rax
	movq %rax, %r12
	addq $48, free_ptr(%rip)
	movq %r12, %r11
	movq $11, 0(%r11)
	movq %r12, %r11
	movq %rdx, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %r12, %r11
	movq %rdi, %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %r12, %r11
	movq %rsi, %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %r12, %r11
	movq %r8, %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %r12, %r11
	movq %rcx, %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %r12, %r12
	callq read_int
	movq %rax, %rcx
	movq $0, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then451416
	movq %r12, %r11
	movq $42, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rcx, %rcx
	jmp end451417
then451416:
	movq %rbx, %r11
	movq $42, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rcx, %rcx
end451417:
	movq %rcx, %rcx
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $32, %r15
	addq $48, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
