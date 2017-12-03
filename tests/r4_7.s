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
	movq %rsi, %r12
	movq $0, %rax
	cmpq %r12, %rax
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then19761
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
	je then19763
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end19764
then19763:
	movq $0, %rcx
	movq %rcx, %rcx
end19764:
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
	movq %rcx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rbx
	movq $1, %rdx
	negq %rdx
	movq %rdx, %rdx
	addq %r12, %rdx
	movq %rcx, %rdi
	movq %rdx, %rsi
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, %rbx
	jmp end19762
then19761:
	movq $0, %rbx
end19762:
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
	movq %rsi, %r12
	movq $0, %rax
	cmpq %r12, %rax
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then19765
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
	je then19767
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end19768
then19767:
	movq $0, %rcx
	movq %rcx, %rcx
end19768:
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
	movq %rcx, %rdx
	movq %rdx, %r11
	movq 8(%r11), %rbx
	movq $1, %rcx
	negq %rcx
	movq %rcx, %rcx
	addq %r12, %rcx
	movq %rdx, %rdi
	movq %rcx, %rsi
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, %rbx
	jmp end19766
then19765:
	movq $1, %rbx
end19766:
	movq %rbx, %rax

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
	addq $0, %r15

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
	je then19769
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end19770
then19769:
	movq $0, %rcx
	movq %rcx, %rcx
end19770:
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
	movq %rbx, %r11
	movq 8(%r11), %r12
	callq read_int
	movq %rax, %rcx
	movq %rbx, %rdi
	movq %rcx, %rsi
	callq *%r12
	movq %rax, %rbx
	cmpq $1, %rbx
	je then19771
	movq $42, %rbx
	jmp end19772
then19771:
	movq $999, %rbx
end19772:
	movq %rbx, %rax

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
