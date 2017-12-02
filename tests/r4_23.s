	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $48, %rsp
	addq $0, %r15

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq $1, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then686300
	leaq function0(%rip), %rcx
	movq %rcx, -48(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then686302
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end686303
then686302:
	movq $0, %rcx
	movq %rcx, %rcx
end686303:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq -48(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %r12
	movq $1, %rcx
	negq %rcx
	movq %rbx, %rsi
	addq %rcx, %rsi
	movq %rdx, %rdi
	movq %rsi, %rsi
	callq *%r12
	movq %rax, %rcx
	movq %rbx, %rbx
	addq %rcx, %rbx
	movq %rbx, %rbx
	jmp end686301
then686300:
	movq $1, %rbx
end686301:
	movq %rbx, %rax

	addq $48, %rsp
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
	movq %rbx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rbx
	cmpq %rcx, %rbx
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then686304
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
	jmp end686305
then686304:
	movq $0, %rbx
	movq %rbx, %rbx
end686305:
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
	movq $3, %rsi
	callq *%rbx
	movq %rax, %rbx
	movq $6, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then686306
	movq $777, %rbx
	jmp end686307
then686306:
	movq $42, %rbx
end686307:
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
