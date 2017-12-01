	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $64, %rsp
	addq $0, %r15

	movq %rdi, %rbx
	movq %rsi, %rdi
	movq %rdx, %r10
	movq %rcx, %rdx
	movq %r8, %r8
	movq %r9, %rsi
	movq 16(%rbp), %r9
	movq 24(%rbp), %rbx
	movq 32(%rbp), %rcx
	movq %rbx, %rbx
	addq %rcx, %rbx
	movq %r9, %rcx
	addq %rbx, %rcx
	movq %rsi, %rbx
	addq %rcx, %rbx
	movq %r8, %rcx
	addq %rbx, %rcx
	movq %rdx, %rbx
	addq %rcx, %rbx
	movq %r10, %rcx
	addq %rbx, %rcx
	movq %rdi, %rbx
	addq %rcx, %rbx
	movq %rbx, %rax

	addq $64, %rsp
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
	movq %rbx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then600643
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end600644
then600643:
	movq $0, %rcx
	movq %rcx, %rcx
end600644:
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
	movq $5, %rsi
	movq $5, %rdx
	movq $5, %rcx
	movq $5, %r8
	movq $5, %r9
	movq $5, 0(%rsp)
	movq $5, 8(%rsp)
	movq $7, 16(%rsp)
	callq *%rbx
	movq %rax, %rbx
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
