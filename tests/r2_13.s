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

	movq $1, %rbx
	cmpq $1, %rbx
	je then1997
	movq $0, %rbx
	jmp end1998
then1997:
	movq %rbx, %rbx
end1998:
	cmpq $1, %rbx
	je then1999
	movq $0, %rbx
	jmp end2000
then1999:
	movq $1, %rbx
end2000:
	cmpq $1, %rbx
	je then2001
	movq $777, %rbx
	jmp end2002
then2001:
	movq $42, %rbx
end2002:
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
