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
	je then104078
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end104079
then104078:
	movq $0, %rcx
	movq %rcx, %rcx
end104079:
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
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rbx
	movq %rbx, %rbx
	addq $16, %rbx
	cmpq %rcx, %rbx
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then104080
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
	jmp end104081
then104080:
	movq $0, %rbx
	movq %rbx, %rbx
end104081:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $131, 0(%r11)
	movq %rbx, %rbx
	movq %rbx, %r11
	movq -8(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rcx, %rcx
	movq %rbx, %rbx
	orq $2, %rbx
	movq %rbx, -16(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $4, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then104082
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end104083
then104082:
	movq $0, %rcx
	movq %rcx, %rcx
end104083:
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
	movq %rbx, %r12
	movq -16(%r15), %rbx
	andq $7, %rbx
	cmpq $2, %rbx
	je then104084
	callq exit
	jmp end104085
then104084:
	movq $7, %rbx
	notq %rbx
	andq -16(%r15), %rbx
end104085:
	movq %rbx, %r11
	movq %r12, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq -16(%r15), %rbx
	andq $7, %rbx
	cmpq $2, %rbx
	je then104086
	callq exit
	jmp end104087
then104086:
	movq $7, %rbx
	notq %rbx
	andq -16(%r15), %rbx
end104087:
	movq %rbx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $2, %rbx
	je then104088
	callq exit
	jmp end104089
then104088:
	movq $7, %rbx
	notq %rbx
	andq %rcx, %rbx
end104089:
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_any
	subq $16, %r15
	addq $88, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
