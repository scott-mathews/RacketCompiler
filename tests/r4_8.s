	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $16, %rsp
	addq $0, %r15

	movq %rdi, %rcx
	movq $0, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then88702
	leaq function1(%rip), %rbx
	movq $1, %rdx
	negq %rdx
	movq %rdx, %rdx
	addq %rcx, %rdx
	movq %rdx, %rdi
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, %rbx
	jmp end88703
then88702:
	movq $0, %rbx
end88703:
	movq %rbx, %rax

	addq $16, %rsp
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
	subq $16, %rsp
	addq $0, %r15

	movq %rdi, %rcx
	movq $0, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then88704
	leaq function0(%rip), %rbx
	movq $1, %rdx
	negq %rdx
	movq %rdx, %rdx
	addq %rcx, %rdx
	movq %rdx, %rdi
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, %rbx
	jmp end88705
then88704:
	movq $1, %rbx
end88705:
	movq %rbx, %rax

	addq $16, %rsp
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
	subq $48, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $8, %r15
	movq $0, -8(%r15)

	leaq function0(%rip), %rbx
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
	je then88706
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end88707
then88706:
	movq $0, %rcx
	movq %rcx, %rcx
end88707:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
	leaq function1(%rip), %rcx
	movq %rbx, %r11
	movq %rcx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq $21, %rdi
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then88708
	movq $42, %rbx
	jmp end88709
then88708:
	movq $999, %rbx
end88709:
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $8, %r15
	addq $48, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
