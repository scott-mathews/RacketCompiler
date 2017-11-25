	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $112, %rsp
	addq $32, %r15
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, %rbx
	movq %rsi, %r12
	movq $0, %rax
	cmpq %rax, %r12
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then43442
	leaq function0(%rip), %rcx
	movq %rcx, %rbx
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
	je then43444
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end43445
then43444:
	movq $0, %rcx
	movq %rcx, %rcx
end43445:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rbx
	movq $1, %rdx
	negq %rdx
	movq %r12, %rsi
	addq %rdx, %rsi
	movq %rcx, %rdi
	movq %rsi, %rsi
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, %rbx
	jmp end43443
then43442:
	movq $0, %rbx
end43443:
	movq %rbx, %rax

	addq $112, %rsp
	subq $32, %r15
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
	je then43446
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end43447
then43446:
	movq $0, %rcx
	movq %rcx, %rcx
end43447:
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
	movq $99, %rsi
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $0, %rax
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then43448
	movq $777, %rbx
	jmp end43449
then43448:
	movq $42, %rbx
end43449:
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
