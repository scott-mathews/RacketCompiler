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
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then109160
	movq $0, %rcx
	jmp end109161
then109160:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end109161:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -8(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then109162
	movq $0, %rcx
	jmp end109163
then109162:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end109163:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -16(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then109164
	movq $0, %rcx
	jmp end109165
then109164:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end109165:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -24(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then109166
	movq $0, %rcx
	jmp end109167
then109166:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end109167:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -32(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then109168
	movq $0, %rcx
	jmp end109169
then109168:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end109169:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -40(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then109170
	movq $0, %rcx
	jmp end109171
then109170:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end109171:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -48(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then109172
	movq $0, %rcx
	jmp end109173
then109172:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end109173:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -56(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then109174
	movq $0, %rcx
	jmp end109175
then109174:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end109175:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -64(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then109176
	movq $0, %rcx
	jmp end109177
then109176:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end109177:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -72(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then109178
	movq $0, %rcx
	jmp end109179
then109178:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end109179:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -80(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then109180
	movq $0, %rcx
	jmp end109181
then109180:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end109181:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -88(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then109182
	movq $0, %rcx
	jmp end109183
then109182:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end109183:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -96(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then109184
	movq $0, %rcx
	jmp end109185
then109184:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end109185:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -104(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then109186
	movq $0, %rcx
	jmp end109187
then109186:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end109187:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -112(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then109188
	movq $0, %rcx
	jmp end109189
then109188:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end109189:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -120(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then109190
	movq $0, %rcx
	jmp end109191
then109190:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end109191:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -128(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then109192
	movq $0, %rcx
	jmp end109193
then109192:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end109193:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -136(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then109194
	movq $0, %rcx
	jmp end109195
then109194:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end109195:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -144(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then109196
	movq $0, %rcx
	jmp end109197
then109196:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end109197:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -152(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then109198
	movq $0, %rcx
	jmp end109199
then109198:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end109199:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -160(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then109200
	movq $0, %rcx
	jmp end109201
then109200:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end109201:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
	movq -8(%r15), %r11
	movq 8(%r11), %rcx
	movq -16(%r15), %r11
	movq 8(%r11), %rdx
	movq -24(%r15), %r11
	movq 8(%r11), %rsi
	movq -32(%r15), %r11
	movq 8(%r11), %rdi
	movq -40(%r15), %r11
	movq 8(%r11), %r8
	movq -48(%r15), %r11
	movq 8(%r11), %r9
	movq -56(%r15), %r11
	movq 8(%r11), %r10
	movq -64(%r15), %r11
	movq 8(%r11), %r12
	movq -72(%r15), %r11
	movq 8(%r11), %r13
	movq -80(%r15), %r11
	movq 8(%r11), %r14
	movq -88(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -48(%rbp)
	movq -96(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -64(%rbp)
	movq -104(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -72(%rbp)
	movq -112(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -88(%rbp)
	movq -120(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -96(%rbp)
	movq -128(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -112(%rbp)
	movq -136(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -120(%rbp)
	movq -144(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -136(%rbp)
	movq -152(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -144(%rbp)
	movq -160(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -160(%rbp)
	movq %rbx, %r11
	movq 8(%r11), %rbx
	addq $21, %rbx
	movq -160(%rbp), %rax
	movq %rax, -152(%rbp)
	addq %rbx, -152(%rbp)
	movq -144(%rbp), %rbx
	addq -152(%rbp), %rbx
	movq -136(%rbp), %rax
	movq %rax, -128(%rbp)
	addq %rbx, -128(%rbp)
	movq -120(%rbp), %rbx
	addq -128(%rbp), %rbx
	movq -112(%rbp), %rax
	movq %rax, -104(%rbp)
	addq %rbx, -104(%rbp)
	movq -96(%rbp), %rbx
	addq -104(%rbp), %rbx
	movq -88(%rbp), %rax
	movq %rax, -80(%rbp)
	addq %rbx, -80(%rbp)
	movq -72(%rbp), %rbx
	addq -80(%rbp), %rbx
	movq -64(%rbp), %rax
	movq %rax, -56(%rbp)
	addq %rbx, -56(%rbp)
	movq -48(%rbp), %rbx
	addq -56(%rbp), %rbx
	addq %rbx, %r14
	movq %r13, %rbx
	addq %r14, %rbx
	addq %rbx, %r12
	movq %r10, %rbx
	addq %r12, %rbx
	addq %rbx, %r9
	movq %r8, %rbx
	addq %r9, %rbx
	addq %rbx, %rdi
	movq %rsi, %rbx
	addq %rdi, %rbx
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
