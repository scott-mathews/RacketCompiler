	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $160, %rsp
	addq $24, %r15
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, %rcx
	movq $0, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then323383
	leaq function0(%rip), %rbx
	movq %rcx, %r12
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
	je then323385
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end323386
then323385:
	movq $0, %rcx
	movq %rcx, %rcx
end323386:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	movq $1, %rdx
	negq %rdx
	movq %rcx, %rcx
	addq %rdx, %rcx
	movq %rcx, %rdi
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, %rbx
	jmp end323384
then323383:
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rbx
	addq $8, %rbx
	movq fromspace_end(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq %rax, %rbx
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then323387
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	movq $0, %rbx
	jmp end323388
then323387:
	movq $0, %rbx
	movq %rbx, %rbx
end323388:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	addq $8, free_ptr(%rip)
	movq %rbx, %r11
	movq $1, 0(%r11)
	movq %rbx, %rbx
end323384:
	movq %rbx, %rax

	addq $160, %rsp
	subq $24, %r15
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
	addq $24, %r15
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	leaq function0(%rip), %rbx
	movq $1, %rdi
	callq *%rbx
	movq %rax, %r12
	leaq function0(%rip), %rbx
	movq $2, %rdi
	callq *%rbx
	movq %rax, %rbx
	movq $42, %r13
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
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
	je then323389
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, %rcx
	jmp end323390
then323389:
	movq $0, %rcx
	movq %rcx, %rcx
end323390:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $32, free_ptr(%rip)
	movq %rcx, %r11
	movq $775, 0(%r11)
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r13, %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq 24(%r11), %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $24, %r15
	addq $48, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
