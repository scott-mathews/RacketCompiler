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
	subq $56, %rsp
	addq $0, %r15

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq %rdx, %r12
	movq %rbx, %rbx
	movq %rbx, %r11
	movq 8(%r11), %r13
	movq %r12, %r11
	movq 8(%r11), %r14
	movq %rbx, %rdi
	movq %r14, %rsi
	callq *%r13
	movq %rax, %r13
	movq %rbx, %rbx
	movq %rbx, %r11
	movq 8(%r11), %r14
	movq %r12, %r11
	movq 16(%r11), %rax
	movq %rax, -48(%rbp)
	movq %rbx, %rdi
	movq -48(%rbp), %rsi
	callq *%r14
	movq %rax, %r14
	movq %rbx, %rbx
	movq %rbx, %r11
	movq 8(%r11), %rax
	movq %rax, -56(%rbp)
	movq %r12, %r11
	movq 24(%r11), %r12
	movq %rbx, %rdi
	movq %r12, %rsi
	callq *-56(%rbp)
	movq %rax, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $32, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	setle %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then20773
	movq $0, %rcx
	jmp end20774
then20773:
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, %rcx
end20774:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $32, free_ptr(%rip)
	movq %rcx, %r11
	movq $7, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 24(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r14, 16(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r13, 8(%r11)
	movq $0, %rbx
	movq %rcx, %rax

	addq $56, %rsp
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
	subq $96, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $16, %r15
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq $1, %rbx
	movq $2, %r12
	movq $3, %r13
	movq free_ptr(%rip), %r14
	addq $32, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -48(%rbp)
	cmpq -48(%rbp), %r14
	setle %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then20775
	movq $0, %r14
	jmp end20776
then20775:
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, %r14
end20776:
	movq free_ptr(%rip), %r14
	addq $32, free_ptr(%rip)
	movq %r14, %r11
	movq $7, 0(%r11)
	movq %r14, %r11
	movq %r13, 24(%r11)
	movq $0, %r13
	movq %r14, %r11
	movq %r12, 16(%r11)
	movq $0, %r12
	movq %r14, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %r14, -8(%r15)
	leaq function1(%rip), %rbx
	movq free_ptr(%rip), %r12
	addq $16, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then20777
	movq $0, %r12
	jmp end20778
then20777:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r12
end20778:
	movq free_ptr(%rip), %r12
	addq $16, free_ptr(%rip)
	movq %r12, %r11
	movq $3, 0(%r11)
	movq %r12, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %r12, -16(%r15)
	movq -16(%r15), %r11
	movq 8(%r11), %rbx
	leaq function0(%rip), %r12
	movq free_ptr(%rip), %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then20779
	movq $0, %r13
	jmp end20780
then20779:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end20780:
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq -16(%r15), %rdi
	movq %r13, %rsi
	movq -8(%r15), %rdx
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, %r11
	movq 8(%r11), %rcx
	movq %rbx, %r11
	movq 16(%r11), %rdx
	movq %rbx, %r11
	movq 24(%r11), %rbx
	addq $33, %rbx
	addq %rbx, %rdx
	movq %rcx, %rbx
	addq %rdx, %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $16, %r15
	addq $96, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
