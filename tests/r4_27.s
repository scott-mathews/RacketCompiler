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
	je then323159
	leaq function1(%rip), %rbx
	movq $1, %rdx
	negq %rdx
	movq %rcx, %rcx
	addq %rdx, %rcx
	movq %rcx, %rdi
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, %rbx
	jmp end323160
then323159:
	movq $0, %rbx
end323160:
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
	je then323161
	leaq function0(%rip), %rbx
	movq $1, %rdx
	negq %rdx
	movq %rcx, %rcx
	addq %rdx, %rcx
	movq %rcx, %rdi
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, %rbx
	jmp end323162
then323161:
	movq $1, %rbx
end323162:
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
	movq $2, %rdi
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then323163
	movq $0, %rbx
	jmp end323164
then323163:
	movq $42, %rbx
end323164:
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
