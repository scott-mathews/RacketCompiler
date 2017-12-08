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
	addq $40, %r15
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq $4, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq $2, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	movq $6, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r13
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -48(%rbp)
	movq $42, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r14
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $24, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then105636
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
	jmp end105637
then105636:
	movq $0, %rcx
	movq %rcx, %rcx
end105637:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $5, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r14, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -48(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rcx
	orq $2, %rcx
	movq %rcx, -40(%r15)
	movq $3, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r14
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then105638
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end105639
then105638:
	movq $0, %rcx
	movq %rcx, %rcx
end105639:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r14, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rcx
	orq $2, %rcx
	movq %rcx, -24(%r15)
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $24, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then105640
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
	jmp end105641
then105640:
	movq $0, %rcx
	movq %rcx, %rcx
end105641:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $389, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq -24(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -40(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rcx
	orq $2, %rcx
	movq %rcx, -32(%r15)
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $24, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then105642
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
	jmp end105643
then105642:
	movq $0, %rcx
	movq %rcx, %rcx
end105643:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $261, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq -32(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rcx
	orq $2, %rcx
	movq %rcx, -16(%r15)
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $24, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then105644
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
	jmp end105645
then105644:
	movq $0, %rcx
	movq %rcx, %rcx
end105645:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $261, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq -16(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rcx
	orq $2, %rcx
	movq %rcx, -8(%r15)
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $24, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then105646
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
	jmp end105647
then105646:
	movq $0, %rcx
	movq %rcx, %rcx
end105647:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $261, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq -8(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $2, %rbx
	je then105648
	callq exit
	jmp end105649
then105648:
	movq $7, %rbx
	notq %rbx
	andq %rcx, %rbx
end105649:
	movq %rbx, %r11
	movq 16(%r11), %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $2, %rbx
	je then105650
	callq exit
	jmp end105651
then105650:
	movq $7, %rbx
	notq %rbx
	andq %rcx, %rbx
end105651:
	movq %rbx, %r11
	movq 16(%r11), %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $2, %rbx
	je then105652
	callq exit
	jmp end105653
then105652:
	movq $7, %rbx
	notq %rbx
	andq %rcx, %rbx
end105653:
	movq %rbx, %r11
	movq 16(%r11), %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $2, %rbx
	je then105654
	callq exit
	jmp end105655
then105654:
	movq $7, %rbx
	notq %rbx
	andq %rcx, %rbx
end105655:
	movq %rbx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $2, %rbx
	je then105656
	callq exit
	jmp end105657
then105656:
	movq $7, %rbx
	notq %rbx
	andq %rcx, %rbx
end105657:
	movq %rbx, %r11
	movq 16(%r11), %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_any
	subq $40, %r15
	addq $96, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
