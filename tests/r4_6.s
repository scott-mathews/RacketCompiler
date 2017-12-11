	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $64, %rsp
	addq $0, %r15

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq %rdx, %r12
	movq $0, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then347220
	movq $0, %rbx
	jmp end347221
then347220:
	leaq function0(%rip), %r13
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -48(%rbp)
	cmpq -48(%rbp), %r14
	setle %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then347222
	movq $0, %r14
	jmp end347223
then347222:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end347223:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %r13, 8(%r11)
	movq $0, %r13
	movq %r14, %r13
	movq %r13, %r11
	movq 8(%r11), %r14
	movq $1, -64(%rbp)
	negq -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -56(%rbp)
	addq %rbx, -56(%rbp)
	movq %r13, %rdi
	movq -56(%rbp), %rsi
	movq %r12, %rdx
	callq *%r14
	movq %rax, %rbx
	movq %r12, %rcx
	addq %rbx, %rcx
	movq %rcx, %rbx
end347221:
	movq %rbx, %rax

	addq $64, %rsp
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

	leaq function0(%rip), %rbx
	movq free_ptr(%rip), %r12
	addq $16, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then347224
	movq $0, %r12
	jmp end347225
then347224:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r12
end347225:
	movq free_ptr(%rip), %r12
	addq $16, free_ptr(%rip)
	movq %r12, %r11
	movq $3, 0(%r11)
	movq %r12, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %r12, %rbx
	movq %rbx, %r11
	movq 8(%r11), %r12
	movq %rbx, %rdi
	movq $6, %rsi
	movq $7, %rdx
	callq *%r12
	movq %rax, %rbx

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
