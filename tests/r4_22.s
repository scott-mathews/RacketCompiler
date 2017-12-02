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
	movq %rsi, %rcx
	movq %rdx, %rsi
	movq %rcx, %rdi
	movq %r8, %rbx
	movq %r9, %r9
	movq 16(%rbp), %r8
	movq 24(%rbp), %rdx
	movq 32(%rbp), %r10
	movq %rdx, %rdx
	addq %r10, %rdx
	movq %r8, %r8
	addq %rdx, %r8
	movq %r9, %rdx
	addq %r8, %rdx
	movq %rbx, %rbx
	addq %rdx, %rbx
	movq %rdi, %rdx
	addq %rbx, %rdx
	movq %rsi, %rbx
	addq %rdx, %rbx
	movq %rcx, %rcx
	addq %rbx, %rcx
	movq %rcx, %rax

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
	subq $96, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	leaq function0(%rip), %rbx
	movq %rbx, -48(%rbp)
	movq free_ptr(%rip), %rbx
	movq %rbx, %rbx
	addq $16, %rbx
	movq fromspace_end(%rip), %rcx
	cmpq %rbx, %rcx
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then686250
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
	jmp end686251
then686250:
	movq $0, %rbx
	movq %rbx, %rbx
end686251:
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
	movq %rbx, %rcx
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
	addq $96, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
