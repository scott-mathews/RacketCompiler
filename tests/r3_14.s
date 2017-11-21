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
	addq $280, %r15
	movq $0, -280(%r15)
	movq $0, -272(%r15)
	movq $0, -264(%r15)
	movq $0, -256(%r15)
	movq $0, -248(%r15)
	movq $0, -240(%r15)
	movq $0, -232(%r15)
	movq $0, -224(%r15)
	movq $0, -216(%r15)
	movq $0, -208(%r15)
	movq $0, -200(%r15)
	movq $0, -192(%r15)
	movq $0, -184(%r15)
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

	movq $20, %rdx
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rbx
	addq $16, %rbx
	movq fromspace_end(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq %rax, %rbx
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then331172
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
	jmp end331173
then331172:
	movq $0, %rbx
	movq %rbx, %rbx
end331173:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $3, 0(%r11)
	movq %rbx, %r11
	movq %rdx, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rbx, %rdx
	movq $1, %rdi
	movq $2, %r9
	movq $3, %rsi
	movq $4, %r8
	movq $5, %r10
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rbx
	addq $48, %rbx
	movq fromspace_end(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq %rax, %rbx
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then331174
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rbx
	jmp end331175
then331174:
	movq $0, %rbx
	movq %rbx, %rbx
end331175:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	addq $48, free_ptr(%rip)
	movq %rbx, %r11
	movq $11, 0(%r11)
	movq %rbx, %r11
	movq %rdi, %rax
	movq %rax, 8(%r11)
	movq $0, %rdi
	movq %rbx, %r11
	movq %r9, %rax
	movq %rax, 16(%r11)
	movq $0, %rdi
	movq %rbx, %r11
	movq %rsi, %rax
	movq %rax, 24(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %r8, %rax
	movq %rax, 32(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %r10, %rax
	movq %rax, 40(%r11)
	movq $0, %rsi
	movq %rbx, %rsi
	movq %rsi, %rsi
	movq $2, %r8
	movq $3, %r10
	movq $4, %rdi
	movq $5, %r9
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rbx
	addq $48, %rbx
	movq fromspace_end(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq %rax, %rbx
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then331176
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rbx
	jmp end331177
then331176:
	movq $0, %rbx
	movq %rbx, %rbx
end331177:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	addq $48, free_ptr(%rip)
	movq %rbx, %r11
	movq $2059, 0(%r11)
	movq %rbx, %r11
	movq %rsi, %rax
	movq %rax, 8(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %r8, %rax
	movq %rax, 16(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %r10, %rax
	movq %rax, 24(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %rdi, %rax
	movq %rax, 32(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %r9, %rax
	movq %rax, 40(%r11)
	movq $0, %rsi
	movq %rbx, %rdi
	movq $1, %rsi
	movq %rdi, %rdi
	movq $3, %r10
	movq $4, %r8
	movq $5, %r9
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rbx
	addq $48, %rbx
	movq fromspace_end(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq %rax, %rbx
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then331178
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rbx
	jmp end331179
then331178:
	movq $0, %rbx
	movq %rbx, %rbx
end331179:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	addq $48, free_ptr(%rip)
	movq %rbx, %r11
	movq $1035, 0(%r11)
	movq %rbx, %r11
	movq %rsi, %rax
	movq %rax, 8(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %rdi, %rax
	movq %rax, 16(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %r10, %rax
	movq %rax, 24(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %r8, %rax
	movq %rax, 32(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %r9, %rax
	movq %rax, 40(%r11)
	movq $0, %rsi
	movq %rbx, %r10
	movq $1, %rsi
	movq $2, %r8
	movq %r10, %r10
	movq $4, %r9
	movq $5, %rdi
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rbx
	addq $48, %rbx
	movq fromspace_end(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq %rax, %rbx
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then331180
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rbx
	jmp end331181
then331180:
	movq $0, %rbx
	movq %rbx, %rbx
end331181:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	addq $48, free_ptr(%rip)
	movq %rbx, %r11
	movq $523, 0(%r11)
	movq %rbx, %r11
	movq %rsi, %rax
	movq %rax, 8(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %r8, %rax
	movq %rax, 16(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %r10, %rax
	movq %rax, 24(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %r9, %rax
	movq %rax, 32(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %rdi, %rax
	movq %rax, 40(%r11)
	movq $0, %rsi
	movq %rbx, %rbx
	movq $1, %rsi
	movq $2, %rdi
	movq $3, %r10
	movq %rbx, %r8
	movq $5, %r9
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rbx
	addq $48, %rbx
	movq fromspace_end(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq %rax, %rbx
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then331182
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rbx
	jmp end331183
then331182:
	movq $0, %rbx
	movq %rbx, %rbx
end331183:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	addq $48, free_ptr(%rip)
	movq %rbx, %r11
	movq $267, 0(%r11)
	movq %rbx, %r11
	movq %rsi, %rax
	movq %rax, 8(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %rdi, %rax
	movq %rax, 16(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %r10, %rax
	movq %rax, 24(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %r8, %rax
	movq %rax, 32(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %r9, %rax
	movq %rax, 40(%r11)
	movq $0, %rsi
	movq %rbx, %rbx
	movq $1, %rsi
	movq $2, %r9
	movq $3, %r8
	movq $4, %r10
	movq %rbx, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rdi
	movq %rdi, %rdi
	addq $48, %rdi
	movq fromspace_end(%rip), %rax
	movq %rax, %rdi
	movq %rdi, %rax
	cmpq %rax, %rdi
	sete %al
	movzbq %al, %rax
	movq %rax, %rdi
	movq %rdi, %rax
	cmpq $1, %rax
	je then331184
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rdi
	jmp end331185
then331184:
	movq $0, %rdi
	movq %rdi, %rdi
end331185:
	movq %rdi, %rdi
	movq free_ptr(%rip), %rax
	movq %rax, %rdi
	addq $48, free_ptr(%rip)
	movq %rdi, %r11
	movq $139, 0(%r11)
	movq %rdi, %r11
	movq %rsi, %rax
	movq %rax, 8(%r11)
	movq $0, %rsi
	movq %rdi, %r11
	movq %r9, %rax
	movq %rax, 16(%r11)
	movq $0, %rsi
	movq %rdi, %r11
	movq %r8, %rax
	movq %rax, 24(%r11)
	movq $0, %rsi
	movq %rdi, %r11
	movq %r10, %rax
	movq %rax, 32(%r11)
	movq $0, %rsi
	movq %rdi, %r11
	movq %rbx, %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq %rdi, %rbx
	movq $1, %rdi
	movq $2, %r9
	movq $3, %rsi
	movq $4, %r8
	movq $5, %r10
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rbx
	addq $48, %rbx
	movq fromspace_end(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq %rax, %rbx
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then331186
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rbx
	jmp end331187
then331186:
	movq $0, %rbx
	movq %rbx, %rbx
end331187:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	addq $48, free_ptr(%rip)
	movq %rbx, %r11
	movq $11, 0(%r11)
	movq %rbx, %r11
	movq %rdi, %rax
	movq %rax, 8(%r11)
	movq $0, %rdi
	movq %rbx, %r11
	movq %r9, %rax
	movq %rax, 16(%r11)
	movq $0, %rdi
	movq %rbx, %r11
	movq %rsi, %rax
	movq %rax, 24(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %r8, %rax
	movq %rax, 32(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %r10, %rax
	movq %rax, 40(%r11)
	movq $0, %rsi
	movq %rbx, %rbx
	movq $1, %rsi
	movq $2, %rdi
	movq $3, %r9
	movq $4, %r8
	movq $5, %r10
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rbx
	addq $48, %rbx
	movq fromspace_end(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq %rax, %rbx
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then331188
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rbx
	jmp end331189
then331188:
	movq $0, %rbx
	movq %rbx, %rbx
end331189:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	addq $48, free_ptr(%rip)
	movq %rbx, %r11
	movq $11, 0(%r11)
	movq %rbx, %r11
	movq %rsi, %rax
	movq %rax, 8(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %rdi, %rax
	movq %rax, 16(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %r9, %rax
	movq %rax, 24(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %r8, %rax
	movq %rax, 32(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %r10, %rax
	movq %rax, 40(%r11)
	movq $0, %rsi
	movq %rbx, %rbx
	movq $1, %r9
	movq $2, %r10
	movq $3, %rbx
	movq $4, %rdi
	movq $5, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, %r8
	movq %r8, %r8
	addq $48, %r8
	movq fromspace_end(%rip), %rax
	movq %rax, %r8
	movq %r8, %rax
	cmpq %rax, %r8
	sete %al
	movzbq %al, %rax
	movq %rax, %r8
	movq %r8, %rax
	cmpq $1, %rax
	je then331190
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %r8
	jmp end331191
then331190:
	movq $0, %r8
	movq %r8, %r8
end331191:
	movq %r8, %r8
	movq free_ptr(%rip), %rax
	movq %rax, %r8
	addq $48, free_ptr(%rip)
	movq %r8, %r11
	movq $11, 0(%r11)
	movq %r8, %r11
	movq %r9, %rax
	movq %rax, 8(%r11)
	movq $0, %r9
	movq %r8, %r11
	movq %r10, %rax
	movq %rax, 16(%r11)
	movq $0, %r9
	movq %r8, %r11
	movq %rbx, %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %r8, %r11
	movq %rdi, %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %r8, %r11
	movq %rsi, %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq %r8, %r8
	movq $1, %r8
	movq $2, %rdi
	movq $3, %rsi
	movq $4, %r9
	movq $5, %r10
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rbx
	addq $48, %rbx
	movq fromspace_end(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq %rax, %rbx
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then331192
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rbx
	jmp end331193
then331192:
	movq $0, %rbx
	movq %rbx, %rbx
end331193:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	addq $48, free_ptr(%rip)
	movq %rbx, %r11
	movq $11, 0(%r11)
	movq %rbx, %r11
	movq %r8, %rax
	movq %rax, 8(%r11)
	movq $0, %r8
	movq %rbx, %r11
	movq %rdi, %rax
	movq %rax, 16(%r11)
	movq $0, %rdi
	movq %rbx, %r11
	movq %rsi, %rax
	movq %rax, 24(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %r9, %rax
	movq %rax, 32(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %r10, %rax
	movq %rax, 40(%r11)
	movq $0, %rsi
	movq %rbx, %rbx
	movq $1, %r8
	movq $2, %r9
	movq $3, %rdi
	movq $4, %r10
	movq $5, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $48, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then331194
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rsi
	jmp end331195
then331194:
	movq $0, %rsi
	movq %rsi, %rsi
end331195:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	addq $48, free_ptr(%rip)
	movq %rsi, %r11
	movq $11, 0(%r11)
	movq %rsi, %r11
	movq %r8, %rax
	movq %rax, 8(%r11)
	movq $0, %r8
	movq %rsi, %r11
	movq %r9, %rax
	movq %rax, 16(%r11)
	movq $0, %r8
	movq %rsi, %r11
	movq %rdi, %rax
	movq %rax, 24(%r11)
	movq $0, %rdi
	movq %rsi, %r11
	movq %r10, %rax
	movq %rax, 32(%r11)
	movq $0, %rdi
	movq %rsi, %r11
	movq %rbx, %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq %rsi, %rsi
	movq $1, %rsi
	movq $2, %r10
	movq $3, %r8
	movq $4, %r9
	movq $5, %rdi
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rbx
	addq $48, %rbx
	movq fromspace_end(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq %rax, %rbx
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then331196
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rbx
	jmp end331197
then331196:
	movq $0, %rbx
	movq %rbx, %rbx
end331197:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	addq $48, free_ptr(%rip)
	movq %rbx, %r11
	movq $11, 0(%r11)
	movq %rbx, %r11
	movq %rsi, %rax
	movq %rax, 8(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %r10, %rax
	movq %rax, 16(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %r8, %rax
	movq %rax, 24(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %r9, %rax
	movq %rax, 32(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %rdi, %rax
	movq %rax, 40(%r11)
	movq $0, %rsi
	movq %rbx, %rbx
	movq $1, %r10
	movq $2, %r9
	movq $3, %rdi
	movq $4, %rsi
	movq $5, %r8
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rbx
	addq $48, %rbx
	movq fromspace_end(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq %rax, %rbx
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then331198
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rbx
	jmp end331199
then331198:
	movq $0, %rbx
	movq %rbx, %rbx
end331199:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	addq $48, free_ptr(%rip)
	movq %rbx, %r11
	movq $11, 0(%r11)
	movq %rbx, %r11
	movq %r10, %rax
	movq %rax, 8(%r11)
	movq $0, %r10
	movq %rbx, %r11
	movq %r9, %rax
	movq %rax, 16(%r11)
	movq $0, %r9
	movq %rbx, %r11
	movq %rdi, %rax
	movq %rax, 24(%r11)
	movq $0, %rdi
	movq %rbx, %r11
	movq %rsi, %rax
	movq %rax, 32(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %r8, %rax
	movq %rax, 40(%r11)
	movq $0, %rsi
	movq %rbx, %rbx
	movq $1, %rdi
	movq $2, %r8
	movq $3, %rsi
	movq $4, %r10
	movq $5, %r9
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rbx
	addq $48, %rbx
	movq fromspace_end(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq %rax, %rbx
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then331200
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rbx
	jmp end331201
then331200:
	movq $0, %rbx
	movq %rbx, %rbx
end331201:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	addq $48, free_ptr(%rip)
	movq %rbx, %r11
	movq $11, 0(%r11)
	movq %rbx, %r11
	movq %rdi, %rax
	movq %rax, 8(%r11)
	movq $0, %rdi
	movq %rbx, %r11
	movq %r8, %rax
	movq %rax, 16(%r11)
	movq $0, %rdi
	movq %rbx, %r11
	movq %rsi, %rax
	movq %rax, 24(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %r10, %rax
	movq %rax, 32(%r11)
	movq $0, %rsi
	movq %rbx, %r11
	movq %r9, %rax
	movq %rax, 40(%r11)
	movq $0, %rsi
	movq %rbx, %rbx
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %rcx
	addq $22, %rcx
	movq %rcx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $280, %r15
	addq $48, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
