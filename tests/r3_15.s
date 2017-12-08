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
	addq $8, %r15
	movq $0, -8(%r15)

	movq $0, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then106237
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end106238
then106237:
	movq $0, %rcx
	movq %rcx, %rcx
end106238:
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
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, -8(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r12
	movq $2, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -48(%rbp)
	movq $3, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r14
	movq $4, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r13
	movq $5, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $48, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then106239
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end106240
then106239:
	movq $0, %rcx
	movq %rcx, %rcx
end106240:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r13, 32(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r14, 24(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -48(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, %r12
	callq read_int
	movq %rax, %rbx
	movq %rbx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq $0, %rcx
	salq $3, %rcx
	orq $1, %rcx
	cmpq %rbx, %rcx
	sete %al
	movzbq %al, %rbx
	movq %rbx, %rcx
	salq $3, %rcx
	orq $4, %rcx
	movq $0, %rbx
	salq $3, %rbx
	orq $4, %rbx
	cmpq %rcx, %rbx
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then106241
	movq -8(%r15), %rbx
	andq $7, %rbx
	cmpq $2, %rbx
	je then106243
	callq exit
	jmp end106244
then106243:
	movq $7, %rbx
	notq %rbx
	andq -8(%r15), %rbx
end106244:
	movq $42, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rbx, %r11
	movq %rcx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	jmp end106242
then106241:
	movq %r12, %rbx
	andq $7, %rbx
	cmpq $2, %rbx
	je then106245
	callq exit
	jmp end106246
then106245:
	movq $7, %rbx
	notq %rbx
	andq %r12, %rbx
end106246:
	movq $42, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rbx, %r11
	movq %rcx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
end106242:
	movq %rbx, %rbx
	movq -8(%r15), %rbx
	andq $7, %rbx
	cmpq $2, %rbx
	je then106247
	callq exit
	jmp end106248
then106247:
	movq $7, %rbx
	notq %rbx
	andq -8(%r15), %rbx
end106248:
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_any
	subq $8, %r15
	addq $96, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
