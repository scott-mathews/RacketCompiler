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
	addq $128, %r15
	movq $0, -128(%r15)
	movq $0, -120(%r15)
	movq $0, -112(%r15)
	movq $0, -104(%r15)
	movq $0, -96(%r15)
	movq $0, -88(%r15)
	movq $0, -80(%r15)
	movq $0, -72(%r15)
	movq $0, -64(%r15)
	movq $0, -56(%r15)
	movq $0, -48(%r15)
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq $4, %rcx
	movq $2, %rbx
	movq $6, %rdx
	movq $1, %rsi
	movq $42, %r9
	movq free_ptr(%rip), %rax
	movq %rax, %rdi
	movq %rdi, %rdi
	addq $24, %rdi
	movq fromspace_end(%rip), %rax
	movq %rax, %rdi
	movq %rdi, %rax
	cmpq %rax, %rdi
	sete %al
	movzbq %al, %rax
	movq %rax, %rdi
	movq %rdi, %rax
	cmpq $1, %rax
	je then451024
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rdi
	jmp end451025
then451024:
	movq $0, %rdi
	movq %rdi, %rdi
end451025:
	movq %rdi, %rdi
	movq free_ptr(%rip), %rax
	movq %rax, %rdi
	addq $24, free_ptr(%rip)
	movq %rdi, %r11
	movq $5, 0(%r11)
	movq %rdi, %r11
	movq %rsi, %rax
	movq %rax, 8(%r11)
	movq $0, %rsi
	movq %rdi, %r11
	movq %r9, %rax
	movq %rax, 16(%r11)
	movq $0, %rsi
	movq %rdi, %rdi
	movq $3, %r8
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then451026
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end451027
then451026:
	movq $0, %rsi
	movq %rsi, %rsi
end451027:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, %r9
	addq $16, free_ptr(%rip)
	movq %r9, %r11
	movq $3, 0(%r11)
	movq %r9, %r11
	movq %r8, %rax
	movq %rax, 8(%r11)
	movq $0, %rsi
	movq %r9, %r9
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $24, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then451028
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rsi
	jmp end451029
then451028:
	movq $0, %rsi
	movq %rsi, %rsi
end451029:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	addq $24, free_ptr(%rip)
	movq %rsi, %r11
	movq $389, 0(%r11)
	movq %rsi, %r11
	movq %rdi, %rax
	movq %rax, 8(%r11)
	movq $0, %rdi
	movq %rsi, %r11
	movq %r9, %rax
	movq %rax, 16(%r11)
	movq $0, %rdi
	movq %rsi, %rdi
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $24, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then451030
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rsi
	jmp end451031
then451030:
	movq $0, %rsi
	movq %rsi, %rsi
end451031:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	addq $24, free_ptr(%rip)
	movq %rsi, %r11
	movq $133, 0(%r11)
	movq %rsi, %r11
	movq %rdx, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rsi, %r11
	movq %rdi, %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	movq %rdx, %rdx
	addq $24, %rdx
	movq fromspace_end(%rip), %rax
	movq %rax, %rdx
	movq %rdx, %rax
	cmpq %rax, %rdx
	sete %al
	movzbq %al, %rax
	movq %rax, %rdx
	movq %rdx, %rax
	cmpq $1, %rax
	je then451032
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rdx
	jmp end451033
then451032:
	movq $0, %rdx
	movq %rdx, %rdx
end451033:
	movq %rdx, %rdx
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $133, 0(%r11)
	movq %rdx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rdx, %r11
	movq %rsi, %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rdx, %rdx
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rbx
	addq $24, %rbx
	movq fromspace_end(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq %rax, %rbx
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then451034
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rbx
	jmp end451035
then451034:
	movq $0, %rbx
	movq %rbx, %rbx
end451035:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	addq $24, free_ptr(%rip)
	movq %rbx, %r11
	movq $133, 0(%r11)
	movq %rbx, %r11
	movq %rcx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rbx, %r11
	movq %rdx, %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rbx, %rbx
	movq %rbx, %r11
	movq 16(%r11), %rbx
	movq %rbx, %r11
	movq 16(%r11), %rbx
	movq %rbx, %r11
	movq 16(%r11), %rbx
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %r11
	movq 16(%r11), %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $128, %r15
	addq $48, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
