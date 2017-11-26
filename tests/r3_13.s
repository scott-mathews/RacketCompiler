	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $64, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $176, %r15
	movq $0, -176(%r15)
	movq $0, -168(%r15)
	movq $0, -160(%r15)
	movq $0, -152(%r15)
	movq $0, -144(%r15)
	movq $0, -136(%r15)
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

	movq $4, %r12
	movq $2, %r13
	movq $6, %r14
	movq $1, -56(%rbp)
	movq $42, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $24, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then193027
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
	jmp end193028
then193027:
	movq $0, %rcx
	movq %rcx, %rcx
end193028:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $5, 0(%r11)
	movq %rcx, %rdx
	movq %rdx, %r11
	movq -56(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq $3, -48(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then193029
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end193030
then193029:
	movq $0, %rcx
	movq %rcx, %rcx
end193030:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rdx
	movq %rdx, %r11
	movq -48(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, -64(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $24, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then193031
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
	jmp end193032
then193031:
	movq $0, %rcx
	movq %rcx, %rcx
end193032:
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $389, 0(%r11)
	movq %rdx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -64(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $24, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then193033
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
	jmp end193034
then193033:
	movq $0, %rcx
	movq %rcx, %rcx
end193034:
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $133, 0(%r11)
	movq %rdx, %r11
	movq %r14, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $24, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then193035
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
	jmp end193036
then193035:
	movq $0, %rcx
	movq %rcx, %rcx
end193036:
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $133, 0(%r11)
	movq %rdx, %r11
	movq %r13, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $24, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then193037
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
	jmp end193038
then193037:
	movq $0, %rcx
	movq %rcx, %rcx
end193038:
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	addq $24, free_ptr(%rip)
	movq %rdx, %r11
	movq $133, 0(%r11)
	movq %rdx, %r11
	movq %r12, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
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
	subq $176, %r15
	addq $64, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
