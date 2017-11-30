	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $208, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $160, %r15
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

	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then231118
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end231119
then231118:
	movq $0, %rcx
	movq %rcx, %rcx
end231119:
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
	movq %rcx, -136(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then231120
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end231121
then231120:
	movq $0, %rcx
	movq %rcx, %rcx
end231121:
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
	movq %rcx, -64(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then231122
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end231123
then231122:
	movq $0, %rcx
	movq %rcx, %rcx
end231123:
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
	movq %rcx, -128(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then231124
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end231125
then231124:
	movq $0, %rcx
	movq %rcx, %rcx
end231125:
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
	movq %rcx, -24(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then231126
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end231127
then231126:
	movq $0, %rcx
	movq %rcx, %rcx
end231127:
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
	movq %rcx, -144(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then231128
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end231129
then231128:
	movq $0, %rcx
	movq %rcx, %rcx
end231129:
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
	movq %rcx, -40(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then231130
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end231131
then231130:
	movq $0, %rcx
	movq %rcx, %rcx
end231131:
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
	movq %rcx, -16(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then231132
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end231133
then231132:
	movq $0, %rcx
	movq %rcx, %rcx
end231133:
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
	movq %rcx, -48(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then231134
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end231135
then231134:
	movq $0, %rcx
	movq %rcx, %rcx
end231135:
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
	movq %rcx, -112(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then231136
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end231137
then231136:
	movq $0, %rcx
	movq %rcx, %rcx
end231137:
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
	movq %rcx, -8(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then231138
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end231139
then231138:
	movq $0, %rcx
	movq %rcx, %rcx
end231139:
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
	movq %rcx, -80(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then231140
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end231141
then231140:
	movq $0, %rcx
	movq %rcx, %rcx
end231141:
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
	movq %rcx, -104(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then231142
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end231143
then231142:
	movq $0, %rcx
	movq %rcx, %rcx
end231143:
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
	movq %rcx, -160(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then231144
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end231145
then231144:
	movq $0, %rcx
	movq %rcx, %rcx
end231145:
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
	movq %rcx, -88(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then231146
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end231147
then231146:
	movq $0, %rcx
	movq %rcx, %rcx
end231147:
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
	movq %rcx, -56(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then231148
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end231149
then231148:
	movq $0, %rcx
	movq %rcx, %rcx
end231149:
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
	movq %rcx, -32(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then231150
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end231151
then231150:
	movq $0, %rcx
	movq %rcx, %rcx
end231151:
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
	movq %rcx, -96(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then231152
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end231153
then231152:
	movq $0, %rcx
	movq %rcx, %rcx
end231153:
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
	movq %rcx, -72(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then231154
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end231155
then231154:
	movq $0, %rcx
	movq %rcx, %rcx
end231155:
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
	movq %rcx, -152(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then231156
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end231157
then231156:
	movq $0, %rcx
	movq %rcx, %rcx
end231157:
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
	movq %rcx, -120(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then231158
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end231159
then231158:
	movq $0, %rcx
	movq %rcx, %rcx
end231159:
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
	movq -136(%r15), %r11
	movq 8(%r11), %rcx
	movq -64(%r15), %r11
	movq 8(%r11), %rdx
	movq -128(%r15), %r11
	movq 8(%r11), %rsi
	movq -24(%r15), %r11
	movq 8(%r11), %rdi
	movq -144(%r15), %r11
	movq 8(%r11), %r8
	movq -40(%r15), %r11
	movq 8(%r11), %r9
	movq -16(%r15), %r11
	movq 8(%r11), %r10
	movq -48(%r15), %r11
	movq 8(%r11), %r12
	movq -112(%r15), %r11
	movq 8(%r11), %r13
	movq -8(%r15), %r11
	movq 8(%r11), %r14
	movq -80(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -48(%rbp)
	movq -104(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -88(%rbp)
	movq -160(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -96(%rbp)
	movq -88(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -136(%rbp)
	movq -56(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -104(%rbp)
	movq -32(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -144(%rbp)
	movq -96(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -120(%rbp)
	movq -72(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -160(%rbp)
	movq -152(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -112(%rbp)
	movq -120(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -152(%rbp)
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %rbx
	addq $21, %rbx
	movq -152(%rbp), %rax
	movq %rax, -72(%rbp)
	addq %rbx, -72(%rbp)
	movq -112(%rbp), %rbx
	addq -72(%rbp), %rbx
	movq -160(%rbp), %rax
	movq %rax, -80(%rbp)
	addq %rbx, -80(%rbp)
	movq -120(%rbp), %rbx
	addq -80(%rbp), %rbx
	movq -144(%rbp), %rax
	movq %rax, -64(%rbp)
	addq %rbx, -64(%rbp)
	movq -104(%rbp), %rbx
	addq -64(%rbp), %rbx
	movq -136(%rbp), %rax
	movq %rax, -56(%rbp)
	addq %rbx, -56(%rbp)
	movq -96(%rbp), %rbx
	addq -56(%rbp), %rbx
	movq -88(%rbp), %rax
	movq %rax, -128(%rbp)
	addq %rbx, -128(%rbp)
	movq -48(%rbp), %rbx
	addq -128(%rbp), %rbx
	movq %r14, %r14
	addq %rbx, %r14
	movq %r13, %rbx
	addq %r14, %rbx
	movq %r12, %r12
	addq %rbx, %r12
	movq %r10, %rbx
	addq %r12, %rbx
	movq %r9, %r9
	addq %rbx, %r9
	movq %r8, %rbx
	addq %r9, %rbx
	movq %rdi, %rdi
	addq %rbx, %rdi
	movq %rsi, %rbx
	addq %rdi, %rbx
	movq %rdx, %rdx
	addq %rbx, %rdx
	movq %rcx, %rbx
	addq %rdx, %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $160, %r15
	addq $208, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
