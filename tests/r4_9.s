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
	movq %rsi, %rbx
	movq %rbx, %rbx
	addq $1, %rbx
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
	movq %rsi, %r14
	movq %rdx, %rbx
	movq %r14, %rdx
	movq %rdx, %r11
	movq 8(%r11), %r12
	movq %rbx, %r11
	movq 8(%r11), %rcx
	movq %rdx, %rdi
	movq %rcx, %rsi
	callq *%r12
	movq %rax, %rcx
	movq %rcx, %r12
	movq %r14, %rdx
	movq %rdx, %r11
	movq 8(%r11), %r13
	movq %rbx, %r11
	movq 16(%r11), %rcx
	movq %rdx, %rdi
	movq %rcx, %rsi
	callq *%r13
	movq %rax, %rcx
	movq %rcx, %r13
	movq %r14, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r14
	movq %rbx, %r11
	movq 24(%r11), %rbx
	movq %rcx, %rdi
	movq %rbx, %rsi
	callq *%r14
	movq %rax, %rbx
	movq %rbx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $32, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then685749
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, %rcx
	jmp end685750
then685749:
	movq $0, %rcx
	movq %rcx, %rcx
end685750:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $32, free_ptr(%rip)
	movq %rcx, %r11
	movq $7, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 24(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r13, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rax

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
	subq $112, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $16, %r15
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq $1, %r13
	movq $2, %rbx
	movq $3, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $32, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then685751
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, %rcx
	jmp end685752
then685751:
	movq $0, %rcx
	movq %rcx, %rcx
end685752:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $32, free_ptr(%rip)
	movq %rcx, %r11
	movq $7, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r12, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r13, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -8(%r15)
	leaq function1(%rip), %rbx
	movq %rbx, -64(%rbp)
	movq free_ptr(%rip), %rbx
	movq %rbx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rbx
	cmpq %rcx, %rbx
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then685753
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
	jmp end685754
then685753:
	movq $0, %rbx
	movq %rbx, %rbx
end685754:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $3, 0(%r11)
	movq %rbx, %rbx
	movq %rbx, %r11
	movq -64(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rcx, %rcx
	movq %rbx, -16(%r15)
	movq -16(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -48(%rbp)
	leaq function0(%rip), %rbx
	movq %rbx, -56(%rbp)
	movq free_ptr(%rip), %rbx
	movq %rbx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rbx
	cmpq %rcx, %rbx
	sete %al
	movzbq %al, %rbx
	cmpq $1, %rbx
	je then685755
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
	jmp end685756
then685755:
	movq $0, %rbx
	movq %rbx, %rbx
end685756:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $3, 0(%r11)
	movq %rbx, %rbx
	movq %rbx, %r11
	movq -56(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rcx, %rcx
	movq -16(%r15), %rdi
	movq %rbx, %rsi
	movq -8(%r15), %rdx
	callq *-48(%rbp)
	movq %rax, %rbx
	movq %rbx, %rbx
	movq %rbx, %r11
	movq 8(%r11), %rcx
	movq %rbx, %r11
	movq 16(%r11), %rdx
	movq %rbx, %r11
	movq 24(%r11), %rbx
	movq %rbx, %rbx
	addq $33, %rbx
	movq %rdx, %rdx
	addq %rbx, %rdx
	movq %rcx, %rbx
	addq %rdx, %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $16, %r15
	addq $112, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
