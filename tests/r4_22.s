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
	movq %rsi, %rbx
	movq %rdx, %rcx
	movq %rcx, %rdx
	movq %r8, %rsi
	movq %r9, %rdi
	movq 16(%rbp), %r8
	movq 24(%rbp), %r9
	movq 32(%rbp), %r10
	movq %r9, %r9
	addq %r10, %r9
	movq %r8, %r8
	addq %r9, %r8
	movq %rdi, %rdi
	addq %r8, %rdi
	movq %rsi, %rsi
	addq %rdi, %rsi
	movq %rdx, %rdx
	addq %rsi, %rdx
	movq %rcx, %rcx
	addq %rdx, %rcx
	movq %rbx, %rbx
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
	movq free_ptr(%rip), %r12
	addq $16, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then306608
	movq $0, %r12
	jmp end306609
then306608:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r12
end306609:
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
	movq $5, %rsi
	movq $5, %rdx
	movq $5, %rcx
	movq $5, %r8
	movq $5, %r9
	movq $5, 0(%rsp)
	movq $5, 8(%rsp)
	movq $7, 16(%rsp)
	callq *%r12
	movq %rax, %rbx

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
