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
	movq %rbx, %rbx
	addq $1, %rbx
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
	movq %rdx, %r14
	movq %rbx, %rbx
	movq %rbx, %r11
	movq 8(%r11), %r12
	movq %r14, %r11
	movq 8(%r11), %rcx
	movq %rbx, %rdi
	movq %rcx, %rsi
	callq *%r12
	movq %rax, %rcx
	movq %rcx, %r13
	movq %rbx, %rbx
	movq %rbx, %r11
	movq 8(%r11), %r12
	movq %r14, %r11
	movq 16(%r11), %rcx
	movq %rbx, %rdi
	movq %rcx, %rsi
	callq *%r12
	movq %rax, %rcx
	movq %rcx, %r12
	movq %rbx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rbx
	movq %r14, %r11
	movq 24(%r11), %rdx
	movq %rcx, %rdi
	movq %rdx, %rsi
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $32, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then19975
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, %rcx
	jmp end19976
then19975:
	movq $0, %rcx
	movq %rcx, %rcx
end19976:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $32, free_ptr(%rip)
	movq %rcx, %r11
	movq $7, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 24(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r13, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rax

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

	movq $1, %r13
	movq $2, %rbx
	movq $3, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $32, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then19977
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, %rcx
	jmp end19978
then19977:
	movq $0, %rcx
	movq %rcx, %rcx
end19978:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $32, free_ptr(%rip)
	movq %rcx, %r11
	movq $7, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r12, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r13, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -8(%r15)
	leaq function1(%rip), %rbx
	movq %rbx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then19979
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end19980
then19979:
	movq $0, %rcx
	movq %rcx, %rcx
end19980:
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
	movq %rcx, -16(%r15)
	movq -16(%r15), %r11
	movq 8(%r11), %r12
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
	je then19981
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end19982
then19981:
	movq $0, %rcx
	movq %rcx, %rcx
end19982:
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
	movq -16(%r15), %rdi
	movq %rcx, %rsi
	movq -8(%r15), %rdx
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rdx
	movq %rcx, %r11
	movq 16(%r11), %rbx
	movq %rcx, %r11
	movq 24(%r11), %rcx
	movq %rcx, %rcx
	addq $33, %rcx
	movq %rbx, %rbx
	addq %rcx, %rbx
	movq %rdx, %rcx
	addq %rbx, %rcx
	movq %rcx, %rax

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
