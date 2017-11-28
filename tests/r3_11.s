	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $272, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $504, %r15
	movq $0, -504(%r15)
	movq $0, -496(%r15)
	movq $0, -488(%r15)
	movq $0, -480(%r15)
	movq $0, -472(%r15)
	movq $0, -464(%r15)
	movq $0, -456(%r15)
	movq $0, -448(%r15)
	movq $0, -440(%r15)
	movq $0, -432(%r15)
	movq $0, -424(%r15)
	movq $0, -416(%r15)
	movq $0, -408(%r15)
	movq $0, -400(%r15)
	movq $0, -392(%r15)
	movq $0, -384(%r15)
	movq $0, -376(%r15)
	movq $0, -368(%r15)
	movq $0, -360(%r15)
	movq $0, -352(%r15)
	movq $0, -344(%r15)
	movq $0, -336(%r15)
	movq $0, -328(%r15)
	movq $0, -320(%r15)
	movq $0, -312(%r15)
	movq $0, -304(%r15)
	movq $0, -296(%r15)
	movq $0, -288(%r15)
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

	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3179
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3180
then3179:
	movq $0, %rcx
	movq %rcx, %rcx
end3180:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -256(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3181
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3182
then3181:
	movq $0, %rcx
	movq %rcx, %rcx
end3182:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
	movq $1, %r12
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3183
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3184
then3183:
	movq $0, %rcx
	movq %rcx, %rcx
end3184:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rcx, -336(%r15)
	movq $1, %r12
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3185
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3186
then3185:
	movq $0, %rcx
	movq %rcx, %rcx
end3186:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r14
	movq %r14, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq $1, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3187
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3188
then3187:
	movq $0, %rcx
	movq %rcx, %rcx
end3188:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -488(%r15)
	movq -488(%r15), %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq -488(%r15), %rax
	movq %rax, -216(%r15)
	movq $1, %r12
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3189
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3190
then3189:
	movq $0, %rcx
	movq %rcx, %rcx
end3190:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rcx, -424(%r15)
	movq $1, %r12
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3191
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3192
then3191:
	movq $0, %rcx
	movq %rcx, %rcx
end3192:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r13
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq $1, %r12
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3193
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3194
then3193:
	movq $0, %rcx
	movq %rcx, %rcx
end3194:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rcx, -96(%r15)
	movq $1, %r12
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3195
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3196
then3195:
	movq $0, %rcx
	movq %rcx, %rcx
end3196:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rcx, -160(%r15)
	movq $1, %r12
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3197
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3198
then3197:
	movq $0, %rcx
	movq %rcx, %rcx
end3198:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -56(%r15)
	movq -56(%r15), %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq -56(%r15), %rax
	movq %rax, -232(%r15)
	movq $1, %r12
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3199
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3200
then3199:
	movq $0, %rcx
	movq %rcx, %rcx
end3200:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rcx, -104(%r15)
	movq $1, %r12
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3201
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3202
then3201:
	movq $0, %rcx
	movq %rcx, %rcx
end3202:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -480(%r15)
	movq -480(%r15), %r11
	movq %r12, 8(%r11)
	movq $0, %rcx
	movq -480(%r15), %rax
	movq %rax, -112(%r15)
	movq $1, %r12
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3203
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3204
then3203:
	movq $0, %rcx
	movq %rcx, %rcx
end3204:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r12
	movq $1, -232(%rbp)
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3205
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3206
then3205:
	movq $0, %rcx
	movq %rcx, %rcx
end3206:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq -232(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, -264(%r15)
	movq $1, -64(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3207
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3208
then3207:
	movq $0, %rcx
	movq %rcx, %rcx
end3208:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -88(%r15)
	movq -88(%r15), %r11
	movq -64(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -88(%r15), %rax
	movq %rax, -288(%r15)
	movq $1, -184(%rbp)
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3209
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3210
then3209:
	movq $0, %rcx
	movq %rcx, %rcx
end3210:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -120(%r15)
	movq -120(%r15), %r11
	movq -184(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -120(%r15), %rax
	movq %rax, -208(%r15)
	movq $1, -192(%rbp)
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3211
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3212
then3211:
	movq $0, %rcx
	movq %rcx, %rcx
end3212:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -248(%r15)
	movq -248(%r15), %r11
	movq -192(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -248(%r15), %rax
	movq %rax, -192(%r15)
	movq $1, -72(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3213
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3214
then3213:
	movq $0, %rcx
	movq %rcx, %rcx
end3214:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq -72(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, -360(%r15)
	movq $1, -176(%rbp)
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3215
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3216
then3215:
	movq $0, %rcx
	movq %rcx, %rcx
end3216:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -280(%r15)
	movq -280(%r15), %r11
	movq -176(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -280(%r15), %rax
	movq %rax, -16(%r15)
	movq $1, -48(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3217
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3218
then3217:
	movq $0, %rcx
	movq %rcx, %rcx
end3218:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -368(%r15)
	movq -368(%r15), %r11
	movq -48(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -368(%r15), %rax
	movq %rax, -72(%r15)
	movq $1, -96(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then3219
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end3220
then3219:
	movq $0, %rcx
	movq %rcx, %rcx
end3220:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq -96(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq -256(%r15), %r11
	movq 8(%r11), %rdx
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq -336(%r15), %r11
	movq 8(%r11), %rsi
	movq %r14, %r11
	movq 8(%r11), %rdi
	movq -216(%r15), %r11
	movq 8(%r11), %r8
	movq -424(%r15), %r11
	movq 8(%r11), %r9
	movq %r13, %r11
	movq 8(%r11), %r10
	movq -96(%r15), %r11
	movq 8(%r11), %r13
	movq -160(%r15), %r11
	movq 8(%r11), %r14
	movq -232(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -160(%rbp)
	movq -104(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -216(%rbp)
	movq -112(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -56(%rbp)
	movq %r12, %r11
	movq 8(%r11), %r12
	movq -264(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -248(%rbp)
	movq -288(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -136(%rbp)
	movq -208(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -128(%rbp)
	movq -192(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -144(%rbp)
	movq -360(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -80(%rbp)
	movq -16(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -104(%rbp)
	movq -72(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -168(%rbp)
	movq %rcx, %r11
	movq 8(%r11), %rcx
	addq $21, %rcx
	movq -168(%rbp), %rax
	movq %rax, -224(%rbp)
	addq %rcx, -224(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -200(%rbp)
	movq -224(%rbp), %rax
	addq %rax, -200(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -240(%rbp)
	movq -200(%rbp), %rax
	addq %rax, -240(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -256(%rbp)
	movq -240(%rbp), %rax
	addq %rax, -256(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -264(%rbp)
	movq -256(%rbp), %rax
	addq %rax, -264(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -208(%rbp)
	movq -264(%rbp), %rax
	addq %rax, -208(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -152(%rbp)
	movq -208(%rbp), %rax
	addq %rax, -152(%rbp)
	addq -152(%rbp), %r12
	movq -56(%rbp), %rax
	movq %rax, -120(%rbp)
	addq %r12, -120(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -120(%rbp), %rax
	addq %rax, -88(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -112(%rbp)
	movq -88(%rbp), %rax
	addq %rax, -112(%rbp)
	addq -112(%rbp), %r14
	addq %r14, %r13
	addq %r13, %r10
	addq %r10, %r9
	addq %r9, %r8
	addq %r8, %rdi
	addq %rdi, %rsi
	addq %rsi, %rbx
	addq %rbx, %rdx
	movq %rdx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $504, %r15
	addq $272, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
