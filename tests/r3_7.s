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
	je then103940
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end103941
then103940:
	movq $0, %rcx
	movq %rcx, %rcx
end103941:
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
	movq fromspace_end(%rip), %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rbx, %rcx
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then103942
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
	jmp end103943
then103942:
	movq $0, %rbx
	movq %rbx, %rbx
end103943:
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
	movq $42, %rbx
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
	je then103944
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end103945
then103944:
	movq $0, %rcx
	movq %rcx, %rcx
end103945:
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
	movq %rbx, %rbx
	movq -16(%r15), %r12
	andq $7, %r12
	cmpq $2, %r12
	je then103946
	callq exit
	jmp end103947
then103946:
	movq $7, %r12
	notq %r12
	andq -16(%r15), %r12
end103947:
	movq %r12, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq -16(%r15), %rbx
	andq $7, %rbx
	cmpq $2, %rbx
	je then103948
	callq exit
	jmp end103949
then103948:
	movq $7, %rbx
	notq %rbx
	andq -16(%r15), %rbx
end103949:
	movq %rbx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $2, %rbx
	je then103950
	callq exit
	jmp end103951
then103950:
	movq $7, %rbx
	notq %rbx
	andq %rcx, %rbx
end103951:
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
