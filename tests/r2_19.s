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

	movq $0, %rax
	cmpq $0, %rax
	je then32168
	callq read_int
	movq %rax, %rbx
	movq $42, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rbx
	movq %rbx, %rbx
	jmp end32169
then32168:
	movq $0, %rbx
end32169:
	movq $0, %rax
	cmpq %rbx, %rax
	je then32170
	movq $777, %rbx
	jmp end32171
then32170:
	movq $42, %rbx
end32171:
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
