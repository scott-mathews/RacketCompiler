	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $160, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $48, %r15
	movq $0, -48(%r15)
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq $20, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $16, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then106130
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end106131
then106130:
	movq $0, %rcx
	movq %rcx, %rcx
end106131:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, -32(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -64(%rbp)
	movq $2, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r13
	movq $3, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r14
	movq $4, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq $5, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then106132
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end106133
then106132:
	movq $0, %rcx
	movq %rcx, %rcx
end106133:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r12, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 32(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r14, 24(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r13, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -64(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, %rbx
	movq %rbx, -16(%r15)
	movq $2, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r13
	movq $3, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r12
	movq $4, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq $5, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r14
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $48, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then106134
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end106135
then106134:
	movq $0, %rcx
	movq %rcx, %rcx
end106135:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $139, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r14, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 32(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r12, 24(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r13, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, %rcx
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq %rcx, -40(%r15)
	movq $3, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r14
	movq $4, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	movq $5, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r13
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then106136
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end106137
then106136:
	movq $0, %rcx
	movq %rcx, %rcx
end106137:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $267, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r13, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r14, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -40(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, %rbx
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r13
	movq $2, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r14
	movq %rbx, -48(%r15)
	movq $4, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r12
	movq $5, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $48, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then106138
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end106139
then106138:
	movq $0, %rcx
	movq %rcx, %rcx
end106139:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $523, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r12, 32(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r14, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r13, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, %rcx
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r13
	movq $2, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq $3, %rdx
	salq $3, %rdx
	orq $1, %rdx
	movq %rdx, %r12
	movq %rcx, -24(%r15)
	movq $5, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r14
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $48, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then106140
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end106141
then106140:
	movq $0, %rcx
	movq %rcx, %rcx
end106141:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $1035, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r14, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -24(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
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
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, %rcx
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r12
	movq $2, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq $3, %rdx
	salq $3, %rdx
	orq $1, %rdx
	movq %rdx, %r14
	movq $4, %rdx
	salq $3, %rdx
	orq $1, %rdx
	movq %rdx, %r13
	movq %rcx, -8(%r15)
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then106142
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end106143
then106142:
	movq $0, %rcx
	movq %rcx, %rcx
end106143:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $2059, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq -8(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r14, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, %rbx
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -80(%rbp)
	movq $2, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r12
	movq $3, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r14
	movq $4, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq $5, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r13
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $48, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then106144
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end106145
then106144:
	movq $0, %rcx
	movq %rcx, %rcx
end106145:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r13, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 32(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r14, 24(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -80(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, %rbx
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq $2, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -72(%rbp)
	movq $3, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r13
	movq $4, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r14
	movq $5, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then106146
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end106147
then106146:
	movq $0, %rcx
	movq %rcx, %rcx
end106147:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r12, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r14, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -72(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, %rbx
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq $2, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -96(%rbp)
	movq $3, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r14
	movq $4, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	movq $5, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r13
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then106148
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end106149
then106148:
	movq $0, %rcx
	movq %rcx, %rcx
end106149:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r13, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r14, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -96(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, %rbx
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq $2, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	movq $3, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r14
	movq $4, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -88(%rbp)
	movq $5, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r13
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $48, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then106150
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end106151
then106150:
	movq $0, %rcx
	movq %rcx, %rcx
end106151:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r13, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -88(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r14, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, %rbx
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq $2, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r13
	movq $3, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	movq $4, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -112(%rbp)
	movq $5, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r14
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then106152
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end106153
then106152:
	movq $0, %rcx
	movq %rcx, %rcx
end106153:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r14, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -112(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, %rbx
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r14
	movq $2, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq $3, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r13
	movq $4, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	movq $5, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -104(%rbp)
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $48, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then106154
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end106155
then106154:
	movq $0, %rcx
	movq %rcx, %rcx
end106155:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq -104(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r14, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, %rbx
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq $2, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r14
	movq $3, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	movq $4, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -48(%rbp)
	movq $5, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r13
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then106156
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end106157
then106156:
	movq $0, %rcx
	movq %rcx, %rcx
end106157:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r13, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -48(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r14, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, %rbx
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -56(%rbp)
	movq $2, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r12
	movq $3, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r14
	movq $4, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq $5, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r13
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then106158
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end106159
then106158:
	movq $0, %rcx
	movq %rcx, %rcx
end106159:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r13, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 32(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r14, 24(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -56(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, %rbx
	movq -32(%r15), %rbx
	andq $7, %rbx
	cmpq $2, %rbx
	je then106160
	callq exit
	jmp end106161
then106160:
	movq $7, %rbx
	notq %rbx
	andq -32(%r15), %rbx
end106161:
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then106162
	callq exit
	jmp end106163
then106162:
	movq %rbx, %r12
	sarq $3, %r12
end106163:
	movq $22, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then106164
	callq exit
	jmp end106165
then106164:
	movq %rcx, %rbx
	sarq $3, %rbx
end106165:
	movq %r12, %rcx
	addq %rbx, %rcx
	movq %rcx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_any
	subq $48, %r15
	addq $160, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
