	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $8, %rsp
	addq $0, %r15

	movq %rdi, %rcx
	movq $0, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then91444
	leaq function1(%rip), %rbx
	movq $1, %rdx
	negq %rdx
	movq %rdx, %rdx
	addq %rcx, %rdx
	movq %rdx, %rdi
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, %rbx
	jmp end91445
then91444:
	movq $0, %rbx
end91445:
	movq %rbx, %rax

	addq $8, %rsp
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
	subq $8, %rsp
	addq $0, %r15

	movq %rdi, %rcx
	movq $0, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then91446
	leaq function0(%rip), %rbx
	movq $1, %rdx
	negq %rdx
	movq %rdx, %rdx
	addq %rcx, %rdx
	movq %rdx, %rdi
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, %rbx
	jmp end91447
then91446:
	movq $1, %rbx
end91447:
	movq %rbx, %rax

	addq $8, %rsp
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
	addq $0, %r15

	leaq function1(%rip), %rbx
	callq read_int
	movq %rax, %rcx
	movq %rcx, %rdi
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then91448
	movq $42, %rbx
	jmp end91449
then91448:
	movq $999, %rbx
end91449:
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
