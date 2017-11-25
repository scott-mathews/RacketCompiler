	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $64, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $32, %r15
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq $0, %rbx
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
	je then40050
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end40051
then40050:
	movq $0, %rcx
	movq %rcx, %rcx
end40051:
	movq free_ptr(%rip), %rax
	movq %rax, -32(%r15)
	addq $16, free_ptr(%rip)
	movq -32(%r15), %r11
	movq $3, 0(%r11)
	movq -32(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -32(%r15), %rax
	movq %rax, -8(%r15)
	movq $1, -48(%rbp)
	movq $2, %rbx
	movq $3, %r13
	movq $4, %r12
	movq $5, %r14
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then40052
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end40053
then40052:
	movq $0, %rcx
	movq %rcx, %rcx
end40053:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %r11
	movq -48(%rbp), %rax
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
	movq %r12, %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
	callq read_int
	movq %rax, %rcx
	movq $0, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then40054
	movq %rbx, %r11
	movq $42, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	jmp end40055
then40054:
	movq -8(%r15), %r11
	movq $42, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
end40055:
	movq -8(%r15), %r11
	movq 8(%r11), %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $32, %r15
	addq $64, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
