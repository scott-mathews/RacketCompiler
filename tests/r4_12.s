	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $80, %rsp
	addq $8, %r15
	movq $0, -8(%r15)

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq %rbx, %r13
	movq %rbx, %rbx
	movq %rbx, %r12
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rcx
	addq $32, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then43016
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, %rcx
	jmp end43017
then43016:
	movq $0, %rcx
	movq %rcx, %rcx
end43017:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $32, free_ptr(%rip)
	movq %rcx, %r11
	movq $7, 0(%r11)
	movq %rcx, %r11
	movq %r13, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rcx, %rax

	addq $80, %rsp
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

	leaq function0(%rip), %rcx
	movq %rcx, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
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
	je then43018
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end43019
then43018:
	movq $0, %rcx
	movq %rcx, %rcx
end43019:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq 8(%r11), %rbx
	movq %rcx, %rdi
	movq $13, %rsi
	callq *%rbx
	movq %rax, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rbx
	movq %rcx, %r11
	movq 16(%r11), %rdx
	movq %rcx, %r11
	movq 24(%r11), %rcx
	addq $3, %rcx
	addq %rcx, %rdx
	addq %rdx, %rbx
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
