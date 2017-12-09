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
	movq %rsi, %rsi
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq %r8, %r8
	movq %r9, %rbx
	movq 16(%rbp), %rdx
	movq 24(%rbp), %r9
	movq 32(%rbp), %r10
	movq %r9, %r9
	addq %r10, %r9
	movq %rdx, %rdx
	addq %r9, %rdx
	movq %rbx, %rbx
	addq %rdx, %rbx
	movq %r8, %rdx
	addq %rbx, %rdx
	movq %rdi, %rbx
	addq %rdx, %rbx
	movq %rcx, %rcx
	addq %rbx, %rcx
	movq %rsi, %rbx
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
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $16, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then76341
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end76342
then76341:
	movq $0, %rcx
	movq %rcx, %rcx
end76342:
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
