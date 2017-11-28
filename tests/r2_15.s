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
	addq $0, %r15

	movq $42, %rbx
	cmpq $42, %rbx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then2022
	movq $20, %rbx
	jmp end2023
then2022:
	movq %rbx, %rbx
end2023:
	cmpq $42, %rbx
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then2024
	movq $777, %rbx
	jmp end2025
then2024:
	movq $42, %rbx
end2025:
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $48, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
